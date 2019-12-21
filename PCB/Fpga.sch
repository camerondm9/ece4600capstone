EESchema Schematic File Version 4
LIBS:Capstone-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
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
L Parts:10CL010 U12
U 1 1 5DD19E68
P 1550 600
F 0 "U12" H 2828 -754 50  0000 L CNN
F 1 "10CL010" H 2828 -845 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 2400 650 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 1550 600 50  0001 C CNN
	1    1550 600 
	1    0    0    -1  
$EndComp
$Comp
L Parts:10CL010 U12
U 12 1 5DD1C6BA
P 1550 3600
F 0 "U12" H 2828 3296 50  0000 L CNN
F 1 "10CL010" H 2828 3205 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 2400 3650 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 1550 3600 50  0001 C CNN
	12   1550 3600
	1    0    0    -1  
$EndComp
$Comp
L Parts:ECS-5032MV U13
U 1 1 5DD22CF7
P 10050 950
F 0 "U13" H 10050 1265 50  0000 C CNN
F 1 "ECS-5032MV" H 10050 1174 50  0000 C CNN
F 2 "Parts:ECS-5032MV" H 10050 650 50  0001 C CNN
F 3 "https://ecsxtal.com/ecs-5032mv" H 10050 550 50  0001 C CNN
	1    10050 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR096
U 1 1 5DE1FF3C
P 1100 850
F 0 "#PWR096" H 1100 700 50  0001 C CNN
F 1 "+3V3" H 1115 1023 50  0000 C CNN
F 2 "" H 1100 850 50  0001 C CNN
F 3 "" H 1100 850 50  0001 C CNN
	1    1100 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+1V2 #PWR0104
U 1 1 5DE20963
P 1100 2750
F 0 "#PWR0104" H 1100 2600 50  0001 C CNN
F 1 "+1V2" H 1115 2923 50  0000 C CNN
F 2 "" H 1100 2750 50  0001 C CNN
F 3 "" H 1100 2750 50  0001 C CNN
	1    1100 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR0100
U 1 1 5DE217EB
P 1100 2100
F 0 "#PWR0100" H 1100 1950 50  0001 C CNN
F 1 "+2V5" H 1115 2273 50  0000 C CNN
F 2 "" H 1100 2100 50  0001 C CNN
F 3 "" H 1100 2100 50  0001 C CNN
	1    1100 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5DE22333
P 1200 4250
F 0 "#PWR0110" H 1200 4000 50  0001 C CNN
F 1 "GND" H 1205 4077 50  0000 C CNN
F 2 "" H 1200 4250 50  0001 C CNN
F 3 "" H 1200 4250 50  0001 C CNN
	1    1200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4000 1350 4000
Wire Wire Line
	1200 4200 1200 4250
Connection ~ 1200 4200
Wire Wire Line
	1200 4200 1350 4200
Wire Wire Line
	1200 3700 1350 3700
Wire Wire Line
	1200 3700 1200 4000
Wire Wire Line
	1300 3900 1300 4000
Wire Wire Line
	1300 3900 1350 3900
Wire Wire Line
	1350 2600 1300 2600
Wire Wire Line
	1300 2600 1300 2700
Wire Wire Line
	1300 3300 1350 3300
Wire Wire Line
	1350 3200 1300 3200
Connection ~ 1300 3200
Wire Wire Line
	1300 3200 1300 3300
Wire Wire Line
	1350 3100 1300 3100
Connection ~ 1300 3100
Wire Wire Line
	1300 3100 1300 3200
Wire Wire Line
	1300 3000 1350 3000
Connection ~ 1300 3000
Wire Wire Line
	1300 3000 1300 3100
Wire Wire Line
	1350 2900 1300 2900
Connection ~ 1300 2900
Wire Wire Line
	1300 2900 1300 3000
Wire Wire Line
	1300 2800 1350 2800
Connection ~ 1300 2800
Wire Wire Line
	1300 2800 1300 2900
Wire Wire Line
	1350 2700 1300 2700
Connection ~ 1300 2700
Wire Wire Line
	1300 2700 1300 2800
Wire Wire Line
	1350 700  1300 700 
Wire Wire Line
	1300 700  1300 800 
Wire Wire Line
	1300 800  1350 800 
Wire Wire Line
	1300 800  1300 900 
Wire Wire Line
	1300 1800 1350 1800
Connection ~ 1300 800 
Wire Wire Line
	1350 1700 1300 1700
Connection ~ 1300 1700
Wire Wire Line
	1300 1700 1300 1800
Wire Wire Line
	1300 1600 1350 1600
Connection ~ 1300 1600
Wire Wire Line
	1300 1600 1300 1700
Wire Wire Line
	1350 1500 1300 1500
Connection ~ 1300 1500
Wire Wire Line
	1300 1500 1300 1600
Wire Wire Line
	1300 1400 1350 1400
Connection ~ 1300 1400
Wire Wire Line
	1300 1400 1300 1500
Wire Wire Line
	1350 1300 1300 1300
Connection ~ 1300 1300
Wire Wire Line
	1300 1300 1300 1400
Wire Wire Line
	1300 1200 1350 1200
Connection ~ 1300 1200
Wire Wire Line
	1300 1200 1300 1300
Wire Wire Line
	1350 1100 1300 1100
Connection ~ 1300 1100
Wire Wire Line
	1300 1100 1300 1200
Wire Wire Line
	1300 1000 1350 1000
Connection ~ 1300 1000
Wire Wire Line
	1300 1000 1300 1100
Wire Wire Line
	1350 900  1300 900 
Connection ~ 1300 900 
Wire Wire Line
	1300 900  1300 1000
Wire Wire Line
	1100 2750 1100 2800
Wire Wire Line
	1100 2800 1300 2800
Wire Wire Line
	1100 850  1100 900 
Wire Wire Line
	1100 900  1300 900 
Wire Wire Line
	1350 2000 1300 2000
Wire Wire Line
	1300 2000 1300 2100
Wire Wire Line
	1300 2100 1350 2100
Wire Wire Line
	1100 2100 1300 2100
Connection ~ 1300 2100
Wire Wire Line
	1350 2300 1300 2300
Wire Wire Line
	1300 2400 1350 2400
Wire Wire Line
	1300 2300 1300 2400
Text GLabel 4450 3700 0    50   Input ~ 0
DAC-~CS
Text GLabel 4450 3500 0    50   Input ~ 0
DAC-SCK
Text GLabel 4450 3600 0    50   Input ~ 0
DAC-SDI
$Comp
L Parts:10CL010 U12
U 11 1 5DE8AD4C
P 2850 5050
F 0 "U12" H 4128 3796 50  0000 L CNN
F 1 "10CL010" H 4128 3705 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 3700 5100 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 2850 5050 50  0001 C CNN
	11   2850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6550 2600 6550
