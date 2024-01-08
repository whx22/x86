    jmp start
data1   db -1
data2   dw -25
start:
    mov ax, 0x07c0
    mov ds, ax
    mov dx, [data2]
    mov ax, 0
    sub ax, dx

    jmp $
    times 510-($-$$) db 0x00
    db 0x55, 0xaa