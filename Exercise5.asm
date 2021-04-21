%include "io.inc"

section .data
pos_zahl DD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
neg_zahl DD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

buffer_esi dd 0
buffer_eax dd 0
buffer_ecx dd 0

output DB "%d ", 10, 0
section .text
global CMAIN

extern printf

CMAIN:

    mov ebp, esp;

    ;write your code here
    
    mov esi, 0;
    mov eax, 0;
    mov ecx, 10;
    schleife:
    add [pos_zahl+esi], eax
    
    
    mov [buffer_esi], esi
    mov [buffer_eax], eax
    mov [buffer_ecx], ecx

    push dword [pos_zahl + esi];
    push dword output
    call printf;
    
    mov esi, [buffer_esi]
    mov eax, [buffer_eax]
    mov ecx, [buffer_ecx]
    
    add esi, 4;
    add eax, 1;
    cmp eax, ecx;
    jne schleife
    
    ;negative
    mov esi, 0;
    mov eax, 1;
    mov ecx, 11;
    schleife2:
    sub [neg_zahl+esi], eax   
    
    mov [buffer_esi], esi
    mov [buffer_eax], eax
    mov [buffer_ecx], ecx

    push dword [neg_zahl + esi];
    push dword output
    call printf;
    
    mov esi, [buffer_esi]
    mov eax, [buffer_eax]
    mov ecx, [buffer_ecx]
    
    add esi, 4;
    add eax, 1;
    cmp eax, ecx;
    jne schleife2
    
    mov esp, ebp
    xor eax, eax
    ret