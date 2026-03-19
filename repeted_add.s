.globl _start
.section .text 
_start:

movq $5, %rax
movq $5, %rcx
movq $0 ,%rdi

loop:
 addq %rax,%rdi

 loopq loop

 movq $60 ,%rax
 syscall




