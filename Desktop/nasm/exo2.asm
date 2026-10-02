section .data
    a   dd 37
    b   dd 17
    x   dd 0
    y   dd 0
    z   dd 0
    w   dd 0

section .text
    global _start

_start:
    mov eax, [a]     
    mov ebx, [b]          

    
    mov ecx, eax
    add ecx, ebx
    mov [x], ecx

   
    mov ecx, eax
    sub ecx, ebx
    mov [y], ecx


    mov eax, [a]
    cdq                  
    idiv dword [b]       
    mov [z], eax
    mov [w], edx         
    mov eax, 60         
    xor edi, edi       
    syscall

