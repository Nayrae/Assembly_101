; Program to demonstrate add instruction

start:
    mov AL, 0xab
    add AL, 0x01 ; AL + 0x01 with result stored in AL
    mov BX, 0xabcd                  
    add BX, 0x0bcd ; BX + 0x0bcd with result stored in BX
    mov byte[0x00], 0xf0
    add byte [0x00], 0x0a ; [0x00] + 0x0a with result stored in address 0x00
    mov word [0x01], 0xfff0
    add word [0x01], 0x000c ; adding word at 0x01 with 0x000c with result going into word starting at 0x01