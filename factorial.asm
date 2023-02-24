org 100h

mov BL, number
mov AL, 1

rep:
mul BL
dec BL
cmp BL, 1
jne rep
mov fact, AX 

ret

number DB 5
fact DW ?