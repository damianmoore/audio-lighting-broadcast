EESchema Schematic File Version 4
EELAYER 30 0
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
L RF:NRF24L01_Breakout U2
U 1 1 5E0A9701
P 10050 2400
F 0 "U2" H 9200 3100 50  0000 L CNN
F 1 "NRF24L01_Breakout" H 9200 3000 50  0000 L CNN
F 2 "RF_Module:nRF24L01_Breakout" H 10200 3000 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 10050 2300 50  0001 C CNN
	1    10050 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5E0AA821
P 7550 2850
F 0 "Y1" V 7504 2981 50  0000 L CNN
F 1 "16Mhz" V 7595 2981 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 7550 2850 50  0001 C CNN
F 3 "~" H 7550 2850 50  0001 C CNN
	1    7550 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E0ABD8B
P 8350 3100
F 0 "#PWR0101" H 8350 2850 50  0001 C CNN
F 1 "GND" H 8355 2927 50  0000 C CNN
F 2 "" H 8350 3100 50  0001 C CNN
F 3 "" H 8350 3100 50  0001 C CNN
	1    8350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E0AC642
P 6200 4950
F 0 "#PWR0102" H 6200 4700 50  0001 C CNN
F 1 "GND" H 6205 4777 50  0000 C CNN
F 2 "" H 6200 4950 50  0001 C CNN
F 3 "" H 6200 4950 50  0001 C CNN
	1    6200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4800 6200 4950
$Comp
L power:GND #PWR0103
U 1 1 5E0AD738
P 10050 3150
F 0 "#PWR0103" H 10050 2900 50  0001 C CNN
F 1 "GND" H 10055 2977 50  0000 C CNN
F 2 "" H 10050 3150 50  0001 C CNN
F 3 "" H 10050 3150 50  0001 C CNN
	1    10050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3000 10050 3150
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5E0AE544
P 1150 1500
F 0 "J1" H 1068 1175 50  0000 C CNN
F 1 "Conn_01x02" H 1068 1266 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P3.81mm_Drill1mm" H 1150 1500 50  0001 C CNN
F 3 "~" H 1150 1500 50  0001 C CNN
	1    1150 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5E0B2601
P 8050 2700
F 0 "C2" V 7798 2700 50  0000 C CNN
F 1 "22pF" V 7889 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8088 2550 50  0001 C CNN
F 3 "~" H 8050 2700 50  0001 C CNN
	1    8050 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5E0B2AB6
P 8050 3000
F 0 "C3" V 8250 3000 50  0000 C CNN
F 1 "22pF" V 8350 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8088 2850 50  0001 C CNN
F 3 "~" H 8050 3000 50  0001 C CNN
	1    8050 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 2700 7550 2700
Wire Wire Line
	7550 3000 7900 3000
Wire Wire Line
	8200 2700 8350 2700
Wire Wire Line
	8350 2700 8350 3000
Wire Wire Line
	8200 3000 8350 3000
Connection ~ 8350 3000
Wire Wire Line
	8350 3000 8350 3100
Text GLabel 3400 1400 2    50   Input ~ 0
VCC
Wire Wire Line
	1550 1500 1350 1500
$Comp
L power:GND #PWR0104
U 1 1 5E0BD94A
P 1550 1500
F 0 "#PWR0104" H 1550 1250 50  0001 C CNN
F 1 "GND" H 1555 1327 50  0000 C CNN
F 2 "" H 1550 1500 50  0001 C CNN
F 3 "" H 1550 1500 50  0001 C CNN
	1    1550 1500
	1    0    0    -1  
$EndComp
Text GLabel 6200 1150 1    50   Input ~ 0
VCC
$Comp
L Device:C C1
U 1 1 5E0C243A
P 6350 1550
F 0 "C1" V 6098 1550 50  0000 C CNN
F 1 "10uF" V 6189 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6388 1400 50  0001 C CNN
F 3 "~" H 6350 1550 50  0001 C CNN
	1    6350 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 1150 6200 1550
Connection ~ 6200 1550
Wire Wire Line
	6200 1550 6200 1800
