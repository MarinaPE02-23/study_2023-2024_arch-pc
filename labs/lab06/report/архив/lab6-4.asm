%include 'in_out.asm'

SECTION .data
msg: DB 'Введите значение переменной x: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:

mov eax,msg
call sprint
mov ecx, x
mov edx, 80
call sread
call atoi
add eax,1
imul eax,10
sub eax, 10
mov ebx,10(x+10)-10

mul ebx
mov edi, eax
mov eax,rem
call sprint

call iprintLF
call quit

