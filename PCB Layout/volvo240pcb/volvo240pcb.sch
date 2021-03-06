EESchema Schematic File Version 4
EELAYER 26 0
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
L dk_Embedded-Microcontrollers:ATTINY84A-PU U2
U 1 1 5B68F1A8
P 5750 2200
F 0 "U2" V 6137 2050 60  0000 C CNN
F 1 "ATTINY84A-PU" V 6031 2050 60  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5950 2400 60  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/8183s.pdf" H 5950 2500 60  0001 L CNN
F 4 "ATTINY84A-PU-ND" H 5950 2600 60  0001 L CNN "Digi-Key_PN"
F 5 "ATTINY84A-PU" H 5950 2700 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 5950 2800 60  0001 L CNN "Category"
F 7 "Embedded - Microcontrollers" H 5950 2900 60  0001 L CNN "Family"
F 8 "http://ww1.microchip.com/downloads/en/DeviceDoc/8183s.pdf" H 5950 3000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/ATTINY84A-PU/ATTINY84A-PU-ND/2774082" H 5950 3100 60  0001 L CNN "DK_Detail_Page"
F 10 "IC MCU 8BIT 8KB FLASH 14DIP" H 5950 3200 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 5950 3300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5950 3400 60  0001 L CNN "Status"
	1    5750 2200
	0    -1   -1   0   
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:L7805CV U1
U 1 1 5B68F2F4
P 3900 2100
F 0 "U1" H 3900 2387 60  0000 C CNN
F 1 "L7805CV" H 3900 2281 60  0000 C CNN
F 2 "digikey-footprints:TO-220-3" H 4100 2300 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4100 2400 60  0001 L CNN
F 4 "497-1443-5-ND" H 4100 2500 60  0001 L CNN "Digi-Key_PN"
F 5 "L7805CV" H 4100 2600 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 4100 2700 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 4100 2800 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4100 2900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/L7805CV/497-1443-5-ND/585964" H 4100 3000 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 5V 1.5A TO220AB" H 4100 3100 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 4100 3200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4100 3300 60  0001 L CNN "Status"
	1    3900 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5B68F6BC
P 1350 2450
F 0 "J1" H 1456 2828 50  0000 C CNN
F 1 "15EDGK-3.81-05P" H 1456 2737 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_6-G-3.81_1x06_P3.81mm_Vertical" H 1350 2450 50  0001 C CNN
F 3 "~" H 1350 2450 50  0001 C CNN
	1    1350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2750 3300 2750
Wire Wire Line
	3900 2750 3900 2400
$Comp
L Device:C_Small C1
U 1 1 5B68F93D
P 3300 2250
F 0 "C1" H 3392 2296 50  0000 L CNN
F 1 "0.33u" H 3392 2205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3300 2250 50  0001 C CNN
F 3 "~" H 3300 2250 50  0001 C CNN
	1    3300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5B68F9A1
P 4350 2250
F 0 "C2" H 4442 2296 50  0000 L CNN
F 1 "0.1u" H 4442 2205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4350 2250 50  0001 C CNN
F 3 "~" H 4350 2250 50  0001 C CNN
	1    4350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2100 4350 2100
Wire Wire Line
	3100 2100 3300 2100
Wire Wire Line
	3300 2150 3300 2100
Wire Wire Line
	4350 2150 4350 2100
Connection ~ 4350 2100
Wire Wire Line
	4350 2100 4700 2100
Wire Wire Line
	3300 2350 3300 2750
Wire Wire Line
	4350 2350 4350 2750
Wire Wire Line
	4350 2750 3900 2750
Connection ~ 3900 2750
Connection ~ 3300 2100
Connection ~ 3300 2750
Wire Wire Line
	3300 2100 3600 2100
Wire Wire Line
	3300 2750 3900 2750
Text GLabel 2050 2450 2    50   Input ~ 0
tachometer
$Comp
L power:+12V #PWR0101
U 1 1 5B6903E3
P 2050 2000
F 0 "#PWR0101" H 2050 1850 50  0001 C CNN
F 1 "+12V" H 2065 2173 50  0000 C CNN
F 2 "" H 2050 2000 50  0001 C CNN
F 3 "" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2250 2050 2250
Wire Wire Line
	2050 2250 2050 2000
