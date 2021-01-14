EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
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
L power:+1V2 #PWR018
U 1 1 5DCD9F72
P 5300 4700
F 0 "#PWR018" H 5300 4550 50  0001 C CNN
F 1 "+1V2" H 5315 4873 50  0000 C CNN
F 2 "" H 5300 4700 50  0001 C CNN
F 3 "" H 5300 4700 50  0001 C CNN
	1    5300 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR04
U 1 1 5DCDA97B
P 8700 2750
F 0 "#PWR04" H 8700 2600 50  0001 C CNN
F 1 "+2V5" H 8715 2923 50  0000 C CNN
F 2 "" H 8700 2750 50  0001 C CNN
F 3 "" H 8700 2750 50  0001 C CNN
	1    8700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3050 3250 3100
Wire Wire Line
	4500 2800 4800 2800
Wire Wire Line
	3250 2800 3550 2800
Wire Wire Line
	3250 2850 3250 2800
Wire Wire Line
	2600 2500 3600 2500
$Comp
L Device:C_Small C5
U 1 1 5DCFFBE9
P 3250 2950
F 0 "C5" H 3342 2996 50  0000 L CNN
F 1 "100nF" H 3342 2905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3250 2950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 3250 2950 50  0001 C CNN
	1    3250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2750 5300 2800
Wire Wire Line
	5300 2500 5300 2550
Connection ~ 5300 2500
Wire Wire Line
	5300 2450 5300 2500
Wire Wire Line
	2600 2500 2600 2550
Connection ~ 2600 2500
Wire Wire Line
	2600 2100 2600 2150
Wire Wire Line
	4150 3350 4250 3350
Wire Wire Line
	3850 3350 3950 3350
Wire Wire Line
	2600 2750 2600 2800
$Comp
L Device:Net-Tie_2 NT1
U 1 1 5DCEFEF5
P 4050 3350
F 0 "NT1" H 4050 3531 50  0000 C CNN
F 1 "Net-Tie_2" H 4050 3440 50  0000 C CNN
F 2 "Parts:NetTie-2" H 4050 3350 50  0001 C CNN
F 3 "~" H 4050 3350 50  0001 C CNN
	1    4050 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DCEF249
P 2600 2650
F 0 "C1" H 2692 2696 50  0000 L CNN
F 1 "10uF" H 2692 2605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2600 2650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 2600 2650 50  0001 C CNN
	1    2600 2650
	1    0    0    -1  
$EndComp
Connection ~ 3550 2800
Wire Wire Line
	3550 2800 3600 2800
Wire Wire Line
	3550 2600 3550 2800
Wire Wire Line
	3600 2600 3550 2600
Wire Wire Line
	4550 3000 4600 3000
Connection ~ 4550 3000
Wire Wire Line
	4550 2900 4550 3000
Wire Wire Line
	4500 2900 4550 2900
Wire Wire Line
	4500 3000 4550 3000
$Comp
L power:+BATT #PWR01
U 1 1 5DCDADE4
P 2600 2100
F 0 "#PWR01" H 2600 1950 50  0001 C CNN
F 1 "+BATT" H 2615 2273 50  0000 C CNN
F 2 "" H 2600 2100 50  0001 C CNN
F 3 "" H 2600 2100 50  0001 C CNN
	1    2600 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 5DCD8EE2
P 5300 2450
F 0 "#PWR02" H 5300 2300 50  0001 C CNN
F 1 "+3V3" H 5315 2623 50  0000 C CNN
F 2 "" H 5300 2450 50  0001 C CNN
F 3 "" H 5300 2450 50  0001 C CNN
	1    5300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4750 5300 4800
Connection ~ 5300 4750
Wire Wire Line
	5300 4700 5300 4750
Wire Wire Line
	4150 5500 4250 5500
Wire Wire Line
	3850 5500 3950 5500
Wire Wire Line
	3150 5000 3150 5050
