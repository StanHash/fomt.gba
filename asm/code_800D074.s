    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start sub_800D3D0
sub_800D3D0: @ 0x0800D3D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	cmp r4, r0
	blo _0800D3E2
	movs r0, #0
	b _0800D3F0
_0800D3E2:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA7C
_0800D3F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800D3F8
sub_800D3F8: @ 0x0800D3F8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	cmp r4, r0
	blo _0800D40A
	movs r0, #0
	b _0800D418
_0800D40A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA98
_0800D418:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800D420
sub_800D420: @ 0x0800D420
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	cmp r4, r0
	blo _0800D432
	movs r0, #0
	b _0800D440
_0800D432:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA64
_0800D440:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800D448
sub_800D448: @ 0x0800D448
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0
	b _0800D470
_0800D452:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	adds r1, r6, #0
	bl sub_800DAB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800D46C
	adds r0, r4, #0
	b _0800D47E
_0800D46C:
	adds r1, r4, #1
	adds r0, r5, #0
_0800D470:
	bl sub_800CF88
	adds r4, r0, #0
	cmp r4, #0
	bge _0800D452
	movs r0, #1
	rsbs r0, r0, #0
_0800D47E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_800D484
sub_800D484: @ 0x0800D484
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0
	b _0800D4AC
_0800D48E:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	adds r1, r6, #0
	bl sub_800DAE4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800D4A8
	adds r0, r4, #0
	b _0800D4BA
_0800D4A8:
	adds r1, r4, #1
	adds r0, r5, #0
_0800D4AC:
	bl sub_800CF88
	adds r4, r0, #0
	cmp r4, #0
	bge _0800D48E
	movs r0, #1
	rsbs r0, r0, #0
_0800D4BA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_800D4C0
sub_800D4C0: @ 0x0800D4C0
	push {lr}
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r2, #0x2c
	adds r0, r0, r2
	bl sub_800DB14
	pop {r0}
	bx r0

	thumb_func_start sub_800D4D4
