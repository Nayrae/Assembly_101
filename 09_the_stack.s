; Program to demonstrate the stack
number: dw 0x5678

start:
    mov AX, 0xabcd
    push AX
    push AX
    pop BX
    mov CX, 0x1234
    push CX
    mov word [0xfffa], 0x6789
    push CX