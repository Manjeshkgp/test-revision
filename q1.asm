.MODEL SMALL
.STACK 100H

.DATA

    num1 DB 10H
    num2 DB 24H
    num3 DB 5H
    num4 DB 30H
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AL, num1
    CMP AL, num2
    JAE SKIP_NUM2
    MOV AL, num2

SKIP_NUM2:
    CMP AL, num3
    JAE SKIP_NUM3
    MOV AL, num3

SKIP_NUM3:
    CMP AL, num4
    JAE END_PROGRAM
    MOV AL, num4

END_PROGRAM:
    ; The highest value is now in AL
    
    MOV AH, 4CH ; Exit DOS (Disk Operating System)
    INT 21H

MAIN ENDP
END MAIN
