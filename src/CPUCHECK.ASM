; ======================================
; CPUCHECK.ASM
; Print processor type. (8086, 80286, or 80386)
; Compile: nasm CPUCHECK.ASM -fbin -oCPUCHECK.COM
; Author: dd86k
; ======================================

BITS	16
CPU	8086
ORG	100h

	PUSHF
	POP BX
	AND BX, 0FFFh
	PUSH BX
	POPF
	PUSHF
	POP AX

	AND AX, 0F000h
	CMP AX, 0F000h
	JZ IS_8086

	OR BX, 0F000h
	PUSH BX
	POPF
	PUSHF
	POP AX

	AND AX, 0F000h
	JZ IS_80286

IS_80386:
	MOV DX, s80386
	JMP DONE

IS_80286:
	MOV DX, s80286
	JMP DONE

IS_8086:
	MOV DX, s8086

DONE:
	POPF
	MOV AH, 9	; output string
	INT 21h
	MOV AH, 4Ch	; exit
	INT 21h

; DATA
s8086:	db 'CPU: 8086',0Ah,0Dh,'$'
s80286:	db 'CPU: 80286',0Ah,0Dh,'$'
s80386:	db 'CPU: 80386',0Ah,0Dh,'$'