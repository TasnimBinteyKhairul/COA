.MODEL SMALL
.STACK 100h
.DATA



MAIN PROC
         
         
         MOV AH,1 
         INT 21H 
          
         CMP AL, 'y'
          JE THEN
           
           CMP AL, 'Y' 
            JE THEN
             
            JMP ELSE_                 
            
        THEN:    
             MOV AH,2 
             
              MOV DL,AL 
              INT 21H
              
              JMP END_IF
              
        ELSE_:        
              MOV AH, 4CH
               INT 21H 

       END_IF:
          
            
            MOV AH,4CH


MAIN ENDP
END MAIN
 