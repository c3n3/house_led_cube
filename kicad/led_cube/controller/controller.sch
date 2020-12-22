EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L house_cube:controller D1
U 1 1 5FDC1F91
P 5300 2000
F 0 "D1" H 6078 2313 50  0000 L CNN
F 1 "controller" H 6078 2222 50  0000 L CNN
F 2 "house_cube:15pin_controller" H 5300 1800 50  0001 C CNN
F 3 "" H 5300 1800 50  0001 C CNN
	1    5300 2000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FDC437F
P 7250 2750
F 0 "SW1" H 7250 3035 50  0000 C CNN
F 1 "SW_Push" H 7250 2944 50  0000 C CNN
F 2 "house_cube:button" H 7250 2950 50  0001 C CNN
F 3 "~" H 7250 2950 50  0001 C CNN
	1    7250 2750
	0    1    1    0   
$EndComp
$Comp
L dk_Logic-Shift-Registers:SN74HC595N U1
U 1 1 5FDC7B71
P 3600 2850
F 0 "U1" H 3400 3753 60  0000 C CNN
F 1 "SN74HC595N" H 3400 3647 60  0000 C CNN
F 2 "footprints:SN74HC595N" H 3800 3050 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74hc595" H 3800 3150 60  0001 L CNN
F 4 "296-1600-5-ND" H 3800 3250 60  0001 L CNN "Digi-Key_PN"
F 5 "SN74HC595N" H 3800 3350 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3800 3450 60  0001 L CNN "Category"
F 7 "Logic - Shift Registers" H 3800 3550 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74hc595" H 3800 3650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/SN74HC595N/296-1600-5-ND/277246" H 3800 3750 60  0001 L CNN "DK_Detail_Page"
F 10 "IC 8-BIT SHIFT REGISTER 16-DIP" H 3800 3850 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 3800 3950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3800 4050 60  0001 L CNN "Status"
	1    3600 2850
	1    0    0    -1  
$EndComp
$Comp
L house_cube:gen_mosfet fet2
U 1 1 5FDCC943
P 7150 2450
F 0 "fet2" H 7328 2538 50  0000 L CNN
F 1 "gen_mosfet" H 7328 2447 50  0000 L CNN
F 2 "house_cube:gen_fet" H 7150 2750 50  0001 C CNN
F 3 "" H 7150 2750 50  0001 C CNN
	1    7150 2450
	1    0    0    -1  
$EndComp
Text GLabel 5250 2100 3    50   Input ~ 0
watch
Text GLabel 7250 2950 3    50   Input ~ 0
watch
$Comp
L Switch:SW_Push SW3
U 1 1 5FDD500B
P 8200 2750
F 0 "SW3" H 8200 3035 50  0000 C CNN
F 1 "SW_Push" H 8200 2944 50  0000 C CNN
F 2 "house_cube:button" H 8200 2950 50  0001 C CNN
F 3 "~" H 8200 2950 50  0001 C CNN
	1    8200 2750
	0    1    1    0   
$EndComp
$Comp
L house_cube:gen_mosfet fet4
U 1 1 5FDD5011
P 8100 2450
F 0 "fet4" H 8278 2538 50  0000 L CNN
F 1 "gen_mosfet" H 8278 2447 50  0000 L CNN
F 2 "house_cube:gen_fet" H 8100 2750 50  0001 C CNN
F 3 "" H 8100 2750 50  0001 C CNN
	1    8100 2450
	1    0    0    -1  
$EndComp
Text GLabel 8200 2950 3    50   Input ~ 0
watch
$Comp
L Switch:SW_Push SW5
U 1 1 5FDD5155
P 9050 2750
F 0 "SW5" H 9050 3035 50  0000 C CNN
F 1 "SW_Push" H 9050 2944 50  0000 C CNN
F 2 "house_cube:button" H 9050 2950 50  0001 C CNN
F 3 "~" H 9050 2950 50  0001 C CNN
	1    9050 2750
	0    1    1    0   
$EndComp
$Comp
L house_cube:gen_mosfet fet6
U 1 1 5FDD515B
P 8950 2450
F 0 "fet6" H 9128 2538 50  0000 L CNN
F 1 "gen_mosfet" H 9128 2447 50  0000 L CNN
F 2 "house_cube:gen_fet" H 8950 2750 50  0001 C CNN
F 3 "" H 8950 2750 50  0001 C CNN
	1    8950 2450
	1    0    0    -1  
