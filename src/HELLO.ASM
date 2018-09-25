;======================================
; HELLO.ASM
; Hello world example
; Compile: nasm HELLO.ASM -fbin -oHELLO.COM
; Author: dd86k
;======================================

BITS 16
CPU 8086

ORG 100h

mov dx, s1
mov ah, 9		; output string
int 21h
mov ah, 4Ch		; exit, recommended by Microsoft
int 21h

; DATA
s1:	db 'Hello World!',0Ah,0Dh,'$'