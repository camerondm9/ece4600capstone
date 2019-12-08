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
Text GLabel 9300 3600 2    50   Input ~ 0
TRANSDUCER
Wire Wire Line
	9200 3600 9300 3600
$Comp
L Parts:LTC6090-5 U?
U 1 1 5E088DE1
P 7250 3800
F 0 "U?" H 7250 4287 60  0000 C CNN
F 1 "LTC6090-5" H 7250 4181 60  0000 C CNN
F 2 "Parts:SOIC8-PAD" H 7250 3350 60  0001 C CNN
F 3 "https://www.analog.com/en/products/ltc6090.html" H 6900 4000 60  0001 C CNN
	1    7250 3800
	1    0    0    -1  
$EndComp
$Comp
L Parts:+50V #PWR?
U 1 1 5DEC98C8
P 6800 3900
F 0 "#PWR?" H 6800 3750 50  0001 C CNN
F 1 "+50V" H 6815 4073 50  0000 C CNN
F 2 "" H 6800 3900 50  0001 C CNN
F 3 "" H 6800 3900 50  0001 C CNN
	1    6800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3900 6900 3900
$Comp
L power:GND #PWR?
U 1 1 5DECB29F
P 6800 4000
F 0 "#PWR?" H 6800 3750 50  0001 C CNN
F 1 "GND" H 6805 3827 50  0000 C CNN
F 2 "" H 6800 4000 50  0001 C CNN
F 3 "" H 6800 4000 50  0001 C CNN
	1    6800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4000 6900 4000
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
	4600 3600 5050 3600
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
$Comp
L Device:C_Small C?
U 1 1 5DF03C94
P 5150 3600
F 0 "C?" V 4921 3600 50  0000 C CNN
F 1 "100nF" V 5012 3600 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5150 3600 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/murata-electronics/GRM31C5C2A104JA01L/490-16315-1-ND/7363297" H 5150 3600 50  0001 C CNN
	1    5150 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DED8CA3
P 5850 3600
F 0 "R?" V 5995 3550 50  0000 L CNN
F 1 "15k" V 5925 3529 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5780 3600 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT15K0/RMCF0603FT15K0CT-ND/1943069" H 5850 3600 50  0001 C CNN
	1    5850 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DEDCF6B
P 6150 3800
F 0 "R?" H 6220 3846 50  0000 L CNN
F 1 "15k" H 6220 3755 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6080 3800 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT15K0/RMCF0603FT15K0CT-ND/1943069" H 6150 3800 50  0001 C CNN
	1    6150 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DEDD63F
P 6150 4150
F 0 "R?" H 6220 4196 50  0000 L CNN
F 1 "75k" H 6220 4105 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6080 4150 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT75K0/RMCF0603FT75K0CT-ND/1943111" H 6150 4150 50  0001 C CNN
	1    6150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3600 6150 3600
$Comp
L Device:R R?
U 1 1 5DEE04B6
P 7400 3100
F 0 "R?" V 7545 3050 50  0000 L CNN
F 1 "75k" V 7475 3029 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7330 3100 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT75K0/RMCF0603FT75K0CT-ND/1943111" H 7400 3100 50  0001 C CNN
	1    7400 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DEE0B32
P 7050 3100
F 0 "R?" V 7195 3050 50  0000 L CNN
F 1 "15k" V 7125 3029 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6980 3100 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT15K0/RMCF0603FT15K0CT-ND/1943069" H 7050 3100 50  0001 C CNN
	1    7050 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 3100 7250 3100
Wire Wire Line
	7550 3100 7650 3100
Wire Wire Line
	7650 3100 7650 3600
Wire Wire Line
	7650 3600 7600 3600
Wire Wire Line
	6900 3700 6550 3700
Wire Wire Line
	6550 3700 6550 3100
Wire Wire Line
	6550 3100 6900 3100
$Comp
L Device:R R?
U 1 1 5DEE76DC
P 6550 3950
F 0 "R?" H 6620 3996 50  0000 L CNN
F 1 "15k" H 6620 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6480 3950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT15K0/RMCF0603FT15K0CT-ND/1943069" H 6550 3950 50  0001 C CNN
	1    6550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3700 6550 3800
