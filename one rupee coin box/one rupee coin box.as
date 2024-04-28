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
	FNCALL	_main,_init
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_display
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_data
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_init,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNCALL	_lcd_data,_delay
	FNROOT	_main
	global	_d
	global	_dv2
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
	line	20

;initializer for _d
	retlw	01h
	retlw	0

	line	22

;initializer for _dv2
	retlw	01h
	retlw	0

	global	_b
	global	_a
	global	_c
	global	_dv1
	global	_i
	global	_j
	global	_k
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
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
	
STR_3:	
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_4:	
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_1:	
	retlw	100	;'d'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	0
psect	strings
	file	"one rupee coin box.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_j:
       ds      2

_k:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_b:
       ds      18

_a:
       ds      2

_c:
       ds      2

_dv1:
       ds      2

_i:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
	line	20
_d:
       ds      2

psect	dataBANK0
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
	line	22
_dv2:
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
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Ah)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
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
	global	?_init
?_init:	; 0 bytes @ 0x0
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
	global	??_init
??_init:	; 0 bytes @ 0x3
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
	ds	1
;;Data sizes: Strings 60, constant 0, data 4, bss 30, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0      30
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; lcd_display@m	PTR unsigned char  size(1) Largest target is 18
;;		 -> STR_4(CODE[16]), STR_3(CODE[18]), STR_2(CODE[16]), STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _lcd_display->_lcd_data
;;   _init->_lcd_cmd
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     838
;;                                              9 COMMON     1     1      0
;;                               _init
;;                            _lcd_cmd
;;                        _lcd_display
;;                              _delay
;;                           _lcd_data
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          1     1      0      88
;;                                              3 COMMON     1     1      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0      44
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
;;   _init
;;     _lcd_cmd
;;       _delay
;;   _lcd_cmd
;;     _delay
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;   _delay
;;   _lcd_data
;;     _delay
;;   ___awdiv
;;   ___awmod
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
;;DATA                 0      0      2F      12        0.0%
;;ABS                  0      0      2C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0      1E       5       37.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 62 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  597[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_init
;;		_lcd_cmd
;;		_lcd_display
;;		_delay
;;		_lcd_data
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	63
	
l2222:	
;one rupee coin box.c: 63: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	64
;one rupee coin box.c: 64: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	65
	
l2224:	
;one rupee coin box.c: 65: TRISB=0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	66
	
l2226:	
;one rupee coin box.c: 66: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	67
	
l2228:	
;one rupee coin box.c: 67: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	68
	
l2230:	
;one rupee coin box.c: 68: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	69
	
l2232:	
;one rupee coin box.c: 69: init();
	fcall	_init
	line	70
;one rupee coin box.c: 70: while(1)
	
l598:	
	line	72
	
l2234:	
;one rupee coin box.c: 71: {
;one rupee coin box.c: 72: if(RB4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l599
u2740:
	line	74
	
l2236:	
;one rupee coin box.c: 73: {
;one rupee coin box.c: 74: while(RB4==1);
	goto	l600
	
l601:	
	
l600:	
	btfsc	(52/8),(52)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l601
u2750:
	
l602:	
	line	75
	
l2238:	
;one rupee coin box.c: 75: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	76
	
l2240:	
;one rupee coin box.c: 76: lcd_display("drop coin");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	77
;one rupee coin box.c: 77: while(RB5==0);
	goto	l603
	
l604:	
	
l603:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l604
u2760:
	
l605:	
	line	78
;one rupee coin box.c: 78: if(RB5==1)
	btfss	(53/8),(53)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l606
u2770:
	line	80
	
l2242:	
;one rupee coin box.c: 79: {
;one rupee coin box.c: 80: while(RB5==1);
	goto	l607
	
l608:	
	
l607:	
	btfsc	(53/8),(53)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l608
u2780:
	
l609:	
	line	81
	
l2244:	
;one rupee coin box.c: 81: dv1=1;
	movlw	low(01h)
	movwf	(_dv1)
	movlw	high(01h)
	movwf	((_dv1))+1
	line	82
	
l2246:	
;one rupee coin box.c: 82: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	83
	
l2248:	
;one rupee coin box.c: 83: lcd_display("dial the number");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	84
	
l2250:	
;one rupee coin box.c: 84: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	85
	
l2252:	
;one rupee coin box.c: 85: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	86
	
l606:	
	line	87
	
l599:	
	line	88
	
l2254:	
;one rupee coin box.c: 86: }
;one rupee coin box.c: 87: }
;one rupee coin box.c: 88: if(dv1==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_dv1),w
	iorwf	(_dv1+1),w
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l610
u2790:
	line	90
	
l2256:	
;one rupee coin box.c: 89: {
;one rupee coin box.c: 90: RC0=1;RC1=0;RC2=0;
	bsf	(56/8),(56)&7
	bcf	(57/8),(57)&7
	bcf	(58/8),(58)&7
	line	91
;one rupee coin box.c: 91: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l611
u2800:
	line	93
	
l2258:	
;one rupee coin box.c: 92: {
;one rupee coin box.c: 93: while(RB0==1);
	goto	l612
	
l613:	
	
l612:	
	btfsc	(48/8),(48)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l613
u2810:
	
l614:	
	line	94
	
l2260:	
;one rupee coin box.c: 94: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	line	95
	
l2262:	
;one rupee coin box.c: 95: b[j]=1;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	line	96
	
l2264:	
;one rupee coin box.c: 96: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	97
	
l611:	
	line	99
	
l2266:	
;one rupee coin box.c: 97: }
;one rupee coin box.c: 99: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l615
u2820:
	line	101
	
l2268:	
;one rupee coin box.c: 100: {
;one rupee coin box.c: 101: while(RB1==1);
	goto	l616
	
l617:	
	
l616:	
	btfsc	(49/8),(49)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l617
u2830:
	
l618:	
	line	102
	
l2270:	
;one rupee coin box.c: 102: lcd_data('4');
	movlw	(034h)
	fcall	_lcd_data
	line	103
	
l2272:	
;one rupee coin box.c: 103: b[j]=4;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(04h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(04h)
	movwf	indf
	line	104
	
l2274:	
;one rupee coin box.c: 104: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	105
	
l615:	
	line	106
	
l2276:	
;one rupee coin box.c: 105: }
;one rupee coin box.c: 106: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l619
u2840:
	line	108
	
l2278:	
;one rupee coin box.c: 107: {
;one rupee coin box.c: 108: while(RB2==1);
	goto	l620
	
l621:	
	
l620:	
	btfsc	(50/8),(50)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l621
u2850:
	
l622:	
	line	109
	
l2280:	
;one rupee coin box.c: 109: lcd_data('7');
	movlw	(037h)
	fcall	_lcd_data
	line	110
	
l2282:	
;one rupee coin box.c: 110: b[j]=7;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(07h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(07h)
	movwf	indf
	line	111
	
l2284:	
;one rupee coin box.c: 111: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	112
	
l619:	
	line	113
	
l2286:	
;one rupee coin box.c: 112: }
;one rupee coin box.c: 113: if(RB3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l623
u2860:
	line	115
	
l2288:	
;one rupee coin box.c: 114: {
;one rupee coin box.c: 115: while(RB3==1);
	goto	l624
	
l625:	
	
l624:	
	btfsc	(51/8),(51)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l625
u2870:
	
l626:	
	line	116
	
l2290:	
;one rupee coin box.c: 116: lcd_data('*');
	movlw	(02Ah)
	fcall	_lcd_data
	line	117
	
l623:	
	line	118
	
l2292:	
;one rupee coin box.c: 117: }
;one rupee coin box.c: 118: RC0=0;RC1=1;RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	
l2294:	
	bsf	(57/8),(57)&7
	
l2296:	
	bcf	(58/8),(58)&7
	line	119
	
l2298:	
;one rupee coin box.c: 119: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l627
u2880:
	line	121
	
l2300:	
;one rupee coin box.c: 120: {
;one rupee coin box.c: 121: while(RB0==1);
	goto	l628
	
l629:	
	
l628:	
	btfsc	(48/8),(48)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l629
u2890:
	
l630:	
	line	122
	
l2302:	
;one rupee coin box.c: 122: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	line	123
	
l2304:	
;one rupee coin box.c: 123: b[j]=2;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	line	124
	
l2306:	
;one rupee coin box.c: 124: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	125
	
l627:	
	line	126
	
l2308:	
;one rupee coin box.c: 125: }
;one rupee coin box.c: 126: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l631
u2900:
	line	128
	
l2310:	
;one rupee coin box.c: 127: {
;one rupee coin box.c: 128: while(RB1==1);
	goto	l632
	
l633:	
	
l632:	
	btfsc	(49/8),(49)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l633
u2910:
	
l634:	
	line	129
	
l2312:	
;one rupee coin box.c: 129: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	line	130
	
l2314:	
;one rupee coin box.c: 130: b[j]=5;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(05h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(05h)
	movwf	indf
	line	131
	
l2316:	
;one rupee coin box.c: 131: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	132
	
l631:	
	line	133
	
l2318:	
;one rupee coin box.c: 132: }
;one rupee coin box.c: 133: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l635
u2920:
	line	135
	
l2320:	
;one rupee coin box.c: 134: {
;one rupee coin box.c: 135: while(RB2==1);
	goto	l636
	
l637:	
	
l636:	
	btfsc	(50/8),(50)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l637
u2930:
	
l638:	
	line	136
	
l2322:	
;one rupee coin box.c: 136: lcd_data('8');
	movlw	(038h)
	fcall	_lcd_data
	line	137
	
l2324:	
;one rupee coin box.c: 137: b[j]=8;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(08h)
	movwf	indf
	line	138
	
l2326:	
;one rupee coin box.c: 138: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	139
	
l635:	
	line	140
	
l2328:	
;one rupee coin box.c: 139: }
;one rupee coin box.c: 140: if(RB3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l639
u2940:
	line	142
	
l2330:	
;one rupee coin box.c: 141: {
;one rupee coin box.c: 142: while(RB3==1);
	goto	l640
	
l641:	
	
l640:	
	btfsc	(51/8),(51)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l641
u2950:
	
l642:	
	line	143
	
l2332:	
;one rupee coin box.c: 143: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	line	144
	
l2334:	
;one rupee coin box.c: 144: b[j]=0;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	145
	
l2336:	
;one rupee coin box.c: 145: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	146
	
l639:	
	line	147
	
l2338:	
;one rupee coin box.c: 146: }
;one rupee coin box.c: 147: RC0=0;RC1=0;RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	
l2340:	
	bcf	(57/8),(57)&7
	
l2342:	
	bsf	(58/8),(58)&7
	line	148
	
l2344:	
;one rupee coin box.c: 148: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l643
u2960:
	line	150
	
l2346:	
;one rupee coin box.c: 149: {
;one rupee coin box.c: 150: while(RB0==1);
	goto	l644
	
l645:	
	
l644:	
	btfsc	(48/8),(48)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l645
u2970:
	
l646:	
	line	151
	
l2348:	
;one rupee coin box.c: 151: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	line	152
	
l2350:	
;one rupee coin box.c: 152: b[j]=3;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	line	153
	
l2352:	
;one rupee coin box.c: 153: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	154
	
l643:	
	line	155
	
l2354:	
;one rupee coin box.c: 154: }
;one rupee coin box.c: 155: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l647
u2980:
	line	157
	
l2356:	
;one rupee coin box.c: 156: {
;one rupee coin box.c: 157: while(RB1==1);
	goto	l648
	
l649:	
	
l648:	
	btfsc	(49/8),(49)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l649
u2990:
	
l650:	
	line	158
	
l2358:	
;one rupee coin box.c: 158: lcd_data('6');
	movlw	(036h)
	fcall	_lcd_data
	line	159
	
l2360:	
;one rupee coin box.c: 159: b[j]=6;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(06h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(06h)
	movwf	indf
	line	160
	
l2362:	
;one rupee coin box.c: 160: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	161
	
l647:	
	line	162
	
l2364:	
;one rupee coin box.c: 161: }
;one rupee coin box.c: 162: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l651
u3000:
	line	164
	
l2366:	
;one rupee coin box.c: 163: {
;one rupee coin box.c: 164: while(RB2==1);
	goto	l652
	
l653:	
	
l652:	
	btfsc	(50/8),(50)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l653
u3010:
	
l654:	
	line	165
	
l2368:	
;one rupee coin box.c: 165: lcd_data('9');
	movlw	(039h)
	fcall	_lcd_data
	line	166
	
l2370:	
;one rupee coin box.c: 166: b[j]=9;
	movf	(_j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_b&0ffh
	movwf	fsr0
	movlw	low(09h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(09h)
	movwf	indf
	line	167
	
l2372:	
;one rupee coin box.c: 167: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	168
	
l651:	
	line	169
	
l2374:	
;one rupee coin box.c: 168: }
;one rupee coin box.c: 169: if(RB3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l655
u3020:
	line	171
	
l2376:	
;one rupee coin box.c: 170: {
;one rupee coin box.c: 171: while(RB3==1);
	goto	l656
	
l657:	
	
l656:	
	btfsc	(51/8),(51)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l657
u3030:
	
l658:	
	line	172
	
l2378:	
;one rupee coin box.c: 172: lcd_data('#');
	movlw	(023h)
	fcall	_lcd_data
	line	173
	
l655:	
	line	174
	
l610:	
	line	176
	
l2380:	
;one rupee coin box.c: 173: }
;one rupee coin box.c: 174: }
;one rupee coin box.c: 176: if((j>=10)&&(dv2==1))
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u3045
	movlw	low(0Ah)
	subwf	(_j),w
u3045:

	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l659
u3040:
	
l2382:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_dv2),w
	iorwf	(_dv2+1),w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l659
u3050:
	line	178
	
l2384:	
;one rupee coin box.c: 177: {
;one rupee coin box.c: 178: RB6=1;
	bsf	(54/8),(54)&7
	line	179
	
l2386:	
;one rupee coin box.c: 179: dv1=0;
	movlw	low(0)
	movwf	(_dv1)
	movlw	high(0)
	movwf	((_dv1))+1
	line	180
	
l2388:	
;one rupee coin box.c: 180: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	181
	
l2390:	
;one rupee coin box.c: 181: lcd_display("connecting.......");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_display
	line	182
	
l2392:	
;one rupee coin box.c: 182: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	183
	
l2394:	
;one rupee coin box.c: 183: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	184
	
l2396:	
;one rupee coin box.c: 184: for(k=60;k>=0;k--)
	movlw	low(03Ch)
	movwf	(_k)
	movlw	high(03Ch)
	movwf	((_k))+1
	
l2398:	
	btfss	(_k+1),7
	goto	u3061
	goto	u3060
u3061:
	goto	l660
u3060:
	
l2400:	
	goto	l661
	line	185
	
l660:	
	line	186
	
l2402:	
;one rupee coin box.c: 185: {
;one rupee coin box.c: 186: a=k/10;
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
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	187
;one rupee coin box.c: 187: c=k%10;
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
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awmod)),w
	clrf	(_c)
	addwf	(_c)

	line	188
;one rupee coin box.c: 188: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	189
;one rupee coin box.c: 189: lcd_data(a+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	fcall	_lcd_data
	line	190
;one rupee coin box.c: 190: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	191
;one rupee coin box.c: 191: lcd_cmd(0x81);
	movlw	(081h)
	fcall	_lcd_cmd
	line	192
;one rupee coin box.c: 192: lcd_data(c+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	fcall	_lcd_data
	line	193
;one rupee coin box.c: 193: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	195
	
l2404:	
;one rupee coin box.c: 195: if(RB5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l662
u3070:
	line	197
	
l2406:	
;one rupee coin box.c: 196: {
;one rupee coin box.c: 197: k=k+60;
	movf	(_k),w
	addlw	low(03Ch)
	movwf	(_k)
	movf	(_k+1),w
	skipnc
	addlw	1
	addlw	high(03Ch)
	movwf	1+(_k)
	line	198
	
l662:	
	line	199
	
l2408:	
;one rupee coin box.c: 198: }
;one rupee coin box.c: 199: if(k<=10)
	movf	(_k+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Bh))^80h
	subwf	btemp+0,w
	skipz
	goto	u3085
	movlw	low(0Bh)
	subwf	(_k),w
u3085:

	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l663
u3080:
	line	201
	
l2410:	
;one rupee coin box.c: 200: {
;one rupee coin box.c: 201: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	202
	
l2412:	
;one rupee coin box.c: 202: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	203
	
l2414:	
;one rupee coin box.c: 203: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	204
;one rupee coin box.c: 204: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	205
	
l663:	
	line	206
	
l2416:	
;one rupee coin box.c: 205: }
;one rupee coin box.c: 206: if(k==1)
	movlw	01h
	xorwf	(_k),w
	iorwf	(_k+1),w
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l664
u3090:
	line	208
	
l2418:	
;one rupee coin box.c: 207: {
;one rupee coin box.c: 208: j=0;
	movlw	low(0)
	movwf	(_j)
	movlw	high(0)
	movwf	((_j))+1
	line	209
;one rupee coin box.c: 209: dv2=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dv2)
	movlw	high(0)
	movwf	((_dv2))+1
	line	210
	
l2420:	
;one rupee coin box.c: 210: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	211
	
l2422:	
;one rupee coin box.c: 211: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	212
	
l2424:	
;one rupee coin box.c: 212: lcd_display("call ended     ");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_display
	line	213
	
l2426:	
;one rupee coin box.c: 213: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	214
	
l664:	
	line	184
	
l2428:	
	movlw	low(-1)
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(-1)
	addwf	(_k+1),f
	
l2430:	
	btfss	(_k+1),7
	goto	u3101
	goto	u3100
u3101:
	goto	l660
u3100:
	
l661:	
	line	216
	
l659:	
	line	217
	
l665:	
	line	70
	goto	l598
	
l666:	
	line	218
	
l667:	
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
;;		line 55 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_4(16), STR_3(18), STR_2(16), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[COMMON] PTR unsigned char 
;;		 -> STR_4(16), STR_3(18), STR_2(16), STR_1(10), 
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
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
	line	55
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	56
	
l2214:	
;one rupee coin box.c: 56: for(i=0;m[i]!='\0';i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	goto	l592
	line	57
	
l593:	
	line	58
	
l2216:	
;one rupee coin box.c: 57: {
;one rupee coin box.c: 58: lcd_data(m[i]);
	movf	(_i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	56
	
l2218:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l592:	
	
l2220:	
	movf	(_i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l593
u2730:
	
l594:	
	line	60
	
l595:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_init
psect	text174,local,class=CODE,delta=2
global __ptext174
__ptext174:

;; *************** function _init *****************
;; Defined at:
;;		line 46 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
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
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
	line	46
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 7
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l2212:	
;one rupee coin box.c: 47: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	48
;one rupee coin box.c: 48: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	49
;one rupee coin box.c: 49: lcd_cmd(0x0C);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	50
;one rupee coin box.c: 50: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	51
;one rupee coin box.c: 51: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	52
;one rupee coin box.c: 52: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	53
	
l589:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_lcd_cmd
psect	text175,local,class=CODE,delta=2
global __ptext175
__ptext175:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 37 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
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
;;		_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text175
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
	line	37
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	38
	
l2200:	
;one rupee coin box.c: 38: PORTD=cmd;
	movf	(lcd_cmd@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
	
l2202:	
;one rupee coin box.c: 39: RC4=0;
	bcf	(60/8),(60)&7
	line	40
	
l2204:	
;one rupee coin box.c: 40: RC5=0;
	bcf	(61/8),(61)&7
	line	41
	
l2206:	
;one rupee coin box.c: 41: RC6=1;
	bsf	(62/8),(62)&7
	line	42
	
l2208:	
;one rupee coin box.c: 42: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	43
	
l2210:	
;one rupee coin box.c: 43: RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	44
	
l586:	
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
;;		line 28 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
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
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
	line	28
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	29
	
l2188:	
;one rupee coin box.c: 29: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	30
	
l2190:	
;one rupee coin box.c: 30: RC4=1;
	bsf	(60/8),(60)&7
	line	31
	
l2192:	
;one rupee coin box.c: 31: RC5=0;
	bcf	(61/8),(61)&7
	line	32
	
l2194:	
;one rupee coin box.c: 32: RC6=1;
	bsf	(62/8),(62)&7
	line	33
	
l2196:	
;one rupee coin box.c: 33: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	34
	
l2198:	
;one rupee coin box.c: 34: RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	35
	
l583:	
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
	
l2152:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2154:	
	btfss	(___awmod@dividend+1),7
	goto	u2641
	goto	u2640
u2641:
	goto	l884
u2640:
	line	10
	
l2156:	
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
	
l884:	
	line	13
	
l2158:	
	btfss	(___awmod@divisor+1),7
	goto	u2651
	goto	u2650
u2651:
	goto	l885
u2650:
	line	14
	
l2160:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l885:	
	line	15
	
l2162:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2661
	goto	u2660
u2661:
	goto	l886
u2660:
	line	16
	
l2164:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l887
	
l888:	
	line	18
	
l2166:	
	movlw	01h
	
u2675:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2675
	line	19
	
l2168:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l887:	
	line	17
	
l2170:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l888
u2680:
	
l889:	
	line	21
	
l890:	
	line	22
	
l2172:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2695
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2695:
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l891
u2690:
	line	23
	
l2174:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l891:	
	line	24
	
l2176:	
	movlw	01h
	
u2705:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2705
	line	25
	
l2178:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l890
u2710:
	
l892:	
	line	26
	
l886:	
	line	27
	
l2180:	
	movf	(___awmod@sign),w
	skipz
	goto	u2720
	goto	l893
u2720:
	line	28
	
l2182:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l893:	
	line	29
	
l2184:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2186:	
	line	30
	
l894:	
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
	
l2114:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2116:	
	btfss	(___awdiv@divisor+1),7
	goto	u2541
	goto	u2540
u2541:
	goto	l816
u2540:
	line	11
	
l2118:	
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
	
l816:	
	line	14
	
l2120:	
	btfss	(___awdiv@dividend+1),7
	goto	u2551
	goto	u2550
u2551:
	goto	l817
u2550:
	line	15
	
l2122:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2124:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l817:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2561
	goto	u2560
u2561:
	goto	l818
u2560:
	line	20
	
l2126:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l819
	
l820:	
	line	22
	
l2128:	
	movlw	01h
	
u2575:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2575
	line	23
	
l2130:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l819:	
	line	21
	
l2132:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l820
u2580:
	
l821:	
	line	25
	
l822:	
	line	26
	
l2134:	
	movlw	01h
	
u2595:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2595
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2605
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2605:
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l823
u2600:
	line	28
	
l2136:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2138:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l823:	
	line	31
	
l2140:	
	movlw	01h
	
u2615:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2615
	line	32
	
l2142:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l822
u2620:
	
l824:	
	line	33
	
l818:	
	line	34
	
l2144:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2630
	goto	l825
u2630:
	line	35
	
l2146:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l825:	
	line	36
	
l2148:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2150:	
	line	37
	
l826:	
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
;;		line 24 in file "C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
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
	file	"C:\Users\vinoth k\OneDrive\Desktop\pic codings\lcd\one rupee coin box\one rupee coin box.c"
	line	24
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	25
	
l2110:	
;one rupee coin box.c: 25: while(x--);
	goto	l577
	
l578:	
	
l577:	
	
l2112:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2535
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2535:

	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l578
u2530:
	
l579:	
	line	26
	
l580:	
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
