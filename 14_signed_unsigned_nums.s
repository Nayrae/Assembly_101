; Unsigned Vs. Signed Numbers in Binary
;--------------------------------------------------------------
; Unsigned Byte range = 0 -> 255 (0x00 -> 0xff)
; Signed Byte range = -128 -> 0 -> 127 (0x00 -> 0xff)
; Signed Byte Range Positive Side = 0 -> 127 0x00 -> 0x7F)
; Signed Byte Range Negative Side = -128 -> -1 (0x00 -> 0xff)
; Signed Word Range = -32.768 -> 0 -> 32.768
; Signed Byte Range Positive Side = 0 -> 32.767 (0x0000 -> 0x7fff)
; Signed Byte Range Negative Side = -32.768 -> -1 (0x0000 -> 0xffff)
;--------------------------------------------------------------
; Program to demonstrate subtraction with borrow flag

start:
    mov AL, -128
    mov AL, 0x00
    mov AL, 128
    mov AL, 200
    sub AL, 250 ; AL - 250 with result stored into AL
    mov BX, 20000
    sub BX, 25000 ; BX - 25000 with result stored into BX