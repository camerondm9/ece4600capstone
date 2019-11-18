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
L Parts:10CL010 U?
U 1 1 5DD19E68
P 1550 600
F 0 "U?" H 2828 -754 50  0000 L CNN
F 1 "10CL010" H 2828 -845 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 2400 650 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 1550 600 50  0001 C CNN
	1    1550 600 
	1    0    0    -1  
$EndComp
$Comp
L Parts:10CL010 U?
U 12 1 5DD1C6BA
P 1550 3600
F 0 "U?" H 2828 3296 50  0000 L CNN
F 1 "10CL010" H 2828 3205 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 2400 3650 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 1550 3600 50  0001 C CNN
	12   1550 3600
	1    0    0    -1  
$EndComp
$Comp
L Parts:ECS-5032MV U?
U 1 1 5DD22CF7
P 10400 1000
F 0 "U?" H 10400 1315 50  0000 C CNN
F 1 "ECS-5032MV" H 10400 1224 50  0000 C CNN
F 2 "Parts:ECS-5032MV" H 10400 700 50  0001 C CNN
F 3 "https://ecsxtal.com/ecs-5032mv" H 10400 600 50  0001 C CNN
	1    10400 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DE1FF3C
P 1100 850
F 0 "#PWR?" H 1100 700 50  0001 C CNN
F 1 "+3V3" H 1115 1023 50  0000 C CNN
F 2 "" H 1100 850 50  0001 C CNN
F 3 "" H 1100 850 50  0001 C CNN
	1    1100 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+1V2 #PWR?
U 1 1 5DE20963
P 1100 2750
F 0 "#PWR?" H 1100 2600 50  0001 C CNN
F 1 "+1V2" H 1115 2923 50  0000 C CNN
F 2 "" H 1100 2750 50  0001 C CNN
F 3 "" H 1100 2750 50  0001 C CNN
	1    1100 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5DE217EB
P 1100 2100
F 0 "#PWR?" H 1100 1950 50  0001 C CNN
F 1 "+2V5" H 1115 2273 50  0000 C CNN
F 2 "" H 1100 2100 50  0001 C CNN
F 3 "" H 1100 2100 50  0001 C CNN
	1    1100 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE22333
P 1200 4250
F 0 "#PWR?" H 1200 4000 50  0001 C CNN
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
$Comp
L Parts:GNDA-FPGA #PWR?
U 1 1 5DE2E502
P 800 4250
F 0 "#PWR?" H 800 4000 50  0001 C CNN
F 1 "GNDA-FPGA" H 805 4077 50  0000 C CNN
F 2 "" H 800 4250 50  0001 C CNN
F 3 "" H 800 4250 50  0001 C CNN
	1    800  4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3700 1200 4200
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5DE2A792
P 1000 4200
F 0 "NT?" H 1000 4381 50  0000 C CNN
F 1 "Net-Tie_2" H 1000 4290 50  0000 C CNN
F 2 "" H 1000 4200 50  0001 C CNN
F 3 "~" H 1000 4200 50  0001 C CNN
	1    1000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4200 1200 4200
Wire Wire Line
	800  4200 800  4250
Connection ~ 800  4200
Wire Wire Line
	900  4200 800  4200
Wire Wire Line
	800  3900 800  4200
Wire Wire Line
	1300 3900 1300 4000
Wire Wire Line
	800  3900 1300 3900
Connection ~ 1300 3900
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
Text Label 900  2300 0    50   ~ 0
1V2-PLL
Wire Wire Line
	1300 2300 1300 2400
Wire Wire Line
	900  2300 1300 2300
Connection ~ 1300 2300
Text GLabel 4550 2000 0    50   Input ~ 0
DAC-~CS
Text GLabel 4550 2100 0    50   Input ~ 0
DAC-SCK
Text GLabel 4550 2200 0    50   Input ~ 0
DAC-SDI
Text GLabel 4550 2500 0    50   Input ~ 0
ADC-~CS
Text GLabel 4550 2600 0    50   Input ~ 0
ADC-SCK
Text GLabel 4550 2700 0    50   Input ~ 0
ADC-SDO
$Comp
L Parts:10CL010 U?
U 11 1 5DE8AD4C
P 2850 5050
F 0 "U?" H 4128 3796 50  0000 L CNN
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
L Device:R R?
U 1 1 5DEDA0A1
P 1900 5350
F 0 "R?" V 1693 5350 50  0000 C CNN
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
L Device:R R?
U 1 1 5DD7DCEC
P 1350 5650
F 0 "R?" V 1143 5650 50  0000 C CNN
F 1 "10k" V 1234 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1280 5650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1350 5650 50  0001 C CNN
	1    1350 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7DFB2
