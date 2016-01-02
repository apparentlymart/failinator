EESchema Schematic File Version 2
LIBS:failinator-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:failinator
LIBS:failinator-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 4
Title "Failinator"
Date ""
Rev "v0.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RASPIPLUSHEADER U2
U 1 1 54A79B4A
P 1700 2650
F 0 "U2" H 1300 4000 60  0000 C CNN
F 1 "RASPIPLUSHEADER" H 1750 1200 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 1700 2400 60  0001 C CNN
F 3 "" H 1700 2400 60  0000 C CNN
	1    1700 2650
	1    0    0    -1  
$EndComp
Text GLabel 1000 4050 3    60   Output ~ 0
GND
Text GLabel 1000 1350 1    60   Output ~ 0
+3V3
Wire Wire Line
	1050 3250 1000 3250
Wire Wire Line
	1000 3250 1000 4050
Wire Wire Line
	1050 3350 1000 3350
Connection ~ 1000 3350
Wire Wire Line
	1050 3450 1000 3450
Connection ~ 1000 3450
Wire Wire Line
	1050 3550 1000 3550
Connection ~ 1000 3550
Wire Wire Line
	1050 3650 1000 3650
Connection ~ 1000 3650
Wire Wire Line
	1050 3750 1000 3750
Connection ~ 1000 3750
Wire Wire Line
	1050 3850 1000 3850
Connection ~ 1000 3850
Wire Wire Line
	1050 3950 1000 3950
Connection ~ 1000 3950
Wire Wire Line
	1000 1350 1000 1550
Wire Wire Line
	1000 1550 1050 1550
Wire Wire Line
	1050 1450 1000 1450
Connection ~ 1000 1450
Text Notes 650  5000 0    60   ~ 0
RASPBERRY PI A/B+\nGPIO HEADER
Text GLabel 1000 1850 3    60   Output ~ 0
+5V
Wire Wire Line
	1050 1700 1000 1700
Wire Wire Line
	1000 1700 1000 1850
Wire Wire Line
	1050 1800 1000 1800
Connection ~ 1000 1800
Text Label 2400 2250 0    60   ~ 0
MOSI
Text Label 2400 2350 0    60   ~ 0
SCLK
Wire Wire Line
	2350 2250 2400 2250
Wire Wire Line
	2350 2350 2400 2350
Text Label 2400 2050 0    60   ~ 0
DISP_CS
Text Label 2400 1450 0    60   ~ 0
RED_L
Text Label 2400 1550 0    60   ~ 0
AMBER_L
Text Label 2400 1650 0    60   ~ 0
GREEN_L
Wire Wire Line
	2350 1450 2400 1450
Wire Wire Line
	2350 1550 2400 1550
Wire Wire Line
	2350 1650 2400 1650
$Comp
L CONN_01X04 P1
U 1 1 5604E884
P 1600 7400
F 0 "P1" H 1600 7650 50  0000 C CNN
F 1 "CONN_01X04" V 1700 7400 50  0000 C CNN
F 2 "failinator:TERM_4" H 1600 7400 60  0001 C CNN
F 3 "" H 1600 7400 60  0000 C CNN
	1    1600 7400
	1    0    0    -1  
$EndComp
Text Label 1350 7350 2    60   ~ 0
RED_P
Text Label 1350 7450 2    60   ~ 0
AMBER_P
Text Label 1350 7550 2    60   ~ 0
GREEN_P
Text GLabel 1350 7200 1    60   Input ~ 0
GND
Wire Wire Line
	1350 7200 1350 7250
Wire Wire Line
	1350 7250 1400 7250
Wire Wire Line
	1350 7350 1400 7350
Wire Wire Line
	1350 7450 1400 7450
Wire Wire Line
	1350 7550 1400 7550
Text GLabel 1000 6000 0    60   Input ~ 0
GND
Text GLabel 1000 5500 0    60   Input ~ 0
+24V
Text Label 1000 5750 2    60   ~ 0
RED_L
Text Label 2200 5500 0    60   ~ 0
RED_P
Text GLabel 3000 6000 0    60   Input ~ 0
GND
Text GLabel 3000 5500 0    60   Input ~ 0
+24V
Text Label 3000 5750 2    60   ~ 0
AMBER_L
Text Label 4200 5500 0    60   ~ 0
AMBER_P
Text GLabel 5100 6000 0    60   Input ~ 0
GND
Text GLabel 5100 5500 0    60   Input ~ 0
+24V
Text Label 5100 5750 2    60   ~ 0
GREEN_L
Text Label 6300 5500 0    60   ~ 0
GREEN_P
Wire Notes Line
	2050 6550 2050 7950
