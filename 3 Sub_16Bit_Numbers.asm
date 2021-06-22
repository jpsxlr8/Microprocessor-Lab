
;Subtract two 16-Bit Numbers

;lower bits
LDA 0200H
MOV B, A
LDA 0202H
SUB B
STA 0204H

;higher bits
LDA 0201H
MOV B, A
LDA 0203H
SBB B
STA 0205H

hlt