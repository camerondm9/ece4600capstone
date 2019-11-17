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
P 8600 3600
F 0 "D?" H 8600 3816 50  0000 C CNN
F 1 "D_x2_Serial_AKC" H 8600 3725 50  0000 C CNN
F 2 "Parts:MMBD7000L" H 8600 3600 50  0001 C CNN
F 3 "https://www.onsemi.com/products/discretes-drivers/diodes-rectifiers/small-signal-switching-diodes/mmbd7000l" H 8600 3600 50  0001 C CNN
	1    8600 3600
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
	8600 3300 8600 3250
Wire Wire Line
	8600 3250 8900 3250
Wire Wire Line
	8900 3250 8900 3600
Wire Wire Line
	8600 3950 8600 3900
$Comp
L Device:C_Small C?
U 1 1 5DE7A1A8
P 9100 3600
F 0 "C?" V 8871 3600 50  0000 C CNN
F 1 "C_Small" V 8962 3600 50  0000 C CNN
F 2 "" H 9100 3600 50  0001 C CNN
F 3 "~" H 9100 3600 50  0001 C CNN
	1    9100 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 3600 9000 3600
Wire Wire Line
	8600 3950 8900 3950
Wire Wire Line
	8900 3950 8900 3600
Connection ~ 8900 3600
Text GLabel 9300 3600 2    50   Input ~ 0
TRANSDUCER
Wire Wire Line
	9200 3600 9300 3600
Wire Wire Line
	8400 3600 5900 3600
$Comp
L Parts:LTC6090-5 U?
U 1 1 5E088DE1
P 5550 3800
F 0 "U?" H 5550 4287 60  0000 C CNN
F 1 "LTC6090-5" H 5550 4181 60  0000 C CNN
F 2 "Parts:SOIC8-PAD" H 5550 3350 60  0001 C CNN
F 3 "https://www.analog.com/en/products/ltc6090.html" H 5200 4000 60  0001 C CNN
	1    5550 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