sub_800D4D4: @ 0x0800D4D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov r8, r1
	bl sub_800D420
	adds r7, r0, #0
	mov sl, r7
	cmp r7, #0
	beq _0800D598
	bl GetAge__C6Animal
	adds r4, r0, #0
	adds r5, r4, #0
	adds r0, r6, #0
	mov r1, r8
	bl sub_800D3D0
	mov sb, r0
	cmp r0, #0
	beq _0800D550
	ldrh r2, [r6, #4]
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x16
	cmp r0, r4
	bhs _0800D590
	ldr r1, _0800D548 @ =0x000003FF
	adds r0, r1, #0
	ands r4, r0
	lsls r1, r4, #4
	ldr r0, _0800D54C @ =0xFFFFC00F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #4]
	adds r0, r7, #0
	bl GetName__C6Animal
	adds r5, r0, #0
	adds r7, r6, #0
	adds r7, #0xc
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls _0800D536
	movs r4, #0xc
_0800D536:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
	b _0800D590
	.align 2, 0
_0800D548: .4byte 0x000003FF
_0800D54C: .4byte 0xFFFFC00F
_0800D550:
	ldr r2, [r6, #4]
	lsls r0, r2, #8
	lsrs r0, r0, #0x16
	cmp r0, r5
	bhs _0800D590
	ldr r0, _0800D5A8 @ =0x000003FF
	ands r5, r0
	lsls r1, r5, #0xe
	ldr r0, _0800D5AC @ =0xFF003FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #4]
	mov r0, sl
	bl GetName__C6Animal
	adds r5, r0, #0
	adds r7, r6, #0
	adds r7, #0x1c
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls _0800D580
	movs r4, #0xc
_0800D580:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	mov r1, sb
	strb r1, [r0]
_0800D590:
	adds r0, r6, #0
	mov r1, r8
	bl sub_800D4C0
_0800D598:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D5A8: .4byte 0x000003FF
_0800D5AC: .4byte 0xFF003FFF

	thumb_func_start sub_800D5B0
sub_800D5B0: @ 0x0800D5B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r0
	ldr r4, [r0]
	lsls r0, r4, #3
	lsrs r1, r0, #0x10
	ldr r6, _0800D780 @ =0x55555555
	ands r1, r6
	lsrs r0, r0, #0x11
	ands r0, r6
	adds r0, r1, r0
	ldr r1, _0800D784 @ =0x33333333
	mov r8, r1
	adds r1, r0, #0
	mov r2, r8
	ands r1, r2
	lsrs r0, r0, #2
	ands r0, r2
	adds r0, r1, r0
	ldr r5, _0800D788 @ =0x0F0F0F0F
	adds r1, r0, #0
	ands r1, r5
	lsrs r0, r0, #4
	ands r0, r5
	adds r0, r1, r0
	ldr r3, _0800D78C @ =0x00FF00FF
	adds r1, r0, #0
	ands r1, r3
	lsrs r0, r0, #8
	ands r0, r3
	adds r0, r1, r0
	ldr r2, _0800D790 @ =0x0000FFFF
	adds r1, r0, #0
	ands r1, r2
	lsrs r0, r0, #0x10
	ands r0, r2
	adds r1, r1, r0
	mov sl, r1
	ldr r0, _0800D794 @ =0xE0001FFF
	ands r4, r0
	mov r0, sb
	str r4, [r0]
	ldrb r1, [r0, #3]
	lsls r1, r1, #0x19
	lsrs r0, r1, #0x1e
	ands r0, r6
	lsrs r1, r1, #0x1f
	ands r1, r6
	adds r0, r0, r1
	mov r1, r8
	ands r0, r1
	ands r0, r5
	ands r0, r3
	ands r0, r2
	add sl, r0
	mov r0, sb
	bl sub_800CE9C
	str r0, [sp, #0x18]
	movs r6, #0
	cmp r6, r0
	bhs _0800D714
	add r2, sp, #0x14
	mov r8, r2
	add r5, sp, #8
_0800D63A:
	mov r0, sb
	adds r0, #7
	adds r1, r0, r6
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0800D70C
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x2c
	add r0, sb
	bl sub_800DA64
	adds r4, r0, #0
	adds r7, r4, #0
	cmp r4, #0
	beq _0800D70C
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800D70C
	mov r0, sb
	ldrb r1, [r0, #3]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r6
	ands r1, r0
	cmp r1, #0
	beq _0800D688
	movs r1, #1
	rsbs r1, r1, #0
	add sl, r1
	adds r0, r4, #0
	bl SetFed__10BarnAnimal
_0800D688:
	add r0, sp, #0x10
	mov r1, sb
	adds r2, r6, #0
	bl sub_800D0C0
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, r8
	movs r0, #0
	ldrsh r3, [r2, r0]
	movs r1, #2
	ldrsh r4, [r2, r1]
	movs r2, #0x25
	ldrh r1, [r5]
	ldr r0, _0800D798 @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r2
	strh r0, [r5]
	lsls r3, r3, #0x10
	lsrs r1, r3, #0x10
	movs r2, #0x3f
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r5, #1]
	movs r0, #3
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	lsrs r3, r3, #0x16
	ldr r0, _0800D79C @ =0x000003FF
	ands r3, r0
	ldrh r1, [r5, #2]
	ldr r0, _0800D798 @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	movs r2, #0x3f
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r5, #3]
	movs r0, #3
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #3]
	lsrs r4, r4, #0x16
	ldr r0, _0800D79C @ =0x000003FF
	ands r4, r0
	ldrh r1, [r5, #4]
	ldr r0, _0800D798 @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r4
	strh r0, [r5, #4]
	mov r4, sp
	mov r0, sp
	adds r1, r5, #0
	movs r2, #6
	bl memcpy
	movs r1, #3
	strb r1, [r4, #6]
	adds r0, r7, #0
	mov r1, sp
	bl SetLocation__5ActorRC13ActorLocation
_0800D70C:
	adds r6, #1
	ldr r2, [sp, #0x18]
	cmp r6, r2
	blo _0800D63A
_0800D714:
	mov r0, sb
	ldrb r1, [r0, #3]
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1, #3]
	mov r0, sb
	bl sub_800CE74
	str r0, [sp, #0x1c]
	movs r2, #0
	mov r8, r2
	cmp r8, r0
	bhs _0800D7FC
	mov r7, sb
	adds r7, #0x2c
_0800D736:
	adds r0, r7, #0
	bl sub_800DA08
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D7F0
	adds r0, r7, #0
	bl sub_800DA7C
	adds r5, r0, #0
	adds r0, r7, #0
	bl sub_800DA98
	adds r6, r0, #0
	cmp r5, #0
	bne _0800D75A
	cmp r6, #0
	beq _0800D7F0
_0800D75A:
	adds r4, r5, #0
	cmp r5, #0
	bne _0800D762
	adds r4, r6, #0
_0800D762:
	mov r1, sb
	ldrb r0, [r1, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800D7A0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r8, r0
	bne _0800D7A0
	adds r0, r4, #0
	bl SetFed__10BarnAnimal
	b _0800D7DE
	.align 2, 0
_0800D780: .4byte 0x55555555
_0800D784: .4byte 0x33333333
_0800D788: .4byte 0x0F0F0F0F
_0800D78C: .4byte 0x00FF00FF
_0800D790: .4byte 0x0000FFFF
_0800D794: .4byte 0xE0001FFF
_0800D798: .4byte 0xFFFFFC00
_0800D79C: .4byte 0x000003FF
_0800D7A0:
	adds r0, r4, #0
	bl HasBeenFed__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D7DE
	adds r0, r4, #0
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D7DE
	mov r2, sl
	cmp r2, #0
	beq _0800D7DE
	mov r0, sp
	adds r1, r4, #0
	bl __5ActorRC5Actor
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	cmp r0, #0x25
	bne _0800D7DE
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	adds r0, r4, #0
	bl SetFed__10BarnAnimal
_0800D7DE:
	cmp r5, #0
	beq _0800D7EA
	adds r0, r5, #0
	bl DayUpdate__3Cow
	b _0800D7F0
_0800D7EA:
	adds r0, r6, #0
	bl DayUpdate__5Sheep
_0800D7F0:
	adds r7, #0x3c
	movs r1, #1
	add r8, r1
	ldr r2, [sp, #0x1c]
	cmp r8, r2
	blo _0800D736
_0800D7FC:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800D80C
sub_800D80C: @ 0x0800D80C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	adds r1, r0, #0
	cmp r4, r1
	blo _0800D824
	adds r0, r4, #0
	bl __umodsi3
	adds r4, r0, #0
_0800D824:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA08
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D850
	ldrb r0, [r5, #3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #3]
	movs r0, #0xf
	ands r4, r0
	ldrb r1, [r5, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #4]
_0800D850:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800D858
sub_800D858: @ 0x0800D858
	ldrb r2, [r0, #3]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #3]
	bx lr
	.align 2, 0

	thumb_func_start sub_800D864
sub_800D864: @ 0x0800D864
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	bl sub_800CE9C
	cmp r6, r0
	bhs _0800D8A0
	adds r0, r4, #0
	bl sub_800CE74
	cmp r5, r0
	bhs _0800D8A0
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r4, r0
	bl sub_800DA64
	cmp r0, #0
	beq _0800D8A0
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800D8A0
	adds r0, r4, #7
	adds r0, r0, r6
	strb r5, [r0]
_0800D8A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800D8A8
sub_800D8A8: @ 0x0800D8A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov sl, r0
	adds r4, r1, #0
	bl sub_800D158
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D8C4
	b _0800D9E8
_0800D8C4:
	mov r0, sl
	adds r0, #7
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r1
	movs r1, #0xff
	strb r1, [r0]
	add r0, sp, #0x48
	mov r1, sl
	adds r2, r4, #0
	bl sub_800D1D8
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, sp, #0x4c
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r1, #2
	ldrsh r6, [r0, r1]
	add r7, sp, #8
	movs r2, #0x25
	ldrh r1, [r7]
	ldr r3, _0800D9A0 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r7]
	lsls r5, r5, #0x10
	lsrs r1, r5, #0x10
	movs r0, #0x3f
	mov r8, r0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r4, [r7, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r7, #1]
	lsrs r5, r5, #0x16
	ldrh r1, [r7, #2]
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r7, #2]
	lsls r6, r6, #0x10
	lsrs r0, r6, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r7, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #3]
	lsrs r6, r6, #0x16
	ldrh r0, [r7, #4]
	ands r3, r0
	orrs r3, r6
	strh r3, [r7, #4]
	mov r5, sp
	movs r4, #2
	mov r0, sp
	adds r1, r7, #0
	movs r2, #6
	bl memcpy
	strb r4, [r5, #6]
	mov r1, sb
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x2c
	mov r1, sl
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_800DA7C
	adds r4, r0, #0
	cmp r4, #0
	beq _0800D9A4
	bl ResetPregnancy__10BarnAnimal
	add r5, sp, #0x10
	adds r0, r5, #0
	mov r1, sp
	movs r2, #0
	movs r3, #0
	bl __3CowRC13ActorLocationUiUi
	adds r0, r4, #0
	bl GetAffection__C6Animal
	lsrs r4, r0, #1
	cmp r4, #1
	bls _0800D996
	bl rand
	adds r1, r4, #0
	bl __umodsi3
	adds r1, r0, #0
	adds r0, r5, #0
	bl AddAffection__6Animali
_0800D996:
	mov r0, sl
	adds r1, r5, #0
	bl sub_800D448
	b _0800D9EC
	.align 2, 0
_0800D9A0: .4byte 0xFFFFFC00
_0800D9A4:
	adds r0, r5, #0
	bl sub_800DA98
	adds r4, r0, #0
	cmp r4, #0
	beq _0800D9E8
	bl ResetPregnancy__10BarnAnimal
	adds r0, r7, #0
	mov r1, sp
	movs r2, #0
	movs r3, #0
	bl __5SheepRC13ActorLocationUiUi
	adds r0, r4, #0
	bl GetAffection__C6Animal
	lsrs r4, r0, #1
	cmp r4, #1
	bls _0800D9DE
	bl rand
	adds r1, r4, #0
	bl __umodsi3
	adds r1, r0, #0
	adds r0, r7, #0
	bl AddAffection__6Animali
_0800D9DE:
	mov r0, sl
	adds r1, r7, #0
	bl sub_800D484
	b _0800D9EC
_0800D9E8:
	movs r0, #1
	rsbs r0, r0, #0
_0800D9EC:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