Text GLabel 10050 1150 1    50   Input ~ 0
VCC
$Comp
L Device:C C4
U 1 1 5E0D1105
P 10200 1550
F 0 "C4" V 9948 1550 50  0000 C CNN
F 1 "10uF" V 10039 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 1400 50  0001 C CNN
F 3 "~" H 10200 1550 50  0001 C CNN
	1    10200 1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E0D110B
P 10500 1550
F 0 "#PWR0106" H 10500 1300 50  0001 C CNN
F 1 "GND" H 10505 1377 50  0000 C CNN
F 2 "" H 10500 1550 50  0001 C CNN
F 3 "" H 10500 1550 50  0001 C CNN
	1    10500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1550 10500 1550
Wire Wire Line
	10050 1150 10050 1550
Connection ~ 10050 1550
Wire Wire Line
	10050 1550 10050 1800
Text GLabel 6800 2200 2    50   Input ~ 0
Radio1
Text GLabel 6800 2300 2    50   Input ~ 0
Radio2
Text GLabel 7300 1900 1    50   Input ~ 0
Radio3
Text GLabel 7550 1900 1    50   Input ~ 0
Radio4
Text GLabel 7800 1900 1    50   Input ~ 0
Radio5
Text GLabel 9550 2600 0    50   Input ~ 0
Radio1
Text GLabel 9550 2400 0    50   Input ~ 0
Radio2
Text GLabel 9550 2100 0    50   Input ~ 0
Radio3
Text GLabel 9550 2200 0    50   Input ~ 0
Radio4
Text GLabel 9550 2300 0    50   Input ~ 0
Radio5
$Comp
L Switch:SW_SPST SW1
U 1 1 5E113D13
P 2250 1400
F 0 "SW1" H 2250 1635 50  0000 C CNN
F 1 "SW_SPST" H 2250 1544 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2250 1400 50  0001 C CNN
F 3 "~" H 2250 1400 50  0001 C CNN
	1    2250 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5E11C893
P 1700 1400
F 0 "F1" V 1475 1400 50  0000 C CNN
F 1 "Polyfuse" V 1566 1400 50  0000 C CNN
F 2 "Crystal:Resonator-2Pin_W6.0mm_H3.0mm" H 1750 1200 50  0001 L CNN
F 3 "~" H 1700 1400 50  0001 C CNN
	1    1700 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 1400 1850 1400
Wire Wire Line
	1550 1400 1350 1400
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 5E0A409F
P 6200 3300
F 0 "U1" H 5556 3346 50  0000 R CNN
F 1 "ATmega328P-PU" H 5556 3255 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 6200 3300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 6200 3300 50  0001 C CNN
	1    6200 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E0C2B9A
P 6650 1550
F 0 "#PWR0105" H 6650 1300 50  0001 C CNN
F 1 "GND" H 6655 1377 50  0000 C CNN
F 2 "" H 6650 1550 50  0001 C CNN
F 3 "" H 6650 1550 50  0001 C CNN
	1    6650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1550 6650 1550
$Comp
L Connector:AudioJack3 J3
U 1 1 5E3F6FBA
P 1500 5000
F 0 "J3" H 1482 5325 50  0000 C CNN
F 1 "AudioJack3" H 1482 5234 50  0000 C CNN
F 2 "kicad-custom-parts:3.5mm_Stereo_Jack" H 1500 5000 50  0001 C CNN
F 3 "~" H 1500 5000 50  0001 C CNN
	1    1500 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E3FA8D7
P 1900 4700
F 0 "#PWR0107" H 1900 4450 50  0001 C CNN
F 1 "GND" H 1905 4527 50  0000 C CNN
F 2 "" H 1900 4700 50  0001 C CNN
F 3 "" H 1900 4700 50  0001 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4900 1750 4900
Wire Wire Line
	1750 4900 1750 4700
Wire Wire Line
	1750 4700 1900 4700