$Comp
L Device:Net-Tie_2 NT2
U 1 1 5DD163BD
P 4050 5500
F 0 "NT2" H 4050 5681 50  0000 C CNN
F 1 "Net-Tie_2" H 4050 5590 50  0000 C CNN
F 2 "Parts:NetTie-2" H 4050 5500 50  0001 C CNN
F 3 "~" H 4050 5500 50  0001 C CNN
	1    4050 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR016
U 1 1 5DD163FB
P 3150 4350
F 0 "#PWR016" H 3150 4200 50  0001 C CNN
F 1 "+BATT" H 3165 4523 50  0000 C CNN
F 2 "" H 3150 4350 50  0001 C CNN
F 3 "" H 3150 4350 50  0001 C CNN
	1    3150 4350
	1    0    0    -1  
$EndComp
$Comp
L Parts:GNDA-3V3 #PWR09
U 1 1 5DD4DDED
P 3250 3100
F 0 "#PWR09" H 3250 2850 50  0001 C CNN
F 1 "GNDA-3V3" H 3255 2927 50  0000 C CNN
F 2 "" H 3250 3100 50  0001 C CNN
F 3 "" H 3250 3100 50  0001 C CNN
	1    3250 3100
	1    0    0    -1  
$EndComp
$Comp
L Parts:GNDA-3V3 #PWR06
U 1 1 5DD4EEAE
P 4800 2800
F 0 "#PWR06" H 4800 2550 50  0001 C CNN
F 1 "GNDA-3V3" H 4805 2627 50  0000 C CNN
F 2 "" H 4800 2800 50  0001 C CNN
F 3 "" H 4800 2800 50  0001 C CNN
	1    4800 2800
	1    0    0    -1  
$EndComp
$Comp
L Parts:GNDA-3V3 #PWR012
U 1 1 5DD4FC46
P 3850 3350
F 0 "#PWR012" H 3850 3100 50  0001 C CNN
F 1 "GNDA-3V3" H 3855 3177 50  0000 C CNN
F 2 "" H 3850 3350 50  0001 C CNN
F 3 "" H 3850 3350 50  0001 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DD501DF
P 5300 2850
F 0 "#PWR07" H 5300 2600 50  0001 C CNN
F 1 "GND" H 5305 2677 50  0000 C CNN
F 2 "" H 5300 2850 50  0001 C CNN
F 3 "" H 5300 2850 50  0001 C CNN
	1    5300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5DD50871
P 2600 2800
F 0 "#PWR05" H 2600 2550 50  0001 C CNN
F 1 "GND" H 2605 2627 50  0000 C CNN
F 2 "" H 2600 2800 50  0001 C CNN
F 3 "" H 2600 2800 50  0001 C CNN
	1    2600 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5DD50E6F
P 4250 3350
F 0 "#PWR013" H 4250 3100 50  0001 C CNN
F 1 "GND" H 4255 3177 50  0000 C CNN
F 2 "" H 4250 3350 50  0001 C CNN
F 3 "" H 4250 3350 50  0001 C CNN
	1    4250 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5DD51474
P 4600 3000
F 0 "#PWR08" H 4600 2750 50  0001 C CNN
F 1 "GND" H 4605 2827 50  0000 C CNN
F 2 "" H 4600 3000 50  0001 C CNN
F 3 "" H 4600 3000 50  0001 C CNN
	1    4600 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5DD52DA9
P 3150 5050
F 0 "#PWR019" H 3150 4800 50  0001 C CNN
F 1 "GND" H 3155 4877 50  0000 C CNN
F 2 "" H 3150 5050 50  0001 C CNN
F 3 "" H 3150 5050 50  0001 C CNN
	1    3150 5050
	1    0    0    -1  
$EndComp
$Comp
L Parts:GNDA-1V2 #PWR025
U 1 1 5DD542D0
P 3850 5500
F 0 "#PWR025" H 3850 5250 50  0001 C CNN
F 1 "GNDA-1V2" H 3855 5327 50  0000 C CNN
F 2 "" H 3850 5500 50  0001 C CNN
F 3 "" H 3850 5500 50  0001 C CNN
	1    3850 5500
	1    0    0    -1  
