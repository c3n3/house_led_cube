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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5F5E5ABF
P 2000 2100
F 0 "A1" H 2000 1011 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2000 920 50  0000 C CNN
F 2 "footprints:nano" H 2000 2100 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2000 2100 50  0001 C CNN
	1    2000 2100
	1    0    0    -1  
$EndComp
Text GLabel 4350 4900 0    50   Input ~ 0
rclk
$Comp
L power:GND #PWR0101
U 1 1 5F5F22D1
P 4350 5000
F 0 "#PWR0101" H 4350 4750 50  0001 C CNN
F 1 "GND" H 4355 4827 50  0000 C CNN
F 2 "" H 4350 5000 50  0001 C CNN
F 3 "" H 4350 5000 50  0001 C CNN
	1    4350 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 SHIFT4
U 1 1 5F5EBD27
P 4750 4800
F 0 "SHIFT4" H 4750 5581 50  0000 C CNN
F 1 "74HC595" H 4750 5490 50  0000 C CNN
F 2 "footprints:SN74HC595N" H 4750 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4750 4800 50  0001 C CNN
	1    4750 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5F5F7B7C
P 4350 4700
F 0 "#PWR0102" H 4350 4550 50  0001 C CNN
F 1 "+5V" V 4365 4828 50  0000 L CNN
F 2 "" H 4350 4700 50  0001 C CNN
F 3 "" H 4350 4700 50  0001 C CNN
	1    4350 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5F5F8F99
P 4750 4200
F 0 "#PWR0103" H 4750 4050 50  0001 C CNN
F 1 "+5V" V 4765 4328 50  0000 L CNN
F 2 "" H 4750 4200 50  0001 C CNN
F 3 "" H 4750 4200 50  0001 C CNN
	1    4750 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F5F90F6
P 4750 5500
F 0 "#PWR0104" H 4750 5250 50  0001 C CNN
F 1 "GND" H 4755 5327 50  0000 C CNN
F 2 "" H 4750 5500 50  0001 C CNN
F 3 "" H 4750 5500 50  0001 C CNN
	1    4750 5500
	1    0    0    -1  
$EndComp
Text GLabel 4350 4600 0    50   Input ~ 0
srclk
Text GLabel 1500 2100 0    50   Input ~ 0
d6
Text GLabel 1500 2000 0    50   Input ~ 0
rclk
Text GLabel 1500 1900 0    50   Input ~ 0
srclk
Text GLabel 4350 3050 0    50   Input ~ 0
rclk
$Comp
L power:GND #PWR0105
U 1 1 5F6013AB
P 4350 3150
F 0 "#PWR0105" H 4350 2900 50  0001 C CNN
F 1 "GND" H 4355 2977 50  0000 C CNN
F 2 "" H 4350 3150 50  0001 C CNN
F 3 "" H 4350 3150 50  0001 C CNN
	1    4350 3150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 SHIFT0
U 1 1 5F6013B1
P 4750 2950
F 0 "SHIFT0" H 4750 3731 50  0000 C CNN
F 1 "74HC595" H 4750 3640 50  0000 C CNN
F 2 "footprints:SN74HC595N" H 4750 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4750 2950 50  0001 C CNN
	1    4750 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5F6013B7
P 4350 2850
F 0 "#PWR0106" H 4350 2700 50  0001 C CNN
F 1 "+5V" V 4365 2978 50  0000 L CNN
F 2 "" H 4350 2850 50  0001 C CNN
F 3 "" H 4350 2850 50  0001 C CNN
	1    4350 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5F6013BD
P 4750 2350
F 0 "#PWR0107" H 4750 2200 50  0001 C CNN
F 1 "+5V" V 4765 2478 50  0000 L CNN
F 2 "" H 4750 2350 50  0001 C CNN
F 3 "" H 4750 2350 50  0001 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F6013C3
P 4750 3650
F 0 "#PWR0108" H 4750 3400 50  0001 C CNN
F 1 "GND" H 4755 3477 50  0000 C CNN
F 2 "" H 4750 3650 50  0001 C CNN
F 3 "" H 4750 3650 50  0001 C CNN
	1    4750 3650
	1    0    0    -1  
$EndComp
Text GLabel 4350 2750 0    50   Input ~ 0
srclk
Text GLabel 4350 2550 0    50   Input ~ 0
d6
Text GLabel 6100 3050 0    50   Input ~ 0
rclk
Text GLabel 6100 2750 0    50   Input ~ 0
srclk
Text GLabel 7600 3050 0    50   Input ~ 0
rclk
$Comp
L power:GND #PWR0109
U 1 1 5F605C49
P 7600 3150
F 0 "#PWR0109" H 7600 2900 50  0001 C CNN
F 1 "GND" H 7605 2977 50  0000 C CNN
F 2 "" H 7600 3150 50  0001 C CNN
F 3 "" H 7600 3150 50  0001 C CNN
	1    7600 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5F605C55
P 7600 2850
F 0 "#PWR0110" H 7600 2700 50  0001 C CNN
F 1 "+5V" V 7615 2978 50  0000 L CNN
F 2 "" H 7600 2850 50  0001 C CNN
F 3 "" H 7600 2850 50  0001 C CNN
	1    7600 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5F605C5B
P 8000 2350
F 0 "#PWR0111" H 8000 2200 50  0001 C CNN
F 1 "+5V" V 8015 2478 50  0000 L CNN
F 2 "" H 8000 2350 50  0001 C CNN
F 3 "" H 8000 2350 50  0001 C CNN
	1    8000 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F605C61
P 8000 3650
F 0 "#PWR0112" H 8000 3400 50  0001 C CNN
F 1 "GND" H 8005 3477 50  0000 C CNN
F 2 "" H 8000 3650 50  0001 C CNN
F 3 "" H 8000 3650 50  0001 C CNN
	1    8000 3650
	1    0    0    -1  
