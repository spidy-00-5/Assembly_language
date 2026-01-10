.section .text 
.globl _start 
_start:
   
   movq $0b1101, %rdi  #number in binary you need to use "0b" in start of the binary digit for assembler to know that it is binary number and immidiate address mode is used
   movq $60 ,%rax

   syscall
