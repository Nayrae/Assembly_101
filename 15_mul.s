; Program to demonstrate the mul instruction

start:
    mov AL, 5
    mov BX, 10000
    mul BX ; BL * AL 
    ; if we multiply 255 (ff) * 0xffff (the maximum numbers we can multiply), the result will overflow in DL
    