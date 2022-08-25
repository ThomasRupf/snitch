
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET-IS_RESTRICTED-3mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00004e64 80000000 TEXT
  2 .init             00000468 80004e70 TEXT
  3 .rodata           00000238 800052d8 DATA
  4 .htif             00000048 80005540 DATA
  5 .tdata            00000000 80005588 DATA
  6 .tbss             00000010 80005588 BSS
  7 .tbssend          00000000 80005598 DATA
  8 .sdata            000000e8 80005598 DATA
  9 .data             00000000 80005680 DATA
 10 .sbss             00000004 80005680 BSS
 11 .bss              00000000 80005684 BSS
 12 .dram             00000000 80005684 DATA
 13 .debug_info       000037fa 00000000 
 14 .debug_abbrev     00000c09 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       0000364e 00000000 
 17 .debug_loc        00003ff1 00000000 
 18 .debug_ranges     000003d0 00000000 
 19 .debug_str        00000b01 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c8 00000000 
 23 .symtab           00003470 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000094f 00000000 


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
80000634: 13 01 01 f2  	addi	sp, sp, -224
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 0c  	sw	ra, 220(sp)
8000063c: 23 2c 81 0c  	sw	s0, 216(sp)
80000640: 23 2a 91 0c  	sw	s1, 212(sp)
80000644: 23 28 21 0d  	sw	s2, 208(sp)
80000648: 23 26 31 0d  	sw	s3, 204(sp)
8000064c: 23 24 41 0d  	sw	s4, 200(sp)
80000650: 23 22 51 0d  	sw	s5, 196(sp)
80000654: 23 20 61 0d  	sw	s6, 192(sp)
80000658: 23 2e 71 0b  	sw	s7, 188(sp)
8000065c: 23 2c 81 0b  	sw	s8, 184(sp)
80000660: 23 2a 91 0b  	sw	s9, 180(sp)
80000664: 23 28 a1 0b  	sw	s10, 176(sp)
80000668: 23 26 b1 0b  	sw	s11, 172(sp)
8000066c: 27 30 81 0a  	fsd	fs0, 160(sp)
80000670: 27 3c 91 08  	fsd	fs1, 152(sp)
80000674: 27 38 21 09  	fsd	fs2, 144(sp)
80000678: 27 34 31 09  	fsd	fs3, 136(sp)
8000067c: 27 30 41 09  	fsd	fs4, 128(sp)
80000680: 27 3c 51 07  	fsd	fs5, 120(sp)
80000684: 27 38 61 07  	fsd	fs6, 112(sp)
80000688: 27 34 71 07  	fsd	fs7, 104(sp)
8000068c: 27 30 81 07  	fsd	fs8, 96(sp)
80000690: 27 3c 91 05  	fsd	fs9, 88(sp)
80000694: 27 38 a1 05  	fsd	fs10, 80(sp)
80000698: 27 34 b1 05  	fsd	fs11, 72(sp)
8000069c: 37 05 00 00  	lui	a0, 0
800006a0: 33 05 45 00  	add	a0, a0, tp
800006a4: 83 25 45 00  	lw	a1, 4(a0)
800006a8: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
800006ac: 63 84 05 00  	beqz	a1, 0x800006b4 <main+0x80>
800006b0: 6f 20 d0 08  	j	0x80002f3c <.LBB0_102+0x10>
;     return _snrt_team_current->root;
800006b4: 37 05 00 00  	lui	a0, 0
800006b8: 33 05 45 00  	add	a0, a0, tp
800006bc: 03 25 05 00  	lw	a0, 0(a0)
800006c0: 03 25 05 00  	lw	a0, 0(a0)
800006c4: b7 15 00 00  	lui	a1, 1
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c8: 83 27 85 05  	lw	a5, 88(a0)
800006cc: 83 26 05 05  	lw	a3, 80(a0)
800006d0: 03 27 45 05  	lw	a4, 84(a0)
800006d4: 93 84 85 8f  	addi	s1, a1, -1800
800006d8: b3 85 97 00  	add	a1, a5, s1
800006dc: 13 86 85 00  	addi	a2, a1, 8
800006e0: b3 05 d7 00  	add	a1, a4, a3
800006e4: 63 f6 c5 00  	bgeu	a1, a2, 0x800006f0 <main+0xbc>
800006e8: 93 06 00 00  	mv	a3, zero
800006ec: 6f 00 00 01  	j	0x800006fc <main+0xc8>
;     void *ret = (void *)alloc->next;
800006f0: 93 86 07 00  	mv	a3, a5
;     alloc->next += size;
800006f4: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f8: 93 07 06 00  	mv	a5, a2
800006fc: 33 86 f4 00  	add	a2, s1, a5
80000700: 13 06 86 10  	addi	a2, a2, 264
80000704: 63 f6 c5 00  	bgeu	a1, a2, 0x80000710 <main+0xdc>
80000708: 13 0c 00 00  	mv	s8, zero
8000070c: 6f 00 00 01  	j	0x8000071c <main+0xe8>
;     void *ret = (void *)alloc->next;
80000710: 13 8c 07 00  	mv	s8, a5
;     alloc->next += size;
80000714: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000718: 93 07 06 00  	mv	a5, a2
8000071c: 33 86 f4 00  	add	a2, s1, a5
80000720: 13 06 86 24  	addi	a2, a2, 584
80000724: 63 f6 c5 00  	bgeu	a1, a2, 0x80000730 <main+0xfc>
80000728: 93 0c 00 00  	mv	s9, zero
8000072c: 6f 00 00 01  	j	0x8000073c <main+0x108>
;     void *ret = (void *)alloc->next;
80000730: 93 8c 07 00  	mv	s9, a5
;     alloc->next += size;
80000734: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000738: 93 07 06 00  	mv	a5, a2
8000073c: 33 86 f4 00  	add	a2, s1, a5
80000740: 13 06 86 36  	addi	a2, a2, 872
80000744: 63 f6 c5 00  	bgeu	a1, a2, 0x80000750 <main+0x11c>
80000748: 13 07 00 00  	mv	a4, zero
8000074c: 6f 00 00 01  	j	0x8000075c <main+0x128>
;     void *ret = (void *)alloc->next;
80000750: 13 87 07 00  	mv	a4, a5
;     alloc->next += size;
80000754: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000758: 93 07 06 00  	mv	a5, a2
8000075c: 33 86 f4 00  	add	a2, s1, a5
80000760: 13 06 86 48  	addi	a2, a2, 1160
80000764: 63 f6 c5 00  	bgeu	a1, a2, 0x80000770 <main+0x13c>
80000768: 93 00 00 00  	mv	ra, zero
8000076c: 6f 00 00 01  	j	0x8000077c <main+0x148>
;     void *ret = (void *)alloc->next;
80000770: 93 80 07 00  	mv	ra, a5
;     alloc->next += size;
80000774: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000778: 93 07 06 00  	mv	a5, a2
8000077c: 33 86 f4 00  	add	a2, s1, a5
80000780: 13 06 86 78  	addi	a2, a2, 1928
80000784: 63 f6 c5 00  	bgeu	a1, a2, 0x80000790 <main+0x15c>
80000788: 13 04 00 00  	mv	s0, zero
8000078c: 6f 00 00 01  	j	0x8000079c <main+0x168>
;     void *ret = (void *)alloc->next;
80000790: 13 84 07 00  	mv	s0, a5
;     alloc->next += size;
80000794: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000798: 93 07 06 00  	mv	a5, a2
8000079c: 33 86 f4 00  	add	a2, s1, a5
800007a0: 13 06 86 20  	addi	a2, a2, 520
800007a4: 63 f6 c5 00  	bgeu	a1, a2, 0x800007b0 <main+0x17c>
800007a8: 93 07 00 00  	mv	a5, zero
800007ac: 6f 00 80 00  	j	0x800007b4 <main+0x180>
;     alloc->next += size;
800007b0: 23 2c c5 04  	sw	a2, 88(a0)
800007b4: 23 22 d1 02  	sw	a3, 36(sp)
800007b8: 23 24 f1 02  	sw	a5, 40(sp)
800007bc: 23 28 91 02  	sw	s1, 48(sp)
;   for (i = 0; i < ni; i++)
800007c0: 33 85 84 01  	add	a0, s1, s8
800007c4: 13 05 05 10  	addi	a0, a0, 256
800007c8: 93 55 4c 01  	srli	a1, s8, 20
800007cc: b3 35 b0 00  	snez	a1, a1
800007d0: 37 06 12 00  	lui	a2, 288
800007d4: 13 06 16 00  	addi	a2, a2, 1
800007d8: 33 35 c5 00  	sltu	a0, a0, a2
800007dc: 33 f5 a5 00  	and	a0, a1, a0

800007e0 <.LBB0_93>:
800007e0: 97 55 00 00  	auipc	a1, 5
800007e4: 93 85 85 db  	addi	a1, a1, -584
800007e8: 23 26 81 02  	sw	s0, 44(sp)
800007ec: 23 28 a1 00  	sw	a0, 16(sp)
800007f0: 23 20 e1 02  	sw	a4, 32(sp)
800007f4: 13 08 00 00  	mv	a6, zero
800007f8: 63 04 05 22  	beqz	a0, 0x80000a20 <.LBB0_93+0x240>
800007fc: 93 02 00 00  	mv	t0, zero
80000800: 13 03 00 00  	mv	t1, zero
80000804: 93 03 00 00  	mv	t2, zero
80000808: 13 0e 00 00  	mv	t3, zero
8000080c: 93 0e 00 00  	mv	t4, zero
80000810: 13 0f 00 00  	mv	t5, zero
80000814: 93 0f 00 00  	mv	t6, zero
80000818: 13 05 80 00  	addi	a0, zero, 8
8000081c: 13 06 30 01  	addi	a2, zero, 19
;   for (i = 0; i < ni; i++)
80000820: 93 06 00 04  	addi	a3, zero, 64
80000824: 13 07 00 0c  	addi	a4, zero, 192
80000828: ab 20 d6 00  	scfgw	a2, a3
8000082c: ab 20 e5 00  	scfgw	a0, a4
80000830: 13 06 f0 00  	addi	a2, zero, 15
80000834: 93 06 00 06  	addi	a3, zero, 96
80000838: 13 07 00 0e  	addi	a4, zero, 224
8000083c: ab 20 d6 00  	scfgw	a2, a3
80000840: ab 20 e5 00  	scfgw	a0, a4
80000844: 13 05 00 02  	addi	a0, zero, 32
80000848: ab 20 a0 00  	scfgw	zero, a0
8000084c: 2b 20 0c 3a  	scfgwi	s8, 928
80000850: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000854: 13 09 10 00  	addi	s2, zero, 1
80000858: 87 b1 05 00  	fld	ft3, 0(a1)
8000085c: 93 08 10 13  	addi	a7, zero, 305
80000860: 93 09 10 00  	addi	s3, zero, 1
80000864: 13 0a 10 00  	addi	s4, zero, 1
80000868: 93 06 10 00  	addi	a3, zero, 1
8000086c: 13 07 10 00  	addi	a4, zero, 1
80000870: 93 07 10 00  	addi	a5, zero, 1
80000874: 93 04 10 00  	addi	s1, zero, 1
80000878: 13 04 10 00  	addi	s0, zero, 1
8000087c: 13 05 10 00  	addi	a0, zero, 1
80000880: 93 05 10 00  	addi	a1, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000884: 53 80 31 22  	fmv.d	ft0, ft3
80000888: 13 76 f9 00  	andi	a2, s2, 15
8000088c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000890: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000894: 53 00 42 22  	fmv.d	ft0, ft4
80000898: 13 76 e8 00  	andi	a2, a6, 14
8000089c: 13 66 16 00  	ori	a2, a2, 1
800008a0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008a4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008a8: 53 00 42 22  	fmv.d	ft0, ft4
800008ac: 13 f6 f9 00  	andi	a2, s3, 15
800008b0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008b4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008b8: 53 00 42 22  	fmv.d	ft0, ft4
800008bc: 13 f6 c2 00  	andi	a2, t0, 12
800008c0: 13 66 16 00  	ori	a2, a2, 1
800008c4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008c8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008cc: 53 00 42 22  	fmv.d	ft0, ft4
800008d0: 13 76 fa 00  	andi	a2, s4, 15
800008d4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008d8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008dc: 53 00 42 22  	fmv.d	ft0, ft4
800008e0: 13 76 e3 00  	andi	a2, t1, 14
800008e4: 13 66 16 00  	ori	a2, a2, 1
800008e8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008ec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008f0: 53 00 42 22  	fmv.d	ft0, ft4
800008f4: 13 f6 f6 00  	andi	a2, a3, 15
800008f8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008fc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000900: 53 00 42 22  	fmv.d	ft0, ft4
80000904: 13 f6 83 00  	andi	a2, t2, 8
80000908: 13 66 16 00  	ori	a2, a2, 1
8000090c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000910: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000914: 53 00 42 22  	fmv.d	ft0, ft4
80000918: 13 76 f7 00  	andi	a2, a4, 15
8000091c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000920: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000924: 53 00 42 22  	fmv.d	ft0, ft4
80000928: 13 76 ee 00  	andi	a2, t3, 14
8000092c: 13 66 16 00  	ori	a2, a2, 1
80000930: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000934: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000938: 53 00 42 22  	fmv.d	ft0, ft4
8000093c: 13 f6 f7 00  	andi	a2, a5, 15
80000940: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000944: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000948: 53 00 42 22  	fmv.d	ft0, ft4
8000094c: 13 f6 ce 00  	andi	a2, t4, 12
80000950: 13 66 16 00  	ori	a2, a2, 1
80000954: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000958: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000095c: 53 00 42 22  	fmv.d	ft0, ft4
80000960: 13 f6 f4 00  	andi	a2, s1, 15
80000964: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000968: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000096c: 53 00 42 22  	fmv.d	ft0, ft4
80000970: 13 76 ef 00  	andi	a2, t5, 14
80000974: 13 66 16 00  	ori	a2, a2, 1
80000978: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000097c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000980: 53 00 42 22  	fmv.d	ft0, ft4
80000984: 13 76 f4 00  	andi	a2, s0, 15
80000988: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000098c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000990: 53 00 42 22  	fmv.d	ft0, ft4
80000994: 53 80 31 22  	fmv.d	ft0, ft3
80000998: 13 76 f5 00  	andi	a2, a0, 15
8000099c: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009a0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009a4: 53 00 42 22  	fmv.d	ft0, ft4
800009a8: 13 f6 ef 00  	andi	a2, t6, 14
800009ac: 13 66 16 00  	ori	a2, a2, 1
800009b0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009b4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009b8: 53 00 42 22  	fmv.d	ft0, ft4
800009bc: 13 f6 f5 00  	andi	a2, a1, 15
800009c0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009c4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009c8: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
800009cc: 93 85 35 01  	addi	a1, a1, 19
800009d0: 93 8f 2f 01  	addi	t6, t6, 18
800009d4: 13 05 15 01  	addi	a0, a0, 17
800009d8: 13 04 f4 00  	addi	s0, s0, 15
800009dc: 13 0f ef 00  	addi	t5, t5, 14
800009e0: 93 84 d4 00  	addi	s1, s1, 13
800009e4: 93 8e ce 00  	addi	t4, t4, 12
800009e8: 93 87 b7 00  	addi	a5, a5, 11
800009ec: 13 0e ae 00  	addi	t3, t3, 10
800009f0: 13 07 97 00  	addi	a4, a4, 9
800009f4: 93 83 83 00  	addi	t2, t2, 8
800009f8: 93 86 76 00  	addi	a3, a3, 7
800009fc: 13 03 63 00  	addi	t1, t1, 6
80000a00: 13 0a 5a 00  	addi	s4, s4, 5
80000a04: 93 82 42 00  	addi	t0, t0, 4
80000a08: 93 89 39 00  	addi	s3, s3, 3
80000a0c: 13 08 28 00  	addi	a6, a6, 2
80000a10: 13 09 19 00  	addi	s2, s2, 1
80000a14: e3 98 15 e7  	bne	a1, a7, 0x80000884 <.LBB0_93+0xa4>
80000a18: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000a1c: 6f 00 40 20  	j	0x80000c20 <.LBB0_93+0x440>
80000a20: 93 08 00 00  	mv	a7, zero
80000a24: 13 0e 00 00  	mv	t3, zero
80000a28: 93 0e 00 00  	mv	t4, zero
80000a2c: 13 0f 00 00  	mv	t5, zero
80000a30: 93 0f 00 00  	mv	t6, zero
80000a34: 13 09 00 00  	mv	s2, zero
80000a38: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a3c: 13 05 0c 05  	addi	a0, s8, 80
80000a40: 93 0a 10 00  	addi	s5, zero, 1
80000a44: 37 a6 89 3f  	lui	a2, 260250
80000a48: 93 02 96 99  	addi	t0, a2, -1639
80000a4c: 37 a6 99 99  	lui	a2, 629146
80000a50: 13 03 a6 99  	addi	t1, a2, -1638
80000a54: 87 b1 05 00  	fld	ft3, 0(a1)
80000a58: 93 03 10 13  	addi	t2, zero, 305
80000a5c: 13 0b 10 00  	addi	s6, zero, 1
80000a60: 93 0b 10 00  	addi	s7, zero, 1
80000a64: 13 0a 10 00  	addi	s4, zero, 1
80000a68: 93 07 10 00  	addi	a5, zero, 1
80000a6c: 93 04 10 00  	addi	s1, zero, 1
80000a70: 13 04 10 00  	addi	s0, zero, 1
80000a74: 93 05 10 00  	addi	a1, zero, 1
80000a78: 13 06 10 00  	addi	a2, zero, 1
80000a7c: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000a80: 23 2a 55 fa  	sw	t0, -76(a0)
80000a84: 23 28 65 fa  	sw	t1, -80(a0)
80000a88: 13 f7 f6 00  	andi	a4, a3, 15
80000a8c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a90: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a94: 27 3c 45 fa  	fsd	ft4, -72(a0)
80000a98: 13 77 e9 00  	andi	a4, s2, 14
80000a9c: 13 67 17 00  	ori	a4, a4, 1
80000aa0: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000aa4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000aa8: 27 30 45 fc  	fsd	ft4, -64(a0)
80000aac: 13 77 f4 00  	andi	a4, s0, 15
80000ab0: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ab4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ab8: 27 34 45 fc  	fsd	ft4, -56(a0)
80000abc: 13 f7 cf 00  	andi	a4, t6, 12
80000ac0: 13 67 17 00  	ori	a4, a4, 1
80000ac4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ac8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000acc: 27 38 45 fc  	fsd	ft4, -48(a0)
80000ad0: 13 f7 f7 00  	andi	a4, a5, 15
80000ad4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ad8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000adc: 27 3c 45 fc  	fsd	ft4, -40(a0)
80000ae0: 13 f7 ee 00  	andi	a4, t4, 14
80000ae4: 13 67 17 00  	ori	a4, a4, 1
80000ae8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000aec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000af0: 27 30 45 fe  	fsd	ft4, -32(a0)
80000af4: 13 f7 fb 00  	andi	a4, s7, 15
80000af8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000afc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b00: 27 34 45 fe  	fsd	ft4, -24(a0)
80000b04: 13 f7 88 00  	andi	a4, a7, 8
80000b08: 13 67 17 00  	ori	a4, a4, 1
80000b0c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b10: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b14: 27 38 45 fe  	fsd	ft4, -16(a0)
80000b18: 13 f7 fa 00  	andi	a4, s5, 15
80000b1c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b20: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b24: 27 3c 45 fe  	fsd	ft4, -8(a0)
80000b28: 13 77 e8 00  	andi	a4, a6, 14
80000b2c: 13 67 17 00  	ori	a4, a4, 1
80000b30: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b34: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b38: 27 30 45 00  	fsd	ft4, 0(a0)
80000b3c: 13 77 fb 00  	andi	a4, s6, 15
80000b40: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b44: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b48: 27 34 45 00  	fsd	ft4, 8(a0)
80000b4c: 13 77 ce 00  	andi	a4, t3, 12
80000b50: 13 67 17 00  	ori	a4, a4, 1
80000b54: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b58: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b5c: 27 38 45 00  	fsd	ft4, 16(a0)
80000b60: 13 77 fa 00  	andi	a4, s4, 15
80000b64: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b68: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b6c: 27 3c 45 00  	fsd	ft4, 24(a0)
80000b70: 13 77 ef 00  	andi	a4, t5, 14
80000b74: 13 67 17 00  	ori	a4, a4, 1
80000b78: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b7c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b80: 27 30 45 02  	fsd	ft4, 32(a0)
80000b84: 13 f7 f4 00  	andi	a4, s1, 15
80000b88: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b8c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b90: 27 34 45 02  	fsd	ft4, 40(a0)
80000b94: 23 2a 55 02  	sw	t0, 52(a0)
80000b98: 23 28 65 02  	sw	t1, 48(a0)
80000b9c: 13 f7 f5 00  	andi	a4, a1, 15
80000ba0: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ba4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ba8: 27 3c 45 02  	fsd	ft4, 56(a0)
80000bac: 13 f7 e9 00  	andi	a4, s3, 14
80000bb0: 13 67 17 00  	ori	a4, a4, 1
80000bb4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000bb8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bbc: 27 30 45 04  	fsd	ft4, 64(a0)
80000bc0: 13 77 f6 00  	andi	a4, a2, 15
80000bc4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000bc8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bcc: 27 34 45 04  	fsd	ft4, 72(a0)
;   for (i = 0; i < ni; i++)
80000bd0: 93 86 16 00  	addi	a3, a3, 1
80000bd4: 13 06 36 01  	addi	a2, a2, 19
80000bd8: 93 89 29 01  	addi	s3, s3, 18
80000bdc: 13 09 29 00  	addi	s2, s2, 2
80000be0: 93 85 15 01  	addi	a1, a1, 17
80000be4: 13 04 34 00  	addi	s0, s0, 3
80000be8: 93 8f 4f 00  	addi	t6, t6, 4
80000bec: 93 84 f4 00  	addi	s1, s1, 15
80000bf0: 93 87 57 00  	addi	a5, a5, 5
80000bf4: 13 0f ef 00  	addi	t5, t5, 14
80000bf8: 93 8e 6e 00  	addi	t4, t4, 6
80000bfc: 13 0a da 00  	addi	s4, s4, 13
80000c00: 93 8b 7b 00  	addi	s7, s7, 7
80000c04: 13 0e ce 00  	addi	t3, t3, 12
80000c08: 93 88 88 00  	addi	a7, a7, 8
80000c0c: 13 0b bb 00  	addi	s6, s6, 11
80000c10: 13 05 05 0a  	addi	a0, a0, 160
80000c14: 13 08 a8 00  	addi	a6, a6, 10
80000c18: 93 8a 9a 00  	addi	s5, s5, 9
80000c1c: e3 12 76 e6  	bne	a2, t2, 0x80000a80 <.LBB0_93+0x2a0>
80000c20: 23 2c 81 01  	sw	s8, 24(sp)
;   for (i = 0; i < nk; i++)
80000c24: 03 25 01 03  	lw	a0, 48(sp)
80000c28: 33 05 95 01  	add	a0, a0, s9
80000c2c: 13 05 05 24  	addi	a0, a0, 576
80000c30: 93 d5 4c 01  	srli	a1, s9, 20
80000c34: b3 35 b0 00  	snez	a1, a1
80000c38: 37 06 12 00  	lui	a2, 288
80000c3c: 13 06 16 00  	addi	a2, a2, 1
80000c40: 33 35 c5 00  	sltu	a0, a0, a2
80000c44: b3 f5 a5 00  	and	a1, a1, a0

80000c48 <.LBB0_94>:
80000c48: 17 55 00 00  	auipc	a0, 5
80000c4c: 13 05 85 95  	addi	a0, a0, -1704
80000c50: 23 26 b1 00  	sw	a1, 12(sp)
80000c54: 23 2a 91 01  	sw	s9, 20(sp)
80000c58: 63 86 05 2e  	beqz	a1, 0x80000f44 <.LBB0_95+0x28c>
80000c5c: 93 08 00 00  	mv	a7, zero
80000c60: 93 02 00 00  	mv	t0, zero
80000c64: 13 03 00 00  	mv	t1, zero
80000c68: 93 05 80 00  	addi	a1, zero, 8
80000c6c: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < nk; i++)
80000c70: 93 06 00 04  	addi	a3, zero, 64
80000c74: 13 07 00 0c  	addi	a4, zero, 192
80000c78: ab 20 d6 00  	scfgw	a2, a3
80000c7c: ab a0 e5 00  	scfgw	a1, a4
80000c80: 13 06 30 01  	addi	a2, zero, 19
80000c84: 93 06 00 06  	addi	a3, zero, 96
80000c88: 13 07 00 0e  	addi	a4, zero, 224
80000c8c: ab 20 d6 00  	scfgw	a2, a3
80000c90: ab a0 e5 00  	scfgw	a1, a4
80000c94: 93 05 00 02  	addi	a1, zero, 32
80000c98: ab 20 b0 00  	scfgw	zero, a1
80000c9c: 2b a0 0c 3a  	scfgwi	s9, 928
80000ca0: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000ca4: 13 0f 20 00  	addi	t5, zero, 2
80000ca8: b7 95 e3 38  	lui	a1, 233017
80000cac: 13 87 95 e3  	addi	a4, a1, -455
80000cb0: 93 07 20 01  	addi	a5, zero, 18
80000cb4: 87 31 05 00  	fld	ft3, 0(a0)

80000cb8 <.LBB0_95>:
80000cb8: 17 55 00 00  	auipc	a0, 5
80000cbc: 13 05 05 8f  	addi	a0, a0, -1808
80000cc0: 07 32 05 00  	fld	ft4, 0(a0)
80000cc4: 13 08 a0 02  	addi	a6, zero, 42
80000cc8: 93 03 20 00  	addi	t2, zero, 2
80000ccc: 93 0f 20 00  	addi	t6, zero, 2
80000cd0: 13 09 20 00  	addi	s2, zero, 2
80000cd4: 13 0e 20 00  	addi	t3, zero, 2
80000cd8: 93 09 20 00  	addi	s3, zero, 2
80000cdc: 93 0a 20 00  	addi	s5, zero, 2
80000ce0: 93 0e 20 00  	addi	t4, zero, 2
80000ce4: 13 0b 20 00  	addi	s6, zero, 2
80000ce8: 93 0b 20 00  	addi	s7, zero, 2
80000cec: 13 0c 20 00  	addi	s8, zero, 2
80000cf0: 13 0a 20 00  	addi	s4, zero, 2
80000cf4: 13 06 20 00  	addi	a2, zero, 2
80000cf8: 13 04 20 00  	addi	s0, zero, 2
80000cfc: 93 05 20 00  	addi	a1, zero, 2
80000d00: 93 06 20 00  	addi	a3, zero, 2
80000d04: 93 04 20 00  	addi	s1, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000d08: 33 35 ef 02  	mulhu	a0, t5, a4
80000d0c: 13 55 25 00  	srli	a0, a0, 2
80000d10: 33 05 f5 02  	mul	a0, a0, a5
80000d14: 33 05 af 40  	sub	a0, t5, a0
80000d18: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000d1c: 33 b5 e4 02  	mulhu	a0, s1, a4
80000d20: 13 55 25 00  	srli	a0, a0, 2
80000d24: 33 05 f5 02  	mul	a0, a0, a5
80000d28: 33 85 a4 40  	sub	a0, s1, a0
80000d2c: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000d30: 33 b5 e8 02  	mulhu	a0, a7, a4
80000d34: 13 55 25 00  	srli	a0, a0, 2
80000d38: 33 05 f5 02  	mul	a0, a0, a5
80000d3c: 33 85 a3 40  	sub	a0, t2, a0
80000d40: d3 03 05 d2  	fcvt.d.w	ft7, a0
80000d44: 33 b5 ef 02  	mulhu	a0, t6, a4
80000d48: 13 55 25 00  	srli	a0, a0, 2
80000d4c: 33 05 f5 02  	mul	a0, a0, a5
80000d50: 33 85 af 40  	sub	a0, t6, a0
80000d54: 53 05 05 d2  	fcvt.d.w	fa0, a0
80000d58: 33 35 e9 02  	mulhu	a0, s2, a4
80000d5c: 13 55 25 00  	srli	a0, a0, 2
80000d60: 33 05 f5 02  	mul	a0, a0, a5
80000d64: 33 05 a9 40  	sub	a0, s2, a0
80000d68: d3 05 05 d2  	fcvt.d.w	fa1, a0
80000d6c: 33 b5 e2 02  	mulhu	a0, t0, a4
80000d70: 13 55 25 00  	srli	a0, a0, 2
80000d74: 33 05 f5 02  	mul	a0, a0, a5
80000d78: 33 05 ae 40  	sub	a0, t3, a0
80000d7c: 53 06 05 d2  	fcvt.d.w	fa2, a0
80000d80: 33 b5 e9 02  	mulhu	a0, s3, a4
80000d84: 13 55 25 00  	srli	a0, a0, 2
80000d88: 33 05 f5 02  	mul	a0, a0, a5
80000d8c: 33 85 a9 40  	sub	a0, s3, a0
80000d90: d3 06 05 d2  	fcvt.d.w	fa3, a0
80000d94: 33 b5 ea 02  	mulhu	a0, s5, a4
80000d98: 13 55 25 00  	srli	a0, a0, 2
80000d9c: 33 05 f5 02  	mul	a0, a0, a5
80000da0: 33 85 aa 40  	sub	a0, s5, a0
80000da4: 53 07 05 d2  	fcvt.d.w	fa4, a0
80000da8: 33 35 e3 02  	mulhu	a0, t1, a4
80000dac: 13 55 25 00  	srli	a0, a0, 2
80000db0: 33 05 f5 02  	mul	a0, a0, a5
80000db4: 33 85 ae 40  	sub	a0, t4, a0
80000db8: d3 07 05 d2  	fcvt.d.w	fa5, a0
80000dbc: 33 35 eb 02  	mulhu	a0, s6, a4
80000dc0: 13 55 25 00  	srli	a0, a0, 2
80000dc4: 33 05 f5 02  	mul	a0, a0, a5
80000dc8: 33 05 ab 40  	sub	a0, s6, a0
80000dcc: 53 08 05 d2  	fcvt.d.w	fa6, a0
80000dd0: 33 b5 eb 02  	mulhu	a0, s7, a4
80000dd4: 13 55 25 00  	srli	a0, a0, 2
80000dd8: 33 05 f5 02  	mul	a0, a0, a5
80000ddc: 33 85 ab 40  	sub	a0, s7, a0
80000de0: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000de4: 33 35 ec 02  	mulhu	a0, s8, a4
80000de8: 13 55 25 00  	srli	a0, a0, 2
80000dec: 33 05 f5 02  	mul	a0, a0, a5
80000df0: 33 05 ac 40  	sub	a0, s8, a0
80000df4: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000df8: 33 35 ea 02  	mulhu	a0, s4, a4
80000dfc: 13 55 25 00  	srli	a0, a0, 2
80000e00: 33 05 f5 02  	mul	a0, a0, a5
80000e04: 33 05 aa 40  	sub	a0, s4, a0
80000e08: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000e0c: 33 35 e6 02  	mulhu	a0, a2, a4
80000e10: 13 55 25 00  	srli	a0, a0, 2
80000e14: 33 05 f5 02  	mul	a0, a0, a5
80000e18: 33 05 a6 40  	sub	a0, a2, a0
80000e1c: 53 0f 05 d2  	fcvt.d.w	ft10, a0
80000e20: 33 35 e4 02  	mulhu	a0, s0, a4
80000e24: 13 55 25 00  	srli	a0, a0, 2
80000e28: 33 05 f5 02  	mul	a0, a0, a5
80000e2c: 33 05 a4 40  	sub	a0, s0, a0
80000e30: d3 0f 05 d2  	fcvt.d.w	ft11, a0
80000e34: 33 b5 e5 02  	mulhu	a0, a1, a4
80000e38: 13 55 25 00  	srli	a0, a0, 2
80000e3c: 33 05 f5 02  	mul	a0, a0, a5
80000e40: 33 85 a5 40  	sub	a0, a1, a0
80000e44: 53 04 05 d2  	fcvt.d.w	fs0, a0
80000e48: 33 b5 e6 02  	mulhu	a0, a3, a4
80000e4c: 13 55 25 00  	srli	a0, a0, 2
80000e50: 33 05 f5 02  	mul	a0, a0, a5
80000e54: 33 85 a6 40  	sub	a0, a3, a0
80000e58: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000e5c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e60: 53 80 52 22  	fmv.d	ft0, ft5
80000e64: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e68: 53 80 52 22  	fmv.d	ft0, ft5
80000e6c: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e70: 53 80 52 22  	fmv.d	ft0, ft5
80000e74: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e78: 53 80 52 22  	fmv.d	ft0, ft5
80000e7c: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e80: 53 80 52 22  	fmv.d	ft0, ft5
80000e84: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e88: 53 80 52 22  	fmv.d	ft0, ft5
80000e8c: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e90: 53 80 52 22  	fmv.d	ft0, ft5
80000e94: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e98: 53 80 52 22  	fmv.d	ft0, ft5
80000e9c: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000ea0: 53 80 52 22  	fmv.d	ft0, ft5
80000ea4: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000ea8: 53 80 52 22  	fmv.d	ft0, ft5
80000eac: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000eb0: 53 80 52 22  	fmv.d	ft0, ft5
80000eb4: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000eb8: 53 80 52 22  	fmv.d	ft0, ft5
80000ebc: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000ec0: 53 80 52 22  	fmv.d	ft0, ft5
80000ec4: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000ec8: 53 80 52 22  	fmv.d	ft0, ft5
80000ecc: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000ed0: 53 80 52 22  	fmv.d	ft0, ft5
80000ed4: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000ed8: 53 80 52 22  	fmv.d	ft0, ft5
80000edc: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000ee0: 53 80 52 22  	fmv.d	ft0, ft5
80000ee4: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000ee8: 93 84 24 00  	addi	s1, s1, 2
80000eec: 93 86 16 01  	addi	a3, a3, 17
80000ef0: 93 85 05 01  	addi	a1, a1, 16
80000ef4: 13 04 f4 00  	addi	s0, s0, 15
80000ef8: 13 06 e6 00  	addi	a2, a2, 14
80000efc: 13 0a da 00  	addi	s4, s4, 13
80000f00: 13 0c cc 00  	addi	s8, s8, 12
80000f04: 93 8b bb 00  	addi	s7, s7, 11
80000f08: 13 0b ab 00  	addi	s6, s6, 10
80000f0c: 93 8e 9e 00  	addi	t4, t4, 9
80000f10: 13 03 93 00  	addi	t1, t1, 9
80000f14: 93 8a 8a 00  	addi	s5, s5, 8
80000f18: 93 89 79 00  	addi	s3, s3, 7
80000f1c: 13 0e 6e 00  	addi	t3, t3, 6
80000f20: 93 82 62 00  	addi	t0, t0, 6
80000f24: 13 09 59 00  	addi	s2, s2, 5
80000f28: 93 8f 4f 00  	addi	t6, t6, 4
80000f2c: 93 83 33 00  	addi	t2, t2, 3
80000f30: 93 88 38 00  	addi	a7, a7, 3
80000f34: 13 0f 1f 00  	addi	t5, t5, 1
80000f38: e3 98 04 dd  	bne	s1, a6, 0x80000d08 <.LBB0_95+0x50>
80000f3c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f40: 6f 00 80 2b  	j	0x800011f8 <.LBB0_95+0x540>
80000f44: 13 03 00 00  	mv	t1, zero
80000f48: 93 03 00 00  	mv	t2, zero
80000f4c: 13 0e 00 00  	mv	t3, zero
;   for (i = 0; i < nk; i++)
80000f50: 93 86 8c 04  	addi	a3, s9, 72
80000f54: 13 0f 20 00  	addi	t5, zero, 2
80000f58: b7 95 e3 38  	lui	a1, 233017
80000f5c: 93 87 95 e3  	addi	a5, a1, -455
80000f60: 93 04 20 01  	addi	s1, zero, 18
80000f64: 87 31 05 00  	fld	ft3, 0(a0)
80000f68: 37 c5 96 3f  	lui	a0, 260460
80000f6c: 13 08 c5 16  	addi	a6, a0, 364
80000f70: 37 75 c1 16  	lui	a0, 93207
80000f74: 93 02 75 c1  	addi	t0, a0, -1001
80000f78: 93 08 a0 02  	addi	a7, zero, 42
80000f7c: 93 0f 20 00  	addi	t6, zero, 2
80000f80: 93 0e 20 00  	addi	t4, zero, 2
80000f84: 93 09 20 00  	addi	s3, zero, 2
80000f88: 93 0a 20 00  	addi	s5, zero, 2
80000f8c: 13 0b 20 00  	addi	s6, zero, 2
80000f90: 93 0b 20 00  	addi	s7, zero, 2
80000f94: 13 0c 20 00  	addi	s8, zero, 2
80000f98: 13 09 20 00  	addi	s2, zero, 2
80000f9c: 13 0d 20 00  	addi	s10, zero, 2
80000fa0: 93 0d 20 00  	addi	s11, zero, 2
80000fa4: 13 0a 20 00  	addi	s4, zero, 2
80000fa8: 13 07 20 00  	addi	a4, zero, 2
80000fac: 13 04 20 00  	addi	s0, zero, 2
80000fb0: 93 0c 20 00  	addi	s9, zero, 2
80000fb4: 93 05 20 00  	addi	a1, zero, 2
80000fb8: 13 06 20 00  	addi	a2, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000fbc: 33 b5 f5 02  	mulhu	a0, a1, a5
80000fc0: 13 55 25 00  	srli	a0, a0, 2
80000fc4: 33 05 95 02  	mul	a0, a0, s1
80000fc8: 33 85 a5 40  	sub	a0, a1, a0
80000fcc: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000fd0: 33 35 f6 02  	mulhu	a0, a2, a5
80000fd4: 13 55 25 00  	srli	a0, a0, 2
80000fd8: 33 05 95 02  	mul	a0, a0, s1
80000fdc: 33 05 a6 40  	sub	a0, a2, a0
80000fe0: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000fe4: 33 35 fe 02  	mulhu	a0, t3, a5
80000fe8: 13 55 25 00  	srli	a0, a0, 2
80000fec: 33 05 95 02  	mul	a0, a0, s1
80000ff0: 33 85 ac 40  	sub	a0, s9, a0
80000ff4: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000ff8: 33 35 f7 02  	mulhu	a0, a4, a5
80000ffc: 13 55 25 00  	srli	a0, a0, 2
80001000: 33 05 95 02  	mul	a0, a0, s1
80001004: 33 05 a7 40  	sub	a0, a4, a0
80001008: d3 03 05 d2  	fcvt.d.w	ft7, a0
8000100c: 33 b5 fd 02  	mulhu	a0, s11, a5
80001010: 13 55 25 00  	srli	a0, a0, 2
80001014: 33 05 95 02  	mul	a0, a0, s1
80001018: 33 85 ad 40  	sub	a0, s11, a0
8000101c: 53 05 05 d2  	fcvt.d.w	fa0, a0
80001020: 33 b5 f3 02  	mulhu	a0, t2, a5
80001024: 13 55 25 00  	srli	a0, a0, 2
80001028: 33 05 95 02  	mul	a0, a0, s1
8000102c: 33 05 a9 40  	sub	a0, s2, a0
80001030: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001034: 33 b5 fb 02  	mulhu	a0, s7, a5
80001038: 13 55 25 00  	srli	a0, a0, 2
8000103c: 33 05 95 02  	mul	a0, a0, s1
80001040: 33 85 ab 40  	sub	a0, s7, a0
80001044: 53 06 05 d2  	fcvt.d.w	fa2, a0
80001048: 33 b5 fa 02  	mulhu	a0, s5, a5
8000104c: 13 55 25 00  	srli	a0, a0, 2
80001050: 33 05 95 02  	mul	a0, a0, s1
80001054: 33 85 aa 40  	sub	a0, s5, a0
80001058: d3 06 05 d2  	fcvt.d.w	fa3, a0
8000105c: 33 35 f3 02  	mulhu	a0, t1, a5
80001060: 13 55 25 00  	srli	a0, a0, 2
80001064: 33 05 95 02  	mul	a0, a0, s1
80001068: 33 85 ae 40  	sub	a0, t4, a0
8000106c: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001070: 33 35 ff 02  	mulhu	a0, t5, a5
80001074: 13 55 25 00  	srli	a0, a0, 2
80001078: 33 05 95 02  	mul	a0, a0, s1
8000107c: 33 05 af 40  	sub	a0, t5, a0
80001080: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001084: 33 b5 ff 02  	mulhu	a0, t6, a5
80001088: 13 55 25 00  	srli	a0, a0, 2
8000108c: 33 05 95 02  	mul	a0, a0, s1
80001090: 33 85 af 40  	sub	a0, t6, a0
80001094: 53 08 05 d2  	fcvt.d.w	fa6, a0
80001098: 33 b5 f9 02  	mulhu	a0, s3, a5
8000109c: 13 55 25 00  	srli	a0, a0, 2
800010a0: 33 05 95 02  	mul	a0, a0, s1
800010a4: 33 85 a9 40  	sub	a0, s3, a0
800010a8: d3 08 05 d2  	fcvt.d.w	fa7, a0
800010ac: 33 35 fb 02  	mulhu	a0, s6, a5
800010b0: 13 55 25 00  	srli	a0, a0, 2
800010b4: 33 05 95 02  	mul	a0, a0, s1
800010b8: 33 05 ab 40  	sub	a0, s6, a0
800010bc: 53 0e 05 d2  	fcvt.d.w	ft8, a0
800010c0: 33 35 fc 02  	mulhu	a0, s8, a5
800010c4: 13 55 25 00  	srli	a0, a0, 2
800010c8: 33 05 95 02  	mul	a0, a0, s1
800010cc: 33 05 ac 40  	sub	a0, s8, a0
800010d0: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800010d4: 33 35 fd 02  	mulhu	a0, s10, a5
800010d8: 13 55 25 00  	srli	a0, a0, 2
800010dc: 33 05 95 02  	mul	a0, a0, s1
800010e0: 33 05 ad 40  	sub	a0, s10, a0
800010e4: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800010e8: 33 35 fa 02  	mulhu	a0, s4, a5
800010ec: 13 55 25 00  	srli	a0, a0, 2
800010f0: 33 05 95 02  	mul	a0, a0, s1
800010f4: 33 05 aa 40  	sub	a0, s4, a0
800010f8: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800010fc: 33 35 f4 02  	mulhu	a0, s0, a5
80001100: 13 55 25 00  	srli	a0, a0, 2
80001104: 33 05 95 02  	mul	a0, a0, s1
80001108: 33 05 a4 40  	sub	a0, s0, a0
8000110c: 53 04 05 d2  	fcvt.d.w	fs0, a0
80001110: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001114: 27 bc 46 fa  	fsd	ft4, -72(a3)
80001118: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
8000111c: 27 b0 46 fc  	fsd	ft4, -64(a3)
80001120: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001124: 27 b4 46 fc  	fsd	ft4, -56(a3)
80001128: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
8000112c: 27 b8 46 fc  	fsd	ft4, -48(a3)
80001130: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001134: 27 bc 46 fc  	fsd	ft4, -40(a3)
80001138: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
8000113c: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001140: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001144: 27 b4 46 fe  	fsd	ft4, -24(a3)
80001148: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
8000114c: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001150: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001154: 27 bc 46 fe  	fsd	ft4, -8(a3)
80001158: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
8000115c: 27 b0 46 00  	fsd	ft4, 0(a3)
80001160: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001164: 27 b4 46 00  	fsd	ft4, 8(a3)
80001168: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
8000116c: 27 b8 46 00  	fsd	ft4, 16(a3)
80001170: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001174: 27 bc 46 00  	fsd	ft4, 24(a3)
80001178: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
8000117c: 27 b0 46 02  	fsd	ft4, 32(a3)
80001180: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001184: 27 b4 46 02  	fsd	ft4, 40(a3)
80001188: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000118c: 27 b8 46 02  	fsd	ft4, 48(a3)
80001190: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001194: 27 bc 46 02  	fsd	ft4, 56(a3)
80001198: 23 a2 06 05  	sw	a6, 68(a3)
8000119c: 23 a0 56 04  	sw	t0, 64(a3)
;   for (i = 0; i < nk; i++)
800011a0: 13 06 26 00  	addi	a2, a2, 2
800011a4: 93 85 15 00  	addi	a1, a1, 1
800011a8: 93 8c 3c 00  	addi	s9, s9, 3
800011ac: 13 0e 3e 00  	addi	t3, t3, 3
800011b0: 13 04 14 01  	addi	s0, s0, 17
800011b4: 13 07 47 00  	addi	a4, a4, 4
800011b8: 13 0a 0a 01  	addi	s4, s4, 16
800011bc: 93 8d 5d 00  	addi	s11, s11, 5
800011c0: 13 0d fd 00  	addi	s10, s10, 15
800011c4: 13 09 69 00  	addi	s2, s2, 6
800011c8: 93 83 63 00  	addi	t2, t2, 6
800011cc: 13 0c ec 00  	addi	s8, s8, 14
800011d0: 93 8b 7b 00  	addi	s7, s7, 7
800011d4: 13 0b db 00  	addi	s6, s6, 13
800011d8: 93 8a 8a 00  	addi	s5, s5, 8
800011dc: 93 89 c9 00  	addi	s3, s3, 12
800011e0: 93 8e 9e 00  	addi	t4, t4, 9
800011e4: 13 03 93 00  	addi	t1, t1, 9
800011e8: 93 8f bf 00  	addi	t6, t6, 11
800011ec: 93 86 06 09  	addi	a3, a3, 144
800011f0: 13 0f af 00  	addi	t5, t5, 10
800011f4: e3 14 16 dd  	bne	a2, a7, 0x80000fbc <.LBB0_95+0x304>
;   for (i = 0; i < nj; i++)
800011f8: 03 25 01 03  	lw	a0, 48(sp)
800011fc: 33 05 15 00  	add	a0, a0, ra
80001200: 13 05 05 48  	addi	a0, a0, 1152
80001204: 93 d5 40 01  	srli	a1, ra, 20
80001208: b3 35 b0 00  	snez	a1, a1
8000120c: 37 06 12 00  	lui	a2, 288
80001210: 13 06 16 00  	addi	a2, a2, 1
80001214: 33 35 c5 00  	sltu	a0, a0, a2
80001218: 33 f5 a5 00  	and	a0, a1, a0

