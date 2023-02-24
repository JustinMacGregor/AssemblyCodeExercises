org 100h

lea ax, var1
lea ax, var2
mov [bx], 0abcdh
mov bx, ax
mov [bx], 8
                  ;this is changing values of var1 and var2
ret

var1 dw 6
var2 dw 1234h