Wire Wire Line
	2600 6550 2600 6650
Wire Wire Line
	2600 6650 2650 6650
Wire Wire Line
	2650 6750 2600 6750
Wire Wire Line
	2600 6750 2600 6650
Connection ~ 2600 6650
Text GLabel 5750 7300 0    50   Input ~ 0
FPGA-TDI
Text GLabel 5750 7400 0    50   Input ~ 0
FPGA-TCK
Text GLabel 5750 7500 0    50   Input ~ 0
FPGA-TMS
Text GLabel 5750 7600 0    50   Input ~ 0
FPGA-TDO
Wire Wire Line
	2650 6050 2500 6050
$Comp
L Device:R R29
U 1 1 5DEDA0A1
P 1900 5350
F 0 "R29" V 1693 5350 50  0000 C CNN
F 1 "10k" V 1784 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 5350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1900 5350 50  0001 C CNN
	1    1900 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 6150 2650 6150
Text Label 2300 5350 0    50   ~ 0
nSTATUS
Text Label 2300 5450 0    50   ~ 0
DCLK
Text Label 2300 5550 0    50   ~ 0
DIN
Wire Wire Line
	1150 5650 1200 5650
Text Label 2300 5650 0    50   ~ 0
nCONFIG
Wire Wire Line
	1850 6950 1900 6950
Text Label 2200 6950 0    50   ~ 0
CRC_ERROR
Wire Wire Line
	1600 6850 1650 6850
Wire Wire Line
	1850 6450 1900 6450
Wire Wire Line
	2550 6650 2600 6650
Text Label 2200 6850 0    50   ~ 0
INIT_DONE
Text Label 2200 6450 0    50   ~ 0
CONF_DONE
Text Label 2500 5750 0    50   ~ 0
TDI
Text Label 2500 5850 0    50   ~ 0
TCK
Text Label 2500 5950 0    50   ~ 0
TMS
Text Label 2500 6050 0    50   ~ 0
TDO
Wire Wire Line
	2250 5950 2650 5950
Wire Wire Line
	1750 5750 2650 5750
Wire Wire Line
	2000 5850 2650 5850
$Comp
L Device:R R32
U 1 1 5DD7DCEC
P 1350 5650
F 0 "R32" V 1143 5650 50  0000 C CNN
F 1 "10k" V 1234 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1280 5650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1350 5650 50  0001 C CNN
	1    1350 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R37
U 1 1 5DD7DFB2
P 2050 6450
F 0 "R37" V 1843 6450 50  0000 C CNN
F 1 "10k" V 1934 6450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1980 6450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2050 6450 50  0001 C CNN
	1    2050 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R38
U 1 1 5DD7E4C4
P 1800 6850
F 0 "R38" V 1593 6850 50  0000 C CNN
F 1 "10k" V 1684 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1730 6850 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1800 6850 50  0001 C CNN
	1    1800 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R39
U 1 1 5DD7E7CA
P 2050 6950
F 0 "R39" V 1843 6950 50  0000 C CNN
F 1 "10k" V 1934 6950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1980 6950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2050 6950 50  0001 C CNN
	1    2050 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 5DD7F3E6
P 1600 5750
F 0 "R33" V 1393 5750 50  0000 C CNN
F 1 "10k" V 1484 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1530 5750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1600 5750 50  0001 C CNN
	1    1600 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R35
U 1 1 5DD7F898
P 2100 5950
F 0 "R35" V 1893 5950 50  0000 C CNN
F 1 "10k" V 1984 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2030 5950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2100 5950 50  0001 C CNN
	1    2100 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 5DD7FA63
P 2350 6050
F 0 "R36" V 2143 6050 50  0000 C CNN
F 1 "10k" V 2234 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2280 6050 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2350 6050 50  0001 C CNN
	1    2350 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 5950 1950 5950
Wire Wire Line
	2200 6050 2150 6050
$Comp
L Device:R R34
U 1 1 5DD8AB80
P 1850 5850
F 0 "R34" V 1643 5850 50  0000 C CNN
F 1 "1k" V 1734 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1780 5850 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 1850 5850 50  0001 C CNN
	1    1850 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 5850 1700 5850
$Comp
L power:GND #PWR0120
U 1 1 5DD8EAB5
P 1650 5850
F 0 "#PWR0120" H 1650 5600 50  0001 C CNN
F 1 "GND" V 1650 5675 50  0000 C CNN
F 2 "" H 1650 5850 50  0001 C CNN
F 3 "" H 1650 5850 50  0001 C CNN
	1    1650 5850
	0    1    1    0   
$EndComp
$Comp
L power:+2V5 #PWR0118
U 1 1 5DD94A03
P 1400 5750
F 0 "#PWR0118" H 1400 5600 50  0001 C CNN
F 1 "+2V5" V 1400 5950 50  0000 C CNN
F 2 "" H 1400 5750 50  0001 C CNN
F 3 "" H 1400 5750 50  0001 C CNN
	1    1400 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 5DEE2282
P 1700 5350
F 0 "#PWR0113" H 1700 5200 50  0001 C CNN
F 1 "+3V3" V 1700 5450 50  0000 L CNN
F 2 "" H 1700 5350 50  0001 C CNN
F 3 "" H 1700 5350 50  0001 C CNN
	1    1700 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5DDACD3F
P 1150 5650
F 0 "#PWR0117" H 1150 5500 50  0001 C CNN
F 1 "+3V3" V 1150 5750 50  0000 L CNN
F 2 "" H 1150 5650 50  0001 C CNN
F 3 "" H 1150 5650 50  0001 C CNN
	1    1150 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR0121
U 1 1 5DDADC93
P 1900 5950
F 0 "#PWR0121" H 1900 5800 50  0001 C CNN
F 1 "+2V5" V 1900 6150 50  0000 C CNN
F 2 "" H 1900 5950 50  0001 C CNN
F 3 "" H 1900 5950 50  0001 C CNN
	1    1900 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR0122
U 1 1 5DDADF3E
P 2150 6050
F 0 "#PWR0122" H 2150 5900 50  0001 C CNN
F 1 "+2V5" V 2150 6250 50  0000 C CNN
F 2 "" H 2150 6050 50  0001 C CNN
F 3 "" H 2150 6050 50  0001 C CNN
	1    2150 6050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0125
U 1 1 5DDB0FE1
P 1850 6450
F 0 "#PWR0125" H 1850 6300 50  0001 C CNN
F 1 "+3V3" V 1850 6550 50  0000 L CNN
F 2 "" H 1850 6450 50  0001 C CNN
F 3 "" H 1850 6450 50  0001 C CNN
	1    1850 6450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0127
