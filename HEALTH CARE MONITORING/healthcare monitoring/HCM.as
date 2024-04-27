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
# 7 "C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
	dw 0x3F72 ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_String_transmit
	FNCALL	_main,_delay
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_display
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNCALL	_lcd_data,_delay
	FNROOT	_main
	global	_a
	global	_a2
	global	_b
	global	_b2
	global	_c
	global	_c2
	global	_d
	global	_d2
	global	_e
	global	_e2
	global	_f
	global	_f2
	global	_i
	global	_temp2
	global	_temp1
	global	_ADCON0
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_ADON
_ADON	set	248
	global	_CHS0
_CHS0	set	251
	global	_CHS1
_CHS1	set	252
	global	_CHS2
_CHS2	set	253
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_6:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	83	;'S'
	retlw	61	;'='
	retlw	34	;'"'
	retlw	43	;'+'
	retlw	57	;'9'
	retlw	49	;'1'
	retlw	57	;'9'
	retlw	54	;'6'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	55	;'7'
	retlw	55	;'7'
	retlw	57	;'9'
	retlw	48	;'0'
	retlw	54	;'6'
	retlw	50	;'2'
	retlw	34	;'"'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_5:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	70	;'F'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	48	;'0'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_3:	
	retlw	72	;'H'
	retlw	66	;'B'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_7:	
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	80	;'P'
	retlw	0
psect	strings
	
STR_4:	
	retlw	84	;'T'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"HCM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_temp1:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_a2:
       ds      2

_b:
       ds      2

_b2:
       ds      2

_c:
       ds      2

_c2:
       ds      2

_d:
       ds      2

_d2:
       ds      2

_e:
       ds      2

_e2:
       ds      2

_f:
       ds      2

_f2:
       ds      2

_i:
       ds      2

_temp2:
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
	movlw	low((__pbssBANK0)+01Ch)
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
	global	?_String_transmit