Connection ~ 6550 3700
Wire Wire Line
	6150 4000 6150 3950
Wire Wire Line
	6150 3650 6150 3600
Wire Wire Line
	6150 3600 6900 3600
$Comp
L Device:C_Small C?
U 1 1 5DEF2296
P 9100 3600
F 0 "C?" V 8871 3600 50  0000 C CNN
F 1 "100nF" V 8962 3600 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9100 3600 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/murata-electronics/GRM31C5C2A104JA01L/490-16315-1-ND/7363297" H 9100 3600 50  0001 C CNN
	1    9100 3600
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D?
U 1 1 5DEF8D07
P 8650 3450
F 0 "D?" H 8650 3655 50  0000 C CNN
F 1 "600mV 200mA" H 8650 3564 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-523" V 8650 3450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/on-semiconductor/RB520S30T5G/RB520S30T5GOSCT-ND/5213385" V 8650 3450 50  0001 C CNN
	1    8650 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D?
U 1 1 5DEFCA68
P 8650 3800
F 0 "D?" H 8650 3595 50  0000 C CNN
F 1 "600mV 200mA" H 8650 3686 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-523" V 8650 3800 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/on-semiconductor/RB520S30T5G/RB520S30T5GOSCT-ND/5213385" V 8650 3800 50  0001 C CNN
	1    8650 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 3450 8800 3450
Wire Wire Line
	8800 3800 8750 3800
Wire Wire Line
	8550 3450 8500 3450
Wire Wire Line
	8500 3800 8550 3800
$Comp
L Device:R R?
U 1 1 5DF0A2F8
P 7500 5700
F 0 "R?" V 7645 5650 50  0000 L CNN
F 1 "10" V 7575 5650 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7430 5700 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10R0/RMCF0603FT10R0CT-ND/1942943" H 7500 5700 50  0001 C CNN
	1    7500 5700
	0    -1   -1   0   
$EndComp
$Comp
L Parts:ADA4522-1 U?
U 1 1 5DF0FFD0
P 6550 5700
F 0 "U?" H 6894 5746 50  0000 L CNN
F 1 "ADA4522-1" H 6894 5655 50  0000 L CNN
F 2 "Parts:SSOP8" H 6450 5500 50  0001 L CNN
F 3 "https://www.analog.com/en/products/ada4522-1.html" H 6700 5850 50  0001 C CNN
	1    6550 5700
	1    0    0    -1  
$EndComp
$Comp
L Parts:+50V #PWR?
U 1 1 5DF12D05
P 6450 5300
F 0 "#PWR?" H 6450 5150 50  0001 C CNN
F 1 "+50V" H 6465 5473 50  0000 C CNN
F 2 "" H 6450 5300 50  0001 C CNN
F 3 "" H 6450 5300 50  0001 C CNN
	1    6450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5300 6450 5400
$Comp
L power:GND #PWR?
U 1 1 5DF13CC4
P 6450 6050
F 0 "#PWR?" H 6450 5800 50  0001 C CNN
F 1 "GND" H 6455 5877 50  0000 C CNN
F 2 "" H 6450 6050 50  0001 C CNN
F 3 "" H 6450 6050 50  0001 C CNN
	1    6450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 6000 6450 6050
Wire Wire Line
	6850 5700 6900 5700
Wire Wire Line
	6250 5600 6200 5600
Wire Wire Line
	6200 5600 6200 5350
Wire Wire Line
	6200 5350 6900 5350
Wire Wire Line
	6900 5350 6900 5700
Connection ~ 6900 5700
Wire Wire Line
	6900 5700 7350 5700
$Comp
L Device:R R?
U 1 1 5DF1EF50
P 5650 5600
F 0 "R?" H 5720 5646 50  0000 L CNN
F 1 "220k" H 5720 5555 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5580 5600 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT220K/RMCF0603FT220KCT-ND/2417988" H 5650 5600 50  0001 C CNN
	1    5650 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF1F6B1
