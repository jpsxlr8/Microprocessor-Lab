; GCD of two numbers

LDA 0251H		;Load Second Value
MOV B, A
LDA 0250H		;Load First Value

loop: CMP B		;compare if A>B
JZ saveGCD		;since gcd(a, a) = a
JC swapValues		;jump if B>A, swap
SUB B			;if A>B, A=A-B
JMP loop		;unconditional jump

swapValues: MOV C, A	;swap values
MOV A, B
MOV B, C
JMP loop		;unconditional jump after swap

saveGCD: STA 0252H	;save GCD(first, second)
hlt