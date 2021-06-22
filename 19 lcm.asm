; LCM of two numbers

LDA 0250H	;Load first number
MOV B, A
LDA 0251H	;Load second number

CMP B		;compare if A>B
JC loop1	;Jump to loop1 if B>A

loop: MOV D, A
MOV C, A

isDivisible: CMP B	;compare if A>B
JC notDivisible		;if B>A jump

SUB B 
JNZ isDivisible		
JMP saveLCM	;if divisible by B, jump to saveLCM

loop1: MOV C, A		;swap A & B
MOV A, B
MOV B, C
JMP loop	;unconditional jump to loop

notDivisible: MOV A, C
ADD D
MOV C, A	;store values after each addition
JMP isDivisible     ;unconditional jump to isDivisible

saveLCM: MOV A, C
STA 0252H	; save LCM(first, second)

hlt