P 5650 6000
F 0 "R?" H 5720 6046 50  0000 L CNN
F 1 "220k" H 5720 5955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5580 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT220K/RMCF0603FT220KCT-ND/2417988" H 5650 6000 50  0001 C CNN
	1    5650 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DF222FC
P 7700 5900
F 0 "C?" H 7792 5946 50  0000 L CNN
F 1 "2.2uF" H 7792 5855 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 7700 5900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL31A225KBHNNNE/1276-2878-1-ND/3890964" H 7700 5900 50  0001 C CNN
	1    7700 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF23E71
P 7700 6050
F 0 "#PWR?" H 7700 5800 50  0001 C CNN
F 1 "GND" H 7705 5877 50  0000 C CNN
F 2 "" H 7700 6050 50  0001 C CNN
F 3 "" H 7700 6050 50  0001 C CNN
	1    7700 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6050 7700 6000
Wire Wire Line
	7650 5700 7700 5700
Wire Wire Line
	7700 5700 7700 5800
$Comp
L Device:C_Small C?
U 1 1 5DF2730B
P 8100 2550
F 0 "C?" H 8192 2596 50  0000 L CNN
F 1 "220nF" H 8192 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 8100 2550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/tdk-corporation/C3216X7R2A224K115AA/445-2283-1-ND/789792" H 8100 2550 50  0001 C CNN
	1    8100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF28C27
P 8100 2700
F 0 "#PWR?" H 8100 2450 50  0001 C CNN
F 1 "GND" H 8105 2527 50  0000 C CNN
F 2 "" H 8100 2700 50  0001 C CNN
F 3 "" H 8100 2700 50  0001 C CNN
	1    8100 2700
	1    0    0    -1  
$EndComp
$Comp
L Parts:+50V #PWR?
U 1 1 5DF2926F
P 8100 2400
F 0 "#PWR?" H 8100 2250 50  0001 C CNN
F 1 "+50V" H 8115 2573 50  0000 C CNN
F 2 "" H 8100 2400 50  0001 C CNN
F 3 "" H 8100 2400 50  0001 C CNN
	1    8100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2400 8100 2450
Wire Wire Line
	8100 2650 8100 2700
$Comp
L power:GND #PWR?
U 1 1 5DF2F3AB
P 5650 6250
F 0 "#PWR?" H 5650 6000 50  0001 C CNN
F 1 "GND" H 5655 6077 50  0000 C CNN
F 2 "" H 5650 6250 50  0001 C CNN
F 3 "" H 5650 6250 50  0001 C CNN
	1    5650 6250
	1    0    0    -1  
$EndComp
$Comp
L Parts:+50V #PWR?
U 1 1 5DF2F9A4
P 5650 5400
F 0 "#PWR?" H 5650 5250 50  0001 C CNN
F 1 "+50V" H 5665 5573 50  0000 C CNN
F 2 "" H 5650 5400 50  0001 C CNN
F 3 "" H 5650 5400 50  0001 C CNN
	1    5650 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5400 5650 5450
Wire Wire Line
	5650 6150 5650 6200
Wire Wire Line
	5650 5850 5650 5800
$Comp
L Device:C_Small C?
U 1 1 5DF34700
P 6000 6000
F 0 "C?" H 6092 6046 50  0000 L CNN
F 1 "2.2nF" H 6092 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6000 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 6000 6000 50  0001 C CNN
	1    6000 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 6200 6000 6200
Wire Wire Line
	6000 6200 6000 6100
Connection ~ 5650 6200
Wire Wire Line
	5650 6200 5650 6250
Wire Wire Line
	5650 5800 6000 5800
Wire Wire Line
	6000 5800 6000 5900
Connection ~ 5650 5800
Wire Wire Line
	5650 5800 5650 5750
Wire Wire Line
	6000 5800 6250 5800
Connection ~ 6000 5800
Text Label 7700 5700 0    50   ~ 0
MIDRAIL
Text Label 6150 4550 1    50   ~ 0
MIDRAIL
Text Label 6550 4550 1    50   ~ 0
MIDRAIL
Wire Wire Line
	6150 4300 6150 4550
