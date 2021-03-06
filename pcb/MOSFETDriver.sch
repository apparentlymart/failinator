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
$Descr A4 11693 8268
encoding utf-8
Sheet 2 19
Title "Failinator"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L FQU13N06L MOSFET1
U 1 1 56877F77
P 4650 4050
AR Path="/568778A1/56877F77" Ref="MOSFET1"  Part="1" 
AR Path="/56879543/56877F77" Ref="MOSFET3"  Part="1" 
AR Path="/5687AB7C/56877F77" Ref="MOSFET5"  Part="1" 
AR Path="/56930DD4/56877F77" Ref="MOSFET21"  Part="1" 
AR Path="/56931957/56877F77" Ref="MOSFET23"  Part="1" 
AR Path="/56932920/56877F77" Ref="MOSFET25"  Part="1" 
AR Path="/56932F11/56877F77" Ref="MOSFET27"  Part="1" 
AR Path="/5693327A/56877F77" Ref="MOSFET29"  Part="1" 
AR Path="/56933823/56877F77" Ref="MOSFET31"  Part="1" 
AR Path="/5693448C/56877F77" Ref="MOSFET33"  Part="1" 
AR Path="/569464F7/56877F77" Ref="MOSFET35"  Part="1" 
AR Path="/56946503/56877F77" Ref="MOSFET37"  Part="1" 
AR Path="/5694650F/56877F77" Ref="MOSFET39"  Part="1" 
AR Path="/5694651B/56877F77" Ref="MOSFET41"  Part="1" 
AR Path="/56946527/56877F77" Ref="MOSFET43"  Part="1" 
AR Path="/56946533/56877F77" Ref="MOSFET45"  Part="1" 
AR Path="/5694653F/56877F77" Ref="MOSFET47"  Part="1" 
AR Path="/5694859C/56932920/56877F77" Ref="MOSFET11"  Part="1" 
AR Path="/5694859C/56930DD4/56877F77" Ref="MOSFET7"  Part="1" 
AR Path="/5694859C/56931957/56877F77" Ref="MOSFET9"  Part="1" 
AR Path="/5694859C/56932F11/56877F77" Ref="MOSFET13"  Part="1" 
AR Path="/5694859C/5693327A/56877F77" Ref="MOSFET15"  Part="1" 
AR Path="/5694859C/56933823/56877F77" Ref="MOSFET17"  Part="1" 
AR Path="/5694859C/5693448C/56877F77" Ref="MOSFET19"  Part="1" 
AR Path="/5694859C/569464F7/56877F77" Ref="MOSFET21"  Part="1" 
AR Path="/5694859C/56946503/56877F77" Ref="MOSFET23"  Part="1" 
AR Path="/5694859C/5694650F/56877F77" Ref="MOSFET25"  Part="1" 
AR Path="/5694859C/5694651B/56877F77" Ref="MOSFET27"  Part="1" 
AR Path="/5694859C/56946527/56877F77" Ref="MOSFET29"  Part="1" 
AR Path="/5694859C/56946533/56877F77" Ref="MOSFET31"  Part="1" 
AR Path="/5694859C/5694653F/56877F77" Ref="MOSFET33"  Part="1" 
F 0 "MOSFET1" H 4991 4103 60  0000 L CNN
F 1 "FQU13N06L" H 4991 3997 60  0000 L CNN
F 2 "failinator:TO-251AA" H 4650 4050 60  0001 C CNN
F 3 "" H 4650 4050 60  0000 C CNN
	1    4650 4050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56877F80
P 4950 3300
AR Path="/568778A1/56877F80" Ref="R1"  Part="1" 
AR Path="/56879543/56877F80" Ref="R2"  Part="1" 
AR Path="/5687AB7C/56877F80" Ref="R3"  Part="1" 
AR Path="/56930DD4/56877F80" Ref="R4"  Part="1" 
AR Path="/56931957/56877F80" Ref="R5"  Part="1" 
AR Path="/56932920/56877F80" Ref="R6"  Part="1" 
AR Path="/56932F11/56877F80" Ref="R7"  Part="1" 
AR Path="/5693327A/56877F80" Ref="R8"  Part="1" 
AR Path="/56933823/56877F80" Ref="R9"  Part="1" 
AR Path="/5693448C/56877F80" Ref="R10"  Part="1" 
AR Path="/569464F7/56877F80" Ref="R11"  Part="1" 
AR Path="/56946503/56877F80" Ref="R12"  Part="1" 
AR Path="/5694650F/56877F80" Ref="R13"  Part="1" 
AR Path="/5694651B/56877F80" Ref="R14"  Part="1" 
AR Path="/56946527/56877F80" Ref="R15"  Part="1" 
AR Path="/56946533/56877F80" Ref="R16"  Part="1" 
AR Path="/5694653F/56877F80" Ref="R17"  Part="1" 
AR Path="/5694859C/56932920/56877F80" Ref="R6"  Part="1" 
AR Path="/5694859C/56930DD4/56877F80" Ref="R4"  Part="1" 
AR Path="/5694859C/56931957/56877F80" Ref="R5"  Part="1" 
AR Path="/5694859C/56932F11/56877F80" Ref="R7"  Part="1" 
AR Path="/5694859C/5693327A/56877F80" Ref="R8"  Part="1" 
AR Path="/5694859C/56933823/56877F80" Ref="R9"  Part="1" 
AR Path="/5694859C/5693448C/56877F80" Ref="R10"  Part="1" 
AR Path="/5694859C/569464F7/56877F80" Ref="R11"  Part="1" 
AR Path="/5694859C/56946503/56877F80" Ref="R12"  Part="1" 
AR Path="/5694859C/5694650F/56877F80" Ref="R13"  Part="1" 
AR Path="/5694859C/5694651B/56877F80" Ref="R14"  Part="1" 
AR Path="/5694859C/56946527/56877F80" Ref="R15"  Part="1" 
AR Path="/5694859C/56946533/56877F80" Ref="R16"  Part="1" 
AR Path="/5694859C/5694653F/56877F80" Ref="R17"  Part="1" 
F 0 "R1" H 5020 3346 50  0000 L CNN
F 1 "10k" H 5020 3254 50  0000 L CNN
F 2 "Discret:R3" V 4880 3300 30  0001 C CNN
F 3 "" H 4950 3300 30  0000 C CNN
	1    4950 3300
	1    0    0    -1  
