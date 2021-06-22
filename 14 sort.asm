; ascending order sorting ( Bubble Sort)

sort: LXI H, 0250H  ; starting address
MVI B, 00           ; using as flag
LDA 024EH     	    ; count of elements
MOV C, A     
DCR C               ; first element already included

loop: MOV A, M
INX H
CMP M

JC continue	; if next element is greater, jump
JZ continue	; if next element is equal, jump

swap: MOV D, M
MOV M, A
DCX H
MOV M, D
INX H
MVI B, 01           ; set when swapping is done

continue: DCR C
JNZ loop
MVI A, 01
CMP B
JZ sort

HLT