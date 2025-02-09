; Program to demonstrate carry flag in 8086

start:
    mov AL, 250
    add AL, 200 ; AL + 200 stored into AL
    clc
    mov AH, 20
    add AH, 30
    mov BX, 0xfff0
    add BX, 0x00fb ; BX + 0x00fb with result stored in BX