$EndComp
$Comp
L Parts:GNDA-1V2 #PWR020
U 1 1 5DD54657
P 4800 5100
F 0 "#PWR020" H 4800 4850 50  0001 C CNN
F 1 "GNDA-1V2" H 4805 4927 50  0000 C CNN
F 2 "" H 4800 5100 50  0001 C CNN
F 3 "" H 4800 5100 50  0001 C CNN
	1    4800 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5DD56317
P 5300 5100
F 0 "#PWR021" H 5300 4850 50  0001 C CNN
F 1 "GND" H 5305 4927 50  0000 C CNN
F 2 "" H 5300 5100 50  0001 C CNN
F 3 "" H 5300 5100 50  0001 C CNN
	1    5300 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5DD5713E
P 4250 5500
F 0 "#PWR026" H 4250 5250 50  0001 C CNN
F 1 "GND" H 4255 5327 50  0000 C CNN
F 2 "" H 4250 5500 50  0001 C CNN
F 3 "" H 4250 5500 50  0001 C CNN
	1    4250 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5DD59326
P 3150 4900
F 0 "C12" H 3242 4946 50  0000 L CNN
F 1 "10uF" H 3242 4855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3150 4900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 3150 4900 50  0001 C CNN
	1    3150 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DD59F79
P 5300 2650
F 0 "C2" H 5392 2696 50  0000 L CNN
F 1 "10uF" H 5392 2605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5300 2650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 5300 2650 50  0001 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5DD5A7D4
P 5300 4900
F 0 "C13" H 5392 4946 50  0000 L CNN
F 1 "10uF" H 5392 4855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5300 4900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 5300 4900 50  0001 C CNN
	1    5300 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5DD5CD9A
P 5650 2650
F 0 "C3" H 5742 2696 50  0000 L CNN
F 1 "10uF" H 5742 2605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5650 2650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 5650 2650 50  0001 C CNN
	1    5650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2500 5650 2500
Wire Wire Line
	5650 2500 5650 2550
Wire Wire Line
	5650 2750 5650 2800
Wire Wire Line
	5650 2800 5300 2800
Connection ~ 5300 2800
Wire Wire Line
	5300 2850 5300 2800
Wire Wire Line
	5300 5000 5300 5050
$Comp
L Device:C_Small C14
U 1 1 5DD65379
P 5650 4900
F 0 "C14" H 5742 4946 50  0000 L CNN
F 1 "10uF" H 5742 4855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5650 4900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 5650 4900 50  0001 C CNN
	1    5650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4750 5650 4750
Wire Wire Line
	5650 4750 5650 4800
Wire Wire Line
	5650 5000 5650 5050
Wire Wire Line
	5650 5050 5300 5050
Connection ~ 5300 5050
Wire Wire Line
	5300 5050 5300 5100
$Comp
L power:+3V3 #PWR03
U 1 1 5DD68A35
P 7300 2750
F 0 "#PWR03" H 7300 2600 50  0001 C CNN
F 1 "+3V3" H 7315 2923 50  0000 C CNN
F 2 "" H 7300 2750 50  0001 C CNN
F 3 "" H 7300 2750 50  0001 C CNN
	1    7300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2750 7300 2800
$Comp
L Device:C_Small C6
U 1 1 5DD818BC
P 7300 2950
F 0 "C6" H 7392 2996 50  0000 L CNN
F 1 "1uF" H 7392 2905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7300 2950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10A105MP8NNNC/1276-1866-1-ND/3889952" H 7300 2950 50  0001 C CNN
	1    7300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2800 7300 2850
Connection ~ 7300 2800
$Comp
L power:GND #PWR010
U 1 1 5DD88EB9
P 7300 3100
F 0 "#PWR010" H 7300 2850 50  0001 C CNN
F 1 "GND" H 7305 2927 50  0000 C CNN
F 2 "" H 7300 3100 50  0001 C CNN
F 3 "" H 7300 3100 50  0001 C CNN
	1    7300 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5DD8E04C
P 8700 2950
F 0 "C7" H 8792 2996 50  0000 L CNN
F 1 "1uF" H 8792 2905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8700 2950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10A105MP8NNNC/1276-1866-1-ND/3889952" H 8700 2950 50  0001 C CNN
	1    8700 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5DD9334B