$EndComp
Text GLabel 9050 2950 3    50   Input ~ 0
watch
$Comp
L Switch:SW_Push SW6
U 1 1 5FDD572B
P 9950 2750
F 0 "SW6" H 9950 3035 50  0000 C CNN
F 1 "SW_Push" H 9950 2944 50  0000 C CNN
F 2 "house_cube:button" H 9950 2950 50  0001 C CNN
F 3 "~" H 9950 2950 50  0001 C CNN
	1    9950 2750
	0    1    1    0   
$EndComp
$Comp
L house_cube:gen_mosfet fet7
U 1 1 5FDD5731
P 9850 2450
F 0 "fet7" H 10028 2538 50  0000 L CNN
F 1 "gen_mosfet" H 10028 2447 50  0000 L CNN
F 2 "house_cube:gen_fet" H 9850 2750 50  0001 C CNN
F 3 "" H 9850 2750 50  0001 C CNN
	1    9850 2450
	1    0    0    -1  
$EndComp
Text GLabel 9950 2950 3    50   Input ~ 0
watch
$Comp
L Switch:SW_Push SW7
U 1 1 5FDD60B7
P 10800 2750
F 0 "SW7" H 10800 3035 50  0000 C CNN
F 1 "SW_Push" H 10800 2944 50  0000 C CNN
F 2 "house_cube:button" H 10800 2950 50  0001 C CNN
F 3 "~" H 10800 2950 50  0001 C CNN
	1    10800 2750
	0    1    1    0   
$EndComp
$Comp
L house_cube:gen_mosfet fet8
U 1 1 5FDD60BD
P 10700 2450
F 0 "fet8" H 10878 2538 50  0000 L CNN
F 1 "gen_mosfet" H 10878 2447 50  0000 L CNN
F 2 "house_cube:gen_fet" H 10700 2750 50  0001 C CNN
F 3 "" H 10700 2750 50  0001 C CNN
	1    10700 2450
	1    0    0    -1  
$EndComp
Text GLabel 10800 2950 3    50   Input ~ 0
watch
$Comp
L Switch:SW_Push SW2
U 1 1 5FDD6C19
P 7250 3950
F 0 "SW2" H 7250 4235 50  0000 C CNN
F 1 "SW_Push" H 7250 4144 50  0000 C CNN
F 2 "house_cube:button" H 7250 4150 50  0001 C CNN
F 3 "~" H 7250 4150 50  0001 C CNN
	1    7250 3950
	0    1    1    0   
$EndComp
$Comp
L house_cube:gen_mosfet fet3
U 1 1 5FDD6C1F
P 7150 3650
F 0 "fet3" H 7328 3738 50  0000 L CNN
F 1 "gen_mosfet" H 7328 3647 50  0000 L CNN
F 2 "house_cube:gen_fet" H 7150 3950 50  0001 C CNN
F 3 "" H 7150 3950 50  0001 C CNN
	1    7150 3650
	1    0    0    -1  
$EndComp
Text GLabel 7250 4150 3    50   Input ~ 0
watch
$Comp
L Switch:SW_Push SW4
U 1 1 5FDD71D1
P 8250 3950
F 0 "SW4" H 8250 4235 50  0000 C CNN
F 1 "SW_Push" H 8250 4144 50  0000 C CNN
F 2 "house_cube:button" H 8250 4150 50  0001 C CNN
F 3 "~" H 8250 4150 50  0001 C CNN
	1    8250 3950
	0    1    1    0   
$EndComp
$Comp
L house_cube:gen_mosfet fet5
U 1 1 5FDD71D7
P 8150 3650
F 0 "fet5" H 8328 3738 50  0000 L CNN
F 1 "gen_mosfet" H 8328 3647 50  0000 L CNN
F 2 "house_cube:gen_fet" H 8150 3950 50  0001 C CNN
F 3 "" H 8150 3950 50  0001 C CNN
	1    8150 3650
	1    0    0    -1  
