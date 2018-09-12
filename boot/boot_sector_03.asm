ORG 0x7c00

mov al, [the_label]
mov ah, 0x0e
int 0x10

jmp $

the_label:
	db 'X'

times 510-($-$$) db 0
dw 0xaa55
