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
P 5450 1150
F 0 "U?" H 5450 1465 50  0000 C CNN
F 1 "ECS-5032MV" H 5450 1374 50  0000 C CNN
F 2 "Parts:ECS-5032MV" H 5450 850 50  0001 C CNN
F 3 "https://ecsxtal.com/ecs-5032mv" H 5450 750 50  0001 C CNN
	1    5450 1150
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
P 1100 2400
F 0 "#PWR?" H 1100 2250 50  0001 C CNN
F 1 "+2V5" H 1115 2573 50  0000 C CNN
F 2 "" H 1100 2400 50  0001 C CNN
F 3 "" H 1100 2400 50  0001 C CNN
	1    1100 2400
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
	1350 2300 1300 2300
Wire Wire Line
	1300 2300 1300 2400
Wire Wire Line
	1300 2400 1350 2400
Wire Wire Line
	1100 2400 1300 2400
Connection ~ 1300 2400
Wire Wire Line
	1350 2000 1300 2000
Wire Wire Line
	1300 2100 1350 2100
Text Label 900  2000 0    50   ~ 0
3V3-PLL
Wire Wire Line
	1300 2000 1300 2100
Wire Wire Line
	900  2000 1300 2000
Connection ~ 1300 2000
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
P 2600 5050
F 0 "U?" H 3878 3796 50  0000 L CNN
F 1 "10CL010" H 3878 3705 50  0000 L CNN
F 2 "Parts:EQFP144-PAD" H 3450 5100 50  0001 L BNN
F 3 "https://www.intel.com/content/www/us/en/programmable/products/fpga/cyclone-series/cyclone-10/cyclone-10-lp/support.html" H 2600 5050 50  0001 C CNN
	11   2600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6550 2350 6550
Wire Wire Line
	2350 6550 2350 6650
Wire Wire Line
	2350 6650 2400 6650
Wire Wire Line
	2400 6750 2350 6750
Wire Wire Line
	2350 6750 2350 6650
Connection ~ 2350 6650
Text GLabel 5350 7300 0    50   Input ~ 0
FPGA-TDI
Text GLabel 5350 7400 0    50   Input ~ 0
FPGA-TCK
Text GLabel 5350 7500 0    50   Input ~ 0
FPGA-TMS
Text GLabel 5350 7600 0    50   Input ~ 0
FPGA-TDO
Wire Wire Line
	2400 6050 2000 6050
$Comp
L Device:R R?
U 1 1 5DEDA0A1
P 1550 5350
F 0 "R?" V 1343 5350 50  0000 C CNN
F 1 "10k" V 1434 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1480 5350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1550 5350 50  0001 C CNN
	1    1550 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 6150 2400 6150
Wire Wire Line
	1350 5350 1400 5350
Text Label 1750 5350 0    50   ~ 0
FPGA-nSTATUS
Text Label 1750 5450 0    50   ~ 0
FPGA-DCLK
Text Label 1750 5550 0    50   ~ 0
FPGA-DATA0
Wire Wire Line
	850  5650 900  5650
Text Label 1750 5650 0    50   ~ 0
FPGA-nCONFIG
Wire Wire Line
	1300 6950 1350 6950
Text Label 1700 6950 0    50   ~ 0
FPGA-CRC_ERROR
Wire Wire Line
	1100 6850 1150 6850
Wire Wire Line
	1300 6450 1350 6450
Wire Wire Line
	2300 6650 2350 6650
Text Label 1700 6850 0    50   ~ 0
FPGA-INIT_DONE
Text Label 1700 6450 0    50   ~ 0
FPGA-CONF_DONE
Text Label 2000 5750 0    50   ~ 0
FPGA-TDI
Text Label 2000 5850 0    50   ~ 0
FPGA-TCK
Text Label 2000 5950 0    50   ~ 0
FPGA-TMS
Text Label 2000 6050 0    50   ~ 0
FPGA-TDO
Wire Wire Line
	1800 5950 2400 5950
Wire Wire Line
	1400 5750 2400 5750
Wire Wire Line
	1600 5850 2400 5850
