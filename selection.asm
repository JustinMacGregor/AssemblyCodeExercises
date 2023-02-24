org 100h

mov ax, -772

cmp ax, 0
jge pos      ;if a >= 0  
 
pos:
    hlt 
 
ret




