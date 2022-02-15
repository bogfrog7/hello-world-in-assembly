global _start

section .data: ; defines constant variables
  message: db "Hello There", 0xA ; 0xA is the hex for new line
  message_lenght equ $-message ; length of the message


section.text:; were actual code is going to be in

_start:
    mov eax, 0x4 ; use the write sys call
    mov ebx, 1 ; use stdout as the file descriptor
    mov ecx, message ; use the message as the buffer
    mov edx, message_lenght ; message_lenght
    int 0x80 ; 0x80 is the hex for running a sys call

    mov eax, 0x1 ; exits the programm
    mov ebx, 0 ; we return 0

