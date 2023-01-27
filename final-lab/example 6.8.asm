.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC 
    
    MOV CX,80
    MOV AH,2
    MOV DL,'*'
    
    TOP:
    
    INT 21h
    LOOP TOP
    
    EXIT:
    MOV AH,4CH
    
    MAIN ENDP
    END MAIN