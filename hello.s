.LC0:
	.ascii	"\033c\033[42;30mhello world\000"
	.text
	.align	2
	.global	main
main:
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	ldr	r0, .L4
	bl	puts
	mov	r0, r0	@ nop
.L2:
	bl	getchar
	mov	r3, r0
	cmp	r3, #27
	beq	.L2
	mov	r3, #0
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
.L5:
	.align	2
.L4:
	.word	.LC0
