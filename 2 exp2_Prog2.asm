;ALP to add two 16-Bit numbers

;calculating lower bits
LDA 0200H
MOV B, A
LDA 0202H
ADD B
STA 0204H

;calculating higher bits
LDA 0201H
MOV B, A
LDA 0203H
ADC B
STA 0205H

hlt