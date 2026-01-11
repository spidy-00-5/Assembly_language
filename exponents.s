
.globl _start 

#this will calculate 
#you can modify %rbx and %rcx to calculate 
#another exponential.

.section .text 
_start:

 #%rbx will hold the base 
 movq $2, %rbx 
 # %rcx will hold the current exponent count 
 movq $3, %rcx 
 #store the accumulated value in %rax
 movq $1, %rax

mainloop:
 #add zero will allow us to use the flags to determine if %rcx has zero to begine with 

 addq $0, %rcx

 #if the exponent is zero, we are done 

 jz complete 

 #other wise ,multiplay the accumlated value by our base

 mulq %rbx 

 #decrese the counter 

 decq %rcx 

 #go back to the beginning of the loop and try again 

 jmp mainloop 

complete:
 #move the accumulated value to %rdi so we can return it

 movq %rax, %rdi 

 #call the exit system call

 movq $60, %rax 

 syscall
