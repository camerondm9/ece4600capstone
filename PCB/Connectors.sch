EESchema Schematic File Version 4
LIBS:Capstone-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
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
L power:GND #PWR?
U 1 1 5DCE40E5
P 2000 3200
F 0 "#PWR?" H 2000 2950 50  0001 C CNN
F 1 "GND" H 2005 3027 50  0000 C CNN
F 2 "" H 2000 3200 50  0001 C CNN
F 3 "" H 2000 3200 50  0001 C CNN
	1    2000 3200
	1    0    0    -1  
$EndComp
$Comp
L Parts:S2B-PH-SM4-TB J?
U 1 1 5DCEC85E
P 1650 3100
F 0 "J?" H 1592 3465 50  0000 C CNN
F 1 "S2B-PH-SM4-TB" H 1592 3374 50  0000 C CNN
F 2 "Parts:JST_S2B-PH-SM4-TB" H 1650 2750 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/detail_e.php?series=199" H 1700 3100 50  0001 L BNN
	1    1650 3100
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5DCED91D
P 2250 3000
F 0 "#PWR?" H 2250 2850 50  0001 C CNN
F 1 "+BATT" H 2265 3173 50  0000 C CNN
F 2 "" H 2250 3000 50  0001 C CNN
F 3 "" H 2250 3000 50  0001 C CNN
	1    2250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3000 2250 3000
Wire Wire Line
	1900 3200 1950 3200
Wire Wire Line
	1900 3100 1950 3100
Wire Wire Line
	1950 3100 1950 3200
Connection ~ 1950 3200
Wire Wire Line
	1950 3200 2000 3200
$EndSCHEMATC
