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
P 2250 3900
F 0 "U?" H 2250 4387 60  0000 C CNN
F 1 "AD5450" H 2250 4281 60  0000 C CNN
F 2 "Parts:TSOT8" H 2250 3550 60  0001 C CNN
F 3 "https://www.analog.com/en/products/ad5450.html" H 1850 4100 60  0001 C CNN
	1    2250 3900
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
P 1750 3700
F 0 "#PWR?" H 1750 3550 50  0001 C CNN
F 1 "+3V3" H 1765 3873 50  0000 C CNN
F 2 "" H 1750 3700 50  0001 C CNN
F 3 "" H 1750 3700 50  0001 C CNN
	1    1750 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE63ED6
P 2750 4100
F 0 "#PWR?" H 2750 3850 50  0001 C CNN
F 1 "GND" H 2755 3927 50  0000 C CNN
F 2 "" H 2750 4100 50  0001 C CNN
F 3 "" H 2750 4100 50  0001 C CNN
	1    2750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3700 1850 3700
Wire Wire Line
	2650 4100 2750 4100
Text GLabel 1800 3900 0    50   Input ~ 0
DAC-~CS
Text GLabel 1800 4000 0    50   Input ~ 0
DAC-SCK
Text GLabel 1800 4100 0    50   Input ~ 0
DAC-SDI
Wire Wire Line
	1800 3900 1850 3900
Wire Wire Line
	1850 4000 1800 4000
Wire Wire Line
	1800 4100 1850 4100
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
	8400 3600 7150 3600
$Comp
L Parts:LTC6090-5 U?
U 1 1 5E088DE1
P 6800 3800
F 0 "U?" H 6800 4287 60  0000 C CNN
F 1 "LTC6090-5" H 6800 4181 60  0000 C CNN
F 2 "Parts:SOIC8-PAD" H 6800 3350 60  0001 C CNN
F 3 "https://www.analog.com/en/products/ltc6090.html" H 6450 4000 60  0001 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
$Comp
L Parts:+50V #PWR?
U 1 1 5DEC98C8
P 6350 3900
F 0 "#PWR?" H 6350 3750 50  0001 C CNN
F 1 "+50V" H 6365 4073 50  0000 C CNN
F 2 "" H 6350 3900 50  0001 C CNN
F 3 "" H 6350 3900 50  0001 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3900 6450 3900
$Comp
L power:GND #PWR?
U 1 1 5DECB29F
P 6350 4000
F 0 "#PWR?" H 6350 3750 50  0001 C CNN
F 1 "GND" H 6355 3827 50  0000 C CNN
F 2 "" H 6350 4000 50  0001 C CNN
F 3 "" H 6350 4000 50  0001 C CNN
	1    6350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4000 6450 4000
$Comp
L Parts:TSX9291 U?
U 1 1 5DED28E6
P 3800 3600
F 0 "U?" H 4144 3646 50  0000 L CNN
F 1 "TSX9291" H 4144 3555 50  0000 L CNN
F 2 "Parts:SOT23-5" H 3700 3400 50  0001 L CNN
F 3 "https://www.st.com/content/st_com/en/products/amplifiers-and-comparators/operational-amplifiers-op-amps/precision-op-amps-lt50-mhz/rail-to-rail-op-amps/tsx9291.html" H 3950 3750 50  0001 C CNN
	1    3800 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DED523B
P 3700 3950
F 0 "#PWR?" H 3700 3700 50  0001 C CNN
F 1 "GND" H 3705 3777 50  0000 C CNN
F 2 "" H 3700 3950 50  0001 C CNN
F 3 "" H 3700 3950 50  0001 C CNN
	1    3700 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DED5B08
P 3700 2650
F 0 "#PWR?" H 3700 2500 50  0001 C CNN
F 1 "+12V" H 3715 2823 50  0000 C CNN
F 2 "" H 3700 2650 50  0001 C CNN
F 3 "" H 3700 2650 50  0001 C CNN
	1    3700 2650
	1    0    0    -1  
$EndComp
Text Notes 1850 2950 0    50   ~ 0
Is the 12V rail quiet enough, or do we need a separate 10V linear-regulated rail to reduce noise?
$Comp
L Device:R R?
U 1 1 5DEDD2CE
P 4600 4300
F 0 "R?" H 4670 4346 50  0000 L CNN
F 1 "10k" H 4670 4255 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4530 4300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 4600 4300 50  0001 C CNN
	1    4600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEDEBA9
P 4600 4500
F 0 "#PWR?" H 4600 4250 50  0001 C CNN
F 1 "GND" H 4605 4327 50  0000 C CNN
F 2 "" H 4600 4500 50  0001 C CNN
F 3 "" H 4600 4500 50  0001 C CNN
	1    4600 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DEDF69F
P 4600 3900
F 0 "R?" H 4670 3946 50  0000 L CNN
F 1 "15k" H 4670 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4530 3900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT15K0/RMCF0603FT15K0CT-ND/1943069" H 4600 3900 50  0001 C CNN
	1    4600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4450 4600 4500
Wire Wire Line
	4600 4150 4600 4100
Wire Wire Line
	3500 3500 3450 3500
Wire Wire Line
	3450 3500 3450 4100
Wire Wire Line
	3450 4100 4600 4100
Wire Wire Line
	4600 4100 4600 4050
Wire Wire Line
	3700 3900 3700 3950
Connection ~ 4600 4100
Wire Wire Line
	4100 3600 4600 3600
Wire Wire Line
	4600 3600 4600 3750
Connection ~ 4600 3600
Wire Wire Line
	4600 3600 4850 3600
Wire Wire Line
	2650 3800 2700 3800
Wire Wire Line
	2700 3800 2700 3900
Wire Wire Line
	2700 3900 2650 3900
$Comp
L power:+3V3 #PWR?
U 1 1 5DEEBC70
P 2750 3900
F 0 "#PWR?" H 2750 3750 50  0001 C CNN
F 1 "+3V3" V 2750 4100 50  0000 C CNN
F 2 "" H 2750 3900 50  0001 C CNN
F 3 "" H 2750 3900 50  0001 C CNN
	1    2750 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3900 2750 3900
Connection ~ 2700 3900
Wire Wire Line
	2650 3700 3500 3700
Text Notes 6100 4700 0    50   ~ 0
Which diodes should we use for the transmit and receive stages?\nI have one kind entered in KiCAD, but I found a different diode which I think might perform better.
Text Notes 5750 5200 0    50   ~ 0
How do we connect the microcontroller to the OutputDisable pin on the final amplifier stage without frying the microcontroller?\nWe need to be able to turn the amplifier off when not transmitting to keep it cool.
$Comp
L Device:C_Small C?
U 1 1 5DF03C94
P 4950 3600
F 0 "C?" V 4721 3600 50  0000 C CNN
F 1 "C_Small" V 4812 3600 50  0000 C CNN
F 2 "" H 4950 3600 50  0001 C CNN
F 3 "~" H 4950 3600 50  0001 C CNN
	1    4950 3600
	0    1    1    0   
$EndComp
Text Notes 4900 5850 0    50   ~ 0
Also need to generate mid-rail for 50V amplifier
$EndSCHEMATC