Text Notes 1950 6800 2    60   ~ 0
STATUS LAMP\nCONNECTIONS
Text Notes 650  6450 0    60   ~ 0
STATUS LAMP CONTROL
$Comp
L CONN_01X06 P4
U 1 1 56053895
P 2600 7550
F 0 "P4" H 2600 7900 50  0000 C CNN
F 1 "CONN_01X06" V 2700 7550 50  0000 C CNN
F 2 "failinator:TERM_6" H 2600 7550 60  0001 C CNN
F 3 "" H 2600 7550 60  0000 C CNN
	1    2600 7550
	0    1    1    0   
$EndComp
Text GLabel 2450 7300 1    60   Input ~ 0
+24V
Text GLabel 2550 7300 1    60   Input ~ 0
+24V
Text GLabel 2750 7300 1    60   Input ~ 0
+5V
Text GLabel 2350 7300 1    60   Input ~ 0
GND
Text GLabel 2650 7300 1    60   Input ~ 0
GND
Text GLabel 2850 7300 1    60   Input ~ 0
GND
Wire Wire Line
	2350 7300 2350 7350
Wire Wire Line
	2450 7300 2450 7350
Wire Wire Line
	2550 7300 2550 7350
Wire Wire Line
	2650 7300 2650 7350
Wire Wire Line
	2750 7300 2750 7350
Wire Wire Line
	2850 7300 2850 7350
Wire Notes Line
	3200 6550 3200 7950
Text Notes 2150 6700 0    60   ~ 0
POWER CONNECTIONS
$Sheet
S 1100 5400 1000 700 
U 568778A1
F0 "RedDriver" 60
F1 "MOSFETDriver.sch" 60
F2 "VIN" I L 1100 5500 60 
F3 "GND" I L 1100 6000 60 
F4 "EN" I L 1100 5750 60 
F5 "VOUT" O R 2100 5500 60 
$EndSheet
Wire Wire Line
	2100 5500 2200 5500
Wire Wire Line
	1000 5500 1100 5500
Wire Wire Line
	1000 5750 1100 5750
Wire Wire Line
	1000 6000 1100 6000
$Sheet
S 3100 5400 1000 700 
U 56879543
F0 "AmberDriver" 60
F1 "MOSFETDriver.sch" 60
F2 "VIN" I L 3100 5500 60 
F3 "GND" I L 3100 6000 60 
F4 "EN" I L 3100 5750 60 
F5 "VOUT" O R 4100 5500 60 
$EndSheet
$Sheet
S 5200 5400 1000 700 
U 5687AB7C
F0 "GreenDriver" 60
F1 "MOSFETDriver.sch" 60
F2 "VIN" I L 5200 5500 60 
F3 "GND" I L 5200 6000 60 
F4 "EN" I L 5200 5750 60 
F5 "VOUT" O R 6200 5500 60 
$EndSheet
Wire Wire Line
	3000 5500 3100 5500
Wire Wire Line
	3000 5750 3100 5750
Wire Wire Line
	3000 6000 3100 6000
Wire Wire Line
	4100 5500 4200 5500
Wire Wire Line
	5100 5500 5200 5500
Wire Wire Line
	5100 5750 5200 5750
Wire Wire Line
	5100 6000 5200 6000
Wire Wire Line
	6200 5500 6300 5500
Wire Notes Line
	2950 600  2950 5100
$Comp
L LDS-CD16RI U3
U 1 1 5688764B
P 7800 5450
F 0 "U3" H 7100 4900 60  0000 L CNN
F 1 "LDS-CD16RI" H 8500 4900 60  0000 R CNN
F 2 "" H 7550 5850 60  0000 C CNN
F 3 "" H 7550 5850 60  0000 C CNN
	1    7800 5450
	1    0    0    -1  
$EndComp
Text GLabel 7400 6100 3    60   Output ~ 0
GND
Text GLabel 7750 6100 3    60   Output ~ 0
GND
$Comp
L LDS-CD16RI U4
U 1 1 56887D47
P 9600 5450
F 0 "U4" H 8900 4900 60  0000 L CNN
F 1 "LDS-CD16RI" H 10300 4900 60  0000 R CNN
F 2 "" H 9350 5850 60  0000 C CNN
F 3 "" H 9350 5850 60  0000 C CNN
	1    9600 5450
	1    0    0    -1  
$EndComp
Text GLabel 9200 6100 3    60   Output ~ 0
GND
Text GLabel 9550 6100 3    60   Output ~ 0
GND
Text Notes 6900 6600 0    60   ~ 0
7-SEGMENT DISPLAYS
Wire Notes Line
	550  6550 6800 6550
Wire Notes Line
	6800 600  6800 6700
Wire Notes Line
	550  5100 6800 5100
Wire Wire Line
	2400 2050 2350 2050
$EndSCHEMATC
