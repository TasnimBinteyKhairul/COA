.MODEL SMALL
.STACK 100h
.DATA



MAIN PROC
         
         
         MOV AH,1 
         INT 21H 
          
         CMP AL, 'A'
          JNGE END_IF
           
           CMP AL, 'Z' 
            JNLE END_IF
                
             
              MOV DL,AL
              MOV AH,2
              INT 21H
              
              JMP END_IF
               

       END_IF:
          
            
            MOV AH,4CH


MAIN ENDP
END MAIN