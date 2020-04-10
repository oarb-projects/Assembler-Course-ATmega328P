;
; Primer Ejercicio.asm
;
; Created: 4/6/2020 5:02:05 PM
; Author : Oscar Rosete
;

.def temp    = R16


; Replace with your application code
start:
    inc r16
	; INICIALIZACION PUERTO I/O 
	ldi temp, 0xFF
	ldi r17,(1<<DDB3)|(1<<DDB2)|(1<<DDB1)|(1<<DDB0)
	ldi r18,(1<<DDD1)
	out DDRD,r18
	out DDRC, temp		
	ldi temp, 0b00001000
	out PORTC, temp
	out PORTD, r18
    rjmp start