$Comp
L power:GND #PWR0102
U 1 1 5B69051D
P 2050 2850
F 0 "#PWR0102" H 2050 2600 50  0001 C CNN
F 1 "GND" H 2055 2677 50  0000 C CNN
F 2 "" H 2050 2850 50  0001 C CNN
F 3 "" H 2050 2850 50  0001 C CNN
	1    2050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2850 2050 2750
Wire Wire Line
	2050 2750 1550 2750
Wire Wire Line
	2050 2350 1550 2350
Wire Wire Line
	2050 2450 1550 2450
Text GLabel 2050 2550 2    50   Input ~ 0
speedometer
Text GLabel 2050 2650 2    50   Input ~ 0
servo_out
Wire Wire Line
	2050 2550 1550 2550
Wire Wire Line
	1550 2650 2050 2650
$Comp
L power:+12V #PWR0103
U 1 1 5B691305
P 3100 2100
F 0 "#PWR0103" H 3100 1950 50  0001 C CNN
F 1 "+12V" H 3115 2273 50  0000 C CNN
F 2 "" H 3100 2100 50  0001 C CNN
F 3 "" H 3100 2100 50  0001 C CNN
	1    3100 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5B69150A
P 3100 2750
F 0 "#PWR0104" H 3100 2500 50  0001 C CNN
F 1 "GND" H 3105 2577 50  0000 C CNN
F 2 "" H 3100 2750 50  0001 C CNN
F 3 "" H 3100 2750 50  0001 C CNN
	1    3100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2100 6850 2100
$Comp
L power:GND #PWR0105
U 1 1 5B691738
P 6850 2100
F 0 "#PWR0105" H 6850 1850 50  0001 C CNN
F 1 "GND" H 6855 1927 50  0000 C CNN
F 2 "" H 6850 2100 50  0001 C CNN
F 3 "" H 6850 2100 50  0001 C CNN
	1    6850 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 5B691FC5
P 2050 4350
F 0 "J2" H 2100 4667 50  0000 C CNN
F 1 "ISP" H 2100 4576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2050 4350 50  0001 C CNN
F 3 "~" H 2050 4350 50  0001 C CNN
	1    2050 4350
	1    0    0    -1  
$EndComp
Text GLabel 1750 4250 0    50   Input ~ 0
MISO
Text GLabel 1750 4350 0    50   Input ~ 0
SCK
Text GLabel 1750 4450 0    50   Input ~ 0
RST
Text GLabel 2450 4250 2    50   Input ~ 0
VCC
Text GLabel 2450 4350 2    50   Input ~ 0
MOSI
Wire Wire Line
	1750 4250 1850 4250
Wire Wire Line
	2350 4250 2450 4250
Wire Wire Line
	1750 4350 1850 4350
Wire Wire Line
	2350 4350 2450 4350
Wire Wire Line
	1750 4450 1850 4450
Wire Wire Line
	2350 4450 2450 4450
Text GLabel 5950 2700 3    50   Input ~ 0
MISO
Text GLabel 5850 2700 3    50   Input ~ 0
MOSI
Wire Wire Line
	5850 2700 5850 2600
Wire Wire Line
	5950 2700 5950 2600
Text GLabel 4900 2000 1    50   Input ~ 0
VCC
Wire Wire Line
	4900 2100 4900 2000
Connection ~ 4900 2100
Wire Wire Line
	4900 2100 5150 2100
$Comp
L power:GND #PWR0106
U 1 1 5B694066
P 2450 4450
F 0 "#PWR0106" H 2450 4200 50  0001 C CNN
F 1 "GND" H 2455 4277 50  0000 C CNN
F 2 "" H 2450 4450 50  0001 C CNN
F 3 "" H 2450 4450 50  0001 C CNN
	1    2450 4450
	1    0    0    -1  
$EndComp
Text GLabel 5650 2700 3    50   Input ~ 0
RST
Wire Wire Line
	5650 2700 5650 2600
Text GLabel 6050 2700 3    50   Input ~ 0
SCK
Wire Wire Line
	6050 2700 6050 2600
