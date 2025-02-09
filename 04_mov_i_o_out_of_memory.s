; Program to print out "H" to demonstrate how interupts work

start:

mov BX, 0x1000 ; moving data offset into BX so we can mov it into DS
mov DS, BX ; moving offset into DS from BX
mov byte [0x02], 0xff ; moving one byte (0xff) into the memory at address 0x02
mov word [0x03], 0xeeee ; moving one byte (0xee) into the memory at address 0x03
mov AL, byte [0x02] ;moving data from address 0x02 into AL
mov AX, word [0x03] ; moving data from address 0x03 into AX
mov BX, 0x0000 ; moving data offset into BX so we can move it into DS
mov DS, BX ; moving offset into DS from BX
mov AL, byte [0x02] ; moving data from address 0x02 (start address 00000) into AL
mov AX, word [0x03] ; moving data from address 0x03 (start address 00000) into AX