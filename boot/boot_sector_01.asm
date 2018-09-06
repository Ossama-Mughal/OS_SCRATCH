; A simple boot sector program

;#######################################################################

; Instructions and Directives   Purpose

; 1: db (define byte)           To allocates 1 byte
; 2: times                      To repeat an instruction multiple times
; 3: dw (define word, 2 bytes)  To allocates 2 byte

;#######################################################################

;CODE
;####

jmp $
times 510-($-$$) db 0
dw 0xaa55