$Comp
L Connector:AudioJack3 J4
U 1 1 5E3FD3C7
P 1500 5800
F 0 "J4" H 1482 6125 50  0000 C CNN
F 1 "AudioJack3" H 1482 6034 50  0000 C CNN
F 2 "kicad-custom-parts:3.5mm_Stereo_Jack" H 1500 5800 50  0001 C CNN
F 3 "~" H 1500 5800 50  0001 C CNN
	1    1500 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5E3FD3CD
P 1900 5500
F 0 "#PWR0109" H 1900 5250 50  0001 C CNN
F 1 "GND" H 1905 5327 50  0000 C CNN
F 2 "" H 1900 5500 50  0001 C CNN
F 3 "" H 1900 5500 50  0001 C CNN
	1    1900 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5700 1750 5700
Wire Wire Line
	1750 5700 1750 5500
Wire Wire Line
	1750 5500 1900 5500
Wire Wire Line
	1700 5000 2050 5000
Wire Wire Line
	2050 5800 1700 5800
Wire Wire Line
	1700 5100 2150 5100
Wire Wire Line
	2150 5900 1700 5900
$Comp
L kicad-custom-parts:MH-M18 U3
U 1 1 5E40125E
P 1300 3800
F 0 "U3" H 1300 4350 60  0000 C CNN
F 1 "MH-M18" H 1300 4250 60  0000 C CNN
F 2 "kicad-custom-parts:MH-M18_Bluetooth_Audio" H 1300 3800 60  0001 C CNN
F 3 "" H 1300 3800 60  0001 C CNN
	1    1300 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5E40939E
P 1900 4200
F 0 "#PWR0110" H 1900 3950 50  0001 C CNN
F 1 "GND" H 1905 4027 50  0000 C CNN
F 2 "" H 1900 4200 50  0001 C CNN
F 3 "" H 1900 4200 50  0001 C CNN
	1    1900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3950 2150 3950
Wire Wire Line
	2150 3950 2150 5100
Connection ~ 2150 5100
Wire Wire Line
	1800 4050 2050 4050
Wire Wire Line
	2050 4050 2050 5000
Connection ~ 2050 5000
Wire Wire Line
	1800 3850 1900 3850
Wire Wire Line
	1900 3850 1900 4200
$Comp
L Device:C C5
U 1 1 5E437874
P 2400 3900
F 0 "C5" H 2515 3946 50  0000 L CNN
F 1 "10uF" H 2515 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2438 3750 50  0001 C CNN
F 3 "~" H 2400 3900 50  0001 C CNN
	1    2400 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5E44C24E
P 2400 4050
F 0 "#PWR0111" H 2400 3800 50  0001 C CNN
F 1 "GND" H 2405 3877 50  0000 C CNN
F 2 "" H 2400 4050 50  0001 C CNN
F 3 "" H 2400 4050 50  0001 C CNN
	1    2400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3750 2400 3750
Text GLabel 1300 3000 0    50   Input ~ 0
VCC
$Comp
L Device:L L1
U 1 1 5E45D16B
P 2400 3500
F 0 "L1" H 2453 3546 50  0000 L CNN
F 1 "100mH" H 2453 3455 50  0000 L CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L16.0mm_W8.0mm_P7.62mm" H 2400 3500 50  0001 C CNN
F 3 "~" H 2400 3500 50  0001 C CNN
	1    2400 3500
	1    0    0    -1  
$EndComp
$Comp
L Audio:MSGEQ7 U4
U 1 1 5E462FDA
P 4750 6300
F 0 "U4" H 4250 6900 50  0000 C CNN
F 1 "MSGEQ7" H 4350 6800 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W10.16mm" H 4750 6300 50  0001 C CNN
F 3 "http://mix-sig.com/images/datasheets/MSGEQ7.pdf" H 4750 6300 50  0001 C CNN
	1    4750 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5E48747E
P 5350 6900
F 0 "#PWR0112" H 5350 6650 50  0001 C CNN
F 1 "GND" H 5355 6727 50  0000 C CNN
F 2 "" H 5350 6900 50  0001 C CNN
F 3 "" H 5350 6900 50  0001 C CNN
	1    5350 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6600 5350 6600
Text GLabel 5350 6400 2    50   Input ~ 0
EQOUT
Wire Wire Line
	5250 6400 5350 6400