U 1 1 5DDB15B2
P 1600 6850
F 0 "#PWR0127" H 1600 6700 50  0001 C CNN
F 1 "+3V3" V 1600 6950 50  0000 L CNN
F 2 "" H 1600 6850 50  0001 C CNN
F 3 "" H 1600 6850 50  0001 C CNN
	1    1600 6850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0128
U 1 1 5DDB1889
P 1850 6950
F 0 "#PWR0128" H 1850 6800 50  0001 C CNN
F 1 "+3V3" V 1850 7050 50  0000 L CNN
F 2 "" H 1850 6950 50  0001 C CNN
F 3 "" H 1850 6950 50  0001 C CNN
	1    1850 6950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5DDB19BB
P 2600 6150
F 0 "#PWR0123" H 2600 5900 50  0001 C CNN
F 1 "GND" V 2600 5975 50  0000 C CNN
F 2 "" H 2600 6150 50  0001 C CNN
F 3 "" H 2600 6150 50  0001 C CNN
	1    2600 6150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5DDB20C5
P 2550 6650
F 0 "#PWR0126" H 2550 6400 50  0001 C CNN
F 1 "GND" V 2550 6475 50  0000 C CNN
F 2 "" H 2550 6650 50  0001 C CNN
F 3 "" H 2550 6650 50  0001 C CNN
	1    2550 6650
	0    1    1    0   
$EndComp
Text Label 5800 6450 0    50   ~ 0
nSTATUS
Text Label 5800 6550 0    50   ~ 0
DCLK
Text Label 5800 6650 0    50   ~ 0
DIN
Text Label 5800 6750 0    50   ~ 0
nCONFIG
Text Label 5800 6850 0    50   ~ 0
CONF_DONE
Text Label 5800 6950 0    50   ~ 0
INIT_DONE
Text Label 5800 7050 0    50   ~ 0
CRC_ERROR
Text Label 5800 7300 0    50   ~ 0
TDI
Text Label 5800 7400 0    50   ~ 0
TCK
Text Label 5800 7500 0    50   ~ 0
TMS
Text Label 5800 7600 0    50   ~ 0
TDO
Wire Wire Line
	5750 7300 5800 7300
Wire Wire Line
	5800 7400 5750 7400
Wire Wire Line
	5750 7500 5800 7500
Wire Wire Line
	5800 7600 5750 7600
Wire Wire Line
	2050 5350 2650 5350
Wire Wire Line
	2300 5450 2650 5450
Wire Wire Line
	1250 5550 2650 5550
Wire Wire Line
	1500 5650 2650 5650
Wire Wire Line
	1400 5750 1450 5750
Wire Wire Line
	1950 6850 2650 6850
Wire Wire Line
	2200 6950 2650 6950
Wire Wire Line
	2200 6450 2650 6450
Text GLabel 5750 7050 0    50   Input ~ 0
FPGA-CRC_ERROR
Text GLabel 5750 6950 0    50   Input ~ 0
FPGA-INIT_DONE
Text GLabel 5750 6850 0    50   Input ~ 0
FPGA-CONF_DONE
Text GLabel 5750 6750 0    50   Input ~ 0
FPGA-nCONFIG
Text GLabel 5750 6650 0    50   Input ~ 0
FPGA-DIN
Text GLabel 5750 6550 0    50   Input ~ 0
FPGA-DCLK
Text GLabel 5750 6450 0    50   Input ~ 0
FPGA-nSTATUS
Wire Wire Line
	5750 7050 5800 7050
Wire Wire Line
	5800 6950 5750 6950
Wire Wire Line
	5750 6850 5800 6850
Wire Wire Line
	5800 6750 5750 6750
Wire Wire Line
	5750 6650 5800 6650
Wire Wire Line
	5800 6550 5750 6550
Wire Wire Line
	5750 6450 5800 6450
Wire Wire Line
	1700 5350 1750 5350
$Comp
L Device:R R30
U 1 1 5DF0E9BD
P 2150 5450
F 0 "R30" V 1943 5450 50  0000 C CNN
F 1 "10k" V 2034 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2080 5450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2150 5450 50  0001 C CNN
	1    2150 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 5DF0EB30
P 1100 5550
F 0 "R31" V 893 5550 50  0000 C CNN
F 1 "10k" V 984 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1030 5550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1100 5550 50  0001 C CNN
	1    1100 5550
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0116
U 1 1 5DF0EC9E
P 900 5550
F 0 "#PWR0116" H 900 5400 50  0001 C CNN
F 1 "+3V3" V 900 5650 50  0000 L CNN
F 2 "" H 900 5550 50  0001 C CNN
F 3 "" H 900 5550 50  0001 C CNN
	1    900  5550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5DF40C3D
P 1950 5450
F 0 "#PWR0114" H 1950 5300 50  0001 C CNN
F 1 "+3V3" V 1950 5550 50  0000 L CNN
F 2 "" H 1950 5450 50  0001 C CNN
F 3 "" H 1950 5450 50  0001 C CNN
	1    1950 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 5450 2000 5450
Wire Wire Line
	950  5550 900  5550
Text Label 4200 1100 0    50   ~ 0
DOUT
Text Label 5800 6350 0    50   ~ 0
DOUT
Text GLabel 5750 6350 0    50   Input ~ 0
FPGA-DOUT
Wire Wire Line
	5750 6350 5800 6350
Text GLabel 2600 7450 0    50   Input ~ 0
FPGA-LINK0
Text GLabel 2600 7550 0    50   Input ~ 0
FPGA-LINK1
Text GLabel 4450 4300 0    50   Input ~ 0
FPGA-LINK2
Text GLabel 4450 4400 0    50   Input ~ 0
FPGA-LINK3
Text GLabel 4450 4500 0    50   Input ~ 0
FPGA-LINK4
$Comp
L power:+3V3 #PWR097
U 1 1 5DD97BF5
P 9650 900
F 0 "#PWR097" H 9650 750 50  0001 C CNN
F 1 "+3V3" H 9665 1073 50  0000 C CNN
F 2 "" H 9650 900 50  0001 C CNN
F 3 "" H 9650 900 50  0001 C CNN
	1    9650 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR098
U 1 1 5DD9CD01
P 10450 1000
F 0 "#PWR098" H 10450 750 50  0001 C CNN
F 1 "GND" H 10455 827 50  0000 C CNN
F 2 "" H 10450 1000 50  0001 C CNN
F 3 "" H 10450 1000 50  0001 C CNN
	1    10450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1000 10450 1000
