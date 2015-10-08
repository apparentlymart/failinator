package main

import (
	"encoding/json"
	"log"
	"sync"
	"time"

	"github.com/kidoman/embd"
	_ "github.com/kidoman/embd/host/rpi"
	"golang.org/x/net/websocket"
)

type Status struct {
	Warning      bool `json:"warning"`
	Critical     bool `json:"critical"`
	Paging       bool `json:"paging"`
	LastPageTime int  `json:"lastAlert"`

	// Lock before interacting with the object.
	sync.Mutex
}

var quit bool
var status Status
var statusMutex sync.Mutex

type Lights struct {
	redPin    embd.DigitalPin
	yellowPin embd.DigitalPin
	greenPin  embd.DigitalPin
}

func OpenLights() (*Lights, error) {
	redPin, err := embd.NewDigitalPin(2)
	if err != nil {
		return nil, err
	}
	yellowPin, err := embd.NewDigitalPin(3)
	if err != nil {
		return nil, err
	}
	greenPin, err := embd.NewDigitalPin(4)
	if err != nil {
		return nil, err
	}

	if err := redPin.SetDirection(embd.Out); err != nil {
		panic(err)
	}
	if err := yellowPin.SetDirection(embd.Out); err != nil {
		panic(err)
	}
	if err := greenPin.SetDirection(embd.Out); err != nil {
		panic(err)
	}

	l := &Lights{
		redPin:    redPin,
		yellowPin: yellowPin,
		greenPin:  greenPin,
	}

	return l, nil
}

func (l *Lights) Close() error {
	l.redPin.Close()
	l.yellowPin.Close()
	l.greenPin.Close()
	return nil
}

type Digits struct {
	mosiPin embd.DigitalPin
	clkPin  embd.DigitalPin
	csPin   embd.DigitalPin
}

func (d *Digits) sendByte(b byte) error {
	for i := 8; i > 0; i-- {
		mask := byte(1 << byte(i-1))

		err := d.clkPin.Write(0)
		if err != nil {
			return err
		}

		if b&mask != 0 {
			err = d.mosiPin.Write(1)
		} else {
			err = d.mosiPin.Write(0)
		}
		if err != nil {
			return err
		}

		err = d.clkPin.Write(1)
		if err != nil {
			return err
		}
	}

	return nil
}

func OpenDigits() (*Digits, error) {
	mosiPin, err := embd.NewDigitalPin(10)
	if err != nil {
		return nil, err
	}
	clkPin, err := embd.NewDigitalPin(11)
	if err != nil {
		return nil, err
	}
	csPin, err := embd.NewDigitalPin(25)
	if err != nil {
		return nil, err
	}

	if err := mosiPin.SetDirection(embd.Out); err != nil {
		panic(err)
	}
	if err := clkPin.SetDirection(embd.Out); err != nil {
		panic(err)
	}
	if err := csPin.SetDirection(embd.Out); err != nil {
		panic(err)
	}

	return &Digits{
		mosiPin: mosiPin,
		clkPin:  clkPin,
		csPin:   csPin,
	}, nil
}

func (d *Digits) Close() error {
	d.clkPin.Close()
	d.mosiPin.Close()
	d.csPin.Close()
	return nil
}

func (d *Digits) set(register byte, value byte) error {
	err := d.csPin.Write(embd.High)
	if err != nil {
		return err
	}
	err = d.csPin.Write(embd.Low)
	if err != nil {
		return err
	}
	err = d.sendByte(register)
	if err != nil {
		return err
	}
	err = d.sendByte(value)
	if err != nil {
		return err
	}
	err = d.csPin.Write(embd.High)
	if err != nil {
		return err
	}
	return nil
}

func (d *Digits) Try() error {
	err := d.csPin.Write(embd.High)
	if err != nil {
		return err
	}

	err = d.set(0xb, 1)
	if err != nil {
		return err
	}
	err = d.set(0xc, 0)
	if err != nil {
		return err
	}
	err = d.set(0xf, 1)
	if err != nil {
		return err
	}
	err = d.set(0xa, 31)
	if err != nil {
		return err
	}
	return nil
}

func hardware() {
	if err := embd.InitGPIO(); err != nil {
		panic(err)
	}
	defer embd.CloseGPIO()

	lights, err := OpenLights()
	if err != nil {
		panic(err)
	}
	defer lights.Close()

	for !quit {
		statusMutex.Lock()
		yellow := status.Warning
		red := status.Critical
		redBlink := status.Paging
		green := !(red || yellow)
		//lastPageTime := status.LastPageTime
		statusMutex.Unlock()

		var redVal int
		var yellowVal int
		var greenVal int
		if red {
			redVal = embd.High
		}
		if yellow {
			yellowVal = embd.High
		}
		if green {
			greenVal = embd.High
		}
		lights.redPin.Write(redVal)
		lights.yellowPin.Write(yellowVal)
		lights.greenPin.Write(greenVal)
		time.Sleep(500 * time.Millisecond)
		if red && redBlink {
			lights.redPin.Write(embd.Low)
		}
		time.Sleep(500 * time.Millisecond)
	}
}

func powerOnTest() {
	statusMutex.Lock()
	status.Warning = false
	status.Critical = false
	status.Paging = false
	status.LastPageTime = 0
	statusMutex.Unlock()
	time.Sleep(2 * time.Second)

	statusMutex.Lock()
	status.Warning = true
	status.Critical = false
	status.Paging = false
	status.LastPageTime = 1
	statusMutex.Unlock()
	time.Sleep(2 * time.Second)

	statusMutex.Lock()
	status.Warning = false
	status.Critical = true
	status.Paging = false
	status.LastPageTime = 2
	statusMutex.Unlock()
	time.Sleep(2 * time.Second)

	statusMutex.Lock()
	status.Warning = false
	status.Critical = false
	status.Paging = false
	status.LastPageTime = 2
	statusMutex.Unlock()
	time.Sleep(2 * time.Second)

	statusMutex.Lock()
	status.LastPageTime = 3
	statusMutex.Unlock()
	time.Sleep(1 * time.Second)

	statusMutex.Lock()
	status.LastPageTime = 4
	statusMutex.Unlock()
	time.Sleep(1 * time.Second)

	statusMutex.Lock()
	status.LastPageTime = 5
	statusMutex.Unlock()
	time.Sleep(1 * time.Second)

	statusMutex.Lock()
	status.LastPageTime = 0
	statusMutex.Unlock()
}

func socket() {
	host := "ec2-54-183-68-122.us-west-1.compute.amazonaws.com:3000"
	wsUrl := "ws://" + host + "/failinator"
	originUrl := "http://" + host

	for {
		var conn *websocket.Conn
		var err error
		for {
			conn, err = websocket.Dial(wsUrl, "", originUrl)
			if err != nil {
				log.Println("Error connecting to", wsUrl, err)
				time.Sleep(2 * time.Second)
				continue
			}
			break
		}
		defer conn.Close()

		for {
			msg := make([]byte, 512)
			n, err := conn.Read(msg)
			if err != nil {
				break
			}
			msg = msg[:n]

			status.Lock()
			log.Println("Message", string(msg))
			err = json.Unmarshal(msg, &status)
			status.Unlock()

			if err != nil {
				// Just skip an invalid message.
				log.Println("Skipping invalid message: ", err)
				continue
			}
		}

		log.Println("Error reading from socket. Will try to reconnect...")
		time.Sleep(2 * time.Second)
	}
}

func main() {
	go hardware()
	powerOnTest()
	socket()
}