Text GLabel 6800 3000 2    50   Input ~ 0
EQOUT
Text GLabel 5350 6100 2    50   Input ~ 0
EQRESET
Wire Wire Line
	5350 6100 5250 6100
Text GLabel 6800 3100 2    50   Input ~ 0
EQRESET
Text GLabel 5350 6000 2    50   Input ~ 0
EQSTROBE
Wire Wire Line
	5350 6000 5250 6000
Text GLabel 6800 3200 2    50   Input ~ 0
EQSTROBE
$Comp
L Device:C C6
U 1 1 5E496761
P 4000 6300
F 0 "C6" V 3748 6300 50  0000 C CNN
F 1 "10nF" V 3839 6300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4038 6150 50  0001 C CNN
F 3 "~" H 4000 6300 50  0001 C CNN
	1    4000 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E49B1D2
P 2450 5250
F 0 "R1" V 2243 5250 50  0000 C CNN
F 1 "22k" V 2334 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2380 5250 50  0001 C CNN
F 3 "~" H 2450 5250 50  0001 C CNN
	1    2450 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E49EB29
P 2450 5600
F 0 "R2" V 2243 5600 50  0000 C CNN
F 1 "22k" V 2334 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2380 5600 50  0001 C CNN
F 3 "~" H 2450 5600 50  0001 C CNN
	1    2450 5600
	0    1    1    0   
$EndComp
Text GLabel 2700 5450 2    50   Input ~ 0
AUDIO
Wire Wire Line
	4150 6300 4250 6300
NoConn ~ 1800 3550
NoConn ~ 1800 3650
Text GLabel 4750 5500 1    50   Input ~ 0
VCC
$Comp
L power:GND #PWR0113
U 1 1 5E4C21E2
P 4750 6900
F 0 "#PWR0113" H 4750 6650 50  0001 C CNN
F 1 "GND" H 4755 6727 50  0000 C CNN
F 2 "" H 4750 6900 50  0001 C CNN
F 3 "" H 4750 6900 50  0001 C CNN
	1    4750 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6800 4750 6900
$Comp
L Device:C C9
U 1 1 5E4C9989
P 5350 6750
F 0 "C9" H 5235 6704 50  0000 R CNN
F 1 "100nF" H 5235 6795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5388 6600 50  0001 C CNN
F 3 "~" H 5350 6750 50  0001 C CNN
	1    5350 6750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5E4D2759
P 5000 5600
F 0 "C8" V 5250 5650 50  0000 R CNN
F 1 "100nF" V 5150 5700 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5038 5450 50  0001 C CNN
F 3 "~" H 5000 5600 50  0001 C CNN
	1    5000 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5E4D897E
P 5250 5600
F 0 "#PWR0114" H 5250 5350 50  0001 C CNN
F 1 "GND" H 5255 5427 50  0000 C CNN
F 2 "" H 5250 5600 50  0001 C CNN
F 3 "" H 5250 5600 50  0001 C CNN
	1    5250 5600
	1    0    0    -1  
$EndComp
Text GLabel 3600 6600 0    50   Input ~ 0
VCC
$Comp
L Device:R R3
U 1 1 5E4F5445
P 3800 6600
F 0 "R3" V 3593 6600 50  0000 C CNN
F 1 "200k" V 3684 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3730 6600 50  0001 C CNN
F 3 "~" H 3800 6600 50  0001 C CNN
	1    3800 6600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E4FF9F1
P 4050 6900
F 0 "#PWR0115" H 4050 6650 50  0001 C CNN
F 1 "GND" H 4055 6727 50  0000 C CNN
F 2 "" H 4050 6900 50  0001 C CNN
F 3 "" H 4050 6900 50  0001 C CNN
	1    4050 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5E4FF9F7
P 4050 6750
F 0 "C7" H 3935 6704 50  0000 R CNN
F 1 "33pF" H 3935 6795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4088 6600 50  0001 C CNN
F 3 "~" H 4050 6750 50  0001 C CNN
	1    4050 6750
	-1   0    0    1   
