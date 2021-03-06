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
Sheet 1 19
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
P 1700 3550
F 0 "U2" H 1300 4900 60  0000 C CNN
F 1 "RASPIPLUSHEADER" H 1750 2100 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 1700 3300 60  0001 C CNN
F 3 "" H 1700 3300 60  0000 C CNN
	1    1700 3550
	1    0    0    -1  
$EndComp
Text GLabel 1000 4950 3    60   Output ~ 0
GND
Text GLabel 1000 2250 1    60   Output ~ 0
+3V3
Text Notes 1350 1700 0    60   ~ 0
RASPBERRY PI A/B+\nGPIO HEADER
Text GLabel 1000 2750 3    60   Output ~ 0
+5V
Text Label 2400 3150 0    60   ~ 0
MOSI
Text Label 2400 3250 0    60   ~ 0
SCLK
Text Label 2400 2950 0    60   ~ 0
DISP_CS
Text Label 2400 2350 0    60   ~ 0
RED_L
Text Label 2400 2450 0    60   ~ 0
AMBER_L
Text Label 2400 2550 0    60   ~ 0
GREEN_L
$Comp
L CONN_01X04 P1
U 1 1 5604E884
P 1500 7650
F 0 "P1" H 1500 7900 50  0000 C CNN
F 1 "CONN_01X04" V 1600 7650 50  0000 C CNN
F 2 "failinator:TERM_4" H 1500 7650 60  0001 C CNN
F 3 "" H 1500 7650 60  0000 C CNN
	1    1500 7650
	1    0    0    -1  
$EndComp
Text Label 1250 7600 2    60   ~ 0
RED_P
Text Label 1250 7700 2    60   ~ 0
AMBER_P
Text Label 1250 7800 2    60   ~ 0
GREEN_P
Text GLabel 1250 7450 1    60   Input ~ 0
GND
Text GLabel 3650 2900 0    60   Input ~ 0
GND
Text GLabel 3650 2400 0    60   Input ~ 0
+24V
Text Label 3650 2650 2    60   ~ 0
RED_L
Text Label 4850 2400 0    60   ~ 0
RED_P
Text GLabel 3650 3950 0    60   Input ~ 0
GND
Text GLabel 3650 3450 0    60   Input ~ 0
+24V
Text Label 3650 3700 2    60   ~ 0
AMBER_L
Text Label 4850 3450 0    60   ~ 0
AMBER_P
Text GLabel 3650 4950 0    60   Input ~ 0
GND
Text GLabel 3650 4450 0    60   Input ~ 0
+24V
Text Label 3650 4700 2    60   ~ 0
GREEN_L
Text Label 4850 4450 0    60   ~ 0
GREEN_P
Text Notes 600  7050 0    60   ~ 0
STATUS LAMP\nCONNECTIONS
Text Notes 3700 1700 0    60   ~ 0
STATUS LAMP CONTROL
$Comp
L CONN_01X06 P4
U 1 1 56053895
P 2600 7750
F 0 "P4" H 2600 8100 50  0000 C CNN
F 1 "CONN_01X06" V 2700 7750 50  0000 C CNN
F 2 "failinator:TERM_6" H 2600 7750 60  0001 C CNN
F 3 "" H 2600 7750 60  0000 C CNN
	1    2600 7750
	0    1    1    0   
