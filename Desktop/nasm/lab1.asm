Section .data
	msg db "Factorial = ", 0
	msglen equ $ -msg
	newline db 10,0
	result dd 0
	buffer db 12 dup(0)

section .text 

	global_start


_start 

	mov ebx, 5      ; n = 5
	mov eax, 1      ; result = 1


factorial_loop


Done:


;---Exit program----

	mov eax 1     ;   sys_exit
	xor ebx, ebx
	int 0x80
