
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-matmul-restricted:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00002d04 80000000 TEXT
  2 .init             00000468 80002d10 TEXT
  3 .rodata           00000238 80003178 DATA
  4 .htif             00000048 800033c0 DATA
  5 .tdata            00000000 80003408 DATA
  6 .tbss             00000010 80003408 BSS
  7 .tbssend          00000000 80003418 DATA
  8 .sdata            000000c0 80003418 DATA
  9 .data             00000000 800034d8 DATA
 10 .sbss             00000004 800034d8 BSS
 11 .bss              00000000 800034dc BSS
 12 .dram             00000000 800034dc DATA
 13 .debug_info       00003469 00000000 
 14 .debug_abbrev     00000c89 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002d3d 00000000 
 17 .debug_loc        00002d80 00000000 
 18 .debug_ranges     00000438 00000000 
 19 .debug_str        00000b47 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002d8 00000000 
 23 .symtab           00003160 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000091f 00000000 


Disassembly of section .text:

80000000 <memset>:
;   li t1, 15
80000000: 13 03 f0 00  	addi	t1, zero, 15
;   move a4, a0
80000004: 13 07 05 00  	mv	a4, a0
;   bleu a2, t1, .Ltiny
80000008: 63 7e c3 02  	bgeu	t1, a2, 0x80000044 <.Ltiny>
;   and a5, a4, 15
8000000c: 93 77 f7 00  	andi	a5, a4, 15
;   bnez a5, .Lmisaligned
80000010: 63 90 07 0a  	bnez	a5, 0x800000b0 <.Lmisaligned>

80000014 <.Laligned>:
;   bnez a1, .Lwordify
80000014: 63 92 05 08  	bnez	a1, 0x80000098 <.Lwordify>

80000018 <.Lwordified>:
;   and a3, a2, ~15
80000018: 93 76 06 ff  	andi	a3, a2, -16
;   and a2, a2, 15
8000001c: 13 76 f6 00  	andi	a2, a2, 15
;   add a3, a3, a4
80000020: b3 86 e6 00  	add	a3, a3, a4

80000024 <.Ltmp0>:
; 1:sw a1, 0(a4)
80000024: 23 20 b7 00  	sw	a1, 0(a4)
;   sw a1, 4(a4)
80000028: 23 22 b7 00  	sw	a1, 4(a4)
;   sw a1, 8(a4)
8000002c: 23 24 b7 00  	sw	a1, 8(a4)
;   sw a1, 12(a4)
80000030: 23 26 b7 00  	sw	a1, 12(a4)
;   add a4, a4, 16
80000034: 13 07 07 01  	addi	a4, a4, 16
;   bltu a4, a3, 1b
80000038: e3 66 d7 fe  	bltu	a4, a3, 0x80000024 <.Ltmp0>
;   bnez a2, .Ltiny
8000003c: 63 14 06 00  	bnez	a2, 0x80000044 <.Ltiny>
;   ret
80000040: 67 80 00 00  	ret

80000044 <.Ltiny>:
;   sub a3, t1, a2
80000044: b3 06 c3 40  	sub	a3, t1, a2
;   sll a3, a3, 2
80000048: 93 96 26 00  	slli	a3, a3, 2

8000004c <.Ltmp1>:
; 1:auipc t0, %pcrel_hi(.Ltable)
8000004c: 97 02 00 00  	auipc	t0, 0
;   add a3, a3, t0
80000050: b3 86 56 00  	add	a3, a3, t0

80000054 <.Ltable_misaligned>:
;   jr a3, %pcrel_lo(1b)
80000054: 67 80 c6 00  	jr	12(a3)

80000058 <.Ltable>:
;   sb a1,14(a4)
80000058: 23 07 b7 00  	sb	a1, 14(a4)
;   sb a1,13(a4)
8000005c: a3 06 b7 00  	sb	a1, 13(a4)
;   sb a1,12(a4)
80000060: 23 06 b7 00  	sb	a1, 12(a4)
;   sb a1,11(a4)
80000064: a3 05 b7 00  	sb	a1, 11(a4)
;   sb a1,10(a4)
80000068: 23 05 b7 00  	sb	a1, 10(a4)
;   sb a1, 9(a4)
8000006c: a3 04 b7 00  	sb	a1, 9(a4)
;   sb a1, 8(a4)
80000070: 23 04 b7 00  	sb	a1, 8(a4)
;   sb a1, 7(a4)
80000074: a3 03 b7 00  	sb	a1, 7(a4)
;   sb a1, 6(a4)
80000078: 23 03 b7 00  	sb	a1, 6(a4)
;   sb a1, 5(a4)
8000007c: a3 02 b7 00  	sb	a1, 5(a4)
;   sb a1, 4(a4)
80000080: 23 02 b7 00  	sb	a1, 4(a4)
;   sb a1, 3(a4)
80000084: a3 01 b7 00  	sb	a1, 3(a4)
;   sb a1, 2(a4)
80000088: 23 01 b7 00  	sb	a1, 2(a4)
;   sb a1, 1(a4)
8000008c: a3 00 b7 00  	sb	a1, 1(a4)
;   sb a1, 0(a4)
80000090: 23 00 b7 00  	sb	a1, 0(a4)
;   ret
80000094: 67 80 00 00  	ret

80000098 <.Lwordify>:
;   and a1, a1, 0xFF
80000098: 93 f5 f5 0f  	andi	a1, a1, 255
;   sll a3, a1, 8
8000009c: 93 96 85 00  	slli	a3, a1, 8
;   or  a1, a1, a3
800000a0: b3 e5 d5 00  	or	a1, a1, a3
;   sll a3, a1, 16
800000a4: 93 96 05 01  	slli	a3, a1, 16
;   or  a1, a1, a3
800000a8: b3 e5 d5 00  	or	a1, a1, a3
;   j .Lwordified
800000ac: 6f f0 df f6  	j	0x80000018 <.Lwordified>

800000b0 <.Lmisaligned>:
;   sll a3, a5, 2
800000b0: 93 96 27 00  	slli	a3, a5, 2

800000b4 <.Ltmp2>:
; 1:auipc t0, %pcrel_hi(.Ltable_misaligned)
800000b4: 97 02 00 00  	auipc	t0, 0
;   add a3, a3, t0
800000b8: b3 86 56 00  	add	a3, a3, t0
;   mv t0, ra
800000bc: 93 82 00 00  	mv	t0, ra
;   jalr a3, %pcrel_lo(1b)
800000c0: e7 80 06 fa  	jalr	-96(a3)
;   mv ra, t0
800000c4: 93 80 02 00  	mv	ra, t0
;   add a5, a5, -16
800000c8: 93 87 07 ff  	addi	a5, a5, -16
;   sub a4, a4, a5
800000cc: 33 07 f7 40  	sub	a4, a4, a5
;   add a2, a2, a5
800000d0: 33 06 f6 00  	add	a2, a2, a5
;   bleu a2, t1, .Ltiny
800000d4: e3 78 c3 f6  	bgeu	t1, a2, 0x80000044 <.Ltiny>
;   j .Laligned
800000d8: 6f f0 df f3  	j	0x80000014 <.Laligned>

800000dc <__udivdi3>:
800000dc: 13 01 01 fe  	addi	sp, sp, -32
800000e0: 23 2e 11 00  	sw	ra, 28(sp)
800000e4: 23 2a b1 00  	sw	a1, 20(sp)
800000e8: 23 28 a1 00  	sw	a0, 16(sp)
800000ec: 23 26 d1 00  	sw	a3, 12(sp)
800000f0: 23 24 c1 00  	sw	a2, 8(sp)
800000f4: 83 25 41 01  	lw	a1, 20(sp)
800000f8: 03 25 01 01  	lw	a0, 16(sp)
800000fc: 83 26 c1 00  	lw	a3, 12(sp)
80000100: 03 26 81 00  	lw	a2, 8(sp)
80000104: 97 00 00 00  	auipc	ra, 0
80000108: e7 80 40 01  	jalr	20(ra)
8000010c: 83 20 c1 01  	lw	ra, 28(sp)
80000110: 13 01 01 02  	addi	sp, sp, 32
80000114: 67 80 00 00  	ret

80000118 <__udivXi3>:
80000118: 13 01 01 f8  	addi	sp, sp, -128
8000011c: 23 2a b1 06  	sw	a1, 116(sp)
80000120: 23 28 a1 06  	sw	a0, 112(sp)
80000124: 23 26 d1 06  	sw	a3, 108(sp)
80000128: 23 24 c1 06  	sw	a2, 104(sp)
8000012c: 13 05 00 04  	addi	a0, zero, 64
80000130: 23 22 a1 06  	sw	a0, 100(sp)
80000134: 83 25 c1 06  	lw	a1, 108(sp)
80000138: 03 25 81 06  	lw	a0, 104(sp)
8000013c: 33 65 b5 00  	or	a0, a0, a1
80000140: 93 05 00 00  	mv	a1, zero
80000144: 63 08 b5 10  	beq	a0, a1, 0x80000254 <.LBB1_4>
80000148: 6f 00 40 00  	j	0x8000014c <.LBB1_1>

8000014c <.LBB1_1>:
8000014c: 83 25 81 06  	lw	a1, 104(sp)
80000150: 03 25 c1 06  	lw	a0, 108(sp)
80000154: 13 56 15 00  	srli	a2, a0, 1
80000158: 33 66 c5 00  	or	a2, a0, a2
8000015c: 93 56 26 00  	srli	a3, a2, 2
80000160: 33 66 d6 00  	or	a2, a2, a3
80000164: 93 56 46 00  	srli	a3, a2, 4
80000168: 33 66 d6 00  	or	a2, a2, a3
8000016c: 93 56 86 00  	srli	a3, a2, 8
80000170: 33 66 d6 00  	or	a2, a2, a3
80000174: 93 56 06 01  	srli	a3, a2, 16
80000178: 33 66 d6 00  	or	a2, a2, a3
8000017c: 13 46 f6 ff  	not	a2, a2
80000180: 93 56 16 00  	srli	a3, a2, 1
80000184: 37 57 55 55  	lui	a4, 349525
80000188: 93 08 57 55  	addi	a7, a4, 1365
8000018c: b3 f6 16 01  	and	a3, a3, a7
80000190: b3 06 d6 40  	sub	a3, a2, a3
80000194: 37 36 33 33  	lui	a2, 209715
80000198: 13 08 36 33  	addi	a6, a2, 819
8000019c: 33 f6 06 01  	and	a2, a3, a6
800001a0: 93 d6 26 00  	srli	a3, a3, 2
800001a4: b3 f6 06 01  	and	a3, a3, a6
800001a8: 33 06 d6 00  	add	a2, a2, a3
800001ac: 93 56 46 00  	srli	a3, a2, 4
800001b0: 33 06 d6 00  	add	a2, a2, a3
800001b4: b7 16 0f 0f  	lui	a3, 61681
800001b8: 13 87 f6 f0  	addi	a4, a3, -241
800001bc: 33 76 e6 00  	and	a2, a2, a4
800001c0: b7 06 01 01  	lui	a3, 4112
800001c4: 93 86 16 10  	addi	a3, a3, 257
800001c8: 33 06 d6 02  	mul	a2, a2, a3
800001cc: 13 56 86 01  	srli	a2, a2, 24
800001d0: 93 d7 15 00  	srli	a5, a1, 1
800001d4: b3 e5 f5 00  	or	a1, a1, a5
800001d8: 93 d7 25 00  	srli	a5, a1, 2
800001dc: b3 e5 f5 00  	or	a1, a1, a5
800001e0: 93 d7 45 00  	srli	a5, a1, 4
800001e4: b3 e5 f5 00  	or	a1, a1, a5
800001e8: 93 d7 85 00  	srli	a5, a1, 8
800001ec: b3 e5 f5 00  	or	a1, a1, a5
800001f0: 93 d7 05 01  	srli	a5, a1, 16
800001f4: b3 e5 f5 00  	or	a1, a1, a5
800001f8: 93 c5 f5 ff  	not	a1, a1
800001fc: 93 d7 15 00  	srli	a5, a1, 1
80000200: b3 f7 17 01  	and	a5, a5, a7
80000204: b3 87 f5 40  	sub	a5, a1, a5
80000208: b3 f5 07 01  	and	a1, a5, a6
8000020c: 93 d7 27 00  	srli	a5, a5, 2
80000210: b3 f7 07 01  	and	a5, a5, a6
80000214: b3 85 f5 00  	add	a1, a1, a5
80000218: 93 d7 45 00  	srli	a5, a1, 4
8000021c: b3 85 f5 00  	add	a1, a1, a5
80000220: b3 f5 e5 00  	and	a1, a1, a4
80000224: b3 85 d5 02  	mul	a1, a1, a3
80000228: 93 d5 85 01  	srli	a1, a1, 24
8000022c: 93 85 05 02  	addi	a1, a1, 32
80000230: 23 20 b1 04  	sw	a1, 64(sp)
80000234: 93 05 00 00  	mv	a1, zero
80000238: 23 22 c1 04  	sw	a2, 68(sp)
8000023c: 63 16 b5 00  	bne	a0, a1, 0x80000248 <.LBB1_3>
80000240: 03 25 01 04  	lw	a0, 64(sp)
80000244: 23 22 a1 04  	sw	a0, 68(sp)

80000248 <.LBB1_3>:
80000248: 03 25 41 04  	lw	a0, 68(sp)
8000024c: 23 2e a1 02  	sw	a0, 60(sp)
80000250: 6f 00 00 01  	j	0x80000260 <.LBB1_5>

80000254 <.LBB1_4>:
80000254: 13 05 00 04  	addi	a0, zero, 64
80000258: 23 2e a1 02  	sw	a0, 60(sp)
8000025c: 6f 00 40 00  	j	0x80000260 <.LBB1_5>

80000260 <.LBB1_5>:
80000260: 03 25 c1 03  	lw	a0, 60(sp)
80000264: 23 2c a1 02  	sw	a0, 56(sp)
80000268: 83 25 41 07  	lw	a1, 116(sp)
8000026c: 03 25 01 07  	lw	a0, 112(sp)
80000270: 33 65 b5 00  	or	a0, a0, a1
80000274: 93 05 00 00  	mv	a1, zero
80000278: 63 08 b5 10  	beq	a0, a1, 0x80000388 <.LBB1_9>
8000027c: 6f 00 40 00  	j	0x80000280 <.LBB1_6>

80000280 <.LBB1_6>:
80000280: 83 25 01 07  	lw	a1, 112(sp)
80000284: 03 25 41 07  	lw	a0, 116(sp)
80000288: 13 56 15 00  	srli	a2, a0, 1
8000028c: 33 66 c5 00  	or	a2, a0, a2
80000290: 93 56 26 00  	srli	a3, a2, 2
80000294: 33 66 d6 00  	or	a2, a2, a3
80000298: 93 56 46 00  	srli	a3, a2, 4
8000029c: 33 66 d6 00  	or	a2, a2, a3
800002a0: 93 56 86 00  	srli	a3, a2, 8
800002a4: 33 66 d6 00  	or	a2, a2, a3
800002a8: 93 56 06 01  	srli	a3, a2, 16
800002ac: 33 66 d6 00  	or	a2, a2, a3
800002b0: 13 46 f6 ff  	not	a2, a2
800002b4: 93 56 16 00  	srli	a3, a2, 1
800002b8: 37 57 55 55  	lui	a4, 349525
800002bc: 93 08 57 55  	addi	a7, a4, 1365
800002c0: b3 f6 16 01  	and	a3, a3, a7
800002c4: b3 06 d6 40  	sub	a3, a2, a3
800002c8: 37 36 33 33  	lui	a2, 209715
800002cc: 13 08 36 33  	addi	a6, a2, 819
800002d0: 33 f6 06 01  	and	a2, a3, a6
800002d4: 93 d6 26 00  	srli	a3, a3, 2
800002d8: b3 f6 06 01  	and	a3, a3, a6
800002dc: 33 06 d6 00  	add	a2, a2, a3
800002e0: 93 56 46 00  	srli	a3, a2, 4
800002e4: 33 06 d6 00  	add	a2, a2, a3
800002e8: b7 16 0f 0f  	lui	a3, 61681
800002ec: 13 87 f6 f0  	addi	a4, a3, -241
800002f0: 33 76 e6 00  	and	a2, a2, a4
800002f4: b7 06 01 01  	lui	a3, 4112
800002f8: 93 86 16 10  	addi	a3, a3, 257
800002fc: 33 06 d6 02  	mul	a2, a2, a3
80000300: 13 56 86 01  	srli	a2, a2, 24
80000304: 93 d7 15 00  	srli	a5, a1, 1
80000308: b3 e5 f5 00  	or	a1, a1, a5
8000030c: 93 d7 25 00  	srli	a5, a1, 2
80000310: b3 e5 f5 00  	or	a1, a1, a5
80000314: 93 d7 45 00  	srli	a5, a1, 4
80000318: b3 e5 f5 00  	or	a1, a1, a5
8000031c: 93 d7 85 00  	srli	a5, a1, 8
80000320: b3 e5 f5 00  	or	a1, a1, a5
80000324: 93 d7 05 01  	srli	a5, a1, 16
80000328: b3 e5 f5 00  	or	a1, a1, a5
8000032c: 93 c5 f5 ff  	not	a1, a1
80000330: 93 d7 15 00  	srli	a5, a1, 1
80000334: b3 f7 17 01  	and	a5, a5, a7
80000338: b3 87 f5 40  	sub	a5, a1, a5
8000033c: b3 f5 07 01  	and	a1, a5, a6
80000340: 93 d7 27 00  	srli	a5, a5, 2
80000344: b3 f7 07 01  	and	a5, a5, a6
80000348: b3 85 f5 00  	add	a1, a1, a5
8000034c: 93 d7 45 00  	srli	a5, a1, 4
80000350: b3 85 f5 00  	add	a1, a1, a5
80000354: b3 f5 e5 00  	and	a1, a1, a4
80000358: b3 85 d5 02  	mul	a1, a1, a3
8000035c: 93 d5 85 01  	srli	a1, a1, 24
80000360: 93 85 05 02  	addi	a1, a1, 32
80000364: 23 28 b1 02  	sw	a1, 48(sp)
80000368: 93 05 00 00  	mv	a1, zero
8000036c: 23 2a c1 02  	sw	a2, 52(sp)
80000370: 63 16 b5 00  	bne	a0, a1, 0x8000037c <.LBB1_8>
80000374: 03 25 01 03  	lw	a0, 48(sp)
80000378: 23 2a a1 02  	sw	a0, 52(sp)

8000037c <.LBB1_8>:
8000037c: 03 25 41 03  	lw	a0, 52(sp)
80000380: 23 26 a1 02  	sw	a0, 44(sp)
80000384: 6f 00 00 01  	j	0x80000394 <.LBB1_10>

80000388 <.LBB1_9>:
80000388: 13 05 00 04  	addi	a0, zero, 64
8000038c: 23 26 a1 02  	sw	a0, 44(sp)
80000390: 6f 00 40 00  	j	0x80000394 <.LBB1_10>

80000394 <.LBB1_10>:
80000394: 03 25 81 03  	lw	a0, 56(sp)
80000398: 83 25 c1 02  	lw	a1, 44(sp)
8000039c: 33 05 b5 40  	sub	a0, a0, a1
800003a0: 23 20 a1 06  	sw	a0, 96(sp)
800003a4: 03 25 01 06  	lw	a0, 96(sp)
800003a8: 93 05 00 04  	addi	a1, zero, 64
800003ac: 63 6c b5 00  	bltu	a0, a1, 0x800003c4 <.LBB1_12>
800003b0: 6f 00 40 00  	j	0x800003b4 <.LBB1_11>

800003b4 <.LBB1_11>:
800003b4: 13 05 00 00  	mv	a0, zero
800003b8: 23 2e a1 06  	sw	a0, 124(sp)
800003bc: 23 2c a1 06  	sw	a0, 120(sp)
800003c0: 6f 00 40 26  	j	0x80000624 <.LBB1_23>

800003c4 <.LBB1_12>:
800003c4: 03 25 01 06  	lw	a0, 96(sp)
800003c8: 93 05 f0 03  	addi	a1, zero, 63
800003cc: 63 1e b5 00  	bne	a0, a1, 0x800003e8 <.LBB1_14>
800003d0: 6f 00 40 00  	j	0x800003d4 <.LBB1_13>

800003d4 <.LBB1_13>:
800003d4: 03 25 01 07  	lw	a0, 112(sp)
800003d8: 83 25 41 07  	lw	a1, 116(sp)
800003dc: 23 2e b1 06  	sw	a1, 124(sp)
800003e0: 23 2c a1 06  	sw	a0, 120(sp)
800003e4: 6f 00 00 24  	j	0x80000624 <.LBB1_23>

800003e8 <.LBB1_14>:
800003e8: 03 25 01 06  	lw	a0, 96(sp)
800003ec: 13 05 15 00  	addi	a0, a0, 1
800003f0: 23 20 a1 06  	sw	a0, 96(sp)
800003f4: 03 26 41 07  	lw	a2, 116(sp)
800003f8: 03 25 01 07  	lw	a0, 112(sp)
800003fc: 03 27 01 06  	lw	a4, 96(sp)
80000400: 33 55 e5 00  	srl	a0, a0, a4
80000404: 93 05 f0 01  	addi	a1, zero, 31
80000408: 23 2c b1 00  	sw	a1, 24(sp)
8000040c: b3 86 e5 40  	sub	a3, a1, a4
80000410: 93 15 16 00  	slli	a1, a2, 1
80000414: b3 95 d5 00  	sll	a1, a1, a3
80000418: b3 66 b5 00  	or	a3, a0, a1
8000041c: 13 05 07 fe  	addi	a0, a4, -32
80000420: b3 55 a6 00  	srl	a1, a2, a0
80000424: 23 2e b1 00  	sw	a1, 28(sp)
80000428: 93 05 00 00  	mv	a1, zero
8000042c: 23 20 b1 02  	sw	a1, 32(sp)
80000430: 33 56 e6 00  	srl	a2, a2, a4
80000434: 23 22 d1 02  	sw	a3, 36(sp)
80000438: 23 24 c1 02  	sw	a2, 40(sp)
8000043c: 63 4a b5 00  	blt	a0, a1, 0x80000450 <.LBB1_16>
80000440: 03 25 01 02  	lw	a0, 32(sp)
80000444: 83 25 c1 01  	lw	a1, 28(sp)
80000448: 23 22 b1 02  	sw	a1, 36(sp)
8000044c: 23 24 a1 02  	sw	a0, 40(sp)

80000450 <.LBB1_16>:
80000450: 83 25 01 02  	lw	a1, 32(sp)
80000454: 83 26 81 01  	lw	a3, 24(sp)
80000458: 03 25 41 02  	lw	a0, 36(sp)
8000045c: 03 26 81 02  	lw	a2, 40(sp)
80000460: 23 2e c1 04  	sw	a2, 92(sp)
80000464: 23 2c a1 04  	sw	a0, 88(sp)
80000468: 83 27 01 06  	lw	a5, 96(sp)
8000046c: 13 05 00 04  	addi	a0, zero, 64
80000470: 33 07 f5 40  	sub	a4, a0, a5
80000474: 03 26 01 07  	lw	a2, 112(sp)
80000478: 03 25 41 07  	lw	a0, 116(sp)
8000047c: 33 15 e5 00  	sll	a0, a0, a4
80000480: 33 88 e6 40  	sub	a6, a3, a4
80000484: 93 56 16 00  	srli	a3, a2, 1
80000488: b3 d6 06 01  	srl	a3, a3, a6
8000048c: b3 66 d5 00  	or	a3, a0, a3
80000490: 13 05 00 02  	addi	a0, zero, 32
80000494: 33 05 f5 40  	sub	a0, a0, a5
80000498: b3 17 a6 00  	sll	a5, a2, a0
8000049c: 23 26 f1 00  	sw	a5, 12(sp)
800004a0: 33 16 e6 00  	sll	a2, a2, a4
800004a4: 23 28 d1 00  	sw	a3, 16(sp)
800004a8: 23 2a c1 00  	sw	a2, 20(sp)
800004ac: 63 4a b5 00  	blt	a0, a1, 0x800004c0 <.LBB1_18>
800004b0: 03 25 01 02  	lw	a0, 32(sp)
800004b4: 83 25 c1 00  	lw	a1, 12(sp)
800004b8: 23 28 b1 00  	sw	a1, 16(sp)
800004bc: 23 2a a1 00  	sw	a0, 20(sp)