?_String_transmit:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	String_transmit@m
String_transmit@m:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_String_transmit
??_String_transmit:	; 0 bytes @ 0x2
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
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x3
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x3
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
;;Data sizes: Strings 64, constant 0, data 0, bss 30, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      13
;; BANK0           80      0      28
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; lcd_display@m	PTR unsigned char  size(1) Largest target is 5
;;		 -> STR_4(CODE[4]), STR_3(CODE[5]), 
;;
;; String_transmit@m	PTR unsigned char  size(2) Largest target is 512
;;		 -> RAM(DATA[512]), STR_7(CODE[5]), STR_6(CODE[26]), STR_5(CODE[12]), 
;;		 -> STR_2(CODE[7]), STR_1(CODE[5]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _lcd_display->_lcd_data
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
;; (0) _main                                                 2     2      0     882
;;                                              9 COMMON     2     2      0
;;                           _lcd_init
;;                    _String_transmit
;;                              _delay
;;                            ___awdiv
;;                            ___awmod
;;                            _lcd_cmd
;;                        _lcd_display
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          1     1      0      88
;;                                              3 COMMON     1     1      0
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
;; (2) _String_transmit                                      2     0      2      44
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_cmd
;;       _delay
;;   _String_transmit
;;   _delay
;;   ___awdiv
;;   ___awmod
;;   _lcd_cmd
;;     _delay
;;   _lcd_display
;;     _lcd_data
;;       _delay
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
;;ABS                  0      0      29       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0      1C       5       35.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2C      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 56 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  618[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, btemp+1, pclath, cstack
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
;;		_String_transmit
;;		_delay
;;		___awdiv
;;		___awmod
;;		_lcd_cmd
;;		_lcd_display
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
	line	56
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+1+pclath+cstack]
	line	57
	
l2259:	
;HCM.C: 57: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	58
;HCM.C: 58: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	59
;HCM.C: 59: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	60
;HCM.C: 60: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	61
	
l2261:	
;HCM.C: 61: ADCON0=0x48;
	movlw	(048h)
	movwf	(31)	;volatile
	line	62
	
l2263:	
;HCM.C: 62: ADCON1=0x8E;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	63
	
l2265:	
;HCM.C: 63: SPBRG=25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	64
	
l2267:	
;HCM.C: 64: TXSTA=0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	65
	
l2269:	
;HCM.C: 65: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	66
	
l2271:	
;HCM.C: 66: lcd_init();
	fcall	_lcd_init
	line	67
	
l2273:	
;HCM.C: 67: String_transmit("AT\r\n");
	movlw	low((STR_1-__stringbase))
	movwf	(?_String_transmit)
	movlw	80h
	movwf	(?_String_transmit+1)
	fcall	_String_transmit
	line	68
	
l2275:	
;HCM.C: 68: String_transmit("ATE0\r\n");
	movlw	low((STR_2-__stringbase))
	movwf	(?_String_transmit)
	movlw	80h
	movwf	(?_String_transmit+1)
	fcall	_String_transmit
	line	69
;HCM.C: 69: while(1)
	
l619:	
	line	72
	
l2277:	
;HCM.C: 70: {
;HCM.C: 72: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	73
	
l2279:	
;HCM.C: 73: CHS1=0;
	bcf	(252/8),(252)&7
	line	74
	
l2281:	
;HCM.C: 74: CHS0=0;
	bcf	(251/8),(251)&7
	line	75
	
l2283:	
;HCM.C: 75: ADON=1;
	bsf	(248/8),(248)&7
	line	76
	
l2285:	
;HCM.C: 76: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	77
;HCM.C: 77: ADCON0=(ADCON0|0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	78
	
l2287:	
;HCM.C: 78: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	79
	
l2289:	
;HCM.C: 79: temp1=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2445:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2445
	movf	0+(??_main+0)+0,w
	movwf	(_temp1)
	movf	1+(??_main+0)+0,w
	movwf	(_temp1+1)
	line	80
	
l2291:	
;HCM.C: 80: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	81
	
l2293:	
;HCM.C: 81: temp1=temp1+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(_temp1),w
	movwf	(_temp1)
	movf	(_temp1+1),w
	skipnc
	incf	(_temp1+1),w
	movwf	((_temp1))+1
	line	82
	
l2295:	
;HCM.C: 82: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	83
	
l2297:	
;HCM.C: 83: a=temp1/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(_temp1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_temp1),w
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

	line	84
	
l2299:	
;HCM.C: 84: b=temp1%1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(_temp1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_temp1),w
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

	line	85
	
l2301:	
;HCM.C: 85: c=b/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c)
	addwf	(_c)

	line	86
	
l2303:	
;HCM.C: 86: d=b%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___awmod)),w
	clrf	(_d)
	addwf	(_d)

	line	87
	
l2305:	
;HCM.C: 87: e=d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e+1)
	addwf	(_e+1)
	movf	(0+(?___awdiv)),w
	clrf	(_e)
	addwf	(_e)

	line	88
	
l2307:	
;HCM.C: 88: f=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f+1)
	addwf	(_f+1)
	movf	(0+(?___awmod)),w
	clrf	(_f)
	addwf	(_f)

	line	89
	
l2309:	
;HCM.C: 89: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	90
	
l2311:	
;HCM.C: 90: lcd_display("HBS:");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_display
	line	91
	