Text Label 10450 900  0    50   ~ 0
12MHz
Wire Wire Line
	10350 900  10450 900 
$Comp
L Parts:+1V2-LN #PWR0101
U 1 1 5DD72B66
P 1100 2400
F 0 "#PWR0101" H 1100 2250 50  0001 C CNN
F 1 "+1V2-LN" H 1115 2573 50  0000 C CNN
F 2 "" H 1100 2400 50  0001 C CNN
F 3 "" H 1100 2400 50  0001 C CNN
	1    1100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2400 1300 2400
Connection ~ 1300 2400
$Comp
L Device:C_Small C44
U 1 1 5DD852FA
P 10850 900
F 0 "C44" H 10942 946 50  0000 L CNN
F 1 "100nF" H 10942 855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10850 900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 10850 900 50  0001 C CNN
	1    10850 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR095
U 1 1 5DD89B39
P 10850 750
F 0 "#PWR095" H 10850 600 50  0001 C CNN
F 1 "+3V3" H 10865 923 50  0000 C CNN
F 2 "" H 10850 750 50  0001 C CNN
F 3 "" H 10850 750 50  0001 C CNN
	1    10850 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 750  10850 800 
$Comp
L power:GND #PWR099
U 1 1 5DD8DD81
P 10850 1050
F 0 "#PWR099" H 10850 800 50  0001 C CNN
F 1 "GND" H 10855 877 50  0000 C CNN
F 2 "" H 10850 1050 50  0001 C CNN
F 3 "" H 10850 1050 50  0001 C CNN
	1    10850 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 1000 10850 1050
Text GLabel 4450 4600 0    50   Input ~ 0
FPGA-LINK5
$Comp
L Device:C_Small C66
U 1 1 5DE991E1
P 8450 5250
F 0 "C66" H 8542 5296 50  0000 L CNN
F 1 "100nF" H 8542 5205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8450 5250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 8450 5250 50  0001 C CNN
	1    8450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C67
U 1 1 5DE99C2D
P 8850 5250
F 0 "C67" H 8942 5296 50  0000 L CNN
F 1 "100nF" H 8942 5205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8850 5250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 8850 5250 50  0001 C CNN
	1    8850 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C68
U 1 1 5DE9C194
P 9250 5250
F 0 "C68" H 9342 5296 50  0000 L CNN
F 1 "100nF" H 9342 5205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9250 5250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 9250 5250 50  0001 C CNN
	1    9250 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C69
U 1 1 5DE9DECB
P 9900 5250
F 0 "C69" H 9992 5296 50  0000 L CNN
F 1 "1uF" H 9992 5205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9900 5250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10A105MP8NNNC/1276-1866-1-ND/3889952" H 9900 5250 50  0001 C CNN
	1    9900 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C70
U 1 1 5DE9FE31
P 10500 5250
F 0 "C70" H 10592 5296 50  0000 L CNN
F 1 "10uF" H 10592 5205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10500 5250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 10500 5250 50  0001 C CNN
	1    10500 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C71
U 1 1 5DEA0A74
P 10850 5250
F 0 "C71" H 10942 5296 50  0000 L CNN
F 1 "10uF" H 10942 5205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10850 5250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 10850 5250 50  0001 C CNN
	1    10850 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+1V2 #PWR0112
U 1 1 5DEA2FAA
P 8450 5050
F 0 "#PWR0112" H 8450 4900 50  0001 C CNN
F 1 "+1V2" H 8465 5223 50  0000 C CNN
F 2 "" H 8450 5050 50  0001 C CNN
F 3 "" H 8450 5050 50  0001 C CNN
	1    8450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5150 8450 5100
Wire Wire Line
	8450 5100 8850 5100
Wire Wire Line
	8850 5100 8850 5150
Connection ~ 8450 5100
Wire Wire Line
	8450 5100 8450 5050
Wire Wire Line
	8850 5100 9250 5100
Wire Wire Line
	9250 5100 9250 5150
Connection ~ 8850 5100
Wire Wire Line
	8450 5350 8450 5400
Wire Wire Line
	8450 5400 8850 5400
Wire Wire Line
	8850 5400 8850 5350
Wire Wire Line
	8850 5400 9250 5400
Wire Wire Line
	9250 5400 9250 5350
Connection ~ 8850 5400
$Comp
L power:GND #PWR0115
U 1 1 5DEB9767
P 8450 5450
F 0 "#PWR0115" H 8450 5200 50  0001 C CNN
F 1 "GND" H 8455 5277 50  0000 C CNN
F 2 "" H 8450 5450 50  0001 C CNN
F 3 "" H 8450 5450 50  0001 C CNN
	1    8450 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5450 8450 5400
Connection ~ 8450 5400
Wire Wire Line
	9250 5100 9900 5100
Wire Wire Line
	9900 5100 9900 5150
Connection ~ 9250 5100
Wire Wire Line
	9900 5100 10500 5100
Wire Wire Line
	10500 5100 10500 5150
Connection ~ 9900 5100
Wire Wire Line
	10500 5100 10850 5100
Wire Wire Line
	10850 5100 10850 5150
Connection ~ 10500 5100
Wire Wire Line
	9250 5400 9900 5400
Wire Wire Line
	9900 5400 9900 5350
Connection ~ 9250 5400
Wire Wire Line
	9900 5400 10500 5400
Wire Wire Line
	10500 5400 10500 5350
Connection ~ 9900 5400
Wire Wire Line
	10500 5400 10850 5400
Wire Wire Line
	10850 5400 10850 5350
Connection ~ 10500 5400
$Comp
L power:+3V3 #PWR0119
U 1 1 5DEEB0E4
P 7100 5800
F 0 "#PWR0119" H 7100 5650 50  0001 C CNN
F 1 "+3V3" H 7115 5973 50  0000 C CNN
F 2 "" H 7100 5800 50  0001 C CNN
F 3 "" H 7100 5800 50  0001 C CNN
	1    7100 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C72
U 1 1 5DEEC243
P 7100 6000
F 0 "C72" H 7192 6046 50  0000 L CNN
F 1 "22nF" H 7192 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7100 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 7100 6000 50  0001 C CNN
	1    7100 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C73
U 1 1 5DEED110
P 7450 6000
F 0 "C73" H 7542 6046 50  0000 L CNN
F 1 "22nF" H 7542 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7450 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 7450 6000 50  0001 C CNN
	1    7450 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C74
U 1 1 5DEED3BE
P 7800 6000
F 0 "C74" H 7892 6046 50  0000 L CNN
F 1 "22nF" H 7892 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7800 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 7800 6000 50  0001 C CNN
	1    7800 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C75
