org 100h
include 'emu8086.inc'  

printn "Enter a string"
lea di,buffer      ; Buffer address for get_string
mov dx,20          ; Buffer size for get_string
call get_string     

printn
printn "String entered is"
mov si,di           ; Make print address 'si' the same as 'di'
call print_string
hlt                

buffer DB ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?      

define_get_string
define_print_string
end
