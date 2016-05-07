EESchema Schematic File Version 2
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
LIBS:ws2812
LIBS:ACNode-Shield-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X10 P?
U 1 1 572DB41F
P 7300 3350
F 0 "P?" H 7300 4016 50  0000 C CNN
F 1 "CONN_X7" H 7300 3924 50  0000 C CNN
F 2 "" H 7300 2150 50  0000 C CNN
F 3 "" H 7300 2150 50  0000 C CNN
	1    7300 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X10 P?
U 1 1 572DB46B
P 4650 3350
F 0 "P?" H 4650 4016 50  0000 C CNN
F 1 "CONN_X6" H 4650 3924 50  0000 C CNN
F 2 "" H 4650 2150 50  0000 C CNN
F 3 "" H 4650 2150 50  0000 C CNN
	1    4650 3350
	1    0    0    -1  
$EndComp
Text GLabel 4050 2900 0    60   Input ~ 0
+3.3v
Text GLabel 3650 3000 0    60   Input ~ 0
PD2
Text GLabel 4050 3100 0    60   Input ~ 0
PP0
Text GLabel 3650 3200 0    60   Input ~ 0
PP1
Text GLabel 4050 3300 0    60   Input ~ 0
JP4?
Text GLabel 3650 3400 0    60   Input ~ 0
JP5?
Text GLabel 4050 3500 0    60   Input ~ 0
PQ0
Text GLabel 3650 3600 0    60   Input ~ 0
PP4
Text GLabel 4050 3700 0    60   Input ~ 0
PN5
Text GLabel 3650 3800 0    60   Input ~ 0
PN4
Wire Wire Line
	4050 2900 4400 2900
Wire Wire Line
	4400 3000 3650 3000
Wire Wire Line
	4050 3100 4400 3100
Wire Wire Line
	4400 3200 3650 3200
Wire Wire Line
	4050 3300 4400 3300
Wire Wire Line
	4400 3400 3650 3400
Wire Wire Line
	4050 3500 4400 3500
Wire Wire Line
	4400 3600 3650 3600
Wire Wire Line
	4050 3700 4400 3700
Wire Wire Line
	3650 3800 4400 3800
Text GLabel 5200 2900 2    60   Input ~ 0
+5V
Text GLabel 5500 3000 2    60   Input ~ 0
GND
Text GLabel 5200 3100 2    60   Input ~ 0
PB4
Text GLabel 5500 3200 2    60   Input ~ 0
PB5
Text GLabel 5200 3300 2    60   Input ~ 0
PK0
Text GLabel 5500 3400 2    60   Input ~ 0
PK1
Text GLabel 5200 3500 2    60   Input ~ 0
PK2
Text GLabel 5500 3600 2    60   Input ~ 0
PK3
Text GLabel 5200 3700 2    60   Input ~ 0
PA4
Text GLabel 5500 3800 2    60   Input ~ 0
PA5
Wire Wire Line
	5200 2900 4900 2900
Wire Wire Line
	4900 3000 5500 3000
Wire Wire Line
	5200 3100 4900 3100
Wire Wire Line
	4900 3200 5500 3200
Wire Wire Line
	5200 3300 4900 3300
Wire Wire Line
	4900 3400 5500 3400
Wire Wire Line
	5200 3500 4900 3500
Wire Wire Line
	4900 3600 5500 3600
Wire Wire Line
	5200 3700 4900 3700
Wire Wire Line
	4900 3800 5500 3800
Text GLabel 6850 2900 0    60   Input ~ 0
PG1
Text GLabel 6550 3000 0    60   Input ~ 0
PK4
Text GLabel 6850 3100 0    60   Input ~ 0
PK5
Text GLabel 6550 3200 0    60   Input ~ 0
PM0
Text GLabel 6850 3300 0    60   Input ~ 0
PM1
Text GLabel 6550 3400 0    60   Input ~ 0
PM2
Text GLabel 6850 3500 0    60   Input ~ 0
PH0
Text GLabel 6550 3600 0    60   Input ~ 0
PH1
Text GLabel 6850 3700 0    60   Input ~ 0
PK6
Text GLabel 6550 3800 0    60   Input ~ 0
PK7
Wire Wire Line
	6850 2900 7050 2900
Wire Wire Line
	7050 3000 6550 3000
Wire Wire Line
	6850 3100 7050 3100
Wire Wire Line
	7050 3200 6550 3200
Wire Wire Line
	6850 3300 7050 3300
Wire Wire Line
	7050 3400 6550 3400
Wire Wire Line
	6850 3500 7050 3500
Wire Wire Line
	6550 3600 7050 3600
Wire Wire Line
	7050 3700 6850 3700
Wire Wire Line
	6550 3800 7050 3800
Text GLabel 7800 2900 2    60   Input ~ 0
GND
Text GLabel 8400 3000 2    60   Input ~ 0
PM7
Text GLabel 7800 3100 2    60   Input ~ 0
PP5
Text GLabel 8400 3200 2    60   Input ~ 0
PA7
Text GLabel 7800 3300 2    60   Input ~ 0
/RESET
Text GLabel 8400 3400 2    60   Input ~ 0
PQ2/PA3
Text GLabel 7800 3500 2    60   Input ~ 0
PQ3/PA2
Text GLabel 8400 3600 2    60   Input ~ 0
PP3
Text GLabel 7800 3700 2    60   Input ~ 0
PQ1
Text GLabel 8400 3800 2    60   Input ~ 0
PM6
Wire Wire Line
	7800 2900 7550 2900
Wire Wire Line
	7550 3000 8400 3000
Wire Wire Line
	7800 3100 7550 3100
Wire Wire Line
	7550 3200 8400 3200
