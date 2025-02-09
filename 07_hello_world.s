; Hello, World! program

string: db "Hello, World!" ; data directive to add "Hello, World!" string

start:
    mov AH, 0x13 ; setting up AH for int0x10 subfunction 0x13
    mov CX, 13 ; setting up CX with number of chars in "Hello, World!"
    mov BX, 0x0000 ; moving 0x0000 into BX as temmp to move into ES
    mov ES, BX ; moving 0x0000 from BX to ES to zero out ES
    mov BP, OFFSET string ; moving offset of string into BP
    int 0x10 ; calling interrupt to print out string