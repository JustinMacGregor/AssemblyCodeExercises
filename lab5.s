mov r3, #-77   ; The number to calculate absolute value
ldr r2, =-1
cmp r3, #0
mullt r1, r3, r2
swi 0x6B       ; Print the integer in register r1
swi 0x11       ; Halt