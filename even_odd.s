.globl _start 
.section .text 
_start:
 
 movq $5, %rax
 xor %rdx,%rdx
 movq $2, %rbx
 movq $1, %rdi
 divq %rbx
#remainder is stored in rdx register 
 cmp $0,%rdx
 je even
 jmp exit
 even:
   movq $0 ,%rdi
   jmp exit
 exit: 
 movq $60, %rax
 syscall



