.386
.model flat, stdcall

includelib msvcrt.lib
extern exit: proc
extern printf : proc
extern scanf : proc

public start

.data

format db "%d %d", 0
format_afisare db "%d", 0

primul_numar db 0
al_doilea_numar db 0

.code
start:
	
	push offset al_doilea_numar
	push offset primul_numar
	push offset format
	
	call scanf
	
	add esp, 12
	
	mov ecx, 0
	mov cl, primul_numar
	
	mov ebx, 0
	mov bl, al_doilea_numar
	
	add ecx, ebx
	
	push ecx
	push offset format_afisare
	
	call printf
	
	add esp, 4*2
	
	push 0
	call exit
end start
