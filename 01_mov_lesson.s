; Program to demonstrate MOV instruction

start: ; Start label to tell assembler where the entry point of program is

mov AH, 0x15 ; moving 0x15 into AH register
mov AL, 15 ; moving 15 into AL register
mov BH, 0b1010 ; moving 0b1010 into BH register
mov AX, 0xffff ; moving 0xffff into AX register
mov AH, BH ; moving data from BH into AH