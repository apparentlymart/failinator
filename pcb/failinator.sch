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
Sheet 1 1
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
L RASPIPLUSHEADER U2
U 1 1 54A79B4A
P 1700 2300
F 0 "U2" H 1300 3650 60  0000 C CNN
F 1 "RASPIPLUSHEADER" H 1750 850 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 1700 2050 60  0001 C CNN
F 3 "" H 1700 2050 60  0000 C CNN
	1    1700 2300
	1    0    0    -1  
$EndComp
Text GLabel 1000 3700 3    60   Output ~ 0
GND
Text GLabel 1000 1000 1    60   Output ~ 0
+3V3
Wire Wire Line
	1050 2900 1000 2900
Wire Wire Line
	1000 2900 1000 3700
Wire Wire Line
	1050 3000 1000 3000
Connection ~ 1000 3000
Wire Wire Line
	1050 3100 1000 3100
Connection ~ 1000 3100
Wire Wire Line
	1050 3200 1000 3200
Connection ~ 1000 3200
Wire Wire Line
	1050 3300 1000 3300
Connection ~ 1000 3300
Wire Wire Line
	1050 3400 1000 3400
Connection ~ 1000 3400
Wire Wire Line
	1050 3500 1000 3500
Connection ~ 1000 3500
Wire Wire Line
	1050 3600 1000 3600
Connection ~ 1000 3600
Wire Wire Line
	1000 1000 1000 1200
Wire Wire Line
	1000 1200 1050 1200
Wire Wire Line
	1050 1100 1000 1100
Connection ~ 1000 1100
Text Notes 2450 850  2    60   ~ 0
RASPBERRY PI A/B+\nGPIO HEADER
Text GLabel 1000 1500 3    60   Output ~ 0
+5V
Wire Wire Line
	1050 1350 1000 1350
Wire Wire Line
	1000 1350 1000 1500
Wire Wire Line
	1050 1450 1000 1450
Connection ~ 1000 1450
Text Label 2400 1900 0    60   ~ 0
MOSI
Text Label 2400 2000 0    60   ~ 0
SCLK
Wire Wire Line
	2350 1900 2400 1900
Wire Wire Line
	2350 2000 2400 2000
Text Label 2400 3400 0    60   ~ 0
DISP_CS
Wire Wire Line
	2350 3400 2400 3400
$Comp
L MAX7219 U1
U 1 1 5604CE76
P 9200 1600
F 0 "U1" H 8800 2500 60  0000 C CNN
F 1 "MAX7219" H 9450 700 60  0000 C CNN
F 2 "Housings_DIP:DIP-24_W7.62mm_LongPads" H 9050 2100 60  0001 C CNN
F 3 "" H 9050 2100 60  0000 C CNN
	1    9200 1600
	1    0    0    -1  
$EndComp
Text GLabel 8050 850  0    60   Input ~ 0
+5V
$Comp
L R R4
U 1 1 5604CF10
P 8350 950
F 0 "R4" V 8450 950 50  0000 C CNN
F 1 "R" V 8350 950 50  0000 C CNN
F 2 "Discret:R3" V 8280 950 30  0001 C CNN
F 3 "" H 8350 950 30  0000 C CNN
	1    8350 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 950  8550 950 
Wire Wire Line
	8050 850  8550 850 
Wire Wire Line
	8200 950  8150 950 
Wire Wire Line
	8150 950  8150 850 
Connection ~ 8150 850 
Text GLabel 8500 2450 3    60   Input ~ 0
GND
Wire Wire Line
	8500 2450 8500 2250
Wire Wire Line
	8500 2250 8550 2250
Wire Wire Line
	8500 2350 8550 2350
Connection ~ 8500 2350
Text Label 8500 1850 2    60   ~ 0
MOSI
Text Label 8500 2050 2    60   ~ 0
SCLK
Text Label 8500 2150 2    60   ~ 0
DISP_CS
Wire Wire Line
	8500 2150 8550 2150
Wire Wire Line
	8500 2050 8550 2050
Wire Wire Line
	8500 1850 8550 1850
$Comp
L CONN_01X10 P2
U 1 1 5604D28A
P 9500 4850
F 0 "P2" H 9500 5400 50  0000 C CNN
F 1 "CONN_01X10" V 9600 4850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 9500 4850 60  0001 C CNN
F 3 "" H 9500 4850 60  0000 C CNN
	1    9500 4850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P3
