;Count number of 1's and 0's in given 8-bit number
;0200 : given number
;0201 : count of 1's
;0202 : count of 0's

LDA 0200H	;number to be processed
MVI C, 00H	;initialise count of 1's
MVI H, 08H	;number of bits

LOOP: RLC	;rotates the value 1 bit left

JNC STEP	;if carry==0 jump
INR C		;else increse 1's count

STEP: DCR H	;decrease number of bits counter
JNZ LOOP

MOV A, C	;get count of 1's in A
STA 0201H	;save value of 1's at 0201H

MOV H, A	;save count of 1's in H
MVI A, 08H	;set value of A as 8
SUB H		;get value of 0's as 8- 1's count
STA 0202H	;save value of 0's at 0202H

hlt