$EndComp
Text GLabel 8250 4150 3    50   Input ~ 0
watch
Text GLabel 3800 2450 2    50   Input ~ 0
qa
Text GLabel 3800 2550 2    50   Input ~ 0
qb
Text GLabel 3800 2650 2    50   Input ~ 0
qc
Text GLabel 3800 2750 2    50   Input ~ 0
qd
Text GLabel 3800 2850 2    50   Input ~ 0
qe
Text GLabel 3800 2950 2    50   Input ~ 0
qf
Text GLabel 3800 3050 2    50   Input ~ 0
qg
Text GLabel 3800 3150 2    50   Input ~ 0
qh
Text GLabel 3850 3250 2    50   Input ~ 0
qh'
Text GLabel 3000 2850 0    50   Input ~ 0
clk
Text GLabel 4750 2200 3    50   Input ~ 0
clk
Text GLabel 4850 2200 3    50   Input ~ 0
data
Text GLabel 4950 2100 3    50   Input ~ 0
latch
Text GLabel 5050 2200 3    50   Input ~ 0
horz
Text GLabel 5150 2100 3    50   Input ~ 0
vert
Text GLabel 4900 3200 1    50   Input ~ 0
horz
Text GLabel 4600 3250 1    50   Input ~ 0
vert
$Comp
L house_cube:gen_mosfet fet1
U 1 1 5FDDAF27
P 4250 4000
F 0 "fet1" H 4428 4088 50  0000 L CNN
F 1 "gen_mosfet" H 4428 3997 50  0000 L CNN
F 2 "house_cube:gen_fet" H 4250 4300 50  0001 C CNN
F 3 "" H 4250 4300 50  0001 C CNN
	1    4250 4000
	1    0    0    -1  
$EndComp
Text GLabel 4350 4200 3    50   Input ~ 0
watch
Text GLabel 4150 4100 3    50   Input ~ 0
qa
Text GLabel 7050 3750 3    50   Input ~ 0
qb
Text GLabel 8050 3750 3    50   Input ~ 0
qc
Text GLabel 7050 2550 3    50   Input ~ 0
qd
Text GLabel 8000 2550 3    50   Input ~ 0
qe
Text GLabel 8850 2550 3    50   Input ~ 0
qf
Text GLabel 9750 2550 0    50   Input ~ 0
qg
Text GLabel 10600 2550 0    50   Input ~ 0
qh
Text GLabel 3000 2550 0    50   Input ~ 0
data
Text GLabel 2900 2750 0    50   Input ~ 0
latch
$Comp
L Connector:Conn_01x07_Female J1
U 1 1 5FDDC9E2
P 5650 2300
F 0 "J1" V 5723 2280 50  0000 C CNN
F 1 "Conn_01x07_Female" V 5814 2280 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 5650 2300 50  0001 C CNN
F 3 "~" H 5650 2300 50  0001 C CNN
	1    5650 2300
	0    1    1    0   
$EndComp
Text GLabel 5950 3400 0    50   Input ~ 0
watch
$Comp
L Device:R pull_down1
U 1 1 5FDDE35C
P 6100 3400
F 0 "pull_down1" V 5893 3400 50  0000 C CNN
F 1 "pull_down" V 5984 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 3400 50  0001 C CNN
F 3 "~" H 6100 3400 50  0001 C CNN
	1    6100 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 3200 4900 3300
Wire Wire Line
	5000 3200 5000 3300
Wire Wire Line
	4600 3250 4600 3300
Wire Wire Line
	3800 3250 3850 3250
Wire Wire Line
	3300 3500 3300 3450
Wire Wire Line
	2900 2750 3000 2750
Wire Wire Line
	4750 2200 4750 2100
Wire Wire Line
	4850 2100 4850 2200
Wire Wire Line
	5050 2200 5050 2100
$Comp
L power:GND #PWR0102
U 1 1 5FDE8660
P 3000 2650
F 0 "#PWR0102" H 3000 2400 50  0001 C CNN
F 1 "GND" H 3005 2477 50  0000 C CNN
F 2 "" H 3000 2650 50  0001 C CNN
F 3 "" H 3000 2650 50  0001 C CNN
	1    3000 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FDE8B5F
P 4550 2100
F 0 "#PWR0103" H 4550 1850 50  0001 C CNN
F 1 "GND" H 4555 1927 50  0000 C CNN
F 2 "" H 4550 2100 50  0001 C CNN
F 3 "" H 4550 2100 50  0001 C CNN
	1    4550 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FDE8DEA
