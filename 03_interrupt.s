; Program to print out "H" to demonstrate how interupts work

start:

mov AH, 0x0a ; Setting up AH register with 0x0a for int 0x10 to print single char
mov AL, 0x48 ; Setting up AL register with "H" in ascii (H in ascii = 72) for int 0x10
mov CX, 0x01; Setting up CX register with 1 to specify number of chars printed
int 0x10 ; Interrupt to print single char out of AL register