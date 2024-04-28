opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6446"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNCALL	_lcd_data,_delay
	FNROOT	_main
	global	_a
	global	_a1
	global	_a2
	global	_a3
	global	_b
	global	_b1
	global	_b2
	global	_b3
	global	_counter
	global	_i
	global	_j
	global	_k
	global	_temp
	global	_PORTA
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T1CON
_T1CON	set	16
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RC6
_RC6	set	62
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_T0CS
_T0CS	set	1037
	global	_T0SE
_T0SE	set	1036
	file	"mcc.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_temp:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_a1:
       ds      2

_a2:
       ds      2

_a3:
       ds      2

_b:
       ds      2

_b1:
       ds      2

_b2:
       ds      2

_b3:
       ds      2

_counter:
       ds      2

_i:
       ds      2

_j:
       ds      2

_k:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+018h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x2
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 26, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      13
;; BANK0           80      0      24
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _lcd_init->_lcd_cmd
;;   _lcd_cmd->_delay
;;   _lcd_data->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     750
;;                                              9 COMMON     2     2      0
;;                           _lcd_init
;;                              _delay
;;                            ___awdiv
;;                            ___awmod
;;                            _lcd_cmd
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      44
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_cmd
;;       _delay
;;   _delay
;;   ___awdiv
;;   ___awmod
;;   _lcd_cmd
;;     _delay
;;   _lcd_data
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      25       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0      18       5       30.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      28      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 47 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  605[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_delay
;;		___awdiv
;;		___awmod
;;		_lcd_cmd
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
	line	47
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	48
	
l2171:	
;mcc.c: 48: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	49
	
l2173:	
;mcc.c: 49: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	50
	
l2175:	
;mcc.c: 50: TRISB=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	51
;mcc.c: 51: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	52
	
l2177:	
;mcc.c: 52: TRISC=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	53
	
l2179:	
;mcc.c: 53: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	54
	
l2181:	
;mcc.c: 54: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	55
	
l2183:	
;mcc.c: 55: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	56
	
l2185:	
;mcc.c: 56: lcd_init();
	fcall	_lcd_init
	line	58
	
l2187:	
;mcc.c: 58: T0CS=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1037/8)^080h,(1037)&7
	line	59
	
l2189:	
;mcc.c: 59: T0SE=1;
	bsf	(1036/8)^080h,(1036)&7
	line	60
	
l2191:	
;mcc.c: 60: TMR0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	62
	
l2193:	
;mcc.c: 62: T1CON=0X03;
	movlw	(03h)
	movwf	(16)	;volatile
	line	63
	
l2195:	
;mcc.c: 63: TMR1H=0;
	clrf	(15)	;volatile
	line	64
	
l2197:	
;mcc.c: 64: TMR1L=0;
	clrf	(14)	;volatile
	line	68
;mcc.c: 68: while(1)
	
l606:	
	line	71
	
l2199:	
;mcc.c: 69: {
;mcc.c: 71: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	72
	
l2201:	
;mcc.c: 72: counter=TMR0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_counter)
	movf	1+(??_main+0)+0,w
	movwf	(_counter+1)
	line	73
	
l2203:	
;mcc.c: 73: a=counter/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_counter+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_counter),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	74
	
l2205:	
;mcc.c: 74: b=counter%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_counter+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_counter),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awmod)),w
	clrf	(_b)
	addwf	(_b)

	line	75
	
