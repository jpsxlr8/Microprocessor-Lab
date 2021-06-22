;Swap elements of two array of 10 8-bit elements
; 0200 : 2, 4, 6, 8, 10, 12, 14, 16, 18, 20
; 0300 : 32, 34, 36, 38, 40, 42, 44, 46, 48, 50

LXI B, 0200H	;first array
LXI D, 0300H	;second array
MVI H, 0AH	;number of elements in both array

LOOP: LDAX B	;get value from BC in A
STA 0256H	;using 0256 as temporary address

LDAX D		;get value from DE in A
STAX B		;save value of DE in BC

LDA 0256H	;get value from temporary address
STAX D		;save value of BC in DE

INX B		;increase address of H
INX D		;increase address of D

DCR H		;decrease count of elements remaining
JNZ LOOP

hlt