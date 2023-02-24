
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h

mov AL, 1h
mov BL,var1
  
    rep:
    mul BL            ;MUL BL, AL, store result in AL ( 5[BL] x 1[AL] = 5[AL] ), ( 4[BL] x 5[AL] = 20[AL] )
    dec BL                 
    cmp BL,1
    jne rep
    
mov fact, AL
mov AH, 0
call PRINT_NUM


ret


  var1 db 5h
  fact db ? 
  define_print_num 
  define_print_num_uns
