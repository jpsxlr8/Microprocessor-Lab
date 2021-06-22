; fibonacci series
MVI B, 0	; fib(0) = 0
MVI D, 1	; fib(1) = 1

LXI H, 0250H	; start address of fib series

LDA 024EH
MOV C, A

MOV M, D	; save fib(1)
INX H
DCR C

fib: MOV A, D
ADD B		; generate next fibonacci number
MOV M, A	; save fibonacci number
INX H

MOV B, D	; updating values of last two fibonacci 
MOV D, A 

DCR C
JNZ fib

hlt