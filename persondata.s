### Store person data in memory so it can be linked with other programs

.section .data                 # Data section (stores global/static data)
.globl people, numpeople ,SIZE      # Export these symbols so other files can use them

.set SIZE, 32                  # Each person occupies 32 bytes (4 fields × 8 bytes each)

### People array (each entry has 4 fields in order):
# [ WEIGHT (lbs), HAIR COLOR CODE, HEIGHT (inches), AGE ]
people:
    .quad 200, 2, 74, 20       # Person 1
    .quad 280, 2, 72, 44       # Person 2
    .quad 150, 1, 68, 30       # Person 3
    .quad 250, 3, 75, 24       # Person 4
    .quad 250, 2, 70, 11       # Person 5
    .quad 180, 5, 69, 65       # Person 6

endpeople:                     # Marker after the array to compute its size

### Compute number of people:
# (endpeople - people) gives total bytes of the array
# Divide by SIZE to get number of entriesi
.set numpeople_value, (endpeople - people) / SIZE

numpeople:
    .quad numpeople_value      # Store number of entries as a 64-bit integer

### Field offsets (useful for accessing struct-like data)
.globl WEIGHT_OFFSET, HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET

.equ WEIGHT_OFFSET, 0          # weight is at offset 0 bytes
.equ HAIR_OFFSET, 8            # hair color code at +8 bytes
.equ HEIGHT_OFFSET, 16         # height at +16 bytes
.equ AGE_OFFSET, 24            # age at +24 bytes
