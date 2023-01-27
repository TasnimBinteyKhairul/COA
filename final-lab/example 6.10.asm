.MODEL SMALL
.STACK 100h
.DATA
  
MAIN PROC
    MOV AH,1 
    
    REPEAT:
    INT 21H
    CMP AL, ' '
    JNE REPEAT
               
            
            


 EXIT:
    MOV AH,4CH 
    INT 21h


MAIN ENDP
END MAIN