P 8700 3150
F 0 "#PWR011" H 8700 2900 50  0001 C CNN
F 1 "GND" H 8705 2977 50  0000 C CNN
F 2 "" H 8700 3150 50  0001 C CNN
F 3 "" H 8700 3150 50  0001 C CNN
	1    8700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2800 7650 2800
Wire Wire Line
	7650 3000 7650 2800
$Comp
L Device:L_Core_Ferrite_Small L1
U 1 1 5DDAC4F9
P 4050 2050
F 0 "L1" V 4255 2050 50  0000 C CNN
F 1 "2.2uH" V 4164 2050 50  0000 C CNN
F 2 "Inductors:Inductor_Taiyo-Yuden_MD-3030" H 4050 2050 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/murata-electronics/LQH3NPN2R2MMEL/490-15950-1-ND/6800615" H 4050 2050 50  0001 C CNN
	1    4050 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 2050 3600 2050
Wire Wire Line
	3600 2050 3600 2400
Wire Wire Line
	4150 2050 4500 2050
Wire Wire Line
	4500 2050 4500 2400
$Comp
L Parts:TCR2EF25 U2
U 1 1 5DDF87D4
P 8100 2900
F 0 "U2" H 8100 3265 50  0000 C CNN
F 1 "TCR2EF25" H 8100 3174 50  0000 C CNN
F 2 "Parts:SOT23-5" H 8100 2550 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/us/product/linear/power-supply/detail.TCR2EF25.html" H 8100 2550 50  0001 C CNN
	1    8100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3050 7300 3100
Wire Wire Line
	8700 2750 8700 2800
Wire Wire Line
	8700 3050 8700 3100
Wire Wire Line
	8500 2800 8700 2800
Connection ~ 8700 2800
Wire Wire Line
	8700 2800 8700 2850
Wire Wire Line
	8500 3000 8550 3000
Wire Wire Line
	8550 3000 8550 3100
Wire Wire Line
	8550 3100 8700 3100
Connection ~ 8700 3100
Wire Wire Line
	8700 3100 8700 3150
Wire Wire Line
	7650 2800 7700 2800
Connection ~ 7650 2800
Wire Wire Line
	7650 3000 7700 3000
$Comp
L Parts:TPS62262 U3
U 1 1 5DD4755E
P 4050 4950
F 0 "U3" H 4050 5387 60  0000 C CNN
F 1 "TPS62262" H 4050 5281 60  0000 C CNN
F 2 "Parts:WSON6-2x2-PAD" H 4050 4650 60  0001 C CNN
F 3 "http://www.ti.com/product/TPS62262" H 3650 5000 60  0001 C CNN
	1    4050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4750 3600 4750
Wire Wire Line
	3600 4750 3600 4850
Wire Wire Line
	3600 4850 3650 4850
Wire Wire Line
	3600 4850 3600 5050
Wire Wire Line
	3600 5050 3650 5050
Connection ~ 3600 4850
Wire Wire Line
	3150 4350 3150 4400
Wire Wire Line
	3150 4750 3600 4750
Connection ~ 3150 4750
Wire Wire Line
	3150 4750 3150 4800
Connection ~ 3600 4750
$Comp
L power:GND #PWR022
U 1 1 5DD56AF5
P 4500 5200
F 0 "#PWR022" H 4500 4950 50  0001 C CNN
F 1 "GND" H 4505 5027 50  0000 C CNN
F 2 "" H 4500 5200 50  0001 C CNN
F 3 "" H 4500 5200 50  0001 C CNN
	1    4500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5150 4500 5150
Wire Wire Line
	4500 5150 4500 5200
Wire Wire Line
	4450 5050 4800 5050
Wire Wire Line
	4800 5050 4800 5100
Wire Wire Line
	4450 4850 4750 4850
Wire Wire Line
	4750 4850 4750 4750
Wire Wire Line
	4750 4750 4700 4750
Wire Wire Line
	4500 4750 4450 4750
Wire Wire Line
	4750 4750 4950 4750
