EESchema Schematic File Version 4
LIBS:Capstone-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
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
L Parts:AD5450 U?
U 1 1 5DCE2712
P 2200 3800
F 0 "U?" H 2200 4287 60  0000 C CNN
F 1 "AD5450" H 2200 4181 60  0000 C CNN
F 2 "Parts:TSOT8" H 2200 3450 60  0001 C CNN
F 3 "https://www.analog.com/en/products/ad5450.html" H 1800 4000 60  0001 C CNN
	1    2200 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:D_x2_Serial_AKC D?
U 1 1 5DCE8F52
P 8600 3750
F 0 "D?" H 8600 3966 50  0000 C CNN
F 1 "D_x2_Serial_AKC" H 8600 3875 50  0000 C CNN
F 2 "Parts:MMBD7000L" H 8600 3750 50  0001 C CNN
F 3 "https://www.onsemi.com/products/discretes-drivers/diodes-rectifiers/small-signal-switching-diodes/mmbd7000l" H 8600 3750 50  0001 C CNN
	1    8600 3750
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DE63453
P 1700 3600
F 0 "#PWR?" H 1700 3450 50  0001 C CNN
F 1 "+3V3" H 1715 3773 50  0000 C CNN
F 2 "" H 1700 3600 50  0001 C CNN
F 3 "" H 1700 3600 50  0001 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE63ED6
P 2700 4000
F 0 "#PWR?" H 2700 3750 50  0001 C CNN
F 1 "GND" H 2705 3827 50  0000 C CNN
F 2 "" H 2700 4000 50  0001 C CNN
F 3 "" H 2700 4000 50  0001 C CNN
	1    2700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3600 1800 3600
Wire Wire Line
	2600 4000 2700 4000
Text GLabel 1750 3800 0    50   Input ~ 0
DAC-~CS
Text GLabel 1750 3900 0    50   Input ~ 0
DAC-SCK
Text GLabel 1750 4000 0    50   Input ~ 0
DAC-SDI
Wire Wire Line
	1750 3800 1800 3800
Wire Wire Line
	1800 3900 1750 3900
Wire Wire Line
	1750 4000 1800 4000
Wire Wire Line
	8600 3450 8600 3400
Wire Wire Line
	8600 3400 8900 3400
Wire Wire Line
	8900 3400 8900 3750
Wire Wire Line
	8600 4100 8600 4050
$Comp
L Device:C_Small C?
U 1 1 5DE7A1A8
P 9100 3750
F 0 "C?" V 8871 3750 50  0000 C CNN
F 1 "C_Small" V 8962 3750 50  0000 C CNN
F 2 "" H 9100 3750 50  0001 C CNN
F 3 "~" H 9100 3750 50  0001 C CNN
	1    9100 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 3750 9000 3750
Wire Wire Line
	8600 4100 8900 4100
Wire Wire Line
	8900 4100 8900 3750
Connection ~ 8900 3750
Text GLabel 9300 3750 2    50   Input ~ 0
TRANSDUCER
Wire Wire Line
	9200 3750 9300 3750
Wire Wire Line
	8400 3750 7600 3750
$EndSCHEMATC
