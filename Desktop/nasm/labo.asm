section .data

nl db 10		;\n ascii ta3 newline
even_msg db "Even Number"
even_len equ $ - even_msg 
odd_msg db "Odd Number" 
odd_len equ $ - odd_msg

section .bss
;void


section .text 

global _start

_start:

    	mov eax, 123                      
    	mov ebx, 2
    	xor edx, edx
    	div ebx                    

    	cmp edx, 0
    	jne odd_case                    

      ;here even case :0 
    	mov eax, 4                       
    	mov ebx, 1                
    	mov ecx, even_msg
    	mov edx, even_len
    	int 0x80
    	jmp after_if

odd_case:
      mov eax, 4
      mov ebx, 1
      mov ecx, odd_msg
      mov edx, odd_len
      int 0x80

after_if:
    ; write newline
      mov eax, 4
      mov ebx, 1
      mov ecx, nl
      mov edx, 1
      int 0x80

 
      mov eax, 1
      xor ebx, ebx
      int 0x80




