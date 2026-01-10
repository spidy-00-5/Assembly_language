.globl _start 
.section .text 

_start:

movq $7 ,%rdi

jmp nextplace #jump statement
 
#these below two statement are skipped 

 movq $8, %rbx
 addq %rbx ,%rdi 

#programm runs from this line 

 nextplace:
 movq $60, %rdx
 
 syscall
