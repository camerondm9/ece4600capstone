EESchema Schematic File Version 4
LIBS:Capstone-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
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
L Parts:BMD-360 U?
U 1 1 5DCF155F
P 5200 3300
F 0 "U?" H 5200 4465 50  0000 C CNN
F 1 "BMD-360" H 5200 4374 50  0000 C CNN
F 2 "Parts:BMD-360" H 5200 2100 50  0001 C BNN
F 3 "https://www.u-blox.com/en/product/bmd-360-open-cpu" H 5300 2000 50  0001 L BNN
	1    5200 3300
	1    0    0    -1  
$EndComp
$Comp
L Parts:LED_ABGR D?
U 1 1 5DCF3816
P 7350 3450
F 0 "D?" H 7350 3947 50  0000 C CNN
F 1 "LED_ABGR" H 7350 3856 50  0000 C CNN
F 2 "Parts:CLMVC-FKA" H 7350 3025 50  0001 C CNN
F 3 "https://www.cree.com/led-components/media/documents/1273-CLMVC-FKA.pdf" H 7350 3400 50  0001 C CNN
	1    7350 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DCF44EC
P 6000 2400
F 0 "#PWR?" H 6000 2250 50  0001 C CNN
F 1 "+3V3" H 6015 2573 50  0000 C CNN
F 2 "" H 6000 2400 50  0001 C CNN
F 3 "" H 6000 2400 50  0001 C CNN
	1    6000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2400 6000 2400
$Comp
L power:GND #PWR?
U 1 1 5DCF5A78
P 6000 4300
F 0 "#PWR?" H 6000 4050 50  0001 C CNN
F 1 "GND" H 6005 4127 50  0000 C CNN
F 2 "" H 6000 4300 50  0001 C CNN
F 3 "" H 6000 4300 50  0001 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4300 6000 4300
Text GLabel 6000 4000 2    50   Input ~ 0
SWCLK
Text GLabel 6000 4100 2    50   Input ~ 0
SWDIO
Wire Wire Line
	5900 4000 6000 4000
Wire Wire Line
	6000 4100 5900 4100
$Comp
L power:+3V3 #PWR?
U 1 1 5DCF6F82
P 7650 3450
F 0 "#PWR?" H 7650 3300 50  0001 C CNN
F 1 "+3V3" H 7665 3623 50  0000 C CNN
F 2 "" H 7650 3450 50  0001 C CNN
F 3 "" H 7650 3450 50  0001 C CNN
	1    7650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3450 7650 3450
$Comp
L Parts:ENS210 U?
U 1 1 5DD2033C
P 2500 5600
F 0 "U?" H 2500 5990 50  0000 C CNN
F 1 "ENS210" H 2500 5899 50  0000 C CNN
F 2 "Parts:QFN4-PAD" H 2250 5300 50  0001 L BNN
F 3 "https://ams.com/ens210" H 2450 4950 50  0001 L BNN
	1    2500 5600
	1    0    0    -1  
$EndComp
$Comp
L Parts:LIS2DE12 U?
U 1 1 5DD21338
P 2600 6550
F 0 "U?" H 2600 7115 50  0000 C CNN
F 1 "LIS2DE12" H 2600 7024 50  0000 C CNN
F 2 "Parts:LGA12" H 2875 6975 50  0001 L BNN
F 3 "https://www.st.com/content/st_com/en/products/mems-and-sensors/accelerometers/lis2de12.html" H 1800 7700 50  0001 L BNN
	1    2600 6550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
