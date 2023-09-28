	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"lives.c"
	.text
	.align	2
	.global	drawLives
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	ip, .L4
	sub	sp, sp, #8
	ldm	r0, {r0, r1, r2, r3}
	ldr	r4, .L4+4
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	32767
	.word	drawRectangle
	.size	drawLives, .-drawLives
	.align	2
	.global	eraseLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseLives, %function
eraseLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #992
	push	{r4, lr}
	sub	sp, sp, #8
	str	r3, [sp]
	ldr	r4, .L8
	ldm	r0, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	drawRectangle
	.size	eraseLives, .-eraseLives
	.ident	"GCC: (devkitARM release 53) 9.1.0"
