.MODEL
.STACK
.CODE
MAIN PROC
    MOV AX,9  
    CMP AX,0
    JNL EXIT
    NEG AX
  
    
EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
 