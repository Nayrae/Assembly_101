; Program to demonstrate Endianness
start:
    mov AX, 0xabcd ; moving word abcd into A register
    mov word[0x00], AX ; moving data into 0x00 to see endiannes (little Endian)
    mov byte[0x00], AH ; moving AH into 0x00 to see endiannes (Big Endian part 1)
    mov byte[0x01], AL ; moving AL into 0x01 to see endiannes (Big Endian part2)