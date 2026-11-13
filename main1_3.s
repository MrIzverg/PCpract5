	.file	"main1.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.base64	"0JLQstC10LTQuNGC0LUg0L3QsNGC0YPRgNCw0LvRjNC90L7QtSDRh9C40YHQu9C+OgA="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%lld"
	.section	.rodata.str1.8
	.align 8
.LC2:
	.base64	"0J3Rg9C20L3QviDQstCy0LXRgdGC0Lgg0L3QsNGC0YPRgNCw0LvRjNC90L7QtSDRh9C40YHQu9C+AA=="
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %rdi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	printf@PLT
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	leaq	4(%rsp), %rsi
	call	__isoc23_scanf@PLT
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rdi
	call	printf@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L5
	movl	$1, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.2.1 20260810"
	.section	.note.GNU-stack,"",@progbits