8000121c <.LBB0_96>:
8000121c: 17 4f 00 00  	auipc	t5, 4
80001220: 13 0f 4f 39  	addi	t5, t5, 916
80001224: 13 8a 00 00  	mv	s4, ra
80001228: 23 24 a1 00  	sw	a0, 8(sp)
8000122c: 23 2e 11 00  	sw	ra, 28(sp)
80001230: 63 04 05 3a  	beqz	a0, 0x800015d8 <.LBB0_96+0x3bc>
80001234: 13 03 00 00  	mv	t1, zero
80001238: 93 0a 00 00  	mv	s5, zero
8000123c: 13 0b 00 00  	mv	s6, zero
80001240: 93 0b 00 00  	mv	s7, zero
80001244: 13 0c 00 00  	mv	s8, zero
80001248: 93 0c 00 00  	mv	s9, zero
8000124c: 13 0d 00 00  	mv	s10, zero
80001250: 93 0d 00 00  	mv	s11, zero
80001254: 93 00 00 00  	mv	ra, zero
80001258: 93 0f 00 00  	mv	t6, zero
8000125c: 13 05 00 00  	mv	a0, zero
80001260: 13 06 00 00  	mv	a2, zero
80001264: 13 07 00 00  	mv	a4, zero
80001268: 93 05 00 00  	mv	a1, zero
8000126c: 93 06 00 00  	mv	a3, zero
80001270: 93 07 00 00  	mv	a5, zero
80001274: 93 04 00 00  	mv	s1, zero
80001278: 13 08 00 00  	mv	a6, zero
8000127c: 93 08 00 00  	mv	a7, zero
80001280: 93 02 00 00  	mv	t0, zero
80001284: 13 09 00 00  	mv	s2, zero
80001288: 93 09 00 00  	mv	s3, zero
8000128c: 93 03 00 00  	mv	t2, zero
80001290: 13 0e 80 00  	addi	t3, zero, 8
80001294: 93 0e 70 01  	addi	t4, zero, 23
;   for (i = 0; i < nj; i++)
80001298: 13 04 00 04  	addi	s0, zero, 64
8000129c: ab a0 8e 00  	scfgw	t4, s0
800012a0: 13 04 00 0c  	addi	s0, zero, 192
800012a4: ab 20 8e 00  	scfgw	t3, s0
800012a8: 93 0e 10 01  	addi	t4, zero, 17
800012ac: 13 04 00 06  	addi	s0, zero, 96
800012b0: ab a0 8e 00  	scfgw	t4, s0
800012b4: 13 04 00 0e  	addi	s0, zero, 224
800012b8: ab 20 8e 00  	scfgw	t3, s0
800012bc: 13 04 00 02  	addi	s0, zero, 32
800012c0: ab 20 80 00  	scfgw	zero, s0
800012c4: 2b 20 0a 3a  	scfgwi	s4, 928
800012c8: 73 e4 00 7c  	csrrsi	s0, 1984, 1
800012cc: 37 94 2e ba  	lui	s0, 762601
800012d0: 13 0e 34 ba  	addi	t3, s0, -1117
800012d4: 13 0a a0 fe  	addi	s4, zero, -22
800012d8: 87 31 0f 00  	fld	ft3, 0(t5)
800012dc: 93 0e 60 01  	addi	t4, zero, 22
800012e0: 53 02 00 d2  	fcvt.d.w	ft4, zero
800012e4: 13 0f 40 1d  	addi	t5, zero, 468
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
800012e8: 33 34 c3 03  	mulhu	s0, t1, t3
800012ec: 13 54 44 00  	srli	s0, s0, 4
800012f0: 33 04 d4 03  	mul	s0, s0, t4
800012f4: 33 04 83 40  	sub	s0, t1, s0
800012f8: d3 02 04 d2  	fcvt.d.w	ft5, s0
800012fc: 33 b4 ca 03  	mulhu	s0, s5, t3
80001300: 13 54 44 00  	srli	s0, s0, 4
80001304: 33 04 d4 03  	mul	s0, s0, t4
80001308: 33 84 8a 40  	sub	s0, s5, s0
8000130c: 53 03 04 d2  	fcvt.d.w	ft6, s0
80001310: 33 34 cb 03  	mulhu	s0, s6, t3
80001314: 13 54 44 00  	srli	s0, s0, 4
80001318: 33 04 d4 03  	mul	s0, s0, t4
8000131c: 33 04 8b 40  	sub	s0, s6, s0
80001320: d3 03 04 d2  	fcvt.d.w	ft7, s0
80001324: 33 b4 cb 03  	mulhu	s0, s7, t3
80001328: 13 54 44 00  	srli	s0, s0, 4
8000132c: 33 04 d4 03  	mul	s0, s0, t4
80001330: 33 84 8b 40  	sub	s0, s7, s0
80001334: 53 05 04 d2  	fcvt.d.w	fa0, s0
80001338: 33 34 cc 03  	mulhu	s0, s8, t3
8000133c: 13 54 44 00  	srli	s0, s0, 4
80001340: 33 04 d4 03  	mul	s0, s0, t4
80001344: 33 04 8c 40  	sub	s0, s8, s0
80001348: d3 05 04 d2  	fcvt.d.w	fa1, s0
8000134c: 33 b4 cc 03  	mulhu	s0, s9, t3
80001350: 13 54 44 00  	srli	s0, s0, 4
80001354: 33 04 d4 03  	mul	s0, s0, t4
80001358: 33 84 8c 40  	sub	s0, s9, s0
8000135c: 53 06 04 d2  	fcvt.d.w	fa2, s0
80001360: 33 34 cd 03  	mulhu	s0, s10, t3
80001364: 13 54 44 00  	srli	s0, s0, 4
80001368: 33 04 d4 03  	mul	s0, s0, t4
8000136c: 33 04 8d 40  	sub	s0, s10, s0
80001370: d3 06 04 d2  	fcvt.d.w	fa3, s0
80001374: 33 b4 cd 03  	mulhu	s0, s11, t3
80001378: 13 54 44 00  	srli	s0, s0, 4
8000137c: 33 04 d4 03  	mul	s0, s0, t4
80001380: 33 84 8d 40  	sub	s0, s11, s0
80001384: 53 07 04 d2  	fcvt.d.w	fa4, s0
80001388: 33 b4 c0 03  	mulhu	s0, ra, t3
8000138c: 13 54 44 00  	srli	s0, s0, 4
80001390: 33 04 d4 03  	mul	s0, s0, t4
80001394: 33 84 80 40  	sub	s0, ra, s0
80001398: d3 07 04 d2  	fcvt.d.w	fa5, s0
8000139c: 33 b4 cf 03  	mulhu	s0, t6, t3
800013a0: 13 54 44 00  	srli	s0, s0, 4
800013a4: 33 04 d4 03  	mul	s0, s0, t4
800013a8: 33 84 8f 40  	sub	s0, t6, s0
800013ac: 53 08 04 d2  	fcvt.d.w	fa6, s0
800013b0: 33 34 c5 03  	mulhu	s0, a0, t3
800013b4: 13 54 44 00  	srli	s0, s0, 4
800013b8: 33 04 d4 03  	mul	s0, s0, t4
800013bc: 33 04 85 40  	sub	s0, a0, s0
800013c0: d3 08 04 d2  	fcvt.d.w	fa7, s0
800013c4: 33 34 c6 03  	mulhu	s0, a2, t3
800013c8: 13 54 44 00  	srli	s0, s0, 4
800013cc: 33 04 d4 03  	mul	s0, s0, t4
800013d0: 33 04 86 40  	sub	s0, a2, s0
800013d4: 53 0e 04 d2  	fcvt.d.w	ft8, s0
800013d8: 33 34 c7 03  	mulhu	s0, a4, t3
800013dc: 13 54 44 00  	srli	s0, s0, 4
800013e0: 33 04 d4 03  	mul	s0, s0, t4
800013e4: 33 04 87 40  	sub	s0, a4, s0
800013e8: d3 0e 04 d2  	fcvt.d.w	ft9, s0
800013ec: 33 b4 c5 03  	mulhu	s0, a1, t3
800013f0: 13 54 44 00  	srli	s0, s0, 4
800013f4: 33 04 d4 03  	mul	s0, s0, t4
800013f8: 33 84 85 40  	sub	s0, a1, s0
800013fc: 53 0f 04 d2  	fcvt.d.w	ft10, s0
80001400: 33 b4 c6 03  	mulhu	s0, a3, t3
80001404: 13 54 44 00  	srli	s0, s0, 4
80001408: 33 04 d4 03  	mul	s0, s0, t4
8000140c: 33 84 86 40  	sub	s0, a3, s0
80001410: d3 0f 04 d2  	fcvt.d.w	ft11, s0
80001414: 33 b4 c7 03  	mulhu	s0, a5, t3
80001418: 13 54 44 00  	srli	s0, s0, 4
8000141c: 33 04 d4 03  	mul	s0, s0, t4
80001420: 33 84 87 40  	sub	s0, a5, s0
80001424: 53 04 04 d2  	fcvt.d.w	fs0, s0
80001428: 33 b4 c4 03  	mulhu	s0, s1, t3
8000142c: 13 54 44 00  	srli	s0, s0, 4
80001430: 33 04 d4 03  	mul	s0, s0, t4
80001434: 33 84 84 40  	sub	s0, s1, s0
80001438: d3 04 04 d2  	fcvt.d.w	fs1, s0
8000143c: 33 34 c8 03  	mulhu	s0, a6, t3
80001440: 13 54 44 00  	srli	s0, s0, 4
80001444: 33 04 d4 03  	mul	s0, s0, t4
80001448: 33 04 88 40  	sub	s0, a6, s0
8000144c: 53 09 04 d2  	fcvt.d.w	fs2, s0
80001450: 33 b4 c8 03  	mulhu	s0, a7, t3
80001454: 13 54 44 00  	srli	s0, s0, 4
80001458: 33 04 d4 03  	mul	s0, s0, t4
8000145c: 33 84 88 40  	sub	s0, a7, s0
80001460: d3 09 04 d2  	fcvt.d.w	fs3, s0
80001464: 33 b4 c2 03  	mulhu	s0, t0, t3
80001468: 13 54 44 00  	srli	s0, s0, 4
8000146c: 33 04 d4 03  	mul	s0, s0, t4
80001470: 33 84 82 40  	sub	s0, t0, s0
80001474: 53 0a 04 d2  	fcvt.d.w	fs4, s0
80001478: 33 34 c9 03  	mulhu	s0, s2, t3
8000147c: 13 54 44 00  	srli	s0, s0, 4
80001480: 33 04 d4 03  	mul	s0, s0, t4
80001484: 33 04 89 40  	sub	s0, s2, s0
80001488: d3 0a 04 d2  	fcvt.d.w	fs5, s0
8000148c: 33 b4 c9 03  	mulhu	s0, s3, t3
80001490: 13 54 44 00  	srli	s0, s0, 4
80001494: 33 04 d4 03  	mul	s0, s0, t4
80001498: 33 84 89 40  	sub	s0, s3, s0
8000149c: 53 0b 04 d2  	fcvt.d.w	fs6, s0
800014a0: 33 b4 c3 03  	mulhu	s0, t2, t3
800014a4: 13 54 44 00  	srli	s0, s0, 4
800014a8: 33 04 44 03  	mul	s0, s0, s4
800014ac: 33 84 83 00  	add	s0, t2, s0
800014b0: d3 0b 04 d2  	fcvt.d.w	fs7, s0
800014b4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800014b8: 53 80 52 22  	fmv.d	ft0, ft5
800014bc: d3 72 33 12  	fmul.d	ft5, ft6, ft3
800014c0: 53 80 52 22  	fmv.d	ft0, ft5
800014c4: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
800014c8: 53 80 52 22  	fmv.d	ft0, ft5
800014cc: d3 72 35 12  	fmul.d	ft5, fa0, ft3
800014d0: 53 80 52 22  	fmv.d	ft0, ft5
800014d4: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
800014d8: 53 80 52 22  	fmv.d	ft0, ft5
800014dc: d3 72 36 12  	fmul.d	ft5, fa2, ft3
800014e0: 53 80 52 22  	fmv.d	ft0, ft5
800014e4: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
800014e8: 53 80 52 22  	fmv.d	ft0, ft5
800014ec: d3 72 37 12  	fmul.d	ft5, fa4, ft3
800014f0: 53 80 52 22  	fmv.d	ft0, ft5
800014f4: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
800014f8: 53 80 52 22  	fmv.d	ft0, ft5
800014fc: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001500: 53 80 52 22  	fmv.d	ft0, ft5
80001504: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001508: 53 80 52 22  	fmv.d	ft0, ft5
8000150c: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001510: 53 80 52 22  	fmv.d	ft0, ft5
80001514: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001518: 53 80 52 22  	fmv.d	ft0, ft5
8000151c: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001520: 53 80 52 22  	fmv.d	ft0, ft5
80001524: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001528: 53 80 52 22  	fmv.d	ft0, ft5
8000152c: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001530: 53 80 52 22  	fmv.d	ft0, ft5
80001534: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001538: 53 80 52 22  	fmv.d	ft0, ft5
8000153c: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001540: 53 80 52 22  	fmv.d	ft0, ft5
80001544: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001548: 53 80 52 22  	fmv.d	ft0, ft5
8000154c: 53 00 42 22  	fmv.d	ft0, ft4
80001550: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001554: 53 80 52 22  	fmv.d	ft0, ft5
80001558: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
8000155c: 53 80 52 22  	fmv.d	ft0, ft5
80001560: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80001564: 53 80 52 22  	fmv.d	ft0, ft5
80001568: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
8000156c: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < nj; i++)
80001570: 93 83 a3 01  	addi	t2, t2, 26
80001574: 93 89 99 01  	addi	s3, s3, 25
80001578: 13 09 89 01  	addi	s2, s2, 24
8000157c: 93 82 72 01  	addi	t0, t0, 23
80001580: 93 88 58 01  	addi	a7, a7, 21
80001584: 13 08 48 01  	addi	a6, a6, 20
80001588: 93 84 34 01  	addi	s1, s1, 19
8000158c: 93 87 27 01  	addi	a5, a5, 18
80001590: 93 86 16 01  	addi	a3, a3, 17
80001594: 93 85 05 01  	addi	a1, a1, 16
80001598: 13 07 f7 00  	addi	a4, a4, 15
8000159c: 13 06 e6 00  	addi	a2, a2, 14
800015a0: 13 05 d5 00  	addi	a0, a0, 13
800015a4: 93 8f cf 00  	addi	t6, t6, 12
800015a8: 93 80 b0 00  	addi	ra, ra, 11
800015ac: 93 8d ad 00  	addi	s11, s11, 10
800015b0: 13 0d 9d 00  	addi	s10, s10, 9
800015b4: 93 8c 8c 00  	addi	s9, s9, 8
800015b8: 13 0c 7c 00  	addi	s8, s8, 7
800015bc: 93 8b 6b 00  	addi	s7, s7, 6
800015c0: 13 0b 5b 00  	addi	s6, s6, 5
800015c4: 93 8a 4a 00  	addi	s5, s5, 4
800015c8: 13 03 33 00  	addi	t1, t1, 3
800015cc: e3 9e e3 d1  	bne	t2, t5, 0x800012e8 <.LBB0_96+0xcc>
800015d0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800015d4: 6f 00 c0 36  	j	0x80001940 <.LBB0_96+0x724>
800015d8: 13 08 00 00  	mv	a6, zero
800015dc: 93 08 00 00  	mv	a7, zero
800015e0: 93 02 00 00  	mv	t0, zero
800015e4: 13 03 00 00  	mv	t1, zero
800015e8: 93 03 00 00  	mv	t2, zero
800015ec: 13 09 00 00  	mv	s2, zero
800015f0: 93 09 00 00  	mv	s3, zero
800015f4: 93 0a 00 00  	mv	s5, zero
800015f8: 13 0b 00 00  	mv	s6, zero
800015fc: 93 0b 00 00  	mv	s7, zero
80001600: 13 0c 00 00  	mv	s8, zero
80001604: 13 0e 00 00  	mv	t3, zero
80001608: 93 0e 00 00  	mv	t4, zero
8000160c: 93 0c 00 00  	mv	s9, zero
80001610: 13 0d 00 00  	mv	s10, zero
80001614: 93 0d 00 00  	mv	s11, zero
80001618: 93 00 00 00  	mv	ra, zero
8000161c: 93 0f 00 00  	mv	t6, zero
80001620: 13 06 00 00  	mv	a2, zero
80001624: 93 06 00 00  	mv	a3, zero
80001628: 13 07 00 00  	mv	a4, zero
8000162c: 93 07 00 00  	mv	a5, zero
80001630: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nj; i++)
80001634: 13 04 0a 06  	addi	s0, s4, 96
80001638: 37 95 2e ba  	lui	a0, 762601
8000163c: 13 05 35 ba  	addi	a0, a0, -1117
80001640: 87 31 0f 00  	fld	ft3, 0(t5)
80001644: 13 0f 60 01  	addi	t5, zero, 22
80001648: 13 0a a0 fe  	addi	s4, zero, -22
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
8000164c: b3 b5 a7 02  	mulhu	a1, a5, a0
80001650: 93 d5 45 00  	srli	a1, a1, 4
80001654: b3 85 e5 03  	mul	a1, a1, t5
80001658: b3 85 b7 40  	sub	a1, a5, a1
8000165c: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001660: b3 35 a7 02  	mulhu	a1, a4, a0
80001664: 93 d5 45 00  	srli	a1, a1, 4
80001668: b3 85 e5 03  	mul	a1, a1, t5
8000166c: b3 05 b7 40  	sub	a1, a4, a1
80001670: d3 82 05 d2  	fcvt.d.w	ft5, a1
80001674: b3 35 a6 02  	mulhu	a1, a2, a0
80001678: 93 d5 45 00  	srli	a1, a1, 4
8000167c: b3 85 e5 03  	mul	a1, a1, t5
80001680: b3 05 b6 40  	sub	a1, a2, a1
80001684: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001688: b3 b5 a0 02  	mulhu	a1, ra, a0
8000168c: 93 d5 45 00  	srli	a1, a1, 4
80001690: b3 85 e5 03  	mul	a1, a1, t5
80001694: b3 85 b0 40  	sub	a1, ra, a1
80001698: d3 83 05 d2  	fcvt.d.w	ft7, a1
8000169c: b3 35 ad 02  	mulhu	a1, s10, a0
800016a0: 93 d5 45 00  	srli	a1, a1, 4
800016a4: b3 85 e5 03  	mul	a1, a1, t5
800016a8: b3 05 bd 40  	sub	a1, s10, a1
800016ac: 53 85 05 d2  	fcvt.d.w	fa0, a1
800016b0: b3 b5 ac 02  	mulhu	a1, s9, a0
800016b4: 93 d5 45 00  	srli	a1, a1, 4
800016b8: b3 85 e5 03  	mul	a1, a1, t5
800016bc: b3 85 bc 40  	sub	a1, s9, a1
800016c0: d3 85 05 d2  	fcvt.d.w	fa1, a1
800016c4: b3 35 ae 02  	mulhu	a1, t3, a0
800016c8: 93 d5 45 00  	srli	a1, a1, 4
800016cc: b3 85 e5 03  	mul	a1, a1, t5
800016d0: b3 05 be 40  	sub	a1, t3, a1
800016d4: 53 86 05 d2  	fcvt.d.w	fa2, a1
800016d8: b3 b5 ab 02  	mulhu	a1, s7, a0
800016dc: 93 d5 45 00  	srli	a1, a1, 4
800016e0: b3 85 e5 03  	mul	a1, a1, t5
800016e4: b3 85 bb 40  	sub	a1, s7, a1
800016e8: d3 86 05 d2  	fcvt.d.w	fa3, a1
800016ec: b3 b5 aa 02  	mulhu	a1, s5, a0
800016f0: 93 d5 45 00  	srli	a1, a1, 4
800016f4: b3 85 e5 03  	mul	a1, a1, t5
800016f8: b3 85 ba 40  	sub	a1, s5, a1
800016fc: 53 87 05 d2  	fcvt.d.w	fa4, a1
80001700: b3 35 a9 02  	mulhu	a1, s2, a0
80001704: 93 d5 45 00  	srli	a1, a1, 4
80001708: b3 85 e5 03  	mul	a1, a1, t5
8000170c: b3 05 b9 40  	sub	a1, s2, a1
80001710: d3 87 05 d2  	fcvt.d.w	fa5, a1
80001714: b3 35 a3 02  	mulhu	a1, t1, a0
80001718: 93 d5 45 00  	srli	a1, a1, 4
8000171c: b3 85 e5 03  	mul	a1, a1, t5
80001720: b3 05 b3 40  	sub	a1, t1, a1
80001724: 53 88 05 d2  	fcvt.d.w	fa6, a1
80001728: b3 35 a8 02  	mulhu	a1, a6, a0
8000172c: 93 d5 45 00  	srli	a1, a1, 4
80001730: b3 85 e5 03  	mul	a1, a1, t5
80001734: b3 05 b8 40  	sub	a1, a6, a1
80001738: d3 88 05 d2  	fcvt.d.w	fa7, a1
8000173c: b3 b5 a8 02  	mulhu	a1, a7, a0
80001740: 93 d5 45 00  	srli	a1, a1, 4
80001744: b3 85 e5 03  	mul	a1, a1, t5
80001748: b3 85 b8 40  	sub	a1, a7, a1
8000174c: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80001750: b3 b5 a2 02  	mulhu	a1, t0, a0
80001754: 93 d5 45 00  	srli	a1, a1, 4
80001758: b3 85 e5 03  	mul	a1, a1, t5
8000175c: b3 85 b2 40  	sub	a1, t0, a1
80001760: d3 8e 05 d2  	fcvt.d.w	ft9, a1
80001764: b3 b5 a3 02  	mulhu	a1, t2, a0
80001768: 93 d5 45 00  	srli	a1, a1, 4
8000176c: b3 85 e5 03  	mul	a1, a1, t5
80001770: b3 85 b3 40  	sub	a1, t2, a1
80001774: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001778: b3 b5 a9 02  	mulhu	a1, s3, a0
8000177c: 93 d5 45 00  	srli	a1, a1, 4
80001780: b3 85 e5 03  	mul	a1, a1, t5
80001784: b3 85 b9 40  	sub	a1, s3, a1
80001788: d3 8f 05 d2  	fcvt.d.w	ft11, a1
8000178c: b3 35 ab 02  	mulhu	a1, s6, a0
80001790: 93 d5 45 00  	srli	a1, a1, 4
80001794: b3 85 e5 03  	mul	a1, a1, t5
80001798: b3 05 bb 40  	sub	a1, s6, a1
8000179c: 53 84 05 d2  	fcvt.d.w	fs0, a1
800017a0: b3 35 ac 02  	mulhu	a1, s8, a0
800017a4: 93 d5 45 00  	srli	a1, a1, 4
800017a8: b3 85 e5 03  	mul	a1, a1, t5
800017ac: b3 05 bc 40  	sub	a1, s8, a1
800017b0: d3 84 05 d2  	fcvt.d.w	fs1, a1
800017b4: b3 b5 ae 02  	mulhu	a1, t4, a0
800017b8: 93 d5 45 00  	srli	a1, a1, 4
800017bc: b3 85 e5 03  	mul	a1, a1, t5
800017c0: b3 85 be 40  	sub	a1, t4, a1
800017c4: 53 89 05 d2  	fcvt.d.w	fs2, a1
800017c8: b3 b5 ad 02  	mulhu	a1, s11, a0
800017cc: 93 d5 45 00  	srli	a1, a1, 4
800017d0: b3 85 e5 03  	mul	a1, a1, t5
800017d4: b3 85 bd 40  	sub	a1, s11, a1
800017d8: d3 89 05 d2  	fcvt.d.w	fs3, a1
800017dc: b3 b5 af 02  	mulhu	a1, t6, a0
800017e0: 93 d5 45 00  	srli	a1, a1, 4
800017e4: b3 85 e5 03  	mul	a1, a1, t5
800017e8: b3 85 bf 40  	sub	a1, t6, a1
800017ec: 53 8a 05 d2  	fcvt.d.w	fs4, a1
800017f0: b3 b5 a6 02  	mulhu	a1, a3, a0
800017f4: 93 d5 45 00  	srli	a1, a1, 4
800017f8: b3 85 e5 03  	mul	a1, a1, t5
800017fc: b3 85 b6 40  	sub	a1, a3, a1
80001800: d3 8a 05 d2  	fcvt.d.w	fs5, a1
80001804: b3 b5 a4 02  	mulhu	a1, s1, a0
80001808: 93 d5 45 00  	srli	a1, a1, 4
8000180c: b3 85 45 03  	mul	a1, a1, s4
80001810: b3 85 b4 00  	add	a1, s1, a1
80001814: 53 8b 05 d2  	fcvt.d.w	fs6, a1
80001818: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000181c: 27 30 44 fa  	fsd	ft4, -96(s0)
80001820: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001824: 27 34 44 fa  	fsd	ft4, -88(s0)
80001828: 53 72 33 12  	fmul.d	ft4, ft6, ft3
8000182c: 27 38 44 fa  	fsd	ft4, -80(s0)
80001830: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001834: 27 3c 44 fa  	fsd	ft4, -72(s0)
80001838: 53 72 35 12  	fmul.d	ft4, fa0, ft3
8000183c: 27 30 44 fc  	fsd	ft4, -64(s0)
80001840: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001844: 27 34 44 fc  	fsd	ft4, -56(s0)
80001848: 53 72 36 12  	fmul.d	ft4, fa2, ft3
8000184c: 27 38 44 fc  	fsd	ft4, -48(s0)
80001850: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001854: 27 3c 44 fc  	fsd	ft4, -40(s0)
80001858: 53 72 37 12  	fmul.d	ft4, fa4, ft3
8000185c: 27 30 44 fe  	fsd	ft4, -32(s0)
80001860: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001864: 27 34 44 fe  	fsd	ft4, -24(s0)
80001868: 53 72 38 12  	fmul.d	ft4, fa6, ft3
8000186c: 27 38 44 fe  	fsd	ft4, -16(s0)
80001870: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001874: 27 3c 44 fe  	fsd	ft4, -8(s0)
80001878: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
8000187c: 27 30 44 00  	fsd	ft4, 0(s0)
80001880: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001884: 27 34 44 00  	fsd	ft4, 8(s0)
80001888: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
8000188c: 27 38 44 00  	fsd	ft4, 16(s0)
80001890: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001894: 27 3c 44 00  	fsd	ft4, 24(s0)
80001898: 53 72 34 12  	fmul.d	ft4, fs0, ft3
8000189c: 27 30 44 02  	fsd	ft4, 32(s0)
800018a0: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
800018a4: 27 34 44 02  	fsd	ft4, 40(s0)
800018a8: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800018ac: 27 38 44 02  	fsd	ft4, 48(s0)
800018b0: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
800018b4: 27 30 44 04  	fsd	ft4, 64(s0)
800018b8: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
800018bc: 27 34 44 04  	fsd	ft4, 72(s0)
800018c0: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
800018c4: 27 38 44 04  	fsd	ft4, 80(s0)
800018c8: 23 2e 04 02  	sw	zero, 60(s0)
800018cc: 23 2c 04 02  	sw	zero, 56(s0)
800018d0: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
800018d4: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < nj; i++)
800018d8: 93 84 a4 01  	addi	s1, s1, 26
800018dc: 93 87 37 00  	addi	a5, a5, 3
800018e0: 13 07 47 00  	addi	a4, a4, 4
800018e4: 93 86 96 01  	addi	a3, a3, 25
800018e8: 13 06 56 00  	addi	a2, a2, 5
800018ec: 93 8f 8f 01  	addi	t6, t6, 24
800018f0: 93 80 60 00  	addi	ra, ra, 6
800018f4: 93 8d 7d 01  	addi	s11, s11, 23
800018f8: 13 0d 7d 00  	addi	s10, s10, 7
800018fc: 93 8c 8c 00  	addi	s9, s9, 8
80001900: 93 8e 5e 01  	addi	t4, t4, 21
80001904: 13 0e 9e 00  	addi	t3, t3, 9
80001908: 13 0c 4c 01  	addi	s8, s8, 20
8000190c: 93 8b ab 00  	addi	s7, s7, 10
80001910: 13 0b 3b 01  	addi	s6, s6, 19
80001914: 93 8a ba 00  	addi	s5, s5, 11
80001918: 93 89 29 01  	addi	s3, s3, 18
8000191c: 13 09 c9 00  	addi	s2, s2, 12
80001920: 93 83 13 01  	addi	t2, t2, 17
80001924: 13 03 d3 00  	addi	t1, t1, 13
80001928: 93 82 02 01  	addi	t0, t0, 16
8000192c: 13 04 04 0c  	addi	s0, s0, 192
80001930: 93 88 f8 00  	addi	a7, a7, 15
80001934: 13 08 e8 00  	addi	a6, a6, 14
80001938: 93 05 40 1d  	addi	a1, zero, 468
8000193c: e3 98 b4 d0  	bne	s1, a1, 0x8000164c <.LBB0_96+0x430>
80001940: 83 27 c1 02  	lw	a5, 44(sp)
;   for (i = 0; i < nm; i++)
80001944: 03 25 01 03  	lw	a0, 48(sp)
80001948: 33 05 f5 00  	add	a0, a0, a5
8000194c: 13 05 05 78  	addi	a0, a0, 1920
80001950: 93 d5 47 01  	srli	a1, a5, 20
80001954: b3 35 b0 00  	snez	a1, a1
80001958: 37 06 12 00  	lui	a2, 288
8000195c: 13 06 16 00  	addi	a2, a2, 1
80001960: 33 35 c5 00  	sltu	a0, a0, a2
80001964: b3 f5 a5 00  	and	a1, a1, a0

