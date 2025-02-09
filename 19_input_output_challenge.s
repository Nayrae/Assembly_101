; Write a program to ask a user to input a number between 0-9 and then print that number back
;---------------------------------------------------------------------------------------------------
; After accepting the input, it should be returned by printing the following string
; "The number you input is: " followed with the number input
; The second output including the number should all be on the same line printed with one interrupt
; --------------------------------------------------------------------------------------------------

string1: db "Input a number between 0-9:" ; 27 chars to print
string_input: db "The number you input is: "
number: db 0x32 ; 50 in dec
start:
    mov AH, 0x13
    mov CX, OFFSET string1
    mov BP, OFFSET string1
    int 0x10 ; outputs string1
    
    ; Now let's ask for user input
    
    mov AH, 0x01
    int 0x21
    mov byte[OFFSET number], AL ; asks for input
    
    ; Now let's print string_input
    
    mov AH, 0x13
    mov CX, OFFSET string_input
    sub CX, 1
    mov BP, OFFSET string_input
    int 0x10