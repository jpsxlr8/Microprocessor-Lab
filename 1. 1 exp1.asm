;EXPERIMENT No. 1

;1.1. Two 8 bit data are stored at locations 
;xx50H and xx51H. After addition result should 
;be stored at xx53H.    

LDA 0050H
MOV B, A
LDA 0051H
ADD B
STA 0053H
hlt