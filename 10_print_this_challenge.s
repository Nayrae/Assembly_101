; Program to store string "Don't Print This. Print This." starting at 0x20000
; nad then print out only the "Print This." portion of the string

set 0x2000 ; setting start of data directive to be at 0x20000
string: db "Don't Print This. Print this!" ; data directive to store stirng

start:
    mov AH, 0x13 ; setting up AH register for int0x10 sub function 0x13
    mov CX, 11 ; setting up CX with length of string to print
    mov BX, 0x2000 ; setting up BX as temp storage to move into ES
    mov ES, BX ; setting ES with starting segment address
    mov BP, 18 ; setting BP to 18 to skip over first part of the string
    int 0x10 ; interrupt to print out string