$EndComp
Text GLabel 2450 7500 1    60   Input ~ 0
+24V
Text GLabel 2550 7500 1    60   Input ~ 0
+24V
Text GLabel 2750 7500 1    60   Input ~ 0
+5V
Text GLabel 2350 7500 1    60   Input ~ 0
GND
Text GLabel 2650 7500 1    60   Input ~ 0
GND
Text GLabel 2850 7500 1    60   Input ~ 0
GND
Text Notes 2150 7000 0    60   ~ 0
POWER CONNECTIONS
$Sheet
S 3750 2300 1000 700 
U 568778A1
F0 "RedDriver" 60
F1 "MOSFETDriver.sch" 60
F2 "VIN" I L 3750 2400 60 
F3 "GND" I L 3750 2900 60 
F4 "EN" I L 3750 2650 60 
F5 "VOUT" O R 4750 2400 60 
$EndSheet
$Sheet
S 3750 3350 1000 700 
U 56879543
F0 "AmberDriver" 60
F1 "MOSFETDriver.sch" 60
F2 "VIN" I L 3750 3450 60 
F3 "GND" I L 3750 3950 60 
F4 "EN" I L 3750 3700 60 
F5 "VOUT" O R 4750 3450 60 
$EndSheet
$Sheet
S 3750 4350 1000 700 
U 5687AB7C
F0 "GreenDriver" 60
F1 "MOSFETDriver.sch" 60
F2 "VIN" I L 3750 4450 60 
F3 "GND" I L 3750 4950 60 
F4 "EN" I L 3750 4700 60 
F5 "VOUT" O R 4750 4450 60 
$EndSheet
$Comp
L LDS-CD16RI U3
U 1 1 5688764B
P 7150 5250
F 0 "U3" H 6450 4700 60  0000 L CNN
F 1 "LDS-CD16RI" H 7850 4700 60  0000 R CNN
F 2 "failinator:LDS-CD16RI" H 6900 5650 60  0001 C CNN
F 3 "" H 6900 5650 60  0000 C CNN
	1    7150 5250
	1    0    0    -1  
$EndComp
$Comp
L LDS-CD16RI U4
U 1 1 56887D47
P 8950 5250
F 0 "U4" H 8250 4700 60  0000 L CNN
F 1 "LDS-CD16RI" H 9650 4700 60  0000 R CNN
F 2 "failinator:LDS-CD16RI" H 8700 5650 60  0001 C CNN
F 3 "" H 8700 5650 60  0000 C CNN
	1    8950 5250
	1    0    0    -1  
$EndComp
Text Notes 7550 1050 0    60   ~ 0
7-SEGMENT DISPLAYS
$Sheet
S 6300 3500 3500 1050
U 5694859C
F0 "DisplayDrivers" 60
F1 "DisplayDrivers.sch" 60
F2 "VIN" I T 7850 3500 60 
F3 "GND" I B 8050 4550 60 
F4 "A0_L" I T 6450 3500 60 
F5 "B0_L" I T 6650 3500 60 
F6 "C0_L" I T 6850 3500 60 
F7 "D0_L" I T 7050 3500 60 
F8 "E0_L" I T 7250 3500 60 
F9 "F0_L" I T 7450 3500 60 
F10 "G0_L" I T 7650 3500 60 
F11 "A0_P" O B 6450 4550 60 
F12 "B0_P" O B 6650 4550 60 
F13 "C0_P" O B 6850 4550 60 
F14 "D0_P" O B 7050 4550 60 
F15 "E0_P" O B 7250 4550 60 
F16 "F0_P" O B 7450 4550 60 
F17 "G0_P" O B 7650 4550 60 
F18 "A1_L" I T 8250 3500 60 
F19 "B1_L" I T 8450 3500 60 
F20 "C1_L" I T 8650 3500 60 
F21 "D1_L" I T 8850 3500 60 
F22 "E1_L" I T 9050 3500 60 
F23 "F1_L" I T 9250 3500 60 
F24 "G1_L" I T 9450 3500 60 
F25 "A1_P" O B 8250 4550 60 
F26 "B1_P" O B 8450 4550 60 
F27 "C1_P" O B 8650 4550 60 
F28 "D1_P" O B 8850 4550 60 
F29 "E1_P" O B 9050 4550 60 
F30 "F1_P" O B 9250 4550 60 
F31 "G1_P" O B 9450 4550 60 
$EndSheet
$Comp
L 74HC594 U1
U 1 1 56950B50
P 6850 2150
F 0 "U1" H 6150 2600 60  0000 L CNN
F 1 "74HC594" H 6650 2150 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 7050 2700 60  0001 L CNN
F 3 "" H 6400 2100 60  0000 C CNN
	1    6850 2150
	1    0    0    -1  
$EndComp
$Comp
L 74HC594 U5
U 1 1 569511FE
P 9250 2150
F 0 "U5" H 8550 2600 60  0000 L CNN
F 1 "74HC594" H 9250 2150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 8800 2100 60  0001 C CNN
F 3 "" H 8800 2100 60  0000 C CNN
	1    9250 2150
	1    0    0    -1  
