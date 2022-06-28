
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-SSRInference-test-access-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00003408 80000000 TEXT
  2 .init             00000468 80003410 TEXT
  3 .rodata           00000230 80003878 DATA
  4 .htif             00000048 80003ac0 DATA
  5 .tdata            00000000 80003b08 DATA
  6 .tbss             00000010 80003b08 BSS
  7 .tbssend          00000000 80003b18 DATA
  8 .sdata            000000b8 80003b18 DATA
  9 .data             00000000 80003bd0 DATA
 10 .sbss             00000004 80003bd0 BSS
 11 .bss              00000000 80003bd4 BSS
 12 .dram             00000000 80003bd4 DATA
 13 .debug_info       000030b1 00000000 
 14 .debug_abbrev     00000aa0 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002a76 00000000 
 17 .debug_loc        00003502 00000000 
 18 .debug_ranges     00000420 00000000 
 19 .debug_str        00000a27 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000268 00000000 
 23 .symtab           00002e90 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           000008a2 00000000 


Disassembly of section .text:

80000000 <__udivdi3>:
80000000: 13 01 01 fe  	addi	sp, sp, -32
80000004: 23 2e 11 00  	sw	ra, 28(sp)
80000008: 23 2a b1 00  	sw	a1, 20(sp)
8000000c: 23 28 a1 00  	sw	a0, 16(sp)
80000010: 23 26 d1 00  	sw	a3, 12(sp)
80000014: 23 24 c1 00  	sw	a2, 8(sp)
80000018: 83 25 41 01  	lw	a1, 20(sp)
8000001c: 03 25 01 01  	lw	a0, 16(sp)
80000020: 83 26 c1 00  	lw	a3, 12(sp)
80000024: 03 26 81 00  	lw	a2, 8(sp)
80000028: 97 00 00 00  	auipc	ra, 0
8000002c: e7 80 40 01  	jalr	20(ra)
80000030: 83 20 c1 01  	lw	ra, 28(sp)
80000034: 13 01 01 02  	addi	sp, sp, 32
80000038: 67 80 00 00  	ret

8000003c <__udivXi3>:
8000003c: 13 01 01 f8  	addi	sp, sp, -128
80000040: 23 2a b1 06  	sw	a1, 116(sp)
80000044: 23 28 a1 06  	sw	a0, 112(sp)
80000048: 23 26 d1 06  	sw	a3, 108(sp)
8000004c: 23 24 c1 06  	sw	a2, 104(sp)
80000050: 13 05 00 04  	addi	a0, zero, 64
80000054: 23 22 a1 06  	sw	a0, 100(sp)
80000058: 83 25 c1 06  	lw	a1, 108(sp)
8000005c: 03 25 81 06  	lw	a0, 104(sp)
80000060: 33 65 b5 00  	or	a0, a0, a1
80000064: 93 05 00 00  	mv	a1, zero
80000068: 63 08 b5 10  	beq	a0, a1, 0x80000178 <.LBB1_4>
8000006c: 6f 00 40 00  	j	0x80000070 <.LBB1_1>

80000070 <.LBB1_1>:
80000070: 83 25 81 06  	lw	a1, 104(sp)
80000074: 03 25 c1 06  	lw	a0, 108(sp)
80000078: 13 56 15 00  	srli	a2, a0, 1
8000007c: 33 66 c5 00  	or	a2, a0, a2
80000080: 93 56 26 00  	srli	a3, a2, 2
80000084: 33 66 d6 00  	or	a2, a2, a3
80000088: 93 56 46 00  	srli	a3, a2, 4
8000008c: 33 66 d6 00  	or	a2, a2, a3
80000090: 93 56 86 00  	srli	a3, a2, 8
80000094: 33 66 d6 00  	or	a2, a2, a3
80000098: 93 56 06 01  	srli	a3, a2, 16
8000009c: 33 66 d6 00  	or	a2, a2, a3
800000a0: 13 46 f6 ff  	not	a2, a2
800000a4: 93 56 16 00  	srli	a3, a2, 1
800000a8: 37 57 55 55  	lui	a4, 349525
800000ac: 93 08 57 55  	addi	a7, a4, 1365
800000b0: b3 f6 16 01  	and	a3, a3, a7
800000b4: b3 06 d6 40  	sub	a3, a2, a3
800000b8: 37 36 33 33  	lui	a2, 209715
800000bc: 13 08 36 33  	addi	a6, a2, 819
800000c0: 33 f6 06 01  	and	a2, a3, a6
800000c4: 93 d6 26 00  	srli	a3, a3, 2
800000c8: b3 f6 06 01  	and	a3, a3, a6
800000cc: 33 06 d6 00  	add	a2, a2, a3
800000d0: 93 56 46 00  	srli	a3, a2, 4
800000d4: 33 06 d6 00  	add	a2, a2, a3
800000d8: b7 16 0f 0f  	lui	a3, 61681
800000dc: 13 87 f6 f0  	addi	a4, a3, -241
800000e0: 33 76 e6 00  	and	a2, a2, a4
800000e4: b7 06 01 01  	lui	a3, 4112
800000e8: 93 86 16 10  	addi	a3, a3, 257
800000ec: 33 06 d6 02  	mul	a2, a2, a3
800000f0: 13 56 86 01  	srli	a2, a2, 24
800000f4: 93 d7 15 00  	srli	a5, a1, 1
800000f8: b3 e5 f5 00  	or	a1, a1, a5
800000fc: 93 d7 25 00  	srli	a5, a1, 2
80000100: b3 e5 f5 00  	or	a1, a1, a5
80000104: 93 d7 45 00  	srli	a5, a1, 4
80000108: b3 e5 f5 00  	or	a1, a1, a5
8000010c: 93 d7 85 00  	srli	a5, a1, 8
80000110: b3 e5 f5 00  	or	a1, a1, a5
80000114: 93 d7 05 01  	srli	a5, a1, 16
80000118: b3 e5 f5 00  	or	a1, a1, a5
8000011c: 93 c5 f5 ff  	not	a1, a1
80000120: 93 d7 15 00  	srli	a5, a1, 1
80000124: b3 f7 17 01  	and	a5, a5, a7
80000128: b3 87 f5 40  	sub	a5, a1, a5
8000012c: b3 f5 07 01  	and	a1, a5, a6
80000130: 93 d7 27 00  	srli	a5, a5, 2
80000134: b3 f7 07 01  	and	a5, a5, a6
80000138: b3 85 f5 00  	add	a1, a1, a5
8000013c: 93 d7 45 00  	srli	a5, a1, 4
80000140: b3 85 f5 00  	add	a1, a1, a5
80000144: b3 f5 e5 00  	and	a1, a1, a4
80000148: b3 85 d5 02  	mul	a1, a1, a3
8000014c: 93 d5 85 01  	srli	a1, a1, 24
80000150: 93 85 05 02  	addi	a1, a1, 32
80000154: 23 20 b1 04  	sw	a1, 64(sp)
80000158: 93 05 00 00  	mv	a1, zero
8000015c: 23 22 c1 04  	sw	a2, 68(sp)
80000160: 63 16 b5 00  	bne	a0, a1, 0x8000016c <.LBB1_3>
80000164: 03 25 01 04  	lw	a0, 64(sp)
80000168: 23 22 a1 04  	sw	a0, 68(sp)

8000016c <.LBB1_3>:
8000016c: 03 25 41 04  	lw	a0, 68(sp)
80000170: 23 2e a1 02  	sw	a0, 60(sp)
80000174: 6f 00 00 01  	j	0x80000184 <.LBB1_5>

80000178 <.LBB1_4>:
80000178: 13 05 00 04  	addi	a0, zero, 64
8000017c: 23 2e a1 02  	sw	a0, 60(sp)
80000180: 6f 00 40 00  	j	0x80000184 <.LBB1_5>

80000184 <.LBB1_5>:
80000184: 03 25 c1 03  	lw	a0, 60(sp)
80000188: 23 2c a1 02  	sw	a0, 56(sp)
8000018c: 83 25 41 07  	lw	a1, 116(sp)
80000190: 03 25 01 07  	lw	a0, 112(sp)
80000194: 33 65 b5 00  	or	a0, a0, a1
80000198: 93 05 00 00  	mv	a1, zero
8000019c: 63 08 b5 10  	beq	a0, a1, 0x800002ac <.LBB1_9>
800001a0: 6f 00 40 00  	j	0x800001a4 <.LBB1_6>

800001a4 <.LBB1_6>:
800001a4: 83 25 01 07  	lw	a1, 112(sp)
800001a8: 03 25 41 07  	lw	a0, 116(sp)
800001ac: 13 56 15 00  	srli	a2, a0, 1
800001b0: 33 66 c5 00  	or	a2, a0, a2
800001b4: 93 56 26 00  	srli	a3, a2, 2
800001b8: 33 66 d6 00  	or	a2, a2, a3
800001bc: 93 56 46 00  	srli	a3, a2, 4
800001c0: 33 66 d6 00  	or	a2, a2, a3
800001c4: 93 56 86 00  	srli	a3, a2, 8
800001c8: 33 66 d6 00  	or	a2, a2, a3
800001cc: 93 56 06 01  	srli	a3, a2, 16
800001d0: 33 66 d6 00  	or	a2, a2, a3
800001d4: 13 46 f6 ff  	not	a2, a2
800001d8: 93 56 16 00  	srli	a3, a2, 1
800001dc: 37 57 55 55  	lui	a4, 349525
800001e0: 93 08 57 55  	addi	a7, a4, 1365
800001e4: b3 f6 16 01  	and	a3, a3, a7
800001e8: b3 06 d6 40  	sub	a3, a2, a3
800001ec: 37 36 33 33  	lui	a2, 209715
800001f0: 13 08 36 33  	addi	a6, a2, 819
800001f4: 33 f6 06 01  	and	a2, a3, a6
800001f8: 93 d6 26 00  	srli	a3, a3, 2
800001fc: b3 f6 06 01  	and	a3, a3, a6
80000200: 33 06 d6 00  	add	a2, a2, a3
80000204: 93 56 46 00  	srli	a3, a2, 4
80000208: 33 06 d6 00  	add	a2, a2, a3
8000020c: b7 16 0f 0f  	lui	a3, 61681
80000210: 13 87 f6 f0  	addi	a4, a3, -241
80000214: 33 76 e6 00  	and	a2, a2, a4
80000218: b7 06 01 01  	lui	a3, 4112
8000021c: 93 86 16 10  	addi	a3, a3, 257
80000220: 33 06 d6 02  	mul	a2, a2, a3
80000224: 13 56 86 01  	srli	a2, a2, 24
80000228: 93 d7 15 00  	srli	a5, a1, 1
8000022c: b3 e5 f5 00  	or	a1, a1, a5
80000230: 93 d7 25 00  	srli	a5, a1, 2
80000234: b3 e5 f5 00  	or	a1, a1, a5
80000238: 93 d7 45 00  	srli	a5, a1, 4
8000023c: b3 e5 f5 00  	or	a1, a1, a5
80000240: 93 d7 85 00  	srli	a5, a1, 8
80000244: b3 e5 f5 00  	or	a1, a1, a5
80000248: 93 d7 05 01  	srli	a5, a1, 16
8000024c: b3 e5 f5 00  	or	a1, a1, a5
80000250: 93 c5 f5 ff  	not	a1, a1
80000254: 93 d7 15 00  	srli	a5, a1, 1
80000258: b3 f7 17 01  	and	a5, a5, a7
8000025c: b3 87 f5 40  	sub	a5, a1, a5
80000260: b3 f5 07 01  	and	a1, a5, a6
80000264: 93 d7 27 00  	srli	a5, a5, 2
80000268: b3 f7 07 01  	and	a5, a5, a6
8000026c: b3 85 f5 00  	add	a1, a1, a5
80000270: 93 d7 45 00  	srli	a5, a1, 4
80000274: b3 85 f5 00  	add	a1, a1, a5
80000278: b3 f5 e5 00  	and	a1, a1, a4
8000027c: b3 85 d5 02  	mul	a1, a1, a3
80000280: 93 d5 85 01  	srli	a1, a1, 24
80000284: 93 85 05 02  	addi	a1, a1, 32
80000288: 23 28 b1 02  	sw	a1, 48(sp)
8000028c: 93 05 00 00  	mv	a1, zero
80000290: 23 2a c1 02  	sw	a2, 52(sp)
80000294: 63 16 b5 00  	bne	a0, a1, 0x800002a0 <.LBB1_8>
80000298: 03 25 01 03  	lw	a0, 48(sp)
8000029c: 23 2a a1 02  	sw	a0, 52(sp)

800002a0 <.LBB1_8>:
800002a0: 03 25 41 03  	lw	a0, 52(sp)
800002a4: 23 26 a1 02  	sw	a0, 44(sp)
800002a8: 6f 00 00 01  	j	0x800002b8 <.LBB1_10>

800002ac <.LBB1_9>:
800002ac: 13 05 00 04  	addi	a0, zero, 64
800002b0: 23 26 a1 02  	sw	a0, 44(sp)
800002b4: 6f 00 40 00  	j	0x800002b8 <.LBB1_10>

800002b8 <.LBB1_10>:
800002b8: 03 25 81 03  	lw	a0, 56(sp)
800002bc: 83 25 c1 02  	lw	a1, 44(sp)
800002c0: 33 05 b5 40  	sub	a0, a0, a1
800002c4: 23 20 a1 06  	sw	a0, 96(sp)
800002c8: 03 25 01 06  	lw	a0, 96(sp)
800002cc: 93 05 00 04  	addi	a1, zero, 64
800002d0: 63 6c b5 00  	bltu	a0, a1, 0x800002e8 <.LBB1_12>
800002d4: 6f 00 40 00  	j	0x800002d8 <.LBB1_11>

800002d8 <.LBB1_11>:
800002d8: 13 05 00 00  	mv	a0, zero
800002dc: 23 2e a1 06  	sw	a0, 124(sp)
800002e0: 23 2c a1 06  	sw	a0, 120(sp)
800002e4: 6f 00 40 26  	j	0x80000548 <.LBB1_23>

800002e8 <.LBB1_12>:
800002e8: 03 25 01 06  	lw	a0, 96(sp)
800002ec: 93 05 f0 03  	addi	a1, zero, 63
800002f0: 63 1e b5 00  	bne	a0, a1, 0x8000030c <.LBB1_14>
800002f4: 6f 00 40 00  	j	0x800002f8 <.LBB1_13>

800002f8 <.LBB1_13>:
800002f8: 03 25 01 07  	lw	a0, 112(sp)
800002fc: 83 25 41 07  	lw	a1, 116(sp)
80000300: 23 2e b1 06  	sw	a1, 124(sp)
80000304: 23 2c a1 06  	sw	a0, 120(sp)
80000308: 6f 00 00 24  	j	0x80000548 <.LBB1_23>

8000030c <.LBB1_14>:
8000030c: 03 25 01 06  	lw	a0, 96(sp)
80000310: 13 05 15 00  	addi	a0, a0, 1
80000314: 23 20 a1 06  	sw	a0, 96(sp)
80000318: 03 26 41 07  	lw	a2, 116(sp)
8000031c: 03 25 01 07  	lw	a0, 112(sp)
80000320: 03 27 01 06  	lw	a4, 96(sp)
80000324: 33 55 e5 00  	srl	a0, a0, a4
80000328: 93 05 f0 01  	addi	a1, zero, 31
8000032c: 23 2c b1 00  	sw	a1, 24(sp)
80000330: b3 86 e5 40  	sub	a3, a1, a4
80000334: 93 15 16 00  	slli	a1, a2, 1
80000338: b3 95 d5 00  	sll	a1, a1, a3
8000033c: b3 66 b5 00  	or	a3, a0, a1
80000340: 13 05 07 fe  	addi	a0, a4, -32
80000344: b3 55 a6 00  	srl	a1, a2, a0
80000348: 23 2e b1 00  	sw	a1, 28(sp)
8000034c: 93 05 00 00  	mv	a1, zero
80000350: 23 20 b1 02  	sw	a1, 32(sp)
80000354: 33 56 e6 00  	srl	a2, a2, a4
80000358: 23 22 d1 02  	sw	a3, 36(sp)
8000035c: 23 24 c1 02  	sw	a2, 40(sp)
80000360: 63 4a b5 00  	blt	a0, a1, 0x80000374 <.LBB1_16>
80000364: 03 25 01 02  	lw	a0, 32(sp)
80000368: 83 25 c1 01  	lw	a1, 28(sp)
8000036c: 23 22 b1 02  	sw	a1, 36(sp)
80000370: 23 24 a1 02  	sw	a0, 40(sp)

80000374 <.LBB1_16>:
80000374: 83 25 01 02  	lw	a1, 32(sp)
80000378: 83 26 81 01  	lw	a3, 24(sp)
8000037c: 03 25 41 02  	lw	a0, 36(sp)
80000380: 03 26 81 02  	lw	a2, 40(sp)
80000384: 23 2e c1 04  	sw	a2, 92(sp)
80000388: 23 2c a1 04  	sw	a0, 88(sp)
8000038c: 83 27 01 06  	lw	a5, 96(sp)
80000390: 13 05 00 04  	addi	a0, zero, 64
80000394: 33 07 f5 40  	sub	a4, a0, a5
80000398: 03 26 01 07  	lw	a2, 112(sp)
8000039c: 03 25 41 07  	lw	a0, 116(sp)
800003a0: 33 15 e5 00  	sll	a0, a0, a4
800003a4: 33 88 e6 40  	sub	a6, a3, a4
800003a8: 93 56 16 00  	srli	a3, a2, 1
800003ac: b3 d6 06 01  	srl	a3, a3, a6
800003b0: b3 66 d5 00  	or	a3, a0, a3
800003b4: 13 05 00 02  	addi	a0, zero, 32
800003b8: 33 05 f5 40  	sub	a0, a0, a5
800003bc: b3 17 a6 00  	sll	a5, a2, a0
800003c0: 23 26 f1 00  	sw	a5, 12(sp)
800003c4: 33 16 e6 00  	sll	a2, a2, a4
800003c8: 23 28 d1 00  	sw	a3, 16(sp)
800003cc: 23 2a c1 00  	sw	a2, 20(sp)
800003d0: 63 4a b5 00  	blt	a0, a1, 0x800003e4 <.LBB1_18>
800003d4: 03 25 01 02  	lw	a0, 32(sp)
800003d8: 83 25 c1 00  	lw	a1, 12(sp)
800003dc: 23 28 b1 00  	sw	a1, 16(sp)
800003e0: 23 2a a1 00  	sw	a0, 20(sp)

800003e4 <.LBB1_18>:
800003e4: 03 25 01 02  	lw	a0, 32(sp)
800003e8: 83 25 01 01  	lw	a1, 16(sp)
800003ec: 03 26 41 01  	lw	a2, 20(sp)
800003f0: 23 28 c1 06  	sw	a2, 112(sp)
800003f4: 23 2a b1 06  	sw	a1, 116(sp)
800003f8: 23 2a a1 04  	sw	a0, 84(sp)
800003fc: 23 28 a1 04  	sw	a0, 80(sp)
80000400: 6f 00 40 00  	j	0x80000404 <.LBB1_19>

80000404 <.LBB1_19>:
80000404: 03 25 01 06  	lw	a0, 96(sp)
80000408: 93 05 00 00  	mv	a1, zero
8000040c: 63 0c b5 0e  	beq	a0, a1, 0x80000504 <.LBB1_22>
80000410: 6f 00 40 00  	j	0x80000414 <.LBB1_20>

80000414 <.LBB1_20>:
80000414: 83 25 c1 05  	lw	a1, 92(sp)
80000418: 03 25 81 05  	lw	a0, 88(sp)
8000041c: 13 56 f5 01  	srli	a2, a0, 31
80000420: 93 95 15 00  	slli	a1, a1, 1
80000424: b3 e5 c5 00  	or	a1, a1, a2
80000428: 13 15 15 00  	slli	a0, a0, 1
8000042c: 03 26 41 07  	lw	a2, 116(sp)
80000430: 13 56 f6 01  	srli	a2, a2, 31
80000434: 33 65 c5 00  	or	a0, a0, a2
80000438: 23 2e b1 04  	sw	a1, 92(sp)
8000043c: 23 2c a1 04  	sw	a0, 88(sp)
80000440: 03 25 41 07  	lw	a0, 116(sp)
80000444: 83 25 01 07  	lw	a1, 112(sp)
80000448: 13 d6 f5 01  	srli	a2, a1, 31
8000044c: 13 15 15 00  	slli	a0, a0, 1
80000450: 33 65 c5 00  	or	a0, a0, a2
80000454: 93 95 15 00  	slli	a1, a1, 1
80000458: 03 26 01 05  	lw	a2, 80(sp)
8000045c: 83 26 41 05  	lw	a3, 84(sp)
80000460: 33 65 d5 00  	or	a0, a0, a3
80000464: b3 e5 c5 00  	or	a1, a1, a2
80000468: 23 28 b1 06  	sw	a1, 112(sp)
8000046c: 23 2a a1 06  	sw	a0, 116(sp)
80000470: 83 25 81 06  	lw	a1, 104(sp)
80000474: 83 26 c1 06  	lw	a3, 108(sp)
80000478: 03 26 81 05  	lw	a2, 88(sp)
8000047c: 03 25 c1 05  	lw	a0, 92(sp)
80000480: 13 45 f5 ff  	not	a0, a0
80000484: 33 05 d5 00  	add	a0, a0, a3
80000488: 13 46 f6 ff  	not	a2, a2
8000048c: b3 05 b6 00  	add	a1, a2, a1
80000490: b3 b5 c5 00  	sltu	a1, a1, a2
80000494: 33 05 b5 00  	add	a0, a0, a1
80000498: 13 55 f5 41  	srai	a0, a0, 31
8000049c: 23 26 a1 04  	sw	a0, 76(sp)
800004a0: 23 24 a1 04  	sw	a0, 72(sp)
800004a4: 03 25 81 04  	lw	a0, 72(sp)
800004a8: 13 75 15 00  	andi	a0, a0, 1
800004ac: 93 05 00 00  	mv	a1, zero
800004b0: 23 2a b1 04  	sw	a1, 84(sp)
800004b4: 23 28 a1 04  	sw	a0, 80(sp)
800004b8: 03 25 81 06  	lw	a0, 104(sp)
800004bc: 03 26 c1 06  	lw	a2, 108(sp)
800004c0: 83 25 81 04  	lw	a1, 72(sp)
800004c4: 83 26 c1 04  	lw	a3, 76(sp)
800004c8: 33 77 d6 00  	and	a4, a2, a3
800004cc: 33 76 b5 00  	and	a2, a0, a1
800004d0: 03 25 c1 05  	lw	a0, 92(sp)
800004d4: 83 25 81 05  	lw	a1, 88(sp)
800004d8: b3 b6 c5 00  	sltu	a3, a1, a2
800004dc: 33 05 e5 40  	sub	a0, a0, a4
800004e0: 33 05 d5 40  	sub	a0, a0, a3
800004e4: b3 85 c5 40  	sub	a1, a1, a2
800004e8: 23 2c b1 04  	sw	a1, 88(sp)
800004ec: 23 2e a1 04  	sw	a0, 92(sp)
800004f0: 6f 00 40 00  	j	0x800004f4 <.LBB1_21>

800004f4 <.LBB1_21>:
800004f4: 03 25 01 06  	lw	a0, 96(sp)
800004f8: 13 05 f5 ff  	addi	a0, a0, -1
800004fc: 23 20 a1 06  	sw	a0, 96(sp)
80000500: 6f f0 5f f0  	j	0x80000404 <.LBB1_19>

80000504 <.LBB1_22>:
80000504: 03 25 41 07  	lw	a0, 116(sp)
80000508: 83 25 01 07  	lw	a1, 112(sp)
8000050c: 13 d6 f5 01  	srli	a2, a1, 31
80000510: 13 15 15 00  	slli	a0, a0, 1
80000514: 33 65 c5 00  	or	a0, a0, a2
80000518: 93 95 15 00  	slli	a1, a1, 1
8000051c: 03 26 01 05  	lw	a2, 80(sp)
80000520: 83 26 41 05  	lw	a3, 84(sp)
80000524: 33 65 d5 00  	or	a0, a0, a3
80000528: b3 e5 c5 00  	or	a1, a1, a2
8000052c: 23 28 b1 06  	sw	a1, 112(sp)
80000530: 23 2a a1 06  	sw	a0, 116(sp)
80000534: 03 25 01 07  	lw	a0, 112(sp)
80000538: 83 25 41 07  	lw	a1, 116(sp)
8000053c: 23 2e b1 06  	sw	a1, 124(sp)
80000540: 23 2c a1 06  	sw	a0, 120(sp)
80000544: 6f 00 40 00  	j	0x80000548 <.LBB1_23>

80000548 <.LBB1_23>:
80000548: 03 25 81 07  	lw	a0, 120(sp)
8000054c: 83 25 c1 07  	lw	a1, 124(sp)
80000550: 13 01 01 08  	addi	sp, sp, 128
80000554: 67 80 00 00  	ret

80000558 <memset>:
;   li t1, 15
80000558: 13 03 f0 00  	addi	t1, zero, 15
;   move a4, a0
8000055c: 13 07 05 00  	mv	a4, a0
;   bleu a2, t1, .Ltiny
80000560: 63 7e c3 02  	bgeu	t1, a2, 0x8000059c <.Ltiny>
;   and a5, a4, 15
80000564: 93 77 f7 00  	andi	a5, a4, 15
;   bnez a5, .Lmisaligned
80000568: 63 90 07 0a  	bnez	a5, 0x80000608 <.Lmisaligned>