Text GLabel 2050 2350 2    50   Input ~ 0
brake_pedal
$Comp
L power:+12V #PWR0107
U 1 1 5B694A44
P 7800 2900
F 0 "#PWR0107" H 7800 2750 50  0001 C CNN
F 1 "+12V" H 7815 3073 50  0000 C CNN
F 2 "" H 7800 2900 50  0001 C CNN
F 3 "" H 7800 2900 50  0001 C CNN
	1    7800 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5B694A93
P 7050 2900
F 0 "R1" V 6854 2900 50  0000 C CNN
F 1 "10k" V 6945 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7050 2900 50  0001 C CNN
F 3 "~" H 7050 2900 50  0001 C CNN
	1    7050 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5B694AEF
P 7450 2900
F 0 "R4" V 7254 2900 50  0000 C CNN
F 1 "25k" V 7345 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7450 2900 50  0001 C CNN
F 3 "~" H 7450 2900 50  0001 C CNN
	1    7450 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2900 6950 2900
Wire Wire Line
	7550 2900 7800 2900
$Comp
L Device:R_Small R2
U 1 1 5B69615A
P 7050 3450
F 0 "R2" V 6854 3450 50  0000 C CNN
F 1 "10k" V 6945 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7050 3450 50  0001 C CNN
F 3 "~" H 7050 3450 50  0001 C CNN
	1    7050 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5B696160
P 7450 3450
F 0 "R5" V 7254 3450 50  0000 C CNN
F 1 "25k" V 7345 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7450 3450 50  0001 C CNN
F 3 "~" H 7450 3450 50  0001 C CNN
	1    7450 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3450 6950 3450
Wire Wire Line
	7550 3450 7800 3450
Text GLabel 7800 3450 2    50   Input ~ 0
brake_pedal
Wire Wire Line
	7150 3450 7250 3450
Wire Wire Line
	7150 2900 7250 2900
$Comp
L power:GND #PWR0108
U 1 1 5B69C39A
P 6700 2900
F 0 "#PWR0108" H 6700 2650 50  0001 C CNN
F 1 "GND" H 6705 2727 50  0000 C CNN
F 2 "" H 6700 2900 50  0001 C CNN
F 3 "" H 6700 2900 50  0001 C CNN
	1    6700 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5B69C3B9
P 6700 3450
F 0 "#PWR0109" H 6700 3200 50  0001 C CNN
F 1 "GND" H 6705 3277 50  0000 C CNN
F 2 "" H 6700 3450 50  0001 C CNN
F 3 "" H 6700 3450 50  0001 C CNN
	1    6700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2900 7250 3150
Wire Wire Line
	7250 3150 6350 3150
Wire Wire Line
	6350 3150 6350 2600
Connection ~ 7250 2900
Wire Wire Line
	7250 2900 7350 2900
Wire Wire Line
	7250 3450 7250 3700
Wire Wire Line
	7250 3700 6250 3700
Connection ~ 7250 3450
Wire Wire Line
	7250 3450 7350 3450
$Comp
L Device:R_Small R3
U 1 1 5B69DB74
P 7050 4000
F 0 "R3" V 6854 4000 50  0000 C CNN
F 1 "10k" V 6945 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7050 4000 50  0001 C CNN
F 3 "~" H 7050 4000 50  0001 C CNN
	1    7050 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5B69DB7A
P 7450 4000
F 0 "R6" V 7254 4000 50  0000 C CNN
F 1 "25k" V 7345 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7450 4000 50  0001 C CNN
F 3 "~" H 7450 4000 50  0001 C CNN
	1    7450 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 4000 6950 4000
Wire Wire Line
	7550 4000 7800 4000
Wire Wire Line
	7150 4000 7250 4000
$Comp
L power:GND #PWR0110
U 1 1 5B69DB84
P 6700 4000
F 0 "#PWR0110" H 6700 3750 50  0001 C CNN
F 1 "GND" H 6705 3827 50  0000 C CNN
F 2 "" H 6700 4000 50  0001 C CNN
F 3 "" H 6700 4000 50  0001 C CNN
	1    6700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4000 7250 4250
Connection ~ 7250 4000
Wire Wire Line
	7250 4000 7350 4000
Wire Wire Line
	6250 2600 6250 3700
Text GLabel 7800 4000 2    50   Input ~ 0
speedometer
Wire Wire Line
	6150 4250 6150 2600