$EndComp
$Comp
L FQU17P06 MOSFET2
U 1 1 56877F87
P 5450 3400
AR Path="/568778A1/56877F87" Ref="MOSFET2"  Part="1" 
AR Path="/56879543/56877F87" Ref="MOSFET4"  Part="1" 
AR Path="/5687AB7C/56877F87" Ref="MOSFET6"  Part="1" 
AR Path="/56930DD4/56877F87" Ref="MOSFET22"  Part="1" 
AR Path="/56931957/56877F87" Ref="MOSFET24"  Part="1" 
AR Path="/56932920/56877F87" Ref="MOSFET26"  Part="1" 
AR Path="/56932F11/56877F87" Ref="MOSFET28"  Part="1" 
AR Path="/5693327A/56877F87" Ref="MOSFET30"  Part="1" 
AR Path="/56933823/56877F87" Ref="MOSFET32"  Part="1" 
AR Path="/5693448C/56877F87" Ref="MOSFET34"  Part="1" 
AR Path="/569464F7/56877F87" Ref="MOSFET36"  Part="1" 
AR Path="/56946503/56877F87" Ref="MOSFET38"  Part="1" 
AR Path="/5694650F/56877F87" Ref="MOSFET40"  Part="1" 
AR Path="/5694651B/56877F87" Ref="MOSFET42"  Part="1" 
AR Path="/56946527/56877F87" Ref="MOSFET44"  Part="1" 
AR Path="/56946533/56877F87" Ref="MOSFET46"  Part="1" 
AR Path="/5694653F/56877F87" Ref="MOSFET48"  Part="1" 
AR Path="/5694859C/56932920/56877F87" Ref="MOSFET12"  Part="1" 
AR Path="/5694859C/56930DD4/56877F87" Ref="MOSFET8"  Part="1" 
AR Path="/5694859C/56931957/56877F87" Ref="MOSFET10"  Part="1" 
AR Path="/5694859C/56932F11/56877F87" Ref="MOSFET14"  Part="1" 
AR Path="/5694859C/5693327A/56877F87" Ref="MOSFET16"  Part="1" 
AR Path="/5694859C/56933823/56877F87" Ref="MOSFET18"  Part="1" 
AR Path="/5694859C/5693448C/56877F87" Ref="MOSFET20"  Part="1" 
AR Path="/5694859C/569464F7/56877F87" Ref="MOSFET22"  Part="1" 
AR Path="/5694859C/56946503/56877F87" Ref="MOSFET24"  Part="1" 
AR Path="/5694859C/5694650F/56877F87" Ref="MOSFET26"  Part="1" 
AR Path="/5694859C/5694651B/56877F87" Ref="MOSFET28"  Part="1" 
AR Path="/5694859C/56946527/56877F87" Ref="MOSFET30"  Part="1" 
AR Path="/5694859C/56946533/56877F87" Ref="MOSFET32"  Part="1" 
AR Path="/5694859C/5694653F/56877F87" Ref="MOSFET34"  Part="1" 
F 0 "MOSFET2" H 5850 3450 60  0000 L CNN
F 1 "FQU17P06" H 5850 3350 60  0000 L CNN
F 2 "failinator:TO-251AA" H 5450 3400 60  0001 C CNN
F 3 "" H 5450 3400 60  0000 C CNN
	1    5450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3150 4950 2950
Wire Wire Line
	4950 3450 4950 3650
Wire Wire Line
	4350 3900 4500 3900
Wire Wire Line
	4450 4500 4950 4500
Wire Wire Line
	4950 4500 4950 4450
Wire Wire Line
	4450 2950 5750 2950
Wire Wire Line
	5750 2950 5750 3000
Connection ~ 4950 2950
Wire Wire Line
	5750 3800 5750 3900
Wire Wire Line
	5300 3550 4950 3550
Connection ~ 4950 3550
Text HLabel 4450 2750 1    60   Input ~ 0
VIN
Text HLabel 4450 4700 3    60   Input ~ 0
GND
Text HLabel 4350 3900 0    60   Input ~ 0
EN
Text HLabel 5900 3900 2    60   Output ~ 0
VOUT
Wire Wire Line
	5750 3900 5900 3900
Wire Wire Line
	4450 2750 4450 2950
Wire Wire Line
	4450 4500 4450 4700
$EndSCHEMATC
