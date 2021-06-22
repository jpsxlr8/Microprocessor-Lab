; Division of two 8-bit numbers
; can be done by repeated subtraction
; First Number:  HL : 0250H	= 125 = 0111 1101
; Second Number: BC : 0251H	= 004 = 0000 0100
; result            : 0260H	= 031 = 0001 1111
;		      0261H	= 001 = 0000 0001

MVI C, 00H	;initialise quotient

LDA 0251H	
MOV B, A	;taking divisor

LDA 0250H 	;taking dividend

LOOP: CMP B	;comparing if the dividend and divisor
JNC NEXT	;if dividend > divisor
JMP END		;if dividend < divisor, break loop, save result

NEXT: SUB B	;repetitive subtraction
INR C		;increase the quotient value
JMP LOOP	


END: STA 0261H  ; saving remainder
MOV A, C
STA 0260H	; saving quotient

hlt