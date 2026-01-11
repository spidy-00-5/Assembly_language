
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
 #if the exponent is equal to 0 we are done 
 cmpq $0, %rcx
 je complete    #comparasion statement is not required here (base is not zero )

mainloop:
 #multiply accumulator value by our base 

 mulq %rbx 

 #decrement %rcx, go back to loop lable if %rcx is not yet 0

 loopq mainloop 

complete:
 #move the accumulated value to %rdi so we can return it

 movq %rax, %rdi 

 #call the exit system call

 movq $60, %rax 

 syscall
