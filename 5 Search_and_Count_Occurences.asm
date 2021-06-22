; values= 255, 255, 50, 255, 48, 68, 255, 76, 86, 34;
; element to be searched= 255
; number of occurence of the element=4

MVI C, 000AH	;count of numbers
LXI H, 0200H	;starting address
MVI A, 00FFH	;element to be searched
MVI D, 0000H	;clearing counter before counting


LOOP: CMP M
DCR C
INX H
MVI M, 0000H	;if element not found, M will be 0==false

JZ LOOP		;if element not found, go to start of loop
INR D
MVI M, 0001H	;if element is found, M will be 1==true
JNZ LOOP


LXI H, 0300H
MOV M, A
INX H
MOV M, D

hlt