U 1 1 5604D2BB
P 9500 6000
F 0 "P3" H 9500 6550 50  0000 C CNN
F 1 "CONN_01X10" V 9600 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 9500 6000 60  0001 C CNN
F 3 "" H 9500 6000 60  0000 C CNN
	1    9500 6000
	1    0    0    -1  
$EndComp
Text Label 9900 850  0    60   ~ 0
SEGDP
Text Label 9900 950  0    60   ~ 0
SEGA
Text Label 9900 1050 0    60   ~ 0
SEGB
Text Label 9900 1150 0    60   ~ 0
SEGC
Text Label 9900 1250 0    60   ~ 0
SEGD
Text Label 9900 1350 0    60   ~ 0
SEGE
Text Label 9900 1450 0    60   ~ 0
SEGF
Text Label 9900 1550 0    60   ~ 0
SEGG
Text Label 9900 1650 0    60   ~ 0
DIG0
Text Label 9900 1750 0    60   ~ 0
DIG1
Wire Wire Line
	9850 850  9900 850 
Wire Wire Line
	9850 950  9900 950 
Wire Wire Line
	9850 1050 9900 1050
Wire Wire Line
	9850 1150 9900 1150
Wire Wire Line
	9850 1250 9900 1250
Wire Wire Line
	9850 1350 9900 1350
Wire Wire Line
	9850 1450 9900 1450
Wire Wire Line
	9850 1550 9900 1550
Wire Wire Line
	9850 1650 9900 1650
Wire Wire Line
	9850 1750 9900 1750
Text Label 9250 5100 2    60   ~ 0
DIG0
Text Label 9250 6250 2    60   ~ 0
DIG1
Wire Wire Line
	9250 5100 9300 5100
Wire Wire Line
	9250 6250 9300 6250
Text Label 9250 5550 2    60   ~ 0
SEGE
Text Label 9250 4400 2    60   ~ 0
SEGE
Text Label 9250 4500 2    60   ~ 0
SEGD
Text Label 9250 5650 2    60   ~ 0
SEGD
Text Label 9250 4700 2    60   ~ 0
SEGDP
Text Label 9250 5850 2    60   ~ 0
SEGDP
Text Label 9250 4800 2    60   ~ 0
SEGC
Text Label 9250 4900 2    60   ~ 0
SEGB
Text Label 9250 5000 2    60   ~ 0
SEGA
Text Label 9250 5950 2    60   ~ 0
SEGC
Text Label 9250 6050 2    60   ~ 0
SEGB
Text Label 9250 6150 2    60   ~ 0
SEGA
Text Label 9250 5200 2    60   ~ 0
SEGG
Text Label 9250 5300 2    60   ~ 0
SEGF
Text Label 9250 6350 2    60   ~ 0
SEGG
Text Label 9250 6450 2    60   ~ 0
SEGF
Wire Wire Line
	9250 4400 9300 4400
Wire Wire Line
	9250 4500 9300 4500
Wire Wire Line
	9250 4700 9300 4700
Wire Wire Line
	9250 4800 9300 4800
Wire Wire Line
	9250 4900 9300 4900
Wire Wire Line
	9250 5000 9300 5000
Wire Wire Line
	9250 5200 9300 5200
Wire Wire Line
	9250 5300 9300 5300
Wire Wire Line
	9250 5550 9300 5550
Wire Wire Line
	9250 5650 9300 5650
Wire Wire Line
	9250 5850 9300 5850
Wire Wire Line
	9250 5950 9300 5950
Wire Wire Line
	9250 6050 9300 6050
Wire Wire Line
	9250 6150 9300 6150
Wire Wire Line
	9250 6350 9300 6350
Wire Wire Line
	9250 6450 9300 6450
$Comp
L CP C1
U 1 1 5604DF59
P 9100 3350
F 0 "C1" H 9125 3450 50  0000 L CNN
F 1 "10u" H 9125 3250 50  0000 L CNN
F 2 "failinator:CPOL_2mm" H 9138 3200 30  0001 C CNN
F 3 "" H 9100 3350 60  0000 C CNN
	1    9100 3350
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5604DF92
P 9500 3350
F 0 "C2" H 9525 3450 50  0000 L CNN
F 1 "100n" H 9525 3250 50  0000 L CNN
F 2 "failinator:C_4mm" H 9538 3200 30  0001 C CNN
F 3 "" H 9500 3350 60  0000 C CNN
	1    9500 3350
	1    0    0    -1  
