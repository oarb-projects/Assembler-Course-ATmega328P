jmp main

del_1:
	ldi r16, 0
	loop1:
	inc r16
	cpi r16, 10
	brne loop1
	ret

main:
	nop
	rcall del_1
	nop
	nop
