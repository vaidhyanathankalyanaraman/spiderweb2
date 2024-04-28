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
	FNCALL	_main,_lcd_display
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNCALL	_lcd_data,_delay
	FNROOT	_main
	global	_a
	global	_b
	global	_c
	global	_d
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
	line	7

;initializer for _a
	retlw	01h
	retlw	0


;initializer for _b
	retlw	01h
	retlw	0


;initializer for _c
	retlw	01h
	retlw	0


;initializer for _d
	retlw	01h
	retlw	0

	global	_a1
	global	_a2
	global	_a3
	global	_b1
	global	_b2
	global	_b3
	global	_c1
	global	_c2
	global	_c3
	global	_d1
	global	_d2
	global	_d3
	global	_e1
	global	_e2
	global	_e3
	global	_f1
	global	_f2
	global	_f3
	global	_i
	global	_temp1
	global	_temp2
	global	_temp3
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
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
	global	_RB6
_RB6	set	54
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_2:	
	retlw	72	;'H'
	retlw	46	;'.'
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_3:	
	retlw	72	;'H'
	retlw	46	;'.'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_4:	
	retlw	87	;'W'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_1	equ	STR_2+2
	file	"weather monitor.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_temp3:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a1:
       ds      2

_a2:
       ds      2

_a3:
       ds      2

_b1:
       ds      2

_b2:
       ds      2

_b3:
       ds      2

_c1:
       ds      2

_c2:
       ds      2

_c3:
       ds      2

_d1:
       ds      2

_d2:
       ds      2

_d3:
       ds      2

_e1:
       ds      2

_e2:
       ds      2

_e3:
       ds      2

_f1:
       ds      2

_f2:
       ds      2

_f3:
       ds      2

_i:
       ds      2

_temp1:
       ds      2

_temp2:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
_a:
       ds      2

psect	dataBANK0
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
_b:
       ds      2

psect	dataBANK0
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
_c:
       ds      2

psect	dataBANK0
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
_d:
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
	movlw	low((__pbssBANK0)+02Ah)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+8)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
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
;;Data sizes: Strings 19, constant 0, data 8, bss 44, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      13
;; BANK0           80      0      50
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; lcd_display@m	PTR unsigned char  size(1) Largest target is 7
;;		 -> STR_4(CODE[5]), STR_3(CODE[7]), STR_2(CODE[7]), STR_1(CODE[5]), 
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
;; (0) _main                                                 2     2      0     838
;;                                              9 COMMON     2     2      0
;;                           _lcd_init
;;                              _delay
;;                            ___awdiv
;;                            ___awmod
;;                            _lcd_cmd
;;                           _lcd_data
;;                        _lcd_display
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
;; (2) _lcd_data                                             1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
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
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      42      12        0.0%
;;ABS                  0      0      3F       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0      32       5       62.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      B       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 48 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  631[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
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
;;		_lcd_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
	line	48
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	49
	
l2436:	
;weather monitor.c: 49: TRISB=0x40;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	50
	
l2438:	
;weather monitor.c: 50: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	51
	
l2440:	
;weather monitor.c: 51: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	52
	
l2442:	
;weather monitor.c: 52: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	53
	
l2444:	
;weather monitor.c: 53: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	54
	
l2446:	
;weather monitor.c: 54: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	55
	
l2448:	
;weather monitor.c: 55: ADCON0=0x48;
	movlw	(048h)
	movwf	(31)	;volatile
	line	56
	
l2450:	
;weather monitor.c: 56: ADCON1=0x8E;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	57
	
l2452:	
;weather monitor.c: 57: lcd_init();
	fcall	_lcd_init
	line	59
;weather monitor.c: 59: while(1)
	
l632:	
	line	61
	
l2454:	
;weather monitor.c: 60: {
;weather monitor.c: 61: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	62
	
l2456:	
;weather monitor.c: 62: CHS1=0;
	bcf	(252/8),(252)&7
	line	63
	
l2458:	
;weather monitor.c: 63: CHS0=0;
	bcf	(251/8),(251)&7
	line	64
	
l2460:	
;weather monitor.c: 64: ADON=1;
	bsf	(248/8),(248)&7
	line	65
	
l2462:	
;weather monitor.c: 65: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	66
;weather monitor.c: 66: ADCON0=(ADCON0|0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	67
	
l2464:	
;weather monitor.c: 67: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	68
	
l2466:	
;weather monitor.c: 68: temp1=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2485:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2485
	movf	0+(??_main+0)+0,w
	movwf	(_temp1)
	movf	1+(??_main+0)+0,w
	movwf	(_temp1+1)
	line	69
	
l2468:	
;weather monitor.c: 69: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	70
	
l2470:	
;weather monitor.c: 70: temp1=temp1+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_temp1),w
	movwf	(_temp1)
	movf	(_temp1+1),w
	skipnc
	incf	(_temp1+1),w
	movwf	((_temp1))+1
	line	71
	
l2472:	
;weather monitor.c: 71: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	72
	
l2474:	
;weather monitor.c: 72: a1=temp1/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	clrf	(_a1+1)
	addwf	(_a1+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a1)
	addwf	(_a1)

	line	73
	
l2476:	
;weather monitor.c: 73: b1=temp1%1000;
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
	clrf	(_b1+1)
	addwf	(_b1+1)
	movf	(0+(?___awmod)),w
	clrf	(_b1)
	addwf	(_b1)

	line	74
	
l2478:	
;weather monitor.c: 74: c1=b1/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c1+1)
	addwf	(_c1+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c1)
	addwf	(_c1)

	line	75
	
l2480:	
;weather monitor.c: 75: d1=b1%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_b1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_b1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d1+1)
	addwf	(_d1+1)
	movf	(0+(?___awmod)),w
	clrf	(_d1)
	addwf	(_d1)

	line	76
	
