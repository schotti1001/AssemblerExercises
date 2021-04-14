%include "io.inc"
section .data
 A DD 4h
 B DD 0h
 C DD 3h
 ERG DD 0
 O_Flag DD 0
 Zahl DD 0
section .text
global CMAIN
CMAIN:
 mov ebp, esp; for correct debugging
 ;write your code here
 start:
 mov eax, [A]
 sub eax, [B] 
 jo ende
 add eax, [C]
 jo ende
 mov [ERG], eax
 
 jo ende
 mov ebx, [A]
 add ebx, [A]
 jo ende
 mov [A], ebx
 
 mov ebx, [B]
 add ebx, [B]
 jo ende
 mov [B], ebx
 
 mov ebx, [C]
 add ebx, [C]
 jo ende
 mov [C], ebx
 
 mov ebx, [Zahl]
 inc ebx
 mov [Zahl], ebx
 jmp start
 ende:

 PRINT_STRING "A: "
 PRINT_HEX 4,A
 NEWLINE
 PRINT_STRING "B: "
 PRINT_HEX 4,B
 NEWLINE
 PRINT_STRING "C: "
 PRINT_HEX 4,C
 NEWLINE
 PRINT_STRING "Ergebnis: "
 PRINT_HEX 4,ERG
 NEWLINE
 PRINT_STRING "Flag: "
 PRINT_HEX 4,O_Flag
 NEWLINE
 PRINT_STRING "Zahl: "
 PRINT_HEX 4,Zahl

 xor eax, eax
 ret