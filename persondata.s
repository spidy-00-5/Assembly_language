.section .data
.globl people,numpeople

numpeople:
 .quad (endpeople - people )/Person_record_Size

people:
 #array of people 
 .quad 200, 2 ,74,20
 .quad 280, 2 ,72,44
 .quad 150, 1 ,68,30
 .quad 250, 3 ,75,24
 .quad 250, 2 ,70,11
 .quad 180, 5 ,69,65

endpeople:#mark the end of the array for calculation purposes

.globl WEIGHT_OFFSET,HAIR_OFFSET,HEIGHT_OFFSET,AGE_OFFSET
 .equ WEIGHT_OFFSET, 0
 .equ HAIR_OFFSET,8                    #
 .equ HEIGHT_OFFSET,16                 #THESE AER LIKE VARIABLES 
 .equ AGE_OFFSET,24

.globl Person_record_Size
.euq Person_record_Size,32



#this programm  store the data and this data can be linked in further programm 

