; A simple boot sector program that uses interrupts and BIOS routine to
; display characters on the screen, advancing the cursor and scrolling
; the screen as necessary. the printing is always done to current active
; page

;#######################################################################

; Instructions, Directives and Registers   Purpose

; 1: db (define byte)                      To allocates 1 byte
; 2: times                                 To repeat an instruction
;										   multiple times
; 3: dw (define word, 2 bytes)             To allocates 2 byte
; 4: ax (ax=ah+al)                         Cpu General purpose register
; 5: int                                   Cpu interrupt
;#######################################################################

; CODE
; ####

mov al, 's'
mov ah, 0x0e
int 0x10
mov al, 'i'
mov ah, 0x0e
int 0x10
mov al, 'm'
mov ah, 0x0e
int 0x10
mov al, 'p'
mov ah, 0x0e
int 0x10
mov al, 'l'
mov ah, 0x0e
int 0x10
mov al, 'e'
mov ah, 0x0e
int 0x10
mov al, ' '
mov ah, 0x0e
int 0x10
mov al, 'b'
mov ah, 0x0e
int 0x10
mov al, 'o'
mov ah, 0x0e
int 0x10
mov al, 'o'
mov ah, 0x0e
int 0x10
mov al, 't'
mov ah, 0x0e
int 0x10
mov al, ' '
mov ah, 0x0e
int 0x10
mov al, 's'
mov ah, 0x0e
int 0x10
mov al, 'e'
mov ah, 0x0e
int 0x10
mov al, 'c'
mov ah, 0x0e
int 0x10
mov al, 't'
mov ah, 0x0e
int 0x10
mov al, 'o'
mov ah, 0x0e
int 0x10
mov al, 'r'
mov ah, 0x0e
int 0x10

jmp $
times 510-($-$$) db 0
dw 0xaa55