l2207:	
;mcc.c: 75: lcd_cmd(0XC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	76
	
l2209:	
;mcc.c: 76: lcd_data('M');
	movlw	(04Dh)
	fcall	_lcd_data
	line	77
	
l2211:	
;mcc.c: 77: lcd_cmd(0XC1);
	movlw	(0C1h)
	fcall	_lcd_cmd
	line	78
	
l2213:	
;mcc.c: 78: lcd_data('M');
	movlw	(04Dh)
	fcall	_lcd_data
	line	79
	
l2215:	
;mcc.c: 79: lcd_cmd(0X80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	80
	
l2217:	
;mcc.c: 80: lcd_data(a+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	fcall	_lcd_data
	line	81
	
l2219:	
;mcc.c: 81: lcd_data(b+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b),w
	addlw	030h
	fcall	_lcd_data
	line	82
	
l2221:	
;mcc.c: 82: lcd_cmd(0X82);
	movlw	(082h)
	fcall	_lcd_cmd
	line	83
	
l2223:	
;mcc.c: 83: lcd_data(':');
	movlw	(03Ah)
	fcall	_lcd_data
	line	84
	
l2225:	
;mcc.c: 84: lcd_cmd(0XC2);
	movlw	(0C2h)
	fcall	_lcd_cmd
	line	85
	
l2227:	
;mcc.c: 85: lcd_data(':');
	movlw	(03Ah)
	fcall	_lcd_data
	line	87
	
l2229:	
;mcc.c: 87: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	88
	
l2231:	
;mcc.c: 88: temp=TMR1H<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(15),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2495:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2495
	movf	0+(??_main+0)+0,w
	movwf	(_temp)
	movf	1+(??_main+0)+0,w
	movwf	(_temp+1)
	line	89
	
l2233:	
;mcc.c: 89: temp=temp+TMR1L;
	movf	(14),w	;volatile
	addwf	(_temp),w
	movwf	(_temp)
	movf	(_temp+1),w
	skipnc
	incf	(_temp+1),w
	movwf	((_temp))+1
	line	90
	
l2235:	
;mcc.c: 90: if(temp>60)
	movf	(_temp+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(03Dh))^80h
	subwf	btemp+0,w
	skipz
	goto	u2505
	movlw	low(03Dh)
	subwf	(_temp),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l607
u2500:
	line	92
	
l2237:	
;mcc.c: 91: {
;mcc.c: 92: temp=temp-60;
	movf	(_temp),w
	addlw	low(-60)
	movwf	(_temp)
	movf	(_temp+1),w
	skipnc
	addlw	1
	addlw	high(-60)
	movwf	1+(_temp)
	line	93
	
l2239:	
;mcc.c: 93: counter++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_counter),f
	skipnc
	incf	(_counter+1),f
	movlw	high(01h)
	addwf	(_counter+1),f
	line	94
	
l607:	
	line	95
	
l2241:	
;mcc.c: 94: }
;mcc.c: 95: a1=temp/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a1+1)
	addwf	(_a1+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a1)
	addwf	(_a1)

	line	96
	
l2243:	
;mcc.c: 96: b1=temp%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_temp+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_temp),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b1+1)
	addwf	(_b1+1)
	movf	(0+(?___awmod)),w
	clrf	(_b1)
	addwf	(_b1)

	line	97
	
l2245:	
;mcc.c: 97: lcd_cmd(0XC3);
	movlw	(0C3h)
	fcall	_lcd_cmd
	line	98
	
l2247:	
;mcc.c: 98: lcd_data('S');
	movlw	(053h)
	fcall	_lcd_data
	line	99
	
l2249:	
;mcc.c: 99: lcd_cmd(0XC4);
	movlw	(0C4h)
	fcall	_lcd_cmd
	line	100
	
l2251:	
;mcc.c: 100: lcd_data('S');
	movlw	(053h)
	fcall	_lcd_data
	line	101
	
l2253:	
;mcc.c: 101: lcd_cmd(0X83);
	movlw	(083h)
	fcall	_lcd_cmd
	line	102
	
l2255:	
;mcc.c: 102: lcd_data(48+a1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a1),w
	addlw	030h
	fcall	_lcd_data
	line	103
	
l2257:	
;mcc.c: 103: lcd_data(48+b1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b1),w
	addlw	030h
	fcall	_lcd_data
	line	105
	
l2259:	
;mcc.c: 105: if((counter==0)&&(temp==0))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l608
u2510:
	
l2261:	
	movf	((_temp+1)),w
	iorwf	((_temp)),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l608
u2520:
	line	107
	
