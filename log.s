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
	.file	"log.c"
	.text
	.align	2
	.global	updateLog
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLog, %function
updateLog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0]
	ldr	r3, [r0, #24]
	add	r2, r1, r3
	cmp	r2, #239
	movle	ip, #0
	movgt	ip, #1
	cmp	r3, #1
	movne	ip, #0
	cmp	ip, #0
	str	r1, [r0, #8]
	bne	.L6
	cmn	r3, #1
	movne	r3, #0
	moveq	r3, #1
	ands	r3, r3, r2, lsr #31
	movne	r3, #239
	streq	r2, [r0]
	strne	r3, [r0]
	bx	lr
.L6:
	mov	r3, #0
	str	r3, [r0]
	bx	lr
	.size	updateLog, .-updateLog
	.align	2
	.global	eraseLog
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseLog, %function
eraseLog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #31744
	push	{r4, lr}
	sub	sp, sp, #8
	str	r3, [sp]
	ldr	r4, .L9
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #8]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	drawRectangle
	.size	eraseLog, .-eraseLog
	.align	2
	.global	drawLog
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLog, %function
drawLog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	ip, .L13
	sub	sp, sp, #8
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	ldr	r4, .L13+4
	ldm	r0, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	5460
	.word	drawRectangle
	.size	drawLog, .-drawLog
	.ident	"GCC: (devkitARM release 53) 9.1.0"