l2482:	
;weather monitor.c: 76: e1=d1/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_d1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_d1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e1+1)
	addwf	(_e1+1)
	movf	(0+(?___awdiv)),w
	clrf	(_e1)
	addwf	(_e1)

	line	77
	
l2484:	
;weather monitor.c: 77: f1=d1%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_d1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_d1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f1+1)
	addwf	(_f1+1)
	movf	(0+(?___awmod)),w
	clrf	(_f1)
	addwf	(_f1)

	line	78
	
l2486:	
;weather monitor.c: 78: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	79
	
l2488:	
;weather monitor.c: 79: lcd_data(a1+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a1),w
	addlw	030h
	fcall	_lcd_data
	line	80
	
l2490:	
;weather monitor.c: 80: lcd_data(c1+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c1),w
	addlw	030h
	fcall	_lcd_data
	line	81
	
l2492:	
;weather monitor.c: 81: lcd_data(e1+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e1),w
	addlw	030h
	fcall	_lcd_data
	line	82
	
l2494:	
;weather monitor.c: 82: lcd_data(f1+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f1),w
	addlw	030h
	fcall	_lcd_data
	line	83
	
l2496:	
;weather monitor.c: 83: if((temp1>500)&&(b==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp1+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(01F5h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2495
	movlw	low(01F5h)
	subwf	(_temp1),w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l633
u2490:
	
l2498:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_b),w
	iorwf	(_b+1),w
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l633
u2500:
	line	85
	
l2500:	
;weather monitor.c: 84: {
;weather monitor.c: 85: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	86
	
l2502:	
;weather monitor.c: 86: lcd_display("wind");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	87
	
l2504:	
;weather monitor.c: 87: b=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b)
	movlw	high(0)
	movwf	((_b))+1
	line	88
	
l2506:	
;weather monitor.c: 88: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	89
	
l633:	
	line	90
	
l2508:	
;weather monitor.c: 89: }
;weather monitor.c: 90: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	91
	
l2510:	
;weather monitor.c: 91: CHS1=0;
	bcf	(252/8),(252)&7
	line	92
	
l2512:	
;weather monitor.c: 92: CHS0=1;
	bsf	(251/8),(251)&7
	line	93
	
l2514:	
;weather monitor.c: 93: ADON=1;
	bsf	(248/8),(248)&7
	line	94
	
l2516:	
;weather monitor.c: 94: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	95
	
l2518:	
;weather monitor.c: 95: ADCON0=(ADCON0|0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	96
	
l2520:	
;weather monitor.c: 96: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	97
	
l2522:	
;weather monitor.c: 97: temp2=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2515:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2515
	movf	0+(??_main+0)+0,w
	movwf	(_temp2)
	movf	1+(??_main+0)+0,w
	movwf	(_temp2+1)
	line	98
	
l2524:	
;weather monitor.c: 98: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	99
	
l2526:	
;weather monitor.c: 99: temp2=temp2+ADRESL;
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
	line	100
	
l2528:	
;weather monitor.c: 100: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	101
	
l2530:	
;weather monitor.c: 101: a2=temp2/1000;
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

	line	102
	
l2532:	
;weather monitor.c: 102: b2=temp2%1000;
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

	line	103
	
l2534:	
;weather monitor.c: 103: c2=b2/100;
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

	line	104
	
l2536:	
;weather monitor.c: 104: d2=b2%100;
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

	line	105
	
l2538:	
;weather monitor.c: 105: e2=d2/10;
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

	line	106
	
l2540:	
;weather monitor.c: 106: f2=d2%10;
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

	line	107
	
l2542:	
;weather monitor.c: 107: lcd_cmd(0x85);
	movlw	(085h)
	fcall	_lcd_cmd
	line	108
	
l2544:	
;weather monitor.c: 108: lcd_data(a2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a2),w
	addlw	030h
	fcall	_lcd_data
	line	109
	
l2546:	
;weather monitor.c: 109: lcd_data(c2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c2),w
	addlw	030h
	fcall	_lcd_data
	line	110
	
l2548:	
;weather monitor.c: 110: lcd_data(e2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e2),w
	addlw	030h
	fcall	_lcd_data
	line	111
	
l2550:	
;weather monitor.c: 111: lcd_data(f2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f2),w
	addlw	030h
	fcall	_lcd_data
	line	113
	
l2552:	
;weather monitor.c: 113: if((temp2>800)&&(c==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp2+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0321h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2525
	movlw	low(0321h)
	subwf	(_temp2),w
u2525:

	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l634
u2520:
	
l2554:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_c),w
	iorwf	(_c+1),w
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l634
u2530:
	line	115
	
l2556:	
;weather monitor.c: 114: {
;weather monitor.c: 115: lcd_cmd(0xC5);
	movlw	(0C5h)
	fcall	_lcd_cmd
	line	116
	
l2558:	
;weather monitor.c: 116: lcd_display("H.wind");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	117
	
l2560:	
;weather monitor.c: 117: c=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_c)
	movlw	high(0)
	movwf	((_c))+1
	line	118
	
l2562:	
;weather monitor.c: 118: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	120
	
l634:	
	line	121
	
l2564:	
;weather monitor.c: 120: }
;weather monitor.c: 121: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	122
	
l2566:	
;weather monitor.c: 122: CHS1=1;
	bsf	(252/8),(252)&7
	line	123
	
l2568:	
;weather monitor.c: 123: CHS0=0;
	bcf	(251/8),(251)&7
	line	124
	
l2570:	
;weather monitor.c: 124: ADON=1;
	bsf	(248/8),(248)&7
	line	125
	
l2572:	
;weather monitor.c: 125: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	126
	
l2574:	
;weather monitor.c: 126: ADCON0=(ADCON0|0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	127
	
l2576:	
;weather monitor.c: 127: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	128
	
l2578:	
;weather monitor.c: 128: temp3=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2545:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2545
	movf	0+(??_main+0)+0,w
	movwf	(_temp3)
	movf	1+(??_main+0)+0,w
	movwf	(_temp3+1)
	line	129
	
l2580:	
;weather monitor.c: 129: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	130
	
l2582:	
;weather monitor.c: 130: temp3=temp3+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(_temp3),w
	movwf	(_temp3)
	movf	(_temp3+1),w
	skipnc
	incf	(_temp3+1),w
	movwf	((_temp3))+1
	line	131
	
l2584:	
;weather monitor.c: 131: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	132
	
l2586:	
;weather monitor.c: 132: a3=temp3/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(_temp3+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_temp3),w
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
	
l2588:	
;weather monitor.c: 133: b3=temp3%1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(_temp3+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_temp3),w
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
	
l2590:	
;weather monitor.c: 134: c3=b3/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b3+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b3),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c3+1)
	addwf	(_c3+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c3)
	addwf	(_c3)

	line	135
	
l2592:	
;weather monitor.c: 135: d3=b3%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_b3+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_b3),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d3+1)
	addwf	(_d3+1)
	movf	(0+(?___awmod)),w
	clrf	(_d3)
	addwf	(_d3)

	line	136
	