U 1 1 5DEED67B
P 8150 6000
F 0 "C75" H 8242 6046 50  0000 L CNN
F 1 "22nF" H 8242 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8150 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 8150 6000 50  0001 C CNN
	1    8150 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C76
U 1 1 5DEED944
P 8500 6000
F 0 "C76" H 8592 6046 50  0000 L CNN
F 1 "22nF" H 8592 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8500 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 8500 6000 50  0001 C CNN
	1    8500 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C77
U 1 1 5DEEDC2F
P 8850 6000
F 0 "C77" H 8942 6046 50  0000 L CNN
F 1 "22nF" H 8942 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8850 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 8850 6000 50  0001 C CNN
	1    8850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5800 7100 5850
Wire Wire Line
	7100 5850 7450 5850
Wire Wire Line
	7450 5850 7450 5900
Connection ~ 7100 5850
Wire Wire Line
	7100 5850 7100 5900
Wire Wire Line
	7450 5850 7800 5850
Wire Wire Line
	7800 5850 7800 5900
Connection ~ 7450 5850
Wire Wire Line
	7800 5850 8150 5850
Wire Wire Line
	8150 5850 8150 5900
Connection ~ 7800 5850
Wire Wire Line
	8150 5850 8500 5850
Wire Wire Line
	8500 5850 8500 5900
Connection ~ 8150 5850
Wire Wire Line
	8500 5850 8850 5850
Wire Wire Line
	8850 5850 8850 5900
Connection ~ 8500 5850
Wire Wire Line
	7100 6100 7100 6150
Wire Wire Line
	7100 6150 7450 6150
Wire Wire Line
	7450 6150 7450 6100
Connection ~ 7100 6150
Wire Wire Line
	7100 6150 7100 6200
Wire Wire Line
	7450 6150 7800 6150
Wire Wire Line
	7800 6150 7800 6100
Connection ~ 7450 6150
Wire Wire Line
	7800 6150 8150 6150
Wire Wire Line
	8150 6150 8150 6100
Connection ~ 7800 6150
Wire Wire Line
	8150 6150 8500 6150
Wire Wire Line
	8500 6150 8500 6100
Connection ~ 8150 6150
Wire Wire Line
	8500 6150 8850 6150
Wire Wire Line
	8850 6150 8850 6100
Connection ~ 8500 6150
$Comp
L power:GND #PWR0124
U 1 1 5DF36B33
P 7100 6200
F 0 "#PWR0124" H 7100 5950 50  0001 C CNN
F 1 "GND" H 7105 6027 50  0000 C CNN
F 2 "" H 7100 6200 50  0001 C CNN
F 3 "" H 7100 6200 50  0001 C CNN
	1    7100 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C78
U 1 1 5DF54B43
P 9450 6000
F 0 "C78" H 9542 6046 50  0000 L CNN
F 1 "100nF" H 9542 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9450 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 9450 6000 50  0001 C CNN
	1    9450 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C79
U 1 1 5DF5556B
P 9850 6000
F 0 "C79" H 9942 6046 50  0000 L CNN
F 1 "100nF" H 9942 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9850 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 9850 6000 50  0001 C CNN
	1    9850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5850 9450 5850
Wire Wire Line
	9450 5850 9450 5900
Connection ~ 8850 5850
Wire Wire Line
	9450 5850 9850 5850
Wire Wire Line
	9850 5850 9850 5900
Connection ~ 9450 5850
Wire Wire Line
	8850 6150 9450 6150
Wire Wire Line
	9450 6150 9450 6100
Connection ~ 8850 6150
Wire Wire Line
	9450 6150 9850 6150
Wire Wire Line
	9850 6150 9850 6100
Connection ~ 9450 6150
$Comp
L Device:C_Small C80
U 1 1 5DF730B3
P 10450 6000
F 0 "C80" H 10542 6046 50  0000 L CNN
F 1 "1uF" H 10542 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10450 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10A105MP8NNNC/1276-1866-1-ND/3889952" H 10450 6000 50  0001 C CNN
	1    10450 6000
	1    0    0    -1  
$EndComp
Connection ~ 9850 5850
Connection ~ 9850 6150
$Comp
L Device:C_Small C81
U 1 1 5DF8C174
P 10900 6000
F 0 "C81" H 10992 6046 50  0000 L CNN
F 1 "10uF" H 10992 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10900 6000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 10900 6000 50  0001 C CNN
	1    10900 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 5850 10900 5900
Wire Wire Line
	10900 6100 10900 6150
Wire Wire Line
	9850 5850 10450 5850
Wire Wire Line
	9850 6150 10450 6150
Wire Wire Line
	10450 5900 10450 5850
Connection ~ 10450 5850
Wire Wire Line
	10450 5850 10900 5850
Wire Wire Line
	10450 6150 10450 6100
Connection ~ 10450 6150
Wire Wire Line
	10450 6150 10900 6150
$Comp
L Device:C_Small C58
U 1 1 5DFD2F78
P 8450 4400
F 0 "C58" H 8542 4446 50  0000 L CNN
F 1 "22nF" H 8542 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8450 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 8450 4400 50  0001 C CNN
	1    8450 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C59
U 1 1 5DFD3554
P 8800 4400
F 0 "C59" H 8892 4446 50  0000 L CNN
F 1 "22nF" H 8892 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8800 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 8800 4400 50  0001 C CNN
	1    8800 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C60
U 1 1 5DFD384B
P 9150 4400
F 0 "C60" H 9242 4446 50  0000 L CNN
F 1 "22nF" H 9242 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9150 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 9150 4400 50  0001 C CNN
	1    9150 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C61
U 1 1 5DFD3C4F
P 9500 4400
F 0 "C61" H 9592 4446 50  0000 L CNN
F 1 "22nF" H 9592 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9500 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 9500 4400 50  0001 C CNN
	1    9500 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C62
U 1 1 5DFD407E
P 9850 4400
F 0 "C62" H 9942 4446 50  0000 L CNN
F 1 "22nF" H 9942 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9850 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 9850 4400 50  0001 C CNN
	1    9850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C63
U 1 1 5DFD4088
P 10200 4400
F 0 "C63" H 10292 4446 50  0000 L CNN
F 1 "22nF" H 10292 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10200 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 10200 4400 50  0001 C CNN
	1    10200 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C64
U 1 1 5DFD4092
P 10550 4400
F 0 "C64" H 10642 4446 50  0000 L CNN
F 1 "22nF" H 10642 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10550 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 10550 4400 50  0001 C CNN
	1    10550 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C65
