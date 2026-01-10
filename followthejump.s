.globl _start 
.section .text 

_start:

 movq $25, %rax
 jmp thelabel      #goes to thelable 

somewhere:
 
 movq %rax, %rdi
 jmp anotherlabel  #goes to anotherlable 

label1:
 
 addq %rbx, %rax
 movq $5, %rbx 
 jmp here         #goes to here 

labellabel:

 syscall          #terminal 

anotherlabel:

 movq $60, %rax
 jmp labellabel   #goes to lablelable 

thelabel:

 movq %rax, %rbx 
 jmp there       #goes to there 

here:

 divq %rbx 
 jmp somewhere   #goes to somewhere

there:

  addq $5, %rbx 
  jmp label1    #goes to lable1 

anywhere:

  jmp thelabel  #goes to thelable 


#note this code does not run in linear form in jumps acc.. to lable 









 
 
 

