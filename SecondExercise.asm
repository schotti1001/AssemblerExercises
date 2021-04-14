%include "io.inc"
section .data
var dq 0


section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    
    mov eax, var
    mov ebx,0
    mov byte [eax | 4], 5
    
    
    xor eax, eax
    ret