8000056c <.Laligned>:
;   bnez a1, .Lwordify
8000056c: 63 92 05 08  	bnez	a1, 0x800005f0 <.Lwordify>

80000570 <.Lwordified>:
;   and a3, a2, ~15
80000570: 93 76 06 ff  	andi	a3, a2, -16
;   and a2, a2, 15
80000574: 13 76 f6 00  	andi	a2, a2, 15
;   add a3, a3, a4
80000578: b3 86 e6 00  	add	a3, a3, a4

8000057c <.Ltmp0>:
; 1:sw a1, 0(a4)
8000057c: 23 20 b7 00  	sw	a1, 0(a4)
;   sw a1, 4(a4)
80000580: 23 22 b7 00  	sw	a1, 4(a4)
;   sw a1, 8(a4)
80000584: 23 24 b7 00  	sw	a1, 8(a4)
;   sw a1, 12(a4)
80000588: 23 26 b7 00  	sw	a1, 12(a4)
;   add a4, a4, 16
8000058c: 13 07 07 01  	addi	a4, a4, 16
;   bltu a4, a3, 1b
80000590: e3 66 d7 fe  	bltu	a4, a3, 0x8000057c <.Ltmp0>
;   bnez a2, .Ltiny
80000594: 63 14 06 00  	bnez	a2, 0x8000059c <.Ltiny>
;   ret
80000598: 67 80 00 00  	ret

8000059c <.Ltiny>:
;   sub a3, t1, a2
8000059c: b3 06 c3 40  	sub	a3, t1, a2
;   sll a3, a3, 2
800005a0: 93 96 26 00  	slli	a3, a3, 2

800005a4 <.Ltmp1>:
; 1:auipc t0, %pcrel_hi(.Ltable)
800005a4: 97 02 00 00  	auipc	t0, 0
;   add a3, a3, t0
800005a8: b3 86 56 00  	add	a3, a3, t0

800005ac <.Ltable_misaligned>:
;   jr a3, %pcrel_lo(1b)
800005ac: 67 80 c6 00  	jr	12(a3)

800005b0 <.Ltable>:
;   sb a1,14(a4)
800005b0: 23 07 b7 00  	sb	a1, 14(a4)
;   sb a1,13(a4)
800005b4: a3 06 b7 00  	sb	a1, 13(a4)
;   sb a1,12(a4)
800005b8: 23 06 b7 00  	sb	a1, 12(a4)
;   sb a1,11(a4)
800005bc: a3 05 b7 00  	sb	a1, 11(a4)
;   sb a1,10(a4)
800005c0: 23 05 b7 00  	sb	a1, 10(a4)
;   sb a1, 9(a4)
800005c4: a3 04 b7 00  	sb	a1, 9(a4)
;   sb a1, 8(a4)
800005c8: 23 04 b7 00  	sb	a1, 8(a4)
;   sb a1, 7(a4)
800005cc: a3 03 b7 00  	sb	a1, 7(a4)
;   sb a1, 6(a4)
800005d0: 23 03 b7 00  	sb	a1, 6(a4)
;   sb a1, 5(a4)
800005d4: a3 02 b7 00  	sb	a1, 5(a4)
;   sb a1, 4(a4)
800005d8: 23 02 b7 00  	sb	a1, 4(a4)
;   sb a1, 3(a4)
800005dc: a3 01 b7 00  	sb	a1, 3(a4)
;   sb a1, 2(a4)
800005e0: 23 01 b7 00  	sb	a1, 2(a4)
;   sb a1, 1(a4)
800005e4: a3 00 b7 00  	sb	a1, 1(a4)
;   sb a1, 0(a4)
800005e8: 23 00 b7 00  	sb	a1, 0(a4)
;   ret
800005ec: 67 80 00 00  	ret

800005f0 <.Lwordify>:
;   and a1, a1, 0xFF
800005f0: 93 f5 f5 0f  	andi	a1, a1, 255
;   sll a3, a1, 8
800005f4: 93 96 85 00  	slli	a3, a1, 8
;   or  a1, a1, a3
800005f8: b3 e5 d5 00  	or	a1, a1, a3
;   sll a3, a1, 16
800005fc: 93 96 05 01  	slli	a3, a1, 16
;   or  a1, a1, a3
80000600: b3 e5 d5 00  	or	a1, a1, a3
;   j .Lwordified
80000604: 6f f0 df f6  	j	0x80000570 <.Lwordified>

80000608 <.Lmisaligned>:
;   sll a3, a5, 2
80000608: 93 96 27 00  	slli	a3, a5, 2

8000060c <.Ltmp2>:
; 1:auipc t0, %pcrel_hi(.Ltable_misaligned)
8000060c: 97 02 00 00  	auipc	t0, 0
;   add a3, a3, t0
80000610: b3 86 56 00  	add	a3, a3, t0
;   mv t0, ra
80000614: 93 82 00 00  	mv	t0, ra
;   jalr a3, %pcrel_lo(1b)
80000618: e7 80 06 fa  	jalr	-96(a3)
;   mv ra, t0
8000061c: 93 80 02 00  	mv	ra, t0
;   add a5, a5, -16
80000620: 93 87 07 ff  	addi	a5, a5, -16
;   sub a4, a4, a5
80000624: 33 07 f7 40  	sub	a4, a4, a5
;   add a2, a2, a5
80000628: 33 06 f6 00  	add	a2, a2, a5
;   bleu a2, t1, .Ltiny
8000062c: e3 78 c3 f6  	bgeu	t1, a2, 0x8000059c <.Ltiny>
;   j .Laligned
80000630: 6f f0 df f3  	j	0x8000056c <.Laligned>

