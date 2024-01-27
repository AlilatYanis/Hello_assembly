bits 64

%define Hello 'Hello Word !' ;define permet de definire des constante 

extern GetStdHandle     ;Gestionnaire de peripherique
extern WriteConsoleA    ;Ecriture en mode console
extern ExitProcess      ;Arret du processus
                        
section .data
    message : db Hello, 10
    message_lenght equ $-message ;recuperer la longeur du message 

section .bss
    written resq 1

section .text
    global main
    main:
        mov rcx, -11
        call GetStdHandle

        sub rsp, 32
        sub rsp, 8

        mov rcx, rax
        mov rdx, message
        mov r8, message_lenght
        mov r9, written
        mov qword [rsp+32], 0 ; laisser un espace de 32 bit dans la pile 
        call WriteConsoleA

        add rsp, 32+8

        xor ecx, ecx ; ecx = 0
        call ExitProcess
        ; pour compresser en obj aller sur nasm-shell : nasm -f win64 Hello.asm -o Hello.obj
        ;puis dans le terminale : .\GoLink.exe Hello.obj /entry main /console kernel32.dll
        ;lancer le fichier.exe