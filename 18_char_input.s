; Program to demonstrate int 0x21 sub function 0x01

number: db 0x00

start:
    mov AH, 0x01
    int 0x21 ; interrupts to ask for user input
    mov byte[offset number], AL ; moving AL input value into memory