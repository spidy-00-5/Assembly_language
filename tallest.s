.set SIZE, 32                   # record size, needed locally

.globl _start
.section .text

_start:
    leaq people(%rip), %rbx     # RBX = pointer to first person (correct addressing)
    movq numpeople(%rip), %rcx  # RCX = number of people (loop counter)
    xorq %rdi, %rdi             # RDI = tallest height found (initial = 0)

    testq %rcx, %rcx            # if numpeople == 0
    je finish                   # exit early

mainloop:
    movq HEIGHT_OFFSET(%rbx), %rax   # RAX = current height
    cmpq %rdi, %rax                  # compare height - tallest
    jle endloop                      # if height <= tallest, skip
    movq %rax, %rdi                  # else update tallest

endloop:
    addq $SIZE, %rbx                 # move to next person record
    loopq mainloop                   # RCX-- and jump if RCX != 0

finish:
    movq $60, %rax                   # sys_exit
    xorq %rdi, %rdi                  # exit code = 0 (not tallest; tallest is still in RDI for debugging)
    syscall

