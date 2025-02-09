; Program to demonstrate data directives
byte1: db 0xab ; data directive to store 0xab
word1: dw 0xabcd ; data directive to store a word 0xabcd
string: db "Hello, World!" ; data directive to store string Hello, World!

start:
    mov AL, byte byte1 ; moving data into AL from 0x00
    mov BX, word word1 ; moving word of data into BX