$EndComp
Text GLabel 7600 2750 0    50   Input ~ 0
srclk
Text GLabel 9150 3050 0    50   Input ~ 0
rclk
$Comp
L power:GND #PWR0113
U 1 1 5F60802F
P 9150 3150
F 0 "#PWR0113" H 9150 2900 50  0001 C CNN
F 1 "GND" H 9155 2977 50  0000 C CNN
F 2 "" H 9150 3150 50  0001 C CNN
F 3 "" H 9150 3150 50  0001 C CNN
	1    9150 3150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 SHIFT3
U 1 1 5F608035
P 9550 2950
F 0 "SHIFT3" H 9550 3731 50  0000 C CNN
F 1 "74HC595" H 9550 3640 50  0000 C CNN
F 2 "footprints:SN74HC595N" H 9550 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9550 2950 50  0001 C CNN
	1    9550 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5F60803B
P 9150 2850
F 0 "#PWR0114" H 9150 2700 50  0001 C CNN
F 1 "+5V" V 9165 2978 50  0000 L CNN
F 2 "" H 9150 2850 50  0001 C CNN
F 3 "" H 9150 2850 50  0001 C CNN
	1    9150 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5F608041
P 9550 2350
F 0 "#PWR0115" H 9550 2200 50  0001 C CNN
F 1 "+5V" V 9565 2478 50  0000 L CNN
F 2 "" H 9550 2350 50  0001 C CNN
F 3 "" H 9550 2350 50  0001 C CNN
	1    9550 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F608047
P 9550 3650
F 0 "#PWR0116" H 9550 3400 50  0001 C CNN
F 1 "GND" H 9555 3477 50  0000 C CNN
F 2 "" H 9550 3650 50  0001 C CNN
F 3 "" H 9550 3650 50  0001 C CNN
	1    9550 3650
	1    0    0    -1  
$EndComp
Text GLabel 9150 2750 0    50   Input ~ 0
srclk
Text GLabel 6100 4950 0    50   Input ~ 0
rclk
$Comp
L power:GND #PWR0117
U 1 1 5F609153
P 6100 5050
F 0 "#PWR0117" H 6100 4800 50  0001 C CNN
F 1 "GND" H 6105 4877 50  0000 C CNN
F 2 "" H 6100 5050 50  0001 C CNN
F 3 "" H 6100 5050 50  0001 C CNN
	1    6100 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 SHIFT5
U 1 1 5F609159
P 6500 4850
F 0 "SHIFT5" H 6500 5631 50  0000 C CNN
F 1 "74HC595" H 6500 5540 50  0000 C CNN
F 2 "footprints:SN74HC595N" H 6500 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 6500 4850 50  0001 C CNN
	1    6500 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 5F60915F
P 6100 4750
F 0 "#PWR0118" H 6100 4600 50  0001 C CNN
F 1 "+5V" V 6115 4878 50  0000 L CNN
F 2 "" H 6100 4750 50  0001 C CNN
F 3 "" H 6100 4750 50  0001 C CNN
	1    6100 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 5F609165
P 6500 4250
F 0 "#PWR0119" H 6500 4100 50  0001 C CNN
F 1 "+5V" V 6515 4378 50  0000 L CNN
F 2 "" H 6500 4250 50  0001 C CNN
F 3 "" H 6500 4250 50  0001 C CNN
	1    6500 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F60916B
P 6500 5550
F 0 "#PWR0120" H 6500 5300 50  0001 C CNN
F 1 "GND" H 6505 5377 50  0000 C CNN
F 2 "" H 6500 5550 50  0001 C CNN
F 3 "" H 6500 5550 50  0001 C CNN
	1    6500 5550
	1    0    0    -1  
$EndComp
Text GLabel 6100 4650 0    50   Input ~ 0
srclk
Text GLabel 7600 4950 0    50   Input ~ 0
rclk
$Comp
L power:GND #PWR0121
U 1 1 5F609FD7
P 7600 5050
F 0 "#PWR0121" H 7600 4800 50  0001 C CNN
F 1 "GND" H 7605 4877 50  0000 C CNN
F 2 "" H 7600 5050 50  0001 C CNN
F 3 "" H 7600 5050 50  0001 C CNN
	1    7600 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 SHIFT6
U 1 1 5F609FDD
P 8000 4850
F 0 "SHIFT6" H 8000 5631 50  0000 C CNN
F 1 "74HC595" H 8000 5540 50  0000 C CNN
F 2 "footprints:SN74HC595N" H 8000 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8000 4850 50  0001 C CNN
	1    8000 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5F609FE3
P 7600 4750
F 0 "#PWR0122" H 7600 4600 50  0001 C CNN
F 1 "+5V" V 7615 4878 50  0000 L CNN
F 2 "" H 7600 4750 50  0001 C CNN
F 3 "" H 7600 4750 50  0001 C CNN
	1    7600 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5F609FE9
P 8000 4250
F 0 "#PWR0123" H 8000 4100 50  0001 C CNN
F 1 "+5V" V 8015 4378 50  0000 L CNN
F 2 "" H 8000 4250 50  0001 C CNN
F 3 "" H 8000 4250 50  0001 C CNN
	1    8000 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F609FEF
P 8000 5550
F 0 "#PWR0124" H 8000 5300 50  0001 C CNN
F 1 "GND" H 8005 5377 50  0000 C CNN
F 2 "" H 8000 5550 50  0001 C CNN
F 3 "" H 8000 5550 50  0001 C CNN
	1    8000 5550
	1    0    0    -1  
$EndComp
Text GLabel 7600 4650 0    50   Input ~ 0
srclk
Text GLabel 9150 4950 0    50   Input ~ 0
rclk
$Comp
L power:GND #PWR0125
U 1 1 5F60B037
P 9150 5050
F 0 "#PWR0125" H 9150 4800 50  0001 C CNN
F 1 "GND" H 9155 4877 50  0000 C CNN
F 2 "" H 9150 5050 50  0001 C CNN
F 3 "" H 9150 5050 50  0001 C CNN
	1    9150 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 SHIFT7
