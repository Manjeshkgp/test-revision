.MODEL SMALL
STACK 100H

.DATA

inputValue DB 0 ; change this value to test different inputs

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Load input value into AL
    MOV AL, inputValue
    
    CALL CheckZero ; Call the CheckZero procedure
    
    MOV AH, 4CH
    INT 21H
MAIN ENDP

CheckZero PROC NEAR
    CMP AL, 0
    JE Terminate

    MOV AL, 1
    RET

Terminate:
    MOV AH, 4CH
    INT 21H

CheckZero ENDP

END MAIN