$EndComp
NoConn ~ 9550 2750
NoConn ~ 7150 2750
NoConn ~ 10150 1900
Text Label 5900 1900 2    60   ~ 0
D_MOSI
Text Label 5900 2050 2    60   ~ 0
D_SCLK
Text Label 5900 2150 2    60   ~ 0
D_DISP_CS
Text Label 8300 2050 2    60   ~ 0
D_SCLK
Text Label 8300 2150 2    60   ~ 0
D_DISP_CS
$Comp
L R R18
U 1 1 56957A98
P 5850 2650
F 0 "R18" H 5920 2696 50  0000 L CNN
F 1 "10k" H 5920 2604 50  0000 L CNN
F 2 "Discret:R3" H 5920 2558 50  0001 L CNN
F 3 "" H 5850 2650 50  0000 C CNN
	1    5850 2650
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 56957C76
P 8050 2600
F 0 "R19" H 8120 2646 50  0000 L CNN
F 1 "10k" H 8120 2554 50  0000 L CNN
F 2 "Discret:R3" V 7980 2600 50  0001 C CNN
F 3 "" H 8050 2600 50  0000 C CNN
	1    8050 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4150 1000 4150
Wire Wire Line
	1000 4150 1000 4950
Wire Wire Line
	1050 4250 1000 4250
Connection ~ 1000 4250
Wire Wire Line
	1050 4350 1000 4350
Connection ~ 1000 4350
Wire Wire Line
	1050 4450 1000 4450
Connection ~ 1000 4450
Wire Wire Line
	1050 4550 1000 4550
Connection ~ 1000 4550
Wire Wire Line
	1050 4650 1000 4650
Connection ~ 1000 4650
Wire Wire Line
	1050 4750 1000 4750
Connection ~ 1000 4750
Wire Wire Line
	1050 4850 1000 4850
Connection ~ 1000 4850
Wire Wire Line
	1000 2250 1000 2450
Wire Wire Line
	1000 2450 1050 2450
Wire Wire Line
	1050 2350 1000 2350
Connection ~ 1000 2350
Wire Wire Line
	1050 2600 1000 2600
Wire Wire Line
	1000 2600 1000 2750
Wire Wire Line
	1050 2700 1000 2700
Connection ~ 1000 2700
Wire Wire Line
	2350 3150 2400 3150
Wire Wire Line
	2350 3250 2400 3250
Wire Wire Line
	2350 2350 2400 2350
Wire Wire Line
	2350 2450 2400 2450
Wire Wire Line
	2350 2550 2400 2550
Wire Wire Line
	1250 7450 1250 7500
Wire Wire Line
	1250 7500 1300 7500
Wire Wire Line
	1250 7600 1300 7600
Wire Wire Line
	1250 7700 1300 7700
Wire Wire Line
	1250 7800 1300 7800
Wire Wire Line
	2350 7500 2350 7550
Wire Wire Line
	2450 7500 2450 7550
Wire Wire Line
	2550 7500 2550 7550
Wire Wire Line
	2650 7500 2650 7550
Wire Wire Line
	2750 7500 2750 7550
Wire Wire Line
	2850 7500 2850 7550
Wire Wire Line
	4750 2400 4850 2400
Wire Wire Line
	3650 2400 3750 2400
Wire Wire Line
	3650 2650 3750 2650
Wire Wire Line
	3650 2900 3750 2900
Wire Wire Line
	3650 3450 3750 3450
Wire Wire Line
	3650 3700 3750 3700
Wire Wire Line
	3650 3950 3750 3950
Wire Wire Line
	4750 3450 4850 3450
Wire Wire Line
	3650 4450 3750 4450
Wire Wire Line
	3650 4700 3750 4700
Wire Wire Line
	3650 4950 3750 4950
Wire Wire Line
	4750 4450 4850 4450
Wire Wire Line
	2400 2950 2350 2950
Wire Wire Line
	6450 4550 6450 4650
Wire Wire Line
	6650 4550 6650 4650
Wire Wire Line
	6850 4550 6850 4650
Wire Wire Line
	7050 4550 7050 4650
Wire Wire Line
	7250 4550 7250 4650
Wire Wire Line
	7450 4550 7450 4650
Wire Wire Line
	7650 4550 7650 4650
Wire Wire Line
	8050 4550 8050 4650
