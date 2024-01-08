start:
    xor dx, dx
    mov ax, 65535
    mov bx, 10
    div bx
current:
    times 510-(current-start) db 0x00
    db 0x55, 0xaa