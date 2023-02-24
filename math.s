mov r2, #10
mov r3, #2
mul r1,r2,r3 	;r1=r2*r3
mov r0, #1
swi 0x6B		;write integer to r1
swi 0x11