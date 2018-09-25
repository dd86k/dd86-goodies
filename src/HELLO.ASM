;======================================
; DD_H.ASM
; Hello world example
; Compile: nasm DD_H.ASM -fbin -oDD_H.COM
; Author: dd86k
;======================================

bits 16
cpu 8086

org 100h

mov dx, s1
mov ah, 9		; output string
int 21h
mov ah, 4Ch		; exit
int 21h

; DATA
s1:	db 'Hello World!',0Ah,0Dh,'$'