Wire Wire Line
	6150 4250 7250 4250
Wire Wire Line
	5750 2600 5750 3000
Text GLabel 5750 3000 3    50   Input ~ 0
servo_out
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5B6A01EA
P 2050 5050
F 0 "J3" H 2130 5042 50  0000 L CNN
F 1 "Display" H 2130 4951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2050 5050 50  0001 C CNN
F 3 "~" H 2050 5050 50  0001 C CNN
	1    2050 5050
	1    0    0    -1  
$EndComp
Text GLabel 1400 5250 0    50   Input ~ 0
MOSI
Wire Wire Line
	1400 5250 1850 5250
Text GLabel 1400 5150 0    50   Input ~ 0
SCK
Wire Wire Line
	1400 5150 1850 5150
Text GLabel 1400 4950 0    50   Input ~ 0
VCC
Wire Wire Line
	1400 4950 1850 4950
$Comp
L power:GND #PWR01
U 1 1 5B6A3B0A
P 1000 5050
F 0 "#PWR01" H 1000 4800 50  0001 C CNN
F 1 "GND" H 1005 4877 50  0000 C CNN
F 2 "" H 1000 5050 50  0001 C CNN
F 3 "" H 1000 5050 50  0001 C CNN
	1    1000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5050 1850 5050
$Comp
L Device:C_Small C3
U 1 1 5B6A5B46
P 4800 4250
F 0 "C3" H 4892 4296 50  0000 L CNN
F 1 "1000p" H 4892 4205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4800 4250 50  0001 C CNN
F 3 "~" H 4800 4250 50  0001 C CNN
	1    4800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3950 3850 3950
Wire Wire Line
	4150 3950 4150 4100
Wire Wire Line
	4150 3950 4800 3950
Wire Wire Line
	4800 3950 4800 4150
Connection ~ 4150 3950
Wire Wire Line
	3750 4550 4150 4550
Wire Wire Line
	4150 4550 4150 4400
Wire Wire Line
	4800 4350 4800 4550
Wire Wire Line
	4800 4550 4150 4550
Connection ~ 4150 4550
Wire Wire Line
	4800 3950 5350 3950
Wire Wire Line
	5350 3950 5350 2600
Connection ~ 4800 3950
Text GLabel 3750 3950 0    50   Input ~ 0
tachometer
$Comp
L power:GND #PWR02
U 1 1 5B6AD91C
P 3750 4550
F 0 "#PWR02" H 3750 4300 50  0001 C CNN
F 1 "GND" H 3755 4377 50  0000 C CNN
F 2 "" H 3750 4550 50  0001 C CNN
F 3 "" H 3750 4550 50  0001 C CNN
	1    3750 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5B6ADACF
P 3950 3950
F 0 "R7" V 3754 3950 50  0000 C CNN
F 1 "20k" V 3845 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3950 3950 50  0001 C CNN
F 3 "~" H 3950 3950 50  0001 C CNN
	1    3950 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3950 4150 3950
$Comp
L Diode:BZX84Cxx D1
U 1 1 5B6AE244
P 4150 4250
F 0 "D1" V 4104 4329 50  0000 L CNN
F 1 "BZX84B4V7" V 4195 4329 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 4150 4075 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzx84c2v4.pdf" H 4150 4250 50  0001 C CNN
	1    4150 4250
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5B6AB9B4
P 4700 2300
F 0 "D2" V 4746 2232 50  0000 R CNN
F 1 "PWR" V 4655 2232 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" V 4700 2300 50  0001 C CNN
F 3 "~" V 4700 2300 50  0001 C CNN
	1    4700 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5B6AE707
P 4700 2600
F 0 "R8" V 4504 2600 50  0000 C CNN
F 1 "1k" V 4595 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4700 2600 50  0001 C CNN
F 3 "~" H 4700 2600 50  0001 C CNN
	1    4700 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 2500 4700 2400
Wire Wire Line
	4700 2200 4700 2100
Connection ~ 4700 2100
Wire Wire Line
	4700 2100 4900 2100
Wire Wire Line
	4700 2700 4700 2750
Wire Wire Line
	4700 2750 4350 2750
Connection ~ 4350 2750
$EndSCHEMATC