Connection ~ 4750 4750
$Comp
L Device:L_Core_Ferrite_Small L3
U 1 1 5DD8C1FF
P 4600 4750
F 0 "L3" V 4805 4750 50  0000 C CNN
F 1 "2.2uH" V 4714 4750 50  0000 C CNN
F 2 "Inductors:Inductor_Taiyo-Yuden_MD-3030" H 4600 4750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/murata-electronics/LQH3NPN2R2MMEL/490-15950-1-ND/6800615" H 4600 4750 50  0001 C CNN
	1    4600 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 2900 3600 2900
Wire Wire Line
	3550 2800 3550 2900
Wire Wire Line
	4500 2500 4550 2500
Wire Wire Line
	4500 2600 4550 2600
Wire Wire Line
	4550 2600 4550 2500
Wire Wire Line
	4550 2500 4950 2500
Connection ~ 4550 2500
$Comp
L Parts:TPS63031 U1
U 1 1 5DDC16A1
P 4050 2700
F 0 "U1" H 4050 3265 50  0000 C CNN
F 1 "TPS63031" H 4050 3174 50  0000 C CNN
F 2 "Parts:WSON10-PAD" H 4050 2250 60  0001 C CNN
F 3 "http://www.ti.com/product/TPS63031" H 3600 2600 60  0001 C CNN
	1    4050 2700
	1    0    0    -1  
$EndComp
$Comp
L Parts:+3V3-LN #PWR015
U 1 1 5DD3C0A0
P 8550 4200
F 0 "#PWR015" H 8550 4050 50  0001 C CNN
F 1 "+3V3-LN" H 8565 4373 50  0000 C CNN
F 2 "" H 8550 4200 50  0001 C CNN
F 3 "" H 8550 4200 50  0001 C CNN
	1    8550 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR014
U 1 1 5DD3E19F
P 7550 4200
F 0 "#PWR014" H 7550 4050 50  0001 C CNN
F 1 "+3V3" H 7565 4373 50  0000 C CNN
F 2 "" H 7550 4200 50  0001 C CNN
F 3 "" H 7550 4200 50  0001 C CNN
	1    7550 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5DD3EB70
P 8550 4400
F 0 "C10" H 8642 4446 50  0000 L CNN
F 1 "10uF" H 8642 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8550 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 8550 4400 50  0001 C CNN
	1    8550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4200 8550 4250
$Comp
L Device:C_Small C11
U 1 1 5DD417D3
P 8900 4400
F 0 "C11" H 8992 4446 50  0000 L CNN
F 1 "10uF" H 8992 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8900 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 8900 4400 50  0001 C CNN
	1    8900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4250 8900 4250
Wire Wire Line
	8900 4250 8900 4300
Connection ~ 8550 4250
Wire Wire Line
	8550 4250 8550 4300
Wire Wire Line
	8900 4500 8900 4550
Wire Wire Line
	8900 4550 8550 4550
Wire Wire Line
	8550 4550 8550 4500
$Comp
L power:GND #PWR017
U 1 1 5DD45711
P 8550 4600
F 0 "#PWR017" H 8550 4350 50  0001 C CNN
F 1 "GND" H 8555 4427 50  0000 C CNN
F 2 "" H 8550 4600 50  0001 C CNN
F 3 "" H 8550 4600 50  0001 C CNN
	1    8550 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4600 8550 4550
Connection ~ 8550 4550
$Comp
L Device:L_Core_Ferrite_Small L2
U 1 1 5DD48EC8
P 7900 4250
F 0 "L2" V 8105 4250 50  0000 C CNN
F 1 "100nH" V 8014 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7900 4250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/tdk-corporation/MLZ2012DR10DT000/445-6395-1-ND/2465721" H 7900 4250 50  0001 C CNN
	1    7900 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 4250 8550 4250
Wire Wire Line
	7800 4250 7550 4250
Wire Wire Line
	7550 4250 7550 4200
$Comp
L Device:C_Small C9
U 1 1 5DD59CF4
P 7550 4400
F 0 "C9" H 7642 4446 50  0000 L CNN
F 1 "1uF" H 7642 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7550 4400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10A105MP8NNNC/1276-1866-1-ND/3889952" H 7550 4400 50  0001 C CNN
	1    7550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4300 7550 4250
