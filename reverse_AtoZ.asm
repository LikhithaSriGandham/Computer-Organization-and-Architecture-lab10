.model small
.stack 100h
.data

.code
main proc
    mov ax, @data      ; Initialize data segment
    mov ds, ax

    mov cx, 26         ; Set loop counter to 26 for letters Z to A
    mov dl, 'Z'        ; Start with ASCII character 'Z'

print_loop:
    mov ah, 2          ; Function to display character in DOS
    int 21h            ; Interrupt to print character in DL

    dec dl             ; Move to the previous character (Z to A)
    loop print_loop    ; Decrement CX and loop until CX = 0

    mov ah, 4Ch        ; Exit to DOS
    int 21h
main endp
end main