l2263:	
;mcc.c: 106: {
;mcc.c: 107: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l609
u2530:
	line	109
	
l2265:	
;mcc.c: 108: {
;mcc.c: 109: lcd_cmd(0X01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	110
;mcc.c: 110: lcd_cmd(0XC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	111
;mcc.c: 111: lcd_data('s');
	movlw	(073h)
	fcall	_lcd_data
	line	112
;mcc.c: 112: lcd_data('e');
	movlw	(065h)
	fcall	_lcd_data
	line	113
;mcc.c: 113: lcd_data('t');
	movlw	(074h)
	fcall	_lcd_data
	line	114
;mcc.c: 114: lcd_data('_');
	movlw	(05Fh)
	fcall	_lcd_data
	line	115
;mcc.c: 115: lcd_data('t');
	movlw	(074h)
	fcall	_lcd_data
	line	116
;mcc.c: 116: lcd_data('i');
	movlw	(069h)
	fcall	_lcd_data
	line	117
;mcc.c: 117: lcd_data('m');
	movlw	(06Dh)
	fcall	_lcd_data
	line	118
;mcc.c: 118: lcd_data('e');
	movlw	(065h)
	fcall	_lcd_data
	line	119
;mcc.c: 119: lcd_data('r');
	movlw	(072h)
	fcall	_lcd_data
	line	120
;mcc.c: 120: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	121
;mcc.c: 121: lcd_cmd(0X01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	122
	
l609:	
	line	123
	
l608:	
	line	125
	
l2267:	
;mcc.c: 122: }
;mcc.c: 123: }
;mcc.c: 125: if(counter!=0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_counter+1),w
	iorwf	(_counter),w
	skipnz
	goto	u2541
	goto	u2540
u2541:
	goto	l610
u2540:
	line	127
	
l2269:	
;mcc.c: 126: {
;mcc.c: 127: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l611
u2550:
	line	129
	
l2271:	
;mcc.c: 128: {
;mcc.c: 129: RC6=1;
	bsf	(62/8),(62)&7
	line	130
	
l2273:	
;mcc.c: 130: for(j=counter;j>=0;j--)
	movf	(_counter+1),w
	clrf	(_j+1)
	addwf	(_j+1)
	movf	(_counter),w
	clrf	(_j)
	addwf	(_j)

	goto	l612
	line	131
	
l613:	
	line	132
	
l2275:	
;mcc.c: 131: {
;mcc.c: 132: a3=j/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_j+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_j),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a3+1)
	addwf	(_a3+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a3)
	addwf	(_a3)

	line	133
;mcc.c: 133: b3=j%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_j+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_j),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b3+1)
	addwf	(_b3+1)
	movf	(0+(?___awmod)),w
	clrf	(_b3)
	addwf	(_b3)

	line	134
;mcc.c: 134: lcd_cmd(0X80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	135
;mcc.c: 135: lcd_data(a3+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a3),w
	addlw	030h
	fcall	_lcd_data
	line	136
;mcc.c: 136: lcd_data(b3+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b3),w
	addlw	030h
	fcall	_lcd_data
	line	138
	
l2277:	
;mcc.c: 138: for(k=temp;k>=0;k--)
	movf	(_temp+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_k+1)
	addwf	(_k+1)
	movf	(_temp),w
	clrf	(_k)
	addwf	(_k)

	goto	l614
	line	139
	
l615:	
	line	140
	
l2279:	
;mcc.c: 139: {
;mcc.c: 140: a2=k/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_k+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_k),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a2+1)
	addwf	(_a2+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a2)
	addwf	(_a2)

	line	141
;mcc.c: 141: b2=k%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_k+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_k),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b2+1)
	addwf	(_b2+1)
	movf	(0+(?___awmod)),w
	clrf	(_b2)
	addwf	(_b2)

	line	142
;mcc.c: 142: lcd_cmd(0X83);
	movlw	(083h)
	fcall	_lcd_cmd
	line	143
;mcc.c: 143: lcd_data(a2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a2),w
	addlw	030h
	fcall	_lcd_data
	line	144
;mcc.c: 144: lcd_data(b2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b2),w
	addlw	030h
	fcall	_lcd_data
	line	145
	
l2281:	
;mcc.c: 145: if(k==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_k+1)),w
	iorwf	((_k)),w
	skipz
	goto	u2561
	goto	u2560
u2561:
	goto	l616
u2560:
	line	147
	
l2283:	
;mcc.c: 146: {
;mcc.c: 147: temp=60;
	movlw	low(03Ch)
	movwf	(_temp)
	movlw	high(03Ch)
	movwf	((_temp))+1
	line	148
	
l2285:	
;mcc.c: 148: if((j==0)&&(k==0))
	movf	((_j+1)),w
	iorwf	((_j)),w
	skipz
	goto	u2571
	goto	u2570
u2571:
	goto	l617
u2570:
	
l2287:	
	movf	((_k+1)),w
	iorwf	((_k)),w
	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l617
u2580:
	line	150
	
l2289:	
;mcc.c: 149: {
;mcc.c: 150: TMR0 = 0;
	clrf	(1)	;volatile
	line	151
;mcc.c: 151: TMR1L =0;
	clrf	(14)	;volatile
	line	152
;mcc.c: 152: TMR1H = 0;
	clrf	(15)	;volatile
	line	153
	
l617:	
	line	154
	
l616:	
	line	138
	
l2291:	
	movlw	low(-1)
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(-1)
	addwf	(_k+1),f
	
l614:	
	
l2293:	
	btfss	(_k+1),7
	goto	u2591
	goto	u2590
u2591:
	goto	l615
u2590:
	
l618:	
	line	130
	
l2295:	
	movlw	low(-1)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(-1)
	addwf	(_j+1),f
	
l612:	
	
l2297:	
	btfss	(_j+1),7
	goto	u2601
	goto	u2600
u2601:
	goto	l613
u2600:
	
l619:	
	line	157
	
l611:	
	line	158
	
l610:	
	line	159
;mcc.c: 153: }
;mcc.c: 154: }
;mcc.c: 155: }
;mcc.c: 156: }
;mcc.c: 157: }
;mcc.c: 158: }
;mcc.c: 159: RC6=0;
	bcf	(62/8),(62)&7
	line	160
	