Connection ~ 7550 4250
Wire Wire Line
	7550 4500 7550 4550
$Comp
L Device:C_Small C18
U 1 1 5DD65CDB
P 8550 5450
F 0 "C18" H 8642 5496 50  0000 L CNN
F 1 "10uF" H 8642 5405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8550 5450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 8550 5450 50  0001 C CNN
	1    8550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5250 8550 5300
$Comp
L Device:C_Small C19
U 1 1 5DD65CE6
P 8900 5450
F 0 "C19" H 8992 5496 50  0000 L CNN
F 1 "10uF" H 8992 5405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8900 5450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 8900 5450 50  0001 C CNN
	1    8900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5300 8900 5300
Wire Wire Line
	8900 5300 8900 5350
Connection ~ 8550 5300
Wire Wire Line
	8550 5300 8550 5350
Wire Wire Line
	8900 5550 8900 5600
Wire Wire Line
	8900 5600 8550 5600
Wire Wire Line
	8550 5600 8550 5550
$Comp
L power:GND #PWR027
U 1 1 5DD65CF7
P 8550 5650
F 0 "#PWR027" H 8550 5400 50  0001 C CNN
F 1 "GND" H 8555 5477 50  0000 C CNN
F 2 "" H 8550 5650 50  0001 C CNN
F 3 "" H 8550 5650 50  0001 C CNN
	1    8550 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5650 8550 5600
Connection ~ 8550 5600
$Comp
L Device:L_Core_Ferrite_Small L4
U 1 1 5DD65D03
P 7900 5300
F 0 "L4" V 8105 5300 50  0000 C CNN
F 1 "100nH" V 8014 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7900 5300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/tdk-corporation/MLZ2012DR10DT000/445-6395-1-ND/2465721" H 7900 5300 50  0001 C CNN
	1    7900 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 5300 8550 5300
Wire Wire Line
	7800 5300 7550 5300
Wire Wire Line
	7550 5300 7550 5250
$Comp
L Device:C_Small C17
U 1 1 5DD65D10
P 7550 5450
F 0 "C17" H 7642 5496 50  0000 L CNN
F 1 "1uF" H 7642 5405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7550 5450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10A105MP8NNNC/1276-1866-1-ND/3889952" H 7550 5450 50  0001 C CNN
	1    7550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5350 7550 5300
Connection ~ 7550 5300
Wire Wire Line
	7550 5550 7550 5600
$Comp
L power:+1V2 #PWR023
U 1 1 5DD6DA7B
P 7550 5250
F 0 "#PWR023" H 7550 5100 50  0001 C CNN
F 1 "+1V2" H 7565 5423 50  0000 C CNN
F 2 "" H 7550 5250 50  0001 C CNN
F 3 "" H 7550 5250 50  0001 C CNN
	1    7550 5250
	1    0    0    -1  
$EndComp
$Comp
L Parts:+1V2-LN #PWR024
U 1 1 5DD6F7D4
P 8550 5250
F 0 "#PWR024" H 8550 5100 50  0001 C CNN
F 1 "+1V2-LN" H 8565 5423 50  0000 C CNN
F 2 "" H 8550 5250 50  0001 C CNN
F 3 "" H 8550 5250 50  0001 C CNN
	1    8550 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DDCE692
P 8200 4250
F 0 "R1" V 7993 4250 50  0000 C CNN
F 1 "100m" V 8084 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8130 4250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/cts-resistor-products/73L3R10J/73L3R10JCT-ND/1543529" H 8200 4250 50  0001 C CNN
	1    8200 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 4250 8050 4250
Wire Wire Line
	7550 4550 8550 4550
$Comp
L Device:R R2
U 1 1 5DDED10A
P 8200 5300
F 0 "R2" V 7993 5300 50  0000 C CNN
F 1 "100m" V 8084 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8130 5300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/cts-resistor-products/73L3R10J/73L3R10JCT-ND/1543529" H 8200 5300 50  0001 C CNN
	1    8200 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 5300 8050 5300
