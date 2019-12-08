EESchema Schematic File Version 4
LIBS:Capstone-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
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
L Parts:MAX11116 U?
U 1 1 5DCE353E
P 7600 3850
F 0 "U?" H 7600 4237 60  0000 C CNN
F 1 "MAX11116" H 7600 4131 60  0000 C CNN
F 2 "Parts:SOT23" H 7600 3600 60  0001 C CNN
F 3 "https://www.maximintegrated.com/en/products/analog/data-converters/analog-to-digital-converters/MAX11116.html" H 7100 3850 60  0001 C CNN
	1    7600 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DE6A184
P 7000 3750
F 0 "#PWR?" H 7000 3600 50  0001 C CNN
F 1 "+3V3" H 7015 3923 50  0000 C CNN
F 2 "" H 7000 3750 50  0001 C CNN
F 3 "" H 7000 3750 50  0001 C CNN
	1    7000 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE6B0BA
P 7000 3950
F 0 "#PWR?" H 7000 3700 50  0001 C CNN
F 1 "GND" H 7005 3777 50  0000 C CNN
F 2 "" H 7000 3950 50  0001 C CNN
F 3 "" H 7000 3950 50  0001 C CNN
	1    7000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3950 7100 3950
Wire Wire Line
	7000 3750 7100 3750
Text GLabel 8150 3750 2    50   Input ~ 0
ADC-~CS
Text GLabel 8150 3950 2    50   Input ~ 0
ADC-SCK
Text GLabel 8150 3850 2    50   Input ~ 0
ADC-SDO
Wire Wire Line
	8100 3750 8150 3750
Wire Wire Line
	8150 3850 8100 3850
Wire Wire Line
	8100 3950 8150 3950
$Comp
L power:GND #PWR?
U 1 1 5DE74334
P 2950 4550
F 0 "#PWR?" H 2950 4300 50  0001 C CNN
F 1 "GND" H 2955 4377 50  0000 C CNN
F 2 "" H 2950 4550 50  0001 C CNN
F 3 "" H 2950 4550 50  0001 C CNN
	1    2950 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DE7BD62
P 2300 3850
F 0 "C?" V 2071 3850 50  0000 C CNN
F 1 "C_Small" V 2162 3850 50  0000 C CNN
F 2 "" H 2300 3850 50  0001 C CNN
F 3 "~" H 2300 3850 50  0001 C CNN
	1    2300 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3850 2950 3850
Wire Wire Line
	2950 3850 3600 3850
Connection ~ 2950 3850
Text GLabel 2100 3850 0    50   Input ~ 0
TRANSDUCER
Wire Wire Line
	2100 3850 2200 3850
Text Notes 4800 3900 0    50   ~ 0
Input is roughly 10mVpp\nOutput should be roughly 3Vpp
Text Notes 4700 5150 0    50   ~ 0
See Capstone-VGA bookmarks
$Comp
L Device:D_Schottky_Small_ALT D?
U 1 1 5DF00EE8
P 3100 4350
F 0 "D?" V 3054 4418 50  0000 L CNN
F 1 "600mV 200mA" V 3145 4418 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-523" V 3100 4350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/on-semiconductor/RB520S30T5G/RB520S30T5GOSCT-ND/5213385" V 3100 4350 50  0001 C CNN
	1    3100 4350
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D?
U 1 1 5DF02261
P 2800 4150
F 0 "D?" V 2846 4082 50  0000 R CNN
F 1 "600mV 200mA" V 2755 4082 50  0000 R CNN
F 2 "Diodes_SMD:D_SOD-523" V 2800 4150 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/on-semiconductor/RB520S30T5G/RB520S30T5GOSCT-ND/5213385" V 2800 4150 50  0001 C CNN
	1    2800 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 4050 2800 4000
Wire Wire Line
	2800 4000 2950 4000
Wire Wire Line
	3100 4000 3100 4250
Wire Wire Line
	2950 3850 2950 4000
Connection ~ 2950 4000
Wire Wire Line
	2950 4000 3100 4000
Wire Wire Line
	2800 4250 2800 4500
Wire Wire Line
	2800 4500 2950 4500
Wire Wire Line
	3100 4500 3100 4450
Wire Wire Line
	2950 4500 2950 4550
Connection ~ 2950 4500
Wire Wire Line
	2950 4500 3100 4500
$EndSCHEMATC