l620:	
	line	68
	goto	l606
	
l621:	
	line	161
	
l622:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_init
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 39 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text159
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
	line	39
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l2169:	
;mcc.c: 40: lcd_cmd(0X38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	41
;mcc.c: 41: lcd_cmd(0X0C);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	42
;mcc.c: 42: lcd_cmd(0X80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	43
;mcc.c: 43: lcd_cmd(0XC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	44
;mcc.c: 44: lcd_cmd(0X01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	45
	
l603:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_cmd
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 23 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text160
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
	line	23
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	24
	
l2157:	
;mcc.c: 24: PORTD=cmd;
	movf	(lcd_cmd@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	25
	
l2159:	
;mcc.c: 25: RB1=0;
	bcf	(49/8),(49)&7
	line	26
	
l2161:	
;mcc.c: 26: RB2=0;
	bcf	(50/8),(50)&7
	line	27
	
l2163:	
;mcc.c: 27: RB3=1;
	bsf	(51/8),(51)&7
	line	28
	
l2165:	
;mcc.c: 28: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l2167:	
;mcc.c: 29: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	30
	
l594:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_lcd_data
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 14 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_display
;; This function uses a non-reentrant model
;;
psect	text161
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
	line	14
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	15
	
l2145:	
;mcc.c: 15: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	16
	
l2147:	
;mcc.c: 16: RB1=1;
	bsf	(49/8),(49)&7
	line	17
	
l2149:	
;mcc.c: 17: RB2=0;
	bcf	(50/8),(50)&7
	line	18
	
l2151:	
;mcc.c: 18: RB3=1;
	bsf	(51/8),(51)&7
	line	19
	
l2153:	
;mcc.c: 19: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	20
	
l2155:	
;mcc.c: 20: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	21
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	___awmod
psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text162
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2109:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2111:	
	btfss	(___awmod@dividend+1),7
	goto	u2401
	goto	u2400
u2401:
	goto	l839
u2400:
	line	10
	
l2113:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	line	12
	
l839:	
	line	13
	
l2115:	
	btfss	(___awmod@divisor+1),7
	goto	u2411
	goto	u2410
u2411:
	goto	l840
u2410:
	line	14
	
l2117:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l840:	
	line	15
	
l2119:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2421
	goto	u2420
u2421:
	goto	l841
u2420:
	line	16
	
l2121:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l842
	
l843:	
	line	18
	
l2123:	
	movlw	01h
	
u2435:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2435
	line	19
	
l2125:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l842:	
	line	17
	
l2127:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l843
u2440:
	
l844:	
	line	21
	
l845:	
	line	22
	
l2129:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2455
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2455:
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l846
u2450:
	line	23
	
l2131:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l846:	
	line	24
	
l2133:	
	movlw	01h
	
u2465:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2465
	line	25
	
l2135:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l845
u2470:
	
l847:	
	line	26
	
l841:	
	line	27
	
l2137:	
	movf	(___awmod@sign),w
	skipz
	goto	u2480
	goto	l848
u2480:
	line	28
	
l2139:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l848:	
	line	29
	
l2141:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2143:	
	line	30
	
l849:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text163
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2071:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2073:	
	btfss	(___awdiv@divisor+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l771
u2300:
	line	11
	
l2075:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	line	13
	
l771:	
	line	14
	
l2077:	
	btfss	(___awdiv@dividend+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l772
u2310:
	line	15
	
l2079:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2081:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l772:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l773
u2320:
	line	20
	
l2083:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l774
	
l775:	
	line	22
	
l2085:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2335
	line	23
	
l2087:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l774:	
	line	21
	
l2089:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l775
u2340:
	
l776:	
	line	25
	
l777:	
	line	26
	
l2091:	
	movlw	01h
	
u2355:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2355
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2365
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l778
u2360:
	line	28
	
l2093:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2095:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l778:	
	line	31
	
l2097:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	32
	
l2099:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l777
u2380:
	
l779:	
	line	33
	
l773:	
	line	34
	
l2101:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2390
	goto	l780
u2390:
	line	35
	
l2103:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l780:	
	line	36
	
l2105:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2107:	
	line	37
	
l781:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text164,local,class=CODE,delta=2
global __ptext164
__ptext164:

;; *************** function _delay *****************
;; Defined at:
;;		line 10 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_data
;;		_lcd_cmd
;;		_main
;; This function uses a non-reentrant model
;;
psect	text164
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\mobile charging circuit\mcc.c"
	line	10
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	11
	
l2059:	
;mcc.c: 11: while(x--);
	goto	l585
	
l586:	
	
l585:	
	
l2061:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2285
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2285:

	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l586
u2280:
	
l587:	
	line	12
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