$EndComp
Text GLabel 9300 3050 1    60   Input ~ 0
+5V
Text GLabel 9300 3650 3    60   Input ~ 0
GND
Wire Wire Line
	9300 3050 9300 3100
Wire Wire Line
	9100 3100 9100 3200
Connection ~ 9300 3100
Wire Wire Line
	9100 3100 9500 3100
Wire Wire Line
	9500 3100 9500 3200
Wire Wire Line
	9100 3500 9100 3600
Wire Wire Line
	9100 3600 9500 3600
Wire Wire Line
	9300 3600 9300 3650
Wire Wire Line
	9500 3600 9500 3500
Connection ~ 9300 3600
Text Label 2400 1100 0    60   ~ 0
RED_L
Text Label 2400 1200 0    60   ~ 0
AMBER_L
Text Label 2400 1300 0    60   ~ 0
GREEN_L
Wire Wire Line
	2350 1100 2400 1100
Wire Wire Line
	2350 1200 2400 1200
Wire Wire Line
	2350 1300 2400 1300
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
$Comp
L FQU13N06L MOSFET1
U 1 1 5604F114
P 1500 5700
F 0 "MOSFET1" H 1650 6000 60  0000 R CNN
F 1 "FQU13N06L" V 1900 5700 60  0000 C CNN
F 2 "failinator:TO-251AA" H 1500 5700 60  0001 C CNN
F 3 "" H 1500 5700 60  0000 C CNN
	1    1500 5700
	1    0    0    -1  
$EndComp
Text GLabel 1300 6150 0    60   Input ~ 0
GND
Text GLabel 1300 4600 0    60   Input ~ 0
+24V
$Comp
L R R1
U 1 1 5604FF36
P 1800 4950
F 0 "R1" V 1880 4950 50  0000 C CNN
F 1 "10k" V 1800 4950 50  0000 C CNN
F 2 "Discret:R3" V 1730 4950 30  0001 C CNN
F 3 "" H 1800 4950 30  0000 C CNN
	1    1800 4950
	1    0    0    -1  
$EndComp
$Comp
L FQU17P06 MOSFET2
U 1 1 56050258
P 2300 5050
F 0 "MOSFET2" H 2450 5350 60  0000 R CNN
F 1 "FQU17P06" V 2700 5100 60  0000 C CNN
F 2 "failinator:TO-251AA" H 2300 5050 60  0001 C CNN
F 3 "" H 2300 5050 60  0000 C CNN
	1    2300 5050
	1    0    0    -1  
$EndComp
Text Label 1200 5550 2    60   ~ 0
RED_L
Text Label 2600 5550 3    60   ~ 0
RED_P
Wire Wire Line
	1800 4800 1800 4600
Wire Wire Line
	1800 5100 1800 5300
Wire Wire Line
	1200 5550 1350 5550
Wire Wire Line
	1300 6150 1800 6150
Wire Wire Line
	1800 6150 1800 6100
Wire Wire Line
	1300 4600 2600 4600
Wire Wire Line
	2600 4600 2600 4650
Connection ~ 1800 4600
Wire Wire Line
	2600 5450 2600 5550
Wire Wire Line
	2150 5200 1800 5200
Connection ~ 1800 5200
$Comp
L FQU13N06L MOSFET3
U 1 1 56051AD8
P 3850 5700
F 0 "MOSFET3" H 4000 6000 60  0000 R CNN
F 1 "FQU13N06L" V 4250 5700 60  0000 C CNN
F 2 "failinator:TO-251AA" H 3850 5700 60  0001 C CNN
F 3 "" H 3850 5700 60  0000 C CNN
	1    3850 5700
	1    0    0    -1  
$EndComp
Text GLabel 3650 6150 0    60   Input ~ 0
GND
Text GLabel 3650 4600 0    60   Input ~ 0
+24V
$Comp
L R R2
U 1 1 56051AE0
P 4150 4950
F 0 "R2" V 4230 4950 50  0000 C CNN
F 1 "10k" V 4150 4950 50  0000 C CNN
F 2 "Discret:R3" V 4080 4950 30  0001 C CNN
F 3 "" H 4150 4950 30  0000 C CNN
	1    4150 4950
	1    0    0    -1  