80001968 <.LBB0_97>:
80001968: 17 45 00 00  	auipc	a0, 4
8000196c: 13 05 05 c5  	addi	a0, a0, -944
80001970: 23 22 b1 00  	sw	a1, 4(sp)
80001974: 63 8e 05 36  	beqz	a1, 0x80001cf0 <.LBB0_98+0x31c>
80001978: 93 08 00 00  	mv	a7, zero
8000197c: 93 02 00 00  	mv	t0, zero
80001980: 93 03 00 00  	mv	t2, zero
80001984: 93 05 80 00  	addi	a1, zero, 8
80001988: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < nm; i++)
8000198c: 93 06 00 04  	addi	a3, zero, 64
80001990: 13 07 00 0c  	addi	a4, zero, 192
80001994: ab 20 d6 00  	scfgw	a2, a3
80001998: ab a0 e5 00  	scfgw	a1, a4
8000199c: 13 06 70 01  	addi	a2, zero, 23
800019a0: 93 06 00 06  	addi	a3, zero, 96
800019a4: 13 07 00 0e  	addi	a4, zero, 224
800019a8: ab 20 d6 00  	scfgw	a2, a3
800019ac: ab a0 e5 00  	scfgw	a1, a4
800019b0: 93 05 00 02  	addi	a1, zero, 32
800019b4: ab 20 b0 00  	scfgw	zero, a1
800019b8: 2b a0 07 3a  	scfgwi	a5, 928
800019bc: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800019c0: 13 09 20 00  	addi	s2, zero, 2
800019c4: b7 d5 cc cc  	lui	a1, 838861
800019c8: 13 87 d5 cc  	addi	a4, a1, -819
800019cc: 93 07 40 01  	addi	a5, zero, 20
800019d0: 87 31 05 00  	fld	ft3, 0(a0)

800019d4 <.LBB0_98>:
800019d4: 17 45 00 00  	auipc	a0, 4
800019d8: 13 05 c5 be  	addi	a0, a0, -1044
800019dc: 07 32 05 00  	fld	ft4, 0(a0)
800019e0: 13 0a 20 03  	addi	s4, zero, 50
800019e4: 13 0e 20 00  	addi	t3, zero, 2
800019e8: 93 0e 20 00  	addi	t4, zero, 2
800019ec: 93 09 20 00  	addi	s3, zero, 2
800019f0: 93 0a 20 00  	addi	s5, zero, 2
800019f4: 13 0b 20 00  	addi	s6, zero, 2
800019f8: 93 0b 20 00  	addi	s7, zero, 2
800019fc: 13 0f 20 00  	addi	t5, zero, 2
80001a00: 13 0c 20 00  	addi	s8, zero, 2
80001a04: 93 0c 20 00  	addi	s9, zero, 2
80001a08: 13 0d 20 00  	addi	s10, zero, 2
80001a0c: 93 0d 20 00  	addi	s11, zero, 2
80001a10: 93 00 20 00  	addi	ra, zero, 2
80001a14: 93 0f 20 00  	addi	t6, zero, 2
80001a18: 93 04 20 00  	addi	s1, zero, 2
80001a1c: 93 06 20 00  	addi	a3, zero, 2
80001a20: 13 05 20 00  	addi	a0, zero, 2
80001a24: 93 05 20 00  	addi	a1, zero, 2
80001a28: 13 06 20 00  	addi	a2, zero, 2
80001a2c: 13 03 20 00  	addi	t1, zero, 2
80001a30: 13 08 20 00  	addi	a6, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001a34: 33 34 e8 02  	mulhu	s0, a6, a4
80001a38: 13 54 44 00  	srli	s0, s0, 4
80001a3c: 33 04 f4 02  	mul	s0, s0, a5
80001a40: 33 04 88 40  	sub	s0, a6, s0
80001a44: d3 02 04 d2  	fcvt.d.w	ft5, s0
80001a48: 33 34 e9 02  	mulhu	s0, s2, a4
80001a4c: 13 54 44 00  	srli	s0, s0, 4
80001a50: 33 04 f4 02  	mul	s0, s0, a5
80001a54: 33 04 89 40  	sub	s0, s2, s0
80001a58: 53 03 04 d2  	fcvt.d.w	ft6, s0
80001a5c: 33 b4 e8 02  	mulhu	s0, a7, a4
80001a60: 13 54 44 00  	srli	s0, s0, 4
80001a64: 33 04 f4 02  	mul	s0, s0, a5
80001a68: 33 04 8e 40  	sub	s0, t3, s0
80001a6c: d3 03 04 d2  	fcvt.d.w	ft7, s0
80001a70: 33 b4 e2 02  	mulhu	s0, t0, a4
80001a74: 13 54 44 00  	srli	s0, s0, 4
80001a78: 33 04 f4 02  	mul	s0, s0, a5
80001a7c: 33 84 8e 40  	sub	s0, t4, s0
80001a80: 53 05 04 d2  	fcvt.d.w	fa0, s0
80001a84: 33 b4 e9 02  	mulhu	s0, s3, a4
80001a88: 13 54 44 00  	srli	s0, s0, 4
80001a8c: 33 04 f4 02  	mul	s0, s0, a5
80001a90: 33 84 89 40  	sub	s0, s3, s0
80001a94: d3 05 04 d2  	fcvt.d.w	fa1, s0
80001a98: 33 b4 ea 02  	mulhu	s0, s5, a4
80001a9c: 13 54 44 00  	srli	s0, s0, 4
80001aa0: 33 04 f4 02  	mul	s0, s0, a5
80001aa4: 33 84 8a 40  	sub	s0, s5, s0
80001aa8: 53 06 04 d2  	fcvt.d.w	fa2, s0
80001aac: 33 34 eb 02  	mulhu	s0, s6, a4
80001ab0: 13 54 44 00  	srli	s0, s0, 4
80001ab4: 33 04 f4 02  	mul	s0, s0, a5
80001ab8: 33 04 8b 40  	sub	s0, s6, s0
80001abc: d3 06 04 d2  	fcvt.d.w	fa3, s0
80001ac0: 33 b4 eb 02  	mulhu	s0, s7, a4
80001ac4: 13 54 44 00  	srli	s0, s0, 4
80001ac8: 33 04 f4 02  	mul	s0, s0, a5
80001acc: 33 84 8b 40  	sub	s0, s7, s0
80001ad0: 53 07 04 d2  	fcvt.d.w	fa4, s0
80001ad4: 33 b4 e3 02  	mulhu	s0, t2, a4
80001ad8: 13 54 44 00  	srli	s0, s0, 4
80001adc: 33 04 f4 02  	mul	s0, s0, a5
80001ae0: 33 04 8f 40  	sub	s0, t5, s0
80001ae4: d3 07 04 d2  	fcvt.d.w	fa5, s0
80001ae8: 33 34 ec 02  	mulhu	s0, s8, a4
80001aec: 13 54 44 00  	srli	s0, s0, 4
80001af0: 33 04 f4 02  	mul	s0, s0, a5
80001af4: 33 04 8c 40  	sub	s0, s8, s0
80001af8: 53 08 04 d2  	fcvt.d.w	fa6, s0
80001afc: 33 b4 ec 02  	mulhu	s0, s9, a4
80001b00: 13 54 44 00  	srli	s0, s0, 4
80001b04: 33 04 f4 02  	mul	s0, s0, a5
80001b08: 33 84 8c 40  	sub	s0, s9, s0
80001b0c: d3 08 04 d2  	fcvt.d.w	fa7, s0
80001b10: 33 34 ed 02  	mulhu	s0, s10, a4
80001b14: 13 54 44 00  	srli	s0, s0, 4
80001b18: 33 04 f4 02  	mul	s0, s0, a5
80001b1c: 33 04 8d 40  	sub	s0, s10, s0
80001b20: 53 0e 04 d2  	fcvt.d.w	ft8, s0
80001b24: 33 b4 ed 02  	mulhu	s0, s11, a4
80001b28: 13 54 44 00  	srli	s0, s0, 4
80001b2c: 33 04 f4 02  	mul	s0, s0, a5
80001b30: 33 84 8d 40  	sub	s0, s11, s0
80001b34: d3 0e 04 d2  	fcvt.d.w	ft9, s0
80001b38: 33 b4 e0 02  	mulhu	s0, ra, a4
80001b3c: 13 54 44 00  	srli	s0, s0, 4
80001b40: 33 04 f4 02  	mul	s0, s0, a5
80001b44: 33 84 80 40  	sub	s0, ra, s0
80001b48: 53 0f 04 d2  	fcvt.d.w	ft10, s0
80001b4c: 33 b4 ef 02  	mulhu	s0, t6, a4
80001b50: 13 54 44 00  	srli	s0, s0, 4
80001b54: 33 04 f4 02  	mul	s0, s0, a5
80001b58: 33 84 8f 40  	sub	s0, t6, s0
80001b5c: d3 0f 04 d2  	fcvt.d.w	ft11, s0
80001b60: 33 b4 e4 02  	mulhu	s0, s1, a4
80001b64: 13 54 44 00  	srli	s0, s0, 4
80001b68: 33 04 f4 02  	mul	s0, s0, a5
80001b6c: 33 84 84 40  	sub	s0, s1, s0
80001b70: 53 04 04 d2  	fcvt.d.w	fs0, s0
80001b74: 33 b4 e6 02  	mulhu	s0, a3, a4
80001b78: 13 54 44 00  	srli	s0, s0, 4
80001b7c: 33 04 f4 02  	mul	s0, s0, a5
80001b80: 33 84 86 40  	sub	s0, a3, s0
80001b84: d3 04 04 d2  	fcvt.d.w	fs1, s0
80001b88: 33 34 e5 02  	mulhu	s0, a0, a4
80001b8c: 13 54 44 00  	srli	s0, s0, 4
80001b90: 33 04 f4 02  	mul	s0, s0, a5
80001b94: 33 04 85 40  	sub	s0, a0, s0
80001b98: 53 09 04 d2  	fcvt.d.w	fs2, s0
80001b9c: 33 b4 e5 02  	mulhu	s0, a1, a4
80001ba0: 13 54 44 00  	srli	s0, s0, 4
80001ba4: 33 04 f4 02  	mul	s0, s0, a5
80001ba8: 33 84 85 40  	sub	s0, a1, s0
80001bac: d3 09 04 d2  	fcvt.d.w	fs3, s0
80001bb0: 33 34 e6 02  	mulhu	s0, a2, a4
80001bb4: 13 54 44 00  	srli	s0, s0, 4
80001bb8: 33 04 f4 02  	mul	s0, s0, a5
80001bbc: 33 04 86 40  	sub	s0, a2, s0
80001bc0: 53 0a 04 d2  	fcvt.d.w	fs4, s0
80001bc4: 33 34 e3 02  	mulhu	s0, t1, a4
80001bc8: 13 54 44 00  	srli	s0, s0, 4
80001bcc: 33 04 f4 02  	mul	s0, s0, a5
80001bd0: 33 04 83 40  	sub	s0, t1, s0
80001bd4: d3 0a 04 d2  	fcvt.d.w	fs5, s0
80001bd8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001bdc: 53 80 52 22  	fmv.d	ft0, ft5
80001be0: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001be4: 53 80 52 22  	fmv.d	ft0, ft5
80001be8: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001bec: 53 80 52 22  	fmv.d	ft0, ft5
80001bf0: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001bf4: 53 80 52 22  	fmv.d	ft0, ft5
80001bf8: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001bfc: 53 80 52 22  	fmv.d	ft0, ft5
80001c00: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001c04: 53 80 52 22  	fmv.d	ft0, ft5
80001c08: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001c0c: 53 80 52 22  	fmv.d	ft0, ft5
80001c10: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001c14: 53 80 52 22  	fmv.d	ft0, ft5
80001c18: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001c1c: 53 80 52 22  	fmv.d	ft0, ft5
80001c20: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001c24: 53 80 52 22  	fmv.d	ft0, ft5
80001c28: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001c2c: 53 80 52 22  	fmv.d	ft0, ft5
80001c30: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001c34: 53 80 52 22  	fmv.d	ft0, ft5
80001c38: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001c3c: 53 80 52 22  	fmv.d	ft0, ft5
80001c40: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001c44: 53 80 52 22  	fmv.d	ft0, ft5
80001c48: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001c4c: 53 80 52 22  	fmv.d	ft0, ft5
80001c50: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001c54: 53 80 52 22  	fmv.d	ft0, ft5
80001c58: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001c5c: 53 80 52 22  	fmv.d	ft0, ft5
80001c60: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001c64: 53 80 52 22  	fmv.d	ft0, ft5
80001c68: 53 00 42 22  	fmv.d	ft0, ft4
80001c6c: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001c70: 53 80 52 22  	fmv.d	ft0, ft5
80001c74: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001c78: 53 80 52 22  	fmv.d	ft0, ft5
80001c7c: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001c80: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < nm; i++)
80001c84: 13 08 28 00  	addi	a6, a6, 2
80001c88: 13 03 73 01  	addi	t1, t1, 23
80001c8c: 13 06 66 01  	addi	a2, a2, 22
80001c90: 93 85 55 01  	addi	a1, a1, 21
80001c94: 13 05 35 01  	addi	a0, a0, 19
80001c98: 93 86 26 01  	addi	a3, a3, 18
80001c9c: 93 84 14 01  	addi	s1, s1, 17
80001ca0: 93 8f 0f 01  	addi	t6, t6, 16
80001ca4: 93 80 f0 00  	addi	ra, ra, 15
80001ca8: 93 8d ed 00  	addi	s11, s11, 14
80001cac: 13 0d dd 00  	addi	s10, s10, 13
80001cb0: 93 8c cc 00  	addi	s9, s9, 12
80001cb4: 13 0c bc 00  	addi	s8, s8, 11
80001cb8: 13 0f af 00  	addi	t5, t5, 10
80001cbc: 93 83 a3 00  	addi	t2, t2, 10
80001cc0: 93 8b 9b 00  	addi	s7, s7, 9
80001cc4: 13 0b 8b 00  	addi	s6, s6, 8
80001cc8: 93 8a 7a 00  	addi	s5, s5, 7
80001ccc: 93 89 69 00  	addi	s3, s3, 6
80001cd0: 93 8e 5e 00  	addi	t4, t4, 5
80001cd4: 93 82 52 00  	addi	t0, t0, 5
80001cd8: 13 0e 4e 00  	addi	t3, t3, 4
80001cdc: 93 88 48 00  	addi	a7, a7, 4
80001ce0: 13 09 39 00  	addi	s2, s2, 3
80001ce4: e3 18 48 d5  	bne	a6, s4, 0x80001a34 <.LBB0_98+0x60>
80001ce8: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001cec: 6f 00 80 37  	j	0x80002064 <.LBB0_98+0x690>
80001cf0: 13 04 00 00  	mv	s0, zero
80001cf4: 13 06 00 00  	mv	a2, zero
80001cf8: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nm; i++)
80001cfc: 93 86 87 05  	addi	a3, a5, 88
80001d00: 13 0f 20 00  	addi	t5, zero, 2
80001d04: b7 d5 cc cc  	lui	a1, 838861
80001d08: 93 87 d5 cc  	addi	a5, a1, -819
80001d0c: 13 09 40 01  	addi	s2, zero, 20
80001d10: 87 31 05 00  	fld	ft3, 0(a0)
80001d14: 37 85 94 3f  	lui	a0, 260424
80001d18: 13 05 15 ae  	addi	a0, a0, -1311
80001d1c: 23 2c a1 02  	sw	a0, 56(sp)
80001d20: 37 15 ae 47  	lui	a0, 293601
80001d24: 13 05 b5 47  	addi	a0, a0, 1147
80001d28: 23 2a a1 02  	sw	a0, 52(sp)
80001d2c: 93 09 20 00  	addi	s3, zero, 2
80001d30: 93 0a 20 00  	addi	s5, zero, 2
80001d34: 13 0b 20 00  	addi	s6, zero, 2
80001d38: 93 0b 20 00  	addi	s7, zero, 2
80001d3c: 13 0c 20 00  	addi	s8, zero, 2
80001d40: 13 05 20 00  	addi	a0, zero, 2
80001d44: 93 0c 20 00  	addi	s9, zero, 2
80001d48: 13 0d 20 00  	addi	s10, zero, 2
80001d4c: 93 0d 20 00  	addi	s11, zero, 2
80001d50: 93 00 20 00  	addi	ra, zero, 2
80001d54: 93 03 20 00  	addi	t2, zero, 2
80001d58: 13 0e 20 00  	addi	t3, zero, 2
80001d5c: 13 03 20 00  	addi	t1, zero, 2
80001d60: 93 08 20 00  	addi	a7, zero, 2
80001d64: 93 05 20 00  	addi	a1, zero, 2
80001d68: 93 0e 20 00  	addi	t4, zero, 2
80001d6c: 13 0a 20 00  	addi	s4, zero, 2
80001d70: 13 08 20 00  	addi	a6, zero, 2
80001d74: 93 02 20 00  	addi	t0, zero, 2
80001d78: 93 0f 20 00  	addi	t6, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001d7c: 23 2e 81 02  	sw	s0, 60(sp)
80001d80: 33 b7 ff 02  	mulhu	a4, t6, a5
80001d84: 13 57 47 00  	srli	a4, a4, 4
80001d88: 13 04 06 00  	mv	s0, a2
80001d8c: 13 06 05 00  	mv	a2, a0
80001d90: 13 05 0a 00  	mv	a0, s4
80001d94: 33 0a 27 03  	mul	s4, a4, s2
80001d98: 33 87 4f 41  	sub	a4, t6, s4
80001d9c: 13 0a 05 00  	mv	s4, a0
80001da0: 13 05 06 00  	mv	a0, a2
80001da4: 13 06 04 00  	mv	a2, s0
80001da8: 03 24 c1 03  	lw	s0, 60(sp)
80001dac: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001db0: 33 b7 f2 02  	mulhu	a4, t0, a5
80001db4: 13 57 47 00  	srli	a4, a4, 4
80001db8: 33 07 27 03  	mul	a4, a4, s2
80001dbc: 33 87 e2 40  	sub	a4, t0, a4
80001dc0: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001dc4: 33 b7 f4 02  	mulhu	a4, s1, a5
80001dc8: 13 57 47 00  	srli	a4, a4, 4
80001dcc: 33 07 27 03  	mul	a4, a4, s2
80001dd0: 33 07 ea 40  	sub	a4, s4, a4
80001dd4: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001dd8: 33 37 f6 02  	mulhu	a4, a2, a5
80001ddc: 13 57 47 00  	srli	a4, a4, 4
80001de0: 33 07 27 03  	mul	a4, a4, s2
80001de4: 33 87 e5 40  	sub	a4, a1, a4
80001de8: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001dec: 33 37 f3 02  	mulhu	a4, t1, a5
80001df0: 13 57 47 00  	srli	a4, a4, 4
80001df4: 33 07 27 03  	mul	a4, a4, s2
80001df8: 33 07 e3 40  	sub	a4, t1, a4
80001dfc: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001e00: 33 37 fe 02  	mulhu	a4, t3, a5
80001e04: 13 57 47 00  	srli	a4, a4, 4
80001e08: 33 07 27 03  	mul	a4, a4, s2
80001e0c: 33 07 ee 40  	sub	a4, t3, a4
80001e10: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001e14: 33 b7 f0 02  	mulhu	a4, ra, a5
80001e18: 13 57 47 00  	srli	a4, a4, 4
80001e1c: 33 07 27 03  	mul	a4, a4, s2
80001e20: 33 87 e0 40  	sub	a4, ra, a4
80001e24: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001e28: 33 37 fd 02  	mulhu	a4, s10, a5
80001e2c: 13 57 47 00  	srli	a4, a4, 4
80001e30: 33 07 27 03  	mul	a4, a4, s2
80001e34: 33 07 ed 40  	sub	a4, s10, a4
80001e38: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001e3c: 33 37 f4 02  	mulhu	a4, s0, a5
80001e40: 13 57 47 00  	srli	a4, a4, 4
80001e44: 33 07 27 03  	mul	a4, a4, s2
80001e48: 33 07 e5 40  	sub	a4, a0, a4
80001e4c: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001e50: 33 b7 fb 02  	mulhu	a4, s7, a5
80001e54: 13 57 47 00  	srli	a4, a4, 4
80001e58: 33 07 27 03  	mul	a4, a4, s2
80001e5c: 33 87 eb 40  	sub	a4, s7, a4
80001e60: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001e64: 33 b7 fa 02  	mulhu	a4, s5, a5
80001e68: 13 57 47 00  	srli	a4, a4, 4
80001e6c: 33 07 27 03  	mul	a4, a4, s2
80001e70: 33 87 ea 40  	sub	a4, s5, a4
80001e74: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001e78: 33 37 ff 02  	mulhu	a4, t5, a5
80001e7c: 13 57 47 00  	srli	a4, a4, 4
80001e80: 33 07 27 03  	mul	a4, a4, s2
80001e84: 33 07 ef 40  	sub	a4, t5, a4
80001e88: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001e8c: 33 b7 f9 02  	mulhu	a4, s3, a5
80001e90: 13 57 47 00  	srli	a4, a4, 4
80001e94: 33 07 27 03  	mul	a4, a4, s2
80001e98: 33 87 e9 40  	sub	a4, s3, a4
80001e9c: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001ea0: 33 37 fb 02  	mulhu	a4, s6, a5
80001ea4: 13 57 47 00  	srli	a4, a4, 4
80001ea8: 33 07 27 03  	mul	a4, a4, s2
80001eac: 33 07 eb 40  	sub	a4, s6, a4
80001eb0: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001eb4: 33 37 fc 02  	mulhu	a4, s8, a5
80001eb8: 13 57 47 00  	srli	a4, a4, 4
80001ebc: 33 07 27 03  	mul	a4, a4, s2
80001ec0: 33 07 ec 40  	sub	a4, s8, a4
80001ec4: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001ec8: 33 b7 fc 02  	mulhu	a4, s9, a5
80001ecc: 13 57 47 00  	srli	a4, a4, 4
80001ed0: 33 07 27 03  	mul	a4, a4, s2
80001ed4: 33 87 ec 40  	sub	a4, s9, a4
80001ed8: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001edc: 33 b7 fd 02  	mulhu	a4, s11, a5
80001ee0: 13 57 47 00  	srli	a4, a4, 4
80001ee4: 33 07 27 03  	mul	a4, a4, s2
80001ee8: 33 87 ed 40  	sub	a4, s11, a4
80001eec: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001ef0: 33 b7 f3 02  	mulhu	a4, t2, a5
80001ef4: 13 57 47 00  	srli	a4, a4, 4
80001ef8: 33 07 27 03  	mul	a4, a4, s2
80001efc: 33 87 e3 40  	sub	a4, t2, a4
80001f00: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001f04: 33 b7 f8 02  	mulhu	a4, a7, a5
80001f08: 13 57 47 00  	srli	a4, a4, 4
80001f0c: 33 07 27 03  	mul	a4, a4, s2
80001f10: 33 87 e8 40  	sub	a4, a7, a4
80001f14: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001f18: 33 b7 fe 02  	mulhu	a4, t4, a5
80001f1c: 13 57 47 00  	srli	a4, a4, 4
80001f20: 33 07 27 03  	mul	a4, a4, s2
80001f24: 33 87 ee 40  	sub	a4, t4, a4
80001f28: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001f2c: 33 37 f8 02  	mulhu	a4, a6, a5
80001f30: 13 57 47 00  	srli	a4, a4, 4
80001f34: 33 07 27 03  	mul	a4, a4, s2
80001f38: 33 07 e8 40  	sub	a4, a6, a4
80001f3c: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001f40: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001f44: 27 b4 46 fa  	fsd	ft4, -88(a3)
80001f48: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001f4c: 27 b8 46 fa  	fsd	ft4, -80(a3)
80001f50: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001f54: 27 bc 46 fa  	fsd	ft4, -72(a3)
80001f58: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001f5c: 27 b0 46 fc  	fsd	ft4, -64(a3)
80001f60: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001f64: 27 b4 46 fc  	fsd	ft4, -56(a3)
80001f68: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001f6c: 27 b8 46 fc  	fsd	ft4, -48(a3)
80001f70: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001f74: 27 bc 46 fc  	fsd	ft4, -40(a3)
80001f78: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001f7c: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001f80: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001f84: 27 b4 46 fe  	fsd	ft4, -24(a3)
80001f88: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001f8c: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001f90: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001f94: 27 bc 46 fe  	fsd	ft4, -8(a3)
80001f98: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001f9c: 27 b0 46 00  	fsd	ft4, 0(a3)
80001fa0: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001fa4: 27 b4 46 00  	fsd	ft4, 8(a3)
80001fa8: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001fac: 27 b8 46 00  	fsd	ft4, 16(a3)
80001fb0: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001fb4: 27 bc 46 00  	fsd	ft4, 24(a3)
80001fb8: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001fbc: 27 b0 46 02  	fsd	ft4, 32(a3)
80001fc0: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001fc4: 27 b4 46 02  	fsd	ft4, 40(a3)
80001fc8: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001fcc: 27 b8 46 02  	fsd	ft4, 48(a3)
80001fd0: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001fd4: 27 b0 46 04  	fsd	ft4, 64(a3)
80001fd8: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001fdc: 27 b4 46 04  	fsd	ft4, 72(a3)
80001fe0: 03 27 81 03  	lw	a4, 56(sp)
80001fe4: 23 ae e6 02  	sw	a4, 60(a3)
80001fe8: 03 27 41 03  	lw	a4, 52(sp)
80001fec: 23 ac e6 02  	sw	a4, 56(a3)
80001ff0: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001ff4: 27 b8 46 04  	fsd	ft4, 80(a3)
;   for (i = 0; i < nm; i++)
80001ff8: 93 8f 2f 00  	addi	t6, t6, 2
80001ffc: 93 82 32 00  	addi	t0, t0, 3
80002000: 13 08 78 01  	addi	a6, a6, 23
80002004: 13 0a 4a 00  	addi	s4, s4, 4
80002008: 93 84 44 00  	addi	s1, s1, 4
8000200c: 93 8e 6e 01  	addi	t4, t4, 22
80002010: 93 85 55 00  	addi	a1, a1, 5
80002014: 13 06 56 00  	addi	a2, a2, 5
80002018: 93 88 58 01  	addi	a7, a7, 21
8000201c: 13 03 63 00  	addi	t1, t1, 6
80002020: 13 0e 7e 00  	addi	t3, t3, 7
80002024: 93 83 33 01  	addi	t2, t2, 19
80002028: 93 80 80 00  	addi	ra, ra, 8
8000202c: 93 8d 2d 01  	addi	s11, s11, 18
80002030: 13 0d 9d 00  	addi	s10, s10, 9
80002034: 93 8c 1c 01  	addi	s9, s9, 17
80002038: 13 05 a5 00  	addi	a0, a0, 10
8000203c: 13 04 a4 00  	addi	s0, s0, 10
80002040: 13 0c 0c 01  	addi	s8, s8, 16
80002044: 93 8b bb 00  	addi	s7, s7, 11
80002048: 13 0b fb 00  	addi	s6, s6, 15
8000204c: 93 8a ca 00  	addi	s5, s5, 12
80002050: 93 89 e9 00  	addi	s3, s3, 14
80002054: 93 86 06 0b  	addi	a3, a3, 176
80002058: 13 0f df 00  	addi	t5, t5, 13
8000205c: 13 07 20 03  	addi	a4, zero, 50
80002060: e3 9e ef d0  	bne	t6, a4, 0x80001d7c <.LBB0_98+0x3a8>
;  for (i = 0; i < ni; i++)
80002064: 03 25 01 01  	lw	a0, 16(sp)
80002068: 83 25 c1 00  	lw	a1, 12(sp)
8000206c: 33 75 b5 00  	and	a0, a0, a1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002070: 73 28 00 b0  	csrr	a6, mcycle
80002074: 63 06 05 4c  	beqz	a0, 0x80002540 <.LBB0_99+0xe0>
80002078: 13 05 00 00  	mv	a0, zero
8000207c: 93 05 80 00  	addi	a1, zero, 8
80002080: 13 06 30 01  	addi	a2, zero, 19
;  for (i = 0; i < ni; i++)
80002084: 93 06 00 04  	addi	a3, zero, 64
80002088: 13 07 00 0c  	addi	a4, zero, 192
8000208c: ab 20 d6 00  	scfgw	a2, a3
80002090: ab a0 e5 00  	scfgw	a1, a4
80002094: 93 06 80 f6  	addi	a3, zero, -152
80002098: 13 07 10 01  	addi	a4, zero, 17
8000209c: 93 07 00 06  	addi	a5, zero, 96
800020a0: 93 04 00 0e  	addi	s1, zero, 224
800020a4: ab 20 f7 00  	scfgw	a4, a5
800020a8: ab a0 96 00  	scfgw	a3, s1
800020ac: 93 06 f0 00  	addi	a3, zero, 15
800020b0: 93 07 00 08  	addi	a5, zero, 128
800020b4: 93 04 00 10  	addi	s1, zero, 256
800020b8: ab a0 f6 00  	scfgw	a3, a5
800020bc: ab a0 95 00  	scfgw	a1, s1
800020c0: 93 05 00 02  	addi	a1, zero, 32
800020c4: ab 20 b0 00  	scfgw	zero, a1
800020c8: 83 25 81 01  	lw	a1, 24(sp)
800020cc: 2b a0 05 34  	scfgwi	a1, 832
800020d0: 93 05 00 09  	addi	a1, zero, 144
800020d4: 93 07 10 00  	addi	a5, zero, 1
800020d8: 93 84 07 04  	addi	s1, a5, 64
800020dc: 13 84 07 0c  	addi	s0, a5, 192
800020e0: ab 20 96 00  	scfgw	a2, s1
800020e4: ab a0 85 00  	scfgw	a1, s0
800020e8: 37 f6 ff ff  	lui	a2, 1048575
800020ec: 93 04 86 55  	addi	s1, a2, 1368
800020f0: 13 84 07 06  	addi	s0, a5, 96
800020f4: ab 20 87 00  	scfgw	a4, s0
800020f8: 13 87 07 0e  	addi	a4, a5, 224
800020fc: ab a0 e4 00  	scfgw	s1, a4
80002100: 13 06 86 4c  	addi	a2, a2, 1224
80002104: 13 87 07 08  	addi	a4, a5, 128
80002108: 93 84 07 10  	addi	s1, a5, 256
8000210c: ab a0 e6 00  	scfgw	a3, a4
80002110: ab 20 96 00  	scfgw	a2, s1
80002114: 13 86 07 02  	addi	a2, a5, 32
80002118: ab 20 c0 00  	scfgw	zero, a2
8000211c: 03 26 41 01  	lw	a2, 20(sp)
80002120: 2b 20 16 34  	scfgwi	a2, 833
80002124: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80002128: 13 06 00 01  	addi	a2, zero, 16
8000212c: 03 2a 41 02  	lw	s4, 36(sp)
80002130: 93 06 0a 00  	mv	a3, s4
80002134: 83 2a 01 02  	lw	s5, 32(sp)
80002138: 03 2b c1 01  	lw	s6, 28(sp)
8000213c: 83 2b c1 02  	lw	s7, 44(sp)
80002140: 13 07 00 00  	mv	a4, zero
;    E[i][j] += A[i][k] * B[k][j];
80002144: d3 f1 00 12  	fmul.d	ft3, ft1, ft0
80002148: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000214c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002150: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002154: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002158: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000215c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002160: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002164: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002168: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000216c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002170: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002174: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002178: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000217c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002180: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002184: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002188: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000218c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002190: b3 87 e6 00  	add	a5, a3, a4
80002194: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
;     for (j = 0; j < nj; j++)
80002198: 13 07 87 00  	addi	a4, a4, 8
;    E[i][j] += A[i][k] * B[k][j];
8000219c: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nj; j++)
800021a0: e3 12 b7 fa  	bne	a4, a1, 0x80002144 <.LBB0_98+0x770>
;  for (i = 0; i < ni; i++)
800021a4: 13 05 15 00  	addi	a0, a0, 1
800021a8: 93 86 06 09  	addi	a3, a3, 144
800021ac: e3 1a c5 f8  	bne	a0, a2, 0x80002140 <.LBB0_98+0x76c>
800021b0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800021b4: 83 29 01 03  	lw	s3, 48(sp)
;   for (i = 0; i < nj; i++)
800021b8: 03 25 81 00  	lw	a0, 8(sp)
800021bc: 83 25 41 00  	lw	a1, 4(sp)
800021c0: 33 75 b5 00  	and	a0, a0, a1
800021c4: 63 0a 05 66  	beqz	a0, 0x80002838 <.LBB0_99+0x3d8>
800021c8: 13 05 00 00  	mv	a0, zero
800021cc: 93 05 80 00  	addi	a1, zero, 8
800021d0: 13 06 70 01  	addi	a2, zero, 23
;   for (i = 0; i < nj; i++)
800021d4: 93 06 00 04  	addi	a3, zero, 64
800021d8: 13 07 00 0c  	addi	a4, zero, 192
800021dc: ab 20 d6 00  	scfgw	a2, a3
800021e0: ab a0 e5 00  	scfgw	a1, a4
800021e4: 93 06 80 f4  	addi	a3, zero, -184
800021e8: 13 07 50 01  	addi	a4, zero, 21
800021ec: 93 07 00 06  	addi	a5, zero, 96
800021f0: 93 04 00 0e  	addi	s1, zero, 224
800021f4: ab 20 f7 00  	scfgw	a4, a5
800021f8: ab a0 96 00  	scfgw	a3, s1
800021fc: 93 06 10 01  	addi	a3, zero, 17
80002200: 93 07 00 08  	addi	a5, zero, 128
80002204: 93 04 00 10  	addi	s1, zero, 256
80002208: ab a0 f6 00  	scfgw	a3, a5
8000220c: ab a0 95 00  	scfgw	a1, s1
80002210: 93 05 00 02  	addi	a1, zero, 32
80002214: ab 20 b0 00  	scfgw	zero, a1
80002218: 2b 20 0b 34  	scfgwi	s6, 832
8000221c: 93 05 00 0b  	addi	a1, zero, 176
80002220: 93 07 10 00  	addi	a5, zero, 1
80002224: 93 84 07 04  	addi	s1, a5, 64
80002228: 13 84 07 0c  	addi	s0, a5, 192
8000222c: ab 20 96 00  	scfgw	a2, s1
80002230: ab a0 85 00  	scfgw	a1, s0
80002234: 37 f6 ff ff  	lui	a2, 1048575
80002238: 93 04 86 03  	addi	s1, a2, 56
8000223c: 13 84 07 06  	addi	s0, a5, 96
80002240: ab 20 87 00  	scfgw	a4, s0
80002244: 13 87 07 0e  	addi	a4, a5, 224
80002248: ab a0 e4 00  	scfgw	s1, a4
8000224c: 13 06 86 f8  	addi	a2, a2, -120
80002250: 13 87 07 08  	addi	a4, a5, 128
80002254: 93 84 07 10  	addi	s1, a5, 256
80002258: ab a0 e6 00  	scfgw	a3, a4
8000225c: ab 20 96 00  	scfgw	a2, s1
80002260: 13 86 07 02  	addi	a2, a5, 32
80002264: ab 20 c0 00  	scfgw	zero, a2
80002268: 2b a0 1b 34  	scfgwi	s7, 833
8000226c: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80002270: 13 06 20 01  	addi	a2, zero, 18
80002274: 93 86 0a 00  	mv	a3, s5
80002278: 13 07 00 00  	mv	a4, zero
;    F[i][j] += C[i][k] * D[k][j];
8000227c: d3 f1 00 12  	fmul.d	ft3, ft1, ft0
80002280: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002284: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002288: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000228c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002290: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002294: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002298: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000229c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022a0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022a4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022a8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022ac: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022b0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022b4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022b8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022bc: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022c0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022c4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022c8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022cc: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022d0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022d4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800022d8: b3 87 e6 00  	add	a5, a3, a4
800022dc: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
;     for (j = 0; j < nl; j++)
800022e0: 13 07 87 00  	addi	a4, a4, 8
;    F[i][j] += C[i][k] * D[k][j];
800022e4: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nl; j++)
800022e8: e3 1a b7 f8  	bne	a4, a1, 0x8000227c <.LBB0_98+0x8a8>
;   for (i = 0; i < nj; i++)
800022ec: 13 05 15 00  	addi	a0, a0, 1
800022f0: 93 86 06 0b  	addi	a3, a3, 176
800022f4: e3 12 c5 f8  	bne	a0, a2, 0x80002278 <.LBB0_98+0x8a4>
800022f8: 73 f5 00 7c  	csrrci	a0, 1984, 1
;   for (i = 0; i < ni; i++)
800022fc: 33 05 3a 01  	add	a0, s4, s3
80002300: b3 85 59 01  	add	a1, s3, s5
80002304: 13 86 05 36  	addi	a2, a1, 864
80002308: 93 55 4a 01  	srli	a1, s4, 20
8000230c: b3 36 b0 00  	snez	a3, a1
80002310: b7 05 12 00  	lui	a1, 288
80002314: 93 85 15 00  	addi	a1, a1, 1
80002318: 33 35 b5 00  	sltu	a0, a0, a1
8000231c: 33 f5 a6 00  	and	a0, a3, a0
80002320: 93 d6 4a 01  	srli	a3, s5, 20
80002324: b3 36 d0 00  	snez	a3, a3
80002328: 33 36 b6 00  	sltu	a2, a2, a1
8000232c: 33 f6 c6 00  	and	a2, a3, a2
80002330: 33 75 c5 00  	and	a0, a0, a2
80002334: e3 04 05 04  	beqz	a0, 0x80002b7c <.LBB0_99+0x71c>
80002338: 13 05 00 00  	mv	a0, zero
8000233c: 93 05 80 00  	addi	a1, zero, 8
80002340: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < ni; i++)
80002344: 93 06 00 04  	addi	a3, zero, 64
80002348: 13 07 00 0c  	addi	a4, zero, 192
8000234c: ab 20 d6 00  	scfgw	a2, a3
80002350: ab a0 e5 00  	scfgw	a1, a4
80002354: 93 06 80 f7  	addi	a3, zero, -136
80002358: 13 07 50 01  	addi	a4, zero, 21
8000235c: 93 07 00 06  	addi	a5, zero, 96
80002360: 93 04 00 0e  	addi	s1, zero, 224
80002364: ab 20 f7 00  	scfgw	a4, a5
80002368: ab a0 96 00  	scfgw	a3, s1
8000236c: 93 06 f0 00  	addi	a3, zero, 15
80002370: 93 07 00 08  	addi	a5, zero, 128
80002374: 93 04 00 10  	addi	s1, zero, 256
80002378: ab a0 f6 00  	scfgw	a3, a5
8000237c: ab a0 95 00  	scfgw	a1, s1
80002380: 93 05 00 02  	addi	a1, zero, 32
80002384: ab 20 b0 00  	scfgw	zero, a1
80002388: 2b 20 0a 34  	scfgwi	s4, 832
8000238c: 93 05 00 0b  	addi	a1, zero, 176
80002390: 93 07 10 00  	addi	a5, zero, 1
80002394: 93 84 07 04  	addi	s1, a5, 64
80002398: 13 84 07 0c  	addi	s0, a5, 192
8000239c: ab 20 96 00  	scfgw	a2, s1
800023a0: ab a0 85 00  	scfgw	a1, s0
800023a4: 37 f6 ff ff  	lui	a2, 1048575
800023a8: 93 04 86 45  	addi	s1, a2, 1112
800023ac: 13 84 07 06  	addi	s0, a5, 96
800023b0: ab 20 87 00  	scfgw	a4, s0
800023b4: 13 87 07 0e  	addi	a4, a5, 224
800023b8: ab a0 e4 00  	scfgw	s1, a4
800023bc: 13 06 86 3a  	addi	a2, a2, 936
800023c0: 13 87 07 08  	addi	a4, a5, 128
800023c4: 93 84 07 10  	addi	s1, a5, 256
800023c8: ab a0 e6 00  	scfgw	a3, a4
800023cc: ab 20 96 00  	scfgw	a2, s1
800023d0: 13 86 07 02  	addi	a2, a5, 32
800023d4: ab 20 c0 00  	scfgw	zero, a2
800023d8: 2b a0 1a 34  	scfgwi	s5, 833
800023dc: 73 e6 00 7c  	csrrsi	a2, 1984, 1
800023e0: 13 06 00 01  	addi	a2, zero, 16
800023e4: 03 29 81 02  	lw	s2, 40(sp)
800023e8: 93 06 09 00  	mv	a3, s2
800023ec: 13 07 00 00  	mv	a4, zero
;    G[i][j] += E[i][k] * F[k][j];
800023f0: d3 f1 00 12  	fmul.d	ft3, ft1, ft0
800023f4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023f8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023fc: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002400: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002404: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002408: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000240c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002410: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002414: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002418: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000241c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002420: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002424: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002428: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000242c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002430: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002434: b3 87 e6 00  	add	a5, a3, a4
80002438: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
;     for (j = 0; j < nl; j++)
8000243c: 13 07 87 00  	addi	a4, a4, 8
;    G[i][j] += E[i][k] * F[k][j];
80002440: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nl; j++)
80002444: e3 16 b7 fa  	bne	a4, a1, 0x800023f0 <.LBB0_98+0xa1c>
;   for (i = 0; i < ni; i++)
80002448: 13 05 15 00  	addi	a0, a0, 1
8000244c: 93 86 06 0b  	addi	a3, a3, 176
80002450: e3 1e c5 f8  	bne	a0, a2, 0x800023ec <.LBB0_98+0xa18>
80002454: 73 f5 00 7c  	csrrci	a0, 1984, 1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002458: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
8000245c: b3 05 05 41  	sub	a1, a0, a6

