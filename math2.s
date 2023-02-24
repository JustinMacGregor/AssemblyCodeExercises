cmp r0, #100
bge addTen
add r0, r0, #1
b done

addTen:
	add r0, r0, #10

done:
	swi 0x11