l2313:	
;HCM.C: 91: lcd_data(a+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	fcall	_lcd_data
	line	92
	
l2315:	
;HCM.C: 92: lcd_data(c+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	fcall	_lcd_data
	line	93
	
l2317:	
;HCM.C: 93: lcd_data(e+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	fcall	_lcd_data
	line	94
	
l2319:	
;HCM.C: 94: lcd_data(f+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	030h
	fcall	_lcd_data
	line	95
	
l2321:	
;HCM.C: 95: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	96
	
l2323:	
;HCM.C: 96: CHS1=0;
	bcf	(252/8),(252)&7
	line	97
	
l2325:	
;HCM.C: 97: CHS0=1;
	bsf	(251/8),(251)&7
	line	98
	
l2327:	
;HCM.C: 98: ADON=1;
	bsf	(248/8),(248)&7
	line	99
	
l2329:	
;HCM.C: 99: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	100
	
l2331:	
;HCM.C: 100: ADCON0=(ADCON0|0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	101
	
l2333:	
;HCM.C: 101: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	102
	
l2335:	
;HCM.C: 102: temp2=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2455:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2455
	movf	0+(??_main+0)+0,w
	movwf	(_temp2)
	movf	1+(??_main+0)+0,w
	movwf	(_temp2+1)
	line	103
	
l2337:	
;HCM.C: 103: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	104
	
l2339:	
;HCM.C: 104: temp2=temp2+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_temp2),w
	movwf	(_temp2)
	movf	(_temp2+1),w
	skipnc
	incf	(_temp2+1),w
	movwf	((_temp2))+1
	line	105
	
l2341:	
;HCM.C: 105: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	106
	
l2343:	
;HCM.C: 106: a2=temp2/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp2+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_temp2),w
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

	line	107
	
l2345:	
;HCM.C: 107: b2=temp2%1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(_temp2+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_temp2),w
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

	line	108
	
l2347:	
;HCM.C: 108: c2=b2/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b2+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b2),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c2+1)
	addwf	(_c2+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c2)
	addwf	(_c2)

	line	109
	
l2349:	
;HCM.C: 109: d2=b2%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_b2+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_b2),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d2+1)
	addwf	(_d2+1)
	movf	(0+(?___awmod)),w
	clrf	(_d2)
	addwf	(_d2)

	line	110
	
l2351:	
;HCM.C: 110: e2=d2/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_d2+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_d2),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e2+1)
	addwf	(_e2+1)
	movf	(0+(?___awdiv)),w
	clrf	(_e2)
	addwf	(_e2)

	line	111
	
l2353:	
;HCM.C: 111: f2=d2%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_d2+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_d2),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f2+1)
	addwf	(_f2+1)
	movf	(0+(?___awmod)),w
	clrf	(_f2)
	addwf	(_f2)

	line	112
	
l2355:	
;HCM.C: 112: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	113
	
l2357:	
;HCM.C: 113: lcd_display("TS:");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_display
	line	114
;HCM.C: 114: lcd_data(a2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a2),w
	addlw	030h
	fcall	_lcd_data
	line	115
;HCM.C: 115: lcd_data(c2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c2),w
	addlw	030h
	fcall	_lcd_data
	line	116
;HCM.C: 116: lcd_data(e2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e2),w
	addlw	030h
	fcall	_lcd_data
	line	117
;HCM.C: 117: lcd_data(f2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f2),w
	addlw	030h
	fcall	_lcd_data
	line	118
	
