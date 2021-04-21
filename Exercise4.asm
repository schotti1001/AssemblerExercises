%include "io.inc"
section .data
MULTA DD 5h
MULTB DD 3h
COUNTER DD 1h
PROD DQ 0h

section .text
global CMAIN
CMAIN:
    mov ebp, esp;
    ;write your code here
    mov eax, [MULTA]
    mov ebx, [MULTB]
    mov ecx, [COUNTER]
    schleife:
    cmp ebx, ecx
    je ende
    inc ecx
    
    add eax, [MULTA] 
    
    jmp schleife
    ende:
    mov [PROD], eax
    
    PRINT_STRING "PROD: "
    PRINT_HEX 4,PROD
    xor eax, eax
    ret