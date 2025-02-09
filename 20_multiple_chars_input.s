
; Program to demonstrate int 0x21 sub function 0xa by accepting user input into string and then print it back

db [0x00,6]                 ; Adding data to start of program so pointers aren't at zero
buffer: db 12 db[0x00, 12]  ; buffer to store max of 12 input chars

start:
; Take user input via int 0x21 sub function 0xa and store it into the buffer
mov AH, 0xa
mov DX, offset buffer
int 0x21
; Print out the contents of the buffer
mov AH, 0x13
mov BL, offset buffer
mov CL, byte [BX, 1]        ; derefernce pointer to take second byte which contains the amount of chars input
mov BX, 0
mov ES, BX
mov BP, offset buffer
add BP, 2
mov DX, 0
int 0x10
