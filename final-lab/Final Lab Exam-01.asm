.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC  
    
    
    MOV AH,4CH
    INT 21H
    
    CALL TASK
    JMP EXIT 

TASK PROC
    
    MOV AX,@DATA
    MOV DX,AX 
    MOV BX,1
    MOV DX,0 
    
    LOOP:
    CMP BX,101
    JG EXIT
    ADD DX,BX
    
    INC BX
    INC BX
    
    JMP LOOP 
    
    RET
    
    EXIT:
    MOV AH,4
    INT 21H
    TASK ENDP
    END  MAIN
    