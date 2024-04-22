	.arch armv8-a
	.file	"fibonacci.c"
	.text
	.align	2
	.global	fib
	.type	fib, %function
fib:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L2
	mov	w0, 0
	b	.L3
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L4
	mov	w0, 1
	b	.L3
.L4:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	bl	fib
	mov	w19, w0
	ldr	w0, [sp, 44]
	sub	w0, w0, #2
	bl	fib
	add	w0, w19, w0
.L3:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	fib, .-fib
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 10
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	bl	fib
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