$EndComp
Connection ~ 4050 6600
Wire Wire Line
	4050 6600 4250 6600
Wire Wire Line
	3950 6600 4050 6600
$Comp
L Device:R R4
U 1 1 5E54C670
P 3150 1550
F 0 "R4" H 3080 1504 50  0000 R CNN
F 1 "270k" H 3080 1595 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3080 1550 50  0001 C CNN
F 3 "~" H 3150 1550 50  0001 C CNN
	1    3150 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5E54FE67
P 3150 1850
F 0 "R5" H 3080 1804 50  0000 R CNN
F 1 "100k" H 3080 1895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3080 1850 50  0001 C CNN
F 3 "~" H 3150 1850 50  0001 C CNN
	1    3150 1850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5E559939
P 3150 2000
F 0 "#PWR0116" H 3150 1750 50  0001 C CNN
F 1 "GND" H 3155 1827 50  0000 C CNN
F 2 "" H 3150 2000 50  0001 C CNN
F 3 "" H 3150 2000 50  0001 C CNN
	1    3150 2000
	1    0    0    -1  
$EndComp
Text GLabel 3400 1700 2    50   Input ~ 0
BATMONITOR
Wire Wire Line
	3400 1700 3150 1700
Connection ~ 3150 1700
Text GLabel 6800 3300 2    50   Input ~ 0
BATMONITOR
Wire Wire Line
	1650 6700 2150 6700
Wire Wire Line
	1650 6800 2050 6800
Wire Wire Line
	2150 5900 2150 6700
Connection ~ 2150 5900
Wire Wire Line
	2050 5800 2050 6800
Connection ~ 2050 5800
$Comp
L power:GND #PWR0117
U 1 1 5E593027
P 1950 7200
F 0 "#PWR0117" H 1950 6950 50  0001 C CNN
F 1 "GND" H 1955 7027 50  0000 C CNN
F 2 "" H 1950 7200 50  0001 C CNN
F 3 "" H 1950 7200 50  0001 C CNN
	1    1950 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5E5FD45E
P 1450 6800
F 0 "J2" H 1368 7117 50  0000 C CNN
F 1 "Conn_01x04" H 1368 7026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1450 6800 50  0001 C CNN
F 3 "~" H 1450 6800 50  0001 C CNN
	1    1450 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1650 6900 1950 6900
Wire Wire Line
	1950 6900 1950 7200
Text GLabel 1850 6500 1    50   Input ~ 0
VCC
Wire Wire Line
	1650 7000 1850 7000
Wire Wire Line
	1850 6500 1850 7000
Wire Wire Line
	3650 6600 3600 6600
Wire Wire Line
	2400 3650 2400 3750
Connection ~ 2400 3750
Wire Wire Line
	2050 5000 2050 5250
Wire Wire Line
	2300 5250 2050 5250
Connection ~ 2050 5250
Wire Wire Line
	2050 5250 2050 5800
Wire Wire Line
	2150 5100 2150 5600
Wire Wire Line
	2300 5600 2150 5600
Connection ~ 2150 5600
Wire Wire Line
	2150 5600 2150 5900
Wire Wire Line
	2600 5600 2600 5450
Wire Wire Line
	2600 5450 2700 5450
Wire Wire Line
	2600 5450 2600 5250
Connection ~ 2600 5450
Text GLabel 3850 6300 0    50   Input ~ 0
AUDIO
Text GLabel 7700 3400 2    50   Input ~ 0
AUDIO
$Comp
L Device:C C10
U 1 1 5E6A164C
P 7550 3400
F 0 "C10" V 7298 3400 50  0000 C CNN
F 1 "10nF" V 7389 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7588 3250 50  0001 C CNN
F 3 "~" H 7550 3400 50  0001 C CNN
	1    7550 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3400 6800 3400
