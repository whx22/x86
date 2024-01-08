    jmp start 
data1   db -1
data2   dw -25
start:
    mov ax, 0x07c0
    mov ds, ax
    mov dx, [data2]
    neg dx

    jmp $
    times 510-($-$$) db 0x00
    db 0x55, 0xaa