Wire Wire Line
	7550 5600 8550 5600
$Comp
L Jumper:SolderJumper_2_Bridged JP4
U 1 1 5DE955D5
P 5100 4750
F 0 "JP4" H 5100 4955 50  0000 C CNN
F 1 "0" H 5100 4864 50  0000 C CNN
F 2 "Parts:SolderJumper_0603" H 5100 4750 50  0001 C CNN
F 3 "" H 5100 4750 50  0001 C CNN
	1    5100 4750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 5DE9B086
P 2600 2300
F 0 "JP1" V 2554 2368 50  0000 L CNN
F 1 "0" V 2645 2368 50  0000 L CNN
F 2 "Parts:SolderJumper_0603" H 2600 2300 50  0001 C CNN
F 3 "" H 2600 2300 50  0001 C CNN
	1    2600 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2450 2600 2500
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 5DEA0F33
P 5100 2500
F 0 "JP2" H 5100 2705 50  0000 C CNN
F 1 "0" H 5100 2614 50  0000 C CNN
F 2 "Parts:SolderJumper_0603" H 5100 2500 50  0001 C CNN
F 3 "" H 5100 2500 50  0001 C CNN
	1    5100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2500 5300 2500
$Comp
L Jumper:SolderJumper_2_Bridged JP3
U 1 1 5DEA5A0E
P 3150 4550
F 0 "JP3" V 3104 4618 50  0000 L CNN
F 1 "0" V 3195 4618 50  0000 L CNN
F 2 "Parts:SolderJumper_0603" H 3150 4550 50  0001 C CNN
F 3 "" H 3150 4550 50  0001 C CNN
	1    3150 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 4700 3150 4750
Wire Wire Line
	5250 4750 5300 4750
$Comp
L Device:CP1_Small C4
U 1 1 5DFB66E6
P 6150 2650
F 0 "C4" H 6241 2696 50  0000 L CNN
F 1 "330uF" H 6241 2605 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 6150 2650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/860020273010/732-8912-1-ND/5728855" H 6150 2650 50  0001 C CNN
	1    6150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2500 6150 2500
Wire Wire Line
	6150 2500 6150 2550
Connection ~ 5650 2500
Wire Wire Line
	6150 2750 6150 2800
Wire Wire Line
	6150 2800 5650 2800
Connection ~ 5650 2800
$Comp
L Device:CP1_Small C15
U 1 1 5DFBFE57
P 6150 4900
F 0 "C15" H 6241 4946 50  0000 L CNN
F 1 "330uF" H 6241 4855 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 6150 4900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/860020273010/732-8912-1-ND/5728855" H 6150 4900 50  0001 C CNN
	1    6150 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C16
U 1 1 5DFC0807
P 6550 4900
F 0 "C16" H 6641 4946 50  0000 L CNN
F 1 "330uF" H 6641 4855 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 6550 4900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/860020273010/732-8912-1-ND/5728855" H 6550 4900 50  0001 C CNN
	1    6550 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4750 6150 4750
Wire Wire Line
	6150 4750 6150 4800
Connection ~ 5650 4750
Wire Wire Line
	6150 4750 6550 4750
Wire Wire Line
	6550 4750 6550 4800
Connection ~ 6150 4750
Wire Wire Line
	5650 5050 6150 5050
Wire Wire Line
	6150 5050 6150 5000
Connection ~ 5650 5050
Wire Wire Line
	6150 5050 6550 5050
Wire Wire Line
	6550 5050 6550 5000
Connection ~ 6150 5050
$Comp
L Device:C_Small C8
U 1 1 5DFDFA9E
P 9200 2950
F 0 "C8" H 9292 2996 50  0000 L CNN
F 1 "10uF" H 9292 2905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9200 2950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 9200 2950 50  0001 C CNN
	1    9200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2800 9200 2800
Wire Wire Line
	9200 2800 9200 2850
Wire Wire Line
	8700 3100 9200 3100
Wire Wire Line
	9200 3100 9200 3050
$EndSCHEMATC