l2594:	
;weather monitor.c: 136: e3=d3/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_d3+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_d3),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e3+1)
	addwf	(_e3+1)
	movf	(0+(?___awdiv)),w
	clrf	(_e3)
	addwf	(_e3)

	line	137
	
l2596:	
;weather monitor.c: 137: f3=d3%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_d3+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_d3),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f3+1)
	addwf	(_f3+1)
	movf	(0+(?___awmod)),w
	clrf	(_f3)
	addwf	(_f3)

	line	138
	
l2598:	
;weather monitor.c: 138: lcd_cmd(0x8A);
	movlw	(08Ah)
	fcall	_lcd_cmd
	line	139
	
l2600:	
;weather monitor.c: 139: lcd_data(a3+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a3),w
	addlw	030h
	fcall	_lcd_data
	line	140
	
l2602:	
;weather monitor.c: 140: lcd_data(c3+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c3),w
	addlw	030h
	fcall	_lcd_data
	line	141
	
l2604:	
;weather monitor.c: 141: lcd_data(e3+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e3),w
	addlw	030h
	fcall	_lcd_data
	line	142
	
l2606:	
;weather monitor.c: 142: lcd_data(f3+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f3),w
	addlw	030h
	fcall	_lcd_data
	line	144
	
l2608:	
;weather monitor.c: 144: if((temp3>1000)&&(d==1))
	movf	(_temp3+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(03E9h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2555
	movlw	low(03E9h)
	subwf	(_temp3),w
u2555:

	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l635
u2550:
	
l2610:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_d),w
	iorwf	(_d+1),w
	skipz
	goto	u2561
	goto	u2560
u2561:
	goto	l635
u2560:
	line	146
	
l2612:	
;weather monitor.c: 145: {
;weather monitor.c: 146: lcd_cmd(0xCA);
	movlw	(0CAh)
	fcall	_lcd_cmd
	line	147
	
l2614:	
;weather monitor.c: 147: lcd_display("H.rain");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_display
	line	148
	
l2616:	
;weather monitor.c: 148: d=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_d)
	movlw	high(0)
	movwf	((_d))+1
	line	149
	
l2618:	
;weather monitor.c: 149: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	150
	
l635:	
	line	152
	
l2620:	
;weather monitor.c: 150: }
;weather monitor.c: 152: if((RB6==1)&&(a==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l636
u2570:
	
l2622:	
	movlw	01h
	xorwf	(_a),w
	iorwf	(_a+1),w
	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l636
u2580:
	line	154
	
l2624:	
;weather monitor.c: 153: {
;weather monitor.c: 154: RB0=1;
	bsf	(48/8),(48)&7
	line	155
	
l2626:	
;weather monitor.c: 155: lcd_cmd(0xC5);
	movlw	(0C5h)
	fcall	_lcd_cmd
	line	156
	
l2628:	
;weather monitor.c: 156: lcd_display("Wind");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_display
	line	157
	
l2630:	
;weather monitor.c: 157: a=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_a)
	movlw	high(0)
	movwf	((_a))+1
	line	158
	
l636:	
	line	159
	
l637:	
	line	59
	goto	l632
	
l638:	
	line	161
	
l639:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_display
psect	text173,local,class=CODE,delta=2
global __ptext173
__ptext173:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 41 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_4(5), STR_3(7), STR_2(7), STR_1(5), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[COMMON] PTR unsigned char 
;;		 -> STR_4(5), STR_3(7), STR_2(7), STR_1(5), 
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
psect	text173
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
	line	41
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	42
	
l2428:	
;weather monitor.c: 42: for(i=0;m[i]!='0';i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	goto	l626
	line	43
	
l627:	
	line	44
	
l2430:	
;weather monitor.c: 43: {
;weather monitor.c: 44: lcd_data(m[i]);
	movf	(_i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	42
	
l2432:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l626:	
	
l2434:	
	movf	(_i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	xorlw	030h
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l627
u2470:
	
l628:	
	line	46
	
l629:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text174,local,class=CODE,delta=2
global __ptext174
__ptext174:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 32 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
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
psect	text174
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
	line	32
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l2426:	
;weather monitor.c: 33: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	34
;weather monitor.c: 34: lcd_cmd(0x0C);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	35
;weather monitor.c: 35: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	36
;weather monitor.c: 36: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	37
;weather monitor.c: 37: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	38
	
l623:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_cmd
psect	text175,local,class=CODE,delta=2
global __ptext175
__ptext175:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 23 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
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
psect	text175
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
	line	23
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	24
	
l2414:	
;weather monitor.c: 24: PORTD=cmd;
	movf	(lcd_cmd@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	25
	
l2416:	
;weather monitor.c: 25: RC0=0;
	bcf	(56/8),(56)&7
	line	26
	
l2418:	
;weather monitor.c: 26: RC1=0;
	bcf	(57/8),(57)&7
	line	27
	
l2420:	
;weather monitor.c: 27: RC2=1;
	bsf	(58/8),(58)&7
	line	28
	
l2422:	
;weather monitor.c: 28: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l2424:	
;weather monitor.c: 29: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	30
	
l620:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_lcd_data
psect	text176,local,class=CODE,delta=2
global __ptext176
__ptext176:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 14 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
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
psect	text176
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
	line	14
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	15
	
l2402:	
;weather monitor.c: 15: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	16
	
l2404:	
;weather monitor.c: 16: RC0=1;
	bsf	(56/8),(56)&7
	line	17
	
l2406:	
;weather monitor.c: 17: RC1=0;
	bcf	(57/8),(57)&7
	line	18
	
l2408:	
;weather monitor.c: 18: RC2=1;
	bsf	(58/8),(58)&7
	line	19
	
l2410:	
;weather monitor.c: 19: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	20
	
l2412:	
;weather monitor.c: 20: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	21
	
l617:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	___awmod
psect	text177,local,class=CODE,delta=2
global __ptext177
__ptext177:

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
psect	text177
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2366:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2368:	
	btfss	(___awmod@dividend+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l856
u2380:
	line	10
	
l2370:	
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
	
l856:	
	line	13
	
l2372:	
	btfss	(___awmod@divisor+1),7
	goto	u2391
	goto	u2390
u2391:
	goto	l857
u2390:
	line	14
	
l2374:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l857:	
	line	15
	
l2376:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2401
	goto	u2400
u2401:
	goto	l858
u2400:
	line	16
	
l2378:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l859
	
l860:	
	line	18
	
l2380:	
	movlw	01h
	
u2415:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2415
	line	19
	
l2382:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l859:	
	line	17
	
l2384:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l860
u2420:
	
l861:	
	line	21
	
l862:	
	line	22
	
l2386:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2435
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2435:
	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l863
u2430:
	line	23
	
l2388:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l863:	
	line	24
	
l2390:	
	movlw	01h
	
u2445:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2445
	line	25
	
l2392:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l862
u2450:
	
l864:	
	line	26
	
l858:	
	line	27
	
l2394:	
	movf	(___awmod@sign),w
	skipz
	goto	u2460
	goto	l865
u2460:
	line	28
	
l2396:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l865:	
	line	29
	
l2398:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2400:	
	line	30
	
l866:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text178,local,class=CODE,delta=2
global __ptext178
__ptext178:

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
psect	text178
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2328:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2330:	
	btfss	(___awdiv@divisor+1),7
	goto	u2281
	goto	u2280
u2281:
	goto	l788
u2280:
	line	11
	
l2332:	
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
	
l788:	
	line	14
	
l2334:	
	btfss	(___awdiv@dividend+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l789
u2290:
	line	15
	
l2336:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2338:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l789:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l790
u2300:
	line	20
	
l2340:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l791
	
l792:	
	line	22
	
l2342:	
	movlw	01h
	
u2315:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2315
	line	23
	
l2344:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l791:	
	line	21
	
l2346:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l792
u2320:
	
l793:	
	line	25
	
l794:	
	line	26
	
l2348:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2335
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2345
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2345:
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l795
u2340:
	line	28
	
l2350:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2352:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l795:	
	line	31
	
l2354:	
	movlw	01h
	
u2355:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2355
	line	32
	
l2356:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l794
u2360:
	
l796:	
	line	33
	
l790:	
	line	34
	
l2358:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2370
	goto	l797
u2370:
	line	35
	
l2360:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l797:	
	line	36
	
l2362:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2364:	
	line	37
	
l798:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:

;; *************** function _delay *****************
;; Defined at:
;;		line 9 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
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
psect	text179
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\weather monitor\weather monitor.c"
	line	9
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	10
	
l2324:	
;weather monitor.c: 10: while(x--);
	goto	l611
	
l612:	
	
l611:	
	
l2326:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2275
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2275:

	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l612
u2270:
	
l613:	
	line	11
	
l614:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
