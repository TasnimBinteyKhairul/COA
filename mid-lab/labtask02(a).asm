
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL
.STACK 100h
.DATA



MSG DB 3fh,0h,24h
MSG1 DB 0AH,0DH,'THE SUM OF 2 AND 7 IS$'

.CODE
MAIN PROC



  MOV AX,@DATA
   MOV DS,AX



      LEA DX, MSG
       MOV AH, 9
       INT 21h
       
       MOV AH,1
       INT 21H
       MOV BX,AX
       
       MOV AH,1
       INT 21H
       MOV CX,AX
       
       LEA DX,MSG1
       MOV AH,9
       INT 21h
       
     
       
       ADD BX,CX
       SUB BX,48
       MOV AH,2
       MOV DX,BX
       INT 21H
       
       MOV AH,4CH
       INT 21H
       
       EXIT:
       MOV AH,4CH
       INT 21H
       
       MAIN ENDP
       END MAIN 





