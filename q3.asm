.MODEL SMALL
STACK 100H

.DATA
    num1 DB 10H
    num2 DB 20H
    
.CODE
MAIN PROC 

    MOV AX, @DATA
    MOV DS, AX
    
    MOV AL, num1
    ADD AL, num2
    
    JC CARRY_SET

    ; If no carry, clear AH
    MOV AH, 00H
    JMP END_PROGRAM

CARRY_SET:
    ;IF ANY CARRY, SET AH TO 01H
    MOV AH, 01H
    
END_PROGRAM:

    MOV AH, 4CH ; EXIT DOS
    INT 21H
MAIN ENDP
END MAIN