$Comp
L Device:R R?
U 1 1 5DD7DCEC
P 1050 5650
F 0 "R?" V 843 5650 50  0000 C CNN
F 1 "10k" V 934 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 980 5650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1050 5650 50  0001 C CNN
	1    1050 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7DFB2
P 1500 6450
F 0 "R?" V 1293 6450 50  0000 C CNN
F 1 "10k" V 1384 6450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1430 6450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1500 6450 50  0001 C CNN
	1    1500 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7E4C4
P 1300 6850
F 0 "R?" V 1093 6850 50  0000 C CNN
F 1 "10k" V 1184 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1230 6850 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1300 6850 50  0001 C CNN
	1    1300 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7E7CA
P 1500 6950
F 0 "R?" V 1293 6950 50  0000 C CNN
F 1 "10k" V 1384 6950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1430 6950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1500 6950 50  0001 C CNN
	1    1500 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7F3E6
P 1250 5750
F 0 "R?" V 1043 5750 50  0000 C CNN
F 1 "10k" V 1134 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1180 5750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1250 5750 50  0001 C CNN
	1    1250 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7F898
P 1650 5950
F 0 "R?" V 1443 5950 50  0000 C CNN
F 1 "10k" V 1534 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1580 5950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1650 5950 50  0001 C CNN
	1    1650 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7FA63
P 1850 6050
F 0 "R?" V 1643 6050 50  0000 C CNN
F 1 "10k" V 1734 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1780 6050 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 1850 6050 50  0001 C CNN
	1    1850 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 5950 1500 5950
Wire Wire Line
	1700 6050 1650 6050
$Comp
L Device:R R?
U 1 1 5DD8AB80
P 1450 5850
F 0 "R?" V 1243 5850 50  0000 C CNN
F 1 "1k" V 1334 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1380 5850 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 1450 5850 50  0001 C CNN
	1    1450 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 5850 1300 5850
$Comp
L power:GND #PWR?
U 1 1 5DD8EAB5
P 1250 5850
F 0 "#PWR?" H 1250 5600 50  0001 C CNN
F 1 "GND" V 1250 5675 50  0000 C CNN
F 2 "" H 1250 5850 50  0001 C CNN
F 3 "" H 1250 5850 50  0001 C CNN
	1    1250 5850
	0    1    1    0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5DD94A03
P 1050 5750
F 0 "#PWR?" H 1050 5600 50  0001 C CNN
F 1 "+2V5" V 1050 5950 50  0000 C CNN
F 2 "" H 1050 5750 50  0001 C CNN
F 3 "" H 1050 5750 50  0001 C CNN
	1    1050 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DEE2282
P 1350 5350
F 0 "#PWR?" H 1350 5200 50  0001 C CNN
F 1 "+3V3" V 1350 5450 50  0000 L CNN
F 2 "" H 1350 5350 50  0001 C CNN
F 3 "" H 1350 5350 50  0001 C CNN
	1    1350 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDACD3F
P 850 5650
F 0 "#PWR?" H 850 5500 50  0001 C CNN
F 1 "+3V3" V 850 5750 50  0000 L CNN
F 2 "" H 850 5650 50  0001 C CNN
F 3 "" H 850 5650 50  0001 C CNN
	1    850  5650
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5DDADC93
P 1450 5950
F 0 "#PWR?" H 1450 5800 50  0001 C CNN
F 1 "+2V5" V 1450 6150 50  0000 C CNN
F 2 "" H 1450 5950 50  0001 C CNN
F 3 "" H 1450 5950 50  0001 C CNN
	1    1450 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5DDADF3E
P 1650 6050
F 0 "#PWR?" H 1650 5900 50  0001 C CNN
F 1 "+2V5" V 1650 6250 50  0000 C CNN
F 2 "" H 1650 6050 50  0001 C CNN
F 3 "" H 1650 6050 50  0001 C CNN
	1    1650 6050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDB0FE1
P 1300 6450
F 0 "#PWR?" H 1300 6300 50  0001 C CNN
F 1 "+3V3" V 1300 6550 50  0000 L CNN
F 2 "" H 1300 6450 50  0001 C CNN
F 3 "" H 1300 6450 50  0001 C CNN
	1    1300 6450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDB15B2