Wire Wire Line
	7800 3300 7550 3300
Wire Wire Line
	7550 3400 8400 3400
Wire Wire Line
	7800 3500 7550 3500
Wire Wire Line
	7550 3600 8400 3600
Wire Wire Line
	7800 3700 7550 3700
Wire Wire Line
	7550 3800 8400 3800
$Comp
L CONN_01X04 P?
U 1 1 572DBA37
P 3750 4850
F 0 "P?" H 3828 4888 50  0000 L CNN
F 1 "CONN_NFC" H 3828 4796 50  0000 L CNN
F 2 "" H 3750 4850 50  0000 C CNN
F 3 "" H 3750 4850 50  0000 C CNN
	1    3750 4850
	1    0    0    -1  
$EndComp
Text GLabel 3000 4700 0    60   Input ~ 0
GND
Text GLabel 2700 4800 0    60   Input ~ 0
+3.3v
Text GLabel 3000 4900 0    60   Input ~ 0
PP0
Text GLabel 2700 5000 0    60   Input ~ 0
PP1
Wire Wire Line
	3000 4700 3550 4700
Wire Wire Line
	3550 4800 2700 4800
Wire Wire Line
	3000 4900 3550 4900
Wire Wire Line
	3550 5000 2700 5000
$Comp
L CONN_01X04 P?
U 1 1 572DBB8D
P 5950 4850
F 0 "P?" H 6028 4888 50  0000 L CNN
F 1 "CONN_RGB_LED" H 6028 4796 50  0000 L CNN
F 2 "" H 5950 4850 50  0000 C CNN
F 3 "" H 5950 4850 50  0000 C CNN
	1    5950 4850
	1    0    0    -1  
$EndComp
Text GLabel 5300 4700 0    60   Input ~ 0
+3.3v
Text GLabel 4900 4800 0    60   Input ~ 0
PM0
Text GLabel 5300 4900 0    60   Input ~ 0
PM1
Text GLabel 4900 5000 0    60   Input ~ 0
PM2
Wire Wire Line
	5300 4700 5750 4700
Wire Wire Line
	5750 4800 4900 4800
Wire Wire Line
	5300 4900 5750 4900
Wire Wire Line
	5750 5000 4900 5000
$Comp
L SW_PUSH SW?
U 1 1 572DBD3B
P 5350 5600
F 0 "SW?" H 5350 5856 50  0000 C CNN
F 1 "SW_RST" H 5350 5764 50  0000 C CNN
F 2 "" H 5350 5600 50  0000 C CNN
F 3 "" H 5350 5600 50  0000 C CNN
	1    5350 5600
	1    0    0    -1  
$EndComp
Text GLabel 4800 5600 0    60   Input ~ 0
/RESET
Text GLabel 5900 5600 2    60   Input ~ 0
GND
Wire Wire Line
	5650 5600 5900 5600
Wire Wire Line
	5050 5600 4800 5600
$Comp
L WS2812B U?
U 1 1 572DBE86
P 9100 4300
F 0 "U?" H 9100 4403 60  0000 C CNN
F 1 "WS2812B" H 9100 4297 60  0000 C CNN
F 2 "" H 9100 4300 60  0000 C CNN
F 3 "" H 9100 4300 60  0000 C CNN
	1    9100 4300
	1    0    0    -1  
$EndComp
Text GLabel 8200 4450 0    60   Input ~ 0
+5V
Text GLabel 7900 4550 0    60   Input ~ 0
PB4
Text GLabel 10000 4450 2    60   Input ~ 0
GND
$Comp
L CONN_01X03 P?
U 1 1 572DBF3A
P 10200 5000
F 0 "P?" H 10278 5038 50  0000 L CNN
F 1 "CONN_WS2812" H 10278 4946 50  0000 L CNN
F 2 "" H 10200 5000 50  0000 C CNN
F 3 "" H 10200 5000 50  0000 C CNN
	1    10200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4450 8550 4450
Wire Wire Line
	8550 4550 7900 4550
Wire Wire Line
	9650 4450 10000 4450
Wire Wire Line
	9650 4550 9800 4550
Wire Wire Line
	9800 4550 9800 5000
Wire Wire Line
	9800 5000 10000 5000
Wire Wire Line
	10000 4900 8400 4900
Wire Wire Line
	8400 4900 8400 4450
Connection ~ 8400 4450
Wire Wire Line
	10000 5100 9900 5100
Wire Wire Line
	9900 5100 9900 4450
Connection ~ 9900 4450
$Comp
L SD_Card CON?
U 1 1 572DC1F7
P 3200 6300
F 0 "CON?" H 3200 7058 50  0000 C CNN
F 1 "SD_Card" H 3200 6966 50  0000 C CNN
F 2 "10067847-001" H 3200 6874 50  0000 C CNN
F 3 "" H 3200 6300 50  0000 C CNN
	1    3200 6300
	1    0    0    -1  
$EndComp
Text GLabel 1950 6600 0    60   Input ~ 0
PQ2
Text GLabel 1950 6100 0    60   Input ~ 0
PQ3
Text GLabel 1950 6300 0    60   Input ~ 0
+3.3v
Text GLabel 1550 6200 0    60   Input ~ 0
GND
Text GLabel 1550 6400 0    60   Input ~ 0
PQ0
Text GLabel 1550 6000 0    60   Input ~ 0
PQ1
Wire Wire Line
	1950 6100 2300 6100
Wire Wire Line
	2300 6000 1550 6000
Wire Wire Line
	1550 6200 2300 6200
Wire Wire Line
	2300 6300 1950 6300
Wire Wire Line
	1550 6400 2300 6400
Wire Wire Line
	2300 6600 1950 6600
$EndSCHEMATC
