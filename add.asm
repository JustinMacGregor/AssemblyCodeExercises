;This code formats the console in a PE file

;Do a simple calculation, eax is the 32-bit ax register
mov eax, 44h
mov ebx, 20h
add eax, ebx

;Print the result
push eax
push msg
call [printf]
add esp, 8

;Pause until a key is pressed
push paus
call [system]
add esp, 4

ret

;Data
msg db "The result is %02Xh", 10, 0

paus db "pause>nul", 0

section '.idata' import data readable
include 'macro/import32.inc'
library msvcrt, 'msvcrt.dll'
import msvcrt,\\
print