P 2050 6450
F 0 "R?" V 1843 6450 50  0000 C CNN
F 1 "10k" V 1934 6450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1980 6450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2050 6450 50  0001 C CNN
	1    2050 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7E4C4
P 1800 6850
F 0 "R?" V 1593 6850 50  0000 C CNN
F 1 "10k" V 1684 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1730 6850 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1800 6850 50  0001 C CNN
	1    1800 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7E7CA
P 2050 6950
F 0 "R?" V 1843 6950 50  0000 C CNN
F 1 "10k" V 1934 6950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1980 6950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2050 6950 50  0001 C CNN
	1    2050 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7F3E6
P 1600 5750
F 0 "R?" V 1393 5750 50  0000 C CNN
F 1 "10k" V 1484 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1530 5750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1600 5750 50  0001 C CNN
	1    1600 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7F898
P 2100 5950
F 0 "R?" V 1893 5950 50  0000 C CNN
F 1 "10k" V 1984 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2030 5950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2100 5950 50  0001 C CNN
	1    2100 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7FA63
P 2350 6050
F 0 "R?" V 2143 6050 50  0000 C CNN
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
L Device:R R?
U 1 1 5DD8AB80
P 1850 5850
F 0 "R?" V 1643 5850 50  0000 C CNN
F 1 "1k" V 1734 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1780 5850 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 1850 5850 50  0001 C CNN
	1    1850 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 5850 1700 5850
$Comp
L power:GND #PWR?
U 1 1 5DD8EAB5
P 1650 5850
F 0 "#PWR?" H 1650 5600 50  0001 C CNN
F 1 "GND" V 1650 5675 50  0000 C CNN
F 2 "" H 1650 5850 50  0001 C CNN
F 3 "" H 1650 5850 50  0001 C CNN
	1    1650 5850
	0    1    1    0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5DD94A03
P 1400 5750
F 0 "#PWR?" H 1400 5600 50  0001 C CNN
F 1 "+2V5" V 1400 5950 50  0000 C CNN
F 2 "" H 1400 5750 50  0001 C CNN
F 3 "" H 1400 5750 50  0001 C CNN
	1    1400 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DEE2282
P 1700 5350
F 0 "#PWR?" H 1700 5200 50  0001 C CNN
F 1 "+3V3" V 1700 5450 50  0000 L CNN
F 2 "" H 1700 5350 50  0001 C CNN
F 3 "" H 1700 5350 50  0001 C CNN
	1    1700 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDACD3F
P 1150 5650
F 0 "#PWR?" H 1150 5500 50  0001 C CNN
F 1 "+3V3" V 1150 5750 50  0000 L CNN
F 2 "" H 1150 5650 50  0001 C CNN
F 3 "" H 1150 5650 50  0001 C CNN
	1    1150 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5DDADC93
P 1900 5950
F 0 "#PWR?" H 1900 5800 50  0001 C CNN
F 1 "+2V5" V 1900 6150 50  0000 C CNN
F 2 "" H 1900 5950 50  0001 C CNN
F 3 "" H 1900 5950 50  0001 C CNN
	1    1900 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5DDADF3E
P 2150 6050
F 0 "#PWR?" H 2150 5900 50  0001 C CNN
F 1 "+2V5" V 2150 6250 50  0000 C CNN
F 2 "" H 2150 6050 50  0001 C CNN
F 3 "" H 2150 6050 50  0001 C CNN
	1    2150 6050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDB0FE1
P 1850 6450
F 0 "#PWR?" H 1850 6300 50  0001 C CNN
F 1 "+3V3" V 1850 6550 50  0000 L CNN
F 2 "" H 1850 6450 50  0001 C CNN
F 3 "" H 1850 6450 50  0001 C CNN
	1    1850 6450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDB15B2
P 1600 6850
F 0 "#PWR?" H 1600 6700 50  0001 C CNN
F 1 "+3V3" V 1600 6950 50  0000 L CNN
F 2 "" H 1600 6850 50  0001 C CNN
F 3 "" H 1600 6850 50  0001 C CNN
	1    1600 6850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDB1889
