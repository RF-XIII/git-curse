section .data
msg db '97',"Hola Mundo!",0xa,0x0d
len equ $-msg

section .text
    global _start
_start:

mov eax, 4
mov ebx, 1
mov ecx, msg  
mov edx, len
int 0x80

mov eax, 1
int 0x80