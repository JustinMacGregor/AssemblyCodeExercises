format PE console

; Print message
push msg
call [printf]
add esp,4

; Pause until a key is pressed
push paus
call [system]
add esp,4

ret

; Data
msg db "Hello world!",0

paus db "pause>nul",0

section '.idata' import data readable
include 'macro/import32.inc'
library msvcrt,'msvcrt.dll'
import msvcrt,\
printf,'printf',\
system,'system'