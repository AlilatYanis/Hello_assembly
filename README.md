# Hello_assembly

Hello Word en assembleur Windows 64 bits

vous devais avoir telecharger nasm
pour compresser en obj aller sur nasm-shell assurez vous d'etre dans le bon dossier : nasm -f win64 Hello.asm -o Hello.obj
puis dans le terminale : .\GoLink.exe Hello.obj /entry main /console kernel32.dll
lancer le Hello.exe
