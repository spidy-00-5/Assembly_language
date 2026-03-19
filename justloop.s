
.globl _start
.section .text
_start:

movq $5, %rcx
movq $0, %rdi

mainloop:
 incq %rdi
 loopq mainloop

 complete:
  movq $60 ,%rax
  syscall

## this is a loop that run five times
#loopq checks for rcx value if it is 0 then exit the loop :
