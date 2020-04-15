//jmp ind_comp; 
jmp multiple_comp; 

ind_comp:
SBIC PINC,2
nop
rjmp ind_comp 

entradas_activadas:
nop

multiple_comp:
IN R17,PINC
CPI R17,(1<<PINC3)|(1<<PINC2)
BREQ entradas_activadas 
rjmp multiple_comp