U 1 1 5F60B03D
P 9550 4850
F 0 "SHIFT7" H 9550 5631 50  0000 C CNN
F 1 "74HC595" H 9550 5540 50  0000 C CNN
F 2 "footprints:SN74HC595N" H 9550 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9550 4850 50  0001 C CNN
	1    9550 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0126
U 1 1 5F60B043
P 9150 4750
F 0 "#PWR0126" H 9150 4600 50  0001 C CNN
F 1 "+5V" V 9165 4878 50  0000 L CNN
F 2 "" H 9150 4750 50  0001 C CNN
F 3 "" H 9150 4750 50  0001 C CNN
	1    9150 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 5F60B049
P 9550 4250
F 0 "#PWR0127" H 9550 4100 50  0001 C CNN
F 1 "+5V" V 9565 4378 50  0000 L CNN
F 2 "" H 9550 4250 50  0001 C CNN
F 3 "" H 9550 4250 50  0001 C CNN
	1    9550 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5F60B04F
P 9550 5550
F 0 "#PWR0128" H 9550 5300 50  0001 C CNN
F 1 "GND" H 9555 5377 50  0000 C CNN
F 2 "" H 9550 5550 50  0001 C CNN
F 3 "" H 9550 5550 50  0001 C CNN
	1    9550 5550
	1    0    0    -1  
$EndComp
Text GLabel 9150 4650 0    50   Input ~ 0
srclk
$Comp
L 74xx:74HC595 SHIFT2
U 1 1 5F605C4F
P 8000 2950
F 0 "SHIFT2" H 8000 3731 50  0000 C CNN
F 1 "74HC595" H 8000 3640 50  0000 C CNN
F 2 "footprints:SN74HC595N" H 8000 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8000 2950 50  0001 C CNN
	1    8000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3450 9950 3900
Wire Wire Line
	9950 3900 4350 3900
Wire Wire Line
	4350 3900 4350 4400
Wire Wire Line
	5150 5300 5800 5300
Wire Wire Line
	5800 5300 5800 4450
Wire Wire Line
	5800 4450 6100 4450
Wire Wire Line
	8400 5350 8850 5350
Wire Wire Line
	8850 5350 8850 4450
Wire Wire Line
	8850 4450 9150 4450
Text GLabel 5150 2550 2    50   Input ~ 0
led0
Text GLabel 5150 2650 2    50   Input ~ 0
led1
Text GLabel 5150 2750 2    50   Input ~ 0
led2
Text GLabel 5150 3150 2    50   Input ~ 0
led6
Text GLabel 5150 3250 2    50   Input ~ 0
led7
Text GLabel 6900 2650 2    50   Input ~ 0
led9
Text GLabel 6900 2750 2    50   Input ~ 0
led10
Text GLabel 6900 2850 2    50   Input ~ 0
led11
Text GLabel 6900 2950 2    50   Input ~ 0
led12
Text GLabel 6900 3050 2    50   Input ~ 0
led13
Text GLabel 6900 3150 2    50   Input ~ 0
led14
Text GLabel 6900 3250 2    50   Input ~ 0
led15
Text GLabel 8400 2550 2    50   Input ~ 0
led16
Text GLabel 8400 2650 2    50   Input ~ 0
led17
Text GLabel 8400 2750 2    50   Input ~ 0
led18
Text GLabel 8400 2850 2    50   Input ~ 0
led19
Text GLabel 8400 2950 2    50   Input ~ 0
led20
Text GLabel 8400 3050 2    50   Input ~ 0
led21
Text GLabel 8400 3150 2    50   Input ~ 0
led22
Text GLabel 8400 3250 2    50   Input ~ 0
led23
$Comp
L power:GND #PWR0129
U 1 1 5F60466D
P 6500 3650
F 0 "#PWR0129" H 6500 3400 50  0001 C CNN
F 1 "GND" H 6505 3477 50  0000 C CNN
F 2 "" H 6500 3650 50  0001 C CNN
F 3 "" H 6500 3650 50  0001 C CNN
	1    6500 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 5F604667
P 6500 2350
F 0 "#PWR0130" H 6500 2200 50  0001 C CNN
F 1 "+5V" V 6515 2478 50  0000 L CNN
F 2 "" H 6500 2350 50  0001 C CNN
F 3 "" H 6500 2350 50  0001 C CNN
	1    6500 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5F604655
P 6100 3150
F 0 "#PWR0131" H 6100 2900 50  0001 C CNN
F 1 "GND" H 6105 2977 50  0000 C CNN
F 2 "" H 6100 3150 50  0001 C CNN
F 3 "" H 6100 3150 50  0001 C CNN
	1    6100 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 5F604661
P 6100 2850
F 0 "#PWR0132" H 6100 2700 50  0001 C CNN
F 1 "+5V" V 6115 2978 50  0000 L CNN
F 2 "" H 6100 2850 50  0001 C CNN
F 3 "" H 6100 2850 50  0001 C CNN
	1    6100 2850
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HC595 SHIFT1
U 1 1 5F60465B
P 6500 2950
F 0 "SHIFT1" H 6500 3731 50  0000 C CNN
F 1 "74HC595" H 6500 3640 50  0000 C CNN
F 2 "footprints:SN74HC595N" H 6500 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 6500 2950 50  0001 C CNN
	1    6500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3450 5700 3450
Text GLabel 5150 3050 2    50   Input ~ 0
led5
Text GLabel 5150 2950 2    50   Input ~ 0
led4
Text GLabel 5150 2850 2    50   Input ~ 0
led3
Wire Wire Line
	7250 4450 7250 5350
Wire Wire Line
	7250 5350 6900 5350
Wire Wire Line
	7250 4450 7600 4450
Text GLabel 6900 2550 2    50   Input ~ 0
led8
Wire Wire Line
	7600 2550 7300 2550
Wire Wire Line
	7300 2550 7300 3450
Wire Wire Line
	7300 3450 6900 3450
Wire Wire Line
	5700 3450 5700 2550
Wire Wire Line
	5700 2550 6100 2550
