; Algorithm for div instruction on 8086
;--------------------------------------------
; when we're divinding by a byte
; AL = AX / operand
; AH = remainder
; when we're dividing by a word
; AX = (DX AX) / operand
; DX = remainder
;--------------------------------------------
; Program to demonstrate div instructions

start:
    mov AX, 1000
    mov BL, 10
    div BL ; AL = AX / BL, remainder into AH
    mov AX, 0xabcd
    mov DX, 0xa
    mov BX, 0xabc3
    div BX ; AX = (DX AX) / BX, with remainder into DX
    