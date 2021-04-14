%include "io.inc"
section .data
Hallo DB "Hallo" ;defining variable
A DD 12h ;defining variable
B DD 5h
ERG DD 0h
section .text
global CMAIN
CMAIN:
 mov ebp, esp ; for correct debugging
 ;write your code here
 xor eax, eax;clear register -> set to 0
 MOV EAX, [A];speichern der werte in register
 MOV EBX, 12
 ADD EAX, EBX
 MOV EBX, [B]
 ADD EAX, EBX
 MOV [ERG], EAX
  
 PRINT_STRING Hallo;ausgabe
 PRINT_HEX 4, [ERG]
 
 MOV EAX, [B]
 MOV EBX, [B]
 MUL EBX
 
 PRINT_DEC 4, EAX
 
 MOV EDX, 0
 MOV EAX, 4441h
 MOV EBX, 2h
 DIV EBX
 
 PRINT_DEC 4, EAX


 xor eax, eax;clear register, return value of mehthod
             ;to 0
 ret