P 6250 3400
F 0 "#PWR0104" H 6250 3150 50  0001 C CNN
F 1 "GND" H 6255 3227 50  0000 C CNN
F 2 "" H 6250 3400 50  0001 C CNN
F 3 "" H 6250 3400 50  0001 C CNN
	1    6250 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5FDE917D
P 4650 2100
F 0 "#PWR0105" H 4650 1950 50  0001 C CNN
F 1 "+5V" H 4665 2273 50  0000 C CNN
F 2 "" H 4650 2100 50  0001 C CNN
F 3 "" H 4650 2100 50  0001 C CNN
	1    4650 2100
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5FDE94B1
P 7150 2550
F 0 "#PWR0106" H 7150 2400 50  0001 C CNN
F 1 "+5V" H 7165 2723 50  0000 C CNN
F 2 "" H 7150 2550 50  0001 C CNN
F 3 "" H 7150 2550 50  0001 C CNN
	1    7150 2550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5FDE9B71
P 8100 2550
F 0 "#PWR0107" H 8100 2400 50  0001 C CNN
F 1 "+5V" H 8115 2723 50  0000 C CNN
F 2 "" H 8100 2550 50  0001 C CNN
F 3 "" H 8100 2550 50  0001 C CNN
	1    8100 2550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5FDE9F01
P 8950 2550
F 0 "#PWR0108" H 8950 2400 50  0001 C CNN
F 1 "+5V" H 8965 2723 50  0000 C CNN
F 2 "" H 8950 2550 50  0001 C CNN
F 3 "" H 8950 2550 50  0001 C CNN
	1    8950 2550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5FDEA277
P 9850 2550
F 0 "#PWR0109" H 9850 2400 50  0001 C CNN
F 1 "+5V" H 9865 2723 50  0000 C CNN
F 2 "" H 9850 2550 50  0001 C CNN
F 3 "" H 9850 2550 50  0001 C CNN
	1    9850 2550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5FDEA673
P 10700 2550
F 0 "#PWR0110" H 10700 2400 50  0001 C CNN
F 1 "+5V" H 10715 2723 50  0000 C CNN
F 2 "" H 10700 2550 50  0001 C CNN
F 3 "" H 10700 2550 50  0001 C CNN
	1    10700 2550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5FDEAA48
P 8150 3750
F 0 "#PWR0111" H 8150 3600 50  0001 C CNN
F 1 "+5V" H 8165 3923 50  0000 C CNN
F 2 "" H 8150 3750 50  0001 C CNN
F 3 "" H 8150 3750 50  0001 C CNN
	1    8150 3750
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5FDEAE38
P 7150 3750
F 0 "#PWR0112" H 7150 3600 50  0001 C CNN
F 1 "+5V" H 7165 3923 50  0000 C CNN
F 2 "" H 7150 3750 50  0001 C CNN
F 3 "" H 7150 3750 50  0001 C CNN
	1    7150 3750
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5FDEB29B
P 5000 3200
F 0 "#PWR0113" H 5000 3050 50  0001 C CNN
F 1 "+5V" H 5015 3373 50  0000 C CNN
F 2 "" H 5000 3200 50  0001 C CNN
F 3 "" H 5000 3200 50  0001 C CNN
	1    5000 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5FDEB834
P 4250 4100
F 0 "#PWR0114" H 4250 3950 50  0001 C CNN
F 1 "+5V" H 4265 4273 50  0000 C CNN
F 2 "" H 4250 4100 50  0001 C CNN
F 3 "" H 4250 4100 50  0001 C CNN
	1    4250 4100
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5FDEBA9A
P 3400 2150
F 0 "#PWR0115" H 3400 2000 50  0001 C CNN
F 1 "+5V" H 3415 2323 50  0000 C CNN
F 2 "" H 3400 2150 50  0001 C CNN
F 3 "" H 3400 2150 50  0001 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5FDEC0AD
P 3000 2950
F 0 "#PWR0116" H 3000 2800 50  0001 C CNN
F 1 "+5V" H 3015 3123 50  0000 C CNN
F 2 "" H 3000 2950 50  0001 C CNN
F 3 "" H 3000 2950 50  0001 C CNN
	1    3000 2950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5FDEC9D4
