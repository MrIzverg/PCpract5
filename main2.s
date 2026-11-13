	.file	"main2.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.base64	"0KHRg9C80LzQsCDRjdC70LXQvNC10L3RgtC+0LI6IAA="
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-192(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	read_arr@PLT
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	jg	.L2
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	-200(%rbp), %edx
	leaq	-192(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sum_range@PLT
	movl	%eax, -196(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-196(%rbp), %eax
	movl	%eax, %edi
	call	print_int@PLT
	movl	$0, %eax
.L4:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.2.1 20260810"
	.section	.note.GNU-stack,"",@progbits
