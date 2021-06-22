; factorial of N, boundation N<=5 only

MVI D, 01
MVI C, 01

LDA 0250H
ADD C
SUB C
JZ save		; since factorial(0) = 1

MOV B, A
DCR B
JZ save		; since factorial(1) = 1

factorial: CALL multiply
DCR B
JNZ factorial
save: MOV A, C
STA 0252H
hlt

multiply: MOV H, D	; H = D
MOV A, C		
INR D

loop: ADD C	; H times C added to A
DCR H
JNZ loop
MOV C, A

RET