Wire Wire Line
	8250 4550 8250 4650
Wire Wire Line
	8450 4550 8450 4650
Wire Wire Line
	8650 4550 8650 4650
Wire Wire Line
	8850 4550 8850 4650
Wire Wire Line
	9050 4550 9050 4650
Wire Wire Line
	9250 4550 9250 4650
Wire Wire Line
	9450 4550 9450 4650
Wire Wire Line
	6450 3500 6450 2750
Wire Wire Line
	6550 2750 6550 3400
Wire Wire Line
	6550 3400 6650 3400
Wire Wire Line
	6650 3400 6650 3500
Wire Wire Line
	6650 2750 6650 3300
Wire Wire Line
	6650 3300 6850 3300
Wire Wire Line
	6850 3300 6850 3500
Wire Wire Line
	6750 2750 6750 3200
Wire Wire Line
	6750 3200 7050 3200
Wire Wire Line
	7050 3200 7050 3500
Wire Wire Line
	6850 2750 6850 3100
Wire Wire Line
	6850 3100 7250 3100
Wire Wire Line
	7250 3100 7250 3500
Wire Wire Line
	6950 2750 6950 3000
Wire Wire Line
	6950 3000 7450 3000
Wire Wire Line
	7450 3000 7450 3500
Wire Wire Line
	7050 2750 7050 2900
Wire Wire Line
	7050 2900 7650 2900
Wire Wire Line
	7650 2900 7650 3500
Wire Wire Line
	7350 2750 7350 2800
Wire Wire Line
	7350 2800 7400 2800
Wire Wire Line
	6850 1450 6850 1550
Wire Wire Line
	9250 1450 9250 1550
Wire Wire Line
	9450 2750 9450 3500
Wire Wire Line
	9350 2750 9350 3400
Wire Wire Line
	9350 3400 9250 3400
Wire Wire Line
	9250 3400 9250 3500
Wire Wire Line
	9250 2750 9250 3300
Wire Wire Line
	9250 3300 9050 3300
Wire Wire Line
	9050 3300 9050 3500
Wire Wire Line
	9150 2750 9150 3200
Wire Wire Line
	9150 3200 8850 3200
Wire Wire Line
	8850 3200 8850 3500
Wire Wire Line
	9050 2750 9050 3100
Wire Wire Line
	9050 3100 8650 3100
Wire Wire Line
	8650 3100 8650 3500
Wire Wire Line
	8950 2750 8950 3000
Wire Wire Line
	8950 3000 8450 3000
Wire Wire Line
	8450 3000 8450 3500
Wire Wire Line
	8850 2750 8850 2900
Wire Wire Line
	8850 2900 8250 2900
Wire Wire Line
	8250 2900 8250 3500
Wire Wire Line
	9750 2750 9750 2800
Wire Wire Line
	7750 1900 8350 1900
Wire Wire Line
	5900 1900 5950 1900
Wire Wire Line
	5900 2050 5950 2050
Wire Wire Line
	5900 2150 5950 2150
Wire Wire Line
	8300 2050 8350 2050
Wire Wire Line
	8300 2150 8350 2150
Wire Wire Line
	5950 2300 5850 2300
Wire Wire Line
	5850 2300 5850 2500
Wire Wire Line
	5950 2400 5850 2400
Connection ~ 5850 2400
Wire Wire Line
	5850 2800 5850 2850
Wire Wire Line
	8350 2300 8050 2300
Wire Wire Line
	8050 2300 8050 2450
Wire Wire Line
	8350 2400 8050 2400
Connection ~ 8050 2400
Wire Wire Line
	8050 2750 8050 2800
Wire Notes Line
	3000 550  3000 6800
Wire Notes Line
	550  6800 6200 6800
Wire Notes Line
	5400 6800 5400 550 
Wire Notes Line
	1900 6800 1900 7950
Wire Notes Line
	3350 6800 3350 7950
$Comp
L CONN_01X06 P3
U 1 1 56C94215
P 5600 7500
F 0 "P3" H 5677 7538 50  0000 L CNN
F 1 "CONN_01X06" H 5677 7446 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 5600 7500 50  0001 C CNN
F 3 "" H 5600 7500 50  0000 C CNN
	1    5600 7500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 56C942DE
