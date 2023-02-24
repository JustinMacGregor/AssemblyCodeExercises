ORG 100h	    	; File is loaded at CS:0100h
MOV AX,0xB800  	; set AX = B800h (“segment” of video memory)
MOV DS,AX      	; copy value of AX to Data Segment or DS register
MOV CL,'A'     	; CL ? 41h (ASCII code for A)
MOV CH,00001111b	; CH ? colour attribute
MOV BX,0x0000   	; BX ? position on screen (offset portion only)
loop:
  MOV [BX],CX    	; [0xB800:0x0000] ? CL; [0xB800:0x0001] ? CH   
  ADD CH,1
  ADD BX,2
  CMP BX,2000
  JNE loop
RET             	; returns to operating system