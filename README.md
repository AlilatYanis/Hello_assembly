# Hello_assembly

## Hello Word en assembleur Windows 64 bits

vous devais avoir telecharger [Nasm](https://www.nasm.us/pub/nasm/releasebuilds/2.16.02rc7/win64/).

## Pour lancer le code asm

Il faut d'abord compresser en .obj aller sur nasm-shell assurez vous d'etre dans le bon dossier et taper cette commande

```
nasm -f win64 Hello.asm -o Hello.obj
```

Puis dans le terminale vous allez changer le .obj en .exe :

```
.\GoLink.exe Hello.obj /entry main /console kernel32.dll
```

Il ne vous reste plus qu'a lancer le Hello.exe
