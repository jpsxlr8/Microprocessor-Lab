; find smallest number in array of 8-bit number

LDA 024DH	;fetch value of N
MOV B, A	;save value of N in B
LXI H, 0250H	;fetch first element, set it as smallest
MOV A, M	;save first element
DCR B	;decrement, since first element is smallest
INX H	;increment to second element

loop: CMP M
JC iterate
MOV A, M
iterate: INX H
DCR B
JNZ loop

STA 024EH	;save result

hlt