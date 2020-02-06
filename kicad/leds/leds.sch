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
L Device:LED_RGBC D3
U 1 1 5E2D9E6B
P 4650 3400
F 0 "D3" V 4696 3070 50  0000 R CNN
F 1 "LED_RGBC" V 4605 3070 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 4650 3350 50  0001 C CNN
F 3 "~" H 4650 3350 50  0001 C CNN
	1    4650 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBC D5
U 1 1 5E2DB915
P 5850 3400
F 0 "D5" V 5896 3070 50  0000 R CNN
F 1 "LED_RGBC" V 5805 3070 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 5850 3350 50  0001 C CNN
F 3 "~" H 5850 3350 50  0001 C CNN
	1    5850 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBC D7
U 1 1 5E2DB91B
P 7100 3400
F 0 "D7" V 7146 3070 50  0000 R CNN
F 1 "LED_RGBC" V 7055 3070 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 7100 3350 50  0001 C CNN
F 3 "~" H 7100 3350 50  0001 C CNN
	1    7100 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBC D9
U 1 1 5E2DEDBF
P 8300 3400
F 0 "D9" V 8346 3070 50  0000 R CNN
F 1 "LED_RGBC" V 8255 3070 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 8300 3350 50  0001 C CNN
F 3 "~" H 8300 3350 50  0001 C CNN
	1    8300 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBC D2
U 1 1 5E2FB276
P 4050 4600
F 0 "D2" V 4096 4270 50  0000 R CNN
F 1 "LED_RGBC" V 4005 4270 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 4050 4550 50  0001 C CNN
F 3 "~" H 4050 4550 50  0001 C CNN
	1    4050 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBC D4
U 1 1 5E2FB27C
P 5250 4600
F 0 "D4" V 5296 4270 50  0000 R CNN
F 1 "LED_RGBC" V 5205 4270 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 5250 4550 50  0001 C CNN
F 3 "~" H 5250 4550 50  0001 C CNN
	1    5250 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBC D6
U 1 1 5E2FB282
P 6450 4600
F 0 "D6" V 6496 4270 50  0000 R CNN
F 1 "LED_RGBC" V 6405 4270 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 6450 4550 50  0001 C CNN
F 3 "~" H 6450 4550 50  0001 C CNN
	1    6450 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBC D8
U 1 1 5E2FB288
P 7700 4600
F 0 "D8" V 7746 4270 50  0000 R CNN
F 1 "LED_RGBC" V 7655 4270 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 7700 4550 50  0001 C CNN
F 3 "~" H 7700 4550 50  0001 C CNN
	1    7700 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBC D10
U 1 1 5E2FB28E
P 8900 4600
F 0 "D10" V 8946 4270 50  0000 R CNN
F 1 "LED_RGBC" V 8855 4270 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 8900 4550 50  0001 C CNN
F 3 "~" H 8900 4550 50  0001 C CNN
	1    8900 4600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5E30F315
P 1600 2500
F 0 "J1" H 1800 2150 50  0000 R CNN
F 1 "Conn_01x04" H 2000 2050 50  0000 R CNN
F 2 "kicad-custom-parts:Pin_Header_Straight_Simplified_1x04_Pitch2.54mm" H 1600 2500 50  0001 C CNN
F 3 "~" H 1600 2500 50  0001 C CNN
	1    1600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2400 3250 2400
Wire Wire Line
	3250 2400 3250 3200
Wire Wire Line
	3250 2400 4450 2400
Wire Wire Line
	4450 2400 4450 3200
Connection ~ 3250 2400
Wire Wire Line
	4450 2400 5650 2400
Wire Wire Line
	5650 2400 5650 3200
Connection ~ 4450 2400
Wire Wire Line
	5650 2400 6900 2400
Wire Wire Line
	6900 2400 6900 3200
Connection ~ 5650 2400
Wire Wire Line
	6900 2400 8100 2400
Wire Wire Line
	8100 2400 8100 3200
Connection ~ 6900 2400
Wire Wire Line
	1800 2500 3450 2500
Wire Wire Line
	3450 2500 3450 3200
Wire Wire Line
	3450 2500 4650 2500
Wire Wire Line
	4650 2500 4650 3200
Connection ~ 3450 2500
Wire Wire Line
	4650 2500 5850 2500
Wire Wire Line
	5850 2500 5850 3200
Connection ~ 4650 2500
Wire Wire Line
	5850 2500 7100 2500
Wire Wire Line
	7100 2500 7100 3200
Connection ~ 5850 2500
Wire Wire Line
	7100 2500 8300 2500
Wire Wire Line
	8300 2500 8300 3200
Connection ~ 7100 2500
Wire Wire Line
	1800 2600 3650 2600
Wire Wire Line
	3650 2600 3650 3200
Wire Wire Line
	3650 2600 4850 2600
Wire Wire Line
	4850 2600 4850 3200
Connection ~ 3650 2600
Wire Wire Line
	4850 2600 6050 2600
