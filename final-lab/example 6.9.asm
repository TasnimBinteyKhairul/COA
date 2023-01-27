.MODEL SMALL
.STACK 100H
.DATA
 
.CODE 
MAIN PROC 
        MOV DX,0 
        MOV AH,1
        INT 21H 
        
  WHILE:
  
  CMP AL,0DH
  JE END WHILE 
  INC DX 
  INT 21H 
  JMP WHILE
        
        MOV AH, 4CH 
        INT 21H

MAIN ENDP 
END MAIN
 