800004c0 <.LBB1_18>:
800004c0: 03 25 01 02  	lw	a0, 32(sp)
800004c4: 83 25 01 01  	lw	a1, 16(sp)
800004c8: 03 26 41 01  	lw	a2, 20(sp)
800004cc: 23 28 c1 06  	sw	a2, 112(sp)
800004d0: 23 2a b1 06  	sw	a1, 116(sp)
800004d4: 23 2a a1 04  	sw	a0, 84(sp)
800004d8: 23 28 a1 04  	sw	a0, 80(sp)
800004dc: 6f 00 40 00  	j	0x800004e0 <.LBB1_19>

800004e0 <.LBB1_19>:
800004e0: 03 25 01 06  	lw	a0, 96(sp)
800004e4: 93 05 00 00  	mv	a1, zero
800004e8: 63 0c b5 0e  	beq	a0, a1, 0x800005e0 <.LBB1_22>
800004ec: 6f 00 40 00  	j	0x800004f0 <.LBB1_20>

800004f0 <.LBB1_20>:
800004f0: 83 25 c1 05  	lw	a1, 92(sp)
800004f4: 03 25 81 05  	lw	a0, 88(sp)
800004f8: 13 56 f5 01  	srli	a2, a0, 31
800004fc: 93 95 15 00  	slli	a1, a1, 1
80000500: b3 e5 c5 00  	or	a1, a1, a2
80000504: 13 15 15 00  	slli	a0, a0, 1
80000508: 03 26 41 07  	lw	a2, 116(sp)
8000050c: 13 56 f6 01  	srli	a2, a2, 31
80000510: 33 65 c5 00  	or	a0, a0, a2
80000514: 23 2e b1 04  	sw	a1, 92(sp)
80000518: 23 2c a1 04  	sw	a0, 88(sp)
8000051c: 03 25 41 07  	lw	a0, 116(sp)
80000520: 83 25 01 07  	lw	a1, 112(sp)
80000524: 13 d6 f5 01  	srli	a2, a1, 31
80000528: 13 15 15 00  	slli	a0, a0, 1
8000052c: 33 65 c5 00  	or	a0, a0, a2
80000530: 93 95 15 00  	slli	a1, a1, 1
80000534: 03 26 01 05  	lw	a2, 80(sp)
80000538: 83 26 41 05  	lw	a3, 84(sp)
8000053c: 33 65 d5 00  	or	a0, a0, a3
80000540: b3 e5 c5 00  	or	a1, a1, a2
80000544: 23 28 b1 06  	sw	a1, 112(sp)
80000548: 23 2a a1 06  	sw	a0, 116(sp)
8000054c: 83 25 81 06  	lw	a1, 104(sp)
80000550: 83 26 c1 06  	lw	a3, 108(sp)
80000554: 03 26 81 05  	lw	a2, 88(sp)
80000558: 03 25 c1 05  	lw	a0, 92(sp)
8000055c: 13 45 f5 ff  	not	a0, a0
80000560: 33 05 d5 00  	add	a0, a0, a3
80000564: 13 46 f6 ff  	not	a2, a2
80000568: b3 05 b6 00  	add	a1, a2, a1
8000056c: b3 b5 c5 00  	sltu	a1, a1, a2
80000570: 33 05 b5 00  	add	a0, a0, a1
80000574: 13 55 f5 41  	srai	a0, a0, 31
80000578: 23 26 a1 04  	sw	a0, 76(sp)
8000057c: 23 24 a1 04  	sw	a0, 72(sp)
80000580: 03 25 81 04  	lw	a0, 72(sp)
80000584: 13 75 15 00  	andi	a0, a0, 1
80000588: 93 05 00 00  	mv	a1, zero
8000058c: 23 2a b1 04  	sw	a1, 84(sp)
80000590: 23 28 a1 04  	sw	a0, 80(sp)
80000594: 03 25 81 06  	lw	a0, 104(sp)
80000598: 03 26 c1 06  	lw	a2, 108(sp)
8000059c: 83 25 81 04  	lw	a1, 72(sp)
800005a0: 83 26 c1 04  	lw	a3, 76(sp)
800005a4: 33 77 d6 00  	and	a4, a2, a3
800005a8: 33 76 b5 00  	and	a2, a0, a1
800005ac: 03 25 c1 05  	lw	a0, 92(sp)
800005b0: 83 25 81 05  	lw	a1, 88(sp)
800005b4: b3 b6 c5 00  	sltu	a3, a1, a2
800005b8: 33 05 e5 40  	sub	a0, a0, a4
800005bc: 33 05 d5 40  	sub	a0, a0, a3
800005c0: b3 85 c5 40  	sub	a1, a1, a2
800005c4: 23 2c b1 04  	sw	a1, 88(sp)
800005c8: 23 2e a1 04  	sw	a0, 92(sp)
800005cc: 6f 00 40 00  	j	0x800005d0 <.LBB1_21>

800005d0 <.LBB1_21>:
800005d0: 03 25 01 06  	lw	a0, 96(sp)
800005d4: 13 05 f5 ff  	addi	a0, a0, -1
800005d8: 23 20 a1 06  	sw	a0, 96(sp)
800005dc: 6f f0 5f f0  	j	0x800004e0 <.LBB1_19>

800005e0 <.LBB1_22>:
800005e0: 03 25 41 07  	lw	a0, 116(sp)
800005e4: 83 25 01 07  	lw	a1, 112(sp)
800005e8: 13 d6 f5 01  	srli	a2, a1, 31
800005ec: 13 15 15 00  	slli	a0, a0, 1
800005f0: 33 65 c5 00  	or	a0, a0, a2
800005f4: 93 95 15 00  	slli	a1, a1, 1
800005f8: 03 26 01 05  	lw	a2, 80(sp)
800005fc: 83 26 41 05  	lw	a3, 84(sp)
80000600: 33 65 d5 00  	or	a0, a0, a3
80000604: b3 e5 c5 00  	or	a1, a1, a2
80000608: 23 28 b1 06  	sw	a1, 112(sp)
8000060c: 23 2a a1 06  	sw	a0, 116(sp)
80000610: 03 25 01 07  	lw	a0, 112(sp)
80000614: 83 25 41 07  	lw	a1, 116(sp)
80000618: 23 2e b1 06  	sw	a1, 124(sp)
8000061c: 23 2c a1 06  	sw	a0, 120(sp)
80000620: 6f 00 40 00  	j	0x80000624 <.LBB1_23>

80000624 <.LBB1_23>:
80000624: 03 25 81 07  	lw	a0, 120(sp)
80000628: 83 25 c1 07  	lw	a1, 124(sp)
8000062c: 13 01 01 08  	addi	sp, sp, 128
80000630: 67 80 00 00  	ret