Wire Wire Line
	6550 4100 6550 4550
Text Label 5600 4550 1    50   ~ 0
MIDRAIL
$Comp
L Device:R R?
U 1 1 5DF444B8
P 5600 4000
F 0 "R?" H 5670 4046 50  0000 L CNN
F 1 "10k" H 5670 3955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5530 4000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 5600 4000 50  0001 C CNN
	1    5600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3600 5600 3850
Connection ~ 5600 3600
Wire Wire Line
	5600 3600 5700 3600
Wire Wire Line
	5600 4150 5600 4550
Wire Wire Line
	8800 3450 8800 3600
Wire Wire Line
	8500 3450 8500 3600
Wire Wire Line
	7650 3600 8500 3600
Connection ~ 7650 3600
Connection ~ 8500 3600
Wire Wire Line
	8500 3600 8500 3800
Wire Wire Line
	8800 3600 9000 3600
Connection ~ 8800 3600
Wire Wire Line
	8800 3600 8800 3800
Connection ~ 6150 3600
Wire Wire Line
	5250 3600 5600 3600
$Comp
L power:GND #PWR?
U 1 1 5DF769F2
P 7650 3800
F 0 "#PWR?" H 7650 3550 50  0001 C CNN
F 1 "GND" V 7650 3625 50  0000 C CNN
F 2 "" H 7650 3800 50  0001 C CNN
F 3 "" H 7650 3800 50  0001 C CNN
	1    7650 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 3800 7650 3800
Text GLabel 7900 4200 2    50   Input ~ 0
TRANSMIT-ENABLE
$Comp
L Device:D_Zener_Small_ALT D?
U 1 1 5DF7C18D
P 7650 4350
F 0 "D?" V 7604 4418 50  0000 L CNN
F 1 "2.7V" V 7695 4418 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" V 7650 4350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/micro-commercial-co/MMSZ4682-TP/MMSZ4682-TPMSCT-ND/9992158" V 7650 4350 50  0001 C CNN
	1    7650 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF7E3C9
P 7650 4500
F 0 "#PWR?" H 7650 4250 50  0001 C CNN
F 1 "GND" H 7655 4327 50  0000 C CNN
F 2 "" H 7650 4500 50  0001 C CNN
F 3 "" H 7650 4500 50  0001 C CNN
	1    7650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4450 7650 4500
Wire Wire Line
	7900 4200 7650 4200
Wire Wire Line
	7650 4200 7650 4250
Wire Wire Line
	7650 4200 7650 4000
Wire Wire Line
	7650 4000 7600 4000
Connection ~ 7650 4200
Wire Wire Line
	7650 4000 7650 3900
Wire Wire Line
	7650 3900 7600 3900
Connection ~ 7650 4000
$Comp
L Device:C_Small C?
U 1 1 5DFB3BB1
P 8650 5700
F 0 "C?" H 8742 5746 50  0000 L CNN
F 1 "220nF" H 8742 5655 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 8650 5700 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/tdk-corporation/C3216X7R2A224K115AA/445-2283-1-ND/789792" H 8650 5700 50  0001 C CNN
	1    8650 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFB3BBB
P 8650 5850
F 0 "#PWR?" H 8650 5600 50  0001 C CNN
F 1 "GND" H 8655 5677 50  0000 C CNN
F 2 "" H 8650 5850 50  0001 C CNN
F 3 "" H 8650 5850 50  0001 C CNN
	1    8650 5850
	1    0    0    -1  
$EndComp
$Comp
L Parts:+50V #PWR?
U 1 1 5DFB3BC5
P 8650 5550
F 0 "#PWR?" H 8650 5400 50  0001 C CNN
F 1 "+50V" H 8665 5723 50  0000 C CNN
F 2 "" H 8650 5550 50  0001 C CNN
F 3 "" H 8650 5550 50  0001 C CNN
	1    8650 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5550 8650 5600
Wire Wire Line
	8650 5800 8650 5850
$EndSCHEMATC