P 3850 3450
F 0 "J2" V 3696 3498 50  0000 L CNN
F 1 "qh'" V 3787 3498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 3850 3450 50  0001 C CNN
F 3 "~" H 3850 3450 50  0001 C CNN
	1    3850 3450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5FDEE34E
P 4700 3300
F 0 "#PWR0101" H 4700 3150 50  0001 C CNN
F 1 "+5V" H 4715 3473 50  0000 C CNN
F 2 "" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
$Comp
L house_cube:joy U2
U 1 1 5FDC31F1
P 4600 3400
F 0 "U2" H 5578 3588 50  0000 L CNN
F 1 "joy" H 5578 3497 50  0000 L CNN
F 2 "house_cube:joy" H 4600 3400 50  0001 C CNN
F 3 "" H 4600 3400 50  0001 C CNN
	1    4600 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5FDEEB88
P 4800 3300
F 0 "#PWR0117" H 4800 3050 50  0001 C CNN
F 1 "GND" H 4805 3127 50  0000 C CNN
F 2 "" H 4800 3300 50  0001 C CNN
F 3 "" H 4800 3300 50  0001 C CNN
	1    4800 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5FDEFAD3
P 4500 3300
F 0 "#PWR0118" H 4500 3050 50  0001 C CNN
F 1 "GND" H 4505 3127 50  0000 C CNN
F 2 "" H 4500 3300 50  0001 C CNN
F 3 "" H 4500 3300 50  0001 C CNN
	1    4500 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5FDF0033
P 3300 3500
F 0 "#PWR0119" H 3300 3250 50  0001 C CNN
F 1 "GND" H 3305 3327 50  0000 C CNN
F 2 "" H 3300 3500 50  0001 C CNN
F 3 "" H 3300 3500 50  0001 C CNN
	1    3300 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female .1
U 1 1 5FDF035F
P 5100 5700
F 0 ".1" V 5173 5630 50  0000 C CNN
F 1 "." V 5264 5630 50  0000 C CNN
F 2 "house_cube:proto" H 5100 5700 50  0001 C CNN
F 3 "~" H 5100 5700 50  0001 C CNN
	1    5100 5700
	0    1    1    0   
$EndComp
NoConn ~ 5800 5500
NoConn ~ 5700 5500
NoConn ~ 5600 5500
NoConn ~ 5500 5500
NoConn ~ 5400 5500
NoConn ~ 5300 5500
NoConn ~ 5200 5500
NoConn ~ 5100 5500
NoConn ~ 5000 5500
NoConn ~ 4900 5500
NoConn ~ 4800 5500
NoConn ~ 4700 5500
NoConn ~ 4600 5500
NoConn ~ 4500 5500
NoConn ~ 4400 5500
NoConn ~ 4300 5500
$Comp
L Connector:Conn_01x16_Female .2
U 1 1 5FDF5086
P 5100 5950
F 0 ".2" V 5173 5880 50  0000 C CNN
F 1 "." V 5264 5880 50  0000 C CNN
F 2 "house_cube:proto" H 5100 5950 50  0001 C CNN
F 3 "~" H 5100 5950 50  0001 C CNN
	1    5100 5950
	0    1    1    0   
$EndComp
NoConn ~ 5800 5750
NoConn ~ 5700 5750
NoConn ~ 5600 5750
NoConn ~ 5500 5750
NoConn ~ 5400 5750
NoConn ~ 5300 5750
NoConn ~ 5200 5750
NoConn ~ 5100 5750
NoConn ~ 5000 5750
NoConn ~ 4900 5750
NoConn ~ 4800 5750
NoConn ~ 4700 5750
NoConn ~ 4600 5750
NoConn ~ 4500 5750
NoConn ~ 4400 5750
NoConn ~ 4300 5750
NoConn ~ 5800 6000
NoConn ~ 5700 6000
NoConn ~ 5600 6000
NoConn ~ 5500 6000
NoConn ~ 5400 6000
NoConn ~ 5300 6000
NoConn ~ 5200 6000
NoConn ~ 5100 6000
NoConn ~ 5000 6000
NoConn ~ 4900 6000
NoConn ~ 4800 6000
NoConn ~ 4700 6000
NoConn ~ 4600 6000
NoConn ~ 4500 6000
NoConn ~ 4400 6000
NoConn ~ 4300 6000
$EndSCHEMATC
