.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV BL, 48
    
    L1:
    MOV AH, 01
    INT 21H
    INC BL
    CMP AL, 20H
    JE L2
    
    LOOP L1
    
    L2:
    DEC BL
    MOV DL, BL
    MOV AH, 02
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    