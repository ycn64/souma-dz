	.file	"test.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	printBinary
	.type	printBinary, @function
printBinary:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$31, -4(%rbp)
	jmp	.L2
.L4:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L3
	cmpl	$0, -4(%rbp)
	je	.L3
	movl	$32, %edi
	call	putchar@PLT
.L3:
	subl	$1, -4(%rbp)
.L2:
	cmpl	$0, -4(%rbp)
	jns	.L4
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	printBinary, .-printBinary
	.section	.rodata
	.align 8
.LC1:
	.string	"\nComparing signed=%d and unsigned=%u\n"
.LC2:
	.string	"Signed value is smaller."
.LC3:
	.string	"Signed value is larger."
.LC4:
	.string	"They are equal."
	.text
	.globl	compareValues
	.type	compareValues, @function
compareValues:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jnb	.L6
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L9
.L6:
	movl	-4(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jnb	.L8
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L9
.L8:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	compareValues, .-compareValues
	.section	.rodata
	.align 8
.LC5:
	.string	"=== SIGNED vs UNSIGNED EXPLORATION ===\n"
.LC6:
	.string	"Signed a = %d\n"
.LC7:
	.string	"Unsigned b = %u\n"
.LC8:
	.string	"\nBinary of a (-10): "
.LC9:
	.string	"\nBinary of b (10):  "
.LC10:
	.string	"\n\n--- Comparison Test ---"
	.align 8
.LC11:
	.string	"\n--- Overflow Demonstration ---"
.LC12:
	.string	"Signed max: %d\n"
.LC13:
	.string	"Unsigned max: %u\n"
.LC14:
	.string	"After overflow:"
.LC15:
	.string	"Signed max + 1 = %d\n"
.LC16:
	.string	"Unsigned max + 1 = %u\n"
	.align 8
.LC17:
	.string	"\n--- Loop Test with Signed and Unsigned ---"
	.align 8
.LC18:
	.string	"Counting down with signed int:"
.LC19:
	.string	"si = %d\n"
	.align 8
.LC20:
	.string	"\nCounting down with unsigned int:"
.LC21:
	.string	"ui = %u\n"
.LC22:
	.string	"\n--- Mixed Arithmetic ---"
	.align 8
.LC23:
	.string	"x = %d, y = %u, x + y = %d (as signed), %u (as unsigned)\n"
.LC24:
	.string	"\n--- Bitwise Operations ---"
.LC25:
	.string	"bitA: "
.LC26:
	.string	"\nbitB: "
.LC27:
	.string	"\n\nbitA & bitB: "
.LC28:
	.string	"\nbitA | bitB: "
.LC29:
	.string	"\nbitA ^ bitB: "
.LC30:
	.string	"\n\n=== END OF PROGRAM ==="
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-10, -36(%rbp)
	movl	$10, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	printBinary
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	printBinary
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	compareValues
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$2147483647, -28(%rbp)
	movl	$-1, -24(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -28(%rbp)
	addl	$1, -24(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$3, -44(%rbp)
	jmp	.L11
.L12:
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -44(%rbp)
.L11:
	cmpl	$0, -44(%rbp)
	jns	.L12
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$3, -40(%rbp)
.L15:
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -40(%rbp)
	je	.L18
	subl	$1, -40(%rbp)
	jmp	.L15
.L18:
	nop
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-5, -20(%rbp)
	movl	$2, -16(%rbp)
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-252645136, -8(%rbp)
	movl	$252645135, -4(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	printBinary
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	printBinary
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	andl	-4(%rbp), %eax
	movl	%eax, %edi
	call	printBinary
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	orl	-4(%rbp), %eax
	movl	%eax, %edi
	call	printBinary
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	xorl	-4(%rbp), %eax
	movl	%eax, %edi
	call	printBinary
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 14.2.0-19ubuntu2) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
