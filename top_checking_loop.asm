org 100h

MOV ax, 0  ;ax becomes 0
MOV bx, 5  ;bx becomes 5

back:
    CMP bx, 0    ;compare bx to 0  
    
    JE quit      ;if bx = 0, proceed to the 'quit' loop, 
                 ;if not then continue to next instr 
    
    ADD ax, bx   ;add bx to ax
    SUB bx, 1    ;subtract bx by 1
    JMP back     ;go to top of loop

quit:
    hlt

ret

;JMP only runs 5 times!