Wire Wire Line
	9150 2550 8800 2550
Wire Wire Line
	8800 2550 8800 3450
Wire Wire Line
	8800 3450 8400 3450
Text GLabel 9950 2550 2    50   Input ~ 0
led24
Text GLabel 9950 2650 2    50   Input ~ 0
led25
Text GLabel 9950 2750 2    50   Input ~ 0
led26
Text GLabel 9950 2850 2    50   Input ~ 0
led27
Text GLabel 9950 2950 2    50   Input ~ 0
led28
Text GLabel 9950 3050 2    50   Input ~ 0
led29
Text GLabel 9950 3150 2    50   Input ~ 0
led30
Text GLabel 9950 3250 2    50   Input ~ 0
led31
Text GLabel 5150 4400 2    50   Input ~ 0
led32
Text GLabel 5150 4500 2    50   Input ~ 0
led33
Text GLabel 5150 4600 2    50   Input ~ 0
led34
Text GLabel 5150 4700 2    50   Input ~ 0
led35
Text GLabel 5150 4800 2    50   Input ~ 0
led36
Text GLabel 5150 4900 2    50   Input ~ 0
led37
Text GLabel 5150 5000 2    50   Input ~ 0
led38
Text GLabel 5150 5100 2    50   Input ~ 0
led39
Text GLabel 6900 4450 2    50   Input ~ 0
led40
Text GLabel 6900 4550 2    50   Input ~ 0
led41
Text GLabel 6900 4650 2    50   Input ~ 0
led42
Text GLabel 6900 4750 2    50   Input ~ 0
led43
Text GLabel 6900 4850 2    50   Input ~ 0
led44
Text GLabel 6900 4950 2    50   Input ~ 0
led45
Text GLabel 6900 5050 2    50   Input ~ 0
led46
Text GLabel 6900 5150 2    50   Input ~ 0
led47
Text GLabel 8400 4450 2    50   Input ~ 0
led48
Text GLabel 8400 4550 2    50   Input ~ 0
led49
Text GLabel 8400 4650 2    50   Input ~ 0
led50
Text GLabel 8400 4750 2    50   Input ~ 0
led51
Text GLabel 8400 4850 2    50   Input ~ 0
led52
Text GLabel 8400 4950 2    50   Input ~ 0
led53
Text GLabel 8400 5050 2    50   Input ~ 0
led54
Text GLabel 8400 5150 2    50   Input ~ 0
led55
Text GLabel 9950 4450 2    50   Input ~ 0
led56
Text GLabel 9950 4550 2    50   Input ~ 0
led57
Text GLabel 9950 4650 2    50   Input ~ 0
led58
Text GLabel 9950 4750 2    50   Input ~ 0
led59
Text GLabel 9950 4850 2    50   Input ~ 0
led60
Text GLabel 9950 4950 2    50   Input ~ 0
led61
Text GLabel 9950 5050 2    50   Input ~ 0
led62
Text GLabel 9950 5150 2    50   Input ~ 0
led63
Text GLabel 1950 4000 0    50   Input ~ 0
led0
Text GLabel 1950 4100 0    50   Input ~ 0
led1
Text GLabel 1950 4200 0    50   Input ~ 0
led2
Text GLabel 1950 4600 0    50   Input ~ 0
led6
Text GLabel 1950 4700 0    50   Input ~ 0
led7
Text GLabel 1950 4500 0    50   Input ~ 0
led5
Text GLabel 1950 4400 0    50   Input ~ 0
led4
Text GLabel 1950 4300 0    50   Input ~ 0
led3
Text GLabel 1950 4900 0    50   Input ~ 0
led9
Text GLabel 1950 5000 0    50   Input ~ 0
led10
Text GLabel 1950 5100 0    50   Input ~ 0
led11
Text GLabel 1950 5200 0    50   Input ~ 0
led12
Text GLabel 1950 5300 0    50   Input ~ 0
led13
Text GLabel 1950 5400 0    50   Input ~ 0
led14
Text GLabel 1950 5500 0    50   Input ~ 0
led15
Text GLabel 1950 4800 0    50   Input ~ 0
led8
Text GLabel 1950 5600 0    50   Input ~ 0
led16
Text GLabel 1950 5700 0    50   Input ~ 0
led17
Text GLabel 1950 5800 0    50   Input ~ 0
led18
Text GLabel 1950 5900 0    50   Input ~ 0
led19
Text GLabel 1950 6000 0    50   Input ~ 0
led20
Text GLabel 1950 6100 0    50   Input ~ 0
led21
Text GLabel 1950 6200 0    50   Input ~ 0
led22
Text GLabel 1950 6300 0    50   Input ~ 0
led23
Text GLabel 1950 6400 0    50   Input ~ 0
led24
Text GLabel 1950 6500 0    50   Input ~ 0
led25
Text GLabel 1950 6600 0    50   Input ~ 0
led26
Text GLabel 1950 6700 0    50   Input ~ 0
led27
Text GLabel 1950 6800 0    50   Input ~ 0
led28
Text GLabel 1950 6900 0    50   Input ~ 0
led29
Text GLabel 1950 7000 0    50   Input ~ 0
led30
Text GLabel 1950 7100 0    50   Input ~ 0
led31
Text GLabel 3150 7100 2    50   Input ~ 0
led32
Text GLabel 3150 7000 2    50   Input ~ 0
led33
Text GLabel 3150 6900 2    50   Input ~ 0
led34
Text GLabel 3150 6800 2    50   Input ~ 0
led35
Text GLabel 3150 6700 2    50   Input ~ 0
led36
Text GLabel 3150 6600 2    50   Input ~ 0
led37
Text GLabel 3150 6500 2    50   Input ~ 0
led38
Text GLabel 3150 6400 2    50   Input ~ 0
led39
Text GLabel 3150 6300 2    50   Input ~ 0
led40
Text GLabel 3150 6200 2    50   Input ~ 0
led41
Text GLabel 3150 6100 2    50   Input ~ 0
led42
Text GLabel 3150 4000 2    50   Input ~ 0
led43
Text GLabel 3150 4100 2    50   Input ~ 0
led44
Text GLabel 3150 4200 2    50   Input ~ 0
led45
Text GLabel 3150 4300 2    50   Input ~ 0
led46
Text GLabel 3150 4400 2    50   Input ~ 0
led47
Text GLabel 3150 4500 2    50   Input ~ 0
led48
Text GLabel 3150 4600 2    50   Input ~ 0
led49
Text GLabel 3150 4700 2    50   Input ~ 0
led50
Text GLabel 3150 4800 2    50   Input ~ 0
led51
Text GLabel 3150 4900 2    50   Input ~ 0
led52
Text GLabel 3150 5000 2    50   Input ~ 0
led53
Text GLabel 3150 5100 2    50   Input ~ 0
led54
Text GLabel 3150 5200 2    50   Input ~ 0
led55
Text GLabel 3150 5300 2    50   Input ~ 0
led56
Text GLabel 3150 5400 2    50   Input ~ 0
led57
Text GLabel 3150 5500 2    50   Input ~ 0
led58
Text GLabel 3150 5600 2    50   Input ~ 0
led59
Text GLabel 3150 5700 2    50   Input ~ 0
led60
Text GLabel 3150 5800 2    50   Input ~ 0
led61
Text GLabel 3150 5900 2    50   Input ~ 0
led62
Text GLabel 3150 6000 2    50   Input ~ 0
led63
Text GLabel 4350 6750 0    50   Input ~ 0
rclk
$Comp
L power:GND #PWR0133
U 1 1 5F65B1A6
P 4350 6850
F 0 "#PWR0133" H 4350 6600 50  0001 C CNN
F 1 "GND" H 4355 6677 50  0000 C CNN
F 2 "" H 4350 6850 50  0001 C CNN
F 3 "" H 4350 6850 50  0001 C CNN
	1    4350 6850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 SHIFT_PLANE1