80000634 <main>:
; int main(){
80000634: 13 01 01 fe  	addi	sp, sp, -32
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 00  	sw	ra, 28(sp)
8000063c: 23 2c 81 00  	sw	s0, 24(sp)
80000640: 23 2a 91 00  	sw	s1, 20(sp)
80000644: 23 28 21 01  	sw	s2, 16(sp)
80000648: 27 34 81 00  	fsd	fs0, 8(sp)
8000064c: 37 05 00 00  	lui	a0, 0
80000650: 33 05 45 00  	add	a0, a0, tp
80000654: 83 25 45 00  	lw	a1, 4(a0)
80000658: 13 05 00 00  	mv	a0, zero
;     if (snrt_cluster_compute_core_idx() != 0u) {
8000065c: 63 9e 05 48  	bnez	a1, 0x80000af8 <.LBB0_33+0x10>
;     return _snrt_team_current->root;
80000660: 37 05 00 00  	lui	a0, 0
80000664: 33 05 45 00  	add	a0, a0, tp
80000668: 03 25 05 00  	lw	a0, 0(a0)
8000066c: 03 25 05 00  	lw	a0, 0(a0)
80000670: b7 15 00 00  	lui	a1, 1
;     if (alloc->next + size > alloc->base + alloc->size) {
80000674: 03 29 85 05  	lw	s2, 88(a0)
80000678: 03 27 05 05  	lw	a4, 80(a0)
8000067c: 83 27 45 05  	lw	a5, 84(a0)
80000680: 93 86 05 d2  	addi	a3, a1, -736
80000684: b3 05 d9 00  	add	a1, s2, a3
80000688: 13 86 05 14  	addi	a2, a1, 320
8000068c: 33 87 e7 00  	add	a4, a5, a4
80000690: 63 76 c7 00  	bgeu	a4, a2, 0x8000069c <main+0x68>
80000694: 93 05 00 00  	mv	a1, zero
80000698: 6f 00 00 01  	j	0x800006a8 <main+0x74>
;     void *ret = (void *)alloc->next;
8000069c: 93 05 09 00  	mv	a1, s2
;     alloc->next += size;
800006a0: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006a4: 13 09 06 00  	mv	s2, a2
800006a8: 33 86 26 01  	add	a2, a3, s2
800006ac: 93 07 86 1f  	addi	a5, a2, 504
800006b0: 63 7c f7 00  	bgeu	a4, a5, 0x800006c8 <main+0x94>
800006b4: 13 06 00 00  	mv	a2, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b8: b3 06 d9 00  	add	a3, s2, a3
800006bc: 63 60 d7 02  	bltu	a4, a3, 0x800006dc <main+0xa8>
;     alloc->next += size;
800006c0: 23 2c d5 04  	sw	a3, 88(a0)
800006c4: 6f 00 c0 01  	j	0x800006e0 <main+0xac>
;     void *ret = (void *)alloc->next;
800006c8: 13 06 09 00  	mv	a2, s2
;     alloc->next += size;
800006cc: 23 2c f5 04  	sw	a5, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d0: 13 89 07 00  	mv	s2, a5
800006d4: b3 06 d9 00  	add	a3, s2, a3
800006d8: e3 74 d7 fe  	bgeu	a4, a3, 0x800006c0 <main+0x8c>
800006dc: 13 09 00 00  	mv	s2, zero
;     for (uint32_t i = 0; i < n; i++){
800006e0: 13 d5 45 01  	srli	a0, a1, 20
800006e4: 33 35 a0 00  	snez	a0, a0
800006e8: b7 f6 11 00  	lui	a3, 287
800006ec: 93 86 96 1a  	addi	a3, a3, 425
800006f0: b3 b6 d5 00  	sltu	a3, a1, a3
800006f4: 33 75 d5 00  	and	a0, a0, a3

800006f8 <.LBB0_29>:
800006f8: 17 38 00 00  	auipc	a6, 3
800006fc: 13 08 08 d2  	addi	a6, a6, -736
80000700: 63 0e 05 06  	beqz	a0, 0x8000077c <.LBB0_29+0x84>
80000704: 93 06 00 00  	mv	a3, zero
80000708: 13 05 80 00  	addi	a0, zero, 8
8000070c: 13 07 b0 1c  	addi	a4, zero, 459
;     for (uint32_t i = 0; i < n; i++){
80000710: 93 07 00 04  	addi	a5, zero, 64
80000714: 93 04 00 0c  	addi	s1, zero, 192
80000718: ab 20 f7 00  	scfgw	a4, a5
8000071c: ab 20 95 00  	scfgw	a0, s1
80000720: 13 05 00 02  	addi	a0, zero, 32
80000724: ab 20 a0 00  	scfgw	zero, a0
80000728: 2b a0 05 38  	scfgwi	a1, 896
8000072c: 73 e0 00 7c  	csrsi	1984, 1
80000730: 13 07 c0 1c  	addi	a4, zero, 460
80000734: 93 07 10 00  	addi	a5, zero, 1
80000738: 87 31 08 00  	fld	ft3, 0(a6)
8000073c: 37 d5 cc cc  	lui	a0, 838861
80000740: 93 04 d5 cc  	addi	s1, a0, -819
80000744: 13 05 40 01  	addi	a0, zero, 20
;         p[i] = (double)(seed + i % 20) * 3.141;
80000748: 33 b4 96 02  	mulhu	s0, a3, s1
8000074c: 13 54 44 00  	srli	s0, s0, 4
80000750: 33 04 a4 02  	mul	s0, s0, a0
80000754: 33 84 87 40  	sub	s0, a5, s0
80000758: 53 02 14 d2  	fcvt.d.wu	ft4, s0
8000075c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000760: 53 00 42 22  	fmv.d	ft0, ft4
;     for (uint32_t i = 0; i < n; i++){
80000764: 93 86 16 00  	addi	a3, a3, 1
80000768: 13 07 f7 ff  	addi	a4, a4, -1
8000076c: 93 87 17 00  	addi	a5, a5, 1
80000770: e3 1c 07 fc  	bnez	a4, 0x80000748 <.LBB0_29+0x50>
80000774: 73 f0 00 7c  	csrci	1984, 1
80000778: 6f 00 40 05  	j	0x800007cc <.LBB0_29+0xd4>
8000077c: 13 05 00 00  	mv	a0, zero
80000780: 93 06 c0 1c  	addi	a3, zero, 460
80000784: 13 07 10 00  	addi	a4, zero, 1
80000788: 07 30 08 00  	fld	ft0, 0(a6)
8000078c: b7 d7 cc cc  	lui	a5, 838861
80000790: 93 87 d7 cc  	addi	a5, a5, -819
80000794: 93 08 40 01  	addi	a7, zero, 20
80000798: 13 84 05 00  	mv	s0, a1
;         p[i] = (double)(seed + i % 20) * 3.141;
8000079c: b3 34 f5 02  	mulhu	s1, a0, a5
800007a0: 93 d4 44 00  	srli	s1, s1, 4
800007a4: b3 84 14 03  	mul	s1, s1, a7
800007a8: b3 04 97 40  	sub	s1, a4, s1
800007ac: d3 80 14 d2  	fcvt.d.wu	ft1, s1
800007b0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800007b4: 27 30 14 00  	fsd	ft1, 0(s0)
;     for (uint32_t i = 0; i < n; i++){
800007b8: 13 05 15 00  	addi	a0, a0, 1
800007bc: 93 86 f6 ff  	addi	a3, a3, -1
800007c0: 13 04 84 00  	addi	s0, s0, 8
800007c4: 13 07 17 00  	addi	a4, a4, 1
800007c8: e3 9a 06 fc  	bnez	a3, 0x8000079c <.LBB0_29+0xa4>
800007cc: 13 55 46 01  	srli	a0, a2, 20
800007d0: 33 35 a0 00  	snez	a0, a0
800007d4: b7 f6 11 00  	lui	a3, 287
800007d8: 93 86 16 0f  	addi	a3, a3, 241
800007dc: b3 36 d6 00  	sltu	a3, a2, a3
800007e0: 33 75 d5 00  	and	a0, a0, a3
800007e4: 63 0e 05 06  	beqz	a0, 0x80000860 <.LBB0_29+0x168>
800007e8: 93 06 00 00  	mv	a3, zero
800007ec: 13 05 80 00  	addi	a0, zero, 8
800007f0: 13 07 20 1e  	addi	a4, zero, 482
;     for (uint32_t i = 0; i < n; i++){
800007f4: 93 07 00 04  	addi	a5, zero, 64
800007f8: ab 20 f7 00  	scfgw	a4, a5
800007fc: 13 07 00 0c  	addi	a4, zero, 192
80000800: ab 20 e5 00  	scfgw	a0, a4
80000804: 13 05 00 02  	addi	a0, zero, 32
80000808: ab 20 a0 00  	scfgw	zero, a0
8000080c: 2b 20 06 38  	scfgwi	a2, 896
80000810: 73 e0 00 7c  	csrsi	1984, 1
80000814: 13 07 30 1e  	addi	a4, zero, 483
80000818: 93 07 10 00  	addi	a5, zero, 1
8000081c: 87 31 08 00  	fld	ft3, 0(a6)
80000820: 37 d5 cc cc  	lui	a0, 838861
80000824: 13 05 d5 cc  	addi	a0, a0, -819
80000828: 93 04 40 01  	addi	s1, zero, 20
;         p[i] = (double)(seed + i % 20) * 3.141;
8000082c: 33 b4 a6 02  	mulhu	s0, a3, a0
80000830: 13 54 44 00  	srli	s0, s0, 4
80000834: 33 04 94 02  	mul	s0, s0, s1
80000838: 33 84 87 40  	sub	s0, a5, s0
8000083c: 53 02 14 d2  	fcvt.d.wu	ft4, s0
80000840: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000844: 53 00 42 22  	fmv.d	ft0, ft4
;     for (uint32_t i = 0; i < n; i++){
80000848: 93 86 16 00  	addi	a3, a3, 1
8000084c: 13 07 f7 ff  	addi	a4, a4, -1
80000850: 93 87 17 00  	addi	a5, a5, 1
80000854: e3 1c 07 fc  	bnez	a4, 0x8000082c <.LBB0_29+0x134>
80000858: 73 f0 00 7c  	csrci	1984, 1
8000085c: 6f 00 40 05  	j	0x800008b0 <.LBB0_29+0x1b8>
80000860: 13 05 00 00  	mv	a0, zero
80000864: 93 06 30 1e  	addi	a3, zero, 483
80000868: 13 07 10 00  	addi	a4, zero, 1
8000086c: 07 30 08 00  	fld	ft0, 0(a6)
80000870: b7 d7 cc cc  	lui	a5, 838861
80000874: 93 87 d7 cc  	addi	a5, a5, -819
80000878: 13 08 40 01  	addi	a6, zero, 20
8000087c: 13 04 06 00  	mv	s0, a2
;         p[i] = (double)(seed + i % 20) * 3.141;
80000880: b3 34 f5 02  	mulhu	s1, a0, a5
80000884: 93 d4 44 00  	srli	s1, s1, 4
80000888: b3 84 04 03  	mul	s1, s1, a6
8000088c: b3 04 97 40  	sub	s1, a4, s1
80000890: d3 80 14 d2  	fcvt.d.wu	ft1, s1
80000894: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000898: 27 30 14 00  	fsd	ft1, 0(s0)
;     for (uint32_t i = 0; i < n; i++){
8000089c: 13 05 15 00  	addi	a0, a0, 1
800008a0: 93 86 f6 ff  	addi	a3, a3, -1
800008a4: 13 04 84 00  	addi	s0, s0, 8
800008a8: 13 07 17 00  	addi	a4, a4, 1
800008ac: e3 9a 06 fc  	bnez	a3, 0x80000880 <.LBB0_29+0x188>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800008b0: 73 24 00 b0  	csrr	s0, mcycle
;     matmul_restricted(c, a, b, n, p, m);
800008b4: 93 06 40 01  	addi	a3, zero, 20
800008b8: 13 07 70 01  	addi	a4, zero, 23
800008bc: 93 07 50 01  	addi	a5, zero, 21
800008c0: 93 04 40 01  	addi	s1, zero, 20
800008c4: 13 05 09 00  	mv	a0, s2
800008c8: 97 00 00 00  	auipc	ra, 0
800008cc: e7 80 c0 24  	jalr	588(ra)
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800008d0: 73 25 00 b0  	csrr	a0, mcycle
;     printf("cycles = %lu\n", end - start);
800008d4: b3 05 85 40  	sub	a1, a0, s0

800008d8 <.LBB0_30>:
800008d8: 17 35 00 00  	auipc	a0, 3
800008dc: 13 05 95 8b  	addi	a0, a0, -1863
800008e0: 97 00 00 00  	auipc	ra, 0
800008e4: e7 80 80 56  	jalr	1384(ra)
;     for (int i = 0; i < n; i++){
800008e8: 13 55 49 01  	srli	a0, s2, 20
800008ec: 33 35 a0 00  	snez	a0, a0
800008f0: b7 f5 11 00  	lui	a1, 287
800008f4: 93 85 95 2e  	addi	a1, a1, 745
800008f8: b3 35 b9 00  	sltu	a1, s2, a1
800008fc: 33 75 b5 00  	and	a0, a0, a1
80000900: 63 0e 05 0e  	beqz	a0, 0x800009fc <.LBB0_30+0x124>
80000904: 93 05 80 00  	addi	a1, zero, 8
80000908: 13 05 40 01  	addi	a0, zero, 20
;     for (int i = 0; i < n; i++){
8000090c: 13 06 00 04  	addi	a2, zero, 64
80000910: 93 06 00 0c  	addi	a3, zero, 192
80000914: ab 20 c5 00  	scfgw	a0, a2
80000918: ab a0 d5 00  	scfgw	a1, a3
8000091c: 13 06 30 01  	addi	a2, zero, 19
80000920: 93 06 00 06  	addi	a3, zero, 96
80000924: 13 07 00 0e  	addi	a4, zero, 224
80000928: ab 20 d6 00  	scfgw	a2, a3
8000092c: ab a0 e5 00  	scfgw	a1, a4
80000930: 93 05 00 02  	addi	a1, zero, 32
80000934: ab 20 b0 00  	scfgw	zero, a1
80000938: 2b 20 09 32  	scfgwi	s2, 800
8000093c: 73 e0 00 7c  	csrsi	1984, 1
80000940: d3 01 00 d2  	fcvt.d.w	ft3, zero
;             r += A[i * m + j];
80000944: 53 02 00 22  	fmv.d	ft4, ft0
80000948: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000094c: 53 02 00 22  	fmv.d	ft4, ft0
80000950: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000954: 53 02 00 22  	fmv.d	ft4, ft0
80000958: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000095c: 53 02 00 22  	fmv.d	ft4, ft0
80000960: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000964: 53 02 00 22  	fmv.d	ft4, ft0
80000968: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000096c: 53 02 00 22  	fmv.d	ft4, ft0
80000970: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000974: 53 02 00 22  	fmv.d	ft4, ft0
80000978: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000097c: 53 02 00 22  	fmv.d	ft4, ft0
80000980: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000984: 53 02 00 22  	fmv.d	ft4, ft0
80000988: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000098c: 53 02 00 22  	fmv.d	ft4, ft0
80000990: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000994: 53 02 00 22  	fmv.d	ft4, ft0
80000998: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000099c: 53 02 00 22  	fmv.d	ft4, ft0
800009a0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009a4: 53 02 00 22  	fmv.d	ft4, ft0
800009a8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009ac: 53 02 00 22  	fmv.d	ft4, ft0
800009b0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009b4: 53 02 00 22  	fmv.d	ft4, ft0
800009b8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009bc: 53 02 00 22  	fmv.d	ft4, ft0
800009c0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009c4: 53 02 00 22  	fmv.d	ft4, ft0
800009c8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009cc: 53 02 00 22  	fmv.d	ft4, ft0
800009d0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009d4: 53 02 00 22  	fmv.d	ft4, ft0
800009d8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009dc: 53 02 00 22  	fmv.d	ft4, ft0
800009e0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009e4: 53 02 00 22  	fmv.d	ft4, ft0
;     for (int i = 0; i < n; i++){
800009e8: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
800009ec: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;     for (int i = 0; i < n; i++){
800009f0: e3 1a 05 f4  	bnez	a0, 0x80000944 <.LBB0_30+0x6c>
800009f4: 73 f0 00 7c  	csrci	1984, 1
800009f8: 6f 00 00 0c  	j	0x80000ab8 <.LBB0_31>
;     for (int i = 0; i < n; i++){
800009fc: 13 05 09 05  	addi	a0, s2, 80
80000a00: d3 01 00 d2  	fcvt.d.w	ft3, zero
;             r += A[i * m + j];
80000a04: 07 30 05 fb  	fld	ft0, -80(a0)
80000a08: 53 70 30 02  	fadd.d	ft0, ft0, ft3
80000a0c: 87 30 85 fb  	fld	ft1, -72(a0)
80000a10: 07 31 05 fc  	fld	ft2, -64(a0)
80000a14: 87 31 85 fc  	fld	ft3, -56(a0)
80000a18: 07 32 05 fd  	fld	ft4, -48(a0)
80000a1c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000a20: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000a24: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000a28: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80000a2c: 87 30 85 fd  	fld	ft1, -40(a0)
80000a30: 07 31 05 fe  	fld	ft2, -32(a0)
80000a34: 87 31 85 fe  	fld	ft3, -24(a0)
80000a38: 07 32 05 ff  	fld	ft4, -16(a0)
80000a3c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000a40: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000a44: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000a48: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80000a4c: 87 30 85 ff  	fld	ft1, -8(a0)
80000a50: 07 31 05 00  	fld	ft2, 0(a0)
80000a54: 87 31 85 00  	fld	ft3, 8(a0)
80000a58: 07 32 05 01  	fld	ft4, 16(a0)
80000a5c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000a60: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000a64: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000a68: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80000a6c: 87 30 85 01  	fld	ft1, 24(a0)
80000a70: 07 31 05 02  	fld	ft2, 32(a0)
80000a74: 87 31 85 02  	fld	ft3, 40(a0)
80000a78: 07 32 05 03  	fld	ft4, 48(a0)
80000a7c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000a80: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000a84: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000a88: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80000a8c: 87 30 85 03  	fld	ft1, 56(a0)
80000a90: 07 31 05 04  	fld	ft2, 64(a0)
80000a94: 87 31 85 04  	fld	ft3, 72(a0)
80000a98: 07 32 05 05  	fld	ft4, 80(a0)
80000a9c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000aa0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000aa4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000aa8: d3 71 02 02  	fadd.d	ft3, ft4, ft0
;     for (int i = 0; i < n; i++){
80000aac: 93 84 f4 ff  	addi	s1, s1, -1
80000ab0: 13 05 85 0a  	addi	a0, a0, 168
80000ab4: e3 98 04 f4  	bnez	s1, 0x80000a04 <.LBB0_30+0x12c>

80000ab8 <.LBB0_31>:
80000ab8: 17 35 00 00  	auipc	a0, 3
80000abc: 13 05 85 96  	addi	a0, a0, -1688
80000ac0: 07 30 05 00  	fld	ft0, 0(a0)
;     double error = r - r_true;
80000ac4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
;     error = error < 0.0 ? -error : error;
80000ac8: 53 24 00 22  	fabs.d	fs0, ft0
;     printf("error = %f\n", error);
80000acc: 27 30 81 00  	fsd	fs0, 0(sp)
80000ad0: 03 26 01 00  	lw	a2, 0(sp)
80000ad4: 83 26 41 00  	lw	a3, 4(sp)

80000ad8 <.LBB0_32>:
80000ad8: 17 25 00 00  	auipc	a0, 2
80000adc: 13 05 d5 6a  	addi	a0, a0, 1709
80000ae0: 97 00 00 00  	auipc	ra, 0
80000ae4: e7 80 80 36  	jalr	872(ra)

80000ae8 <.LBB0_33>:
80000ae8: 17 35 00 00  	auipc	a0, 3
80000aec: 13 05 05 94  	addi	a0, a0, -1728
80000af0: 07 30 05 00  	fld	ft0, 0(a0)
;     return error > 0.0001;
80000af4: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80000af8: 07 34 81 00  	fld	fs0, 8(sp)
80000afc: 03 29 01 01  	lw	s2, 16(sp)
80000b00: 83 24 41 01  	lw	s1, 20(sp)
80000b04: 03 24 81 01  	lw	s0, 24(sp)
80000b08: 83 20 c1 01  	lw	ra, 28(sp)
80000b0c: 13 01 01 02  	addi	sp, sp, 32
80000b10: 67 80 00 00  	ret

80000b14 <matmul_restricted>:
; void matmul_restricted(double *restrict C, double *restrict A, double *restrict B, int n, int p, int m){
80000b14: 13 01 01 fe  	addi	sp, sp, -32
80000b18: 23 2e 11 00  	sw	ra, 28(sp)
80000b1c: 23 2c 81 00  	sw	s0, 24(sp)
80000b20: 23 2a 91 00  	sw	s1, 20(sp)
80000b24: 23 28 21 01  	sw	s2, 16(sp)
80000b28: 23 26 31 01  	sw	s3, 12(sp)
80000b2c: 23 24 41 01  	sw	s4, 8(sp)
80000b30: 23 22 51 01  	sw	s5, 4(sp)
80000b34: 23 20 61 01  	sw	s6, 0(sp)
80000b38: 93 89 06 00  	mv	s3, a3
;     for (int i = 0; i < n; i++){
80000b3c: 93 a6 16 00  	slti	a3, a3, 1
80000b40: 93 a4 17 00  	slti	s1, a5, 1
80000b44: b3 e6 96 00  	or	a3, a3, s1
80000b48: 63 9c 06 2c  	bnez	a3, 0x80000e20 <matmul_restricted+0x30c>
80000b4c: 13 0a 05 00  	mv	s4, a0
;     for (int i = 0; i < n; i++){
80000b50: 13 88 f7 ff  	addi	a6, a5, -1
80000b54: 93 1e 38 00  	slli	t4, a6, 3
80000b58: 13 8e f9 ff  	addi	t3, s3, -1
80000b5c: 13 99 37 00  	slli	s2, a5, 3
80000b60: 33 05 c9 03  	mul	a0, s2, t3
80000b64: 33 85 ae 00  	add	a0, t4, a0
80000b68: b3 06 45 01  	add	a3, a0, s4
80000b6c: 33 b5 a6 00  	sltu	a0, a3, a0
;             for (int k = 0; k < p; k++){
80000b70: 63 50 e0 04  	blez	a4, 0x80000bb0 <matmul_restricted+0x9c>
;     for (int i = 0; i < n; i++){
80000b74: 93 03 f7 ff  	addi	t2, a4, -1
80000b78: 13 93 33 00  	slli	t1, t2, 3
80000b7c: 13 1f 37 00  	slli	t5, a4, 3
80000b80: b3 04 cf 03  	mul	s1, t5, t3
80000b84: 33 04 93 00  	add	s0, t1, s1
80000b88: 33 0b b4 00  	add	s6, s0, a1
80000b8c: b3 02 79 02  	mul	t0, s2, t2
80000b90: b3 88 d2 01  	add	a7, t0, t4
80000b94: 93 54 4a 01  	srli	s1, s4, 20
80000b98: b3 3a 90 00  	snez	s5, s1
80000b9c: b7 04 12 00  	lui	s1, 288
80000ba0: 93 8f 14 00  	addi	t6, s1, 1
80000ba4: 63 06 05 04  	beqz	a0, 0x80000bf0 <matmul_restricted+0xdc>
80000ba8: 13 05 00 00  	mv	a0, zero
80000bac: 6f 00 80 04  	j	0x80000bf4 <matmul_restricted+0xe0>
80000bb0: 93 55 4a 01  	srli	a1, s4, 20
80000bb4: b3 35 b0 00  	snez	a1, a1
80000bb8: 63 0e 05 1e  	beqz	a0, 0x80000db4 <matmul_restricted+0x2a0>
80000bbc: 13 05 00 00  	mv	a0, zero
80000bc0: 33 f5 a5 00  	and	a0, a1, a0
80000bc4: 63 12 05 20  	bnez	a0, 0x80000dc8 <matmul_restricted+0x2b4>
80000bc8: 13 84 8e 00  	addi	s0, t4, 8
;             C[m*i + j] = c;
80000bcc: 13 05 0a 00  	mv	a0, s4
80000bd0: 93 05 00 00  	mv	a1, zero
80000bd4: 13 06 09 00  	mv	a2, s2
80000bd8: 97 f0 ff ff  	auipc	ra, 1048575
80000bdc: e7 80 80 42  	jalr	1064(ra)
;     for (int i = 0; i < n; i++){
80000be0: 93 89 f9 ff  	addi	s3, s3, -1
80000be4: 33 0a 8a 00  	add	s4, s4, s0
80000be8: e3 92 09 fe  	bnez	s3, 0x80000bcc <matmul_restricted+0xb8>
80000bec: 6f 00 40 23  	j	0x80000e20 <matmul_restricted+0x30c>
80000bf0: 33 b5 f6 01  	sltu	a0, a3, t6
;     for (int i = 0; i < n; i++){
80000bf4: b3 86 c8 00  	add	a3, a7, a2
80000bf8: b3 fa aa 00  	and	s5, s5, a0
80000bfc: 13 d5 45 01  	srli	a0, a1, 20
80000c00: 33 35 a0 00  	snez	a0, a0
80000c04: 63 76 8b 00  	bgeu	s6, s0, 0x80000c10 <matmul_restricted+0xfc>
80000c08: 13 04 00 00  	mv	s0, zero
80000c0c: 6f 00 80 00  	j	0x80000c14 <matmul_restricted+0x100>
80000c10: 33 34 fb 01  	sltu	s0, s6, t6
;     for (int i = 0; i < n; i++){
80000c14: 33 75 85 00  	and	a0, a0, s0
80000c18: 33 75 55 01  	and	a0, a0, s5
80000c1c: 13 54 46 01  	srli	s0, a2, 20
80000c20: 33 34 80 00  	snez	s0, s0
80000c24: 63 f6 16 01  	bgeu	a3, a7, 0x80000c30 <matmul_restricted+0x11c>
80000c28: 93 06 00 00  	mv	a3, zero
80000c2c: 6f 00 80 00  	j	0x80000c34 <matmul_restricted+0x120>
80000c30: b3 b6 f6 01  	sltu	a3, a3, t6
;     for (int i = 0; i < n; i++){
80000c34: b3 76 d4 00  	and	a3, s0, a3
80000c38: 33 f5 a6 00  	and	a0, a3, a0
80000c3c: 63 04 05 10  	beqz	a0, 0x80000d44 <matmul_restricted+0x230>
80000c40: 13 05 00 00  	mv	a0, zero
80000c44: 93 0e 80 00  	addi	t4, zero, 8
;     for (int i = 0; i < n; i++){
80000c48: 93 04 00 04  	addi	s1, zero, 64
80000c4c: ab 20 98 00  	scfgw	a6, s1
80000c50: 93 04 00 0c  	addi	s1, zero, 192
80000c54: ab a0 9e 00  	scfgw	t4, s1
80000c58: 93 04 00 06  	addi	s1, zero, 96
80000c5c: ab 20 9e 00  	scfgw	t3, s1
80000c60: 93 04 00 0e  	addi	s1, zero, 224
80000c64: ab a0 9e 00  	scfgw	t4, s1
80000c68: 93 04 00 02  	addi	s1, zero, 32
80000c6c: ab 20 90 00  	scfgw	zero, s1
80000c70: 2b 20 0a 3a  	scfgwi	s4, 928
80000c74: 93 04 10 00  	addi	s1, zero, 1
80000c78: 13 84 04 04  	addi	s0, s1, 64
80000c7c: ab a0 83 00  	scfgw	t2, s0
80000c80: 13 84 04 0c  	addi	s0, s1, 192
80000c84: ab a0 8e 00  	scfgw	t4, s0
80000c88: 33 04 60 40  	neg	s0, t1
80000c8c: 93 86 04 06  	addi	a3, s1, 96
80000c90: ab 20 d8 00  	scfgw	a6, a3
80000c94: 93 86 04 0e  	addi	a3, s1, 224
80000c98: ab 20 d4 00  	scfgw	s0, a3
80000c9c: 93 86 04 08  	addi	a3, s1, 128
80000ca0: 13 84 04 10  	addi	s0, s1, 256
80000ca4: ab 20 de 00  	scfgw	t3, a3
80000ca8: ab a0 8e 00  	scfgw	t4, s0
80000cac: 93 86 04 02  	addi	a3, s1, 32
80000cb0: ab 20 d0 00  	scfgw	zero, a3
80000cb4: 2b a0 15 34  	scfgwi	a1, 833
80000cb8: 93 05 20 00  	addi	a1, zero, 2
80000cbc: 93 86 05 04  	addi	a3, a1, 64
80000cc0: 93 84 05 0c  	addi	s1, a1, 192
80000cc4: ab a0 d3 00  	scfgw	t2, a3
80000cc8: ab 20 99 00  	scfgw	s2, s1
80000ccc: b3 86 5e 40  	sub	a3, t4, t0
80000cd0: 93 84 05 06  	addi	s1, a1, 96
80000cd4: 13 84 05 0e  	addi	s0, a1, 224
80000cd8: ab 20 98 00  	scfgw	a6, s1
80000cdc: ab a0 86 00  	scfgw	a3, s0
80000ce0: b3 06 10 41  	neg	a3, a7
80000ce4: 93 84 05 08  	addi	s1, a1, 128
80000ce8: 13 84 05 10  	addi	s0, a1, 256
80000cec: ab 20 9e 00  	scfgw	t3, s1
80000cf0: ab a0 86 00  	scfgw	a3, s0
80000cf4: 93 85 05 02  	addi	a1, a1, 32
80000cf8: ab 20 b0 00  	scfgw	zero, a1
80000cfc: 2b 20 26 34  	scfgwi	a2, 834
80000d00: 73 e0 00 7c  	csrsi	1984, 1
80000d04: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000d08: 93 05 00 00  	mv	a1, zero
80000d0c: 13 06 07 00  	mv	a2, a4
80000d10: 53 82 31 22  	fmv.d	ft4, ft3
;                 c += A[p*i + k] * B[k*m + j];
80000d14: d3 82 10 22  	fmv.d	ft5, ft1
80000d18: 53 03 21 22  	fmv.d	ft6, ft2
;             for (int k = 0; k < p; k++){
80000d1c: 13 06 f6 ff  	addi	a2, a2, -1
;                 c += A[p*i + k] * B[k*m + j];
80000d20: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;             for (int k = 0; k < p; k++){
80000d24: e3 18 06 fe  	bnez	a2, 0x80000d14 <matmul_restricted+0x200>
;         for (int j = 0; j < m; j++){
80000d28: 93 85 15 00  	addi	a1, a1, 1
;             C[m*i + j] = c;
80000d2c: 53 00 42 22  	fmv.d	ft0, ft4
;         for (int j = 0; j < m; j++){
80000d30: e3 9e f5 fc  	bne	a1, a5, 0x80000d0c <matmul_restricted+0x1f8>
;     for (int i = 0; i < n; i++){
80000d34: 13 05 15 00  	addi	a0, a0, 1
80000d38: e3 18 35 fd  	bne	a0, s3, 0x80000d08 <matmul_restricted+0x1f4>
80000d3c: 73 f0 00 7c  	csrci	1984, 1
80000d40: 6f 00 00 0e  	j	0x80000e20 <matmul_restricted+0x30c>
80000d44: 13 08 00 00  	mv	a6, zero
;     for (int i = 0; i < n; i++){
80000d48: 93 86 8e 00  	addi	a3, t4, 8
80000d4c: 53 00 00 d2  	fcvt.d.w	ft0, zero
80000d50: 13 03 00 00  	mv	t1, zero
80000d54: b3 08 f8 02  	mul	a7, a6, a5
80000d58: 93 02 06 00  	mv	t0, a2
80000d5c: 13 85 05 00  	mv	a0, a1
80000d60: 93 84 02 00  	mv	s1, t0
80000d64: 13 04 07 00  	mv	s0, a4
80000d68: d3 00 00 22  	fmv.d	ft1, ft0
;                 c += A[p*i + k] * B[k*m + j];
80000d6c: 07 31 05 00  	fld	ft2, 0(a0)
80000d70: 87 b1 04 00  	fld	ft3, 0(s1)
80000d74: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
;             for (int k = 0; k < p; k++){
80000d78: 13 04 f4 ff  	addi	s0, s0, -1
80000d7c: b3 84 d4 00  	add	s1, s1, a3
80000d80: 13 05 85 00  	addi	a0, a0, 8
80000d84: e3 14 04 fe  	bnez	s0, 0x80000d6c <matmul_restricted+0x258>
;             C[m*i + j] = c;
80000d88: 33 05 13 01  	add	a0, t1, a7
80000d8c: 13 15 35 00  	slli	a0, a0, 3
80000d90: 33 05 aa 00  	add	a0, s4, a0
80000d94: 27 30 15 00  	fsd	ft1, 0(a0)
;         for (int j = 0; j < m; j++){
80000d98: 13 03 13 00  	addi	t1, t1, 1
80000d9c: 93 82 82 00  	addi	t0, t0, 8
80000da0: e3 1e f3 fa  	bne	t1, a5, 0x80000d5c <matmul_restricted+0x248>
;     for (int i = 0; i < n; i++){
80000da4: 13 08 18 00  	addi	a6, a6, 1
80000da8: b3 85 e5 01  	add	a1, a1, t5
80000dac: e3 12 38 fb  	bne	a6, s3, 0x80000d50 <matmul_restricted+0x23c>
80000db0: 6f 00 00 07  	j	0x80000e20 <matmul_restricted+0x30c>
80000db4: 37 05 12 00  	lui	a0, 288
80000db8: 13 05 15 00  	addi	a0, a0, 1
80000dbc: 33 b5 a6 00  	sltu	a0, a3, a0
;     for (int i = 0; i < n; i++){
80000dc0: 33 f5 a5 00  	and	a0, a1, a0
80000dc4: e3 02 05 e0  	beqz	a0, 0x80000bc8 <matmul_restricted+0xb4>
80000dc8: 13 05 00 00  	mv	a0, zero
80000dcc: 93 05 80 00  	addi	a1, zero, 8
;     for (int i = 0; i < n; i++){
80000dd0: 13 06 00 04  	addi	a2, zero, 64
80000dd4: ab 20 c8 00  	scfgw	a6, a2
80000dd8: 13 06 00 0c  	addi	a2, zero, 192
80000ddc: ab a0 c5 00  	scfgw	a1, a2
80000de0: 13 06 00 06  	addi	a2, zero, 96
80000de4: 93 06 00 0e  	addi	a3, zero, 224
80000de8: ab 20 ce 00  	scfgw	t3, a2
80000dec: ab a0 d5 00  	scfgw	a1, a3
80000df0: 93 05 00 02  	addi	a1, zero, 32
80000df4: ab 20 b0 00  	scfgw	zero, a1
80000df8: 2b 20 0a 3a  	scfgwi	s4, 928
80000dfc: 73 e0 00 7c  	csrsi	1984, 1
80000e00: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000e04: 93 85 07 00  	mv	a1, a5
;         for (int j = 0; j < m; j++){
80000e08: 93 85 f5 ff  	addi	a1, a1, -1
;             C[m*i + j] = c;
80000e0c: 53 80 31 22  	fmv.d	ft0, ft3
;         for (int j = 0; j < m; j++){
80000e10: e3 9c 05 fe  	bnez	a1, 0x80000e08 <matmul_restricted+0x2f4>
;     for (int i = 0; i < n; i++){
80000e14: 13 05 15 00  	addi	a0, a0, 1
80000e18: e3 16 35 ff  	bne	a0, s3, 0x80000e04 <matmul_restricted+0x2f0>
80000e1c: 73 f0 00 7c  	csrci	1984, 1
;     return;
80000e20: 03 2b 01 00  	lw	s6, 0(sp)
80000e24: 83 2a 41 00  	lw	s5, 4(sp)
80000e28: 03 2a 81 00  	lw	s4, 8(sp)
80000e2c: 83 29 c1 00  	lw	s3, 12(sp)
80000e30: 03 29 01 01  	lw	s2, 16(sp)
80000e34: 83 24 41 01  	lw	s1, 20(sp)
80000e38: 03 24 81 01  	lw	s0, 24(sp)
80000e3c: 83 20 c1 01  	lw	ra, 28(sp)
80000e40: 13 01 01 02  	addi	sp, sp, 32
80000e44: 67 80 00 00  	ret

80000e48 <printf_>:
; {
80000e48: 13 01 01 fd  	addi	sp, sp, -48
80000e4c: 23 26 11 00  	sw	ra, 12(sp)
80000e50: 93 02 05 00  	mv	t0, a0
80000e54: 23 26 11 03  	sw	a7, 44(sp)
80000e58: 23 24 01 03  	sw	a6, 40(sp)
80000e5c: 23 22 f1 02  	sw	a5, 36(sp)
80000e60: 23 20 e1 02  	sw	a4, 32(sp)
80000e64: 23 2e d1 00  	sw	a3, 28(sp)
80000e68: 23 2c c1 00  	sw	a2, 24(sp)
80000e6c: 23 2a b1 00  	sw	a1, 20(sp)
80000e70: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80000e74: 23 24 a1 00  	sw	a0, 8(sp)

80000e78 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80000e78: 17 15 00 00  	auipc	a0, 1
80000e7c: 13 05 45 c2  	addi	a0, a0, -988
80000e80: 93 05 71 00  	addi	a1, sp, 7
80000e84: 13 06 f0 ff  	addi	a2, zero, -1
80000e88: 13 07 41 01  	addi	a4, sp, 20
80000e8c: 93 86 02 00  	mv	a3, t0
80000e90: 97 00 00 00  	auipc	ra, 0
80000e94: e7 80 40 01  	jalr	20(ra)
;   return ret;
80000e98: 83 20 c1 00  	lw	ra, 12(sp)
80000e9c: 13 01 01 03  	addi	sp, sp, 48
80000ea0: 67 80 00 00  	ret

80000ea4 <_vsnprintf.llvm.1805434900161566649>:
; {
80000ea4: 13 01 01 f9  	addi	sp, sp, -112
80000ea8: 23 26 11 06  	sw	ra, 108(sp)
80000eac: 23 24 81 06  	sw	s0, 104(sp)
80000eb0: 23 22 91 06  	sw	s1, 100(sp)
80000eb4: 23 20 21 07  	sw	s2, 96(sp)
80000eb8: 23 2e 31 05  	sw	s3, 92(sp)
80000ebc: 23 2c 41 05  	sw	s4, 88(sp)
80000ec0: 23 2a 51 05  	sw	s5, 84(sp)
80000ec4: 23 28 61 05  	sw	s6, 80(sp)
80000ec8: 23 26 71 05  	sw	s7, 76(sp)
80000ecc: 23 24 81 05  	sw	s8, 72(sp)
80000ed0: 23 22 91 05  	sw	s9, 68(sp)
80000ed4: 23 20 a1 05  	sw	s10, 64(sp)
80000ed8: 23 2e b1 03  	sw	s11, 60(sp)
80000edc: 93 09 07 00  	mv	s3, a4
80000ee0: 13 84 06 00  	mv	s0, a3
80000ee4: 93 0a 06 00  	mv	s5, a2
80000ee8: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80000eec: 63 86 05 00  	beqz	a1, 0x80000ef8 <.LBB1_183>
80000ef0: 13 09 05 00  	mv	s2, a0
80000ef4: 6f 00 c0 00  	j	0x80000f00 <.LBB1_183+0x8>

80000ef8 <.LBB1_183>:
80000ef8: 17 19 00 00  	auipc	s2, 1
80000efc: 13 09 09 c5  	addi	s2, s2, -944
80000f00: 13 0c 00 00  	mv	s8, zero
80000f04: 13 0b 50 02  	addi	s6, zero, 37
80000f08: 93 0d 00 01  	addi	s11, zero, 16
80000f0c: 93 0b e0 02  	addi	s7, zero, 46
80000f10: 37 15 00 00  	lui	a0, 1
80000f14: 13 05 05 80  	addi	a0, a0, -2048
80000f18: 23 2c a1 00  	sw	a0, 24(sp)
80000f1c: 37 05 01 00  	lui	a0, 16
80000f20: 13 05 f5 ff  	addi	a0, a0, -1
80000f24: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80000f28: 13 0d 24 00  	addi	s10, s0, 2
80000f2c: 93 0c 0c 00  	mv	s9, s8
80000f30: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80000f34: 03 45 04 00  	lbu	a0, 0(s0)
80000f38: e3 04 05 30  	beqz	a0, 0x80001a40 <.LBB1_124+0x3b0>
80000f3c: 63 08 65 03  	beq	a0, s6, 0x80000f6c <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80000f40: 93 84 1c 00  	addi	s1, s9, 1
80000f44: 93 05 0a 00  	mv	a1, s4
80000f48: 13 86 0c 00  	mv	a2, s9
80000f4c: 93 86 0a 00  	mv	a3, s5
80000f50: e7 00 09 00  	jalr	s2
;       format++;
80000f54: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80000f58: 13 0d 1d 00  	addi	s10, s10, 1
80000f5c: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80000f60: 03 45 04 00  	lbu	a0, 0(s0)
80000f64: e3 1c 05 fc  	bnez	a0, 0x80000f3c <.LBB1_183+0x44>
80000f68: 6f 00 90 2d  	j	0x80001a40 <.LBB1_124+0x3b0>
;     flags = 0U;
80000f6c: 13 04 00 00  	mv	s0, zero
80000f70: 6f 00 00 01  	j	0x80000f80 <.LBB1_9+0x8>

80000f74 <.LBB1_8>:
80000f74: 93 05 00 01  	addi	a1, zero, 16

80000f78 <.LBB1_9>:
80000f78: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80000f7c: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80000f80: 03 45 fd ff  	lbu	a0, -1(s10)
80000f84: 93 05 05 fe  	addi	a1, a0, -32
80000f88: 63 ec bd 02  	bltu	s11, a1, 0x80000fc0 <.LBB1_15>
80000f8c: 93 95 25 00  	slli	a1, a1, 2

80000f90 <.LBB1_184>:
80000f90: 17 26 00 00  	auipc	a2, 2
80000f94: 13 06 46 21  	addi	a2, a2, 532
80000f98: b3 85 c5 00  	add	a1, a1, a2
80000f9c: 03 a6 05 00  	lw	a2, 0(a1)
80000fa0: 93 05 10 00  	addi	a1, zero, 1
80000fa4: 67 00 06 00  	jr	a2

80000fa8 <.LBB1_12>:
80000fa8: 93 05 80 00  	addi	a1, zero, 8
80000fac: 6f f0 df fc  	j	0x80000f78 <.LBB1_9>

80000fb0 <.LBB1_13>:
80000fb0: 93 05 40 00  	addi	a1, zero, 4
80000fb4: 6f f0 5f fc  	j	0x80000f78 <.LBB1_9>

80000fb8 <.LBB1_14>:
80000fb8: 93 05 20 00  	addi	a1, zero, 2
80000fbc: 6f f0 df fb  	j	0x80000f78 <.LBB1_9>

80000fc0 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80000fc0: 93 05 05 fd  	addi	a1, a0, -48
80000fc4: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80000fc8: 93 05 fd ff  	addi	a1, s10, -1
80000fcc: 93 06 90 00  	addi	a3, zero, 9
80000fd0: 63 ee c6 06  	bltu	a3, a2, 0x8000104c <.LBB1_15+0x8c>
80000fd4: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000fd8: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000fdc: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000fe0: b3 06 8b 03  	mul	a3, s6, s8
80000fe4: 93 85 15 00  	addi	a1, a1, 1
80000fe8: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000fec: 93 06 05 fd  	addi	a3, a0, -48
80000ff0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000ff4: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80000ff8: e3 e0 86 ff  	bltu	a3, s8, 0x80000fd8 <.LBB1_15+0x18>
80000ffc: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001000: 63 16 75 0b  	bne	a0, s7, 0x800010ac <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001004: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001008: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
8000100c: 93 05 05 fd  	addi	a1, a0, -48
80001010: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001014: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001018: 93 06 90 00  	addi	a3, zero, 9
8000101c: 63 e0 c6 06  	bltu	a3, a2, 0x8000107c <.LBB1_15+0xbc>
80001020: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001024: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001028: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000102c: b3 86 8b 03  	mul	a3, s7, s8
80001030: 93 85 15 00  	addi	a1, a1, 1
80001034: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001038: 93 06 05 fd  	addi	a3, a0, -48
8000103c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001040: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001044: e3 e0 86 ff  	bltu	a3, s8, 0x80001024 <.LBB1_15+0x64>
80001048: 6f 00 00 07  	j	0x800010b8 <.LBB1_15+0xf8>
;     else if (*format == '*') {
8000104c: 13 06 a0 02  	addi	a2, zero, 42
80001050: 63 18 c5 04  	bne	a0, a2, 0x800010a0 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001054: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001058: 63 d4 05 00  	bgez	a1, 0x80001060 <.LBB1_15+0xa0>
8000105c: 13 64 24 00  	ori	s0, s0, 2
80001060: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001064: 03 45 0d 00  	lbu	a0, 0(s10)
80001068: 13 d6 f5 41  	srai	a2, a1, 31
8000106c: b3 85 c5 00  	add	a1, a1, a2
80001070: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001074: e3 08 75 f9  	beq	a0, s7, 0x80001004 <.LBB1_15+0x44>
80001078: 6f 00 40 03  	j	0x800010ac <.LBB1_15+0xec>
;       else if (*format == '*') {
8000107c: 13 06 a0 02  	addi	a2, zero, 42
80001080: 63 1a c5 02  	bne	a0, a2, 0x800010b4 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001084: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001088: 63 44 70 01  	bgtz	s7, 0x80001090 <.LBB1_15+0xd0>
8000108c: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001090: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001094: 13 0d 2d 00  	addi	s10, s10, 2
80001098: 93 89 49 00  	addi	s3, s3, 4
8000109c: 6f 00 00 02  	j	0x800010bc <.LBB1_15+0xfc>
800010a0: 13 0b 00 00  	mv	s6, zero
800010a4: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800010a8: e3 0e 75 f5  	beq	a0, s7, 0x80001004 <.LBB1_15+0x44>
800010ac: 93 0b 00 00  	mv	s7, zero
800010b0: 6f 00 c0 00  	j	0x800010bc <.LBB1_15+0xfc>
800010b4: 93 0b 00 00  	mv	s7, zero
800010b8: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800010bc: 93 05 85 f9  	addi	a1, a0, -104
800010c0: 13 d6 15 00  	srli	a2, a1, 1
800010c4: 93 95 f5 01  	slli	a1, a1, 31
800010c8: b3 e5 c5 00  	or	a1, a1, a2
800010cc: 13 06 90 00  	addi	a2, zero, 9
800010d0: 63 62 b6 06  	bltu	a2, a1, 0x80001134 <.LBB1_42>
800010d4: 93 95 25 00  	slli	a1, a1, 2

800010d8 <.LBB1_185>:
800010d8: 17 26 00 00  	auipc	a2, 2
800010dc: 13 06 06 11  	addi	a2, a2, 272
800010e0: b3 85 c5 00  	add	a1, a1, a2
800010e4: 83 a6 05 00  	lw	a3, 0(a1)
800010e8: 93 05 10 00  	addi	a1, zero, 1
800010ec: 13 06 00 10  	addi	a2, zero, 256
800010f0: 67 80 06 00  	jr	a3

800010f4 <.LBB1_36>:
;         if (*format == 'h') {
800010f4: 03 45 1d 00  	lbu	a0, 1(s10)
800010f8: 93 05 80 06  	addi	a1, zero, 104
800010fc: 63 12 b5 12  	bne	a0, a1, 0x80001220 <.LBB1_53+0x48>
80001100: 93 05 20 00  	addi	a1, zero, 2
80001104: 13 06 00 0c  	addi	a2, zero, 192
80001108: 6f 00 00 02  	j	0x80001128 <.LBB1_41>

8000110c <.LBB1_38>:
8000110c: 13 06 00 20  	addi	a2, zero, 512
80001110: 6f 00 80 01  	j	0x80001128 <.LBB1_41>

80001114 <.LBB1_39>:
;         if (*format == 'l') {
80001114: 03 45 1d 00  	lbu	a0, 1(s10)
80001118: 93 05 c0 06  	addi	a1, zero, 108
8000111c: 63 18 b5 10  	bne	a0, a1, 0x8000122c <.LBB1_53+0x54>
80001120: 93 05 20 00  	addi	a1, zero, 2
80001124: 13 06 00 30  	addi	a2, zero, 768

80001128 <.LBB1_41>:
80001128: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
8000112c: 03 45 0d 00  	lbu	a0, 0(s10)
80001130: 33 64 c4 00  	or	s0, s0, a2

80001134 <.LBB1_42>:
;     switch (*format) {
80001134: 93 05 b5 fd  	addi	a1, a0, -37
80001138: 13 06 30 05  	addi	a2, zero, 83
8000113c: 63 64 b6 10  	bltu	a2, a1, 0x80001244 <.LBB1_59>
80001140: 93 95 25 00  	slli	a1, a1, 2

80001144 <.LBB1_186>:
80001144: 17 26 00 00  	auipc	a2, 2
80001148: 13 06 c6 0c  	addi	a2, a2, 204
8000114c: b3 85 c5 00  	add	a1, a1, a2
80001150: 03 a6 05 00  	lw	a2, 0(a1)
80001154: 93 05 80 00  	addi	a1, zero, 8
80001158: 13 0c 00 01  	addi	s8, zero, 16
8000115c: 67 00 06 00  	jr	a2

80001160 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001160: 13 74 f4 fe  	andi	s0, s0, -17
80001164: 13 0c a0 00  	addi	s8, zero, 10

80001168 <.LBB1_45>:
;         if (*format == 'X') {
80001168: 93 05 80 05  	addi	a1, zero, 88
8000116c: 63 14 b5 00  	bne	a0, a1, 0x80001174 <.LBB1_45+0xc>
80001170: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001174: 93 05 40 06  	addi	a1, zero, 100
80001178: 63 08 b5 0e  	beq	a0, a1, 0x80001268 <.LBB1_62+0x8>
8000117c: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001180: 13 06 90 06  	addi	a2, zero, 105
80001184: 63 02 c5 0e  	beq	a0, a2, 0x80001268 <.LBB1_62+0x8>
80001188: 6f 00 80 0d  	j	0x80001260 <.LBB1_62>

8000118c <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
8000118c: 93 05 60 04  	addi	a1, zero, 70
80001190: 63 14 b5 00  	bne	a0, a1, 0x80001198 <.LBB1_49+0xc>
80001194: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001198: 13 85 79 00  	addi	a0, s3, 7
8000119c: 13 75 85 ff  	andi	a0, a0, -8
800011a0: 07 35 05 00  	fld	fa0, 0(a0)
800011a4: 93 09 85 00  	addi	s3, a0, 8
800011a8: 13 05 09 00  	mv	a0, s2
800011ac: 93 05 0a 00  	mv	a1, s4
800011b0: 13 86 0c 00  	mv	a2, s9
800011b4: 93 86 0a 00  	mv	a3, s5
800011b8: 13 87 0b 00  	mv	a4, s7
800011bc: 93 07 0b 00  	mv	a5, s6
800011c0: 13 08 04 00  	mv	a6, s0
800011c4: 97 10 00 00  	auipc	ra, 1
800011c8: e7 80 80 98  	jalr	-1656(ra)
800011cc: 6f 00 00 7c  	j	0x8000198c <.LBB1_124+0x2fc>

800011d0 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800011d0: 83 25 81 01  	lw	a1, 24(sp)
800011d4: 33 64 b4 00  	or	s0, s0, a1

800011d8 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800011d8: 13 65 25 00  	ori	a0, a0, 2
800011dc: 93 05 70 04  	addi	a1, zero, 71
800011e0: 63 14 b5 00  	bne	a0, a1, 0x800011e8 <.LBB1_53+0x10>
800011e4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800011e8: 13 85 79 00  	addi	a0, s3, 7
800011ec: 13 75 85 ff  	andi	a0, a0, -8
800011f0: 07 35 05 00  	fld	fa0, 0(a0)
800011f4: 93 09 85 00  	addi	s3, a0, 8
800011f8: 13 05 09 00  	mv	a0, s2
800011fc: 93 05 0a 00  	mv	a1, s4
80001200: 13 86 0c 00  	mv	a2, s9
80001204: 93 86 0a 00  	mv	a3, s5
80001208: 13 87 0b 00  	mv	a4, s7
8000120c: 93 07 0b 00  	mv	a5, s6
80001210: 13 08 04 00  	mv	a6, s0
80001214: 97 10 00 00  	auipc	ra, 1
80001218: e7 80 80 01  	jalr	24(ra)
8000121c: 6f 00 00 77  	j	0x8000198c <.LBB1_124+0x2fc>
80001220: 13 64 04 08  	ori	s0, s0, 128
80001224: 13 0d 1d 00  	addi	s10, s10, 1
80001228: 6f f0 df f0  	j	0x80001134 <.LBB1_42>
8000122c: 13 64 04 10  	ori	s0, s0, 256
80001230: 13 0d 1d 00  	addi	s10, s10, 1
80001234: 6f f0 1f f0  	j	0x80001134 <.LBB1_42>

80001238 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001238: 13 8c 1c 00  	addi	s8, s9, 1
8000123c: 13 05 50 02  	addi	a0, zero, 37
80001240: 6f 00 80 00  	j	0x80001248 <.LBB1_59+0x4>

80001244 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001244: 13 8c 1c 00  	addi	s8, s9, 1
80001248: 93 05 0a 00  	mv	a1, s4
8000124c: 13 86 0c 00  	mv	a2, s9
80001250: 93 86 0a 00  	mv	a3, s5
80001254: e7 00 09 00  	jalr	s2
80001258: 6f 00 80 73  	j	0x80001990 <.LBB1_124+0x300>

8000125c <.LBB1_61>:
8000125c: 93 05 20 00  	addi	a1, zero, 2

80001260 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001260: 13 74 34 ff  	andi	s0, s0, -13
80001264: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001268: 93 75 04 40  	andi	a1, s0, 1024
8000126c: 63 84 05 00  	beqz	a1, 0x80001274 <.LBB1_62+0x14>
80001270: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001274: 93 05 90 06  	addi	a1, zero, 105
80001278: 63 06 b5 00  	beq	a0, a1, 0x80001284 <.LBB1_62+0x24>
8000127c: 93 05 40 06  	addi	a1, zero, 100
80001280: 63 1c b5 12  	bne	a0, a1, 0x800013b8 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001284: 13 75 04 20  	andi	a0, s0, 512
80001288: 63 16 05 02  	bnez	a0, 0x800012b4 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
8000128c: 13 75 04 10  	andi	a0, s0, 256
80001290: 63 1c 05 14  	bnez	a0, 0x800013e8 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001294: 13 75 04 04  	andi	a0, s0, 64
80001298: 63 18 05 4e  	bnez	a0, 0x80001788 <.LBB1_124+0xf8>
8000129c: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800012a0: 93 75 04 08  	andi	a1, s0, 128
800012a4: 63 84 05 4e  	beqz	a1, 0x8000178c <.LBB1_124+0xfc>
800012a8: 13 15 08 01  	slli	a0, a6, 16
800012ac: 13 58 05 41  	srai	a6, a0, 16
800012b0: 6f 00 c0 4d  	j	0x8000178c <.LBB1_124+0xfc>
800012b4: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800012b8: 13 85 79 00  	addi	a0, s3, 7
800012bc: 13 75 85 ff  	andi	a0, a0, -8
800012c0: 83 29 05 00  	lw	s3, 0(a0)
800012c4: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800012c8: 13 65 45 00  	ori	a0, a0, 4
800012cc: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800012d0: 23 24 a1 00  	sw	a0, 8(sp)
800012d4: 33 e5 a9 00  	or	a0, s3, a0
800012d8: 63 14 05 00  	bnez	a0, 0x800012e0 <.LBB1_62+0x80>
800012dc: 13 74 f4 fe  	andi	s0, s0, -17
800012e0: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800012e4: 93 75 04 40  	andi	a1, s0, 1024
800012e8: 93 d5 a5 00  	srli	a1, a1, 10
800012ec: 33 75 b5 00  	and	a0, a0, a1
800012f0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800012f4: 63 14 05 0a  	bnez	a0, 0x8000139c <.LBB1_62+0x13c>
800012f8: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800012fc: 63 da 04 00  	bgez	s1, 0x80001310 <.LBB1_62+0xb0>
80001300: 33 35 30 01  	snez	a0, s3
80001304: b3 09 30 41  	neg	s3, s3
80001308: 33 85 a4 00  	add	a0, s1, a0
8000130c: b3 04 a0 40  	neg	s1, a0
80001310: 13 09 00 00  	mv	s2, zero
80001314: 13 75 04 02  	andi	a0, s0, 32
80001318: 13 45 15 06  	xori	a0, a0, 97
8000131c: 13 05 65 0f  	addi	a0, a0, 246
80001320: 23 2a a1 00  	sw	a0, 20(sp)
80001324: 6f 00 40 02  	j	0x80001348 <.LBB1_62+0xe8>
80001328: 13 06 10 00  	addi	a2, zero, 1
8000132c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001330: 93 36 f9 01  	sltiu	a3, s2, 31
80001334: 33 f6 c6 00  	and	a2, a3, a2
80001338: 13 89 07 00  	mv	s2, a5
8000133c: 93 09 05 00  	mv	s3, a0
80001340: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001344: 63 0c 06 04  	beqz	a2, 0x8000139c <.LBB1_62+0x13c>
;       value /= base;
80001348: 13 85 09 00  	mv	a0, s3
8000134c: 93 85 04 00  	mv	a1, s1
80001350: 13 06 0c 00  	mv	a2, s8
80001354: 93 06 00 00  	mv	a3, zero
80001358: 97 f0 ff ff  	auipc	ra, 1048575
8000135c: e7 80 40 d8  	jalr	-636(ra)
80001360: 33 06 85 03  	mul	a2, a0, s8
80001364: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001368: 13 77 e6 0f  	andi	a4, a2, 254
8000136c: 93 06 00 03  	addi	a3, zero, 48
80001370: 93 07 a0 00  	addi	a5, zero, 10
80001374: 63 64 f7 00  	bltu	a4, a5, 0x8000137c <.LBB1_62+0x11c>
80001378: 83 26 41 01  	lw	a3, 20(sp)
8000137c: 33 86 c6 00  	add	a2, a3, a2
80001380: 93 06 c1 01  	addi	a3, sp, 28
80001384: b3 86 26 01  	add	a3, a3, s2
80001388: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000138c: e3 9e 04 f8  	bnez	s1, 0x80001328 <.LBB1_62+0xc8>
80001390: 33 b6 89 01  	sltu	a2, s3, s8
80001394: 13 46 16 00  	xori	a2, a2, 1
80001398: 6f f0 5f f9  	j	0x8000132c <.LBB1_62+0xcc>
8000139c: 03 25 41 00  	lw	a0, 4(sp)
800013a0: 93 09 85 00  	addi	s3, a0, 8
800013a4: 03 25 81 00  	lw	a0, 8(sp)
800013a8: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800013ac: 13 07 c1 01  	addi	a4, sp, 28
800013b0: 03 29 c1 00  	lw	s2, 12(sp)
800013b4: 6f 00 80 47  	j	0x8000182c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
800013b8: 13 75 04 20  	andi	a0, s0, 512
800013bc: 63 12 05 0c  	bnez	a0, 0x80001480 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800013c0: 13 75 04 10  	andi	a0, s0, 256
800013c4: 63 1e 05 46  	bnez	a0, 0x80001840 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800013c8: 13 75 04 04  	andi	a0, s0, 64
800013cc: 63 10 05 50  	bnez	a0, 0x800018cc <.LBB1_124+0x23c>
800013d0: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800013d4: 93 75 04 08  	andi	a1, s0, 128
800013d8: 63 8c 05 4e  	beqz	a1, 0x800018d0 <.LBB1_124+0x240>
800013dc: 83 25 01 01  	lw	a1, 16(sp)
800013e0: 33 75 b5 00  	and	a0, a0, a1
800013e4: 6f 00 c0 4e  	j	0x800018d0 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800013e8: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800013ec: 63 14 08 00  	bnez	a6, 0x800013f4 <.LBB1_62+0x194>
800013f0: 13 74 f4 fe  	andi	s0, s0, -17
800013f4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800013f8: 13 76 04 40  	andi	a2, s0, 1024
800013fc: 13 56 a6 00  	srli	a2, a2, 10
80001400: b3 f5 c5 00  	and	a1, a1, a2
80001404: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001408: 63 9c 05 40  	bnez	a1, 0x80001820 <.LBB1_124+0x190>
8000140c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001410: 13 56 f8 41  	srai	a2, a6, 31
80001414: b3 06 c8 00  	add	a3, a6, a2
80001418: b3 c6 c6 00  	xor	a3, a3, a2
8000141c: 13 76 04 02  	andi	a2, s0, 32
80001420: 13 46 16 06  	xori	a2, a2, 97
80001424: 93 08 66 0f  	addi	a7, a2, 246
80001428: 6f 00 40 03  	j	0x8000145c <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000142c: 33 05 f6 00  	add	a0, a2, a5
80001430: 93 87 15 00  	addi	a5, a1, 1
80001434: 13 06 c1 01  	addi	a2, sp, 28
80001438: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000143c: b3 b6 86 01  	sltu	a3, a3, s8
80001440: 93 c6 16 00  	xori	a3, a3, 1
80001444: 93 b5 f5 01  	sltiu	a1, a1, 31
80001448: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000144c: 23 00 a6 00  	sb	a0, 0(a2)
80001450: 93 85 07 00  	mv	a1, a5
80001454: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001458: 63 84 04 3c  	beqz	s1, 0x80001820 <.LBB1_124+0x190>
;       value /= base;
8000145c: 33 d7 86 03  	divu	a4, a3, s8
80001460: 33 06 87 03  	mul	a2, a4, s8
80001464: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001468: 13 f5 e7 0f  	andi	a0, a5, 254
8000146c: 13 06 00 03  	addi	a2, zero, 48
80001470: 93 04 a0 00  	addi	s1, zero, 10
80001474: e3 6c 95 fa  	bltu	a0, s1, 0x8000142c <.LBB1_62+0x1cc>
80001478: 13 86 08 00  	mv	a2, a7
8000147c: 6f f0 1f fb  	j	0x8000142c <.LBB1_62+0x1cc>
80001480: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001484: 13 85 79 00  	addi	a0, s3, 7
80001488: 93 75 85 ff  	andi	a1, a0, -8
8000148c: 03 a9 05 00  	lw	s2, 0(a1)
80001490: 13 e5 45 00  	ori	a0, a1, 4
80001494: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80001498: 33 65 39 01  	or	a0, s2, s3
8000149c: 23 24 b1 00  	sw	a1, 8(sp)
800014a0: 63 14 05 00  	bnez	a0, 0x800014a8 <.LBB1_62+0x248>
800014a4: 13 74 f4 fe  	andi	s0, s0, -17
800014a8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800014ac: 93 75 04 40  	andi	a1, s0, 1024
800014b0: 93 d5 a5 00  	srli	a1, a1, 10
800014b4: 33 75 b5 00  	and	a0, a0, a1
800014b8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800014bc: 63 18 05 08  	bnez	a0, 0x8000154c <.LBB1_62+0x2ec>
800014c0: 93 04 00 00  	mv	s1, zero
800014c4: 13 75 04 02  	andi	a0, s0, 32
800014c8: 13 45 15 06  	xori	a0, a0, 97
800014cc: 13 05 65 0f  	addi	a0, a0, 246
800014d0: 23 2a a1 00  	sw	a0, 20(sp)
800014d4: 6f 00 40 02  	j	0x800014f8 <.LBB1_62+0x298>
800014d8: 13 06 10 00  	addi	a2, zero, 1
800014dc: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800014e0: 93 b6 f4 01  	sltiu	a3, s1, 31
800014e4: 33 f6 c6 00  	and	a2, a3, a2
800014e8: 93 84 07 00  	mv	s1, a5
800014ec: 13 09 05 00  	mv	s2, a0
800014f0: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800014f4: 63 0c 06 04  	beqz	a2, 0x8000154c <.LBB1_62+0x2ec>
;       value /= base;
800014f8: 13 05 09 00  	mv	a0, s2
800014fc: 93 85 09 00  	mv	a1, s3
80001500: 13 06 0c 00  	mv	a2, s8
80001504: 93 06 00 00  	mv	a3, zero
80001508: 97 f0 ff ff  	auipc	ra, 1048575
8000150c: e7 80 40 bd  	jalr	-1068(ra)
80001510: 33 06 85 03  	mul	a2, a0, s8
80001514: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001518: 13 77 e6 0f  	andi	a4, a2, 254
8000151c: 93 06 00 03  	addi	a3, zero, 48
80001520: 93 07 a0 00  	addi	a5, zero, 10
80001524: 63 64 f7 00  	bltu	a4, a5, 0x8000152c <.LBB1_62+0x2cc>
80001528: 83 26 41 01  	lw	a3, 20(sp)
8000152c: 33 86 c6 00  	add	a2, a3, a2
80001530: 93 06 c1 01  	addi	a3, sp, 28
80001534: b3 86 96 00  	add	a3, a3, s1
80001538: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000153c: e3 9e 09 f8  	bnez	s3, 0x800014d8 <.LBB1_62+0x278>
80001540: 33 36 89 01  	sltu	a2, s2, s8
80001544: 13 46 16 00  	xori	a2, a2, 1
80001548: 6f f0 5f f9  	j	0x800014dc <.LBB1_62+0x27c>
8000154c: 03 25 81 00  	lw	a0, 8(sp)
80001550: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001554: 13 07 c1 01  	addi	a4, sp, 28
80001558: 03 29 c1 00  	lw	s2, 12(sp)
8000155c: 6f 00 40 40  	j	0x80001960 <.LBB1_124+0x2d0>

80001560 <.LBB1_108>:
80001560: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80001564: 13 79 24 00  	andi	s2, s0, 2
80001568: 93 04 10 00  	addi	s1, zero, 1
8000156c: 63 1e 09 02  	bnez	s2, 0x800015a8 <.LBB1_108+0x48>
80001570: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80001574: 63 6a 9b 02  	bltu	s6, s1, 0x800015a8 <.LBB1_108+0x48>
80001578: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
8000157c: 13 0c fb ff  	addi	s8, s6, -1
80001580: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80001584: 33 86 8c 00  	add	a2, s9, s0
80001588: 13 05 00 02  	addi	a0, zero, 32
8000158c: 93 05 0a 00  	mv	a1, s4
80001590: 93 86 0a 00  	mv	a3, s5
80001594: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80001598: 13 04 14 00  	addi	s0, s0, 1
8000159c: e3 14 8c fe  	bne	s8, s0, 0x80001584 <.LBB1_108+0x24>
800015a0: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800015a4: b3 8c 8c 00  	add	s9, s9, s0
800015a8: 03 c5 09 00  	lbu	a0, 0(s3)
800015ac: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800015b0: 93 89 49 00  	addi	s3, s3, 4
800015b4: 13 8c 1c 00  	addi	s8, s9, 1
800015b8: 93 05 0a 00  	mv	a1, s4
800015bc: 13 86 0c 00  	mv	a2, s9
800015c0: 93 86 0a 00  	mv	a3, s5
800015c4: 13 89 0b 00  	mv	s2, s7
800015c8: e7 80 0b 00  	jalr	s7
800015cc: 33 b5 64 01  	sltu	a0, s1, s6
800015d0: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800015d4: 33 65 a4 00  	or	a0, s0, a0
800015d8: 63 1c 05 3a  	bnez	a0, 0x80001990 <.LBB1_124+0x300>
;           while (l++ < width) {
800015dc: 33 04 9b 40  	sub	s0, s6, s1
800015e0: 93 0b e0 02  	addi	s7, zero, 46
800015e4: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800015e8: 13 0c 1c 00  	addi	s8, s8, 1
800015ec: 13 05 00 02  	addi	a0, zero, 32
800015f0: 93 05 0a 00  	mv	a1, s4
800015f4: 93 86 0a 00  	mv	a3, s5
800015f8: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800015fc: 13 04 f4 ff  	addi	s0, s0, -1
80001600: e3 12 04 fe  	bnez	s0, 0x800015e4 <.LBB1_108+0x84>
80001604: 13 0b 50 02  	addi	s6, zero, 37
80001608: 13 04 1d 00  	addi	s0, s10, 1
8000160c: 6f f0 df 91  	j	0x80000f28 <.LBB1_183+0x30>

80001610 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001610: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001614: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80001618: 63 14 05 00  	bnez	a0, 0x80001620 <.LBB1_117+0x10>
8000161c: 93 fe fe fe  	andi	t4, t4, -17
80001620: 93 04 a0 00  	addi	s1, zero, 10
80001624: 13 04 f0 00  	addi	s0, zero, 15
80001628: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000162c: 13 f6 0e 40  	andi	a2, t4, 1024
80001630: 13 56 a6 00  	srli	a2, a2, 10
80001634: b3 f5 c5 00  	and	a1, a1, a2
80001638: 93 07 00 00  	mv	a5, zero
8000163c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001640: 63 98 05 10  	bnez	a1, 0x80001750 <.LBB1_124+0xc0>
80001644: 93 05 00 00  	mv	a1, zero
80001648: 6f 00 40 03  	j	0x8000167c <.LBB1_117+0x6c>
8000164c: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001650: 33 06 d6 00  	add	a2, a2, a3
80001654: 93 87 15 00  	addi	a5, a1, 1
80001658: 93 06 c1 01  	addi	a3, sp, 28
8000165c: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001660: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80001664: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001668: 93 b5 f5 01  	sltiu	a1, a1, 31
8000166c: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001670: 23 80 c6 00  	sb	a2, 0(a3)
80001674: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001678: 63 0c 07 0c  	beqz	a4, 0x80001750 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000167c: 93 76 e5 00  	andi	a3, a0, 14
80001680: 13 06 00 03  	addi	a2, zero, 48
80001684: e3 e4 96 fc  	bltu	a3, s1, 0x8000164c <.LBB1_117+0x3c>
80001688: 13 06 70 03  	addi	a2, zero, 55
8000168c: 6f f0 1f fc  	j	0x8000164c <.LBB1_117+0x3c>

80001690 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001690: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80001694: 03 c5 07 00  	lbu	a0, 0(a5)
80001698: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
8000169c: 63 0c 05 02  	beqz	a0, 0x800016d4 <.LBB1_124+0x44>
800016a0: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800016a4: 63 84 0b 00  	beqz	s7, 0x800016ac <.LBB1_124+0x1c>
800016a8: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800016ac: 93 85 f5 ff  	addi	a1, a1, -1
800016b0: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800016b4: 03 c7 16 00  	lbu	a4, 1(a3)
800016b8: 13 86 16 00  	addi	a2, a3, 1
800016bc: b3 36 e0 00  	snez	a3, a4
800016c0: 33 37 b0 00  	snez	a4, a1
800016c4: 33 77 d7 00  	and	a4, a4, a3
800016c8: 93 85 f5 ff  	addi	a1, a1, -1
800016cc: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800016d0: e3 12 07 fe  	bnez	a4, 0x800016b4 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800016d4: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800016d8: 93 75 04 40  	andi	a1, s0, 1024
800016dc: 93 b4 15 00  	seqz	s1, a1
800016e0: 23 2a c1 00  	sw	a2, 20(sp)
800016e4: b3 35 76 01  	sltu	a1, a2, s7
800016e8: b3 e5 b4 00  	or	a1, s1, a1
800016ec: 63 94 05 00  	bnez	a1, 0x800016f4 <.LBB1_124+0x64>
800016f0: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
800016f4: 93 75 24 00  	andi	a1, s0, 2
800016f8: 23 26 b1 00  	sw	a1, 12(sp)
800016fc: 63 96 05 2a  	bnez	a1, 0x800019a8 <.LBB1_124+0x318>
80001700: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001704: 63 fe 65 29  	bgeu	a1, s6, 0x800019a0 <.LBB1_124+0x310>
80001708: 23 24 f1 00  	sw	a5, 8(sp)
8000170c: 13 04 00 00  	mv	s0, zero
80001710: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001714: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80001718: 33 86 8c 00  	add	a2, s9, s0
8000171c: 13 05 00 02  	addi	a0, zero, 32
80001720: 93 05 0a 00  	mv	a1, s4
80001724: 93 86 0a 00  	mv	a3, s5
80001728: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
8000172c: 13 04 14 00  	addi	s0, s0, 1
80001730: e3 14 89 fe  	bne	s2, s0, 0x80001718 <.LBB1_124+0x88>
80001734: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001738: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
8000173c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001740: 23 2a b1 00  	sw	a1, 20(sp)
80001744: b3 8c 8c 00  	add	s9, s9, s0
80001748: 13 09 0c 00  	mv	s2, s8
8000174c: 6f 00 c0 25  	j	0x800019a8 <.LBB1_124+0x318>
80001750: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001754: 13 07 c1 01  	addi	a4, sp, 28
80001758: 93 08 00 01  	addi	a7, zero, 16
8000175c: 13 0e 80 00  	addi	t3, zero, 8
80001760: 13 05 09 00  	mv	a0, s2
80001764: 93 05 0a 00  	mv	a1, s4
80001768: 13 86 0c 00  	mv	a2, s9
8000176c: 93 86 0a 00  	mv	a3, s5
80001770: 13 08 00 00  	mv	a6, zero
80001774: 93 83 0b 00  	mv	t2, s7
80001778: 97 10 00 00  	auipc	ra, 1
8000177c: e7 80 00 fa  	jalr	-96(ra)
80001780: 13 0c 05 00  	mv	s8, a0
80001784: 6f 00 00 21  	j	0x80001994 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001788: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
8000178c: 63 14 08 00  	bnez	a6, 0x80001794 <.LBB1_124+0x104>
80001790: 13 74 f4 fe  	andi	s0, s0, -17
80001794: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001798: 13 76 04 40  	andi	a2, s0, 1024
8000179c: 13 56 a6 00  	srli	a2, a2, 10
800017a0: b3 f5 c5 00  	and	a1, a1, a2
800017a4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800017a8: 63 9c 05 06  	bnez	a1, 0x80001820 <.LBB1_124+0x190>
800017ac: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800017b0: 13 56 f8 41  	srai	a2, a6, 31
800017b4: b3 06 c8 00  	add	a3, a6, a2
800017b8: b3 c6 c6 00  	xor	a3, a3, a2
800017bc: 13 76 04 02  	andi	a2, s0, 32
800017c0: 13 46 16 06  	xori	a2, a2, 97
800017c4: 93 08 66 0f  	addi	a7, a2, 246
800017c8: 6f 00 40 03  	j	0x800017fc <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800017cc: 33 05 f6 00  	add	a0, a2, a5
800017d0: 93 87 15 00  	addi	a5, a1, 1
800017d4: 13 06 c1 01  	addi	a2, sp, 28
800017d8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800017dc: b3 b6 86 01  	sltu	a3, a3, s8
800017e0: 93 c6 16 00  	xori	a3, a3, 1
800017e4: 93 b5 f5 01  	sltiu	a1, a1, 31
800017e8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800017ec: 23 00 a6 00  	sb	a0, 0(a2)
800017f0: 93 85 07 00  	mv	a1, a5
800017f4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800017f8: 63 84 04 02  	beqz	s1, 0x80001820 <.LBB1_124+0x190>
;       value /= base;
800017fc: 33 d7 86 03  	divu	a4, a3, s8
80001800: 33 06 87 03  	mul	a2, a4, s8
80001804: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001808: 13 f5 e7 0f  	andi	a0, a5, 254
8000180c: 13 06 00 03  	addi	a2, zero, 48
80001810: 93 04 a0 00  	addi	s1, zero, 10
80001814: e3 6c 95 fa  	bltu	a0, s1, 0x800017cc <.LBB1_124+0x13c>
80001818: 13 86 08 00  	mv	a2, a7
8000181c: 6f f0 1f fb  	j	0x800017cc <.LBB1_124+0x13c>
80001820: 93 89 49 00  	addi	s3, s3, 4
80001824: 13 58 f8 01  	srli	a6, a6, 31
80001828: 13 07 c1 01  	addi	a4, sp, 28
8000182c: 13 05 09 00  	mv	a0, s2
80001830: 93 05 0a 00  	mv	a1, s4
80001834: 13 86 0c 00  	mv	a2, s9
80001838: 93 86 0a 00  	mv	a3, s5
8000183c: 6f 00 80 13  	j	0x80001974 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001840: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001844: 63 14 05 00  	bnez	a0, 0x8000184c <.LBB1_124+0x1bc>
80001848: 13 74 f4 fe  	andi	s0, s0, -17
8000184c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001850: 13 76 04 40  	andi	a2, s0, 1024
80001854: 13 56 a6 00  	srli	a2, a2, 10
80001858: b3 f5 c5 00  	and	a1, a1, a2
8000185c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001860: 63 9c 05 0e  	bnez	a1, 0x80001958 <.LBB1_124+0x2c8>
80001864: 13 06 00 00  	mv	a2, zero
80001868: 93 75 04 02  	andi	a1, s0, 32
8000186c: 93 c5 15 06  	xori	a1, a1, 97
80001870: 13 88 65 0f  	addi	a6, a1, 246
80001874: 6f 00 40 03  	j	0x800018a8 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001878: 33 87 e7 00  	add	a4, a5, a4
8000187c: 93 07 16 00  	addi	a5, a2, 1
80001880: 93 05 c1 01  	addi	a1, sp, 28
80001884: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001888: 33 35 85 01  	sltu	a0, a0, s8
8000188c: 13 45 15 00  	xori	a0, a0, 1
80001890: 13 36 f6 01  	sltiu	a2, a2, 31
80001894: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001898: 23 80 e4 00  	sb	a4, 0(s1)
8000189c: 13 86 07 00  	mv	a2, a5
800018a0: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018a4: 63 8a 05 0a  	beqz	a1, 0x80001958 <.LBB1_124+0x2c8>
;       value /= base;
800018a8: b3 56 85 03  	divu	a3, a0, s8
800018ac: 33 87 86 03  	mul	a4, a3, s8
800018b0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018b4: 93 74 e7 0f  	andi	s1, a4, 254
800018b8: 93 07 00 03  	addi	a5, zero, 48
800018bc: 93 05 a0 00  	addi	a1, zero, 10
800018c0: e3 ec b4 fa  	bltu	s1, a1, 0x80001878 <.LBB1_124+0x1e8>
800018c4: 93 07 08 00  	mv	a5, a6
800018c8: 6f f0 1f fb  	j	0x80001878 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800018cc: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800018d0: 63 14 05 00  	bnez	a0, 0x800018d8 <.LBB1_124+0x248>
800018d4: 13 74 f4 fe  	andi	s0, s0, -17
800018d8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800018dc: 13 76 04 40  	andi	a2, s0, 1024
800018e0: 13 56 a6 00  	srli	a2, a2, 10
800018e4: b3 f5 c5 00  	and	a1, a1, a2
800018e8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800018ec: 63 96 05 06  	bnez	a1, 0x80001958 <.LBB1_124+0x2c8>
800018f0: 13 06 00 00  	mv	a2, zero
800018f4: 93 75 04 02  	andi	a1, s0, 32
800018f8: 93 c5 15 06  	xori	a1, a1, 97
800018fc: 13 88 65 0f  	addi	a6, a1, 246
80001900: 6f 00 40 03  	j	0x80001934 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001904: 33 87 e7 00  	add	a4, a5, a4
80001908: 93 07 16 00  	addi	a5, a2, 1
8000190c: 93 05 c1 01  	addi	a1, sp, 28
80001910: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001914: 33 35 85 01  	sltu	a0, a0, s8
80001918: 13 45 15 00  	xori	a0, a0, 1
8000191c: 13 36 f6 01  	sltiu	a2, a2, 31
80001920: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001924: 23 80 e4 00  	sb	a4, 0(s1)
80001928: 13 86 07 00  	mv	a2, a5
8000192c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001930: 63 84 05 02  	beqz	a1, 0x80001958 <.LBB1_124+0x2c8>
;       value /= base;
80001934: b3 56 85 03  	divu	a3, a0, s8
80001938: 33 87 86 03  	mul	a4, a3, s8
8000193c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001940: 93 74 e7 0f  	andi	s1, a4, 254
80001944: 93 07 00 03  	addi	a5, zero, 48
80001948: 93 05 a0 00  	addi	a1, zero, 10
8000194c: e3 ec b4 fa  	bltu	s1, a1, 0x80001904 <.LBB1_124+0x274>
80001950: 93 07 08 00  	mv	a5, a6
80001954: 6f f0 1f fb  	j	0x80001904 <.LBB1_124+0x274>
80001958: 93 89 49 00  	addi	s3, s3, 4
8000195c: 13 07 c1 01  	addi	a4, sp, 28
80001960: 13 05 09 00  	mv	a0, s2
80001964: 93 05 0a 00  	mv	a1, s4
80001968: 13 86 0c 00  	mv	a2, s9
8000196c: 93 86 0a 00  	mv	a3, s5
80001970: 13 08 00 00  	mv	a6, zero
80001974: 93 08 0c 00  	mv	a7, s8
80001978: 93 83 0b 00  	mv	t2, s7
8000197c: 13 0e 0b 00  	mv	t3, s6
80001980: 93 0e 04 00  	mv	t4, s0
80001984: 97 10 00 00  	auipc	ra, 1
80001988: e7 80 40 d9  	jalr	-620(ra)
8000198c: 13 0c 05 00  	mv	s8, a0
80001990: 13 0b 50 02  	addi	s6, zero, 37
80001994: 93 0b e0 02  	addi	s7, zero, 46
80001998: 13 04 1d 00  	addi	s0, s10, 1
8000199c: 6f f0 cf d8  	j	0x80000f28 <.LBB1_183+0x30>
800019a0: 93 85 15 00  	addi	a1, a1, 1
800019a4: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800019a8: 63 00 05 04  	beqz	a0, 0x800019e8 <.LBB1_124+0x358>
800019ac: 13 84 17 00  	addi	s0, a5, 1
800019b0: 6f 00 00 03  	j	0x800019e0 <.LBB1_124+0x350>
800019b4: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800019b8: 13 8c 1c 00  	addi	s8, s9, 1
800019bc: 13 75 f5 0f  	andi	a0, a0, 255
800019c0: 93 05 0a 00  	mv	a1, s4
800019c4: 13 86 0c 00  	mv	a2, s9
800019c8: 93 86 0a 00  	mv	a3, s5
800019cc: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800019d0: 03 45 04 00  	lbu	a0, 0(s0)
800019d4: 13 04 14 00  	addi	s0, s0, 1
800019d8: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800019dc: 63 08 05 00  	beqz	a0, 0x800019ec <.LBB1_124+0x35c>
800019e0: e3 9c 04 fc  	bnez	s1, 0x800019b8 <.LBB1_124+0x328>
800019e4: e3 98 0b fc  	bnez	s7, 0x800019b4 <.LBB1_124+0x324>
800019e8: 13 8c 0c 00  	mv	s8, s9
800019ec: 03 25 c1 00  	lw	a0, 12(sp)
800019f0: 13 35 15 00  	seqz	a0, a0
800019f4: 03 26 41 01  	lw	a2, 20(sp)
800019f8: b3 35 66 01  	sltu	a1, a2, s6
800019fc: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001a00: 33 65 b5 00  	or	a0, a0, a1
80001a04: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001a08: e3 14 05 f8  	bnez	a0, 0x80001990 <.LBB1_124+0x300>
;           while (l++ < width) {
80001a0c: 33 04 cb 40  	sub	s0, s6, a2
80001a10: 93 0b e0 02  	addi	s7, zero, 46
80001a14: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001a18: 13 0c 1c 00  	addi	s8, s8, 1
80001a1c: 13 05 00 02  	addi	a0, zero, 32
80001a20: 93 05 0a 00  	mv	a1, s4
80001a24: 93 86 0a 00  	mv	a3, s5
80001a28: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001a2c: 13 04 f4 ff  	addi	s0, s0, -1
80001a30: e3 12 04 fe  	bnez	s0, 0x80001a14 <.LBB1_124+0x384>
80001a34: 13 0b 50 02  	addi	s6, zero, 37
80001a38: 13 04 1d 00  	addi	s0, s10, 1
80001a3c: 6f f0 cf ce  	j	0x80000f28 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001a40: 13 86 0c 00  	mv	a2, s9
80001a44: 63 e4 5c 01  	bltu	s9, s5, 0x80001a4c <.LBB1_124+0x3bc>
80001a48: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001a4c: 13 05 00 00  	mv	a0, zero
80001a50: 93 05 0a 00  	mv	a1, s4
80001a54: 93 86 0a 00  	mv	a3, s5
80001a58: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001a5c: 13 85 0c 00  	mv	a0, s9
80001a60: 83 2d c1 03  	lw	s11, 60(sp)
80001a64: 03 2d 01 04  	lw	s10, 64(sp)
80001a68: 83 2c 41 04  	lw	s9, 68(sp)
80001a6c: 03 2c 81 04  	lw	s8, 72(sp)
80001a70: 83 2b c1 04  	lw	s7, 76(sp)
80001a74: 03 2b 01 05  	lw	s6, 80(sp)
80001a78: 83 2a 41 05  	lw	s5, 84(sp)
80001a7c: 03 2a 81 05  	lw	s4, 88(sp)
80001a80: 83 29 c1 05  	lw	s3, 92(sp)
80001a84: 03 29 01 06  	lw	s2, 96(sp)
80001a88: 83 24 41 06  	lw	s1, 100(sp)
80001a8c: 03 24 81 06  	lw	s0, 104(sp)
80001a90: 83 20 c1 06  	lw	ra, 108(sp)
80001a94: 13 01 01 07  	addi	sp, sp, 112
80001a98: 67 80 00 00  	ret

80001a9c <_out_char.llvm.1805434900161566649>:
;   if (character) {
80001a9c: 63 04 05 0a  	beqz	a0, 0x80001b44 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001aa0: f3 25 40 f1  	csrr	a1, mhartid
80001aa4: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001aa8: 33 86 c5 02  	mul	a2, a1, a2

80001aac <.LBB2_6>:
80001aac: 97 26 00 00  	auipc	a3, 2
80001ab0: 93 86 06 a3  	addi	a3, a3, -1488
80001ab4: b3 05 d6 00  	add	a1, a2, a3
80001ab8: 03 a7 05 00  	lw	a4, 0(a1)
80001abc: 93 07 17 00  	addi	a5, a4, 1
80001ac0: 23 a0 f5 00  	sw	a5, 0(a1)
80001ac4: 33 87 e5 00  	add	a4, a1, a4
80001ac8: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001acc: 03 a7 05 00  	lw	a4, 0(a1)
80001ad0: 13 07 47 c0  	addi	a4, a4, -1020
80001ad4: 33 37 e0 00  	snez	a4, a4
80001ad8: 13 05 65 ff  	addi	a0, a0, -10
80001adc: 33 35 a0 00  	snez	a0, a0
80001ae0: 33 75 e5 00  	and	a0, a0, a4
80001ae4: 63 10 05 06  	bnez	a0, 0x80001b44 <.LBB2_8+0x18>
80001ae8: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001aec: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001af0: 23 26 05 00  	sw	zero, 12(a0)
80001af4: 93 06 00 04  	addi	a3, zero, 64
80001af8: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001afc: 23 2a 05 00  	sw	zero, 20(a0)
80001b00: 93 06 10 00  	addi	a3, zero, 1
80001b04: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001b08: 23 2e 05 00  	sw	zero, 28(a0)
80001b0c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001b10: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001b14: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001b18: 23 22 05 02  	sw	zero, 36(a0)
80001b1c: 23 20 c5 02  	sw	a2, 32(a0)

80001b20 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001b20: 17 25 00 00  	auipc	a0, 2
80001b24: 13 05 05 8a  	addi	a0, a0, -1888
80001b28: 23 20 d5 00  	sw	a3, 0(a0)

80001b2c <.LBB2_8>:
80001b2c: 17 25 00 00  	auipc	a0, 2
80001b30: 13 05 45 8d  	addi	a0, a0, -1836
;         while (fromhost == 0)
80001b34: 03 26 05 00  	lw	a2, 0(a0)
80001b38: e3 0e 06 fe  	beqz	a2, 0x80001b34 <.LBB2_8+0x8>
;         fromhost = 0;
80001b3c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001b40: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001b44: 67 80 00 00  	ret

80001b48 <_out_null>:
; }
80001b48: 67 80 00 00  	ret

80001b4c <_ftoa>:
; {
80001b4c: 13 01 01 f9  	addi	sp, sp, -112
80001b50: 23 26 11 06  	sw	ra, 108(sp)
80001b54: 23 24 81 06  	sw	s0, 104(sp)
80001b58: 23 22 91 06  	sw	s1, 100(sp)
80001b5c: 23 20 21 07  	sw	s2, 96(sp)
80001b60: 23 2e 31 05  	sw	s3, 92(sp)
80001b64: 23 2c 41 05  	sw	s4, 88(sp)
80001b68: 23 2a 51 05  	sw	s5, 84(sp)
80001b6c: 23 28 61 05  	sw	s6, 80(sp)
80001b70: 23 26 71 05  	sw	s7, 76(sp)
80001b74: 23 24 81 05  	sw	s8, 72(sp)
80001b78: 23 22 91 05  	sw	s9, 68(sp)
80001b7c: 23 20 a1 05  	sw	s10, 64(sp)
80001b80: 27 3c 81 02  	fsd	fs0, 56(sp)
80001b84: 27 38 91 02  	fsd	fs1, 48(sp)
80001b88: 27 34 21 03  	fsd	fs2, 40(sp)

80001b8c <.LBB4_83>:
80001b8c: 97 24 00 00  	auipc	s1, 2
80001b90: 93 84 44 8a  	addi	s1, s1, -1884
80001b94: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80001b98: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001b9c: 93 0a 08 00  	mv	s5, a6
80001ba0: 13 89 07 00  	mv	s2, a5
80001ba4: 93 89 06 00  	mv	s3, a3
80001ba8: 13 0a 06 00  	mv	s4, a2
80001bac: 13 8b 05 00  	mv	s6, a1
80001bb0: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001bb4: 63 98 04 0e  	bnez	s1, 0x80001ca4 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001bb8: 13 f5 2a 00  	andi	a0, s5, 2
80001bbc: 93 f5 3a 00  	andi	a1, s5, 3
80001bc0: b3 35 b0 00  	snez	a1, a1
80001bc4: 13 36 59 00  	sltiu	a2, s2, 5
80001bc8: b3 65 b6 00  	or	a1, a2, a1
80001bcc: 93 5c 15 00  	srli	s9, a0, 1
80001bd0: 13 04 0a 00  	mv	s0, s4
80001bd4: 63 96 05 02  	bnez	a1, 0x80001c00 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80001bd8: 93 04 c9 ff  	addi	s1, s2, -4
80001bdc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001be0: 13 04 16 00  	addi	s0, a2, 1
80001be4: 13 05 00 02  	addi	a0, zero, 32
80001be8: 93 05 0b 00  	mv	a1, s6
80001bec: 93 86 09 00  	mv	a3, s3
80001bf0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001bf4: 93 84 f4 ff  	addi	s1, s1, -1
80001bf8: 13 06 04 00  	mv	a2, s0
80001bfc: e3 92 04 fe  	bnez	s1, 0x80001be0 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001c00: 93 04 14 00  	addi	s1, s0, 1
80001c04: 13 05 d0 02  	addi	a0, zero, 45
80001c08: 93 05 0b 00  	mv	a1, s6
80001c0c: 13 06 04 00  	mv	a2, s0
80001c10: 93 86 09 00  	mv	a3, s3
80001c14: e7 80 0b 00  	jalr	s7
80001c18: 93 0a 24 00  	addi	s5, s0, 2
80001c1c: 13 05 90 06  	addi	a0, zero, 105
80001c20: 93 05 0b 00  	mv	a1, s6
80001c24: 13 86 04 00  	mv	a2, s1
80001c28: 93 86 09 00  	mv	a3, s3
80001c2c: e7 80 0b 00  	jalr	s7
80001c30: 13 0c 34 00  	addi	s8, s0, 3
80001c34: 13 05 e0 06  	addi	a0, zero, 110
80001c38: 93 05 0b 00  	mv	a1, s6
80001c3c: 13 86 0a 00  	mv	a2, s5
80001c40: 93 86 09 00  	mv	a3, s3
80001c44: e7 80 0b 00  	jalr	s7
80001c48: 93 04 44 00  	addi	s1, s0, 4
80001c4c: 13 05 60 06  	addi	a0, zero, 102
80001c50: 93 05 0b 00  	mv	a1, s6
80001c54: 13 06 0c 00  	mv	a2, s8
80001c58: 93 86 09 00  	mv	a3, s3
80001c5c: e7 80 0b 00  	jalr	s7
80001c60: 33 85 44 41  	sub	a0, s1, s4
80001c64: 33 35 25 01  	sltu	a0, a0, s2
80001c68: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001c6c: 93 c5 1c 00  	xori	a1, s9, 1
80001c70: 33 e5 a5 00  	or	a0, a1, a0
80001c74: 63 16 05 56  	bnez	a0, 0x800021e0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001c78: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001c7c: 13 84 14 00  	addi	s0, s1, 1
80001c80: 13 05 00 02  	addi	a0, zero, 32
80001c84: 93 05 0b 00  	mv	a1, s6
80001c88: 13 86 04 00  	mv	a2, s1
80001c8c: 93 86 09 00  	mv	a3, s3
80001c90: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001c94: 33 05 8a 00  	add	a0, s4, s0
80001c98: 93 04 04 00  	mv	s1, s0
80001c9c: e3 60 25 ff  	bltu	a0, s2, 0x80001c7c <.LBB4_83+0xf0>
80001ca0: 6f 00 40 54  	j	0x800021e4 <.LBB4_90+0x378>
80001ca4: 53 04 a5 22  	fmv.d	fs0, fa0

80001ca8 <.LBB4_84>:
80001ca8: 17 15 00 00  	auipc	a0, 1
80001cac: 13 05 05 79  	addi	a0, a0, 1936
80001cb0: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001cb4: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001cb8: 63 1e 05 00  	bnez	a0, 0x80001cd4 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001cbc: 93 f5 4a 00  	andi	a1, s5, 4
80001cc0: 13 b5 15 00  	seqz	a0, a1
80001cc4: 63 82 05 06  	beqz	a1, 0x80001d28 <.LBB4_88>

80001cc8 <.LBB4_85>:
80001cc8: 17 1c 00 00  	auipc	s8, 1
80001ccc: 13 0c 8c 4b  	addi	s8, s8, 1208
80001cd0: 6f 00 00 06  	j	0x80001d30 <.LBB4_88+0x8>

80001cd4 <.LBB4_86>:
80001cd4: 17 15 00 00  	auipc	a0, 1
80001cd8: 13 05 c5 76  	addi	a0, a0, 1900
80001cdc: 07 30 05 00  	fld	ft0, 0(a0)

80001ce0 <.LBB4_87>:
80001ce0: 17 15 00 00  	auipc	a0, 1
80001ce4: 13 05 85 76  	addi	a0, a0, 1896
80001ce8: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001cec: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001cf0: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001cf4: 33 75 b5 00  	and	a0, a0, a1
80001cf8: 63 1e 05 0e  	bnez	a0, 0x80001df4 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001cfc: 13 85 0b 00  	mv	a0, s7
80001d00: 93 05 0b 00  	mv	a1, s6
80001d04: 13 06 0a 00  	mv	a2, s4
80001d08: 93 86 09 00  	mv	a3, s3
80001d0c: 53 05 84 22  	fmv.d	fa0, fs0
80001d10: 93 07 09 00  	mv	a5, s2
80001d14: 13 88 0a 00  	mv	a6, s5
80001d18: 97 00 00 00  	auipc	ra, 0
80001d1c: e7 80 40 51  	jalr	1300(ra)
80001d20: 13 04 05 00  	mv	s0, a0
80001d24: 6f 00 00 4c  	j	0x800021e4 <.LBB4_90+0x378>

80001d28 <.LBB4_88>:
80001d28: 17 1c 00 00  	auipc	s8, 1
80001d2c: 13 0c 7c 47  	addi	s8, s8, 1143
80001d30: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001d34: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001d38: 13 f5 3a 00  	andi	a0, s5, 3
80001d3c: 33 35 a0 00  	snez	a0, a0
80001d40: b3 b5 2c 01  	sltu	a1, s9, s2
80001d44: 93 c5 15 00  	xori	a1, a1, 1
80001d48: 33 65 b5 00  	or	a0, a0, a1
80001d4c: 93 fa 2a 00  	andi	s5, s5, 2
80001d50: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001d54: 63 16 05 02  	bnez	a0, 0x80001d80 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80001d58: 33 04 99 41  	sub	s0, s2, s9
80001d5c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001d60: 93 04 16 00  	addi	s1, a2, 1
80001d64: 13 05 00 02  	addi	a0, zero, 32
80001d68: 93 05 0b 00  	mv	a1, s6
80001d6c: 93 86 09 00  	mv	a3, s3
80001d70: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001d74: 13 04 f4 ff  	addi	s0, s0, -1
80001d78: 13 86 04 00  	mv	a2, s1
80001d7c: e3 12 04 fe  	bnez	s0, 0x80001d60 <.LBB4_88+0x38>
80001d80: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001d84: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80001d88: 33 05 9c 01  	add	a0, s8, s9
80001d8c: 03 45 05 00  	lbu	a0, 0(a0)
80001d90: 13 86 04 00  	mv	a2, s1
80001d94: 13 84 fc ff  	addi	s0, s9, -1
80001d98: 93 84 14 00  	addi	s1, s1, 1
80001d9c: 93 05 0b 00  	mv	a1, s6
80001da0: 93 86 09 00  	mv	a3, s3
80001da4: e7 80 0b 00  	jalr	s7
80001da8: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80001dac: e3 1e 04 fc  	bnez	s0, 0x80001d88 <.LBB4_88+0x60>
80001db0: 33 85 44 41  	sub	a0, s1, s4
80001db4: 33 35 25 01  	sltu	a0, a0, s2
80001db8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001dbc: 93 c5 1a 00  	xori	a1, s5, 1
80001dc0: 33 e5 a5 00  	or	a0, a1, a0
80001dc4: 63 1e 05 40  	bnez	a0, 0x800021e0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001dc8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001dcc: 13 84 14 00  	addi	s0, s1, 1
80001dd0: 13 05 00 02  	addi	a0, zero, 32
80001dd4: 93 05 0b 00  	mv	a1, s6
80001dd8: 13 86 04 00  	mv	a2, s1
80001ddc: 93 86 09 00  	mv	a3, s3
80001de0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001de4: 33 05 8a 00  	add	a0, s4, s0
80001de8: 93 04 04 00  	mv	s1, s0
80001dec: e3 60 25 ff  	bltu	a0, s2, 0x80001dcc <.LBB4_88+0xa4>
80001df0: 6f 00 40 3f  	j	0x800021e4 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001df4: 13 f5 0a 40  	andi	a0, s5, 1024
80001df8: 13 0c 60 00  	addi	s8, zero, 6
80001dfc: 63 04 05 00  	beqz	a0, 0x80001e04 <.LBB4_88+0xdc>
80001e00: 13 0c 07 00  	mv	s8, a4
80001e04: 13 05 a0 00  	addi	a0, zero, 10
80001e08: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001e0c: 63 6c ac 02  	bltu	s8, a0, 0x80001e44 <.LBB4_88+0x11c>
80001e10: 93 04 6c ff  	addi	s1, s8, -10
80001e14: 13 05 f0 01  	addi	a0, zero, 31
80001e18: 63 e4 a4 00  	bltu	s1, a0, 0x80001e20 <.LBB4_88+0xf8>
80001e1c: 93 04 f0 01  	addi	s1, zero, 31
80001e20: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80001e24: 13 05 81 00  	addi	a0, sp, 8
80001e28: 93 05 00 03  	addi	a1, zero, 48
80001e2c: 13 06 04 00  	mv	a2, s0
80001e30: 97 e0 ff ff  	auipc	ra, 1048574
80001e34: e7 80 00 1d  	jalr	464(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001e38: 13 c5 f4 ff  	not	a0, s1
80001e3c: 33 0c ac 00  	add	s8, s8, a0
80001e40: 6f 00 80 00  	j	0x80001e48 <.LBB4_88+0x120>
80001e44: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80001e48: 13 15 3c 00  	slli	a0, s8, 3

80001e4c <.LBB4_89>:
80001e4c: 97 15 00 00  	auipc	a1, 1
80001e50: 93 85 45 51  	addi	a1, a1, 1300
80001e54: 33 05 b5 00  	add	a0, a0, a1
80001e58: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80001e5c: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80001e60: 53 80 04 d2  	fcvt.d.w	ft0, s1
80001e64: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80001e68: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80001e6c <.LBB4_90>:
80001e6c: 17 15 00 00  	auipc	a0, 1
80001e70: 13 05 45 5e  	addi	a0, a0, 1508
80001e74: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80001e78: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80001e7c: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80001e80: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80001e84: d3 05 01 a2  	fle.d	a1, ft2, ft0
80001e88: 63 90 05 02  	bnez	a1, 0x80001ea8 <.LBB4_90+0x3c>
;     ++frac;
80001e8c: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80001e90: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80001e94: d3 15 11 a2  	flt.d	a1, ft2, ft1
80001e98: 63 94 05 02  	bnez	a1, 0x80001ec0 <.LBB4_90+0x54>
80001e9c: 13 05 00 00  	mv	a0, zero
;       ++whole;
80001ea0: 93 84 14 00  	addi	s1, s1, 1
80001ea4: 6f 00 c0 01  	j	0x80001ec0 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80001ea8: d3 15 01 a2  	flt.d	a1, ft2, ft0
80001eac: 63 9a 05 00  	bnez	a1, 0x80001ec0 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001eb0: 93 35 15 00  	seqz	a1, a0
80001eb4: 13 76 15 00  	andi	a2, a0, 1
80001eb8: b3 65 b6 00  	or	a1, a2, a1
80001ebc: 33 85 a5 00  	add	a0, a1, a0
80001ec0: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001ec4: 63 0c 0c 0c  	beqz	s8, 0x80001f9c <.LBB4_90+0x130>
80001ec8: 13 06 00 00  	mv	a2, zero
80001ecc: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001ed0: 33 83 85 00  	add	t1, a1, s0
80001ed4: 93 02 00 02  	addi	t0, zero, 32
80001ed8: 33 87 82 40  	sub	a4, t0, s0
80001edc: b7 d5 cc cc  	lui	a1, 838861
80001ee0: 93 83 d5 cc  	addi	t2, a1, -819
80001ee4: 13 08 a0 00  	addi	a6, zero, 10
80001ee8: 93 08 90 00  	addi	a7, zero, 9
80001eec: 63 04 c7 0c  	beq	a4, a2, 0x80001fb4 <.LBB4_90+0x148>
80001ef0: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001ef4: 33 35 75 02  	mulhu	a0, a0, t2
80001ef8: 13 55 35 00  	srli	a0, a0, 3
80001efc: b3 06 05 03  	mul	a3, a0, a6
80001f00: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80001f04: 93 e6 06 03  	ori	a3, a3, 48
80001f08: b3 07 c3 00  	add	a5, t1, a2
80001f0c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80001f10: 13 06 16 00  	addi	a2, a2, 1
80001f14: e3 ec b8 fc  	bltu	a7, a1, 0x80001eec <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001f18: 33 05 c4 00  	add	a0, s0, a2
80001f1c: 93 05 f5 ff  	addi	a1, a0, -1
80001f20: 93 06 e0 01  	addi	a3, zero, 30
80001f24: b3 b6 b6 00  	sltu	a3, a3, a1
80001f28: 33 47 cc 00  	xor	a4, s8, a2
80001f2c: 13 37 17 00  	seqz	a4, a4
80001f30: b3 e6 e6 00  	or	a3, a3, a4
80001f34: 63 94 06 08  	bnez	a3, 0x80001fbc <.LBB4_90+0x150>
80001f38: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001f3c: 33 05 85 00  	add	a0, a0, s0
80001f40: 93 45 f6 ff  	not	a1, a2
80001f44: 33 8c 85 01  	add	s8, a1, s8
80001f48: 33 04 c4 00  	add	s0, s0, a2
80001f4c: 93 05 f0 01  	addi	a1, zero, 31
80001f50: b3 86 85 40  	sub	a3, a1, s0
80001f54: 33 05 c5 00  	add	a0, a0, a2
80001f58: 93 05 0c 00  	mv	a1, s8
80001f5c: 63 64 dc 00  	bltu	s8, a3, 0x80001f64 <.LBB4_90+0xf8>
80001f60: 93 85 06 00  	mv	a1, a3
80001f64: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001f68: 93 05 00 03  	addi	a1, zero, 48
80001f6c: 97 e0 ff ff  	auipc	ra, 1048574
80001f70: e7 80 40 09  	jalr	148(ra)
80001f74: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001f78: b3 05 a4 00  	add	a1, s0, a0
80001f7c: 93 b5 f5 01  	sltiu	a1, a1, 31
80001f80: 33 46 ac 00  	xor	a2, s8, a0
80001f84: 33 36 c0 00  	snez	a2, a2
80001f88: 33 f6 c5 00  	and	a2, a1, a2
80001f8c: 13 05 15 00  	addi	a0, a0, 1
80001f90: e3 14 06 fe  	bnez	a2, 0x80001f78 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001f94: 33 05 a4 00  	add	a0, s0, a0
80001f98: 6f 00 80 02  	j	0x80001fc0 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80001f9c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001fa0: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001fa4: 53 05 10 a2  	fle.d	a0, ft0, ft1
80001fa8: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001fac: b3 84 a4 00  	add	s1, s1, a0
80001fb0: 6f 00 c0 03  	j	0x80001fec <.LBB4_90+0x180>
80001fb4: 13 04 00 02  	addi	s0, zero, 32
80001fb8: 6f 00 80 03  	j	0x80001ff0 <.LBB4_90+0x184>
80001fbc: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001fc0: 63 8e 05 00  	beqz	a1, 0x80001fdc <.LBB4_90+0x170>
;       buf[len++] = '.';
80001fc4: 13 04 15 00  	addi	s0, a0, 1
80001fc8: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80001fcc: 33 85 a5 00  	add	a0, a1, a0
80001fd0: 93 05 e0 02  	addi	a1, zero, 46
80001fd4: 23 00 b5 00  	sb	a1, 0(a0)
80001fd8: 6f 00 80 00  	j	0x80001fe0 <.LBB4_90+0x174>
80001fdc: 13 04 05 00  	mv	s0, a0
80001fe0: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001fe4: 93 02 04 00  	mv	t0, s0
80001fe8: 63 64 85 00  	bltu	a0, s0, 0x80001ff0 <.LBB4_90+0x184>
80001fec: 93 02 00 02  	addi	t0, zero, 32
80001ff0: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80001ff4: 37 65 66 66  	lui	a0, 419430
80001ff8: 93 05 75 66  	addi	a1, a0, 1639
80001ffc: 13 08 a0 00  	addi	a6, zero, 10
80002000: 93 06 81 00  	addi	a3, sp, 8
80002004: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002008: 63 80 82 04  	beq	t0, s0, 0x80002048 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
8000200c: 33 95 b4 02  	mulh	a0, s1, a1
80002010: 93 57 f5 01  	srli	a5, a0, 31
80002014: 13 55 25 40  	srai	a0, a0, 2
80002018: 33 05 f5 00  	add	a0, a0, a5
8000201c: b3 07 05 03  	mul	a5, a0, a6
80002020: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002024: 93 87 07 03  	addi	a5, a5, 48
80002028: 13 0c 14 00  	addi	s8, s0, 1
8000202c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002030: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002034: 23 00 f4 00  	sb	a5, 0(s0)
80002038: 13 04 0c 00  	mv	s0, s8
8000203c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002040: e3 64 c7 fc  	bltu	a4, a2, 0x80002008 <.LBB4_90+0x19c>
80002044: 6f 00 80 00  	j	0x8000204c <.LBB4_90+0x1e0>
80002048: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
8000204c: 93 f4 3a 00  	andi	s1, s5, 3
80002050: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002054: 63 96 a4 06  	bne	s1, a0, 0x800020c0 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002058: 63 0c 09 00  	beqz	s2, 0x80002070 <.LBB4_90+0x204>
8000205c: 13 f5 ca 00  	andi	a0, s5, 12
80002060: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002064: 33 e5 ac 00  	or	a0, s9, a0
80002068: 33 09 a9 40  	sub	s2, s2, a0
8000206c: 6f 00 80 00  	j	0x80002074 <.LBB4_90+0x208>
80002070: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002074: 33 35 2c 01  	sltu	a0, s8, s2
80002078: 93 45 15 00  	xori	a1, a0, 1
8000207c: 13 05 f0 01  	addi	a0, zero, 31
80002080: 33 36 85 01  	sltu	a2, a0, s8
80002084: b3 65 b6 00  	or	a1, a2, a1
80002088: 63 9c 05 02  	bnez	a1, 0x800020c0 <.LBB4_90+0x254>
8000208c: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002090: 93 45 fc ff  	not	a1, s8
80002094: b3 05 b9 00  	add	a1, s2, a1
80002098: 33 06 85 41  	sub	a2, a0, s8
8000209c: 33 85 86 01  	add	a0, a3, s8
800020a0: 63 e4 c5 00  	bltu	a1, a2, 0x800020a8 <.LBB4_90+0x23c>
800020a4: 93 05 06 00  	mv	a1, a2
800020a8: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800020ac: 93 05 00 03  	addi	a1, zero, 48
800020b0: 13 06 04 00  	mv	a2, s0
800020b4: 97 e0 ff ff  	auipc	ra, 1048574
800020b8: e7 80 c0 f4  	jalr	-180(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800020bc: 33 0c 84 01  	add	s8, s0, s8
800020c0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800020c4: 63 6a 85 05  	bltu	a0, s8, 0x80002118 <.LBB4_90+0x2ac>
;     if (negative) {
800020c8: 63 8c 0c 00  	beqz	s9, 0x800020e0 <.LBB4_90+0x274>
800020cc: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800020d0: 33 05 85 01  	add	a0, a0, s8
800020d4: 13 0c 1c 00  	addi	s8, s8, 1
800020d8: 93 05 d0 02  	addi	a1, zero, 45
800020dc: 6f 00 80 03  	j	0x80002114 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800020e0: 13 f5 4a 00  	andi	a0, s5, 4
800020e4: 63 10 05 02  	bnez	a0, 0x80002104 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800020e8: 13 f5 8a 00  	andi	a0, s5, 8
800020ec: 63 06 05 02  	beqz	a0, 0x80002118 <.LBB4_90+0x2ac>
800020f0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800020f4: 33 05 85 01  	add	a0, a0, s8
800020f8: 13 0c 1c 00  	addi	s8, s8, 1
800020fc: 93 05 00 02  	addi	a1, zero, 32
80002100: 6f 00 40 01  	j	0x80002114 <.LBB4_90+0x2a8>
80002104: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002108: 33 05 85 01  	add	a0, a0, s8
8000210c: 13 0c 1c 00  	addi	s8, s8, 1
80002110: 93 05 b0 02  	addi	a1, zero, 43
80002114: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002118: 33 35 90 00  	snez	a0, s1
8000211c: b3 35 2c 01  	sltu	a1, s8, s2
80002120: 93 c5 15 00  	xori	a1, a1, 1
80002124: 33 65 b5 00  	or	a0, a0, a1
80002128: 93 fa 2a 00  	andi	s5, s5, 2
8000212c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002130: 63 16 05 02  	bnez	a0, 0x8000215c <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002134: b3 04 89 41  	sub	s1, s2, s8
80002138: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000213c: 13 04 16 00  	addi	s0, a2, 1
80002140: 13 05 00 02  	addi	a0, zero, 32
80002144: 93 05 0b 00  	mv	a1, s6
80002148: 93 86 09 00  	mv	a3, s3
8000214c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002150: 93 84 f4 ff  	addi	s1, s1, -1
80002154: 13 06 04 00  	mv	a2, s0
80002158: e3 92 04 fe  	bnez	s1, 0x8000213c <.LBB4_90+0x2d0>
8000215c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002160: 63 0c 0c 02  	beqz	s8, 0x80002198 <.LBB4_90+0x32c>
80002164: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002168: 33 85 8c 01  	add	a0, s9, s8
8000216c: 03 45 05 00  	lbu	a0, 0(a0)
80002170: 13 0d fc ff  	addi	s10, s8, -1
80002174: 93 04 14 00  	addi	s1, s0, 1
80002178: 93 05 0b 00  	mv	a1, s6
8000217c: 13 06 04 00  	mv	a2, s0
80002180: 93 86 09 00  	mv	a3, s3
80002184: e7 80 0b 00  	jalr	s7
80002188: 13 84 04 00  	mv	s0, s1
8000218c: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002190: e3 1c 0d fc  	bnez	s10, 0x80002168 <.LBB4_90+0x2fc>
80002194: 6f 00 80 00  	j	0x8000219c <.LBB4_90+0x330>
80002198: 93 04 04 00  	mv	s1, s0
8000219c: 33 85 44 41  	sub	a0, s1, s4
800021a0: 33 35 25 01  	sltu	a0, a0, s2
800021a4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800021a8: 93 c5 1a 00  	xori	a1, s5, 1
800021ac: 33 e5 a5 00  	or	a0, a1, a0
800021b0: 63 18 05 02  	bnez	a0, 0x800021e0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800021b4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800021b8: 13 84 14 00  	addi	s0, s1, 1
800021bc: 13 05 00 02  	addi	a0, zero, 32
800021c0: 93 05 0b 00  	mv	a1, s6
800021c4: 13 86 04 00  	mv	a2, s1
800021c8: 93 86 09 00  	mv	a3, s3
800021cc: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800021d0: 33 05 8a 00  	add	a0, s4, s0
800021d4: 93 04 04 00  	mv	s1, s0
800021d8: e3 60 25 ff  	bltu	a0, s2, 0x800021b8 <.LBB4_90+0x34c>
800021dc: 6f 00 80 00  	j	0x800021e4 <.LBB4_90+0x378>
800021e0: 13 84 04 00  	mv	s0, s1
; }
800021e4: 13 05 04 00  	mv	a0, s0
800021e8: 07 39 81 02  	fld	fs2, 40(sp)
800021ec: 87 34 01 03  	fld	fs1, 48(sp)
800021f0: 07 34 81 03  	fld	fs0, 56(sp)
800021f4: 03 2d 01 04  	lw	s10, 64(sp)
800021f8: 83 2c 41 04  	lw	s9, 68(sp)
800021fc: 03 2c 81 04  	lw	s8, 72(sp)
80002200: 83 2b c1 04  	lw	s7, 76(sp)
80002204: 03 2b 01 05  	lw	s6, 80(sp)
80002208: 83 2a 41 05  	lw	s5, 84(sp)
8000220c: 03 2a 81 05  	lw	s4, 88(sp)
80002210: 83 29 c1 05  	lw	s3, 92(sp)
80002214: 03 29 01 06  	lw	s2, 96(sp)
80002218: 83 24 41 06  	lw	s1, 100(sp)
8000221c: 03 24 81 06  	lw	s0, 104(sp)
80002220: 83 20 c1 06  	lw	ra, 108(sp)
80002224: 13 01 01 07  	addi	sp, sp, 112
80002228: 67 80 00 00  	ret

8000222c <_etoa>:
; {
8000222c: 13 01 01 f8  	addi	sp, sp, -128
80002230: 23 2e 11 06  	sw	ra, 124(sp)
80002234: 23 2c 81 06  	sw	s0, 120(sp)
80002238: 23 2a 91 06  	sw	s1, 116(sp)
8000223c: 23 28 21 07  	sw	s2, 112(sp)
80002240: 23 26 31 07  	sw	s3, 108(sp)
80002244: 23 24 41 07  	sw	s4, 104(sp)
80002248: 23 22 51 07  	sw	s5, 100(sp)
8000224c: 23 20 61 07  	sw	s6, 96(sp)
80002250: 23 2e 71 05  	sw	s7, 92(sp)
80002254: 23 2c 81 05  	sw	s8, 88(sp)
80002258: 23 2a 91 05  	sw	s9, 84(sp)
8000225c: 23 28 a1 05  	sw	s10, 80(sp)
80002260: 23 26 b1 05  	sw	s11, 76(sp)

80002264 <.LBB5_43>:
80002264: 97 14 00 00  	auipc	s1, 1
80002268: 93 84 44 1f  	addi	s1, s1, 500
8000226c: 87 b0 04 00  	fld	ft1, 0(s1)

80002270 <.LBB5_44>:
80002270: 97 14 00 00  	auipc	s1, 1
80002274: 93 84 04 1f  	addi	s1, s1, 496
80002278: 07 b1 04 00  	fld	ft2, 0(s1)
8000227c: 53 00 a5 22  	fmv.d	ft0, fa0
80002280: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002284: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002288: b3 f4 84 00  	and	s1, s1, s0
8000228c: 93 0a 08 00  	mv	s5, a6
80002290: 13 89 07 00  	mv	s2, a5
80002294: 93 07 07 00  	mv	a5, a4
80002298: 93 89 06 00  	mv	s3, a3
8000229c: 13 0a 06 00  	mv	s4, a2
800022a0: 13 8b 05 00  	mv	s6, a1
800022a4: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800022a8: 63 92 04 06  	bnez	s1, 0x8000230c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800022ac: 13 85 0b 00  	mv	a0, s7
800022b0: 93 05 0b 00  	mv	a1, s6
800022b4: 13 06 0a 00  	mv	a2, s4
800022b8: 93 86 09 00  	mv	a3, s3
800022bc: 53 05 00 22  	fmv.d	fa0, ft0
800022c0: 13 87 07 00  	mv	a4, a5
800022c4: 93 07 09 00  	mv	a5, s2
800022c8: 13 88 0a 00  	mv	a6, s5
800022cc: 83 2d c1 04  	lw	s11, 76(sp)
800022d0: 03 2d 01 05  	lw	s10, 80(sp)
800022d4: 83 2c 41 05  	lw	s9, 84(sp)
800022d8: 03 2c 81 05  	lw	s8, 88(sp)
800022dc: 83 2b c1 05  	lw	s7, 92(sp)
800022e0: 03 2b 01 06  	lw	s6, 96(sp)
800022e4: 83 2a 41 06  	lw	s5, 100(sp)
800022e8: 03 2a 81 06  	lw	s4, 104(sp)
800022ec: 83 29 c1 06  	lw	s3, 108(sp)
800022f0: 03 29 01 07  	lw	s2, 112(sp)
800022f4: 83 24 41 07  	lw	s1, 116(sp)
800022f8: 03 24 81 07  	lw	s0, 120(sp)
800022fc: 83 20 c1 07  	lw	ra, 124(sp)
80002300: 13 01 01 08  	addi	sp, sp, 128
80002304: 17 03 00 00  	auipc	t1, 0
80002308: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
8000230c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002310: 13 f5 0a 40  	andi	a0, s5, 1024
80002314: 13 07 60 00  	addi	a4, zero, 6
80002318: 63 04 05 00  	beqz	a0, 0x80002320 <.LBB5_44+0xb0>
8000231c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002320: 27 30 a1 02  	fsd	fa0, 32(sp)
80002324: 83 25 41 02  	lw	a1, 36(sp)
80002328: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000232c: 93 d6 45 01  	srli	a3, a1, 20
80002330: b7 07 10 00  	lui	a5, 256
80002334: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002338: b3 f5 f5 00  	and	a1, a1, a5
8000233c: 23 2c c1 00  	sw	a2, 24(sp)
80002340: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002344: b3 e5 c5 00  	or	a1, a1, a2
80002348: 23 2e b1 00  	sw	a1, 28(sp)
8000234c: 87 30 81 01  	fld	ft1, 24(sp)

80002350 <.LBB5_45>:
80002350: 97 15 00 00  	auipc	a1, 1
80002354: 93 85 85 11  	addi	a1, a1, 280
80002358: 07 b1 05 00  	fld	ft2, 0(a1)

8000235c <.LBB5_46>:
8000235c: 97 15 00 00  	auipc	a1, 1
80002360: 93 85 45 11  	addi	a1, a1, 276
80002364: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002368: 93 f5 f6 7f  	andi	a1, a3, 2047
8000236c: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002370: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002374: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80002378 <.LBB5_47>:
80002378: 97 15 00 00  	auipc	a1, 1
8000237c: 93 85 05 10  	addi	a1, a1, 256
80002380: 07 b1 05 00  	fld	ft2, 0(a1)

80002384 <.LBB5_48>:
80002384: 97 15 00 00  	auipc	a1, 1
80002388: 93 85 c5 0f  	addi	a1, a1, 252
8000238c: 87 b1 05 00  	fld	ft3, 0(a1)

80002390 <.LBB5_49>:
80002390: 97 15 00 00  	auipc	a1, 1
80002394: 93 85 85 0f  	addi	a1, a1, 248
80002398: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000239c: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800023a0: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800023a4: d3 80 05 d2  	fcvt.d.w	ft1, a1
800023a8: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

800023ac <.LBB5_50>:
800023ac: 17 16 00 00  	auipc	a2, 1
800023b0: 13 06 46 0e  	addi	a2, a2, 228
800023b4: 87 31 06 00  	fld	ft3, 0(a2)

800023b8 <.LBB5_51>:
800023b8: 17 16 00 00  	auipc	a2, 1
800023bc: 13 06 06 0e  	addi	a2, a2, 224
800023c0: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800023c4: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800023c8: 53 01 06 d2  	fcvt.d.w	ft2, a2
800023cc: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800023d0: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800023d4: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800023d8: 13 06 f6 3f  	addi	a2, a2, 1023
800023dc: 23 28 01 00  	sw	zero, 16(sp)
800023e0: 13 16 46 01  	slli	a2, a2, 20
800023e4: 23 2a c1 00  	sw	a2, 20(sp)

800023e8 <.LBB5_52>:
800023e8: 17 16 00 00  	auipc	a2, 1
800023ec: 13 06 06 0c  	addi	a2, a2, 192
800023f0: 87 31 06 00  	fld	ft3, 0(a2)

800023f4 <.LBB5_53>:
800023f4: 17 16 00 00  	auipc	a2, 1
800023f8: 13 06 c6 0b  	addi	a2, a2, 188
800023fc: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002400: 87 32 01 01  	fld	ft5, 16(sp)

80002404 <.LBB5_54>:
80002404: 17 16 00 00  	auipc	a2, 1
80002408: 13 06 c6 09  	addi	a2, a2, 156
8000240c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002410: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002414 <.LBB5_55>:
80002414: 17 16 00 00  	auipc	a2, 1
80002418: 13 06 46 0a  	addi	a2, a2, 164
8000241c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002420: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002424: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80002428: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
8000242c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002430: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002434: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002438: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
8000243c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002440: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002444: 63 0a 06 00  	beqz	a2, 0x80002458 <.LBB5_56+0x10>

80002448 <.LBB5_56>:
80002448: 97 16 00 00  	auipc	a3, 1
8000244c: 93 86 86 07  	addi	a3, a3, 120
80002450: 07 b1 06 00  	fld	ft2, 0(a3)
80002454: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80002458: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
8000245c: 93 05 34 06  	addi	a1, s0, 99
80002460: 93 b5 75 0c  	sltiu	a1, a1, 199
80002464: 13 06 50 00  	addi	a2, zero, 5
80002468: b7 16 00 00  	lui	a3, 1
8000246c: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002470: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002474: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80002478: 63 84 06 06  	beqz	a3, 0x800024e0 <.LBB5_58+0x58>

8000247c <.LBB5_57>:
8000247c: 97 15 00 00  	auipc	a1, 1
80002480: 93 85 c5 04  	addi	a1, a1, 76
80002484: 07 b1 05 00  	fld	ft2, 0(a1)

80002488 <.LBB5_58>:
80002488: 97 15 00 00  	auipc	a1, 1
8000248c: 93 85 85 04  	addi	a1, a1, 72
80002490: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80002494: d3 15 25 a2  	flt.d	a1, fa0, ft2
80002498: 53 86 a1 a2  	fle.d	a2, ft3, fa0
8000249c: b3 e5 c5 00  	or	a1, a1, a2
800024a0: 63 98 05 00  	bnez	a1, 0x800024b0 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800024a4: 63 40 e4 02  	blt	s0, a4, 0x800024c4 <.LBB5_58+0x3c>
800024a8: 13 07 00 00  	mv	a4, zero
800024ac: 6f 00 00 02  	j	0x800024cc <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800024b0: 63 06 07 02  	beqz	a4, 0x800024dc <.LBB5_58+0x54>
800024b4: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800024b8: 13 45 15 00  	xori	a0, a0, 1
800024bc: 33 07 a7 40  	sub	a4, a4, a0
800024c0: 6f 00 00 02  	j	0x800024e0 <.LBB5_58+0x58>
800024c4: 13 45 f4 ff  	not	a0, s0
800024c8: 33 07 a7 00  	add	a4, a4, a0
800024cc: 13 04 00 00  	mv	s0, zero
800024d0: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800024d4: 93 ea 0a 40  	ori	s5, s5, 1024
800024d8: 6f 00 80 00  	j	0x800024e0 <.LBB5_58+0x58>
800024dc: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800024e0: b3 05 99 41  	sub	a1, s2, s9
800024e4: 33 36 b9 00  	sltu	a2, s2, a1
800024e8: 13 05 00 00  	mv	a0, zero
800024ec: 63 14 06 00  	bnez	a2, 0x800024f4 <.LBB5_58+0x6c>
800024f0: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800024f4: 93 07 00 00  	mv	a5, zero
800024f8: 93 d5 1a 00  	srli	a1, s5, 1
800024fc: 93 f4 15 00  	andi	s1, a1, 1
80002500: b3 35 90 01  	snez	a1, s9
80002504: b3 f5 b4 00  	and	a1, s1, a1
80002508: 53 01 00 d2  	fcvt.d.w	ft2, zero
8000250c: 63 94 05 00  	bnez	a1, 0x80002514 <.LBB5_58+0x8c>
80002510: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002514: 93 35 14 00  	seqz	a1, s0
80002518: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
8000251c: 63 94 05 00  	bnez	a1, 0x80002524 <.LBB5_58+0x9c>
80002520: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002524: 63 04 05 00  	beqz	a0, 0x8000252c <.LBB5_58+0xa4>
80002528: 53 15 a5 22  	fneg.d	fa0, fa0
8000252c: 37 f5 ff ff  	lui	a0, 1048575
80002530: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002534: 33 f8 aa 00  	and	a6, s5, a0
80002538: 13 85 0b 00  	mv	a0, s7
8000253c: 93 05 0b 00  	mv	a1, s6
80002540: 13 06 0a 00  	mv	a2, s4
80002544: 93 86 09 00  	mv	a3, s3
80002548: 97 f0 ff ff  	auipc	ra, 1048575
8000254c: e7 80 40 60  	jalr	1540(ra)
80002550: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80002554: 63 82 0c 18  	beqz	s9, 0x800026d8 <.LBB5_58+0x250>
80002558: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
8000255c: 13 f5 0a 02  	andi	a0, s5, 32
80002560: 13 45 55 06  	xori	a0, a0, 101
80002564: 93 05 0b 00  	mv	a1, s6
80002568: 13 06 0d 00  	mv	a2, s10
8000256c: 93 86 09 00  	mv	a3, s3
80002570: e7 80 0b 00  	jalr	s7
80002574: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80002578: 93 5a f4 01  	srli	s5, s0, 31
8000257c: 13 55 f4 41  	srai	a0, s0, 31
80002580: b3 05 a4 00  	add	a1, s0, a0
80002584: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80002588: 93 8d dc ff  	addi	s11, s9, -3
8000258c: 13 04 f0 01  	addi	s0, zero, 31
80002590: 37 d5 cc cc  	lui	a0, 838861
80002594: 13 05 d5 cc  	addi	a0, a0, -819
80002598: 13 08 a0 00  	addi	a6, zero, 10
8000259c: 93 08 c1 02  	addi	a7, sp, 44
800025a0: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800025a4: b3 37 a7 02  	mulhu	a5, a4, a0
800025a8: 93 d5 37 00  	srli	a1, a5, 3
800025ac: b3 87 05 03  	mul	a5, a1, a6
800025b0: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800025b4: 13 e6 07 03  	ori	a2, a5, 48
800025b8: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800025bc: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800025c0: 13 0c 1c 00  	addi	s8, s8, 1
800025c4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800025c8: 33 b6 e2 00  	sltu	a2, t0, a4
800025cc: 33 f6 c7 00  	and	a2, a5, a2
800025d0: 93 8d fd ff  	addi	s11, s11, -1
800025d4: 13 04 f4 ff  	addi	s0, s0, -1
800025d8: 13 87 05 00  	mv	a4, a1
800025dc: e3 14 06 fc  	bnez	a2, 0x800025a4 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800025e0: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800025e4: 33 35 ac 00  	sltu	a0, s8, a0
800025e8: 13 45 15 00  	xori	a0, a0, 1
800025ec: 93 c5 17 00  	xori	a1, a5, 1
800025f0: 33 e5 a5 00  	or	a0, a1, a0
800025f4: 63 12 05 04  	bnez	a0, 0x80002638 <.LBB5_58+0x1b0>
800025f8: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800025fc: b3 85 8c 41  	sub	a1, s9, s8
80002600: 93 85 d5 ff  	addi	a1, a1, -3
80002604: 13 06 f0 01  	addi	a2, zero, 31
80002608: 33 06 86 41  	sub	a2, a2, s8
8000260c: 33 05 85 01  	add	a0, a0, s8
80002610: 63 e4 c5 00  	bltu	a1, a2, 0x80002618 <.LBB5_58+0x190>
80002614: 93 05 06 00  	mv	a1, a2
80002618: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000261c: 93 05 00 03  	addi	a1, zero, 48
80002620: 97 e0 ff ff  	auipc	ra, 1048574
80002624: e7 80 00 9e  	jalr	-1568(ra)
;   if (flags & FLAGS_HASH) {
80002628: 63 e4 8d 00  	bltu	s11, s0, 0x80002630 <.LBB5_58+0x1a8>
8000262c: 93 0d 04 00  	mv	s11, s0
80002630: 33 85 8d 01  	add	a0, s11, s8
80002634: 13 0c 15 00  	addi	s8, a0, 1
80002638: 83 2c c1 00  	lw	s9, 12(sp)
8000263c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002640: 63 60 85 03  	bltu	a0, s8, 0x80002660 <.LBB5_58+0x1d8>
80002644: 13 05 c1 02  	addi	a0, sp, 44
80002648: 33 05 85 01  	add	a0, a0, s8
8000264c: 93 05 d0 02  	addi	a1, zero, 45
80002650: 63 94 0a 00  	bnez	s5, 0x80002658 <.LBB5_58+0x1d0>
80002654: 93 05 b0 02  	addi	a1, zero, 43
80002658: 13 0c 1c 00  	addi	s8, s8, 1
8000265c: 23 00 b5 00  	sb	a1, 0(a0)
80002660: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80002664: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80002668: 33 85 8a 01  	add	a0, s5, s8
8000266c: 03 45 05 00  	lbu	a0, 0(a0)
80002670: 13 06 04 00  	mv	a2, s0
80002674: 93 04 fc ff  	addi	s1, s8, -1
80002678: 13 04 14 00  	addi	s0, s0, 1
8000267c: 93 05 0b 00  	mv	a1, s6
80002680: 93 86 09 00  	mv	a3, s3
80002684: e7 80 0b 00  	jalr	s7
80002688: 13 8c 04 00  	mv	s8, s1
;   while (len) {
8000268c: e3 9e 04 fc  	bnez	s1, 0x80002668 <.LBB5_58+0x1e0>
80002690: 33 05 44 41  	sub	a0, s0, s4
80002694: 33 35 25 01  	sltu	a0, a0, s2
80002698: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
8000269c: 93 c5 1c 00  	xori	a1, s9, 1
800026a0: 33 e5 a5 00  	or	a0, a1, a0
800026a4: 63 18 05 02  	bnez	a0, 0x800026d4 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800026a8: b3 04 40 41  	neg	s1, s4
800026ac: 13 0d 14 00  	addi	s10, s0, 1
800026b0: 13 05 00 02  	addi	a0, zero, 32
800026b4: 93 05 0b 00  	mv	a1, s6
800026b8: 13 06 04 00  	mv	a2, s0
800026bc: 93 86 09 00  	mv	a3, s3
800026c0: e7 80 0b 00  	jalr	s7
800026c4: 33 85 a4 01  	add	a0, s1, s10
800026c8: 13 04 0d 00  	mv	s0, s10
800026cc: e3 60 25 ff  	bltu	a0, s2, 0x800026ac <.LBB5_58+0x224>
800026d0: 6f 00 80 00  	j	0x800026d8 <.LBB5_58+0x250>
800026d4: 13 0d 04 00  	mv	s10, s0
; }
800026d8: 13 05 0d 00  	mv	a0, s10
800026dc: 83 2d c1 04  	lw	s11, 76(sp)
800026e0: 03 2d 01 05  	lw	s10, 80(sp)
800026e4: 83 2c 41 05  	lw	s9, 84(sp)
800026e8: 03 2c 81 05  	lw	s8, 88(sp)
800026ec: 83 2b c1 05  	lw	s7, 92(sp)
800026f0: 03 2b 01 06  	lw	s6, 96(sp)
800026f4: 83 2a 41 06  	lw	s5, 100(sp)
800026f8: 03 2a 81 06  	lw	s4, 104(sp)
800026fc: 83 29 c1 06  	lw	s3, 108(sp)
80002700: 03 29 01 07  	lw	s2, 112(sp)
80002704: 83 24 41 07  	lw	s1, 116(sp)
80002708: 03 24 81 07  	lw	s0, 120(sp)
8000270c: 83 20 c1 07  	lw	ra, 124(sp)
80002710: 13 01 01 08  	addi	sp, sp, 128
80002714: 67 80 00 00  	ret

80002718 <_ntoa_format>:
; {
80002718: 13 01 01 fc  	addi	sp, sp, -64
8000271c: 23 2e 11 02  	sw	ra, 60(sp)
80002720: 23 2c 81 02  	sw	s0, 56(sp)
80002724: 23 2a 91 02  	sw	s1, 52(sp)
80002728: 23 28 21 03  	sw	s2, 48(sp)
8000272c: 23 26 31 03  	sw	s3, 44(sp)
80002730: 23 24 41 03  	sw	s4, 40(sp)
80002734: 23 22 51 03  	sw	s5, 36(sp)
80002738: 23 20 61 03  	sw	s6, 32(sp)
8000273c: 23 2e 71 01  	sw	s7, 28(sp)
80002740: 23 2c 81 01  	sw	s8, 24(sp)
80002744: 23 2a 91 01  	sw	s9, 20(sp)
80002748: 23 28 a1 01  	sw	s10, 16(sp)
8000274c: 23 26 b1 01  	sw	s11, 12(sp)
80002750: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80002754: 93 fa 2e 00  	andi	s5, t4, 2
80002758: 13 09 0e 00  	mv	s2, t3
8000275c: 13 8d 03 00  	mv	s10, t2
80002760: 93 8c 08 00  	mv	s9, a7
80002764: 13 8c 07 00  	mv	s8, a5
80002768: 93 89 06 00  	mv	s3, a3
8000276c: 13 0a 06 00  	mv	s4, a2
80002770: 13 8b 05 00  	mv	s6, a1
80002774: 93 0d 05 00  	mv	s11, a0
80002778: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
8000277c: 63 9e 0a 0c  	bnez	s5, 0x80002858 <_ntoa_format+0x140>
80002780: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002784: 63 0e 09 00  	beqz	s2, 0x800027a0 <_ntoa_format+0x88>
80002788: 63 0e 04 00  	beqz	s0, 0x800027a4 <_ntoa_format+0x8c>
8000278c: 13 f5 cb 00  	andi	a0, s7, 12
80002790: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002794: 33 65 05 01  	or	a0, a0, a6
80002798: 33 09 a9 40  	sub	s2, s2, a0
8000279c: 6f 00 80 00  	j	0x800027a4 <_ntoa_format+0x8c>
800027a0: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800027a4: 33 35 ac 01  	sltu	a0, s8, s10
800027a8: 93 45 15 00  	xori	a1, a0, 1
800027ac: 13 05 f0 01  	addi	a0, zero, 31
800027b0: 33 36 85 01  	sltu	a2, a0, s8
800027b4: b3 65 b6 00  	or	a1, a2, a1
800027b8: 63 94 05 04  	bnez	a1, 0x80002800 <_ntoa_format+0xe8>
800027bc: 23 22 51 01  	sw	s5, 4(sp)
800027c0: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800027c4: 93 45 fc ff  	not	a1, s8
800027c8: b3 85 a5 01  	add	a1, a1, s10
800027cc: 33 06 85 41  	sub	a2, a0, s8
800027d0: 33 05 87 01  	add	a0, a4, s8
800027d4: 63 e4 c5 00  	bltu	a1, a2, 0x800027dc <_ntoa_format+0xc4>
800027d8: 93 05 06 00  	mv	a1, a2
800027dc: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800027e0: 93 05 00 03  	addi	a1, zero, 48
800027e4: 13 86 04 00  	mv	a2, s1
800027e8: 97 e0 ff ff  	auipc	ra, 1048574
800027ec: e7 80 80 81  	jalr	-2024(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800027f0: 33 8c 84 01  	add	s8, s1, s8
800027f4: 03 27 81 00  	lw	a4, 8(sp)
800027f8: 13 88 0a 00  	mv	a6, s5
800027fc: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002800: 63 0c 04 04  	beqz	s0, 0x80002858 <_ntoa_format+0x140>
80002804: 33 35 2c 01  	sltu	a0, s8, s2
80002808: 93 45 15 00  	xori	a1, a0, 1
8000280c: 13 05 f0 01  	addi	a0, zero, 31
80002810: 33 36 85 01  	sltu	a2, a0, s8
80002814: b3 e5 c5 00  	or	a1, a1, a2
80002818: 63 90 05 04  	bnez	a1, 0x80002858 <_ntoa_format+0x140>
8000281c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002820: 93 45 fc ff  	not	a1, s8
80002824: b3 05 b9 00  	add	a1, s2, a1
80002828: 33 06 85 41  	sub	a2, a0, s8
8000282c: 33 05 87 01  	add	a0, a4, s8
80002830: 63 e4 c5 00  	bltu	a1, a2, 0x80002838 <_ntoa_format+0x120>
80002834: 93 05 06 00  	mv	a1, a2
80002838: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000283c: 93 05 00 03  	addi	a1, zero, 48
80002840: 13 86 04 00  	mv	a2, s1
80002844: 97 d0 ff ff  	auipc	ra, 1048573
80002848: e7 80 c0 7b  	jalr	1980(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000284c: 33 8c 84 01  	add	s8, s1, s8
80002850: 03 27 81 00  	lw	a4, 8(sp)
80002854: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80002858: 13 f5 0b 01  	andi	a0, s7, 16
8000285c: 63 02 05 0e  	beqz	a0, 0x80002940 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002860: 13 f5 0b 40  	andi	a0, s7, 1024
80002864: 13 55 a5 00  	srli	a0, a0, 10
80002868: 93 35 1c 00  	seqz	a1, s8
8000286c: 33 65 b5 00  	or	a0, a0, a1
80002870: 63 1e 05 02  	bnez	a0, 0x800028ac <_ntoa_format+0x194>
80002874: 33 45 ac 01  	xor	a0, s8, s10
80002878: 33 35 a0 00  	snez	a0, a0
8000287c: b3 45 2c 01  	xor	a1, s8, s2
80002880: b3 35 b0 00  	snez	a1, a1
80002884: 33 75 b5 00  	and	a0, a0, a1
80002888: 63 12 05 02  	bnez	a0, 0x800028ac <_ntoa_format+0x194>
;       len--;
8000288c: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002890: b3 35 a0 00  	snez	a1, a0
80002894: 13 86 0c ff  	addi	a2, s9, -16
80002898: 13 36 16 00  	seqz	a2, a2
8000289c: b3 75 b6 00  	and	a1, a2, a1
800028a0: 63 84 05 00  	beqz	a1, 0x800028a8 <_ntoa_format+0x190>
800028a4: 13 05 ec ff  	addi	a0, s8, -2
800028a8: 13 0c 05 00  	mv	s8, a0
800028ac: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800028b0: 63 96 ac 02  	bne	s9, a0, 0x800028dc <_ntoa_format+0x1c4>
800028b4: 13 f5 0b 02  	andi	a0, s7, 32
800028b8: 93 55 55 00  	srli	a1, a0, 5
800028bc: 13 06 f0 01  	addi	a2, zero, 31
800028c0: 33 36 86 01  	sltu	a2, a2, s8
800028c4: b3 e5 c5 00  	or	a1, a1, a2
800028c8: 63 9e 05 02  	bnez	a1, 0x80002904 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800028cc: 33 05 87 01  	add	a0, a4, s8
800028d0: 13 0c 1c 00  	addi	s8, s8, 1
800028d4: 93 05 80 07  	addi	a1, zero, 120
800028d8: 6f 00 c0 04  	j	0x80002924 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800028dc: 13 85 ec ff  	addi	a0, s9, -2
800028e0: 33 35 a0 00  	snez	a0, a0
800028e4: 93 05 f0 01  	addi	a1, zero, 31
800028e8: b3 b5 85 01  	sltu	a1, a1, s8
800028ec: 33 65 b5 00  	or	a0, a0, a1
800028f0: 63 1c 05 02  	bnez	a0, 0x80002928 <_ntoa_format+0x210>
;       buf[len++] = 'b';
800028f4: 33 05 87 01  	add	a0, a4, s8
800028f8: 13 0c 1c 00  	addi	s8, s8, 1
800028fc: 93 05 20 06  	addi	a1, zero, 98
80002900: 6f 00 40 02  	j	0x80002924 <_ntoa_format+0x20c>
80002904: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002908: 13 35 15 00  	seqz	a0, a0
8000290c: 93 c5 15 00  	xori	a1, a1, 1
80002910: 33 65 b5 00  	or	a0, a0, a1
80002914: 63 1a 05 00  	bnez	a0, 0x80002928 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80002918: 33 05 87 01  	add	a0, a4, s8
8000291c: 13 0c 1c 00  	addi	s8, s8, 1
80002920: 93 05 80 05  	addi	a1, zero, 88
80002924: 23 00 b5 00  	sb	a1, 0(a0)
80002928: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000292c: 63 60 85 07  	bltu	a0, s8, 0x8000298c <_ntoa_format+0x274>
;       buf[len++] = '0';
80002930: 33 05 87 01  	add	a0, a4, s8
80002934: 13 0c 1c 00  	addi	s8, s8, 1
80002938: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
8000293c: 23 00 b5 00  	sb	a1, 0(a0)
80002940: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002944: 63 64 85 05  	bltu	a0, s8, 0x8000298c <_ntoa_format+0x274>
;     if (negative) {
80002948: 63 0a 08 00  	beqz	a6, 0x8000295c <_ntoa_format+0x244>
;       buf[len++] = '-';
8000294c: 33 05 87 01  	add	a0, a4, s8
80002950: 13 0c 1c 00  	addi	s8, s8, 1
80002954: 93 05 d0 02  	addi	a1, zero, 45
80002958: 6f 00 00 03  	j	0x80002988 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
8000295c: 13 f5 4b 00  	andi	a0, s7, 4
80002960: 63 1e 05 00  	bnez	a0, 0x8000297c <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80002964: 13 f5 8b 00  	andi	a0, s7, 8
80002968: 63 02 05 02  	beqz	a0, 0x8000298c <_ntoa_format+0x274>
;       buf[len++] = ' ';
8000296c: 33 05 87 01  	add	a0, a4, s8
80002970: 13 0c 1c 00  	addi	s8, s8, 1
80002974: 93 05 00 02  	addi	a1, zero, 32
80002978: 6f 00 00 01  	j	0x80002988 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000297c: 33 05 87 01  	add	a0, a4, s8
80002980: 13 0c 1c 00  	addi	s8, s8, 1
80002984: 93 05 b0 02  	addi	a1, zero, 43
80002988: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000298c: 13 f5 3b 00  	andi	a0, s7, 3
80002990: 33 35 a0 00  	snez	a0, a0
80002994: b3 35 2c 01  	sltu	a1, s8, s2
80002998: 93 c5 15 00  	xori	a1, a1, 1
8000299c: 33 65 b5 00  	or	a0, a0, a1
800029a0: 13 04 0a 00  	mv	s0, s4
800029a4: 63 16 05 02  	bnez	a0, 0x800029d0 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800029a8: b3 04 89 41  	sub	s1, s2, s8
800029ac: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800029b0: 13 04 16 00  	addi	s0, a2, 1
800029b4: 13 05 00 02  	addi	a0, zero, 32
800029b8: 93 05 0b 00  	mv	a1, s6
800029bc: 93 86 09 00  	mv	a3, s3
800029c0: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800029c4: 93 84 f4 ff  	addi	s1, s1, -1
800029c8: 13 06 04 00  	mv	a2, s0
800029cc: e3 92 04 fe  	bnez	s1, 0x800029b0 <_ntoa_format+0x298>
800029d0: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800029d4: 63 0e 0c 02  	beqz	s8, 0x80002a10 <_ntoa_format+0x2f8>
800029d8: 03 25 81 00  	lw	a0, 8(sp)
800029dc: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800029e0: 33 85 8b 01  	add	a0, s7, s8
800029e4: 03 45 05 00  	lbu	a0, 0(a0)
800029e8: 93 0c fc ff  	addi	s9, s8, -1
800029ec: 93 04 14 00  	addi	s1, s0, 1
800029f0: 93 05 0b 00  	mv	a1, s6
800029f4: 13 06 04 00  	mv	a2, s0
800029f8: 93 86 09 00  	mv	a3, s3
800029fc: e7 80 0d 00  	jalr	s11
80002a00: 13 84 04 00  	mv	s0, s1
80002a04: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002a08: e3 9c 0c fc  	bnez	s9, 0x800029e0 <_ntoa_format+0x2c8>
80002a0c: 6f 00 80 00  	j	0x80002a14 <_ntoa_format+0x2fc>
80002a10: 93 04 04 00  	mv	s1, s0
80002a14: 33 85 44 41  	sub	a0, s1, s4
80002a18: 33 35 25 01  	sltu	a0, a0, s2
80002a1c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002a20: 93 c5 1a 00  	xori	a1, s5, 1
80002a24: 33 e5 a5 00  	or	a0, a1, a0
80002a28: 63 18 05 02  	bnez	a0, 0x80002a58 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002a2c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002a30: 13 84 14 00  	addi	s0, s1, 1
80002a34: 13 05 00 02  	addi	a0, zero, 32
80002a38: 93 05 0b 00  	mv	a1, s6
80002a3c: 13 86 04 00  	mv	a2, s1
80002a40: 93 86 09 00  	mv	a3, s3
80002a44: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002a48: 33 05 8a 00  	add	a0, s4, s0
80002a4c: 93 04 04 00  	mv	s1, s0
80002a50: e3 60 25 ff  	bltu	a0, s2, 0x80002a30 <_ntoa_format+0x318>
80002a54: 6f 00 80 00  	j	0x80002a5c <_ntoa_format+0x344>
80002a58: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002a5c: 13 05 04 00  	mv	a0, s0
80002a60: 83 2d c1 00  	lw	s11, 12(sp)
80002a64: 03 2d 01 01  	lw	s10, 16(sp)
80002a68: 83 2c 41 01  	lw	s9, 20(sp)
80002a6c: 03 2c 81 01  	lw	s8, 24(sp)
80002a70: 83 2b c1 01  	lw	s7, 28(sp)
80002a74: 03 2b 01 02  	lw	s6, 32(sp)
80002a78: 83 2a 41 02  	lw	s5, 36(sp)
80002a7c: 03 2a 81 02  	lw	s4, 40(sp)
80002a80: 83 29 c1 02  	lw	s3, 44(sp)
80002a84: 03 29 01 03  	lw	s2, 48(sp)
80002a88: 83 24 41 03  	lw	s1, 52(sp)
80002a8c: 03 24 81 03  	lw	s0, 56(sp)
80002a90: 83 20 c1 03  	lw	ra, 60(sp)
80002a94: 13 01 01 04  	addi	sp, sp, 64
80002a98: 67 80 00 00  	ret

80002a9c <_snrt_init_team>:
;     team->base.root = team;
80002a9c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002aa0: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002aa4: 03 23 87 00  	lw	t1, 8(a4)
80002aa8: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002aac: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002ab0: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002ab4: 83 22 47 00  	lw	t0, 4(a4)
80002ab8: 33 88 08 03  	mul	a6, a7, a6
80002abc: 33 05 58 02  	mul	a0, a6, t0
80002ac0: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002ac4: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002ac8: 33 85 68 40  	sub	a0, a7, t1
80002acc: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002ad0: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002ad4: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002ad8: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002adc: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002ae0: 03 25 87 01  	lw	a0, 24(a4)
80002ae4: b7 05 00 10  	lui	a1, 65536
80002ae8: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002aec: 23 a2 07 02  	sw	zero, 36(a5)
80002af0: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002af4: 03 25 07 02  	lw	a0, 32(a4)
80002af8: 83 25 47 02  	lw	a1, 36(a4)
80002afc: 23 a4 a7 02  	sw	a0, 40(a5)
80002b00: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002b04: 23 a8 c7 02  	sw	a2, 48(a5)
80002b08: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002b0c: 23 ac d7 02  	sw	a3, 56(a5)
80002b10: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002b14: 03 25 07 01  	lw	a0, 16(a4)
80002b18: 33 08 a6 00  	add	a6, a2, a0
80002b1c: 93 05 08 19  	addi	a1, a6, 400
80002b20: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002b24: b3 32 a8 00  	sltu	t0, a6, a0
80002b28: 93 55 15 00  	srli	a1, a0, 1
80002b2c: 33 03 b8 00  	add	t1, a6, a1
80002b30: b3 35 03 01  	sltu	a1, t1, a6
80002b34: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80002b38: 23 a0 67 04  	sw	t1, 64(a5)
80002b3c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002b40: 13 15 15 00  	slli	a0, a0, 1
80002b44: b3 05 c5 00  	add	a1, a0, a2
80002b48: 33 b5 a5 00  	sltu	a0, a1, a0
80002b4c: 23 a4 b7 04  	sw	a1, 72(a5)
80002b50: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80002b54: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80002b58: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80002b5c: 37 05 00 00  	lui	a0, 0
80002b60: 33 05 45 00  	add	a0, a0, tp
80002b64: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002b68: 03 a5 07 00  	lw	a0, 0(a5)
80002b6c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002b70: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002b74: b3 85 b8 40  	sub	a1, a7, a1
80002b78: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80002b7c: b7 05 00 00  	lui	a1, 0
80002b80: b3 85 45 00  	add	a1, a1, tp
80002b84: 23 a2 a5 00  	sw	a0, 4(a1)
80002b88: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80002b8c: 33 85 a8 02  	mul	a0, a7, a0

80002b90 <.LBB0_1>:
80002b90: 97 15 00 00  	auipc	a1, 1
80002b94: 93 85 c5 94  	addi	a1, a1, -1716
80002b98: 33 05 b5 00  	add	a0, a0, a1
80002b9c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80002ba0: 83 28 07 03  	lw	a7, 48(a4)
80002ba4: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80002ba8: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80002bac: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002bb0: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80002bb4: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80002bb8: 13 05 76 00  	addi	a0, a2, 7
80002bbc: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002bc0: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002bc4: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80002bc8: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80002bcc: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002bd0: 03 a5 05 00  	lw	a0, 0(a1)
80002bd4: 13 05 f5 44  	addi	a0, a0, 1103
80002bd8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80002bdc: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002be0: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002be4: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80002be8: 37 05 00 00  	lui	a0, 0
80002bec: 33 05 45 00  	add	a0, a0, tp
80002bf0: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002bf4: 37 05 00 00  	lui	a0, 0
80002bf8: 33 05 45 00  	add	a0, a0, tp
80002bfc: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002c00: 67 80 00 00  	ret

80002c04 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002c04: 37 05 00 00  	lui	a0, 0
80002c08: 33 05 45 00  	add	a0, a0, tp
80002c0c: 03 25 05 00  	lw	a0, 0(a0)
80002c10: 03 25 05 00  	lw	a0, 0(a0)
80002c14: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002c18: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002c1c: 33 85 a5 40  	sub	a0, a1, a0
80002c20: 67 80 00 00  	ret

80002c24 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002c24: 37 05 00 00  	lui	a0, 0
80002c28: 33 05 45 00  	add	a0, a0, tp
80002c2c: 03 25 05 00  	lw	a0, 0(a0)
80002c30: 03 25 05 00  	lw	a0, 0(a0)
80002c34: 03 25 05 07  	lw	a0, 112(a0)
80002c38: 67 80 00 00  	ret

80002c3c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80002c3c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002c40: 63 44 05 00  	bltz	a0, 0x80002c48 <__snrt_isr+0xc>
;         while (1)
80002c44: 6f 00 00 00  	j	0x80002c44 <__snrt_isr+0x8>
80002c48: b7 05 00 80  	lui	a1, 524288
80002c4c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80002c50: 33 75 b5 00  	and	a0, a0, a1
80002c54: 13 05 d5 ff  	addi	a0, a0, -3
80002c58: 93 55 25 00  	srli	a1, a0, 2
80002c5c: 13 15 e5 01  	slli	a0, a0, 30
80002c60: 33 65 b5 00  	or	a0, a0, a1
80002c64: 93 05 40 00  	addi	a1, zero, 4
80002c68: 63 0a b5 06  	beq	a0, a1, 0x80002cdc <.LBB1_7+0x58>
80002c6c: 63 1a 05 08  	bnez	a0, 0x80002d00 <.LBB1_7+0x7c>
80002c70: 37 05 00 00  	lui	a0, 0
80002c74: 33 05 45 00  	add	a0, a0, tp
80002c78: 03 25 05 00  	lw	a0, 0(a0)
80002c7c: 03 25 05 00  	lw	a0, 0(a0)
80002c80: f3 25 40 f1  	csrr	a1, mhartid

80002c84 <.LBB1_7>:
;     asm volatile(
80002c84: 17 16 00 00  	auipc	a2, 1
80002c88: 13 06 46 85  	addi	a2, a2, -1964
80002c8c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80002c90: 93 06 06 00  	mv	a3, a2
80002c94: 93 02 10 00  	addi	t0, zero, 1
80002c98: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80002c9c: e3 9e 02 fe  	bnez	t0, 0x80002c98 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002ca0: b7 06 00 00  	lui	a3, 0
80002ca4: b3 86 46 00  	add	a3, a3, tp
80002ca8: 83 a6 86 00  	lw	a3, 8(a3)
80002cac: 33 85 a5 40  	sub	a0, a1, a0
80002cb0: 93 55 35 00  	srli	a1, a0, 3
80002cb4: 93 f5 c5 ff  	andi	a1, a1, -4
80002cb8: b3 85 b6 00  	add	a1, a3, a1
80002cbc: 83 a6 05 00  	lw	a3, 0(a1)
80002cc0: 13 07 10 00  	addi	a4, zero, 1
80002cc4: 33 15 a7 00  	sll	a0, a4, a0
80002cc8: 13 45 f5 ff  	not	a0, a0
80002ccc: 33 f5 a6 00  	and	a0, a3, a0
80002cd0: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002cd4: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002cd8: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002cdc: 37 05 00 00  	lui	a0, 0
80002ce0: 33 05 45 00  	add	a0, a0, tp
80002ce4: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002ce8: b7 05 00 00  	lui	a1, 0
80002cec: b3 85 45 00  	add	a1, a1, tp
80002cf0: 83 a5 c5 00  	lw	a1, 12(a1)
80002cf4: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002cf8: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002cfc: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002d00: 67 80 00 00  	ret

Disassembly of section .init:

80002d10 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80002d10: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80002d14: 93 81 81 ef  	addi	gp, gp, -264

80002d18 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80002d18: 97 00 00 00  	auipc	ra, 0
80002d1c: e7 80 40 3c  	jalr	964(ra)

80002d20 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002d20: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002d24: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002d28: 97 00 00 00  	auipc	ra, 0
80002d2c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002d30: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002d34: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002d38: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002d3c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002d40: 63 92 02 02  	bnez	t0, 0x80002d64 <snrt.crt0.init_registers>

80002d44 <.Lpcrel_hi0>:
;     la        t0, _edata
80002d44: 97 02 00 00  	auipc	t0, 0
80002d48: 93 82 42 79  	addi	t0, t0, 1940

80002d4c <.Lpcrel_hi1>:
;     la        t1, _end
80002d4c: 17 03 00 00  	auipc	t1, 0
80002d50: 13 03 03 79  	addi	t1, t1, 1936
;     bge       t0, t1, 2f
80002d54: 63 d8 62 00  	bge	t0, t1, 0x80002d64 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002d58: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002d5c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002d60: e3 cc 62 fe  	blt	t0, t1, 0x80002d58 <.Lpcrel_hi1+0xc>

80002d64 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002d64: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002d68: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002d6c: 63 82 02 08  	beqz	t0, 0x80002df0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002d70: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002d74: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002d78: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002d7c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002d80: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002d84: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002d88: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80002d8c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002d90: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002d94: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002d98: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80002d9c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002da0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002da4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002da8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80002dac: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002db0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002db4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002db8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80002dbc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002dc0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002dc4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002dc8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80002dcc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002dd0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002dd4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002dd8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80002ddc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002de0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002de4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002de8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80002dec: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002df0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002df0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002df4: 23 a0 06 00  	sw	zero, 0(a3)

80002df8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002df8: 97 02 00 00  	auipc	t0, 0
80002dfc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80002e00: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80002e04: 93 87 06 00  	mv	a5, a3

80002e08 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80002e08: 97 03 00 00  	auipc	t2, 0
80002e0c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80002e10: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80002e14: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80002e18: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80002e1c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80002e20: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80002e24: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80002e28: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80002e2c: b3 86 66 40  	sub	a3, a3, t1

80002e30 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80002e30: 97 02 00 00  	auipc	t0, 0
80002e34: 93 82 82 5d  	addi	t0, t0, 1496

80002e38 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80002e38: 17 03 00 00  	auipc	t1, 0
80002e3c: 13 03 03 5d  	addi	t1, t1, 1488

80002e40 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80002e40: 97 03 00 00  	auipc	t2, 0
80002e44: 93 83 83 5c  	addi	t2, t2, 1480

80002e48 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80002e48: 17 0e 00 00  	auipc	t3, 0
80002e4c: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80002e50: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80002e54: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80002e58: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80002e5c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80002e60: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80002e64: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80002e68: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80002e6c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80002e70: 63 dc 62 00  	bge	t0, t1, 0x80002e88 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80002e74: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80002e78: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80002e7c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002e80: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80002e84: e3 c8 62 fe  	blt	t0, t1, 0x80002e74 <.Lpcrel_hi7+0x2c>

80002e88 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80002e88: 97 02 00 00  	auipc	t0, 0
80002e8c: 93 82 02 58  	addi	t0, t0, 1408

80002e90 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80002e90: 17 03 00 00  	auipc	t1, 0
80002e94: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
80002e98: 63 da 62 00  	bge	t0, t1, 0x80002eac <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80002e9c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80002ea0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002ea4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80002ea8: e3 ca 72 fe  	blt	t0, t2, 0x80002e9c <.Lpcrel_hi9+0xc>

80002eac <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80002eac: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80002eb0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80002eb4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80002eb8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80002ebc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80002ec0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80002ec4: 97 00 00 00  	auipc	ra, 0
80002ec8: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
80002ecc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80002ed0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80002ed4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80002ed8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80002edc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80002ee0: 13 01 41 01  	addi	sp, sp, 20

80002ee4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80002ee4: 97 02 00 00  	auipc	t0, 0
80002ee8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80002eec: 73 90 52 30  	csrw	mtvec, t0

80002ef0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80002ef0: 97 00 00 00  	auipc	ra, 0
80002ef4: e7 80 00 22  	jalr	544(ra)

80002ef8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80002ef8: 97 d0 ff ff  	auipc	ra, 1048573
80002efc: e7 80 c0 73  	jalr	1852(ra)
;     mv        s0, a0 # store return value in s0
80002f00: 13 04 05 00  	mv	s0, a0

80002f04 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80002f04: 97 00 00 00  	auipc	ra, 0
80002f08: e7 80 c0 20  	jalr	524(ra)

80002f0c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80002f0c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80002f10: 97 00 00 00  	auipc	ra, 0
80002f14: e7 80 c0 22  	jalr	556(ra)
;     wfi
80002f18: 73 00 50 10  	wfi	
;     j       1b
80002f1c: 6f f0 df ff  	j	0x80002f18 <snrt.crt0.end+0xc>

80002f20 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80002f20: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80002f24: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80002f28: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80002f2c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80002f30: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80002f34: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80002f38: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80002f3c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80002f40: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80002f44: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80002f48: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80002f4c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80002f50: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80002f54: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80002f58: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80002f5c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80002f60: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80002f64: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80002f68: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002f6c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002f70: 63 84 02 08  	beqz	t0, 0x80002ff8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80002f74: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80002f78: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80002f7c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80002f80: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80002f84: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80002f88: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80002f8c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80002f90: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80002f94: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80002f98: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80002f9c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80002fa0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80002fa4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80002fa8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80002fac: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80002fb0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80002fb4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80002fb8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80002fbc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80002fc0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80002fc4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80002fc8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80002fcc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80002fd0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80002fd4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80002fd8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80002fdc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80002fe0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80002fe4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80002fe8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80002fec: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80002ff0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80002ff4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80002ff8: 97 00 00 00  	auipc	ra, 0
80002ffc: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80003000: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003004: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003008: 63 84 02 08  	beqz	t0, 0x80003090 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000300c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003010: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003014: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003018: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000301c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003020: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003024: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003028: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000302c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003030: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003034: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003038: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000303c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003040: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003044: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003048: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000304c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003050: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003054: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003058: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000305c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003060: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003064: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003068: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000306c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003070: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003074: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003078: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000307c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003080: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003084: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003088: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000308c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003090: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003094: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003098: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000309c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800030a0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800030a4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800030a8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800030ac: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800030b0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800030b4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800030b8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800030bc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800030c0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800030c4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800030c8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800030cc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800030d0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800030d4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800030d8: 73 00 20 30  	mret	

800030dc <_snrt_init_core_info>:
;     mv        a4, a1
800030dc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800030e0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800030e4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800030e8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800030ec: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800030f0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800030f4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800030f8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800030fc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003100: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003104: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003108: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000310c: 67 80 00 00  	ret

80003110 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003110: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003114: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003118: 97 00 00 00  	auipc	ra, 0
8000311c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80003120: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003124: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003128: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000312c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003130: 67 80 00 00  	ret

80003134 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003134: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003138: 67 80 00 00  	ret

8000313c <_snrt_exit>:
;     addi      sp, sp, -8
8000313c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003140: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003144: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003148: 97 00 00 00  	auipc	ra, 0
8000314c: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80003150: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003154: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003158: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000315c: 63 1c 05 00  	bnez	a0, 0x80003174 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003160: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003164: 93 e2 12 00  	ori	t0, t0, 1

80003168 <.Lpcrel_hi11>:
;     la        t1, tohost
80003168: 17 03 00 00  	auipc	t1, 0
8000316c: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
80003170: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003174: 67 80 00 00  	ret
