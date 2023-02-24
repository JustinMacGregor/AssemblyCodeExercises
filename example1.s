;mov r1, #4097
;swi 0x11
;doesn't work

ldr r1, =4097
swi 0x11
;use pointers instead to store large values