80002460 <.LBB0_99>:
80002460: 17 35 00 00  	auipc	a0, 3
80002464: 13 05 15 e9  	addi	a0, a0, -367
80002468: 97 10 00 00  	auipc	ra, 1
8000246c: e7 80 00 b4  	jalr	-1216(ra)
;     for (int i = 0; i < n; i++){
80002470: 33 85 29 01  	add	a0, s3, s2
80002474: 13 05 05 20  	addi	a0, a0, 512
80002478: 93 55 49 01  	srli	a1, s2, 20
8000247c: b3 35 b0 00  	snez	a1, a1
80002480: 37 06 12 00  	lui	a2, 288
80002484: 13 06 16 00  	addi	a2, a2, 1
80002488: 33 35 c5 00  	sltu	a0, a0, a2
8000248c: 33 f5 a5 00  	and	a0, a1, a0
80002490: e3 02 05 1a  	beqz	a0, 0x80002e34 <.LBB0_99+0x9d4>
80002494: 13 05 80 00  	addi	a0, zero, 8
80002498: 93 05 50 01  	addi	a1, zero, 21
;     for (int i = 0; i < n; i++){
8000249c: 13 06 00 04  	addi	a2, zero, 64
800024a0: 93 06 00 0c  	addi	a3, zero, 192
800024a4: ab a0 c5 00  	scfgw	a1, a2
800024a8: ab 20 d5 00  	scfgw	a0, a3
800024ac: 93 05 f0 00  	addi	a1, zero, 15
800024b0: 13 06 00 06  	addi	a2, zero, 96
800024b4: 93 06 00 0e  	addi	a3, zero, 224
800024b8: ab a0 c5 00  	scfgw	a1, a2
800024bc: ab 20 d5 00  	scfgw	a0, a3
800024c0: 13 05 00 02  	addi	a0, zero, 32
800024c4: ab 20 a0 00  	scfgw	zero, a0
800024c8: 2b 20 09 32  	scfgwi	s2, 800
800024cc: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800024d0: d3 01 00 d2  	fcvt.d.w	ft3, zero
800024d4: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
800024d8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024dc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024e0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024e4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024e8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024ec: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024f0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024f4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024f8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024fc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002500: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002504: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002508: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000250c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002510: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002514: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002518: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000251c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002520: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002524: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002528: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
8000252c: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80002530: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80002534: e3 12 05 fa  	bnez	a0, 0x800024d8 <.LBB0_99+0x78>
80002538: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000253c: 6f 00 10 1c  	j	0x80002efc <.LBB0_100>
80002540: 13 0c 00 00  	mv	s8, zero
80002544: 03 25 41 01  	lw	a0, 20(sp)
;  for (i = 0; i < ni; i++)
80002548: 93 02 05 09  	addi	t0, a0, 144
8000254c: 93 05 85 55  	addi	a1, a0, 1368
80002550: 13 83 85 55  	addi	t1, a1, 1368
80002554: 93 05 05 51  	addi	a1, a0, 1296
80002558: 13 8e 05 51  	addi	t3, a1, 1296
8000255c: 93 05 85 11  	addi	a1, a0, 280
80002560: 13 06 c5 59  	addi	a2, a0, 1436
80002564: 13 06 c6 59  	addi	a2, a2, 1436
80002568: 93 06 45 55  	addi	a3, a0, 1364
8000256c: 93 86 46 55  	addi	a3, a3, 1364
80002570: 13 d7 42 01  	srli	a4, t0, 20
80002574: 33 37 e0 00  	snez	a4, a4
80002578: b7 07 12 00  	lui	a5, 288
8000257c: 93 87 17 00  	addi	a5, a5, 1
80002580: b3 b5 f5 00  	sltu	a1, a1, a5
80002584: b3 75 b7 00  	and	a1, a4, a1
80002588: 13 57 43 01  	srli	a4, t1, 20
8000258c: 33 37 e0 00  	snez	a4, a4
80002590: 33 36 f6 00  	sltu	a2, a2, a5
80002594: 33 76 c7 00  	and	a2, a4, a2
80002598: b3 f5 c5 00  	and	a1, a1, a2
8000259c: 13 56 4e 01  	srli	a2, t3, 20
800025a0: 33 36 c0 00  	snez	a2, a2
800025a4: b3 b6 f6 00  	sltu	a3, a3, a5
800025a8: 33 76 d6 00  	and	a2, a2, a3
800025ac: 33 77 b6 00  	and	a4, a2, a1
800025b0: 93 08 00 0a  	addi	a7, zero, 160
800025b4: 93 0e 80 00  	addi	t4, zero, 8
800025b8: 13 0f 10 01  	addi	t5, zero, 17
800025bc: 93 0f 10 00  	addi	t6, zero, 1
800025c0: 13 09 20 00  	addi	s2, zero, 2
800025c4: 13 06 00 09  	addi	a2, zero, 144
800025c8: 93 03 00 01  	addi	t2, zero, 16
800025cc: 03 2a 41 02  	lw	s4, 36(sp)
800025d0: 93 06 0a 00  	mv	a3, s4
800025d4: 83 29 01 03  	lw	s3, 48(sp)
800025d8: 83 2a 01 02  	lw	s5, 32(sp)
800025dc: 03 2b c1 01  	lw	s6, 28(sp)
800025e0: 83 2b c1 02  	lw	s7, 44(sp)
800025e4: 83 25 81 01  	lw	a1, 24(sp)
800025e8: 6f 00 00 01  	j	0x800025f8 <.LBB0_99+0x198>
800025ec: 13 0c 1c 00  	addi	s8, s8, 1
800025f0: 93 86 06 09  	addi	a3, a3, 144
800025f4: e3 02 7c bc  	beq	s8, t2, 0x800021b8 <.LBB0_98+0x7e4>
;    E[i][j] += A[i][k] * B[k][j];
800025f8: b3 04 1c 03  	mul	s1, s8, a7
800025fc: b3 84 95 00  	add	s1, a1, s1
80002600: 87 b1 04 02  	fld	ft3, 32(s1)
80002604: 07 b2 84 02  	fld	ft4, 40(s1)
80002608: 87 b2 04 03  	fld	ft5, 48(s1)
8000260c: 07 b3 84 03  	fld	ft6, 56(s1)
80002610: 87 b3 04 04  	fld	ft7, 64(s1)
80002614: 07 b5 84 04  	fld	fa0, 72(s1)
80002618: 87 b5 04 05  	fld	fa1, 80(s1)
8000261c: 07 b6 84 05  	fld	fa2, 88(s1)
80002620: 87 b6 04 06  	fld	fa3, 96(s1)
80002624: 07 b7 84 06  	fld	fa4, 104(s1)
80002628: 87 b7 04 07  	fld	fa5, 112(s1)
8000262c: 07 b8 84 07  	fld	fa6, 120(s1)
80002630: 87 b8 04 08  	fld	fa7, 128(s1)
80002634: 07 be 84 08  	fld	ft8, 136(s1)
80002638: 87 be 04 09  	fld	ft9, 144(s1)
8000263c: 07 bf 04 00  	fld	ft10, 0(s1)
80002640: 87 bf 84 00  	fld	ft11, 8(s1)
80002644: 07 b4 04 01  	fld	fs0, 16(s1)
80002648: 87 b4 84 01  	fld	fs1, 24(s1)
8000264c: 07 b9 84 09  	fld	fs2, 152(s1)
80002650: 93 04 00 00  	mv	s1, zero
80002654: 63 0c 07 10  	beqz	a4, 0x8000276c <.LBB0_99+0x30c>
;     for (j = 0; j < nj; j++)
80002658: 13 04 00 04  	addi	s0, zero, 64
8000265c: ab 20 8f 00  	scfgw	t5, s0
80002660: 13 04 00 0c  	addi	s0, zero, 192
80002664: ab a0 8e 00  	scfgw	t4, s0
80002668: 13 04 00 02  	addi	s0, zero, 32
8000266c: ab 20 80 00  	scfgw	zero, s0
80002670: 2b a0 02 30  	scfgwi	t0, 768
80002674: 13 84 0f 04  	addi	s0, t6, 64
80002678: ab 20 8f 00  	scfgw	t5, s0
8000267c: 13 84 0f 0c  	addi	s0, t6, 192
80002680: ab a0 8e 00  	scfgw	t4, s0
80002684: 13 84 0f 02  	addi	s0, t6, 32
80002688: ab 20 80 00  	scfgw	zero, s0
8000268c: 2b 20 13 30  	scfgwi	t1, 769
80002690: 13 04 09 04  	addi	s0, s2, 64
80002694: ab 20 8f 00  	scfgw	t5, s0
80002698: 13 04 09 0c  	addi	s0, s2, 192
8000269c: ab a0 8e 00  	scfgw	t4, s0
800026a0: 13 04 09 02  	addi	s0, s2, 32
800026a4: ab 20 80 00  	scfgw	zero, s0
800026a8: 2b 20 2e 30  	scfgwi	t3, 770
800026ac: 73 e4 00 7c  	csrrsi	s0, 1984, 1
;    E[i][j] += A[i][k] * B[k][j];
800026b0: b3 07 95 00  	add	a5, a0, s1
800026b4: 87 b9 07 00  	fld	fs3, 0(a5)
800026b8: 87 ba 07 12  	fld	fs5, 288(a5)
800026bc: 07 bb 07 1b  	fld	fs6, 432(a5)
800026c0: d3 f9 e9 13  	fmul.d	fs3, fs3, ft10
800026c4: c3 79 f0 9b  	fmadd.d	fs3, ft0, ft11, fs3
800026c8: c3 f9 8a 9a  	fmadd.d	fs3, fs5, fs0, fs3
800026cc: c3 79 9b 9a  	fmadd.d	fs3, fs6, fs1, fs3
800026d0: 07 ba 07 24  	fld	fs4, 576(a5)
800026d4: 87 ba 07 2d  	fld	fs5, 720(a5)
800026d8: 07 bb 07 36  	fld	fs6, 864(a5)
800026dc: 87 bb 07 3f  	fld	fs7, 1008(a5)
800026e0: c3 79 3a 9a  	fmadd.d	fs3, fs4, ft3, fs3
800026e4: c3 f9 4a 9a  	fmadd.d	fs3, fs5, ft4, fs3
800026e8: c3 79 5b 9a  	fmadd.d	fs3, fs6, ft5, fs3
800026ec: c3 f9 6b 9a  	fmadd.d	fs3, fs7, ft6, fs3
800026f0: 07 ba 07 48  	fld	fs4, 1152(a5)
800026f4: 87 ba 07 51  	fld	fs5, 1296(a5)
800026f8: 07 bb 07 5a  	fld	fs6, 1440(a5)
800026fc: 87 bb 07 63  	fld	fs7, 1584(a5)
80002700: c3 79 7a 9a  	fmadd.d	fs3, fs4, ft7, fs3
80002704: c3 f9 aa 9a  	fmadd.d	fs3, fs5, fa0, fs3
80002708: c3 79 bb 9a  	fmadd.d	fs3, fs6, fa1, fs3
8000270c: c3 f9 cb 9a  	fmadd.d	fs3, fs7, fa2, fs3
80002710: 07 ba 07 6c  	fld	fs4, 1728(a5)
80002714: 87 ba 07 75  	fld	fs5, 1872(a5)
80002718: 07 bb 07 7e  	fld	fs6, 2016(a5)
8000271c: 13 84 87 43  	addi	s0, a5, 1080
80002720: 87 3b 84 43  	fld	fs7, 1080(s0)
80002724: c3 79 da 9a  	fmadd.d	fs3, fs4, fa3, fs3
80002728: c3 f9 ea 9a  	fmadd.d	fs3, fs5, fa4, fs3
8000272c: c3 79 fb 9a  	fmadd.d	fs3, fs6, fa5, fs3
80002730: c3 f9 0b 9b  	fmadd.d	fs3, fs7, fa6, fs3
80002734: 13 84 07 48  	addi	s0, a5, 1152
80002738: 07 3a 04 48  	fld	fs4, 1152(s0)
8000273c: 93 87 87 4c  	addi	a5, a5, 1224
80002740: 87 ba 87 4c  	fld	fs5, 1224(a5)
80002744: c3 79 1a 9b  	fmadd.d	fs3, fs4, fa7, fs3
80002748: c3 f9 ca 9b  	fmadd.d	fs3, fs5, ft8, fs3
8000274c: c3 79 d1 9b  	fmadd.d	fs3, ft2, ft9, fs3
80002750: b3 87 96 00  	add	a5, a3, s1
80002754: c3 f9 20 9b  	fmadd.d	fs3, ft1, fs2, fs3
;     for (j = 0; j < nj; j++)
80002758: 93 84 84 00  	addi	s1, s1, 8
;    E[i][j] += A[i][k] * B[k][j];
8000275c: 27 b0 37 01  	fsd	fs3, 0(a5)
;     for (j = 0; j < nj; j++)
80002760: e3 98 c4 f4  	bne	s1, a2, 0x800026b0 <.LBB0_99+0x250>
80002764: f3 f7 00 7c  	csrrci	a5, 1984, 1
80002768: 6f f0 5f e8  	j	0x800025ec <.LBB0_99+0x18c>
;    E[i][j] += A[i][k] * B[k][j];
8000276c: 33 04 95 00  	add	s0, a0, s1
80002770: 87 39 04 00  	fld	fs3, 0(s0)
80002774: d3 f9 e9 13  	fmul.d	fs3, fs3, ft10
80002778: 07 3a 04 09  	fld	fs4, 144(s0)
8000277c: 87 3a 04 12  	fld	fs5, 288(s0)
80002780: 07 3b 04 1b  	fld	fs6, 432(s0)
80002784: 87 3b 04 24  	fld	fs7, 576(s0)
80002788: c3 79 fa 9b  	fmadd.d	fs3, fs4, ft11, fs3
8000278c: c3 f9 8a 9a  	fmadd.d	fs3, fs5, fs0, fs3
80002790: c3 79 9b 9a  	fmadd.d	fs3, fs6, fs1, fs3
80002794: c3 f9 3b 9a  	fmadd.d	fs3, fs7, ft3, fs3
80002798: 07 3a 04 2d  	fld	fs4, 720(s0)
8000279c: 87 3a 04 36  	fld	fs5, 864(s0)
800027a0: 07 3b 04 3f  	fld	fs6, 1008(s0)
800027a4: 87 3b 04 48  	fld	fs7, 1152(s0)
800027a8: c3 79 4a 9a  	fmadd.d	fs3, fs4, ft4, fs3
800027ac: c3 f9 5a 9a  	fmadd.d	fs3, fs5, ft5, fs3
800027b0: c3 79 6b 9a  	fmadd.d	fs3, fs6, ft6, fs3
800027b4: c3 f9 7b 9a  	fmadd.d	fs3, fs7, ft7, fs3
800027b8: 07 3a 04 51  	fld	fs4, 1296(s0)
800027bc: 87 3a 04 5a  	fld	fs5, 1440(s0)
800027c0: 07 3b 04 63  	fld	fs6, 1584(s0)
800027c4: 87 3b 04 6c  	fld	fs7, 1728(s0)
800027c8: c3 79 aa 9a  	fmadd.d	fs3, fs4, fa0, fs3
800027cc: c3 f9 ba 9a  	fmadd.d	fs3, fs5, fa1, fs3
800027d0: c3 79 cb 9a  	fmadd.d	fs3, fs6, fa2, fs3
800027d4: c3 f9 db 9a  	fmadd.d	fs3, fs7, fa3, fs3
800027d8: 07 3a 04 75  	fld	fs4, 1872(s0)
800027dc: 87 3a 04 7e  	fld	fs5, 2016(s0)
800027e0: 93 07 84 43  	addi	a5, s0, 1080
800027e4: 07 bb 87 43  	fld	fs6, 1080(a5)
800027e8: 93 07 04 48  	addi	a5, s0, 1152
800027ec: 87 bb 07 48  	fld	fs7, 1152(a5)
800027f0: c3 79 ea 9a  	fmadd.d	fs3, fs4, fa4, fs3
800027f4: c3 f9 fa 9a  	fmadd.d	fs3, fs5, fa5, fs3
800027f8: c3 79 0b 9b  	fmadd.d	fs3, fs6, fa6, fs3
800027fc: c3 f9 1b 9b  	fmadd.d	fs3, fs7, fa7, fs3
80002800: 93 07 84 4c  	addi	a5, s0, 1224
80002804: 07 ba 87 4c  	fld	fs4, 1224(a5)
80002808: 93 07 04 51  	addi	a5, s0, 1296
8000280c: 87 ba 07 51  	fld	fs5, 1296(a5)
80002810: 93 07 84 55  	addi	a5, s0, 1368
80002814: 07 bb 87 55  	fld	fs6, 1368(a5)
80002818: c3 79 ca 9b  	fmadd.d	fs3, fs4, ft8, fs3
8000281c: c3 f9 da 9b  	fmadd.d	fs3, fs5, ft9, fs3
80002820: b3 87 96 00  	add	a5, a3, s1
80002824: c3 79 2b 9b  	fmadd.d	fs3, fs6, fs2, fs3
;     for (j = 0; j < nj; j++)
80002828: 93 84 84 00  	addi	s1, s1, 8
;    E[i][j] += A[i][k] * B[k][j];
8000282c: 27 b0 37 01  	fsd	fs3, 0(a5)
;     for (j = 0; j < nj; j++)
80002830: e3 9e c4 f2  	bne	s1, a2, 0x8000276c <.LBB0_99+0x30c>
80002834: 6f f0 9f db  	j	0x800025ec <.LBB0_99+0x18c>
80002838: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nj; i++)
8000283c: 93 82 0b 0b  	addi	t0, s7, 176
80002840: 93 85 8b 7e  	addi	a1, s7, 2024
80002844: 13 83 85 7e  	addi	t1, a1, 2024
80002848: 93 85 0b 79  	addi	a1, s7, 1936
8000284c: 93 83 05 79  	addi	t2, a1, 1936
80002850: 93 85 8b 15  	addi	a1, s7, 344
80002854: 37 16 00 00  	lui	a2, 1
80002858: 13 06 86 07  	addi	a2, a2, 120
8000285c: 33 86 cb 00  	add	a2, s7, a2
80002860: 93 86 4b 7e  	addi	a3, s7, 2020
80002864: 93 86 46 7e  	addi	a3, a3, 2020
80002868: 13 d7 42 01  	srli	a4, t0, 20
8000286c: 33 37 e0 00  	snez	a4, a4
80002870: b7 07 12 00  	lui	a5, 288
80002874: 93 87 17 00  	addi	a5, a5, 1
80002878: b3 b5 f5 00  	sltu	a1, a1, a5
8000287c: b3 75 b7 00  	and	a1, a4, a1
80002880: 13 57 43 01  	srli	a4, t1, 20
80002884: 33 37 e0 00  	snez	a4, a4
80002888: 33 36 f6 00  	sltu	a2, a2, a5
8000288c: 33 76 c7 00  	and	a2, a4, a2
80002890: b3 f5 c5 00  	and	a1, a1, a2
80002894: 13 d6 43 01  	srli	a2, t2, 20
80002898: 33 36 c0 00  	snez	a2, a2
8000289c: b3 b6 f6 00  	sltu	a3, a3, a5
800028a0: 33 76 d6 00  	and	a2, a2, a3
800028a4: 33 77 b6 00  	and	a4, a2, a1
800028a8: 93 85 0b 42  	addi	a1, s7, 1056
800028ac: 93 87 05 42  	addi	a5, a1, 1056
800028b0: 93 08 00 0c  	addi	a7, zero, 192
800028b4: 93 0e 80 00  	addi	t4, zero, 8
800028b8: 13 0f 50 01  	addi	t5, zero, 21
800028bc: 93 0f 10 00  	addi	t6, zero, 1
800028c0: 13 09 20 00  	addi	s2, zero, 2
800028c4: 93 06 00 0b  	addi	a3, zero, 176
800028c8: 13 0e 20 01  	addi	t3, zero, 18
800028cc: 13 84 0a 00  	mv	s0, s5
800028d0: 6f 00 00 01  	j	0x800028e0 <.LBB0_99+0x480>
800028d4: 13 05 15 00  	addi	a0, a0, 1
800028d8: 13 04 04 0b  	addi	s0, s0, 176
800028dc: e3 00 c5 a3  	beq	a0, t3, 0x800022fc <.LBB0_98+0x928>
;    F[i][j] += C[i][k] * D[k][j];
800028e0: b3 04 15 03  	mul	s1, a0, a7
800028e4: b3 04 9b 00  	add	s1, s6, s1
800028e8: 87 b1 04 04  	fld	ft3, 64(s1)
800028ec: 07 b2 84 04  	fld	ft4, 72(s1)
800028f0: 87 b2 04 05  	fld	ft5, 80(s1)
800028f4: 07 b3 84 05  	fld	ft6, 88(s1)
800028f8: 87 b3 04 06  	fld	ft7, 96(s1)
800028fc: 07 b5 84 06  	fld	fa0, 104(s1)
80002900: 87 b5 04 07  	fld	fa1, 112(s1)
80002904: 07 b6 84 07  	fld	fa2, 120(s1)
80002908: 87 b6 04 08  	fld	fa3, 128(s1)
8000290c: 07 b7 84 08  	fld	fa4, 136(s1)
80002910: 87 b7 04 00  	fld	fa5, 0(s1)
80002914: 07 b8 84 00  	fld	fa6, 8(s1)
80002918: 87 b8 04 01  	fld	fa7, 16(s1)
8000291c: 07 be 84 01  	fld	ft8, 24(s1)
80002920: 87 be 04 02  	fld	ft9, 32(s1)
80002924: 07 bf 84 02  	fld	ft10, 40(s1)
80002928: 87 bf 04 03  	fld	ft11, 48(s1)
8000292c: 07 b4 84 03  	fld	fs0, 56(s1)
80002930: 87 b4 04 09  	fld	fs1, 144(s1)
80002934: 07 b9 84 09  	fld	fs2, 152(s1)
80002938: 87 b9 04 0a  	fld	fs3, 160(s1)
8000293c: 07 ba 84 0a  	fld	fs4, 168(s1)
80002940: 87 ba 04 0b  	fld	fs5, 176(s1)
80002944: 07 bb 84 0b  	fld	fs6, 184(s1)
80002948: 93 04 00 00  	mv	s1, zero
8000294c: 63 0a 07 14  	beqz	a4, 0x80002aa0 <.LBB0_99+0x640>
;     for (j = 0; j < nl; j++)
80002950: 93 05 00 04  	addi	a1, zero, 64
80002954: ab 20 bf 00  	scfgw	t5, a1
80002958: 93 05 00 0c  	addi	a1, zero, 192
8000295c: ab a0 be 00  	scfgw	t4, a1
80002960: 93 05 00 02  	addi	a1, zero, 32
80002964: ab 20 b0 00  	scfgw	zero, a1
80002968: 2b a0 02 30  	scfgwi	t0, 768
8000296c: 93 85 0f 04  	addi	a1, t6, 64
80002970: ab 20 bf 00  	scfgw	t5, a1
80002974: 93 85 0f 0c  	addi	a1, t6, 192
80002978: ab a0 be 00  	scfgw	t4, a1
8000297c: 93 85 0f 02  	addi	a1, t6, 32
80002980: ab 20 b0 00  	scfgw	zero, a1
80002984: 2b 20 13 30  	scfgwi	t1, 769
80002988: 93 05 09 04  	addi	a1, s2, 64
8000298c: ab 20 bf 00  	scfgw	t5, a1
80002990: 93 05 09 0c  	addi	a1, s2, 192
80002994: ab a0 be 00  	scfgw	t4, a1
80002998: 93 05 09 02  	addi	a1, s2, 32
8000299c: ab 20 b0 00  	scfgw	zero, a1
800029a0: 2b a0 23 30  	scfgwi	t2, 770
800029a4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
;    F[i][j] += C[i][k] * D[k][j];
800029a8: b3 85 9b 00  	add	a1, s7, s1
800029ac: 87 bb 05 00  	fld	fs7, 0(a1)
800029b0: 87 bc 05 16  	fld	fs9, 352(a1)
800029b4: 07 bd 05 21  	fld	fs10, 528(a1)
800029b8: d3 fb fb 12  	fmul.d	fs7, fs7, fa5
800029bc: c3 7b 00 bb  	fmadd.d	fs7, ft0, fa6, fs7
800029c0: c3 fb 1c bb  	fmadd.d	fs7, fs9, fa7, fs7
800029c4: c3 7b cd bb  	fmadd.d	fs7, fs10, ft8, fs7
800029c8: 07 bc 05 2c  	fld	fs8, 704(a1)
800029cc: 87 bc 05 37  	fld	fs9, 880(a1)
800029d0: 07 bd 05 42  	fld	fs10, 1056(a1)
800029d4: 87 bd 05 4d  	fld	fs11, 1232(a1)
800029d8: c3 7b dc bb  	fmadd.d	fs7, fs8, ft9, fs7
800029dc: c3 fb ec bb  	fmadd.d	fs7, fs9, ft10, fs7
800029e0: c3 7b fd bb  	fmadd.d	fs7, fs10, ft11, fs7
800029e4: c3 fb 8d ba  	fmadd.d	fs7, fs11, fs0, fs7
800029e8: 07 bc 05 58  	fld	fs8, 1408(a1)
800029ec: 87 bc 05 63  	fld	fs9, 1584(a1)
800029f0: 07 bd 05 6e  	fld	fs10, 1760(a1)
800029f4: 87 bd 05 79  	fld	fs11, 1936(a1)
800029f8: c3 7b 3c ba  	fmadd.d	fs7, fs8, ft3, fs7
800029fc: c3 fb 4c ba  	fmadd.d	fs7, fs9, ft4, fs7
80002a00: c3 7b 5d ba  	fmadd.d	fs7, fs10, ft5, fs7
80002a04: c3 fb 6d ba  	fmadd.d	fs7, fs11, ft6, fs7
80002a08: 13 86 05 42  	addi	a2, a1, 1056
80002a0c: 07 3c 06 42  	fld	fs8, 1056(a2)
80002a10: 13 86 85 47  	addi	a2, a1, 1144
80002a14: 87 3c 86 47  	fld	fs9, 1144(a2)
80002a18: 13 86 05 4d  	addi	a2, a1, 1232
80002a1c: 07 3d 06 4d  	fld	fs10, 1232(a2)
80002a20: 13 86 85 52  	addi	a2, a1, 1320
80002a24: 87 3d 86 52  	fld	fs11, 1320(a2)
80002a28: c3 7b 7c ba  	fmadd.d	fs7, fs8, ft7, fs7
80002a2c: c3 fb ac ba  	fmadd.d	fs7, fs9, fa0, fs7
80002a30: c3 7b bd ba  	fmadd.d	fs7, fs10, fa1, fs7
80002a34: c3 fb cd ba  	fmadd.d	fs7, fs11, fa2, fs7
80002a38: 13 86 05 58  	addi	a2, a1, 1408
80002a3c: 07 3c 06 58  	fld	fs8, 1408(a2)
80002a40: 13 86 85 5d  	addi	a2, a1, 1496
80002a44: 87 3c 86 5d  	fld	fs9, 1496(a2)
80002a48: 13 86 05 63  	addi	a2, a1, 1584
80002a4c: 07 3d 06 63  	fld	fs10, 1584(a2)
80002a50: 13 86 85 68  	addi	a2, a1, 1672
80002a54: 87 3d 86 68  	fld	fs11, 1672(a2)
80002a58: c3 7b dc ba  	fmadd.d	fs7, fs8, fa3, fs7
80002a5c: c3 fb ec ba  	fmadd.d	fs7, fs9, fa4, fs7
80002a60: c3 7b 9d ba  	fmadd.d	fs7, fs10, fs1, fs7
80002a64: c3 fb 2d bb  	fmadd.d	fs7, fs11, fs2, fs7
80002a68: 13 86 05 6e  	addi	a2, a1, 1760
80002a6c: 07 3c 06 6e  	fld	fs8, 1760(a2)
80002a70: 93 85 85 73  	addi	a1, a1, 1848
80002a74: 87 bc 85 73  	fld	fs9, 1848(a1)
80002a78: c3 7b 3c bb  	fmadd.d	fs7, fs8, fs3, fs7
80002a7c: c3 fb 4c bb  	fmadd.d	fs7, fs9, fs4, fs7
80002a80: c3 7b 51 bb  	fmadd.d	fs7, ft2, fs5, fs7
80002a84: b3 05 94 00  	add	a1, s0, s1
80002a88: c3 fb 60 bb  	fmadd.d	fs7, ft1, fs6, fs7
;     for (j = 0; j < nl; j++)
80002a8c: 93 84 84 00  	addi	s1, s1, 8
;    F[i][j] += C[i][k] * D[k][j];
80002a90: 27 b0 75 01  	fsd	fs7, 0(a1)
;     for (j = 0; j < nl; j++)
80002a94: e3 9a d4 f0  	bne	s1, a3, 0x800029a8 <.LBB0_99+0x548>
80002a98: f3 f5 00 7c  	csrrci	a1, 1984, 1
80002a9c: 6f f0 9f e3  	j	0x800028d4 <.LBB0_99+0x474>
;    F[i][j] += C[i][k] * D[k][j];
80002aa0: b3 85 9b 00  	add	a1, s7, s1
80002aa4: 87 bb 05 00  	fld	fs7, 0(a1)
80002aa8: 07 bc 05 0b  	fld	fs8, 176(a1)
80002aac: 87 bc 05 16  	fld	fs9, 352(a1)
80002ab0: d3 fb fb 12  	fmul.d	fs7, fs7, fa5
80002ab4: c3 7b 0c bb  	fmadd.d	fs7, fs8, fa6, fs7
80002ab8: 07 bc 05 21  	fld	fs8, 528(a1)
80002abc: c3 fb 1c bb  	fmadd.d	fs7, fs9, fa7, fs7
80002ac0: 87 bc 05 2c  	fld	fs9, 704(a1)
80002ac4: 07 bd 05 37  	fld	fs10, 880(a1)
80002ac8: c3 7b cc bb  	fmadd.d	fs7, fs8, ft8, fs7
80002acc: 07 bc 05 42  	fld	fs8, 1056(a1)
80002ad0: c3 fb dc bb  	fmadd.d	fs7, fs9, ft9, fs7
80002ad4: c3 7b ed bb  	fmadd.d	fs7, fs10, ft10, fs7
80002ad8: 87 bc 05 4d  	fld	fs9, 1232(a1)
80002adc: c3 7b fc bb  	fmadd.d	fs7, fs8, ft11, fs7
80002ae0: 07 bc 05 58  	fld	fs8, 1408(a1)
80002ae4: 07 bd 05 63  	fld	fs10, 1584(a1)
80002ae8: c3 fb 8c ba  	fmadd.d	fs7, fs9, fs0, fs7
80002aec: 87 bc 05 6e  	fld	fs9, 1760(a1)
80002af0: c3 7b 3c ba  	fmadd.d	fs7, fs8, ft3, fs7
80002af4: c3 7b 4d ba  	fmadd.d	fs7, fs10, ft4, fs7
80002af8: 07 bc 05 79  	fld	fs8, 1936(a1)
80002afc: c3 fb 5c ba  	fmadd.d	fs7, fs9, ft5, fs7
80002b00: b3 85 97 00  	add	a1, a5, s1
80002b04: 87 bc 05 00  	fld	fs9, 0(a1)
80002b08: c3 7b 6c ba  	fmadd.d	fs7, fs8, ft6, fs7
80002b0c: 07 bc 05 0b  	fld	fs8, 176(a1)
80002b10: 07 bd 05 16  	fld	fs10, 352(a1)
80002b14: c3 fb 7c ba  	fmadd.d	fs7, fs9, ft7, fs7
80002b18: 87 bc 05 21  	fld	fs9, 528(a1)
80002b1c: c3 7b ac ba  	fmadd.d	fs7, fs8, fa0, fs7
80002b20: c3 7b bd ba  	fmadd.d	fs7, fs10, fa1, fs7
80002b24: 07 bc 05 2c  	fld	fs8, 704(a1)
80002b28: c3 fb cc ba  	fmadd.d	fs7, fs9, fa2, fs7
80002b2c: 87 bc 05 37  	fld	fs9, 880(a1)
80002b30: 07 bd 05 42  	fld	fs10, 1056(a1)
80002b34: c3 7b dc ba  	fmadd.d	fs7, fs8, fa3, fs7
80002b38: 07 bc 05 4d  	fld	fs8, 1232(a1)
80002b3c: c3 fb ec ba  	fmadd.d	fs7, fs9, fa4, fs7
80002b40: c3 7b 9d ba  	fmadd.d	fs7, fs10, fs1, fs7
80002b44: 87 bc 05 58  	fld	fs9, 1408(a1)
80002b48: c3 7b 2c bb  	fmadd.d	fs7, fs8, fs2, fs7
80002b4c: 07 bc 05 63  	fld	fs8, 1584(a1)
80002b50: 07 bd 05 6e  	fld	fs10, 1760(a1)
80002b54: c3 fb 3c bb  	fmadd.d	fs7, fs9, fs3, fs7
80002b58: 87 bc 05 79  	fld	fs9, 1936(a1)
80002b5c: c3 7b 4c bb  	fmadd.d	fs7, fs8, fs4, fs7
80002b60: c3 7b 5d bb  	fmadd.d	fs7, fs10, fs5, fs7
80002b64: b3 05 94 00  	add	a1, s0, s1
80002b68: c3 fb 6c bb  	fmadd.d	fs7, fs9, fs6, fs7
;     for (j = 0; j < nl; j++)
80002b6c: 93 84 84 00  	addi	s1, s1, 8
;    F[i][j] += C[i][k] * D[k][j];
80002b70: 27 b0 75 01  	fsd	fs7, 0(a1)
;     for (j = 0; j < nl; j++)
80002b74: e3 96 d4 f2  	bne	s1, a3, 0x80002aa0 <.LBB0_99+0x640>
80002b78: 6f f0 df d5  	j	0x800028d4 <.LBB0_99+0x474>
80002b7c: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < ni; i++)
80002b80: 93 82 0a 0b  	addi	t0, s5, 176
80002b84: 13 86 8a 5d  	addi	a2, s5, 1496
80002b88: 13 03 86 5d  	addi	t1, a2, 1496
80002b8c: 13 86 0a 58  	addi	a2, s5, 1408
80002b90: 13 0e 06 58  	addi	t3, a2, 1408
80002b94: 13 86 8a 15  	addi	a2, s5, 344
80002b98: 93 86 ca 62  	addi	a3, s5, 1580
80002b9c: 93 86 c6 62  	addi	a3, a3, 1580
80002ba0: 13 87 4a 5d  	addi	a4, s5, 1492
80002ba4: 13 07 47 5d  	addi	a4, a4, 1492
80002ba8: 93 d7 42 01  	srli	a5, t0, 20
80002bac: b3 37 f0 00  	snez	a5, a5
80002bb0: 33 36 b6 00  	sltu	a2, a2, a1
80002bb4: 33 f6 c7 00  	and	a2, a5, a2
80002bb8: 93 57 43 01  	srli	a5, t1, 20
80002bbc: b3 37 f0 00  	snez	a5, a5
80002bc0: b3 b6 b6 00  	sltu	a3, a3, a1
80002bc4: b3 f6 d7 00  	and	a3, a5, a3
80002bc8: 33 76 d6 00  	and	a2, a2, a3
80002bcc: 93 56 4e 01  	srli	a3, t3, 20
80002bd0: b3 36 d0 00  	snez	a3, a3
80002bd4: b3 35 b7 00  	sltu	a1, a4, a1
80002bd8: b3 f5 b6 00  	and	a1, a3, a1
80002bdc: 33 f7 c5 00  	and	a4, a1, a2
80002be0: 93 08 00 09  	addi	a7, zero, 144
80002be4: 93 0e 80 00  	addi	t4, zero, 8
80002be8: 13 0f 50 01  	addi	t5, zero, 21
80002bec: 93 0f 10 00  	addi	t6, zero, 1
80002bf0: 93 05 20 00  	addi	a1, zero, 2
80002bf4: 13 06 00 0b  	addi	a2, zero, 176
80002bf8: 93 03 00 01  	addi	t2, zero, 16
80002bfc: 03 29 81 02  	lw	s2, 40(sp)
80002c00: 93 06 09 00  	mv	a3, s2
80002c04: 6f 00 00 01  	j	0x80002c14 <.LBB0_99+0x7b4>
80002c08: 13 05 15 00  	addi	a0, a0, 1
80002c0c: 93 86 06 0b  	addi	a3, a3, 176
80002c10: e3 04 75 84  	beq	a0, t2, 0x80002458 <.LBB0_98+0xa84>
;    G[i][j] += E[i][k] * F[k][j];
80002c14: b3 04 15 03  	mul	s1, a0, a7
80002c18: b3 04 9a 00  	add	s1, s4, s1
80002c1c: 87 b1 04 01  	fld	ft3, 16(s1)
80002c20: 07 b2 84 01  	fld	ft4, 24(s1)
80002c24: 87 b2 04 02  	fld	ft5, 32(s1)
80002c28: 07 b3 84 02  	fld	ft6, 40(s1)
80002c2c: 87 b3 04 03  	fld	ft7, 48(s1)
80002c30: 07 b5 84 03  	fld	fa0, 56(s1)
80002c34: 87 b5 04 04  	fld	fa1, 64(s1)
80002c38: 07 b6 84 04  	fld	fa2, 72(s1)
80002c3c: 87 b6 04 05  	fld	fa3, 80(s1)
80002c40: 07 b7 84 05  	fld	fa4, 88(s1)
80002c44: 87 b7 04 06  	fld	fa5, 96(s1)
80002c48: 07 b8 84 06  	fld	fa6, 104(s1)
80002c4c: 87 b8 04 07  	fld	fa7, 112(s1)
80002c50: 07 be 84 07  	fld	ft8, 120(s1)
80002c54: 87 be 04 08  	fld	ft9, 128(s1)
80002c58: 07 bf 84 08  	fld	ft10, 136(s1)
80002c5c: 87 bf 04 00  	fld	ft11, 0(s1)
80002c60: 07 b4 84 00  	fld	fs0, 8(s1)
80002c64: 93 04 00 00  	mv	s1, zero
80002c68: 63 06 07 10  	beqz	a4, 0x80002d74 <.LBB0_99+0x914>
;     for (j = 0; j < nl; j++)
80002c6c: 13 04 00 04  	addi	s0, zero, 64
80002c70: ab 20 8f 00  	scfgw	t5, s0
80002c74: 13 04 00 0c  	addi	s0, zero, 192
80002c78: ab a0 8e 00  	scfgw	t4, s0
80002c7c: 13 04 00 02  	addi	s0, zero, 32
80002c80: ab 20 80 00  	scfgw	zero, s0
80002c84: 2b a0 02 30  	scfgwi	t0, 768
80002c88: 13 84 0f 04  	addi	s0, t6, 64
80002c8c: ab 20 8f 00  	scfgw	t5, s0
80002c90: 13 84 0f 0c  	addi	s0, t6, 192
80002c94: ab a0 8e 00  	scfgw	t4, s0
80002c98: 13 84 0f 02  	addi	s0, t6, 32
80002c9c: ab 20 80 00  	scfgw	zero, s0
80002ca0: 2b 20 13 30  	scfgwi	t1, 769
80002ca4: 13 84 05 04  	addi	s0, a1, 64
80002ca8: ab 20 8f 00  	scfgw	t5, s0
80002cac: 13 84 05 0c  	addi	s0, a1, 192
80002cb0: ab a0 8e 00  	scfgw	t4, s0
80002cb4: 13 84 05 02  	addi	s0, a1, 32
80002cb8: ab 20 80 00  	scfgw	zero, s0
80002cbc: 2b 20 2e 30  	scfgwi	t3, 770
80002cc0: 73 e4 00 7c  	csrrsi	s0, 1984, 1
;    G[i][j] += E[i][k] * F[k][j];
80002cc4: b3 87 9a 00  	add	a5, s5, s1
80002cc8: 87 b4 07 00  	fld	fs1, 0(a5)
80002ccc: d3 f4 f4 13  	fmul.d	fs1, fs1, ft11
80002cd0: c3 74 80 4a  	fmadd.d	fs1, ft0, fs0, fs1
80002cd4: 07 b9 07 16  	fld	fs2, 352(a5)
80002cd8: 87 b9 07 21  	fld	fs3, 528(a5)
80002cdc: 07 ba 07 2c  	fld	fs4, 704(a5)
80002ce0: 87 ba 07 37  	fld	fs5, 880(a5)
80002ce4: c3 74 39 4a  	fmadd.d	fs1, fs2, ft3, fs1
80002ce8: c3 f4 49 4a  	fmadd.d	fs1, fs3, ft4, fs1
80002cec: c3 74 5a 4a  	fmadd.d	fs1, fs4, ft5, fs1
80002cf0: c3 f4 6a 4a  	fmadd.d	fs1, fs5, ft6, fs1
80002cf4: 07 b9 07 42  	fld	fs2, 1056(a5)
80002cf8: 87 b9 07 4d  	fld	fs3, 1232(a5)
80002cfc: 07 ba 07 58  	fld	fs4, 1408(a5)
80002d00: 87 ba 07 63  	fld	fs5, 1584(a5)
80002d04: c3 74 79 4a  	fmadd.d	fs1, fs2, ft7, fs1
80002d08: c3 f4 a9 4a  	fmadd.d	fs1, fs3, fa0, fs1
80002d0c: c3 74 ba 4a  	fmadd.d	fs1, fs4, fa1, fs1
80002d10: c3 f4 ca 4a  	fmadd.d	fs1, fs5, fa2, fs1
80002d14: 07 b9 07 6e  	fld	fs2, 1760(a5)
80002d18: 87 b9 07 79  	fld	fs3, 1936(a5)
80002d1c: 13 84 07 42  	addi	s0, a5, 1056
80002d20: 07 3a 04 42  	fld	fs4, 1056(s0)
80002d24: 13 84 87 47  	addi	s0, a5, 1144
80002d28: 87 3a 84 47  	fld	fs5, 1144(s0)
80002d2c: c3 74 d9 4a  	fmadd.d	fs1, fs2, fa3, fs1
80002d30: c3 f4 e9 4a  	fmadd.d	fs1, fs3, fa4, fs1
80002d34: c3 74 fa 4a  	fmadd.d	fs1, fs4, fa5, fs1
80002d38: c3 f4 0a 4b  	fmadd.d	fs1, fs5, fa6, fs1
80002d3c: 13 84 07 4d  	addi	s0, a5, 1232
80002d40: 07 39 04 4d  	fld	fs2, 1232(s0)
80002d44: 93 87 87 52  	addi	a5, a5, 1320
80002d48: 87 b9 87 52  	fld	fs3, 1320(a5)
80002d4c: c3 74 19 4b  	fmadd.d	fs1, fs2, fa7, fs1
80002d50: c3 f4 c9 4b  	fmadd.d	fs1, fs3, ft8, fs1
80002d54: c3 74 d1 4b  	fmadd.d	fs1, ft2, ft9, fs1
80002d58: b3 87 96 00  	add	a5, a3, s1
80002d5c: c3 f4 e0 4b  	fmadd.d	fs1, ft1, ft10, fs1
;     for (j = 0; j < nl; j++)
80002d60: 93 84 84 00  	addi	s1, s1, 8
;    G[i][j] += E[i][k] * F[k][j];
80002d64: 27 b0 97 00  	fsd	fs1, 0(a5)
;     for (j = 0; j < nl; j++)
80002d68: e3 9e c4 f4  	bne	s1, a2, 0x80002cc4 <.LBB0_99+0x864>
80002d6c: f3 f7 00 7c  	csrrci	a5, 1984, 1
80002d70: 6f f0 9f e9  	j	0x80002c08 <.LBB0_99+0x7a8>
;    G[i][j] += E[i][k] * F[k][j];
80002d74: 33 84 9a 00  	add	s0, s5, s1
80002d78: 87 34 04 00  	fld	fs1, 0(s0)
80002d7c: 07 39 04 0b  	fld	fs2, 176(s0)
80002d80: 87 39 04 16  	fld	fs3, 352(s0)
80002d84: d3 f4 f4 13  	fmul.d	fs1, fs1, ft11
80002d88: c3 74 89 4a  	fmadd.d	fs1, fs2, fs0, fs1
80002d8c: c3 f4 39 4a  	fmadd.d	fs1, fs3, ft3, fs1
80002d90: 07 39 04 21  	fld	fs2, 528(s0)
80002d94: 87 39 04 2c  	fld	fs3, 704(s0)
80002d98: 07 3a 04 37  	fld	fs4, 880(s0)
80002d9c: 87 3a 04 42  	fld	fs5, 1056(s0)
80002da0: c3 74 49 4a  	fmadd.d	fs1, fs2, ft4, fs1
80002da4: c3 f4 59 4a  	fmadd.d	fs1, fs3, ft5, fs1
80002da8: c3 74 6a 4a  	fmadd.d	fs1, fs4, ft6, fs1
80002dac: c3 f4 7a 4a  	fmadd.d	fs1, fs5, ft7, fs1
80002db0: 07 39 04 4d  	fld	fs2, 1232(s0)
80002db4: 87 39 04 58  	fld	fs3, 1408(s0)
80002db8: 07 3a 04 63  	fld	fs4, 1584(s0)
80002dbc: 87 3a 04 6e  	fld	fs5, 1760(s0)
80002dc0: c3 74 a9 4a  	fmadd.d	fs1, fs2, fa0, fs1
80002dc4: c3 f4 b9 4a  	fmadd.d	fs1, fs3, fa1, fs1
80002dc8: c3 74 ca 4a  	fmadd.d	fs1, fs4, fa2, fs1
80002dcc: c3 f4 da 4a  	fmadd.d	fs1, fs5, fa3, fs1
80002dd0: 07 39 04 79  	fld	fs2, 1936(s0)
80002dd4: 93 07 04 42  	addi	a5, s0, 1056
80002dd8: 87 b9 07 42  	fld	fs3, 1056(a5)
80002ddc: 93 07 84 47  	addi	a5, s0, 1144
80002de0: 07 ba 87 47  	fld	fs4, 1144(a5)
80002de4: 93 07 04 4d  	addi	a5, s0, 1232
80002de8: 87 ba 07 4d  	fld	fs5, 1232(a5)
80002dec: c3 74 e9 4a  	fmadd.d	fs1, fs2, fa4, fs1
80002df0: c3 f4 f9 4a  	fmadd.d	fs1, fs3, fa5, fs1
80002df4: c3 74 0a 4b  	fmadd.d	fs1, fs4, fa6, fs1
80002df8: c3 f4 1a 4b  	fmadd.d	fs1, fs5, fa7, fs1
80002dfc: 93 07 84 52  	addi	a5, s0, 1320
80002e00: 07 b9 87 52  	fld	fs2, 1320(a5)
80002e04: 93 07 04 58  	addi	a5, s0, 1408
80002e08: 87 b9 07 58  	fld	fs3, 1408(a5)
80002e0c: 93 07 84 5d  	addi	a5, s0, 1496
80002e10: 07 ba 87 5d  	fld	fs4, 1496(a5)
80002e14: c3 74 c9 4b  	fmadd.d	fs1, fs2, ft8, fs1
80002e18: c3 f4 d9 4b  	fmadd.d	fs1, fs3, ft9, fs1
80002e1c: b3 87 96 00  	add	a5, a3, s1
80002e20: c3 74 ea 4b  	fmadd.d	fs1, fs4, ft10, fs1
;     for (j = 0; j < nl; j++)
80002e24: 93 84 84 00  	addi	s1, s1, 8
;    G[i][j] += E[i][k] * F[k][j];
80002e28: 27 b0 97 00  	fsd	fs1, 0(a5)
;     for (j = 0; j < nl; j++)
80002e2c: e3 94 c4 f4  	bne	s1, a2, 0x80002d74 <.LBB0_99+0x914>
80002e30: 6f f0 9f dd  	j	0x80002c08 <.LBB0_99+0x7a8>
;     for (int i = 0; i < n; i++){
80002e34: 13 05 89 05  	addi	a0, s2, 88
80002e38: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002e3c: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80002e40: 07 32 85 fa  	fld	ft4, -88(a0)
80002e44: 87 32 05 fb  	fld	ft5, -80(a0)
80002e48: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e4c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e50: 07 32 85 fb  	fld	ft4, -72(a0)
80002e54: 87 32 05 fc  	fld	ft5, -64(a0)
80002e58: 07 33 85 fc  	fld	ft6, -56(a0)
80002e5c: 87 33 05 fd  	fld	ft7, -48(a0)
80002e60: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e64: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e68: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002e6c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002e70: 07 32 85 fd  	fld	ft4, -40(a0)
80002e74: 87 32 05 fe  	fld	ft5, -32(a0)
80002e78: 07 33 85 fe  	fld	ft6, -24(a0)
80002e7c: 87 33 05 ff  	fld	ft7, -16(a0)
80002e80: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e84: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e88: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002e8c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002e90: 07 32 85 ff  	fld	ft4, -8(a0)
80002e94: 87 32 05 00  	fld	ft5, 0(a0)
80002e98: 07 33 85 00  	fld	ft6, 8(a0)
80002e9c: 87 33 05 01  	fld	ft7, 16(a0)
80002ea0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ea4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002ea8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002eac: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002eb0: 07 32 85 01  	fld	ft4, 24(a0)
80002eb4: 87 32 05 02  	fld	ft5, 32(a0)
80002eb8: 07 33 85 02  	fld	ft6, 40(a0)
80002ebc: 87 33 05 03  	fld	ft7, 48(a0)
80002ec0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ec4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002ec8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002ecc: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002ed0: 07 32 85 03  	fld	ft4, 56(a0)
80002ed4: 87 32 05 04  	fld	ft5, 64(a0)
80002ed8: 07 33 85 04  	fld	ft6, 72(a0)
80002edc: 87 33 05 05  	fld	ft7, 80(a0)
80002ee0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ee4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002ee8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002eec: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80002ef0: 93 85 f5 ff  	addi	a1, a1, -1
80002ef4: 13 05 05 0b  	addi	a0, a0, 176
80002ef8: e3 94 05 f4  	bnez	a1, 0x80002e40 <.LBB0_99+0x9e0>

80002efc <.LBB0_100>:
80002efc: 17 25 00 00  	auipc	a0, 2
80002f00: 13 05 c5 6c  	addi	a0, a0, 1740
80002f04: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80002f08: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80002f0c: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80002f10: 27 30 81 04  	fsd	fs0, 64(sp)
80002f14: 03 26 01 04  	lw	a2, 64(sp)
80002f18: 83 26 41 04  	lw	a3, 68(sp)

80002f1c <.LBB0_101>:
80002f1c: 17 25 00 00  	auipc	a0, 2
80002f20: 13 05 95 3c  	addi	a0, a0, 969
80002f24: 97 00 00 00  	auipc	ra, 0
80002f28: e7 80 40 08  	jalr	132(ra)

80002f2c <.LBB0_102>:
80002f2c: 17 25 00 00  	auipc	a0, 2
80002f30: 13 05 45 6a  	addi	a0, a0, 1700
80002f34: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80002f38: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80002f3c: 87 3d 81 04  	fld	fs11, 72(sp)
80002f40: 07 3d 01 05  	fld	fs10, 80(sp)
80002f44: 87 3c 81 05  	fld	fs9, 88(sp)
80002f48: 07 3c 01 06  	fld	fs8, 96(sp)
80002f4c: 87 3b 81 06  	fld	fs7, 104(sp)
80002f50: 07 3b 01 07  	fld	fs6, 112(sp)
80002f54: 87 3a 81 07  	fld	fs5, 120(sp)
80002f58: 07 3a 01 08  	fld	fs4, 128(sp)
80002f5c: 87 39 81 08  	fld	fs3, 136(sp)
80002f60: 07 39 01 09  	fld	fs2, 144(sp)
80002f64: 87 34 81 09  	fld	fs1, 152(sp)
80002f68: 07 34 01 0a  	fld	fs0, 160(sp)
80002f6c: 83 2d c1 0a  	lw	s11, 172(sp)
80002f70: 03 2d 01 0b  	lw	s10, 176(sp)
80002f74: 83 2c 41 0b  	lw	s9, 180(sp)
80002f78: 03 2c 81 0b  	lw	s8, 184(sp)
80002f7c: 83 2b c1 0b  	lw	s7, 188(sp)
80002f80: 03 2b 01 0c  	lw	s6, 192(sp)
80002f84: 83 2a 41 0c  	lw	s5, 196(sp)
80002f88: 03 2a 81 0c  	lw	s4, 200(sp)
80002f8c: 83 29 c1 0c  	lw	s3, 204(sp)
80002f90: 03 29 01 0d  	lw	s2, 208(sp)
80002f94: 83 24 41 0d  	lw	s1, 212(sp)
80002f98: 03 24 81 0d  	lw	s0, 216(sp)
80002f9c: 83 20 c1 0d  	lw	ra, 220(sp)
80002fa0: 13 01 01 0e  	addi	sp, sp, 224
80002fa4: 67 80 00 00  	ret

80002fa8 <printf_>:
; {
80002fa8: 13 01 01 fd  	addi	sp, sp, -48
80002fac: 23 26 11 00  	sw	ra, 12(sp)
80002fb0: 93 02 05 00  	mv	t0, a0
80002fb4: 23 26 11 03  	sw	a7, 44(sp)
80002fb8: 23 24 01 03  	sw	a6, 40(sp)
80002fbc: 23 22 f1 02  	sw	a5, 36(sp)
80002fc0: 23 20 e1 02  	sw	a4, 32(sp)
80002fc4: 23 2e d1 00  	sw	a3, 28(sp)
80002fc8: 23 2c c1 00  	sw	a2, 24(sp)
80002fcc: 23 2a b1 00  	sw	a1, 20(sp)
80002fd0: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80002fd4: 23 24 a1 00  	sw	a0, 8(sp)

80002fd8 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80002fd8: 17 15 00 00  	auipc	a0, 1
80002fdc: 13 05 45 c2  	addi	a0, a0, -988
80002fe0: 93 05 71 00  	addi	a1, sp, 7
80002fe4: 13 06 f0 ff  	addi	a2, zero, -1
80002fe8: 13 07 41 01  	addi	a4, sp, 20
80002fec: 93 86 02 00  	mv	a3, t0
80002ff0: 97 00 00 00  	auipc	ra, 0
80002ff4: e7 80 40 01  	jalr	20(ra)
;   return ret;
80002ff8: 83 20 c1 00  	lw	ra, 12(sp)
80002ffc: 13 01 01 03  	addi	sp, sp, 48
80003000: 67 80 00 00  	ret

80003004 <_vsnprintf.llvm.11632292163828655644>:
; {
80003004: 13 01 01 f9  	addi	sp, sp, -112
80003008: 23 26 11 06  	sw	ra, 108(sp)
8000300c: 23 24 81 06  	sw	s0, 104(sp)
80003010: 23 22 91 06  	sw	s1, 100(sp)
80003014: 23 20 21 07  	sw	s2, 96(sp)
80003018: 23 2e 31 05  	sw	s3, 92(sp)
8000301c: 23 2c 41 05  	sw	s4, 88(sp)
80003020: 23 2a 51 05  	sw	s5, 84(sp)
80003024: 23 28 61 05  	sw	s6, 80(sp)
80003028: 23 26 71 05  	sw	s7, 76(sp)
8000302c: 23 24 81 05  	sw	s8, 72(sp)
80003030: 23 22 91 05  	sw	s9, 68(sp)
80003034: 23 20 a1 05  	sw	s10, 64(sp)
80003038: 23 2e b1 03  	sw	s11, 60(sp)
8000303c: 93 09 07 00  	mv	s3, a4
80003040: 13 84 06 00  	mv	s0, a3
80003044: 93 0a 06 00  	mv	s5, a2
80003048: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
8000304c: 63 86 05 00  	beqz	a1, 0x80003058 <.LBB1_183>
80003050: 13 09 05 00  	mv	s2, a0
80003054: 6f 00 c0 00  	j	0x80003060 <.LBB1_183+0x8>

80003058 <.LBB1_183>:
80003058: 17 19 00 00  	auipc	s2, 1
8000305c: 13 09 09 c5  	addi	s2, s2, -944
80003060: 13 0c 00 00  	mv	s8, zero
80003064: 13 0b 50 02  	addi	s6, zero, 37
80003068: 93 0d 00 01  	addi	s11, zero, 16
8000306c: 93 0b e0 02  	addi	s7, zero, 46
80003070: 37 15 00 00  	lui	a0, 1
80003074: 13 05 05 80  	addi	a0, a0, -2048
80003078: 23 2c a1 00  	sw	a0, 24(sp)
8000307c: 37 05 01 00  	lui	a0, 16
80003080: 13 05 f5 ff  	addi	a0, a0, -1
80003084: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80003088: 13 0d 24 00  	addi	s10, s0, 2
8000308c: 93 0c 0c 00  	mv	s9, s8
80003090: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80003094: 03 45 04 00  	lbu	a0, 0(s0)
80003098: e3 04 05 30  	beqz	a0, 0x80003ba0 <.LBB1_124+0x3b0>
8000309c: 63 08 65 03  	beq	a0, s6, 0x800030cc <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
800030a0: 93 84 1c 00  	addi	s1, s9, 1
800030a4: 93 05 0a 00  	mv	a1, s4
800030a8: 13 86 0c 00  	mv	a2, s9
800030ac: 93 86 0a 00  	mv	a3, s5
800030b0: e7 00 09 00  	jalr	s2
;       format++;
800030b4: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800030b8: 13 0d 1d 00  	addi	s10, s10, 1
800030bc: 93 8c 04 00  	mv	s9, s1
;   while (*format)
800030c0: 03 45 04 00  	lbu	a0, 0(s0)
800030c4: e3 1c 05 fc  	bnez	a0, 0x8000309c <.LBB1_183+0x44>
800030c8: 6f 00 90 2d  	j	0x80003ba0 <.LBB1_124+0x3b0>
;     flags = 0U;
800030cc: 13 04 00 00  	mv	s0, zero
800030d0: 6f 00 00 01  	j	0x800030e0 <.LBB1_9+0x8>

800030d4 <.LBB1_8>:
800030d4: 93 05 00 01  	addi	a1, zero, 16

800030d8 <.LBB1_9>:
800030d8: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
800030dc: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
800030e0: 03 45 fd ff  	lbu	a0, -1(s10)
800030e4: 93 05 05 fe  	addi	a1, a0, -32
800030e8: 63 ec bd 02  	bltu	s11, a1, 0x80003120 <.LBB1_15>
800030ec: 93 95 25 00  	slli	a1, a1, 2

800030f0 <.LBB1_184>:
800030f0: 17 26 00 00  	auipc	a2, 2
800030f4: 13 06 46 21  	addi	a2, a2, 532
800030f8: b3 85 c5 00  	add	a1, a1, a2
800030fc: 03 a6 05 00  	lw	a2, 0(a1)
80003100: 93 05 10 00  	addi	a1, zero, 1
80003104: 67 00 06 00  	jr	a2

80003108 <.LBB1_12>:
80003108: 93 05 80 00  	addi	a1, zero, 8
8000310c: 6f f0 df fc  	j	0x800030d8 <.LBB1_9>

80003110 <.LBB1_13>:
80003110: 93 05 40 00  	addi	a1, zero, 4
80003114: 6f f0 5f fc  	j	0x800030d8 <.LBB1_9>

80003118 <.LBB1_14>:
80003118: 93 05 20 00  	addi	a1, zero, 2
8000311c: 6f f0 df fb  	j	0x800030d8 <.LBB1_9>

80003120 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80003120: 93 05 05 fd  	addi	a1, a0, -48
80003124: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80003128: 93 05 fd ff  	addi	a1, s10, -1
8000312c: 93 06 90 00  	addi	a3, zero, 9
80003130: 63 ee c6 06  	bltu	a3, a2, 0x800031ac <.LBB1_15+0x8c>
80003134: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003138: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000313c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003140: b3 06 8b 03  	mul	a3, s6, s8
80003144: 93 85 15 00  	addi	a1, a1, 1
80003148: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000314c: 93 06 05 fd  	addi	a3, a0, -48
80003150: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003154: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80003158: e3 e0 86 ff  	bltu	a3, s8, 0x80003138 <.LBB1_15+0x18>
8000315c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003160: 63 16 75 0b  	bne	a0, s7, 0x8000320c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80003164: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80003168: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
8000316c: 93 05 05 fd  	addi	a1, a0, -48
80003170: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80003174: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80003178: 93 06 90 00  	addi	a3, zero, 9
8000317c: 63 e0 c6 06  	bltu	a3, a2, 0x800031dc <.LBB1_15+0xbc>
80003180: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003184: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003188: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000318c: b3 86 8b 03  	mul	a3, s7, s8
80003190: 93 85 15 00  	addi	a1, a1, 1
80003194: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003198: 93 06 05 fd  	addi	a3, a0, -48
8000319c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800031a0: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
800031a4: e3 e0 86 ff  	bltu	a3, s8, 0x80003184 <.LBB1_15+0x64>
800031a8: 6f 00 00 07  	j	0x80003218 <.LBB1_15+0xf8>
;     else if (*format == '*') {
800031ac: 13 06 a0 02  	addi	a2, zero, 42
800031b0: 63 18 c5 04  	bne	a0, a2, 0x80003200 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800031b4: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800031b8: 63 d4 05 00  	bgez	a1, 0x800031c0 <.LBB1_15+0xa0>
800031bc: 13 64 24 00  	ori	s0, s0, 2
800031c0: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800031c4: 03 45 0d 00  	lbu	a0, 0(s10)
800031c8: 13 d6 f5 41  	srai	a2, a1, 31
800031cc: b3 85 c5 00  	add	a1, a1, a2
800031d0: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800031d4: e3 08 75 f9  	beq	a0, s7, 0x80003164 <.LBB1_15+0x44>
800031d8: 6f 00 40 03  	j	0x8000320c <.LBB1_15+0xec>
;       else if (*format == '*') {
800031dc: 13 06 a0 02  	addi	a2, zero, 42
800031e0: 63 1a c5 02  	bne	a0, a2, 0x80003214 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800031e4: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800031e8: 63 44 70 01  	bgtz	s7, 0x800031f0 <.LBB1_15+0xd0>
800031ec: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
800031f0: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800031f4: 13 0d 2d 00  	addi	s10, s10, 2
800031f8: 93 89 49 00  	addi	s3, s3, 4
800031fc: 6f 00 00 02  	j	0x8000321c <.LBB1_15+0xfc>
80003200: 13 0b 00 00  	mv	s6, zero
80003204: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003208: e3 0e 75 f5  	beq	a0, s7, 0x80003164 <.LBB1_15+0x44>
8000320c: 93 0b 00 00  	mv	s7, zero
80003210: 6f 00 c0 00  	j	0x8000321c <.LBB1_15+0xfc>
80003214: 93 0b 00 00  	mv	s7, zero
80003218: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
8000321c: 93 05 85 f9  	addi	a1, a0, -104
80003220: 13 d6 15 00  	srli	a2, a1, 1
80003224: 93 95 f5 01  	slli	a1, a1, 31
80003228: b3 e5 c5 00  	or	a1, a1, a2
8000322c: 13 06 90 00  	addi	a2, zero, 9
80003230: 63 62 b6 06  	bltu	a2, a1, 0x80003294 <.LBB1_42>
80003234: 93 95 25 00  	slli	a1, a1, 2

80003238 <.LBB1_185>:
80003238: 17 26 00 00  	auipc	a2, 2
8000323c: 13 06 06 11  	addi	a2, a2, 272
80003240: b3 85 c5 00  	add	a1, a1, a2
80003244: 83 a6 05 00  	lw	a3, 0(a1)
80003248: 93 05 10 00  	addi	a1, zero, 1
8000324c: 13 06 00 10  	addi	a2, zero, 256
80003250: 67 80 06 00  	jr	a3

80003254 <.LBB1_36>:
;         if (*format == 'h') {
80003254: 03 45 1d 00  	lbu	a0, 1(s10)
80003258: 93 05 80 06  	addi	a1, zero, 104
8000325c: 63 12 b5 12  	bne	a0, a1, 0x80003380 <.LBB1_53+0x48>
80003260: 93 05 20 00  	addi	a1, zero, 2
80003264: 13 06 00 0c  	addi	a2, zero, 192
80003268: 6f 00 00 02  	j	0x80003288 <.LBB1_41>

8000326c <.LBB1_38>:
8000326c: 13 06 00 20  	addi	a2, zero, 512
80003270: 6f 00 80 01  	j	0x80003288 <.LBB1_41>

80003274 <.LBB1_39>:
;         if (*format == 'l') {
80003274: 03 45 1d 00  	lbu	a0, 1(s10)
80003278: 93 05 c0 06  	addi	a1, zero, 108
8000327c: 63 18 b5 10  	bne	a0, a1, 0x8000338c <.LBB1_53+0x54>
80003280: 93 05 20 00  	addi	a1, zero, 2
80003284: 13 06 00 30  	addi	a2, zero, 768

80003288 <.LBB1_41>:
80003288: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
8000328c: 03 45 0d 00  	lbu	a0, 0(s10)
80003290: 33 64 c4 00  	or	s0, s0, a2

80003294 <.LBB1_42>:
;     switch (*format) {
80003294: 93 05 b5 fd  	addi	a1, a0, -37
80003298: 13 06 30 05  	addi	a2, zero, 83
8000329c: 63 64 b6 10  	bltu	a2, a1, 0x800033a4 <.LBB1_59>
800032a0: 93 95 25 00  	slli	a1, a1, 2

800032a4 <.LBB1_186>:
800032a4: 17 26 00 00  	auipc	a2, 2
800032a8: 13 06 c6 0c  	addi	a2, a2, 204
800032ac: b3 85 c5 00  	add	a1, a1, a2
800032b0: 03 a6 05 00  	lw	a2, 0(a1)
800032b4: 93 05 80 00  	addi	a1, zero, 8
800032b8: 13 0c 00 01  	addi	s8, zero, 16
800032bc: 67 00 06 00  	jr	a2

800032c0 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800032c0: 13 74 f4 fe  	andi	s0, s0, -17
800032c4: 13 0c a0 00  	addi	s8, zero, 10

800032c8 <.LBB1_45>:
;         if (*format == 'X') {
800032c8: 93 05 80 05  	addi	a1, zero, 88
800032cc: 63 14 b5 00  	bne	a0, a1, 0x800032d4 <.LBB1_45+0xc>
800032d0: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800032d4: 93 05 40 06  	addi	a1, zero, 100
800032d8: 63 08 b5 0e  	beq	a0, a1, 0x800033c8 <.LBB1_62+0x8>
800032dc: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800032e0: 13 06 90 06  	addi	a2, zero, 105
800032e4: 63 02 c5 0e  	beq	a0, a2, 0x800033c8 <.LBB1_62+0x8>
800032e8: 6f 00 80 0d  	j	0x800033c0 <.LBB1_62>

800032ec <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800032ec: 93 05 60 04  	addi	a1, zero, 70
800032f0: 63 14 b5 00  	bne	a0, a1, 0x800032f8 <.LBB1_49+0xc>
800032f4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800032f8: 13 85 79 00  	addi	a0, s3, 7
800032fc: 13 75 85 ff  	andi	a0, a0, -8
80003300: 07 35 05 00  	fld	fa0, 0(a0)
80003304: 93 09 85 00  	addi	s3, a0, 8
80003308: 13 05 09 00  	mv	a0, s2
8000330c: 93 05 0a 00  	mv	a1, s4
80003310: 13 86 0c 00  	mv	a2, s9
80003314: 93 86 0a 00  	mv	a3, s5
80003318: 13 87 0b 00  	mv	a4, s7
8000331c: 93 07 0b 00  	mv	a5, s6
80003320: 13 08 04 00  	mv	a6, s0
80003324: 97 10 00 00  	auipc	ra, 1
80003328: e7 80 80 98  	jalr	-1656(ra)
8000332c: 6f 00 00 7c  	j	0x80003aec <.LBB1_124+0x2fc>

80003330 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80003330: 83 25 81 01  	lw	a1, 24(sp)
80003334: 33 64 b4 00  	or	s0, s0, a1

80003338 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80003338: 13 65 25 00  	ori	a0, a0, 2
8000333c: 93 05 70 04  	addi	a1, zero, 71
80003340: 63 14 b5 00  	bne	a0, a1, 0x80003348 <.LBB1_53+0x10>
80003344: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003348: 13 85 79 00  	addi	a0, s3, 7
8000334c: 13 75 85 ff  	andi	a0, a0, -8
80003350: 07 35 05 00  	fld	fa0, 0(a0)
80003354: 93 09 85 00  	addi	s3, a0, 8
80003358: 13 05 09 00  	mv	a0, s2
8000335c: 93 05 0a 00  	mv	a1, s4
80003360: 13 86 0c 00  	mv	a2, s9
80003364: 93 86 0a 00  	mv	a3, s5
80003368: 13 87 0b 00  	mv	a4, s7
8000336c: 93 07 0b 00  	mv	a5, s6
80003370: 13 08 04 00  	mv	a6, s0
80003374: 97 10 00 00  	auipc	ra, 1
80003378: e7 80 80 01  	jalr	24(ra)
8000337c: 6f 00 00 77  	j	0x80003aec <.LBB1_124+0x2fc>
80003380: 13 64 04 08  	ori	s0, s0, 128
80003384: 13 0d 1d 00  	addi	s10, s10, 1
80003388: 6f f0 df f0  	j	0x80003294 <.LBB1_42>
8000338c: 13 64 04 10  	ori	s0, s0, 256
80003390: 13 0d 1d 00  	addi	s10, s10, 1
80003394: 6f f0 1f f0  	j	0x80003294 <.LBB1_42>

80003398 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003398: 13 8c 1c 00  	addi	s8, s9, 1
8000339c: 13 05 50 02  	addi	a0, zero, 37
800033a0: 6f 00 80 00  	j	0x800033a8 <.LBB1_59+0x4>

800033a4 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
800033a4: 13 8c 1c 00  	addi	s8, s9, 1
800033a8: 93 05 0a 00  	mv	a1, s4
800033ac: 13 86 0c 00  	mv	a2, s9
800033b0: 93 86 0a 00  	mv	a3, s5
800033b4: e7 00 09 00  	jalr	s2
800033b8: 6f 00 80 73  	j	0x80003af0 <.LBB1_124+0x300>

800033bc <.LBB1_61>:
800033bc: 93 05 20 00  	addi	a1, zero, 2

800033c0 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800033c0: 13 74 34 ff  	andi	s0, s0, -13
800033c4: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800033c8: 93 75 04 40  	andi	a1, s0, 1024
800033cc: 63 84 05 00  	beqz	a1, 0x800033d4 <.LBB1_62+0x14>
800033d0: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800033d4: 93 05 90 06  	addi	a1, zero, 105
800033d8: 63 06 b5 00  	beq	a0, a1, 0x800033e4 <.LBB1_62+0x24>
800033dc: 93 05 40 06  	addi	a1, zero, 100
800033e0: 63 1c b5 12  	bne	a0, a1, 0x80003518 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800033e4: 13 75 04 20  	andi	a0, s0, 512
800033e8: 63 16 05 02  	bnez	a0, 0x80003414 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800033ec: 13 75 04 10  	andi	a0, s0, 256
800033f0: 63 1c 05 14  	bnez	a0, 0x80003548 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800033f4: 13 75 04 04  	andi	a0, s0, 64
800033f8: 63 18 05 4e  	bnez	a0, 0x800038e8 <.LBB1_124+0xf8>
800033fc: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003400: 93 75 04 08  	andi	a1, s0, 128
80003404: 63 84 05 4e  	beqz	a1, 0x800038ec <.LBB1_124+0xfc>
80003408: 13 15 08 01  	slli	a0, a6, 16
8000340c: 13 58 05 41  	srai	a6, a0, 16
80003410: 6f 00 c0 4d  	j	0x800038ec <.LBB1_124+0xfc>
80003414: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003418: 13 85 79 00  	addi	a0, s3, 7
8000341c: 13 75 85 ff  	andi	a0, a0, -8
80003420: 83 29 05 00  	lw	s3, 0(a0)
80003424: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003428: 13 65 45 00  	ori	a0, a0, 4
8000342c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80003430: 23 24 a1 00  	sw	a0, 8(sp)
80003434: 33 e5 a9 00  	or	a0, s3, a0
80003438: 63 14 05 00  	bnez	a0, 0x80003440 <.LBB1_62+0x80>
8000343c: 13 74 f4 fe  	andi	s0, s0, -17
80003440: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003444: 93 75 04 40  	andi	a1, s0, 1024
80003448: 93 d5 a5 00  	srli	a1, a1, 10
8000344c: 33 75 b5 00  	and	a0, a0, a1
80003450: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003454: 63 14 05 0a  	bnez	a0, 0x800034fc <.LBB1_62+0x13c>
80003458: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000345c: 63 da 04 00  	bgez	s1, 0x80003470 <.LBB1_62+0xb0>
80003460: 33 35 30 01  	snez	a0, s3
80003464: b3 09 30 41  	neg	s3, s3
80003468: 33 85 a4 00  	add	a0, s1, a0
8000346c: b3 04 a0 40  	neg	s1, a0
80003470: 13 09 00 00  	mv	s2, zero
80003474: 13 75 04 02  	andi	a0, s0, 32
80003478: 13 45 15 06  	xori	a0, a0, 97
8000347c: 13 05 65 0f  	addi	a0, a0, 246
80003480: 23 2a a1 00  	sw	a0, 20(sp)
80003484: 6f 00 40 02  	j	0x800034a8 <.LBB1_62+0xe8>
80003488: 13 06 10 00  	addi	a2, zero, 1
8000348c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003490: 93 36 f9 01  	sltiu	a3, s2, 31
80003494: 33 f6 c6 00  	and	a2, a3, a2
80003498: 13 89 07 00  	mv	s2, a5
8000349c: 93 09 05 00  	mv	s3, a0
800034a0: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034a4: 63 0c 06 04  	beqz	a2, 0x800034fc <.LBB1_62+0x13c>
;       value /= base;
800034a8: 13 85 09 00  	mv	a0, s3
800034ac: 93 85 04 00  	mv	a1, s1
800034b0: 13 06 0c 00  	mv	a2, s8
800034b4: 93 06 00 00  	mv	a3, zero
800034b8: 97 d0 ff ff  	auipc	ra, 1048573
800034bc: e7 80 80 b4  	jalr	-1208(ra)
800034c0: 33 06 85 03  	mul	a2, a0, s8
800034c4: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800034c8: 13 77 e6 0f  	andi	a4, a2, 254
800034cc: 93 06 00 03  	addi	a3, zero, 48
800034d0: 93 07 a0 00  	addi	a5, zero, 10
800034d4: 63 64 f7 00  	bltu	a4, a5, 0x800034dc <.LBB1_62+0x11c>
800034d8: 83 26 41 01  	lw	a3, 20(sp)
800034dc: 33 86 c6 00  	add	a2, a3, a2
800034e0: 93 06 c1 01  	addi	a3, sp, 28
800034e4: b3 86 26 01  	add	a3, a3, s2
800034e8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034ec: e3 9e 04 f8  	bnez	s1, 0x80003488 <.LBB1_62+0xc8>
800034f0: 33 b6 89 01  	sltu	a2, s3, s8
800034f4: 13 46 16 00  	xori	a2, a2, 1
800034f8: 6f f0 5f f9  	j	0x8000348c <.LBB1_62+0xcc>
800034fc: 03 25 41 00  	lw	a0, 4(sp)
80003500: 93 09 85 00  	addi	s3, a0, 8
80003504: 03 25 81 00  	lw	a0, 8(sp)
80003508: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000350c: 13 07 c1 01  	addi	a4, sp, 28
80003510: 03 29 c1 00  	lw	s2, 12(sp)
80003514: 6f 00 80 47  	j	0x8000398c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003518: 13 75 04 20  	andi	a0, s0, 512
8000351c: 63 12 05 0c  	bnez	a0, 0x800035e0 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80003520: 13 75 04 10  	andi	a0, s0, 256
80003524: 63 1e 05 46  	bnez	a0, 0x800039a0 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003528: 13 75 04 04  	andi	a0, s0, 64
8000352c: 63 10 05 50  	bnez	a0, 0x80003a2c <.LBB1_124+0x23c>
80003530: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003534: 93 75 04 08  	andi	a1, s0, 128
80003538: 63 8c 05 4e  	beqz	a1, 0x80003a30 <.LBB1_124+0x240>
8000353c: 83 25 01 01  	lw	a1, 16(sp)
80003540: 33 75 b5 00  	and	a0, a0, a1
80003544: 6f 00 c0 4e  	j	0x80003a30 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003548: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
8000354c: 63 14 08 00  	bnez	a6, 0x80003554 <.LBB1_62+0x194>
80003550: 13 74 f4 fe  	andi	s0, s0, -17
80003554: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003558: 13 76 04 40  	andi	a2, s0, 1024
8000355c: 13 56 a6 00  	srli	a2, a2, 10
80003560: b3 f5 c5 00  	and	a1, a1, a2
80003564: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003568: 63 9c 05 40  	bnez	a1, 0x80003980 <.LBB1_124+0x190>
8000356c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003570: 13 56 f8 41  	srai	a2, a6, 31
80003574: b3 06 c8 00  	add	a3, a6, a2
80003578: b3 c6 c6 00  	xor	a3, a3, a2
8000357c: 13 76 04 02  	andi	a2, s0, 32
80003580: 13 46 16 06  	xori	a2, a2, 97
80003584: 93 08 66 0f  	addi	a7, a2, 246
80003588: 6f 00 40 03  	j	0x800035bc <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000358c: 33 05 f6 00  	add	a0, a2, a5
80003590: 93 87 15 00  	addi	a5, a1, 1
80003594: 13 06 c1 01  	addi	a2, sp, 28
80003598: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000359c: b3 b6 86 01  	sltu	a3, a3, s8
800035a0: 93 c6 16 00  	xori	a3, a3, 1
800035a4: 93 b5 f5 01  	sltiu	a1, a1, 31
800035a8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800035ac: 23 00 a6 00  	sb	a0, 0(a2)
800035b0: 93 85 07 00  	mv	a1, a5
800035b4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800035b8: 63 84 04 3c  	beqz	s1, 0x80003980 <.LBB1_124+0x190>
;       value /= base;
800035bc: 33 d7 86 03  	divu	a4, a3, s8
800035c0: 33 06 87 03  	mul	a2, a4, s8
800035c4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800035c8: 13 f5 e7 0f  	andi	a0, a5, 254
800035cc: 13 06 00 03  	addi	a2, zero, 48
800035d0: 93 04 a0 00  	addi	s1, zero, 10
800035d4: e3 6c 95 fa  	bltu	a0, s1, 0x8000358c <.LBB1_62+0x1cc>
800035d8: 13 86 08 00  	mv	a2, a7
800035dc: 6f f0 1f fb  	j	0x8000358c <.LBB1_62+0x1cc>
800035e0: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800035e4: 13 85 79 00  	addi	a0, s3, 7
800035e8: 93 75 85 ff  	andi	a1, a0, -8
800035ec: 03 a9 05 00  	lw	s2, 0(a1)
800035f0: 13 e5 45 00  	ori	a0, a1, 4
800035f4: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800035f8: 33 65 39 01  	or	a0, s2, s3
800035fc: 23 24 b1 00  	sw	a1, 8(sp)
80003600: 63 14 05 00  	bnez	a0, 0x80003608 <.LBB1_62+0x248>
80003604: 13 74 f4 fe  	andi	s0, s0, -17
80003608: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000360c: 93 75 04 40  	andi	a1, s0, 1024
80003610: 93 d5 a5 00  	srli	a1, a1, 10
80003614: 33 75 b5 00  	and	a0, a0, a1
80003618: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000361c: 63 18 05 08  	bnez	a0, 0x800036ac <.LBB1_62+0x2ec>
80003620: 93 04 00 00  	mv	s1, zero
80003624: 13 75 04 02  	andi	a0, s0, 32
80003628: 13 45 15 06  	xori	a0, a0, 97
8000362c: 13 05 65 0f  	addi	a0, a0, 246
80003630: 23 2a a1 00  	sw	a0, 20(sp)
80003634: 6f 00 40 02  	j	0x80003658 <.LBB1_62+0x298>
80003638: 13 06 10 00  	addi	a2, zero, 1
8000363c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003640: 93 b6 f4 01  	sltiu	a3, s1, 31
80003644: 33 f6 c6 00  	and	a2, a3, a2
80003648: 93 84 07 00  	mv	s1, a5
8000364c: 13 09 05 00  	mv	s2, a0
80003650: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003654: 63 0c 06 04  	beqz	a2, 0x800036ac <.LBB1_62+0x2ec>
;       value /= base;
80003658: 13 05 09 00  	mv	a0, s2
8000365c: 93 85 09 00  	mv	a1, s3
80003660: 13 06 0c 00  	mv	a2, s8
80003664: 93 06 00 00  	mv	a3, zero
80003668: 97 d0 ff ff  	auipc	ra, 1048573
8000366c: e7 80 80 99  	jalr	-1640(ra)
80003670: 33 06 85 03  	mul	a2, a0, s8
80003674: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003678: 13 77 e6 0f  	andi	a4, a2, 254
8000367c: 93 06 00 03  	addi	a3, zero, 48
80003680: 93 07 a0 00  	addi	a5, zero, 10
80003684: 63 64 f7 00  	bltu	a4, a5, 0x8000368c <.LBB1_62+0x2cc>
80003688: 83 26 41 01  	lw	a3, 20(sp)
8000368c: 33 86 c6 00  	add	a2, a3, a2
80003690: 93 06 c1 01  	addi	a3, sp, 28
80003694: b3 86 96 00  	add	a3, a3, s1
80003698: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000369c: e3 9e 09 f8  	bnez	s3, 0x80003638 <.LBB1_62+0x278>
800036a0: 33 36 89 01  	sltu	a2, s2, s8
800036a4: 13 46 16 00  	xori	a2, a2, 1
800036a8: 6f f0 5f f9  	j	0x8000363c <.LBB1_62+0x27c>
800036ac: 03 25 81 00  	lw	a0, 8(sp)
800036b0: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800036b4: 13 07 c1 01  	addi	a4, sp, 28
800036b8: 03 29 c1 00  	lw	s2, 12(sp)
800036bc: 6f 00 40 40  	j	0x80003ac0 <.LBB1_124+0x2d0>

800036c0 <.LBB1_108>:
800036c0: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800036c4: 13 79 24 00  	andi	s2, s0, 2
800036c8: 93 04 10 00  	addi	s1, zero, 1
800036cc: 63 1e 09 02  	bnez	s2, 0x80003708 <.LBB1_108+0x48>
800036d0: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800036d4: 63 6a 9b 02  	bltu	s6, s1, 0x80003708 <.LBB1_108+0x48>
800036d8: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800036dc: 13 0c fb ff  	addi	s8, s6, -1
800036e0: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800036e4: 33 86 8c 00  	add	a2, s9, s0
800036e8: 13 05 00 02  	addi	a0, zero, 32
800036ec: 93 05 0a 00  	mv	a1, s4
800036f0: 93 86 0a 00  	mv	a3, s5
800036f4: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800036f8: 13 04 14 00  	addi	s0, s0, 1
800036fc: e3 14 8c fe  	bne	s8, s0, 0x800036e4 <.LBB1_108+0x24>
80003700: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003704: b3 8c 8c 00  	add	s9, s9, s0
80003708: 03 c5 09 00  	lbu	a0, 0(s3)
8000370c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003710: 93 89 49 00  	addi	s3, s3, 4
80003714: 13 8c 1c 00  	addi	s8, s9, 1
80003718: 93 05 0a 00  	mv	a1, s4
8000371c: 13 86 0c 00  	mv	a2, s9
80003720: 93 86 0a 00  	mv	a3, s5
80003724: 13 89 0b 00  	mv	s2, s7
80003728: e7 80 0b 00  	jalr	s7
8000372c: 33 b5 64 01  	sltu	a0, s1, s6
80003730: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003734: 33 65 a4 00  	or	a0, s0, a0
80003738: 63 1c 05 3a  	bnez	a0, 0x80003af0 <.LBB1_124+0x300>
;           while (l++ < width) {
8000373c: 33 04 9b 40  	sub	s0, s6, s1
80003740: 93 0b e0 02  	addi	s7, zero, 46
80003744: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003748: 13 0c 1c 00  	addi	s8, s8, 1
8000374c: 13 05 00 02  	addi	a0, zero, 32
80003750: 93 05 0a 00  	mv	a1, s4
80003754: 93 86 0a 00  	mv	a3, s5
80003758: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000375c: 13 04 f4 ff  	addi	s0, s0, -1
80003760: e3 12 04 fe  	bnez	s0, 0x80003744 <.LBB1_108+0x84>
80003764: 13 0b 50 02  	addi	s6, zero, 37
80003768: 13 04 1d 00  	addi	s0, s10, 1
8000376c: 6f f0 df 91  	j	0x80003088 <.LBB1_183+0x30>

80003770 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003770: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003774: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003778: 63 14 05 00  	bnez	a0, 0x80003780 <.LBB1_117+0x10>
8000377c: 93 fe fe fe  	andi	t4, t4, -17
80003780: 93 04 a0 00  	addi	s1, zero, 10
80003784: 13 04 f0 00  	addi	s0, zero, 15
80003788: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000378c: 13 f6 0e 40  	andi	a2, t4, 1024
80003790: 13 56 a6 00  	srli	a2, a2, 10
80003794: b3 f5 c5 00  	and	a1, a1, a2
80003798: 93 07 00 00  	mv	a5, zero
8000379c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800037a0: 63 98 05 10  	bnez	a1, 0x800038b0 <.LBB1_124+0xc0>
800037a4: 93 05 00 00  	mv	a1, zero
800037a8: 6f 00 40 03  	j	0x800037dc <.LBB1_117+0x6c>
800037ac: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037b0: 33 06 d6 00  	add	a2, a2, a3
800037b4: 93 87 15 00  	addi	a5, a1, 1
800037b8: 93 06 c1 01  	addi	a3, sp, 28
800037bc: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037c0: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800037c4: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037c8: 93 b5 f5 01  	sltiu	a1, a1, 31
800037cc: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037d0: 23 80 c6 00  	sb	a2, 0(a3)
800037d4: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037d8: 63 0c 07 0c  	beqz	a4, 0x800038b0 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037dc: 93 76 e5 00  	andi	a3, a0, 14
800037e0: 13 06 00 03  	addi	a2, zero, 48
800037e4: e3 e4 96 fc  	bltu	a3, s1, 0x800037ac <.LBB1_117+0x3c>
800037e8: 13 06 70 03  	addi	a2, zero, 55
800037ec: 6f f0 1f fc  	j	0x800037ac <.LBB1_117+0x3c>

800037f0 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800037f0: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800037f4: 03 c5 07 00  	lbu	a0, 0(a5)
800037f8: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800037fc: 63 0c 05 02  	beqz	a0, 0x80003834 <.LBB1_124+0x44>
80003800: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003804: 63 84 0b 00  	beqz	s7, 0x8000380c <.LBB1_124+0x1c>
80003808: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
8000380c: 93 85 f5 ff  	addi	a1, a1, -1
80003810: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003814: 03 c7 16 00  	lbu	a4, 1(a3)
80003818: 13 86 16 00  	addi	a2, a3, 1
8000381c: b3 36 e0 00  	snez	a3, a4
80003820: 33 37 b0 00  	snez	a4, a1
80003824: 33 77 d7 00  	and	a4, a4, a3
80003828: 93 85 f5 ff  	addi	a1, a1, -1
8000382c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003830: e3 12 07 fe  	bnez	a4, 0x80003814 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003834: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003838: 93 75 04 40  	andi	a1, s0, 1024
8000383c: 93 b4 15 00  	seqz	s1, a1
80003840: 23 2a c1 00  	sw	a2, 20(sp)
80003844: b3 35 76 01  	sltu	a1, a2, s7
80003848: b3 e5 b4 00  	or	a1, s1, a1
8000384c: 63 94 05 00  	bnez	a1, 0x80003854 <.LBB1_124+0x64>
80003850: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003854: 93 75 24 00  	andi	a1, s0, 2
80003858: 23 26 b1 00  	sw	a1, 12(sp)
8000385c: 63 96 05 2a  	bnez	a1, 0x80003b08 <.LBB1_124+0x318>
80003860: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003864: 63 fe 65 29  	bgeu	a1, s6, 0x80003b00 <.LBB1_124+0x310>
80003868: 23 24 f1 00  	sw	a5, 8(sp)
8000386c: 13 04 00 00  	mv	s0, zero
80003870: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003874: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003878: 33 86 8c 00  	add	a2, s9, s0
8000387c: 13 05 00 02  	addi	a0, zero, 32
80003880: 93 05 0a 00  	mv	a1, s4
80003884: 93 86 0a 00  	mv	a3, s5
80003888: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
8000388c: 13 04 14 00  	addi	s0, s0, 1
80003890: e3 14 89 fe  	bne	s2, s0, 0x80003878 <.LBB1_124+0x88>
80003894: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003898: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
8000389c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800038a0: 23 2a b1 00  	sw	a1, 20(sp)
800038a4: b3 8c 8c 00  	add	s9, s9, s0
800038a8: 13 09 0c 00  	mv	s2, s8
800038ac: 6f 00 c0 25  	j	0x80003b08 <.LBB1_124+0x318>
800038b0: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800038b4: 13 07 c1 01  	addi	a4, sp, 28
800038b8: 93 08 00 01  	addi	a7, zero, 16
800038bc: 13 0e 80 00  	addi	t3, zero, 8
800038c0: 13 05 09 00  	mv	a0, s2
800038c4: 93 05 0a 00  	mv	a1, s4
800038c8: 13 86 0c 00  	mv	a2, s9
800038cc: 93 86 0a 00  	mv	a3, s5
800038d0: 13 08 00 00  	mv	a6, zero
800038d4: 93 83 0b 00  	mv	t2, s7
800038d8: 97 10 00 00  	auipc	ra, 1
800038dc: e7 80 00 fa  	jalr	-96(ra)
800038e0: 13 0c 05 00  	mv	s8, a0
800038e4: 6f 00 00 21  	j	0x80003af4 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800038e8: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800038ec: 63 14 08 00  	bnez	a6, 0x800038f4 <.LBB1_124+0x104>
800038f0: 13 74 f4 fe  	andi	s0, s0, -17
800038f4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800038f8: 13 76 04 40  	andi	a2, s0, 1024
800038fc: 13 56 a6 00  	srli	a2, a2, 10
80003900: b3 f5 c5 00  	and	a1, a1, a2
80003904: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003908: 63 9c 05 06  	bnez	a1, 0x80003980 <.LBB1_124+0x190>
8000390c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003910: 13 56 f8 41  	srai	a2, a6, 31
80003914: b3 06 c8 00  	add	a3, a6, a2
80003918: b3 c6 c6 00  	xor	a3, a3, a2
8000391c: 13 76 04 02  	andi	a2, s0, 32
80003920: 13 46 16 06  	xori	a2, a2, 97
80003924: 93 08 66 0f  	addi	a7, a2, 246
80003928: 6f 00 40 03  	j	0x8000395c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000392c: 33 05 f6 00  	add	a0, a2, a5
80003930: 93 87 15 00  	addi	a5, a1, 1
80003934: 13 06 c1 01  	addi	a2, sp, 28
80003938: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000393c: b3 b6 86 01  	sltu	a3, a3, s8
80003940: 93 c6 16 00  	xori	a3, a3, 1
80003944: 93 b5 f5 01  	sltiu	a1, a1, 31
80003948: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000394c: 23 00 a6 00  	sb	a0, 0(a2)
80003950: 93 85 07 00  	mv	a1, a5
80003954: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003958: 63 84 04 02  	beqz	s1, 0x80003980 <.LBB1_124+0x190>
;       value /= base;
8000395c: 33 d7 86 03  	divu	a4, a3, s8
80003960: 33 06 87 03  	mul	a2, a4, s8
80003964: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003968: 13 f5 e7 0f  	andi	a0, a5, 254
8000396c: 13 06 00 03  	addi	a2, zero, 48
80003970: 93 04 a0 00  	addi	s1, zero, 10
80003974: e3 6c 95 fa  	bltu	a0, s1, 0x8000392c <.LBB1_124+0x13c>
80003978: 13 86 08 00  	mv	a2, a7
8000397c: 6f f0 1f fb  	j	0x8000392c <.LBB1_124+0x13c>
80003980: 93 89 49 00  	addi	s3, s3, 4
80003984: 13 58 f8 01  	srli	a6, a6, 31
80003988: 13 07 c1 01  	addi	a4, sp, 28
8000398c: 13 05 09 00  	mv	a0, s2
80003990: 93 05 0a 00  	mv	a1, s4
80003994: 13 86 0c 00  	mv	a2, s9
80003998: 93 86 0a 00  	mv	a3, s5
8000399c: 6f 00 80 13  	j	0x80003ad4 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800039a0: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800039a4: 63 14 05 00  	bnez	a0, 0x800039ac <.LBB1_124+0x1bc>
800039a8: 13 74 f4 fe  	andi	s0, s0, -17
800039ac: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800039b0: 13 76 04 40  	andi	a2, s0, 1024
800039b4: 13 56 a6 00  	srli	a2, a2, 10
800039b8: b3 f5 c5 00  	and	a1, a1, a2
800039bc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800039c0: 63 9c 05 0e  	bnez	a1, 0x80003ab8 <.LBB1_124+0x2c8>
800039c4: 13 06 00 00  	mv	a2, zero
800039c8: 93 75 04 02  	andi	a1, s0, 32
800039cc: 93 c5 15 06  	xori	a1, a1, 97
800039d0: 13 88 65 0f  	addi	a6, a1, 246
800039d4: 6f 00 40 03  	j	0x80003a08 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039d8: 33 87 e7 00  	add	a4, a5, a4
800039dc: 93 07 16 00  	addi	a5, a2, 1
800039e0: 93 05 c1 01  	addi	a1, sp, 28
800039e4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039e8: 33 35 85 01  	sltu	a0, a0, s8
800039ec: 13 45 15 00  	xori	a0, a0, 1
800039f0: 13 36 f6 01  	sltiu	a2, a2, 31
800039f4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039f8: 23 80 e4 00  	sb	a4, 0(s1)
800039fc: 13 86 07 00  	mv	a2, a5
80003a00: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a04: 63 8a 05 0a  	beqz	a1, 0x80003ab8 <.LBB1_124+0x2c8>
;       value /= base;
80003a08: b3 56 85 03  	divu	a3, a0, s8
80003a0c: 33 87 86 03  	mul	a4, a3, s8
80003a10: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a14: 93 74 e7 0f  	andi	s1, a4, 254
80003a18: 93 07 00 03  	addi	a5, zero, 48
80003a1c: 93 05 a0 00  	addi	a1, zero, 10
80003a20: e3 ec b4 fa  	bltu	s1, a1, 0x800039d8 <.LBB1_124+0x1e8>
80003a24: 93 07 08 00  	mv	a5, a6
80003a28: 6f f0 1f fb  	j	0x800039d8 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003a2c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80003a30: 63 14 05 00  	bnez	a0, 0x80003a38 <.LBB1_124+0x248>
80003a34: 13 74 f4 fe  	andi	s0, s0, -17
80003a38: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a3c: 13 76 04 40  	andi	a2, s0, 1024
80003a40: 13 56 a6 00  	srli	a2, a2, 10
80003a44: b3 f5 c5 00  	and	a1, a1, a2
80003a48: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a4c: 63 96 05 06  	bnez	a1, 0x80003ab8 <.LBB1_124+0x2c8>
80003a50: 13 06 00 00  	mv	a2, zero
80003a54: 93 75 04 02  	andi	a1, s0, 32
80003a58: 93 c5 15 06  	xori	a1, a1, 97
80003a5c: 13 88 65 0f  	addi	a6, a1, 246
80003a60: 6f 00 40 03  	j	0x80003a94 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a64: 33 87 e7 00  	add	a4, a5, a4
80003a68: 93 07 16 00  	addi	a5, a2, 1
80003a6c: 93 05 c1 01  	addi	a1, sp, 28
80003a70: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a74: 33 35 85 01  	sltu	a0, a0, s8
80003a78: 13 45 15 00  	xori	a0, a0, 1
80003a7c: 13 36 f6 01  	sltiu	a2, a2, 31
80003a80: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a84: 23 80 e4 00  	sb	a4, 0(s1)
80003a88: 13 86 07 00  	mv	a2, a5
80003a8c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a90: 63 84 05 02  	beqz	a1, 0x80003ab8 <.LBB1_124+0x2c8>
;       value /= base;
80003a94: b3 56 85 03  	divu	a3, a0, s8
80003a98: 33 87 86 03  	mul	a4, a3, s8
80003a9c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003aa0: 93 74 e7 0f  	andi	s1, a4, 254
80003aa4: 93 07 00 03  	addi	a5, zero, 48
80003aa8: 93 05 a0 00  	addi	a1, zero, 10
80003aac: e3 ec b4 fa  	bltu	s1, a1, 0x80003a64 <.LBB1_124+0x274>
80003ab0: 93 07 08 00  	mv	a5, a6
80003ab4: 6f f0 1f fb  	j	0x80003a64 <.LBB1_124+0x274>
80003ab8: 93 89 49 00  	addi	s3, s3, 4
80003abc: 13 07 c1 01  	addi	a4, sp, 28
80003ac0: 13 05 09 00  	mv	a0, s2
80003ac4: 93 05 0a 00  	mv	a1, s4
80003ac8: 13 86 0c 00  	mv	a2, s9
80003acc: 93 86 0a 00  	mv	a3, s5
80003ad0: 13 08 00 00  	mv	a6, zero
80003ad4: 93 08 0c 00  	mv	a7, s8
80003ad8: 93 83 0b 00  	mv	t2, s7
80003adc: 13 0e 0b 00  	mv	t3, s6
80003ae0: 93 0e 04 00  	mv	t4, s0
80003ae4: 97 10 00 00  	auipc	ra, 1
80003ae8: e7 80 40 d9  	jalr	-620(ra)
80003aec: 13 0c 05 00  	mv	s8, a0
80003af0: 13 0b 50 02  	addi	s6, zero, 37
80003af4: 93 0b e0 02  	addi	s7, zero, 46
80003af8: 13 04 1d 00  	addi	s0, s10, 1
80003afc: 6f f0 cf d8  	j	0x80003088 <.LBB1_183+0x30>
80003b00: 93 85 15 00  	addi	a1, a1, 1
80003b04: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003b08: 63 00 05 04  	beqz	a0, 0x80003b48 <.LBB1_124+0x358>
80003b0c: 13 84 17 00  	addi	s0, a5, 1
80003b10: 6f 00 00 03  	j	0x80003b40 <.LBB1_124+0x350>
80003b14: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80003b18: 13 8c 1c 00  	addi	s8, s9, 1
80003b1c: 13 75 f5 0f  	andi	a0, a0, 255
80003b20: 93 05 0a 00  	mv	a1, s4
80003b24: 13 86 0c 00  	mv	a2, s9
80003b28: 93 86 0a 00  	mv	a3, s5
80003b2c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003b30: 03 45 04 00  	lbu	a0, 0(s0)
80003b34: 13 04 14 00  	addi	s0, s0, 1
80003b38: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003b3c: 63 08 05 00  	beqz	a0, 0x80003b4c <.LBB1_124+0x35c>
80003b40: e3 9c 04 fc  	bnez	s1, 0x80003b18 <.LBB1_124+0x328>
80003b44: e3 98 0b fc  	bnez	s7, 0x80003b14 <.LBB1_124+0x324>
80003b48: 13 8c 0c 00  	mv	s8, s9
80003b4c: 03 25 c1 00  	lw	a0, 12(sp)
80003b50: 13 35 15 00  	seqz	a0, a0
80003b54: 03 26 41 01  	lw	a2, 20(sp)
80003b58: b3 35 66 01  	sltu	a1, a2, s6
80003b5c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80003b60: 33 65 b5 00  	or	a0, a0, a1
80003b64: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80003b68: e3 14 05 f8  	bnez	a0, 0x80003af0 <.LBB1_124+0x300>
;           while (l++ < width) {
80003b6c: 33 04 cb 40  	sub	s0, s6, a2
80003b70: 93 0b e0 02  	addi	s7, zero, 46
80003b74: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003b78: 13 0c 1c 00  	addi	s8, s8, 1
80003b7c: 13 05 00 02  	addi	a0, zero, 32
80003b80: 93 05 0a 00  	mv	a1, s4
80003b84: 93 86 0a 00  	mv	a3, s5
80003b88: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003b8c: 13 04 f4 ff  	addi	s0, s0, -1
80003b90: e3 12 04 fe  	bnez	s0, 0x80003b74 <.LBB1_124+0x384>
80003b94: 13 0b 50 02  	addi	s6, zero, 37
80003b98: 13 04 1d 00  	addi	s0, s10, 1
80003b9c: 6f f0 cf ce  	j	0x80003088 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003ba0: 13 86 0c 00  	mv	a2, s9
80003ba4: 63 e4 5c 01  	bltu	s9, s5, 0x80003bac <.LBB1_124+0x3bc>
80003ba8: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003bac: 13 05 00 00  	mv	a0, zero
80003bb0: 93 05 0a 00  	mv	a1, s4
80003bb4: 93 86 0a 00  	mv	a3, s5
80003bb8: e7 00 09 00  	jalr	s2
;   return (int)idx;
80003bbc: 13 85 0c 00  	mv	a0, s9
80003bc0: 83 2d c1 03  	lw	s11, 60(sp)
80003bc4: 03 2d 01 04  	lw	s10, 64(sp)
80003bc8: 83 2c 41 04  	lw	s9, 68(sp)
80003bcc: 03 2c 81 04  	lw	s8, 72(sp)
80003bd0: 83 2b c1 04  	lw	s7, 76(sp)
80003bd4: 03 2b 01 05  	lw	s6, 80(sp)
80003bd8: 83 2a 41 05  	lw	s5, 84(sp)
80003bdc: 03 2a 81 05  	lw	s4, 88(sp)
80003be0: 83 29 c1 05  	lw	s3, 92(sp)
80003be4: 03 29 01 06  	lw	s2, 96(sp)
80003be8: 83 24 41 06  	lw	s1, 100(sp)
80003bec: 03 24 81 06  	lw	s0, 104(sp)
80003bf0: 83 20 c1 06  	lw	ra, 108(sp)
80003bf4: 13 01 01 07  	addi	sp, sp, 112
80003bf8: 67 80 00 00  	ret

80003bfc <_out_char.llvm.11632292163828655644>:
;   if (character) {
80003bfc: 63 04 05 0a  	beqz	a0, 0x80003ca4 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003c00: f3 25 40 f1  	csrr	a1, mhartid
80003c04: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80003c08: 33 86 c5 02  	mul	a2, a1, a2

80003c0c <.LBB2_6>:
80003c0c: 97 26 00 00  	auipc	a3, 2
80003c10: 93 86 86 a7  	addi	a3, a3, -1416
80003c14: b3 05 d6 00  	add	a1, a2, a3
80003c18: 03 a7 05 00  	lw	a4, 0(a1)
80003c1c: 93 07 17 00  	addi	a5, a4, 1
80003c20: 23 a0 f5 00  	sw	a5, 0(a1)
80003c24: 33 87 e5 00  	add	a4, a1, a4
80003c28: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80003c2c: 03 a7 05 00  	lw	a4, 0(a1)
80003c30: 13 07 47 c0  	addi	a4, a4, -1020
80003c34: 33 37 e0 00  	snez	a4, a4
80003c38: 13 05 65 ff  	addi	a0, a0, -10
80003c3c: 33 35 a0 00  	snez	a0, a0
80003c40: 33 75 e5 00  	and	a0, a0, a4
80003c44: 63 10 05 06  	bnez	a0, 0x80003ca4 <.LBB2_8+0x18>
80003c48: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80003c4c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003c50: 23 26 05 00  	sw	zero, 12(a0)
80003c54: 93 06 00 04  	addi	a3, zero, 64
80003c58: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80003c5c: 23 2a 05 00  	sw	zero, 20(a0)
80003c60: 93 06 10 00  	addi	a3, zero, 1
80003c64: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80003c68: 23 2e 05 00  	sw	zero, 28(a0)
80003c6c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003c70: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003c74: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003c78: 23 22 05 02  	sw	zero, 36(a0)
80003c7c: 23 20 c5 02  	sw	a2, 32(a0)

80003c80 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80003c80: 17 25 00 00  	auipc	a0, 2
80003c84: 13 05 05 8c  	addi	a0, a0, -1856
80003c88: 23 20 d5 00  	sw	a3, 0(a0)

80003c8c <.LBB2_8>:
80003c8c: 17 25 00 00  	auipc	a0, 2
80003c90: 13 05 45 8f  	addi	a0, a0, -1804
;         while (fromhost == 0)
80003c94: 03 26 05 00  	lw	a2, 0(a0)
80003c98: e3 0e 06 fe  	beqz	a2, 0x80003c94 <.LBB2_8+0x8>
;         fromhost = 0;
80003c9c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80003ca0: 23 a0 05 00  	sw	zero, 0(a1)
; }
80003ca4: 67 80 00 00  	ret

80003ca8 <_out_null>:
; }
80003ca8: 67 80 00 00  	ret

80003cac <_ftoa>:
; {
80003cac: 13 01 01 f9  	addi	sp, sp, -112
80003cb0: 23 26 11 06  	sw	ra, 108(sp)
80003cb4: 23 24 81 06  	sw	s0, 104(sp)
80003cb8: 23 22 91 06  	sw	s1, 100(sp)
80003cbc: 23 20 21 07  	sw	s2, 96(sp)
80003cc0: 23 2e 31 05  	sw	s3, 92(sp)
80003cc4: 23 2c 41 05  	sw	s4, 88(sp)
80003cc8: 23 2a 51 05  	sw	s5, 84(sp)
80003ccc: 23 28 61 05  	sw	s6, 80(sp)
80003cd0: 23 26 71 05  	sw	s7, 76(sp)
80003cd4: 23 24 81 05  	sw	s8, 72(sp)
80003cd8: 23 22 91 05  	sw	s9, 68(sp)
80003cdc: 23 20 a1 05  	sw	s10, 64(sp)
80003ce0: 27 3c 81 02  	fsd	fs0, 56(sp)
80003ce4: 27 38 91 02  	fsd	fs1, 48(sp)
80003ce8: 27 34 21 03  	fsd	fs2, 40(sp)

80003cec <.LBB4_83>:
80003cec: 97 24 00 00  	auipc	s1, 2
80003cf0: 93 84 c4 8e  	addi	s1, s1, -1812
80003cf4: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80003cf8: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80003cfc: 93 0a 08 00  	mv	s5, a6
80003d00: 13 89 07 00  	mv	s2, a5
80003d04: 93 89 06 00  	mv	s3, a3
80003d08: 13 0a 06 00  	mv	s4, a2
80003d0c: 13 8b 05 00  	mv	s6, a1
80003d10: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80003d14: 63 98 04 0e  	bnez	s1, 0x80003e04 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003d18: 13 f5 2a 00  	andi	a0, s5, 2
80003d1c: 93 f5 3a 00  	andi	a1, s5, 3
80003d20: b3 35 b0 00  	snez	a1, a1
80003d24: 13 36 59 00  	sltiu	a2, s2, 5
80003d28: b3 65 b6 00  	or	a1, a2, a1
80003d2c: 93 5c 15 00  	srli	s9, a0, 1
80003d30: 13 04 0a 00  	mv	s0, s4
80003d34: 63 96 05 02  	bnez	a1, 0x80003d60 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80003d38: 93 04 c9 ff  	addi	s1, s2, -4
80003d3c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003d40: 13 04 16 00  	addi	s0, a2, 1
80003d44: 13 05 00 02  	addi	a0, zero, 32
80003d48: 93 05 0b 00  	mv	a1, s6
80003d4c: 93 86 09 00  	mv	a3, s3
80003d50: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003d54: 93 84 f4 ff  	addi	s1, s1, -1
80003d58: 13 06 04 00  	mv	a2, s0
80003d5c: e3 92 04 fe  	bnez	s1, 0x80003d40 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80003d60: 93 04 14 00  	addi	s1, s0, 1
80003d64: 13 05 d0 02  	addi	a0, zero, 45
80003d68: 93 05 0b 00  	mv	a1, s6
80003d6c: 13 06 04 00  	mv	a2, s0
80003d70: 93 86 09 00  	mv	a3, s3
80003d74: e7 80 0b 00  	jalr	s7
80003d78: 93 0a 24 00  	addi	s5, s0, 2
80003d7c: 13 05 90 06  	addi	a0, zero, 105
80003d80: 93 05 0b 00  	mv	a1, s6
80003d84: 13 86 04 00  	mv	a2, s1
80003d88: 93 86 09 00  	mv	a3, s3
80003d8c: e7 80 0b 00  	jalr	s7
80003d90: 13 0c 34 00  	addi	s8, s0, 3
80003d94: 13 05 e0 06  	addi	a0, zero, 110
80003d98: 93 05 0b 00  	mv	a1, s6
80003d9c: 13 86 0a 00  	mv	a2, s5
80003da0: 93 86 09 00  	mv	a3, s3
80003da4: e7 80 0b 00  	jalr	s7
80003da8: 93 04 44 00  	addi	s1, s0, 4
80003dac: 13 05 60 06  	addi	a0, zero, 102
80003db0: 93 05 0b 00  	mv	a1, s6
80003db4: 13 06 0c 00  	mv	a2, s8
80003db8: 93 86 09 00  	mv	a3, s3
80003dbc: e7 80 0b 00  	jalr	s7
80003dc0: 33 85 44 41  	sub	a0, s1, s4
80003dc4: 33 35 25 01  	sltu	a0, a0, s2
80003dc8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003dcc: 93 c5 1c 00  	xori	a1, s9, 1
80003dd0: 33 e5 a5 00  	or	a0, a1, a0
80003dd4: 63 16 05 56  	bnez	a0, 0x80004340 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003dd8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003ddc: 13 84 14 00  	addi	s0, s1, 1
80003de0: 13 05 00 02  	addi	a0, zero, 32
80003de4: 93 05 0b 00  	mv	a1, s6
80003de8: 13 86 04 00  	mv	a2, s1
80003dec: 93 86 09 00  	mv	a3, s3
80003df0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003df4: 33 05 8a 00  	add	a0, s4, s0
80003df8: 93 04 04 00  	mv	s1, s0
80003dfc: e3 60 25 ff  	bltu	a0, s2, 0x80003ddc <.LBB4_83+0xf0>
80003e00: 6f 00 40 54  	j	0x80004344 <.LBB4_90+0x378>
80003e04: 53 04 a5 22  	fmv.d	fs0, fa0

80003e08 <.LBB4_84>:
80003e08: 17 15 00 00  	auipc	a0, 1
80003e0c: 13 05 85 7d  	addi	a0, a0, 2008
80003e10: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80003e14: 53 05 05 a2  	fle.d	a0, fa0, ft0
80003e18: 63 1e 05 00  	bnez	a0, 0x80003e34 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003e1c: 93 f5 4a 00  	andi	a1, s5, 4
80003e20: 13 b5 15 00  	seqz	a0, a1
80003e24: 63 82 05 06  	beqz	a1, 0x80003e88 <.LBB4_88>

80003e28 <.LBB4_85>:
80003e28: 17 1c 00 00  	auipc	s8, 1
80003e2c: 13 0c 8c 4b  	addi	s8, s8, 1208
80003e30: 6f 00 00 06  	j	0x80003e90 <.LBB4_88+0x8>

80003e34 <.LBB4_86>:
80003e34: 17 15 00 00  	auipc	a0, 1
80003e38: 13 05 45 7b  	addi	a0, a0, 1972
80003e3c: 07 30 05 00  	fld	ft0, 0(a0)

80003e40 <.LBB4_87>:
80003e40: 17 15 00 00  	auipc	a0, 1
80003e44: 13 05 05 7b  	addi	a0, a0, 1968
80003e48: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80003e4c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80003e50: d3 85 80 a2  	fle.d	a1, ft1, fs0
80003e54: 33 75 b5 00  	and	a0, a0, a1
80003e58: 63 1e 05 0e  	bnez	a0, 0x80003f54 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80003e5c: 13 85 0b 00  	mv	a0, s7
80003e60: 93 05 0b 00  	mv	a1, s6
80003e64: 13 06 0a 00  	mv	a2, s4
80003e68: 93 86 09 00  	mv	a3, s3
80003e6c: 53 05 84 22  	fmv.d	fa0, fs0
80003e70: 93 07 09 00  	mv	a5, s2
80003e74: 13 88 0a 00  	mv	a6, s5
80003e78: 97 00 00 00  	auipc	ra, 0
80003e7c: e7 80 40 51  	jalr	1300(ra)
80003e80: 13 04 05 00  	mv	s0, a0
80003e84: 6f 00 00 4c  	j	0x80004344 <.LBB4_90+0x378>

80003e88 <.LBB4_88>:
80003e88: 17 1c 00 00  	auipc	s8, 1
80003e8c: 13 0c 7c 47  	addi	s8, s8, 1143
80003e90: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003e94: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003e98: 13 f5 3a 00  	andi	a0, s5, 3
80003e9c: 33 35 a0 00  	snez	a0, a0
80003ea0: b3 b5 2c 01  	sltu	a1, s9, s2
80003ea4: 93 c5 15 00  	xori	a1, a1, 1
80003ea8: 33 65 b5 00  	or	a0, a0, a1
80003eac: 93 fa 2a 00  	andi	s5, s5, 2
80003eb0: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003eb4: 63 16 05 02  	bnez	a0, 0x80003ee0 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80003eb8: 33 04 99 41  	sub	s0, s2, s9
80003ebc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003ec0: 93 04 16 00  	addi	s1, a2, 1
80003ec4: 13 05 00 02  	addi	a0, zero, 32
80003ec8: 93 05 0b 00  	mv	a1, s6
80003ecc: 93 86 09 00  	mv	a3, s3
80003ed0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003ed4: 13 04 f4 ff  	addi	s0, s0, -1
80003ed8: 13 86 04 00  	mv	a2, s1
80003edc: e3 12 04 fe  	bnez	s0, 0x80003ec0 <.LBB4_88+0x38>
80003ee0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003ee4: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003ee8: 33 05 9c 01  	add	a0, s8, s9
80003eec: 03 45 05 00  	lbu	a0, 0(a0)
80003ef0: 13 86 04 00  	mv	a2, s1
80003ef4: 13 84 fc ff  	addi	s0, s9, -1
80003ef8: 93 84 14 00  	addi	s1, s1, 1
80003efc: 93 05 0b 00  	mv	a1, s6
80003f00: 93 86 09 00  	mv	a3, s3
80003f04: e7 80 0b 00  	jalr	s7
80003f08: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80003f0c: e3 1e 04 fc  	bnez	s0, 0x80003ee8 <.LBB4_88+0x60>
80003f10: 33 85 44 41  	sub	a0, s1, s4
80003f14: 33 35 25 01  	sltu	a0, a0, s2
80003f18: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003f1c: 93 c5 1a 00  	xori	a1, s5, 1
80003f20: 33 e5 a5 00  	or	a0, a1, a0
80003f24: 63 1e 05 40  	bnez	a0, 0x80004340 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003f28: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003f2c: 13 84 14 00  	addi	s0, s1, 1
80003f30: 13 05 00 02  	addi	a0, zero, 32
80003f34: 93 05 0b 00  	mv	a1, s6
80003f38: 13 86 04 00  	mv	a2, s1
80003f3c: 93 86 09 00  	mv	a3, s3
80003f40: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003f44: 33 05 8a 00  	add	a0, s4, s0
80003f48: 93 04 04 00  	mv	s1, s0
80003f4c: e3 60 25 ff  	bltu	a0, s2, 0x80003f2c <.LBB4_88+0xa4>
80003f50: 6f 00 40 3f  	j	0x80004344 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80003f54: 13 f5 0a 40  	andi	a0, s5, 1024
80003f58: 13 0c 60 00  	addi	s8, zero, 6
80003f5c: 63 04 05 00  	beqz	a0, 0x80003f64 <.LBB4_88+0xdc>
80003f60: 13 0c 07 00  	mv	s8, a4
80003f64: 13 05 a0 00  	addi	a0, zero, 10
80003f68: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003f6c: 63 6c ac 02  	bltu	s8, a0, 0x80003fa4 <.LBB4_88+0x11c>
80003f70: 93 04 6c ff  	addi	s1, s8, -10
80003f74: 13 05 f0 01  	addi	a0, zero, 31
80003f78: 63 e4 a4 00  	bltu	s1, a0, 0x80003f80 <.LBB4_88+0xf8>
80003f7c: 93 04 f0 01  	addi	s1, zero, 31
80003f80: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80003f84: 13 05 81 00  	addi	a0, sp, 8
80003f88: 93 05 00 03  	addi	a1, zero, 48
80003f8c: 13 06 04 00  	mv	a2, s0
80003f90: 97 c0 ff ff  	auipc	ra, 1048572
80003f94: e7 80 80 5c  	jalr	1480(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003f98: 13 c5 f4 ff  	not	a0, s1
80003f9c: 33 0c ac 00  	add	s8, s8, a0
80003fa0: 6f 00 80 00  	j	0x80003fa8 <.LBB4_88+0x120>
80003fa4: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80003fa8: 13 15 3c 00  	slli	a0, s8, 3

80003fac <.LBB4_89>:
80003fac: 97 15 00 00  	auipc	a1, 1
80003fb0: 93 85 45 51  	addi	a1, a1, 1300
80003fb4: 33 05 b5 00  	add	a0, a0, a1
80003fb8: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80003fbc: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80003fc0: 53 80 04 d2  	fcvt.d.w	ft0, s1
80003fc4: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80003fc8: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80003fcc <.LBB4_90>:
80003fcc: 17 15 00 00  	auipc	a0, 1
80003fd0: 13 05 c5 62  	addi	a0, a0, 1580
80003fd4: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80003fd8: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80003fdc: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80003fe0: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80003fe4: d3 05 01 a2  	fle.d	a1, ft2, ft0
80003fe8: 63 90 05 02  	bnez	a1, 0x80004008 <.LBB4_90+0x3c>
;     ++frac;
80003fec: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80003ff0: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80003ff4: d3 15 11 a2  	flt.d	a1, ft2, ft1
80003ff8: 63 94 05 02  	bnez	a1, 0x80004020 <.LBB4_90+0x54>
80003ffc: 13 05 00 00  	mv	a0, zero
;       ++whole;
80004000: 93 84 14 00  	addi	s1, s1, 1
80004004: 6f 00 c0 01  	j	0x80004020 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80004008: d3 15 01 a2  	flt.d	a1, ft2, ft0
8000400c: 63 9a 05 00  	bnez	a1, 0x80004020 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80004010: 93 35 15 00  	seqz	a1, a0
80004014: 13 76 15 00  	andi	a2, a0, 1
80004018: b3 65 b6 00  	or	a1, a2, a1
8000401c: 33 85 a5 00  	add	a0, a1, a0
80004020: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80004024: 63 0c 0c 0c  	beqz	s8, 0x800040fc <.LBB4_90+0x130>
80004028: 13 06 00 00  	mv	a2, zero
8000402c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004030: 33 83 85 00  	add	t1, a1, s0
80004034: 93 02 00 02  	addi	t0, zero, 32
80004038: 33 87 82 40  	sub	a4, t0, s0
8000403c: b7 d5 cc cc  	lui	a1, 838861
80004040: 93 83 d5 cc  	addi	t2, a1, -819
80004044: 13 08 a0 00  	addi	a6, zero, 10
80004048: 93 08 90 00  	addi	a7, zero, 9
8000404c: 63 04 c7 0c  	beq	a4, a2, 0x80004114 <.LBB4_90+0x148>
80004050: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80004054: 33 35 75 02  	mulhu	a0, a0, t2
80004058: 13 55 35 00  	srli	a0, a0, 3
8000405c: b3 06 05 03  	mul	a3, a0, a6
80004060: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80004064: 93 e6 06 03  	ori	a3, a3, 48
80004068: b3 07 c3 00  	add	a5, t1, a2
8000406c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80004070: 13 06 16 00  	addi	a2, a2, 1
80004074: e3 ec b8 fc  	bltu	a7, a1, 0x8000404c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004078: 33 05 c4 00  	add	a0, s0, a2
8000407c: 93 05 f5 ff  	addi	a1, a0, -1
80004080: 93 06 e0 01  	addi	a3, zero, 30
80004084: b3 b6 b6 00  	sltu	a3, a3, a1
80004088: 33 47 cc 00  	xor	a4, s8, a2
8000408c: 13 37 17 00  	seqz	a4, a4
80004090: b3 e6 e6 00  	or	a3, a3, a4
80004094: 63 94 06 08  	bnez	a3, 0x8000411c <.LBB4_90+0x150>
80004098: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000409c: 33 05 85 00  	add	a0, a0, s0
800040a0: 93 45 f6 ff  	not	a1, a2
800040a4: 33 8c 85 01  	add	s8, a1, s8
800040a8: 33 04 c4 00  	add	s0, s0, a2
800040ac: 93 05 f0 01  	addi	a1, zero, 31
800040b0: b3 86 85 40  	sub	a3, a1, s0
800040b4: 33 05 c5 00  	add	a0, a0, a2
800040b8: 93 05 0c 00  	mv	a1, s8
800040bc: 63 64 dc 00  	bltu	s8, a3, 0x800040c4 <.LBB4_90+0xf8>
800040c0: 93 85 06 00  	mv	a1, a3
800040c4: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800040c8: 93 05 00 03  	addi	a1, zero, 48
800040cc: 97 c0 ff ff  	auipc	ra, 1048572
800040d0: e7 80 c0 48  	jalr	1164(ra)
800040d4: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800040d8: b3 05 a4 00  	add	a1, s0, a0
800040dc: 93 b5 f5 01  	sltiu	a1, a1, 31
800040e0: 33 46 ac 00  	xor	a2, s8, a0
800040e4: 33 36 c0 00  	snez	a2, a2
800040e8: 33 f6 c5 00  	and	a2, a1, a2
800040ec: 13 05 15 00  	addi	a0, a0, 1
800040f0: e3 14 06 fe  	bnez	a2, 0x800040d8 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800040f4: 33 05 a4 00  	add	a0, s0, a0
800040f8: 6f 00 80 02  	j	0x80004120 <.LBB4_90+0x154>
;     diff = value - (double)whole;
800040fc: d3 80 04 d2  	fcvt.d.w	ft1, s1
80004100: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004104: 53 05 10 a2  	fle.d	a0, ft0, ft1
80004108: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
8000410c: b3 84 a4 00  	add	s1, s1, a0
80004110: 6f 00 c0 03  	j	0x8000414c <.LBB4_90+0x180>
80004114: 13 04 00 02  	addi	s0, zero, 32
80004118: 6f 00 80 03  	j	0x80004150 <.LBB4_90+0x184>
8000411c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004120: 63 8e 05 00  	beqz	a1, 0x8000413c <.LBB4_90+0x170>
;       buf[len++] = '.';
80004124: 13 04 15 00  	addi	s0, a0, 1
80004128: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
8000412c: 33 85 a5 00  	add	a0, a1, a0
80004130: 93 05 e0 02  	addi	a1, zero, 46
80004134: 23 00 b5 00  	sb	a1, 0(a0)
80004138: 6f 00 80 00  	j	0x80004140 <.LBB4_90+0x174>
8000413c: 13 04 05 00  	mv	s0, a0
80004140: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004144: 93 02 04 00  	mv	t0, s0
80004148: 63 64 85 00  	bltu	a0, s0, 0x80004150 <.LBB4_90+0x184>
8000414c: 93 02 00 02  	addi	t0, zero, 32
80004150: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80004154: 37 65 66 66  	lui	a0, 419430
80004158: 93 05 75 66  	addi	a1, a0, 1639
8000415c: 13 08 a0 00  	addi	a6, zero, 10
80004160: 93 06 81 00  	addi	a3, sp, 8
80004164: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004168: 63 80 82 04  	beq	t0, s0, 0x800041a8 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
8000416c: 33 95 b4 02  	mulh	a0, s1, a1
80004170: 93 57 f5 01  	srli	a5, a0, 31
80004174: 13 55 25 40  	srai	a0, a0, 2
80004178: 33 05 f5 00  	add	a0, a0, a5
8000417c: b3 07 05 03  	mul	a5, a0, a6
80004180: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004184: 93 87 07 03  	addi	a5, a5, 48
80004188: 13 0c 14 00  	addi	s8, s0, 1
8000418c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80004190: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80004194: 23 00 f4 00  	sb	a5, 0(s0)
80004198: 13 04 0c 00  	mv	s0, s8
8000419c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
800041a0: e3 64 c7 fc  	bltu	a4, a2, 0x80004168 <.LBB4_90+0x19c>
800041a4: 6f 00 80 00  	j	0x800041ac <.LBB4_90+0x1e0>
800041a8: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800041ac: 93 f4 3a 00  	andi	s1, s5, 3
800041b0: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800041b4: 63 96 a4 06  	bne	s1, a0, 0x80004220 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800041b8: 63 0c 09 00  	beqz	s2, 0x800041d0 <.LBB4_90+0x204>
800041bc: 13 f5 ca 00  	andi	a0, s5, 12
800041c0: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800041c4: 33 e5 ac 00  	or	a0, s9, a0
800041c8: 33 09 a9 40  	sub	s2, s2, a0
800041cc: 6f 00 80 00  	j	0x800041d4 <.LBB4_90+0x208>
800041d0: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800041d4: 33 35 2c 01  	sltu	a0, s8, s2
800041d8: 93 45 15 00  	xori	a1, a0, 1
800041dc: 13 05 f0 01  	addi	a0, zero, 31
800041e0: 33 36 85 01  	sltu	a2, a0, s8
800041e4: b3 65 b6 00  	or	a1, a2, a1
800041e8: 63 9c 05 02  	bnez	a1, 0x80004220 <.LBB4_90+0x254>
800041ec: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800041f0: 93 45 fc ff  	not	a1, s8
800041f4: b3 05 b9 00  	add	a1, s2, a1
800041f8: 33 06 85 41  	sub	a2, a0, s8
800041fc: 33 85 86 01  	add	a0, a3, s8
80004200: 63 e4 c5 00  	bltu	a1, a2, 0x80004208 <.LBB4_90+0x23c>
80004204: 93 05 06 00  	mv	a1, a2
80004208: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
8000420c: 93 05 00 03  	addi	a1, zero, 48
80004210: 13 06 04 00  	mv	a2, s0
80004214: 97 c0 ff ff  	auipc	ra, 1048572
80004218: e7 80 40 34  	jalr	836(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000421c: 33 0c 84 01  	add	s8, s0, s8
80004220: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004224: 63 6a 85 05  	bltu	a0, s8, 0x80004278 <.LBB4_90+0x2ac>
;     if (negative) {
80004228: 63 8c 0c 00  	beqz	s9, 0x80004240 <.LBB4_90+0x274>
8000422c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80004230: 33 05 85 01  	add	a0, a0, s8
80004234: 13 0c 1c 00  	addi	s8, s8, 1
80004238: 93 05 d0 02  	addi	a1, zero, 45
8000423c: 6f 00 80 03  	j	0x80004274 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80004240: 13 f5 4a 00  	andi	a0, s5, 4
80004244: 63 10 05 02  	bnez	a0, 0x80004264 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80004248: 13 f5 8a 00  	andi	a0, s5, 8
8000424c: 63 06 05 02  	beqz	a0, 0x80004278 <.LBB4_90+0x2ac>
80004250: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80004254: 33 05 85 01  	add	a0, a0, s8
80004258: 13 0c 1c 00  	addi	s8, s8, 1
8000425c: 93 05 00 02  	addi	a1, zero, 32
80004260: 6f 00 40 01  	j	0x80004274 <.LBB4_90+0x2a8>
80004264: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004268: 33 05 85 01  	add	a0, a0, s8
8000426c: 13 0c 1c 00  	addi	s8, s8, 1
80004270: 93 05 b0 02  	addi	a1, zero, 43
80004274: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004278: 33 35 90 00  	snez	a0, s1
8000427c: b3 35 2c 01  	sltu	a1, s8, s2
80004280: 93 c5 15 00  	xori	a1, a1, 1
80004284: 33 65 b5 00  	or	a0, a0, a1
80004288: 93 fa 2a 00  	andi	s5, s5, 2
8000428c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004290: 63 16 05 02  	bnez	a0, 0x800042bc <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004294: b3 04 89 41  	sub	s1, s2, s8
80004298: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000429c: 13 04 16 00  	addi	s0, a2, 1
800042a0: 13 05 00 02  	addi	a0, zero, 32
800042a4: 93 05 0b 00  	mv	a1, s6
800042a8: 93 86 09 00  	mv	a3, s3
800042ac: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800042b0: 93 84 f4 ff  	addi	s1, s1, -1
800042b4: 13 06 04 00  	mv	a2, s0
800042b8: e3 92 04 fe  	bnez	s1, 0x8000429c <.LBB4_90+0x2d0>
800042bc: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800042c0: 63 0c 0c 02  	beqz	s8, 0x800042f8 <.LBB4_90+0x32c>
800042c4: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800042c8: 33 85 8c 01  	add	a0, s9, s8
800042cc: 03 45 05 00  	lbu	a0, 0(a0)
800042d0: 13 0d fc ff  	addi	s10, s8, -1
800042d4: 93 04 14 00  	addi	s1, s0, 1
800042d8: 93 05 0b 00  	mv	a1, s6
800042dc: 13 06 04 00  	mv	a2, s0
800042e0: 93 86 09 00  	mv	a3, s3
800042e4: e7 80 0b 00  	jalr	s7
800042e8: 13 84 04 00  	mv	s0, s1
800042ec: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800042f0: e3 1c 0d fc  	bnez	s10, 0x800042c8 <.LBB4_90+0x2fc>
800042f4: 6f 00 80 00  	j	0x800042fc <.LBB4_90+0x330>
800042f8: 93 04 04 00  	mv	s1, s0
800042fc: 33 85 44 41  	sub	a0, s1, s4
80004300: 33 35 25 01  	sltu	a0, a0, s2
80004304: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004308: 93 c5 1a 00  	xori	a1, s5, 1
8000430c: 33 e5 a5 00  	or	a0, a1, a0
80004310: 63 18 05 02  	bnez	a0, 0x80004340 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004314: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004318: 13 84 14 00  	addi	s0, s1, 1
8000431c: 13 05 00 02  	addi	a0, zero, 32
80004320: 93 05 0b 00  	mv	a1, s6
80004324: 13 86 04 00  	mv	a2, s1
80004328: 93 86 09 00  	mv	a3, s3
8000432c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004330: 33 05 8a 00  	add	a0, s4, s0
80004334: 93 04 04 00  	mv	s1, s0
80004338: e3 60 25 ff  	bltu	a0, s2, 0x80004318 <.LBB4_90+0x34c>
8000433c: 6f 00 80 00  	j	0x80004344 <.LBB4_90+0x378>
80004340: 13 84 04 00  	mv	s0, s1
; }
80004344: 13 05 04 00  	mv	a0, s0
80004348: 07 39 81 02  	fld	fs2, 40(sp)
8000434c: 87 34 01 03  	fld	fs1, 48(sp)
80004350: 07 34 81 03  	fld	fs0, 56(sp)
80004354: 03 2d 01 04  	lw	s10, 64(sp)
80004358: 83 2c 41 04  	lw	s9, 68(sp)
8000435c: 03 2c 81 04  	lw	s8, 72(sp)
80004360: 83 2b c1 04  	lw	s7, 76(sp)
80004364: 03 2b 01 05  	lw	s6, 80(sp)
80004368: 83 2a 41 05  	lw	s5, 84(sp)
8000436c: 03 2a 81 05  	lw	s4, 88(sp)
80004370: 83 29 c1 05  	lw	s3, 92(sp)
80004374: 03 29 01 06  	lw	s2, 96(sp)
80004378: 83 24 41 06  	lw	s1, 100(sp)
8000437c: 03 24 81 06  	lw	s0, 104(sp)
80004380: 83 20 c1 06  	lw	ra, 108(sp)
80004384: 13 01 01 07  	addi	sp, sp, 112
80004388: 67 80 00 00  	ret

8000438c <_etoa>:
; {
8000438c: 13 01 01 f8  	addi	sp, sp, -128
80004390: 23 2e 11 06  	sw	ra, 124(sp)
80004394: 23 2c 81 06  	sw	s0, 120(sp)
80004398: 23 2a 91 06  	sw	s1, 116(sp)
8000439c: 23 28 21 07  	sw	s2, 112(sp)
800043a0: 23 26 31 07  	sw	s3, 108(sp)
800043a4: 23 24 41 07  	sw	s4, 104(sp)
800043a8: 23 22 51 07  	sw	s5, 100(sp)
800043ac: 23 20 61 07  	sw	s6, 96(sp)
800043b0: 23 2e 71 05  	sw	s7, 92(sp)
800043b4: 23 2c 81 05  	sw	s8, 88(sp)
800043b8: 23 2a 91 05  	sw	s9, 84(sp)
800043bc: 23 28 a1 05  	sw	s10, 80(sp)
800043c0: 23 26 b1 05  	sw	s11, 76(sp)

800043c4 <.LBB5_43>:
800043c4: 97 14 00 00  	auipc	s1, 1
800043c8: 93 84 c4 23  	addi	s1, s1, 572
800043cc: 87 b0 04 00  	fld	ft1, 0(s1)

800043d0 <.LBB5_44>:
800043d0: 97 14 00 00  	auipc	s1, 1
800043d4: 93 84 84 23  	addi	s1, s1, 568
800043d8: 07 b1 04 00  	fld	ft2, 0(s1)
800043dc: 53 00 a5 22  	fmv.d	ft0, fa0
800043e0: d3 04 15 a2  	fle.d	s1, fa0, ft1
800043e4: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800043e8: b3 f4 84 00  	and	s1, s1, s0
800043ec: 93 0a 08 00  	mv	s5, a6
800043f0: 13 89 07 00  	mv	s2, a5
800043f4: 93 07 07 00  	mv	a5, a4
800043f8: 93 89 06 00  	mv	s3, a3
800043fc: 13 0a 06 00  	mv	s4, a2
80004400: 13 8b 05 00  	mv	s6, a1
80004404: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004408: 63 92 04 06  	bnez	s1, 0x8000446c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000440c: 13 85 0b 00  	mv	a0, s7
80004410: 93 05 0b 00  	mv	a1, s6
80004414: 13 06 0a 00  	mv	a2, s4
80004418: 93 86 09 00  	mv	a3, s3
8000441c: 53 05 00 22  	fmv.d	fa0, ft0
80004420: 13 87 07 00  	mv	a4, a5
80004424: 93 07 09 00  	mv	a5, s2
80004428: 13 88 0a 00  	mv	a6, s5
8000442c: 83 2d c1 04  	lw	s11, 76(sp)
80004430: 03 2d 01 05  	lw	s10, 80(sp)
80004434: 83 2c 41 05  	lw	s9, 84(sp)
80004438: 03 2c 81 05  	lw	s8, 88(sp)
8000443c: 83 2b c1 05  	lw	s7, 92(sp)
80004440: 03 2b 01 06  	lw	s6, 96(sp)
80004444: 83 2a 41 06  	lw	s5, 100(sp)
80004448: 03 2a 81 06  	lw	s4, 104(sp)
8000444c: 83 29 c1 06  	lw	s3, 108(sp)
80004450: 03 29 01 07  	lw	s2, 112(sp)
80004454: 83 24 41 07  	lw	s1, 116(sp)
80004458: 03 24 81 07  	lw	s0, 120(sp)
8000445c: 83 20 c1 07  	lw	ra, 124(sp)
80004460: 13 01 01 08  	addi	sp, sp, 128
80004464: 17 03 00 00  	auipc	t1, 0
80004468: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
8000446c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80004470: 13 f5 0a 40  	andi	a0, s5, 1024
80004474: 13 07 60 00  	addi	a4, zero, 6
80004478: 63 04 05 00  	beqz	a0, 0x80004480 <.LBB5_44+0xb0>
8000447c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004480: 27 30 a1 02  	fsd	fa0, 32(sp)
80004484: 83 25 41 02  	lw	a1, 36(sp)
80004488: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000448c: 93 d6 45 01  	srli	a3, a1, 20
80004490: b7 07 10 00  	lui	a5, 256
80004494: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004498: b3 f5 f5 00  	and	a1, a1, a5
8000449c: 23 2c c1 00  	sw	a2, 24(sp)
800044a0: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800044a4: b3 e5 c5 00  	or	a1, a1, a2
800044a8: 23 2e b1 00  	sw	a1, 28(sp)
800044ac: 87 30 81 01  	fld	ft1, 24(sp)

800044b0 <.LBB5_45>:
800044b0: 97 15 00 00  	auipc	a1, 1
800044b4: 93 85 05 16  	addi	a1, a1, 352
800044b8: 07 b1 05 00  	fld	ft2, 0(a1)

800044bc <.LBB5_46>:
800044bc: 97 15 00 00  	auipc	a1, 1
800044c0: 93 85 c5 15  	addi	a1, a1, 348
800044c4: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800044c8: 93 f5 f6 7f  	andi	a1, a3, 2047
800044cc: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800044d0: 53 82 05 d2  	fcvt.d.w	ft4, a1
800044d4: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800044d8 <.LBB5_47>:
800044d8: 97 15 00 00  	auipc	a1, 1
800044dc: 93 85 85 14  	addi	a1, a1, 328
800044e0: 07 b1 05 00  	fld	ft2, 0(a1)

800044e4 <.LBB5_48>:
800044e4: 97 15 00 00  	auipc	a1, 1
800044e8: 93 85 45 14  	addi	a1, a1, 324
800044ec: 87 b1 05 00  	fld	ft3, 0(a1)

800044f0 <.LBB5_49>:
800044f0: 97 15 00 00  	auipc	a1, 1
800044f4: 93 85 05 14  	addi	a1, a1, 320
800044f8: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800044fc: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004500: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004504: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004508: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

8000450c <.LBB5_50>:
8000450c: 17 16 00 00  	auipc	a2, 1
80004510: 13 06 c6 12  	addi	a2, a2, 300
80004514: 87 31 06 00  	fld	ft3, 0(a2)

80004518 <.LBB5_51>:
80004518: 17 16 00 00  	auipc	a2, 1
8000451c: 13 06 86 12  	addi	a2, a2, 296
80004520: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004524: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004528: 53 01 06 d2  	fcvt.d.w	ft2, a2
8000452c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80004530: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004534: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004538: 13 06 f6 3f  	addi	a2, a2, 1023
8000453c: 23 28 01 00  	sw	zero, 16(sp)
80004540: 13 16 46 01  	slli	a2, a2, 20
80004544: 23 2a c1 00  	sw	a2, 20(sp)

80004548 <.LBB5_52>:
80004548: 17 16 00 00  	auipc	a2, 1
8000454c: 13 06 86 10  	addi	a2, a2, 264
80004550: 87 31 06 00  	fld	ft3, 0(a2)

80004554 <.LBB5_53>:
80004554: 17 16 00 00  	auipc	a2, 1
80004558: 13 06 46 10  	addi	a2, a2, 260
8000455c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004560: 87 32 01 01  	fld	ft5, 16(sp)

80004564 <.LBB5_54>:
80004564: 17 16 00 00  	auipc	a2, 1
80004568: 13 06 46 0e  	addi	a2, a2, 228
8000456c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004570: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004574 <.LBB5_55>:
80004574: 17 16 00 00  	auipc	a2, 1
80004578: 13 06 c6 0e  	addi	a2, a2, 236
8000457c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004580: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004584: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004588: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
8000458c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004590: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004594: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004598: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
8000459c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
800045a0: 53 16 15 a2  	flt.d	a2, fa0, ft1
800045a4: 63 0a 06 00  	beqz	a2, 0x800045b8 <.LBB5_56+0x10>

800045a8 <.LBB5_56>:
800045a8: 97 16 00 00  	auipc	a3, 1
800045ac: 93 86 06 0c  	addi	a3, a3, 192
800045b0: 07 b1 06 00  	fld	ft2, 0(a3)
800045b4: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800045b8: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800045bc: 93 05 34 06  	addi	a1, s0, 99
800045c0: 93 b5 75 0c  	sltiu	a1, a1, 199
800045c4: 13 06 50 00  	addi	a2, zero, 5
800045c8: b7 16 00 00  	lui	a3, 1
800045cc: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800045d0: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800045d4: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800045d8: 63 84 06 06  	beqz	a3, 0x80004640 <.LBB5_58+0x58>

800045dc <.LBB5_57>:
800045dc: 97 15 00 00  	auipc	a1, 1
800045e0: 93 85 45 09  	addi	a1, a1, 148
800045e4: 07 b1 05 00  	fld	ft2, 0(a1)

800045e8 <.LBB5_58>:
800045e8: 97 15 00 00  	auipc	a1, 1
800045ec: 93 85 05 09  	addi	a1, a1, 144
800045f0: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800045f4: d3 15 25 a2  	flt.d	a1, fa0, ft2
800045f8: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800045fc: b3 e5 c5 00  	or	a1, a1, a2
80004600: 63 98 05 00  	bnez	a1, 0x80004610 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004604: 63 40 e4 02  	blt	s0, a4, 0x80004624 <.LBB5_58+0x3c>
80004608: 13 07 00 00  	mv	a4, zero
8000460c: 6f 00 00 02  	j	0x8000462c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004610: 63 06 07 02  	beqz	a4, 0x8000463c <.LBB5_58+0x54>
80004614: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004618: 13 45 15 00  	xori	a0, a0, 1
8000461c: 33 07 a7 40  	sub	a4, a4, a0
80004620: 6f 00 00 02  	j	0x80004640 <.LBB5_58+0x58>
80004624: 13 45 f4 ff  	not	a0, s0
80004628: 33 07 a7 00  	add	a4, a4, a0
8000462c: 13 04 00 00  	mv	s0, zero
80004630: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004634: 93 ea 0a 40  	ori	s5, s5, 1024
80004638: 6f 00 80 00  	j	0x80004640 <.LBB5_58+0x58>
8000463c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80004640: b3 05 99 41  	sub	a1, s2, s9
80004644: 33 36 b9 00  	sltu	a2, s2, a1
80004648: 13 05 00 00  	mv	a0, zero
8000464c: 63 14 06 00  	bnez	a2, 0x80004654 <.LBB5_58+0x6c>
80004650: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004654: 93 07 00 00  	mv	a5, zero
80004658: 93 d5 1a 00  	srli	a1, s5, 1
8000465c: 93 f4 15 00  	andi	s1, a1, 1
80004660: b3 35 90 01  	snez	a1, s9
80004664: b3 f5 b4 00  	and	a1, s1, a1
80004668: 53 01 00 d2  	fcvt.d.w	ft2, zero
8000466c: 63 94 05 00  	bnez	a1, 0x80004674 <.LBB5_58+0x8c>
80004670: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004674: 93 35 14 00  	seqz	a1, s0
80004678: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
8000467c: 63 94 05 00  	bnez	a1, 0x80004684 <.LBB5_58+0x9c>
80004680: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004684: 63 04 05 00  	beqz	a0, 0x8000468c <.LBB5_58+0xa4>
80004688: 53 15 a5 22  	fneg.d	fa0, fa0
8000468c: 37 f5 ff ff  	lui	a0, 1048575
80004690: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004694: 33 f8 aa 00  	and	a6, s5, a0
80004698: 13 85 0b 00  	mv	a0, s7
8000469c: 93 05 0b 00  	mv	a1, s6
800046a0: 13 06 0a 00  	mv	a2, s4
800046a4: 93 86 09 00  	mv	a3, s3
800046a8: 97 f0 ff ff  	auipc	ra, 1048575
800046ac: e7 80 40 60  	jalr	1540(ra)
800046b0: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800046b4: 63 82 0c 18  	beqz	s9, 0x80004838 <.LBB5_58+0x250>
800046b8: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800046bc: 13 f5 0a 02  	andi	a0, s5, 32
800046c0: 13 45 55 06  	xori	a0, a0, 101
800046c4: 93 05 0b 00  	mv	a1, s6
800046c8: 13 06 0d 00  	mv	a2, s10
800046cc: 93 86 09 00  	mv	a3, s3
800046d0: e7 80 0b 00  	jalr	s7
800046d4: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800046d8: 93 5a f4 01  	srli	s5, s0, 31
800046dc: 13 55 f4 41  	srai	a0, s0, 31
800046e0: b3 05 a4 00  	add	a1, s0, a0
800046e4: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800046e8: 93 8d dc ff  	addi	s11, s9, -3
800046ec: 13 04 f0 01  	addi	s0, zero, 31
800046f0: 37 d5 cc cc  	lui	a0, 838861
800046f4: 13 05 d5 cc  	addi	a0, a0, -819
800046f8: 13 08 a0 00  	addi	a6, zero, 10
800046fc: 93 08 c1 02  	addi	a7, sp, 44
80004700: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004704: b3 37 a7 02  	mulhu	a5, a4, a0
80004708: 93 d5 37 00  	srli	a1, a5, 3
8000470c: b3 87 05 03  	mul	a5, a1, a6
80004710: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004714: 13 e6 07 03  	ori	a2, a5, 48
80004718: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000471c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004720: 13 0c 1c 00  	addi	s8, s8, 1
80004724: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004728: 33 b6 e2 00  	sltu	a2, t0, a4
8000472c: 33 f6 c7 00  	and	a2, a5, a2
80004730: 93 8d fd ff  	addi	s11, s11, -1
80004734: 13 04 f4 ff  	addi	s0, s0, -1
80004738: 13 87 05 00  	mv	a4, a1
8000473c: e3 14 06 fc  	bnez	a2, 0x80004704 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004740: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004744: 33 35 ac 00  	sltu	a0, s8, a0
80004748: 13 45 15 00  	xori	a0, a0, 1
8000474c: 93 c5 17 00  	xori	a1, a5, 1
80004750: 33 e5 a5 00  	or	a0, a1, a0
80004754: 63 12 05 04  	bnez	a0, 0x80004798 <.LBB5_58+0x1b0>
80004758: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000475c: b3 85 8c 41  	sub	a1, s9, s8
80004760: 93 85 d5 ff  	addi	a1, a1, -3
80004764: 13 06 f0 01  	addi	a2, zero, 31
80004768: 33 06 86 41  	sub	a2, a2, s8
8000476c: 33 05 85 01  	add	a0, a0, s8
80004770: 63 e4 c5 00  	bltu	a1, a2, 0x80004778 <.LBB5_58+0x190>
80004774: 93 05 06 00  	mv	a1, a2
80004778: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000477c: 93 05 00 03  	addi	a1, zero, 48
80004780: 97 c0 ff ff  	auipc	ra, 1048572
80004784: e7 80 80 dd  	jalr	-552(ra)
;   if (flags & FLAGS_HASH) {
80004788: 63 e4 8d 00  	bltu	s11, s0, 0x80004790 <.LBB5_58+0x1a8>
8000478c: 93 0d 04 00  	mv	s11, s0
80004790: 33 85 8d 01  	add	a0, s11, s8
80004794: 13 0c 15 00  	addi	s8, a0, 1
80004798: 83 2c c1 00  	lw	s9, 12(sp)
8000479c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800047a0: 63 60 85 03  	bltu	a0, s8, 0x800047c0 <.LBB5_58+0x1d8>
800047a4: 13 05 c1 02  	addi	a0, sp, 44
800047a8: 33 05 85 01  	add	a0, a0, s8
800047ac: 93 05 d0 02  	addi	a1, zero, 45
800047b0: 63 94 0a 00  	bnez	s5, 0x800047b8 <.LBB5_58+0x1d0>
800047b4: 93 05 b0 02  	addi	a1, zero, 43
800047b8: 13 0c 1c 00  	addi	s8, s8, 1
800047bc: 23 00 b5 00  	sb	a1, 0(a0)
800047c0: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800047c4: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800047c8: 33 85 8a 01  	add	a0, s5, s8
800047cc: 03 45 05 00  	lbu	a0, 0(a0)
800047d0: 13 06 04 00  	mv	a2, s0
800047d4: 93 04 fc ff  	addi	s1, s8, -1
800047d8: 13 04 14 00  	addi	s0, s0, 1
800047dc: 93 05 0b 00  	mv	a1, s6
800047e0: 93 86 09 00  	mv	a3, s3
800047e4: e7 80 0b 00  	jalr	s7
800047e8: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800047ec: e3 9e 04 fc  	bnez	s1, 0x800047c8 <.LBB5_58+0x1e0>
800047f0: 33 05 44 41  	sub	a0, s0, s4
800047f4: 33 35 25 01  	sltu	a0, a0, s2
800047f8: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800047fc: 93 c5 1c 00  	xori	a1, s9, 1
80004800: 33 e5 a5 00  	or	a0, a1, a0
80004804: 63 18 05 02  	bnez	a0, 0x80004834 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004808: b3 04 40 41  	neg	s1, s4
8000480c: 13 0d 14 00  	addi	s10, s0, 1
80004810: 13 05 00 02  	addi	a0, zero, 32
80004814: 93 05 0b 00  	mv	a1, s6
80004818: 13 06 04 00  	mv	a2, s0
8000481c: 93 86 09 00  	mv	a3, s3
80004820: e7 80 0b 00  	jalr	s7
80004824: 33 85 a4 01  	add	a0, s1, s10
80004828: 13 04 0d 00  	mv	s0, s10
8000482c: e3 60 25 ff  	bltu	a0, s2, 0x8000480c <.LBB5_58+0x224>
80004830: 6f 00 80 00  	j	0x80004838 <.LBB5_58+0x250>
80004834: 13 0d 04 00  	mv	s10, s0
; }
80004838: 13 05 0d 00  	mv	a0, s10
8000483c: 83 2d c1 04  	lw	s11, 76(sp)
80004840: 03 2d 01 05  	lw	s10, 80(sp)
80004844: 83 2c 41 05  	lw	s9, 84(sp)
80004848: 03 2c 81 05  	lw	s8, 88(sp)
8000484c: 83 2b c1 05  	lw	s7, 92(sp)
80004850: 03 2b 01 06  	lw	s6, 96(sp)
80004854: 83 2a 41 06  	lw	s5, 100(sp)
80004858: 03 2a 81 06  	lw	s4, 104(sp)
8000485c: 83 29 c1 06  	lw	s3, 108(sp)
80004860: 03 29 01 07  	lw	s2, 112(sp)
80004864: 83 24 41 07  	lw	s1, 116(sp)
80004868: 03 24 81 07  	lw	s0, 120(sp)
8000486c: 83 20 c1 07  	lw	ra, 124(sp)
80004870: 13 01 01 08  	addi	sp, sp, 128
80004874: 67 80 00 00  	ret

80004878 <_ntoa_format>:
; {
80004878: 13 01 01 fc  	addi	sp, sp, -64
8000487c: 23 2e 11 02  	sw	ra, 60(sp)
80004880: 23 2c 81 02  	sw	s0, 56(sp)
80004884: 23 2a 91 02  	sw	s1, 52(sp)
80004888: 23 28 21 03  	sw	s2, 48(sp)
8000488c: 23 26 31 03  	sw	s3, 44(sp)
80004890: 23 24 41 03  	sw	s4, 40(sp)
80004894: 23 22 51 03  	sw	s5, 36(sp)
80004898: 23 20 61 03  	sw	s6, 32(sp)
8000489c: 23 2e 71 01  	sw	s7, 28(sp)
800048a0: 23 2c 81 01  	sw	s8, 24(sp)
800048a4: 23 2a 91 01  	sw	s9, 20(sp)
800048a8: 23 28 a1 01  	sw	s10, 16(sp)
800048ac: 23 26 b1 01  	sw	s11, 12(sp)
800048b0: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800048b4: 93 fa 2e 00  	andi	s5, t4, 2
800048b8: 13 09 0e 00  	mv	s2, t3
800048bc: 13 8d 03 00  	mv	s10, t2
800048c0: 93 8c 08 00  	mv	s9, a7
800048c4: 13 8c 07 00  	mv	s8, a5
800048c8: 93 89 06 00  	mv	s3, a3
800048cc: 13 0a 06 00  	mv	s4, a2
800048d0: 13 8b 05 00  	mv	s6, a1
800048d4: 93 0d 05 00  	mv	s11, a0
800048d8: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800048dc: 63 9e 0a 0c  	bnez	s5, 0x800049b8 <_ntoa_format+0x140>
800048e0: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800048e4: 63 0e 09 00  	beqz	s2, 0x80004900 <_ntoa_format+0x88>
800048e8: 63 0e 04 00  	beqz	s0, 0x80004904 <_ntoa_format+0x8c>
800048ec: 13 f5 cb 00  	andi	a0, s7, 12
800048f0: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800048f4: 33 65 05 01  	or	a0, a0, a6
800048f8: 33 09 a9 40  	sub	s2, s2, a0
800048fc: 6f 00 80 00  	j	0x80004904 <_ntoa_format+0x8c>
80004900: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004904: 33 35 ac 01  	sltu	a0, s8, s10
80004908: 93 45 15 00  	xori	a1, a0, 1
8000490c: 13 05 f0 01  	addi	a0, zero, 31
80004910: 33 36 85 01  	sltu	a2, a0, s8
80004914: b3 65 b6 00  	or	a1, a2, a1
80004918: 63 94 05 04  	bnez	a1, 0x80004960 <_ntoa_format+0xe8>
8000491c: 23 22 51 01  	sw	s5, 4(sp)
80004920: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004924: 93 45 fc ff  	not	a1, s8
80004928: b3 85 a5 01  	add	a1, a1, s10
8000492c: 33 06 85 41  	sub	a2, a0, s8
80004930: 33 05 87 01  	add	a0, a4, s8
80004934: 63 e4 c5 00  	bltu	a1, a2, 0x8000493c <_ntoa_format+0xc4>
80004938: 93 05 06 00  	mv	a1, a2
8000493c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004940: 93 05 00 03  	addi	a1, zero, 48
80004944: 13 86 04 00  	mv	a2, s1
80004948: 97 c0 ff ff  	auipc	ra, 1048572
8000494c: e7 80 00 c1  	jalr	-1008(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004950: 33 8c 84 01  	add	s8, s1, s8
80004954: 03 27 81 00  	lw	a4, 8(sp)
80004958: 13 88 0a 00  	mv	a6, s5
8000495c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004960: 63 0c 04 04  	beqz	s0, 0x800049b8 <_ntoa_format+0x140>
80004964: 33 35 2c 01  	sltu	a0, s8, s2
80004968: 93 45 15 00  	xori	a1, a0, 1
8000496c: 13 05 f0 01  	addi	a0, zero, 31
80004970: 33 36 85 01  	sltu	a2, a0, s8
80004974: b3 e5 c5 00  	or	a1, a1, a2
80004978: 63 90 05 04  	bnez	a1, 0x800049b8 <_ntoa_format+0x140>
8000497c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004980: 93 45 fc ff  	not	a1, s8
80004984: b3 05 b9 00  	add	a1, s2, a1
80004988: 33 06 85 41  	sub	a2, a0, s8
8000498c: 33 05 87 01  	add	a0, a4, s8
80004990: 63 e4 c5 00  	bltu	a1, a2, 0x80004998 <_ntoa_format+0x120>
80004994: 93 05 06 00  	mv	a1, a2
80004998: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000499c: 93 05 00 03  	addi	a1, zero, 48
800049a0: 13 86 04 00  	mv	a2, s1
800049a4: 97 c0 ff ff  	auipc	ra, 1048572
800049a8: e7 80 40 bb  	jalr	-1100(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800049ac: 33 8c 84 01  	add	s8, s1, s8
800049b0: 03 27 81 00  	lw	a4, 8(sp)
800049b4: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800049b8: 13 f5 0b 01  	andi	a0, s7, 16
800049bc: 63 02 05 0e  	beqz	a0, 0x80004aa0 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800049c0: 13 f5 0b 40  	andi	a0, s7, 1024
800049c4: 13 55 a5 00  	srli	a0, a0, 10
800049c8: 93 35 1c 00  	seqz	a1, s8
800049cc: 33 65 b5 00  	or	a0, a0, a1
800049d0: 63 1e 05 02  	bnez	a0, 0x80004a0c <_ntoa_format+0x194>
800049d4: 33 45 ac 01  	xor	a0, s8, s10
800049d8: 33 35 a0 00  	snez	a0, a0
800049dc: b3 45 2c 01  	xor	a1, s8, s2
800049e0: b3 35 b0 00  	snez	a1, a1
800049e4: 33 75 b5 00  	and	a0, a0, a1
800049e8: 63 12 05 02  	bnez	a0, 0x80004a0c <_ntoa_format+0x194>
;       len--;
800049ec: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800049f0: b3 35 a0 00  	snez	a1, a0
800049f4: 13 86 0c ff  	addi	a2, s9, -16
800049f8: 13 36 16 00  	seqz	a2, a2
800049fc: b3 75 b6 00  	and	a1, a2, a1
80004a00: 63 84 05 00  	beqz	a1, 0x80004a08 <_ntoa_format+0x190>
80004a04: 13 05 ec ff  	addi	a0, s8, -2
80004a08: 13 0c 05 00  	mv	s8, a0
80004a0c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004a10: 63 96 ac 02  	bne	s9, a0, 0x80004a3c <_ntoa_format+0x1c4>
80004a14: 13 f5 0b 02  	andi	a0, s7, 32
80004a18: 93 55 55 00  	srli	a1, a0, 5
80004a1c: 13 06 f0 01  	addi	a2, zero, 31
80004a20: 33 36 86 01  	sltu	a2, a2, s8
80004a24: b3 e5 c5 00  	or	a1, a1, a2
80004a28: 63 9e 05 02  	bnez	a1, 0x80004a64 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004a2c: 33 05 87 01  	add	a0, a4, s8
80004a30: 13 0c 1c 00  	addi	s8, s8, 1
80004a34: 93 05 80 07  	addi	a1, zero, 120
80004a38: 6f 00 c0 04  	j	0x80004a84 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004a3c: 13 85 ec ff  	addi	a0, s9, -2
80004a40: 33 35 a0 00  	snez	a0, a0
80004a44: 93 05 f0 01  	addi	a1, zero, 31
80004a48: b3 b5 85 01  	sltu	a1, a1, s8
80004a4c: 33 65 b5 00  	or	a0, a0, a1
80004a50: 63 1c 05 02  	bnez	a0, 0x80004a88 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004a54: 33 05 87 01  	add	a0, a4, s8
80004a58: 13 0c 1c 00  	addi	s8, s8, 1
80004a5c: 93 05 20 06  	addi	a1, zero, 98
80004a60: 6f 00 40 02  	j	0x80004a84 <_ntoa_format+0x20c>
80004a64: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004a68: 13 35 15 00  	seqz	a0, a0
80004a6c: 93 c5 15 00  	xori	a1, a1, 1
80004a70: 33 65 b5 00  	or	a0, a0, a1
80004a74: 63 1a 05 00  	bnez	a0, 0x80004a88 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004a78: 33 05 87 01  	add	a0, a4, s8
80004a7c: 13 0c 1c 00  	addi	s8, s8, 1
80004a80: 93 05 80 05  	addi	a1, zero, 88
80004a84: 23 00 b5 00  	sb	a1, 0(a0)
80004a88: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004a8c: 63 60 85 07  	bltu	a0, s8, 0x80004aec <_ntoa_format+0x274>
;       buf[len++] = '0';
80004a90: 33 05 87 01  	add	a0, a4, s8
80004a94: 13 0c 1c 00  	addi	s8, s8, 1
80004a98: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80004a9c: 23 00 b5 00  	sb	a1, 0(a0)
80004aa0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004aa4: 63 64 85 05  	bltu	a0, s8, 0x80004aec <_ntoa_format+0x274>
;     if (negative) {
80004aa8: 63 0a 08 00  	beqz	a6, 0x80004abc <_ntoa_format+0x244>
;       buf[len++] = '-';
80004aac: 33 05 87 01  	add	a0, a4, s8
80004ab0: 13 0c 1c 00  	addi	s8, s8, 1
80004ab4: 93 05 d0 02  	addi	a1, zero, 45
80004ab8: 6f 00 00 03  	j	0x80004ae8 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80004abc: 13 f5 4b 00  	andi	a0, s7, 4
80004ac0: 63 1e 05 00  	bnez	a0, 0x80004adc <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80004ac4: 13 f5 8b 00  	andi	a0, s7, 8
80004ac8: 63 02 05 02  	beqz	a0, 0x80004aec <_ntoa_format+0x274>
;       buf[len++] = ' ';
80004acc: 33 05 87 01  	add	a0, a4, s8
80004ad0: 13 0c 1c 00  	addi	s8, s8, 1
80004ad4: 93 05 00 02  	addi	a1, zero, 32
80004ad8: 6f 00 00 01  	j	0x80004ae8 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004adc: 33 05 87 01  	add	a0, a4, s8
80004ae0: 13 0c 1c 00  	addi	s8, s8, 1
80004ae4: 93 05 b0 02  	addi	a1, zero, 43
80004ae8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004aec: 13 f5 3b 00  	andi	a0, s7, 3
80004af0: 33 35 a0 00  	snez	a0, a0
80004af4: b3 35 2c 01  	sltu	a1, s8, s2
80004af8: 93 c5 15 00  	xori	a1, a1, 1
80004afc: 33 65 b5 00  	or	a0, a0, a1
80004b00: 13 04 0a 00  	mv	s0, s4
80004b04: 63 16 05 02  	bnez	a0, 0x80004b30 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80004b08: b3 04 89 41  	sub	s1, s2, s8
80004b0c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004b10: 13 04 16 00  	addi	s0, a2, 1
80004b14: 13 05 00 02  	addi	a0, zero, 32
80004b18: 93 05 0b 00  	mv	a1, s6
80004b1c: 93 86 09 00  	mv	a3, s3
80004b20: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80004b24: 93 84 f4 ff  	addi	s1, s1, -1
80004b28: 13 06 04 00  	mv	a2, s0
80004b2c: e3 92 04 fe  	bnez	s1, 0x80004b10 <_ntoa_format+0x298>
80004b30: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80004b34: 63 0e 0c 02  	beqz	s8, 0x80004b70 <_ntoa_format+0x2f8>
80004b38: 03 25 81 00  	lw	a0, 8(sp)
80004b3c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004b40: 33 85 8b 01  	add	a0, s7, s8
80004b44: 03 45 05 00  	lbu	a0, 0(a0)
80004b48: 93 0c fc ff  	addi	s9, s8, -1
80004b4c: 93 04 14 00  	addi	s1, s0, 1
80004b50: 93 05 0b 00  	mv	a1, s6
80004b54: 13 06 04 00  	mv	a2, s0
80004b58: 93 86 09 00  	mv	a3, s3
80004b5c: e7 80 0d 00  	jalr	s11
80004b60: 13 84 04 00  	mv	s0, s1
80004b64: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80004b68: e3 9c 0c fc  	bnez	s9, 0x80004b40 <_ntoa_format+0x2c8>
80004b6c: 6f 00 80 00  	j	0x80004b74 <_ntoa_format+0x2fc>
80004b70: 93 04 04 00  	mv	s1, s0
80004b74: 33 85 44 41  	sub	a0, s1, s4
80004b78: 33 35 25 01  	sltu	a0, a0, s2
80004b7c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004b80: 93 c5 1a 00  	xori	a1, s5, 1
80004b84: 33 e5 a5 00  	or	a0, a1, a0
80004b88: 63 18 05 02  	bnez	a0, 0x80004bb8 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80004b8c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004b90: 13 84 14 00  	addi	s0, s1, 1
80004b94: 13 05 00 02  	addi	a0, zero, 32
80004b98: 93 05 0b 00  	mv	a1, s6
80004b9c: 13 86 04 00  	mv	a2, s1
80004ba0: 93 86 09 00  	mv	a3, s3
80004ba4: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80004ba8: 33 05 8a 00  	add	a0, s4, s0
80004bac: 93 04 04 00  	mv	s1, s0
80004bb0: e3 60 25 ff  	bltu	a0, s2, 0x80004b90 <_ntoa_format+0x318>
80004bb4: 6f 00 80 00  	j	0x80004bbc <_ntoa_format+0x344>
80004bb8: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80004bbc: 13 05 04 00  	mv	a0, s0
80004bc0: 83 2d c1 00  	lw	s11, 12(sp)
80004bc4: 03 2d 01 01  	lw	s10, 16(sp)
80004bc8: 83 2c 41 01  	lw	s9, 20(sp)
80004bcc: 03 2c 81 01  	lw	s8, 24(sp)
80004bd0: 83 2b c1 01  	lw	s7, 28(sp)
80004bd4: 03 2b 01 02  	lw	s6, 32(sp)
80004bd8: 83 2a 41 02  	lw	s5, 36(sp)
80004bdc: 03 2a 81 02  	lw	s4, 40(sp)
80004be0: 83 29 c1 02  	lw	s3, 44(sp)
80004be4: 03 29 01 03  	lw	s2, 48(sp)
80004be8: 83 24 41 03  	lw	s1, 52(sp)
80004bec: 03 24 81 03  	lw	s0, 56(sp)
80004bf0: 83 20 c1 03  	lw	ra, 60(sp)
80004bf4: 13 01 01 04  	addi	sp, sp, 64
80004bf8: 67 80 00 00  	ret

80004bfc <_snrt_init_team>:
;     team->base.root = team;
80004bfc: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80004c00: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004c04: 03 23 87 00  	lw	t1, 8(a4)
80004c08: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004c0c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80004c10: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004c14: 83 22 47 00  	lw	t0, 4(a4)
80004c18: 33 88 08 03  	mul	a6, a7, a6
80004c1c: 33 05 58 02  	mul	a0, a6, t0
80004c20: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004c24: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80004c28: 33 85 68 40  	sub	a0, a7, t1
80004c2c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80004c30: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80004c34: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80004c38: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80004c3c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80004c40: 03 25 87 01  	lw	a0, 24(a4)
80004c44: b7 05 00 10  	lui	a1, 65536
80004c48: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80004c4c: 23 a2 07 02  	sw	zero, 36(a5)
80004c50: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80004c54: 03 25 07 02  	lw	a0, 32(a4)
80004c58: 83 25 47 02  	lw	a1, 36(a4)
80004c5c: 23 a4 a7 02  	sw	a0, 40(a5)
80004c60: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80004c64: 23 a8 c7 02  	sw	a2, 48(a5)
80004c68: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80004c6c: 23 ac d7 02  	sw	a3, 56(a5)
80004c70: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80004c74: 03 25 07 01  	lw	a0, 16(a4)
80004c78: 33 08 a6 00  	add	a6, a2, a0
80004c7c: 93 05 08 19  	addi	a1, a6, 400
80004c80: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80004c84: b3 32 a8 00  	sltu	t0, a6, a0
80004c88: 93 55 15 00  	srli	a1, a0, 1
80004c8c: 33 03 b8 00  	add	t1, a6, a1
80004c90: b3 35 03 01  	sltu	a1, t1, a6
80004c94: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80004c98: 23 a0 67 04  	sw	t1, 64(a5)
80004c9c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80004ca0: 13 15 15 00  	slli	a0, a0, 1
80004ca4: b3 05 c5 00  	add	a1, a0, a2
80004ca8: 33 b5 a5 00  	sltu	a0, a1, a0
80004cac: 23 a4 b7 04  	sw	a1, 72(a5)
80004cb0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80004cb4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80004cb8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80004cbc: 37 05 00 00  	lui	a0, 0
80004cc0: 33 05 45 00  	add	a0, a0, tp
80004cc4: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004cc8: 03 a5 07 00  	lw	a0, 0(a5)
80004ccc: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80004cd0: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004cd4: b3 85 b8 40  	sub	a1, a7, a1
80004cd8: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80004cdc: b7 05 00 00  	lui	a1, 0
80004ce0: b3 85 45 00  	add	a1, a1, tp
80004ce4: 23 a2 a5 00  	sw	a0, 4(a1)
80004ce8: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80004cec: 33 85 a8 02  	mul	a0, a7, a0

80004cf0 <.LBB0_1>:
80004cf0: 97 15 00 00  	auipc	a1, 1
80004cf4: 93 85 45 99  	addi	a1, a1, -1644
80004cf8: 33 05 b5 00  	add	a0, a0, a1
80004cfc: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80004d00: 83 28 07 03  	lw	a7, 48(a4)
80004d04: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80004d08: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80004d0c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80004d10: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80004d14: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80004d18: 13 05 76 00  	addi	a0, a2, 7
80004d1c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80004d20: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80004d24: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80004d28: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80004d2c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80004d30: 03 a5 05 00  	lw	a0, 0(a1)
80004d34: 13 05 f5 44  	addi	a0, a0, 1103
80004d38: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80004d3c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80004d40: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80004d44: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80004d48: 37 05 00 00  	lui	a0, 0
80004d4c: 33 05 45 00  	add	a0, a0, tp
80004d50: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80004d54: 37 05 00 00  	lui	a0, 0
80004d58: 33 05 45 00  	add	a0, a0, tp
80004d5c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80004d60: 67 80 00 00  	ret

80004d64 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004d64: 37 05 00 00  	lui	a0, 0
80004d68: 33 05 45 00  	add	a0, a0, tp
80004d6c: 03 25 05 00  	lw	a0, 0(a0)
80004d70: 03 25 05 00  	lw	a0, 0(a0)
80004d74: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004d78: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004d7c: 33 85 a5 40  	sub	a0, a1, a0
80004d80: 67 80 00 00  	ret

80004d84 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80004d84: 37 05 00 00  	lui	a0, 0
80004d88: 33 05 45 00  	add	a0, a0, tp
80004d8c: 03 25 05 00  	lw	a0, 0(a0)
80004d90: 03 25 05 00  	lw	a0, 0(a0)
80004d94: 03 25 05 07  	lw	a0, 112(a0)
80004d98: 67 80 00 00  	ret

80004d9c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80004d9c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80004da0: 63 44 05 00  	bltz	a0, 0x80004da8 <__snrt_isr+0xc>
;         while (1)
80004da4: 6f 00 00 00  	j	0x80004da4 <__snrt_isr+0x8>
80004da8: b7 05 00 80  	lui	a1, 524288
80004dac: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80004db0: 33 75 b5 00  	and	a0, a0, a1
80004db4: 13 05 d5 ff  	addi	a0, a0, -3
80004db8: 93 55 25 00  	srli	a1, a0, 2
80004dbc: 13 15 e5 01  	slli	a0, a0, 30
80004dc0: 33 65 b5 00  	or	a0, a0, a1
80004dc4: 93 05 40 00  	addi	a1, zero, 4
80004dc8: 63 0a b5 06  	beq	a0, a1, 0x80004e3c <.LBB1_7+0x58>
80004dcc: 63 1a 05 08  	bnez	a0, 0x80004e60 <.LBB1_7+0x7c>
80004dd0: 37 05 00 00  	lui	a0, 0
80004dd4: 33 05 45 00  	add	a0, a0, tp
80004dd8: 03 25 05 00  	lw	a0, 0(a0)
80004ddc: 03 25 05 00  	lw	a0, 0(a0)
80004de0: f3 25 40 f1  	csrr	a1, mhartid

80004de4 <.LBB1_7>:
;     asm volatile(
80004de4: 17 16 00 00  	auipc	a2, 1
80004de8: 13 06 c6 89  	addi	a2, a2, -1892
80004dec: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80004df0: 93 06 06 00  	mv	a3, a2
80004df4: 93 02 10 00  	addi	t0, zero, 1
80004df8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80004dfc: e3 9e 02 fe  	bnez	t0, 0x80004df8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80004e00: b7 06 00 00  	lui	a3, 0
80004e04: b3 86 46 00  	add	a3, a3, tp
80004e08: 83 a6 86 00  	lw	a3, 8(a3)
80004e0c: 33 85 a5 40  	sub	a0, a1, a0
80004e10: 93 55 35 00  	srli	a1, a0, 3
80004e14: 93 f5 c5 ff  	andi	a1, a1, -4
80004e18: b3 85 b6 00  	add	a1, a3, a1
80004e1c: 83 a6 05 00  	lw	a3, 0(a1)
80004e20: 13 07 10 00  	addi	a4, zero, 1
80004e24: 33 15 a7 00  	sll	a0, a4, a0
80004e28: 13 45 f5 ff  	not	a0, a0
80004e2c: 33 f5 a6 00  	and	a0, a3, a0
80004e30: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80004e34: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80004e38: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80004e3c: 37 05 00 00  	lui	a0, 0
80004e40: 33 05 45 00  	add	a0, a0, tp
80004e44: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004e48: b7 05 00 00  	lui	a1, 0
80004e4c: b3 85 45 00  	add	a1, a1, tp
80004e50: 83 a5 c5 00  	lw	a1, 12(a1)
80004e54: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80004e58: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004e5c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80004e60: 67 80 00 00  	ret

Disassembly of section .init:

80004e70 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80004e70: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80004e74: 93 81 81 f1  	addi	gp, gp, -232

80004e78 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80004e78: 97 00 00 00  	auipc	ra, 0
80004e7c: e7 80 40 3c  	jalr	964(ra)

80004e80 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80004e80: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80004e84: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80004e88: 97 00 00 00  	auipc	ra, 0
80004e8c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80004e90: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80004e94: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80004e98: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80004e9c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80004ea0: 63 92 02 02  	bnez	t0, 0x80004ec4 <snrt.crt0.init_registers>

80004ea4 <.Lpcrel_hi0>:
;     la        t0, _edata
80004ea4: 97 02 00 00  	auipc	t0, 0
80004ea8: 93 82 c2 7d  	addi	t0, t0, 2012

80004eac <.Lpcrel_hi1>:
;     la        t1, _end
80004eac: 17 03 00 00  	auipc	t1, 0
80004eb0: 13 03 83 7d  	addi	t1, t1, 2008
;     bge       t0, t1, 2f
80004eb4: 63 d8 62 00  	bge	t0, t1, 0x80004ec4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80004eb8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80004ebc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80004ec0: e3 cc 62 fe  	blt	t0, t1, 0x80004eb8 <.Lpcrel_hi1+0xc>

80004ec4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80004ec4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80004ec8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80004ecc: 63 82 02 08  	beqz	t0, 0x80004f50 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80004ed0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80004ed4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80004ed8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80004edc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80004ee0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80004ee4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80004ee8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80004eec: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80004ef0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80004ef4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80004ef8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80004efc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80004f00: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80004f04: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80004f08: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80004f0c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80004f10: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80004f14: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80004f18: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80004f1c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80004f20: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80004f24: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80004f28: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80004f2c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80004f30: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80004f34: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80004f38: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80004f3c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80004f40: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80004f44: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80004f48: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80004f4c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80004f50 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80004f50: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80004f54: 23 a0 06 00  	sw	zero, 0(a3)

80004f58 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80004f58: 97 02 00 00  	auipc	t0, 0
80004f5c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80004f60: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80004f64: 93 87 06 00  	mv	a5, a3

80004f68 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80004f68: 97 03 00 00  	auipc	t2, 0
80004f6c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80004f70: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80004f74: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80004f78: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80004f7c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80004f80: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80004f84: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80004f88: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80004f8c: b3 86 66 40  	sub	a3, a3, t1

80004f90 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80004f90: 97 02 00 00  	auipc	t0, 0
80004f94: 93 82 82 5f  	addi	t0, t0, 1528

80004f98 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80004f98: 17 03 00 00  	auipc	t1, 0
80004f9c: 13 03 03 5f  	addi	t1, t1, 1520

80004fa0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80004fa0: 97 03 00 00  	auipc	t2, 0
80004fa4: 93 83 83 5e  	addi	t2, t2, 1512

80004fa8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80004fa8: 17 0e 00 00  	auipc	t3, 0
80004fac: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80004fb0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80004fb4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80004fb8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80004fbc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80004fc0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80004fc4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80004fc8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80004fcc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80004fd0: 63 dc 62 00  	bge	t0, t1, 0x80004fe8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80004fd4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80004fd8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80004fdc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004fe0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80004fe4: e3 c8 62 fe  	blt	t0, t1, 0x80004fd4 <.Lpcrel_hi7+0x2c>

80004fe8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80004fe8: 97 02 00 00  	auipc	t0, 0
80004fec: 93 82 02 5a  	addi	t0, t0, 1440

80004ff0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80004ff0: 17 03 00 00  	auipc	t1, 0
80004ff4: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80004ff8: 63 da 62 00  	bge	t0, t1, 0x8000500c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80004ffc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80005000: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005004: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80005008: e3 ca 72 fe  	blt	t0, t2, 0x80004ffc <.Lpcrel_hi9+0xc>

8000500c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000500c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80005010: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80005014: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80005018: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000501c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80005020: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80005024: 97 00 00 00  	auipc	ra, 0
80005028: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
8000502c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80005030: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80005034: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80005038: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000503c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80005040: 13 01 41 01  	addi	sp, sp, 20

80005044 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80005044: 97 02 00 00  	auipc	t0, 0
80005048: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000504c: 73 90 52 30  	csrw	mtvec, t0

80005050 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80005050: 97 00 00 00  	auipc	ra, 0
80005054: e7 80 00 22  	jalr	544(ra)

80005058 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80005058: 97 b0 ff ff  	auipc	ra, 1048571
8000505c: e7 80 c0 5d  	jalr	1500(ra)
;     mv        s0, a0 # store return value in s0
80005060: 13 04 05 00  	mv	s0, a0

80005064 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80005064: 97 00 00 00  	auipc	ra, 0
80005068: e7 80 c0 20  	jalr	524(ra)

8000506c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000506c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80005070: 97 00 00 00  	auipc	ra, 0
80005074: e7 80 c0 22  	jalr	556(ra)
;     wfi
80005078: 73 00 50 10  	wfi	
;     j       1b
8000507c: 6f f0 df ff  	j	0x80005078 <snrt.crt0.end+0xc>

80005080 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005080: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005084: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005088: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000508c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80005090: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80005094: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80005098: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000509c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800050a0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800050a4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800050a8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800050ac: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800050b0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800050b4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800050b8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800050bc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800050c0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800050c4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800050c8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800050cc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800050d0: 63 84 02 08  	beqz	t0, 0x80005158 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800050d4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800050d8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800050dc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800050e0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800050e4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800050e8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800050ec: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800050f0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800050f4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800050f8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800050fc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80005100: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80005104: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80005108: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000510c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80005110: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80005114: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80005118: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000511c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80005120: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80005124: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80005128: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000512c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80005130: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80005134: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80005138: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000513c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80005140: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80005144: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80005148: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000514c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80005150: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80005154: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80005158: 97 00 00 00  	auipc	ra, 0
8000515c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80005160: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80005164: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005168: 63 84 02 08  	beqz	t0, 0x800051f0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000516c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80005170: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80005174: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80005178: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000517c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005180: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005184: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005188: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000518c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005190: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005194: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005198: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000519c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800051a0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800051a4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800051a8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800051ac: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800051b0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800051b4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800051b8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800051bc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800051c0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800051c4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800051c8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800051cc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800051d0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800051d4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800051d8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800051dc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800051e0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800051e4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800051e8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800051ec: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
800051f0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
800051f4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
800051f8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
800051fc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005200: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005204: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005208: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000520c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80005210: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80005214: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80005218: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000521c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80005220: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80005224: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80005228: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000522c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80005230: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80005234: 13 01 01 05  	addi	sp, sp, 80
;     mret
80005238: 73 00 20 30  	mret	

8000523c <_snrt_init_core_info>:
;     mv        a4, a1
8000523c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80005240: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80005244: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80005248: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000524c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80005250: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80005254: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80005258: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000525c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80005260: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80005264: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80005268: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000526c: 67 80 00 00  	ret

80005270 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80005270: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80005274: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80005278: 97 00 00 00  	auipc	ra, 0
8000527c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80005280: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005284: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005288: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000528c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005290: 67 80 00 00  	ret

80005294 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005294: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005298: 67 80 00 00  	ret

8000529c <_snrt_exit>:
;     addi      sp, sp, -8
8000529c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800052a0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800052a4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800052a8: 97 00 00 00  	auipc	ra, 0
800052ac: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
800052b0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800052b4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800052b8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800052bc: 63 1c 05 00  	bnez	a0, 0x800052d4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800052c0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800052c4: 93 e2 12 00  	ori	t0, t0, 1

800052c8 <.Lpcrel_hi11>:
;     la        t1, tohost
800052c8: 17 03 00 00  	auipc	t1, 0
800052cc: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
800052d0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800052d4: 67 80 00 00  	ret
