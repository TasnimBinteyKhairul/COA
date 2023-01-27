.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    CMP AL,'2'
    JE EVEN
    CMP AL,'4'
    JE EVEN
    CMP AL,'1'
    JE ODD
    CMP AL,'3'
    JE ODD
EVEN:
    MOV AH,2
    MOV DL,'E'
    INT 21H
    JMP EXIT
ODD:
    MOV AH,2
    MOV DL,'O'
    INT 21H
    JMP EXIT
    
EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
