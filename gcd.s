gcd:
	CMP r0, r1
	BEQ end
	BLT less
	SUB r0, r0, #1
	B gcd

less:
	SUB r1,r1,r0
	B gcd

end:
	swi 0x00