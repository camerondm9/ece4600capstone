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
P 1600 5700
F 0 "U?" H 1600 6015 50  0000 C CNN
F 1 "ECS-5032MV" H 1600 5924 50  0000 C CNN
F 2 "Parts:ECS-5032MV" H 1600 5400 50  0001 C CNN
F 3 "https://ecsxtal.com/ecs-5032mv" H 1600 5300 50  0001 C CNN
	1    1600 5700
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
$EndSCHEMATC
