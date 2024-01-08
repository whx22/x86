start:
    mov ax, 378
    mov bl, 37
    div bl
current:
    times 510-(current-start) db 0x00
    db 0x55, 0xaa