P 1850 6950
F 0 "#PWR?" H 1850 6800 50  0001 C CNN
F 1 "+3V3" V 1850 7050 50  0000 L CNN
F 2 "" H 1850 6950 50  0001 C CNN
F 3 "" H 1850 6950 50  0001 C CNN
	1    1850 6950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDB19BB
P 2600 6150
F 0 "#PWR?" H 2600 5900 50  0001 C CNN
F 1 "GND" V 2600 5975 50  0000 C CNN
F 2 "" H 2600 6150 50  0001 C CNN
F 3 "" H 2600 6150 50  0001 C CNN
	1    2600 6150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDB20C5
P 2550 6650
F 0 "#PWR?" H 2550 6400 50  0001 C CNN
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
L Device:R R?
U 1 1 5DF0E9BD
P 2150 5450
F 0 "R?" V 1943 5450 50  0000 C CNN
F 1 "10k" V 2034 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2080 5450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2150 5450 50  0001 C CNN
	1    2150 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF0EB30
P 1100 5550
F 0 "R?" V 893 5550 50  0000 C CNN
F 1 "10k" V 984 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1030 5550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1100 5550 50  0001 C CNN
	1    1100 5550
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DF0EC9E
P 900 5550
F 0 "#PWR?" H 900 5400 50  0001 C CNN
F 1 "+3V3" V 900 5650 50  0000 L CNN
F 2 "" H 900 5550 50  0001 C CNN
F 3 "" H 900 5550 50  0001 C CNN
	1    900  5550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DF40C3D
P 1950 5450
F 0 "#PWR?" H 1950 5300 50  0001 C CNN
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
$Comp
L Device:R R?
U 1 1 5DF6FF4E
P 1650 5250
F 0 "R?" V 1443 5250 50  0000 C CNN
F 1 "10k" V 1534 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1580 5250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1650 5250 50  0001 C CNN
	1    1650 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 5250 2650 5250
$Comp
L power:+3V3 #PWR?
U 1 1 5DF74860
P 1450 5250
F 0 "#PWR?" H 1450 5100 50  0001 C CNN
F 1 "+3V3" V 1450 5350 50  0000 L CNN
F 2 "" H 1450 5250 50  0001 C CNN
F 3 "" H 1450 5250 50  0001 C CNN
	1    1450 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 5250 1500 5250
Text Label 2300 5250 0    50   ~ 0
DOUT
Text Label 5800 6350 0    50   ~ 0
DOUT
Text GLabel 5750 6350 0    50   Input ~ 0
FPGA-DOUT
Wire Wire Line
	5750 6350 5800 6350
Text Notes 5400 3600 0    50   ~ 0
TODO: Add decoupling capacitors to all ICs
Text GLabel 5750 5400 0    50   Input ~ 0
FPGA-LINK0
Text GLabel 5750 5500 0    50   Input ~ 0
FPGA-LINK1
Text GLabel 5750 5600 0    50   Input ~ 0
FPGA-LINK2
Text GLabel 5750 5700 0    50   Input ~ 0
FPGA-LINK3
Text GLabel 5750 5800 0    50   Input ~ 0
FPGA-LINK4
$Comp
L power:+3V3 #PWR?
U 1 1 5DD97BF5
P 10000 950
F 0 "#PWR?" H 10000 800 50  0001 C CNN
F 1 "+3V3" H 10015 1123 50  0000 C CNN
F 2 "" H 10000 950 50  0001 C CNN
F 3 "" H 10000 950 50  0001 C CNN
	1    10000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 950  10050 950 
$Comp
L power:GND #PWR?
U 1 1 5DD9CD01
P 10800 1050
F 0 "#PWR?" H 10800 800 50  0001 C CNN
F 1 "GND" H 10805 877 50  0000 C CNN
F 2 "" H 10800 1050 50  0001 C CNN
F 3 "" H 10800 1050 50  0001 C CNN
	1    10800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1050 10800 1050
Text Label 10800 950  0    50   ~ 0
12MHz
Wire Wire Line
	10700 950  10800 950 
Wire Wire Line
	10050 950  10050 1050
Wire Wire Line
	10050 1050 10100 1050
Connection ~ 10050 950 
Wire Wire Line
	10050 950  10100 950 
$EndSCHEMATC