$Comp
L Device:C C11
U 1 1 5E6B94B0
P 2750 1550
F 0 "C11" V 3000 1500 50  0000 L CNN
F 1 "100uF" V 2900 1450 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2788 1400 50  0001 C CNN
F 3 "~" H 2750 1550 50  0001 C CNN
	1    2750 1550
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5E6E46A5
P 1700 3000
F 0 "SW2" H 1700 3235 50  0000 C CNN
F 1 "SW_SPST" H 1700 3144 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1700 3000 50  0001 C CNN
F 3 "~" H 1700 3000 50  0001 C CNN
	1    1700 3000
	1    0    0    -1  
$EndComp
Text Notes 1800 950  0    79   ~ 0
Power
Text Notes 1050 2550 0    79   ~ 0
Bluetooth Audio Receiver
Text Notes 3950 5100 0    79   ~ 0
Audio Spectrum Analyser
Wire Wire Line
	5250 5600 5150 5600
Wire Wire Line
	4750 5600 4850 5600
Wire Wire Line
	4750 5500 4750 5600
Wire Wire Line
	4750 5800 4750 5600
Connection ~ 4750 5600
Text Notes 5800 850  0    79   ~ 0
Microcontroller
Text Notes 9500 850  0    79   ~ 0
Radio Transmitter
Wire Wire Line
	3400 1400 3150 1400
$Comp
L Device:D D1
U 1 1 5E7A10D3
P 2250 3000
F 0 "D1" H 2250 2784 50  0000 C CNN
F 1 "D" H 2250 2875 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 2250 3000 50  0001 C CNN
F 3 "~" H 2250 3000 50  0001 C CNN
	1    2250 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 3000 2100 3000
Wire Wire Line
	2400 3000 2400 3350
Wire Wire Line
	1500 3000 1300 3000
Wire Wire Line
	2450 1400 2750 1400
Connection ~ 3150 1400
Connection ~ 2750 1400
Wire Wire Line
	2750 1400 3150 1400
$Comp
L power:GND #PWR0108
U 1 1 5E822966
P 2750 1700
F 0 "#PWR0108" H 2750 1450 50  0001 C CNN
F 1 "GND" H 2755 1527 50  0000 C CNN
F 2 "" H 2750 1700 50  0001 C CNN
F 3 "" H 2750 1700 50  0001 C CNN
	1    2750 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 5E8614B4
P 9650 5350
F 0 "J5" H 9700 5667 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 9700 5576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 9650 5350 50  0001 C CNN
F 3 "~" H 9650 5350 50  0001 C CNN
	1    9650 5350
	1    0    0    -1  
$EndComp
Text GLabel 9450 5250 0    50   Input ~ 0
MISO
Text GLabel 9950 5250 2    50   Input ~ 0
VTG
Text GLabel 9450 5350 0    50   Input ~ 0
SCK
Text GLabel 9950 5350 2    50   Input ~ 0
MOSI
Text GLabel 9450 5450 0    50   Input ~ 0
RST
$Comp
L power:GND #PWR0118
U 1 1 5E865C55
P 10000 5500
F 0 "#PWR0118" H 10000 5250 50  0001 C CNN
F 1 "GND" H 10005 5327 50  0000 C CNN
F 2 "" H 10000 5500 50  0001 C CNN
F 3 "" H 10000 5500 50  0001 C CNN
	1    10000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5450 10000 5450
Wire Wire Line
	10000 5450 10000 5500
Text Notes 9350 4850 0    79   ~ 0
ICSP Header
Text GLabel 6800 3600 2    50   Input ~ 0
RST
Wire Wire Line
	6800 2400 7300 2400
Wire Wire Line
	7300 2400 7300 1950
Wire Wire Line
	6800 2500 7550 2500
Wire Wire Line
	7550 2500 7550 1950
Wire Wire Line
	7550 2700 6800 2700
Connection ~ 7550 2700
Wire Wire Line
	7550 3000 7300 3000
Wire Wire Line
	7300 3000 7300 2800
Wire Wire Line
	7300 2800 6800 2800
Connection ~ 7550 3000
Wire Wire Line
	6800 2600 7800 2600
Wire Wire Line
	7800 2600 7800 1950
Text GLabel 7900 1900 1    50   Input ~ 0
SCK
Wire Wire Line
	7900 1900 7900 1950
Wire Wire Line
	7900 1950 7800 1950
