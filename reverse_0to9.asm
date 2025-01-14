.model small
.stack 100h
.data

.code
main proc
    mov ax, @data      ; Initialize data segment
    mov ds, ax

    mov cx, 10         ; Set loop counter to 10 for numbers 9 to 0
    mov dl, '9'        ; Start with ASCII character '9'

print_loop:
    mov ah, 2          ; Function to display character in DOS
    int 21h            ; Interrupt to print character in DL

    dec dl             ; Move to the previous character ('9' to '0')
    loop print_loop    ; Decrement CX and loop until CX = 0

    mov ah, 4Ch        ; Exit to DOS
    int 21h
main endp
end main