Wire Wire Line
	6050 2600 6050 3200
Connection ~ 4850 2600
Wire Wire Line
	6050 2600 7300 2600
Wire Wire Line
	7300 2600 7300 3200
Connection ~ 6050 2600
Wire Wire Line
	7300 2600 8500 2600
Wire Wire Line
	8500 2600 8500 3200
Connection ~ 7300 2600
$Comp
L Device:LED_RGBC D1
U 1 1 5E2D70D8
P 3450 3400
F 0 "D1" V 3496 3070 50  0000 R CNN
F 1 "LED_RGBC" V 3405 3070 50  0000 R CNN
F 2 "kicad-custom-parts:LED_D5.0mm-4_RGB_swapped_pins" H 3450 3350 50  0001 C CNN
F 3 "~" H 3450 3350 50  0001 C CNN
	1    3450 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 2600 9700 2600
Wire Wire Line
	9700 2600 9700 4200
Wire Wire Line
	9700 4200 9100 4200
Wire Wire Line
	9100 4200 9100 4400
Connection ~ 8500 2600
Wire Wire Line
	9100 4200 7900 4200
Wire Wire Line
	7900 4200 7900 4400
Connection ~ 9100 4200
Wire Wire Line
	7900 4200 6650 4200
Wire Wire Line
	6650 4200 6650 4400
Connection ~ 7900 4200
Wire Wire Line
	6650 4200 5450 4200
Wire Wire Line
	5450 4200 5450 4400
Connection ~ 6650 4200
Wire Wire Line
	5450 4200 4250 4200
Wire Wire Line
	4250 4200 4250 4400
Connection ~ 5450 4200
Wire Wire Line
	8300 2500 9600 2500
Wire Wire Line
	9600 2500 9600 4100
Wire Wire Line
	9600 4100 8900 4100
Wire Wire Line
	8900 4100 8900 4400
Connection ~ 8300 2500
Wire Wire Line
	8900 4100 7700 4100
Wire Wire Line
	7700 4100 7700 4400
Connection ~ 8900 4100
Wire Wire Line
	7700 4100 6450 4100
Wire Wire Line
	6450 4100 6450 4400
Connection ~ 7700 4100
Wire Wire Line
	6450 4100 5250 4100
Wire Wire Line
	5250 4100 5250 4400
Connection ~ 6450 4100
Wire Wire Line
	5250 4100 4050 4100
Wire Wire Line
	4050 4100 4050 4400
Connection ~ 5250 4100
Wire Wire Line
	8100 2400 9500 2400
Wire Wire Line
	9500 2400 9500 4000
Wire Wire Line
	9500 4000 8700 4000
Wire Wire Line
	8700 4000 8700 4400
Connection ~ 8100 2400
Wire Wire Line
	8700 4000 7500 4000
Wire Wire Line
	7500 4000 7500 4400
Connection ~ 8700 4000
Wire Wire Line
	7500 4000 6250 4000
Wire Wire Line
	6250 4000 6250 4400
Connection ~ 7500 4000
Wire Wire Line
	6250 4000 5050 4000
Wire Wire Line
	5050 4000 5050 4400
Connection ~ 6250 4000
Wire Wire Line
	5050 4000 3850 4000
Wire Wire Line
	3850 4000 3850 4400
Connection ~ 5050 4000
Wire Wire Line
	8300 3600 8300 3750
Wire Wire Line
	8300 3750 7100 3750
Wire Wire Line
	3450 3750 3450 3600
Wire Wire Line
	4650 3600 4650 3750
Connection ~ 4650 3750
Wire Wire Line
	4650 3750 3450 3750
Wire Wire Line
	5850 3600 5850 3750
Connection ~ 5850 3750
Wire Wire Line
	5850 3750 4650 3750
Wire Wire Line
	7100 3600 7100 3750
Connection ~ 7100 3750
Wire Wire Line
	7100 3750 5850 3750
Wire Wire Line
	7700 4800 7700 4950
Wire Wire Line
	7700 4950 6450 4950
Wire Wire Line
	6450 4950 6450 4800
Wire Wire Line
	6450 4950 5250 4950
Wire Wire Line
	5250 4950 5250 4800
Connection ~ 6450 4950
Wire Wire Line
	5250 4950 4050 4950
Wire Wire Line
	4050 4950 4050 4800
Connection ~ 5250 4950
Wire Wire Line
	8900 4800 8900 4950
Wire Wire Line
	8900 4950 7700 4950
Connection ~ 7700 4950
Wire Wire Line
	1800 2700 2750 2700
Wire Wire Line
	2750 2700 2750 3750
Wire Wire Line
	2750 4950 4050 4950
Connection ~ 4050 4950
Wire Wire Line
	3450 3750 2750 3750
Connection ~ 3450 3750
Connection ~ 2750 3750
Wire Wire Line
	2750 3750 2750 4950
$EndSCHEMATC
