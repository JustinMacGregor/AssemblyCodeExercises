loop:
	cmp r0, #16
	addlt r1, r1, r0
	addlt r0, r0, #1
	BLT loop
	
mov r0, #1				;counter
swi 0x6B
swi 0x11