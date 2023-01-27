.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC
    
    MOV CX,0
    MOV AH,2
    MOV DL,'*'
    
    TOP:
    INT 21H
    LOOP TOP
    
    
EXIT:
MOV AH,4CH
INT 21h

MAIN ENDP
END MAIN


