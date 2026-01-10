.globl _start 
.section .text 
_start:

 #perform some arethmetic operation 
 movq $3 , %rdi       #move 3 into register 
 movq %rdi ,%rax      #move value in rdi into rax
 addq %rdi ,%rax      # add rdi and rax  and store into rax
 mulq %rdi
 movq $2 ,%rdi
 addq %rdi ,%rax 
 movq $4 , %rdi
 mulq %rdi            #mul rdi and rax and store in rax 
 movq %rax , %rdi     


#set the exit system call number 
 movq $60 ,%rax 

#perform the system call 
 syscall 



 
