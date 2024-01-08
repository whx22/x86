mov al, 11111000b
add al, 00001000b

times 510-($-$$) db 0x00
db 0x55, 0xaa