; Program to demonstrate pointers

db [0x01, 0xa]
number: dw 0x1234
string: db "This is a string!"

start:
    mov word[0x02], 0xabcd
    mov BX, 0x02
    mov AX, word[BX]
    mov CX, word[0x02]
    lea AX, word number
    mov DX, offset number
    mov BX, offset string
    mov AX, word[BX, 2]