U 1 1 5F65B1AC
P 4750 6650
F 0 "SHIFT_PLANE1" H 4750 7431 50  0000 C CNN
F 1 "74HC595" H 4750 7340 50  0000 C CNN
F 2 "footprints:SN74HC595N" H 4750 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4750 6650 50  0001 C CNN
	1    4750 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0134
U 1 1 5F65B1B2
P 4350 6550
F 0 "#PWR0134" H 4350 6400 50  0001 C CNN
F 1 "+5V" V 4365 6678 50  0000 L CNN
F 2 "" H 4350 6550 50  0001 C CNN
F 3 "" H 4350 6550 50  0001 C CNN
	1    4350 6550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0135
U 1 1 5F65B1B8
P 4750 6050
F 0 "#PWR0135" H 4750 5900 50  0001 C CNN
F 1 "+5V" V 4765 6178 50  0000 L CNN
F 2 "" H 4750 6050 50  0001 C CNN
F 3 "" H 4750 6050 50  0001 C CNN
	1    4750 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5F65B1BE
P 4750 7350
F 0 "#PWR0136" H 4750 7100 50  0001 C CNN
F 1 "GND" H 4755 7177 50  0000 C CNN
F 2 "" H 4750 7350 50  0001 C CNN
F 3 "" H 4750 7350 50  0001 C CNN
	1    4750 7350
	1    0    0    -1  
$EndComp
Text GLabel 4350 6450 0    50   Input ~ 0
srclk
Text GLabel 5150 6250 2    50   Input ~ 0
plane0
Text GLabel 5150 6350 2    50   Input ~ 0
plane1
Text GLabel 5150 6450 2    50   Input ~ 0
plane2
Text GLabel 5150 6550 2    50   Input ~ 0
plane3
Text GLabel 5150 6650 2    50   Input ~ 0
plane4
Text GLabel 5150 6750 2    50   Input ~ 0
plane5
Text GLabel 5150 6850 2    50   Input ~ 0
plane6
Text GLabel 5150 6950 2    50   Input ~ 0
plane7
Wire Wire Line
	9950 5350 9950 6050
Wire Wire Line
	9950 6050 5650 6050
Wire Wire Line
	5650 6050 5650 7150
Wire Wire Line
	5650 7150 5150 7150
$Comp
L 2020-09-13_18-05-30:led_cube U1
U 1 1 5F6DF157
P 2550 5450
F 0 "U1" H 2550 7125 50  0000 C CNN
F 1 "led_cube" H 2550 7034 50  0000 C CNN
F 2 "footprints:led_cube" H 2550 7150 50  0001 C CNN
F 3 "" H 2550 7150 50  0001 C CNN
	1    2550 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R LM1
U 1 1 5F6FF421
P 2100 4000
F 0 "LM1" V 1893 4000 50  0000 C CNN
F 1 "LM" V 1984 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4000 50  0001 C CNN
F 3 "~" H 2100 4000 50  0001 C CNN
	1    2100 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R LM2
U 1 1 5F701302
P 2100 4100
F 0 "LM2" V 1893 4100 50  0000 C CNN
F 1 "LM" V 1984 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4100 50  0001 C CNN
F 3 "~" H 2100 4100 50  0001 C CNN
	1    2100 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R LM3
U 1 1 5F701834
P 2100 4200
F 0 "LM3" V 1893 4200 50  0000 C CNN
F 1 "LM" V 1984 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4200 50  0001 C CNN
F 3 "~" H 2100 4200 50  0001 C CNN
	1    2100 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R LM4
U 1 1 5F701BFA
P 2100 4300
F 0 "LM4" V 1893 4300 50  0000 C CNN
F 1 "LM" V 1984 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4300 50  0001 C CNN
F 3 "~" H 2100 4300 50  0001 C CNN
	1    2100 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R LM5
U 1 1 5F701FEE
P 2100 4400
F 0 "LM5" V 1893 4400 50  0000 C CNN
F 1 "LM" V 1984 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4400 50  0001 C CNN
F 3 "~" H 2100 4400 50  0001 C CNN
	1    2100 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R LM6
