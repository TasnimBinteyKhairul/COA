.MODEL SMALL
.STACK 100H 
.DATA
.CODE

MAIN PROC
    MOV DL,'T'
    
    CMP DL,'A'
    JGE IF_1
    JMP ELSE
    
    IF_1:
    CMP DL,'Z'
    JLE IF_2
    JMP ELSE
    
    IF_2:
    JMP DISPLAY
    
    ELSE:
    MOV DL,30H
    JMP DISPLAY
    
    DISPLAY:
    MOV AH,2
    MOV DL,DL
    INT 21H
    JMP EXIT
    
   EXIT:
   MOV AH,4CH
   INT 21h
   MAIN ENDP
   END MAIN



