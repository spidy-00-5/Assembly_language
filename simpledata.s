.globl _start
.section .data
 
#like defining variables 

value1:.quad 4
value2:.quad 6
value3:.quad 0

.section  .text

_start:
  
   #load data into register 

   movq value1, %rbx 
   movq value2, %rcx

   addq %rbx, %rcx  #perform computation 

   movq %rcx, value3 #store result in value3

   movq $60, %rax 
   movq value3, %rdi 

   syscall

