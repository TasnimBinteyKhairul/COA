.MODEL SMALL
.STACK 100H
.DATA
.CODE

 MAIN PROC
   MOV CX,AX
   CMP BX,CX
   MOV CX,BX

NEXT:
   MOV CX,BX
   
   TOP:
   DEC CX
   JNZ TOP
   MOV AX,BX
   
   DEC CX
   JNZ BOTTOM
   JMP EXIT
   
   BOTTOM:
   JMP TOP:
     
EXIT:
 MOV AX,BX
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN 