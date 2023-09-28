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
	.file	"main.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"YOU WIN!\000"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin.part.0, %function
goToWin.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+4
	ldr	r3, .L4+8
	ldr	r2, .L4+12
	mov	r1, #80
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L4+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	fillScreen
	.word	drawString
	.word	32767
	.word	.LC0
	.word	.LANCHOR0
	.size	goToWin.part.0, .-goToWin.part.0
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"YOU LOSE!\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose.part.0, %function
goToLose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L8
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L8+8
	mov	r3, #0
	ldr	r2, .L8+12
	mov	r1, #80
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L8+16
	pop	{r4, lr}
	str	r2, [r3, #4]
	bx	lr
.L9:
	.align	2
.L8:
	.word	32767
	.word	fillScreen
	.word	drawString
	.word	.LC1
	.word	.LANCHOR0
	.size	goToLose.part.0, .-goToLose.part.0
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"Debugging Initialized\000"
	.align	2
.LC3:
	.ascii	"Hard Mode: \000"
	.align	2
.LC4:
	.ascii	"Lives: \000"
	.text
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L12
	sub	sp, sp, #12
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L12+4
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r4
	ldr	r0, .L12+8
	ldr	r3, .L12+12
	mov	lr, pc
	bx	r3
	mov	r5, #992
	mov	r1, #0
	ldr	ip, .L12+16
	ldr	r2, .L12+20
	ldrh	r0, [ip]
	ldr	r3, .L12+24
	strh	r0, [r2]	@ movhi
	ldrh	lr, [r3, #48]
	ldr	r4, .L12+28
	mov	r0, r1
	str	r5, [sp]
	mov	r3, #20
	mov	r2, #240
	strh	lr, [ip]	@ movhi
	mov	r7, #31744
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #240
	mov	r1, r3
	mov	r0, #0
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	ldr	r6, .L12+32
	mov	r3, #20
	mov	r2, #240
	mov	r1, #40
	mov	r0, #0
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #20
	mov	r2, #240
	mov	r1, #60
	mov	r0, #0
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #240
	mov	r1, #80
	mov	r0, #0
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #240
	mov	r1, #100
	mov	r0, #0
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #20
	mov	r2, #240
	mov	r1, #120
	mov	r0, #0
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r4, .L12+36
	mov	r1, r3
	mov	r0, #100
	ldr	r2, .L12+40
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L12+44
	mov	r1, r3
	mov	r0, r3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r5, .L12+48
	ldr	r3, .L12+52
	ldr	r4, .L12+56
	mov	r0, r5
	strb	r2, [r3]
	mov	lr, pc
	bx	r4
	add	r0, r5, #16
	mov	lr, pc
	bx	r4
	add	r0, r5, #32
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r1, .L12+60
	ldr	r2, .L12+64
	strb	r3, [r1]
	strh	r3, [r2]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	mgba_open
	.word	1027
	.word	.LC2
	.word	mgba_printf
	.word	buttons
	.word	oldButtons
	.word	67109120
	.word	drawRectangle
	.word	15855
	.word	drawString
	.word	.LC3
	.word	.LC4
	.word	.LANCHOR1
	.word	lives
	.word	drawLives
	.word	state
	.word	hardMode
	.size	initialize, .-initialize
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #2
	ldr	r3, .L16
	ldr	r1, [r3]
	ldr	r3, .L16+4
	cmp	r1, #0
	strb	r2, [r3]
	bxne	lr
	b	goToWin.part.0
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L20
	ldr	r1, [r3, #4]
	ldr	r3, .L20+4
	cmp	r1, #0
	strb	r2, [r3]
	bxne	lr
	b	goToLose.part.0
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L76
	ldr	r5, .L76+4
	add	r1, r4, #48
	ldrh	r3, [r5]
	ldm	r1, {r1, r2}
	tst	r3, #1
	str	r1, [r4, #56]
	str	r2, [r4, #60]
	sub	sp, sp, #20
	bne	.L23
	ldr	r2, .L76+8
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L70
.L23:
	tst	r3, #128
	bne	.L24
	ldr	r2, .L76+8
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L71
.L24:
	tst	r3, #64
	bne	.L25
	ldr	r2, .L76+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L72
.L25:
	tst	r3, #32
	bne	.L26
	ldr	r2, .L76+8
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L73
.L26:
	tst	r3, #16
	bne	.L27
	ldr	r3, .L76+8
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L74
.L27:
	add	r0, r4, #92
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #80]
	ldr	r3, [r4, #76]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r4, #48
	ldr	r3, [r4, #64]
	ldr	r2, [r4, #68]
	ldm	r0, {r0, r1}
	ldr	r5, .L76+12
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L28
	add	r0, r4, #48
	ldm	r0, {r0, r1}
	ldr	r6, .L76+16
.L29:
	add	r3, r4, #120
	ldm	r3, {r3, ip}
	ldr	r2, [r4, #108]
	str	r3, [sp, #12]
	ldr	r3, [r4, #104]
	stmib	sp, {r2, ip}
	str	r3, [sp]
	ldr	r2, [r4, #68]
	ldr	r3, [r4, #64]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #120
	ldrbne	r3, [r6]	@ zero_extendqisi2
	subne	r3, r3, #1
	movne	r1, r2
	strne	r2, [r4, #48]
	strne	r2, [r4, #52]
	strbne	r3, [r6]
	mov	r2, #0
	mov	r3, #20
	mov	ip, #240
	mov	lr, #40
	addeq	r0, r4, #48
	ldmeq	r0, {r0, r1}
	stm	sp, {r2, r3, ip, lr}
	movne	r0, r1
	ldr	r3, [r4, #64]
	ldr	r2, [r4, #68]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L32
.L69:
	add	r0, r4, #48
	ldm	r0, {r0, r1}
.L33:
	add	r3, r4, #148
	ldm	r3, {r3, ip}
	ldr	r2, [r4, #136]
	str	r3, [sp, #12]
	ldr	r3, [r4, #132]
	stmib	sp, {r2, ip}
	str	r3, [sp]
	ldr	r3, [r4, #64]
	ldr	r2, [r4, #68]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	ldrne	r3, [r4, #156]
	ldr	r0, [r4, #48]
	ldr	r1, [r4, #180]
	ldr	r2, [r4, #164]
	ldr	ip, [r4, #176]
	addne	r0, r0, r3
	ldr	r3, [r4, #160]
	strne	r0, [r4, #48]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r4, #64]
	ldr	r2, [r4, #68]
	ldr	r1, [r4, #52]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	ldrne	r3, [r4, #48]
	ldrne	r0, [r4, #184]
	ldreq	r0, [r4, #48]
	addne	r0, r3, r0
	strne	r0, [r4, #48]
	cmp	r0, #0
	ldr	r2, [r4, #68]
	ble	.L40
	add	r3, r0, r2
	cmp	r3, #239
	ble	.L75
.L40:
	mov	ip, #120
	mov	r1, ip
	mov	r0, ip
	ldrb	r3, [r6]	@ zero_extendqisi2
	sub	r3, r3, #1
	str	ip, [r4, #48]
	str	ip, [r4, #52]
	strb	r3, [r6]
.L41:
	mov	ip, #0
	mov	lr, #240
	mov	r7, #20
	ldr	r3, [r4, #64]
	stmib	sp, {ip, lr}
	str	ip, [sp]
	str	r7, [sp, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #2
	ldrne	r3, .L76+20
	strbne	r2, [r3]
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, .L76+20
	ldr	r4, .L76+24
	ldr	r0, .L76+28
	strbeq	r2, [r3]
	mov	lr, pc
	bx	r4
	ldr	r0, .L76+32
	mov	lr, pc
	bx	r4
	ldr	r4, .L76+36
	ldr	r0, .L76+40
	mov	lr, pc
	bx	r4
	ldr	r0, .L76+44
	mov	lr, pc
	bx	r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L28:
	mov	r3, #120
	ldr	r6, .L76+16
	ldrb	r2, [r6]	@ zero_extendqisi2
	sub	r2, r2, #1
	mov	r1, r3
	mov	r0, r3
	strb	r2, [r6]
	str	r3, [r4, #48]
	str	r3, [r4, #52]
	b	.L29
.L75:
	ldr	r1, [r4, #52]
	b	.L41
.L74:
	ldr	r3, .L76+48
	ldrh	r3, [r3]
	cmp	r3, #1
	beq	.L27
	ldr	r0, .L76+52
	ldr	r3, .L76+56
	mov	lr, pc
	bx	r3
	b	.L27
.L73:
	ldr	r2, .L76+48
	ldrh	r2, [r2]
	cmp	r2, #1
	beq	.L26
	ldr	r3, .L76+60
	ldr	r0, .L76+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L26
.L70:
	ldr	r1, .L76+48
	ldrh	r2, [r1]
	rsbs	r2, r2, #1
	movcc	r2, #0
	strh	r2, [r1]	@ movhi
	b	.L23
.L32:
	add	r0, r4, #148
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #136]
	ldr	r3, [r4, #132]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r4, #48
	ldr	r3, [r4, #64]
	ldr	r2, [r4, #68]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L69
	add	r0, r4, #176
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #164]
	ldr	r3, [r4, #160]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r4, #48
	ldr	r3, [r4, #64]
	ldr	r2, [r4, #68]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L69
	mov	r2, #120
	ldrb	r3, [r6]	@ zero_extendqisi2
	sub	r3, r3, #1
	mov	r1, r2
	mov	r0, r2
	str	r2, [r4, #48]
	str	r2, [r4, #52]
	strb	r3, [r6]
	b	.L33
.L71:
	ldr	r3, .L76+64
	ldr	r0, .L76+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L24
.L72:
	ldr	r3, .L76+68
	ldr	r0, .L76+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L25
.L77:
	.align	2
.L76:
	.word	.LANCHOR1
	.word	buttons
	.word	oldButtons
	.word	collision
	.word	lives
	.word	state
	.word	updateCar
	.word	.LANCHOR1+76
	.word	.LANCHOR1+104
	.word	updateLog
	.word	.LANCHOR1+132
	.word	.LANCHOR1+160
	.word	hardMode
	.word	.LANCHOR1+48
	.word	moveRight
	.word	moveLeft
	.word	moveDown
	.word	moveUp
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L88
	sub	sp, sp, #12
	ldr	r0, .L88+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L88+8
	ldr	r0, .L88+12
	mov	lr, pc
	bx	r4
	ldr	r0, .L88+16
	mov	lr, pc
	bx	r4
	ldr	r4, .L88+20
	ldr	r0, .L88+24
	mov	lr, pc
	bx	r4
	ldr	r0, .L88+28
	mov	lr, pc
	bx	r4
	ldr	r4, .L88+32
	ldr	r0, .L88+12
	mov	lr, pc
	bx	r4
	ldr	r0, .L88+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L88+36
	ldr	r0, .L88+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L88+40
	ldr	r0, .L88+24
	ldr	r5, .L88+44
	mov	lr, pc
	bx	r4
	ldr	r0, .L88+28
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L85
.L79:
	cmp	r3, #1
	beq	.L86
.L80:
	cmp	r3, #0
	beq	.L87
.L81:
	ldr	r3, .L88+48
	ldrh	r3, [r3]
	cmp	r3, #0
	moveq	r2, #31
	movne	r3, #4
	moveq	r3, #4
	ldrne	r1, .L88+52
	streq	r2, [sp]
	strne	r1, [sp]
	movne	r2, r3
	moveq	r2, r3
	mov	r1, #2
	mov	r0, #160
	ldr	r4, .L88+56
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L87:
	ldr	r0, .L88+60
	ldr	r3, .L88+64
	mov	lr, pc
	bx	r3
	b	.L81
.L86:
	ldr	r3, .L88+64
	ldr	r0, .L88+68
	mov	lr, pc
	bx	r3
	ldrb	r3, [r5]	@ zero_extendqisi2
	b	.L80
.L85:
	ldr	r3, .L88+64
	ldr	r0, .L88+72
	mov	lr, pc
	bx	r3
	ldrb	r3, [r5]	@ zero_extendqisi2
	b	.L79
.L89:
	.align	2
.L88:
	.word	erasePlayer
	.word	.LANCHOR1+48
	.word	eraseLog
	.word	.LANCHOR1+132
	.word	.LANCHOR1+160
	.word	eraseCar
	.word	.LANCHOR1+76
	.word	.LANCHOR1+104
	.word	drawLog
	.word	drawPlayer
	.word	drawCar
	.word	lives
	.word	hardMode
	.word	1023
	.word	drawRectangle
	.word	.LANCHOR1
	.word	eraseLives
	.word	.LANCHOR1+16
	.word	.LANCHOR1+32
	.size	drawGame, .-drawGame
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateGame
	ldr	r3, .L92
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	drawGame
.L93:
	.align	2
.L92:
	.word	waitForVBlank
	.size	goToGame, .-goToGame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r10, .L102
	ldr	r4, .L102+4
	ldr	r3, .L102+8
	mov	lr, pc
	bx	r3
	ldr	r9, .L102+12
	ldrb	r0, [r4]	@ zero_extendqisi2
	ldrh	r3, [r10]
	ldr	r7, .L102+16
	ldr	r6, .L102+20
	ldr	r5, .L102+24
	ldr	r8, .L102+28
	ldr	fp, .L102+32
.L98:
	strh	r3, [r9]	@ movhi
	ldrh	r3, [fp, #48]
	cmp	r0, #1
	strh	r3, [r10]	@ movhi
	beq	.L96
	cmp	r0, #2
	beq	.L97
	cmp	r0, #0
	bne	.L98
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r5
	ldrb	r0, [r4]	@ zero_extendqisi2
	ldrh	r3, [r10]
	b	.L98
.L97:
	ldr	ip, [r8]
	cmp	ip, #0
	bne	.L98
	ldr	r3, .L102+36
	mov	lr, pc
	bx	r3
	ldrb	r0, [r4]	@ zero_extendqisi2
	ldrh	r3, [r10]
	b	.L98
.L96:
	ldr	ip, [r8, #4]
	cmp	ip, #0
	bne	.L98
	ldr	r3, .L102+40
	mov	lr, pc
	bx	r3
	ldrb	r0, [r4]	@ zero_extendqisi2
	ldrh	r3, [r10]
	b	.L98
.L103:
	.align	2
.L102:
	.word	buttons
	.word	state
	.word	initialize
	.word	oldButtons
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	.LANCHOR0
	.word	67109120
	.word	goToWin.part.0
	.word	goToLose.part.0
	.size	main, .-main
	.global	lives3
	.global	lives2
	.global	lives1
	.global	player1
	.global	log_2
	.global	log1
	.global	car2
	.global	car1
	.comm	hardMode,2,2
	.comm	frameCounter,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	lives,1,1
	.comm	state,1,1
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	lives1, %object
	.size	lives1, 16
lives1:
	.word	60
	.word	2
	.word	4
	.word	4
	.type	lives2, %object
	.size	lives2, 16
lives2:
	.word	65
	.word	2
	.word	4
	.word	4
	.type	lives3, %object
	.size	lives3, 16
lives3:
	.word	70
	.word	2
	.word	4
	.word	4
	.type	player1, %object
	.size	player1, 28
player1:
	.word	120
	.word	120
	.word	120
	.word	120
	.word	10
	.word	10
	.word	20
	.type	car1, %object
	.size	car1, 28
car1:
	.word	0
	.word	80
	.word	0
	.word	80
	.word	10
	.word	30
	.word	1
	.type	car2, %object
	.size	car2, 28
car2:
	.word	0
	.word	105
	.word	0
	.word	100
	.word	10
	.word	30
	.word	-1
	.type	log1, %object
	.size	log1, 28
log1:
	.word	0
	.word	20
	.word	0
	.word	20
	.word	20
	.word	20
	.word	1
	.type	log_2, %object
	.size	log_2, 28
log_2:
	.word	50
	.word	40
	.word	0
	.word	40
	.word	20
	.word	20
	.word	-1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	win.4169, %object
	.size	win.4169, 4
win.4169:
	.space	4
	.type	lose.4172, %object
	.size	lose.4172, 4
lose.4172:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