U 1 1 5F70246A
P 2100 4500
F 0 "LM6" V 1893 4500 50  0000 C CNN
F 1 "LM" V 1984 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4500 50  0001 C CNN
F 3 "~" H 2100 4500 50  0001 C CNN
	1    2100 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R LM7
U 1 1 5F70283F
P 2100 4600
F 0 "LM7" V 1893 4600 50  0000 C CNN
F 1 "LM" V 1984 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4600 50  0001 C CNN
F 3 "~" H 2100 4600 50  0001 C CNN
	1    2100 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R LM8
U 1 1 5F702C4D
P 2100 4700
F 0 "LM8" V 1893 4700 50  0000 C CNN
F 1 "LM" V 1984 4700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4700 50  0001 C CNN
F 3 "~" H 2100 4700 50  0001 C CNN
	1    2100 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R LM9
U 1 1 5F7054CD
P 2100 4800
F 0 "LM9" V 1893 4800 50  0000 C CNN
F 1 "LM" V 1984 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4800 50  0001 C CNN
F 3 "~" H 2100 4800 50  0001 C CNN
	1    2100 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R LM10
U 1 1 5F7054D3
P 2100 4900
F 0 "LM10" V 1893 4900 50  0000 C CNN
F 1 "LM" V 1984 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 4900 50  0001 C CNN
F 3 "~" H 2100 4900 50  0001 C CNN
	1    2100 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R LM11
U 1 1 5F7054D9
P 2100 5000
F 0 "LM11" V 1893 5000 50  0000 C CNN
F 1 "LM" V 1984 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5000 50  0001 C CNN
F 3 "~" H 2100 5000 50  0001 C CNN
	1    2100 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R LM12
U 1 1 5F7054DF
P 2100 5100
F 0 "LM12" V 1893 5100 50  0000 C CNN
F 1 "LM" V 1984 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5100 50  0001 C CNN
F 3 "~" H 2100 5100 50  0001 C CNN
	1    2100 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R LM13
U 1 1 5F7054E5
P 2100 5200
F 0 "LM13" V 1893 5200 50  0000 C CNN
F 1 "LM" V 1984 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5200 50  0001 C CNN
F 3 "~" H 2100 5200 50  0001 C CNN
	1    2100 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R LM14
U 1 1 5F7054EB
P 2100 5300
F 0 "LM14" V 1893 5300 50  0000 C CNN
F 1 "LM" V 1984 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5300 50  0001 C CNN
F 3 "~" H 2100 5300 50  0001 C CNN
	1    2100 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R LM15
U 1 1 5F7054F1
P 2100 5400
F 0 "LM15" V 1893 5400 50  0000 C CNN
F 1 "LM" V 1984 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5400 50  0001 C CNN
F 3 "~" H 2100 5400 50  0001 C CNN
	1    2100 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R LM16
U 1 1 5F7054F7
P 2100 5500
F 0 "LM16" V 1893 5500 50  0000 C CNN
F 1 "LM" V 1984 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5500 50  0001 C CNN
F 3 "~" H 2100 5500 50  0001 C CNN
	1    2100 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R LM17
U 1 1 5F707D7F
P 2100 5600
F 0 "LM17" V 1893 5600 50  0000 C CNN
F 1 "LM" V 1984 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5600 50  0001 C CNN
F 3 "~" H 2100 5600 50  0001 C CNN
	1    2100 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R LM18
U 1 1 5F707D85
P 2100 5700
F 0 "LM18" V 1893 5700 50  0000 C CNN
F 1 "LM" V 1984 5700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5700 50  0001 C CNN
F 3 "~" H 2100 5700 50  0001 C CNN
	1    2100 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R LM19
U 1 1 5F707D8B
P 2100 5800
F 0 "LM19" V 1893 5800 50  0000 C CNN
F 1 "LM" V 1984 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5800 50  0001 C CNN
F 3 "~" H 2100 5800 50  0001 C CNN
	1    2100 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R LM20
U 1 1 5F707D91
P 2100 5900
F 0 "LM20" V 1893 5900 50  0000 C CNN
F 1 "LM" V 1984 5900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 5900 50  0001 C CNN
F 3 "~" H 2100 5900 50  0001 C CNN
	1    2100 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R LM21
U 1 1 5F707D97
P 2100 6000
F 0 "LM21" V 1893 6000 50  0000 C CNN
F 1 "LM" V 1984 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6000 50  0001 C CNN
F 3 "~" H 2100 6000 50  0001 C CNN
	1    2100 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R LM22
U 1 1 5F707D9D
P 2100 6100
F 0 "LM22" V 1893 6100 50  0000 C CNN
F 1 "LM" V 1984 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6100 50  0001 C CNN
F 3 "~" H 2100 6100 50  0001 C CNN
	1    2100 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R LM23
U 1 1 5F707DA3
P 2100 6200
F 0 "LM23" V 1893 6200 50  0000 C CNN
F 1 "LM" V 1984 6200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6200 50  0001 C CNN
F 3 "~" H 2100 6200 50  0001 C CNN
	1    2100 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R LM24
U 1 1 5F707DA9
P 2100 6300
F 0 "LM24" V 1893 6300 50  0000 C CNN
F 1 "LM" V 1984 6300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6300 50  0001 C CNN
F 3 "~" H 2100 6300 50  0001 C CNN
	1    2100 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R LM25
U 1 1 5F7098FD
P 2100 6400
F 0 "LM25" V 1893 6400 50  0000 C CNN
F 1 "LM" V 1984 6400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6400 50  0001 C CNN
F 3 "~" H 2100 6400 50  0001 C CNN
	1    2100 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R LM26
U 1 1 5F709903
P 2100 6500
F 0 "LM26" V 1893 6500 50  0000 C CNN
F 1 "LM" V 1984 6500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6500 50  0001 C CNN
F 3 "~" H 2100 6500 50  0001 C CNN
	1    2100 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R LM27
