.MODEL
.STACK
.CODE
MAIN PROC
    MOV AX,7  
    CMP AX,0
    JL NEGATIVE
    JE ZERO
    JG POSITIVE
NEGATIVE:
    MOV BX,-1
    JMP END_CASE
    
ZERO:
    MOV BX,0
    JMP END_CASE

POSITIVE:
    MOV BX,1

END_CASE:
    JMP EXIT 
    
EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN