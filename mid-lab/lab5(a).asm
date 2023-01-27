.MODEL SMALL
.STACK 100H 

.DATA
.CODE

MAIN PROC
    MOV AX,-1
    
    CMP AX,0
    MOV AH,2
    JL ELSE
    MOV BX,30H
    JMP DISPLAY
    
    ELSE:
    
    MOV BX,2DH
    MOV DX,BX
    INT 21H  
    MOV DL,20H
    INT 21H
    MOV BX,31H
    
    DISPLAY:
    MOV DX,BX
    INT 21H
    
EXIT:

 MOV AH,4CH
 INT 21h
 
MAIN ENDP
END MAIN
     
     
    
       
       
    









