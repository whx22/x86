start:
    mov ax, 0xb800  ; operation code : b8
    mov ds, ax      ; operation code : 8ed8

    ; 非法指令：直接将立即数传递给段寄存级
    ; mov ds, 0xb800 

    mov byte [0x00], 'A'    ; operation code : c606
    mov byte [0x01], 0x04

    mov byte [0x02], 's'
    mov byte [0x03], 0x04

    mov byte [0x04], 's'
    mov byte [0x05], 0x04

    mov byte [0x06], 'e'
    mov byte [0x07], 0x04

    mov byte [0x0b], 0x04
    mov byte [0x08], 'm'
    mov byte [0x09], 0x04

    mov byte [0x0a], 'b'

    mov byte [0x0c], 'l'
    mov byte [0x0d], 0x04

    mov byte [0x0e], 'y'
    mov byte [0x0f], 0x04

    mov byte [0x10], '.'
    mov byte [0x11], 0x04

again:
    jmp again

    current:
    times 510-(current-start) db 0x00
    db 0x55, 0xaa