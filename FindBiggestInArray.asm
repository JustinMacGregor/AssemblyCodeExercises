
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea bx, num
mov al, [bx] 
mov biggest, al      ;move first array value to 'biggest'
mov cl, 5

    rep:
    add bx,1         ;go to next value in array
    mov al, [bx]     ;move value to AL
    cmp al, biggest  ;compare al to biggest
    jg label1        ;if the value is greater, move to label1 
    
    
    label3:
    dec cl           ;decrement counter
    cmp cl,0         ;if counter is 0, quit the program
    jne rep 

hlt

    label1:          ;used to move AL value to 'biggest'
    mov biggest,al
    jmp label3


ret
num db 2h,65h,5h,61h,34h 
biggest db ?