U 1 1 5DFD409C
P 10900 4400
F 0 "C65" H 10992 4446 50  0000 L CNN
F 1 "22nF" H 10992 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10900 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206016/732-7935-1-ND/5454562" H 10900 4400 50  0001 C CNN
	1    10900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4300 8450 4250
Wire Wire Line
	8450 4250 8800 4250
Wire Wire Line
	8800 4250 8800 4300
Wire Wire Line
	8800 4250 9150 4250
Wire Wire Line
	9150 4250 9150 4300
Connection ~ 8800 4250
Wire Wire Line
	9150 4250 9500 4250
Wire Wire Line
	9500 4250 9500 4300
Connection ~ 9150 4250
Wire Wire Line
	9500 4250 9850 4250
Wire Wire Line
	9850 4250 9850 4300
Connection ~ 9500 4250
Wire Wire Line
	9850 4250 10200 4250
Wire Wire Line
	10200 4250 10200 4300
Connection ~ 9850 4250
Wire Wire Line
	10200 4250 10550 4250
Wire Wire Line
	10550 4250 10550 4300
Connection ~ 10200 4250
Wire Wire Line
	10550 4250 10900 4250
Wire Wire Line
	10900 4250 10900 4300
Connection ~ 10550 4250
Wire Wire Line
	10900 4500 10900 4550
Wire Wire Line
	10900 4550 10550 4550
Wire Wire Line
	10550 4500 10550 4550
Wire Wire Line
	10550 4550 10200 4550
Wire Wire Line
	10200 4550 10200 4500
Connection ~ 10550 4550
Wire Wire Line
	10200 4550 9850 4550
Wire Wire Line
	9850 4550 9850 4500
Connection ~ 10200 4550
Wire Wire Line
	9850 4550 9500 4550
Wire Wire Line
	9500 4550 9500 4500
Connection ~ 9850 4550
Wire Wire Line
	9500 4550 9150 4550
Wire Wire Line
	9150 4550 9150 4500
Connection ~ 9500 4550
Wire Wire Line
	9150 4550 8800 4550
Wire Wire Line
	8800 4550 8800 4500
Connection ~ 9150 4550
Wire Wire Line
	8800 4550 8450 4550
Wire Wire Line
	8450 4550 8450 4500
Connection ~ 8800 4550
$Comp
L power:GND #PWR0111
U 1 1 5E068FA4
P 8450 4600
F 0 "#PWR0111" H 8450 4350 50  0001 C CNN
F 1 "GND" H 8455 4427 50  0000 C CNN
F 2 "" H 8450 4600 50  0001 C CNN
F 3 "" H 8450 4600 50  0001 C CNN
	1    8450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4600 8450 4550
Connection ~ 8450 4550
$Comp
L power:+1V2 #PWR0109
U 1 1 5E073AB0
P 8450 4200
F 0 "#PWR0109" H 8450 4050 50  0001 C CNN
F 1 "+1V2" H 8465 4373 50  0000 C CNN
F 2 "" H 8450 4200 50  0001 C CNN
F 3 "" H 8450 4200 50  0001 C CNN
	1    8450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4200 8450 4250
Connection ~ 8450 4250
$Comp
L Device:C_Small C57
U 1 1 5E0D1592
P 10900 3550
F 0 "C57" H 10992 3596 50  0000 L CNN
F 1 "2.2nF" H 10992 3505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10900 3550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 10900 3550 50  0001 C CNN
	1    10900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3450 8450 3400
Wire Wire Line
	8450 3400 8800 3400
Wire Wire Line
	8800 3400 8800 3450
Wire Wire Line
	8800 3400 9150 3400
Wire Wire Line
	9150 3400 9150 3450
Connection ~ 8800 3400
Wire Wire Line
	9150 3400 9500 3400
Wire Wire Line
	9500 3400 9500 3450
Connection ~ 9150 3400
Wire Wire Line
	9500 3400 9850 3400
Wire Wire Line
	9850 3400 9850 3450
Connection ~ 9500 3400
Wire Wire Line
	9850 3400 10200 3400
Wire Wire Line
	10200 3400 10200 3450
Connection ~ 9850 3400
Wire Wire Line
	10200 3400 10550 3400
Wire Wire Line
	10550 3400 10550 3450
Connection ~ 10200 3400
Wire Wire Line
	10550 3400 10900 3400
Wire Wire Line
	10900 3400 10900 3450
Connection ~ 10550 3400
Wire Wire Line
	10900 3650 10900 3700
Wire Wire Line
	10900 3700 10550 3700
Wire Wire Line
	10550 3650 10550 3700
Wire Wire Line
	10550 3700 10200 3700
Wire Wire Line
	10200 3700 10200 3650
Connection ~ 10550 3700
Wire Wire Line
	10200 3700 9850 3700
Wire Wire Line
	9850 3700 9850 3650
Connection ~ 10200 3700
Wire Wire Line
	9850 3700 9500 3700
Wire Wire Line
	9500 3700 9500 3650
Connection ~ 9850 3700
Wire Wire Line
	9500 3700 9150 3700
Wire Wire Line
	9150 3700 9150 3650
Connection ~ 9500 3700
Wire Wire Line
	9150 3700 8800 3700
Wire Wire Line
	8800 3700 8800 3650
Connection ~ 9150 3700
Wire Wire Line
	8800 3700 8450 3700
Wire Wire Line
	8450 3700 8450 3650
Connection ~ 8800 3700
$Comp
L power:GND #PWR0108
U 1 1 5E0D15C6
P 8450 3750
F 0 "#PWR0108" H 8450 3500 50  0001 C CNN
F 1 "GND" H 8455 3577 50  0000 C CNN
F 2 "" H 8450 3750 50  0001 C CNN
F 3 "" H 8450 3750 50  0001 C CNN
	1    8450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3750 8450 3700
Connection ~ 8450 3700
$Comp
L power:+1V2 #PWR0107
U 1 1 5E0D15D2
P 8450 3350
F 0 "#PWR0107" H 8450 3200 50  0001 C CNN
F 1 "+1V2" H 8465 3523 50  0000 C CNN
F 2 "" H 8450 3350 50  0001 C CNN
F 3 "" H 8450 3350 50  0001 C CNN
	1    8450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3350 8450 3400
Connection ~ 8450 3400
$Comp
L Device:C_Small C56
U 1 1 5E0E6993
P 10550 3550
F 0 "C56" H 10642 3596 50  0000 L CNN
F 1 "2.2nF" H 10642 3505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10550 3550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 10550 3550 50  0001 C CNN
	1    10550 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C55
U 1 1 5E0E6C7E
P 10200 3550
F 0 "C55" H 10292 3596 50  0000 L CNN
F 1 "2.2nF" H 10292 3505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10200 3550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 10200 3550 50  0001 C CNN
	1    10200 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C54
