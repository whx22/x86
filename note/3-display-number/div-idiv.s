    mov ax, -6002
    cwd
    mov bx, -10
    idiv bx

    times 510-($-$$) db 0x00
    db 0x55, 0xaa