80000634 <main>:
; int main(){
80000634: 13 01 01 cf  	addi	sp, sp, -784
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 30  	sw	ra, 780(sp)
8000063c: 27 30 81 30  	fsd	fs0, 768(sp)
80000640: 27 3c 91 2e  	fsd	fs1, 760(sp)
80000644: 27 38 21 2f  	fsd	fs2, 752(sp)
80000648: 27 34 31 2f  	fsd	fs3, 744(sp)
8000064c: 27 30 41 2f  	fsd	fs4, 736(sp)
80000650: 27 3c 51 2d  	fsd	fs5, 728(sp)
80000654: 27 38 61 2d  	fsd	fs6, 720(sp)
80000658: 27 34 71 2d  	fsd	fs7, 712(sp)
8000065c: 27 30 81 2d  	fsd	fs8, 704(sp)
80000660: 27 3c 91 2b  	fsd	fs9, 696(sp)
80000664: 27 38 a1 2b  	fsd	fs10, 688(sp)
80000668: 27 34 b1 2b  	fsd	fs11, 680(sp)
8000066c: 37 05 00 00  	lui	a0, 0
80000670: 33 05 45 00  	add	a0, a0, tp
80000674: 83 25 45 00  	lw	a1, 4(a0)
80000678: 13 05 00 00  	mv	a0, zero
;     if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000067c: 63 84 05 00  	beqz	a1, 0x80000684 <main+0x50>
80000680: 6f 00 10 69  	j	0x80001510 <.LBB0_17+0x10>
;     return _snrt_team_current->root;
80000684: 37 05 00 00  	lui	a0, 0
80000688: 33 05 45 00  	add	a0, a0, tp
8000068c: 03 25 05 00  	lw	a0, 0(a0)
80000690: 03 26 05 00  	lw	a2, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000694: 03 25 86 05  	lw	a0, 88(a2)
80000698: 83 25 06 05  	lw	a1, 80(a2)
8000069c: 03 27 46 05  	lw	a4, 84(a2)
800006a0: 93 06 05 36  	addi	a3, a0, 864
800006a4: b3 05 b7 00  	add	a1, a4, a1
800006a8: 63 f6 d5 00  	bgeu	a1, a3, 0x800006b4 <main+0x80>
800006ac: 13 05 00 00  	mv	a0, zero
800006b0: 6f 00 c0 44  	j	0x80000afc <main+0x4c8>
;     for (uint32_t i = 0; i < n; i++){
800006b4: 93 55 45 01  	srli	a1, a0, 20
800006b8: b3 35 b0 00  	snez	a1, a1
800006bc: 37 07 12 00  	lui	a4, 288
800006c0: 13 07 97 ca  	addi	a4, a4, -855
800006c4: 33 37 e5 00  	sltu	a4, a0, a4
800006c8: b3 f5 e5 00  	and	a1, a1, a4
;     alloc->next += size;
800006cc: 23 2c d6 04  	sw	a3, 88(a2)
800006d0: 63 86 05 42  	beqz	a1, 0x80000afc <main+0x4c8>
800006d4: 13 06 80 00  	addi	a2, zero, 8
800006d8: 93 06 b0 06  	addi	a3, zero, 107
;     for (uint32_t i = 0; i < n; i++){
800006dc: 13 07 00 04  	addi	a4, zero, 64
800006e0: 93 07 00 0c  	addi	a5, zero, 192
800006e4: ab a0 e6 00  	scfgw	a3, a4
800006e8: ab 20 f6 00  	scfgw	a2, a5
800006ec: 13 06 00 02  	addi	a2, zero, 32
800006f0: ab 20 c0 00  	scfgw	zero, a2
800006f4: 2b 20 05 38  	scfgwi	a0, 896
800006f8: 73 e6 00 7c  	csrrsi	a2, 1984, 1
800006fc: 13 06 10 00  	addi	a2, zero, 1
80000700: 93 06 d0 06  	addi	a3, zero, 109
;         p[i] = (double)(seed + i);
80000704: d3 01 16 d2  	fcvt.d.wu	ft3, a2
80000708: 53 80 31 22  	fmv.d	ft0, ft3
;     for (uint32_t i = 0; i < n; i++){
8000070c: 13 06 16 00  	addi	a2, a2, 1
80000710: e3 1a d6 fe  	bne	a2, a3, 0x80000704 <main+0xd0>
80000714: 73 f6 00 7c  	csrrci	a2, 1984, 1
80000718: 63 82 05 40  	beqz	a1, 0x80000b1c <main+0x4e8>
8000071c: 13 06 80 00  	addi	a2, zero, 8
80000720: 93 05 b0 00  	addi	a1, zero, 11
;     for (int i = 0; i < n; i++){
80000724: 93 06 00 04  	addi	a3, zero, 64
80000728: 13 07 00 0c  	addi	a4, zero, 192
8000072c: ab a0 d5 00  	scfgw	a1, a3
80000730: ab 20 e6 00  	scfgw	a2, a4
80000734: 93 06 00 06  	addi	a3, zero, 96
80000738: 13 07 00 0e  	addi	a4, zero, 224
8000073c: ab 20 d6 00  	scfgw	a2, a3
80000740: ab 20 e6 00  	scfgw	a2, a4
80000744: 93 06 00 02  	addi	a3, zero, 32
80000748: ab 20 d0 00  	scfgw	zero, a3
8000074c: 2b 20 05 32  	scfgwi	a0, 800
80000750: f3 e6 00 7c  	csrrsi	a3, 1984, 1
;             r_row += a[i*m + j];
80000754: d3 01 00 22  	fmv.d	ft3, ft0
80000758: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000075c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000760: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000764: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000768: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000076c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000770: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000774: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000778: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000077c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000780: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000784: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000788: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000078c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000790: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000794: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000798: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000079c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007a0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007a4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007a8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007ac: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007b0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007b4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007b8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007bc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007c0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007c4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007c8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007cc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007d0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007d4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007d8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007dc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007e0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007e4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007e8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007ec: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007f0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007f4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007f8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007fc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000800: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000804: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000808: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000080c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000810: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000814: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000818: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000081c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000820: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000824: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000828: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000082c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000830: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000834: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000838: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000083c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000840: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000844: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000848: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000084c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000850: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000854: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000858: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000085c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000860: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000864: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000868: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000086c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000870: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000874: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000878: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000087c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000880: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000884: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000888: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000088c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000890: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000894: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000898: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000089c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008a0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008a4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008a8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008ac: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008b0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008b4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008b8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008bc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008c0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008c4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008c8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008cc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008d0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008d4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008d8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008dc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008e0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008e4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008e8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008ec: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008f0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008f4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008f8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008fc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000900: 53 02 00 22  	fmv.d	ft4, ft0
80000904: f3 f6 00 7c  	csrrci	a3, 1984, 1
80000908: 93 06 00 06  	addi	a3, zero, 96
;     for (int j = 0; j < m; j++){
8000090c: 13 07 00 04  	addi	a4, zero, 64
80000910: 93 07 00 0c  	addi	a5, zero, 192
80000914: ab 20 e6 00  	scfgw	a2, a4
80000918: ab a0 f6 00  	scfgw	a3, a5
8000091c: 13 06 80 d0  	addi	a2, zero, -760
80000920: 93 06 00 06  	addi	a3, zero, 96
80000924: 13 07 00 0e  	addi	a4, zero, 224
80000928: ab a0 d5 00  	scfgw	a1, a3
8000092c: ab 20 e6 00  	scfgw	a2, a4
80000930: 93 05 00 02  	addi	a1, zero, 32
80000934: ab 20 b0 00  	scfgw	zero, a1
80000938: 2b 20 05 32  	scfgwi	a0, 800
8000093c: f3 e5 00 7c  	csrrsi	a1, 1984, 1
;             r_col += a[j + i*m];
80000940: d3 02 00 22  	fmv.d	ft5, ft0
;             r_row += a[i*m + j];
80000944: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;             r_col += a[j + i*m];
80000948: 53 72 50 02  	fadd.d	ft4, ft0, ft5
8000094c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000950: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000954: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000958: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000095c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000960: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000964: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000968: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000096c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000970: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000974: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000978: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000097c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000980: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000984: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000988: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000098c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000990: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000994: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000998: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000099c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009a0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009a4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009a8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009ac: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009b0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009b4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009b8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009bc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009c0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009c4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009c8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009cc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009d0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009d4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009d8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009dc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009e0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009e4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009e8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009ec: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009f0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009f4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009f8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009fc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a00: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a04: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a08: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a0c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a10: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a14: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a18: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a1c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a20: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a24: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a28: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a2c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a30: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a34: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a38: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a3c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a40: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a44: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a48: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a4c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a50: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a54: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a58: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a5c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a60: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a64: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a68: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a6c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a70: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a74: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a78: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a7c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a80: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a84: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a88: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a8c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a90: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a94: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a98: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a9c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aa0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aa4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aa8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aac: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ab0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ab4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ab8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000abc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ac0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ac4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ac8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000acc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ad0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ad4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ad8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000adc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ae0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ae4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ae8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aec: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000af0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000af4: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000af8: 6f 00 80 67  	j	0x80001170 <main+0xb3c>
80000afc: 93 05 10 00  	addi	a1, zero, 1
80000b00: 13 06 d0 06  	addi	a2, zero, 109
80000b04: 93 06 05 00  	mv	a3, a0
;         p[i] = (double)(seed + i);
80000b08: d3 81 15 d2  	fcvt.d.wu	ft3, a1
80000b0c: 27 b0 36 00  	fsd	ft3, 0(a3)
;     for (uint32_t i = 0; i < n; i++){
80000b10: 93 85 15 00  	addi	a1, a1, 1
80000b14: 93 86 86 00  	addi	a3, a3, 8
80000b18: e3 98 c5 fe  	bne	a1, a2, 0x80000b08 <main+0x4d4>
;             r_row += a[i*m + j];
80000b1c: 87 31 05 00  	fld	ft3, 0(a0)
80000b20: 27 3c 31 28  	fsd	ft3, 664(sp)
80000b24: 87 31 85 00  	fld	ft3, 8(a0)
80000b28: 27 38 31 28  	fsd	ft3, 656(sp)
80000b2c: 87 31 05 01  	fld	ft3, 16(a0)
80000b30: 27 34 31 28  	fsd	ft3, 648(sp)
80000b34: 87 33 85 01  	fld	ft7, 24(a0)
80000b38: 07 35 05 02  	fld	fa0, 32(a0)
80000b3c: 87 35 85 02  	fld	fa1, 40(a0)
80000b40: 07 36 05 03  	fld	fa2, 48(a0)
80000b44: 87 36 85 03  	fld	fa3, 56(a0)
80000b48: 07 37 05 04  	fld	fa4, 64(a0)
80000b4c: 87 37 85 04  	fld	fa5, 72(a0)
80000b50: 07 38 05 05  	fld	fa6, 80(a0)
80000b54: 87 38 85 05  	fld	fa7, 88(a0)
80000b58: 07 3e 05 06  	fld	ft8, 96(a0)
80000b5c: 87 3e 85 06  	fld	ft9, 104(a0)
80000b60: 07 3f 05 07  	fld	ft10, 112(a0)
80000b64: 87 3f 85 07  	fld	ft11, 120(a0)
80000b68: 07 34 05 08  	fld	fs0, 128(a0)
80000b6c: 87 34 85 08  	fld	fs1, 136(a0)
80000b70: 07 39 05 09  	fld	fs2, 144(a0)
80000b74: 87 39 85 09  	fld	fs3, 152(a0)
80000b78: 07 3a 05 0a  	fld	fs4, 160(a0)
80000b7c: 87 3a 85 0a  	fld	fs5, 168(a0)
80000b80: 07 3b 05 0b  	fld	fs6, 176(a0)
80000b84: 87 3b 85 0b  	fld	fs7, 184(a0)
80000b88: 07 3c 05 0c  	fld	fs8, 192(a0)
80000b8c: 87 3c 85 0c  	fld	fs9, 200(a0)
80000b90: 07 3d 05 0d  	fld	fs10, 208(a0)
80000b94: 87 3d 85 0d  	fld	fs11, 216(a0)
80000b98: 87 31 05 0e  	fld	ft3, 224(a0)
80000b9c: 27 30 31 28  	fsd	ft3, 640(sp)
80000ba0: 87 31 85 0e  	fld	ft3, 232(a0)
80000ba4: 27 3c 31 26  	fsd	ft3, 632(sp)
80000ba8: 87 31 05 0f  	fld	ft3, 240(a0)
80000bac: 27 38 31 26  	fsd	ft3, 624(sp)
80000bb0: 87 31 85 0f  	fld	ft3, 248(a0)
80000bb4: 27 34 31 26  	fsd	ft3, 616(sp)
80000bb8: 87 31 05 10  	fld	ft3, 256(a0)
80000bbc: 27 30 31 26  	fsd	ft3, 608(sp)
80000bc0: 87 31 85 10  	fld	ft3, 264(a0)
80000bc4: 27 3c 31 24  	fsd	ft3, 600(sp)
80000bc8: 87 31 05 11  	fld	ft3, 272(a0)
80000bcc: 27 38 31 24  	fsd	ft3, 592(sp)
80000bd0: 87 31 85 11  	fld	ft3, 280(a0)
80000bd4: 27 34 31 24  	fsd	ft3, 584(sp)
80000bd8: 87 31 05 12  	fld	ft3, 288(a0)
80000bdc: 27 30 31 24  	fsd	ft3, 576(sp)
80000be0: 87 31 85 12  	fld	ft3, 296(a0)
80000be4: 27 3c 31 22  	fsd	ft3, 568(sp)
80000be8: 87 31 05 13  	fld	ft3, 304(a0)
80000bec: 27 38 31 22  	fsd	ft3, 560(sp)
80000bf0: 87 31 85 13  	fld	ft3, 312(a0)
80000bf4: 27 34 31 22  	fsd	ft3, 552(sp)
80000bf8: 87 31 05 14  	fld	ft3, 320(a0)
80000bfc: 27 30 31 22  	fsd	ft3, 544(sp)
80000c00: 87 31 85 14  	fld	ft3, 328(a0)
80000c04: 27 3c 31 20  	fsd	ft3, 536(sp)
80000c08: 87 31 05 15  	fld	ft3, 336(a0)
80000c0c: 27 38 31 20  	fsd	ft3, 528(sp)
80000c10: 87 31 85 15  	fld	ft3, 344(a0)
80000c14: 27 34 31 20  	fsd	ft3, 520(sp)
80000c18: 87 31 05 16  	fld	ft3, 352(a0)
80000c1c: 27 30 31 20  	fsd	ft3, 512(sp)
80000c20: 87 31 85 16  	fld	ft3, 360(a0)
80000c24: 27 3c 31 1e  	fsd	ft3, 504(sp)
80000c28: 87 31 05 17  	fld	ft3, 368(a0)
80000c2c: 27 38 31 1e  	fsd	ft3, 496(sp)
80000c30: 87 31 85 17  	fld	ft3, 376(a0)
80000c34: 27 34 31 1e  	fsd	ft3, 488(sp)
80000c38: 87 31 05 18  	fld	ft3, 384(a0)
80000c3c: 27 30 31 1e  	fsd	ft3, 480(sp)
80000c40: 87 31 85 18  	fld	ft3, 392(a0)
80000c44: 27 3c 31 1c  	fsd	ft3, 472(sp)
80000c48: 87 31 05 19  	fld	ft3, 400(a0)
80000c4c: 27 38 31 1c  	fsd	ft3, 464(sp)
80000c50: 87 31 85 19  	fld	ft3, 408(a0)
80000c54: 27 34 31 1c  	fsd	ft3, 456(sp)
80000c58: 87 31 05 1a  	fld	ft3, 416(a0)
80000c5c: 27 30 31 1c  	fsd	ft3, 448(sp)
80000c60: 87 31 85 1a  	fld	ft3, 424(a0)
80000c64: 27 3c 31 1a  	fsd	ft3, 440(sp)
80000c68: 87 31 05 1b  	fld	ft3, 432(a0)
80000c6c: 27 38 31 1a  	fsd	ft3, 432(sp)
80000c70: 87 31 85 1b  	fld	ft3, 440(a0)
80000c74: 27 34 31 1a  	fsd	ft3, 424(sp)
80000c78: 87 31 05 1c  	fld	ft3, 448(a0)
80000c7c: 27 30 31 1a  	fsd	ft3, 416(sp)
80000c80: 87 31 85 1c  	fld	ft3, 456(a0)
80000c84: 27 3c 31 18  	fsd	ft3, 408(sp)
80000c88: 87 31 05 1d  	fld	ft3, 464(a0)
80000c8c: 27 38 31 18  	fsd	ft3, 400(sp)
80000c90: 87 31 85 1d  	fld	ft3, 472(a0)
80000c94: 27 34 31 18  	fsd	ft3, 392(sp)
80000c98: 87 31 05 1e  	fld	ft3, 480(a0)
80000c9c: 27 30 31 18  	fsd	ft3, 384(sp)
80000ca0: 87 31 85 1e  	fld	ft3, 488(a0)
80000ca4: 27 3c 31 16  	fsd	ft3, 376(sp)
80000ca8: 87 31 05 1f  	fld	ft3, 496(a0)
80000cac: 27 38 31 16  	fsd	ft3, 368(sp)
80000cb0: 87 31 85 1f  	fld	ft3, 504(a0)
80000cb4: 27 34 31 16  	fsd	ft3, 360(sp)
80000cb8: 87 31 05 20  	fld	ft3, 512(a0)
80000cbc: 27 30 31 16  	fsd	ft3, 352(sp)
80000cc0: 87 31 85 20  	fld	ft3, 520(a0)
80000cc4: 27 3c 31 14  	fsd	ft3, 344(sp)
80000cc8: 87 31 05 21  	fld	ft3, 528(a0)
80000ccc: 27 38 31 14  	fsd	ft3, 336(sp)
80000cd0: 87 31 85 21  	fld	ft3, 536(a0)
80000cd4: 27 34 31 14  	fsd	ft3, 328(sp)
80000cd8: 87 31 05 22  	fld	ft3, 544(a0)
80000cdc: 27 30 31 14  	fsd	ft3, 320(sp)
80000ce0: 87 31 85 22  	fld	ft3, 552(a0)
80000ce4: 27 3c 31 12  	fsd	ft3, 312(sp)
80000ce8: 87 31 05 23  	fld	ft3, 560(a0)
80000cec: 27 38 31 12  	fsd	ft3, 304(sp)
80000cf0: 87 31 85 23  	fld	ft3, 568(a0)
80000cf4: 27 34 31 12  	fsd	ft3, 296(sp)
80000cf8: 87 31 05 24  	fld	ft3, 576(a0)
80000cfc: 27 30 31 12  	fsd	ft3, 288(sp)
80000d00: 87 31 85 24  	fld	ft3, 584(a0)
80000d04: 27 3c 31 10  	fsd	ft3, 280(sp)
80000d08: 87 31 05 25  	fld	ft3, 592(a0)
80000d0c: 27 38 31 10  	fsd	ft3, 272(sp)
80000d10: 87 31 85 25  	fld	ft3, 600(a0)
80000d14: 27 34 31 10  	fsd	ft3, 264(sp)
80000d18: 87 31 05 26  	fld	ft3, 608(a0)
80000d1c: 27 30 31 10  	fsd	ft3, 256(sp)
80000d20: 87 31 85 26  	fld	ft3, 616(a0)
80000d24: 27 3c 31 0e  	fsd	ft3, 248(sp)
80000d28: 87 31 05 27  	fld	ft3, 624(a0)
80000d2c: 27 38 31 0e  	fsd	ft3, 240(sp)
80000d30: 87 31 85 27  	fld	ft3, 632(a0)
80000d34: 27 34 31 0e  	fsd	ft3, 232(sp)
80000d38: 87 31 05 28  	fld	ft3, 640(a0)
80000d3c: 27 30 31 0e  	fsd	ft3, 224(sp)
80000d40: 87 31 85 28  	fld	ft3, 648(a0)
80000d44: 27 3c 31 0c  	fsd	ft3, 216(sp)
80000d48: 87 31 05 29  	fld	ft3, 656(a0)
80000d4c: 27 38 31 0c  	fsd	ft3, 208(sp)
80000d50: 87 31 85 29  	fld	ft3, 664(a0)
80000d54: 27 34 31 0c  	fsd	ft3, 200(sp)
80000d58: 87 31 05 2a  	fld	ft3, 672(a0)
80000d5c: 27 30 31 0c  	fsd	ft3, 192(sp)
80000d60: 87 31 85 2a  	fld	ft3, 680(a0)
80000d64: 27 3c 31 0a  	fsd	ft3, 184(sp)
80000d68: 87 31 05 2b  	fld	ft3, 688(a0)
80000d6c: 27 38 31 0a  	fsd	ft3, 176(sp)
80000d70: 87 31 85 2b  	fld	ft3, 696(a0)
80000d74: 27 34 31 0a  	fsd	ft3, 168(sp)
80000d78: 87 31 05 2c  	fld	ft3, 704(a0)
80000d7c: 27 30 31 0a  	fsd	ft3, 160(sp)
80000d80: 87 31 85 2c  	fld	ft3, 712(a0)
80000d84: 27 3c 31 08  	fsd	ft3, 152(sp)
80000d88: 87 31 05 2d  	fld	ft3, 720(a0)
80000d8c: 27 38 31 08  	fsd	ft3, 144(sp)
80000d90: 87 31 85 2d  	fld	ft3, 728(a0)
80000d94: 27 34 31 08  	fsd	ft3, 136(sp)
80000d98: 87 31 05 2e  	fld	ft3, 736(a0)
80000d9c: 27 30 31 08  	fsd	ft3, 128(sp)
80000da0: 87 31 85 2e  	fld	ft3, 744(a0)
80000da4: 27 3c 31 06  	fsd	ft3, 120(sp)
80000da8: 87 31 05 2f  	fld	ft3, 752(a0)
80000dac: 27 38 31 06  	fsd	ft3, 112(sp)
80000db0: 87 31 85 2f  	fld	ft3, 760(a0)
80000db4: 27 34 31 06  	fsd	ft3, 104(sp)
80000db8: 87 31 05 30  	fld	ft3, 768(a0)
80000dbc: 27 30 31 06  	fsd	ft3, 96(sp)
80000dc0: 87 31 85 30  	fld	ft3, 776(a0)
80000dc4: 27 3c 31 04  	fsd	ft3, 88(sp)
80000dc8: 87 31 05 31  	fld	ft3, 784(a0)
80000dcc: 27 38 31 04  	fsd	ft3, 80(sp)
80000dd0: 87 31 85 31  	fld	ft3, 792(a0)
80000dd4: 27 34 31 04  	fsd	ft3, 72(sp)
80000dd8: 87 31 05 32  	fld	ft3, 800(a0)
80000ddc: 27 30 31 04  	fsd	ft3, 64(sp)
80000de0: 87 31 85 32  	fld	ft3, 808(a0)
80000de4: 27 3c 31 02  	fsd	ft3, 56(sp)
80000de8: 87 31 05 33  	fld	ft3, 816(a0)
80000dec: 27 38 31 02  	fsd	ft3, 48(sp)
80000df0: 87 31 85 33  	fld	ft3, 824(a0)
80000df4: 27 34 31 02  	fsd	ft3, 40(sp)
80000df8: 87 31 05 34  	fld	ft3, 832(a0)
80000dfc: 27 30 31 02  	fsd	ft3, 32(sp)
80000e00: 87 31 85 34  	fld	ft3, 840(a0)
80000e04: 27 3c 31 00  	fsd	ft3, 24(sp)
80000e08: 87 31 05 35  	fld	ft3, 848(a0)
80000e0c: 27 38 31 00  	fsd	ft3, 16(sp)
80000e10: 87 31 85 35  	fld	ft3, 856(a0)
80000e14: 27 34 31 00  	fsd	ft3, 8(sp)
80000e18: 93 05 00 18  	addi	a1, zero, 384
80000e1c: 13 06 00 1e  	addi	a2, zero, 480
80000e20: 53 02 00 d2  	fcvt.d.w	ft4, zero
;             r_col += a[j + i*m];
80000e24: b3 06 b5 00  	add	a3, a0, a1
80000e28: 87 b1 06 e8  	fld	ft3, -384(a3)
80000e2c: 87 b2 06 ee  	fld	ft5, -288(a3)
80000e30: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000e34: 07 b2 06 f4  	fld	ft4, -192(a3)
80000e38: 07 b3 06 fa  	fld	ft6, -96(a3)
80000e3c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000e40: 87 b2 06 00  	fld	ft5, 0(a3)
80000e44: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000e48: d3 f1 61 02  	fadd.d	ft3, ft3, ft6
80000e4c: 07 b2 06 06  	fld	ft4, 96(a3)
80000e50: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000e54: 87 b2 06 0c  	fld	ft5, 192(a3)
80000e58: 07 b3 06 12  	fld	ft6, 288(a3)
80000e5c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000e60: 07 b2 06 18  	fld	ft4, 384(a3)
80000e64: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000e68: d3 f1 61 02  	fadd.d	ft3, ft3, ft6
;     for (int j = 0; j < m; j++){
80000e6c: 93 85 85 00  	addi	a1, a1, 8
;             r_col += a[j + i*m];
80000e70: 53 f2 41 02  	fadd.d	ft4, ft3, ft4
80000e74: e3 98 c5 fa  	bne	a1, a2, 0x80000e24 <main+0x7f0>
;             r_row += a[i*m + j];
80000e78: 87 31 81 29  	fld	ft3, 664(sp)
80000e7c: 87 32 01 29  	fld	ft5, 656(sp)
80000e80: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000e84: 87 32 81 28  	fld	ft5, 648(sp)
80000e88: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000e8c: d3 f1 71 02  	fadd.d	ft3, ft3, ft7
80000e90: d3 f1 a1 02  	fadd.d	ft3, ft3, fa0
80000e94: d3 f1 b1 02  	fadd.d	ft3, ft3, fa1
80000e98: d3 f1 c1 02  	fadd.d	ft3, ft3, fa2
80000e9c: d3 f1 d1 02  	fadd.d	ft3, ft3, fa3
80000ea0: d3 f1 e1 02  	fadd.d	ft3, ft3, fa4
80000ea4: d3 f1 f1 02  	fadd.d	ft3, ft3, fa5
80000ea8: d3 f1 01 03  	fadd.d	ft3, ft3, fa6
80000eac: d3 f1 11 03  	fadd.d	ft3, ft3, fa7
80000eb0: d3 f1 c1 03  	fadd.d	ft3, ft3, ft8
80000eb4: d3 f1 d1 03  	fadd.d	ft3, ft3, ft9
80000eb8: d3 f1 e1 03  	fadd.d	ft3, ft3, ft10
80000ebc: d3 f1 f1 03  	fadd.d	ft3, ft3, ft11
80000ec0: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000ec4: d3 f1 91 02  	fadd.d	ft3, ft3, fs1
80000ec8: d3 f1 21 03  	fadd.d	ft3, ft3, fs2
80000ecc: d3 f1 31 03  	fadd.d	ft3, ft3, fs3
80000ed0: d3 f1 41 03  	fadd.d	ft3, ft3, fs4
80000ed4: d3 f1 51 03  	fadd.d	ft3, ft3, fs5
80000ed8: d3 f1 61 03  	fadd.d	ft3, ft3, fs6
80000edc: d3 f1 71 03  	fadd.d	ft3, ft3, fs7
80000ee0: d3 f1 81 03  	fadd.d	ft3, ft3, fs8
80000ee4: d3 f1 91 03  	fadd.d	ft3, ft3, fs9
80000ee8: d3 f1 a1 03  	fadd.d	ft3, ft3, fs10
80000eec: d3 f1 b1 03  	fadd.d	ft3, ft3, fs11
80000ef0: 87 32 01 28  	fld	ft5, 640(sp)
80000ef4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000ef8: 87 32 81 27  	fld	ft5, 632(sp)
80000efc: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f00: 87 32 01 27  	fld	ft5, 624(sp)
80000f04: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f08: 87 32 81 26  	fld	ft5, 616(sp)
80000f0c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f10: 87 32 01 26  	fld	ft5, 608(sp)
80000f14: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f18: 87 32 81 25  	fld	ft5, 600(sp)
80000f1c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f20: 87 32 01 25  	fld	ft5, 592(sp)
80000f24: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f28: 87 32 81 24  	fld	ft5, 584(sp)
80000f2c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f30: 87 32 01 24  	fld	ft5, 576(sp)
80000f34: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f38: 87 32 81 23  	fld	ft5, 568(sp)
80000f3c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f40: 87 32 01 23  	fld	ft5, 560(sp)
80000f44: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f48: 87 32 81 22  	fld	ft5, 552(sp)
80000f4c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f50: 87 32 01 22  	fld	ft5, 544(sp)
80000f54: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f58: 87 32 81 21  	fld	ft5, 536(sp)
80000f5c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f60: 87 32 01 21  	fld	ft5, 528(sp)
80000f64: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f68: 87 32 81 20  	fld	ft5, 520(sp)
80000f6c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f70: 87 32 01 20  	fld	ft5, 512(sp)
80000f74: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f78: 87 32 81 1f  	fld	ft5, 504(sp)
80000f7c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f80: 87 32 01 1f  	fld	ft5, 496(sp)
80000f84: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f88: 87 32 81 1e  	fld	ft5, 488(sp)
80000f8c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f90: 87 32 01 1e  	fld	ft5, 480(sp)
80000f94: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f98: 87 32 81 1d  	fld	ft5, 472(sp)
80000f9c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fa0: 87 32 01 1d  	fld	ft5, 464(sp)
80000fa4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fa8: 87 32 81 1c  	fld	ft5, 456(sp)
80000fac: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fb0: 87 32 01 1c  	fld	ft5, 448(sp)
80000fb4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fb8: 87 32 81 1b  	fld	ft5, 440(sp)
80000fbc: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fc0: 87 32 01 1b  	fld	ft5, 432(sp)
80000fc4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fc8: 87 32 81 1a  	fld	ft5, 424(sp)
80000fcc: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fd0: 87 32 01 1a  	fld	ft5, 416(sp)
80000fd4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fd8: 87 32 81 19  	fld	ft5, 408(sp)
80000fdc: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fe0: 87 32 01 19  	fld	ft5, 400(sp)
80000fe4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fe8: 87 32 81 18  	fld	ft5, 392(sp)
80000fec: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000ff0: 87 32 01 18  	fld	ft5, 384(sp)
80000ff4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000ff8: 87 32 81 17  	fld	ft5, 376(sp)
80000ffc: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001000: 87 32 01 17  	fld	ft5, 368(sp)
80001004: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001008: 87 32 81 16  	fld	ft5, 360(sp)
8000100c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001010: 87 32 01 16  	fld	ft5, 352(sp)
80001014: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001018: 87 32 81 15  	fld	ft5, 344(sp)
8000101c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001020: 87 32 01 15  	fld	ft5, 336(sp)
80001024: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001028: 87 32 81 14  	fld	ft5, 328(sp)
8000102c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001030: 87 32 01 14  	fld	ft5, 320(sp)
80001034: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001038: 87 32 81 13  	fld	ft5, 312(sp)
8000103c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001040: 87 32 01 13  	fld	ft5, 304(sp)
80001044: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001048: 87 32 81 12  	fld	ft5, 296(sp)
8000104c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001050: 87 32 01 12  	fld	ft5, 288(sp)
80001054: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001058: 87 32 81 11  	fld	ft5, 280(sp)
8000105c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001060: 87 32 01 11  	fld	ft5, 272(sp)
80001064: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001068: 87 32 81 10  	fld	ft5, 264(sp)
8000106c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001070: 87 32 01 10  	fld	ft5, 256(sp)
80001074: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001078: 87 32 81 0f  	fld	ft5, 248(sp)
8000107c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001080: 87 32 01 0f  	fld	ft5, 240(sp)
80001084: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001088: 87 32 81 0e  	fld	ft5, 232(sp)
8000108c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001090: 87 32 01 0e  	fld	ft5, 224(sp)
80001094: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001098: 87 32 81 0d  	fld	ft5, 216(sp)
8000109c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010a0: 87 32 01 0d  	fld	ft5, 208(sp)
800010a4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010a8: 87 32 81 0c  	fld	ft5, 200(sp)
800010ac: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010b0: 87 32 01 0c  	fld	ft5, 192(sp)
800010b4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010b8: 87 32 81 0b  	fld	ft5, 184(sp)
800010bc: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010c0: 87 32 01 0b  	fld	ft5, 176(sp)
800010c4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010c8: 87 32 81 0a  	fld	ft5, 168(sp)
800010cc: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010d0: 87 32 01 0a  	fld	ft5, 160(sp)
800010d4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010d8: 87 32 81 09  	fld	ft5, 152(sp)
800010dc: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010e0: 87 32 01 09  	fld	ft5, 144(sp)
800010e4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010e8: 87 32 81 08  	fld	ft5, 136(sp)
800010ec: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010f0: 87 32 01 08  	fld	ft5, 128(sp)
800010f4: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010f8: 87 32 81 07  	fld	ft5, 120(sp)
800010fc: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001100: 87 32 01 07  	fld	ft5, 112(sp)
80001104: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001108: 87 32 81 06  	fld	ft5, 104(sp)
8000110c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001110: 87 32 01 06  	fld	ft5, 96(sp)
80001114: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001118: 87 32 81 05  	fld	ft5, 88(sp)
8000111c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001120: 87 32 01 05  	fld	ft5, 80(sp)
80001124: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001128: 87 32 81 04  	fld	ft5, 72(sp)
8000112c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001130: 87 32 01 04  	fld	ft5, 64(sp)
80001134: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001138: 87 32 81 03  	fld	ft5, 56(sp)
8000113c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001140: 87 32 01 03  	fld	ft5, 48(sp)
80001144: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001148: 87 32 81 02  	fld	ft5, 40(sp)
8000114c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001150: 87 32 01 02  	fld	ft5, 32(sp)
80001154: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001158: 87 32 81 01  	fld	ft5, 24(sp)
8000115c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001160: 87 32 01 01  	fld	ft5, 16(sp)
80001164: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001168: 87 32 81 00  	fld	ft5, 8(sp)
8000116c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
;             r_rev += a[i*m + j];
80001170: 87 32 05 30  	fld	ft5, 768(a0)
80001174: 07 33 85 30  	fld	ft6, 776(a0)
80001178: 87 33 05 31  	fld	ft7, 784(a0)
8000117c: 07 35 85 31  	fld	fa0, 792(a0)
80001180: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001184: 87 32 05 32  	fld	ft5, 800(a0)
80001188: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000118c: 07 33 85 32  	fld	ft6, 808(a0)
80001190: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001194: 87 33 05 33  	fld	ft7, 816(a0)
80001198: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000119c: 07 35 85 33  	fld	fa0, 824(a0)
800011a0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800011a4: 87 32 05 34  	fld	ft5, 832(a0)
800011a8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800011ac: 07 33 85 34  	fld	ft6, 840(a0)
800011b0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800011b4: 87 33 05 35  	fld	ft7, 848(a0)
800011b8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800011bc: 07 35 85 35  	fld	fa0, 856(a0)
800011c0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800011c4: 87 32 05 2a  	fld	ft5, 672(a0)
800011c8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800011cc: 07 33 85 2a  	fld	ft6, 680(a0)
800011d0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800011d4: 87 33 05 2b  	fld	ft7, 688(a0)
800011d8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800011dc: 07 35 85 2b  	fld	fa0, 696(a0)
800011e0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800011e4: 87 32 05 2c  	fld	ft5, 704(a0)
800011e8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800011ec: 07 33 85 2c  	fld	ft6, 712(a0)
800011f0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800011f4: 87 33 05 2d  	fld	ft7, 720(a0)
800011f8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800011fc: 07 35 85 2d  	fld	fa0, 728(a0)
80001200: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001204: 87 32 05 2e  	fld	ft5, 736(a0)
80001208: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000120c: 07 33 85 2e  	fld	ft6, 744(a0)
80001210: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001214: 87 33 05 2f  	fld	ft7, 752(a0)
80001218: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000121c: 07 35 85 2f  	fld	fa0, 760(a0)
80001220: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001224: 87 32 05 24  	fld	ft5, 576(a0)
80001228: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000122c: 07 33 85 24  	fld	ft6, 584(a0)
80001230: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001234: 87 33 05 25  	fld	ft7, 592(a0)
80001238: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000123c: 07 35 85 25  	fld	fa0, 600(a0)
80001240: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001244: 87 32 05 26  	fld	ft5, 608(a0)
80001248: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000124c: 07 33 85 26  	fld	ft6, 616(a0)
80001250: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001254: 87 33 05 27  	fld	ft7, 624(a0)
80001258: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000125c: 07 35 85 27  	fld	fa0, 632(a0)
80001260: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001264: 87 32 05 28  	fld	ft5, 640(a0)
80001268: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000126c: 07 33 85 28  	fld	ft6, 648(a0)
80001270: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001274: 87 33 05 29  	fld	ft7, 656(a0)
80001278: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000127c: 07 35 85 29  	fld	fa0, 664(a0)
80001280: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001284: 87 32 05 1e  	fld	ft5, 480(a0)
80001288: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000128c: 07 33 85 1e  	fld	ft6, 488(a0)
80001290: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001294: 87 33 05 1f  	fld	ft7, 496(a0)
80001298: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000129c: 07 35 85 1f  	fld	fa0, 504(a0)
800012a0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800012a4: 87 32 05 20  	fld	ft5, 512(a0)
800012a8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800012ac: 07 33 85 20  	fld	ft6, 520(a0)
800012b0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800012b4: 87 33 05 21  	fld	ft7, 528(a0)
800012b8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800012bc: 07 35 85 21  	fld	fa0, 536(a0)
800012c0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800012c4: 87 32 05 22  	fld	ft5, 544(a0)
800012c8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800012cc: 07 33 85 22  	fld	ft6, 552(a0)
800012d0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800012d4: 87 33 05 23  	fld	ft7, 560(a0)
800012d8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800012dc: 07 35 85 23  	fld	fa0, 568(a0)
800012e0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800012e4: 87 32 05 18  	fld	ft5, 384(a0)
800012e8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800012ec: 07 33 85 18  	fld	ft6, 392(a0)
800012f0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800012f4: 87 33 05 19  	fld	ft7, 400(a0)
800012f8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800012fc: 07 35 85 19  	fld	fa0, 408(a0)
80001300: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001304: 87 32 05 1a  	fld	ft5, 416(a0)
80001308: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000130c: 07 33 85 1a  	fld	ft6, 424(a0)
80001310: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001314: 87 33 05 1b  	fld	ft7, 432(a0)
80001318: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000131c: 07 35 85 1b  	fld	fa0, 440(a0)
80001320: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001324: 87 32 05 1c  	fld	ft5, 448(a0)
80001328: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000132c: 07 33 85 1c  	fld	ft6, 456(a0)
80001330: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001334: 87 33 05 1d  	fld	ft7, 464(a0)
80001338: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000133c: 07 35 85 1d  	fld	fa0, 472(a0)
80001340: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001344: 87 32 05 12  	fld	ft5, 288(a0)
80001348: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000134c: 07 33 85 12  	fld	ft6, 296(a0)
80001350: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001354: 87 33 05 13  	fld	ft7, 304(a0)
80001358: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000135c: 07 35 85 13  	fld	fa0, 312(a0)
80001360: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001364: 87 32 05 14  	fld	ft5, 320(a0)
80001368: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000136c: 07 33 85 14  	fld	ft6, 328(a0)
80001370: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001374: 87 33 05 15  	fld	ft7, 336(a0)
80001378: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000137c: 07 35 85 15  	fld	fa0, 344(a0)
80001380: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001384: 87 32 05 16  	fld	ft5, 352(a0)
80001388: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000138c: 07 33 85 16  	fld	ft6, 360(a0)
80001390: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001394: 87 33 05 17  	fld	ft7, 368(a0)
80001398: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000139c: 07 35 85 17  	fld	fa0, 376(a0)
800013a0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800013a4: 87 32 05 0c  	fld	ft5, 192(a0)
800013a8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800013ac: 07 33 85 0c  	fld	ft6, 200(a0)
800013b0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800013b4: 87 33 05 0d  	fld	ft7, 208(a0)
800013b8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800013bc: 07 35 85 0d  	fld	fa0, 216(a0)
800013c0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800013c4: 87 32 05 0e  	fld	ft5, 224(a0)
800013c8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800013cc: 07 33 85 0e  	fld	ft6, 232(a0)
800013d0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800013d4: 87 33 05 0f  	fld	ft7, 240(a0)
800013d8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800013dc: 07 35 85 0f  	fld	fa0, 248(a0)
800013e0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800013e4: 87 32 05 10  	fld	ft5, 256(a0)
800013e8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800013ec: 07 33 85 10  	fld	ft6, 264(a0)
800013f0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800013f4: 87 33 05 11  	fld	ft7, 272(a0)
800013f8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800013fc: 07 35 85 11  	fld	fa0, 280(a0)
80001400: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001404: 87 32 05 06  	fld	ft5, 96(a0)
80001408: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000140c: 07 33 85 06  	fld	ft6, 104(a0)
80001410: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001414: 87 33 05 07  	fld	ft7, 112(a0)
80001418: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000141c: 07 35 85 07  	fld	fa0, 120(a0)
80001420: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001424: 87 32 05 08  	fld	ft5, 128(a0)
80001428: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000142c: 07 33 85 08  	fld	ft6, 136(a0)
80001430: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001434: 87 33 05 09  	fld	ft7, 144(a0)
80001438: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000143c: 07 35 85 09  	fld	fa0, 152(a0)
80001440: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001444: 87 32 05 0a  	fld	ft5, 160(a0)
80001448: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000144c: 07 33 85 0a  	fld	ft6, 168(a0)
80001450: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001454: 87 33 05 0b  	fld	ft7, 176(a0)
80001458: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000145c: 07 35 85 0b  	fld	fa0, 184(a0)
80001460: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001464: 87 32 05 00  	fld	ft5, 0(a0)
80001468: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000146c: 07 33 85 00  	fld	ft6, 8(a0)
80001470: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001474: 87 33 05 01  	fld	ft7, 16(a0)
80001478: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000147c: 07 35 85 01  	fld	fa0, 24(a0)
80001480: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80001484: 87 32 05 02  	fld	ft5, 32(a0)
80001488: 53 72 62 02  	fadd.d	ft4, ft4, ft6
8000148c: 07 33 85 02  	fld	ft6, 40(a0)
80001490: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80001494: 87 33 05 03  	fld	ft7, 48(a0)
80001498: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
8000149c: 07 35 85 03  	fld	fa0, 56(a0)
800014a0: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800014a4: 87 32 05 04  	fld	ft5, 64(a0)
800014a8: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800014ac: 07 33 85 04  	fld	ft6, 72(a0)
800014b0: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800014b4: 87 33 05 05  	fld	ft7, 80(a0)
800014b8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800014bc: 07 35 85 05  	fld	fa0, 88(a0)
800014c0: 53 72 52 02  	fadd.d	ft4, ft4, ft5

800014c4 <.LBB0_15>:
800014c4: 17 25 00 00  	auipc	a0, 2
800014c8: 13 05 45 65  	addi	a0, a0, 1620
800014cc: 87 32 05 00  	fld	ft5, 0(a0)
;     double error = 2*r_row - r_col - r_rev;
800014d0: 53 72 62 02  	fadd.d	ft4, ft4, ft6
800014d4: 53 72 72 02  	fadd.d	ft4, ft4, ft7
800014d8: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
800014dc: c3 f1 51 22  	fmadd.d	ft3, ft3, ft5, ft4
;     error = error < 0.0 ? -error : error;
800014e0: 53 a4 31 22  	fabs.d	fs0, ft3
;     printf("error = %f\n", error);
800014e4: 27 30 81 2a  	fsd	fs0, 672(sp)
800014e8: 03 26 01 2a  	lw	a2, 672(sp)
800014ec: 83 26 41 2a  	lw	a3, 676(sp)

800014f0 <.LBB0_16>:
800014f0: 17 25 00 00  	auipc	a0, 2
800014f4: 13 05 55 39  	addi	a0, a0, 917
800014f8: 97 00 00 00  	auipc	ra, 0
800014fc: e7 80 40 05  	jalr	84(ra)

80001500 <.LBB0_17>:
80001500: 17 25 00 00  	auipc	a0, 2
80001504: 13 05 05 62  	addi	a0, a0, 1568
80001508: 87 31 05 00  	fld	ft3, 0(a0)
;     return error > 0.0001;
8000150c: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80001510: 87 3d 81 2a  	fld	fs11, 680(sp)
80001514: 07 3d 01 2b  	fld	fs10, 688(sp)
80001518: 87 3c 81 2b  	fld	fs9, 696(sp)
8000151c: 07 3c 01 2c  	fld	fs8, 704(sp)
80001520: 87 3b 81 2c  	fld	fs7, 712(sp)
80001524: 07 3b 01 2d  	fld	fs6, 720(sp)
80001528: 87 3a 81 2d  	fld	fs5, 728(sp)
8000152c: 07 3a 01 2e  	fld	fs4, 736(sp)
80001530: 87 39 81 2e  	fld	fs3, 744(sp)
80001534: 07 39 01 2f  	fld	fs2, 752(sp)
80001538: 87 34 81 2f  	fld	fs1, 760(sp)
8000153c: 07 34 01 30  	fld	fs0, 768(sp)
80001540: 83 20 c1 30  	lw	ra, 780(sp)
80001544: 13 01 01 31  	addi	sp, sp, 784
80001548: 67 80 00 00  	ret

8000154c <printf_>:
; {
8000154c: 13 01 01 fd  	addi	sp, sp, -48
80001550: 23 26 11 00  	sw	ra, 12(sp)
80001554: 93 02 05 00  	mv	t0, a0
80001558: 23 26 11 03  	sw	a7, 44(sp)
8000155c: 23 24 01 03  	sw	a6, 40(sp)
80001560: 23 22 f1 02  	sw	a5, 36(sp)
80001564: 23 20 e1 02  	sw	a4, 32(sp)
80001568: 23 2e d1 00  	sw	a3, 28(sp)
8000156c: 23 2c c1 00  	sw	a2, 24(sp)
80001570: 23 2a b1 00  	sw	a1, 20(sp)
80001574: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001578: 23 24 a1 00  	sw	a0, 8(sp)

8000157c <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
8000157c: 17 15 00 00  	auipc	a0, 1
80001580: 13 05 45 c2  	addi	a0, a0, -988
80001584: 93 05 71 00  	addi	a1, sp, 7
80001588: 13 06 f0 ff  	addi	a2, zero, -1
8000158c: 13 07 41 01  	addi	a4, sp, 20
80001590: 93 86 02 00  	mv	a3, t0
80001594: 97 00 00 00  	auipc	ra, 0
80001598: e7 80 40 01  	jalr	20(ra)
;   return ret;
8000159c: 83 20 c1 00  	lw	ra, 12(sp)
800015a0: 13 01 01 03  	addi	sp, sp, 48
800015a4: 67 80 00 00  	ret

800015a8 <_vsnprintf.llvm.17592004524093383706>:
; {
800015a8: 13 01 01 f9  	addi	sp, sp, -112
800015ac: 23 26 11 06  	sw	ra, 108(sp)
800015b0: 23 24 81 06  	sw	s0, 104(sp)
800015b4: 23 22 91 06  	sw	s1, 100(sp)
800015b8: 23 20 21 07  	sw	s2, 96(sp)
800015bc: 23 2e 31 05  	sw	s3, 92(sp)
800015c0: 23 2c 41 05  	sw	s4, 88(sp)
800015c4: 23 2a 51 05  	sw	s5, 84(sp)
800015c8: 23 28 61 05  	sw	s6, 80(sp)
800015cc: 23 26 71 05  	sw	s7, 76(sp)
800015d0: 23 24 81 05  	sw	s8, 72(sp)
800015d4: 23 22 91 05  	sw	s9, 68(sp)
800015d8: 23 20 a1 05  	sw	s10, 64(sp)
800015dc: 23 2e b1 03  	sw	s11, 60(sp)
800015e0: 93 09 07 00  	mv	s3, a4
800015e4: 13 84 06 00  	mv	s0, a3
800015e8: 93 0a 06 00  	mv	s5, a2
800015ec: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800015f0: 63 86 05 00  	beqz	a1, 0x800015fc <.LBB1_183>
800015f4: 13 09 05 00  	mv	s2, a0
800015f8: 6f 00 c0 00  	j	0x80001604 <.LBB1_183+0x8>

800015fc <.LBB1_183>:
800015fc: 17 19 00 00  	auipc	s2, 1
80001600: 13 09 09 c5  	addi	s2, s2, -944
80001604: 13 0c 00 00  	mv	s8, zero
80001608: 13 0b 50 02  	addi	s6, zero, 37
8000160c: 93 0d 00 01  	addi	s11, zero, 16
80001610: 93 0b e0 02  	addi	s7, zero, 46
80001614: 37 15 00 00  	lui	a0, 1
80001618: 13 05 05 80  	addi	a0, a0, -2048
8000161c: 23 2c a1 00  	sw	a0, 24(sp)
80001620: 37 05 01 00  	lui	a0, 16
80001624: 13 05 f5 ff  	addi	a0, a0, -1
80001628: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
8000162c: 13 0d 24 00  	addi	s10, s0, 2
80001630: 93 0c 0c 00  	mv	s9, s8
80001634: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001638: 03 45 04 00  	lbu	a0, 0(s0)
8000163c: e3 04 05 30  	beqz	a0, 0x80002144 <.LBB1_124+0x3b0>
80001640: 63 08 65 03  	beq	a0, s6, 0x80001670 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80001644: 93 84 1c 00  	addi	s1, s9, 1
80001648: 93 05 0a 00  	mv	a1, s4
8000164c: 13 86 0c 00  	mv	a2, s9
80001650: 93 86 0a 00  	mv	a3, s5
80001654: e7 00 09 00  	jalr	s2
;       format++;
80001658: 13 04 14 00  	addi	s0, s0, 1
;       continue;
8000165c: 13 0d 1d 00  	addi	s10, s10, 1
80001660: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001664: 03 45 04 00  	lbu	a0, 0(s0)
80001668: e3 1c 05 fc  	bnez	a0, 0x80001640 <.LBB1_183+0x44>
8000166c: 6f 00 90 2d  	j	0x80002144 <.LBB1_124+0x3b0>
;     flags = 0U;
80001670: 13 04 00 00  	mv	s0, zero
80001674: 6f 00 00 01  	j	0x80001684 <.LBB1_9+0x8>

80001678 <.LBB1_8>:
80001678: 93 05 00 01  	addi	a1, zero, 16

8000167c <.LBB1_9>:
8000167c: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001680: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001684: 03 45 fd ff  	lbu	a0, -1(s10)
80001688: 93 05 05 fe  	addi	a1, a0, -32
8000168c: 63 ec bd 02  	bltu	s11, a1, 0x800016c4 <.LBB1_15>
80001690: 93 95 25 00  	slli	a1, a1, 2

80001694 <.LBB1_184>:
80001694: 17 26 00 00  	auipc	a2, 2
80001698: 13 06 46 20  	addi	a2, a2, 516
8000169c: b3 85 c5 00  	add	a1, a1, a2
800016a0: 03 a6 05 00  	lw	a2, 0(a1)
800016a4: 93 05 10 00  	addi	a1, zero, 1
800016a8: 67 00 06 00  	jr	a2

800016ac <.LBB1_12>:
800016ac: 93 05 80 00  	addi	a1, zero, 8
800016b0: 6f f0 df fc  	j	0x8000167c <.LBB1_9>

800016b4 <.LBB1_13>:
800016b4: 93 05 40 00  	addi	a1, zero, 4
800016b8: 6f f0 5f fc  	j	0x8000167c <.LBB1_9>

800016bc <.LBB1_14>:
800016bc: 93 05 20 00  	addi	a1, zero, 2
800016c0: 6f f0 df fb  	j	0x8000167c <.LBB1_9>

800016c4 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800016c4: 93 05 05 fd  	addi	a1, a0, -48
800016c8: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800016cc: 93 05 fd ff  	addi	a1, s10, -1
800016d0: 93 06 90 00  	addi	a3, zero, 9
800016d4: 63 ee c6 06  	bltu	a3, a2, 0x80001750 <.LBB1_15+0x8c>
800016d8: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800016dc: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800016e0: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800016e4: b3 06 8b 03  	mul	a3, s6, s8
800016e8: 93 85 15 00  	addi	a1, a1, 1
800016ec: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800016f0: 93 06 05 fd  	addi	a3, a0, -48
800016f4: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800016f8: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800016fc: e3 e0 86 ff  	bltu	a3, s8, 0x800016dc <.LBB1_15+0x18>
80001700: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001704: 63 16 75 0b  	bne	a0, s7, 0x800017b0 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001708: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
8000170c: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001710: 93 05 05 fd  	addi	a1, a0, -48
80001714: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001718: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
8000171c: 93 06 90 00  	addi	a3, zero, 9
80001720: 63 e0 c6 06  	bltu	a3, a2, 0x80001780 <.LBB1_15+0xbc>
80001724: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001728: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000172c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001730: b3 86 8b 03  	mul	a3, s7, s8
80001734: 93 85 15 00  	addi	a1, a1, 1
80001738: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000173c: 93 06 05 fd  	addi	a3, a0, -48
80001740: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001744: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001748: e3 e0 86 ff  	bltu	a3, s8, 0x80001728 <.LBB1_15+0x64>
8000174c: 6f 00 00 07  	j	0x800017bc <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001750: 13 06 a0 02  	addi	a2, zero, 42
80001754: 63 18 c5 04  	bne	a0, a2, 0x800017a4 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001758: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
8000175c: 63 d4 05 00  	bgez	a1, 0x80001764 <.LBB1_15+0xa0>
80001760: 13 64 24 00  	ori	s0, s0, 2
80001764: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001768: 03 45 0d 00  	lbu	a0, 0(s10)
8000176c: 13 d6 f5 41  	srai	a2, a1, 31
80001770: b3 85 c5 00  	add	a1, a1, a2
80001774: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001778: e3 08 75 f9  	beq	a0, s7, 0x80001708 <.LBB1_15+0x44>
8000177c: 6f 00 40 03  	j	0x800017b0 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001780: 13 06 a0 02  	addi	a2, zero, 42
80001784: 63 1a c5 02  	bne	a0, a2, 0x800017b8 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001788: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
8000178c: 63 44 70 01  	bgtz	s7, 0x80001794 <.LBB1_15+0xd0>
80001790: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001794: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001798: 13 0d 2d 00  	addi	s10, s10, 2
8000179c: 93 89 49 00  	addi	s3, s3, 4
800017a0: 6f 00 00 02  	j	0x800017c0 <.LBB1_15+0xfc>
800017a4: 13 0b 00 00  	mv	s6, zero
800017a8: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800017ac: e3 0e 75 f5  	beq	a0, s7, 0x80001708 <.LBB1_15+0x44>
800017b0: 93 0b 00 00  	mv	s7, zero
800017b4: 6f 00 c0 00  	j	0x800017c0 <.LBB1_15+0xfc>
800017b8: 93 0b 00 00  	mv	s7, zero
800017bc: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800017c0: 93 05 85 f9  	addi	a1, a0, -104
800017c4: 13 d6 15 00  	srli	a2, a1, 1
800017c8: 93 95 f5 01  	slli	a1, a1, 31
800017cc: b3 e5 c5 00  	or	a1, a1, a2
800017d0: 13 06 90 00  	addi	a2, zero, 9
800017d4: 63 62 b6 06  	bltu	a2, a1, 0x80001838 <.LBB1_42>
800017d8: 93 95 25 00  	slli	a1, a1, 2

800017dc <.LBB1_185>:
800017dc: 17 26 00 00  	auipc	a2, 2
800017e0: 13 06 06 10  	addi	a2, a2, 256
800017e4: b3 85 c5 00  	add	a1, a1, a2
800017e8: 83 a6 05 00  	lw	a3, 0(a1)
800017ec: 93 05 10 00  	addi	a1, zero, 1
800017f0: 13 06 00 10  	addi	a2, zero, 256
800017f4: 67 80 06 00  	jr	a3

800017f8 <.LBB1_36>:
;         if (*format == 'h') {
800017f8: 03 45 1d 00  	lbu	a0, 1(s10)
800017fc: 93 05 80 06  	addi	a1, zero, 104
80001800: 63 12 b5 12  	bne	a0, a1, 0x80001924 <.LBB1_53+0x48>
80001804: 93 05 20 00  	addi	a1, zero, 2
80001808: 13 06 00 0c  	addi	a2, zero, 192
8000180c: 6f 00 00 02  	j	0x8000182c <.LBB1_41>

80001810 <.LBB1_38>:
80001810: 13 06 00 20  	addi	a2, zero, 512
80001814: 6f 00 80 01  	j	0x8000182c <.LBB1_41>

80001818 <.LBB1_39>:
;         if (*format == 'l') {
80001818: 03 45 1d 00  	lbu	a0, 1(s10)
8000181c: 93 05 c0 06  	addi	a1, zero, 108
80001820: 63 18 b5 10  	bne	a0, a1, 0x80001930 <.LBB1_53+0x54>
80001824: 93 05 20 00  	addi	a1, zero, 2
80001828: 13 06 00 30  	addi	a2, zero, 768

8000182c <.LBB1_41>:
8000182c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001830: 03 45 0d 00  	lbu	a0, 0(s10)
80001834: 33 64 c4 00  	or	s0, s0, a2

80001838 <.LBB1_42>:
;     switch (*format) {
80001838: 93 05 b5 fd  	addi	a1, a0, -37
8000183c: 13 06 30 05  	addi	a2, zero, 83
80001840: 63 64 b6 10  	bltu	a2, a1, 0x80001948 <.LBB1_59>
80001844: 93 95 25 00  	slli	a1, a1, 2

80001848 <.LBB1_186>:
80001848: 17 26 00 00  	auipc	a2, 2
8000184c: 13 06 c6 0b  	addi	a2, a2, 188
80001850: b3 85 c5 00  	add	a1, a1, a2
80001854: 03 a6 05 00  	lw	a2, 0(a1)
80001858: 93 05 80 00  	addi	a1, zero, 8
8000185c: 13 0c 00 01  	addi	s8, zero, 16
80001860: 67 00 06 00  	jr	a2

80001864 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001864: 13 74 f4 fe  	andi	s0, s0, -17
80001868: 13 0c a0 00  	addi	s8, zero, 10

8000186c <.LBB1_45>:
;         if (*format == 'X') {
8000186c: 93 05 80 05  	addi	a1, zero, 88
80001870: 63 14 b5 00  	bne	a0, a1, 0x80001878 <.LBB1_45+0xc>
80001874: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001878: 93 05 40 06  	addi	a1, zero, 100
8000187c: 63 08 b5 0e  	beq	a0, a1, 0x8000196c <.LBB1_62+0x8>
80001880: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001884: 13 06 90 06  	addi	a2, zero, 105
80001888: 63 02 c5 0e  	beq	a0, a2, 0x8000196c <.LBB1_62+0x8>
8000188c: 6f 00 80 0d  	j	0x80001964 <.LBB1_62>

80001890 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001890: 93 05 60 04  	addi	a1, zero, 70
80001894: 63 14 b5 00  	bne	a0, a1, 0x8000189c <.LBB1_49+0xc>
80001898: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
8000189c: 13 85 79 00  	addi	a0, s3, 7
800018a0: 13 75 85 ff  	andi	a0, a0, -8
800018a4: 07 35 05 00  	fld	fa0, 0(a0)
800018a8: 93 09 85 00  	addi	s3, a0, 8
800018ac: 13 05 09 00  	mv	a0, s2
800018b0: 93 05 0a 00  	mv	a1, s4
800018b4: 13 86 0c 00  	mv	a2, s9
800018b8: 93 86 0a 00  	mv	a3, s5
800018bc: 13 87 0b 00  	mv	a4, s7
800018c0: 93 07 0b 00  	mv	a5, s6
800018c4: 13 08 04 00  	mv	a6, s0
800018c8: 97 10 00 00  	auipc	ra, 1
800018cc: e7 80 80 98  	jalr	-1656(ra)
800018d0: 6f 00 00 7c  	j	0x80002090 <.LBB1_124+0x2fc>

800018d4 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800018d4: 83 25 81 01  	lw	a1, 24(sp)
800018d8: 33 64 b4 00  	or	s0, s0, a1

800018dc <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800018dc: 13 65 25 00  	ori	a0, a0, 2
800018e0: 93 05 70 04  	addi	a1, zero, 71
800018e4: 63 14 b5 00  	bne	a0, a1, 0x800018ec <.LBB1_53+0x10>
800018e8: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800018ec: 13 85 79 00  	addi	a0, s3, 7
800018f0: 13 75 85 ff  	andi	a0, a0, -8
800018f4: 07 35 05 00  	fld	fa0, 0(a0)
800018f8: 93 09 85 00  	addi	s3, a0, 8
800018fc: 13 05 09 00  	mv	a0, s2
80001900: 93 05 0a 00  	mv	a1, s4
80001904: 13 86 0c 00  	mv	a2, s9
80001908: 93 86 0a 00  	mv	a3, s5
8000190c: 13 87 0b 00  	mv	a4, s7
80001910: 93 07 0b 00  	mv	a5, s6
80001914: 13 08 04 00  	mv	a6, s0
80001918: 97 10 00 00  	auipc	ra, 1
8000191c: e7 80 80 01  	jalr	24(ra)
80001920: 6f 00 00 77  	j	0x80002090 <.LBB1_124+0x2fc>
80001924: 13 64 04 08  	ori	s0, s0, 128
80001928: 13 0d 1d 00  	addi	s10, s10, 1
8000192c: 6f f0 df f0  	j	0x80001838 <.LBB1_42>
80001930: 13 64 04 10  	ori	s0, s0, 256
80001934: 13 0d 1d 00  	addi	s10, s10, 1
80001938: 6f f0 1f f0  	j	0x80001838 <.LBB1_42>

8000193c <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
8000193c: 13 8c 1c 00  	addi	s8, s9, 1
80001940: 13 05 50 02  	addi	a0, zero, 37
80001944: 6f 00 80 00  	j	0x8000194c <.LBB1_59+0x4>

80001948 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001948: 13 8c 1c 00  	addi	s8, s9, 1
8000194c: 93 05 0a 00  	mv	a1, s4
80001950: 13 86 0c 00  	mv	a2, s9
80001954: 93 86 0a 00  	mv	a3, s5
80001958: e7 00 09 00  	jalr	s2
8000195c: 6f 00 80 73  	j	0x80002094 <.LBB1_124+0x300>

80001960 <.LBB1_61>:
80001960: 93 05 20 00  	addi	a1, zero, 2

80001964 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001964: 13 74 34 ff  	andi	s0, s0, -13
80001968: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
8000196c: 93 75 04 40  	andi	a1, s0, 1024
80001970: 63 84 05 00  	beqz	a1, 0x80001978 <.LBB1_62+0x14>
80001974: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001978: 93 05 90 06  	addi	a1, zero, 105
8000197c: 63 06 b5 00  	beq	a0, a1, 0x80001988 <.LBB1_62+0x24>
80001980: 93 05 40 06  	addi	a1, zero, 100
80001984: 63 1c b5 12  	bne	a0, a1, 0x80001abc <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001988: 13 75 04 20  	andi	a0, s0, 512
8000198c: 63 16 05 02  	bnez	a0, 0x800019b8 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001990: 13 75 04 10  	andi	a0, s0, 256
80001994: 63 1c 05 14  	bnez	a0, 0x80001aec <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001998: 13 75 04 04  	andi	a0, s0, 64
8000199c: 63 18 05 4e  	bnez	a0, 0x80001e8c <.LBB1_124+0xf8>
800019a0: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800019a4: 93 75 04 08  	andi	a1, s0, 128
800019a8: 63 84 05 4e  	beqz	a1, 0x80001e90 <.LBB1_124+0xfc>
800019ac: 13 15 08 01  	slli	a0, a6, 16
800019b0: 13 58 05 41  	srai	a6, a0, 16
800019b4: 6f 00 c0 4d  	j	0x80001e90 <.LBB1_124+0xfc>
800019b8: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800019bc: 13 85 79 00  	addi	a0, s3, 7
800019c0: 13 75 85 ff  	andi	a0, a0, -8
800019c4: 83 29 05 00  	lw	s3, 0(a0)
800019c8: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800019cc: 13 65 45 00  	ori	a0, a0, 4
800019d0: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800019d4: 23 24 a1 00  	sw	a0, 8(sp)
800019d8: 33 e5 a9 00  	or	a0, s3, a0
800019dc: 63 14 05 00  	bnez	a0, 0x800019e4 <.LBB1_62+0x80>
800019e0: 13 74 f4 fe  	andi	s0, s0, -17
800019e4: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800019e8: 93 75 04 40  	andi	a1, s0, 1024
800019ec: 93 d5 a5 00  	srli	a1, a1, 10
800019f0: 33 75 b5 00  	and	a0, a0, a1
800019f4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800019f8: 63 14 05 0a  	bnez	a0, 0x80001aa0 <.LBB1_62+0x13c>
800019fc: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001a00: 63 da 04 00  	bgez	s1, 0x80001a14 <.LBB1_62+0xb0>
80001a04: 33 35 30 01  	snez	a0, s3
80001a08: b3 09 30 41  	neg	s3, s3
80001a0c: 33 85 a4 00  	add	a0, s1, a0
80001a10: b3 04 a0 40  	neg	s1, a0
80001a14: 13 09 00 00  	mv	s2, zero
80001a18: 13 75 04 02  	andi	a0, s0, 32
80001a1c: 13 45 15 06  	xori	a0, a0, 97
80001a20: 13 05 65 0f  	addi	a0, a0, 246
80001a24: 23 2a a1 00  	sw	a0, 20(sp)
80001a28: 6f 00 40 02  	j	0x80001a4c <.LBB1_62+0xe8>
80001a2c: 13 06 10 00  	addi	a2, zero, 1
80001a30: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001a34: 93 36 f9 01  	sltiu	a3, s2, 31
80001a38: 33 f6 c6 00  	and	a2, a3, a2
80001a3c: 13 89 07 00  	mv	s2, a5
80001a40: 93 09 05 00  	mv	s3, a0
80001a44: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001a48: 63 0c 06 04  	beqz	a2, 0x80001aa0 <.LBB1_62+0x13c>
;       value /= base;
80001a4c: 13 85 09 00  	mv	a0, s3
80001a50: 93 85 04 00  	mv	a1, s1
80001a54: 13 06 0c 00  	mv	a2, s8
80001a58: 93 06 00 00  	mv	a3, zero
80001a5c: 97 e0 ff ff  	auipc	ra, 1048574
80001a60: e7 80 40 5a  	jalr	1444(ra)
80001a64: 33 06 85 03  	mul	a2, a0, s8
80001a68: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001a6c: 13 77 e6 0f  	andi	a4, a2, 254
80001a70: 93 06 00 03  	addi	a3, zero, 48
80001a74: 93 07 a0 00  	addi	a5, zero, 10
80001a78: 63 64 f7 00  	bltu	a4, a5, 0x80001a80 <.LBB1_62+0x11c>
80001a7c: 83 26 41 01  	lw	a3, 20(sp)
80001a80: 33 86 c6 00  	add	a2, a3, a2
80001a84: 93 06 c1 01  	addi	a3, sp, 28
80001a88: b3 86 26 01  	add	a3, a3, s2
80001a8c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001a90: e3 9e 04 f8  	bnez	s1, 0x80001a2c <.LBB1_62+0xc8>
80001a94: 33 b6 89 01  	sltu	a2, s3, s8
80001a98: 13 46 16 00  	xori	a2, a2, 1
80001a9c: 6f f0 5f f9  	j	0x80001a30 <.LBB1_62+0xcc>
80001aa0: 03 25 41 00  	lw	a0, 4(sp)
80001aa4: 93 09 85 00  	addi	s3, a0, 8
80001aa8: 03 25 81 00  	lw	a0, 8(sp)
80001aac: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001ab0: 13 07 c1 01  	addi	a4, sp, 28
80001ab4: 03 29 c1 00  	lw	s2, 12(sp)
80001ab8: 6f 00 80 47  	j	0x80001f30 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80001abc: 13 75 04 20  	andi	a0, s0, 512
80001ac0: 63 12 05 0c  	bnez	a0, 0x80001b84 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001ac4: 13 75 04 10  	andi	a0, s0, 256
80001ac8: 63 1e 05 46  	bnez	a0, 0x80001f44 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001acc: 13 75 04 04  	andi	a0, s0, 64
80001ad0: 63 10 05 50  	bnez	a0, 0x80001fd0 <.LBB1_124+0x23c>
80001ad4: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001ad8: 93 75 04 08  	andi	a1, s0, 128
80001adc: 63 8c 05 4e  	beqz	a1, 0x80001fd4 <.LBB1_124+0x240>
80001ae0: 83 25 01 01  	lw	a1, 16(sp)
80001ae4: 33 75 b5 00  	and	a0, a0, a1
80001ae8: 6f 00 c0 4e  	j	0x80001fd4 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80001aec: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001af0: 63 14 08 00  	bnez	a6, 0x80001af8 <.LBB1_62+0x194>
80001af4: 13 74 f4 fe  	andi	s0, s0, -17
80001af8: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001afc: 13 76 04 40  	andi	a2, s0, 1024
80001b00: 13 56 a6 00  	srli	a2, a2, 10
80001b04: b3 f5 c5 00  	and	a1, a1, a2
80001b08: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001b0c: 63 9c 05 40  	bnez	a1, 0x80001f24 <.LBB1_124+0x190>
80001b10: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001b14: 13 56 f8 41  	srai	a2, a6, 31
80001b18: b3 06 c8 00  	add	a3, a6, a2
80001b1c: b3 c6 c6 00  	xor	a3, a3, a2
80001b20: 13 76 04 02  	andi	a2, s0, 32
80001b24: 13 46 16 06  	xori	a2, a2, 97
80001b28: 93 08 66 0f  	addi	a7, a2, 246
80001b2c: 6f 00 40 03  	j	0x80001b60 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b30: 33 05 f6 00  	add	a0, a2, a5
80001b34: 93 87 15 00  	addi	a5, a1, 1
80001b38: 13 06 c1 01  	addi	a2, sp, 28
80001b3c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b40: b3 b6 86 01  	sltu	a3, a3, s8
80001b44: 93 c6 16 00  	xori	a3, a3, 1
80001b48: 93 b5 f5 01  	sltiu	a1, a1, 31
80001b4c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b50: 23 00 a6 00  	sb	a0, 0(a2)
80001b54: 93 85 07 00  	mv	a1, a5
80001b58: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b5c: 63 84 04 3c  	beqz	s1, 0x80001f24 <.LBB1_124+0x190>
;       value /= base;
80001b60: 33 d7 86 03  	divu	a4, a3, s8
80001b64: 33 06 87 03  	mul	a2, a4, s8
80001b68: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b6c: 13 f5 e7 0f  	andi	a0, a5, 254
80001b70: 13 06 00 03  	addi	a2, zero, 48
80001b74: 93 04 a0 00  	addi	s1, zero, 10
80001b78: e3 6c 95 fa  	bltu	a0, s1, 0x80001b30 <.LBB1_62+0x1cc>
80001b7c: 13 86 08 00  	mv	a2, a7
80001b80: 6f f0 1f fb  	j	0x80001b30 <.LBB1_62+0x1cc>
80001b84: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001b88: 13 85 79 00  	addi	a0, s3, 7
80001b8c: 93 75 85 ff  	andi	a1, a0, -8
80001b90: 03 a9 05 00  	lw	s2, 0(a1)
80001b94: 13 e5 45 00  	ori	a0, a1, 4
80001b98: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80001b9c: 33 65 39 01  	or	a0, s2, s3
80001ba0: 23 24 b1 00  	sw	a1, 8(sp)
80001ba4: 63 14 05 00  	bnez	a0, 0x80001bac <.LBB1_62+0x248>
80001ba8: 13 74 f4 fe  	andi	s0, s0, -17
80001bac: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001bb0: 93 75 04 40  	andi	a1, s0, 1024
80001bb4: 93 d5 a5 00  	srli	a1, a1, 10
80001bb8: 33 75 b5 00  	and	a0, a0, a1
80001bbc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001bc0: 63 18 05 08  	bnez	a0, 0x80001c50 <.LBB1_62+0x2ec>
80001bc4: 93 04 00 00  	mv	s1, zero
80001bc8: 13 75 04 02  	andi	a0, s0, 32
80001bcc: 13 45 15 06  	xori	a0, a0, 97
80001bd0: 13 05 65 0f  	addi	a0, a0, 246
80001bd4: 23 2a a1 00  	sw	a0, 20(sp)
80001bd8: 6f 00 40 02  	j	0x80001bfc <.LBB1_62+0x298>
80001bdc: 13 06 10 00  	addi	a2, zero, 1
80001be0: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001be4: 93 b6 f4 01  	sltiu	a3, s1, 31
80001be8: 33 f6 c6 00  	and	a2, a3, a2
80001bec: 93 84 07 00  	mv	s1, a5
80001bf0: 13 09 05 00  	mv	s2, a0
80001bf4: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001bf8: 63 0c 06 04  	beqz	a2, 0x80001c50 <.LBB1_62+0x2ec>
;       value /= base;
80001bfc: 13 05 09 00  	mv	a0, s2
80001c00: 93 85 09 00  	mv	a1, s3
80001c04: 13 06 0c 00  	mv	a2, s8
80001c08: 93 06 00 00  	mv	a3, zero
80001c0c: 97 e0 ff ff  	auipc	ra, 1048574
80001c10: e7 80 40 3f  	jalr	1012(ra)
80001c14: 33 06 85 03  	mul	a2, a0, s8
80001c18: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001c1c: 13 77 e6 0f  	andi	a4, a2, 254
80001c20: 93 06 00 03  	addi	a3, zero, 48
80001c24: 93 07 a0 00  	addi	a5, zero, 10
80001c28: 63 64 f7 00  	bltu	a4, a5, 0x80001c30 <.LBB1_62+0x2cc>
80001c2c: 83 26 41 01  	lw	a3, 20(sp)
80001c30: 33 86 c6 00  	add	a2, a3, a2
80001c34: 93 06 c1 01  	addi	a3, sp, 28
80001c38: b3 86 96 00  	add	a3, a3, s1
80001c3c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001c40: e3 9e 09 f8  	bnez	s3, 0x80001bdc <.LBB1_62+0x278>
80001c44: 33 36 89 01  	sltu	a2, s2, s8
80001c48: 13 46 16 00  	xori	a2, a2, 1
80001c4c: 6f f0 5f f9  	j	0x80001be0 <.LBB1_62+0x27c>
80001c50: 03 25 81 00  	lw	a0, 8(sp)
80001c54: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001c58: 13 07 c1 01  	addi	a4, sp, 28
80001c5c: 03 29 c1 00  	lw	s2, 12(sp)
80001c60: 6f 00 40 40  	j	0x80002064 <.LBB1_124+0x2d0>

80001c64 <.LBB1_108>:
80001c64: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80001c68: 13 79 24 00  	andi	s2, s0, 2
80001c6c: 93 04 10 00  	addi	s1, zero, 1
80001c70: 63 1e 09 02  	bnez	s2, 0x80001cac <.LBB1_108+0x48>
80001c74: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80001c78: 63 6a 9b 02  	bltu	s6, s1, 0x80001cac <.LBB1_108+0x48>
80001c7c: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80001c80: 13 0c fb ff  	addi	s8, s6, -1
80001c84: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80001c88: 33 86 8c 00  	add	a2, s9, s0
80001c8c: 13 05 00 02  	addi	a0, zero, 32
80001c90: 93 05 0a 00  	mv	a1, s4
80001c94: 93 86 0a 00  	mv	a3, s5
80001c98: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80001c9c: 13 04 14 00  	addi	s0, s0, 1
80001ca0: e3 14 8c fe  	bne	s8, s0, 0x80001c88 <.LBB1_108+0x24>
80001ca4: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001ca8: b3 8c 8c 00  	add	s9, s9, s0
80001cac: 03 c5 09 00  	lbu	a0, 0(s3)
80001cb0: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001cb4: 93 89 49 00  	addi	s3, s3, 4
80001cb8: 13 8c 1c 00  	addi	s8, s9, 1
80001cbc: 93 05 0a 00  	mv	a1, s4
80001cc0: 13 86 0c 00  	mv	a2, s9
80001cc4: 93 86 0a 00  	mv	a3, s5
80001cc8: 13 89 0b 00  	mv	s2, s7
80001ccc: e7 80 0b 00  	jalr	s7
80001cd0: 33 b5 64 01  	sltu	a0, s1, s6
80001cd4: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001cd8: 33 65 a4 00  	or	a0, s0, a0
80001cdc: 63 1c 05 3a  	bnez	a0, 0x80002094 <.LBB1_124+0x300>
;           while (l++ < width) {
80001ce0: 33 04 9b 40  	sub	s0, s6, s1
80001ce4: 93 0b e0 02  	addi	s7, zero, 46
80001ce8: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001cec: 13 0c 1c 00  	addi	s8, s8, 1
80001cf0: 13 05 00 02  	addi	a0, zero, 32
80001cf4: 93 05 0a 00  	mv	a1, s4
80001cf8: 93 86 0a 00  	mv	a3, s5
80001cfc: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001d00: 13 04 f4 ff  	addi	s0, s0, -1
80001d04: e3 12 04 fe  	bnez	s0, 0x80001ce8 <.LBB1_108+0x84>
80001d08: 13 0b 50 02  	addi	s6, zero, 37
80001d0c: 13 04 1d 00  	addi	s0, s10, 1
80001d10: 6f f0 df 91  	j	0x8000162c <.LBB1_183+0x30>

80001d14 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001d14: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001d18: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80001d1c: 63 14 05 00  	bnez	a0, 0x80001d24 <.LBB1_117+0x10>
80001d20: 93 fe fe fe  	andi	t4, t4, -17
80001d24: 93 04 a0 00  	addi	s1, zero, 10
80001d28: 13 04 f0 00  	addi	s0, zero, 15
80001d2c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d30: 13 f6 0e 40  	andi	a2, t4, 1024
80001d34: 13 56 a6 00  	srli	a2, a2, 10
80001d38: b3 f5 c5 00  	and	a1, a1, a2
80001d3c: 93 07 00 00  	mv	a5, zero
80001d40: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d44: 63 98 05 10  	bnez	a1, 0x80001e54 <.LBB1_124+0xc0>
80001d48: 93 05 00 00  	mv	a1, zero
80001d4c: 6f 00 40 03  	j	0x80001d80 <.LBB1_117+0x6c>
80001d50: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d54: 33 06 d6 00  	add	a2, a2, a3
80001d58: 93 87 15 00  	addi	a5, a1, 1
80001d5c: 93 06 c1 01  	addi	a3, sp, 28
80001d60: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d64: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80001d68: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d6c: 93 b5 f5 01  	sltiu	a1, a1, 31
80001d70: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d74: 23 80 c6 00  	sb	a2, 0(a3)
80001d78: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d7c: 63 0c 07 0c  	beqz	a4, 0x80001e54 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d80: 93 76 e5 00  	andi	a3, a0, 14
80001d84: 13 06 00 03  	addi	a2, zero, 48
80001d88: e3 e4 96 fc  	bltu	a3, s1, 0x80001d50 <.LBB1_117+0x3c>
80001d8c: 13 06 70 03  	addi	a2, zero, 55
80001d90: 6f f0 1f fc  	j	0x80001d50 <.LBB1_117+0x3c>

80001d94 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001d94: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80001d98: 03 c5 07 00  	lbu	a0, 0(a5)
80001d9c: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80001da0: 63 0c 05 02  	beqz	a0, 0x80001dd8 <.LBB1_124+0x44>
80001da4: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80001da8: 63 84 0b 00  	beqz	s7, 0x80001db0 <.LBB1_124+0x1c>
80001dac: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80001db0: 93 85 f5 ff  	addi	a1, a1, -1
80001db4: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001db8: 03 c7 16 00  	lbu	a4, 1(a3)
80001dbc: 13 86 16 00  	addi	a2, a3, 1
80001dc0: b3 36 e0 00  	snez	a3, a4
80001dc4: 33 37 b0 00  	snez	a4, a1
80001dc8: 33 77 d7 00  	and	a4, a4, a3
80001dcc: 93 85 f5 ff  	addi	a1, a1, -1
80001dd0: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001dd4: e3 12 07 fe  	bnez	a4, 0x80001db8 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001dd8: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80001ddc: 93 75 04 40  	andi	a1, s0, 1024
80001de0: 93 b4 15 00  	seqz	s1, a1
80001de4: 23 2a c1 00  	sw	a2, 20(sp)
80001de8: b3 35 76 01  	sltu	a1, a2, s7
80001dec: b3 e5 b4 00  	or	a1, s1, a1
80001df0: 63 94 05 00  	bnez	a1, 0x80001df8 <.LBB1_124+0x64>
80001df4: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001df8: 93 75 24 00  	andi	a1, s0, 2
80001dfc: 23 26 b1 00  	sw	a1, 12(sp)
80001e00: 63 96 05 2a  	bnez	a1, 0x800020ac <.LBB1_124+0x318>
80001e04: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001e08: 63 fe 65 29  	bgeu	a1, s6, 0x800020a4 <.LBB1_124+0x310>
80001e0c: 23 24 f1 00  	sw	a5, 8(sp)
80001e10: 13 04 00 00  	mv	s0, zero
80001e14: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001e18: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80001e1c: 33 86 8c 00  	add	a2, s9, s0
80001e20: 13 05 00 02  	addi	a0, zero, 32
80001e24: 93 05 0a 00  	mv	a1, s4
80001e28: 93 86 0a 00  	mv	a3, s5
80001e2c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001e30: 13 04 14 00  	addi	s0, s0, 1
80001e34: e3 14 89 fe  	bne	s2, s0, 0x80001e1c <.LBB1_124+0x88>
80001e38: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001e3c: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80001e40: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001e44: 23 2a b1 00  	sw	a1, 20(sp)
80001e48: b3 8c 8c 00  	add	s9, s9, s0
80001e4c: 13 09 0c 00  	mv	s2, s8
80001e50: 6f 00 c0 25  	j	0x800020ac <.LBB1_124+0x318>
80001e54: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001e58: 13 07 c1 01  	addi	a4, sp, 28
80001e5c: 93 08 00 01  	addi	a7, zero, 16
80001e60: 13 0e 80 00  	addi	t3, zero, 8
80001e64: 13 05 09 00  	mv	a0, s2
80001e68: 93 05 0a 00  	mv	a1, s4
80001e6c: 13 86 0c 00  	mv	a2, s9
80001e70: 93 86 0a 00  	mv	a3, s5
80001e74: 13 08 00 00  	mv	a6, zero
80001e78: 93 83 0b 00  	mv	t2, s7
80001e7c: 97 10 00 00  	auipc	ra, 1
80001e80: e7 80 00 fa  	jalr	-96(ra)
80001e84: 13 0c 05 00  	mv	s8, a0
80001e88: 6f 00 00 21  	j	0x80002098 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001e8c: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80001e90: 63 14 08 00  	bnez	a6, 0x80001e98 <.LBB1_124+0x104>
80001e94: 13 74 f4 fe  	andi	s0, s0, -17
80001e98: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001e9c: 13 76 04 40  	andi	a2, s0, 1024
80001ea0: 13 56 a6 00  	srli	a2, a2, 10
80001ea4: b3 f5 c5 00  	and	a1, a1, a2
80001ea8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001eac: 63 9c 05 06  	bnez	a1, 0x80001f24 <.LBB1_124+0x190>
80001eb0: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001eb4: 13 56 f8 41  	srai	a2, a6, 31
80001eb8: b3 06 c8 00  	add	a3, a6, a2
80001ebc: b3 c6 c6 00  	xor	a3, a3, a2
80001ec0: 13 76 04 02  	andi	a2, s0, 32
80001ec4: 13 46 16 06  	xori	a2, a2, 97
80001ec8: 93 08 66 0f  	addi	a7, a2, 246
80001ecc: 6f 00 40 03  	j	0x80001f00 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001ed0: 33 05 f6 00  	add	a0, a2, a5
80001ed4: 93 87 15 00  	addi	a5, a1, 1
80001ed8: 13 06 c1 01  	addi	a2, sp, 28
80001edc: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001ee0: b3 b6 86 01  	sltu	a3, a3, s8
80001ee4: 93 c6 16 00  	xori	a3, a3, 1
80001ee8: 93 b5 f5 01  	sltiu	a1, a1, 31
80001eec: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001ef0: 23 00 a6 00  	sb	a0, 0(a2)
80001ef4: 93 85 07 00  	mv	a1, a5
80001ef8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001efc: 63 84 04 02  	beqz	s1, 0x80001f24 <.LBB1_124+0x190>
;       value /= base;
80001f00: 33 d7 86 03  	divu	a4, a3, s8
80001f04: 33 06 87 03  	mul	a2, a4, s8
80001f08: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f0c: 13 f5 e7 0f  	andi	a0, a5, 254
80001f10: 13 06 00 03  	addi	a2, zero, 48
80001f14: 93 04 a0 00  	addi	s1, zero, 10
80001f18: e3 6c 95 fa  	bltu	a0, s1, 0x80001ed0 <.LBB1_124+0x13c>
80001f1c: 13 86 08 00  	mv	a2, a7
80001f20: 6f f0 1f fb  	j	0x80001ed0 <.LBB1_124+0x13c>
80001f24: 93 89 49 00  	addi	s3, s3, 4
80001f28: 13 58 f8 01  	srli	a6, a6, 31
80001f2c: 13 07 c1 01  	addi	a4, sp, 28
80001f30: 13 05 09 00  	mv	a0, s2
80001f34: 93 05 0a 00  	mv	a1, s4
80001f38: 13 86 0c 00  	mv	a2, s9
80001f3c: 93 86 0a 00  	mv	a3, s5
80001f40: 6f 00 80 13  	j	0x80002078 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001f44: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001f48: 63 14 05 00  	bnez	a0, 0x80001f50 <.LBB1_124+0x1bc>
80001f4c: 13 74 f4 fe  	andi	s0, s0, -17
80001f50: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f54: 13 76 04 40  	andi	a2, s0, 1024
80001f58: 13 56 a6 00  	srli	a2, a2, 10
80001f5c: b3 f5 c5 00  	and	a1, a1, a2
80001f60: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f64: 63 9c 05 0e  	bnez	a1, 0x8000205c <.LBB1_124+0x2c8>
80001f68: 13 06 00 00  	mv	a2, zero
80001f6c: 93 75 04 02  	andi	a1, s0, 32
80001f70: 93 c5 15 06  	xori	a1, a1, 97
80001f74: 13 88 65 0f  	addi	a6, a1, 246
80001f78: 6f 00 40 03  	j	0x80001fac <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f7c: 33 87 e7 00  	add	a4, a5, a4
80001f80: 93 07 16 00  	addi	a5, a2, 1
80001f84: 93 05 c1 01  	addi	a1, sp, 28
80001f88: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f8c: 33 35 85 01  	sltu	a0, a0, s8
80001f90: 13 45 15 00  	xori	a0, a0, 1
80001f94: 13 36 f6 01  	sltiu	a2, a2, 31
80001f98: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f9c: 23 80 e4 00  	sb	a4, 0(s1)
80001fa0: 13 86 07 00  	mv	a2, a5
80001fa4: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001fa8: 63 8a 05 0a  	beqz	a1, 0x8000205c <.LBB1_124+0x2c8>
;       value /= base;
80001fac: b3 56 85 03  	divu	a3, a0, s8
80001fb0: 33 87 86 03  	mul	a4, a3, s8
80001fb4: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001fb8: 93 74 e7 0f  	andi	s1, a4, 254
80001fbc: 93 07 00 03  	addi	a5, zero, 48
80001fc0: 93 05 a0 00  	addi	a1, zero, 10
80001fc4: e3 ec b4 fa  	bltu	s1, a1, 0x80001f7c <.LBB1_124+0x1e8>
80001fc8: 93 07 08 00  	mv	a5, a6
80001fcc: 6f f0 1f fb  	j	0x80001f7c <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001fd0: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001fd4: 63 14 05 00  	bnez	a0, 0x80001fdc <.LBB1_124+0x248>
80001fd8: 13 74 f4 fe  	andi	s0, s0, -17
80001fdc: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001fe0: 13 76 04 40  	andi	a2, s0, 1024
80001fe4: 13 56 a6 00  	srli	a2, a2, 10
80001fe8: b3 f5 c5 00  	and	a1, a1, a2
80001fec: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001ff0: 63 96 05 06  	bnez	a1, 0x8000205c <.LBB1_124+0x2c8>
80001ff4: 13 06 00 00  	mv	a2, zero
80001ff8: 93 75 04 02  	andi	a1, s0, 32
80001ffc: 93 c5 15 06  	xori	a1, a1, 97
80002000: 13 88 65 0f  	addi	a6, a1, 246
80002004: 6f 00 40 03  	j	0x80002038 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002008: 33 87 e7 00  	add	a4, a5, a4
8000200c: 93 07 16 00  	addi	a5, a2, 1
80002010: 93 05 c1 01  	addi	a1, sp, 28
80002014: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002018: 33 35 85 01  	sltu	a0, a0, s8
8000201c: 13 45 15 00  	xori	a0, a0, 1
80002020: 13 36 f6 01  	sltiu	a2, a2, 31
80002024: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002028: 23 80 e4 00  	sb	a4, 0(s1)
8000202c: 13 86 07 00  	mv	a2, a5
80002030: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002034: 63 84 05 02  	beqz	a1, 0x8000205c <.LBB1_124+0x2c8>
;       value /= base;
80002038: b3 56 85 03  	divu	a3, a0, s8
8000203c: 33 87 86 03  	mul	a4, a3, s8
80002040: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002044: 93 74 e7 0f  	andi	s1, a4, 254
80002048: 93 07 00 03  	addi	a5, zero, 48
8000204c: 93 05 a0 00  	addi	a1, zero, 10
80002050: e3 ec b4 fa  	bltu	s1, a1, 0x80002008 <.LBB1_124+0x274>
80002054: 93 07 08 00  	mv	a5, a6
80002058: 6f f0 1f fb  	j	0x80002008 <.LBB1_124+0x274>
8000205c: 93 89 49 00  	addi	s3, s3, 4
80002060: 13 07 c1 01  	addi	a4, sp, 28
80002064: 13 05 09 00  	mv	a0, s2
80002068: 93 05 0a 00  	mv	a1, s4
8000206c: 13 86 0c 00  	mv	a2, s9
80002070: 93 86 0a 00  	mv	a3, s5
80002074: 13 08 00 00  	mv	a6, zero
80002078: 93 08 0c 00  	mv	a7, s8
8000207c: 93 83 0b 00  	mv	t2, s7
80002080: 13 0e 0b 00  	mv	t3, s6
80002084: 93 0e 04 00  	mv	t4, s0
80002088: 97 10 00 00  	auipc	ra, 1
8000208c: e7 80 40 d9  	jalr	-620(ra)
80002090: 13 0c 05 00  	mv	s8, a0
80002094: 13 0b 50 02  	addi	s6, zero, 37
80002098: 93 0b e0 02  	addi	s7, zero, 46
8000209c: 13 04 1d 00  	addi	s0, s10, 1
800020a0: 6f f0 cf d8  	j	0x8000162c <.LBB1_183+0x30>
800020a4: 93 85 15 00  	addi	a1, a1, 1
800020a8: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800020ac: 63 00 05 04  	beqz	a0, 0x800020ec <.LBB1_124+0x358>
800020b0: 13 84 17 00  	addi	s0, a5, 1
800020b4: 6f 00 00 03  	j	0x800020e4 <.LBB1_124+0x350>
800020b8: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800020bc: 13 8c 1c 00  	addi	s8, s9, 1
800020c0: 13 75 f5 0f  	andi	a0, a0, 255
800020c4: 93 05 0a 00  	mv	a1, s4
800020c8: 13 86 0c 00  	mv	a2, s9
800020cc: 93 86 0a 00  	mv	a3, s5
800020d0: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800020d4: 03 45 04 00  	lbu	a0, 0(s0)
800020d8: 13 04 14 00  	addi	s0, s0, 1
800020dc: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800020e0: 63 08 05 00  	beqz	a0, 0x800020f0 <.LBB1_124+0x35c>
800020e4: e3 9c 04 fc  	bnez	s1, 0x800020bc <.LBB1_124+0x328>
800020e8: e3 98 0b fc  	bnez	s7, 0x800020b8 <.LBB1_124+0x324>
800020ec: 13 8c 0c 00  	mv	s8, s9
800020f0: 03 25 c1 00  	lw	a0, 12(sp)
800020f4: 13 35 15 00  	seqz	a0, a0
800020f8: 03 26 41 01  	lw	a2, 20(sp)
800020fc: b3 35 66 01  	sltu	a1, a2, s6
80002100: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80002104: 33 65 b5 00  	or	a0, a0, a1
80002108: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
8000210c: e3 14 05 f8  	bnez	a0, 0x80002094 <.LBB1_124+0x300>
;           while (l++ < width) {
80002110: 33 04 cb 40  	sub	s0, s6, a2
80002114: 93 0b e0 02  	addi	s7, zero, 46
80002118: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000211c: 13 0c 1c 00  	addi	s8, s8, 1
80002120: 13 05 00 02  	addi	a0, zero, 32
80002124: 93 05 0a 00  	mv	a1, s4
80002128: 93 86 0a 00  	mv	a3, s5
8000212c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80002130: 13 04 f4 ff  	addi	s0, s0, -1
80002134: e3 12 04 fe  	bnez	s0, 0x80002118 <.LBB1_124+0x384>
80002138: 13 0b 50 02  	addi	s6, zero, 37
8000213c: 13 04 1d 00  	addi	s0, s10, 1
80002140: 6f f0 cf ce  	j	0x8000162c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80002144: 13 86 0c 00  	mv	a2, s9
80002148: 63 e4 5c 01  	bltu	s9, s5, 0x80002150 <.LBB1_124+0x3bc>
8000214c: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80002150: 13 05 00 00  	mv	a0, zero
80002154: 93 05 0a 00  	mv	a1, s4
80002158: 93 86 0a 00  	mv	a3, s5
8000215c: e7 00 09 00  	jalr	s2
;   return (int)idx;
80002160: 13 85 0c 00  	mv	a0, s9
80002164: 83 2d c1 03  	lw	s11, 60(sp)
80002168: 03 2d 01 04  	lw	s10, 64(sp)
8000216c: 83 2c 41 04  	lw	s9, 68(sp)
80002170: 03 2c 81 04  	lw	s8, 72(sp)
80002174: 83 2b c1 04  	lw	s7, 76(sp)
80002178: 03 2b 01 05  	lw	s6, 80(sp)
8000217c: 83 2a 41 05  	lw	s5, 84(sp)
80002180: 03 2a 81 05  	lw	s4, 88(sp)
80002184: 83 29 c1 05  	lw	s3, 92(sp)
80002188: 03 29 01 06  	lw	s2, 96(sp)
8000218c: 83 24 41 06  	lw	s1, 100(sp)
80002190: 03 24 81 06  	lw	s0, 104(sp)
80002194: 83 20 c1 06  	lw	ra, 108(sp)
80002198: 13 01 01 07  	addi	sp, sp, 112
8000219c: 67 80 00 00  	ret

800021a0 <_out_char.llvm.17592004524093383706>:
;   if (character) {
800021a0: 63 04 05 0a  	beqz	a0, 0x80002248 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800021a4: f3 25 40 f1  	csrr	a1, mhartid
800021a8: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800021ac: 33 86 c5 02  	mul	a2, a1, a2

800021b0 <.LBB2_6>:
800021b0: 97 26 00 00  	auipc	a3, 2
800021b4: 93 86 46 a2  	addi	a3, a3, -1500
800021b8: b3 05 d6 00  	add	a1, a2, a3
800021bc: 03 a7 05 00  	lw	a4, 0(a1)
800021c0: 93 07 17 00  	addi	a5, a4, 1
800021c4: 23 a0 f5 00  	sw	a5, 0(a1)
800021c8: 33 87 e5 00  	add	a4, a1, a4
800021cc: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800021d0: 03 a7 05 00  	lw	a4, 0(a1)
800021d4: 13 07 47 c0  	addi	a4, a4, -1020
800021d8: 33 37 e0 00  	snez	a4, a4
800021dc: 13 05 65 ff  	addi	a0, a0, -10
800021e0: 33 35 a0 00  	snez	a0, a0
800021e4: 33 75 e5 00  	and	a0, a0, a4
800021e8: 63 10 05 06  	bnez	a0, 0x80002248 <.LBB2_8+0x18>
800021ec: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
800021f0: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800021f4: 23 26 05 00  	sw	zero, 12(a0)
800021f8: 93 06 00 04  	addi	a3, zero, 64
800021fc: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80002200: 23 2a 05 00  	sw	zero, 20(a0)
80002204: 93 06 10 00  	addi	a3, zero, 1
80002208: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
8000220c: 23 2e 05 00  	sw	zero, 28(a0)
80002210: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80002214: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80002218: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000221c: 23 22 05 02  	sw	zero, 36(a0)
80002220: 23 20 c5 02  	sw	a2, 32(a0)

80002224 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80002224: 17 25 00 00  	auipc	a0, 2
80002228: 13 05 c5 89  	addi	a0, a0, -1892
8000222c: 23 20 d5 00  	sw	a3, 0(a0)

80002230 <.LBB2_8>:
80002230: 17 25 00 00  	auipc	a0, 2
80002234: 13 05 05 8d  	addi	a0, a0, -1840
;         while (fromhost == 0)
80002238: 03 26 05 00  	lw	a2, 0(a0)
8000223c: e3 0e 06 fe  	beqz	a2, 0x80002238 <.LBB2_8+0x8>
;         fromhost = 0;
80002240: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80002244: 23 a0 05 00  	sw	zero, 0(a1)
; }
80002248: 67 80 00 00  	ret

8000224c <_out_null>:
; }
8000224c: 67 80 00 00  	ret

80002250 <_ftoa>:
; {
80002250: 13 01 01 f9  	addi	sp, sp, -112
80002254: 23 26 11 06  	sw	ra, 108(sp)
80002258: 23 24 81 06  	sw	s0, 104(sp)
8000225c: 23 22 91 06  	sw	s1, 100(sp)
80002260: 23 20 21 07  	sw	s2, 96(sp)
80002264: 23 2e 31 05  	sw	s3, 92(sp)
80002268: 23 2c 41 05  	sw	s4, 88(sp)
8000226c: 23 2a 51 05  	sw	s5, 84(sp)
80002270: 23 28 61 05  	sw	s6, 80(sp)
80002274: 23 26 71 05  	sw	s7, 76(sp)
80002278: 23 24 81 05  	sw	s8, 72(sp)
8000227c: 23 22 91 05  	sw	s9, 68(sp)
80002280: 23 20 a1 05  	sw	s10, 64(sp)
80002284: 27 3c 81 02  	fsd	fs0, 56(sp)
80002288: 27 38 91 02  	fsd	fs1, 48(sp)
8000228c: 27 34 21 03  	fsd	fs2, 40(sp)

80002290 <.LBB4_83>:
80002290: 97 24 00 00  	auipc	s1, 2
80002294: 93 84 84 89  	addi	s1, s1, -1896
80002298: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
8000229c: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800022a0: 93 0a 08 00  	mv	s5, a6
800022a4: 13 89 07 00  	mv	s2, a5
800022a8: 93 89 06 00  	mv	s3, a3
800022ac: 13 0a 06 00  	mv	s4, a2
800022b0: 13 8b 05 00  	mv	s6, a1
800022b4: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800022b8: 63 98 04 0e  	bnez	s1, 0x800023a8 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800022bc: 13 f5 2a 00  	andi	a0, s5, 2
800022c0: 93 f5 3a 00  	andi	a1, s5, 3
800022c4: b3 35 b0 00  	snez	a1, a1
800022c8: 13 36 59 00  	sltiu	a2, s2, 5
800022cc: b3 65 b6 00  	or	a1, a2, a1
800022d0: 93 5c 15 00  	srli	s9, a0, 1
800022d4: 13 04 0a 00  	mv	s0, s4
800022d8: 63 96 05 02  	bnez	a1, 0x80002304 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800022dc: 93 04 c9 ff  	addi	s1, s2, -4
800022e0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800022e4: 13 04 16 00  	addi	s0, a2, 1
800022e8: 13 05 00 02  	addi	a0, zero, 32
800022ec: 93 05 0b 00  	mv	a1, s6
800022f0: 93 86 09 00  	mv	a3, s3
800022f4: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800022f8: 93 84 f4 ff  	addi	s1, s1, -1
800022fc: 13 06 04 00  	mv	a2, s0
80002300: e3 92 04 fe  	bnez	s1, 0x800022e4 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80002304: 93 04 14 00  	addi	s1, s0, 1
80002308: 13 05 d0 02  	addi	a0, zero, 45
8000230c: 93 05 0b 00  	mv	a1, s6
80002310: 13 06 04 00  	mv	a2, s0
80002314: 93 86 09 00  	mv	a3, s3
80002318: e7 80 0b 00  	jalr	s7
8000231c: 93 0a 24 00  	addi	s5, s0, 2
80002320: 13 05 90 06  	addi	a0, zero, 105
80002324: 93 05 0b 00  	mv	a1, s6
80002328: 13 86 04 00  	mv	a2, s1
8000232c: 93 86 09 00  	mv	a3, s3
80002330: e7 80 0b 00  	jalr	s7
80002334: 13 0c 34 00  	addi	s8, s0, 3
80002338: 13 05 e0 06  	addi	a0, zero, 110
8000233c: 93 05 0b 00  	mv	a1, s6
80002340: 13 86 0a 00  	mv	a2, s5
80002344: 93 86 09 00  	mv	a3, s3
80002348: e7 80 0b 00  	jalr	s7
8000234c: 93 04 44 00  	addi	s1, s0, 4
80002350: 13 05 60 06  	addi	a0, zero, 102
80002354: 93 05 0b 00  	mv	a1, s6
80002358: 13 06 0c 00  	mv	a2, s8
8000235c: 93 86 09 00  	mv	a3, s3
80002360: e7 80 0b 00  	jalr	s7
80002364: 33 85 44 41  	sub	a0, s1, s4
80002368: 33 35 25 01  	sltu	a0, a0, s2
8000236c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002370: 93 c5 1c 00  	xori	a1, s9, 1
80002374: 33 e5 a5 00  	or	a0, a1, a0
80002378: 63 16 05 56  	bnez	a0, 0x800028e4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000237c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002380: 13 84 14 00  	addi	s0, s1, 1
80002384: 13 05 00 02  	addi	a0, zero, 32
80002388: 93 05 0b 00  	mv	a1, s6
8000238c: 13 86 04 00  	mv	a2, s1
80002390: 93 86 09 00  	mv	a3, s3
80002394: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002398: 33 05 8a 00  	add	a0, s4, s0
8000239c: 93 04 04 00  	mv	s1, s0
800023a0: e3 60 25 ff  	bltu	a0, s2, 0x80002380 <.LBB4_83+0xf0>
800023a4: 6f 00 40 54  	j	0x800028e8 <.LBB4_90+0x378>
800023a8: 53 04 a5 22  	fmv.d	fs0, fa0

800023ac <.LBB4_84>:
800023ac: 17 15 00 00  	auipc	a0, 1
800023b0: 13 05 45 78  	addi	a0, a0, 1924
800023b4: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
800023b8: 53 05 05 a2  	fle.d	a0, fa0, ft0
800023bc: 63 1e 05 00  	bnez	a0, 0x800023d8 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800023c0: 93 f5 4a 00  	andi	a1, s5, 4
800023c4: 13 b5 15 00  	seqz	a0, a1
800023c8: 63 82 05 06  	beqz	a1, 0x8000242c <.LBB4_88>

800023cc <.LBB4_85>:
800023cc: 17 1c 00 00  	auipc	s8, 1
800023d0: 13 0c 4c 4b  	addi	s8, s8, 1204
800023d4: 6f 00 00 06  	j	0x80002434 <.LBB4_88+0x8>

800023d8 <.LBB4_86>:
800023d8: 17 15 00 00  	auipc	a0, 1
800023dc: 13 05 05 76  	addi	a0, a0, 1888
800023e0: 07 30 05 00  	fld	ft0, 0(a0)

800023e4 <.LBB4_87>:
800023e4: 17 15 00 00  	auipc	a0, 1
800023e8: 13 05 c5 75  	addi	a0, a0, 1884
800023ec: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
800023f0: 53 05 04 a2  	fle.d	a0, fs0, ft0
800023f4: d3 85 80 a2  	fle.d	a1, ft1, fs0
800023f8: 33 75 b5 00  	and	a0, a0, a1
800023fc: 63 1e 05 0e  	bnez	a0, 0x800024f8 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002400: 13 85 0b 00  	mv	a0, s7
80002404: 93 05 0b 00  	mv	a1, s6
80002408: 13 06 0a 00  	mv	a2, s4
8000240c: 93 86 09 00  	mv	a3, s3
80002410: 53 05 84 22  	fmv.d	fa0, fs0
80002414: 93 07 09 00  	mv	a5, s2
80002418: 13 88 0a 00  	mv	a6, s5
8000241c: 97 00 00 00  	auipc	ra, 0
80002420: e7 80 40 51  	jalr	1300(ra)
80002424: 13 04 05 00  	mv	s0, a0
80002428: 6f 00 00 4c  	j	0x800028e8 <.LBB4_90+0x378>

8000242c <.LBB4_88>:
8000242c: 17 1c 00 00  	auipc	s8, 1
80002430: 13 0c 5c 46  	addi	s8, s8, 1125
80002434: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002438: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000243c: 13 f5 3a 00  	andi	a0, s5, 3
80002440: 33 35 a0 00  	snez	a0, a0
80002444: b3 b5 2c 01  	sltu	a1, s9, s2
80002448: 93 c5 15 00  	xori	a1, a1, 1
8000244c: 33 65 b5 00  	or	a0, a0, a1
80002450: 93 fa 2a 00  	andi	s5, s5, 2
80002454: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002458: 63 16 05 02  	bnez	a0, 0x80002484 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
8000245c: 33 04 99 41  	sub	s0, s2, s9
80002460: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002464: 93 04 16 00  	addi	s1, a2, 1
80002468: 13 05 00 02  	addi	a0, zero, 32
8000246c: 93 05 0b 00  	mv	a1, s6
80002470: 93 86 09 00  	mv	a3, s3
80002474: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002478: 13 04 f4 ff  	addi	s0, s0, -1
8000247c: 13 86 04 00  	mv	a2, s1
80002480: e3 12 04 fe  	bnez	s0, 0x80002464 <.LBB4_88+0x38>
80002484: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002488: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
8000248c: 33 05 9c 01  	add	a0, s8, s9
80002490: 03 45 05 00  	lbu	a0, 0(a0)
80002494: 13 86 04 00  	mv	a2, s1
80002498: 13 84 fc ff  	addi	s0, s9, -1
8000249c: 93 84 14 00  	addi	s1, s1, 1
800024a0: 93 05 0b 00  	mv	a1, s6
800024a4: 93 86 09 00  	mv	a3, s3
800024a8: e7 80 0b 00  	jalr	s7
800024ac: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800024b0: e3 1e 04 fc  	bnez	s0, 0x8000248c <.LBB4_88+0x60>
800024b4: 33 85 44 41  	sub	a0, s1, s4
800024b8: 33 35 25 01  	sltu	a0, a0, s2
800024bc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800024c0: 93 c5 1a 00  	xori	a1, s5, 1
800024c4: 33 e5 a5 00  	or	a0, a1, a0
800024c8: 63 1e 05 40  	bnez	a0, 0x800028e4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800024cc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800024d0: 13 84 14 00  	addi	s0, s1, 1
800024d4: 13 05 00 02  	addi	a0, zero, 32
800024d8: 93 05 0b 00  	mv	a1, s6
800024dc: 13 86 04 00  	mv	a2, s1
800024e0: 93 86 09 00  	mv	a3, s3
800024e4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800024e8: 33 05 8a 00  	add	a0, s4, s0
800024ec: 93 04 04 00  	mv	s1, s0
800024f0: e3 60 25 ff  	bltu	a0, s2, 0x800024d0 <.LBB4_88+0xa4>
800024f4: 6f 00 40 3f  	j	0x800028e8 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
800024f8: 13 f5 0a 40  	andi	a0, s5, 1024
800024fc: 13 0c 60 00  	addi	s8, zero, 6
80002500: 63 04 05 00  	beqz	a0, 0x80002508 <.LBB4_88+0xdc>
80002504: 13 0c 07 00  	mv	s8, a4
80002508: 13 05 a0 00  	addi	a0, zero, 10
8000250c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002510: 63 6c ac 02  	bltu	s8, a0, 0x80002548 <.LBB4_88+0x11c>
80002514: 93 04 6c ff  	addi	s1, s8, -10
80002518: 13 05 f0 01  	addi	a0, zero, 31
8000251c: 63 e4 a4 00  	bltu	s1, a0, 0x80002524 <.LBB4_88+0xf8>
80002520: 93 04 f0 01  	addi	s1, zero, 31
80002524: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002528: 13 05 81 00  	addi	a0, sp, 8
8000252c: 93 05 00 03  	addi	a1, zero, 48
80002530: 13 06 04 00  	mv	a2, s0
80002534: 97 e0 ff ff  	auipc	ra, 1048574
80002538: e7 80 40 02  	jalr	36(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
8000253c: 13 c5 f4 ff  	not	a0, s1
80002540: 33 0c ac 00  	add	s8, s8, a0
80002544: 6f 00 80 00  	j	0x8000254c <.LBB4_88+0x120>
80002548: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
8000254c: 13 15 3c 00  	slli	a0, s8, 3

80002550 <.LBB4_89>:
80002550: 97 15 00 00  	auipc	a1, 1
80002554: 93 85 85 50  	addi	a1, a1, 1288
80002558: 33 05 b5 00  	add	a0, a0, a1
8000255c: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002560: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80002564: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002568: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
8000256c: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002570 <.LBB4_90>:
80002570: 17 15 00 00  	auipc	a0, 1
80002574: 13 05 85 5d  	addi	a0, a0, 1496
80002578: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
8000257c: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80002580: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80002584: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002588: d3 05 01 a2  	fle.d	a1, ft2, ft0
8000258c: 63 90 05 02  	bnez	a1, 0x800025ac <.LBB4_90+0x3c>
;     ++frac;
80002590: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80002594: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80002598: d3 15 11 a2  	flt.d	a1, ft2, ft1
8000259c: 63 94 05 02  	bnez	a1, 0x800025c4 <.LBB4_90+0x54>
800025a0: 13 05 00 00  	mv	a0, zero
;       ++whole;
800025a4: 93 84 14 00  	addi	s1, s1, 1
800025a8: 6f 00 c0 01  	j	0x800025c4 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
800025ac: d3 15 01 a2  	flt.d	a1, ft2, ft0
800025b0: 63 9a 05 00  	bnez	a1, 0x800025c4 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
800025b4: 93 35 15 00  	seqz	a1, a0
800025b8: 13 76 15 00  	andi	a2, a0, 1
800025bc: b3 65 b6 00  	or	a1, a2, a1
800025c0: 33 85 a5 00  	add	a0, a1, a0
800025c4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
800025c8: 63 0c 0c 0c  	beqz	s8, 0x800026a0 <.LBB4_90+0x130>
800025cc: 13 06 00 00  	mv	a2, zero
800025d0: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
800025d4: 33 83 85 00  	add	t1, a1, s0
800025d8: 93 02 00 02  	addi	t0, zero, 32
800025dc: 33 87 82 40  	sub	a4, t0, s0
800025e0: b7 d5 cc cc  	lui	a1, 838861
800025e4: 93 83 d5 cc  	addi	t2, a1, -819
800025e8: 13 08 a0 00  	addi	a6, zero, 10
800025ec: 93 08 90 00  	addi	a7, zero, 9
800025f0: 63 04 c7 0c  	beq	a4, a2, 0x800026b8 <.LBB4_90+0x148>
800025f4: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
800025f8: 33 35 75 02  	mulhu	a0, a0, t2
800025fc: 13 55 35 00  	srli	a0, a0, 3
80002600: b3 06 05 03  	mul	a3, a0, a6
80002604: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002608: 93 e6 06 03  	ori	a3, a3, 48
8000260c: b3 07 c3 00  	add	a5, t1, a2
80002610: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80002614: 13 06 16 00  	addi	a2, a2, 1
80002618: e3 ec b8 fc  	bltu	a7, a1, 0x800025f0 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000261c: 33 05 c4 00  	add	a0, s0, a2
80002620: 93 05 f5 ff  	addi	a1, a0, -1
80002624: 93 06 e0 01  	addi	a3, zero, 30
80002628: b3 b6 b6 00  	sltu	a3, a3, a1
8000262c: 33 47 cc 00  	xor	a4, s8, a2
80002630: 13 37 17 00  	seqz	a4, a4
80002634: b3 e6 e6 00  	or	a3, a3, a4
80002638: 63 94 06 08  	bnez	a3, 0x800026c0 <.LBB4_90+0x150>
8000263c: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002640: 33 05 85 00  	add	a0, a0, s0
80002644: 93 45 f6 ff  	not	a1, a2
80002648: 33 8c 85 01  	add	s8, a1, s8
8000264c: 33 04 c4 00  	add	s0, s0, a2
80002650: 93 05 f0 01  	addi	a1, zero, 31
80002654: b3 86 85 40  	sub	a3, a1, s0
80002658: 33 05 c5 00  	add	a0, a0, a2
8000265c: 93 05 0c 00  	mv	a1, s8
80002660: 63 64 dc 00  	bltu	s8, a3, 0x80002668 <.LBB4_90+0xf8>
80002664: 93 85 06 00  	mv	a1, a3
80002668: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000266c: 93 05 00 03  	addi	a1, zero, 48
80002670: 97 e0 ff ff  	auipc	ra, 1048574
80002674: e7 80 80 ee  	jalr	-280(ra)
80002678: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000267c: b3 05 a4 00  	add	a1, s0, a0
80002680: 93 b5 f5 01  	sltiu	a1, a1, 31
80002684: 33 46 ac 00  	xor	a2, s8, a0
80002688: 33 36 c0 00  	snez	a2, a2
8000268c: 33 f6 c5 00  	and	a2, a1, a2
80002690: 13 05 15 00  	addi	a0, a0, 1
80002694: e3 14 06 fe  	bnez	a2, 0x8000267c <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002698: 33 05 a4 00  	add	a0, s0, a0
8000269c: 6f 00 80 02  	j	0x800026c4 <.LBB4_90+0x154>
;     diff = value - (double)whole;
800026a0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800026a4: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800026a8: 53 05 10 a2  	fle.d	a0, ft0, ft1
800026ac: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800026b0: b3 84 a4 00  	add	s1, s1, a0
800026b4: 6f 00 c0 03  	j	0x800026f0 <.LBB4_90+0x180>
800026b8: 13 04 00 02  	addi	s0, zero, 32
800026bc: 6f 00 80 03  	j	0x800026f4 <.LBB4_90+0x184>
800026c0: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800026c4: 63 8e 05 00  	beqz	a1, 0x800026e0 <.LBB4_90+0x170>
;       buf[len++] = '.';
800026c8: 13 04 15 00  	addi	s0, a0, 1
800026cc: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
800026d0: 33 85 a5 00  	add	a0, a1, a0
800026d4: 93 05 e0 02  	addi	a1, zero, 46
800026d8: 23 00 b5 00  	sb	a1, 0(a0)
800026dc: 6f 00 80 00  	j	0x800026e4 <.LBB4_90+0x174>
800026e0: 13 04 05 00  	mv	s0, a0
800026e4: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800026e8: 93 02 04 00  	mv	t0, s0
800026ec: 63 64 85 00  	bltu	a0, s0, 0x800026f4 <.LBB4_90+0x184>
800026f0: 93 02 00 02  	addi	t0, zero, 32
800026f4: d3 1c 94 a2  	flt.d	s9, fs0, fs1
800026f8: 37 65 66 66  	lui	a0, 419430
800026fc: 93 05 75 66  	addi	a1, a0, 1639
80002700: 13 08 a0 00  	addi	a6, zero, 10
80002704: 93 06 81 00  	addi	a3, sp, 8
80002708: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
8000270c: 63 80 82 04  	beq	t0, s0, 0x8000274c <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002710: 33 95 b4 02  	mulh	a0, s1, a1
80002714: 93 57 f5 01  	srli	a5, a0, 31
80002718: 13 55 25 40  	srai	a0, a0, 2
8000271c: 33 05 f5 00  	add	a0, a0, a5
80002720: b3 07 05 03  	mul	a5, a0, a6
80002724: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002728: 93 87 07 03  	addi	a5, a5, 48
8000272c: 13 0c 14 00  	addi	s8, s0, 1
80002730: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002734: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002738: 23 00 f4 00  	sb	a5, 0(s0)
8000273c: 13 04 0c 00  	mv	s0, s8
80002740: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002744: e3 64 c7 fc  	bltu	a4, a2, 0x8000270c <.LBB4_90+0x19c>
80002748: 6f 00 80 00  	j	0x80002750 <.LBB4_90+0x1e0>
8000274c: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002750: 93 f4 3a 00  	andi	s1, s5, 3
80002754: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002758: 63 96 a4 06  	bne	s1, a0, 0x800027c4 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000275c: 63 0c 09 00  	beqz	s2, 0x80002774 <.LBB4_90+0x204>
80002760: 13 f5 ca 00  	andi	a0, s5, 12
80002764: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002768: 33 e5 ac 00  	or	a0, s9, a0
8000276c: 33 09 a9 40  	sub	s2, s2, a0
80002770: 6f 00 80 00  	j	0x80002778 <.LBB4_90+0x208>
80002774: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002778: 33 35 2c 01  	sltu	a0, s8, s2
8000277c: 93 45 15 00  	xori	a1, a0, 1
80002780: 13 05 f0 01  	addi	a0, zero, 31
80002784: 33 36 85 01  	sltu	a2, a0, s8
80002788: b3 65 b6 00  	or	a1, a2, a1
8000278c: 63 9c 05 02  	bnez	a1, 0x800027c4 <.LBB4_90+0x254>
80002790: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002794: 93 45 fc ff  	not	a1, s8
80002798: b3 05 b9 00  	add	a1, s2, a1
8000279c: 33 06 85 41  	sub	a2, a0, s8
800027a0: 33 85 86 01  	add	a0, a3, s8
800027a4: 63 e4 c5 00  	bltu	a1, a2, 0x800027ac <.LBB4_90+0x23c>
800027a8: 93 05 06 00  	mv	a1, a2
800027ac: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800027b0: 93 05 00 03  	addi	a1, zero, 48
800027b4: 13 06 04 00  	mv	a2, s0
800027b8: 97 e0 ff ff  	auipc	ra, 1048574
800027bc: e7 80 00 da  	jalr	-608(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800027c0: 33 0c 84 01  	add	s8, s0, s8
800027c4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800027c8: 63 6a 85 05  	bltu	a0, s8, 0x8000281c <.LBB4_90+0x2ac>
;     if (negative) {
800027cc: 63 8c 0c 00  	beqz	s9, 0x800027e4 <.LBB4_90+0x274>
800027d0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800027d4: 33 05 85 01  	add	a0, a0, s8
800027d8: 13 0c 1c 00  	addi	s8, s8, 1
800027dc: 93 05 d0 02  	addi	a1, zero, 45
800027e0: 6f 00 80 03  	j	0x80002818 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800027e4: 13 f5 4a 00  	andi	a0, s5, 4
800027e8: 63 10 05 02  	bnez	a0, 0x80002808 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800027ec: 13 f5 8a 00  	andi	a0, s5, 8
800027f0: 63 06 05 02  	beqz	a0, 0x8000281c <.LBB4_90+0x2ac>
800027f4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800027f8: 33 05 85 01  	add	a0, a0, s8
800027fc: 13 0c 1c 00  	addi	s8, s8, 1
80002800: 93 05 00 02  	addi	a1, zero, 32
80002804: 6f 00 40 01  	j	0x80002818 <.LBB4_90+0x2a8>
80002808: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000280c: 33 05 85 01  	add	a0, a0, s8
80002810: 13 0c 1c 00  	addi	s8, s8, 1
80002814: 93 05 b0 02  	addi	a1, zero, 43
80002818: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000281c: 33 35 90 00  	snez	a0, s1
80002820: b3 35 2c 01  	sltu	a1, s8, s2
80002824: 93 c5 15 00  	xori	a1, a1, 1
80002828: 33 65 b5 00  	or	a0, a0, a1
8000282c: 93 fa 2a 00  	andi	s5, s5, 2
80002830: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002834: 63 16 05 02  	bnez	a0, 0x80002860 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002838: b3 04 89 41  	sub	s1, s2, s8
8000283c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002840: 13 04 16 00  	addi	s0, a2, 1
80002844: 13 05 00 02  	addi	a0, zero, 32
80002848: 93 05 0b 00  	mv	a1, s6
8000284c: 93 86 09 00  	mv	a3, s3
80002850: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002854: 93 84 f4 ff  	addi	s1, s1, -1
80002858: 13 06 04 00  	mv	a2, s0
8000285c: e3 92 04 fe  	bnez	s1, 0x80002840 <.LBB4_90+0x2d0>
80002860: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002864: 63 0c 0c 02  	beqz	s8, 0x8000289c <.LBB4_90+0x32c>
80002868: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
8000286c: 33 85 8c 01  	add	a0, s9, s8
80002870: 03 45 05 00  	lbu	a0, 0(a0)
80002874: 13 0d fc ff  	addi	s10, s8, -1
80002878: 93 04 14 00  	addi	s1, s0, 1
8000287c: 93 05 0b 00  	mv	a1, s6
80002880: 13 06 04 00  	mv	a2, s0
80002884: 93 86 09 00  	mv	a3, s3
80002888: e7 80 0b 00  	jalr	s7
8000288c: 13 84 04 00  	mv	s0, s1
80002890: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002894: e3 1c 0d fc  	bnez	s10, 0x8000286c <.LBB4_90+0x2fc>
80002898: 6f 00 80 00  	j	0x800028a0 <.LBB4_90+0x330>
8000289c: 93 04 04 00  	mv	s1, s0
800028a0: 33 85 44 41  	sub	a0, s1, s4
800028a4: 33 35 25 01  	sltu	a0, a0, s2
800028a8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800028ac: 93 c5 1a 00  	xori	a1, s5, 1
800028b0: 33 e5 a5 00  	or	a0, a1, a0
800028b4: 63 18 05 02  	bnez	a0, 0x800028e4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800028b8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800028bc: 13 84 14 00  	addi	s0, s1, 1
800028c0: 13 05 00 02  	addi	a0, zero, 32
800028c4: 93 05 0b 00  	mv	a1, s6
800028c8: 13 86 04 00  	mv	a2, s1
800028cc: 93 86 09 00  	mv	a3, s3
800028d0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800028d4: 33 05 8a 00  	add	a0, s4, s0
800028d8: 93 04 04 00  	mv	s1, s0
800028dc: e3 60 25 ff  	bltu	a0, s2, 0x800028bc <.LBB4_90+0x34c>
800028e0: 6f 00 80 00  	j	0x800028e8 <.LBB4_90+0x378>
800028e4: 13 84 04 00  	mv	s0, s1
; }
800028e8: 13 05 04 00  	mv	a0, s0
800028ec: 07 39 81 02  	fld	fs2, 40(sp)
800028f0: 87 34 01 03  	fld	fs1, 48(sp)
800028f4: 07 34 81 03  	fld	fs0, 56(sp)
800028f8: 03 2d 01 04  	lw	s10, 64(sp)
800028fc: 83 2c 41 04  	lw	s9, 68(sp)
80002900: 03 2c 81 04  	lw	s8, 72(sp)
80002904: 83 2b c1 04  	lw	s7, 76(sp)
80002908: 03 2b 01 05  	lw	s6, 80(sp)
8000290c: 83 2a 41 05  	lw	s5, 84(sp)
80002910: 03 2a 81 05  	lw	s4, 88(sp)
80002914: 83 29 c1 05  	lw	s3, 92(sp)
80002918: 03 29 01 06  	lw	s2, 96(sp)
8000291c: 83 24 41 06  	lw	s1, 100(sp)
80002920: 03 24 81 06  	lw	s0, 104(sp)
80002924: 83 20 c1 06  	lw	ra, 108(sp)
80002928: 13 01 01 07  	addi	sp, sp, 112
8000292c: 67 80 00 00  	ret

80002930 <_etoa>:
; {
80002930: 13 01 01 f8  	addi	sp, sp, -128
80002934: 23 2e 11 06  	sw	ra, 124(sp)
80002938: 23 2c 81 06  	sw	s0, 120(sp)
8000293c: 23 2a 91 06  	sw	s1, 116(sp)
80002940: 23 28 21 07  	sw	s2, 112(sp)
80002944: 23 26 31 07  	sw	s3, 108(sp)
80002948: 23 24 41 07  	sw	s4, 104(sp)
8000294c: 23 22 51 07  	sw	s5, 100(sp)
80002950: 23 20 61 07  	sw	s6, 96(sp)
80002954: 23 2e 71 05  	sw	s7, 92(sp)
80002958: 23 2c 81 05  	sw	s8, 88(sp)
8000295c: 23 2a 91 05  	sw	s9, 84(sp)
80002960: 23 28 a1 05  	sw	s10, 80(sp)
80002964: 23 26 b1 05  	sw	s11, 76(sp)

80002968 <.LBB5_43>:
80002968: 97 14 00 00  	auipc	s1, 1
8000296c: 93 84 84 1e  	addi	s1, s1, 488
80002970: 87 b0 04 00  	fld	ft1, 0(s1)

80002974 <.LBB5_44>:
80002974: 97 14 00 00  	auipc	s1, 1
80002978: 93 84 44 1e  	addi	s1, s1, 484
8000297c: 07 b1 04 00  	fld	ft2, 0(s1)
80002980: 53 00 a5 22  	fmv.d	ft0, fa0
80002984: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002988: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
8000298c: b3 f4 84 00  	and	s1, s1, s0
80002990: 93 0a 08 00  	mv	s5, a6
80002994: 13 89 07 00  	mv	s2, a5
80002998: 93 07 07 00  	mv	a5, a4
8000299c: 93 89 06 00  	mv	s3, a3
800029a0: 13 0a 06 00  	mv	s4, a2
800029a4: 13 8b 05 00  	mv	s6, a1
800029a8: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800029ac: 63 92 04 06  	bnez	s1, 0x80002a10 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800029b0: 13 85 0b 00  	mv	a0, s7
800029b4: 93 05 0b 00  	mv	a1, s6
800029b8: 13 06 0a 00  	mv	a2, s4
800029bc: 93 86 09 00  	mv	a3, s3
800029c0: 53 05 00 22  	fmv.d	fa0, ft0
800029c4: 13 87 07 00  	mv	a4, a5
800029c8: 93 07 09 00  	mv	a5, s2
800029cc: 13 88 0a 00  	mv	a6, s5
800029d0: 83 2d c1 04  	lw	s11, 76(sp)
800029d4: 03 2d 01 05  	lw	s10, 80(sp)
800029d8: 83 2c 41 05  	lw	s9, 84(sp)
800029dc: 03 2c 81 05  	lw	s8, 88(sp)
800029e0: 83 2b c1 05  	lw	s7, 92(sp)
800029e4: 03 2b 01 06  	lw	s6, 96(sp)
800029e8: 83 2a 41 06  	lw	s5, 100(sp)
800029ec: 03 2a 81 06  	lw	s4, 104(sp)
800029f0: 83 29 c1 06  	lw	s3, 108(sp)
800029f4: 03 29 01 07  	lw	s2, 112(sp)
800029f8: 83 24 41 07  	lw	s1, 116(sp)
800029fc: 03 24 81 07  	lw	s0, 120(sp)
80002a00: 83 20 c1 07  	lw	ra, 124(sp)
80002a04: 13 01 01 08  	addi	sp, sp, 128
80002a08: 17 03 00 00  	auipc	t1, 0
80002a0c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002a10: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002a14: 13 f5 0a 40  	andi	a0, s5, 1024
80002a18: 13 07 60 00  	addi	a4, zero, 6
80002a1c: 63 04 05 00  	beqz	a0, 0x80002a24 <.LBB5_44+0xb0>
80002a20: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002a24: 27 30 a1 02  	fsd	fa0, 32(sp)
80002a28: 83 25 41 02  	lw	a1, 36(sp)
80002a2c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002a30: 93 d6 45 01  	srli	a3, a1, 20
80002a34: b7 07 10 00  	lui	a5, 256
80002a38: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002a3c: b3 f5 f5 00  	and	a1, a1, a5
80002a40: 23 2c c1 00  	sw	a2, 24(sp)
80002a44: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002a48: b3 e5 c5 00  	or	a1, a1, a2
80002a4c: 23 2e b1 00  	sw	a1, 28(sp)
80002a50: 87 30 81 01  	fld	ft1, 24(sp)

80002a54 <.LBB5_45>:
80002a54: 97 15 00 00  	auipc	a1, 1
80002a58: 93 85 c5 10  	addi	a1, a1, 268
80002a5c: 07 b1 05 00  	fld	ft2, 0(a1)

80002a60 <.LBB5_46>:
80002a60: 97 15 00 00  	auipc	a1, 1
80002a64: 93 85 85 10  	addi	a1, a1, 264
80002a68: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002a6c: 93 f5 f6 7f  	andi	a1, a3, 2047
80002a70: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002a74: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002a78: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80002a7c <.LBB5_47>:
80002a7c: 97 15 00 00  	auipc	a1, 1
80002a80: 93 85 45 0f  	addi	a1, a1, 244
80002a84: 07 b1 05 00  	fld	ft2, 0(a1)

80002a88 <.LBB5_48>:
80002a88: 97 15 00 00  	auipc	a1, 1
80002a8c: 93 85 05 0f  	addi	a1, a1, 240
80002a90: 87 b1 05 00  	fld	ft3, 0(a1)

80002a94 <.LBB5_49>:
80002a94: 97 15 00 00  	auipc	a1, 1
80002a98: 93 85 c5 0e  	addi	a1, a1, 236
80002a9c: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002aa0: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002aa4: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002aa8: d3 80 05 d2  	fcvt.d.w	ft1, a1
80002aac: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002ab0 <.LBB5_50>:
80002ab0: 17 16 00 00  	auipc	a2, 1
80002ab4: 13 06 86 0d  	addi	a2, a2, 216
80002ab8: 87 31 06 00  	fld	ft3, 0(a2)

80002abc <.LBB5_51>:
80002abc: 17 16 00 00  	auipc	a2, 1
80002ac0: 13 06 46 0d  	addi	a2, a2, 212
80002ac4: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002ac8: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80002acc: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002ad0: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002ad4: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002ad8: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002adc: 13 06 f6 3f  	addi	a2, a2, 1023
80002ae0: 23 28 01 00  	sw	zero, 16(sp)
80002ae4: 13 16 46 01  	slli	a2, a2, 20
80002ae8: 23 2a c1 00  	sw	a2, 20(sp)

80002aec <.LBB5_52>:
80002aec: 17 16 00 00  	auipc	a2, 1
80002af0: 13 06 46 0b  	addi	a2, a2, 180
80002af4: 87 31 06 00  	fld	ft3, 0(a2)

80002af8 <.LBB5_53>:
80002af8: 17 16 00 00  	auipc	a2, 1
80002afc: 13 06 06 0b  	addi	a2, a2, 176
80002b00: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002b04: 87 32 01 01  	fld	ft5, 16(sp)

80002b08 <.LBB5_54>:
80002b08: 17 16 00 00  	auipc	a2, 1
80002b0c: 13 06 06 09  	addi	a2, a2, 144
80002b10: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002b14: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002b18 <.LBB5_55>:
80002b18: 17 16 00 00  	auipc	a2, 1
80002b1c: 13 06 86 09  	addi	a2, a2, 152
80002b20: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002b24: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002b28: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80002b2c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002b30: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002b34: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002b38: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002b3c: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002b40: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002b44: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002b48: 63 0a 06 00  	beqz	a2, 0x80002b5c <.LBB5_56+0x10>

80002b4c <.LBB5_56>:
80002b4c: 97 16 00 00  	auipc	a3, 1
80002b50: 93 86 c6 06  	addi	a3, a3, 108
80002b54: 07 b1 06 00  	fld	ft2, 0(a3)
80002b58: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80002b5c: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002b60: 93 05 34 06  	addi	a1, s0, 99
80002b64: 93 b5 75 0c  	sltiu	a1, a1, 199
80002b68: 13 06 50 00  	addi	a2, zero, 5
80002b6c: b7 16 00 00  	lui	a3, 1
80002b70: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002b74: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002b78: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80002b7c: 63 84 06 06  	beqz	a3, 0x80002be4 <.LBB5_58+0x58>

80002b80 <.LBB5_57>:
80002b80: 97 15 00 00  	auipc	a1, 1
80002b84: 93 85 05 04  	addi	a1, a1, 64
80002b88: 07 b1 05 00  	fld	ft2, 0(a1)

80002b8c <.LBB5_58>:
80002b8c: 97 15 00 00  	auipc	a1, 1
80002b90: 93 85 c5 03  	addi	a1, a1, 60
80002b94: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80002b98: d3 15 25 a2  	flt.d	a1, fa0, ft2
80002b9c: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80002ba0: b3 e5 c5 00  	or	a1, a1, a2
80002ba4: 63 98 05 00  	bnez	a1, 0x80002bb4 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002ba8: 63 40 e4 02  	blt	s0, a4, 0x80002bc8 <.LBB5_58+0x3c>
80002bac: 13 07 00 00  	mv	a4, zero
80002bb0: 6f 00 00 02  	j	0x80002bd0 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002bb4: 63 06 07 02  	beqz	a4, 0x80002be0 <.LBB5_58+0x54>
80002bb8: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002bbc: 13 45 15 00  	xori	a0, a0, 1
80002bc0: 33 07 a7 40  	sub	a4, a4, a0
80002bc4: 6f 00 00 02  	j	0x80002be4 <.LBB5_58+0x58>
80002bc8: 13 45 f4 ff  	not	a0, s0
80002bcc: 33 07 a7 00  	add	a4, a4, a0
80002bd0: 13 04 00 00  	mv	s0, zero
80002bd4: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80002bd8: 93 ea 0a 40  	ori	s5, s5, 1024
80002bdc: 6f 00 80 00  	j	0x80002be4 <.LBB5_58+0x58>
80002be0: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002be4: b3 05 99 41  	sub	a1, s2, s9
80002be8: 33 36 b9 00  	sltu	a2, s2, a1
80002bec: 13 05 00 00  	mv	a0, zero
80002bf0: 63 14 06 00  	bnez	a2, 0x80002bf8 <.LBB5_58+0x6c>
80002bf4: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002bf8: 93 07 00 00  	mv	a5, zero
80002bfc: 93 d5 1a 00  	srli	a1, s5, 1
80002c00: 93 f4 15 00  	andi	s1, a1, 1
80002c04: b3 35 90 01  	snez	a1, s9
80002c08: b3 f5 b4 00  	and	a1, s1, a1
80002c0c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002c10: 63 94 05 00  	bnez	a1, 0x80002c18 <.LBB5_58+0x8c>
80002c14: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002c18: 93 35 14 00  	seqz	a1, s0
80002c1c: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002c20: 63 94 05 00  	bnez	a1, 0x80002c28 <.LBB5_58+0x9c>
80002c24: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002c28: 63 04 05 00  	beqz	a0, 0x80002c30 <.LBB5_58+0xa4>
80002c2c: 53 15 a5 22  	fneg.d	fa0, fa0
80002c30: 37 f5 ff ff  	lui	a0, 1048575
80002c34: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002c38: 33 f8 aa 00  	and	a6, s5, a0
80002c3c: 13 85 0b 00  	mv	a0, s7
80002c40: 93 05 0b 00  	mv	a1, s6
80002c44: 13 06 0a 00  	mv	a2, s4
80002c48: 93 86 09 00  	mv	a3, s3
80002c4c: 97 f0 ff ff  	auipc	ra, 1048575
80002c50: e7 80 40 60  	jalr	1540(ra)
80002c54: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80002c58: 63 82 0c 18  	beqz	s9, 0x80002ddc <.LBB5_58+0x250>
80002c5c: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80002c60: 13 f5 0a 02  	andi	a0, s5, 32
80002c64: 13 45 55 06  	xori	a0, a0, 101
80002c68: 93 05 0b 00  	mv	a1, s6
80002c6c: 13 06 0d 00  	mv	a2, s10
80002c70: 93 86 09 00  	mv	a3, s3
80002c74: e7 80 0b 00  	jalr	s7
80002c78: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80002c7c: 93 5a f4 01  	srli	s5, s0, 31
80002c80: 13 55 f4 41  	srai	a0, s0, 31
80002c84: b3 05 a4 00  	add	a1, s0, a0
80002c88: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80002c8c: 93 8d dc ff  	addi	s11, s9, -3
80002c90: 13 04 f0 01  	addi	s0, zero, 31
80002c94: 37 d5 cc cc  	lui	a0, 838861
80002c98: 13 05 d5 cc  	addi	a0, a0, -819
80002c9c: 13 08 a0 00  	addi	a6, zero, 10
80002ca0: 93 08 c1 02  	addi	a7, sp, 44
80002ca4: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80002ca8: b3 37 a7 02  	mulhu	a5, a4, a0
80002cac: 93 d5 37 00  	srli	a1, a5, 3
80002cb0: b3 87 05 03  	mul	a5, a1, a6
80002cb4: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002cb8: 13 e6 07 03  	ori	a2, a5, 48
80002cbc: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002cc0: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002cc4: 13 0c 1c 00  	addi	s8, s8, 1
80002cc8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002ccc: 33 b6 e2 00  	sltu	a2, t0, a4
80002cd0: 33 f6 c7 00  	and	a2, a5, a2
80002cd4: 93 8d fd ff  	addi	s11, s11, -1
80002cd8: 13 04 f4 ff  	addi	s0, s0, -1
80002cdc: 13 87 05 00  	mv	a4, a1
80002ce0: e3 14 06 fc  	bnez	a2, 0x80002ca8 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002ce4: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ce8: 33 35 ac 00  	sltu	a0, s8, a0
80002cec: 13 45 15 00  	xori	a0, a0, 1
80002cf0: 93 c5 17 00  	xori	a1, a5, 1
80002cf4: 33 e5 a5 00  	or	a0, a1, a0
80002cf8: 63 12 05 04  	bnez	a0, 0x80002d3c <.LBB5_58+0x1b0>
80002cfc: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d00: b3 85 8c 41  	sub	a1, s9, s8
80002d04: 93 85 d5 ff  	addi	a1, a1, -3
80002d08: 13 06 f0 01  	addi	a2, zero, 31
80002d0c: 33 06 86 41  	sub	a2, a2, s8
80002d10: 33 05 85 01  	add	a0, a0, s8
80002d14: 63 e4 c5 00  	bltu	a1, a2, 0x80002d1c <.LBB5_58+0x190>
80002d18: 93 05 06 00  	mv	a1, a2
80002d1c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002d20: 93 05 00 03  	addi	a1, zero, 48
80002d24: 97 e0 ff ff  	auipc	ra, 1048574
80002d28: e7 80 40 83  	jalr	-1996(ra)
;   if (flags & FLAGS_HASH) {
80002d2c: 63 e4 8d 00  	bltu	s11, s0, 0x80002d34 <.LBB5_58+0x1a8>
80002d30: 93 0d 04 00  	mv	s11, s0
80002d34: 33 85 8d 01  	add	a0, s11, s8
80002d38: 13 0c 15 00  	addi	s8, a0, 1
80002d3c: 83 2c c1 00  	lw	s9, 12(sp)
80002d40: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002d44: 63 60 85 03  	bltu	a0, s8, 0x80002d64 <.LBB5_58+0x1d8>
80002d48: 13 05 c1 02  	addi	a0, sp, 44
80002d4c: 33 05 85 01  	add	a0, a0, s8
80002d50: 93 05 d0 02  	addi	a1, zero, 45
80002d54: 63 94 0a 00  	bnez	s5, 0x80002d5c <.LBB5_58+0x1d0>
80002d58: 93 05 b0 02  	addi	a1, zero, 43
80002d5c: 13 0c 1c 00  	addi	s8, s8, 1
80002d60: 23 00 b5 00  	sb	a1, 0(a0)
80002d64: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80002d68: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80002d6c: 33 85 8a 01  	add	a0, s5, s8
80002d70: 03 45 05 00  	lbu	a0, 0(a0)
80002d74: 13 06 04 00  	mv	a2, s0
80002d78: 93 04 fc ff  	addi	s1, s8, -1
80002d7c: 13 04 14 00  	addi	s0, s0, 1
80002d80: 93 05 0b 00  	mv	a1, s6
80002d84: 93 86 09 00  	mv	a3, s3
80002d88: e7 80 0b 00  	jalr	s7
80002d8c: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80002d90: e3 9e 04 fc  	bnez	s1, 0x80002d6c <.LBB5_58+0x1e0>
80002d94: 33 05 44 41  	sub	a0, s0, s4
80002d98: 33 35 25 01  	sltu	a0, a0, s2
80002d9c: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80002da0: 93 c5 1c 00  	xori	a1, s9, 1
80002da4: 33 e5 a5 00  	or	a0, a1, a0
80002da8: 63 18 05 02  	bnez	a0, 0x80002dd8 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80002dac: b3 04 40 41  	neg	s1, s4
80002db0: 13 0d 14 00  	addi	s10, s0, 1
80002db4: 13 05 00 02  	addi	a0, zero, 32
80002db8: 93 05 0b 00  	mv	a1, s6
80002dbc: 13 06 04 00  	mv	a2, s0
80002dc0: 93 86 09 00  	mv	a3, s3
80002dc4: e7 80 0b 00  	jalr	s7
80002dc8: 33 85 a4 01  	add	a0, s1, s10
80002dcc: 13 04 0d 00  	mv	s0, s10
80002dd0: e3 60 25 ff  	bltu	a0, s2, 0x80002db0 <.LBB5_58+0x224>
80002dd4: 6f 00 80 00  	j	0x80002ddc <.LBB5_58+0x250>
80002dd8: 13 0d 04 00  	mv	s10, s0
; }
80002ddc: 13 05 0d 00  	mv	a0, s10
80002de0: 83 2d c1 04  	lw	s11, 76(sp)
80002de4: 03 2d 01 05  	lw	s10, 80(sp)
80002de8: 83 2c 41 05  	lw	s9, 84(sp)
80002dec: 03 2c 81 05  	lw	s8, 88(sp)
80002df0: 83 2b c1 05  	lw	s7, 92(sp)
80002df4: 03 2b 01 06  	lw	s6, 96(sp)
80002df8: 83 2a 41 06  	lw	s5, 100(sp)
80002dfc: 03 2a 81 06  	lw	s4, 104(sp)
80002e00: 83 29 c1 06  	lw	s3, 108(sp)
80002e04: 03 29 01 07  	lw	s2, 112(sp)
80002e08: 83 24 41 07  	lw	s1, 116(sp)
80002e0c: 03 24 81 07  	lw	s0, 120(sp)
80002e10: 83 20 c1 07  	lw	ra, 124(sp)
80002e14: 13 01 01 08  	addi	sp, sp, 128
80002e18: 67 80 00 00  	ret

80002e1c <_ntoa_format>:
; {
80002e1c: 13 01 01 fc  	addi	sp, sp, -64
80002e20: 23 2e 11 02  	sw	ra, 60(sp)
80002e24: 23 2c 81 02  	sw	s0, 56(sp)
80002e28: 23 2a 91 02  	sw	s1, 52(sp)
80002e2c: 23 28 21 03  	sw	s2, 48(sp)
80002e30: 23 26 31 03  	sw	s3, 44(sp)
80002e34: 23 24 41 03  	sw	s4, 40(sp)
80002e38: 23 22 51 03  	sw	s5, 36(sp)
80002e3c: 23 20 61 03  	sw	s6, 32(sp)
80002e40: 23 2e 71 01  	sw	s7, 28(sp)
80002e44: 23 2c 81 01  	sw	s8, 24(sp)
80002e48: 23 2a 91 01  	sw	s9, 20(sp)
80002e4c: 23 28 a1 01  	sw	s10, 16(sp)
80002e50: 23 26 b1 01  	sw	s11, 12(sp)
80002e54: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80002e58: 93 fa 2e 00  	andi	s5, t4, 2
80002e5c: 13 09 0e 00  	mv	s2, t3
80002e60: 13 8d 03 00  	mv	s10, t2
80002e64: 93 8c 08 00  	mv	s9, a7
80002e68: 13 8c 07 00  	mv	s8, a5
80002e6c: 93 89 06 00  	mv	s3, a3
80002e70: 13 0a 06 00  	mv	s4, a2
80002e74: 13 8b 05 00  	mv	s6, a1
80002e78: 93 0d 05 00  	mv	s11, a0
80002e7c: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80002e80: 63 9e 0a 0c  	bnez	s5, 0x80002f5c <_ntoa_format+0x140>
80002e84: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002e88: 63 0e 09 00  	beqz	s2, 0x80002ea4 <_ntoa_format+0x88>
80002e8c: 63 0e 04 00  	beqz	s0, 0x80002ea8 <_ntoa_format+0x8c>
80002e90: 13 f5 cb 00  	andi	a0, s7, 12
80002e94: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002e98: 33 65 05 01  	or	a0, a0, a6
80002e9c: 33 09 a9 40  	sub	s2, s2, a0
80002ea0: 6f 00 80 00  	j	0x80002ea8 <_ntoa_format+0x8c>
80002ea4: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ea8: 33 35 ac 01  	sltu	a0, s8, s10
80002eac: 93 45 15 00  	xori	a1, a0, 1
80002eb0: 13 05 f0 01  	addi	a0, zero, 31
80002eb4: 33 36 85 01  	sltu	a2, a0, s8
80002eb8: b3 65 b6 00  	or	a1, a2, a1
80002ebc: 63 94 05 04  	bnez	a1, 0x80002f04 <_ntoa_format+0xe8>
80002ec0: 23 22 51 01  	sw	s5, 4(sp)
80002ec4: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ec8: 93 45 fc ff  	not	a1, s8
80002ecc: b3 85 a5 01  	add	a1, a1, s10
80002ed0: 33 06 85 41  	sub	a2, a0, s8
80002ed4: 33 05 87 01  	add	a0, a4, s8
80002ed8: 63 e4 c5 00  	bltu	a1, a2, 0x80002ee0 <_ntoa_format+0xc4>
80002edc: 93 05 06 00  	mv	a1, a2
80002ee0: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002ee4: 93 05 00 03  	addi	a1, zero, 48
80002ee8: 13 86 04 00  	mv	a2, s1
80002eec: 97 d0 ff ff  	auipc	ra, 1048573
80002ef0: e7 80 c0 66  	jalr	1644(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ef4: 33 8c 84 01  	add	s8, s1, s8
80002ef8: 03 27 81 00  	lw	a4, 8(sp)
80002efc: 13 88 0a 00  	mv	a6, s5
80002f00: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002f04: 63 0c 04 04  	beqz	s0, 0x80002f5c <_ntoa_format+0x140>
80002f08: 33 35 2c 01  	sltu	a0, s8, s2
80002f0c: 93 45 15 00  	xori	a1, a0, 1
80002f10: 13 05 f0 01  	addi	a0, zero, 31
80002f14: 33 36 85 01  	sltu	a2, a0, s8
80002f18: b3 e5 c5 00  	or	a1, a1, a2
80002f1c: 63 90 05 04  	bnez	a1, 0x80002f5c <_ntoa_format+0x140>
80002f20: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002f24: 93 45 fc ff  	not	a1, s8
80002f28: b3 05 b9 00  	add	a1, s2, a1
80002f2c: 33 06 85 41  	sub	a2, a0, s8
80002f30: 33 05 87 01  	add	a0, a4, s8
80002f34: 63 e4 c5 00  	bltu	a1, a2, 0x80002f3c <_ntoa_format+0x120>
80002f38: 93 05 06 00  	mv	a1, a2
80002f3c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002f40: 93 05 00 03  	addi	a1, zero, 48
80002f44: 13 86 04 00  	mv	a2, s1
80002f48: 97 d0 ff ff  	auipc	ra, 1048573
80002f4c: e7 80 00 61  	jalr	1552(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002f50: 33 8c 84 01  	add	s8, s1, s8
80002f54: 03 27 81 00  	lw	a4, 8(sp)
80002f58: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80002f5c: 13 f5 0b 01  	andi	a0, s7, 16
80002f60: 63 02 05 0e  	beqz	a0, 0x80003044 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002f64: 13 f5 0b 40  	andi	a0, s7, 1024
80002f68: 13 55 a5 00  	srli	a0, a0, 10
80002f6c: 93 35 1c 00  	seqz	a1, s8
80002f70: 33 65 b5 00  	or	a0, a0, a1
80002f74: 63 1e 05 02  	bnez	a0, 0x80002fb0 <_ntoa_format+0x194>
80002f78: 33 45 ac 01  	xor	a0, s8, s10
80002f7c: 33 35 a0 00  	snez	a0, a0
80002f80: b3 45 2c 01  	xor	a1, s8, s2
80002f84: b3 35 b0 00  	snez	a1, a1
80002f88: 33 75 b5 00  	and	a0, a0, a1
80002f8c: 63 12 05 02  	bnez	a0, 0x80002fb0 <_ntoa_format+0x194>
;       len--;
80002f90: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002f94: b3 35 a0 00  	snez	a1, a0
80002f98: 13 86 0c ff  	addi	a2, s9, -16
80002f9c: 13 36 16 00  	seqz	a2, a2
80002fa0: b3 75 b6 00  	and	a1, a2, a1
80002fa4: 63 84 05 00  	beqz	a1, 0x80002fac <_ntoa_format+0x190>
80002fa8: 13 05 ec ff  	addi	a0, s8, -2
80002fac: 13 0c 05 00  	mv	s8, a0
80002fb0: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002fb4: 63 96 ac 02  	bne	s9, a0, 0x80002fe0 <_ntoa_format+0x1c4>
80002fb8: 13 f5 0b 02  	andi	a0, s7, 32
80002fbc: 93 55 55 00  	srli	a1, a0, 5
80002fc0: 13 06 f0 01  	addi	a2, zero, 31
80002fc4: 33 36 86 01  	sltu	a2, a2, s8
80002fc8: b3 e5 c5 00  	or	a1, a1, a2
80002fcc: 63 9e 05 02  	bnez	a1, 0x80003008 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002fd0: 33 05 87 01  	add	a0, a4, s8
80002fd4: 13 0c 1c 00  	addi	s8, s8, 1
80002fd8: 93 05 80 07  	addi	a1, zero, 120
80002fdc: 6f 00 c0 04  	j	0x80003028 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002fe0: 13 85 ec ff  	addi	a0, s9, -2
80002fe4: 33 35 a0 00  	snez	a0, a0
80002fe8: 93 05 f0 01  	addi	a1, zero, 31
80002fec: b3 b5 85 01  	sltu	a1, a1, s8
80002ff0: 33 65 b5 00  	or	a0, a0, a1
80002ff4: 63 1c 05 02  	bnez	a0, 0x8000302c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002ff8: 33 05 87 01  	add	a0, a4, s8
80002ffc: 13 0c 1c 00  	addi	s8, s8, 1
80003000: 93 05 20 06  	addi	a1, zero, 98
80003004: 6f 00 40 02  	j	0x80003028 <_ntoa_format+0x20c>
80003008: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000300c: 13 35 15 00  	seqz	a0, a0
80003010: 93 c5 15 00  	xori	a1, a1, 1
80003014: 33 65 b5 00  	or	a0, a0, a1
80003018: 63 1a 05 00  	bnez	a0, 0x8000302c <_ntoa_format+0x210>
;       buf[len++] = 'X';
8000301c: 33 05 87 01  	add	a0, a4, s8
80003020: 13 0c 1c 00  	addi	s8, s8, 1
80003024: 93 05 80 05  	addi	a1, zero, 88
80003028: 23 00 b5 00  	sb	a1, 0(a0)
8000302c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003030: 63 60 85 07  	bltu	a0, s8, 0x80003090 <_ntoa_format+0x274>
;       buf[len++] = '0';
80003034: 33 05 87 01  	add	a0, a4, s8
80003038: 13 0c 1c 00  	addi	s8, s8, 1
8000303c: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80003040: 23 00 b5 00  	sb	a1, 0(a0)
80003044: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003048: 63 64 85 05  	bltu	a0, s8, 0x80003090 <_ntoa_format+0x274>
;     if (negative) {
8000304c: 63 0a 08 00  	beqz	a6, 0x80003060 <_ntoa_format+0x244>
;       buf[len++] = '-';
80003050: 33 05 87 01  	add	a0, a4, s8
80003054: 13 0c 1c 00  	addi	s8, s8, 1
80003058: 93 05 d0 02  	addi	a1, zero, 45
8000305c: 6f 00 00 03  	j	0x8000308c <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80003060: 13 f5 4b 00  	andi	a0, s7, 4
80003064: 63 1e 05 00  	bnez	a0, 0x80003080 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80003068: 13 f5 8b 00  	andi	a0, s7, 8
8000306c: 63 02 05 02  	beqz	a0, 0x80003090 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80003070: 33 05 87 01  	add	a0, a4, s8
80003074: 13 0c 1c 00  	addi	s8, s8, 1
80003078: 93 05 00 02  	addi	a1, zero, 32
8000307c: 6f 00 00 01  	j	0x8000308c <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80003080: 33 05 87 01  	add	a0, a4, s8
80003084: 13 0c 1c 00  	addi	s8, s8, 1
80003088: 93 05 b0 02  	addi	a1, zero, 43
8000308c: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003090: 13 f5 3b 00  	andi	a0, s7, 3
80003094: 33 35 a0 00  	snez	a0, a0
80003098: b3 35 2c 01  	sltu	a1, s8, s2
8000309c: 93 c5 15 00  	xori	a1, a1, 1
800030a0: 33 65 b5 00  	or	a0, a0, a1
800030a4: 13 04 0a 00  	mv	s0, s4
800030a8: 63 16 05 02  	bnez	a0, 0x800030d4 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800030ac: b3 04 89 41  	sub	s1, s2, s8
800030b0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800030b4: 13 04 16 00  	addi	s0, a2, 1
800030b8: 13 05 00 02  	addi	a0, zero, 32
800030bc: 93 05 0b 00  	mv	a1, s6
800030c0: 93 86 09 00  	mv	a3, s3
800030c4: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800030c8: 93 84 f4 ff  	addi	s1, s1, -1
800030cc: 13 06 04 00  	mv	a2, s0
800030d0: e3 92 04 fe  	bnez	s1, 0x800030b4 <_ntoa_format+0x298>
800030d4: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800030d8: 63 0e 0c 02  	beqz	s8, 0x80003114 <_ntoa_format+0x2f8>
800030dc: 03 25 81 00  	lw	a0, 8(sp)
800030e0: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800030e4: 33 85 8b 01  	add	a0, s7, s8
800030e8: 03 45 05 00  	lbu	a0, 0(a0)
800030ec: 93 0c fc ff  	addi	s9, s8, -1
800030f0: 93 04 14 00  	addi	s1, s0, 1
800030f4: 93 05 0b 00  	mv	a1, s6
800030f8: 13 06 04 00  	mv	a2, s0
800030fc: 93 86 09 00  	mv	a3, s3
80003100: e7 80 0d 00  	jalr	s11
80003104: 13 84 04 00  	mv	s0, s1
80003108: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
8000310c: e3 9c 0c fc  	bnez	s9, 0x800030e4 <_ntoa_format+0x2c8>
80003110: 6f 00 80 00  	j	0x80003118 <_ntoa_format+0x2fc>
80003114: 93 04 04 00  	mv	s1, s0
80003118: 33 85 44 41  	sub	a0, s1, s4
8000311c: 33 35 25 01  	sltu	a0, a0, s2
80003120: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003124: 93 c5 1a 00  	xori	a1, s5, 1
80003128: 33 e5 a5 00  	or	a0, a1, a0
8000312c: 63 18 05 02  	bnez	a0, 0x8000315c <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80003130: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003134: 13 84 14 00  	addi	s0, s1, 1
80003138: 13 05 00 02  	addi	a0, zero, 32
8000313c: 93 05 0b 00  	mv	a1, s6
80003140: 13 86 04 00  	mv	a2, s1
80003144: 93 86 09 00  	mv	a3, s3
80003148: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
8000314c: 33 05 8a 00  	add	a0, s4, s0
80003150: 93 04 04 00  	mv	s1, s0
80003154: e3 60 25 ff  	bltu	a0, s2, 0x80003134 <_ntoa_format+0x318>
80003158: 6f 00 80 00  	j	0x80003160 <_ntoa_format+0x344>
8000315c: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80003160: 13 05 04 00  	mv	a0, s0
80003164: 83 2d c1 00  	lw	s11, 12(sp)
80003168: 03 2d 01 01  	lw	s10, 16(sp)
8000316c: 83 2c 41 01  	lw	s9, 20(sp)
80003170: 03 2c 81 01  	lw	s8, 24(sp)
80003174: 83 2b c1 01  	lw	s7, 28(sp)
80003178: 03 2b 01 02  	lw	s6, 32(sp)
8000317c: 83 2a 41 02  	lw	s5, 36(sp)
80003180: 03 2a 81 02  	lw	s4, 40(sp)
80003184: 83 29 c1 02  	lw	s3, 44(sp)
80003188: 03 29 01 03  	lw	s2, 48(sp)
8000318c: 83 24 41 03  	lw	s1, 52(sp)
80003190: 03 24 81 03  	lw	s0, 56(sp)
80003194: 83 20 c1 03  	lw	ra, 60(sp)
80003198: 13 01 01 04  	addi	sp, sp, 64
8000319c: 67 80 00 00  	ret

800031a0 <_snrt_init_team>:
;     team->base.root = team;
800031a0: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800031a4: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800031a8: 03 23 87 00  	lw	t1, 8(a4)
800031ac: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800031b0: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800031b4: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800031b8: 83 22 47 00  	lw	t0, 4(a4)
800031bc: 33 88 08 03  	mul	a6, a7, a6
800031c0: 33 05 58 02  	mul	a0, a6, t0
800031c4: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800031c8: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800031cc: 33 85 68 40  	sub	a0, a7, t1
800031d0: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800031d4: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800031d8: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800031dc: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800031e0: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800031e4: 03 25 87 01  	lw	a0, 24(a4)
800031e8: b7 05 00 10  	lui	a1, 65536
800031ec: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800031f0: 23 a2 07 02  	sw	zero, 36(a5)
800031f4: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800031f8: 03 25 07 02  	lw	a0, 32(a4)
800031fc: 83 25 47 02  	lw	a1, 36(a4)
80003200: 23 a4 a7 02  	sw	a0, 40(a5)
80003204: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80003208: 23 a8 c7 02  	sw	a2, 48(a5)
8000320c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80003210: 23 ac d7 02  	sw	a3, 56(a5)
80003214: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80003218: 03 25 07 01  	lw	a0, 16(a4)
8000321c: 33 08 a6 00  	add	a6, a2, a0
80003220: 93 05 08 19  	addi	a1, a6, 400
80003224: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80003228: b3 32 a8 00  	sltu	t0, a6, a0
8000322c: 93 55 15 00  	srli	a1, a0, 1
80003230: 33 03 b8 00  	add	t1, a6, a1
80003234: b3 35 03 01  	sltu	a1, t1, a6
80003238: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
8000323c: 23 a0 67 04  	sw	t1, 64(a5)
80003240: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80003244: 13 15 15 00  	slli	a0, a0, 1
80003248: b3 05 c5 00  	add	a1, a0, a2
8000324c: 33 b5 a5 00  	sltu	a0, a1, a0
80003250: 23 a4 b7 04  	sw	a1, 72(a5)
80003254: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80003258: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
8000325c: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80003260: 37 05 00 00  	lui	a0, 0
80003264: 33 05 45 00  	add	a0, a0, tp
80003268: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000326c: 03 a5 07 00  	lw	a0, 0(a5)
80003270: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80003274: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003278: b3 85 b8 40  	sub	a1, a7, a1
8000327c: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80003280: b7 05 00 00  	lui	a1, 0
80003284: b3 85 45 00  	add	a1, a1, tp
80003288: 23 a2 a5 00  	sw	a0, 4(a1)
8000328c: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80003290: 33 85 a8 02  	mul	a0, a7, a0

80003294 <.LBB0_1>:
80003294: 97 15 00 00  	auipc	a1, 1
80003298: 93 85 05 94  	addi	a1, a1, -1728
8000329c: 33 05 b5 00  	add	a0, a0, a1
800032a0: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800032a4: 83 28 07 03  	lw	a7, 48(a4)
800032a8: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800032ac: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800032b0: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800032b4: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800032b8: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800032bc: 13 05 76 00  	addi	a0, a2, 7
800032c0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800032c4: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800032c8: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800032cc: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800032d0: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800032d4: 03 a5 05 00  	lw	a0, 0(a1)
800032d8: 13 05 f5 44  	addi	a0, a0, 1103
800032dc: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800032e0: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800032e4: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800032e8: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800032ec: 37 05 00 00  	lui	a0, 0
800032f0: 33 05 45 00  	add	a0, a0, tp
800032f4: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800032f8: 37 05 00 00  	lui	a0, 0
800032fc: 33 05 45 00  	add	a0, a0, tp
80003300: 23 26 e5 00  	sw	a4, 12(a0)
; }
80003304: 67 80 00 00  	ret

80003308 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003308: 37 05 00 00  	lui	a0, 0
8000330c: 33 05 45 00  	add	a0, a0, tp
80003310: 03 25 05 00  	lw	a0, 0(a0)
80003314: 03 25 05 00  	lw	a0, 0(a0)
80003318: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000331c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003320: 33 85 a5 40  	sub	a0, a1, a0
80003324: 67 80 00 00  	ret

80003328 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80003328: 37 05 00 00  	lui	a0, 0
8000332c: 33 05 45 00  	add	a0, a0, tp
80003330: 03 25 05 00  	lw	a0, 0(a0)
80003334: 03 25 05 00  	lw	a0, 0(a0)
80003338: 03 25 05 07  	lw	a0, 112(a0)
8000333c: 67 80 00 00  	ret

80003340 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80003340: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80003344: 63 44 05 00  	bltz	a0, 0x8000334c <__snrt_isr+0xc>
;         while (1)
80003348: 6f 00 00 00  	j	0x80003348 <__snrt_isr+0x8>
8000334c: b7 05 00 80  	lui	a1, 524288
80003350: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80003354: 33 75 b5 00  	and	a0, a0, a1
80003358: 13 05 d5 ff  	addi	a0, a0, -3
8000335c: 93 55 25 00  	srli	a1, a0, 2
80003360: 13 15 e5 01  	slli	a0, a0, 30
80003364: 33 65 b5 00  	or	a0, a0, a1
80003368: 93 05 40 00  	addi	a1, zero, 4
8000336c: 63 0a b5 06  	beq	a0, a1, 0x800033e0 <.LBB1_7+0x58>
80003370: 63 1a 05 08  	bnez	a0, 0x80003404 <.LBB1_7+0x7c>
80003374: 37 05 00 00  	lui	a0, 0
80003378: 33 05 45 00  	add	a0, a0, tp
8000337c: 03 25 05 00  	lw	a0, 0(a0)
80003380: 03 25 05 00  	lw	a0, 0(a0)
80003384: f3 25 40 f1  	csrr	a1, mhartid

80003388 <.LBB1_7>:
;     asm volatile(
80003388: 17 16 00 00  	auipc	a2, 1
8000338c: 13 06 86 84  	addi	a2, a2, -1976
80003390: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80003394: 93 06 06 00  	mv	a3, a2
80003398: 93 02 10 00  	addi	t0, zero, 1
8000339c: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800033a0: e3 9e 02 fe  	bnez	t0, 0x8000339c <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800033a4: b7 06 00 00  	lui	a3, 0
800033a8: b3 86 46 00  	add	a3, a3, tp
800033ac: 83 a6 86 00  	lw	a3, 8(a3)
800033b0: 33 85 a5 40  	sub	a0, a1, a0
800033b4: 93 55 35 00  	srli	a1, a0, 3
800033b8: 93 f5 c5 ff  	andi	a1, a1, -4
800033bc: b3 85 b6 00  	add	a1, a3, a1
800033c0: 83 a6 05 00  	lw	a3, 0(a1)
800033c4: 13 07 10 00  	addi	a4, zero, 1
800033c8: 33 15 a7 00  	sll	a0, a4, a0
800033cc: 13 45 f5 ff  	not	a0, a0
800033d0: 33 f5 a6 00  	and	a0, a3, a0
800033d4: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800033d8: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800033dc: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800033e0: 37 05 00 00  	lui	a0, 0
800033e4: 33 05 45 00  	add	a0, a0, tp
800033e8: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800033ec: b7 05 00 00  	lui	a1, 0
800033f0: b3 85 45 00  	add	a1, a1, tp
800033f4: 83 a5 c5 00  	lw	a1, 12(a1)
800033f8: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800033fc: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80003400: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80003404: 67 80 00 00  	ret

Disassembly of section .init:

80003410 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80003410: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80003414: 93 81 81 ef  	addi	gp, gp, -264

80003418 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80003418: 97 00 00 00  	auipc	ra, 0
8000341c: e7 80 40 3c  	jalr	964(ra)

80003420 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80003420: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80003424: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80003428: 97 00 00 00  	auipc	ra, 0
8000342c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80003430: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80003434: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80003438: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000343c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80003440: 63 92 02 02  	bnez	t0, 0x80003464 <snrt.crt0.init_registers>

80003444 <.Lpcrel_hi0>:
;     la        t0, _edata
80003444: 97 02 00 00  	auipc	t0, 0
80003448: 93 82 c2 78  	addi	t0, t0, 1932

8000344c <.Lpcrel_hi1>:
;     la        t1, _end
8000344c: 17 03 00 00  	auipc	t1, 0
80003450: 13 03 83 78  	addi	t1, t1, 1928
;     bge       t0, t1, 2f
80003454: 63 d8 62 00  	bge	t0, t1, 0x80003464 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80003458: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000345c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80003460: e3 cc 62 fe  	blt	t0, t1, 0x80003458 <.Lpcrel_hi1+0xc>

80003464 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80003464: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80003468: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000346c: 63 82 02 08  	beqz	t0, 0x800034f0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80003470: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80003474: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80003478: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000347c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80003480: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80003484: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80003488: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000348c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80003490: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80003494: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80003498: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000349c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800034a0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800034a4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800034a8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800034ac: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800034b0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800034b4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800034b8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800034bc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800034c0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800034c4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800034c8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800034cc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800034d0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800034d4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800034d8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800034dc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800034e0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800034e4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800034e8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800034ec: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800034f0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800034f0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800034f4: 23 a0 06 00  	sw	zero, 0(a3)

800034f8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800034f8: 97 02 00 00  	auipc	t0, 0
800034fc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003500: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003504: 93 87 06 00  	mv	a5, a3

80003508 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003508: 97 03 00 00  	auipc	t2, 0
8000350c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003510: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003514: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003518: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000351c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003520: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003524: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003528: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000352c: b3 86 66 40  	sub	a3, a3, t1

80003530 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003530: 97 02 00 00  	auipc	t0, 0
80003534: 93 82 82 5d  	addi	t0, t0, 1496

80003538 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003538: 17 03 00 00  	auipc	t1, 0
8000353c: 13 03 03 5d  	addi	t1, t1, 1488

80003540 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80003540: 97 03 00 00  	auipc	t2, 0
80003544: 93 83 83 5c  	addi	t2, t2, 1480

80003548 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80003548: 17 0e 00 00  	auipc	t3, 0
8000354c: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003550: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003554: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003558: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000355c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003560: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003564: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003568: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000356c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003570: 63 dc 62 00  	bge	t0, t1, 0x80003588 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003574: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003578: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000357c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003580: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80003584: e3 c8 62 fe  	blt	t0, t1, 0x80003574 <.Lpcrel_hi7+0x2c>

80003588 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80003588: 97 02 00 00  	auipc	t0, 0
8000358c: 93 82 02 58  	addi	t0, t0, 1408

80003590 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80003590: 17 03 00 00  	auipc	t1, 0
80003594: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
80003598: 63 da 62 00  	bge	t0, t1, 0x800035ac <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000359c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800035a0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800035a4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800035a8: e3 ca 72 fe  	blt	t0, t2, 0x8000359c <.Lpcrel_hi9+0xc>

800035ac <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800035ac: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800035b0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800035b4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800035b8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800035bc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800035c0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800035c4: 97 00 00 00  	auipc	ra, 0
800035c8: e7 80 c0 bd  	jalr	-1060(ra)
;     lw        a0, 0(sp)
800035cc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800035d0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800035d4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800035d8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800035dc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800035e0: 13 01 41 01  	addi	sp, sp, 20

800035e4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800035e4: 97 02 00 00  	auipc	t0, 0
800035e8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800035ec: 73 90 52 30  	csrw	mtvec, t0

800035f0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800035f0: 97 00 00 00  	auipc	ra, 0
800035f4: e7 80 00 22  	jalr	544(ra)

800035f8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800035f8: 97 d0 ff ff  	auipc	ra, 1048573
800035fc: e7 80 c0 03  	jalr	60(ra)
;     mv        s0, a0 # store return value in s0
80003600: 13 04 05 00  	mv	s0, a0

80003604 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003604: 97 00 00 00  	auipc	ra, 0
80003608: e7 80 c0 20  	jalr	524(ra)

8000360c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000360c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003610: 97 00 00 00  	auipc	ra, 0
80003614: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003618: 73 00 50 10  	wfi	
;     j       1b
8000361c: 6f f0 df ff  	j	0x80003618 <snrt.crt0.end+0xc>

80003620 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003620: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003624: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003628: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000362c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003630: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003634: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003638: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000363c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80003640: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80003644: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80003648: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000364c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003650: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003654: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003658: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000365c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003660: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003664: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003668: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000366c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003670: 63 84 02 08  	beqz	t0, 0x800036f8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003674: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003678: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000367c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003680: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003684: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003688: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000368c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003690: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003694: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003698: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000369c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800036a0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800036a4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800036a8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800036ac: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800036b0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800036b4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800036b8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800036bc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800036c0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800036c4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800036c8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800036cc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800036d0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800036d4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800036d8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800036dc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800036e0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800036e4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800036e8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800036ec: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800036f0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800036f4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800036f8: 97 00 00 00  	auipc	ra, 0
800036fc: e7 80 80 c4  	jalr	-952(ra)
;     csrr    t0, misa
80003700: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003704: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003708: 63 84 02 08  	beqz	t0, 0x80003790 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000370c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003710: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003714: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003718: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000371c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003720: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003724: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003728: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000372c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003730: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003734: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003738: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000373c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003740: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003744: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003748: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000374c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003750: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003754: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003758: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000375c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003760: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003764: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003768: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000376c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003770: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003774: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003778: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000377c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003780: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003784: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003788: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000378c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003790: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003794: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003798: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000379c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800037a0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800037a4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800037a8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800037ac: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800037b0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800037b4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800037b8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800037bc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800037c0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800037c4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800037c8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800037cc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800037d0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800037d4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800037d8: 73 00 20 30  	mret	

800037dc <_snrt_init_core_info>:
;     mv        a4, a1
800037dc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800037e0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800037e4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800037e8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800037ec: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800037f0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800037f4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800037f8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800037fc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003800: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003804: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003808: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000380c: 67 80 00 00  	ret

80003810 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003810: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003814: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003818: 97 00 00 00  	auipc	ra, 0
8000381c: e7 80 00 b1  	jalr	-1264(ra)
;     lw        a0, 0(a0)
80003820: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003824: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003828: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000382c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003830: 67 80 00 00  	ret

80003834 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003834: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003838: 67 80 00 00  	ret

8000383c <_snrt_exit>:
;     addi      sp, sp, -8
8000383c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003840: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003844: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003848: 97 00 00 00  	auipc	ra, 0
8000384c: e7 80 00 ac  	jalr	-1344(ra)
;     lw        t0, 0(sp)
80003850: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003854: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003858: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000385c: 63 1c 05 00  	bnez	a0, 0x80003874 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003860: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003864: 93 e2 12 00  	ori	t0, t0, 1

80003868 <.Lpcrel_hi11>:
;     la        t1, tohost
80003868: 17 03 00 00  	auipc	t1, 0
8000386c: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
80003870: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003874: 67 80 00 00  	ret