U 1 1 5E0E7051
P 9850 3550
F 0 "C54" H 9942 3596 50  0000 L CNN
F 1 "2.2nF" H 9942 3505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9850 3550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 9850 3550 50  0001 C CNN
	1    9850 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C53
U 1 1 5E0E7382
P 9500 3550
F 0 "C53" H 9592 3596 50  0000 L CNN
F 1 "2.2nF" H 9592 3505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9500 3550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 9500 3550 50  0001 C CNN
	1    9500 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C52
U 1 1 5E0E76D7
P 9150 3550
F 0 "C52" H 9242 3596 50  0000 L CNN
F 1 "2.2nF" H 9242 3505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9150 3550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 9150 3550 50  0001 C CNN
	1    9150 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C51
U 1 1 5E0E7A3E
P 8800 3550
F 0 "C51" H 8892 3596 50  0000 L CNN
F 1 "2.2nF" H 8892 3505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8800 3550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 8800 3550 50  0001 C CNN
	1    8800 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C50
U 1 1 5E0E7D2E
P 8450 3550
F 0 "C50" H 8542 3596 50  0000 L CNN
F 1 "2.2nF" H 8542 3505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8450 3550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 8450 3550 50  0001 C CNN
	1    8450 3550
	1    0    0    -1  
$EndComp
Text GLabel 5750 6250 0    50   Input ~ 0
FPGA-CS
Text Label 4200 1000 0    50   ~ 0
CS
Text Label 5800 6250 0    50   ~ 0
CS
Wire Wire Line
	5750 6250 5800 6250
$Comp
L power:+2V5 #PWR0103
U 1 1 5DFECD1A
P 10050 2500
F 0 "#PWR0103" H 10050 2350 50  0001 C CNN
F 1 "+2V5" H 10065 2673 50  0000 C CNN
F 2 "" H 10050 2500 50  0001 C CNN
F 3 "" H 10050 2500 50  0001 C CNN
	1    10050 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C48
U 1 1 5DFEF761
P 10450 2700
F 0 "C48" H 10542 2746 50  0000 L CNN
F 1 "100nF" H 10542 2655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10450 2700 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 10450 2700 50  0001 C CNN
	1    10450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2800 10050 2850
Wire Wire Line
	10050 2600 10050 2550
Wire Wire Line
	10050 2550 10450 2550
Wire Wire Line
	10450 2550 10450 2600
Connection ~ 10050 2550
Wire Wire Line
	10050 2550 10050 2500
Wire Wire Line
	10450 2800 10450 2850
Wire Wire Line
	10450 2850 10050 2850
Connection ~ 10050 2850
Wire Wire Line
	10050 2850 10050 2900
$Comp
L Parts:+1V2-LN #PWR0102
U 1 1 5E042119
P 9050 2500
F 0 "#PWR0102" H 9050 2350 50  0001 C CNN
F 1 "+1V2-LN" H 9065 2673 50  0000 C CNN
F 2 "" H 9050 2500 50  0001 C CNN
F 3 "" H 9050 2500 50  0001 C CNN
	1    9050 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E04295B
P 9050 2900
F 0 "#PWR0105" H 9050 2650 50  0001 C CNN
F 1 "GND" H 9055 2727 50  0000 C CNN
F 2 "" H 9050 2900 50  0001 C CNN
F 3 "" H 9050 2900 50  0001 C CNN
	1    9050 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C45
U 1 1 5E042D0D
P 9050 2700
F 0 "C45" H 9142 2746 50  0000 L CNN
F 1 "100nF" H 9142 2655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9050 2700 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 9050 2700 50  0001 C CNN
	1    9050 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C46
U 1 1 5E043573
P 9450 2700
F 0 "C46" H 9542 2746 50  0000 L CNN
F 1 "100nF" H 9542 2655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9450 2700 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 9450 2700 50  0001 C CNN
	1    9450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2500 9050 2550
Wire Wire Line
	9050 2550 9450 2550
Wire Wire Line
	9450 2550 9450 2600
Connection ~ 9050 2550
Wire Wire Line
	9050 2550 9050 2600
Wire Wire Line
	9050 2800 9050 2850
Wire Wire Line
	9050 2850 9450 2850
Wire Wire Line
	9450 2850 9450 2800
Connection ~ 9050 2850
Wire Wire Line
	9050 2850 9050 2900
$Comp
L Device:C_Small C47
U 1 1 5E09336F
P 10050 2700
F 0 "C47" H 10142 2746 50  0000 L CNN
F 1 "100nF" H 10142 2655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10050 2700 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 10050 2700 50  0001 C CNN
	1    10050 2700
	1    0    0    -1  
$EndComp
$Comp
L Parts:10CL010 U12
U 10 1 5E1E1598
P 7350 750
F 0 "U12" H 8628 -104 50  0000 L CNN
F 1 "10CL010" H 8628 -195 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 8200 800 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 7350 750 50  0001 C CNN
	10   7350 750 
	1    0    0    -1  
$EndComp
Text Label 6850 1550 0    50   ~ 0
12MHz
Wire Wire Line
	6850 1550 7150 1550
Wire Wire Line
	9650 900  9700 900 
Wire Wire Line
	9700 900  9700 1000
Wire Wire Line
	9700 1000 9750 1000
Connection ~ 9700 900 
Wire Wire Line
	9700 900  9750 900 
Text GLabel 4450 3400 0    50   Input ~ 0
TRANSMIT-ENABLE
Text GLabel 4450 2900 0    50   Input ~ 0
VGA-~CS0
Text GLabel 4450 2100 0    50   Input ~ 0
VGA-~CS1
Text GLabel 4450 2200 0    50   Input ~ 0
VGA-SCK
Text GLabel 4450 2800 0    50   Input ~ 0
VGA-D0
Text GLabel 4450 2000 0    50   Input ~ 0
VGA-D1
$Comp
L Device:C_Small C49
U 1 1 5E10DD5E
P 10850 2700
F 0 "C49" H 10942 2746 50  0000 L CNN
F 1 "100nF" H 10942 2655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10850 2700 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 10850 2700 50  0001 C CNN
	1    10850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 2850 10850 2800
Connection ~ 10450 2850
Wire Wire Line
	10450 2550 10850 2550
Wire Wire Line
	10850 2550 10850 2600
Connection ~ 10450 2550
$Comp
L Parts:10CL010 U12
U 4 1 5E30CC38
P 4700 1300
F 0 "U12" H 5978 796 50  0000 L CNN
F 1 "10CL010" H 5978 705 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 5550 1350 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 4700 1300 50  0001 C CNN
	4    4700 1300
	1    0    0    -1  
