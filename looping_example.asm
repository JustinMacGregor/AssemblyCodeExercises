org 100h

    mov ax, 0      ;ax is 0
    mov bx, 5      ;bx is 5
    
back:
    add ax, bx     ;ax becomes 5, then ax becomes 4, 3, and so on
    sub bx, 1      ;bx becomes 4
    
    cmp bx, 0      ;compare bx to 0
    JNE back       ;if bx doesn't equal zero, go to 'back' loop
    hlt
ret

;JNE gets executed 4 times!