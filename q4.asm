.MODEL SMALL
STACK 100H

.DATA

arr DB 12H, AAH, 13H, ABH, 14H, ACH, 15H, ADH, 16H, AFH ; array of 10 bytes
sum DB 0

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX
    
    MOV SI, 0 ; Start index at 0
    MOV AL, 0 ; Clear AL for summing
    
    ; only CX can do loops
    MOV CX, 5 ; we need to sum 5 odd-placed elements
    
START_SUM:
    MOV BL, arr[SI] ; i.e. arr[0] as of starting, i.e 12H
    ADD AL, BL
    ADD SI, 2
    LOOP START_SUM ; Loop until CX is 0

    MOV sum, AL ; store result in sum
    
    ; terminate program
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN