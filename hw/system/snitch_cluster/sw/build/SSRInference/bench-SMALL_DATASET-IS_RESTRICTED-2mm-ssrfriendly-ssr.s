
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-SMALL_DATASET-IS_RESTRICTED-2mm-ssrfriendly-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00002f08 80000000 TEXT
  2 .init             00000468 80002f10 TEXT
  3 .rodata           00000238 80003378 DATA
  4 .htif             00000048 800035c0 DATA
  5 .tdata            00000000 80003608 DATA
  6 .tbss             00000010 80003608 BSS
  7 .tbssend          00000000 80003618 DATA
  8 .sdata            000000e8 80003618 DATA
  9 .data             00000000 80003700 DATA
 10 .sbss             00000004 80003700 BSS
 11 .bss              00000000 80003704 BSS
 12 .dram             00000000 80003704 DATA
 13 .debug_info       0000372c 00000000 
 14 .debug_abbrev     00000bf4 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002d62 00000000 
 17 .debug_loc        000035a5 00000000 
 18 .debug_ranges     000003a8 00000000 
 19 .debug_str        00000b13 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002a0 00000000 
 23 .symtab           00003390 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000968 00000000 


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
; {
80000634: 13 01 01 fd  	addi	sp, sp, -48
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 02  	sw	ra, 44(sp)
8000063c: 23 24 81 02  	sw	s0, 40(sp)
80000640: 23 22 91 02  	sw	s1, 36(sp)
80000644: 23 20 21 03  	sw	s2, 32(sp)
80000648: 23 2e 31 01  	sw	s3, 28(sp)
8000064c: 27 38 81 00  	fsd	fs0, 16(sp)
80000650: 37 05 00 00  	lui	a0, 0
80000654: 33 05 45 00  	add	a0, a0, tp
80000658: 83 25 45 00  	lw	a1, 4(a0)
8000065c: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
80000660: e3 96 05 1c  	bnez	a1, 0x8000102c <.LBB0_106+0x10>
;     return _snrt_team_current->root;
80000664: 37 05 00 00  	lui	a0, 0
80000668: 33 05 45 00  	add	a0, a0, tp
8000066c: 03 25 05 00  	lw	a0, 0(a0)
80000670: 83 24 05 00  	lw	s1, 0(a0)
80000674: 37 45 00 00  	lui	a0, 4
;     if (alloc->next + size > alloc->base + alloc->size) {
80000678: 83 a9 84 05  	lw	s3, 88(s1)
8000067c: 03 a6 04 05  	lw	a2, 80(s1)
80000680: 83 a6 44 05  	lw	a3, 84(s1)
80000684: 13 08 85 e7  	addi	a6, a0, -392
80000688: 33 85 09 01  	add	a0, s3, a6
8000068c: 93 05 85 00  	addi	a1, a0, 8
80000690: b3 87 c6 00  	add	a5, a3, a2
80000694: 63 f6 b7 00  	bgeu	a5, a1, 0x800006a0 <main+0x6c>
80000698: 13 05 00 00  	mv	a0, zero
8000069c: 6f 00 00 01  	j	0x800006ac <main+0x78>
;     void *ret = (void *)alloc->next;
800006a0: 13 85 09 00  	mv	a0, s3
;     alloc->next += size;
800006a4: 23 ac b4 04  	sw	a1, 88(s1)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006a8: 93 89 05 00  	mv	s3, a1
800006ac: b7 55 00 00  	lui	a1, 5
800006b0: 13 87 85 77  	addi	a4, a1, 1912
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b4: b3 85 e9 00  	add	a1, s3, a4
800006b8: 93 85 85 00  	addi	a1, a1, 8
800006bc: 63 f6 b7 00  	bgeu	a5, a1, 0x800006c8 <main+0x94>
800006c0: 13 06 00 00  	mv	a2, zero
800006c4: 6f 00 00 01  	j	0x800006d4 <main+0xa0>
;     void *ret = (void *)alloc->next;
800006c8: 13 86 09 00  	mv	a2, s3
;     alloc->next += size;
800006cc: 23 ac b4 04  	sw	a1, 88(s1)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d0: 93 89 05 00  	mv	s3, a1
800006d4: b7 75 00 00  	lui	a1, 7
800006d8: 93 83 85 d5  	addi	t2, a1, -680
;     if (alloc->next + size > alloc->base + alloc->size) {
800006dc: b3 85 79 00  	add	a1, s3, t2
800006e0: 93 85 85 00  	addi	a1, a1, 8
800006e4: 63 f6 b7 00  	bgeu	a5, a1, 0x800006f0 <main+0xbc>
800006e8: 13 0e 00 00  	mv	t3, zero
800006ec: 6f 00 00 01  	j	0x800006fc <main+0xc8>
;     void *ret = (void *)alloc->next;
800006f0: 13 8e 09 00  	mv	t3, s3
;     alloc->next += size;
800006f4: 23 ac b4 04  	sw	a1, 88(s1)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f8: 93 89 05 00  	mv	s3, a1
800006fc: b7 85 00 00  	lui	a1, 8
80000700: 13 83 85 cf  	addi	t1, a1, -776
;     if (alloc->next + size > alloc->base + alloc->size) {
80000704: b3 85 69 00  	add	a1, s3, t1
80000708: 93 85 85 00  	addi	a1, a1, 8
8000070c: 63 f6 b7 00  	bgeu	a5, a1, 0x80000718 <main+0xe4>
80000710: 93 0e 00 00  	mv	t4, zero
80000714: 6f 00 00 01  	j	0x80000724 <main+0xf0>
;     void *ret = (void *)alloc->next;
80000718: 93 8e 09 00  	mv	t4, s3
;     alloc->next += size;
8000071c: 23 ac b4 04  	sw	a1, 88(s1)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000720: 93 89 05 00  	mv	s3, a1
80000724: b7 65 00 00  	lui	a1, 6
80000728: 93 88 85 3f  	addi	a7, a1, 1016
;     if (alloc->next + size > alloc->base + alloc->size) {
8000072c: b3 85 19 01  	add	a1, s3, a7
80000730: 93 85 85 00  	addi	a1, a1, 8
80000734: 63 f6 b7 00  	bgeu	a5, a1, 0x80000740 <main+0x10c>
80000738: 93 09 00 00  	mv	s3, zero
8000073c: 6f 00 80 00  	j	0x80000744 <main+0x110>
;     alloc->next += size;
80000740: 23 ac b4 04  	sw	a1, 88(s1)
;   for (i = 0; i < ni; i++)
80000744: b3 05 e6 00  	add	a1, a2, a4
80000748: 93 56 46 01  	srli	a3, a2, 20
8000074c: b3 36 d0 00  	snez	a3, a3
80000750: 37 07 12 00  	lui	a4, 288
80000754: 13 07 17 00  	addi	a4, a4, 1
80000758: b3 b5 e5 00  	sltu	a1, a1, a4
8000075c: b3 f2 b6 00  	and	t0, a3, a1

80000760 <.LBB0_96>:
80000760: 17 37 00 00  	auipc	a4, 3
80000764: 13 07 87 eb  	addi	a4, a4, -328
80000768: 93 05 00 00  	mv	a1, zero
8000076c: 63 88 02 08  	beqz	t0, 0x800007fc <.LBB0_96+0x9c>
80000770: 93 06 80 00  	addi	a3, zero, 8
80000774: 93 07 50 04  	addi	a5, zero, 69
;   for (i = 0; i < ni; i++)
80000778: 93 04 00 04  	addi	s1, zero, 64
8000077c: ab a0 97 00  	scfgw	a5, s1
80000780: 93 07 00 0c  	addi	a5, zero, 192
80000784: ab a0 f6 00  	scfgw	a3, a5
80000788: 93 07 70 02  	addi	a5, zero, 39
8000078c: 93 04 00 06  	addi	s1, zero, 96
80000790: ab a0 97 00  	scfgw	a5, s1
80000794: 93 07 00 0e  	addi	a5, zero, 224
80000798: ab a0 f6 00  	scfgw	a3, a5
8000079c: 93 06 00 02  	addi	a3, zero, 32
800007a0: ab 20 d0 00  	scfgw	zero, a3
800007a4: 2b 20 06 3a  	scfgwi	a2, 928
800007a8: f3 e6 00 7c  	csrrsi	a3, 1984, 1
800007ac: 87 31 07 00  	fld	ft3, 0(a4)
800007b0: b7 d6 cc cc  	lui	a3, 838861
800007b4: 93 86 d6 cc  	addi	a3, a3, -819
800007b8: 13 07 80 02  	addi	a4, zero, 40
800007bc: 93 07 60 04  	addi	a5, zero, 70
800007c0: 93 04 10 00  	addi	s1, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
800007c4: 33 b4 d4 02  	mulhu	s0, s1, a3
800007c8: 13 54 54 00  	srli	s0, s0, 5
800007cc: 33 04 e4 02  	mul	s0, s0, a4
800007d0: 33 84 84 40  	sub	s0, s1, s0
800007d4: 53 02 04 d2  	fcvt.d.w	ft4, s0
800007d8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800007dc: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nk; j++)
800007e0: 93 87 f7 ff  	addi	a5, a5, -1
800007e4: b3 84 b4 00  	add	s1, s1, a1
800007e8: e3 9e 07 fc  	bnez	a5, 0x800007c4 <.LBB0_96+0x64>
;   for (i = 0; i < ni; i++)
800007ec: 93 85 15 00  	addi	a1, a1, 1
800007f0: e3 96 e5 fc  	bne	a1, a4, 0x800007bc <.LBB0_96+0x5c>
800007f4: f3 f5 00 7c  	csrrci	a1, 1984, 1
800007f8: 6f 00 c0 05  	j	0x80000854 <.LBB0_96+0xf4>
800007fc: b7 d6 cc cc  	lui	a3, 838861
80000800: 87 31 07 00  	fld	ft3, 0(a4)
80000804: 93 86 d6 cc  	addi	a3, a3, -819
80000808: 93 0f 80 02  	addi	t6, zero, 40
8000080c: 13 0f 00 23  	addi	t5, zero, 560
80000810: 93 04 06 00  	mv	s1, a2
80000814: 13 04 00 00  	mv	s0, zero
80000818: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
8000081c: 33 b7 d7 02  	mulhu	a4, a5, a3
80000820: 13 57 57 00  	srli	a4, a4, 5
80000824: 33 07 f7 03  	mul	a4, a4, t6
80000828: 33 87 e7 40  	sub	a4, a5, a4
8000082c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000830: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000834: 33 87 84 00  	add	a4, s1, s0
80000838: 27 30 47 00  	fsd	ft4, 0(a4)
;     for (j = 0; j < nk; j++)
8000083c: 13 04 84 00  	addi	s0, s0, 8
80000840: b3 87 b7 00  	add	a5, a5, a1
80000844: e3 1c e4 fd  	bne	s0, t5, 0x8000081c <.LBB0_96+0xbc>
;   for (i = 0; i < ni; i++)
80000848: 93 85 15 00  	addi	a1, a1, 1
8000084c: 93 84 04 23  	addi	s1, s1, 560
80000850: e3 92 f5 fd  	bne	a1, t6, 0x80000814 <.LBB0_96+0xb4>
;   for (i = 0; i < nk; i++)
80000854: b3 05 7e 00  	add	a1, t3, t2
80000858: 93 56 4e 01  	srli	a3, t3, 20
8000085c: b3 36 d0 00  	snez	a3, a3
80000860: 37 07 12 00  	lui	a4, 288
80000864: 13 07 17 00  	addi	a4, a4, 1
80000868: b3 b5 e5 00  	sltu	a1, a1, a4
8000086c: b3 f3 b6 00  	and	t2, a3, a1

80000870 <.LBB0_97>:
80000870: 97 37 00 00  	auipc	a5, 3
80000874: 93 87 07 db  	addi	a5, a5, -592
80000878: 63 8c 03 08  	beqz	t2, 0x80000910 <.LBB0_97+0xa0>
8000087c: 93 04 00 00  	mv	s1, zero
80000880: 93 05 80 00  	addi	a1, zero, 8
80000884: 93 06 10 03  	addi	a3, zero, 49
;   for (i = 0; i < nk; i++)
80000888: 13 07 00 04  	addi	a4, zero, 64
8000088c: ab a0 e6 00  	scfgw	a3, a4
80000890: 93 06 00 0c  	addi	a3, zero, 192
80000894: ab a0 d5 00  	scfgw	a1, a3
80000898: 93 06 50 04  	addi	a3, zero, 69
8000089c: 13 07 00 06  	addi	a4, zero, 96
800008a0: ab a0 e6 00  	scfgw	a3, a4
800008a4: 93 06 00 0e  	addi	a3, zero, 224
800008a8: ab a0 d5 00  	scfgw	a1, a3
800008ac: 93 05 00 02  	addi	a1, zero, 32
800008b0: ab 20 b0 00  	scfgw	zero, a1
800008b4: 2b 20 0e 3a  	scfgwi	t3, 928
800008b8: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800008bc: b7 85 eb 51  	lui	a1, 335544
800008c0: 87 b1 07 00  	fld	ft3, 0(a5)
800008c4: 93 86 f5 51  	addi	a3, a1, 1311
800008c8: 13 07 20 03  	addi	a4, zero, 50
800008cc: 13 0f 60 04  	addi	t5, zero, 70
800008d0: 93 85 04 00  	mv	a1, s1
800008d4: 13 04 20 03  	addi	s0, zero, 50
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
800008d8: b3 b7 d5 02  	mulhu	a5, a1, a3
800008dc: 93 d7 47 00  	srli	a5, a5, 4
800008e0: b3 87 e7 02  	mul	a5, a5, a4
800008e4: b3 87 f5 40  	sub	a5, a1, a5
800008e8: 53 82 07 d2  	fcvt.d.w	ft4, a5
800008ec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008f0: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nj; j++)
800008f4: 13 04 f4 ff  	addi	s0, s0, -1
800008f8: b3 85 95 00  	add	a1, a1, s1
800008fc: e3 1e 04 fc  	bnez	s0, 0x800008d8 <.LBB0_97+0x68>
;   for (i = 0; i < nk; i++)
80000900: 93 84 14 00  	addi	s1, s1, 1
80000904: e3 96 e4 fd  	bne	s1, t5, 0x800008d0 <.LBB0_97+0x60>
80000908: f3 f5 00 7c  	csrrci	a1, 1984, 1
8000090c: 6f 00 40 06  	j	0x80000970 <.LBB0_97+0x100>
80000910: 13 07 00 00  	mv	a4, zero
80000914: b7 85 eb 51  	lui	a1, 335544
80000918: 93 86 f5 51  	addi	a3, a1, 1311
8000091c: 87 b1 07 00  	fld	ft3, 0(a5)
80000920: 93 0f 20 03  	addi	t6, zero, 50
80000924: 13 09 00 19  	addi	s2, zero, 400
80000928: 13 0f 60 04  	addi	t5, zero, 70
8000092c: 13 04 0e 00  	mv	s0, t3
80000930: 93 04 00 00  	mv	s1, zero
80000934: 93 05 07 00  	mv	a1, a4
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000938: b3 b7 d5 02  	mulhu	a5, a1, a3
8000093c: 93 d7 47 00  	srli	a5, a5, 4
80000940: b3 87 f7 03  	mul	a5, a5, t6
80000944: b3 87 f5 40  	sub	a5, a1, a5
80000948: 53 82 07 d2  	fcvt.d.w	ft4, a5
8000094c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000950: b3 07 94 00  	add	a5, s0, s1
80000954: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nj; j++)
80000958: 93 84 84 00  	addi	s1, s1, 8
8000095c: b3 85 e5 00  	add	a1, a1, a4
80000960: e3 9c 24 fd  	bne	s1, s2, 0x80000938 <.LBB0_97+0xc8>
;   for (i = 0; i < nk; i++)
80000964: 13 07 17 00  	addi	a4, a4, 1
80000968: 13 04 04 19  	addi	s0, s0, 400
8000096c: e3 12 e7 fd  	bne	a4, t5, 0x80000930 <.LBB0_97+0xc0>
;   for (i = 0; i < nj; i++)
80000970: b3 85 6e 00  	add	a1, t4, t1
80000974: 93 d6 4e 01  	srli	a3, t4, 20
80000978: b3 36 d0 00  	snez	a3, a3
8000097c: 37 07 12 00  	lui	a4, 288
80000980: 13 07 17 00  	addi	a4, a4, 1
80000984: b3 b5 e5 00  	sltu	a1, a1, a4
80000988: b3 f5 b6 00  	and	a1, a3, a1

8000098c <.LBB0_98>:
8000098c: 97 37 00 00  	auipc	a5, 3
80000990: 93 87 c7 c9  	addi	a5, a5, -868
80000994: 63 80 05 0a  	beqz	a1, 0x80000a34 <.LBB0_98+0xa8>
80000998: 13 07 00 00  	mv	a4, zero
8000099c: 93 05 80 00  	addi	a1, zero, 8
800009a0: 93 06 f0 04  	addi	a3, zero, 79
;   for (i = 0; i < nj; i++)
800009a4: 93 04 00 04  	addi	s1, zero, 64
800009a8: ab a0 96 00  	scfgw	a3, s1
800009ac: 93 06 00 0c  	addi	a3, zero, 192
800009b0: ab a0 d5 00  	scfgw	a1, a3
800009b4: 93 06 10 03  	addi	a3, zero, 49
800009b8: 93 04 00 06  	addi	s1, zero, 96
800009bc: ab a0 96 00  	scfgw	a3, s1
800009c0: 93 06 00 0e  	addi	a3, zero, 224
800009c4: ab a0 d5 00  	scfgw	a1, a3
800009c8: 93 05 00 02  	addi	a1, zero, 32
800009cc: ab 20 b0 00  	scfgw	zero, a1
800009d0: 2b a0 0e 3a  	scfgwi	t4, 928
800009d4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800009d8: 13 0f 10 00  	addi	t5, zero, 1
800009dc: b7 d5 cc cc  	lui	a1, 838861
800009e0: 87 b1 07 00  	fld	ft3, 0(a5)
800009e4: 93 86 d5 cc  	addi	a3, a1, -819
800009e8: 93 07 00 05  	addi	a5, zero, 80
800009ec: 13 03 20 03  	addi	t1, zero, 50
800009f0: 93 05 0f 00  	mv	a1, t5
800009f4: 93 04 00 05  	addi	s1, zero, 80
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
800009f8: 33 b4 d5 02  	mulhu	s0, a1, a3
800009fc: 13 54 64 00  	srli	s0, s0, 6
80000a00: 33 04 f4 02  	mul	s0, s0, a5
80000a04: 33 84 85 40  	sub	s0, a1, s0
80000a08: 53 02 04 d2  	fcvt.d.w	ft4, s0
80000a0c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a10: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nl; j++)
80000a14: 93 84 f4 ff  	addi	s1, s1, -1
80000a18: b3 85 e5 00  	add	a1, a1, a4
80000a1c: e3 9e 04 fc  	bnez	s1, 0x800009f8 <.LBB0_98+0x6c>
;   for (i = 0; i < nj; i++)
80000a20: 13 07 17 00  	addi	a4, a4, 1
80000a24: 13 0f 3f 00  	addi	t5, t5, 3
80000a28: e3 14 67 fc  	bne	a4, t1, 0x800009f0 <.LBB0_98+0x64>
80000a2c: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000a30: 6f 00 c0 06  	j	0x80000a9c <.LBB0_98+0x110>
80000a34: 93 05 00 00  	mv	a1, zero
80000a38: 13 0f 10 00  	addi	t5, zero, 1
80000a3c: b7 d6 cc cc  	lui	a3, 838861
80000a40: 13 87 d6 cc  	addi	a4, a3, -819
80000a44: 87 b1 07 00  	fld	ft3, 0(a5)
80000a48: 93 0f 00 05  	addi	t6, zero, 80
80000a4c: 13 09 00 28  	addi	s2, zero, 640
80000a50: 13 03 20 03  	addi	t1, zero, 50
80000a54: 13 84 0e 00  	mv	s0, t4
80000a58: 93 06 00 00  	mv	a3, zero
80000a5c: 93 07 0f 00  	mv	a5, t5
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000a60: b3 b4 e7 02  	mulhu	s1, a5, a4
80000a64: 93 d4 64 00  	srli	s1, s1, 6
80000a68: b3 84 f4 03  	mul	s1, s1, t6
80000a6c: b3 84 97 40  	sub	s1, a5, s1
80000a70: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a74: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a78: b3 04 d4 00  	add	s1, s0, a3
80000a7c: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (j = 0; j < nl; j++)
80000a80: 93 86 86 00  	addi	a3, a3, 8
80000a84: b3 87 b7 00  	add	a5, a5, a1
80000a88: e3 9c 26 fd  	bne	a3, s2, 0x80000a60 <.LBB0_98+0xd4>
;   for (i = 0; i < nj; i++)
80000a8c: 93 85 15 00  	addi	a1, a1, 1
80000a90: 13 04 04 28  	addi	s0, s0, 640
80000a94: 13 0f 3f 00  	addi	t5, t5, 3
80000a98: e3 90 65 fc  	bne	a1, t1, 0x80000a58 <.LBB0_98+0xcc>
;   for (i = 0; i < ni; i++)
80000a9c: b3 85 19 01  	add	a1, s3, a7
80000aa0: 93 d6 49 01  	srli	a3, s3, 20
80000aa4: b3 36 d0 00  	snez	a3, a3
80000aa8: 37 07 12 00  	lui	a4, 288
80000aac: 13 07 17 00  	addi	a4, a4, 1
80000ab0: b3 b5 e5 00  	sltu	a1, a1, a4
80000ab4: 33 f9 b6 00  	and	s2, a3, a1

80000ab8 <.LBB0_99>:
80000ab8: 97 34 00 00  	auipc	s1, 3
80000abc: 93 84 84 b7  	addi	s1, s1, -1160
80000ac0: 13 03 00 00  	mv	t1, zero
80000ac4: 63 00 09 0a  	beqz	s2, 0x80000b64 <.LBB0_99+0xac>
80000ac8: 13 07 00 00  	mv	a4, zero
80000acc: 93 05 80 00  	addi	a1, zero, 8
80000ad0: 93 06 f0 04  	addi	a3, zero, 79
;   for (i = 0; i < ni; i++)
80000ad4: 13 04 00 04  	addi	s0, zero, 64
80000ad8: ab a0 86 00  	scfgw	a3, s0
80000adc: 93 06 00 0c  	addi	a3, zero, 192
80000ae0: ab a0 d5 00  	scfgw	a1, a3
80000ae4: 93 06 70 02  	addi	a3, zero, 39
80000ae8: 13 04 00 06  	addi	s0, zero, 96
80000aec: ab a0 86 00  	scfgw	a3, s0
80000af0: 93 06 00 0e  	addi	a3, zero, 224
80000af4: ab a0 d5 00  	scfgw	a1, a3
80000af8: 93 05 00 02  	addi	a1, zero, 32
80000afc: ab 20 b0 00  	scfgw	zero, a1
80000b00: 2b a0 09 3a  	scfgwi	s3, 928
80000b04: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000b08: b7 a5 0e ea  	lui	a1, 958698
80000b0c: 87 b1 04 00  	fld	ft3, 0(s1)
80000b10: 93 85 b5 0e  	addi	a1, a1, 235
80000b14: 93 06 60 04  	addi	a3, zero, 70
80000b18: 93 08 80 02  	addi	a7, zero, 40
80000b1c: 13 04 00 05  	addi	s0, zero, 80
80000b20: 93 04 03 00  	mv	s1, t1
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80000b24: 93 d7 14 00  	srli	a5, s1, 1
80000b28: b3 b7 b7 02  	mulhu	a5, a5, a1
80000b2c: 93 d7 57 00  	srli	a5, a5, 5
80000b30: b3 87 d7 02  	mul	a5, a5, a3
80000b34: b3 87 f4 40  	sub	a5, s1, a5
80000b38: 53 82 07 d2  	fcvt.d.w	ft4, a5
80000b3c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b40: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nl; j++)
80000b44: 13 04 f4 ff  	addi	s0, s0, -1
80000b48: b3 84 e4 00  	add	s1, s1, a4
80000b4c: e3 1c 04 fc  	bnez	s0, 0x80000b24 <.LBB0_99+0x6c>
;   for (i = 0; i < ni; i++)
80000b50: 13 07 17 00  	addi	a4, a4, 1
80000b54: 13 03 23 00  	addi	t1, t1, 2
80000b58: e3 12 17 fd  	bne	a4, a7, 0x80000b1c <.LBB0_99+0x64>
80000b5c: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000b60: 6f 00 c0 06  	j	0x80000bcc <.LBB0_99+0x114>
80000b64: 93 05 00 00  	mv	a1, zero
80000b68: b7 a6 0e ea  	lui	a3, 958698
80000b6c: 93 86 b6 0e  	addi	a3, a3, 235
80000b70: 87 b1 04 00  	fld	ft3, 0(s1)
80000b74: 13 0f 60 04  	addi	t5, zero, 70
80000b78: 93 0f 00 28  	addi	t6, zero, 640
80000b7c: 93 08 80 02  	addi	a7, zero, 40
80000b80: 13 84 09 00  	mv	s0, s3
80000b84: 13 07 00 00  	mv	a4, zero
80000b88: 93 07 03 00  	mv	a5, t1
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80000b8c: 93 d4 17 00  	srli	s1, a5, 1
80000b90: b3 b4 d4 02  	mulhu	s1, s1, a3
80000b94: 93 d4 54 00  	srli	s1, s1, 5
80000b98: b3 84 e4 03  	mul	s1, s1, t5
80000b9c: b3 84 97 40  	sub	s1, a5, s1
80000ba0: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ba4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ba8: b3 04 e4 00  	add	s1, s0, a4
80000bac: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (j = 0; j < nl; j++)
80000bb0: 13 07 87 00  	addi	a4, a4, 8
80000bb4: b3 87 b7 00  	add	a5, a5, a1
80000bb8: e3 1a f7 fd  	bne	a4, t6, 0x80000b8c <.LBB0_99+0xd4>
;   for (i = 0; i < ni; i++)
80000bbc: 93 85 15 00  	addi	a1, a1, 1
80000bc0: 13 04 04 28  	addi	s0, s0, 640
80000bc4: 13 03 23 00  	addi	t1, t1, 2
80000bc8: e3 9e 15 fb  	bne	a1, a7, 0x80000b84 <.LBB0_99+0xcc>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80000bcc: f3 28 00 b0  	csrr	a7, mcycle
;   for (i = 0; i < ni; i++) {
80000bd0: b3 05 05 01  	add	a1, a0, a6
80000bd4: 93 56 45 01  	srli	a3, a0, 20
80000bd8: b3 36 d0 00  	snez	a3, a3
80000bdc: 37 07 12 00  	lui	a4, 288
80000be0: 13 07 17 00  	addi	a4, a4, 1
80000be4: b3 b5 e5 00  	sltu	a1, a1, a4
80000be8: 33 f8 b6 00  	and	a6, a3, a1
80000bec: b3 75 58 00  	and	a1, a6, t0
80000bf0: b3 f5 75 00  	and	a1, a1, t2

80000bf4 <.LBB0_100>:
80000bf4: 97 32 00 00  	auipc	t0, 3
80000bf8: 93 82 42 a4  	addi	t0, t0, -1468
80000bfc: 63 82 05 12  	beqz	a1, 0x80000d20 <.LBB0_100+0x12c>
80000c00: 93 04 00 00  	mv	s1, zero
80000c04: 93 05 80 00  	addi	a1, zero, 8
80000c08: 93 03 10 03  	addi	t2, zero, 49
;   for (i = 0; i < ni; i++) {
80000c0c: 93 07 00 04  	addi	a5, zero, 64
80000c10: 13 04 00 0c  	addi	s0, zero, 192
80000c14: ab a0 f3 00  	scfgw	t2, a5
80000c18: ab a0 85 00  	scfgw	a1, s0
80000c1c: 93 07 70 02  	addi	a5, zero, 39
80000c20: 13 04 00 06  	addi	s0, zero, 96
80000c24: 13 07 00 0e  	addi	a4, zero, 224
80000c28: ab a0 87 00  	scfgw	a5, s0
80000c2c: ab a0 e5 00  	scfgw	a1, a4
80000c30: 13 07 00 02  	addi	a4, zero, 32
80000c34: ab 20 e0 00  	scfgw	zero, a4
80000c38: 2b 20 05 3a  	scfgwi	a0, 928
80000c3c: 13 03 50 04  	addi	t1, zero, 69
80000c40: 13 04 10 00  	addi	s0, zero, 1
80000c44: 13 07 04 04  	addi	a4, s0, 64
80000c48: 93 06 04 0c  	addi	a3, s0, 192
80000c4c: ab 20 e3 00  	scfgw	t1, a4
80000c50: ab a0 d5 00  	scfgw	a1, a3
80000c54: 93 06 80 dd  	addi	a3, zero, -552
80000c58: 13 07 04 06  	addi	a4, s0, 96
80000c5c: ab a0 e3 00  	scfgw	t2, a4
80000c60: 13 07 04 0e  	addi	a4, s0, 224
80000c64: ab a0 e6 00  	scfgw	a3, a4
80000c68: 93 06 04 08  	addi	a3, s0, 128
80000c6c: 13 07 04 10  	addi	a4, s0, 256
80000c70: ab a0 d7 00  	scfgw	a5, a3
80000c74: ab a0 e5 00  	scfgw	a1, a4
80000c78: 93 05 04 02  	addi	a1, s0, 32
80000c7c: ab 20 b0 00  	scfgw	zero, a1
80000c80: 2b 20 16 34  	scfgwi	a2, 833
80000c84: 93 05 00 19  	addi	a1, zero, 400
80000c88: 13 06 20 00  	addi	a2, zero, 2
80000c8c: 93 06 06 04  	addi	a3, a2, 64
80000c90: 13 07 06 0c  	addi	a4, a2, 192
80000c94: ab 20 d3 00  	scfgw	t1, a3
80000c98: ab a0 e5 00  	scfgw	a1, a4
80000c9c: b7 95 ff ff  	lui	a1, 1048569
80000ca0: 93 86 85 43  	addi	a3, a1, 1080
80000ca4: 13 07 06 06  	addi	a4, a2, 96
80000ca8: 13 04 06 0e  	addi	s0, a2, 224
80000cac: ab a0 e3 00  	scfgw	t2, a4
80000cb0: ab a0 86 00  	scfgw	a3, s0
80000cb4: 93 85 85 2a  	addi	a1, a1, 680
80000cb8: 93 06 06 08  	addi	a3, a2, 128
80000cbc: 13 07 06 10  	addi	a4, a2, 256
80000cc0: ab a0 d7 00  	scfgw	a5, a3
80000cc4: ab a0 e5 00  	scfgw	a1, a4
80000cc8: 93 05 06 02  	addi	a1, a2, 32
80000ccc: ab 20 b0 00  	scfgw	zero, a1
80000cd0: 2b 20 2e 34  	scfgwi	t3, 834
80000cd4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000cd8: 87 b1 02 00  	fld	ft3, 0(t0)
80000cdc: 53 02 00 d2  	fcvt.d.w	ft4, zero
80000ce0: 93 05 20 03  	addi	a1, zero, 50
80000ce4: 13 06 80 02  	addi	a2, zero, 40
80000ce8: 93 06 00 00  	mv	a3, zero
80000cec: 13 07 60 04  	addi	a4, zero, 70
80000cf0: d3 02 42 22  	fmv.d	ft5, ft4
;         x += alpha * A[i][k] * B[k][j];
80000cf4: 53 f3 30 12  	fmul.d	ft6, ft1, ft3
;       for (k = 0; k < nk; ++k) {
80000cf8: 13 07 f7 ff  	addi	a4, a4, -1
;         x += alpha * A[i][k] * B[k][j];
80000cfc: c3 72 23 2a  	fmadd.d	ft5, ft6, ft2, ft5
;       for (k = 0; k < nk; ++k) {
80000d00: e3 1a 07 fe  	bnez	a4, 0x80000cf4 <.LBB0_100+0x100>
;       tmp[i][j] = x;
80000d04: 53 80 52 22  	fmv.d	ft0, ft5
;     for (j = 0; j < nj; j++) {
80000d08: 93 86 16 00  	addi	a3, a3, 1
80000d0c: e3 90 b6 fe  	bne	a3, a1, 0x80000cec <.LBB0_100+0xf8>
;   for (i = 0; i < ni; i++) {
80000d10: 93 84 14 00  	addi	s1, s1, 1
80000d14: e3 9a c4 fc  	bne	s1, a2, 0x80000ce8 <.LBB0_100+0xf4>
80000d18: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000d1c: 6f 00 00 08  	j	0x80000d9c <.LBB0_100+0x1a8>
80000d20: 13 0f 00 00  	mv	t5, zero
80000d24: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000d28: 07 b2 02 00  	fld	ft4, 0(t0)
80000d2c: 13 07 00 23  	addi	a4, zero, 560
80000d30: 13 03 00 19  	addi	t1, zero, 400
80000d34: 93 03 20 03  	addi	t2, zero, 50
80000d38: 93 02 80 02  	addi	t0, zero, 40
80000d3c: 13 04 00 00  	mv	s0, zero
80000d40: 93 06 0e 00  	mv	a3, t3
80000d44: 93 07 00 00  	mv	a5, zero
80000d48: 93 85 06 00  	mv	a1, a3
80000d4c: d3 82 31 22  	fmv.d	ft5, ft3
;         x += alpha * A[i][k] * B[k][j];
80000d50: b3 04 f6 00  	add	s1, a2, a5
80000d54: 07 b3 04 00  	fld	ft6, 0(s1)
80000d58: 87 b3 05 00  	fld	ft7, 0(a1)
80000d5c: 53 73 43 12  	fmul.d	ft6, ft6, ft4
80000d60: c3 72 73 2a  	fmadd.d	ft5, ft6, ft7, ft5
;       for (k = 0; k < nk; ++k) {
80000d64: 93 87 87 00  	addi	a5, a5, 8
80000d68: 93 85 05 19  	addi	a1, a1, 400
80000d6c: e3 92 e7 fe  	bne	a5, a4, 0x80000d50 <.LBB0_100+0x15c>
;       tmp[i][j] = x;
80000d70: b3 05 6f 02  	mul	a1, t5, t1
80000d74: b3 05 b5 00  	add	a1, a0, a1
80000d78: 93 17 34 00  	slli	a5, s0, 3
80000d7c: b3 85 f5 00  	add	a1, a1, a5
80000d80: 27 b0 55 00  	fsd	ft5, 0(a1)
;     for (j = 0; j < nj; j++) {
80000d84: 13 04 14 00  	addi	s0, s0, 1
80000d88: 93 86 86 00  	addi	a3, a3, 8
80000d8c: e3 1c 74 fa  	bne	s0, t2, 0x80000d44 <.LBB0_100+0x150>
;   for (i = 0; i < ni; i++) {
80000d90: 13 0f 1f 00  	addi	t5, t5, 1
80000d94: 13 06 06 23  	addi	a2, a2, 560
80000d98: e3 12 5f fa  	bne	t5, t0, 0x80000d3c <.LBB0_100+0x148>
;   for (i = 0; i < ni; i++) {
80000d9c: b3 75 28 01  	and	a1, a6, s2
80000da0: 63 8c 05 10  	beqz	a1, 0x80000eb8 <.LBB0_101+0x60>
80000da4: 13 06 00 00  	mv	a2, zero
80000da8: 93 05 80 00  	addi	a1, zero, 8
80000dac: 93 06 f0 04  	addi	a3, zero, 79
;   for (i = 0; i < ni; i++) {
80000db0: 13 07 00 04  	addi	a4, zero, 64
80000db4: 93 07 00 0c  	addi	a5, zero, 192
80000db8: ab a0 e6 00  	scfgw	a3, a4
80000dbc: ab a0 f5 00  	scfgw	a1, a5
80000dc0: 13 07 70 02  	addi	a4, zero, 39
80000dc4: 93 07 00 06  	addi	a5, zero, 96
80000dc8: 93 04 00 0e  	addi	s1, zero, 224
80000dcc: ab 20 f7 00  	scfgw	a4, a5
80000dd0: ab a0 95 00  	scfgw	a1, s1
80000dd4: 93 07 00 02  	addi	a5, zero, 32
80000dd8: ab 20 f0 00  	scfgw	zero, a5
80000ddc: 2b a0 09 32  	scfgwi	s3, 800
80000de0: 93 07 10 00  	addi	a5, zero, 1
80000de4: 93 84 07 04  	addi	s1, a5, 64
80000de8: 13 84 07 0c  	addi	s0, a5, 192
80000dec: ab a0 96 00  	scfgw	a3, s1
80000df0: ab a0 85 00  	scfgw	a1, s0
80000df4: 93 84 07 06  	addi	s1, a5, 96
80000df8: 13 84 07 0e  	addi	s0, a5, 224
80000dfc: ab 20 97 00  	scfgw	a4, s1
80000e00: ab a0 85 00  	scfgw	a1, s0
80000e04: 93 87 07 02  	addi	a5, a5, 32
80000e08: ab 20 f0 00  	scfgw	zero, a5
80000e0c: 2b a0 19 3a  	scfgwi	s3, 929
80000e10: 93 07 10 03  	addi	a5, zero, 49
80000e14: 93 04 20 00  	addi	s1, zero, 2
80000e18: 13 84 04 04  	addi	s0, s1, 64
80000e1c: ab a0 87 00  	scfgw	a5, s0
80000e20: 93 87 04 0c  	addi	a5, s1, 192
80000e24: ab a0 f5 00  	scfgw	a1, a5
80000e28: 93 07 80 e7  	addi	a5, zero, -392
80000e2c: 13 84 04 06  	addi	s0, s1, 96
80000e30: ab a0 86 00  	scfgw	a3, s0
80000e34: 93 86 04 0e  	addi	a3, s1, 224
80000e38: ab a0 d7 00  	scfgw	a5, a3
80000e3c: 93 86 04 08  	addi	a3, s1, 128
80000e40: 93 87 04 10  	addi	a5, s1, 256
80000e44: ab 20 d7 00  	scfgw	a4, a3
80000e48: ab a0 f5 00  	scfgw	a1, a5
80000e4c: 93 85 04 02  	addi	a1, s1, 32
80000e50: ab 20 b0 00  	scfgw	zero, a1
80000e54: 2b 20 25 34  	scfgwi	a0, 834

80000e58 <.LBB0_101>:
80000e58: 17 25 00 00  	auipc	a0, 2
80000e5c: 13 05 85 7e  	addi	a0, a0, 2024
80000e60: 87 31 05 00  	fld	ft3, 0(a0)
;   for (i = 0; i < ni; i++) {
80000e64: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000e68: 13 05 00 05  	addi	a0, zero, 80
80000e6c: 93 06 80 02  	addi	a3, zero, 40
80000e70: 93 05 00 00  	mv	a1, zero
80000e74: 93 84 0e 00  	mv	s1, t4
;       x *= beta;
80000e78: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80000e7c: 93 07 20 03  	addi	a5, zero, 50
80000e80: 13 87 04 00  	mv	a4, s1
;         x += tmp[i][k] * C[k][j];
80000e84: 07 33 07 00  	fld	ft6, 0(a4)
80000e88: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
;       for (k = 0; k < nj; ++k) {
80000e8c: 93 87 f7 ff  	addi	a5, a5, -1
80000e90: 13 07 07 28  	addi	a4, a4, 640
80000e94: e3 98 07 fe  	bnez	a5, 0x80000e84 <.LBB0_101+0x2c>
;       D[i][j] = x;
80000e98: d3 00 42 22  	fmv.d	ft1, ft4
;     for (j = 0; j < nl; j++) {
80000e9c: 93 85 15 00  	addi	a1, a1, 1
80000ea0: 93 84 84 00  	addi	s1, s1, 8
80000ea4: e3 9a a5 fc  	bne	a1, a0, 0x80000e78 <.LBB0_101+0x20>
;   for (i = 0; i < ni; i++) {
80000ea8: 13 06 16 00  	addi	a2, a2, 1
80000eac: e3 12 d6 fc  	bne	a2, a3, 0x80000e70 <.LBB0_101+0x18>
80000eb0: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000eb4: 6f 00 40 08  	j	0x80000f38 <.LBB0_102+0x78>
80000eb8: 93 03 00 00  	mv	t2, zero
80000ebc: 93 02 00 28  	addi	t0, zero, 640

80000ec0 <.LBB0_102>:
80000ec0: 97 25 00 00  	auipc	a1, 2
80000ec4: 93 85 05 78  	addi	a1, a1, 1920
80000ec8: 87 b1 05 00  	fld	ft3, 0(a1)
80000ecc: 13 07 00 19  	addi	a4, zero, 400
80000ed0: 13 03 00 05  	addi	t1, zero, 80
80000ed4: 13 08 80 02  	addi	a6, zero, 40
80000ed8: 93 05 00 00  	mv	a1, zero
80000edc: 93 87 0e 00  	mv	a5, t4
;       double x = D[i][j];
80000ee0: b3 86 53 02  	mul	a3, t2, t0
80000ee4: b3 86 d9 00  	add	a3, s3, a3
80000ee8: 93 94 35 00  	slli	s1, a1, 3
80000eec: b3 84 96 00  	add	s1, a3, s1
80000ef0: 07 b2 04 00  	fld	ft4, 0(s1)
80000ef4: 93 06 00 00  	mv	a3, zero
;       x *= beta;
80000ef8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000efc: 13 84 07 00  	mv	s0, a5
;         x += tmp[i][k] * C[k][j];
80000f00: 33 06 d5 00  	add	a2, a0, a3
80000f04: 87 32 06 00  	fld	ft5, 0(a2)
80000f08: 07 33 04 00  	fld	ft6, 0(s0)
80000f0c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;       for (k = 0; k < nj; ++k) {
80000f10: 93 86 86 00  	addi	a3, a3, 8
80000f14: 13 04 04 28  	addi	s0, s0, 640
80000f18: e3 94 e6 fe  	bne	a3, a4, 0x80000f00 <.LBB0_102+0x40>
;       D[i][j] = x;
80000f1c: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (j = 0; j < nl; j++) {
80000f20: 93 85 15 00  	addi	a1, a1, 1
80000f24: 93 87 87 00  	addi	a5, a5, 8
80000f28: e3 9c 65 fa  	bne	a1, t1, 0x80000ee0 <.LBB0_102+0x20>
;   for (i = 0; i < ni; i++) {
80000f2c: 93 83 13 00  	addi	t2, t2, 1
80000f30: 13 05 05 19  	addi	a0, a0, 400
80000f34: e3 92 03 fb  	bne	t2, a6, 0x80000ed8 <.LBB0_102+0x18>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80000f38: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80000f3c: b3 05 15 41  	sub	a1, a0, a7

80000f40 <.LBB0_103>:
80000f40: 17 25 00 00  	auipc	a0, 2
80000f44: 13 05 15 45  	addi	a0, a0, 1105
80000f48: 97 00 00 00  	auipc	ra, 0
80000f4c: e7 80 40 10  	jalr	260(ra)
80000f50: 13 05 00 00  	mv	a0, zero
80000f54: 63 04 09 06  	beqz	s2, 0x80000fbc <.LBB0_103+0x7c>
80000f58: 93 05 80 00  	addi	a1, zero, 8
80000f5c: 13 06 f0 04  	addi	a2, zero, 79
;     for (int i = 0; i < n; i++){
80000f60: 93 06 00 04  	addi	a3, zero, 64
80000f64: ab 20 d6 00  	scfgw	a2, a3
80000f68: 13 06 00 0c  	addi	a2, zero, 192
80000f6c: ab a0 c5 00  	scfgw	a1, a2
80000f70: 13 06 70 02  	addi	a2, zero, 39
80000f74: 93 06 00 06  	addi	a3, zero, 96
80000f78: ab 20 d6 00  	scfgw	a2, a3
80000f7c: 13 06 00 0e  	addi	a2, zero, 224
80000f80: ab a0 c5 00  	scfgw	a1, a2
80000f84: 93 05 00 02  	addi	a1, zero, 32
80000f88: ab 20 b0 00  	scfgw	zero, a1
80000f8c: 2b a0 09 32  	scfgwi	s3, 800
80000f90: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000f94: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000f98: 93 05 80 02  	addi	a1, zero, 40
80000f9c: 13 06 00 05  	addi	a2, zero, 80
;         for (int j = 0; j < m; j++){
80000fa0: 13 06 f6 ff  	addi	a2, a2, -1
;             r += A[i * m + j];
80000fa4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;         for (int j = 0; j < m; j++){
80000fa8: e3 1c 06 fe  	bnez	a2, 0x80000fa0 <.LBB0_103+0x60>
;     for (int i = 0; i < n; i++){
80000fac: 13 05 15 00  	addi	a0, a0, 1
80000fb0: e3 16 b5 fe  	bne	a0, a1, 0x80000f9c <.LBB0_103+0x5c>
80000fb4: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000fb8: 6f 00 40 03  	j	0x80000fec <.LBB0_104>
80000fbc: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000fc0: 93 05 00 28  	addi	a1, zero, 640
80000fc4: 13 06 80 02  	addi	a2, zero, 40
80000fc8: 93 06 00 00  	mv	a3, zero
;             r += A[i * m + j];
80000fcc: 33 87 d9 00  	add	a4, s3, a3
80000fd0: 07 32 07 00  	fld	ft4, 0(a4)
;         for (int j = 0; j < m; j++){
80000fd4: 93 86 86 00  	addi	a3, a3, 8
;             r += A[i * m + j];
80000fd8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;         for (int j = 0; j < m; j++){
80000fdc: e3 98 b6 fe  	bne	a3, a1, 0x80000fcc <.LBB0_103+0x8c>
;     for (int i = 0; i < n; i++){
80000fe0: 13 05 15 00  	addi	a0, a0, 1
80000fe4: 93 89 09 28  	addi	s3, s3, 640
80000fe8: e3 10 c5 fe  	bne	a0, a2, 0x80000fc8 <.LBB0_103+0x88>

80000fec <.LBB0_104>:
80000fec: 17 25 00 00  	auipc	a0, 2
80000ff0: 13 05 c5 65  	addi	a0, a0, 1628
80000ff4: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80000ff8: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80000ffc: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80001000: 27 34 81 00  	fsd	fs0, 8(sp)
80001004: 03 26 81 00  	lw	a2, 8(sp)
80001008: 83 26 c1 00  	lw	a3, 12(sp)

8000100c <.LBB0_105>:
8000100c: 17 25 00 00  	auipc	a0, 2
80001010: 13 05 95 37  	addi	a0, a0, 889
80001014: 97 00 00 00  	auipc	ra, 0
80001018: e7 80 80 03  	jalr	56(ra)

8000101c <.LBB0_106>:
8000101c: 17 25 00 00  	auipc	a0, 2
80001020: 13 05 45 63  	addi	a0, a0, 1588
80001024: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80001028: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
8000102c: 07 34 01 01  	fld	fs0, 16(sp)
80001030: 83 29 c1 01  	lw	s3, 28(sp)
80001034: 03 29 01 02  	lw	s2, 32(sp)
80001038: 83 24 41 02  	lw	s1, 36(sp)
8000103c: 03 24 81 02  	lw	s0, 40(sp)
80001040: 83 20 c1 02  	lw	ra, 44(sp)
80001044: 13 01 01 03  	addi	sp, sp, 48
80001048: 67 80 00 00  	ret

8000104c <printf_>:
; {
8000104c: 13 01 01 fd  	addi	sp, sp, -48
80001050: 23 26 11 00  	sw	ra, 12(sp)
80001054: 93 02 05 00  	mv	t0, a0
80001058: 23 26 11 03  	sw	a7, 44(sp)
8000105c: 23 24 01 03  	sw	a6, 40(sp)
80001060: 23 22 f1 02  	sw	a5, 36(sp)
80001064: 23 20 e1 02  	sw	a4, 32(sp)
80001068: 23 2e d1 00  	sw	a3, 28(sp)
8000106c: 23 2c c1 00  	sw	a2, 24(sp)
80001070: 23 2a b1 00  	sw	a1, 20(sp)
80001074: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001078: 23 24 a1 00  	sw	a0, 8(sp)

8000107c <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
8000107c: 17 15 00 00  	auipc	a0, 1
80001080: 13 05 45 c2  	addi	a0, a0, -988
80001084: 93 05 71 00  	addi	a1, sp, 7
80001088: 13 06 f0 ff  	addi	a2, zero, -1
8000108c: 13 07 41 01  	addi	a4, sp, 20
80001090: 93 86 02 00  	mv	a3, t0
80001094: 97 00 00 00  	auipc	ra, 0
80001098: e7 80 40 01  	jalr	20(ra)
;   return ret;
8000109c: 83 20 c1 00  	lw	ra, 12(sp)
800010a0: 13 01 01 03  	addi	sp, sp, 48
800010a4: 67 80 00 00  	ret

800010a8 <_vsnprintf.llvm.11632292163828655644>:
; {
800010a8: 13 01 01 f9  	addi	sp, sp, -112
800010ac: 23 26 11 06  	sw	ra, 108(sp)
800010b0: 23 24 81 06  	sw	s0, 104(sp)
800010b4: 23 22 91 06  	sw	s1, 100(sp)
800010b8: 23 20 21 07  	sw	s2, 96(sp)
800010bc: 23 2e 31 05  	sw	s3, 92(sp)
800010c0: 23 2c 41 05  	sw	s4, 88(sp)
800010c4: 23 2a 51 05  	sw	s5, 84(sp)
800010c8: 23 28 61 05  	sw	s6, 80(sp)
800010cc: 23 26 71 05  	sw	s7, 76(sp)
800010d0: 23 24 81 05  	sw	s8, 72(sp)
800010d4: 23 22 91 05  	sw	s9, 68(sp)
800010d8: 23 20 a1 05  	sw	s10, 64(sp)
800010dc: 23 2e b1 03  	sw	s11, 60(sp)
800010e0: 93 09 07 00  	mv	s3, a4
800010e4: 13 84 06 00  	mv	s0, a3
800010e8: 93 0a 06 00  	mv	s5, a2
800010ec: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800010f0: 63 86 05 00  	beqz	a1, 0x800010fc <.LBB1_183>
800010f4: 13 09 05 00  	mv	s2, a0
800010f8: 6f 00 c0 00  	j	0x80001104 <.LBB1_183+0x8>

800010fc <.LBB1_183>:
800010fc: 17 19 00 00  	auipc	s2, 1
80001100: 13 09 09 c5  	addi	s2, s2, -944
80001104: 13 0c 00 00  	mv	s8, zero
80001108: 13 0b 50 02  	addi	s6, zero, 37
8000110c: 93 0d 00 01  	addi	s11, zero, 16
80001110: 93 0b e0 02  	addi	s7, zero, 46
80001114: 37 15 00 00  	lui	a0, 1
80001118: 13 05 05 80  	addi	a0, a0, -2048
8000111c: 23 2c a1 00  	sw	a0, 24(sp)
80001120: 37 05 01 00  	lui	a0, 16
80001124: 13 05 f5 ff  	addi	a0, a0, -1
80001128: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
8000112c: 13 0d 24 00  	addi	s10, s0, 2
80001130: 93 0c 0c 00  	mv	s9, s8
80001134: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001138: 03 45 04 00  	lbu	a0, 0(s0)
8000113c: e3 04 05 30  	beqz	a0, 0x80001c44 <.LBB1_124+0x3b0>
80001140: 63 08 65 03  	beq	a0, s6, 0x80001170 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80001144: 93 84 1c 00  	addi	s1, s9, 1
80001148: 93 05 0a 00  	mv	a1, s4
8000114c: 13 86 0c 00  	mv	a2, s9
80001150: 93 86 0a 00  	mv	a3, s5
80001154: e7 00 09 00  	jalr	s2
;       format++;
80001158: 13 04 14 00  	addi	s0, s0, 1
;       continue;
8000115c: 13 0d 1d 00  	addi	s10, s10, 1
80001160: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001164: 03 45 04 00  	lbu	a0, 0(s0)
80001168: e3 1c 05 fc  	bnez	a0, 0x80001140 <.LBB1_183+0x44>
8000116c: 6f 00 90 2d  	j	0x80001c44 <.LBB1_124+0x3b0>
;     flags = 0U;
80001170: 13 04 00 00  	mv	s0, zero
80001174: 6f 00 00 01  	j	0x80001184 <.LBB1_9+0x8>

80001178 <.LBB1_8>:
80001178: 93 05 00 01  	addi	a1, zero, 16

8000117c <.LBB1_9>:
8000117c: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001180: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001184: 03 45 fd ff  	lbu	a0, -1(s10)
80001188: 93 05 05 fe  	addi	a1, a0, -32
8000118c: 63 ec bd 02  	bltu	s11, a1, 0x800011c4 <.LBB1_15>
80001190: 93 95 25 00  	slli	a1, a1, 2

80001194 <.LBB1_184>:
80001194: 17 26 00 00  	auipc	a2, 2
80001198: 13 06 06 21  	addi	a2, a2, 528
8000119c: b3 85 c5 00  	add	a1, a1, a2
800011a0: 03 a6 05 00  	lw	a2, 0(a1)
800011a4: 93 05 10 00  	addi	a1, zero, 1
800011a8: 67 00 06 00  	jr	a2

800011ac <.LBB1_12>:
800011ac: 93 05 80 00  	addi	a1, zero, 8
800011b0: 6f f0 df fc  	j	0x8000117c <.LBB1_9>

800011b4 <.LBB1_13>:
800011b4: 93 05 40 00  	addi	a1, zero, 4
800011b8: 6f f0 5f fc  	j	0x8000117c <.LBB1_9>

800011bc <.LBB1_14>:
800011bc: 93 05 20 00  	addi	a1, zero, 2
800011c0: 6f f0 df fb  	j	0x8000117c <.LBB1_9>

800011c4 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800011c4: 93 05 05 fd  	addi	a1, a0, -48
800011c8: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800011cc: 93 05 fd ff  	addi	a1, s10, -1
800011d0: 93 06 90 00  	addi	a3, zero, 9
800011d4: 63 ee c6 06  	bltu	a3, a2, 0x80001250 <.LBB1_15+0x8c>
800011d8: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800011dc: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800011e0: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800011e4: b3 06 8b 03  	mul	a3, s6, s8
800011e8: 93 85 15 00  	addi	a1, a1, 1
800011ec: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800011f0: 93 06 05 fd  	addi	a3, a0, -48
800011f4: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800011f8: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800011fc: e3 e0 86 ff  	bltu	a3, s8, 0x800011dc <.LBB1_15+0x18>
80001200: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001204: 63 16 75 0b  	bne	a0, s7, 0x800012b0 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001208: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
8000120c: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001210: 93 05 05 fd  	addi	a1, a0, -48
80001214: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001218: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
8000121c: 93 06 90 00  	addi	a3, zero, 9
80001220: 63 e0 c6 06  	bltu	a3, a2, 0x80001280 <.LBB1_15+0xbc>
80001224: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001228: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000122c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001230: b3 86 8b 03  	mul	a3, s7, s8
80001234: 93 85 15 00  	addi	a1, a1, 1
80001238: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000123c: 93 06 05 fd  	addi	a3, a0, -48
80001240: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001244: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001248: e3 e0 86 ff  	bltu	a3, s8, 0x80001228 <.LBB1_15+0x64>
8000124c: 6f 00 00 07  	j	0x800012bc <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001250: 13 06 a0 02  	addi	a2, zero, 42
80001254: 63 18 c5 04  	bne	a0, a2, 0x800012a4 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001258: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
8000125c: 63 d4 05 00  	bgez	a1, 0x80001264 <.LBB1_15+0xa0>
80001260: 13 64 24 00  	ori	s0, s0, 2
80001264: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001268: 03 45 0d 00  	lbu	a0, 0(s10)
8000126c: 13 d6 f5 41  	srai	a2, a1, 31
80001270: b3 85 c5 00  	add	a1, a1, a2
80001274: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001278: e3 08 75 f9  	beq	a0, s7, 0x80001208 <.LBB1_15+0x44>
8000127c: 6f 00 40 03  	j	0x800012b0 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001280: 13 06 a0 02  	addi	a2, zero, 42
80001284: 63 1a c5 02  	bne	a0, a2, 0x800012b8 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001288: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
8000128c: 63 44 70 01  	bgtz	s7, 0x80001294 <.LBB1_15+0xd0>
80001290: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001294: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001298: 13 0d 2d 00  	addi	s10, s10, 2
8000129c: 93 89 49 00  	addi	s3, s3, 4
800012a0: 6f 00 00 02  	j	0x800012c0 <.LBB1_15+0xfc>
800012a4: 13 0b 00 00  	mv	s6, zero
800012a8: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800012ac: e3 0e 75 f5  	beq	a0, s7, 0x80001208 <.LBB1_15+0x44>
800012b0: 93 0b 00 00  	mv	s7, zero
800012b4: 6f 00 c0 00  	j	0x800012c0 <.LBB1_15+0xfc>
800012b8: 93 0b 00 00  	mv	s7, zero
800012bc: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800012c0: 93 05 85 f9  	addi	a1, a0, -104
800012c4: 13 d6 15 00  	srli	a2, a1, 1
800012c8: 93 95 f5 01  	slli	a1, a1, 31
800012cc: b3 e5 c5 00  	or	a1, a1, a2
800012d0: 13 06 90 00  	addi	a2, zero, 9
800012d4: 63 62 b6 06  	bltu	a2, a1, 0x80001338 <.LBB1_42>
800012d8: 93 95 25 00  	slli	a1, a1, 2

800012dc <.LBB1_185>:
800012dc: 17 26 00 00  	auipc	a2, 2
800012e0: 13 06 c6 10  	addi	a2, a2, 268
800012e4: b3 85 c5 00  	add	a1, a1, a2
800012e8: 83 a6 05 00  	lw	a3, 0(a1)
800012ec: 93 05 10 00  	addi	a1, zero, 1
800012f0: 13 06 00 10  	addi	a2, zero, 256
800012f4: 67 80 06 00  	jr	a3

800012f8 <.LBB1_36>:
;         if (*format == 'h') {
800012f8: 03 45 1d 00  	lbu	a0, 1(s10)
800012fc: 93 05 80 06  	addi	a1, zero, 104
80001300: 63 12 b5 12  	bne	a0, a1, 0x80001424 <.LBB1_53+0x48>
80001304: 93 05 20 00  	addi	a1, zero, 2
80001308: 13 06 00 0c  	addi	a2, zero, 192
8000130c: 6f 00 00 02  	j	0x8000132c <.LBB1_41>

80001310 <.LBB1_38>:
80001310: 13 06 00 20  	addi	a2, zero, 512
80001314: 6f 00 80 01  	j	0x8000132c <.LBB1_41>

80001318 <.LBB1_39>:
;         if (*format == 'l') {
80001318: 03 45 1d 00  	lbu	a0, 1(s10)
8000131c: 93 05 c0 06  	addi	a1, zero, 108
80001320: 63 18 b5 10  	bne	a0, a1, 0x80001430 <.LBB1_53+0x54>
80001324: 93 05 20 00  	addi	a1, zero, 2
80001328: 13 06 00 30  	addi	a2, zero, 768

8000132c <.LBB1_41>:
8000132c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001330: 03 45 0d 00  	lbu	a0, 0(s10)
80001334: 33 64 c4 00  	or	s0, s0, a2

80001338 <.LBB1_42>:
;     switch (*format) {
80001338: 93 05 b5 fd  	addi	a1, a0, -37
8000133c: 13 06 30 05  	addi	a2, zero, 83
80001340: 63 64 b6 10  	bltu	a2, a1, 0x80001448 <.LBB1_59>
80001344: 93 95 25 00  	slli	a1, a1, 2

80001348 <.LBB1_186>:
80001348: 17 26 00 00  	auipc	a2, 2
8000134c: 13 06 86 0c  	addi	a2, a2, 200
80001350: b3 85 c5 00  	add	a1, a1, a2
80001354: 03 a6 05 00  	lw	a2, 0(a1)
80001358: 93 05 80 00  	addi	a1, zero, 8
8000135c: 13 0c 00 01  	addi	s8, zero, 16
80001360: 67 00 06 00  	jr	a2

80001364 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001364: 13 74 f4 fe  	andi	s0, s0, -17
80001368: 13 0c a0 00  	addi	s8, zero, 10

8000136c <.LBB1_45>:
;         if (*format == 'X') {
8000136c: 93 05 80 05  	addi	a1, zero, 88
80001370: 63 14 b5 00  	bne	a0, a1, 0x80001378 <.LBB1_45+0xc>
80001374: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001378: 93 05 40 06  	addi	a1, zero, 100
8000137c: 63 08 b5 0e  	beq	a0, a1, 0x8000146c <.LBB1_62+0x8>
80001380: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001384: 13 06 90 06  	addi	a2, zero, 105
80001388: 63 02 c5 0e  	beq	a0, a2, 0x8000146c <.LBB1_62+0x8>
8000138c: 6f 00 80 0d  	j	0x80001464 <.LBB1_62>

80001390 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001390: 93 05 60 04  	addi	a1, zero, 70
80001394: 63 14 b5 00  	bne	a0, a1, 0x8000139c <.LBB1_49+0xc>
80001398: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
8000139c: 13 85 79 00  	addi	a0, s3, 7
800013a0: 13 75 85 ff  	andi	a0, a0, -8
800013a4: 07 35 05 00  	fld	fa0, 0(a0)
800013a8: 93 09 85 00  	addi	s3, a0, 8
800013ac: 13 05 09 00  	mv	a0, s2
800013b0: 93 05 0a 00  	mv	a1, s4
800013b4: 13 86 0c 00  	mv	a2, s9
800013b8: 93 86 0a 00  	mv	a3, s5
800013bc: 13 87 0b 00  	mv	a4, s7
800013c0: 93 07 0b 00  	mv	a5, s6
800013c4: 13 08 04 00  	mv	a6, s0
800013c8: 97 10 00 00  	auipc	ra, 1
800013cc: e7 80 80 98  	jalr	-1656(ra)
800013d0: 6f 00 00 7c  	j	0x80001b90 <.LBB1_124+0x2fc>

800013d4 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800013d4: 83 25 81 01  	lw	a1, 24(sp)
800013d8: 33 64 b4 00  	or	s0, s0, a1

800013dc <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800013dc: 13 65 25 00  	ori	a0, a0, 2
800013e0: 93 05 70 04  	addi	a1, zero, 71
800013e4: 63 14 b5 00  	bne	a0, a1, 0x800013ec <.LBB1_53+0x10>
800013e8: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800013ec: 13 85 79 00  	addi	a0, s3, 7
800013f0: 13 75 85 ff  	andi	a0, a0, -8
800013f4: 07 35 05 00  	fld	fa0, 0(a0)
800013f8: 93 09 85 00  	addi	s3, a0, 8
800013fc: 13 05 09 00  	mv	a0, s2
80001400: 93 05 0a 00  	mv	a1, s4
80001404: 13 86 0c 00  	mv	a2, s9
80001408: 93 86 0a 00  	mv	a3, s5
8000140c: 13 87 0b 00  	mv	a4, s7
80001410: 93 07 0b 00  	mv	a5, s6
80001414: 13 08 04 00  	mv	a6, s0
80001418: 97 10 00 00  	auipc	ra, 1
8000141c: e7 80 80 01  	jalr	24(ra)
80001420: 6f 00 00 77  	j	0x80001b90 <.LBB1_124+0x2fc>
80001424: 13 64 04 08  	ori	s0, s0, 128
80001428: 13 0d 1d 00  	addi	s10, s10, 1
8000142c: 6f f0 df f0  	j	0x80001338 <.LBB1_42>
80001430: 13 64 04 10  	ori	s0, s0, 256
80001434: 13 0d 1d 00  	addi	s10, s10, 1
80001438: 6f f0 1f f0  	j	0x80001338 <.LBB1_42>

8000143c <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
8000143c: 13 8c 1c 00  	addi	s8, s9, 1
80001440: 13 05 50 02  	addi	a0, zero, 37
80001444: 6f 00 80 00  	j	0x8000144c <.LBB1_59+0x4>

80001448 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001448: 13 8c 1c 00  	addi	s8, s9, 1
8000144c: 93 05 0a 00  	mv	a1, s4
80001450: 13 86 0c 00  	mv	a2, s9
80001454: 93 86 0a 00  	mv	a3, s5
80001458: e7 00 09 00  	jalr	s2
8000145c: 6f 00 80 73  	j	0x80001b94 <.LBB1_124+0x300>

80001460 <.LBB1_61>:
80001460: 93 05 20 00  	addi	a1, zero, 2

80001464 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001464: 13 74 34 ff  	andi	s0, s0, -13
80001468: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
8000146c: 93 75 04 40  	andi	a1, s0, 1024
80001470: 63 84 05 00  	beqz	a1, 0x80001478 <.LBB1_62+0x14>
80001474: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001478: 93 05 90 06  	addi	a1, zero, 105
8000147c: 63 06 b5 00  	beq	a0, a1, 0x80001488 <.LBB1_62+0x24>
80001480: 93 05 40 06  	addi	a1, zero, 100
80001484: 63 1c b5 12  	bne	a0, a1, 0x800015bc <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001488: 13 75 04 20  	andi	a0, s0, 512
8000148c: 63 16 05 02  	bnez	a0, 0x800014b8 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001490: 13 75 04 10  	andi	a0, s0, 256
80001494: 63 1c 05 14  	bnez	a0, 0x800015ec <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001498: 13 75 04 04  	andi	a0, s0, 64
8000149c: 63 18 05 4e  	bnez	a0, 0x8000198c <.LBB1_124+0xf8>
800014a0: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800014a4: 93 75 04 08  	andi	a1, s0, 128
800014a8: 63 84 05 4e  	beqz	a1, 0x80001990 <.LBB1_124+0xfc>
800014ac: 13 15 08 01  	slli	a0, a6, 16
800014b0: 13 58 05 41  	srai	a6, a0, 16
800014b4: 6f 00 c0 4d  	j	0x80001990 <.LBB1_124+0xfc>
800014b8: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800014bc: 13 85 79 00  	addi	a0, s3, 7
800014c0: 13 75 85 ff  	andi	a0, a0, -8
800014c4: 83 29 05 00  	lw	s3, 0(a0)
800014c8: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800014cc: 13 65 45 00  	ori	a0, a0, 4
800014d0: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800014d4: 23 24 a1 00  	sw	a0, 8(sp)
800014d8: 33 e5 a9 00  	or	a0, s3, a0
800014dc: 63 14 05 00  	bnez	a0, 0x800014e4 <.LBB1_62+0x80>
800014e0: 13 74 f4 fe  	andi	s0, s0, -17
800014e4: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800014e8: 93 75 04 40  	andi	a1, s0, 1024
800014ec: 93 d5 a5 00  	srli	a1, a1, 10
800014f0: 33 75 b5 00  	and	a0, a0, a1
800014f4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800014f8: 63 14 05 0a  	bnez	a0, 0x800015a0 <.LBB1_62+0x13c>
800014fc: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001500: 63 da 04 00  	bgez	s1, 0x80001514 <.LBB1_62+0xb0>
80001504: 33 35 30 01  	snez	a0, s3
80001508: b3 09 30 41  	neg	s3, s3
8000150c: 33 85 a4 00  	add	a0, s1, a0
80001510: b3 04 a0 40  	neg	s1, a0
80001514: 13 09 00 00  	mv	s2, zero
80001518: 13 75 04 02  	andi	a0, s0, 32
8000151c: 13 45 15 06  	xori	a0, a0, 97
80001520: 13 05 65 0f  	addi	a0, a0, 246
80001524: 23 2a a1 00  	sw	a0, 20(sp)
80001528: 6f 00 40 02  	j	0x8000154c <.LBB1_62+0xe8>
8000152c: 13 06 10 00  	addi	a2, zero, 1
80001530: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001534: 93 36 f9 01  	sltiu	a3, s2, 31
80001538: 33 f6 c6 00  	and	a2, a3, a2
8000153c: 13 89 07 00  	mv	s2, a5
80001540: 93 09 05 00  	mv	s3, a0
80001544: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001548: 63 0c 06 04  	beqz	a2, 0x800015a0 <.LBB1_62+0x13c>
;       value /= base;
8000154c: 13 85 09 00  	mv	a0, s3
80001550: 93 85 04 00  	mv	a1, s1
80001554: 13 06 0c 00  	mv	a2, s8
80001558: 93 06 00 00  	mv	a3, zero
8000155c: 97 f0 ff ff  	auipc	ra, 1048575
80001560: e7 80 40 aa  	jalr	-1372(ra)
80001564: 33 06 85 03  	mul	a2, a0, s8
80001568: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000156c: 13 77 e6 0f  	andi	a4, a2, 254
80001570: 93 06 00 03  	addi	a3, zero, 48
80001574: 93 07 a0 00  	addi	a5, zero, 10
80001578: 63 64 f7 00  	bltu	a4, a5, 0x80001580 <.LBB1_62+0x11c>
8000157c: 83 26 41 01  	lw	a3, 20(sp)
80001580: 33 86 c6 00  	add	a2, a3, a2
80001584: 93 06 c1 01  	addi	a3, sp, 28
80001588: b3 86 26 01  	add	a3, a3, s2
8000158c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001590: e3 9e 04 f8  	bnez	s1, 0x8000152c <.LBB1_62+0xc8>
80001594: 33 b6 89 01  	sltu	a2, s3, s8
80001598: 13 46 16 00  	xori	a2, a2, 1
8000159c: 6f f0 5f f9  	j	0x80001530 <.LBB1_62+0xcc>
800015a0: 03 25 41 00  	lw	a0, 4(sp)
800015a4: 93 09 85 00  	addi	s3, a0, 8
800015a8: 03 25 81 00  	lw	a0, 8(sp)
800015ac: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800015b0: 13 07 c1 01  	addi	a4, sp, 28
800015b4: 03 29 c1 00  	lw	s2, 12(sp)
800015b8: 6f 00 80 47  	j	0x80001a30 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
800015bc: 13 75 04 20  	andi	a0, s0, 512
800015c0: 63 12 05 0c  	bnez	a0, 0x80001684 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800015c4: 13 75 04 10  	andi	a0, s0, 256
800015c8: 63 1e 05 46  	bnez	a0, 0x80001a44 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800015cc: 13 75 04 04  	andi	a0, s0, 64
800015d0: 63 10 05 50  	bnez	a0, 0x80001ad0 <.LBB1_124+0x23c>
800015d4: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800015d8: 93 75 04 08  	andi	a1, s0, 128
800015dc: 63 8c 05 4e  	beqz	a1, 0x80001ad4 <.LBB1_124+0x240>
800015e0: 83 25 01 01  	lw	a1, 16(sp)
800015e4: 33 75 b5 00  	and	a0, a0, a1
800015e8: 6f 00 c0 4e  	j	0x80001ad4 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800015ec: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800015f0: 63 14 08 00  	bnez	a6, 0x800015f8 <.LBB1_62+0x194>
800015f4: 13 74 f4 fe  	andi	s0, s0, -17
800015f8: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800015fc: 13 76 04 40  	andi	a2, s0, 1024
80001600: 13 56 a6 00  	srli	a2, a2, 10
80001604: b3 f5 c5 00  	and	a1, a1, a2
80001608: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000160c: 63 9c 05 40  	bnez	a1, 0x80001a24 <.LBB1_124+0x190>
80001610: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001614: 13 56 f8 41  	srai	a2, a6, 31
80001618: b3 06 c8 00  	add	a3, a6, a2
8000161c: b3 c6 c6 00  	xor	a3, a3, a2
80001620: 13 76 04 02  	andi	a2, s0, 32
80001624: 13 46 16 06  	xori	a2, a2, 97
80001628: 93 08 66 0f  	addi	a7, a2, 246
8000162c: 6f 00 40 03  	j	0x80001660 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001630: 33 05 f6 00  	add	a0, a2, a5
80001634: 93 87 15 00  	addi	a5, a1, 1
80001638: 13 06 c1 01  	addi	a2, sp, 28
8000163c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001640: b3 b6 86 01  	sltu	a3, a3, s8
80001644: 93 c6 16 00  	xori	a3, a3, 1
80001648: 93 b5 f5 01  	sltiu	a1, a1, 31
8000164c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001650: 23 00 a6 00  	sb	a0, 0(a2)
80001654: 93 85 07 00  	mv	a1, a5
80001658: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000165c: 63 84 04 3c  	beqz	s1, 0x80001a24 <.LBB1_124+0x190>
;       value /= base;
80001660: 33 d7 86 03  	divu	a4, a3, s8
80001664: 33 06 87 03  	mul	a2, a4, s8
80001668: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000166c: 13 f5 e7 0f  	andi	a0, a5, 254
80001670: 13 06 00 03  	addi	a2, zero, 48
80001674: 93 04 a0 00  	addi	s1, zero, 10
80001678: e3 6c 95 fa  	bltu	a0, s1, 0x80001630 <.LBB1_62+0x1cc>
8000167c: 13 86 08 00  	mv	a2, a7
80001680: 6f f0 1f fb  	j	0x80001630 <.LBB1_62+0x1cc>
80001684: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001688: 13 85 79 00  	addi	a0, s3, 7
8000168c: 93 75 85 ff  	andi	a1, a0, -8
80001690: 03 a9 05 00  	lw	s2, 0(a1)
80001694: 13 e5 45 00  	ori	a0, a1, 4
80001698: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
8000169c: 33 65 39 01  	or	a0, s2, s3
800016a0: 23 24 b1 00  	sw	a1, 8(sp)
800016a4: 63 14 05 00  	bnez	a0, 0x800016ac <.LBB1_62+0x248>
800016a8: 13 74 f4 fe  	andi	s0, s0, -17
800016ac: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800016b0: 93 75 04 40  	andi	a1, s0, 1024
800016b4: 93 d5 a5 00  	srli	a1, a1, 10
800016b8: 33 75 b5 00  	and	a0, a0, a1
800016bc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800016c0: 63 18 05 08  	bnez	a0, 0x80001750 <.LBB1_62+0x2ec>
800016c4: 93 04 00 00  	mv	s1, zero
800016c8: 13 75 04 02  	andi	a0, s0, 32
800016cc: 13 45 15 06  	xori	a0, a0, 97
800016d0: 13 05 65 0f  	addi	a0, a0, 246
800016d4: 23 2a a1 00  	sw	a0, 20(sp)
800016d8: 6f 00 40 02  	j	0x800016fc <.LBB1_62+0x298>
800016dc: 13 06 10 00  	addi	a2, zero, 1
800016e0: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016e4: 93 b6 f4 01  	sltiu	a3, s1, 31
800016e8: 33 f6 c6 00  	and	a2, a3, a2
800016ec: 93 84 07 00  	mv	s1, a5
800016f0: 13 09 05 00  	mv	s2, a0
800016f4: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016f8: 63 0c 06 04  	beqz	a2, 0x80001750 <.LBB1_62+0x2ec>
;       value /= base;
800016fc: 13 05 09 00  	mv	a0, s2
80001700: 93 85 09 00  	mv	a1, s3
80001704: 13 06 0c 00  	mv	a2, s8
80001708: 93 06 00 00  	mv	a3, zero
8000170c: 97 f0 ff ff  	auipc	ra, 1048575
80001710: e7 80 40 8f  	jalr	-1804(ra)
80001714: 33 06 85 03  	mul	a2, a0, s8
80001718: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000171c: 13 77 e6 0f  	andi	a4, a2, 254
80001720: 93 06 00 03  	addi	a3, zero, 48
80001724: 93 07 a0 00  	addi	a5, zero, 10
80001728: 63 64 f7 00  	bltu	a4, a5, 0x80001730 <.LBB1_62+0x2cc>
8000172c: 83 26 41 01  	lw	a3, 20(sp)
80001730: 33 86 c6 00  	add	a2, a3, a2
80001734: 93 06 c1 01  	addi	a3, sp, 28
80001738: b3 86 96 00  	add	a3, a3, s1
8000173c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001740: e3 9e 09 f8  	bnez	s3, 0x800016dc <.LBB1_62+0x278>
80001744: 33 36 89 01  	sltu	a2, s2, s8
80001748: 13 46 16 00  	xori	a2, a2, 1
8000174c: 6f f0 5f f9  	j	0x800016e0 <.LBB1_62+0x27c>
80001750: 03 25 81 00  	lw	a0, 8(sp)
80001754: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001758: 13 07 c1 01  	addi	a4, sp, 28
8000175c: 03 29 c1 00  	lw	s2, 12(sp)
80001760: 6f 00 40 40  	j	0x80001b64 <.LBB1_124+0x2d0>

80001764 <.LBB1_108>:
80001764: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80001768: 13 79 24 00  	andi	s2, s0, 2
8000176c: 93 04 10 00  	addi	s1, zero, 1
80001770: 63 1e 09 02  	bnez	s2, 0x800017ac <.LBB1_108+0x48>
80001774: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80001778: 63 6a 9b 02  	bltu	s6, s1, 0x800017ac <.LBB1_108+0x48>
8000177c: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80001780: 13 0c fb ff  	addi	s8, s6, -1
80001784: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80001788: 33 86 8c 00  	add	a2, s9, s0
8000178c: 13 05 00 02  	addi	a0, zero, 32
80001790: 93 05 0a 00  	mv	a1, s4
80001794: 93 86 0a 00  	mv	a3, s5
80001798: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
8000179c: 13 04 14 00  	addi	s0, s0, 1
800017a0: e3 14 8c fe  	bne	s8, s0, 0x80001788 <.LBB1_108+0x24>
800017a4: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800017a8: b3 8c 8c 00  	add	s9, s9, s0
800017ac: 03 c5 09 00  	lbu	a0, 0(s3)
800017b0: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800017b4: 93 89 49 00  	addi	s3, s3, 4
800017b8: 13 8c 1c 00  	addi	s8, s9, 1
800017bc: 93 05 0a 00  	mv	a1, s4
800017c0: 13 86 0c 00  	mv	a2, s9
800017c4: 93 86 0a 00  	mv	a3, s5
800017c8: 13 89 0b 00  	mv	s2, s7
800017cc: e7 80 0b 00  	jalr	s7
800017d0: 33 b5 64 01  	sltu	a0, s1, s6
800017d4: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800017d8: 33 65 a4 00  	or	a0, s0, a0
800017dc: 63 1c 05 3a  	bnez	a0, 0x80001b94 <.LBB1_124+0x300>
;           while (l++ < width) {
800017e0: 33 04 9b 40  	sub	s0, s6, s1
800017e4: 93 0b e0 02  	addi	s7, zero, 46
800017e8: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800017ec: 13 0c 1c 00  	addi	s8, s8, 1
800017f0: 13 05 00 02  	addi	a0, zero, 32
800017f4: 93 05 0a 00  	mv	a1, s4
800017f8: 93 86 0a 00  	mv	a3, s5
800017fc: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001800: 13 04 f4 ff  	addi	s0, s0, -1
80001804: e3 12 04 fe  	bnez	s0, 0x800017e8 <.LBB1_108+0x84>
80001808: 13 0b 50 02  	addi	s6, zero, 37
8000180c: 13 04 1d 00  	addi	s0, s10, 1
80001810: 6f f0 df 91  	j	0x8000112c <.LBB1_183+0x30>

80001814 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001814: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001818: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
8000181c: 63 14 05 00  	bnez	a0, 0x80001824 <.LBB1_117+0x10>
80001820: 93 fe fe fe  	andi	t4, t4, -17
80001824: 93 04 a0 00  	addi	s1, zero, 10
80001828: 13 04 f0 00  	addi	s0, zero, 15
8000182c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001830: 13 f6 0e 40  	andi	a2, t4, 1024
80001834: 13 56 a6 00  	srli	a2, a2, 10
80001838: b3 f5 c5 00  	and	a1, a1, a2
8000183c: 93 07 00 00  	mv	a5, zero
80001840: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001844: 63 98 05 10  	bnez	a1, 0x80001954 <.LBB1_124+0xc0>
80001848: 93 05 00 00  	mv	a1, zero
8000184c: 6f 00 40 03  	j	0x80001880 <.LBB1_117+0x6c>
80001850: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001854: 33 06 d6 00  	add	a2, a2, a3
80001858: 93 87 15 00  	addi	a5, a1, 1
8000185c: 93 06 c1 01  	addi	a3, sp, 28
80001860: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001864: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80001868: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000186c: 93 b5 f5 01  	sltiu	a1, a1, 31
80001870: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001874: 23 80 c6 00  	sb	a2, 0(a3)
80001878: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000187c: 63 0c 07 0c  	beqz	a4, 0x80001954 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001880: 93 76 e5 00  	andi	a3, a0, 14
80001884: 13 06 00 03  	addi	a2, zero, 48
80001888: e3 e4 96 fc  	bltu	a3, s1, 0x80001850 <.LBB1_117+0x3c>
8000188c: 13 06 70 03  	addi	a2, zero, 55
80001890: 6f f0 1f fc  	j	0x80001850 <.LBB1_117+0x3c>

80001894 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001894: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80001898: 03 c5 07 00  	lbu	a0, 0(a5)
8000189c: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800018a0: 63 0c 05 02  	beqz	a0, 0x800018d8 <.LBB1_124+0x44>
800018a4: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800018a8: 63 84 0b 00  	beqz	s7, 0x800018b0 <.LBB1_124+0x1c>
800018ac: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800018b0: 93 85 f5 ff  	addi	a1, a1, -1
800018b4: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800018b8: 03 c7 16 00  	lbu	a4, 1(a3)
800018bc: 13 86 16 00  	addi	a2, a3, 1
800018c0: b3 36 e0 00  	snez	a3, a4
800018c4: 33 37 b0 00  	snez	a4, a1
800018c8: 33 77 d7 00  	and	a4, a4, a3
800018cc: 93 85 f5 ff  	addi	a1, a1, -1
800018d0: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800018d4: e3 12 07 fe  	bnez	a4, 0x800018b8 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800018d8: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800018dc: 93 75 04 40  	andi	a1, s0, 1024
800018e0: 93 b4 15 00  	seqz	s1, a1
800018e4: 23 2a c1 00  	sw	a2, 20(sp)
800018e8: b3 35 76 01  	sltu	a1, a2, s7
800018ec: b3 e5 b4 00  	or	a1, s1, a1
800018f0: 63 94 05 00  	bnez	a1, 0x800018f8 <.LBB1_124+0x64>
800018f4: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
800018f8: 93 75 24 00  	andi	a1, s0, 2
800018fc: 23 26 b1 00  	sw	a1, 12(sp)
80001900: 63 96 05 2a  	bnez	a1, 0x80001bac <.LBB1_124+0x318>
80001904: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001908: 63 fe 65 29  	bgeu	a1, s6, 0x80001ba4 <.LBB1_124+0x310>
8000190c: 23 24 f1 00  	sw	a5, 8(sp)
80001910: 13 04 00 00  	mv	s0, zero
80001914: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001918: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
8000191c: 33 86 8c 00  	add	a2, s9, s0
80001920: 13 05 00 02  	addi	a0, zero, 32
80001924: 93 05 0a 00  	mv	a1, s4
80001928: 93 86 0a 00  	mv	a3, s5
8000192c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001930: 13 04 14 00  	addi	s0, s0, 1
80001934: e3 14 89 fe  	bne	s2, s0, 0x8000191c <.LBB1_124+0x88>
80001938: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000193c: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80001940: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001944: 23 2a b1 00  	sw	a1, 20(sp)
80001948: b3 8c 8c 00  	add	s9, s9, s0
8000194c: 13 09 0c 00  	mv	s2, s8
80001950: 6f 00 c0 25  	j	0x80001bac <.LBB1_124+0x318>
80001954: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001958: 13 07 c1 01  	addi	a4, sp, 28
8000195c: 93 08 00 01  	addi	a7, zero, 16
80001960: 13 0e 80 00  	addi	t3, zero, 8
80001964: 13 05 09 00  	mv	a0, s2
80001968: 93 05 0a 00  	mv	a1, s4
8000196c: 13 86 0c 00  	mv	a2, s9
80001970: 93 86 0a 00  	mv	a3, s5
80001974: 13 08 00 00  	mv	a6, zero
80001978: 93 83 0b 00  	mv	t2, s7
8000197c: 97 10 00 00  	auipc	ra, 1
80001980: e7 80 00 fa  	jalr	-96(ra)
80001984: 13 0c 05 00  	mv	s8, a0
80001988: 6f 00 00 21  	j	0x80001b98 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
8000198c: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80001990: 63 14 08 00  	bnez	a6, 0x80001998 <.LBB1_124+0x104>
80001994: 13 74 f4 fe  	andi	s0, s0, -17
80001998: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
8000199c: 13 76 04 40  	andi	a2, s0, 1024
800019a0: 13 56 a6 00  	srli	a2, a2, 10
800019a4: b3 f5 c5 00  	and	a1, a1, a2
800019a8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800019ac: 63 9c 05 06  	bnez	a1, 0x80001a24 <.LBB1_124+0x190>
800019b0: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800019b4: 13 56 f8 41  	srai	a2, a6, 31
800019b8: b3 06 c8 00  	add	a3, a6, a2
800019bc: b3 c6 c6 00  	xor	a3, a3, a2
800019c0: 13 76 04 02  	andi	a2, s0, 32
800019c4: 13 46 16 06  	xori	a2, a2, 97
800019c8: 93 08 66 0f  	addi	a7, a2, 246
800019cc: 6f 00 40 03  	j	0x80001a00 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800019d0: 33 05 f6 00  	add	a0, a2, a5
800019d4: 93 87 15 00  	addi	a5, a1, 1
800019d8: 13 06 c1 01  	addi	a2, sp, 28
800019dc: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800019e0: b3 b6 86 01  	sltu	a3, a3, s8
800019e4: 93 c6 16 00  	xori	a3, a3, 1
800019e8: 93 b5 f5 01  	sltiu	a1, a1, 31
800019ec: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800019f0: 23 00 a6 00  	sb	a0, 0(a2)
800019f4: 93 85 07 00  	mv	a1, a5
800019f8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800019fc: 63 84 04 02  	beqz	s1, 0x80001a24 <.LBB1_124+0x190>
;       value /= base;
80001a00: 33 d7 86 03  	divu	a4, a3, s8
80001a04: 33 06 87 03  	mul	a2, a4, s8
80001a08: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001a0c: 13 f5 e7 0f  	andi	a0, a5, 254
80001a10: 13 06 00 03  	addi	a2, zero, 48
80001a14: 93 04 a0 00  	addi	s1, zero, 10
80001a18: e3 6c 95 fa  	bltu	a0, s1, 0x800019d0 <.LBB1_124+0x13c>
80001a1c: 13 86 08 00  	mv	a2, a7
80001a20: 6f f0 1f fb  	j	0x800019d0 <.LBB1_124+0x13c>
80001a24: 93 89 49 00  	addi	s3, s3, 4
80001a28: 13 58 f8 01  	srli	a6, a6, 31
80001a2c: 13 07 c1 01  	addi	a4, sp, 28
80001a30: 13 05 09 00  	mv	a0, s2
80001a34: 93 05 0a 00  	mv	a1, s4
80001a38: 13 86 0c 00  	mv	a2, s9
80001a3c: 93 86 0a 00  	mv	a3, s5
80001a40: 6f 00 80 13  	j	0x80001b78 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001a44: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001a48: 63 14 05 00  	bnez	a0, 0x80001a50 <.LBB1_124+0x1bc>
80001a4c: 13 74 f4 fe  	andi	s0, s0, -17
80001a50: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001a54: 13 76 04 40  	andi	a2, s0, 1024
80001a58: 13 56 a6 00  	srli	a2, a2, 10
80001a5c: b3 f5 c5 00  	and	a1, a1, a2
80001a60: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001a64: 63 9c 05 0e  	bnez	a1, 0x80001b5c <.LBB1_124+0x2c8>
80001a68: 13 06 00 00  	mv	a2, zero
80001a6c: 93 75 04 02  	andi	a1, s0, 32
80001a70: 93 c5 15 06  	xori	a1, a1, 97
80001a74: 13 88 65 0f  	addi	a6, a1, 246
80001a78: 6f 00 40 03  	j	0x80001aac <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001a7c: 33 87 e7 00  	add	a4, a5, a4
80001a80: 93 07 16 00  	addi	a5, a2, 1
80001a84: 93 05 c1 01  	addi	a1, sp, 28
80001a88: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001a8c: 33 35 85 01  	sltu	a0, a0, s8
80001a90: 13 45 15 00  	xori	a0, a0, 1
80001a94: 13 36 f6 01  	sltiu	a2, a2, 31
80001a98: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001a9c: 23 80 e4 00  	sb	a4, 0(s1)
80001aa0: 13 86 07 00  	mv	a2, a5
80001aa4: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001aa8: 63 8a 05 0a  	beqz	a1, 0x80001b5c <.LBB1_124+0x2c8>
;       value /= base;
80001aac: b3 56 85 03  	divu	a3, a0, s8
80001ab0: 33 87 86 03  	mul	a4, a3, s8
80001ab4: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001ab8: 93 74 e7 0f  	andi	s1, a4, 254
80001abc: 93 07 00 03  	addi	a5, zero, 48
80001ac0: 93 05 a0 00  	addi	a1, zero, 10
80001ac4: e3 ec b4 fa  	bltu	s1, a1, 0x80001a7c <.LBB1_124+0x1e8>
80001ac8: 93 07 08 00  	mv	a5, a6
80001acc: 6f f0 1f fb  	j	0x80001a7c <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001ad0: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001ad4: 63 14 05 00  	bnez	a0, 0x80001adc <.LBB1_124+0x248>
80001ad8: 13 74 f4 fe  	andi	s0, s0, -17
80001adc: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001ae0: 13 76 04 40  	andi	a2, s0, 1024
80001ae4: 13 56 a6 00  	srli	a2, a2, 10
80001ae8: b3 f5 c5 00  	and	a1, a1, a2
80001aec: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001af0: 63 96 05 06  	bnez	a1, 0x80001b5c <.LBB1_124+0x2c8>
80001af4: 13 06 00 00  	mv	a2, zero
80001af8: 93 75 04 02  	andi	a1, s0, 32
80001afc: 93 c5 15 06  	xori	a1, a1, 97
80001b00: 13 88 65 0f  	addi	a6, a1, 246
80001b04: 6f 00 40 03  	j	0x80001b38 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b08: 33 87 e7 00  	add	a4, a5, a4
80001b0c: 93 07 16 00  	addi	a5, a2, 1
80001b10: 93 05 c1 01  	addi	a1, sp, 28
80001b14: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b18: 33 35 85 01  	sltu	a0, a0, s8
80001b1c: 13 45 15 00  	xori	a0, a0, 1
80001b20: 13 36 f6 01  	sltiu	a2, a2, 31
80001b24: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b28: 23 80 e4 00  	sb	a4, 0(s1)
80001b2c: 13 86 07 00  	mv	a2, a5
80001b30: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b34: 63 84 05 02  	beqz	a1, 0x80001b5c <.LBB1_124+0x2c8>
;       value /= base;
80001b38: b3 56 85 03  	divu	a3, a0, s8
80001b3c: 33 87 86 03  	mul	a4, a3, s8
80001b40: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b44: 93 74 e7 0f  	andi	s1, a4, 254
80001b48: 93 07 00 03  	addi	a5, zero, 48
80001b4c: 93 05 a0 00  	addi	a1, zero, 10
80001b50: e3 ec b4 fa  	bltu	s1, a1, 0x80001b08 <.LBB1_124+0x274>
80001b54: 93 07 08 00  	mv	a5, a6
80001b58: 6f f0 1f fb  	j	0x80001b08 <.LBB1_124+0x274>
80001b5c: 93 89 49 00  	addi	s3, s3, 4
80001b60: 13 07 c1 01  	addi	a4, sp, 28
80001b64: 13 05 09 00  	mv	a0, s2
80001b68: 93 05 0a 00  	mv	a1, s4
80001b6c: 13 86 0c 00  	mv	a2, s9
80001b70: 93 86 0a 00  	mv	a3, s5
80001b74: 13 08 00 00  	mv	a6, zero
80001b78: 93 08 0c 00  	mv	a7, s8
80001b7c: 93 83 0b 00  	mv	t2, s7
80001b80: 13 0e 0b 00  	mv	t3, s6
80001b84: 93 0e 04 00  	mv	t4, s0
80001b88: 97 10 00 00  	auipc	ra, 1
80001b8c: e7 80 40 d9  	jalr	-620(ra)
80001b90: 13 0c 05 00  	mv	s8, a0
80001b94: 13 0b 50 02  	addi	s6, zero, 37
80001b98: 93 0b e0 02  	addi	s7, zero, 46
80001b9c: 13 04 1d 00  	addi	s0, s10, 1
80001ba0: 6f f0 cf d8  	j	0x8000112c <.LBB1_183+0x30>
80001ba4: 93 85 15 00  	addi	a1, a1, 1
80001ba8: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001bac: 63 00 05 04  	beqz	a0, 0x80001bec <.LBB1_124+0x358>
80001bb0: 13 84 17 00  	addi	s0, a5, 1
80001bb4: 6f 00 00 03  	j	0x80001be4 <.LBB1_124+0x350>
80001bb8: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001bbc: 13 8c 1c 00  	addi	s8, s9, 1
80001bc0: 13 75 f5 0f  	andi	a0, a0, 255
80001bc4: 93 05 0a 00  	mv	a1, s4
80001bc8: 13 86 0c 00  	mv	a2, s9
80001bcc: 93 86 0a 00  	mv	a3, s5
80001bd0: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001bd4: 03 45 04 00  	lbu	a0, 0(s0)
80001bd8: 13 04 14 00  	addi	s0, s0, 1
80001bdc: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001be0: 63 08 05 00  	beqz	a0, 0x80001bf0 <.LBB1_124+0x35c>
80001be4: e3 9c 04 fc  	bnez	s1, 0x80001bbc <.LBB1_124+0x328>
80001be8: e3 98 0b fc  	bnez	s7, 0x80001bb8 <.LBB1_124+0x324>
80001bec: 13 8c 0c 00  	mv	s8, s9
80001bf0: 03 25 c1 00  	lw	a0, 12(sp)
80001bf4: 13 35 15 00  	seqz	a0, a0
80001bf8: 03 26 41 01  	lw	a2, 20(sp)
80001bfc: b3 35 66 01  	sltu	a1, a2, s6
80001c00: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001c04: 33 65 b5 00  	or	a0, a0, a1
80001c08: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001c0c: e3 14 05 f8  	bnez	a0, 0x80001b94 <.LBB1_124+0x300>
;           while (l++ < width) {
80001c10: 33 04 cb 40  	sub	s0, s6, a2
80001c14: 93 0b e0 02  	addi	s7, zero, 46
80001c18: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001c1c: 13 0c 1c 00  	addi	s8, s8, 1
80001c20: 13 05 00 02  	addi	a0, zero, 32
80001c24: 93 05 0a 00  	mv	a1, s4
80001c28: 93 86 0a 00  	mv	a3, s5
80001c2c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001c30: 13 04 f4 ff  	addi	s0, s0, -1
80001c34: e3 12 04 fe  	bnez	s0, 0x80001c18 <.LBB1_124+0x384>
80001c38: 13 0b 50 02  	addi	s6, zero, 37
80001c3c: 13 04 1d 00  	addi	s0, s10, 1
80001c40: 6f f0 cf ce  	j	0x8000112c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001c44: 13 86 0c 00  	mv	a2, s9
80001c48: 63 e4 5c 01  	bltu	s9, s5, 0x80001c50 <.LBB1_124+0x3bc>
80001c4c: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001c50: 13 05 00 00  	mv	a0, zero
80001c54: 93 05 0a 00  	mv	a1, s4
80001c58: 93 86 0a 00  	mv	a3, s5
80001c5c: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001c60: 13 85 0c 00  	mv	a0, s9
80001c64: 83 2d c1 03  	lw	s11, 60(sp)
80001c68: 03 2d 01 04  	lw	s10, 64(sp)
80001c6c: 83 2c 41 04  	lw	s9, 68(sp)
80001c70: 03 2c 81 04  	lw	s8, 72(sp)
80001c74: 83 2b c1 04  	lw	s7, 76(sp)
80001c78: 03 2b 01 05  	lw	s6, 80(sp)
80001c7c: 83 2a 41 05  	lw	s5, 84(sp)
80001c80: 03 2a 81 05  	lw	s4, 88(sp)
80001c84: 83 29 c1 05  	lw	s3, 92(sp)
80001c88: 03 29 01 06  	lw	s2, 96(sp)
80001c8c: 83 24 41 06  	lw	s1, 100(sp)
80001c90: 03 24 81 06  	lw	s0, 104(sp)
80001c94: 83 20 c1 06  	lw	ra, 108(sp)
80001c98: 13 01 01 07  	addi	sp, sp, 112
80001c9c: 67 80 00 00  	ret

80001ca0 <_out_char.llvm.11632292163828655644>:
;   if (character) {
80001ca0: 63 04 05 0a  	beqz	a0, 0x80001d48 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001ca4: f3 25 40 f1  	csrr	a1, mhartid
80001ca8: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001cac: 33 86 c5 02  	mul	a2, a1, a2

80001cb0 <.LBB2_6>:
80001cb0: 97 26 00 00  	auipc	a3, 2
80001cb4: 93 86 46 a5  	addi	a3, a3, -1452
80001cb8: b3 05 d6 00  	add	a1, a2, a3
80001cbc: 03 a7 05 00  	lw	a4, 0(a1)
80001cc0: 93 07 17 00  	addi	a5, a4, 1
80001cc4: 23 a0 f5 00  	sw	a5, 0(a1)
80001cc8: 33 87 e5 00  	add	a4, a1, a4
80001ccc: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001cd0: 03 a7 05 00  	lw	a4, 0(a1)
80001cd4: 13 07 47 c0  	addi	a4, a4, -1020
80001cd8: 33 37 e0 00  	snez	a4, a4
80001cdc: 13 05 65 ff  	addi	a0, a0, -10
80001ce0: 33 35 a0 00  	snez	a0, a0
80001ce4: 33 75 e5 00  	and	a0, a0, a4
80001ce8: 63 10 05 06  	bnez	a0, 0x80001d48 <.LBB2_8+0x18>
80001cec: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001cf0: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001cf4: 23 26 05 00  	sw	zero, 12(a0)
80001cf8: 93 06 00 04  	addi	a3, zero, 64
80001cfc: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001d00: 23 2a 05 00  	sw	zero, 20(a0)
80001d04: 93 06 10 00  	addi	a3, zero, 1
80001d08: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001d0c: 23 2e 05 00  	sw	zero, 28(a0)
80001d10: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001d14: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001d18: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001d1c: 23 22 05 02  	sw	zero, 36(a0)
80001d20: 23 20 c5 02  	sw	a2, 32(a0)

80001d24 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001d24: 17 25 00 00  	auipc	a0, 2
80001d28: 13 05 c5 89  	addi	a0, a0, -1892
80001d2c: 23 20 d5 00  	sw	a3, 0(a0)

80001d30 <.LBB2_8>:
80001d30: 17 25 00 00  	auipc	a0, 2
80001d34: 13 05 05 8d  	addi	a0, a0, -1840
;         while (fromhost == 0)
80001d38: 03 26 05 00  	lw	a2, 0(a0)
80001d3c: e3 0e 06 fe  	beqz	a2, 0x80001d38 <.LBB2_8+0x8>
;         fromhost = 0;
80001d40: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001d44: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001d48: 67 80 00 00  	ret

80001d4c <_out_null>:
; }
80001d4c: 67 80 00 00  	ret

80001d50 <_ftoa>:
; {
80001d50: 13 01 01 f9  	addi	sp, sp, -112
80001d54: 23 26 11 06  	sw	ra, 108(sp)
80001d58: 23 24 81 06  	sw	s0, 104(sp)
80001d5c: 23 22 91 06  	sw	s1, 100(sp)
80001d60: 23 20 21 07  	sw	s2, 96(sp)
80001d64: 23 2e 31 05  	sw	s3, 92(sp)
80001d68: 23 2c 41 05  	sw	s4, 88(sp)
80001d6c: 23 2a 51 05  	sw	s5, 84(sp)
80001d70: 23 28 61 05  	sw	s6, 80(sp)
80001d74: 23 26 71 05  	sw	s7, 76(sp)
80001d78: 23 24 81 05  	sw	s8, 72(sp)
80001d7c: 23 22 91 05  	sw	s9, 68(sp)
80001d80: 23 20 a1 05  	sw	s10, 64(sp)
80001d84: 27 3c 81 02  	fsd	fs0, 56(sp)
80001d88: 27 38 91 02  	fsd	fs1, 48(sp)
80001d8c: 27 34 21 03  	fsd	fs2, 40(sp)

80001d90 <.LBB4_83>:
80001d90: 97 24 00 00  	auipc	s1, 2
80001d94: 93 84 84 8c  	addi	s1, s1, -1848
80001d98: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80001d9c: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001da0: 93 0a 08 00  	mv	s5, a6
80001da4: 13 89 07 00  	mv	s2, a5
80001da8: 93 89 06 00  	mv	s3, a3
80001dac: 13 0a 06 00  	mv	s4, a2
80001db0: 13 8b 05 00  	mv	s6, a1
80001db4: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001db8: 63 98 04 0e  	bnez	s1, 0x80001ea8 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001dbc: 13 f5 2a 00  	andi	a0, s5, 2
80001dc0: 93 f5 3a 00  	andi	a1, s5, 3
80001dc4: b3 35 b0 00  	snez	a1, a1
80001dc8: 13 36 59 00  	sltiu	a2, s2, 5
80001dcc: b3 65 b6 00  	or	a1, a2, a1
80001dd0: 93 5c 15 00  	srli	s9, a0, 1
80001dd4: 13 04 0a 00  	mv	s0, s4
80001dd8: 63 96 05 02  	bnez	a1, 0x80001e04 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80001ddc: 93 04 c9 ff  	addi	s1, s2, -4
80001de0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001de4: 13 04 16 00  	addi	s0, a2, 1
80001de8: 13 05 00 02  	addi	a0, zero, 32
80001dec: 93 05 0b 00  	mv	a1, s6
80001df0: 93 86 09 00  	mv	a3, s3
80001df4: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001df8: 93 84 f4 ff  	addi	s1, s1, -1
80001dfc: 13 06 04 00  	mv	a2, s0
80001e00: e3 92 04 fe  	bnez	s1, 0x80001de4 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001e04: 93 04 14 00  	addi	s1, s0, 1
80001e08: 13 05 d0 02  	addi	a0, zero, 45
80001e0c: 93 05 0b 00  	mv	a1, s6
80001e10: 13 06 04 00  	mv	a2, s0
80001e14: 93 86 09 00  	mv	a3, s3
80001e18: e7 80 0b 00  	jalr	s7
80001e1c: 93 0a 24 00  	addi	s5, s0, 2
80001e20: 13 05 90 06  	addi	a0, zero, 105
80001e24: 93 05 0b 00  	mv	a1, s6
80001e28: 13 86 04 00  	mv	a2, s1
80001e2c: 93 86 09 00  	mv	a3, s3
80001e30: e7 80 0b 00  	jalr	s7
80001e34: 13 0c 34 00  	addi	s8, s0, 3
80001e38: 13 05 e0 06  	addi	a0, zero, 110
80001e3c: 93 05 0b 00  	mv	a1, s6
80001e40: 13 86 0a 00  	mv	a2, s5
80001e44: 93 86 09 00  	mv	a3, s3
80001e48: e7 80 0b 00  	jalr	s7
80001e4c: 93 04 44 00  	addi	s1, s0, 4
80001e50: 13 05 60 06  	addi	a0, zero, 102
80001e54: 93 05 0b 00  	mv	a1, s6
80001e58: 13 06 0c 00  	mv	a2, s8
80001e5c: 93 86 09 00  	mv	a3, s3
80001e60: e7 80 0b 00  	jalr	s7
80001e64: 33 85 44 41  	sub	a0, s1, s4
80001e68: 33 35 25 01  	sltu	a0, a0, s2
80001e6c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001e70: 93 c5 1c 00  	xori	a1, s9, 1
80001e74: 33 e5 a5 00  	or	a0, a1, a0
80001e78: 63 16 05 56  	bnez	a0, 0x800023e4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001e7c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001e80: 13 84 14 00  	addi	s0, s1, 1
80001e84: 13 05 00 02  	addi	a0, zero, 32
80001e88: 93 05 0b 00  	mv	a1, s6
80001e8c: 13 86 04 00  	mv	a2, s1
80001e90: 93 86 09 00  	mv	a3, s3
80001e94: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001e98: 33 05 8a 00  	add	a0, s4, s0
80001e9c: 93 04 04 00  	mv	s1, s0
80001ea0: e3 60 25 ff  	bltu	a0, s2, 0x80001e80 <.LBB4_83+0xf0>
80001ea4: 6f 00 40 54  	j	0x800023e8 <.LBB4_90+0x378>
80001ea8: 53 04 a5 22  	fmv.d	fs0, fa0

80001eac <.LBB4_84>:
80001eac: 17 15 00 00  	auipc	a0, 1
80001eb0: 13 05 45 7b  	addi	a0, a0, 1972
80001eb4: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001eb8: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001ebc: 63 1e 05 00  	bnez	a0, 0x80001ed8 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001ec0: 93 f5 4a 00  	andi	a1, s5, 4
80001ec4: 13 b5 15 00  	seqz	a0, a1
80001ec8: 63 82 05 06  	beqz	a1, 0x80001f2c <.LBB4_88>

80001ecc <.LBB4_85>:
80001ecc: 17 1c 00 00  	auipc	s8, 1
80001ed0: 13 0c 4c 4b  	addi	s8, s8, 1204
80001ed4: 6f 00 00 06  	j	0x80001f34 <.LBB4_88+0x8>

80001ed8 <.LBB4_86>:
80001ed8: 17 15 00 00  	auipc	a0, 1
80001edc: 13 05 05 79  	addi	a0, a0, 1936
80001ee0: 07 30 05 00  	fld	ft0, 0(a0)

80001ee4 <.LBB4_87>:
80001ee4: 17 15 00 00  	auipc	a0, 1
80001ee8: 13 05 c5 78  	addi	a0, a0, 1932
80001eec: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001ef0: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001ef4: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001ef8: 33 75 b5 00  	and	a0, a0, a1
80001efc: 63 1e 05 0e  	bnez	a0, 0x80001ff8 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001f00: 13 85 0b 00  	mv	a0, s7
80001f04: 93 05 0b 00  	mv	a1, s6
80001f08: 13 06 0a 00  	mv	a2, s4
80001f0c: 93 86 09 00  	mv	a3, s3
80001f10: 53 05 84 22  	fmv.d	fa0, fs0
80001f14: 93 07 09 00  	mv	a5, s2
80001f18: 13 88 0a 00  	mv	a6, s5
80001f1c: 97 00 00 00  	auipc	ra, 0
80001f20: e7 80 40 51  	jalr	1300(ra)
80001f24: 13 04 05 00  	mv	s0, a0
80001f28: 6f 00 00 4c  	j	0x800023e8 <.LBB4_90+0x378>

80001f2c <.LBB4_88>:
80001f2c: 17 1c 00 00  	auipc	s8, 1
80001f30: 13 0c 3c 47  	addi	s8, s8, 1139
80001f34: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001f38: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001f3c: 13 f5 3a 00  	andi	a0, s5, 3
80001f40: 33 35 a0 00  	snez	a0, a0
80001f44: b3 b5 2c 01  	sltu	a1, s9, s2
80001f48: 93 c5 15 00  	xori	a1, a1, 1
80001f4c: 33 65 b5 00  	or	a0, a0, a1
80001f50: 93 fa 2a 00  	andi	s5, s5, 2
80001f54: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001f58: 63 16 05 02  	bnez	a0, 0x80001f84 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80001f5c: 33 04 99 41  	sub	s0, s2, s9
80001f60: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001f64: 93 04 16 00  	addi	s1, a2, 1
80001f68: 13 05 00 02  	addi	a0, zero, 32
80001f6c: 93 05 0b 00  	mv	a1, s6
80001f70: 93 86 09 00  	mv	a3, s3
80001f74: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001f78: 13 04 f4 ff  	addi	s0, s0, -1
80001f7c: 13 86 04 00  	mv	a2, s1
80001f80: e3 12 04 fe  	bnez	s0, 0x80001f64 <.LBB4_88+0x38>
80001f84: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001f88: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80001f8c: 33 05 9c 01  	add	a0, s8, s9
80001f90: 03 45 05 00  	lbu	a0, 0(a0)
80001f94: 13 86 04 00  	mv	a2, s1
80001f98: 13 84 fc ff  	addi	s0, s9, -1
80001f9c: 93 84 14 00  	addi	s1, s1, 1
80001fa0: 93 05 0b 00  	mv	a1, s6
80001fa4: 93 86 09 00  	mv	a3, s3
80001fa8: e7 80 0b 00  	jalr	s7
80001fac: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80001fb0: e3 1e 04 fc  	bnez	s0, 0x80001f8c <.LBB4_88+0x60>
80001fb4: 33 85 44 41  	sub	a0, s1, s4
80001fb8: 33 35 25 01  	sltu	a0, a0, s2
80001fbc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001fc0: 93 c5 1a 00  	xori	a1, s5, 1
80001fc4: 33 e5 a5 00  	or	a0, a1, a0
80001fc8: 63 1e 05 40  	bnez	a0, 0x800023e4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001fcc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001fd0: 13 84 14 00  	addi	s0, s1, 1
80001fd4: 13 05 00 02  	addi	a0, zero, 32
80001fd8: 93 05 0b 00  	mv	a1, s6
80001fdc: 13 86 04 00  	mv	a2, s1
80001fe0: 93 86 09 00  	mv	a3, s3
80001fe4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001fe8: 33 05 8a 00  	add	a0, s4, s0
80001fec: 93 04 04 00  	mv	s1, s0
80001ff0: e3 60 25 ff  	bltu	a0, s2, 0x80001fd0 <.LBB4_88+0xa4>
80001ff4: 6f 00 40 3f  	j	0x800023e8 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001ff8: 13 f5 0a 40  	andi	a0, s5, 1024
80001ffc: 13 0c 60 00  	addi	s8, zero, 6
80002000: 63 04 05 00  	beqz	a0, 0x80002008 <.LBB4_88+0xdc>
80002004: 13 0c 07 00  	mv	s8, a4
80002008: 13 05 a0 00  	addi	a0, zero, 10
8000200c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002010: 63 6c ac 02  	bltu	s8, a0, 0x80002048 <.LBB4_88+0x11c>
80002014: 93 04 6c ff  	addi	s1, s8, -10
80002018: 13 05 f0 01  	addi	a0, zero, 31
8000201c: 63 e4 a4 00  	bltu	s1, a0, 0x80002024 <.LBB4_88+0xf8>
80002020: 93 04 f0 01  	addi	s1, zero, 31
80002024: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002028: 13 05 81 00  	addi	a0, sp, 8
8000202c: 93 05 00 03  	addi	a1, zero, 48
80002030: 13 06 04 00  	mv	a2, s0
80002034: 97 e0 ff ff  	auipc	ra, 1048574
80002038: e7 80 40 52  	jalr	1316(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
8000203c: 13 c5 f4 ff  	not	a0, s1
80002040: 33 0c ac 00  	add	s8, s8, a0
80002044: 6f 00 80 00  	j	0x8000204c <.LBB4_88+0x120>
80002048: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
8000204c: 13 15 3c 00  	slli	a0, s8, 3

80002050 <.LBB4_89>:
80002050: 97 15 00 00  	auipc	a1, 1
80002054: 93 85 05 51  	addi	a1, a1, 1296
80002058: 33 05 b5 00  	add	a0, a0, a1
8000205c: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002060: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80002064: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002068: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
8000206c: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002070 <.LBB4_90>:
80002070: 17 15 00 00  	auipc	a0, 1
80002074: 13 05 85 60  	addi	a0, a0, 1544
80002078: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
8000207c: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80002080: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80002084: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002088: d3 05 01 a2  	fle.d	a1, ft2, ft0
8000208c: 63 90 05 02  	bnez	a1, 0x800020ac <.LBB4_90+0x3c>
;     ++frac;
80002090: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80002094: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80002098: d3 15 11 a2  	flt.d	a1, ft2, ft1
8000209c: 63 94 05 02  	bnez	a1, 0x800020c4 <.LBB4_90+0x54>
800020a0: 13 05 00 00  	mv	a0, zero
;       ++whole;
800020a4: 93 84 14 00  	addi	s1, s1, 1
800020a8: 6f 00 c0 01  	j	0x800020c4 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
800020ac: d3 15 01 a2  	flt.d	a1, ft2, ft0
800020b0: 63 9a 05 00  	bnez	a1, 0x800020c4 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
800020b4: 93 35 15 00  	seqz	a1, a0
800020b8: 13 76 15 00  	andi	a2, a0, 1
800020bc: b3 65 b6 00  	or	a1, a2, a1
800020c0: 33 85 a5 00  	add	a0, a1, a0
800020c4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
800020c8: 63 0c 0c 0c  	beqz	s8, 0x800021a0 <.LBB4_90+0x130>
800020cc: 13 06 00 00  	mv	a2, zero
800020d0: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
800020d4: 33 83 85 00  	add	t1, a1, s0
800020d8: 93 02 00 02  	addi	t0, zero, 32
800020dc: 33 87 82 40  	sub	a4, t0, s0
800020e0: b7 d5 cc cc  	lui	a1, 838861
800020e4: 93 83 d5 cc  	addi	t2, a1, -819
800020e8: 13 08 a0 00  	addi	a6, zero, 10
800020ec: 93 08 90 00  	addi	a7, zero, 9
800020f0: 63 04 c7 0c  	beq	a4, a2, 0x800021b8 <.LBB4_90+0x148>
800020f4: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
800020f8: 33 35 75 02  	mulhu	a0, a0, t2
800020fc: 13 55 35 00  	srli	a0, a0, 3
80002100: b3 06 05 03  	mul	a3, a0, a6
80002104: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002108: 93 e6 06 03  	ori	a3, a3, 48
8000210c: b3 07 c3 00  	add	a5, t1, a2
80002110: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80002114: 13 06 16 00  	addi	a2, a2, 1
80002118: e3 ec b8 fc  	bltu	a7, a1, 0x800020f0 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000211c: 33 05 c4 00  	add	a0, s0, a2
80002120: 93 05 f5 ff  	addi	a1, a0, -1
80002124: 93 06 e0 01  	addi	a3, zero, 30
80002128: b3 b6 b6 00  	sltu	a3, a3, a1
8000212c: 33 47 cc 00  	xor	a4, s8, a2
80002130: 13 37 17 00  	seqz	a4, a4
80002134: b3 e6 e6 00  	or	a3, a3, a4
80002138: 63 94 06 08  	bnez	a3, 0x800021c0 <.LBB4_90+0x150>
8000213c: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002140: 33 05 85 00  	add	a0, a0, s0
80002144: 93 45 f6 ff  	not	a1, a2
80002148: 33 8c 85 01  	add	s8, a1, s8
8000214c: 33 04 c4 00  	add	s0, s0, a2
80002150: 93 05 f0 01  	addi	a1, zero, 31
80002154: b3 86 85 40  	sub	a3, a1, s0
80002158: 33 05 c5 00  	add	a0, a0, a2
8000215c: 93 05 0c 00  	mv	a1, s8
80002160: 63 64 dc 00  	bltu	s8, a3, 0x80002168 <.LBB4_90+0xf8>
80002164: 93 85 06 00  	mv	a1, a3
80002168: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000216c: 93 05 00 03  	addi	a1, zero, 48
80002170: 97 e0 ff ff  	auipc	ra, 1048574
80002174: e7 80 80 3e  	jalr	1000(ra)
80002178: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000217c: b3 05 a4 00  	add	a1, s0, a0
80002180: 93 b5 f5 01  	sltiu	a1, a1, 31
80002184: 33 46 ac 00  	xor	a2, s8, a0
80002188: 33 36 c0 00  	snez	a2, a2
8000218c: 33 f6 c5 00  	and	a2, a1, a2
80002190: 13 05 15 00  	addi	a0, a0, 1
80002194: e3 14 06 fe  	bnez	a2, 0x8000217c <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002198: 33 05 a4 00  	add	a0, s0, a0
8000219c: 6f 00 80 02  	j	0x800021c4 <.LBB4_90+0x154>
;     diff = value - (double)whole;
800021a0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800021a4: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800021a8: 53 05 10 a2  	fle.d	a0, ft0, ft1
800021ac: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800021b0: b3 84 a4 00  	add	s1, s1, a0
800021b4: 6f 00 c0 03  	j	0x800021f0 <.LBB4_90+0x180>
800021b8: 13 04 00 02  	addi	s0, zero, 32
800021bc: 6f 00 80 03  	j	0x800021f4 <.LBB4_90+0x184>
800021c0: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800021c4: 63 8e 05 00  	beqz	a1, 0x800021e0 <.LBB4_90+0x170>
;       buf[len++] = '.';
800021c8: 13 04 15 00  	addi	s0, a0, 1
800021cc: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
800021d0: 33 85 a5 00  	add	a0, a1, a0
800021d4: 93 05 e0 02  	addi	a1, zero, 46
800021d8: 23 00 b5 00  	sb	a1, 0(a0)
800021dc: 6f 00 80 00  	j	0x800021e4 <.LBB4_90+0x174>
800021e0: 13 04 05 00  	mv	s0, a0
800021e4: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800021e8: 93 02 04 00  	mv	t0, s0
800021ec: 63 64 85 00  	bltu	a0, s0, 0x800021f4 <.LBB4_90+0x184>
800021f0: 93 02 00 02  	addi	t0, zero, 32
800021f4: d3 1c 94 a2  	flt.d	s9, fs0, fs1
800021f8: 37 65 66 66  	lui	a0, 419430
800021fc: 93 05 75 66  	addi	a1, a0, 1639
80002200: 13 08 a0 00  	addi	a6, zero, 10
80002204: 93 06 81 00  	addi	a3, sp, 8
80002208: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
8000220c: 63 80 82 04  	beq	t0, s0, 0x8000224c <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002210: 33 95 b4 02  	mulh	a0, s1, a1
80002214: 93 57 f5 01  	srli	a5, a0, 31
80002218: 13 55 25 40  	srai	a0, a0, 2
8000221c: 33 05 f5 00  	add	a0, a0, a5
80002220: b3 07 05 03  	mul	a5, a0, a6
80002224: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002228: 93 87 07 03  	addi	a5, a5, 48
8000222c: 13 0c 14 00  	addi	s8, s0, 1
80002230: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002234: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002238: 23 00 f4 00  	sb	a5, 0(s0)
8000223c: 13 04 0c 00  	mv	s0, s8
80002240: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002244: e3 64 c7 fc  	bltu	a4, a2, 0x8000220c <.LBB4_90+0x19c>
80002248: 6f 00 80 00  	j	0x80002250 <.LBB4_90+0x1e0>
8000224c: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002250: 93 f4 3a 00  	andi	s1, s5, 3
80002254: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002258: 63 96 a4 06  	bne	s1, a0, 0x800022c4 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000225c: 63 0c 09 00  	beqz	s2, 0x80002274 <.LBB4_90+0x204>
80002260: 13 f5 ca 00  	andi	a0, s5, 12
80002264: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002268: 33 e5 ac 00  	or	a0, s9, a0
8000226c: 33 09 a9 40  	sub	s2, s2, a0
80002270: 6f 00 80 00  	j	0x80002278 <.LBB4_90+0x208>
80002274: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002278: 33 35 2c 01  	sltu	a0, s8, s2
8000227c: 93 45 15 00  	xori	a1, a0, 1
80002280: 13 05 f0 01  	addi	a0, zero, 31
80002284: 33 36 85 01  	sltu	a2, a0, s8
80002288: b3 65 b6 00  	or	a1, a2, a1
8000228c: 63 9c 05 02  	bnez	a1, 0x800022c4 <.LBB4_90+0x254>
80002290: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002294: 93 45 fc ff  	not	a1, s8
80002298: b3 05 b9 00  	add	a1, s2, a1
8000229c: 33 06 85 41  	sub	a2, a0, s8
800022a0: 33 85 86 01  	add	a0, a3, s8
800022a4: 63 e4 c5 00  	bltu	a1, a2, 0x800022ac <.LBB4_90+0x23c>
800022a8: 93 05 06 00  	mv	a1, a2
800022ac: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800022b0: 93 05 00 03  	addi	a1, zero, 48
800022b4: 13 06 04 00  	mv	a2, s0
800022b8: 97 e0 ff ff  	auipc	ra, 1048574
800022bc: e7 80 00 2a  	jalr	672(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800022c0: 33 0c 84 01  	add	s8, s0, s8
800022c4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800022c8: 63 6a 85 05  	bltu	a0, s8, 0x8000231c <.LBB4_90+0x2ac>
;     if (negative) {
800022cc: 63 8c 0c 00  	beqz	s9, 0x800022e4 <.LBB4_90+0x274>
800022d0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800022d4: 33 05 85 01  	add	a0, a0, s8
800022d8: 13 0c 1c 00  	addi	s8, s8, 1
800022dc: 93 05 d0 02  	addi	a1, zero, 45
800022e0: 6f 00 80 03  	j	0x80002318 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800022e4: 13 f5 4a 00  	andi	a0, s5, 4
800022e8: 63 10 05 02  	bnez	a0, 0x80002308 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800022ec: 13 f5 8a 00  	andi	a0, s5, 8
800022f0: 63 06 05 02  	beqz	a0, 0x8000231c <.LBB4_90+0x2ac>
800022f4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800022f8: 33 05 85 01  	add	a0, a0, s8
800022fc: 13 0c 1c 00  	addi	s8, s8, 1
80002300: 93 05 00 02  	addi	a1, zero, 32
80002304: 6f 00 40 01  	j	0x80002318 <.LBB4_90+0x2a8>
80002308: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000230c: 33 05 85 01  	add	a0, a0, s8
80002310: 13 0c 1c 00  	addi	s8, s8, 1
80002314: 93 05 b0 02  	addi	a1, zero, 43
80002318: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000231c: 33 35 90 00  	snez	a0, s1
80002320: b3 35 2c 01  	sltu	a1, s8, s2
80002324: 93 c5 15 00  	xori	a1, a1, 1
80002328: 33 65 b5 00  	or	a0, a0, a1
8000232c: 93 fa 2a 00  	andi	s5, s5, 2
80002330: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002334: 63 16 05 02  	bnez	a0, 0x80002360 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002338: b3 04 89 41  	sub	s1, s2, s8
8000233c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002340: 13 04 16 00  	addi	s0, a2, 1
80002344: 13 05 00 02  	addi	a0, zero, 32
80002348: 93 05 0b 00  	mv	a1, s6
8000234c: 93 86 09 00  	mv	a3, s3
80002350: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002354: 93 84 f4 ff  	addi	s1, s1, -1
80002358: 13 06 04 00  	mv	a2, s0
8000235c: e3 92 04 fe  	bnez	s1, 0x80002340 <.LBB4_90+0x2d0>
80002360: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002364: 63 0c 0c 02  	beqz	s8, 0x8000239c <.LBB4_90+0x32c>
80002368: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
8000236c: 33 85 8c 01  	add	a0, s9, s8
80002370: 03 45 05 00  	lbu	a0, 0(a0)
80002374: 13 0d fc ff  	addi	s10, s8, -1
80002378: 93 04 14 00  	addi	s1, s0, 1
8000237c: 93 05 0b 00  	mv	a1, s6
80002380: 13 06 04 00  	mv	a2, s0
80002384: 93 86 09 00  	mv	a3, s3
80002388: e7 80 0b 00  	jalr	s7
8000238c: 13 84 04 00  	mv	s0, s1
80002390: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002394: e3 1c 0d fc  	bnez	s10, 0x8000236c <.LBB4_90+0x2fc>
80002398: 6f 00 80 00  	j	0x800023a0 <.LBB4_90+0x330>
8000239c: 93 04 04 00  	mv	s1, s0
800023a0: 33 85 44 41  	sub	a0, s1, s4
800023a4: 33 35 25 01  	sltu	a0, a0, s2
800023a8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800023ac: 93 c5 1a 00  	xori	a1, s5, 1
800023b0: 33 e5 a5 00  	or	a0, a1, a0
800023b4: 63 18 05 02  	bnez	a0, 0x800023e4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800023b8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800023bc: 13 84 14 00  	addi	s0, s1, 1
800023c0: 13 05 00 02  	addi	a0, zero, 32
800023c4: 93 05 0b 00  	mv	a1, s6
800023c8: 13 86 04 00  	mv	a2, s1
800023cc: 93 86 09 00  	mv	a3, s3
800023d0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800023d4: 33 05 8a 00  	add	a0, s4, s0
800023d8: 93 04 04 00  	mv	s1, s0
800023dc: e3 60 25 ff  	bltu	a0, s2, 0x800023bc <.LBB4_90+0x34c>
800023e0: 6f 00 80 00  	j	0x800023e8 <.LBB4_90+0x378>
800023e4: 13 84 04 00  	mv	s0, s1
; }
800023e8: 13 05 04 00  	mv	a0, s0
800023ec: 07 39 81 02  	fld	fs2, 40(sp)
800023f0: 87 34 01 03  	fld	fs1, 48(sp)
800023f4: 07 34 81 03  	fld	fs0, 56(sp)
800023f8: 03 2d 01 04  	lw	s10, 64(sp)
800023fc: 83 2c 41 04  	lw	s9, 68(sp)
80002400: 03 2c 81 04  	lw	s8, 72(sp)
80002404: 83 2b c1 04  	lw	s7, 76(sp)
80002408: 03 2b 01 05  	lw	s6, 80(sp)
8000240c: 83 2a 41 05  	lw	s5, 84(sp)
80002410: 03 2a 81 05  	lw	s4, 88(sp)
80002414: 83 29 c1 05  	lw	s3, 92(sp)
80002418: 03 29 01 06  	lw	s2, 96(sp)
8000241c: 83 24 41 06  	lw	s1, 100(sp)
80002420: 03 24 81 06  	lw	s0, 104(sp)
80002424: 83 20 c1 06  	lw	ra, 108(sp)
80002428: 13 01 01 07  	addi	sp, sp, 112
8000242c: 67 80 00 00  	ret

80002430 <_etoa>:
; {
80002430: 13 01 01 f8  	addi	sp, sp, -128
80002434: 23 2e 11 06  	sw	ra, 124(sp)
80002438: 23 2c 81 06  	sw	s0, 120(sp)
8000243c: 23 2a 91 06  	sw	s1, 116(sp)
80002440: 23 28 21 07  	sw	s2, 112(sp)
80002444: 23 26 31 07  	sw	s3, 108(sp)
80002448: 23 24 41 07  	sw	s4, 104(sp)
8000244c: 23 22 51 07  	sw	s5, 100(sp)
80002450: 23 20 61 07  	sw	s6, 96(sp)
80002454: 23 2e 71 05  	sw	s7, 92(sp)
80002458: 23 2c 81 05  	sw	s8, 88(sp)
8000245c: 23 2a 91 05  	sw	s9, 84(sp)
80002460: 23 28 a1 05  	sw	s10, 80(sp)
80002464: 23 26 b1 05  	sw	s11, 76(sp)

80002468 <.LBB5_43>:
80002468: 97 14 00 00  	auipc	s1, 1
8000246c: 93 84 84 21  	addi	s1, s1, 536
80002470: 87 b0 04 00  	fld	ft1, 0(s1)

80002474 <.LBB5_44>:
80002474: 97 14 00 00  	auipc	s1, 1
80002478: 93 84 44 21  	addi	s1, s1, 532
8000247c: 07 b1 04 00  	fld	ft2, 0(s1)
80002480: 53 00 a5 22  	fmv.d	ft0, fa0
80002484: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002488: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
8000248c: b3 f4 84 00  	and	s1, s1, s0
80002490: 93 0a 08 00  	mv	s5, a6
80002494: 13 89 07 00  	mv	s2, a5
80002498: 93 07 07 00  	mv	a5, a4
8000249c: 93 89 06 00  	mv	s3, a3
800024a0: 13 0a 06 00  	mv	s4, a2
800024a4: 13 8b 05 00  	mv	s6, a1
800024a8: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800024ac: 63 92 04 06  	bnez	s1, 0x80002510 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800024b0: 13 85 0b 00  	mv	a0, s7
800024b4: 93 05 0b 00  	mv	a1, s6
800024b8: 13 06 0a 00  	mv	a2, s4
800024bc: 93 86 09 00  	mv	a3, s3
800024c0: 53 05 00 22  	fmv.d	fa0, ft0
800024c4: 13 87 07 00  	mv	a4, a5
800024c8: 93 07 09 00  	mv	a5, s2
800024cc: 13 88 0a 00  	mv	a6, s5
800024d0: 83 2d c1 04  	lw	s11, 76(sp)
800024d4: 03 2d 01 05  	lw	s10, 80(sp)
800024d8: 83 2c 41 05  	lw	s9, 84(sp)
800024dc: 03 2c 81 05  	lw	s8, 88(sp)
800024e0: 83 2b c1 05  	lw	s7, 92(sp)
800024e4: 03 2b 01 06  	lw	s6, 96(sp)
800024e8: 83 2a 41 06  	lw	s5, 100(sp)
800024ec: 03 2a 81 06  	lw	s4, 104(sp)
800024f0: 83 29 c1 06  	lw	s3, 108(sp)
800024f4: 03 29 01 07  	lw	s2, 112(sp)
800024f8: 83 24 41 07  	lw	s1, 116(sp)
800024fc: 03 24 81 07  	lw	s0, 120(sp)
80002500: 83 20 c1 07  	lw	ra, 124(sp)
80002504: 13 01 01 08  	addi	sp, sp, 128
80002508: 17 03 00 00  	auipc	t1, 0
8000250c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002510: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002514: 13 f5 0a 40  	andi	a0, s5, 1024
80002518: 13 07 60 00  	addi	a4, zero, 6
8000251c: 63 04 05 00  	beqz	a0, 0x80002524 <.LBB5_44+0xb0>
80002520: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002524: 27 30 a1 02  	fsd	fa0, 32(sp)
80002528: 83 25 41 02  	lw	a1, 36(sp)
8000252c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002530: 93 d6 45 01  	srli	a3, a1, 20
80002534: b7 07 10 00  	lui	a5, 256
80002538: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
8000253c: b3 f5 f5 00  	and	a1, a1, a5
80002540: 23 2c c1 00  	sw	a2, 24(sp)
80002544: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002548: b3 e5 c5 00  	or	a1, a1, a2
8000254c: 23 2e b1 00  	sw	a1, 28(sp)
80002550: 87 30 81 01  	fld	ft1, 24(sp)

80002554 <.LBB5_45>:
80002554: 97 15 00 00  	auipc	a1, 1
80002558: 93 85 c5 13  	addi	a1, a1, 316
8000255c: 07 b1 05 00  	fld	ft2, 0(a1)

80002560 <.LBB5_46>:
80002560: 97 15 00 00  	auipc	a1, 1
80002564: 93 85 85 13  	addi	a1, a1, 312
80002568: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000256c: 93 f5 f6 7f  	andi	a1, a3, 2047
80002570: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002574: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002578: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

8000257c <.LBB5_47>:
8000257c: 97 15 00 00  	auipc	a1, 1
80002580: 93 85 45 12  	addi	a1, a1, 292
80002584: 07 b1 05 00  	fld	ft2, 0(a1)

80002588 <.LBB5_48>:
80002588: 97 15 00 00  	auipc	a1, 1
8000258c: 93 85 05 12  	addi	a1, a1, 288
80002590: 87 b1 05 00  	fld	ft3, 0(a1)

80002594 <.LBB5_49>:
80002594: 97 15 00 00  	auipc	a1, 1
80002598: 93 85 c5 11  	addi	a1, a1, 284
8000259c: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800025a0: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800025a4: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800025a8: d3 80 05 d2  	fcvt.d.w	ft1, a1
800025ac: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

800025b0 <.LBB5_50>:
800025b0: 17 16 00 00  	auipc	a2, 1
800025b4: 13 06 86 10  	addi	a2, a2, 264
800025b8: 87 31 06 00  	fld	ft3, 0(a2)

800025bc <.LBB5_51>:
800025bc: 17 16 00 00  	auipc	a2, 1
800025c0: 13 06 46 10  	addi	a2, a2, 260
800025c4: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800025c8: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800025cc: 53 01 06 d2  	fcvt.d.w	ft2, a2
800025d0: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800025d4: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800025d8: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800025dc: 13 06 f6 3f  	addi	a2, a2, 1023
800025e0: 23 28 01 00  	sw	zero, 16(sp)
800025e4: 13 16 46 01  	slli	a2, a2, 20
800025e8: 23 2a c1 00  	sw	a2, 20(sp)

800025ec <.LBB5_52>:
800025ec: 17 16 00 00  	auipc	a2, 1
800025f0: 13 06 46 0e  	addi	a2, a2, 228
800025f4: 87 31 06 00  	fld	ft3, 0(a2)

800025f8 <.LBB5_53>:
800025f8: 17 16 00 00  	auipc	a2, 1
800025fc: 13 06 06 0e  	addi	a2, a2, 224
80002600: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002604: 87 32 01 01  	fld	ft5, 16(sp)

80002608 <.LBB5_54>:
80002608: 17 16 00 00  	auipc	a2, 1
8000260c: 13 06 06 0c  	addi	a2, a2, 192
80002610: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002614: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002618 <.LBB5_55>:
80002618: 17 16 00 00  	auipc	a2, 1
8000261c: 13 06 86 0c  	addi	a2, a2, 200
80002620: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002624: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002628: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
8000262c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002630: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002634: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002638: 53 71 23 02  	fadd.d	ft2, ft6, ft2
8000263c: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002640: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002644: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002648: 63 0a 06 00  	beqz	a2, 0x8000265c <.LBB5_56+0x10>

8000264c <.LBB5_56>:
8000264c: 97 16 00 00  	auipc	a3, 1
80002650: 93 86 c6 09  	addi	a3, a3, 156
80002654: 07 b1 06 00  	fld	ft2, 0(a3)
80002658: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
8000265c: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002660: 93 05 34 06  	addi	a1, s0, 99
80002664: 93 b5 75 0c  	sltiu	a1, a1, 199
80002668: 13 06 50 00  	addi	a2, zero, 5
8000266c: b7 16 00 00  	lui	a3, 1
80002670: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002674: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002678: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
8000267c: 63 84 06 06  	beqz	a3, 0x800026e4 <.LBB5_58+0x58>

80002680 <.LBB5_57>:
80002680: 97 15 00 00  	auipc	a1, 1
80002684: 93 85 05 07  	addi	a1, a1, 112
80002688: 07 b1 05 00  	fld	ft2, 0(a1)

8000268c <.LBB5_58>:
8000268c: 97 15 00 00  	auipc	a1, 1
80002690: 93 85 c5 06  	addi	a1, a1, 108
80002694: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80002698: d3 15 25 a2  	flt.d	a1, fa0, ft2
8000269c: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800026a0: b3 e5 c5 00  	or	a1, a1, a2
800026a4: 63 98 05 00  	bnez	a1, 0x800026b4 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800026a8: 63 40 e4 02  	blt	s0, a4, 0x800026c8 <.LBB5_58+0x3c>
800026ac: 13 07 00 00  	mv	a4, zero
800026b0: 6f 00 00 02  	j	0x800026d0 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800026b4: 63 06 07 02  	beqz	a4, 0x800026e0 <.LBB5_58+0x54>
800026b8: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800026bc: 13 45 15 00  	xori	a0, a0, 1
800026c0: 33 07 a7 40  	sub	a4, a4, a0
800026c4: 6f 00 00 02  	j	0x800026e4 <.LBB5_58+0x58>
800026c8: 13 45 f4 ff  	not	a0, s0
800026cc: 33 07 a7 00  	add	a4, a4, a0
800026d0: 13 04 00 00  	mv	s0, zero
800026d4: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800026d8: 93 ea 0a 40  	ori	s5, s5, 1024
800026dc: 6f 00 80 00  	j	0x800026e4 <.LBB5_58+0x58>
800026e0: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800026e4: b3 05 99 41  	sub	a1, s2, s9
800026e8: 33 36 b9 00  	sltu	a2, s2, a1
800026ec: 13 05 00 00  	mv	a0, zero
800026f0: 63 14 06 00  	bnez	a2, 0x800026f8 <.LBB5_58+0x6c>
800026f4: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800026f8: 93 07 00 00  	mv	a5, zero
800026fc: 93 d5 1a 00  	srli	a1, s5, 1
80002700: 93 f4 15 00  	andi	s1, a1, 1
80002704: b3 35 90 01  	snez	a1, s9
80002708: b3 f5 b4 00  	and	a1, s1, a1
8000270c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002710: 63 94 05 00  	bnez	a1, 0x80002718 <.LBB5_58+0x8c>
80002714: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002718: 93 35 14 00  	seqz	a1, s0
8000271c: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002720: 63 94 05 00  	bnez	a1, 0x80002728 <.LBB5_58+0x9c>
80002724: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002728: 63 04 05 00  	beqz	a0, 0x80002730 <.LBB5_58+0xa4>
8000272c: 53 15 a5 22  	fneg.d	fa0, fa0
80002730: 37 f5 ff ff  	lui	a0, 1048575
80002734: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002738: 33 f8 aa 00  	and	a6, s5, a0
8000273c: 13 85 0b 00  	mv	a0, s7
80002740: 93 05 0b 00  	mv	a1, s6
80002744: 13 06 0a 00  	mv	a2, s4
80002748: 93 86 09 00  	mv	a3, s3
8000274c: 97 f0 ff ff  	auipc	ra, 1048575
80002750: e7 80 40 60  	jalr	1540(ra)
80002754: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80002758: 63 82 0c 18  	beqz	s9, 0x800028dc <.LBB5_58+0x250>
8000275c: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80002760: 13 f5 0a 02  	andi	a0, s5, 32
80002764: 13 45 55 06  	xori	a0, a0, 101
80002768: 93 05 0b 00  	mv	a1, s6
8000276c: 13 06 0d 00  	mv	a2, s10
80002770: 93 86 09 00  	mv	a3, s3
80002774: e7 80 0b 00  	jalr	s7
80002778: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
8000277c: 93 5a f4 01  	srli	s5, s0, 31
80002780: 13 55 f4 41  	srai	a0, s0, 31
80002784: b3 05 a4 00  	add	a1, s0, a0
80002788: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
8000278c: 93 8d dc ff  	addi	s11, s9, -3
80002790: 13 04 f0 01  	addi	s0, zero, 31
80002794: 37 d5 cc cc  	lui	a0, 838861
80002798: 13 05 d5 cc  	addi	a0, a0, -819
8000279c: 13 08 a0 00  	addi	a6, zero, 10
800027a0: 93 08 c1 02  	addi	a7, sp, 44
800027a4: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800027a8: b3 37 a7 02  	mulhu	a5, a4, a0
800027ac: 93 d5 37 00  	srli	a1, a5, 3
800027b0: b3 87 05 03  	mul	a5, a1, a6
800027b4: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800027b8: 13 e6 07 03  	ori	a2, a5, 48
800027bc: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800027c0: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800027c4: 13 0c 1c 00  	addi	s8, s8, 1
800027c8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800027cc: 33 b6 e2 00  	sltu	a2, t0, a4
800027d0: 33 f6 c7 00  	and	a2, a5, a2
800027d4: 93 8d fd ff  	addi	s11, s11, -1
800027d8: 13 04 f4 ff  	addi	s0, s0, -1
800027dc: 13 87 05 00  	mv	a4, a1
800027e0: e3 14 06 fc  	bnez	a2, 0x800027a8 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800027e4: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800027e8: 33 35 ac 00  	sltu	a0, s8, a0
800027ec: 13 45 15 00  	xori	a0, a0, 1
800027f0: 93 c5 17 00  	xori	a1, a5, 1
800027f4: 33 e5 a5 00  	or	a0, a1, a0
800027f8: 63 12 05 04  	bnez	a0, 0x8000283c <.LBB5_58+0x1b0>
800027fc: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002800: b3 85 8c 41  	sub	a1, s9, s8
80002804: 93 85 d5 ff  	addi	a1, a1, -3
80002808: 13 06 f0 01  	addi	a2, zero, 31
8000280c: 33 06 86 41  	sub	a2, a2, s8
80002810: 33 05 85 01  	add	a0, a0, s8
80002814: 63 e4 c5 00  	bltu	a1, a2, 0x8000281c <.LBB5_58+0x190>
80002818: 93 05 06 00  	mv	a1, a2
8000281c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002820: 93 05 00 03  	addi	a1, zero, 48
80002824: 97 e0 ff ff  	auipc	ra, 1048574
80002828: e7 80 40 d3  	jalr	-716(ra)
;   if (flags & FLAGS_HASH) {
8000282c: 63 e4 8d 00  	bltu	s11, s0, 0x80002834 <.LBB5_58+0x1a8>
80002830: 93 0d 04 00  	mv	s11, s0
80002834: 33 85 8d 01  	add	a0, s11, s8
80002838: 13 0c 15 00  	addi	s8, a0, 1
8000283c: 83 2c c1 00  	lw	s9, 12(sp)
80002840: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002844: 63 60 85 03  	bltu	a0, s8, 0x80002864 <.LBB5_58+0x1d8>
80002848: 13 05 c1 02  	addi	a0, sp, 44
8000284c: 33 05 85 01  	add	a0, a0, s8
80002850: 93 05 d0 02  	addi	a1, zero, 45
80002854: 63 94 0a 00  	bnez	s5, 0x8000285c <.LBB5_58+0x1d0>
80002858: 93 05 b0 02  	addi	a1, zero, 43
8000285c: 13 0c 1c 00  	addi	s8, s8, 1
80002860: 23 00 b5 00  	sb	a1, 0(a0)
80002864: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80002868: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
8000286c: 33 85 8a 01  	add	a0, s5, s8
80002870: 03 45 05 00  	lbu	a0, 0(a0)
80002874: 13 06 04 00  	mv	a2, s0
80002878: 93 04 fc ff  	addi	s1, s8, -1
8000287c: 13 04 14 00  	addi	s0, s0, 1
80002880: 93 05 0b 00  	mv	a1, s6
80002884: 93 86 09 00  	mv	a3, s3
80002888: e7 80 0b 00  	jalr	s7
8000288c: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80002890: e3 9e 04 fc  	bnez	s1, 0x8000286c <.LBB5_58+0x1e0>
80002894: 33 05 44 41  	sub	a0, s0, s4
80002898: 33 35 25 01  	sltu	a0, a0, s2
8000289c: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800028a0: 93 c5 1c 00  	xori	a1, s9, 1
800028a4: 33 e5 a5 00  	or	a0, a1, a0
800028a8: 63 18 05 02  	bnez	a0, 0x800028d8 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800028ac: b3 04 40 41  	neg	s1, s4
800028b0: 13 0d 14 00  	addi	s10, s0, 1
800028b4: 13 05 00 02  	addi	a0, zero, 32
800028b8: 93 05 0b 00  	mv	a1, s6
800028bc: 13 06 04 00  	mv	a2, s0
800028c0: 93 86 09 00  	mv	a3, s3
800028c4: e7 80 0b 00  	jalr	s7
800028c8: 33 85 a4 01  	add	a0, s1, s10
800028cc: 13 04 0d 00  	mv	s0, s10
800028d0: e3 60 25 ff  	bltu	a0, s2, 0x800028b0 <.LBB5_58+0x224>
800028d4: 6f 00 80 00  	j	0x800028dc <.LBB5_58+0x250>
800028d8: 13 0d 04 00  	mv	s10, s0
; }
800028dc: 13 05 0d 00  	mv	a0, s10
800028e0: 83 2d c1 04  	lw	s11, 76(sp)
800028e4: 03 2d 01 05  	lw	s10, 80(sp)
800028e8: 83 2c 41 05  	lw	s9, 84(sp)
800028ec: 03 2c 81 05  	lw	s8, 88(sp)
800028f0: 83 2b c1 05  	lw	s7, 92(sp)
800028f4: 03 2b 01 06  	lw	s6, 96(sp)
800028f8: 83 2a 41 06  	lw	s5, 100(sp)
800028fc: 03 2a 81 06  	lw	s4, 104(sp)
80002900: 83 29 c1 06  	lw	s3, 108(sp)
80002904: 03 29 01 07  	lw	s2, 112(sp)
80002908: 83 24 41 07  	lw	s1, 116(sp)
8000290c: 03 24 81 07  	lw	s0, 120(sp)
80002910: 83 20 c1 07  	lw	ra, 124(sp)
80002914: 13 01 01 08  	addi	sp, sp, 128
80002918: 67 80 00 00  	ret

8000291c <_ntoa_format>:
; {
8000291c: 13 01 01 fc  	addi	sp, sp, -64
80002920: 23 2e 11 02  	sw	ra, 60(sp)
80002924: 23 2c 81 02  	sw	s0, 56(sp)
80002928: 23 2a 91 02  	sw	s1, 52(sp)
8000292c: 23 28 21 03  	sw	s2, 48(sp)
80002930: 23 26 31 03  	sw	s3, 44(sp)
80002934: 23 24 41 03  	sw	s4, 40(sp)
80002938: 23 22 51 03  	sw	s5, 36(sp)
8000293c: 23 20 61 03  	sw	s6, 32(sp)
80002940: 23 2e 71 01  	sw	s7, 28(sp)
80002944: 23 2c 81 01  	sw	s8, 24(sp)
80002948: 23 2a 91 01  	sw	s9, 20(sp)
8000294c: 23 28 a1 01  	sw	s10, 16(sp)
80002950: 23 26 b1 01  	sw	s11, 12(sp)
80002954: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80002958: 93 fa 2e 00  	andi	s5, t4, 2
8000295c: 13 09 0e 00  	mv	s2, t3
80002960: 13 8d 03 00  	mv	s10, t2
80002964: 93 8c 08 00  	mv	s9, a7
80002968: 13 8c 07 00  	mv	s8, a5
8000296c: 93 89 06 00  	mv	s3, a3
80002970: 13 0a 06 00  	mv	s4, a2
80002974: 13 8b 05 00  	mv	s6, a1
80002978: 93 0d 05 00  	mv	s11, a0
8000297c: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80002980: 63 9e 0a 0c  	bnez	s5, 0x80002a5c <_ntoa_format+0x140>
80002984: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002988: 63 0e 09 00  	beqz	s2, 0x800029a4 <_ntoa_format+0x88>
8000298c: 63 0e 04 00  	beqz	s0, 0x800029a8 <_ntoa_format+0x8c>
80002990: 13 f5 cb 00  	andi	a0, s7, 12
80002994: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002998: 33 65 05 01  	or	a0, a0, a6
8000299c: 33 09 a9 40  	sub	s2, s2, a0
800029a0: 6f 00 80 00  	j	0x800029a8 <_ntoa_format+0x8c>
800029a4: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800029a8: 33 35 ac 01  	sltu	a0, s8, s10
800029ac: 93 45 15 00  	xori	a1, a0, 1
800029b0: 13 05 f0 01  	addi	a0, zero, 31
800029b4: 33 36 85 01  	sltu	a2, a0, s8
800029b8: b3 65 b6 00  	or	a1, a2, a1
800029bc: 63 94 05 04  	bnez	a1, 0x80002a04 <_ntoa_format+0xe8>
800029c0: 23 22 51 01  	sw	s5, 4(sp)
800029c4: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800029c8: 93 45 fc ff  	not	a1, s8
800029cc: b3 85 a5 01  	add	a1, a1, s10
800029d0: 33 06 85 41  	sub	a2, a0, s8
800029d4: 33 05 87 01  	add	a0, a4, s8
800029d8: 63 e4 c5 00  	bltu	a1, a2, 0x800029e0 <_ntoa_format+0xc4>
800029dc: 93 05 06 00  	mv	a1, a2
800029e0: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800029e4: 93 05 00 03  	addi	a1, zero, 48
800029e8: 13 86 04 00  	mv	a2, s1
800029ec: 97 e0 ff ff  	auipc	ra, 1048574
800029f0: e7 80 c0 b6  	jalr	-1172(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800029f4: 33 8c 84 01  	add	s8, s1, s8
800029f8: 03 27 81 00  	lw	a4, 8(sp)
800029fc: 13 88 0a 00  	mv	a6, s5
80002a00: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002a04: 63 0c 04 04  	beqz	s0, 0x80002a5c <_ntoa_format+0x140>
80002a08: 33 35 2c 01  	sltu	a0, s8, s2
80002a0c: 93 45 15 00  	xori	a1, a0, 1
80002a10: 13 05 f0 01  	addi	a0, zero, 31
80002a14: 33 36 85 01  	sltu	a2, a0, s8
80002a18: b3 e5 c5 00  	or	a1, a1, a2
80002a1c: 63 90 05 04  	bnez	a1, 0x80002a5c <_ntoa_format+0x140>
80002a20: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002a24: 93 45 fc ff  	not	a1, s8
80002a28: b3 05 b9 00  	add	a1, s2, a1
80002a2c: 33 06 85 41  	sub	a2, a0, s8
80002a30: 33 05 87 01  	add	a0, a4, s8
80002a34: 63 e4 c5 00  	bltu	a1, a2, 0x80002a3c <_ntoa_format+0x120>
80002a38: 93 05 06 00  	mv	a1, a2
80002a3c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002a40: 93 05 00 03  	addi	a1, zero, 48
80002a44: 13 86 04 00  	mv	a2, s1
80002a48: 97 e0 ff ff  	auipc	ra, 1048574
80002a4c: e7 80 00 b1  	jalr	-1264(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002a50: 33 8c 84 01  	add	s8, s1, s8
80002a54: 03 27 81 00  	lw	a4, 8(sp)
80002a58: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80002a5c: 13 f5 0b 01  	andi	a0, s7, 16
80002a60: 63 02 05 0e  	beqz	a0, 0x80002b44 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002a64: 13 f5 0b 40  	andi	a0, s7, 1024
80002a68: 13 55 a5 00  	srli	a0, a0, 10
80002a6c: 93 35 1c 00  	seqz	a1, s8
80002a70: 33 65 b5 00  	or	a0, a0, a1
80002a74: 63 1e 05 02  	bnez	a0, 0x80002ab0 <_ntoa_format+0x194>
80002a78: 33 45 ac 01  	xor	a0, s8, s10
80002a7c: 33 35 a0 00  	snez	a0, a0
80002a80: b3 45 2c 01  	xor	a1, s8, s2
80002a84: b3 35 b0 00  	snez	a1, a1
80002a88: 33 75 b5 00  	and	a0, a0, a1
80002a8c: 63 12 05 02  	bnez	a0, 0x80002ab0 <_ntoa_format+0x194>
;       len--;
80002a90: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002a94: b3 35 a0 00  	snez	a1, a0
80002a98: 13 86 0c ff  	addi	a2, s9, -16
80002a9c: 13 36 16 00  	seqz	a2, a2
80002aa0: b3 75 b6 00  	and	a1, a2, a1
80002aa4: 63 84 05 00  	beqz	a1, 0x80002aac <_ntoa_format+0x190>
80002aa8: 13 05 ec ff  	addi	a0, s8, -2
80002aac: 13 0c 05 00  	mv	s8, a0
80002ab0: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ab4: 63 96 ac 02  	bne	s9, a0, 0x80002ae0 <_ntoa_format+0x1c4>
80002ab8: 13 f5 0b 02  	andi	a0, s7, 32
80002abc: 93 55 55 00  	srli	a1, a0, 5
80002ac0: 13 06 f0 01  	addi	a2, zero, 31
80002ac4: 33 36 86 01  	sltu	a2, a2, s8
80002ac8: b3 e5 c5 00  	or	a1, a1, a2
80002acc: 63 9e 05 02  	bnez	a1, 0x80002b08 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002ad0: 33 05 87 01  	add	a0, a4, s8
80002ad4: 13 0c 1c 00  	addi	s8, s8, 1
80002ad8: 93 05 80 07  	addi	a1, zero, 120
80002adc: 6f 00 c0 04  	j	0x80002b28 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ae0: 13 85 ec ff  	addi	a0, s9, -2
80002ae4: 33 35 a0 00  	snez	a0, a0
80002ae8: 93 05 f0 01  	addi	a1, zero, 31
80002aec: b3 b5 85 01  	sltu	a1, a1, s8
80002af0: 33 65 b5 00  	or	a0, a0, a1
80002af4: 63 1c 05 02  	bnez	a0, 0x80002b2c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002af8: 33 05 87 01  	add	a0, a4, s8
80002afc: 13 0c 1c 00  	addi	s8, s8, 1
80002b00: 93 05 20 06  	addi	a1, zero, 98
80002b04: 6f 00 40 02  	j	0x80002b28 <_ntoa_format+0x20c>
80002b08: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002b0c: 13 35 15 00  	seqz	a0, a0
80002b10: 93 c5 15 00  	xori	a1, a1, 1
80002b14: 33 65 b5 00  	or	a0, a0, a1
80002b18: 63 1a 05 00  	bnez	a0, 0x80002b2c <_ntoa_format+0x210>
;       buf[len++] = 'X';
80002b1c: 33 05 87 01  	add	a0, a4, s8
80002b20: 13 0c 1c 00  	addi	s8, s8, 1
80002b24: 93 05 80 05  	addi	a1, zero, 88
80002b28: 23 00 b5 00  	sb	a1, 0(a0)
80002b2c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002b30: 63 60 85 07  	bltu	a0, s8, 0x80002b90 <_ntoa_format+0x274>
;       buf[len++] = '0';
80002b34: 33 05 87 01  	add	a0, a4, s8
80002b38: 13 0c 1c 00  	addi	s8, s8, 1
80002b3c: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80002b40: 23 00 b5 00  	sb	a1, 0(a0)
80002b44: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002b48: 63 64 85 05  	bltu	a0, s8, 0x80002b90 <_ntoa_format+0x274>
;     if (negative) {
80002b4c: 63 0a 08 00  	beqz	a6, 0x80002b60 <_ntoa_format+0x244>
;       buf[len++] = '-';
80002b50: 33 05 87 01  	add	a0, a4, s8
80002b54: 13 0c 1c 00  	addi	s8, s8, 1
80002b58: 93 05 d0 02  	addi	a1, zero, 45
80002b5c: 6f 00 00 03  	j	0x80002b8c <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80002b60: 13 f5 4b 00  	andi	a0, s7, 4
80002b64: 63 1e 05 00  	bnez	a0, 0x80002b80 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80002b68: 13 f5 8b 00  	andi	a0, s7, 8
80002b6c: 63 02 05 02  	beqz	a0, 0x80002b90 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80002b70: 33 05 87 01  	add	a0, a4, s8
80002b74: 13 0c 1c 00  	addi	s8, s8, 1
80002b78: 93 05 00 02  	addi	a1, zero, 32
80002b7c: 6f 00 00 01  	j	0x80002b8c <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002b80: 33 05 87 01  	add	a0, a4, s8
80002b84: 13 0c 1c 00  	addi	s8, s8, 1
80002b88: 93 05 b0 02  	addi	a1, zero, 43
80002b8c: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002b90: 13 f5 3b 00  	andi	a0, s7, 3
80002b94: 33 35 a0 00  	snez	a0, a0
80002b98: b3 35 2c 01  	sltu	a1, s8, s2
80002b9c: 93 c5 15 00  	xori	a1, a1, 1
80002ba0: 33 65 b5 00  	or	a0, a0, a1
80002ba4: 13 04 0a 00  	mv	s0, s4
80002ba8: 63 16 05 02  	bnez	a0, 0x80002bd4 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80002bac: b3 04 89 41  	sub	s1, s2, s8
80002bb0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002bb4: 13 04 16 00  	addi	s0, a2, 1
80002bb8: 13 05 00 02  	addi	a0, zero, 32
80002bbc: 93 05 0b 00  	mv	a1, s6
80002bc0: 93 86 09 00  	mv	a3, s3
80002bc4: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002bc8: 93 84 f4 ff  	addi	s1, s1, -1
80002bcc: 13 06 04 00  	mv	a2, s0
80002bd0: e3 92 04 fe  	bnez	s1, 0x80002bb4 <_ntoa_format+0x298>
80002bd4: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002bd8: 63 0e 0c 02  	beqz	s8, 0x80002c14 <_ntoa_format+0x2f8>
80002bdc: 03 25 81 00  	lw	a0, 8(sp)
80002be0: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002be4: 33 85 8b 01  	add	a0, s7, s8
80002be8: 03 45 05 00  	lbu	a0, 0(a0)
80002bec: 93 0c fc ff  	addi	s9, s8, -1
80002bf0: 93 04 14 00  	addi	s1, s0, 1
80002bf4: 93 05 0b 00  	mv	a1, s6
80002bf8: 13 06 04 00  	mv	a2, s0
80002bfc: 93 86 09 00  	mv	a3, s3
80002c00: e7 80 0d 00  	jalr	s11
80002c04: 13 84 04 00  	mv	s0, s1
80002c08: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002c0c: e3 9c 0c fc  	bnez	s9, 0x80002be4 <_ntoa_format+0x2c8>
80002c10: 6f 00 80 00  	j	0x80002c18 <_ntoa_format+0x2fc>
80002c14: 93 04 04 00  	mv	s1, s0
80002c18: 33 85 44 41  	sub	a0, s1, s4
80002c1c: 33 35 25 01  	sltu	a0, a0, s2
80002c20: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002c24: 93 c5 1a 00  	xori	a1, s5, 1
80002c28: 33 e5 a5 00  	or	a0, a1, a0
80002c2c: 63 18 05 02  	bnez	a0, 0x80002c5c <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002c30: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002c34: 13 84 14 00  	addi	s0, s1, 1
80002c38: 13 05 00 02  	addi	a0, zero, 32
80002c3c: 93 05 0b 00  	mv	a1, s6
80002c40: 13 86 04 00  	mv	a2, s1
80002c44: 93 86 09 00  	mv	a3, s3
80002c48: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002c4c: 33 05 8a 00  	add	a0, s4, s0
80002c50: 93 04 04 00  	mv	s1, s0
80002c54: e3 60 25 ff  	bltu	a0, s2, 0x80002c34 <_ntoa_format+0x318>
80002c58: 6f 00 80 00  	j	0x80002c60 <_ntoa_format+0x344>
80002c5c: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002c60: 13 05 04 00  	mv	a0, s0
80002c64: 83 2d c1 00  	lw	s11, 12(sp)
80002c68: 03 2d 01 01  	lw	s10, 16(sp)
80002c6c: 83 2c 41 01  	lw	s9, 20(sp)
80002c70: 03 2c 81 01  	lw	s8, 24(sp)
80002c74: 83 2b c1 01  	lw	s7, 28(sp)
80002c78: 03 2b 01 02  	lw	s6, 32(sp)
80002c7c: 83 2a 41 02  	lw	s5, 36(sp)
80002c80: 03 2a 81 02  	lw	s4, 40(sp)
80002c84: 83 29 c1 02  	lw	s3, 44(sp)
80002c88: 03 29 01 03  	lw	s2, 48(sp)
80002c8c: 83 24 41 03  	lw	s1, 52(sp)
80002c90: 03 24 81 03  	lw	s0, 56(sp)
80002c94: 83 20 c1 03  	lw	ra, 60(sp)
80002c98: 13 01 01 04  	addi	sp, sp, 64
80002c9c: 67 80 00 00  	ret

80002ca0 <_snrt_init_team>:
;     team->base.root = team;
80002ca0: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002ca4: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002ca8: 03 23 87 00  	lw	t1, 8(a4)
80002cac: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002cb0: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002cb4: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002cb8: 83 22 47 00  	lw	t0, 4(a4)
80002cbc: 33 88 08 03  	mul	a6, a7, a6
80002cc0: 33 05 58 02  	mul	a0, a6, t0
80002cc4: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002cc8: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002ccc: 33 85 68 40  	sub	a0, a7, t1
80002cd0: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002cd4: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002cd8: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002cdc: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002ce0: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002ce4: 03 25 87 01  	lw	a0, 24(a4)
80002ce8: b7 05 00 10  	lui	a1, 65536
80002cec: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002cf0: 23 a2 07 02  	sw	zero, 36(a5)
80002cf4: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002cf8: 03 25 07 02  	lw	a0, 32(a4)
80002cfc: 83 25 47 02  	lw	a1, 36(a4)
80002d00: 23 a4 a7 02  	sw	a0, 40(a5)
80002d04: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002d08: 23 a8 c7 02  	sw	a2, 48(a5)
80002d0c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002d10: 23 ac d7 02  	sw	a3, 56(a5)
80002d14: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002d18: 03 25 07 01  	lw	a0, 16(a4)
80002d1c: 33 08 a6 00  	add	a6, a2, a0
80002d20: 93 05 08 19  	addi	a1, a6, 400
80002d24: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002d28: b3 32 a8 00  	sltu	t0, a6, a0
80002d2c: 93 55 15 00  	srli	a1, a0, 1
80002d30: 33 03 b8 00  	add	t1, a6, a1
80002d34: b3 35 03 01  	sltu	a1, t1, a6
80002d38: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80002d3c: 23 a0 67 04  	sw	t1, 64(a5)
80002d40: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002d44: 13 15 15 00  	slli	a0, a0, 1
80002d48: b3 05 c5 00  	add	a1, a0, a2
80002d4c: 33 b5 a5 00  	sltu	a0, a1, a0
80002d50: 23 a4 b7 04  	sw	a1, 72(a5)
80002d54: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80002d58: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80002d5c: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80002d60: 37 05 00 00  	lui	a0, 0
80002d64: 33 05 45 00  	add	a0, a0, tp
80002d68: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002d6c: 03 a5 07 00  	lw	a0, 0(a5)
80002d70: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002d74: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002d78: b3 85 b8 40  	sub	a1, a7, a1
80002d7c: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80002d80: b7 05 00 00  	lui	a1, 0
80002d84: b3 85 45 00  	add	a1, a1, tp
80002d88: 23 a2 a5 00  	sw	a0, 4(a1)
80002d8c: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80002d90: 33 85 a8 02  	mul	a0, a7, a0

80002d94 <.LBB0_1>:
80002d94: 97 15 00 00  	auipc	a1, 1
80002d98: 93 85 05 97  	addi	a1, a1, -1680
80002d9c: 33 05 b5 00  	add	a0, a0, a1
80002da0: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80002da4: 83 28 07 03  	lw	a7, 48(a4)
80002da8: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80002dac: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80002db0: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002db4: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80002db8: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80002dbc: 13 05 76 00  	addi	a0, a2, 7
80002dc0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002dc4: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002dc8: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80002dcc: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80002dd0: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002dd4: 03 a5 05 00  	lw	a0, 0(a1)
80002dd8: 13 05 f5 44  	addi	a0, a0, 1103
80002ddc: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80002de0: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002de4: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002de8: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80002dec: 37 05 00 00  	lui	a0, 0
80002df0: 33 05 45 00  	add	a0, a0, tp
80002df4: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002df8: 37 05 00 00  	lui	a0, 0
80002dfc: 33 05 45 00  	add	a0, a0, tp
80002e00: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002e04: 67 80 00 00  	ret

80002e08 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002e08: 37 05 00 00  	lui	a0, 0
80002e0c: 33 05 45 00  	add	a0, a0, tp
80002e10: 03 25 05 00  	lw	a0, 0(a0)
80002e14: 03 25 05 00  	lw	a0, 0(a0)
80002e18: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002e1c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002e20: 33 85 a5 40  	sub	a0, a1, a0
80002e24: 67 80 00 00  	ret

80002e28 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002e28: 37 05 00 00  	lui	a0, 0
80002e2c: 33 05 45 00  	add	a0, a0, tp
80002e30: 03 25 05 00  	lw	a0, 0(a0)
80002e34: 03 25 05 00  	lw	a0, 0(a0)
80002e38: 03 25 05 07  	lw	a0, 112(a0)
80002e3c: 67 80 00 00  	ret

80002e40 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80002e40: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002e44: 63 44 05 00  	bltz	a0, 0x80002e4c <__snrt_isr+0xc>
;         while (1)
80002e48: 6f 00 00 00  	j	0x80002e48 <__snrt_isr+0x8>
80002e4c: b7 05 00 80  	lui	a1, 524288
80002e50: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80002e54: 33 75 b5 00  	and	a0, a0, a1
80002e58: 13 05 d5 ff  	addi	a0, a0, -3
80002e5c: 93 55 25 00  	srli	a1, a0, 2
80002e60: 13 15 e5 01  	slli	a0, a0, 30
80002e64: 33 65 b5 00  	or	a0, a0, a1
80002e68: 93 05 40 00  	addi	a1, zero, 4
80002e6c: 63 0a b5 06  	beq	a0, a1, 0x80002ee0 <.LBB1_7+0x58>
80002e70: 63 1a 05 08  	bnez	a0, 0x80002f04 <.LBB1_7+0x7c>
80002e74: 37 05 00 00  	lui	a0, 0
80002e78: 33 05 45 00  	add	a0, a0, tp
80002e7c: 03 25 05 00  	lw	a0, 0(a0)
80002e80: 03 25 05 00  	lw	a0, 0(a0)
80002e84: f3 25 40 f1  	csrr	a1, mhartid

80002e88 <.LBB1_7>:
;     asm volatile(
80002e88: 17 16 00 00  	auipc	a2, 1
80002e8c: 13 06 86 87  	addi	a2, a2, -1928
80002e90: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80002e94: 93 06 06 00  	mv	a3, a2
80002e98: 93 02 10 00  	addi	t0, zero, 1
80002e9c: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80002ea0: e3 9e 02 fe  	bnez	t0, 0x80002e9c <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002ea4: b7 06 00 00  	lui	a3, 0
80002ea8: b3 86 46 00  	add	a3, a3, tp
80002eac: 83 a6 86 00  	lw	a3, 8(a3)
80002eb0: 33 85 a5 40  	sub	a0, a1, a0
80002eb4: 93 55 35 00  	srli	a1, a0, 3
80002eb8: 93 f5 c5 ff  	andi	a1, a1, -4
80002ebc: b3 85 b6 00  	add	a1, a3, a1
80002ec0: 83 a6 05 00  	lw	a3, 0(a1)
80002ec4: 13 07 10 00  	addi	a4, zero, 1
80002ec8: 33 15 a7 00  	sll	a0, a4, a0
80002ecc: 13 45 f5 ff  	not	a0, a0
80002ed0: 33 f5 a6 00  	and	a0, a3, a0
80002ed4: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002ed8: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002edc: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002ee0: 37 05 00 00  	lui	a0, 0
80002ee4: 33 05 45 00  	add	a0, a0, tp
80002ee8: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002eec: b7 05 00 00  	lui	a1, 0
80002ef0: b3 85 45 00  	add	a1, a1, tp
80002ef4: 83 a5 c5 00  	lw	a1, 12(a1)
80002ef8: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002efc: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002f00: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002f04: 67 80 00 00  	ret

Disassembly of section .init:

80002f10 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80002f10: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80002f14: 93 81 81 ef  	addi	gp, gp, -264

80002f18 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80002f18: 97 00 00 00  	auipc	ra, 0
80002f1c: e7 80 40 3c  	jalr	964(ra)

80002f20 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002f20: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002f24: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002f28: 97 00 00 00  	auipc	ra, 0
80002f2c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002f30: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002f34: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002f38: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002f3c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002f40: 63 92 02 02  	bnez	t0, 0x80002f64 <snrt.crt0.init_registers>

80002f44 <.Lpcrel_hi0>:
;     la        t0, _edata
80002f44: 97 02 00 00  	auipc	t0, 0
80002f48: 93 82 c2 7b  	addi	t0, t0, 1980

80002f4c <.Lpcrel_hi1>:
;     la        t1, _end
80002f4c: 17 03 00 00  	auipc	t1, 0
80002f50: 13 03 83 7b  	addi	t1, t1, 1976
;     bge       t0, t1, 2f
80002f54: 63 d8 62 00  	bge	t0, t1, 0x80002f64 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002f58: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002f5c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002f60: e3 cc 62 fe  	blt	t0, t1, 0x80002f58 <.Lpcrel_hi1+0xc>

80002f64 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002f64: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002f68: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002f6c: 63 82 02 08  	beqz	t0, 0x80002ff0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002f70: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002f74: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002f78: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002f7c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002f80: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002f84: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002f88: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80002f8c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002f90: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002f94: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002f98: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80002f9c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002fa0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002fa4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002fa8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80002fac: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002fb0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002fb4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002fb8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80002fbc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002fc0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002fc4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002fc8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80002fcc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002fd0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002fd4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002fd8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80002fdc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002fe0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002fe4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002fe8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80002fec: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002ff0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002ff0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002ff4: 23 a0 06 00  	sw	zero, 0(a3)

80002ff8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002ff8: 97 02 00 00  	auipc	t0, 0
80002ffc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003000: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003004: 93 87 06 00  	mv	a5, a3

80003008 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003008: 97 03 00 00  	auipc	t2, 0
8000300c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003010: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003014: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003018: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000301c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003020: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003024: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003028: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000302c: b3 86 66 40  	sub	a3, a3, t1

80003030 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003030: 97 02 00 00  	auipc	t0, 0
80003034: 93 82 82 5d  	addi	t0, t0, 1496

80003038 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003038: 17 03 00 00  	auipc	t1, 0
8000303c: 13 03 03 5d  	addi	t1, t1, 1488

80003040 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80003040: 97 03 00 00  	auipc	t2, 0
80003044: 93 83 83 5c  	addi	t2, t2, 1480

80003048 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80003048: 17 0e 00 00  	auipc	t3, 0
8000304c: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003050: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003054: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003058: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000305c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003060: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003064: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003068: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000306c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003070: 63 dc 62 00  	bge	t0, t1, 0x80003088 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003074: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003078: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000307c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003080: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80003084: e3 c8 62 fe  	blt	t0, t1, 0x80003074 <.Lpcrel_hi7+0x2c>

80003088 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80003088: 97 02 00 00  	auipc	t0, 0
8000308c: 93 82 02 58  	addi	t0, t0, 1408

80003090 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80003090: 17 03 00 00  	auipc	t1, 0
80003094: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
80003098: 63 da 62 00  	bge	t0, t1, 0x800030ac <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000309c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800030a0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800030a4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800030a8: e3 ca 72 fe  	blt	t0, t2, 0x8000309c <.Lpcrel_hi9+0xc>

800030ac <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800030ac: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800030b0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800030b4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800030b8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800030bc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800030c0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800030c4: 97 00 00 00  	auipc	ra, 0
800030c8: e7 80 c0 bd  	jalr	-1060(ra)
;     lw        a0, 0(sp)
800030cc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800030d0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800030d4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800030d8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800030dc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800030e0: 13 01 41 01  	addi	sp, sp, 20

800030e4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800030e4: 97 02 00 00  	auipc	t0, 0
800030e8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800030ec: 73 90 52 30  	csrw	mtvec, t0

800030f0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800030f0: 97 00 00 00  	auipc	ra, 0
800030f4: e7 80 00 22  	jalr	544(ra)

800030f8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800030f8: 97 d0 ff ff  	auipc	ra, 1048573
800030fc: e7 80 c0 53  	jalr	1340(ra)
;     mv        s0, a0 # store return value in s0
80003100: 13 04 05 00  	mv	s0, a0

80003104 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003104: 97 00 00 00  	auipc	ra, 0
80003108: e7 80 c0 20  	jalr	524(ra)

8000310c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000310c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003110: 97 00 00 00  	auipc	ra, 0
80003114: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003118: 73 00 50 10  	wfi	
;     j       1b
8000311c: 6f f0 df ff  	j	0x80003118 <snrt.crt0.end+0xc>

80003120 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003120: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003124: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003128: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000312c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003130: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003134: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003138: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000313c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80003140: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80003144: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80003148: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000314c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003150: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003154: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003158: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000315c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003160: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003164: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003168: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000316c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003170: 63 84 02 08  	beqz	t0, 0x800031f8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003174: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003178: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000317c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003180: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003184: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003188: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000318c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003190: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003194: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003198: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000319c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800031a0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800031a4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800031a8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800031ac: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800031b0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800031b4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800031b8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800031bc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800031c0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800031c4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800031c8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800031cc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800031d0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800031d4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800031d8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800031dc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800031e0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800031e4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800031e8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800031ec: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800031f0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800031f4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800031f8: 97 00 00 00  	auipc	ra, 0
800031fc: e7 80 80 c4  	jalr	-952(ra)
;     csrr    t0, misa
80003200: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003204: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003208: 63 84 02 08  	beqz	t0, 0x80003290 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000320c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003210: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003214: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003218: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000321c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003220: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003224: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003228: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000322c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003230: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003234: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003238: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000323c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003240: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003244: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003248: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000324c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003250: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003254: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003258: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000325c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003260: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003264: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003268: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000326c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003270: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003274: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003278: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000327c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003280: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003284: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003288: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000328c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003290: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003294: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003298: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000329c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800032a0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800032a4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800032a8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800032ac: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800032b0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800032b4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800032b8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800032bc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800032c0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800032c4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800032c8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800032cc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800032d0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800032d4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800032d8: 73 00 20 30  	mret	

800032dc <_snrt_init_core_info>:
;     mv        a4, a1
800032dc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800032e0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800032e4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800032e8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800032ec: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800032f0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800032f4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800032f8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800032fc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003300: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003304: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003308: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000330c: 67 80 00 00  	ret

80003310 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003310: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003314: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003318: 97 00 00 00  	auipc	ra, 0
8000331c: e7 80 00 b1  	jalr	-1264(ra)
;     lw        a0, 0(a0)
80003320: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003324: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003328: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000332c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003330: 67 80 00 00  	ret

80003334 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003334: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003338: 67 80 00 00  	ret

8000333c <_snrt_exit>:
;     addi      sp, sp, -8
8000333c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003340: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003344: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003348: 97 00 00 00  	auipc	ra, 0
8000334c: e7 80 00 ac  	jalr	-1344(ra)
;     lw        t0, 0(sp)
80003350: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003354: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003358: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000335c: 63 1c 05 00  	bnez	a0, 0x80003374 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003360: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003364: 93 e2 12 00  	ori	t0, t0, 1

80003368 <.Lpcrel_hi11>:
;     la        t1, tohost
80003368: 17 03 00 00  	auipc	t1, 0
8000336c: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
80003370: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003374: 67 80 00 00  	ret