l2359:	
;HCM.C: 118: if(temp1>=200)
	movf	(_temp1+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0C8h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2465
	movlw	low(0C8h)
	subwf	(_temp1),w
u2465:

	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l620
u2460:
	line	120
	
l2361:	
;HCM.C: 119: {
;HCM.C: 120: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	121
	
l2363:	
;HCM.C: 121: String_transmit("AT+CMGF=1\r\n");
	movlw	low((STR_5-__stringbase))
	movwf	(?_String_transmit)
	movlw	80h
	movwf	(?_String_transmit+1)
	fcall	_String_transmit
	line	122
	
l2365:	
;HCM.C: 122: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	123
	
l2367:	
;HCM.C: 123: String_transmit("AT+CMGS=\"+919600779062\"\r\n");
	movlw	low((STR_6-__stringbase))
	movwf	(?_String_transmit)
	movlw	80h
	movwf	(?_String_transmit+1)
	fcall	_String_transmit
	line	124
;HCM.C: 124: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	125
	
l2369:	
;HCM.C: 125: String_transmit("HELP");
	movlw	low((STR_7-__stringbase))
	movwf	(?_String_transmit)
	movlw	80h
	movwf	(?_String_transmit+1)
	fcall	_String_transmit
	line	126
	
l2371:	
;HCM.C: 126: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	127
;HCM.C: 127: String_transmit((char)26);
	movlw	(01Ah&0ffh)
	movwf	(?_String_transmit)
	movlw	(0x0/2)
	movwf	(?_String_transmit+1)
	fcall	_String_transmit
	line	128
;HCM.C: 128: }
	goto	l621
	line	129
	
l620:	
	line	131
;HCM.C: 129: else
;HCM.C: 130: {
;HCM.C: 131: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	132
	
l621:	
	line	133
	
l622:	
	line	69
	goto	l619
	
l623:	
	line	134
	
l624:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_display
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 49 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_4(4), STR_3(5), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[COMMON] PTR unsigned char 
;;		 -> STR_4(4), STR_3(5), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text197
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
	line	49
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	50
	
l2251:	
;HCM.C: 50: for(i=0;m[i]!='\0';i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	goto	l613
	line	51
	
l614:	
	line	52
	
l2253:	
;HCM.C: 51: {
;HCM.C: 52: lcd_data(m[i]);
	movf	(_i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	50
	
l2255:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l613:	
	
l2257:	
	movf	(_i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l614
u2430:
	
l615:	
	line	54
	
l616:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 41 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
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
psect	text198
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
	line	41
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	42
	
l2249:	
;HCM.C: 42: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	43
;HCM.C: 43: lcd_cmd(0x0C);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	44
;HCM.C: 44: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	45
;HCM.C: 45: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	46
;HCM.C: 46: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	47
	
l610:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_cmd
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 32 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
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
psect	text199
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
	line	32
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	33
	
l2237:	
;HCM.C: 33: PORTD=cmd;
	movf	(lcd_cmd@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	34
	
l2239:	
;HCM.C: 34: RB0=0;
	bcf	(48/8),(48)&7
	line	35
	
l2241:	
;HCM.C: 35: RB1=0;
	bcf	(49/8),(49)&7
	line	36
	
l2243:	
;HCM.C: 36: RB2=1;
	bsf	(50/8),(50)&7
	line	37
	
l2245:	
;HCM.C: 37: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	38
	
l2247:	
;HCM.C: 38: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	39
	
l607:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_lcd_data
psect	text200,local,class=CODE,delta=2
global __ptext200
__ptext200:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 23 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
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
;;		_lcd_display
;;		_main
;; This function uses a non-reentrant model
;;
psect	text200
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
	line	23
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	24
	
l2225:	
;HCM.C: 24: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	25
	
l2227:	
;HCM.C: 25: RB0=1;
	bsf	(48/8),(48)&7
	line	26
	
l2229:	
;HCM.C: 26: RB1=0;
	bcf	(49/8),(49)&7
	line	27
	
l2231:	
;HCM.C: 27: RB2=1;
	bsf	(50/8),(50)&7
	line	28
	
l2233:	
;HCM.C: 28: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l2235:	
;HCM.C: 29: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	30
	
l604:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	___awmod
psect	text201,local,class=CODE,delta=2
global __ptext201
__ptext201:

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
psect	text201
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2189:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2191:	
	btfss	(___awmod@dividend+1),7
	goto	u2341
	goto	u2340
u2341:
	goto	l841
u2340:
	line	10
	
l2193:	
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
	
l841:	
	line	13
	
l2195:	
	btfss	(___awmod@divisor+1),7
	goto	u2351
	goto	u2350
u2351:
	goto	l842
u2350:
	line	14
	
l2197:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l842:	
	line	15
	
l2199:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l843
u2360:
	line	16
	
l2201:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l844
	
l845:	
	line	18
	
l2203:	
	movlw	01h
	
u2375:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2375
	line	19
	
l2205:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l844:	
	line	17
	
l2207:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l845
u2380:
	
l846:	
	line	21
	
l847:	
	line	22
	
l2209:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2395
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l848
u2390:
	line	23
	
l2211:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l848:	
	line	24
	
l2213:	
	movlw	01h
	
u2405:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2405
	line	25
	
l2215:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l847
u2410:
	
l849:	
	line	26
	
l843:	
	line	27
	
l2217:	
	movf	(___awmod@sign),w
	skipz
	goto	u2420
	goto	l850
u2420:
	line	28
	
l2219:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l850:	
	line	29
	
l2221:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2223:	
	line	30
	
l851:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text202,local,class=CODE,delta=2
global __ptext202
__ptext202:

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
psect	text202
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2151:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2153:	
	btfss	(___awdiv@divisor+1),7
	goto	u2241
	goto	u2240
u2241:
	goto	l773
u2240:
	line	11
	
l2155:	
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
	
l773:	
	line	14
	
l2157:	
	btfss	(___awdiv@dividend+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l774
u2250:
	line	15
	
l2159:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2161:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l774:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l775
u2260:
	line	20
	
l2163:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l776
	
l777:	
	line	22
	
l2165:	
	movlw	01h
	
u2275:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2275
	line	23
	
l2167:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l776:	
	line	21
	
l2169:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l777
u2280:
	
l778:	
	line	25
	
l779:	
	line	26
	
l2171:	
	movlw	01h
	
u2295:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2295
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2305
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2305:
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l780
u2300:
	line	28
	
l2173:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2175:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l780:	
	line	31
	
l2177:	
	movlw	01h
	
u2315:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2315
	line	32
	
l2179:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l779
u2320:
	
l781:	
	line	33
	
l775:	
	line	34
	
l2181:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2330
	goto	l782
u2330:
	line	35
	
l2183:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l782:	
	line	36
	
l2185:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2187:	
	line	37
	
l783:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text203,local,class=CODE,delta=2
global __ptext203
__ptext203:

;; *************** function _delay *****************
;; Defined at:
;;		line 19 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
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
psect	text203
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
	line	19
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	20
	
l2147:	
;HCM.C: 20: while(x--);
	goto	l598
	
l599:	
	
l598:	
	
l2149:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2235
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2235:

	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l599
u2230:
	
l600:	
	line	21
	
l601:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_String_transmit
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:

;; *************** function _String_transmit *****************
;; Defined at:
;;		line 10 in file "C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
;; Parameters:    Size  Location     Type
;;  m               2    0[COMMON] PTR unsigned char 
;;		 -> RAM(512), STR_7(5), STR_6(26), STR_5(12), 
;;		 -> STR_2(7), STR_1(5), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, btemp+0, btemp+1, pclath
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
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text204
	file	"C:\Users\vinoth k\OneDrive\Desktop\my projects\healthcare monitoring\HCM.C"
	line	10
	global	__size_of_String_transmit
	__size_of_String_transmit	equ	__end_of_String_transmit-_String_transmit
	
_String_transmit:	
	opt	stack 6
; Regs used in _String_transmit: [wreg-fsr0h+btemp+0+btemp+1+pclath]
	line	11
	
l2139:	
;HCM.C: 11: for(i=0;m[i]!=0;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	goto	l589
	line	12
	
l590:	
	line	13
	
l2141:	
;HCM.C: 12: {
;HCM.C: 13: TXREG=m[i];
	movf	(_i),w
	addwf	(String_transmit@m),w
	movwf	fsr0
	movf	(_i+1),w
	skipnc
	incf	(_i+1),w
	addwf	(String_transmit@m+1),w
	movwf	btemp+1
	fcall	stringtab
	movwf	(25)	;volatile
	line	14
;HCM.C: 14: while(TXIF==0);
	goto	l591
	
l592:	
	
l591:	
	btfss	(100/8),(100)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l592
u2210:
	
l593:	
	line	15
;HCM.C: 15: TXIF=0;
	bcf	(100/8),(100)&7
	line	11
	
l2143:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l589:	
	
l2145:	
	movf	(_i),w
	addwf	(String_transmit@m),w
	movwf	fsr0
	movf	(_i+1),w
	skipnc
	incf	(_i+1),w
	addwf	(String_transmit@m+1),w
	movwf	btemp+1
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l590
u2220:
	
l594:	
	line	17
	
l595:	
	return
	opt stack 0
GLOBAL	__end_of_String_transmit
	__end_of_String_transmit:
;; =============== function _String_transmit ends ============

	signat	_String_transmit,4216
psect	text205,local,class=CODE,delta=2
global __ptext205
__ptext205:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