$EndComp
$Comp
L Parts:10CL010 U12
U 5 1 5E31183D
P 4700 2500
F 0 "U12" H 5978 1896 50  0000 L CNN
F 1 "10CL010" H 5978 1805 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 5550 2550 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 4700 2500 50  0001 C CNN
	5    4700 2500
	1    0    0    -1  
$EndComp
$Comp
L Parts:10CL010 U12
U 9 1 5E32814E
P 4700 3900
F 0 "U12" H 5978 3546 50  0000 L CNN
F 1 "10CL010" H 5978 3455 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 5550 3950 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 4700 3900 50  0001 C CNN
	9    4700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4300 4500 4300
Wire Wire Line
	4450 4400 4500 4400
Wire Wire Line
	4500 4500 4450 4500
Wire Wire Line
	4450 4600 4500 4600
Wire Wire Line
	2600 7550 2650 7550
Wire Wire Line
	2650 7450 2600 7450
Wire Wire Line
	4450 3700 4500 3700
Wire Wire Line
	4450 3600 4500 3600
Wire Wire Line
	4450 3500 4500 3500
Wire Wire Line
	4450 3400 4500 3400
Wire Wire Line
	4450 2900 4500 2900
Wire Wire Line
	4500 2800 4450 2800
Wire Wire Line
	4450 2200 4500 2200
Wire Wire Line
	4450 2100 4500 2100
Wire Wire Line
	4450 2000 4500 2000
Wire Wire Line
	4450 1600 4500 1600
Wire Wire Line
	4500 1500 4450 1500
Wire Wire Line
	4450 1400 4500 1400
Text GLabel 4450 1500 0    50   Input ~ 0
ADC-SDO
Text GLabel 4450 1600 0    50   Input ~ 0
ADC-SCK
Text GLabel 4450 1400 0    50   Input ~ 0
ADC-~CS
$Comp
L Parts:10CL010 U12
U 2 1 5E01BA98
P 4700 600
F 0 "U12" H 5978 346 50  0000 L CNN
F 1 "10CL010" H 5978 255 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 5550 650 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 4700 600 50  0001 C CNN
	2    4700 600 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1100 4500 1100
Wire Wire Line
	4500 1000 4200 1000
$Comp
L power:GND #PWR0106
U 1 1 5E42C3C3
P 10050 2900
F 0 "#PWR0106" H 10050 2650 50  0001 C CNN
F 1 "GND" H 10055 2727 50  0000 C CNN
F 2 "" H 10050 2900 50  0001 C CNN
F 3 "" H 10050 2900 50  0001 C CNN
	1    10050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 2850 10850 2850
Wire Wire Line
	1300 4000 1200 4000
Connection ~ 1300 4000
Connection ~ 1200 4000
Wire Wire Line
	1200 4000 1200 4200
Text Notes 550  4550 0    50   ~ 0
Layout GNDA traces to minimize noise.
$Comp
L power:GND #PWR0195
U 1 1 5E001EDB
P 7050 1150
F 0 "#PWR0195" H 7050 900 50  0001 C CNN
F 1 "GND" V 7050 975 50  0000 C CNN
F 2 "" H 7050 1150 50  0001 C CNN
F 3 "" H 7050 1150 50  0001 C CNN
	1    7050 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 850  7100 850 
Wire Wire Line
	7100 850  7100 950 
Wire Wire Line
	7100 1150 7050 1150
Wire Wire Line
	7150 950  7100 950 
Connection ~ 7100 950 
Wire Wire Line
	7100 950  7100 1050
Wire Wire Line
	7100 1050 7150 1050
Connection ~ 7100 1050
Wire Wire Line
	7100 1050 7100 1150
Wire Wire Line
	7100 1150 7150 1150
Connection ~ 7100 1150
Wire Wire Line
	7100 1150 7100 1250
Wire Wire Line
	7100 1250 7150 1250
Wire Wire Line
	7100 1250 7100 1350
Wire Wire Line
	7100 1350 7150 1350
Connection ~ 7100 1250
Wire Wire Line
	7100 1350 7100 1450
Wire Wire Line
	7100 1450 7150 1450
Connection ~ 7100 1350
$Comp
L power:GND #PWR0196
U 1 1 5E097F21
P 2550 6300
F 0 "#PWR0196" H 2550 6050 50  0001 C CNN
F 1 "GND" V 2550 6125 50  0000 C CNN
F 2 "" H 2550 6300 50  0001 C CNN
F 3 "" H 2550 6300 50  0001 C CNN
	1    2550 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 6300 2600 6300
Wire Wire Line
	2600 6300 2600 6250
Wire Wire Line
	2600 6250 2650 6250
Wire Wire Line
	2600 6300 2600 6350
Wire Wire Line
	2600 6350 2650 6350
Connection ~ 2600 6300
$Comp
L power:GND #PWR0197
U 1 1 5E0C8A61
P 2550 7150
F 0 "#PWR0197" H 2550 6900 50  0001 C CNN
F 1 "GND" V 2550 6975 50  0000 C CNN
F 2 "" H 2550 7150 50  0001 C CNN
F 3 "" H 2550 7150 50  0001 C CNN
	1    2550 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 7150 2650 7150
$Comp
L power:GND #PWR?
U 1 1 5E0F1093
P 7050 2150
F 0 "#PWR?" H 7050 1900 50  0001 C CNN
F 1 "GND" V 7050 1975 50  0000 C CNN
F 2 "" H 7050 2150 50  0001 C CNN
F 3 "" H 7050 2150 50  0001 C CNN
	1    7050 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 1750 7100 1750
Wire Wire Line
	7100 1750 7100 1850
Wire Wire Line
	7100 2150 7050 2150
Wire Wire Line
	7100 2150 7150 2150
Connection ~ 7100 2150
Wire Wire Line
	7150 2050 7100 2050
Connection ~ 7100 2050
Wire Wire Line
	7100 2050 7100 2150
Wire Wire Line
	7100 1950 7150 1950
Connection ~ 7100 1950
Wire Wire Line
	7100 1950 7100 2050
Wire Wire Line
	7150 1850 7100 1850
Connection ~ 7100 1850
Wire Wire Line
	7100 1850 7100 1950
Wire Wire Line
	7100 2150 7100 2250
Wire Wire Line
	7100 2250 7150 2250
Wire Wire Line
	7100 2250 7100 2350
Wire Wire Line
	7100 2350 7150 2350
Connection ~ 7100 2250
Wire Wire Line
	7100 2350 7100 2450
Wire Wire Line
	7100 2450 7150 2450
Connection ~ 7100 2350
$EndSCHEMATC
