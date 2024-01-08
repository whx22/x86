    jmp start

mytext  db  'L', 0x07, 'a', 0x07, 'b', 0x07, 'e', 0x07, 'l', 0x07, ' ', 0x07, \
            'o', 0x07, 'f', 0x07, 'f', 0x07, 's', 0x07, 'e', 0x07, 't', 0x07, ':', 0x07

start:
    ; display mytext
    cld
    mov ax, 0x07c0  ; set source segment address
    mov ds, ax      
    mov ax, 0xb800  ; set destination segment address
    mov es, ax      
    mov si, mytext  ; set source offset address
    mov di, 0x0000  ; set source offset address
    mov cx, (start-mytext)/2    ; set the number of transfers
    rep movsw       ; begin transfers

    ; decompose number assembly address
    mov ax, number
    mov bx, ax
    mov cx, 5
    mov si, 10
digit:
    xor dx, dx
    div si
    mov [bx], dl
    inc bx
    loop digit

    ; display number assembly address
    mov cx, 5
show:
    dec bx
    mov al, [bx]
    add al, 0x30
    mov ah, 0x04
    mov [es:di], ax
    add di, 2
    loop show

    jmp $

number  db 0x00, 0x00, 0x00, 0x00, 0x00
    times 510-($-$$) db 0x00
    db 0x55, 0xaa