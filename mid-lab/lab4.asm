.MODEL SMALL
.STACK 100H 
.DATA
.CODE

MAIN PROC 
    MOV AX,'1'
    MOV BX,'2'
    MOV CX,'3' 
    
CMP AX,BX 
 JGE END_IF 
 CMP BX,CX 
 JGE ELSE_ 
 MOV AX,0 ;then
 JMP END_IF 
 
ELSE_: 

MOV BX,0 
END_IF: 

EXIT:
   MOV AH,4CH
   INT 21h
   MAIN ENDP
   END MAIN


