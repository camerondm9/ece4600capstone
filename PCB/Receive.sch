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
L Device:D_x2_Serial_AKC D?
U 1 1 5DCEBFD1
P 2950 4100
F 0 "D?" H 2950 4316 50  0000 C CNN
F 1 "D_x2_Serial_AKC" H 2950 4225 50  0000 C CNN
F 2 "Parts:MMBD7000L" H 2950 4100 50  0001 C CNN
F 3 "https://www.onsemi.com/products/discretes-drivers/diodes-rectifiers/small-signal-switching-diodes/mmbd7000l" H 2950 4100 50  0001 C CNN
	1    2950 4100
	1    0    0    1   
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
P 2950 4450
F 0 "#PWR?" H 2950 4200 50  0001 C CNN
F 1 "GND" H 2955 4277 50  0000 C CNN
F 2 "" H 2950 4450 50  0001 C CNN
F 3 "" H 2950 4450 50  0001 C CNN
	1    2950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4400 2950 4400
Wire Wire Line
	3300 4400 2950 4400
Connection ~ 2950 4400
Wire Wire Line
	2950 4450 2950 4400
Wire Wire Line
	3300 4400 3300 4100
Wire Wire Line
	3300 4100 3250 4100
Wire Wire Line
	2650 4100 2600 4100
Wire Wire Line
	2600 4100 2600 4400
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
	2950 3850 2950 3900
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
$EndSCHEMATC
