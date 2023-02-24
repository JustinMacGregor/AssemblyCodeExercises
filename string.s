ldr r0, =myString
swi 0x02 ;display string 
swi 0x11

myString: .asciz "Hello World!\n"