$EndComp
$Comp
L FQU17P06 MOSFET4
U 1 1 56051AE6
P 4650 5050
F 0 "MOSFET4" H 4800 5350 60  0000 R CNN
F 1 "FQU17P06" V 5050 5100 60  0000 C CNN
F 2 "failinator:TO-251AA" H 4650 5050 60  0001 C CNN
F 3 "" H 4650 5050 60  0000 C CNN
	1    4650 5050
	1    0    0    -1  
$EndComp
Text Label 3550 5550 2    60   ~ 0
AMBER_L
Text Label 4950 5550 3    60   ~ 0
AMBER_P
Wire Wire Line
	4150 4800 4150 4600
Wire Wire Line
	4150 5100 4150 5300
Wire Wire Line
	3550 5550 3700 5550
Wire Wire Line
	3650 6150 4150 6150
Wire Wire Line
	4150 6150 4150 6100
Wire Wire Line
	3650 4600 4950 4600
Wire Wire Line
	4950 4600 4950 4650
Connection ~ 4150 4600
Wire Wire Line
	4950 5450 4950 5550
Wire Wire Line
	4500 5200 4150 5200
Connection ~ 4150 5200
$Comp
L FQU13N06L MOSFET5
U 1 1 56051BEF
P 6300 5700
F 0 "MOSFET5" H 6450 6000 60  0000 R CNN
F 1 "FQU13N06L" V 6700 5700 60  0000 C CNN
F 2 "failinator:TO-251AA" H 6300 5700 60  0001 C CNN
F 3 "" H 6300 5700 60  0000 C CNN
	1    6300 5700
	1    0    0    -1  
$EndComp
Text GLabel 6100 6150 0    60   Input ~ 0
GND
Text GLabel 6100 4600 0    60   Input ~ 0
+24V
$Comp
L R R3
U 1 1 56051BF7
P 6600 4950
F 0 "R3" V 6680 4950 50  0000 C CNN
F 1 "10k" V 6600 4950 50  0000 C CNN
F 2 "Discret:R3" V 6530 4950 30  0001 C CNN
F 3 "" H 6600 4950 30  0000 C CNN
	1    6600 4950
	1    0    0    -1  
$EndComp
$Comp
L FQU17P06 MOSFET6
U 1 1 56051BFD
P 7100 5050
F 0 "MOSFET6" H 7250 5350 60  0000 R CNN
F 1 "FQU17P06" V 7500 5100 60  0000 C CNN
F 2 "failinator:TO-251AA" H 7100 5050 60  0001 C CNN
F 3 "" H 7100 5050 60  0000 C CNN
	1    7100 5050
	1    0    0    -1  
$EndComp
Text Label 6000 5550 2    60   ~ 0
GREEN_L
Text Label 7400 5550 3    60   ~ 0
GREEN_P
Wire Wire Line
	6600 4800 6600 4600
Wire Wire Line
	6600 5100 6600 5300
Wire Wire Line
	6000 5550 6150 5550
Wire Wire Line
	6100 6150 6600 6150
Wire Wire Line
	6600 6150 6600 6100
Wire Wire Line
	6100 4600 7400 4600
Wire Wire Line
	7400 4600 7400 4650
Connection ~ 6600 4600
Wire Wire Line
	7400 5450 7400 5550
Wire Wire Line
	6950 5200 6600 5200
Connection ~ 6600 5200
Wire Notes Line
	2950 600  2950 4100
Wire Notes Line
	600  4100 10400 4100
Wire Notes Line
	8250 4100 8250 6750
Wire Notes Line
	8250 6550 600  6550
Wire Notes Line
	2050 6550 2050 7950
Wire Notes Line
	7600 550  7600 4100
Text Notes 7700 4000 0    60   ~ 0
DIGIT CONTROL
Text Notes 8300 6700 0    60   ~ 0
DIGIT CONNECTIONS
Text Notes 1950 6800 2    60   ~ 0
STATUS LAMP\nCONNECTIONS
Text Notes 8150 6450 2    60   ~ 0
STATUS LAMP\nCONTROL
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
$EndSCHEMATC