Connection ~ 7800 1950
Wire Wire Line
	7800 1950 7800 1900
Text GLabel 7650 1900 1    50   Input ~ 0
MISO
Wire Wire Line
	7650 1900 7650 1950
Wire Wire Line
	7650 1950 7550 1950
Connection ~ 7550 1950
Wire Wire Line
	7550 1950 7550 1900
Text GLabel 7400 1900 1    50   Input ~ 0
MOSI
Wire Wire Line
	7400 1900 7400 1950
Wire Wire Line
	7400 1950 7300 1950
Connection ~ 7300 1950
Wire Wire Line
	7300 1950 7300 1900
$Comp
L power:GND #PWR0119
U 1 1 5E43BBB8
P 8100 4950
F 0 "#PWR0119" H 8100 4700 50  0001 C CNN
F 1 "GND" H 8105 4777 50  0000 C CNN
F 2 "" H 8100 4950 50  0001 C CNN
F 3 "" H 8100 4950 50  0001 C CNN
	1    8100 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5E463701
P 7800 4100
F 0 "D2" H 7650 3950 50  0000 C CNN
F 1 "LED" H 7800 3950 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7800 4100 50  0001 C CNN
F 3 "~" H 7800 4100 50  0001 C CNN
	1    7800 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7950 4100 8100 4100
Wire Wire Line
	8100 4100 8100 4400
Wire Wire Line
	7950 4700 8100 4700
Wire Wire Line
	7950 4400 8100 4400
Connection ~ 8100 4400
Wire Wire Line
	8100 4400 8100 4700
$Comp
L Device:R R6
U 1 1 5E4798FE
P 7500 4100
F 0 "R6" V 7650 4050 50  0000 C CNN
F 1 "510" V 7650 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7430 4100 50  0001 C CNN
F 3 "~" H 7500 4100 50  0001 C CNN
	1    7500 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E488AF6
P 7800 4400
F 0 "D3" H 7650 4250 50  0000 C CNN
F 1 "LED" H 7800 4250 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7800 4400 50  0001 C CNN
F 3 "~" H 7800 4400 50  0001 C CNN
	1    7800 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5E488AFC
P 7500 4400
F 0 "R7" V 7650 4350 50  0000 C CNN
F 1 "510" V 7650 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7430 4400 50  0001 C CNN
F 3 "~" H 7500 4400 50  0001 C CNN
	1    7500 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5E48B865
P 7800 4700
F 0 "D4" H 7650 4550 50  0000 C CNN
F 1 "LED" H 7800 4550 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7800 4700 50  0001 C CNN
F 3 "~" H 7800 4700 50  0001 C CNN
	1    7800 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5E48B86B
P 7500 4700
F 0 "R8" V 7650 4650 50  0000 C CNN
F 1 "510" V 7650 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7430 4700 50  0001 C CNN
F 3 "~" H 7500 4700 50  0001 C CNN
	1    7500 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 4100 7350 4100
Wire Wire Line
	6800 4300 7250 4300
Wire Wire Line
	7250 4300 7250 4400
Wire Wire Line
	7250 4400 7350 4400
Wire Wire Line
	6800 4400 7150 4400
Wire Wire Line
	7150 4400 7150 4700
Wire Wire Line
	7150 4700 7350 4700
$Comp
L Switch:SW_Push SW3
U 1 1 5E4977A5
P 7900 3800
F 0 "SW3" H 7750 4000 50  0000 C CNN
F 1 "SW_Push" H 8000 4000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7900 4000 50  0001 C CNN
F 3 "~" H 7900 4000 50  0001 C CNN
	1    7900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3800 6800 3800
Wire Wire Line
	8100 3800 8100 4100
Connection ~ 8100 4100
NoConn ~ 6800 3500
NoConn ~ 6800 3900
NoConn ~ 6800 4000
NoConn ~ 6800 4200
NoConn ~ 6800 4500
NoConn ~ 6800 2100
NoConn ~ 9550 2700
Wire Wire Line
	8100 4700 8100 4950
Connection ~ 8100 4700
$EndSCHEMATC