U 1 1 5F709909
P 2100 6600
F 0 "LM27" V 1893 6600 50  0000 C CNN
F 1 "LM" V 1984 6600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6600 50  0001 C CNN
F 3 "~" H 2100 6600 50  0001 C CNN
	1    2100 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R LM28
U 1 1 5F70990F
P 2100 6700
F 0 "LM28" V 1893 6700 50  0000 C CNN
F 1 "LM" V 1984 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6700 50  0001 C CNN
F 3 "~" H 2100 6700 50  0001 C CNN
	1    2100 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R LM29
U 1 1 5F709915
P 2100 6800
F 0 "LM29" V 1893 6800 50  0000 C CNN
F 1 "LM" V 1984 6800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6800 50  0001 C CNN
F 3 "~" H 2100 6800 50  0001 C CNN
	1    2100 6800
	0    1    1    0   
$EndComp
$Comp
L Device:R LM30
U 1 1 5F70991B
P 2100 6900
F 0 "LM30" V 1893 6900 50  0000 C CNN
F 1 "LM" V 1984 6900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 6900 50  0001 C CNN
F 3 "~" H 2100 6900 50  0001 C CNN
	1    2100 6900
	0    1    1    0   
$EndComp
$Comp
L Device:R LM31
U 1 1 5F709921
P 2100 7000
F 0 "LM31" V 1893 7000 50  0000 C CNN
F 1 "LM" V 1984 7000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 7000 50  0001 C CNN
F 3 "~" H 2100 7000 50  0001 C CNN
	1    2100 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R LM32
U 1 1 5F709927
P 2100 7100
F 0 "LM32" V 1893 7100 50  0000 C CNN
F 1 "LM" V 1984 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2030 7100 50  0001 C CNN
F 3 "~" H 2100 7100 50  0001 C CNN
	1    2100 7100
	0    1    1    0   
$EndComp
$Comp
L Device:R LM57
U 1 1 5F70BD9F
P 3000 6400
F 0 "LM57" V 2793 6400 50  0000 C CNN
F 1 "LM" V 2884 6400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6400 50  0001 C CNN
F 3 "~" H 3000 6400 50  0001 C CNN
	1    3000 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R LM58
U 1 1 5F70BDA5
P 3000 6500
F 0 "LM58" V 2793 6500 50  0000 C CNN
F 1 "LM" V 2884 6500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6500 50  0001 C CNN
F 3 "~" H 3000 6500 50  0001 C CNN
	1    3000 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R LM59
U 1 1 5F70BDAB
P 3000 6600
F 0 "LM59" V 2793 6600 50  0000 C CNN
F 1 "LM" V 2884 6600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6600 50  0001 C CNN
F 3 "~" H 3000 6600 50  0001 C CNN
	1    3000 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R LM60
U 1 1 5F70BDB1
P 3000 6700
F 0 "LM60" V 2793 6700 50  0000 C CNN
F 1 "LM" V 2884 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6700 50  0001 C CNN
F 3 "~" H 3000 6700 50  0001 C CNN
	1    3000 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R LM61
U 1 1 5F70BDB7
P 3000 6800
F 0 "LM61" V 2793 6800 50  0000 C CNN
F 1 "LM" V 2884 6800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6800 50  0001 C CNN
F 3 "~" H 3000 6800 50  0001 C CNN
	1    3000 6800
	0    1    1    0   
$EndComp
$Comp
L Device:R LM62
U 1 1 5F70BDBD
P 3000 6900
F 0 "LM62" V 2793 6900 50  0000 C CNN
F 1 "LM" V 2884 6900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6900 50  0001 C CNN
F 3 "~" H 3000 6900 50  0001 C CNN
	1    3000 6900
	0    1    1    0   
$EndComp
$Comp
L Device:R LM63
U 1 1 5F70BDC3
P 3000 7000
F 0 "LM63" V 2793 7000 50  0000 C CNN
F 1 "LM" V 2884 7000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 7000 50  0001 C CNN
F 3 "~" H 3000 7000 50  0001 C CNN
	1    3000 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R LM64
U 1 1 5F70BDC9
P 3000 7100
F 0 "LM64" V 2793 7100 50  0000 C CNN
F 1 "LM" V 2884 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 7100 50  0001 C CNN
F 3 "~" H 3000 7100 50  0001 C CNN
	1    3000 7100
	0    1    1    0   
$EndComp
$Comp
L Device:R LM49
U 1 1 5F70D089
P 3000 5600
F 0 "LM49" V 2793 5600 50  0000 C CNN
F 1 "LM" V 2884 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5600 50  0001 C CNN
F 3 "~" H 3000 5600 50  0001 C CNN
	1    3000 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R LM50
U 1 1 5F70D08F
P 3000 5700
F 0 "LM50" V 2793 5700 50  0000 C CNN
F 1 "LM" V 2884 5700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5700 50  0001 C CNN
F 3 "~" H 3000 5700 50  0001 C CNN
	1    3000 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R LM51
U 1 1 5F70D095
P 3000 5800
F 0 "LM51" V 2793 5800 50  0000 C CNN
F 1 "LM" V 2884 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5800 50  0001 C CNN
F 3 "~" H 3000 5800 50  0001 C CNN
	1    3000 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R LM52
U 1 1 5F70D09B
P 3000 5900
F 0 "LM52" V 2793 5900 50  0000 C CNN
F 1 "LM" V 2884 5900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5900 50  0001 C CNN
F 3 "~" H 3000 5900 50  0001 C CNN
	1    3000 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R LM53
U 1 1 5F70D0A1
P 3000 6000
F 0 "LM53" V 2793 6000 50  0000 C CNN
F 1 "LM" V 2884 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6000 50  0001 C CNN
F 3 "~" H 3000 6000 50  0001 C CNN
	1    3000 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R LM54
U 1 1 5F70D0A7
P 3000 6100
F 0 "LM54" V 2793 6100 50  0000 C CNN
F 1 "LM" V 2884 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6100 50  0001 C CNN
F 3 "~" H 3000 6100 50  0001 C CNN
	1    3000 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R LM55
