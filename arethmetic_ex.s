.globl _start 
.section .text 
_start: 

 movq $3 ,%rax
 movq $5 ,%rbx
 addq %rax ,%rbx
 mulq %rbx
 movq %rax ,%rdi

 movq $60 ,%rax
 syscall


