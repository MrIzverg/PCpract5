	.file	"main3.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.base64	"0J/QvtC70L7QttC40YLQtdC70YzQvdGL0Lkg0L3QtdGH0LXRgtC90YvRhSDRjdC70LXQvNC10L3RgtC+0LIg0L3QtdGCAA=="
.LC1:
	.base64	"0J3QvtCy0YvQuSDQvNCw0YHQuNCyOgA="
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
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-176(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	read_arr@PLT
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	jg	.L2
	movl	$1, %eax
	jmp	.L6
.L2:
	leaq	-96(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	filter_true@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.L4
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L5
.L4:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-180(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	print_arr@PLT
.L5:
	movl	$0, %eax
.L6:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.2.1 20260810"
	.section	.note.GNU-stack,"",@progbits