U 1 1 5F70D0AD
P 3000 6200
F 0 "LM55" V 2793 6200 50  0000 C CNN
F 1 "LM" V 2884 6200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6200 50  0001 C CNN
F 3 "~" H 3000 6200 50  0001 C CNN
	1    3000 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R LM56
U 1 1 5F70D0B3
P 3000 6300
F 0 "LM56" V 2793 6300 50  0000 C CNN
F 1 "LM" V 2884 6300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 6300 50  0001 C CNN
F 3 "~" H 3000 6300 50  0001 C CNN
	1    3000 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R LM41
U 1 1 5F710471
P 3000 4800
F 0 "LM41" V 2793 4800 50  0000 C CNN
F 1 "LM" V 2884 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4800 50  0001 C CNN
F 3 "~" H 3000 4800 50  0001 C CNN
	1    3000 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R LM42
U 1 1 5F710477
P 3000 4900
F 0 "LM42" V 2793 4900 50  0000 C CNN
F 1 "LM" V 2884 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4900 50  0001 C CNN
F 3 "~" H 3000 4900 50  0001 C CNN
	1    3000 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R LM43
U 1 1 5F71047D
P 3000 5000
F 0 "LM43" V 2793 5000 50  0000 C CNN
F 1 "LM" V 2884 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5000 50  0001 C CNN
F 3 "~" H 3000 5000 50  0001 C CNN
	1    3000 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R LM44
U 1 1 5F710483
P 3000 5100
F 0 "LM44" V 2793 5100 50  0000 C CNN
F 1 "LM" V 2884 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5100 50  0001 C CNN
F 3 "~" H 3000 5100 50  0001 C CNN
	1    3000 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R LM45
U 1 1 5F710489
P 3000 5200
F 0 "LM45" V 2793 5200 50  0000 C CNN
F 1 "LM" V 2884 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5200 50  0001 C CNN
F 3 "~" H 3000 5200 50  0001 C CNN
	1    3000 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R LM46
U 1 1 5F71048F
P 3000 5300
F 0 "LM46" V 2793 5300 50  0000 C CNN
F 1 "LM" V 2884 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5300 50  0001 C CNN
F 3 "~" H 3000 5300 50  0001 C CNN
	1    3000 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R LM47
U 1 1 5F710495
P 3000 5400
F 0 "LM47" V 2793 5400 50  0000 C CNN
F 1 "LM" V 2884 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5400 50  0001 C CNN
F 3 "~" H 3000 5400 50  0001 C CNN
	1    3000 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R LM48
U 1 1 5F71049B
P 3000 5500
F 0 "LM48" V 2793 5500 50  0000 C CNN
F 1 "LM" V 2884 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 5500 50  0001 C CNN
F 3 "~" H 3000 5500 50  0001 C CNN
	1    3000 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R LM33
U 1 1 5F71477F
P 3000 4000
F 0 "LM33" V 2793 4000 50  0000 C CNN
F 1 "LM" V 2884 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4000 50  0001 C CNN
F 3 "~" H 3000 4000 50  0001 C CNN
	1    3000 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R LM34
U 1 1 5F714785
P 3000 4100
F 0 "LM34" V 2793 4100 50  0000 C CNN
F 1 "LM" V 2884 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4100 50  0001 C CNN
F 3 "~" H 3000 4100 50  0001 C CNN
	1    3000 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R LM35
U 1 1 5F71478B
P 3000 4200
F 0 "LM35" V 2793 4200 50  0000 C CNN
F 1 "LM" V 2884 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4200 50  0001 C CNN
F 3 "~" H 3000 4200 50  0001 C CNN
	1    3000 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R LM36
U 1 1 5F714791
P 3000 4300
F 0 "LM36" V 2793 4300 50  0000 C CNN
F 1 "LM" V 2884 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
	1    3000 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R LM37
U 1 1 5F714797
P 3000 4400
F 0 "LM37" V 2793 4400 50  0000 C CNN
F 1 "LM" V 2884 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4400 50  0001 C CNN
F 3 "~" H 3000 4400 50  0001 C CNN
	1    3000 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R LM38
U 1 1 5F71479D
P 3000 4500
F 0 "LM38" V 2793 4500 50  0000 C CNN
F 1 "LM" V 2884 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4500 50  0001 C CNN
F 3 "~" H 3000 4500 50  0001 C CNN
	1    3000 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R LM39
U 1 1 5F7147A3
P 3000 4600
F 0 "LM39" V 2793 4600 50  0000 C CNN
F 1 "LM" V 2884 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4600 50  0001 C CNN
F 3 "~" H 3000 4600 50  0001 C CNN
	1    3000 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R LM40
U 1 1 5F7147A9
P 3000 4700
F 0 "LM40" V 2793 4700 50  0000 C CNN
F 1 "LM" V 2884 4700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2930 4700 50  0001 C CNN
F 3 "~" H 3000 4700 50  0001 C CNN
	1    3000 4700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 power1
U 1 1 5F736FA6
P 3400 1250
F 0 "power1" H 3480 1242 50  0000 L CNN
F 1 "power" H 3480 1151 50  0000 L CNN
F 2 "footprints:power" H 3400 1250 50  0001 C CNN
F 3 "~" H 3400 1250 50  0001 C CNN
	1    3400 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5F739026
P 3200 1250
F 0 "#PWR0137" H 3200 1000 50  0001 C CNN
F 1 "GND" V 3205 1122 50  0000 R CNN
F 2 "" H 3200 1250 50  0001 C CNN
F 3 "" H 3200 1250 50  0001 C CNN
	1    3200 1250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0138
U 1 1 5F73A165
P 3200 1350
F 0 "#PWR0138" H 3200 1200 50  0001 C CNN
F 1 "+5V" V 3215 1478 50  0000 L CNN
F 2 "" H 3200 1350 50  0001 C CNN
F 3 "" H 3200 1350 50  0001 C CNN
	1    3200 1350
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
