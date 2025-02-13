    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_0801004C
func_0801004C: @ 0x0801004C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    adds r7, r0, #0
    adds r5, r1, #0
    mov r0, sp
    bl func_08008980
    movs r1, #0
    str r1, [sp, #4]
    movs r2, #0xd9
    lsls r2, r2, #2
    adds r0, r5, r2
    ldrb r0, [r0]
    cmp r0, #0
    beq _08010070
    add r4, sp, #8
    str r1, [sp, #8]
    b _08010076
_08010070:
    add r4, sp, #8
    movs r0, #1
    str r0, [sp, #8]
_08010076:
    movs r0, #8
    bl __builtin_new
    ldr r1, [r5, #4]
    adds r2, r4, #0
    bl func_08011DC4
    adds r5, r0, #0
    ldr r1, [sp, #4]
    adds r6, r4, #0
    cmp r5, r1
    beq _0801009E
    cmp r1, #0
    beq _0801009E
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801009E:
    str r5, [sp, #4]
    ldr r0, [sp, #4]
    movs r4, #0
    str r4, [sp, #4]
    str r0, [sp, #8]
    adds r0, r6, #0
    bl func_0800082C
    str r4, [sp, #8]
    add r0, sp, #0x14
    str r6, [sp, #0x14]
    str r4, [r0, #4]
    str r4, [r6]
    str r4, [r7]
    ldr r1, [sp, #8]
    cmp r1, #0
    beq _080100CC
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080100CC:
    ldr r1, [sp, #4]
    cmp r1, #0
    beq _080100DE
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080100DE:
    mov r0, sp
    movs r1, #2
    bl func_08008A68
    adds r0, r7, #0
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
_080100F0:
    .byte 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x0C, 0x04, 0x00, 0x03
    .byte 0x24, 0x05, 0x00, 0x00, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
    .byte 0x0C, 0x04, 0x00, 0x03, 0xDC, 0x04, 0x00, 0x00, 0x02, 0x48, 0x00, 0x68, 0xDE, 0x21, 0x89, 0x00
    .byte 0x40, 0x18, 0x70, 0x47, 0x0C, 0x04, 0x00, 0x03, 0x02, 0x48, 0x00, 0x68, 0xDB, 0x21, 0x89, 0x00
    .byte 0x40, 0x18, 0x70, 0x47, 0x0C, 0x04, 0x00, 0x03, 0x02, 0x48, 0x00, 0x68, 0xDA, 0x21, 0x89, 0x00
    .byte 0x40, 0x18, 0x70, 0x47, 0x0C, 0x04, 0x00, 0x03, 0x19, 0x20, 0x70, 0x47, 0x01, 0x48, 0x00, 0x68
    .byte 0x08, 0x30, 0x70, 0x47, 0x0C, 0x04, 0x00, 0x03

    thumb_func_start func_08010158
func_08010158: @ 0x08010158
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, _08010198 @ =vtable_unk_080E5BF8
    str r0, [r4]
    ldr r1, _0801019C @ =gUnk_0300040C
    movs r0, #0
    str r0, [r1]
    movs r1, #0xde
    lsls r1, r1, #2
    adds r0, r4, r1
    movs r1, #2
    bl func_080D7E64
    adds r0, r4, #0
    adds r0, #8
    movs r1, #2
    bl _._13AScriptEngine
    ldr r0, [r4, #4]
    cmp r0, #0
    beq _0801018A
    movs r1, #3
    bl func_080D4480
_0801018A:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080007EC
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08010198: .4byte vtable_unk_080E5BF8
_0801019C: .4byte gUnk_0300040C
_080101A0:
    .byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x06, 0x1C, 0x88, 0x46, 0x2A, 0x48, 0x30, 0x60, 0x09, 0x68
    .byte 0x00, 0x24, 0x40, 0x46, 0x04, 0x60, 0x71, 0x60, 0x30, 0x1C, 0x08, 0x30, 0x2F, 0xF0, 0x22, 0xFB
    .byte 0xD9, 0x21, 0x89, 0x00, 0x70, 0x18, 0x04, 0x70, 0xDB, 0x20, 0x80, 0x00, 0x31, 0x18, 0x0C, 0x70
    .byte 0x1D, 0x20, 0x48, 0x60, 0xDD, 0x21, 0x89, 0x00, 0x72, 0x18, 0x11, 0x78, 0x3D, 0x38, 0x08, 0x40
    .byte 0x06, 0x21, 0x08, 0x43, 0x10, 0x70, 0x11, 0x88, 0x1B, 0x48, 0x08, 0x40, 0x10, 0x80, 0xDE, 0x21
    .byte 0x89, 0x00, 0x70, 0x18, 0x04, 0x60, 0x14, 0x31, 0x70, 0x18, 0x04, 0x60, 0x9A, 0x21, 0xC9, 0x00
    .byte 0x70, 0x18, 0x04, 0x60, 0x15, 0x48, 0x34, 0x18, 0x05, 0x25, 0x01, 0x27, 0x7F, 0x42, 0x20, 0x1C
    .byte 0xC3, 0xF0, 0x8E, 0xFF, 0x0C, 0x34, 0x01, 0x3D, 0xBD, 0x42, 0xF8, 0xD1, 0x10, 0x49, 0x74, 0x18
    .byte 0x03, 0x25, 0x01, 0x27, 0x7F, 0x42, 0x20, 0x1C, 0xC3, 0xF0, 0x50, 0xFF, 0x0C, 0x34, 0x01, 0x3D
    .byte 0xBD, 0x42, 0xF8, 0xD1, 0x0B, 0x48, 0x06, 0x60, 0x41, 0x46, 0x08, 0x68, 0x00, 0x28, 0x02, 0xD0
    .byte 0x03, 0x21, 0xC4, 0xF0, 0x1D, 0xF9, 0x30, 0x1C, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00, 0xF8, 0x5B, 0x0E, 0x08, 0x1F, 0xF8, 0xFF, 0xFF, 0xDC, 0x04, 0x00, 0x00
    .byte 0x24, 0x05, 0x00, 0x00, 0x0C, 0x04, 0x00, 0x03, 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x81, 0xB0
    .byte 0x07, 0x1C, 0x0D, 0x1C, 0x16, 0x1C, 0x98, 0x46, 0x07, 0x9C, 0x2D, 0x48, 0x38, 0x60, 0x2D, 0x48
    .byte 0xF0, 0xF7, 0xA8, 0xF9, 0x00, 0x94, 0x29, 0x1C, 0x32, 0x1C, 0x43, 0x46, 0x00, 0xF0, 0x64, 0xF8
    .byte 0x01, 0x1C, 0x79, 0x60, 0x38, 0x1C, 0x08, 0x30, 0x2F, 0xF0, 0xB4, 0xFA, 0xD9, 0x20, 0x80, 0x00
    .byte 0x39, 0x18, 0x00, 0x23, 0x01, 0x20, 0x08, 0x70, 0xDA, 0x20, 0x80, 0x00, 0x39, 0x18, 0xAB, 0x20
    .byte 0x08, 0x60, 0xDB, 0x20, 0x80, 0x00, 0x39, 0x18, 0x0B, 0x70, 0x1D, 0x20, 0x48, 0x60, 0xDD, 0x21
    .byte 0x89, 0x00, 0x7A, 0x18, 0x11, 0x78, 0x3D, 0x38, 0x08, 0x40, 0x06, 0x21, 0x08, 0x43, 0x10, 0x70
    .byte 0x11, 0x88, 0x19, 0x48, 0x08, 0x40, 0x10, 0x80, 0xDE, 0x21, 0x89, 0x00, 0x78, 0x18, 0x03, 0x60
    .byte 0x14, 0x31, 0x78, 0x18, 0x03, 0x60, 0x9A, 0x21, 0xC9, 0x00, 0x78, 0x18, 0x03, 0x60, 0x13, 0x48
    .byte 0x3C, 0x18, 0x05, 0x25, 0x01, 0x26, 0x76, 0x42, 0x20, 0x1C, 0xC3, 0xF0, 0x19, 0xFF, 0x0C, 0x34
    .byte 0x01, 0x3D, 0xB5, 0x42, 0xF8, 0xD1, 0x0E, 0x49, 0x7C, 0x18, 0x03, 0x25, 0x01, 0x26, 0x76, 0x42
    .byte 0x20, 0x1C, 0xC3, 0xF0, 0xDB, 0xFE, 0x0C, 0x34, 0x01, 0x3D, 0xB5, 0x42, 0xF8, 0xD1, 0x09, 0x48
    .byte 0x07, 0x60, 0x38, 0x1C, 0x01, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47
    .byte 0xF8, 0x5B, 0x0E, 0x08, 0xF4, 0x34, 0x00, 0x00, 0x1F, 0xF8, 0xFF, 0xFF, 0xDC, 0x04, 0x00, 0x00
    .byte 0x24, 0x05, 0x00, 0x00, 0x0C, 0x04, 0x00, 0x03
