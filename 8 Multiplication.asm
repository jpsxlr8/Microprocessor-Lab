; Multiplication of two 8-bit numbers
; can be done by repeated addition
; First Number:  HL : 0250H	= 255 = 1111 1111
; Second Number: BC : 0251H	= 003 = 0000 0011
; result = 765      : 0260H	= 002 = 0000 0010
;		      0261H	= 253 = 1111 1101

MVI C, 00H	;initialisation to store carry

LDA 0251H
MOV B, A	;loads second value ,i.e. 3
DCR B		;decrement because A*1 = A

LDA 0250H	;loads first value, which will be
		;added again and again

LOOP: ADD H	;A = A+H
JNC SKIP	;skip if no carry generated
INR C		;if carry generated, increment C

SKIP: DCR B
JNZ LOOP

STA 0261H	;saves lower bit value of the multiplication
MOV A, C
STA 0260H	;saves highes bit value of the multiplication

hlt