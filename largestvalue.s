.globl _start
.section .data

#how many data element we have 
numberofnumbers:
 .quad 7

#the data elements themselves
mynumbers:
 .quad 5, 20, 33, 80, 52, 10, 1

#this programm will find thr largest value in the array 
.section .text
 _start:

#initilize reg 
movq numberofnumbers, %rcx
movq $mynumbers, %rbx 
movq $0, %rdi 

myloop:
 movq (%rbx), %rax   #this means it shows current value 
 cmp %rdi, %rax
 jbe loopcontrol
 movq %rax, %rdi 

loopcontrol:
 addq $8, %rbx
 loopq myloop 

endloop:
 movq $60, %rax 
 syscall

