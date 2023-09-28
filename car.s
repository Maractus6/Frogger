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
	.file	"car.c"
	.text
	.align	2
	.global	updateCar
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCar, %function
updateCar:
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
	str	r2, [r0]
	bne	.L8
	cmn	r3, #1
	movne	r3, #0
	moveq	r3, #1
	ands	r3, r3, r2, lsr #31
	movne	r2, #239
	ldrne	r3, [r0, #12]
	stmne	r0, {r2, r3}
	bx	lr
.L8:
	mov	r2, #0
	ldr	r3, [r0, #12]
	stm	r0, {r2, r3}
	bx	lr
	.size	updateCar, .-updateCar
	.align	2
	.global	drawCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCar, %function
drawCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
	sub	sp, sp, #8
	str	r3, [sp]
	ldr	r4, .L11
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	drawRectangle
	.size	drawCar, .-drawCar
	.align	2
	.global	eraseCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseCar, %function
eraseCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	ip, .L15
	sub	sp, sp, #8
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	add	r0, r0, #8
	ldm	r0, {r0, r1}
	ldr	r4, .L15+4
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	15855
	.word	drawRectangle
	.size	eraseCar, .-eraseCar
	.ident	"GCC: (devkitARM release 53) 9.1.0"
