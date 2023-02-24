format PE console

; Input a string
push buf
call [gets]
add esp,4

; Print message
push msg
call [printf]
add esp,4

; Print user text
push buf
call [printf]
add esp,4

; Pause until a key is pressed
push paus
call [system]
add esp,4

ret

; Data
msg db 13,10,"You typed ",0
buf db 80 dup(?)

paus db "pause>nul",0

section '.idata' import data readable
include 'macro/import32.inc'
library msvcrt,'msvcrt.dll'
import msvcrt,\
printf,'printf',\
gets,'gets',\
system,'system'