P 4200 7500
F 0 "P2" H 4277 7538 50  0000 L CNN
F 1 "CONN_01X06" H 4277 7446 50  0000 L CNN
F 2 "failinator:Wire_Conn_6pin_StrainReliefRight" H 4200 7500 50  0001 C CNN
F 3 "" H 4200 7500 50  0000 C CNN
	1    4200 7500
	1    0    0    -1  
$EndComp
Text GLabel 3900 7750 0    60   Input ~ 0
+24V
Text GLabel 3900 7650 0    60   Input ~ 0
GND
Text GLabel 3900 7550 0    60   Input ~ 0
+3V3
Text Label 3900 7450 2    60   ~ 0
MOSI
Text Label 3900 7350 2    60   ~ 0
DISP_CS
Text Label 3900 7250 2    60   ~ 0
SCLK
Wire Wire Line
	3900 7250 4000 7250
Wire Wire Line
	3900 7350 4000 7350
Wire Wire Line
	3900 7450 4000 7450
Wire Wire Line
	3900 7550 4000 7550
Wire Wire Line
	3900 7650 4000 7650
Wire Wire Line
	3900 7750 4000 7750
Text Label 5300 7250 2    60   ~ 0
D_SCLK
Text Label 5300 7350 2    60   ~ 0
D_DISP_CS
Text Label 5300 7450 2    60   ~ 0
D_MOSI
Text Label 5300 7550 2    60   ~ 0
D_+3V3
Text Label 5300 7650 2    60   ~ 0
D_GND
Text Label 5300 7750 2    60   ~ 0
D_+24V
Wire Wire Line
	5300 7250 5400 7250
Wire Wire Line
	5300 7350 5400 7350
Wire Wire Line
	5300 7450 5400 7450
Wire Wire Line
	5300 7550 5400 7550
Wire Wire Line
	5300 7650 5400 7650
Wire Wire Line
	5300 7750 5400 7750
Text Notes 4150 7000 0    60   ~ 0
7SEG DISPLAY CONNECTIONS
Text Label 6850 1450 1    60   ~ 0
D_+3V3
Text Label 9250 1450 1    60   ~ 0
D_+3V3
Text Label 5850 2850 3    60   ~ 0
D_+3V3
Text Label 8050 2800 3    60   ~ 0
D_+3V3
Text Label 7850 3450 1    60   ~ 0
D_+24V
Wire Wire Line
	7850 3450 7850 3500
Text Label 7400 2800 0    60   ~ 0
D_GND
Text Label 9750 2800 3    60   ~ 0
D_GND
Text Label 6750 5900 3    60   ~ 0
D_GND
Text Label 7100 5900 3    60   ~ 0
D_GND
Text Label 8550 5900 3    60   ~ 0
D_GND
Text Label 8900 5900 3    60   ~ 0
D_GND
Text Label 8050 4650 3    60   ~ 0
D_GND
$Comp
L C_Small C2
U 1 1 56C9F0BA
P 6050 6450
F 0 "C2" V 6300 6450 50  0000 C CNN
F 1 "C_Small" V 6200 6450 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6050 6450 50  0001 C CNN
F 3 "" H 6050 6450 50  0000 C CNN
	1    6050 6450
	0    1    1    0   
$EndComp
$Comp
L C_Small C1
U 1 1 56C9F3F1
P 6050 6250
F 0 "C1" V 5800 6250 50  0000 C CNN
F 1 "C_Small" V 5900 6250 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6050 6250 50  0001 C CNN
F 3 "" H 6050 6250 50  0000 C CNN
	1    6050 6250
	0    1    1    0   
$EndComp
Text Label 6300 6350 0    60   ~ 0
D_GND
Text Label 5800 6350 2    60   ~ 0
D_+3V3
Wire Wire Line
	5800 6350 5850 6350
Wire Wire Line
	5850 6250 5850 6450
Wire Wire Line
	5850 6250 5950 6250
Wire Wire Line
	6150 6250 6250 6250
Wire Wire Line
	6250 6250 6250 6450
Wire Wire Line
	6250 6350 6300 6350
Wire Wire Line
	5850 6450 5950 6450
Connection ~ 5850 6350
Wire Wire Line
	6250 6450 6150 6450
Connection ~ 6250 6350
$EndSCHEMATC
