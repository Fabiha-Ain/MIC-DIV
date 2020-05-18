.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB '?$'
MSG2 DB 10, 13, 'ENTER TWO CAPITAL LETTER: $'
MSG3 DB 10, 13, 'OUTPUT IS: $'

.CODE
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    
    MOV AH, 1
    INT 21H
    MOV CL, AL
    
    LEA DX, MSG3
    MOV AH, 9
    INT 21H
    
    CMP BL, CL
    JA L1
    
    MOV DL, BL
    MOV AH, 2
    INT 21H
    JMP EXIT
    
    L1:
    MOV DL, CL
    MOV AH, 2
    INT 21H
    
    
    EXIT:
    MOV AH, 4CH
    INT 21H