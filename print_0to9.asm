.model small
.stack 100h
.data

.code
main proc
    mov ax, @data      ; Initialize data segment
    mov ds, ax

    mov cx, 10         ; Set loop counter to 10 for numbers 0-9
    mov dl, '0'        ; Start with ASCII character '0'

print_loop:
    mov ah, 2          ; Function to display character in DOS
    int 21h            ; Interrupt to print character in DL

    inc dl             ; Move to the next character ('0' to '9')
    loop print_loop    ; Decrement CX and loop until CX = 0

    mov ah, 4Ch        ; Exit to DOS
    int 21h
main endp
end main