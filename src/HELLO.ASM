; ======================================
; HELLO.ASM
; Hello world example
; Compile: nasm HELLO.ASM -fbin -oHELLO.COM
; Author: dd86k
; ======================================

BITS	16
CPU	8086
ORG	100h

MOV DX, s1
MOV AH, 9	; output string
INT 21h
MOV AH, 4Ch	; exit, recommended by Microsoft
INT 21h

; DATA
s1:	db 'Hello World!',0Ah,0Dh,'$'