P 1100 6850
F 0 "#PWR?" H 1100 6700 50  0001 C CNN
F 1 "+3V3" V 1100 6950 50  0000 L CNN
F 2 "" H 1100 6850 50  0001 C CNN
F 3 "" H 1100 6850 50  0001 C CNN
	1    1100 6850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDB1889
P 1300 6950
F 0 "#PWR?" H 1300 6800 50  0001 C CNN
F 1 "+3V3" V 1300 7050 50  0000 L CNN
F 2 "" H 1300 6950 50  0001 C CNN
F 3 "" H 1300 6950 50  0001 C CNN
	1    1300 6950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDB19BB
P 2350 6150
F 0 "#PWR?" H 2350 5900 50  0001 C CNN
F 1 "GND" V 2350 5975 50  0000 C CNN
F 2 "" H 2350 6150 50  0001 C CNN
F 3 "" H 2350 6150 50  0001 C CNN
	1    2350 6150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDB20C5
P 2300 6650
F 0 "#PWR?" H 2300 6400 50  0001 C CNN
F 1 "GND" V 2300 6475 50  0000 C CNN
F 2 "" H 2300 6650 50  0001 C CNN
F 3 "" H 2300 6650 50  0001 C CNN
	1    2300 6650
	0    1    1    0   
$EndComp
Text Label 5400 6450 0    50   ~ 0
FPGA-nSTATUS
Text Label 5400 6550 0    50   ~ 0
FPGA-DCLK
Text Label 5400 6650 0    50   ~ 0
FPGA-DATA0
Text Label 5400 6750 0    50   ~ 0
FPGA-nCONFIG
Text Label 5400 6850 0    50   ~ 0
FPGA-CONF_DONE
Text Label 5400 6950 0    50   ~ 0
FPGA-INIT_DONE
Text Label 5400 7050 0    50   ~ 0
FPGA-CRC_ERROR
Text Label 5400 7300 0    50   ~ 0
FPGA-TDI
Text Label 5400 7400 0    50   ~ 0
FPGA-TCK
Text Label 5400 7500 0    50   ~ 0
FPGA-TMS
Text Label 5400 7600 0    50   ~ 0
FPGA-TDO
Wire Wire Line
	5350 7300 5400 7300
Wire Wire Line
	5400 7400 5350 7400
Wire Wire Line
	5350 7500 5400 7500
Wire Wire Line
	5400 7600 5350 7600
Wire Wire Line
	1700 5350 2400 5350
Wire Wire Line
	1750 5450 2400 5450
Wire Wire Line
	1750 5550 2400 5550
Wire Wire Line
	1200 5650 2400 5650
Wire Wire Line
	1050 5750 1100 5750
Wire Wire Line
	1450 6850 2400 6850
Wire Wire Line
	1650 6950 2400 6950
Wire Wire Line
	1650 6450 2400 6450
Text GLabel 5350 7050 0    50   Input ~ 0
FPGA-CRC_ERROR
Text GLabel 5350 6950 0    50   Input ~ 0
FPGA-INIT_DONE
Text GLabel 5350 6850 0    50   Input ~ 0
FPGA-CONF_DONE
Text GLabel 5350 6750 0    50   Input ~ 0
FPGA-nCONFIG
Text GLabel 5350 6650 0    50   Input ~ 0
FPGA-DATA0
Text GLabel 5350 6550 0    50   Input ~ 0
FPGA-DCLK
Text GLabel 5350 6450 0    50   Input ~ 0
FPGA-nSTATUS
Wire Wire Line
	5350 7050 5400 7050
Wire Wire Line
	5400 6950 5350 6950
Wire Wire Line
	5350 6850 5400 6850
Wire Wire Line
	5400 6750 5350 6750
Wire Wire Line
	5350 6650 5400 6650
Wire Wire Line
	5400 6550 5350 6550
Wire Wire Line
	5350 6450 5400 6450
$EndSCHEMATC
