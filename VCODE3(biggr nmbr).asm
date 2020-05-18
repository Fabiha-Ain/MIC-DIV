.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH, 1
    INT 21H
    
    MOV BL, AL
    INT 21H
    MOV BH, AL
    
    CMP BH, BL
    JG L1
    
    
    
    L2:
    MOV AH, 2
    MOV DL, BL
    INT 21H
    JMP EXIT 
    
    L1:
    MOV AH, 2
    MOV DL, BH
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN