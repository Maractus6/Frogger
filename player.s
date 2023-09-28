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
	.file	"player.c"
	.text
	.align	2
	.global	drawPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	ip, .L4
	sub	sp, sp, #8
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	ldr	r4, .L4+4
	ldm	r0, {r0, r1}
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
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	moveUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveUp, %function
moveUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	cmp	r3, #19
	ldrgt	r2, [r0, #24]
	subgt	r2, r3, r2
	strgt	r3, [r0, #12]
	strgt	r2, [r0, #4]
	bx	lr
	.size	moveUp, .-moveUp
	.align	2
	.global	moveDown
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveDown, %function
moveDown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	cmp	r3, #120
	ldrle	r2, [r0, #24]
	addle	r3, r2, r3
	strle	r3, [r0, #4]
	bx	lr
	.size	moveDown, .-moveDown
	.align	2
	.global	moveLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveLeft, %function
moveLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cmp	r3, #19
	ldrgt	r2, [r0, #24]
	subgt	r3, r3, r2
	strgt	r3, [r0]
	bx	lr
	.size	moveLeft, .-moveLeft
	.align	2
	.global	moveRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveRight, %function
moveRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cmp	r3, #200
	ldrle	r2, [r0, #20]
	addle	r3, r2, r3
	strle	r3, [r0]
	bx	lr
	.size	moveRight, .-moveRight
	.align	2
	.global	erasePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	erasePlayer, %function
erasePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #12]
	sub	r2, r1, #60
	rsbs	r3, r2, #0
	adc	r3, r3, r2
	cmp	r1, #0
	moveq	r3, #1
	cmp	r1, #120
	orreq	r3, r3, #1
	push	{r4, lr}
	cmp	r3, #0
	movne	r3, #992
	sub	sp, sp, #8
	beq	.L23
.L22:
	str	r3, [sp]
	ldr	r4, .L24
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	ldr	r0, [r0, #8]
	mov	lr, pc
	bx	r4
.L14:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L23:
	cmp	r1, #40
	cmpne	r1, #20
	moveq	r3, #31744
	beq	.L22
	cmp	r1, #100
	cmpne	r1, #80
	bne	.L14
	ldr	r3, .L24+4
	b	.L22
.L25:
	.align	2
.L24:
	.word	drawRectangle
	.word	15855
	.size	erasePlayer, .-erasePlayer
	.ident	"GCC: (devkitARM release 53) 9.1.0"
