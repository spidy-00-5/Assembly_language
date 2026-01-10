# TO FIND MAX NUMBER IN SET OF DATA 
# VARIABLES 
# %edi - holdes index of the data item being eaxamined 
# %ebx - largest data item found  
# %eax - current data item 


# MEMORY LOCATIONS -  data_items
# programm does not run for 64bit computers this is for 32 bit computer 

.section .data 

 data_items: 
   .long 2,4,56,67,89,45,33,23,69,90,0

.section .text 
.globl _start
_start:

movl $0, %edi
movl data_items(,%edi,4),%eax
movl %eax ,%ebx

start_loop:

cmpl $0,%eax
je loop_exit
incl %edi 
movl data_items(,%edi,4),%eax
cmpl %ebx,%eax
jle start_loop 
movl %eax,%ebx
jmp start_loop

loop_exit:

 movl $1,%eax
 int $0x80
