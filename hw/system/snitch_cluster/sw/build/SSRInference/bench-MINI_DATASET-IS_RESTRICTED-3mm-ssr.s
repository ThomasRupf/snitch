
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET-IS_RESTRICTED-3mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00004df0 80000000 TEXT
  2 .init             00000468 80004df0 TEXT
  3 .rodata           00000238 80005258 DATA
  4 .htif             00000048 800054c0 DATA
  5 .tdata            00000000 80005508 DATA
  6 .tbss             00000010 80005508 BSS
  7 .tbssend          00000000 80005518 DATA
  8 .sdata            000000e8 80005518 DATA
  9 .data             00000000 80005600 DATA
 10 .sbss             00000004 80005600 BSS
 11 .bss              00000000 80005604 BSS
 12 .dram             00000000 80005604 DATA
 13 .debug_info       000037fa 00000000 
 14 .debug_abbrev     00000c09 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003649 00000000 
 17 .debug_loc        00003fa9 00000000 
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
800006b0: 6f 20 90 01  	j	0x80002ec8 <.LBB0_102+0x10>
;     return _snrt_team_current->root;
800006b4: 37 05 00 00  	lui	a0, 0
800006b8: 33 05 45 00  	add	a0, a0, tp
800006bc: 03 25 05 00  	lw	a0, 0(a0)
800006c0: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c4: 83 27 85 05  	lw	a5, 88(a0)
800006c8: 83 25 05 05  	lw	a1, 80(a0)
800006cc: 03 27 45 05  	lw	a4, 84(a0)
800006d0: 37 16 00 00  	lui	a2, 1
800006d4: 13 06 06 90  	addi	a2, a2, -1792
800006d8: b3 86 c7 00  	add	a3, a5, a2
800006dc: b3 05 b7 00  	add	a1, a4, a1
800006e0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006ec <main+0xb8>
800006e4: 13 08 00 00  	mv	a6, zero
800006e8: 6f 00 00 01  	j	0x800006f8 <main+0xc4>
;     void *ret = (void *)alloc->next;
800006ec: 13 88 07 00  	mv	a6, a5
;     alloc->next += size;
800006f0: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f4: 93 87 06 00  	mv	a5, a3
800006f8: b3 06 f6 00  	add	a3, a2, a5
800006fc: 93 86 06 10  	addi	a3, a3, 256
80000700: 63 f6 d5 00  	bgeu	a1, a3, 0x8000070c <main+0xd8>
80000704: 13 07 00 00  	mv	a4, zero
80000708: 6f 00 00 01  	j	0x80000718 <main+0xe4>
;     void *ret = (void *)alloc->next;
8000070c: 13 87 07 00  	mv	a4, a5
;     alloc->next += size;
80000710: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000714: 93 87 06 00  	mv	a5, a3
80000718: b3 06 f6 00  	add	a3, a2, a5
8000071c: 93 86 06 24  	addi	a3, a3, 576
80000720: 63 f6 d5 00  	bgeu	a1, a3, 0x8000072c <main+0xf8>
80000724: 13 0c 00 00  	mv	s8, zero
80000728: 6f 00 00 01  	j	0x80000738 <main+0x104>
;     void *ret = (void *)alloc->next;
8000072c: 13 8c 07 00  	mv	s8, a5
;     alloc->next += size;
80000730: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000734: 93 87 06 00  	mv	a5, a3
80000738: b3 06 f6 00  	add	a3, a2, a5
8000073c: 93 86 06 36  	addi	a3, a3, 864
80000740: 63 f6 d5 00  	bgeu	a1, a3, 0x8000074c <main+0x118>
80000744: 93 04 00 00  	mv	s1, zero
80000748: 6f 00 00 01  	j	0x80000758 <main+0x124>
;     void *ret = (void *)alloc->next;
8000074c: 93 84 07 00  	mv	s1, a5
;     alloc->next += size;
80000750: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000754: 93 87 06 00  	mv	a5, a3
80000758: b3 06 f6 00  	add	a3, a2, a5
8000075c: 93 86 06 48  	addi	a3, a3, 1152
80000760: 63 f6 d5 00  	bgeu	a1, a3, 0x8000076c <main+0x138>
80000764: 93 00 00 00  	mv	ra, zero
80000768: 6f 00 00 01  	j	0x80000778 <main+0x144>
;     void *ret = (void *)alloc->next;
8000076c: 93 80 07 00  	mv	ra, a5
;     alloc->next += size;
80000770: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000774: 93 87 06 00  	mv	a5, a3
80000778: b3 06 f6 00  	add	a3, a2, a5
8000077c: 93 86 06 78  	addi	a3, a3, 1920
80000780: 63 f6 d5 00  	bgeu	a1, a3, 0x8000078c <main+0x158>
80000784: 13 04 00 00  	mv	s0, zero
80000788: 6f 00 00 01  	j	0x80000798 <main+0x164>
;     void *ret = (void *)alloc->next;
8000078c: 13 84 07 00  	mv	s0, a5
;     alloc->next += size;
80000790: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000794: 93 87 06 00  	mv	a5, a3
80000798: 33 06 f6 00  	add	a2, a2, a5
8000079c: 13 06 06 20  	addi	a2, a2, 512
800007a0: 63 f6 c5 00  	bgeu	a1, a2, 0x800007ac <main+0x178>
800007a4: 93 07 00 00  	mv	a5, zero
800007a8: 6f 00 80 00  	j	0x800007b0 <main+0x17c>
;     alloc->next += size;
800007ac: 23 2c c5 04  	sw	a2, 88(a0)
800007b0: 23 22 91 02  	sw	s1, 36(sp)
800007b4: 23 24 01 03  	sw	a6, 40(sp)
800007b8: 23 26 f1 02  	sw	a5, 44(sp)
;   for (i = 0; i < ni; i++)
800007bc: 13 55 47 01  	srli	a0, a4, 20
800007c0: 33 35 a0 00  	snez	a0, a0
800007c4: b7 f5 11 00  	lui	a1, 287
800007c8: 93 85 95 60  	addi	a1, a1, 1545
800007cc: b3 35 b7 00  	sltu	a1, a4, a1
800007d0: 33 75 b5 00  	and	a0, a0, a1

800007d4 <.LBB0_93>:
800007d4: 97 55 00 00  	auipc	a1, 5
800007d8: 93 85 45 d4  	addi	a1, a1, -700
800007dc: 23 28 81 02  	sw	s0, 48(sp)
800007e0: 23 2a a1 00  	sw	a0, 20(sp)
800007e4: 23 2e e1 00  	sw	a4, 28(sp)
800007e8: 13 08 00 00  	mv	a6, zero
800007ec: 63 04 05 22  	beqz	a0, 0x80000a14 <.LBB0_93+0x240>
800007f0: 93 02 00 00  	mv	t0, zero
800007f4: 13 03 00 00  	mv	t1, zero
800007f8: 93 03 00 00  	mv	t2, zero
800007fc: 13 0e 00 00  	mv	t3, zero
80000800: 93 0e 00 00  	mv	t4, zero
80000804: 13 0f 00 00  	mv	t5, zero
80000808: 93 0f 00 00  	mv	t6, zero
8000080c: 13 05 80 00  	addi	a0, zero, 8
80000810: 13 06 30 01  	addi	a2, zero, 19
;   for (i = 0; i < ni; i++)
80000814: 93 06 00 04  	addi	a3, zero, 64
80000818: 93 07 00 0c  	addi	a5, zero, 192
8000081c: ab 20 d6 00  	scfgw	a2, a3
80000820: ab 20 f5 00  	scfgw	a0, a5
80000824: 13 06 f0 00  	addi	a2, zero, 15
80000828: 93 06 00 06  	addi	a3, zero, 96
8000082c: 93 07 00 0e  	addi	a5, zero, 224
80000830: ab 20 d6 00  	scfgw	a2, a3
80000834: ab 20 f5 00  	scfgw	a0, a5
80000838: 13 05 00 02  	addi	a0, zero, 32
8000083c: ab 20 a0 00  	scfgw	zero, a0
80000840: 2b 20 07 3a  	scfgwi	a4, 928
80000844: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000848: 13 09 10 00  	addi	s2, zero, 1
8000084c: 87 b1 05 00  	fld	ft3, 0(a1)
80000850: 93 08 10 13  	addi	a7, zero, 305
80000854: 13 0a 10 00  	addi	s4, zero, 1
80000858: 93 09 10 00  	addi	s3, zero, 1
8000085c: 93 06 10 00  	addi	a3, zero, 1
80000860: 13 07 10 00  	addi	a4, zero, 1
80000864: 93 07 10 00  	addi	a5, zero, 1
80000868: 93 04 10 00  	addi	s1, zero, 1
8000086c: 13 04 10 00  	addi	s0, zero, 1
80000870: 13 05 10 00  	addi	a0, zero, 1
80000874: 93 05 10 00  	addi	a1, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000878: 53 80 31 22  	fmv.d	ft0, ft3
8000087c: 13 76 f9 00  	andi	a2, s2, 15
80000880: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000884: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000888: 53 00 42 22  	fmv.d	ft0, ft4
8000088c: 13 76 e8 00  	andi	a2, a6, 14
80000890: 13 66 16 00  	ori	a2, a2, 1
80000894: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000898: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000089c: 53 00 42 22  	fmv.d	ft0, ft4
800008a0: 13 76 fa 00  	andi	a2, s4, 15
800008a4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008a8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008ac: 53 00 42 22  	fmv.d	ft0, ft4
800008b0: 13 f6 c2 00  	andi	a2, t0, 12
800008b4: 13 66 16 00  	ori	a2, a2, 1
800008b8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008bc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008c0: 53 00 42 22  	fmv.d	ft0, ft4
800008c4: 13 f6 f9 00  	andi	a2, s3, 15
800008c8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008cc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008d0: 53 00 42 22  	fmv.d	ft0, ft4
800008d4: 13 76 e3 00  	andi	a2, t1, 14
800008d8: 13 66 16 00  	ori	a2, a2, 1
800008dc: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008e0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008e4: 53 00 42 22  	fmv.d	ft0, ft4
800008e8: 13 f6 f6 00  	andi	a2, a3, 15
800008ec: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008f0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008f4: 53 00 42 22  	fmv.d	ft0, ft4
800008f8: 13 f6 83 00  	andi	a2, t2, 8
800008fc: 13 66 16 00  	ori	a2, a2, 1
80000900: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000904: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000908: 53 00 42 22  	fmv.d	ft0, ft4
8000090c: 13 76 f7 00  	andi	a2, a4, 15
80000910: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000914: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000918: 53 00 42 22  	fmv.d	ft0, ft4
8000091c: 13 76 ee 00  	andi	a2, t3, 14
80000920: 13 66 16 00  	ori	a2, a2, 1
80000924: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000928: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000092c: 53 00 42 22  	fmv.d	ft0, ft4
80000930: 13 f6 f7 00  	andi	a2, a5, 15
80000934: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000938: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000093c: 53 00 42 22  	fmv.d	ft0, ft4
80000940: 13 f6 ce 00  	andi	a2, t4, 12
80000944: 13 66 16 00  	ori	a2, a2, 1
80000948: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000094c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000950: 53 00 42 22  	fmv.d	ft0, ft4
80000954: 13 f6 f4 00  	andi	a2, s1, 15
80000958: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000095c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000960: 53 00 42 22  	fmv.d	ft0, ft4
80000964: 13 76 ef 00  	andi	a2, t5, 14
80000968: 13 66 16 00  	ori	a2, a2, 1
8000096c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000970: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000974: 53 00 42 22  	fmv.d	ft0, ft4
80000978: 13 76 f4 00  	andi	a2, s0, 15
8000097c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000980: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000984: 53 00 42 22  	fmv.d	ft0, ft4
80000988: 53 80 31 22  	fmv.d	ft0, ft3
8000098c: 13 76 f5 00  	andi	a2, a0, 15
80000990: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000994: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000998: 53 00 42 22  	fmv.d	ft0, ft4
8000099c: 13 f6 ef 00  	andi	a2, t6, 14
800009a0: 13 66 16 00  	ori	a2, a2, 1
800009a4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009a8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009ac: 53 00 42 22  	fmv.d	ft0, ft4
800009b0: 13 f6 f5 00  	andi	a2, a1, 15
800009b4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009b8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009bc: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
800009c0: 93 85 35 01  	addi	a1, a1, 19
800009c4: 93 8f 2f 01  	addi	t6, t6, 18
800009c8: 13 05 15 01  	addi	a0, a0, 17
800009cc: 13 04 f4 00  	addi	s0, s0, 15
800009d0: 13 0f ef 00  	addi	t5, t5, 14
800009d4: 93 84 d4 00  	addi	s1, s1, 13
800009d8: 93 8e ce 00  	addi	t4, t4, 12
800009dc: 93 87 b7 00  	addi	a5, a5, 11
800009e0: 13 0e ae 00  	addi	t3, t3, 10
800009e4: 13 07 97 00  	addi	a4, a4, 9
800009e8: 93 83 83 00  	addi	t2, t2, 8
800009ec: 93 86 76 00  	addi	a3, a3, 7
800009f0: 13 03 63 00  	addi	t1, t1, 6
800009f4: 93 89 59 00  	addi	s3, s3, 5
800009f8: 93 82 42 00  	addi	t0, t0, 4
800009fc: 13 0a 3a 00  	addi	s4, s4, 3
80000a00: 13 08 28 00  	addi	a6, a6, 2
80000a04: 13 09 19 00  	addi	s2, s2, 1
80000a08: e3 98 15 e7  	bne	a1, a7, 0x80000878 <.LBB0_93+0xa4>
80000a0c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000a10: 6f 00 40 20  	j	0x80000c14 <.LBB0_93+0x440>
80000a14: 93 08 00 00  	mv	a7, zero
80000a18: 13 0e 00 00  	mv	t3, zero
80000a1c: 93 0e 00 00  	mv	t4, zero
80000a20: 13 0f 00 00  	mv	t5, zero
80000a24: 93 0f 00 00  	mv	t6, zero
80000a28: 13 09 00 00  	mv	s2, zero
80000a2c: 13 0a 00 00  	mv	s4, zero
;   for (i = 0; i < ni; i++)
80000a30: 13 05 07 05  	addi	a0, a4, 80
80000a34: 93 0a 10 00  	addi	s5, zero, 1
80000a38: 37 a6 89 3f  	lui	a2, 260250
80000a3c: 93 02 96 99  	addi	t0, a2, -1639
80000a40: 37 a6 99 99  	lui	a2, 629146
80000a44: 13 03 a6 99  	addi	t1, a2, -1638
80000a48: 87 b1 05 00  	fld	ft3, 0(a1)
80000a4c: 93 03 10 13  	addi	t2, zero, 305
80000a50: 13 0b 10 00  	addi	s6, zero, 1
80000a54: 93 0b 10 00  	addi	s7, zero, 1
80000a58: 93 09 10 00  	addi	s3, zero, 1
80000a5c: 93 07 10 00  	addi	a5, zero, 1
80000a60: 93 04 10 00  	addi	s1, zero, 1
80000a64: 13 04 10 00  	addi	s0, zero, 1
80000a68: 93 05 10 00  	addi	a1, zero, 1
80000a6c: 13 06 10 00  	addi	a2, zero, 1
80000a70: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000a74: 23 2a 55 fa  	sw	t0, -76(a0)
80000a78: 23 28 65 fa  	sw	t1, -80(a0)
80000a7c: 13 f7 f6 00  	andi	a4, a3, 15
80000a80: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a84: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a88: 27 3c 45 fa  	fsd	ft4, -72(a0)
80000a8c: 13 77 e9 00  	andi	a4, s2, 14
80000a90: 13 67 17 00  	ori	a4, a4, 1
80000a94: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a98: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a9c: 27 30 45 fc  	fsd	ft4, -64(a0)
80000aa0: 13 77 f4 00  	andi	a4, s0, 15
80000aa4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000aa8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000aac: 27 34 45 fc  	fsd	ft4, -56(a0)
80000ab0: 13 f7 cf 00  	andi	a4, t6, 12
80000ab4: 13 67 17 00  	ori	a4, a4, 1
80000ab8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000abc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ac0: 27 38 45 fc  	fsd	ft4, -48(a0)
80000ac4: 13 f7 f7 00  	andi	a4, a5, 15
80000ac8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000acc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ad0: 27 3c 45 fc  	fsd	ft4, -40(a0)
80000ad4: 13 f7 ee 00  	andi	a4, t4, 14
80000ad8: 13 67 17 00  	ori	a4, a4, 1
80000adc: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ae0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ae4: 27 30 45 fe  	fsd	ft4, -32(a0)
80000ae8: 13 f7 fb 00  	andi	a4, s7, 15
80000aec: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000af0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000af4: 27 34 45 fe  	fsd	ft4, -24(a0)
80000af8: 13 f7 88 00  	andi	a4, a7, 8
80000afc: 13 67 17 00  	ori	a4, a4, 1
80000b00: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b04: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b08: 27 38 45 fe  	fsd	ft4, -16(a0)
80000b0c: 13 f7 fa 00  	andi	a4, s5, 15
80000b10: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b14: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b18: 27 3c 45 fe  	fsd	ft4, -8(a0)
80000b1c: 13 77 e8 00  	andi	a4, a6, 14
80000b20: 13 67 17 00  	ori	a4, a4, 1
80000b24: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b28: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b2c: 27 30 45 00  	fsd	ft4, 0(a0)
80000b30: 13 77 fb 00  	andi	a4, s6, 15
80000b34: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b38: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b3c: 27 34 45 00  	fsd	ft4, 8(a0)
80000b40: 13 77 ce 00  	andi	a4, t3, 12
80000b44: 13 67 17 00  	ori	a4, a4, 1
80000b48: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b4c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b50: 27 38 45 00  	fsd	ft4, 16(a0)
80000b54: 13 f7 f9 00  	andi	a4, s3, 15
80000b58: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b5c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b60: 27 3c 45 00  	fsd	ft4, 24(a0)
80000b64: 13 77 ef 00  	andi	a4, t5, 14
80000b68: 13 67 17 00  	ori	a4, a4, 1
80000b6c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b70: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b74: 27 30 45 02  	fsd	ft4, 32(a0)
80000b78: 13 f7 f4 00  	andi	a4, s1, 15
80000b7c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b80: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b84: 27 34 45 02  	fsd	ft4, 40(a0)
80000b88: 23 2a 55 02  	sw	t0, 52(a0)
80000b8c: 23 28 65 02  	sw	t1, 48(a0)
80000b90: 13 f7 f5 00  	andi	a4, a1, 15
80000b94: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b98: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b9c: 27 3c 45 02  	fsd	ft4, 56(a0)
80000ba0: 13 77 ea 00  	andi	a4, s4, 14
80000ba4: 13 67 17 00  	ori	a4, a4, 1
80000ba8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000bac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bb0: 27 30 45 04  	fsd	ft4, 64(a0)
80000bb4: 13 77 f6 00  	andi	a4, a2, 15
80000bb8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000bbc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bc0: 27 34 45 04  	fsd	ft4, 72(a0)
;   for (i = 0; i < ni; i++)
80000bc4: 93 86 16 00  	addi	a3, a3, 1
80000bc8: 13 06 36 01  	addi	a2, a2, 19
80000bcc: 13 0a 2a 01  	addi	s4, s4, 18
80000bd0: 13 09 29 00  	addi	s2, s2, 2
80000bd4: 93 85 15 01  	addi	a1, a1, 17
80000bd8: 13 04 34 00  	addi	s0, s0, 3
80000bdc: 93 8f 4f 00  	addi	t6, t6, 4
80000be0: 93 84 f4 00  	addi	s1, s1, 15
80000be4: 93 87 57 00  	addi	a5, a5, 5
80000be8: 13 0f ef 00  	addi	t5, t5, 14
80000bec: 93 8e 6e 00  	addi	t4, t4, 6
80000bf0: 93 89 d9 00  	addi	s3, s3, 13
80000bf4: 93 8b 7b 00  	addi	s7, s7, 7
80000bf8: 13 0e ce 00  	addi	t3, t3, 12
80000bfc: 93 88 88 00  	addi	a7, a7, 8
80000c00: 13 0b bb 00  	addi	s6, s6, 11
80000c04: 13 05 05 0a  	addi	a0, a0, 160
80000c08: 13 08 a8 00  	addi	a6, a6, 10
80000c0c: 93 8a 9a 00  	addi	s5, s5, 9
80000c10: e3 12 76 e6  	bne	a2, t2, 0x80000a74 <.LBB0_93+0x2a0>
;   for (i = 0; i < nk; i++)
80000c14: 13 55 4c 01  	srli	a0, s8, 20
80000c18: 33 35 a0 00  	snez	a0, a0
80000c1c: b7 f5 11 00  	lui	a1, 287
80000c20: 93 85 95 4c  	addi	a1, a1, 1225
80000c24: b3 35 bc 00  	sltu	a1, s8, a1
80000c28: b3 75 b5 00  	and	a1, a0, a1

80000c2c <.LBB0_94>:
80000c2c: 17 55 00 00  	auipc	a0, 5
80000c30: 13 05 45 8f  	addi	a0, a0, -1804
80000c34: 23 28 b1 00  	sw	a1, 16(sp)
80000c38: 23 2c 81 01  	sw	s8, 24(sp)
80000c3c: 63 86 05 2e  	beqz	a1, 0x80000f28 <.LBB0_95+0x28c>
80000c40: 93 08 00 00  	mv	a7, zero
80000c44: 93 02 00 00  	mv	t0, zero
80000c48: 13 03 00 00  	mv	t1, zero
80000c4c: 93 05 80 00  	addi	a1, zero, 8
80000c50: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < nk; i++)
80000c54: 93 06 00 04  	addi	a3, zero, 64
80000c58: 13 07 00 0c  	addi	a4, zero, 192
80000c5c: ab 20 d6 00  	scfgw	a2, a3
80000c60: ab a0 e5 00  	scfgw	a1, a4
80000c64: 13 06 30 01  	addi	a2, zero, 19
80000c68: 93 06 00 06  	addi	a3, zero, 96
80000c6c: 13 07 00 0e  	addi	a4, zero, 224
80000c70: ab 20 d6 00  	scfgw	a2, a3
80000c74: ab a0 e5 00  	scfgw	a1, a4
80000c78: 93 05 00 02  	addi	a1, zero, 32
80000c7c: ab 20 b0 00  	scfgw	zero, a1
80000c80: 2b 20 0c 3a  	scfgwi	s8, 928
80000c84: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000c88: 13 0f 20 00  	addi	t5, zero, 2
80000c8c: b7 95 e3 38  	lui	a1, 233017
80000c90: 13 87 95 e3  	addi	a4, a1, -455
80000c94: 93 07 20 01  	addi	a5, zero, 18
80000c98: 87 31 05 00  	fld	ft3, 0(a0)

80000c9c <.LBB0_95>:
80000c9c: 17 55 00 00  	auipc	a0, 5
80000ca0: 13 05 c5 88  	addi	a0, a0, -1908
80000ca4: 07 32 05 00  	fld	ft4, 0(a0)
80000ca8: 13 08 a0 02  	addi	a6, zero, 42
80000cac: 93 03 20 00  	addi	t2, zero, 2
80000cb0: 93 0f 20 00  	addi	t6, zero, 2
80000cb4: 13 09 20 00  	addi	s2, zero, 2
80000cb8: 13 0e 20 00  	addi	t3, zero, 2
80000cbc: 13 0a 20 00  	addi	s4, zero, 2
80000cc0: 93 0a 20 00  	addi	s5, zero, 2
80000cc4: 93 0e 20 00  	addi	t4, zero, 2
80000cc8: 13 0b 20 00  	addi	s6, zero, 2
80000ccc: 93 0b 20 00  	addi	s7, zero, 2
80000cd0: 13 0c 20 00  	addi	s8, zero, 2
80000cd4: 93 09 20 00  	addi	s3, zero, 2
80000cd8: 13 06 20 00  	addi	a2, zero, 2
80000cdc: 13 04 20 00  	addi	s0, zero, 2
80000ce0: 93 05 20 00  	addi	a1, zero, 2
80000ce4: 93 06 20 00  	addi	a3, zero, 2
80000ce8: 93 04 20 00  	addi	s1, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000cec: 33 35 ef 02  	mulhu	a0, t5, a4
80000cf0: 13 55 25 00  	srli	a0, a0, 2
80000cf4: 33 05 f5 02  	mul	a0, a0, a5
80000cf8: 33 05 af 40  	sub	a0, t5, a0
80000cfc: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000d00: 33 b5 e4 02  	mulhu	a0, s1, a4
80000d04: 13 55 25 00  	srli	a0, a0, 2
80000d08: 33 05 f5 02  	mul	a0, a0, a5
80000d0c: 33 85 a4 40  	sub	a0, s1, a0
80000d10: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000d14: 33 b5 e8 02  	mulhu	a0, a7, a4
80000d18: 13 55 25 00  	srli	a0, a0, 2
80000d1c: 33 05 f5 02  	mul	a0, a0, a5
80000d20: 33 85 a3 40  	sub	a0, t2, a0
80000d24: d3 03 05 d2  	fcvt.d.w	ft7, a0
80000d28: 33 b5 ef 02  	mulhu	a0, t6, a4
80000d2c: 13 55 25 00  	srli	a0, a0, 2
80000d30: 33 05 f5 02  	mul	a0, a0, a5
80000d34: 33 85 af 40  	sub	a0, t6, a0
80000d38: 53 05 05 d2  	fcvt.d.w	fa0, a0
80000d3c: 33 35 e9 02  	mulhu	a0, s2, a4
80000d40: 13 55 25 00  	srli	a0, a0, 2
80000d44: 33 05 f5 02  	mul	a0, a0, a5
80000d48: 33 05 a9 40  	sub	a0, s2, a0
80000d4c: d3 05 05 d2  	fcvt.d.w	fa1, a0
80000d50: 33 b5 e2 02  	mulhu	a0, t0, a4
80000d54: 13 55 25 00  	srli	a0, a0, 2
80000d58: 33 05 f5 02  	mul	a0, a0, a5
80000d5c: 33 05 ae 40  	sub	a0, t3, a0
80000d60: 53 06 05 d2  	fcvt.d.w	fa2, a0
80000d64: 33 35 ea 02  	mulhu	a0, s4, a4
80000d68: 13 55 25 00  	srli	a0, a0, 2
80000d6c: 33 05 f5 02  	mul	a0, a0, a5
80000d70: 33 05 aa 40  	sub	a0, s4, a0
80000d74: d3 06 05 d2  	fcvt.d.w	fa3, a0
80000d78: 33 b5 ea 02  	mulhu	a0, s5, a4
80000d7c: 13 55 25 00  	srli	a0, a0, 2
80000d80: 33 05 f5 02  	mul	a0, a0, a5
80000d84: 33 85 aa 40  	sub	a0, s5, a0
80000d88: 53 07 05 d2  	fcvt.d.w	fa4, a0
80000d8c: 33 35 e3 02  	mulhu	a0, t1, a4
80000d90: 13 55 25 00  	srli	a0, a0, 2
80000d94: 33 05 f5 02  	mul	a0, a0, a5
80000d98: 33 85 ae 40  	sub	a0, t4, a0
80000d9c: d3 07 05 d2  	fcvt.d.w	fa5, a0
80000da0: 33 35 eb 02  	mulhu	a0, s6, a4
80000da4: 13 55 25 00  	srli	a0, a0, 2
80000da8: 33 05 f5 02  	mul	a0, a0, a5
80000dac: 33 05 ab 40  	sub	a0, s6, a0
80000db0: 53 08 05 d2  	fcvt.d.w	fa6, a0
80000db4: 33 b5 eb 02  	mulhu	a0, s7, a4
80000db8: 13 55 25 00  	srli	a0, a0, 2
80000dbc: 33 05 f5 02  	mul	a0, a0, a5
80000dc0: 33 85 ab 40  	sub	a0, s7, a0
80000dc4: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000dc8: 33 35 ec 02  	mulhu	a0, s8, a4
80000dcc: 13 55 25 00  	srli	a0, a0, 2
80000dd0: 33 05 f5 02  	mul	a0, a0, a5
80000dd4: 33 05 ac 40  	sub	a0, s8, a0
80000dd8: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000ddc: 33 b5 e9 02  	mulhu	a0, s3, a4
80000de0: 13 55 25 00  	srli	a0, a0, 2
80000de4: 33 05 f5 02  	mul	a0, a0, a5
80000de8: 33 85 a9 40  	sub	a0, s3, a0
80000dec: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000df0: 33 35 e6 02  	mulhu	a0, a2, a4
80000df4: 13 55 25 00  	srli	a0, a0, 2
80000df8: 33 05 f5 02  	mul	a0, a0, a5
80000dfc: 33 05 a6 40  	sub	a0, a2, a0
80000e00: 53 0f 05 d2  	fcvt.d.w	ft10, a0
80000e04: 33 35 e4 02  	mulhu	a0, s0, a4
80000e08: 13 55 25 00  	srli	a0, a0, 2
80000e0c: 33 05 f5 02  	mul	a0, a0, a5
80000e10: 33 05 a4 40  	sub	a0, s0, a0
80000e14: d3 0f 05 d2  	fcvt.d.w	ft11, a0
80000e18: 33 b5 e5 02  	mulhu	a0, a1, a4
80000e1c: 13 55 25 00  	srli	a0, a0, 2
80000e20: 33 05 f5 02  	mul	a0, a0, a5
80000e24: 33 85 a5 40  	sub	a0, a1, a0
80000e28: 53 04 05 d2  	fcvt.d.w	fs0, a0
80000e2c: 33 b5 e6 02  	mulhu	a0, a3, a4
80000e30: 13 55 25 00  	srli	a0, a0, 2
80000e34: 33 05 f5 02  	mul	a0, a0, a5
80000e38: 33 85 a6 40  	sub	a0, a3, a0
80000e3c: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000e40: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e44: 53 80 52 22  	fmv.d	ft0, ft5
80000e48: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e4c: 53 80 52 22  	fmv.d	ft0, ft5
80000e50: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e54: 53 80 52 22  	fmv.d	ft0, ft5
80000e58: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e5c: 53 80 52 22  	fmv.d	ft0, ft5
80000e60: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e64: 53 80 52 22  	fmv.d	ft0, ft5
80000e68: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e6c: 53 80 52 22  	fmv.d	ft0, ft5
80000e70: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e74: 53 80 52 22  	fmv.d	ft0, ft5
80000e78: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e7c: 53 80 52 22  	fmv.d	ft0, ft5
80000e80: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e84: 53 80 52 22  	fmv.d	ft0, ft5
80000e88: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000e8c: 53 80 52 22  	fmv.d	ft0, ft5
80000e90: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000e94: 53 80 52 22  	fmv.d	ft0, ft5
80000e98: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000e9c: 53 80 52 22  	fmv.d	ft0, ft5
80000ea0: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000ea4: 53 80 52 22  	fmv.d	ft0, ft5
80000ea8: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000eac: 53 80 52 22  	fmv.d	ft0, ft5
80000eb0: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000eb4: 53 80 52 22  	fmv.d	ft0, ft5
80000eb8: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000ebc: 53 80 52 22  	fmv.d	ft0, ft5
80000ec0: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000ec4: 53 80 52 22  	fmv.d	ft0, ft5
80000ec8: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000ecc: 93 84 24 00  	addi	s1, s1, 2
80000ed0: 93 86 16 01  	addi	a3, a3, 17
80000ed4: 93 85 05 01  	addi	a1, a1, 16
80000ed8: 13 04 f4 00  	addi	s0, s0, 15
80000edc: 13 06 e6 00  	addi	a2, a2, 14
80000ee0: 93 89 d9 00  	addi	s3, s3, 13
80000ee4: 13 0c cc 00  	addi	s8, s8, 12
80000ee8: 93 8b bb 00  	addi	s7, s7, 11
80000eec: 13 0b ab 00  	addi	s6, s6, 10
80000ef0: 93 8e 9e 00  	addi	t4, t4, 9
80000ef4: 13 03 93 00  	addi	t1, t1, 9
80000ef8: 93 8a 8a 00  	addi	s5, s5, 8
80000efc: 13 0a 7a 00  	addi	s4, s4, 7
80000f00: 13 0e 6e 00  	addi	t3, t3, 6
80000f04: 93 82 62 00  	addi	t0, t0, 6
80000f08: 13 09 59 00  	addi	s2, s2, 5
80000f0c: 93 8f 4f 00  	addi	t6, t6, 4
80000f10: 93 83 33 00  	addi	t2, t2, 3
80000f14: 93 88 38 00  	addi	a7, a7, 3
80000f18: 13 0f 1f 00  	addi	t5, t5, 1
80000f1c: e3 98 04 dd  	bne	s1, a6, 0x80000cec <.LBB0_95+0x50>
80000f20: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f24: 6f 00 80 2b  	j	0x800011dc <.LBB0_95+0x540>
80000f28: 13 03 00 00  	mv	t1, zero
80000f2c: 93 03 00 00  	mv	t2, zero
80000f30: 13 0e 00 00  	mv	t3, zero
;   for (i = 0; i < nk; i++)
80000f34: 93 06 8c 04  	addi	a3, s8, 72
80000f38: 13 0f 20 00  	addi	t5, zero, 2
80000f3c: b7 95 e3 38  	lui	a1, 233017
80000f40: 93 87 95 e3  	addi	a5, a1, -455
80000f44: 93 04 20 01  	addi	s1, zero, 18
80000f48: 87 31 05 00  	fld	ft3, 0(a0)
80000f4c: 37 c5 96 3f  	lui	a0, 260460
80000f50: 13 08 c5 16  	addi	a6, a0, 364
80000f54: 37 75 c1 16  	lui	a0, 93207
80000f58: 93 02 75 c1  	addi	t0, a0, -1001
80000f5c: 93 08 a0 02  	addi	a7, zero, 42
80000f60: 93 0f 20 00  	addi	t6, zero, 2
80000f64: 93 0e 20 00  	addi	t4, zero, 2
80000f68: 13 0a 20 00  	addi	s4, zero, 2
80000f6c: 93 0a 20 00  	addi	s5, zero, 2
80000f70: 13 0b 20 00  	addi	s6, zero, 2
80000f74: 93 0b 20 00  	addi	s7, zero, 2
80000f78: 13 0c 20 00  	addi	s8, zero, 2
80000f7c: 13 09 20 00  	addi	s2, zero, 2
80000f80: 13 0d 20 00  	addi	s10, zero, 2
80000f84: 93 0d 20 00  	addi	s11, zero, 2
80000f88: 93 09 20 00  	addi	s3, zero, 2
80000f8c: 13 07 20 00  	addi	a4, zero, 2
80000f90: 13 04 20 00  	addi	s0, zero, 2
80000f94: 93 0c 20 00  	addi	s9, zero, 2
80000f98: 93 05 20 00  	addi	a1, zero, 2
80000f9c: 13 06 20 00  	addi	a2, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000fa0: 33 b5 f5 02  	mulhu	a0, a1, a5
80000fa4: 13 55 25 00  	srli	a0, a0, 2
80000fa8: 33 05 95 02  	mul	a0, a0, s1
80000fac: 33 85 a5 40  	sub	a0, a1, a0
80000fb0: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000fb4: 33 35 f6 02  	mulhu	a0, a2, a5
80000fb8: 13 55 25 00  	srli	a0, a0, 2
80000fbc: 33 05 95 02  	mul	a0, a0, s1
80000fc0: 33 05 a6 40  	sub	a0, a2, a0
80000fc4: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000fc8: 33 35 fe 02  	mulhu	a0, t3, a5
80000fcc: 13 55 25 00  	srli	a0, a0, 2
80000fd0: 33 05 95 02  	mul	a0, a0, s1
80000fd4: 33 85 ac 40  	sub	a0, s9, a0
80000fd8: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000fdc: 33 35 f7 02  	mulhu	a0, a4, a5
80000fe0: 13 55 25 00  	srli	a0, a0, 2
80000fe4: 33 05 95 02  	mul	a0, a0, s1
80000fe8: 33 05 a7 40  	sub	a0, a4, a0
80000fec: d3 03 05 d2  	fcvt.d.w	ft7, a0
80000ff0: 33 b5 fd 02  	mulhu	a0, s11, a5
80000ff4: 13 55 25 00  	srli	a0, a0, 2
80000ff8: 33 05 95 02  	mul	a0, a0, s1
80000ffc: 33 85 ad 40  	sub	a0, s11, a0
80001000: 53 05 05 d2  	fcvt.d.w	fa0, a0
80001004: 33 b5 f3 02  	mulhu	a0, t2, a5
80001008: 13 55 25 00  	srli	a0, a0, 2
8000100c: 33 05 95 02  	mul	a0, a0, s1
80001010: 33 05 a9 40  	sub	a0, s2, a0
80001014: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001018: 33 b5 fb 02  	mulhu	a0, s7, a5
8000101c: 13 55 25 00  	srli	a0, a0, 2
80001020: 33 05 95 02  	mul	a0, a0, s1
80001024: 33 85 ab 40  	sub	a0, s7, a0
80001028: 53 06 05 d2  	fcvt.d.w	fa2, a0
8000102c: 33 b5 fa 02  	mulhu	a0, s5, a5
80001030: 13 55 25 00  	srli	a0, a0, 2
80001034: 33 05 95 02  	mul	a0, a0, s1
80001038: 33 85 aa 40  	sub	a0, s5, a0
8000103c: d3 06 05 d2  	fcvt.d.w	fa3, a0
80001040: 33 35 f3 02  	mulhu	a0, t1, a5
80001044: 13 55 25 00  	srli	a0, a0, 2
80001048: 33 05 95 02  	mul	a0, a0, s1
8000104c: 33 85 ae 40  	sub	a0, t4, a0
80001050: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001054: 33 35 ff 02  	mulhu	a0, t5, a5
80001058: 13 55 25 00  	srli	a0, a0, 2
8000105c: 33 05 95 02  	mul	a0, a0, s1
80001060: 33 05 af 40  	sub	a0, t5, a0
80001064: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001068: 33 b5 ff 02  	mulhu	a0, t6, a5
8000106c: 13 55 25 00  	srli	a0, a0, 2
80001070: 33 05 95 02  	mul	a0, a0, s1
80001074: 33 85 af 40  	sub	a0, t6, a0
80001078: 53 08 05 d2  	fcvt.d.w	fa6, a0
8000107c: 33 35 fa 02  	mulhu	a0, s4, a5
80001080: 13 55 25 00  	srli	a0, a0, 2
80001084: 33 05 95 02  	mul	a0, a0, s1
80001088: 33 05 aa 40  	sub	a0, s4, a0
8000108c: d3 08 05 d2  	fcvt.d.w	fa7, a0
80001090: 33 35 fb 02  	mulhu	a0, s6, a5
80001094: 13 55 25 00  	srli	a0, a0, 2
80001098: 33 05 95 02  	mul	a0, a0, s1
8000109c: 33 05 ab 40  	sub	a0, s6, a0
800010a0: 53 0e 05 d2  	fcvt.d.w	ft8, a0
800010a4: 33 35 fc 02  	mulhu	a0, s8, a5
800010a8: 13 55 25 00  	srli	a0, a0, 2
800010ac: 33 05 95 02  	mul	a0, a0, s1
800010b0: 33 05 ac 40  	sub	a0, s8, a0
800010b4: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800010b8: 33 35 fd 02  	mulhu	a0, s10, a5
800010bc: 13 55 25 00  	srli	a0, a0, 2
800010c0: 33 05 95 02  	mul	a0, a0, s1
800010c4: 33 05 ad 40  	sub	a0, s10, a0
800010c8: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800010cc: 33 b5 f9 02  	mulhu	a0, s3, a5
800010d0: 13 55 25 00  	srli	a0, a0, 2
800010d4: 33 05 95 02  	mul	a0, a0, s1
800010d8: 33 85 a9 40  	sub	a0, s3, a0
800010dc: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800010e0: 33 35 f4 02  	mulhu	a0, s0, a5
800010e4: 13 55 25 00  	srli	a0, a0, 2
800010e8: 33 05 95 02  	mul	a0, a0, s1
800010ec: 33 05 a4 40  	sub	a0, s0, a0
800010f0: 53 04 05 d2  	fcvt.d.w	fs0, a0
800010f4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800010f8: 27 bc 46 fa  	fsd	ft4, -72(a3)
800010fc: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001100: 27 b0 46 fc  	fsd	ft4, -64(a3)
80001104: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001108: 27 b4 46 fc  	fsd	ft4, -56(a3)
8000110c: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001110: 27 b8 46 fc  	fsd	ft4, -48(a3)
80001114: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001118: 27 bc 46 fc  	fsd	ft4, -40(a3)
8000111c: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001120: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001124: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001128: 27 b4 46 fe  	fsd	ft4, -24(a3)
8000112c: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001130: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001134: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001138: 27 bc 46 fe  	fsd	ft4, -8(a3)
8000113c: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001140: 27 b0 46 00  	fsd	ft4, 0(a3)
80001144: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001148: 27 b4 46 00  	fsd	ft4, 8(a3)
8000114c: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001150: 27 b8 46 00  	fsd	ft4, 16(a3)
80001154: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001158: 27 bc 46 00  	fsd	ft4, 24(a3)
8000115c: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001160: 27 b0 46 02  	fsd	ft4, 32(a3)
80001164: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001168: 27 b4 46 02  	fsd	ft4, 40(a3)
8000116c: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001170: 27 b8 46 02  	fsd	ft4, 48(a3)
80001174: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001178: 27 bc 46 02  	fsd	ft4, 56(a3)
8000117c: 23 a2 06 05  	sw	a6, 68(a3)
80001180: 23 a0 56 04  	sw	t0, 64(a3)
;   for (i = 0; i < nk; i++)
80001184: 13 06 26 00  	addi	a2, a2, 2
80001188: 93 85 15 00  	addi	a1, a1, 1
8000118c: 93 8c 3c 00  	addi	s9, s9, 3
80001190: 13 0e 3e 00  	addi	t3, t3, 3
80001194: 13 04 14 01  	addi	s0, s0, 17
80001198: 13 07 47 00  	addi	a4, a4, 4
8000119c: 93 89 09 01  	addi	s3, s3, 16
800011a0: 93 8d 5d 00  	addi	s11, s11, 5
800011a4: 13 0d fd 00  	addi	s10, s10, 15
800011a8: 13 09 69 00  	addi	s2, s2, 6
800011ac: 93 83 63 00  	addi	t2, t2, 6
800011b0: 13 0c ec 00  	addi	s8, s8, 14
800011b4: 93 8b 7b 00  	addi	s7, s7, 7
800011b8: 13 0b db 00  	addi	s6, s6, 13
800011bc: 93 8a 8a 00  	addi	s5, s5, 8
800011c0: 13 0a ca 00  	addi	s4, s4, 12
800011c4: 93 8e 9e 00  	addi	t4, t4, 9
800011c8: 13 03 93 00  	addi	t1, t1, 9
800011cc: 93 8f bf 00  	addi	t6, t6, 11
800011d0: 93 86 06 09  	addi	a3, a3, 144
800011d4: 13 0f af 00  	addi	t5, t5, 10
800011d8: e3 14 16 dd  	bne	a2, a7, 0x80000fa0 <.LBB0_95+0x304>
;   for (i = 0; i < nj; i++)
800011dc: 13 d5 40 01  	srli	a0, ra, 20
800011e0: 33 35 a0 00  	snez	a0, a0
800011e4: b7 f5 11 00  	lui	a1, 287
800011e8: 93 85 95 28  	addi	a1, a1, 649
800011ec: b3 b5 b0 00  	sltu	a1, ra, a1
800011f0: 33 75 b5 00  	and	a0, a0, a1

800011f4 <.LBB0_96>:
800011f4: 17 4f 00 00  	auipc	t5, 4
800011f8: 13 0f cf 33  	addi	t5, t5, 828
800011fc: 93 89 00 00  	mv	s3, ra
80001200: 23 26 a1 00  	sw	a0, 12(sp)
80001204: 23 20 11 02  	sw	ra, 32(sp)
80001208: 63 04 05 3a  	beqz	a0, 0x800015b0 <.LBB0_96+0x3bc>
8000120c: 13 03 00 00  	mv	t1, zero
80001210: 13 0a 00 00  	mv	s4, zero
80001214: 93 0a 00 00  	mv	s5, zero
80001218: 13 0b 00 00  	mv	s6, zero
8000121c: 93 0b 00 00  	mv	s7, zero
80001220: 13 0c 00 00  	mv	s8, zero
80001224: 93 0c 00 00  	mv	s9, zero
80001228: 13 0d 00 00  	mv	s10, zero
8000122c: 93 0d 00 00  	mv	s11, zero
80001230: 93 00 00 00  	mv	ra, zero
80001234: 93 0f 00 00  	mv	t6, zero
80001238: 13 06 00 00  	mv	a2, zero
8000123c: 13 07 00 00  	mv	a4, zero
80001240: 93 05 00 00  	mv	a1, zero
80001244: 93 06 00 00  	mv	a3, zero
80001248: 93 07 00 00  	mv	a5, zero
8000124c: 13 04 00 00  	mv	s0, zero
80001250: 93 04 00 00  	mv	s1, zero
80001254: 13 08 00 00  	mv	a6, zero
80001258: 93 08 00 00  	mv	a7, zero
8000125c: 93 02 00 00  	mv	t0, zero
80001260: 13 09 00 00  	mv	s2, zero
80001264: 93 03 00 00  	mv	t2, zero
80001268: 13 0e 80 00  	addi	t3, zero, 8
8000126c: 93 0e 70 01  	addi	t4, zero, 23
;   for (i = 0; i < nj; i++)
80001270: 13 05 00 04  	addi	a0, zero, 64
80001274: ab a0 ae 00  	scfgw	t4, a0
80001278: 13 05 00 0c  	addi	a0, zero, 192
8000127c: ab 20 ae 00  	scfgw	t3, a0
80001280: 93 0e 10 01  	addi	t4, zero, 17
80001284: 13 05 00 06  	addi	a0, zero, 96
80001288: ab a0 ae 00  	scfgw	t4, a0
8000128c: 13 05 00 0e  	addi	a0, zero, 224
80001290: ab 20 ae 00  	scfgw	t3, a0
80001294: 13 05 00 02  	addi	a0, zero, 32
80001298: ab 20 a0 00  	scfgw	zero, a0
8000129c: 2b a0 09 3a  	scfgwi	s3, 928
800012a0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800012a4: 37 95 2e ba  	lui	a0, 762601
800012a8: 13 0e 35 ba  	addi	t3, a0, -1117
800012ac: 93 09 a0 fe  	addi	s3, zero, -22
800012b0: 87 31 0f 00  	fld	ft3, 0(t5)
800012b4: 93 0e 60 01  	addi	t4, zero, 22
800012b8: 53 02 00 d2  	fcvt.d.w	ft4, zero
800012bc: 13 0f 40 1d  	addi	t5, zero, 468
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
800012c0: 33 35 c3 03  	mulhu	a0, t1, t3
800012c4: 13 55 45 00  	srli	a0, a0, 4
800012c8: 33 05 d5 03  	mul	a0, a0, t4
800012cc: 33 05 a3 40  	sub	a0, t1, a0
800012d0: d3 02 05 d2  	fcvt.d.w	ft5, a0
800012d4: 33 35 ca 03  	mulhu	a0, s4, t3
800012d8: 13 55 45 00  	srli	a0, a0, 4
800012dc: 33 05 d5 03  	mul	a0, a0, t4
800012e0: 33 05 aa 40  	sub	a0, s4, a0
800012e4: 53 03 05 d2  	fcvt.d.w	ft6, a0
800012e8: 33 b5 ca 03  	mulhu	a0, s5, t3
800012ec: 13 55 45 00  	srli	a0, a0, 4
800012f0: 33 05 d5 03  	mul	a0, a0, t4
800012f4: 33 85 aa 40  	sub	a0, s5, a0
800012f8: d3 03 05 d2  	fcvt.d.w	ft7, a0
800012fc: 33 35 cb 03  	mulhu	a0, s6, t3
80001300: 13 55 45 00  	srli	a0, a0, 4
80001304: 33 05 d5 03  	mul	a0, a0, t4
80001308: 33 05 ab 40  	sub	a0, s6, a0
8000130c: 53 05 05 d2  	fcvt.d.w	fa0, a0
80001310: 33 b5 cb 03  	mulhu	a0, s7, t3
80001314: 13 55 45 00  	srli	a0, a0, 4
80001318: 33 05 d5 03  	mul	a0, a0, t4
8000131c: 33 85 ab 40  	sub	a0, s7, a0
80001320: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001324: 33 35 cc 03  	mulhu	a0, s8, t3
80001328: 13 55 45 00  	srli	a0, a0, 4
8000132c: 33 05 d5 03  	mul	a0, a0, t4
80001330: 33 05 ac 40  	sub	a0, s8, a0
80001334: 53 06 05 d2  	fcvt.d.w	fa2, a0
80001338: 33 b5 cc 03  	mulhu	a0, s9, t3
8000133c: 13 55 45 00  	srli	a0, a0, 4
80001340: 33 05 d5 03  	mul	a0, a0, t4
80001344: 33 85 ac 40  	sub	a0, s9, a0
80001348: d3 06 05 d2  	fcvt.d.w	fa3, a0
8000134c: 33 35 cd 03  	mulhu	a0, s10, t3
80001350: 13 55 45 00  	srli	a0, a0, 4
80001354: 33 05 d5 03  	mul	a0, a0, t4
80001358: 33 05 ad 40  	sub	a0, s10, a0
8000135c: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001360: 33 b5 cd 03  	mulhu	a0, s11, t3
80001364: 13 55 45 00  	srli	a0, a0, 4
80001368: 33 05 d5 03  	mul	a0, a0, t4
8000136c: 33 85 ad 40  	sub	a0, s11, a0
80001370: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001374: 33 b5 c0 03  	mulhu	a0, ra, t3
80001378: 13 55 45 00  	srli	a0, a0, 4
8000137c: 33 05 d5 03  	mul	a0, a0, t4
80001380: 33 85 a0 40  	sub	a0, ra, a0
80001384: 53 08 05 d2  	fcvt.d.w	fa6, a0
80001388: 33 b5 cf 03  	mulhu	a0, t6, t3
8000138c: 13 55 45 00  	srli	a0, a0, 4
80001390: 33 05 d5 03  	mul	a0, a0, t4
80001394: 33 85 af 40  	sub	a0, t6, a0
80001398: d3 08 05 d2  	fcvt.d.w	fa7, a0
8000139c: 33 35 c6 03  	mulhu	a0, a2, t3
800013a0: 13 55 45 00  	srli	a0, a0, 4
800013a4: 33 05 d5 03  	mul	a0, a0, t4
800013a8: 33 05 a6 40  	sub	a0, a2, a0
800013ac: 53 0e 05 d2  	fcvt.d.w	ft8, a0
800013b0: 33 35 c7 03  	mulhu	a0, a4, t3
800013b4: 13 55 45 00  	srli	a0, a0, 4
800013b8: 33 05 d5 03  	mul	a0, a0, t4
800013bc: 33 05 a7 40  	sub	a0, a4, a0
800013c0: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800013c4: 33 b5 c5 03  	mulhu	a0, a1, t3
800013c8: 13 55 45 00  	srli	a0, a0, 4
800013cc: 33 05 d5 03  	mul	a0, a0, t4
800013d0: 33 85 a5 40  	sub	a0, a1, a0
800013d4: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800013d8: 33 b5 c6 03  	mulhu	a0, a3, t3
800013dc: 13 55 45 00  	srli	a0, a0, 4
800013e0: 33 05 d5 03  	mul	a0, a0, t4
800013e4: 33 85 a6 40  	sub	a0, a3, a0
800013e8: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800013ec: 33 b5 c7 03  	mulhu	a0, a5, t3
800013f0: 13 55 45 00  	srli	a0, a0, 4
800013f4: 33 05 d5 03  	mul	a0, a0, t4
800013f8: 33 85 a7 40  	sub	a0, a5, a0
800013fc: 53 04 05 d2  	fcvt.d.w	fs0, a0
80001400: 33 35 c4 03  	mulhu	a0, s0, t3
80001404: 13 55 45 00  	srli	a0, a0, 4
80001408: 33 05 d5 03  	mul	a0, a0, t4
8000140c: 33 05 a4 40  	sub	a0, s0, a0
80001410: d3 04 05 d2  	fcvt.d.w	fs1, a0
80001414: 33 b5 c4 03  	mulhu	a0, s1, t3
80001418: 13 55 45 00  	srli	a0, a0, 4
8000141c: 33 05 d5 03  	mul	a0, a0, t4
80001420: 33 85 a4 40  	sub	a0, s1, a0
80001424: 53 09 05 d2  	fcvt.d.w	fs2, a0
80001428: 33 35 c8 03  	mulhu	a0, a6, t3
8000142c: 13 55 45 00  	srli	a0, a0, 4
80001430: 33 05 d5 03  	mul	a0, a0, t4
80001434: 33 05 a8 40  	sub	a0, a6, a0
80001438: d3 09 05 d2  	fcvt.d.w	fs3, a0
8000143c: 33 b5 c8 03  	mulhu	a0, a7, t3
80001440: 13 55 45 00  	srli	a0, a0, 4
80001444: 33 05 d5 03  	mul	a0, a0, t4
80001448: 33 85 a8 40  	sub	a0, a7, a0
8000144c: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80001450: 33 b5 c2 03  	mulhu	a0, t0, t3
80001454: 13 55 45 00  	srli	a0, a0, 4
80001458: 33 05 d5 03  	mul	a0, a0, t4
8000145c: 33 85 a2 40  	sub	a0, t0, a0
80001460: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80001464: 33 35 c9 03  	mulhu	a0, s2, t3
80001468: 13 55 45 00  	srli	a0, a0, 4
8000146c: 33 05 d5 03  	mul	a0, a0, t4
80001470: 33 05 a9 40  	sub	a0, s2, a0
80001474: 53 0b 05 d2  	fcvt.d.w	fs6, a0
80001478: 33 b5 c3 03  	mulhu	a0, t2, t3
8000147c: 13 55 45 00  	srli	a0, a0, 4
80001480: 33 05 35 03  	mul	a0, a0, s3
80001484: 33 85 a3 00  	add	a0, t2, a0
80001488: d3 0b 05 d2  	fcvt.d.w	fs7, a0
8000148c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001490: 53 80 52 22  	fmv.d	ft0, ft5
80001494: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001498: 53 80 52 22  	fmv.d	ft0, ft5
8000149c: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
800014a0: 53 80 52 22  	fmv.d	ft0, ft5
800014a4: d3 72 35 12  	fmul.d	ft5, fa0, ft3
800014a8: 53 80 52 22  	fmv.d	ft0, ft5
800014ac: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
800014b0: 53 80 52 22  	fmv.d	ft0, ft5
800014b4: d3 72 36 12  	fmul.d	ft5, fa2, ft3
800014b8: 53 80 52 22  	fmv.d	ft0, ft5
800014bc: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
800014c0: 53 80 52 22  	fmv.d	ft0, ft5
800014c4: d3 72 37 12  	fmul.d	ft5, fa4, ft3
800014c8: 53 80 52 22  	fmv.d	ft0, ft5
800014cc: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
800014d0: 53 80 52 22  	fmv.d	ft0, ft5
800014d4: d3 72 38 12  	fmul.d	ft5, fa6, ft3
800014d8: 53 80 52 22  	fmv.d	ft0, ft5
800014dc: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
800014e0: 53 80 52 22  	fmv.d	ft0, ft5
800014e4: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
800014e8: 53 80 52 22  	fmv.d	ft0, ft5
800014ec: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
800014f0: 53 80 52 22  	fmv.d	ft0, ft5
800014f4: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
800014f8: 53 80 52 22  	fmv.d	ft0, ft5
800014fc: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001500: 53 80 52 22  	fmv.d	ft0, ft5
80001504: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001508: 53 80 52 22  	fmv.d	ft0, ft5
8000150c: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001510: 53 80 52 22  	fmv.d	ft0, ft5
80001514: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001518: 53 80 52 22  	fmv.d	ft0, ft5
8000151c: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001520: 53 80 52 22  	fmv.d	ft0, ft5
80001524: 53 00 42 22  	fmv.d	ft0, ft4
80001528: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
8000152c: 53 80 52 22  	fmv.d	ft0, ft5
80001530: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001534: 53 80 52 22  	fmv.d	ft0, ft5
80001538: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
8000153c: 53 80 52 22  	fmv.d	ft0, ft5
80001540: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80001544: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < nj; i++)
80001548: 93 83 a3 01  	addi	t2, t2, 26
8000154c: 13 09 99 01  	addi	s2, s2, 25
80001550: 93 82 82 01  	addi	t0, t0, 24
80001554: 93 88 78 01  	addi	a7, a7, 23
80001558: 13 08 58 01  	addi	a6, a6, 21
8000155c: 93 84 44 01  	addi	s1, s1, 20
80001560: 13 04 34 01  	addi	s0, s0, 19
80001564: 93 87 27 01  	addi	a5, a5, 18
80001568: 93 86 16 01  	addi	a3, a3, 17
8000156c: 93 85 05 01  	addi	a1, a1, 16
80001570: 13 07 f7 00  	addi	a4, a4, 15
80001574: 13 06 e6 00  	addi	a2, a2, 14
80001578: 93 8f df 00  	addi	t6, t6, 13
8000157c: 93 80 c0 00  	addi	ra, ra, 12
80001580: 93 8d bd 00  	addi	s11, s11, 11
80001584: 13 0d ad 00  	addi	s10, s10, 10
80001588: 93 8c 9c 00  	addi	s9, s9, 9
8000158c: 13 0c 8c 00  	addi	s8, s8, 8
80001590: 93 8b 7b 00  	addi	s7, s7, 7
80001594: 13 0b 6b 00  	addi	s6, s6, 6
80001598: 93 8a 5a 00  	addi	s5, s5, 5
8000159c: 13 0a 4a 00  	addi	s4, s4, 4
800015a0: 13 03 33 00  	addi	t1, t1, 3
800015a4: e3 9e e3 d1  	bne	t2, t5, 0x800012c0 <.LBB0_96+0xcc>
800015a8: 73 f5 00 7c  	csrrci	a0, 1984, 1
800015ac: 6f 00 c0 36  	j	0x80001918 <.LBB0_96+0x724>
800015b0: 13 08 00 00  	mv	a6, zero
800015b4: 93 08 00 00  	mv	a7, zero
800015b8: 93 02 00 00  	mv	t0, zero
800015bc: 13 03 00 00  	mv	t1, zero
800015c0: 93 03 00 00  	mv	t2, zero
800015c4: 13 09 00 00  	mv	s2, zero
800015c8: 13 0a 00 00  	mv	s4, zero
800015cc: 93 0a 00 00  	mv	s5, zero
800015d0: 13 0b 00 00  	mv	s6, zero
800015d4: 93 0b 00 00  	mv	s7, zero
800015d8: 13 0c 00 00  	mv	s8, zero
800015dc: 13 0e 00 00  	mv	t3, zero
800015e0: 93 0e 00 00  	mv	t4, zero
800015e4: 93 0c 00 00  	mv	s9, zero
800015e8: 13 0d 00 00  	mv	s10, zero
800015ec: 93 0d 00 00  	mv	s11, zero
800015f0: 93 00 00 00  	mv	ra, zero
800015f4: 93 0f 00 00  	mv	t6, zero
800015f8: 13 06 00 00  	mv	a2, zero
800015fc: 93 06 00 00  	mv	a3, zero
80001600: 13 07 00 00  	mv	a4, zero
80001604: 93 07 00 00  	mv	a5, zero
80001608: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nj; i++)
8000160c: 13 84 09 06  	addi	s0, s3, 96
80001610: 37 95 2e ba  	lui	a0, 762601
80001614: 13 05 35 ba  	addi	a0, a0, -1117
80001618: 87 31 0f 00  	fld	ft3, 0(t5)
8000161c: 13 0f 60 01  	addi	t5, zero, 22
80001620: 93 09 a0 fe  	addi	s3, zero, -22
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80001624: b3 b5 a7 02  	mulhu	a1, a5, a0
80001628: 93 d5 45 00  	srli	a1, a1, 4
8000162c: b3 85 e5 03  	mul	a1, a1, t5
80001630: b3 85 b7 40  	sub	a1, a5, a1
80001634: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001638: b3 35 a7 02  	mulhu	a1, a4, a0
8000163c: 93 d5 45 00  	srli	a1, a1, 4
80001640: b3 85 e5 03  	mul	a1, a1, t5
80001644: b3 05 b7 40  	sub	a1, a4, a1
80001648: d3 82 05 d2  	fcvt.d.w	ft5, a1
8000164c: b3 35 a6 02  	mulhu	a1, a2, a0
80001650: 93 d5 45 00  	srli	a1, a1, 4
80001654: b3 85 e5 03  	mul	a1, a1, t5
80001658: b3 05 b6 40  	sub	a1, a2, a1
8000165c: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001660: b3 b5 a0 02  	mulhu	a1, ra, a0
80001664: 93 d5 45 00  	srli	a1, a1, 4
80001668: b3 85 e5 03  	mul	a1, a1, t5
8000166c: b3 85 b0 40  	sub	a1, ra, a1
80001670: d3 83 05 d2  	fcvt.d.w	ft7, a1
80001674: b3 35 ad 02  	mulhu	a1, s10, a0
80001678: 93 d5 45 00  	srli	a1, a1, 4
8000167c: b3 85 e5 03  	mul	a1, a1, t5
80001680: b3 05 bd 40  	sub	a1, s10, a1
80001684: 53 85 05 d2  	fcvt.d.w	fa0, a1
80001688: b3 b5 ac 02  	mulhu	a1, s9, a0
8000168c: 93 d5 45 00  	srli	a1, a1, 4
80001690: b3 85 e5 03  	mul	a1, a1, t5
80001694: b3 85 bc 40  	sub	a1, s9, a1
80001698: d3 85 05 d2  	fcvt.d.w	fa1, a1
8000169c: b3 35 ae 02  	mulhu	a1, t3, a0
800016a0: 93 d5 45 00  	srli	a1, a1, 4
800016a4: b3 85 e5 03  	mul	a1, a1, t5
800016a8: b3 05 be 40  	sub	a1, t3, a1
800016ac: 53 86 05 d2  	fcvt.d.w	fa2, a1
800016b0: b3 b5 ab 02  	mulhu	a1, s7, a0
800016b4: 93 d5 45 00  	srli	a1, a1, 4
800016b8: b3 85 e5 03  	mul	a1, a1, t5
800016bc: b3 85 bb 40  	sub	a1, s7, a1
800016c0: d3 86 05 d2  	fcvt.d.w	fa3, a1
800016c4: b3 b5 aa 02  	mulhu	a1, s5, a0
800016c8: 93 d5 45 00  	srli	a1, a1, 4
800016cc: b3 85 e5 03  	mul	a1, a1, t5
800016d0: b3 85 ba 40  	sub	a1, s5, a1
800016d4: 53 87 05 d2  	fcvt.d.w	fa4, a1
800016d8: b3 35 a9 02  	mulhu	a1, s2, a0
800016dc: 93 d5 45 00  	srli	a1, a1, 4
800016e0: b3 85 e5 03  	mul	a1, a1, t5
800016e4: b3 05 b9 40  	sub	a1, s2, a1
800016e8: d3 87 05 d2  	fcvt.d.w	fa5, a1
800016ec: b3 35 a3 02  	mulhu	a1, t1, a0
800016f0: 93 d5 45 00  	srli	a1, a1, 4
800016f4: b3 85 e5 03  	mul	a1, a1, t5
800016f8: b3 05 b3 40  	sub	a1, t1, a1
800016fc: 53 88 05 d2  	fcvt.d.w	fa6, a1
80001700: b3 35 a8 02  	mulhu	a1, a6, a0
80001704: 93 d5 45 00  	srli	a1, a1, 4
80001708: b3 85 e5 03  	mul	a1, a1, t5
8000170c: b3 05 b8 40  	sub	a1, a6, a1
80001710: d3 88 05 d2  	fcvt.d.w	fa7, a1
80001714: b3 b5 a8 02  	mulhu	a1, a7, a0
80001718: 93 d5 45 00  	srli	a1, a1, 4
8000171c: b3 85 e5 03  	mul	a1, a1, t5
80001720: b3 85 b8 40  	sub	a1, a7, a1
80001724: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80001728: b3 b5 a2 02  	mulhu	a1, t0, a0
8000172c: 93 d5 45 00  	srli	a1, a1, 4
80001730: b3 85 e5 03  	mul	a1, a1, t5
80001734: b3 85 b2 40  	sub	a1, t0, a1
80001738: d3 8e 05 d2  	fcvt.d.w	ft9, a1
8000173c: b3 b5 a3 02  	mulhu	a1, t2, a0
80001740: 93 d5 45 00  	srli	a1, a1, 4
80001744: b3 85 e5 03  	mul	a1, a1, t5
80001748: b3 85 b3 40  	sub	a1, t2, a1
8000174c: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001750: b3 35 aa 02  	mulhu	a1, s4, a0
80001754: 93 d5 45 00  	srli	a1, a1, 4
80001758: b3 85 e5 03  	mul	a1, a1, t5
8000175c: b3 05 ba 40  	sub	a1, s4, a1
80001760: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001764: b3 35 ab 02  	mulhu	a1, s6, a0
80001768: 93 d5 45 00  	srli	a1, a1, 4
8000176c: b3 85 e5 03  	mul	a1, a1, t5
80001770: b3 05 bb 40  	sub	a1, s6, a1
80001774: 53 84 05 d2  	fcvt.d.w	fs0, a1
80001778: b3 35 ac 02  	mulhu	a1, s8, a0
8000177c: 93 d5 45 00  	srli	a1, a1, 4
80001780: b3 85 e5 03  	mul	a1, a1, t5
80001784: b3 05 bc 40  	sub	a1, s8, a1
80001788: d3 84 05 d2  	fcvt.d.w	fs1, a1
8000178c: b3 b5 ae 02  	mulhu	a1, t4, a0
80001790: 93 d5 45 00  	srli	a1, a1, 4
80001794: b3 85 e5 03  	mul	a1, a1, t5
80001798: b3 85 be 40  	sub	a1, t4, a1
8000179c: 53 89 05 d2  	fcvt.d.w	fs2, a1
800017a0: b3 b5 ad 02  	mulhu	a1, s11, a0
800017a4: 93 d5 45 00  	srli	a1, a1, 4
800017a8: b3 85 e5 03  	mul	a1, a1, t5
800017ac: b3 85 bd 40  	sub	a1, s11, a1
800017b0: d3 89 05 d2  	fcvt.d.w	fs3, a1
800017b4: b3 b5 af 02  	mulhu	a1, t6, a0
800017b8: 93 d5 45 00  	srli	a1, a1, 4
800017bc: b3 85 e5 03  	mul	a1, a1, t5
800017c0: b3 85 bf 40  	sub	a1, t6, a1
800017c4: 53 8a 05 d2  	fcvt.d.w	fs4, a1
800017c8: b3 b5 a6 02  	mulhu	a1, a3, a0
800017cc: 93 d5 45 00  	srli	a1, a1, 4
800017d0: b3 85 e5 03  	mul	a1, a1, t5
800017d4: b3 85 b6 40  	sub	a1, a3, a1
800017d8: d3 8a 05 d2  	fcvt.d.w	fs5, a1
800017dc: b3 b5 a4 02  	mulhu	a1, s1, a0
800017e0: 93 d5 45 00  	srli	a1, a1, 4
800017e4: b3 85 35 03  	mul	a1, a1, s3
800017e8: b3 85 b4 00  	add	a1, s1, a1
800017ec: 53 8b 05 d2  	fcvt.d.w	fs6, a1
800017f0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800017f4: 27 30 44 fa  	fsd	ft4, -96(s0)
800017f8: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800017fc: 27 34 44 fa  	fsd	ft4, -88(s0)
80001800: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001804: 27 38 44 fa  	fsd	ft4, -80(s0)
80001808: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
8000180c: 27 3c 44 fa  	fsd	ft4, -72(s0)
80001810: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001814: 27 30 44 fc  	fsd	ft4, -64(s0)
80001818: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
8000181c: 27 34 44 fc  	fsd	ft4, -56(s0)
80001820: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001824: 27 38 44 fc  	fsd	ft4, -48(s0)
80001828: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
8000182c: 27 3c 44 fc  	fsd	ft4, -40(s0)
80001830: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001834: 27 30 44 fe  	fsd	ft4, -32(s0)
80001838: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
8000183c: 27 34 44 fe  	fsd	ft4, -24(s0)
80001840: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001844: 27 38 44 fe  	fsd	ft4, -16(s0)
80001848: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
8000184c: 27 3c 44 fe  	fsd	ft4, -8(s0)
80001850: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001854: 27 30 44 00  	fsd	ft4, 0(s0)
80001858: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
8000185c: 27 34 44 00  	fsd	ft4, 8(s0)
80001860: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001864: 27 38 44 00  	fsd	ft4, 16(s0)
80001868: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000186c: 27 3c 44 00  	fsd	ft4, 24(s0)
80001870: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001874: 27 30 44 02  	fsd	ft4, 32(s0)
80001878: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
8000187c: 27 34 44 02  	fsd	ft4, 40(s0)
80001880: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001884: 27 38 44 02  	fsd	ft4, 48(s0)
80001888: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
8000188c: 27 30 44 04  	fsd	ft4, 64(s0)
80001890: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001894: 27 34 44 04  	fsd	ft4, 72(s0)
80001898: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
8000189c: 27 38 44 04  	fsd	ft4, 80(s0)
800018a0: 23 2e 04 02  	sw	zero, 60(s0)
800018a4: 23 2c 04 02  	sw	zero, 56(s0)
800018a8: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
800018ac: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < nj; i++)
800018b0: 93 84 a4 01  	addi	s1, s1, 26
800018b4: 93 87 37 00  	addi	a5, a5, 3
800018b8: 13 07 47 00  	addi	a4, a4, 4
800018bc: 93 86 96 01  	addi	a3, a3, 25
800018c0: 13 06 56 00  	addi	a2, a2, 5
800018c4: 93 8f 8f 01  	addi	t6, t6, 24
800018c8: 93 80 60 00  	addi	ra, ra, 6
800018cc: 93 8d 7d 01  	addi	s11, s11, 23
800018d0: 13 0d 7d 00  	addi	s10, s10, 7
800018d4: 93 8c 8c 00  	addi	s9, s9, 8
800018d8: 93 8e 5e 01  	addi	t4, t4, 21
800018dc: 13 0e 9e 00  	addi	t3, t3, 9
800018e0: 13 0c 4c 01  	addi	s8, s8, 20
800018e4: 93 8b ab 00  	addi	s7, s7, 10
800018e8: 13 0b 3b 01  	addi	s6, s6, 19
800018ec: 93 8a ba 00  	addi	s5, s5, 11
800018f0: 13 0a 2a 01  	addi	s4, s4, 18
800018f4: 13 09 c9 00  	addi	s2, s2, 12
800018f8: 93 83 13 01  	addi	t2, t2, 17
800018fc: 13 03 d3 00  	addi	t1, t1, 13
80001900: 93 82 02 01  	addi	t0, t0, 16
80001904: 13 04 04 0c  	addi	s0, s0, 192
80001908: 93 88 f8 00  	addi	a7, a7, 15
8000190c: 13 08 e8 00  	addi	a6, a6, 14
80001910: 93 05 40 1d  	addi	a1, zero, 468
80001914: e3 98 b4 d0  	bne	s1, a1, 0x80001624 <.LBB0_96+0x430>
80001918: 83 27 01 03  	lw	a5, 48(sp)
;   for (i = 0; i < nm; i++)
8000191c: 13 d5 47 01  	srli	a0, a5, 20
80001920: 33 35 a0 00  	snez	a0, a0
80001924: b7 f5 11 00  	lui	a1, 287
80001928: 93 85 95 f8  	addi	a1, a1, -119
8000192c: b3 b5 b7 00  	sltu	a1, a5, a1
80001930: b3 75 b5 00  	and	a1, a0, a1

80001934 <.LBB0_97>:
80001934: 17 45 00 00  	auipc	a0, 4
80001938: 13 05 45 c0  	addi	a0, a0, -1020
8000193c: 23 24 b1 00  	sw	a1, 8(sp)
80001940: 63 8e 05 36  	beqz	a1, 0x80001cbc <.LBB0_98+0x31c>
80001944: 93 08 00 00  	mv	a7, zero
80001948: 93 02 00 00  	mv	t0, zero
8000194c: 93 03 00 00  	mv	t2, zero
80001950: 93 05 80 00  	addi	a1, zero, 8
80001954: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < nm; i++)
80001958: 93 06 00 04  	addi	a3, zero, 64
8000195c: 13 07 00 0c  	addi	a4, zero, 192
80001960: ab 20 d6 00  	scfgw	a2, a3
80001964: ab a0 e5 00  	scfgw	a1, a4
80001968: 13 06 70 01  	addi	a2, zero, 23
8000196c: 93 06 00 06  	addi	a3, zero, 96
80001970: 13 07 00 0e  	addi	a4, zero, 224
80001974: ab 20 d6 00  	scfgw	a2, a3
80001978: ab a0 e5 00  	scfgw	a1, a4
8000197c: 93 05 00 02  	addi	a1, zero, 32
80001980: ab 20 b0 00  	scfgw	zero, a1
80001984: 2b a0 07 3a  	scfgwi	a5, 928
80001988: f3 e5 00 7c  	csrrsi	a1, 1984, 1
8000198c: 13 09 20 00  	addi	s2, zero, 2
80001990: b7 d5 cc cc  	lui	a1, 838861
80001994: 13 87 d5 cc  	addi	a4, a1, -819
80001998: 93 07 40 01  	addi	a5, zero, 20
8000199c: 87 31 05 00  	fld	ft3, 0(a0)

800019a0 <.LBB0_98>:
800019a0: 17 45 00 00  	auipc	a0, 4
800019a4: 13 05 05 ba  	addi	a0, a0, -1120
800019a8: 07 32 05 00  	fld	ft4, 0(a0)
800019ac: 93 09 20 03  	addi	s3, zero, 50
800019b0: 13 0e 20 00  	addi	t3, zero, 2
800019b4: 93 0e 20 00  	addi	t4, zero, 2
800019b8: 13 0a 20 00  	addi	s4, zero, 2
800019bc: 93 0a 20 00  	addi	s5, zero, 2
800019c0: 13 0b 20 00  	addi	s6, zero, 2
800019c4: 93 0b 20 00  	addi	s7, zero, 2
800019c8: 13 0f 20 00  	addi	t5, zero, 2
800019cc: 13 0c 20 00  	addi	s8, zero, 2
800019d0: 93 0c 20 00  	addi	s9, zero, 2
800019d4: 13 0d 20 00  	addi	s10, zero, 2
800019d8: 93 0d 20 00  	addi	s11, zero, 2
800019dc: 93 00 20 00  	addi	ra, zero, 2
800019e0: 93 0f 20 00  	addi	t6, zero, 2
800019e4: 93 04 20 00  	addi	s1, zero, 2
800019e8: 93 06 20 00  	addi	a3, zero, 2
800019ec: 13 05 20 00  	addi	a0, zero, 2
800019f0: 93 05 20 00  	addi	a1, zero, 2
800019f4: 13 06 20 00  	addi	a2, zero, 2
800019f8: 13 03 20 00  	addi	t1, zero, 2
800019fc: 13 08 20 00  	addi	a6, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001a00: 33 34 e8 02  	mulhu	s0, a6, a4
80001a04: 13 54 44 00  	srli	s0, s0, 4
80001a08: 33 04 f4 02  	mul	s0, s0, a5
80001a0c: 33 04 88 40  	sub	s0, a6, s0
80001a10: d3 02 04 d2  	fcvt.d.w	ft5, s0
80001a14: 33 34 e9 02  	mulhu	s0, s2, a4
80001a18: 13 54 44 00  	srli	s0, s0, 4
80001a1c: 33 04 f4 02  	mul	s0, s0, a5
80001a20: 33 04 89 40  	sub	s0, s2, s0
80001a24: 53 03 04 d2  	fcvt.d.w	ft6, s0
80001a28: 33 b4 e8 02  	mulhu	s0, a7, a4
80001a2c: 13 54 44 00  	srli	s0, s0, 4
80001a30: 33 04 f4 02  	mul	s0, s0, a5
80001a34: 33 04 8e 40  	sub	s0, t3, s0
80001a38: d3 03 04 d2  	fcvt.d.w	ft7, s0
80001a3c: 33 b4 e2 02  	mulhu	s0, t0, a4
80001a40: 13 54 44 00  	srli	s0, s0, 4
80001a44: 33 04 f4 02  	mul	s0, s0, a5
80001a48: 33 84 8e 40  	sub	s0, t4, s0
80001a4c: 53 05 04 d2  	fcvt.d.w	fa0, s0
80001a50: 33 34 ea 02  	mulhu	s0, s4, a4
80001a54: 13 54 44 00  	srli	s0, s0, 4
80001a58: 33 04 f4 02  	mul	s0, s0, a5
80001a5c: 33 04 8a 40  	sub	s0, s4, s0
80001a60: d3 05 04 d2  	fcvt.d.w	fa1, s0
80001a64: 33 b4 ea 02  	mulhu	s0, s5, a4
80001a68: 13 54 44 00  	srli	s0, s0, 4
80001a6c: 33 04 f4 02  	mul	s0, s0, a5
80001a70: 33 84 8a 40  	sub	s0, s5, s0
80001a74: 53 06 04 d2  	fcvt.d.w	fa2, s0
80001a78: 33 34 eb 02  	mulhu	s0, s6, a4
80001a7c: 13 54 44 00  	srli	s0, s0, 4
80001a80: 33 04 f4 02  	mul	s0, s0, a5
80001a84: 33 04 8b 40  	sub	s0, s6, s0
80001a88: d3 06 04 d2  	fcvt.d.w	fa3, s0
80001a8c: 33 b4 eb 02  	mulhu	s0, s7, a4
80001a90: 13 54 44 00  	srli	s0, s0, 4
80001a94: 33 04 f4 02  	mul	s0, s0, a5
80001a98: 33 84 8b 40  	sub	s0, s7, s0
80001a9c: 53 07 04 d2  	fcvt.d.w	fa4, s0
80001aa0: 33 b4 e3 02  	mulhu	s0, t2, a4
80001aa4: 13 54 44 00  	srli	s0, s0, 4
80001aa8: 33 04 f4 02  	mul	s0, s0, a5
80001aac: 33 04 8f 40  	sub	s0, t5, s0
80001ab0: d3 07 04 d2  	fcvt.d.w	fa5, s0
80001ab4: 33 34 ec 02  	mulhu	s0, s8, a4
80001ab8: 13 54 44 00  	srli	s0, s0, 4
80001abc: 33 04 f4 02  	mul	s0, s0, a5
80001ac0: 33 04 8c 40  	sub	s0, s8, s0
80001ac4: 53 08 04 d2  	fcvt.d.w	fa6, s0
80001ac8: 33 b4 ec 02  	mulhu	s0, s9, a4
80001acc: 13 54 44 00  	srli	s0, s0, 4
80001ad0: 33 04 f4 02  	mul	s0, s0, a5
80001ad4: 33 84 8c 40  	sub	s0, s9, s0
80001ad8: d3 08 04 d2  	fcvt.d.w	fa7, s0
80001adc: 33 34 ed 02  	mulhu	s0, s10, a4
80001ae0: 13 54 44 00  	srli	s0, s0, 4
80001ae4: 33 04 f4 02  	mul	s0, s0, a5
80001ae8: 33 04 8d 40  	sub	s0, s10, s0
80001aec: 53 0e 04 d2  	fcvt.d.w	ft8, s0
80001af0: 33 b4 ed 02  	mulhu	s0, s11, a4
80001af4: 13 54 44 00  	srli	s0, s0, 4
80001af8: 33 04 f4 02  	mul	s0, s0, a5
80001afc: 33 84 8d 40  	sub	s0, s11, s0
80001b00: d3 0e 04 d2  	fcvt.d.w	ft9, s0
80001b04: 33 b4 e0 02  	mulhu	s0, ra, a4
80001b08: 13 54 44 00  	srli	s0, s0, 4
80001b0c: 33 04 f4 02  	mul	s0, s0, a5
80001b10: 33 84 80 40  	sub	s0, ra, s0
80001b14: 53 0f 04 d2  	fcvt.d.w	ft10, s0
80001b18: 33 b4 ef 02  	mulhu	s0, t6, a4
80001b1c: 13 54 44 00  	srli	s0, s0, 4
80001b20: 33 04 f4 02  	mul	s0, s0, a5
80001b24: 33 84 8f 40  	sub	s0, t6, s0
80001b28: d3 0f 04 d2  	fcvt.d.w	ft11, s0
80001b2c: 33 b4 e4 02  	mulhu	s0, s1, a4
80001b30: 13 54 44 00  	srli	s0, s0, 4
80001b34: 33 04 f4 02  	mul	s0, s0, a5
80001b38: 33 84 84 40  	sub	s0, s1, s0
80001b3c: 53 04 04 d2  	fcvt.d.w	fs0, s0
80001b40: 33 b4 e6 02  	mulhu	s0, a3, a4
80001b44: 13 54 44 00  	srli	s0, s0, 4
80001b48: 33 04 f4 02  	mul	s0, s0, a5
80001b4c: 33 84 86 40  	sub	s0, a3, s0
80001b50: d3 04 04 d2  	fcvt.d.w	fs1, s0
80001b54: 33 34 e5 02  	mulhu	s0, a0, a4
80001b58: 13 54 44 00  	srli	s0, s0, 4
80001b5c: 33 04 f4 02  	mul	s0, s0, a5
80001b60: 33 04 85 40  	sub	s0, a0, s0
80001b64: 53 09 04 d2  	fcvt.d.w	fs2, s0
80001b68: 33 b4 e5 02  	mulhu	s0, a1, a4
80001b6c: 13 54 44 00  	srli	s0, s0, 4
80001b70: 33 04 f4 02  	mul	s0, s0, a5
80001b74: 33 84 85 40  	sub	s0, a1, s0
80001b78: d3 09 04 d2  	fcvt.d.w	fs3, s0
80001b7c: 33 34 e6 02  	mulhu	s0, a2, a4
80001b80: 13 54 44 00  	srli	s0, s0, 4
80001b84: 33 04 f4 02  	mul	s0, s0, a5
80001b88: 33 04 86 40  	sub	s0, a2, s0
80001b8c: 53 0a 04 d2  	fcvt.d.w	fs4, s0
80001b90: 33 34 e3 02  	mulhu	s0, t1, a4
80001b94: 13 54 44 00  	srli	s0, s0, 4
80001b98: 33 04 f4 02  	mul	s0, s0, a5
80001b9c: 33 04 83 40  	sub	s0, t1, s0
80001ba0: d3 0a 04 d2  	fcvt.d.w	fs5, s0
80001ba4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001ba8: 53 80 52 22  	fmv.d	ft0, ft5
80001bac: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001bb0: 53 80 52 22  	fmv.d	ft0, ft5
80001bb4: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001bb8: 53 80 52 22  	fmv.d	ft0, ft5
80001bbc: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001bc0: 53 80 52 22  	fmv.d	ft0, ft5
80001bc4: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001bc8: 53 80 52 22  	fmv.d	ft0, ft5
80001bcc: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001bd0: 53 80 52 22  	fmv.d	ft0, ft5
80001bd4: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001bd8: 53 80 52 22  	fmv.d	ft0, ft5
80001bdc: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001be0: 53 80 52 22  	fmv.d	ft0, ft5
80001be4: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001be8: 53 80 52 22  	fmv.d	ft0, ft5
80001bec: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001bf0: 53 80 52 22  	fmv.d	ft0, ft5
80001bf4: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001bf8: 53 80 52 22  	fmv.d	ft0, ft5
80001bfc: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001c00: 53 80 52 22  	fmv.d	ft0, ft5
80001c04: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001c08: 53 80 52 22  	fmv.d	ft0, ft5
80001c0c: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001c10: 53 80 52 22  	fmv.d	ft0, ft5
80001c14: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001c18: 53 80 52 22  	fmv.d	ft0, ft5
80001c1c: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001c20: 53 80 52 22  	fmv.d	ft0, ft5
80001c24: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001c28: 53 80 52 22  	fmv.d	ft0, ft5
80001c2c: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001c30: 53 80 52 22  	fmv.d	ft0, ft5
80001c34: 53 00 42 22  	fmv.d	ft0, ft4
80001c38: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001c3c: 53 80 52 22  	fmv.d	ft0, ft5
80001c40: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001c44: 53 80 52 22  	fmv.d	ft0, ft5
80001c48: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001c4c: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < nm; i++)
80001c50: 13 08 28 00  	addi	a6, a6, 2
80001c54: 13 03 73 01  	addi	t1, t1, 23
80001c58: 13 06 66 01  	addi	a2, a2, 22
80001c5c: 93 85 55 01  	addi	a1, a1, 21
80001c60: 13 05 35 01  	addi	a0, a0, 19
80001c64: 93 86 26 01  	addi	a3, a3, 18
80001c68: 93 84 14 01  	addi	s1, s1, 17
80001c6c: 93 8f 0f 01  	addi	t6, t6, 16
80001c70: 93 80 f0 00  	addi	ra, ra, 15
80001c74: 93 8d ed 00  	addi	s11, s11, 14
80001c78: 13 0d dd 00  	addi	s10, s10, 13
80001c7c: 93 8c cc 00  	addi	s9, s9, 12
80001c80: 13 0c bc 00  	addi	s8, s8, 11
80001c84: 13 0f af 00  	addi	t5, t5, 10
80001c88: 93 83 a3 00  	addi	t2, t2, 10
80001c8c: 93 8b 9b 00  	addi	s7, s7, 9
80001c90: 13 0b 8b 00  	addi	s6, s6, 8
80001c94: 93 8a 7a 00  	addi	s5, s5, 7
80001c98: 13 0a 6a 00  	addi	s4, s4, 6
80001c9c: 93 8e 5e 00  	addi	t4, t4, 5
80001ca0: 93 82 52 00  	addi	t0, t0, 5
80001ca4: 13 0e 4e 00  	addi	t3, t3, 4
80001ca8: 93 88 48 00  	addi	a7, a7, 4
80001cac: 13 09 39 00  	addi	s2, s2, 3
80001cb0: e3 18 38 d5  	bne	a6, s3, 0x80001a00 <.LBB0_98+0x60>
80001cb4: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001cb8: 6f 00 80 37  	j	0x80002030 <.LBB0_98+0x690>
80001cbc: 13 04 00 00  	mv	s0, zero
80001cc0: 13 06 00 00  	mv	a2, zero
80001cc4: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nm; i++)
80001cc8: 93 86 87 05  	addi	a3, a5, 88
80001ccc: 13 0f 20 00  	addi	t5, zero, 2
80001cd0: b7 d5 cc cc  	lui	a1, 838861
80001cd4: 93 87 d5 cc  	addi	a5, a1, -819
80001cd8: 13 09 40 01  	addi	s2, zero, 20
80001cdc: 87 31 05 00  	fld	ft3, 0(a0)
80001ce0: 37 85 94 3f  	lui	a0, 260424
80001ce4: 13 05 15 ae  	addi	a0, a0, -1311
80001ce8: 23 2c a1 02  	sw	a0, 56(sp)
80001cec: 37 15 ae 47  	lui	a0, 293601
80001cf0: 13 05 b5 47  	addi	a0, a0, 1147
80001cf4: 23 2a a1 02  	sw	a0, 52(sp)
80001cf8: 13 0a 20 00  	addi	s4, zero, 2
80001cfc: 93 0a 20 00  	addi	s5, zero, 2
80001d00: 13 0b 20 00  	addi	s6, zero, 2
80001d04: 93 0b 20 00  	addi	s7, zero, 2
80001d08: 13 0c 20 00  	addi	s8, zero, 2
80001d0c: 13 05 20 00  	addi	a0, zero, 2
80001d10: 93 0c 20 00  	addi	s9, zero, 2
80001d14: 13 0d 20 00  	addi	s10, zero, 2
80001d18: 93 0d 20 00  	addi	s11, zero, 2
80001d1c: 93 00 20 00  	addi	ra, zero, 2
80001d20: 93 03 20 00  	addi	t2, zero, 2
80001d24: 13 0e 20 00  	addi	t3, zero, 2
80001d28: 13 03 20 00  	addi	t1, zero, 2
80001d2c: 93 08 20 00  	addi	a7, zero, 2
80001d30: 93 05 20 00  	addi	a1, zero, 2
80001d34: 93 0e 20 00  	addi	t4, zero, 2
80001d38: 93 09 20 00  	addi	s3, zero, 2
80001d3c: 13 08 20 00  	addi	a6, zero, 2
80001d40: 93 02 20 00  	addi	t0, zero, 2
80001d44: 93 0f 20 00  	addi	t6, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001d48: 23 2e 81 02  	sw	s0, 60(sp)
80001d4c: 33 b7 ff 02  	mulhu	a4, t6, a5
80001d50: 13 57 47 00  	srli	a4, a4, 4
80001d54: 13 04 06 00  	mv	s0, a2
80001d58: 13 06 05 00  	mv	a2, a0
80001d5c: 13 85 09 00  	mv	a0, s3
80001d60: b3 09 27 03  	mul	s3, a4, s2
80001d64: 33 87 3f 41  	sub	a4, t6, s3
80001d68: 93 09 05 00  	mv	s3, a0
80001d6c: 13 05 06 00  	mv	a0, a2
80001d70: 13 06 04 00  	mv	a2, s0
80001d74: 03 24 c1 03  	lw	s0, 60(sp)
80001d78: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001d7c: 33 b7 f2 02  	mulhu	a4, t0, a5
80001d80: 13 57 47 00  	srli	a4, a4, 4
80001d84: 33 07 27 03  	mul	a4, a4, s2
80001d88: 33 87 e2 40  	sub	a4, t0, a4
80001d8c: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001d90: 33 b7 f4 02  	mulhu	a4, s1, a5
80001d94: 13 57 47 00  	srli	a4, a4, 4
80001d98: 33 07 27 03  	mul	a4, a4, s2
80001d9c: 33 87 e9 40  	sub	a4, s3, a4
80001da0: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001da4: 33 37 f6 02  	mulhu	a4, a2, a5
80001da8: 13 57 47 00  	srli	a4, a4, 4
80001dac: 33 07 27 03  	mul	a4, a4, s2
80001db0: 33 87 e5 40  	sub	a4, a1, a4
80001db4: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001db8: 33 37 f3 02  	mulhu	a4, t1, a5
80001dbc: 13 57 47 00  	srli	a4, a4, 4
80001dc0: 33 07 27 03  	mul	a4, a4, s2
80001dc4: 33 07 e3 40  	sub	a4, t1, a4
80001dc8: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001dcc: 33 37 fe 02  	mulhu	a4, t3, a5
80001dd0: 13 57 47 00  	srli	a4, a4, 4
80001dd4: 33 07 27 03  	mul	a4, a4, s2
80001dd8: 33 07 ee 40  	sub	a4, t3, a4
80001ddc: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001de0: 33 b7 f0 02  	mulhu	a4, ra, a5
80001de4: 13 57 47 00  	srli	a4, a4, 4
80001de8: 33 07 27 03  	mul	a4, a4, s2
80001dec: 33 87 e0 40  	sub	a4, ra, a4
80001df0: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001df4: 33 37 fd 02  	mulhu	a4, s10, a5
80001df8: 13 57 47 00  	srli	a4, a4, 4
80001dfc: 33 07 27 03  	mul	a4, a4, s2
80001e00: 33 07 ed 40  	sub	a4, s10, a4
80001e04: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001e08: 33 37 f4 02  	mulhu	a4, s0, a5
80001e0c: 13 57 47 00  	srli	a4, a4, 4
80001e10: 33 07 27 03  	mul	a4, a4, s2
80001e14: 33 07 e5 40  	sub	a4, a0, a4
80001e18: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001e1c: 33 b7 fb 02  	mulhu	a4, s7, a5
80001e20: 13 57 47 00  	srli	a4, a4, 4
80001e24: 33 07 27 03  	mul	a4, a4, s2
80001e28: 33 87 eb 40  	sub	a4, s7, a4
80001e2c: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001e30: 33 b7 fa 02  	mulhu	a4, s5, a5
80001e34: 13 57 47 00  	srli	a4, a4, 4
80001e38: 33 07 27 03  	mul	a4, a4, s2
80001e3c: 33 87 ea 40  	sub	a4, s5, a4
80001e40: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001e44: 33 37 ff 02  	mulhu	a4, t5, a5
80001e48: 13 57 47 00  	srli	a4, a4, 4
80001e4c: 33 07 27 03  	mul	a4, a4, s2
80001e50: 33 07 ef 40  	sub	a4, t5, a4
80001e54: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001e58: 33 37 fa 02  	mulhu	a4, s4, a5
80001e5c: 13 57 47 00  	srli	a4, a4, 4
80001e60: 33 07 27 03  	mul	a4, a4, s2
80001e64: 33 07 ea 40  	sub	a4, s4, a4
80001e68: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001e6c: 33 37 fb 02  	mulhu	a4, s6, a5
80001e70: 13 57 47 00  	srli	a4, a4, 4
80001e74: 33 07 27 03  	mul	a4, a4, s2
80001e78: 33 07 eb 40  	sub	a4, s6, a4
80001e7c: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001e80: 33 37 fc 02  	mulhu	a4, s8, a5
80001e84: 13 57 47 00  	srli	a4, a4, 4
80001e88: 33 07 27 03  	mul	a4, a4, s2
80001e8c: 33 07 ec 40  	sub	a4, s8, a4
80001e90: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001e94: 33 b7 fc 02  	mulhu	a4, s9, a5
80001e98: 13 57 47 00  	srli	a4, a4, 4
80001e9c: 33 07 27 03  	mul	a4, a4, s2
80001ea0: 33 87 ec 40  	sub	a4, s9, a4
80001ea4: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001ea8: 33 b7 fd 02  	mulhu	a4, s11, a5
80001eac: 13 57 47 00  	srli	a4, a4, 4
80001eb0: 33 07 27 03  	mul	a4, a4, s2
80001eb4: 33 87 ed 40  	sub	a4, s11, a4
80001eb8: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001ebc: 33 b7 f3 02  	mulhu	a4, t2, a5
80001ec0: 13 57 47 00  	srli	a4, a4, 4
80001ec4: 33 07 27 03  	mul	a4, a4, s2
80001ec8: 33 87 e3 40  	sub	a4, t2, a4
80001ecc: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001ed0: 33 b7 f8 02  	mulhu	a4, a7, a5
80001ed4: 13 57 47 00  	srli	a4, a4, 4
80001ed8: 33 07 27 03  	mul	a4, a4, s2
80001edc: 33 87 e8 40  	sub	a4, a7, a4
80001ee0: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001ee4: 33 b7 fe 02  	mulhu	a4, t4, a5
80001ee8: 13 57 47 00  	srli	a4, a4, 4
80001eec: 33 07 27 03  	mul	a4, a4, s2
80001ef0: 33 87 ee 40  	sub	a4, t4, a4
80001ef4: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001ef8: 33 37 f8 02  	mulhu	a4, a6, a5
80001efc: 13 57 47 00  	srli	a4, a4, 4
80001f00: 33 07 27 03  	mul	a4, a4, s2
80001f04: 33 07 e8 40  	sub	a4, a6, a4
80001f08: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001f0c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001f10: 27 b4 46 fa  	fsd	ft4, -88(a3)
80001f14: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001f18: 27 b8 46 fa  	fsd	ft4, -80(a3)
80001f1c: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001f20: 27 bc 46 fa  	fsd	ft4, -72(a3)
80001f24: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001f28: 27 b0 46 fc  	fsd	ft4, -64(a3)
80001f2c: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001f30: 27 b4 46 fc  	fsd	ft4, -56(a3)
80001f34: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001f38: 27 b8 46 fc  	fsd	ft4, -48(a3)
80001f3c: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001f40: 27 bc 46 fc  	fsd	ft4, -40(a3)
80001f44: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001f48: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001f4c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001f50: 27 b4 46 fe  	fsd	ft4, -24(a3)
80001f54: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001f58: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001f5c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001f60: 27 bc 46 fe  	fsd	ft4, -8(a3)
80001f64: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001f68: 27 b0 46 00  	fsd	ft4, 0(a3)
80001f6c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001f70: 27 b4 46 00  	fsd	ft4, 8(a3)
80001f74: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001f78: 27 b8 46 00  	fsd	ft4, 16(a3)
80001f7c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001f80: 27 bc 46 00  	fsd	ft4, 24(a3)
80001f84: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001f88: 27 b0 46 02  	fsd	ft4, 32(a3)
80001f8c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001f90: 27 b4 46 02  	fsd	ft4, 40(a3)
80001f94: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001f98: 27 b8 46 02  	fsd	ft4, 48(a3)
80001f9c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001fa0: 27 b0 46 04  	fsd	ft4, 64(a3)
80001fa4: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001fa8: 27 b4 46 04  	fsd	ft4, 72(a3)
80001fac: 03 27 81 03  	lw	a4, 56(sp)
80001fb0: 23 ae e6 02  	sw	a4, 60(a3)
80001fb4: 03 27 41 03  	lw	a4, 52(sp)
80001fb8: 23 ac e6 02  	sw	a4, 56(a3)
80001fbc: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001fc0: 27 b8 46 04  	fsd	ft4, 80(a3)
;   for (i = 0; i < nm; i++)
80001fc4: 93 8f 2f 00  	addi	t6, t6, 2
80001fc8: 93 82 32 00  	addi	t0, t0, 3
80001fcc: 13 08 78 01  	addi	a6, a6, 23
80001fd0: 93 89 49 00  	addi	s3, s3, 4
80001fd4: 93 84 44 00  	addi	s1, s1, 4
80001fd8: 93 8e 6e 01  	addi	t4, t4, 22
80001fdc: 93 85 55 00  	addi	a1, a1, 5
80001fe0: 13 06 56 00  	addi	a2, a2, 5
80001fe4: 93 88 58 01  	addi	a7, a7, 21
80001fe8: 13 03 63 00  	addi	t1, t1, 6
80001fec: 13 0e 7e 00  	addi	t3, t3, 7
80001ff0: 93 83 33 01  	addi	t2, t2, 19
80001ff4: 93 80 80 00  	addi	ra, ra, 8
80001ff8: 93 8d 2d 01  	addi	s11, s11, 18
80001ffc: 13 0d 9d 00  	addi	s10, s10, 9
80002000: 93 8c 1c 01  	addi	s9, s9, 17
80002004: 13 05 a5 00  	addi	a0, a0, 10
80002008: 13 04 a4 00  	addi	s0, s0, 10
8000200c: 13 0c 0c 01  	addi	s8, s8, 16
80002010: 93 8b bb 00  	addi	s7, s7, 11
80002014: 13 0b fb 00  	addi	s6, s6, 15
80002018: 93 8a ca 00  	addi	s5, s5, 12
8000201c: 13 0a ea 00  	addi	s4, s4, 14
80002020: 93 86 06 0b  	addi	a3, a3, 176
80002024: 13 0f df 00  	addi	t5, t5, 13
80002028: 13 07 20 03  	addi	a4, zero, 50
8000202c: e3 9e ef d0  	bne	t6, a4, 0x80001d48 <.LBB0_98+0x3a8>
;  for (i = 0; i < ni; i++)
80002030: 03 25 41 01  	lw	a0, 20(sp)
80002034: 83 25 01 01  	lw	a1, 16(sp)
80002038: 33 75 b5 00  	and	a0, a0, a1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
8000203c: 73 28 00 b0  	csrr	a6, mcycle
80002040: 63 04 05 4c  	beqz	a0, 0x80002508 <.LBB0_99+0xd8>
80002044: 13 05 00 00  	mv	a0, zero
80002048: 93 05 80 00  	addi	a1, zero, 8
8000204c: 13 06 30 01  	addi	a2, zero, 19
;  for (i = 0; i < ni; i++)
80002050: 93 06 00 04  	addi	a3, zero, 64
80002054: 13 07 00 0c  	addi	a4, zero, 192
80002058: ab 20 d6 00  	scfgw	a2, a3
8000205c: ab a0 e5 00  	scfgw	a1, a4
80002060: 93 06 80 f6  	addi	a3, zero, -152
80002064: 13 07 10 01  	addi	a4, zero, 17
80002068: 93 07 00 06  	addi	a5, zero, 96
8000206c: 93 04 00 0e  	addi	s1, zero, 224
80002070: ab 20 f7 00  	scfgw	a4, a5
80002074: ab a0 96 00  	scfgw	a3, s1
80002078: 93 06 f0 00  	addi	a3, zero, 15
8000207c: 93 07 00 08  	addi	a5, zero, 128
80002080: 93 04 00 10  	addi	s1, zero, 256
80002084: ab a0 f6 00  	scfgw	a3, a5
80002088: ab a0 95 00  	scfgw	a1, s1
8000208c: 93 05 00 02  	addi	a1, zero, 32
80002090: ab 20 b0 00  	scfgw	zero, a1
80002094: 83 25 c1 01  	lw	a1, 28(sp)
80002098: 2b a0 05 34  	scfgwi	a1, 832
8000209c: 93 05 00 09  	addi	a1, zero, 144
800020a0: 93 07 10 00  	addi	a5, zero, 1
800020a4: 93 84 07 04  	addi	s1, a5, 64
800020a8: 13 84 07 0c  	addi	s0, a5, 192
800020ac: ab 20 96 00  	scfgw	a2, s1
800020b0: ab a0 85 00  	scfgw	a1, s0
800020b4: 37 f6 ff ff  	lui	a2, 1048575
800020b8: 93 04 86 55  	addi	s1, a2, 1368
800020bc: 13 84 07 06  	addi	s0, a5, 96
800020c0: ab 20 87 00  	scfgw	a4, s0
800020c4: 13 87 07 0e  	addi	a4, a5, 224
800020c8: ab a0 e4 00  	scfgw	s1, a4
800020cc: 13 06 86 4c  	addi	a2, a2, 1224
800020d0: 13 87 07 08  	addi	a4, a5, 128
800020d4: 93 84 07 10  	addi	s1, a5, 256
800020d8: ab a0 e6 00  	scfgw	a3, a4
800020dc: ab 20 96 00  	scfgw	a2, s1
800020e0: 13 86 07 02  	addi	a2, a5, 32
800020e4: ab 20 c0 00  	scfgw	zero, a2
800020e8: 03 26 81 01  	lw	a2, 24(sp)
800020ec: 2b 20 16 34  	scfgwi	a2, 833
800020f0: 73 e6 00 7c  	csrrsi	a2, 1984, 1
800020f4: 13 06 00 01  	addi	a2, zero, 16
800020f8: 83 29 81 02  	lw	s3, 40(sp)
800020fc: 93 86 09 00  	mv	a3, s3
80002100: 03 2a 41 02  	lw	s4, 36(sp)
80002104: 83 2a 01 02  	lw	s5, 32(sp)
80002108: 03 2b 01 03  	lw	s6, 48(sp)
8000210c: 13 07 00 00  	mv	a4, zero
;  E[i][j] = 0.0;
80002110: b3 87 e6 00  	add	a5, a3, a4
80002114: 23 a2 07 00  	sw	zero, 4(a5)
80002118: 23 a0 07 00  	sw	zero, 0(a5)
;    E[i][j] += A[i][k] * B[k][j];
8000211c: d3 f1 00 12  	fmul.d	ft3, ft1, ft0
80002120: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002124: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002128: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000212c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002130: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002134: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002138: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000213c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002140: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002144: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002148: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000214c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002150: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002154: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002158: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000215c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002160: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002164: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002168: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
;     for (j = 0; j < nj; j++)
8000216c: 13 07 87 00  	addi	a4, a4, 8
;    E[i][j] += A[i][k] * B[k][j];
80002170: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nj; j++)
80002174: e3 1e b7 f8  	bne	a4, a1, 0x80002110 <.LBB0_98+0x770>
;  for (i = 0; i < ni; i++)
80002178: 13 05 15 00  	addi	a0, a0, 1
8000217c: 93 86 06 09  	addi	a3, a3, 144
80002180: e3 16 c5 f8  	bne	a0, a2, 0x8000210c <.LBB0_98+0x76c>
80002184: 73 f5 00 7c  	csrrci	a0, 1984, 1
;   for (i = 0; i < nj; i++)
80002188: 03 25 c1 00  	lw	a0, 12(sp)
8000218c: 83 25 81 00  	lw	a1, 8(sp)
80002190: 33 75 b5 00  	and	a0, a0, a1
80002194: 63 0a 05 64  	beqz	a0, 0x800027e8 <.LBB0_99+0x3b8>
80002198: 13 05 00 00  	mv	a0, zero
8000219c: 93 05 80 00  	addi	a1, zero, 8
800021a0: 13 06 70 01  	addi	a2, zero, 23
;   for (i = 0; i < nj; i++)
800021a4: 93 06 00 04  	addi	a3, zero, 64
800021a8: 13 07 00 0c  	addi	a4, zero, 192
800021ac: ab 20 d6 00  	scfgw	a2, a3
800021b0: ab a0 e5 00  	scfgw	a1, a4
800021b4: 93 06 80 f4  	addi	a3, zero, -184
800021b8: 13 07 50 01  	addi	a4, zero, 21
800021bc: 93 07 00 06  	addi	a5, zero, 96
800021c0: 93 04 00 0e  	addi	s1, zero, 224
800021c4: ab 20 f7 00  	scfgw	a4, a5
800021c8: ab a0 96 00  	scfgw	a3, s1
800021cc: 93 06 10 01  	addi	a3, zero, 17
800021d0: 93 07 00 08  	addi	a5, zero, 128
800021d4: 93 04 00 10  	addi	s1, zero, 256
800021d8: ab a0 f6 00  	scfgw	a3, a5
800021dc: ab a0 95 00  	scfgw	a1, s1
800021e0: 93 05 00 02  	addi	a1, zero, 32
800021e4: ab 20 b0 00  	scfgw	zero, a1
800021e8: 2b a0 0a 34  	scfgwi	s5, 832
800021ec: 93 05 00 0b  	addi	a1, zero, 176
800021f0: 93 07 10 00  	addi	a5, zero, 1
800021f4: 93 84 07 04  	addi	s1, a5, 64
800021f8: 13 84 07 0c  	addi	s0, a5, 192
800021fc: ab 20 96 00  	scfgw	a2, s1
80002200: ab a0 85 00  	scfgw	a1, s0
80002204: 37 f6 ff ff  	lui	a2, 1048575
80002208: 93 04 86 03  	addi	s1, a2, 56
8000220c: 13 84 07 06  	addi	s0, a5, 96
80002210: ab 20 87 00  	scfgw	a4, s0
80002214: 13 87 07 0e  	addi	a4, a5, 224
80002218: ab a0 e4 00  	scfgw	s1, a4
8000221c: 13 06 86 f8  	addi	a2, a2, -120
80002220: 13 87 07 08  	addi	a4, a5, 128
80002224: 93 84 07 10  	addi	s1, a5, 256
80002228: ab a0 e6 00  	scfgw	a3, a4
8000222c: ab 20 96 00  	scfgw	a2, s1
80002230: 13 86 07 02  	addi	a2, a5, 32
80002234: ab 20 c0 00  	scfgw	zero, a2
80002238: 2b 20 1b 34  	scfgwi	s6, 833
8000223c: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80002240: 13 06 20 01  	addi	a2, zero, 18
80002244: 93 06 0a 00  	mv	a3, s4
80002248: 13 07 00 00  	mv	a4, zero
;  F[i][j] = 0.0;
8000224c: b3 87 e6 00  	add	a5, a3, a4
80002250: 23 a2 07 00  	sw	zero, 4(a5)
80002254: 23 a0 07 00  	sw	zero, 0(a5)
;    F[i][j] += C[i][k] * D[k][j];
80002258: d3 f1 00 12  	fmul.d	ft3, ft1, ft0
8000225c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002260: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002264: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002268: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000226c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002270: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002274: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002278: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000227c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
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
;     for (j = 0; j < nl; j++)
800022b8: 13 07 87 00  	addi	a4, a4, 8
;    F[i][j] += C[i][k] * D[k][j];
800022bc: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nl; j++)
800022c0: e3 16 b7 f8  	bne	a4, a1, 0x8000224c <.LBB0_98+0x8ac>
;   for (i = 0; i < nj; i++)
800022c4: 13 05 15 00  	addi	a0, a0, 1
800022c8: 93 86 06 0b  	addi	a3, a3, 176
800022cc: e3 1e c5 f6  	bne	a0, a2, 0x80002248 <.LBB0_98+0x8a8>
800022d0: 73 f5 00 7c  	csrrci	a0, 1984, 1
;   for (i = 0; i < ni; i++)
800022d4: 13 d5 49 01  	srli	a0, s3, 20
800022d8: 33 35 a0 00  	snez	a0, a0
800022dc: b7 f5 11 00  	lui	a1, 287
800022e0: 13 86 95 70  	addi	a2, a1, 1801
800022e4: 33 b6 c9 00  	sltu	a2, s3, a2
800022e8: 33 75 c5 00  	and	a0, a0, a2
800022ec: 13 56 4a 01  	srli	a2, s4, 20
800022f0: 33 36 c0 00  	snez	a2, a2
800022f4: 93 85 95 3a  	addi	a1, a1, 937
800022f8: b3 35 ba 00  	sltu	a1, s4, a1
800022fc: b3 75 b6 00  	and	a1, a2, a1
80002300: 33 75 b5 00  	and	a0, a0, a1
80002304: e3 08 05 00  	beqz	a0, 0x80002b14 <.LBB0_99+0x6e4>
80002308: 13 05 00 00  	mv	a0, zero
8000230c: 93 05 80 00  	addi	a1, zero, 8
80002310: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < ni; i++)
80002314: 93 06 00 04  	addi	a3, zero, 64
80002318: 13 07 00 0c  	addi	a4, zero, 192
8000231c: ab 20 d6 00  	scfgw	a2, a3
80002320: ab a0 e5 00  	scfgw	a1, a4
80002324: 93 06 80 f7  	addi	a3, zero, -136
80002328: 13 07 50 01  	addi	a4, zero, 21
8000232c: 93 07 00 06  	addi	a5, zero, 96
80002330: 93 04 00 0e  	addi	s1, zero, 224
80002334: ab 20 f7 00  	scfgw	a4, a5
80002338: ab a0 96 00  	scfgw	a3, s1
8000233c: 93 06 f0 00  	addi	a3, zero, 15
80002340: 93 07 00 08  	addi	a5, zero, 128
80002344: 93 04 00 10  	addi	s1, zero, 256
80002348: ab a0 f6 00  	scfgw	a3, a5
8000234c: ab a0 95 00  	scfgw	a1, s1
80002350: 93 05 00 02  	addi	a1, zero, 32
80002354: ab 20 b0 00  	scfgw	zero, a1
80002358: 2b a0 09 34  	scfgwi	s3, 832
8000235c: 93 05 00 0b  	addi	a1, zero, 176
80002360: 93 07 10 00  	addi	a5, zero, 1
80002364: 93 84 07 04  	addi	s1, a5, 64
80002368: 13 84 07 0c  	addi	s0, a5, 192
8000236c: ab 20 96 00  	scfgw	a2, s1
80002370: ab a0 85 00  	scfgw	a1, s0
80002374: 37 f6 ff ff  	lui	a2, 1048575
80002378: 93 04 86 45  	addi	s1, a2, 1112
8000237c: 13 84 07 06  	addi	s0, a5, 96
80002380: ab 20 87 00  	scfgw	a4, s0
80002384: 13 87 07 0e  	addi	a4, a5, 224
80002388: ab a0 e4 00  	scfgw	s1, a4
8000238c: 13 06 86 3a  	addi	a2, a2, 936
80002390: 13 87 07 08  	addi	a4, a5, 128
80002394: 93 84 07 10  	addi	s1, a5, 256
80002398: ab a0 e6 00  	scfgw	a3, a4
8000239c: ab 20 96 00  	scfgw	a2, s1
800023a0: 13 86 07 02  	addi	a2, a5, 32
800023a4: ab 20 c0 00  	scfgw	zero, a2
800023a8: 2b 20 1a 34  	scfgwi	s4, 833
800023ac: 73 e6 00 7c  	csrrsi	a2, 1984, 1
800023b0: 13 06 00 01  	addi	a2, zero, 16
800023b4: 03 29 c1 02  	lw	s2, 44(sp)
800023b8: 93 06 09 00  	mv	a3, s2
800023bc: 13 07 00 00  	mv	a4, zero
;    G[i][j] += E[i][k] * F[k][j];
800023c0: d3 f1 00 12  	fmul.d	ft3, ft1, ft0
800023c4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023c8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023cc: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023d0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023d4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023d8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023dc: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023e0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023e4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023e8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023ec: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023f0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023f4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023f8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800023fc: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002400: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80002404: b3 87 e6 00  	add	a5, a3, a4
80002408: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
;     for (j = 0; j < nl; j++)
8000240c: 13 07 87 00  	addi	a4, a4, 8
;    G[i][j] += E[i][k] * F[k][j];
80002410: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nl; j++)
80002414: e3 16 b7 fa  	bne	a4, a1, 0x800023c0 <.LBB0_98+0xa20>
;   for (i = 0; i < ni; i++)
80002418: 13 05 15 00  	addi	a0, a0, 1
8000241c: 93 86 06 0b  	addi	a3, a3, 176
80002420: e3 1e c5 f8  	bne	a0, a2, 0x800023bc <.LBB0_98+0xa1c>
80002424: 73 f5 00 7c  	csrrci	a0, 1984, 1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002428: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
8000242c: b3 05 05 41  	sub	a1, a0, a6

80002430 <.LBB0_99>:
80002430: 17 35 00 00  	auipc	a0, 3
80002434: 13 05 15 e4  	addi	a0, a0, -447
80002438: 97 10 00 00  	auipc	ra, 1
8000243c: e7 80 c0 af  	jalr	-1284(ra)
;     for (int i = 0; i < n; i++){
80002440: 13 55 49 01  	srli	a0, s2, 20
80002444: 33 35 a0 00  	snez	a0, a0
80002448: b7 f5 11 00  	lui	a1, 287
8000244c: 93 85 95 50  	addi	a1, a1, 1289
80002450: b3 35 b9 00  	sltu	a1, s2, a1
80002454: 33 75 b5 00  	and	a0, a0, a1
80002458: e3 04 05 16  	beqz	a0, 0x80002dc0 <.LBB0_99+0x990>
8000245c: 13 05 80 00  	addi	a0, zero, 8
80002460: 93 05 50 01  	addi	a1, zero, 21
;     for (int i = 0; i < n; i++){
80002464: 13 06 00 04  	addi	a2, zero, 64
80002468: 93 06 00 0c  	addi	a3, zero, 192
8000246c: ab a0 c5 00  	scfgw	a1, a2
80002470: ab 20 d5 00  	scfgw	a0, a3
80002474: 93 05 f0 00  	addi	a1, zero, 15
80002478: 13 06 00 06  	addi	a2, zero, 96
8000247c: 93 06 00 0e  	addi	a3, zero, 224
80002480: ab a0 c5 00  	scfgw	a1, a2
80002484: ab 20 d5 00  	scfgw	a0, a3
80002488: 13 05 00 02  	addi	a0, zero, 32
8000248c: ab 20 a0 00  	scfgw	zero, a0
80002490: 2b 20 09 32  	scfgwi	s2, 800
80002494: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002498: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000249c: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
800024a0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024a4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024a8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024ac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024b0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024b4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024b8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024bc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024c0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024c4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024c8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024cc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024d0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024d4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024d8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024dc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024e0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024e4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024e8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024ec: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800024f0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800024f4: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
800024f8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800024fc: e3 12 05 fa  	bnez	a0, 0x800024a0 <.LBB0_99+0x70>
80002500: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002504: 6f 00 50 18  	j	0x80002e88 <.LBB0_100>
80002508: 93 0b 00 00  	mv	s7, zero
8000250c: 03 25 81 01  	lw	a0, 24(sp)
;  for (i = 0; i < ni; i++)
80002510: 93 02 05 09  	addi	t0, a0, 144
80002514: 93 05 85 55  	addi	a1, a0, 1368
80002518: 13 83 85 55  	addi	t1, a1, 1368
8000251c: 93 05 05 51  	addi	a1, a0, 1296
80002520: 13 8e 05 51  	addi	t3, a1, 1296
80002524: 93 d5 42 01  	srli	a1, t0, 20
80002528: b3 35 b0 00  	snez	a1, a1
8000252c: 37 06 12 00  	lui	a2, 288
80002530: 13 06 96 f7  	addi	a2, a2, -135
80002534: b3 b6 c2 00  	sltu	a3, t0, a2
80002538: b3 f5 d5 00  	and	a1, a1, a3
8000253c: 93 56 43 01  	srli	a3, t1, 20
80002540: b3 36 d0 00  	snez	a3, a3
80002544: 33 37 c3 00  	sltu	a4, t1, a2
80002548: b3 f6 e6 00  	and	a3, a3, a4
8000254c: b3 f5 d5 00  	and	a1, a1, a3
80002550: 93 56 4e 01  	srli	a3, t3, 20
80002554: b3 36 d0 00  	snez	a3, a3
80002558: 33 36 ce 00  	sltu	a2, t3, a2
8000255c: 33 f6 c6 00  	and	a2, a3, a2
80002560: 33 77 b6 00  	and	a4, a2, a1
80002564: 93 08 00 0a  	addi	a7, zero, 160
80002568: 93 0e 80 00  	addi	t4, zero, 8
8000256c: 13 0f 10 01  	addi	t5, zero, 17
80002570: 93 0f 10 00  	addi	t6, zero, 1
80002574: 13 09 20 00  	addi	s2, zero, 2
80002578: 13 06 00 09  	addi	a2, zero, 144
8000257c: 93 03 00 01  	addi	t2, zero, 16
80002580: 83 29 81 02  	lw	s3, 40(sp)
80002584: 93 86 09 00  	mv	a3, s3
80002588: 03 2a 41 02  	lw	s4, 36(sp)
8000258c: 83 2a 01 02  	lw	s5, 32(sp)
80002590: 03 2b 01 03  	lw	s6, 48(sp)
80002594: 83 25 c1 01  	lw	a1, 28(sp)
80002598: 6f 00 00 01  	j	0x800025a8 <.LBB0_99+0x178>
8000259c: 93 8b 1b 00  	addi	s7, s7, 1
800025a0: 93 86 06 09  	addi	a3, a3, 144
800025a4: e3 82 7b be  	beq	s7, t2, 0x80002188 <.LBB0_98+0x7e8>
;    E[i][j] += A[i][k] * B[k][j];
800025a8: b3 84 1b 03  	mul	s1, s7, a7
800025ac: b3 84 95 00  	add	s1, a1, s1
800025b0: 87 b1 04 02  	fld	ft3, 32(s1)
800025b4: 07 b2 84 02  	fld	ft4, 40(s1)
800025b8: 87 b2 04 03  	fld	ft5, 48(s1)
800025bc: 07 b3 84 03  	fld	ft6, 56(s1)
800025c0: 87 b3 04 04  	fld	ft7, 64(s1)
800025c4: 07 b5 84 04  	fld	fa0, 72(s1)
800025c8: 87 b5 04 05  	fld	fa1, 80(s1)
800025cc: 07 b6 84 05  	fld	fa2, 88(s1)
800025d0: 87 b6 04 06  	fld	fa3, 96(s1)
800025d4: 07 b7 84 06  	fld	fa4, 104(s1)
800025d8: 87 b7 04 07  	fld	fa5, 112(s1)
800025dc: 07 b8 84 07  	fld	fa6, 120(s1)
800025e0: 87 b8 04 08  	fld	fa7, 128(s1)
800025e4: 07 be 84 08  	fld	ft8, 136(s1)
800025e8: 87 be 04 09  	fld	ft9, 144(s1)
800025ec: 07 bf 04 00  	fld	ft10, 0(s1)
800025f0: 87 bf 84 00  	fld	ft11, 8(s1)
800025f4: 07 b4 04 01  	fld	fs0, 16(s1)
800025f8: 87 b4 84 01  	fld	fs1, 24(s1)
800025fc: 07 b9 84 09  	fld	fs2, 152(s1)
80002600: 93 04 00 00  	mv	s1, zero
80002604: 63 0c 07 10  	beqz	a4, 0x8000271c <.LBB0_99+0x2ec>
;     for (j = 0; j < nj; j++)
80002608: 13 04 00 04  	addi	s0, zero, 64
8000260c: ab 20 8f 00  	scfgw	t5, s0
80002610: 13 04 00 0c  	addi	s0, zero, 192
80002614: ab a0 8e 00  	scfgw	t4, s0
80002618: 13 04 00 02  	addi	s0, zero, 32
8000261c: ab 20 80 00  	scfgw	zero, s0
80002620: 2b a0 02 30  	scfgwi	t0, 768
80002624: 13 84 0f 04  	addi	s0, t6, 64
80002628: ab 20 8f 00  	scfgw	t5, s0
8000262c: 13 84 0f 0c  	addi	s0, t6, 192
80002630: ab a0 8e 00  	scfgw	t4, s0
80002634: 13 84 0f 02  	addi	s0, t6, 32
80002638: ab 20 80 00  	scfgw	zero, s0
8000263c: 2b 20 13 30  	scfgwi	t1, 769
80002640: 13 04 09 04  	addi	s0, s2, 64
80002644: ab 20 8f 00  	scfgw	t5, s0
80002648: 13 04 09 0c  	addi	s0, s2, 192
8000264c: ab a0 8e 00  	scfgw	t4, s0
80002650: 13 04 09 02  	addi	s0, s2, 32
80002654: ab 20 80 00  	scfgw	zero, s0
80002658: 2b 20 2e 30  	scfgwi	t3, 770
8000265c: 73 e4 00 7c  	csrrsi	s0, 1984, 1
;    E[i][j] += A[i][k] * B[k][j];
80002660: b3 07 95 00  	add	a5, a0, s1
80002664: 87 b9 07 00  	fld	fs3, 0(a5)
80002668: 87 ba 07 12  	fld	fs5, 288(a5)
8000266c: 07 bb 07 1b  	fld	fs6, 432(a5)
80002670: d3 f9 e9 13  	fmul.d	fs3, fs3, ft10
80002674: c3 79 f0 9b  	fmadd.d	fs3, ft0, ft11, fs3
80002678: c3 f9 8a 9a  	fmadd.d	fs3, fs5, fs0, fs3
8000267c: c3 79 9b 9a  	fmadd.d	fs3, fs6, fs1, fs3
80002680: 07 ba 07 24  	fld	fs4, 576(a5)
80002684: 87 ba 07 2d  	fld	fs5, 720(a5)
80002688: 07 bb 07 36  	fld	fs6, 864(a5)
8000268c: 87 bb 07 3f  	fld	fs7, 1008(a5)
80002690: c3 79 3a 9a  	fmadd.d	fs3, fs4, ft3, fs3
80002694: c3 f9 4a 9a  	fmadd.d	fs3, fs5, ft4, fs3
80002698: c3 79 5b 9a  	fmadd.d	fs3, fs6, ft5, fs3
8000269c: c3 f9 6b 9a  	fmadd.d	fs3, fs7, ft6, fs3
800026a0: 07 ba 07 48  	fld	fs4, 1152(a5)
800026a4: 87 ba 07 51  	fld	fs5, 1296(a5)
800026a8: 07 bb 07 5a  	fld	fs6, 1440(a5)
800026ac: 87 bb 07 63  	fld	fs7, 1584(a5)
800026b0: c3 79 7a 9a  	fmadd.d	fs3, fs4, ft7, fs3
800026b4: c3 f9 aa 9a  	fmadd.d	fs3, fs5, fa0, fs3
800026b8: c3 79 bb 9a  	fmadd.d	fs3, fs6, fa1, fs3
800026bc: c3 f9 cb 9a  	fmadd.d	fs3, fs7, fa2, fs3
800026c0: 07 ba 07 6c  	fld	fs4, 1728(a5)
800026c4: 87 ba 07 75  	fld	fs5, 1872(a5)
800026c8: 07 bb 07 7e  	fld	fs6, 2016(a5)
800026cc: 13 84 87 43  	addi	s0, a5, 1080
800026d0: 87 3b 84 43  	fld	fs7, 1080(s0)
800026d4: c3 79 da 9a  	fmadd.d	fs3, fs4, fa3, fs3
800026d8: c3 f9 ea 9a  	fmadd.d	fs3, fs5, fa4, fs3
800026dc: c3 79 fb 9a  	fmadd.d	fs3, fs6, fa5, fs3
800026e0: c3 f9 0b 9b  	fmadd.d	fs3, fs7, fa6, fs3
800026e4: 13 84 07 48  	addi	s0, a5, 1152
800026e8: 07 3a 04 48  	fld	fs4, 1152(s0)
800026ec: 93 87 87 4c  	addi	a5, a5, 1224
800026f0: 87 ba 87 4c  	fld	fs5, 1224(a5)
800026f4: c3 79 1a 9b  	fmadd.d	fs3, fs4, fa7, fs3
800026f8: c3 f9 ca 9b  	fmadd.d	fs3, fs5, ft8, fs3
800026fc: c3 79 d1 9b  	fmadd.d	fs3, ft2, ft9, fs3
80002700: b3 87 96 00  	add	a5, a3, s1
80002704: c3 f9 20 9b  	fmadd.d	fs3, ft1, fs2, fs3
;     for (j = 0; j < nj; j++)
80002708: 93 84 84 00  	addi	s1, s1, 8
;    E[i][j] += A[i][k] * B[k][j];
8000270c: 27 b0 37 01  	fsd	fs3, 0(a5)
;     for (j = 0; j < nj; j++)
80002710: e3 98 c4 f4  	bne	s1, a2, 0x80002660 <.LBB0_99+0x230>
80002714: f3 f7 00 7c  	csrrci	a5, 1984, 1
80002718: 6f f0 5f e8  	j	0x8000259c <.LBB0_99+0x16c>
;    E[i][j] += A[i][k] * B[k][j];
8000271c: 33 04 95 00  	add	s0, a0, s1
80002720: 87 39 04 00  	fld	fs3, 0(s0)
80002724: d3 f9 e9 13  	fmul.d	fs3, fs3, ft10
80002728: 07 3a 04 09  	fld	fs4, 144(s0)
8000272c: 87 3a 04 12  	fld	fs5, 288(s0)
80002730: 07 3b 04 1b  	fld	fs6, 432(s0)
80002734: 87 3b 04 24  	fld	fs7, 576(s0)
80002738: c3 79 fa 9b  	fmadd.d	fs3, fs4, ft11, fs3
8000273c: c3 f9 8a 9a  	fmadd.d	fs3, fs5, fs0, fs3
80002740: c3 79 9b 9a  	fmadd.d	fs3, fs6, fs1, fs3
80002744: c3 f9 3b 9a  	fmadd.d	fs3, fs7, ft3, fs3
80002748: 07 3a 04 2d  	fld	fs4, 720(s0)
8000274c: 87 3a 04 36  	fld	fs5, 864(s0)
80002750: 07 3b 04 3f  	fld	fs6, 1008(s0)
80002754: 87 3b 04 48  	fld	fs7, 1152(s0)
80002758: c3 79 4a 9a  	fmadd.d	fs3, fs4, ft4, fs3
8000275c: c3 f9 5a 9a  	fmadd.d	fs3, fs5, ft5, fs3
80002760: c3 79 6b 9a  	fmadd.d	fs3, fs6, ft6, fs3
80002764: c3 f9 7b 9a  	fmadd.d	fs3, fs7, ft7, fs3
80002768: 07 3a 04 51  	fld	fs4, 1296(s0)
8000276c: 87 3a 04 5a  	fld	fs5, 1440(s0)
80002770: 07 3b 04 63  	fld	fs6, 1584(s0)
80002774: 87 3b 04 6c  	fld	fs7, 1728(s0)
80002778: c3 79 aa 9a  	fmadd.d	fs3, fs4, fa0, fs3
8000277c: c3 f9 ba 9a  	fmadd.d	fs3, fs5, fa1, fs3
80002780: c3 79 cb 9a  	fmadd.d	fs3, fs6, fa2, fs3
80002784: c3 f9 db 9a  	fmadd.d	fs3, fs7, fa3, fs3
80002788: 07 3a 04 75  	fld	fs4, 1872(s0)
8000278c: 87 3a 04 7e  	fld	fs5, 2016(s0)
80002790: 93 07 84 43  	addi	a5, s0, 1080
80002794: 07 bb 87 43  	fld	fs6, 1080(a5)
80002798: 93 07 04 48  	addi	a5, s0, 1152
8000279c: 87 bb 07 48  	fld	fs7, 1152(a5)
800027a0: c3 79 ea 9a  	fmadd.d	fs3, fs4, fa4, fs3
800027a4: c3 f9 fa 9a  	fmadd.d	fs3, fs5, fa5, fs3
800027a8: c3 79 0b 9b  	fmadd.d	fs3, fs6, fa6, fs3
800027ac: c3 f9 1b 9b  	fmadd.d	fs3, fs7, fa7, fs3
800027b0: 93 07 84 4c  	addi	a5, s0, 1224
800027b4: 07 ba 87 4c  	fld	fs4, 1224(a5)
800027b8: 93 07 04 51  	addi	a5, s0, 1296
800027bc: 87 ba 07 51  	fld	fs5, 1296(a5)
800027c0: 93 07 84 55  	addi	a5, s0, 1368
800027c4: 07 bb 87 55  	fld	fs6, 1368(a5)
800027c8: c3 79 ca 9b  	fmadd.d	fs3, fs4, ft8, fs3
800027cc: c3 f9 da 9b  	fmadd.d	fs3, fs5, ft9, fs3
800027d0: b3 87 96 00  	add	a5, a3, s1
800027d4: c3 79 2b 9b  	fmadd.d	fs3, fs6, fs2, fs3
;     for (j = 0; j < nj; j++)
800027d8: 93 84 84 00  	addi	s1, s1, 8
;    E[i][j] += A[i][k] * B[k][j];
800027dc: 27 b0 37 01  	fsd	fs3, 0(a5)
;     for (j = 0; j < nj; j++)
800027e0: e3 9e c4 f2  	bne	s1, a2, 0x8000271c <.LBB0_99+0x2ec>
800027e4: 6f f0 9f db  	j	0x8000259c <.LBB0_99+0x16c>
800027e8: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nj; i++)
800027ec: 93 02 0b 0b  	addi	t0, s6, 176
800027f0: 93 05 8b 7e  	addi	a1, s6, 2024
800027f4: 13 83 85 7e  	addi	t1, a1, 2024
800027f8: 93 05 0b 79  	addi	a1, s6, 1936
800027fc: 93 83 05 79  	addi	t2, a1, 1936
80002800: 93 d5 42 01  	srli	a1, t0, 20
80002804: b3 35 b0 00  	snez	a1, a1
80002808: 37 06 12 00  	lui	a2, 288
8000280c: 13 06 96 f5  	addi	a2, a2, -167
80002810: b3 b6 c2 00  	sltu	a3, t0, a2
80002814: b3 f5 d5 00  	and	a1, a1, a3
80002818: 93 56 43 01  	srli	a3, t1, 20
8000281c: b3 36 d0 00  	snez	a3, a3
80002820: 33 37 c3 00  	sltu	a4, t1, a2
80002824: b3 f6 e6 00  	and	a3, a3, a4
80002828: b3 f5 d5 00  	and	a1, a1, a3
8000282c: 93 d6 43 01  	srli	a3, t2, 20
80002830: b3 36 d0 00  	snez	a3, a3
80002834: 33 b6 c3 00  	sltu	a2, t2, a2
80002838: 33 f6 c6 00  	and	a2, a3, a2
8000283c: 33 77 b6 00  	and	a4, a2, a1
80002840: 93 05 0b 42  	addi	a1, s6, 1056
80002844: 93 87 05 42  	addi	a5, a1, 1056
80002848: 93 08 00 0c  	addi	a7, zero, 192
8000284c: 93 0e 80 00  	addi	t4, zero, 8
80002850: 13 0f 50 01  	addi	t5, zero, 21
80002854: 93 0f 10 00  	addi	t6, zero, 1
80002858: 13 09 20 00  	addi	s2, zero, 2
8000285c: 93 06 00 0b  	addi	a3, zero, 176
80002860: 13 0e 20 01  	addi	t3, zero, 18
80002864: 13 04 0a 00  	mv	s0, s4
80002868: 6f 00 00 01  	j	0x80002878 <.LBB0_99+0x448>
8000286c: 13 05 15 00  	addi	a0, a0, 1
80002870: 13 04 04 0b  	addi	s0, s0, 176
80002874: e3 00 c5 a7  	beq	a0, t3, 0x800022d4 <.LBB0_98+0x934>
;    F[i][j] += C[i][k] * D[k][j];
80002878: b3 04 15 03  	mul	s1, a0, a7
8000287c: b3 84 9a 00  	add	s1, s5, s1
80002880: 87 b1 04 04  	fld	ft3, 64(s1)
80002884: 07 b2 84 04  	fld	ft4, 72(s1)
80002888: 87 b2 04 05  	fld	ft5, 80(s1)
8000288c: 07 b3 84 05  	fld	ft6, 88(s1)
80002890: 87 b3 04 06  	fld	ft7, 96(s1)
80002894: 07 b5 84 06  	fld	fa0, 104(s1)
80002898: 87 b5 04 07  	fld	fa1, 112(s1)
8000289c: 07 b6 84 07  	fld	fa2, 120(s1)
800028a0: 87 b6 04 08  	fld	fa3, 128(s1)
800028a4: 07 b7 84 08  	fld	fa4, 136(s1)
800028a8: 87 b7 04 00  	fld	fa5, 0(s1)
800028ac: 07 b8 84 00  	fld	fa6, 8(s1)
800028b0: 87 b8 04 01  	fld	fa7, 16(s1)
800028b4: 07 be 84 01  	fld	ft8, 24(s1)
800028b8: 87 be 04 02  	fld	ft9, 32(s1)
800028bc: 07 bf 84 02  	fld	ft10, 40(s1)
800028c0: 87 bf 04 03  	fld	ft11, 48(s1)
800028c4: 07 b4 84 03  	fld	fs0, 56(s1)
800028c8: 87 b4 04 09  	fld	fs1, 144(s1)
800028cc: 07 b9 84 09  	fld	fs2, 152(s1)
800028d0: 87 b9 04 0a  	fld	fs3, 160(s1)
800028d4: 07 ba 84 0a  	fld	fs4, 168(s1)
800028d8: 87 ba 04 0b  	fld	fs5, 176(s1)
800028dc: 07 bb 84 0b  	fld	fs6, 184(s1)
800028e0: 93 04 00 00  	mv	s1, zero
800028e4: 63 0a 07 14  	beqz	a4, 0x80002a38 <.LBB0_99+0x608>
;     for (j = 0; j < nl; j++)
800028e8: 93 05 00 04  	addi	a1, zero, 64
800028ec: ab 20 bf 00  	scfgw	t5, a1
800028f0: 93 05 00 0c  	addi	a1, zero, 192
800028f4: ab a0 be 00  	scfgw	t4, a1
800028f8: 93 05 00 02  	addi	a1, zero, 32
800028fc: ab 20 b0 00  	scfgw	zero, a1
80002900: 2b a0 02 30  	scfgwi	t0, 768
80002904: 93 85 0f 04  	addi	a1, t6, 64
80002908: ab 20 bf 00  	scfgw	t5, a1
8000290c: 93 85 0f 0c  	addi	a1, t6, 192
80002910: ab a0 be 00  	scfgw	t4, a1
80002914: 93 85 0f 02  	addi	a1, t6, 32
80002918: ab 20 b0 00  	scfgw	zero, a1
8000291c: 2b 20 13 30  	scfgwi	t1, 769
80002920: 93 05 09 04  	addi	a1, s2, 64
80002924: ab 20 bf 00  	scfgw	t5, a1
80002928: 93 05 09 0c  	addi	a1, s2, 192
8000292c: ab a0 be 00  	scfgw	t4, a1
80002930: 93 05 09 02  	addi	a1, s2, 32
80002934: ab 20 b0 00  	scfgw	zero, a1
80002938: 2b a0 23 30  	scfgwi	t2, 770
8000293c: f3 e5 00 7c  	csrrsi	a1, 1984, 1
;    F[i][j] += C[i][k] * D[k][j];
80002940: b3 05 9b 00  	add	a1, s6, s1
80002944: 87 bb 05 00  	fld	fs7, 0(a1)
80002948: 87 bc 05 16  	fld	fs9, 352(a1)
8000294c: 07 bd 05 21  	fld	fs10, 528(a1)
80002950: d3 fb fb 12  	fmul.d	fs7, fs7, fa5
80002954: c3 7b 00 bb  	fmadd.d	fs7, ft0, fa6, fs7
80002958: c3 fb 1c bb  	fmadd.d	fs7, fs9, fa7, fs7
8000295c: c3 7b cd bb  	fmadd.d	fs7, fs10, ft8, fs7
80002960: 07 bc 05 2c  	fld	fs8, 704(a1)
80002964: 87 bc 05 37  	fld	fs9, 880(a1)
80002968: 07 bd 05 42  	fld	fs10, 1056(a1)
8000296c: 87 bd 05 4d  	fld	fs11, 1232(a1)
80002970: c3 7b dc bb  	fmadd.d	fs7, fs8, ft9, fs7
80002974: c3 fb ec bb  	fmadd.d	fs7, fs9, ft10, fs7
80002978: c3 7b fd bb  	fmadd.d	fs7, fs10, ft11, fs7
8000297c: c3 fb 8d ba  	fmadd.d	fs7, fs11, fs0, fs7
80002980: 07 bc 05 58  	fld	fs8, 1408(a1)
80002984: 87 bc 05 63  	fld	fs9, 1584(a1)
80002988: 07 bd 05 6e  	fld	fs10, 1760(a1)
8000298c: 87 bd 05 79  	fld	fs11, 1936(a1)
80002990: c3 7b 3c ba  	fmadd.d	fs7, fs8, ft3, fs7
80002994: c3 fb 4c ba  	fmadd.d	fs7, fs9, ft4, fs7
80002998: c3 7b 5d ba  	fmadd.d	fs7, fs10, ft5, fs7
8000299c: c3 fb 6d ba  	fmadd.d	fs7, fs11, ft6, fs7
800029a0: 13 86 05 42  	addi	a2, a1, 1056
800029a4: 07 3c 06 42  	fld	fs8, 1056(a2)
800029a8: 13 86 85 47  	addi	a2, a1, 1144
800029ac: 87 3c 86 47  	fld	fs9, 1144(a2)
800029b0: 13 86 05 4d  	addi	a2, a1, 1232
800029b4: 07 3d 06 4d  	fld	fs10, 1232(a2)
800029b8: 13 86 85 52  	addi	a2, a1, 1320
800029bc: 87 3d 86 52  	fld	fs11, 1320(a2)
800029c0: c3 7b 7c ba  	fmadd.d	fs7, fs8, ft7, fs7
800029c4: c3 fb ac ba  	fmadd.d	fs7, fs9, fa0, fs7
800029c8: c3 7b bd ba  	fmadd.d	fs7, fs10, fa1, fs7
800029cc: c3 fb cd ba  	fmadd.d	fs7, fs11, fa2, fs7
800029d0: 13 86 05 58  	addi	a2, a1, 1408
800029d4: 07 3c 06 58  	fld	fs8, 1408(a2)
800029d8: 13 86 85 5d  	addi	a2, a1, 1496
800029dc: 87 3c 86 5d  	fld	fs9, 1496(a2)
800029e0: 13 86 05 63  	addi	a2, a1, 1584
800029e4: 07 3d 06 63  	fld	fs10, 1584(a2)
800029e8: 13 86 85 68  	addi	a2, a1, 1672
800029ec: 87 3d 86 68  	fld	fs11, 1672(a2)
800029f0: c3 7b dc ba  	fmadd.d	fs7, fs8, fa3, fs7
800029f4: c3 fb ec ba  	fmadd.d	fs7, fs9, fa4, fs7
800029f8: c3 7b 9d ba  	fmadd.d	fs7, fs10, fs1, fs7
800029fc: c3 fb 2d bb  	fmadd.d	fs7, fs11, fs2, fs7
80002a00: 13 86 05 6e  	addi	a2, a1, 1760
80002a04: 07 3c 06 6e  	fld	fs8, 1760(a2)
80002a08: 93 85 85 73  	addi	a1, a1, 1848
80002a0c: 87 bc 85 73  	fld	fs9, 1848(a1)
80002a10: c3 7b 3c bb  	fmadd.d	fs7, fs8, fs3, fs7
80002a14: c3 fb 4c bb  	fmadd.d	fs7, fs9, fs4, fs7
80002a18: c3 7b 51 bb  	fmadd.d	fs7, ft2, fs5, fs7
80002a1c: b3 05 94 00  	add	a1, s0, s1
80002a20: c3 fb 60 bb  	fmadd.d	fs7, ft1, fs6, fs7
;     for (j = 0; j < nl; j++)
80002a24: 93 84 84 00  	addi	s1, s1, 8
;    F[i][j] += C[i][k] * D[k][j];
80002a28: 27 b0 75 01  	fsd	fs7, 0(a1)
;     for (j = 0; j < nl; j++)
80002a2c: e3 9a d4 f0  	bne	s1, a3, 0x80002940 <.LBB0_99+0x510>
80002a30: f3 f5 00 7c  	csrrci	a1, 1984, 1
80002a34: 6f f0 9f e3  	j	0x8000286c <.LBB0_99+0x43c>
;    F[i][j] += C[i][k] * D[k][j];
80002a38: b3 05 9b 00  	add	a1, s6, s1
80002a3c: 87 bb 05 00  	fld	fs7, 0(a1)
80002a40: 07 bc 05 0b  	fld	fs8, 176(a1)
80002a44: 87 bc 05 16  	fld	fs9, 352(a1)
80002a48: d3 fb fb 12  	fmul.d	fs7, fs7, fa5
80002a4c: c3 7b 0c bb  	fmadd.d	fs7, fs8, fa6, fs7
80002a50: 07 bc 05 21  	fld	fs8, 528(a1)
80002a54: c3 fb 1c bb  	fmadd.d	fs7, fs9, fa7, fs7
80002a58: 87 bc 05 2c  	fld	fs9, 704(a1)
80002a5c: 07 bd 05 37  	fld	fs10, 880(a1)
80002a60: c3 7b cc bb  	fmadd.d	fs7, fs8, ft8, fs7
80002a64: 07 bc 05 42  	fld	fs8, 1056(a1)
80002a68: c3 fb dc bb  	fmadd.d	fs7, fs9, ft9, fs7
80002a6c: c3 7b ed bb  	fmadd.d	fs7, fs10, ft10, fs7
80002a70: 87 bc 05 4d  	fld	fs9, 1232(a1)
80002a74: c3 7b fc bb  	fmadd.d	fs7, fs8, ft11, fs7
80002a78: 07 bc 05 58  	fld	fs8, 1408(a1)
80002a7c: 07 bd 05 63  	fld	fs10, 1584(a1)
80002a80: c3 fb 8c ba  	fmadd.d	fs7, fs9, fs0, fs7
80002a84: 87 bc 05 6e  	fld	fs9, 1760(a1)
80002a88: c3 7b 3c ba  	fmadd.d	fs7, fs8, ft3, fs7
80002a8c: c3 7b 4d ba  	fmadd.d	fs7, fs10, ft4, fs7
80002a90: 07 bc 05 79  	fld	fs8, 1936(a1)
80002a94: c3 fb 5c ba  	fmadd.d	fs7, fs9, ft5, fs7
80002a98: b3 85 97 00  	add	a1, a5, s1
80002a9c: 87 bc 05 00  	fld	fs9, 0(a1)
80002aa0: c3 7b 6c ba  	fmadd.d	fs7, fs8, ft6, fs7
80002aa4: 07 bc 05 0b  	fld	fs8, 176(a1)
80002aa8: 07 bd 05 16  	fld	fs10, 352(a1)
80002aac: c3 fb 7c ba  	fmadd.d	fs7, fs9, ft7, fs7
80002ab0: 87 bc 05 21  	fld	fs9, 528(a1)
80002ab4: c3 7b ac ba  	fmadd.d	fs7, fs8, fa0, fs7
80002ab8: c3 7b bd ba  	fmadd.d	fs7, fs10, fa1, fs7
80002abc: 07 bc 05 2c  	fld	fs8, 704(a1)
80002ac0: c3 fb cc ba  	fmadd.d	fs7, fs9, fa2, fs7
80002ac4: 87 bc 05 37  	fld	fs9, 880(a1)
80002ac8: 07 bd 05 42  	fld	fs10, 1056(a1)
80002acc: c3 7b dc ba  	fmadd.d	fs7, fs8, fa3, fs7
80002ad0: 07 bc 05 4d  	fld	fs8, 1232(a1)
80002ad4: c3 fb ec ba  	fmadd.d	fs7, fs9, fa4, fs7
80002ad8: c3 7b 9d ba  	fmadd.d	fs7, fs10, fs1, fs7
80002adc: 87 bc 05 58  	fld	fs9, 1408(a1)
80002ae0: c3 7b 2c bb  	fmadd.d	fs7, fs8, fs2, fs7
80002ae4: 07 bc 05 63  	fld	fs8, 1584(a1)
80002ae8: 07 bd 05 6e  	fld	fs10, 1760(a1)
80002aec: c3 fb 3c bb  	fmadd.d	fs7, fs9, fs3, fs7
80002af0: 87 bc 05 79  	fld	fs9, 1936(a1)
80002af4: c3 7b 4c bb  	fmadd.d	fs7, fs8, fs4, fs7
80002af8: c3 7b 5d bb  	fmadd.d	fs7, fs10, fs5, fs7
80002afc: b3 05 94 00  	add	a1, s0, s1
80002b00: c3 fb 6c bb  	fmadd.d	fs7, fs9, fs6, fs7
;     for (j = 0; j < nl; j++)
80002b04: 93 84 84 00  	addi	s1, s1, 8
;    F[i][j] += C[i][k] * D[k][j];
80002b08: 27 b0 75 01  	fsd	fs7, 0(a1)
;     for (j = 0; j < nl; j++)
80002b0c: e3 96 d4 f2  	bne	s1, a3, 0x80002a38 <.LBB0_99+0x608>
80002b10: 6f f0 df d5  	j	0x8000286c <.LBB0_99+0x43c>
80002b14: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < ni; i++)
80002b18: 93 02 0a 0b  	addi	t0, s4, 176
80002b1c: 93 05 8a 5d  	addi	a1, s4, 1496
80002b20: 13 83 85 5d  	addi	t1, a1, 1496
80002b24: 93 05 0a 58  	addi	a1, s4, 1408
80002b28: 13 8e 05 58  	addi	t3, a1, 1408
80002b2c: 93 d5 42 01  	srli	a1, t0, 20
80002b30: b3 35 b0 00  	snez	a1, a1
80002b34: 37 06 12 00  	lui	a2, 288
80002b38: 13 06 96 f5  	addi	a2, a2, -167
80002b3c: b3 b6 c2 00  	sltu	a3, t0, a2
80002b40: b3 f5 d5 00  	and	a1, a1, a3
80002b44: 93 56 43 01  	srli	a3, t1, 20
80002b48: b3 36 d0 00  	snez	a3, a3
80002b4c: 33 37 c3 00  	sltu	a4, t1, a2
80002b50: b3 f6 e6 00  	and	a3, a3, a4
80002b54: b3 f5 d5 00  	and	a1, a1, a3
80002b58: 93 56 4e 01  	srli	a3, t3, 20
80002b5c: b3 36 d0 00  	snez	a3, a3
80002b60: 33 36 ce 00  	sltu	a2, t3, a2
80002b64: 33 f6 c6 00  	and	a2, a3, a2
80002b68: 33 77 b6 00  	and	a4, a2, a1
80002b6c: 93 08 00 09  	addi	a7, zero, 144
80002b70: 93 0e 80 00  	addi	t4, zero, 8
80002b74: 13 0f 50 01  	addi	t5, zero, 21
80002b78: 93 0f 10 00  	addi	t6, zero, 1
80002b7c: 93 05 20 00  	addi	a1, zero, 2
80002b80: 13 06 00 0b  	addi	a2, zero, 176
80002b84: 93 03 00 01  	addi	t2, zero, 16
80002b88: 03 29 c1 02  	lw	s2, 44(sp)
80002b8c: 93 06 09 00  	mv	a3, s2
80002b90: 6f 00 00 01  	j	0x80002ba0 <.LBB0_99+0x770>
80002b94: 13 05 15 00  	addi	a0, a0, 1
80002b98: 93 86 06 0b  	addi	a3, a3, 176
80002b9c: e3 06 75 88  	beq	a0, t2, 0x80002428 <.LBB0_98+0xa88>
;    G[i][j] += E[i][k] * F[k][j];
80002ba0: b3 04 15 03  	mul	s1, a0, a7
80002ba4: b3 84 99 00  	add	s1, s3, s1
80002ba8: 87 b1 04 01  	fld	ft3, 16(s1)
80002bac: 07 b2 84 01  	fld	ft4, 24(s1)
80002bb0: 87 b2 04 02  	fld	ft5, 32(s1)
80002bb4: 07 b3 84 02  	fld	ft6, 40(s1)
80002bb8: 87 b3 04 03  	fld	ft7, 48(s1)
80002bbc: 07 b5 84 03  	fld	fa0, 56(s1)
80002bc0: 87 b5 04 04  	fld	fa1, 64(s1)
80002bc4: 07 b6 84 04  	fld	fa2, 72(s1)
80002bc8: 87 b6 04 05  	fld	fa3, 80(s1)
80002bcc: 07 b7 84 05  	fld	fa4, 88(s1)
80002bd0: 87 b7 04 06  	fld	fa5, 96(s1)
80002bd4: 07 b8 84 06  	fld	fa6, 104(s1)
80002bd8: 87 b8 04 07  	fld	fa7, 112(s1)
80002bdc: 07 be 84 07  	fld	ft8, 120(s1)
80002be0: 87 be 04 08  	fld	ft9, 128(s1)
80002be4: 07 bf 84 08  	fld	ft10, 136(s1)
80002be8: 87 bf 04 00  	fld	ft11, 0(s1)
80002bec: 07 b4 84 00  	fld	fs0, 8(s1)
80002bf0: 93 04 00 00  	mv	s1, zero
80002bf4: 63 06 07 10  	beqz	a4, 0x80002d00 <.LBB0_99+0x8d0>
;     for (j = 0; j < nl; j++)
80002bf8: 13 04 00 04  	addi	s0, zero, 64
80002bfc: ab 20 8f 00  	scfgw	t5, s0
80002c00: 13 04 00 0c  	addi	s0, zero, 192
80002c04: ab a0 8e 00  	scfgw	t4, s0
80002c08: 13 04 00 02  	addi	s0, zero, 32
80002c0c: ab 20 80 00  	scfgw	zero, s0
80002c10: 2b a0 02 30  	scfgwi	t0, 768
80002c14: 13 84 0f 04  	addi	s0, t6, 64
80002c18: ab 20 8f 00  	scfgw	t5, s0
80002c1c: 13 84 0f 0c  	addi	s0, t6, 192
80002c20: ab a0 8e 00  	scfgw	t4, s0
80002c24: 13 84 0f 02  	addi	s0, t6, 32
80002c28: ab 20 80 00  	scfgw	zero, s0
80002c2c: 2b 20 13 30  	scfgwi	t1, 769
80002c30: 13 84 05 04  	addi	s0, a1, 64
80002c34: ab 20 8f 00  	scfgw	t5, s0
80002c38: 13 84 05 0c  	addi	s0, a1, 192
80002c3c: ab a0 8e 00  	scfgw	t4, s0
80002c40: 13 84 05 02  	addi	s0, a1, 32
80002c44: ab 20 80 00  	scfgw	zero, s0
80002c48: 2b 20 2e 30  	scfgwi	t3, 770
80002c4c: 73 e4 00 7c  	csrrsi	s0, 1984, 1
;    G[i][j] += E[i][k] * F[k][j];
80002c50: b3 07 9a 00  	add	a5, s4, s1
80002c54: 87 b4 07 00  	fld	fs1, 0(a5)
80002c58: d3 f4 f4 13  	fmul.d	fs1, fs1, ft11
80002c5c: c3 74 80 4a  	fmadd.d	fs1, ft0, fs0, fs1
80002c60: 07 b9 07 16  	fld	fs2, 352(a5)
80002c64: 87 b9 07 21  	fld	fs3, 528(a5)
80002c68: 07 ba 07 2c  	fld	fs4, 704(a5)
80002c6c: 87 ba 07 37  	fld	fs5, 880(a5)
80002c70: c3 74 39 4a  	fmadd.d	fs1, fs2, ft3, fs1
80002c74: c3 f4 49 4a  	fmadd.d	fs1, fs3, ft4, fs1
80002c78: c3 74 5a 4a  	fmadd.d	fs1, fs4, ft5, fs1
80002c7c: c3 f4 6a 4a  	fmadd.d	fs1, fs5, ft6, fs1
80002c80: 07 b9 07 42  	fld	fs2, 1056(a5)
80002c84: 87 b9 07 4d  	fld	fs3, 1232(a5)
80002c88: 07 ba 07 58  	fld	fs4, 1408(a5)
80002c8c: 87 ba 07 63  	fld	fs5, 1584(a5)
80002c90: c3 74 79 4a  	fmadd.d	fs1, fs2, ft7, fs1
80002c94: c3 f4 a9 4a  	fmadd.d	fs1, fs3, fa0, fs1
80002c98: c3 74 ba 4a  	fmadd.d	fs1, fs4, fa1, fs1
80002c9c: c3 f4 ca 4a  	fmadd.d	fs1, fs5, fa2, fs1
80002ca0: 07 b9 07 6e  	fld	fs2, 1760(a5)
80002ca4: 87 b9 07 79  	fld	fs3, 1936(a5)
80002ca8: 13 84 07 42  	addi	s0, a5, 1056
80002cac: 07 3a 04 42  	fld	fs4, 1056(s0)
80002cb0: 13 84 87 47  	addi	s0, a5, 1144
80002cb4: 87 3a 84 47  	fld	fs5, 1144(s0)
80002cb8: c3 74 d9 4a  	fmadd.d	fs1, fs2, fa3, fs1
80002cbc: c3 f4 e9 4a  	fmadd.d	fs1, fs3, fa4, fs1
80002cc0: c3 74 fa 4a  	fmadd.d	fs1, fs4, fa5, fs1
80002cc4: c3 f4 0a 4b  	fmadd.d	fs1, fs5, fa6, fs1
80002cc8: 13 84 07 4d  	addi	s0, a5, 1232
80002ccc: 07 39 04 4d  	fld	fs2, 1232(s0)
80002cd0: 93 87 87 52  	addi	a5, a5, 1320
80002cd4: 87 b9 87 52  	fld	fs3, 1320(a5)
80002cd8: c3 74 19 4b  	fmadd.d	fs1, fs2, fa7, fs1
80002cdc: c3 f4 c9 4b  	fmadd.d	fs1, fs3, ft8, fs1
80002ce0: c3 74 d1 4b  	fmadd.d	fs1, ft2, ft9, fs1
80002ce4: b3 87 96 00  	add	a5, a3, s1
80002ce8: c3 f4 e0 4b  	fmadd.d	fs1, ft1, ft10, fs1
;     for (j = 0; j < nl; j++)
80002cec: 93 84 84 00  	addi	s1, s1, 8
;    G[i][j] += E[i][k] * F[k][j];
80002cf0: 27 b0 97 00  	fsd	fs1, 0(a5)
;     for (j = 0; j < nl; j++)
80002cf4: e3 9e c4 f4  	bne	s1, a2, 0x80002c50 <.LBB0_99+0x820>
80002cf8: f3 f7 00 7c  	csrrci	a5, 1984, 1
80002cfc: 6f f0 9f e9  	j	0x80002b94 <.LBB0_99+0x764>
;    G[i][j] += E[i][k] * F[k][j];
80002d00: 33 04 9a 00  	add	s0, s4, s1
80002d04: 87 34 04 00  	fld	fs1, 0(s0)
80002d08: 07 39 04 0b  	fld	fs2, 176(s0)
80002d0c: 87 39 04 16  	fld	fs3, 352(s0)
80002d10: d3 f4 f4 13  	fmul.d	fs1, fs1, ft11
80002d14: c3 74 89 4a  	fmadd.d	fs1, fs2, fs0, fs1
80002d18: c3 f4 39 4a  	fmadd.d	fs1, fs3, ft3, fs1
80002d1c: 07 39 04 21  	fld	fs2, 528(s0)
80002d20: 87 39 04 2c  	fld	fs3, 704(s0)
80002d24: 07 3a 04 37  	fld	fs4, 880(s0)
80002d28: 87 3a 04 42  	fld	fs5, 1056(s0)
80002d2c: c3 74 49 4a  	fmadd.d	fs1, fs2, ft4, fs1
80002d30: c3 f4 59 4a  	fmadd.d	fs1, fs3, ft5, fs1
80002d34: c3 74 6a 4a  	fmadd.d	fs1, fs4, ft6, fs1
80002d38: c3 f4 7a 4a  	fmadd.d	fs1, fs5, ft7, fs1
80002d3c: 07 39 04 4d  	fld	fs2, 1232(s0)
80002d40: 87 39 04 58  	fld	fs3, 1408(s0)
80002d44: 07 3a 04 63  	fld	fs4, 1584(s0)
80002d48: 87 3a 04 6e  	fld	fs5, 1760(s0)
80002d4c: c3 74 a9 4a  	fmadd.d	fs1, fs2, fa0, fs1
80002d50: c3 f4 b9 4a  	fmadd.d	fs1, fs3, fa1, fs1
80002d54: c3 74 ca 4a  	fmadd.d	fs1, fs4, fa2, fs1
80002d58: c3 f4 da 4a  	fmadd.d	fs1, fs5, fa3, fs1
80002d5c: 07 39 04 79  	fld	fs2, 1936(s0)
80002d60: 93 07 04 42  	addi	a5, s0, 1056
80002d64: 87 b9 07 42  	fld	fs3, 1056(a5)
80002d68: 93 07 84 47  	addi	a5, s0, 1144
80002d6c: 07 ba 87 47  	fld	fs4, 1144(a5)
80002d70: 93 07 04 4d  	addi	a5, s0, 1232
80002d74: 87 ba 07 4d  	fld	fs5, 1232(a5)
80002d78: c3 74 e9 4a  	fmadd.d	fs1, fs2, fa4, fs1
80002d7c: c3 f4 f9 4a  	fmadd.d	fs1, fs3, fa5, fs1
80002d80: c3 74 0a 4b  	fmadd.d	fs1, fs4, fa6, fs1
80002d84: c3 f4 1a 4b  	fmadd.d	fs1, fs5, fa7, fs1
80002d88: 93 07 84 52  	addi	a5, s0, 1320
80002d8c: 07 b9 87 52  	fld	fs2, 1320(a5)
80002d90: 93 07 04 58  	addi	a5, s0, 1408
80002d94: 87 b9 07 58  	fld	fs3, 1408(a5)
80002d98: 93 07 84 5d  	addi	a5, s0, 1496
80002d9c: 07 ba 87 5d  	fld	fs4, 1496(a5)
80002da0: c3 74 c9 4b  	fmadd.d	fs1, fs2, ft8, fs1
80002da4: c3 f4 d9 4b  	fmadd.d	fs1, fs3, ft9, fs1
80002da8: b3 87 96 00  	add	a5, a3, s1
80002dac: c3 74 ea 4b  	fmadd.d	fs1, fs4, ft10, fs1
;     for (j = 0; j < nl; j++)
80002db0: 93 84 84 00  	addi	s1, s1, 8
;    G[i][j] += E[i][k] * F[k][j];
80002db4: 27 b0 97 00  	fsd	fs1, 0(a5)
;     for (j = 0; j < nl; j++)
80002db8: e3 94 c4 f4  	bne	s1, a2, 0x80002d00 <.LBB0_99+0x8d0>
80002dbc: 6f f0 9f dd  	j	0x80002b94 <.LBB0_99+0x764>
;     for (int i = 0; i < n; i++){
80002dc0: 13 05 89 05  	addi	a0, s2, 88
80002dc4: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002dc8: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80002dcc: 07 32 85 fa  	fld	ft4, -88(a0)
80002dd0: 87 32 05 fb  	fld	ft5, -80(a0)
80002dd4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002dd8: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002ddc: 07 32 85 fb  	fld	ft4, -72(a0)
80002de0: 87 32 05 fc  	fld	ft5, -64(a0)
80002de4: 07 33 85 fc  	fld	ft6, -56(a0)
80002de8: 87 33 05 fd  	fld	ft7, -48(a0)
80002dec: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002df0: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002df4: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002df8: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002dfc: 07 32 85 fd  	fld	ft4, -40(a0)
80002e00: 87 32 05 fe  	fld	ft5, -32(a0)
80002e04: 07 33 85 fe  	fld	ft6, -24(a0)
80002e08: 87 33 05 ff  	fld	ft7, -16(a0)
80002e0c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e10: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e14: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002e18: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002e1c: 07 32 85 ff  	fld	ft4, -8(a0)
80002e20: 87 32 05 00  	fld	ft5, 0(a0)
80002e24: 07 33 85 00  	fld	ft6, 8(a0)
80002e28: 87 33 05 01  	fld	ft7, 16(a0)
80002e2c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e30: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e34: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002e38: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002e3c: 07 32 85 01  	fld	ft4, 24(a0)
80002e40: 87 32 05 02  	fld	ft5, 32(a0)
80002e44: 07 33 85 02  	fld	ft6, 40(a0)
80002e48: 87 33 05 03  	fld	ft7, 48(a0)
80002e4c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e50: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e54: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002e58: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002e5c: 07 32 85 03  	fld	ft4, 56(a0)
80002e60: 87 32 05 04  	fld	ft5, 64(a0)
80002e64: 07 33 85 04  	fld	ft6, 72(a0)
80002e68: 87 33 05 05  	fld	ft7, 80(a0)
80002e6c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e70: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e74: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002e78: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80002e7c: 93 85 f5 ff  	addi	a1, a1, -1
80002e80: 13 05 05 0b  	addi	a0, a0, 176
80002e84: e3 94 05 f4  	bnez	a1, 0x80002dcc <.LBB0_99+0x99c>

80002e88 <.LBB0_100>:
80002e88: 17 25 00 00  	auipc	a0, 2
80002e8c: 13 05 05 6c  	addi	a0, a0, 1728
80002e90: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80002e94: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80002e98: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80002e9c: 27 30 81 04  	fsd	fs0, 64(sp)
80002ea0: 03 26 01 04  	lw	a2, 64(sp)
80002ea4: 83 26 41 04  	lw	a3, 68(sp)

80002ea8 <.LBB0_101>:
80002ea8: 17 25 00 00  	auipc	a0, 2
80002eac: 13 05 d5 3b  	addi	a0, a0, 957
80002eb0: 97 00 00 00  	auipc	ra, 0
80002eb4: e7 80 40 08  	jalr	132(ra)

80002eb8 <.LBB0_102>:
80002eb8: 17 25 00 00  	auipc	a0, 2
80002ebc: 13 05 85 69  	addi	a0, a0, 1688
80002ec0: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80002ec4: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80002ec8: 87 3d 81 04  	fld	fs11, 72(sp)
80002ecc: 07 3d 01 05  	fld	fs10, 80(sp)
80002ed0: 87 3c 81 05  	fld	fs9, 88(sp)
80002ed4: 07 3c 01 06  	fld	fs8, 96(sp)
80002ed8: 87 3b 81 06  	fld	fs7, 104(sp)
80002edc: 07 3b 01 07  	fld	fs6, 112(sp)
80002ee0: 87 3a 81 07  	fld	fs5, 120(sp)
80002ee4: 07 3a 01 08  	fld	fs4, 128(sp)
80002ee8: 87 39 81 08  	fld	fs3, 136(sp)
80002eec: 07 39 01 09  	fld	fs2, 144(sp)
80002ef0: 87 34 81 09  	fld	fs1, 152(sp)
80002ef4: 07 34 01 0a  	fld	fs0, 160(sp)
80002ef8: 83 2d c1 0a  	lw	s11, 172(sp)
80002efc: 03 2d 01 0b  	lw	s10, 176(sp)
80002f00: 83 2c 41 0b  	lw	s9, 180(sp)
80002f04: 03 2c 81 0b  	lw	s8, 184(sp)
80002f08: 83 2b c1 0b  	lw	s7, 188(sp)
80002f0c: 03 2b 01 0c  	lw	s6, 192(sp)
80002f10: 83 2a 41 0c  	lw	s5, 196(sp)
80002f14: 03 2a 81 0c  	lw	s4, 200(sp)
80002f18: 83 29 c1 0c  	lw	s3, 204(sp)
80002f1c: 03 29 01 0d  	lw	s2, 208(sp)
80002f20: 83 24 41 0d  	lw	s1, 212(sp)
80002f24: 03 24 81 0d  	lw	s0, 216(sp)
80002f28: 83 20 c1 0d  	lw	ra, 220(sp)
80002f2c: 13 01 01 0e  	addi	sp, sp, 224
80002f30: 67 80 00 00  	ret

80002f34 <printf_>:
; {
80002f34: 13 01 01 fd  	addi	sp, sp, -48
80002f38: 23 26 11 00  	sw	ra, 12(sp)
80002f3c: 93 02 05 00  	mv	t0, a0
80002f40: 23 26 11 03  	sw	a7, 44(sp)
80002f44: 23 24 01 03  	sw	a6, 40(sp)
80002f48: 23 22 f1 02  	sw	a5, 36(sp)
80002f4c: 23 20 e1 02  	sw	a4, 32(sp)
80002f50: 23 2e d1 00  	sw	a3, 28(sp)
80002f54: 23 2c c1 00  	sw	a2, 24(sp)
80002f58: 23 2a b1 00  	sw	a1, 20(sp)
80002f5c: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80002f60: 23 24 a1 00  	sw	a0, 8(sp)

80002f64 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80002f64: 17 15 00 00  	auipc	a0, 1
80002f68: 13 05 45 c2  	addi	a0, a0, -988
80002f6c: 93 05 71 00  	addi	a1, sp, 7
80002f70: 13 06 f0 ff  	addi	a2, zero, -1
80002f74: 13 07 41 01  	addi	a4, sp, 20
80002f78: 93 86 02 00  	mv	a3, t0
80002f7c: 97 00 00 00  	auipc	ra, 0
80002f80: e7 80 40 01  	jalr	20(ra)
;   return ret;
80002f84: 83 20 c1 00  	lw	ra, 12(sp)
80002f88: 13 01 01 03  	addi	sp, sp, 48
80002f8c: 67 80 00 00  	ret

80002f90 <_vsnprintf.llvm.17592004524093383706>:
; {
80002f90: 13 01 01 f9  	addi	sp, sp, -112
80002f94: 23 26 11 06  	sw	ra, 108(sp)
80002f98: 23 24 81 06  	sw	s0, 104(sp)
80002f9c: 23 22 91 06  	sw	s1, 100(sp)
80002fa0: 23 20 21 07  	sw	s2, 96(sp)
80002fa4: 23 2e 31 05  	sw	s3, 92(sp)
80002fa8: 23 2c 41 05  	sw	s4, 88(sp)
80002fac: 23 2a 51 05  	sw	s5, 84(sp)
80002fb0: 23 28 61 05  	sw	s6, 80(sp)
80002fb4: 23 26 71 05  	sw	s7, 76(sp)
80002fb8: 23 24 81 05  	sw	s8, 72(sp)
80002fbc: 23 22 91 05  	sw	s9, 68(sp)
80002fc0: 23 20 a1 05  	sw	s10, 64(sp)
80002fc4: 23 2e b1 03  	sw	s11, 60(sp)
80002fc8: 93 09 07 00  	mv	s3, a4
80002fcc: 13 84 06 00  	mv	s0, a3
80002fd0: 93 0a 06 00  	mv	s5, a2
80002fd4: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80002fd8: 63 86 05 00  	beqz	a1, 0x80002fe4 <.LBB1_183>
80002fdc: 13 09 05 00  	mv	s2, a0
80002fe0: 6f 00 c0 00  	j	0x80002fec <.LBB1_183+0x8>

80002fe4 <.LBB1_183>:
80002fe4: 17 19 00 00  	auipc	s2, 1
80002fe8: 13 09 09 c5  	addi	s2, s2, -944
80002fec: 13 0c 00 00  	mv	s8, zero
80002ff0: 13 0b 50 02  	addi	s6, zero, 37
80002ff4: 93 0d 00 01  	addi	s11, zero, 16
80002ff8: 93 0b e0 02  	addi	s7, zero, 46
80002ffc: 37 15 00 00  	lui	a0, 1
80003000: 13 05 05 80  	addi	a0, a0, -2048
80003004: 23 2c a1 00  	sw	a0, 24(sp)
80003008: 37 05 01 00  	lui	a0, 16
8000300c: 13 05 f5 ff  	addi	a0, a0, -1
80003010: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80003014: 13 0d 24 00  	addi	s10, s0, 2
80003018: 93 0c 0c 00  	mv	s9, s8
8000301c: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80003020: 03 45 04 00  	lbu	a0, 0(s0)
80003024: e3 04 05 30  	beqz	a0, 0x80003b2c <.LBB1_124+0x3b0>
80003028: 63 08 65 03  	beq	a0, s6, 0x80003058 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
8000302c: 93 84 1c 00  	addi	s1, s9, 1
80003030: 93 05 0a 00  	mv	a1, s4
80003034: 13 86 0c 00  	mv	a2, s9
80003038: 93 86 0a 00  	mv	a3, s5
8000303c: e7 00 09 00  	jalr	s2
;       format++;
80003040: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80003044: 13 0d 1d 00  	addi	s10, s10, 1
80003048: 93 8c 04 00  	mv	s9, s1
;   while (*format)
8000304c: 03 45 04 00  	lbu	a0, 0(s0)
80003050: e3 1c 05 fc  	bnez	a0, 0x80003028 <.LBB1_183+0x44>
80003054: 6f 00 90 2d  	j	0x80003b2c <.LBB1_124+0x3b0>
;     flags = 0U;
80003058: 13 04 00 00  	mv	s0, zero
8000305c: 6f 00 00 01  	j	0x8000306c <.LBB1_9+0x8>

80003060 <.LBB1_8>:
80003060: 93 05 00 01  	addi	a1, zero, 16

80003064 <.LBB1_9>:
80003064: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80003068: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
8000306c: 03 45 fd ff  	lbu	a0, -1(s10)
80003070: 93 05 05 fe  	addi	a1, a0, -32
80003074: 63 ec bd 02  	bltu	s11, a1, 0x800030ac <.LBB1_15>
80003078: 93 95 25 00  	slli	a1, a1, 2

8000307c <.LBB1_184>:
8000307c: 17 26 00 00  	auipc	a2, 2
80003080: 13 06 86 20  	addi	a2, a2, 520
80003084: b3 85 c5 00  	add	a1, a1, a2
80003088: 03 a6 05 00  	lw	a2, 0(a1)
8000308c: 93 05 10 00  	addi	a1, zero, 1
80003090: 67 00 06 00  	jr	a2

80003094 <.LBB1_12>:
80003094: 93 05 80 00  	addi	a1, zero, 8
80003098: 6f f0 df fc  	j	0x80003064 <.LBB1_9>

8000309c <.LBB1_13>:
8000309c: 93 05 40 00  	addi	a1, zero, 4
800030a0: 6f f0 5f fc  	j	0x80003064 <.LBB1_9>

800030a4 <.LBB1_14>:
800030a4: 93 05 20 00  	addi	a1, zero, 2
800030a8: 6f f0 df fb  	j	0x80003064 <.LBB1_9>

800030ac <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800030ac: 93 05 05 fd  	addi	a1, a0, -48
800030b0: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800030b4: 93 05 fd ff  	addi	a1, s10, -1
800030b8: 93 06 90 00  	addi	a3, zero, 9
800030bc: 63 ee c6 06  	bltu	a3, a2, 0x80003138 <.LBB1_15+0x8c>
800030c0: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800030c4: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800030c8: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800030cc: b3 06 8b 03  	mul	a3, s6, s8
800030d0: 93 85 15 00  	addi	a1, a1, 1
800030d4: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800030d8: 93 06 05 fd  	addi	a3, a0, -48
800030dc: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800030e0: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800030e4: e3 e0 86 ff  	bltu	a3, s8, 0x800030c4 <.LBB1_15+0x18>
800030e8: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800030ec: 63 16 75 0b  	bne	a0, s7, 0x80003198 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
800030f0: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
800030f4: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
800030f8: 93 05 05 fd  	addi	a1, a0, -48
800030fc: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80003100: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80003104: 93 06 90 00  	addi	a3, zero, 9
80003108: 63 e0 c6 06  	bltu	a3, a2, 0x80003168 <.LBB1_15+0xbc>
8000310c: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003110: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003114: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003118: b3 86 8b 03  	mul	a3, s7, s8
8000311c: 93 85 15 00  	addi	a1, a1, 1
80003120: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003124: 93 06 05 fd  	addi	a3, a0, -48
80003128: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000312c: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80003130: e3 e0 86 ff  	bltu	a3, s8, 0x80003110 <.LBB1_15+0x64>
80003134: 6f 00 00 07  	j	0x800031a4 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80003138: 13 06 a0 02  	addi	a2, zero, 42
8000313c: 63 18 c5 04  	bne	a0, a2, 0x8000318c <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80003140: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80003144: 63 d4 05 00  	bgez	a1, 0x8000314c <.LBB1_15+0xa0>
80003148: 13 64 24 00  	ori	s0, s0, 2
8000314c: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80003150: 03 45 0d 00  	lbu	a0, 0(s10)
80003154: 13 d6 f5 41  	srai	a2, a1, 31
80003158: b3 85 c5 00  	add	a1, a1, a2
8000315c: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80003160: e3 08 75 f9  	beq	a0, s7, 0x800030f0 <.LBB1_15+0x44>
80003164: 6f 00 40 03  	j	0x80003198 <.LBB1_15+0xec>
;       else if (*format == '*') {
80003168: 13 06 a0 02  	addi	a2, zero, 42
8000316c: 63 1a c5 02  	bne	a0, a2, 0x800031a0 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80003170: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80003174: 63 44 70 01  	bgtz	s7, 0x8000317c <.LBB1_15+0xd0>
80003178: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
8000317c: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80003180: 13 0d 2d 00  	addi	s10, s10, 2
80003184: 93 89 49 00  	addi	s3, s3, 4
80003188: 6f 00 00 02  	j	0x800031a8 <.LBB1_15+0xfc>
8000318c: 13 0b 00 00  	mv	s6, zero
80003190: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003194: e3 0e 75 f5  	beq	a0, s7, 0x800030f0 <.LBB1_15+0x44>
80003198: 93 0b 00 00  	mv	s7, zero
8000319c: 6f 00 c0 00  	j	0x800031a8 <.LBB1_15+0xfc>
800031a0: 93 0b 00 00  	mv	s7, zero
800031a4: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800031a8: 93 05 85 f9  	addi	a1, a0, -104
800031ac: 13 d6 15 00  	srli	a2, a1, 1
800031b0: 93 95 f5 01  	slli	a1, a1, 31
800031b4: b3 e5 c5 00  	or	a1, a1, a2
800031b8: 13 06 90 00  	addi	a2, zero, 9
800031bc: 63 62 b6 06  	bltu	a2, a1, 0x80003220 <.LBB1_42>
800031c0: 93 95 25 00  	slli	a1, a1, 2

800031c4 <.LBB1_185>:
800031c4: 17 26 00 00  	auipc	a2, 2
800031c8: 13 06 46 10  	addi	a2, a2, 260
800031cc: b3 85 c5 00  	add	a1, a1, a2
800031d0: 83 a6 05 00  	lw	a3, 0(a1)
800031d4: 93 05 10 00  	addi	a1, zero, 1
800031d8: 13 06 00 10  	addi	a2, zero, 256
800031dc: 67 80 06 00  	jr	a3

800031e0 <.LBB1_36>:
;         if (*format == 'h') {
800031e0: 03 45 1d 00  	lbu	a0, 1(s10)
800031e4: 93 05 80 06  	addi	a1, zero, 104
800031e8: 63 12 b5 12  	bne	a0, a1, 0x8000330c <.LBB1_53+0x48>
800031ec: 93 05 20 00  	addi	a1, zero, 2
800031f0: 13 06 00 0c  	addi	a2, zero, 192
800031f4: 6f 00 00 02  	j	0x80003214 <.LBB1_41>

800031f8 <.LBB1_38>:
800031f8: 13 06 00 20  	addi	a2, zero, 512
800031fc: 6f 00 80 01  	j	0x80003214 <.LBB1_41>

80003200 <.LBB1_39>:
;         if (*format == 'l') {
80003200: 03 45 1d 00  	lbu	a0, 1(s10)
80003204: 93 05 c0 06  	addi	a1, zero, 108
80003208: 63 18 b5 10  	bne	a0, a1, 0x80003318 <.LBB1_53+0x54>
8000320c: 93 05 20 00  	addi	a1, zero, 2
80003210: 13 06 00 30  	addi	a2, zero, 768

80003214 <.LBB1_41>:
80003214: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80003218: 03 45 0d 00  	lbu	a0, 0(s10)
8000321c: 33 64 c4 00  	or	s0, s0, a2

80003220 <.LBB1_42>:
;     switch (*format) {
80003220: 93 05 b5 fd  	addi	a1, a0, -37
80003224: 13 06 30 05  	addi	a2, zero, 83
80003228: 63 64 b6 10  	bltu	a2, a1, 0x80003330 <.LBB1_59>
8000322c: 93 95 25 00  	slli	a1, a1, 2

80003230 <.LBB1_186>:
80003230: 17 26 00 00  	auipc	a2, 2
80003234: 13 06 06 0c  	addi	a2, a2, 192
80003238: b3 85 c5 00  	add	a1, a1, a2
8000323c: 03 a6 05 00  	lw	a2, 0(a1)
80003240: 93 05 80 00  	addi	a1, zero, 8
80003244: 13 0c 00 01  	addi	s8, zero, 16
80003248: 67 00 06 00  	jr	a2

8000324c <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
8000324c: 13 74 f4 fe  	andi	s0, s0, -17
80003250: 13 0c a0 00  	addi	s8, zero, 10

80003254 <.LBB1_45>:
;         if (*format == 'X') {
80003254: 93 05 80 05  	addi	a1, zero, 88
80003258: 63 14 b5 00  	bne	a0, a1, 0x80003260 <.LBB1_45+0xc>
8000325c: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80003260: 93 05 40 06  	addi	a1, zero, 100
80003264: 63 08 b5 0e  	beq	a0, a1, 0x80003354 <.LBB1_62+0x8>
80003268: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
8000326c: 13 06 90 06  	addi	a2, zero, 105
80003270: 63 02 c5 0e  	beq	a0, a2, 0x80003354 <.LBB1_62+0x8>
80003274: 6f 00 80 0d  	j	0x8000334c <.LBB1_62>

80003278 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80003278: 93 05 60 04  	addi	a1, zero, 70
8000327c: 63 14 b5 00  	bne	a0, a1, 0x80003284 <.LBB1_49+0xc>
80003280: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003284: 13 85 79 00  	addi	a0, s3, 7
80003288: 13 75 85 ff  	andi	a0, a0, -8
8000328c: 07 35 05 00  	fld	fa0, 0(a0)
80003290: 93 09 85 00  	addi	s3, a0, 8
80003294: 13 05 09 00  	mv	a0, s2
80003298: 93 05 0a 00  	mv	a1, s4
8000329c: 13 86 0c 00  	mv	a2, s9
800032a0: 93 86 0a 00  	mv	a3, s5
800032a4: 13 87 0b 00  	mv	a4, s7
800032a8: 93 07 0b 00  	mv	a5, s6
800032ac: 13 08 04 00  	mv	a6, s0
800032b0: 97 10 00 00  	auipc	ra, 1
800032b4: e7 80 80 98  	jalr	-1656(ra)
800032b8: 6f 00 00 7c  	j	0x80003a78 <.LBB1_124+0x2fc>

800032bc <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800032bc: 83 25 81 01  	lw	a1, 24(sp)
800032c0: 33 64 b4 00  	or	s0, s0, a1

800032c4 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800032c4: 13 65 25 00  	ori	a0, a0, 2
800032c8: 93 05 70 04  	addi	a1, zero, 71
800032cc: 63 14 b5 00  	bne	a0, a1, 0x800032d4 <.LBB1_53+0x10>
800032d0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800032d4: 13 85 79 00  	addi	a0, s3, 7
800032d8: 13 75 85 ff  	andi	a0, a0, -8
800032dc: 07 35 05 00  	fld	fa0, 0(a0)
800032e0: 93 09 85 00  	addi	s3, a0, 8
800032e4: 13 05 09 00  	mv	a0, s2
800032e8: 93 05 0a 00  	mv	a1, s4
800032ec: 13 86 0c 00  	mv	a2, s9
800032f0: 93 86 0a 00  	mv	a3, s5
800032f4: 13 87 0b 00  	mv	a4, s7
800032f8: 93 07 0b 00  	mv	a5, s6
800032fc: 13 08 04 00  	mv	a6, s0
80003300: 97 10 00 00  	auipc	ra, 1
80003304: e7 80 80 01  	jalr	24(ra)
80003308: 6f 00 00 77  	j	0x80003a78 <.LBB1_124+0x2fc>
8000330c: 13 64 04 08  	ori	s0, s0, 128
80003310: 13 0d 1d 00  	addi	s10, s10, 1
80003314: 6f f0 df f0  	j	0x80003220 <.LBB1_42>
80003318: 13 64 04 10  	ori	s0, s0, 256
8000331c: 13 0d 1d 00  	addi	s10, s10, 1
80003320: 6f f0 1f f0  	j	0x80003220 <.LBB1_42>

80003324 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003324: 13 8c 1c 00  	addi	s8, s9, 1
80003328: 13 05 50 02  	addi	a0, zero, 37
8000332c: 6f 00 80 00  	j	0x80003334 <.LBB1_59+0x4>

80003330 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80003330: 13 8c 1c 00  	addi	s8, s9, 1
80003334: 93 05 0a 00  	mv	a1, s4
80003338: 13 86 0c 00  	mv	a2, s9
8000333c: 93 86 0a 00  	mv	a3, s5
80003340: e7 00 09 00  	jalr	s2
80003344: 6f 00 80 73  	j	0x80003a7c <.LBB1_124+0x300>

80003348 <.LBB1_61>:
80003348: 93 05 20 00  	addi	a1, zero, 2

8000334c <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
8000334c: 13 74 34 ff  	andi	s0, s0, -13
80003350: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80003354: 93 75 04 40  	andi	a1, s0, 1024
80003358: 63 84 05 00  	beqz	a1, 0x80003360 <.LBB1_62+0x14>
8000335c: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80003360: 93 05 90 06  	addi	a1, zero, 105
80003364: 63 06 b5 00  	beq	a0, a1, 0x80003370 <.LBB1_62+0x24>
80003368: 93 05 40 06  	addi	a1, zero, 100
8000336c: 63 1c b5 12  	bne	a0, a1, 0x800034a4 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80003370: 13 75 04 20  	andi	a0, s0, 512
80003374: 63 16 05 02  	bnez	a0, 0x800033a0 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80003378: 13 75 04 10  	andi	a0, s0, 256
8000337c: 63 1c 05 14  	bnez	a0, 0x800034d4 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003380: 13 75 04 04  	andi	a0, s0, 64
80003384: 63 18 05 4e  	bnez	a0, 0x80003874 <.LBB1_124+0xf8>
80003388: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
8000338c: 93 75 04 08  	andi	a1, s0, 128
80003390: 63 84 05 4e  	beqz	a1, 0x80003878 <.LBB1_124+0xfc>
80003394: 13 15 08 01  	slli	a0, a6, 16
80003398: 13 58 05 41  	srai	a6, a0, 16
8000339c: 6f 00 c0 4d  	j	0x80003878 <.LBB1_124+0xfc>
800033a0: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800033a4: 13 85 79 00  	addi	a0, s3, 7
800033a8: 13 75 85 ff  	andi	a0, a0, -8
800033ac: 83 29 05 00  	lw	s3, 0(a0)
800033b0: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800033b4: 13 65 45 00  	ori	a0, a0, 4
800033b8: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800033bc: 23 24 a1 00  	sw	a0, 8(sp)
800033c0: 33 e5 a9 00  	or	a0, s3, a0
800033c4: 63 14 05 00  	bnez	a0, 0x800033cc <.LBB1_62+0x80>
800033c8: 13 74 f4 fe  	andi	s0, s0, -17
800033cc: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800033d0: 93 75 04 40  	andi	a1, s0, 1024
800033d4: 93 d5 a5 00  	srli	a1, a1, 10
800033d8: 33 75 b5 00  	and	a0, a0, a1
800033dc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800033e0: 63 14 05 0a  	bnez	a0, 0x80003488 <.LBB1_62+0x13c>
800033e4: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800033e8: 63 da 04 00  	bgez	s1, 0x800033fc <.LBB1_62+0xb0>
800033ec: 33 35 30 01  	snez	a0, s3
800033f0: b3 09 30 41  	neg	s3, s3
800033f4: 33 85 a4 00  	add	a0, s1, a0
800033f8: b3 04 a0 40  	neg	s1, a0
800033fc: 13 09 00 00  	mv	s2, zero
80003400: 13 75 04 02  	andi	a0, s0, 32
80003404: 13 45 15 06  	xori	a0, a0, 97
80003408: 13 05 65 0f  	addi	a0, a0, 246
8000340c: 23 2a a1 00  	sw	a0, 20(sp)
80003410: 6f 00 40 02  	j	0x80003434 <.LBB1_62+0xe8>
80003414: 13 06 10 00  	addi	a2, zero, 1
80003418: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000341c: 93 36 f9 01  	sltiu	a3, s2, 31
80003420: 33 f6 c6 00  	and	a2, a3, a2
80003424: 13 89 07 00  	mv	s2, a5
80003428: 93 09 05 00  	mv	s3, a0
8000342c: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003430: 63 0c 06 04  	beqz	a2, 0x80003488 <.LBB1_62+0x13c>
;       value /= base;
80003434: 13 85 09 00  	mv	a0, s3
80003438: 93 85 04 00  	mv	a1, s1
8000343c: 13 06 0c 00  	mv	a2, s8
80003440: 93 06 00 00  	mv	a3, zero
80003444: 97 d0 ff ff  	auipc	ra, 1048573
80003448: e7 80 c0 bb  	jalr	-1092(ra)
8000344c: 33 06 85 03  	mul	a2, a0, s8
80003450: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003454: 13 77 e6 0f  	andi	a4, a2, 254
80003458: 93 06 00 03  	addi	a3, zero, 48
8000345c: 93 07 a0 00  	addi	a5, zero, 10
80003460: 63 64 f7 00  	bltu	a4, a5, 0x80003468 <.LBB1_62+0x11c>
80003464: 83 26 41 01  	lw	a3, 20(sp)
80003468: 33 86 c6 00  	add	a2, a3, a2
8000346c: 93 06 c1 01  	addi	a3, sp, 28
80003470: b3 86 26 01  	add	a3, a3, s2
80003474: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003478: e3 9e 04 f8  	bnez	s1, 0x80003414 <.LBB1_62+0xc8>
8000347c: 33 b6 89 01  	sltu	a2, s3, s8
80003480: 13 46 16 00  	xori	a2, a2, 1
80003484: 6f f0 5f f9  	j	0x80003418 <.LBB1_62+0xcc>
80003488: 03 25 41 00  	lw	a0, 4(sp)
8000348c: 93 09 85 00  	addi	s3, a0, 8
80003490: 03 25 81 00  	lw	a0, 8(sp)
80003494: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003498: 13 07 c1 01  	addi	a4, sp, 28
8000349c: 03 29 c1 00  	lw	s2, 12(sp)
800034a0: 6f 00 80 47  	j	0x80003918 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
800034a4: 13 75 04 20  	andi	a0, s0, 512
800034a8: 63 12 05 0c  	bnez	a0, 0x8000356c <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800034ac: 13 75 04 10  	andi	a0, s0, 256
800034b0: 63 1e 05 46  	bnez	a0, 0x8000392c <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800034b4: 13 75 04 04  	andi	a0, s0, 64
800034b8: 63 10 05 50  	bnez	a0, 0x800039b8 <.LBB1_124+0x23c>
800034bc: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800034c0: 93 75 04 08  	andi	a1, s0, 128
800034c4: 63 8c 05 4e  	beqz	a1, 0x800039bc <.LBB1_124+0x240>
800034c8: 83 25 01 01  	lw	a1, 16(sp)
800034cc: 33 75 b5 00  	and	a0, a0, a1
800034d0: 6f 00 c0 4e  	j	0x800039bc <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800034d4: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800034d8: 63 14 08 00  	bnez	a6, 0x800034e0 <.LBB1_62+0x194>
800034dc: 13 74 f4 fe  	andi	s0, s0, -17
800034e0: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800034e4: 13 76 04 40  	andi	a2, s0, 1024
800034e8: 13 56 a6 00  	srli	a2, a2, 10
800034ec: b3 f5 c5 00  	and	a1, a1, a2
800034f0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800034f4: 63 9c 05 40  	bnez	a1, 0x8000390c <.LBB1_124+0x190>
800034f8: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800034fc: 13 56 f8 41  	srai	a2, a6, 31
80003500: b3 06 c8 00  	add	a3, a6, a2
80003504: b3 c6 c6 00  	xor	a3, a3, a2
80003508: 13 76 04 02  	andi	a2, s0, 32
8000350c: 13 46 16 06  	xori	a2, a2, 97
80003510: 93 08 66 0f  	addi	a7, a2, 246
80003514: 6f 00 40 03  	j	0x80003548 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003518: 33 05 f6 00  	add	a0, a2, a5
8000351c: 93 87 15 00  	addi	a5, a1, 1
80003520: 13 06 c1 01  	addi	a2, sp, 28
80003524: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003528: b3 b6 86 01  	sltu	a3, a3, s8
8000352c: 93 c6 16 00  	xori	a3, a3, 1
80003530: 93 b5 f5 01  	sltiu	a1, a1, 31
80003534: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003538: 23 00 a6 00  	sb	a0, 0(a2)
8000353c: 93 85 07 00  	mv	a1, a5
80003540: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003544: 63 84 04 3c  	beqz	s1, 0x8000390c <.LBB1_124+0x190>
;       value /= base;
80003548: 33 d7 86 03  	divu	a4, a3, s8
8000354c: 33 06 87 03  	mul	a2, a4, s8
80003550: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003554: 13 f5 e7 0f  	andi	a0, a5, 254
80003558: 13 06 00 03  	addi	a2, zero, 48
8000355c: 93 04 a0 00  	addi	s1, zero, 10
80003560: e3 6c 95 fa  	bltu	a0, s1, 0x80003518 <.LBB1_62+0x1cc>
80003564: 13 86 08 00  	mv	a2, a7
80003568: 6f f0 1f fb  	j	0x80003518 <.LBB1_62+0x1cc>
8000356c: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003570: 13 85 79 00  	addi	a0, s3, 7
80003574: 93 75 85 ff  	andi	a1, a0, -8
80003578: 03 a9 05 00  	lw	s2, 0(a1)
8000357c: 13 e5 45 00  	ori	a0, a1, 4
80003580: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80003584: 33 65 39 01  	or	a0, s2, s3
80003588: 23 24 b1 00  	sw	a1, 8(sp)
8000358c: 63 14 05 00  	bnez	a0, 0x80003594 <.LBB1_62+0x248>
80003590: 13 74 f4 fe  	andi	s0, s0, -17
80003594: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003598: 93 75 04 40  	andi	a1, s0, 1024
8000359c: 93 d5 a5 00  	srli	a1, a1, 10
800035a0: 33 75 b5 00  	and	a0, a0, a1
800035a4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800035a8: 63 18 05 08  	bnez	a0, 0x80003638 <.LBB1_62+0x2ec>
800035ac: 93 04 00 00  	mv	s1, zero
800035b0: 13 75 04 02  	andi	a0, s0, 32
800035b4: 13 45 15 06  	xori	a0, a0, 97
800035b8: 13 05 65 0f  	addi	a0, a0, 246
800035bc: 23 2a a1 00  	sw	a0, 20(sp)
800035c0: 6f 00 40 02  	j	0x800035e4 <.LBB1_62+0x298>
800035c4: 13 06 10 00  	addi	a2, zero, 1
800035c8: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800035cc: 93 b6 f4 01  	sltiu	a3, s1, 31
800035d0: 33 f6 c6 00  	and	a2, a3, a2
800035d4: 93 84 07 00  	mv	s1, a5
800035d8: 13 09 05 00  	mv	s2, a0
800035dc: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800035e0: 63 0c 06 04  	beqz	a2, 0x80003638 <.LBB1_62+0x2ec>
;       value /= base;
800035e4: 13 05 09 00  	mv	a0, s2
800035e8: 93 85 09 00  	mv	a1, s3
800035ec: 13 06 0c 00  	mv	a2, s8
800035f0: 93 06 00 00  	mv	a3, zero
800035f4: 97 d0 ff ff  	auipc	ra, 1048573
800035f8: e7 80 c0 a0  	jalr	-1524(ra)
800035fc: 33 06 85 03  	mul	a2, a0, s8
80003600: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003604: 13 77 e6 0f  	andi	a4, a2, 254
80003608: 93 06 00 03  	addi	a3, zero, 48
8000360c: 93 07 a0 00  	addi	a5, zero, 10
80003610: 63 64 f7 00  	bltu	a4, a5, 0x80003618 <.LBB1_62+0x2cc>
80003614: 83 26 41 01  	lw	a3, 20(sp)
80003618: 33 86 c6 00  	add	a2, a3, a2
8000361c: 93 06 c1 01  	addi	a3, sp, 28
80003620: b3 86 96 00  	add	a3, a3, s1
80003624: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003628: e3 9e 09 f8  	bnez	s3, 0x800035c4 <.LBB1_62+0x278>
8000362c: 33 36 89 01  	sltu	a2, s2, s8
80003630: 13 46 16 00  	xori	a2, a2, 1
80003634: 6f f0 5f f9  	j	0x800035c8 <.LBB1_62+0x27c>
80003638: 03 25 81 00  	lw	a0, 8(sp)
8000363c: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003640: 13 07 c1 01  	addi	a4, sp, 28
80003644: 03 29 c1 00  	lw	s2, 12(sp)
80003648: 6f 00 40 40  	j	0x80003a4c <.LBB1_124+0x2d0>

8000364c <.LBB1_108>:
8000364c: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003650: 13 79 24 00  	andi	s2, s0, 2
80003654: 93 04 10 00  	addi	s1, zero, 1
80003658: 63 1e 09 02  	bnez	s2, 0x80003694 <.LBB1_108+0x48>
8000365c: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003660: 63 6a 9b 02  	bltu	s6, s1, 0x80003694 <.LBB1_108+0x48>
80003664: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80003668: 13 0c fb ff  	addi	s8, s6, -1
8000366c: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003670: 33 86 8c 00  	add	a2, s9, s0
80003674: 13 05 00 02  	addi	a0, zero, 32
80003678: 93 05 0a 00  	mv	a1, s4
8000367c: 93 86 0a 00  	mv	a3, s5
80003680: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003684: 13 04 14 00  	addi	s0, s0, 1
80003688: e3 14 8c fe  	bne	s8, s0, 0x80003670 <.LBB1_108+0x24>
8000368c: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003690: b3 8c 8c 00  	add	s9, s9, s0
80003694: 03 c5 09 00  	lbu	a0, 0(s3)
80003698: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
8000369c: 93 89 49 00  	addi	s3, s3, 4
800036a0: 13 8c 1c 00  	addi	s8, s9, 1
800036a4: 93 05 0a 00  	mv	a1, s4
800036a8: 13 86 0c 00  	mv	a2, s9
800036ac: 93 86 0a 00  	mv	a3, s5
800036b0: 13 89 0b 00  	mv	s2, s7
800036b4: e7 80 0b 00  	jalr	s7
800036b8: 33 b5 64 01  	sltu	a0, s1, s6
800036bc: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800036c0: 33 65 a4 00  	or	a0, s0, a0
800036c4: 63 1c 05 3a  	bnez	a0, 0x80003a7c <.LBB1_124+0x300>
;           while (l++ < width) {
800036c8: 33 04 9b 40  	sub	s0, s6, s1
800036cc: 93 0b e0 02  	addi	s7, zero, 46
800036d0: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800036d4: 13 0c 1c 00  	addi	s8, s8, 1
800036d8: 13 05 00 02  	addi	a0, zero, 32
800036dc: 93 05 0a 00  	mv	a1, s4
800036e0: 93 86 0a 00  	mv	a3, s5
800036e4: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800036e8: 13 04 f4 ff  	addi	s0, s0, -1
800036ec: e3 12 04 fe  	bnez	s0, 0x800036d0 <.LBB1_108+0x84>
800036f0: 13 0b 50 02  	addi	s6, zero, 37
800036f4: 13 04 1d 00  	addi	s0, s10, 1
800036f8: 6f f0 df 91  	j	0x80003014 <.LBB1_183+0x30>

800036fc <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
800036fc: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003700: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003704: 63 14 05 00  	bnez	a0, 0x8000370c <.LBB1_117+0x10>
80003708: 93 fe fe fe  	andi	t4, t4, -17
8000370c: 93 04 a0 00  	addi	s1, zero, 10
80003710: 13 04 f0 00  	addi	s0, zero, 15
80003714: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003718: 13 f6 0e 40  	andi	a2, t4, 1024
8000371c: 13 56 a6 00  	srli	a2, a2, 10
80003720: b3 f5 c5 00  	and	a1, a1, a2
80003724: 93 07 00 00  	mv	a5, zero
80003728: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
8000372c: 63 98 05 10  	bnez	a1, 0x8000383c <.LBB1_124+0xc0>
80003730: 93 05 00 00  	mv	a1, zero
80003734: 6f 00 40 03  	j	0x80003768 <.LBB1_117+0x6c>
80003738: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000373c: 33 06 d6 00  	add	a2, a2, a3
80003740: 93 87 15 00  	addi	a5, a1, 1
80003744: 93 06 c1 01  	addi	a3, sp, 28
80003748: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000374c: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003750: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003754: 93 b5 f5 01  	sltiu	a1, a1, 31
80003758: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000375c: 23 80 c6 00  	sb	a2, 0(a3)
80003760: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003764: 63 0c 07 0c  	beqz	a4, 0x8000383c <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003768: 93 76 e5 00  	andi	a3, a0, 14
8000376c: 13 06 00 03  	addi	a2, zero, 48
80003770: e3 e4 96 fc  	bltu	a3, s1, 0x80003738 <.LBB1_117+0x3c>
80003774: 13 06 70 03  	addi	a2, zero, 55
80003778: 6f f0 1f fc  	j	0x80003738 <.LBB1_117+0x3c>

8000377c <.LBB1_124>:
;         const char* p = va_arg(va, char*);
8000377c: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003780: 03 c5 07 00  	lbu	a0, 0(a5)
80003784: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80003788: 63 0c 05 02  	beqz	a0, 0x800037c0 <.LBB1_124+0x44>
8000378c: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003790: 63 84 0b 00  	beqz	s7, 0x80003798 <.LBB1_124+0x1c>
80003794: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80003798: 93 85 f5 ff  	addi	a1, a1, -1
8000379c: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800037a0: 03 c7 16 00  	lbu	a4, 1(a3)
800037a4: 13 86 16 00  	addi	a2, a3, 1
800037a8: b3 36 e0 00  	snez	a3, a4
800037ac: 33 37 b0 00  	snez	a4, a1
800037b0: 33 77 d7 00  	and	a4, a4, a3
800037b4: 93 85 f5 ff  	addi	a1, a1, -1
800037b8: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800037bc: e3 12 07 fe  	bnez	a4, 0x800037a0 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800037c0: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800037c4: 93 75 04 40  	andi	a1, s0, 1024
800037c8: 93 b4 15 00  	seqz	s1, a1
800037cc: 23 2a c1 00  	sw	a2, 20(sp)
800037d0: b3 35 76 01  	sltu	a1, a2, s7
800037d4: b3 e5 b4 00  	or	a1, s1, a1
800037d8: 63 94 05 00  	bnez	a1, 0x800037e0 <.LBB1_124+0x64>
800037dc: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
800037e0: 93 75 24 00  	andi	a1, s0, 2
800037e4: 23 26 b1 00  	sw	a1, 12(sp)
800037e8: 63 96 05 2a  	bnez	a1, 0x80003a94 <.LBB1_124+0x318>
800037ec: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
800037f0: 63 fe 65 29  	bgeu	a1, s6, 0x80003a8c <.LBB1_124+0x310>
800037f4: 23 24 f1 00  	sw	a5, 8(sp)
800037f8: 13 04 00 00  	mv	s0, zero
800037fc: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003800: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003804: 33 86 8c 00  	add	a2, s9, s0
80003808: 13 05 00 02  	addi	a0, zero, 32
8000380c: 93 05 0a 00  	mv	a1, s4
80003810: 93 86 0a 00  	mv	a3, s5
80003814: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80003818: 13 04 14 00  	addi	s0, s0, 1
8000381c: e3 14 89 fe  	bne	s2, s0, 0x80003804 <.LBB1_124+0x88>
80003820: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003824: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80003828: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000382c: 23 2a b1 00  	sw	a1, 20(sp)
80003830: b3 8c 8c 00  	add	s9, s9, s0
80003834: 13 09 0c 00  	mv	s2, s8
80003838: 6f 00 c0 25  	j	0x80003a94 <.LBB1_124+0x318>
8000383c: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003840: 13 07 c1 01  	addi	a4, sp, 28
80003844: 93 08 00 01  	addi	a7, zero, 16
80003848: 13 0e 80 00  	addi	t3, zero, 8
8000384c: 13 05 09 00  	mv	a0, s2
80003850: 93 05 0a 00  	mv	a1, s4
80003854: 13 86 0c 00  	mv	a2, s9
80003858: 93 86 0a 00  	mv	a3, s5
8000385c: 13 08 00 00  	mv	a6, zero
80003860: 93 83 0b 00  	mv	t2, s7
80003864: 97 10 00 00  	auipc	ra, 1
80003868: e7 80 00 fa  	jalr	-96(ra)
8000386c: 13 0c 05 00  	mv	s8, a0
80003870: 6f 00 00 21  	j	0x80003a80 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003874: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80003878: 63 14 08 00  	bnez	a6, 0x80003880 <.LBB1_124+0x104>
8000387c: 13 74 f4 fe  	andi	s0, s0, -17
80003880: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003884: 13 76 04 40  	andi	a2, s0, 1024
80003888: 13 56 a6 00  	srli	a2, a2, 10
8000388c: b3 f5 c5 00  	and	a1, a1, a2
80003890: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003894: 63 9c 05 06  	bnez	a1, 0x8000390c <.LBB1_124+0x190>
80003898: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000389c: 13 56 f8 41  	srai	a2, a6, 31
800038a0: b3 06 c8 00  	add	a3, a6, a2
800038a4: b3 c6 c6 00  	xor	a3, a3, a2
800038a8: 13 76 04 02  	andi	a2, s0, 32
800038ac: 13 46 16 06  	xori	a2, a2, 97
800038b0: 93 08 66 0f  	addi	a7, a2, 246
800038b4: 6f 00 40 03  	j	0x800038e8 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800038b8: 33 05 f6 00  	add	a0, a2, a5
800038bc: 93 87 15 00  	addi	a5, a1, 1
800038c0: 13 06 c1 01  	addi	a2, sp, 28
800038c4: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800038c8: b3 b6 86 01  	sltu	a3, a3, s8
800038cc: 93 c6 16 00  	xori	a3, a3, 1
800038d0: 93 b5 f5 01  	sltiu	a1, a1, 31
800038d4: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800038d8: 23 00 a6 00  	sb	a0, 0(a2)
800038dc: 93 85 07 00  	mv	a1, a5
800038e0: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800038e4: 63 84 04 02  	beqz	s1, 0x8000390c <.LBB1_124+0x190>
;       value /= base;
800038e8: 33 d7 86 03  	divu	a4, a3, s8
800038ec: 33 06 87 03  	mul	a2, a4, s8
800038f0: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800038f4: 13 f5 e7 0f  	andi	a0, a5, 254
800038f8: 13 06 00 03  	addi	a2, zero, 48
800038fc: 93 04 a0 00  	addi	s1, zero, 10
80003900: e3 6c 95 fa  	bltu	a0, s1, 0x800038b8 <.LBB1_124+0x13c>
80003904: 13 86 08 00  	mv	a2, a7
80003908: 6f f0 1f fb  	j	0x800038b8 <.LBB1_124+0x13c>
8000390c: 93 89 49 00  	addi	s3, s3, 4
80003910: 13 58 f8 01  	srli	a6, a6, 31
80003914: 13 07 c1 01  	addi	a4, sp, 28
80003918: 13 05 09 00  	mv	a0, s2
8000391c: 93 05 0a 00  	mv	a1, s4
80003920: 13 86 0c 00  	mv	a2, s9
80003924: 93 86 0a 00  	mv	a3, s5
80003928: 6f 00 80 13  	j	0x80003a60 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
8000392c: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003930: 63 14 05 00  	bnez	a0, 0x80003938 <.LBB1_124+0x1bc>
80003934: 13 74 f4 fe  	andi	s0, s0, -17
80003938: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000393c: 13 76 04 40  	andi	a2, s0, 1024
80003940: 13 56 a6 00  	srli	a2, a2, 10
80003944: b3 f5 c5 00  	and	a1, a1, a2
80003948: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000394c: 63 9c 05 0e  	bnez	a1, 0x80003a44 <.LBB1_124+0x2c8>
80003950: 13 06 00 00  	mv	a2, zero
80003954: 93 75 04 02  	andi	a1, s0, 32
80003958: 93 c5 15 06  	xori	a1, a1, 97
8000395c: 13 88 65 0f  	addi	a6, a1, 246
80003960: 6f 00 40 03  	j	0x80003994 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003964: 33 87 e7 00  	add	a4, a5, a4
80003968: 93 07 16 00  	addi	a5, a2, 1
8000396c: 93 05 c1 01  	addi	a1, sp, 28
80003970: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003974: 33 35 85 01  	sltu	a0, a0, s8
80003978: 13 45 15 00  	xori	a0, a0, 1
8000397c: 13 36 f6 01  	sltiu	a2, a2, 31
80003980: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003984: 23 80 e4 00  	sb	a4, 0(s1)
80003988: 13 86 07 00  	mv	a2, a5
8000398c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003990: 63 8a 05 0a  	beqz	a1, 0x80003a44 <.LBB1_124+0x2c8>
;       value /= base;
80003994: b3 56 85 03  	divu	a3, a0, s8
80003998: 33 87 86 03  	mul	a4, a3, s8
8000399c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039a0: 93 74 e7 0f  	andi	s1, a4, 254
800039a4: 93 07 00 03  	addi	a5, zero, 48
800039a8: 93 05 a0 00  	addi	a1, zero, 10
800039ac: e3 ec b4 fa  	bltu	s1, a1, 0x80003964 <.LBB1_124+0x1e8>
800039b0: 93 07 08 00  	mv	a5, a6
800039b4: 6f f0 1f fb  	j	0x80003964 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800039b8: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800039bc: 63 14 05 00  	bnez	a0, 0x800039c4 <.LBB1_124+0x248>
800039c0: 13 74 f4 fe  	andi	s0, s0, -17
800039c4: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800039c8: 13 76 04 40  	andi	a2, s0, 1024
800039cc: 13 56 a6 00  	srli	a2, a2, 10
800039d0: b3 f5 c5 00  	and	a1, a1, a2
800039d4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800039d8: 63 96 05 06  	bnez	a1, 0x80003a44 <.LBB1_124+0x2c8>
800039dc: 13 06 00 00  	mv	a2, zero
800039e0: 93 75 04 02  	andi	a1, s0, 32
800039e4: 93 c5 15 06  	xori	a1, a1, 97
800039e8: 13 88 65 0f  	addi	a6, a1, 246
800039ec: 6f 00 40 03  	j	0x80003a20 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039f0: 33 87 e7 00  	add	a4, a5, a4
800039f4: 93 07 16 00  	addi	a5, a2, 1
800039f8: 93 05 c1 01  	addi	a1, sp, 28
800039fc: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a00: 33 35 85 01  	sltu	a0, a0, s8
80003a04: 13 45 15 00  	xori	a0, a0, 1
80003a08: 13 36 f6 01  	sltiu	a2, a2, 31
80003a0c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a10: 23 80 e4 00  	sb	a4, 0(s1)
80003a14: 13 86 07 00  	mv	a2, a5
80003a18: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a1c: 63 84 05 02  	beqz	a1, 0x80003a44 <.LBB1_124+0x2c8>
;       value /= base;
80003a20: b3 56 85 03  	divu	a3, a0, s8
80003a24: 33 87 86 03  	mul	a4, a3, s8
80003a28: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a2c: 93 74 e7 0f  	andi	s1, a4, 254
80003a30: 93 07 00 03  	addi	a5, zero, 48
80003a34: 93 05 a0 00  	addi	a1, zero, 10
80003a38: e3 ec b4 fa  	bltu	s1, a1, 0x800039f0 <.LBB1_124+0x274>
80003a3c: 93 07 08 00  	mv	a5, a6
80003a40: 6f f0 1f fb  	j	0x800039f0 <.LBB1_124+0x274>
80003a44: 93 89 49 00  	addi	s3, s3, 4
80003a48: 13 07 c1 01  	addi	a4, sp, 28
80003a4c: 13 05 09 00  	mv	a0, s2
80003a50: 93 05 0a 00  	mv	a1, s4
80003a54: 13 86 0c 00  	mv	a2, s9
80003a58: 93 86 0a 00  	mv	a3, s5
80003a5c: 13 08 00 00  	mv	a6, zero
80003a60: 93 08 0c 00  	mv	a7, s8
80003a64: 93 83 0b 00  	mv	t2, s7
80003a68: 13 0e 0b 00  	mv	t3, s6
80003a6c: 93 0e 04 00  	mv	t4, s0
80003a70: 97 10 00 00  	auipc	ra, 1
80003a74: e7 80 40 d9  	jalr	-620(ra)
80003a78: 13 0c 05 00  	mv	s8, a0
80003a7c: 13 0b 50 02  	addi	s6, zero, 37
80003a80: 93 0b e0 02  	addi	s7, zero, 46
80003a84: 13 04 1d 00  	addi	s0, s10, 1
80003a88: 6f f0 cf d8  	j	0x80003014 <.LBB1_183+0x30>
80003a8c: 93 85 15 00  	addi	a1, a1, 1
80003a90: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003a94: 63 00 05 04  	beqz	a0, 0x80003ad4 <.LBB1_124+0x358>
80003a98: 13 84 17 00  	addi	s0, a5, 1
80003a9c: 6f 00 00 03  	j	0x80003acc <.LBB1_124+0x350>
80003aa0: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80003aa4: 13 8c 1c 00  	addi	s8, s9, 1
80003aa8: 13 75 f5 0f  	andi	a0, a0, 255
80003aac: 93 05 0a 00  	mv	a1, s4
80003ab0: 13 86 0c 00  	mv	a2, s9
80003ab4: 93 86 0a 00  	mv	a3, s5
80003ab8: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003abc: 03 45 04 00  	lbu	a0, 0(s0)
80003ac0: 13 04 14 00  	addi	s0, s0, 1
80003ac4: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003ac8: 63 08 05 00  	beqz	a0, 0x80003ad8 <.LBB1_124+0x35c>
80003acc: e3 9c 04 fc  	bnez	s1, 0x80003aa4 <.LBB1_124+0x328>
80003ad0: e3 98 0b fc  	bnez	s7, 0x80003aa0 <.LBB1_124+0x324>
80003ad4: 13 8c 0c 00  	mv	s8, s9
80003ad8: 03 25 c1 00  	lw	a0, 12(sp)
80003adc: 13 35 15 00  	seqz	a0, a0
80003ae0: 03 26 41 01  	lw	a2, 20(sp)
80003ae4: b3 35 66 01  	sltu	a1, a2, s6
80003ae8: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80003aec: 33 65 b5 00  	or	a0, a0, a1
80003af0: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80003af4: e3 14 05 f8  	bnez	a0, 0x80003a7c <.LBB1_124+0x300>
;           while (l++ < width) {
80003af8: 33 04 cb 40  	sub	s0, s6, a2
80003afc: 93 0b e0 02  	addi	s7, zero, 46
80003b00: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003b04: 13 0c 1c 00  	addi	s8, s8, 1
80003b08: 13 05 00 02  	addi	a0, zero, 32
80003b0c: 93 05 0a 00  	mv	a1, s4
80003b10: 93 86 0a 00  	mv	a3, s5
80003b14: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003b18: 13 04 f4 ff  	addi	s0, s0, -1
80003b1c: e3 12 04 fe  	bnez	s0, 0x80003b00 <.LBB1_124+0x384>
80003b20: 13 0b 50 02  	addi	s6, zero, 37
80003b24: 13 04 1d 00  	addi	s0, s10, 1
80003b28: 6f f0 cf ce  	j	0x80003014 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003b2c: 13 86 0c 00  	mv	a2, s9
80003b30: 63 e4 5c 01  	bltu	s9, s5, 0x80003b38 <.LBB1_124+0x3bc>
80003b34: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003b38: 13 05 00 00  	mv	a0, zero
80003b3c: 93 05 0a 00  	mv	a1, s4
80003b40: 93 86 0a 00  	mv	a3, s5
80003b44: e7 00 09 00  	jalr	s2
;   return (int)idx;
80003b48: 13 85 0c 00  	mv	a0, s9
80003b4c: 83 2d c1 03  	lw	s11, 60(sp)
80003b50: 03 2d 01 04  	lw	s10, 64(sp)
80003b54: 83 2c 41 04  	lw	s9, 68(sp)
80003b58: 03 2c 81 04  	lw	s8, 72(sp)
80003b5c: 83 2b c1 04  	lw	s7, 76(sp)
80003b60: 03 2b 01 05  	lw	s6, 80(sp)
80003b64: 83 2a 41 05  	lw	s5, 84(sp)
80003b68: 03 2a 81 05  	lw	s4, 88(sp)
80003b6c: 83 29 c1 05  	lw	s3, 92(sp)
80003b70: 03 29 01 06  	lw	s2, 96(sp)
80003b74: 83 24 41 06  	lw	s1, 100(sp)
80003b78: 03 24 81 06  	lw	s0, 104(sp)
80003b7c: 83 20 c1 06  	lw	ra, 108(sp)
80003b80: 13 01 01 07  	addi	sp, sp, 112
80003b84: 67 80 00 00  	ret

80003b88 <_out_char.llvm.17592004524093383706>:
;   if (character) {
80003b88: 63 04 05 0a  	beqz	a0, 0x80003c30 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003b8c: f3 25 40 f1  	csrr	a1, mhartid
80003b90: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80003b94: 33 86 c5 02  	mul	a2, a1, a2

80003b98 <.LBB2_6>:
80003b98: 97 26 00 00  	auipc	a3, 2
80003b9c: 93 86 c6 a6  	addi	a3, a3, -1428
80003ba0: b3 05 d6 00  	add	a1, a2, a3
80003ba4: 03 a7 05 00  	lw	a4, 0(a1)
80003ba8: 93 07 17 00  	addi	a5, a4, 1
80003bac: 23 a0 f5 00  	sw	a5, 0(a1)
80003bb0: 33 87 e5 00  	add	a4, a1, a4
80003bb4: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80003bb8: 03 a7 05 00  	lw	a4, 0(a1)
80003bbc: 13 07 47 c0  	addi	a4, a4, -1020
80003bc0: 33 37 e0 00  	snez	a4, a4
80003bc4: 13 05 65 ff  	addi	a0, a0, -10
80003bc8: 33 35 a0 00  	snez	a0, a0
80003bcc: 33 75 e5 00  	and	a0, a0, a4
80003bd0: 63 10 05 06  	bnez	a0, 0x80003c30 <.LBB2_8+0x18>
80003bd4: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80003bd8: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003bdc: 23 26 05 00  	sw	zero, 12(a0)
80003be0: 93 06 00 04  	addi	a3, zero, 64
80003be4: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80003be8: 23 2a 05 00  	sw	zero, 20(a0)
80003bec: 93 06 10 00  	addi	a3, zero, 1
80003bf0: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80003bf4: 23 2e 05 00  	sw	zero, 28(a0)
80003bf8: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003bfc: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003c00: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003c04: 23 22 05 02  	sw	zero, 36(a0)
80003c08: 23 20 c5 02  	sw	a2, 32(a0)

80003c0c <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80003c0c: 17 25 00 00  	auipc	a0, 2
80003c10: 13 05 45 8b  	addi	a0, a0, -1868
80003c14: 23 20 d5 00  	sw	a3, 0(a0)

80003c18 <.LBB2_8>:
80003c18: 17 25 00 00  	auipc	a0, 2
80003c1c: 13 05 85 8e  	addi	a0, a0, -1816
;         while (fromhost == 0)
80003c20: 03 26 05 00  	lw	a2, 0(a0)
80003c24: e3 0e 06 fe  	beqz	a2, 0x80003c20 <.LBB2_8+0x8>
;         fromhost = 0;
80003c28: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80003c2c: 23 a0 05 00  	sw	zero, 0(a1)
; }
80003c30: 67 80 00 00  	ret

80003c34 <_out_null>:
; }
80003c34: 67 80 00 00  	ret

80003c38 <_ftoa>:
; {
80003c38: 13 01 01 f9  	addi	sp, sp, -112
80003c3c: 23 26 11 06  	sw	ra, 108(sp)
80003c40: 23 24 81 06  	sw	s0, 104(sp)
80003c44: 23 22 91 06  	sw	s1, 100(sp)
80003c48: 23 20 21 07  	sw	s2, 96(sp)
80003c4c: 23 2e 31 05  	sw	s3, 92(sp)
80003c50: 23 2c 41 05  	sw	s4, 88(sp)
80003c54: 23 2a 51 05  	sw	s5, 84(sp)
80003c58: 23 28 61 05  	sw	s6, 80(sp)
80003c5c: 23 26 71 05  	sw	s7, 76(sp)
80003c60: 23 24 81 05  	sw	s8, 72(sp)
80003c64: 23 22 91 05  	sw	s9, 68(sp)
80003c68: 23 20 a1 05  	sw	s10, 64(sp)
80003c6c: 27 3c 81 02  	fsd	fs0, 56(sp)
80003c70: 27 38 91 02  	fsd	fs1, 48(sp)
80003c74: 27 34 21 03  	fsd	fs2, 40(sp)

80003c78 <.LBB4_83>:
80003c78: 97 24 00 00  	auipc	s1, 2
80003c7c: 93 84 04 8e  	addi	s1, s1, -1824
80003c80: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80003c84: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80003c88: 93 0a 08 00  	mv	s5, a6
80003c8c: 13 89 07 00  	mv	s2, a5
80003c90: 93 89 06 00  	mv	s3, a3
80003c94: 13 0a 06 00  	mv	s4, a2
80003c98: 13 8b 05 00  	mv	s6, a1
80003c9c: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80003ca0: 63 98 04 0e  	bnez	s1, 0x80003d90 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003ca4: 13 f5 2a 00  	andi	a0, s5, 2
80003ca8: 93 f5 3a 00  	andi	a1, s5, 3
80003cac: b3 35 b0 00  	snez	a1, a1
80003cb0: 13 36 59 00  	sltiu	a2, s2, 5
80003cb4: b3 65 b6 00  	or	a1, a2, a1
80003cb8: 93 5c 15 00  	srli	s9, a0, 1
80003cbc: 13 04 0a 00  	mv	s0, s4
80003cc0: 63 96 05 02  	bnez	a1, 0x80003cec <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80003cc4: 93 04 c9 ff  	addi	s1, s2, -4
80003cc8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003ccc: 13 04 16 00  	addi	s0, a2, 1
80003cd0: 13 05 00 02  	addi	a0, zero, 32
80003cd4: 93 05 0b 00  	mv	a1, s6
80003cd8: 93 86 09 00  	mv	a3, s3
80003cdc: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003ce0: 93 84 f4 ff  	addi	s1, s1, -1
80003ce4: 13 06 04 00  	mv	a2, s0
80003ce8: e3 92 04 fe  	bnez	s1, 0x80003ccc <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80003cec: 93 04 14 00  	addi	s1, s0, 1
80003cf0: 13 05 d0 02  	addi	a0, zero, 45
80003cf4: 93 05 0b 00  	mv	a1, s6
80003cf8: 13 06 04 00  	mv	a2, s0
80003cfc: 93 86 09 00  	mv	a3, s3
80003d00: e7 80 0b 00  	jalr	s7
80003d04: 93 0a 24 00  	addi	s5, s0, 2
80003d08: 13 05 90 06  	addi	a0, zero, 105
80003d0c: 93 05 0b 00  	mv	a1, s6
80003d10: 13 86 04 00  	mv	a2, s1
80003d14: 93 86 09 00  	mv	a3, s3
80003d18: e7 80 0b 00  	jalr	s7
80003d1c: 13 0c 34 00  	addi	s8, s0, 3
80003d20: 13 05 e0 06  	addi	a0, zero, 110
80003d24: 93 05 0b 00  	mv	a1, s6
80003d28: 13 86 0a 00  	mv	a2, s5
80003d2c: 93 86 09 00  	mv	a3, s3
80003d30: e7 80 0b 00  	jalr	s7
80003d34: 93 04 44 00  	addi	s1, s0, 4
80003d38: 13 05 60 06  	addi	a0, zero, 102
80003d3c: 93 05 0b 00  	mv	a1, s6
80003d40: 13 06 0c 00  	mv	a2, s8
80003d44: 93 86 09 00  	mv	a3, s3
80003d48: e7 80 0b 00  	jalr	s7
80003d4c: 33 85 44 41  	sub	a0, s1, s4
80003d50: 33 35 25 01  	sltu	a0, a0, s2
80003d54: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003d58: 93 c5 1c 00  	xori	a1, s9, 1
80003d5c: 33 e5 a5 00  	or	a0, a1, a0
80003d60: 63 16 05 56  	bnez	a0, 0x800042cc <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003d64: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003d68: 13 84 14 00  	addi	s0, s1, 1
80003d6c: 13 05 00 02  	addi	a0, zero, 32
80003d70: 93 05 0b 00  	mv	a1, s6
80003d74: 13 86 04 00  	mv	a2, s1
80003d78: 93 86 09 00  	mv	a3, s3
80003d7c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003d80: 33 05 8a 00  	add	a0, s4, s0
80003d84: 93 04 04 00  	mv	s1, s0
80003d88: e3 60 25 ff  	bltu	a0, s2, 0x80003d68 <.LBB4_83+0xf0>
80003d8c: 6f 00 40 54  	j	0x800042d0 <.LBB4_90+0x378>
80003d90: 53 04 a5 22  	fmv.d	fs0, fa0

80003d94 <.LBB4_84>:
80003d94: 17 15 00 00  	auipc	a0, 1
80003d98: 13 05 c5 7c  	addi	a0, a0, 1996
80003d9c: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80003da0: 53 05 05 a2  	fle.d	a0, fa0, ft0
80003da4: 63 1e 05 00  	bnez	a0, 0x80003dc0 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003da8: 93 f5 4a 00  	andi	a1, s5, 4
80003dac: 13 b5 15 00  	seqz	a0, a1
80003db0: 63 82 05 06  	beqz	a1, 0x80003e14 <.LBB4_88>

80003db4 <.LBB4_85>:
80003db4: 17 1c 00 00  	auipc	s8, 1
80003db8: 13 0c cc 4a  	addi	s8, s8, 1196
80003dbc: 6f 00 00 06  	j	0x80003e1c <.LBB4_88+0x8>

80003dc0 <.LBB4_86>:
80003dc0: 17 15 00 00  	auipc	a0, 1
80003dc4: 13 05 85 7a  	addi	a0, a0, 1960
80003dc8: 07 30 05 00  	fld	ft0, 0(a0)

80003dcc <.LBB4_87>:
80003dcc: 17 15 00 00  	auipc	a0, 1
80003dd0: 13 05 45 7a  	addi	a0, a0, 1956
80003dd4: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80003dd8: 53 05 04 a2  	fle.d	a0, fs0, ft0
80003ddc: d3 85 80 a2  	fle.d	a1, ft1, fs0
80003de0: 33 75 b5 00  	and	a0, a0, a1
80003de4: 63 1e 05 0e  	bnez	a0, 0x80003ee0 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80003de8: 13 85 0b 00  	mv	a0, s7
80003dec: 93 05 0b 00  	mv	a1, s6
80003df0: 13 06 0a 00  	mv	a2, s4
80003df4: 93 86 09 00  	mv	a3, s3
80003df8: 53 05 84 22  	fmv.d	fa0, fs0
80003dfc: 93 07 09 00  	mv	a5, s2
80003e00: 13 88 0a 00  	mv	a6, s5
80003e04: 97 00 00 00  	auipc	ra, 0
80003e08: e7 80 40 51  	jalr	1300(ra)
80003e0c: 13 04 05 00  	mv	s0, a0
80003e10: 6f 00 00 4c  	j	0x800042d0 <.LBB4_90+0x378>

80003e14 <.LBB4_88>:
80003e14: 17 1c 00 00  	auipc	s8, 1
80003e18: 13 0c bc 46  	addi	s8, s8, 1131
80003e1c: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003e20: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003e24: 13 f5 3a 00  	andi	a0, s5, 3
80003e28: 33 35 a0 00  	snez	a0, a0
80003e2c: b3 b5 2c 01  	sltu	a1, s9, s2
80003e30: 93 c5 15 00  	xori	a1, a1, 1
80003e34: 33 65 b5 00  	or	a0, a0, a1
80003e38: 93 fa 2a 00  	andi	s5, s5, 2
80003e3c: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003e40: 63 16 05 02  	bnez	a0, 0x80003e6c <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80003e44: 33 04 99 41  	sub	s0, s2, s9
80003e48: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003e4c: 93 04 16 00  	addi	s1, a2, 1
80003e50: 13 05 00 02  	addi	a0, zero, 32
80003e54: 93 05 0b 00  	mv	a1, s6
80003e58: 93 86 09 00  	mv	a3, s3
80003e5c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003e60: 13 04 f4 ff  	addi	s0, s0, -1
80003e64: 13 86 04 00  	mv	a2, s1
80003e68: e3 12 04 fe  	bnez	s0, 0x80003e4c <.LBB4_88+0x38>
80003e6c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003e70: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003e74: 33 05 9c 01  	add	a0, s8, s9
80003e78: 03 45 05 00  	lbu	a0, 0(a0)
80003e7c: 13 86 04 00  	mv	a2, s1
80003e80: 13 84 fc ff  	addi	s0, s9, -1
80003e84: 93 84 14 00  	addi	s1, s1, 1
80003e88: 93 05 0b 00  	mv	a1, s6
80003e8c: 93 86 09 00  	mv	a3, s3
80003e90: e7 80 0b 00  	jalr	s7
80003e94: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80003e98: e3 1e 04 fc  	bnez	s0, 0x80003e74 <.LBB4_88+0x60>
80003e9c: 33 85 44 41  	sub	a0, s1, s4
80003ea0: 33 35 25 01  	sltu	a0, a0, s2
80003ea4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003ea8: 93 c5 1a 00  	xori	a1, s5, 1
80003eac: 33 e5 a5 00  	or	a0, a1, a0
80003eb0: 63 1e 05 40  	bnez	a0, 0x800042cc <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003eb4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003eb8: 13 84 14 00  	addi	s0, s1, 1
80003ebc: 13 05 00 02  	addi	a0, zero, 32
80003ec0: 93 05 0b 00  	mv	a1, s6
80003ec4: 13 86 04 00  	mv	a2, s1
80003ec8: 93 86 09 00  	mv	a3, s3
80003ecc: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003ed0: 33 05 8a 00  	add	a0, s4, s0
80003ed4: 93 04 04 00  	mv	s1, s0
80003ed8: e3 60 25 ff  	bltu	a0, s2, 0x80003eb8 <.LBB4_88+0xa4>
80003edc: 6f 00 40 3f  	j	0x800042d0 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80003ee0: 13 f5 0a 40  	andi	a0, s5, 1024
80003ee4: 13 0c 60 00  	addi	s8, zero, 6
80003ee8: 63 04 05 00  	beqz	a0, 0x80003ef0 <.LBB4_88+0xdc>
80003eec: 13 0c 07 00  	mv	s8, a4
80003ef0: 13 05 a0 00  	addi	a0, zero, 10
80003ef4: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003ef8: 63 6c ac 02  	bltu	s8, a0, 0x80003f30 <.LBB4_88+0x11c>
80003efc: 93 04 6c ff  	addi	s1, s8, -10
80003f00: 13 05 f0 01  	addi	a0, zero, 31
80003f04: 63 e4 a4 00  	bltu	s1, a0, 0x80003f0c <.LBB4_88+0xf8>
80003f08: 93 04 f0 01  	addi	s1, zero, 31
80003f0c: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80003f10: 13 05 81 00  	addi	a0, sp, 8
80003f14: 93 05 00 03  	addi	a1, zero, 48
80003f18: 13 06 04 00  	mv	a2, s0
80003f1c: 97 c0 ff ff  	auipc	ra, 1048572
80003f20: e7 80 c0 63  	jalr	1596(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003f24: 13 c5 f4 ff  	not	a0, s1
80003f28: 33 0c ac 00  	add	s8, s8, a0
80003f2c: 6f 00 80 00  	j	0x80003f34 <.LBB4_88+0x120>
80003f30: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80003f34: 13 15 3c 00  	slli	a0, s8, 3

80003f38 <.LBB4_89>:
80003f38: 97 15 00 00  	auipc	a1, 1
80003f3c: 93 85 85 50  	addi	a1, a1, 1288
80003f40: 33 05 b5 00  	add	a0, a0, a1
80003f44: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80003f48: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80003f4c: 53 80 04 d2  	fcvt.d.w	ft0, s1
80003f50: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80003f54: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80003f58 <.LBB4_90>:
80003f58: 17 15 00 00  	auipc	a0, 1
80003f5c: 13 05 05 62  	addi	a0, a0, 1568
80003f60: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80003f64: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80003f68: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80003f6c: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80003f70: d3 05 01 a2  	fle.d	a1, ft2, ft0
80003f74: 63 90 05 02  	bnez	a1, 0x80003f94 <.LBB4_90+0x3c>
;     ++frac;
80003f78: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80003f7c: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80003f80: d3 15 11 a2  	flt.d	a1, ft2, ft1
80003f84: 63 94 05 02  	bnez	a1, 0x80003fac <.LBB4_90+0x54>
80003f88: 13 05 00 00  	mv	a0, zero
;       ++whole;
80003f8c: 93 84 14 00  	addi	s1, s1, 1
80003f90: 6f 00 c0 01  	j	0x80003fac <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80003f94: d3 15 01 a2  	flt.d	a1, ft2, ft0
80003f98: 63 9a 05 00  	bnez	a1, 0x80003fac <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80003f9c: 93 35 15 00  	seqz	a1, a0
80003fa0: 13 76 15 00  	andi	a2, a0, 1
80003fa4: b3 65 b6 00  	or	a1, a2, a1
80003fa8: 33 85 a5 00  	add	a0, a1, a0
80003fac: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80003fb0: 63 0c 0c 0c  	beqz	s8, 0x80004088 <.LBB4_90+0x130>
80003fb4: 13 06 00 00  	mv	a2, zero
80003fb8: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003fbc: 33 83 85 00  	add	t1, a1, s0
80003fc0: 93 02 00 02  	addi	t0, zero, 32
80003fc4: 33 87 82 40  	sub	a4, t0, s0
80003fc8: b7 d5 cc cc  	lui	a1, 838861
80003fcc: 93 83 d5 cc  	addi	t2, a1, -819
80003fd0: 13 08 a0 00  	addi	a6, zero, 10
80003fd4: 93 08 90 00  	addi	a7, zero, 9
80003fd8: 63 04 c7 0c  	beq	a4, a2, 0x800040a0 <.LBB4_90+0x148>
80003fdc: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80003fe0: 33 35 75 02  	mulhu	a0, a0, t2
80003fe4: 13 55 35 00  	srli	a0, a0, 3
80003fe8: b3 06 05 03  	mul	a3, a0, a6
80003fec: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80003ff0: 93 e6 06 03  	ori	a3, a3, 48
80003ff4: b3 07 c3 00  	add	a5, t1, a2
80003ff8: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80003ffc: 13 06 16 00  	addi	a2, a2, 1
80004000: e3 ec b8 fc  	bltu	a7, a1, 0x80003fd8 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004004: 33 05 c4 00  	add	a0, s0, a2
80004008: 93 05 f5 ff  	addi	a1, a0, -1
8000400c: 93 06 e0 01  	addi	a3, zero, 30
80004010: b3 b6 b6 00  	sltu	a3, a3, a1
80004014: 33 47 cc 00  	xor	a4, s8, a2
80004018: 13 37 17 00  	seqz	a4, a4
8000401c: b3 e6 e6 00  	or	a3, a3, a4
80004020: 63 94 06 08  	bnez	a3, 0x800040a8 <.LBB4_90+0x150>
80004024: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004028: 33 05 85 00  	add	a0, a0, s0
8000402c: 93 45 f6 ff  	not	a1, a2
80004030: 33 8c 85 01  	add	s8, a1, s8
80004034: 33 04 c4 00  	add	s0, s0, a2
80004038: 93 05 f0 01  	addi	a1, zero, 31
8000403c: b3 86 85 40  	sub	a3, a1, s0
80004040: 33 05 c5 00  	add	a0, a0, a2
80004044: 93 05 0c 00  	mv	a1, s8
80004048: 63 64 dc 00  	bltu	s8, a3, 0x80004050 <.LBB4_90+0xf8>
8000404c: 93 85 06 00  	mv	a1, a3
80004050: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004054: 93 05 00 03  	addi	a1, zero, 48
80004058: 97 c0 ff ff  	auipc	ra, 1048572
8000405c: e7 80 00 50  	jalr	1280(ra)
80004060: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004064: b3 05 a4 00  	add	a1, s0, a0
80004068: 93 b5 f5 01  	sltiu	a1, a1, 31
8000406c: 33 46 ac 00  	xor	a2, s8, a0
80004070: 33 36 c0 00  	snez	a2, a2
80004074: 33 f6 c5 00  	and	a2, a1, a2
80004078: 13 05 15 00  	addi	a0, a0, 1
8000407c: e3 14 06 fe  	bnez	a2, 0x80004064 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004080: 33 05 a4 00  	add	a0, s0, a0
80004084: 6f 00 80 02  	j	0x800040ac <.LBB4_90+0x154>
;     diff = value - (double)whole;
80004088: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000408c: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004090: 53 05 10 a2  	fle.d	a0, ft0, ft1
80004094: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004098: b3 84 a4 00  	add	s1, s1, a0
8000409c: 6f 00 c0 03  	j	0x800040d8 <.LBB4_90+0x180>
800040a0: 13 04 00 02  	addi	s0, zero, 32
800040a4: 6f 00 80 03  	j	0x800040dc <.LBB4_90+0x184>
800040a8: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800040ac: 63 8e 05 00  	beqz	a1, 0x800040c8 <.LBB4_90+0x170>
;       buf[len++] = '.';
800040b0: 13 04 15 00  	addi	s0, a0, 1
800040b4: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
800040b8: 33 85 a5 00  	add	a0, a1, a0
800040bc: 93 05 e0 02  	addi	a1, zero, 46
800040c0: 23 00 b5 00  	sb	a1, 0(a0)
800040c4: 6f 00 80 00  	j	0x800040cc <.LBB4_90+0x174>
800040c8: 13 04 05 00  	mv	s0, a0
800040cc: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800040d0: 93 02 04 00  	mv	t0, s0
800040d4: 63 64 85 00  	bltu	a0, s0, 0x800040dc <.LBB4_90+0x184>
800040d8: 93 02 00 02  	addi	t0, zero, 32
800040dc: d3 1c 94 a2  	flt.d	s9, fs0, fs1
800040e0: 37 65 66 66  	lui	a0, 419430
800040e4: 93 05 75 66  	addi	a1, a0, 1639
800040e8: 13 08 a0 00  	addi	a6, zero, 10
800040ec: 93 06 81 00  	addi	a3, sp, 8
800040f0: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800040f4: 63 80 82 04  	beq	t0, s0, 0x80004134 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
800040f8: 33 95 b4 02  	mulh	a0, s1, a1
800040fc: 93 57 f5 01  	srli	a5, a0, 31
80004100: 13 55 25 40  	srai	a0, a0, 2
80004104: 33 05 f5 00  	add	a0, a0, a5
80004108: b3 07 05 03  	mul	a5, a0, a6
8000410c: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004110: 93 87 07 03  	addi	a5, a5, 48
80004114: 13 0c 14 00  	addi	s8, s0, 1
80004118: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
8000411c: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80004120: 23 00 f4 00  	sb	a5, 0(s0)
80004124: 13 04 0c 00  	mv	s0, s8
80004128: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
8000412c: e3 64 c7 fc  	bltu	a4, a2, 0x800040f4 <.LBB4_90+0x19c>
80004130: 6f 00 80 00  	j	0x80004138 <.LBB4_90+0x1e0>
80004134: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004138: 93 f4 3a 00  	andi	s1, s5, 3
8000413c: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004140: 63 96 a4 06  	bne	s1, a0, 0x800041ac <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004144: 63 0c 09 00  	beqz	s2, 0x8000415c <.LBB4_90+0x204>
80004148: 13 f5 ca 00  	andi	a0, s5, 12
8000414c: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004150: 33 e5 ac 00  	or	a0, s9, a0
80004154: 33 09 a9 40  	sub	s2, s2, a0
80004158: 6f 00 80 00  	j	0x80004160 <.LBB4_90+0x208>
8000415c: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004160: 33 35 2c 01  	sltu	a0, s8, s2
80004164: 93 45 15 00  	xori	a1, a0, 1
80004168: 13 05 f0 01  	addi	a0, zero, 31
8000416c: 33 36 85 01  	sltu	a2, a0, s8
80004170: b3 65 b6 00  	or	a1, a2, a1
80004174: 63 9c 05 02  	bnez	a1, 0x800041ac <.LBB4_90+0x254>
80004178: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000417c: 93 45 fc ff  	not	a1, s8
80004180: b3 05 b9 00  	add	a1, s2, a1
80004184: 33 06 85 41  	sub	a2, a0, s8
80004188: 33 85 86 01  	add	a0, a3, s8
8000418c: 63 e4 c5 00  	bltu	a1, a2, 0x80004194 <.LBB4_90+0x23c>
80004190: 93 05 06 00  	mv	a1, a2
80004194: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80004198: 93 05 00 03  	addi	a1, zero, 48
8000419c: 13 06 04 00  	mv	a2, s0
800041a0: 97 c0 ff ff  	auipc	ra, 1048572
800041a4: e7 80 80 3b  	jalr	952(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800041a8: 33 0c 84 01  	add	s8, s0, s8
800041ac: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800041b0: 63 6a 85 05  	bltu	a0, s8, 0x80004204 <.LBB4_90+0x2ac>
;     if (negative) {
800041b4: 63 8c 0c 00  	beqz	s9, 0x800041cc <.LBB4_90+0x274>
800041b8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800041bc: 33 05 85 01  	add	a0, a0, s8
800041c0: 13 0c 1c 00  	addi	s8, s8, 1
800041c4: 93 05 d0 02  	addi	a1, zero, 45
800041c8: 6f 00 80 03  	j	0x80004200 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800041cc: 13 f5 4a 00  	andi	a0, s5, 4
800041d0: 63 10 05 02  	bnez	a0, 0x800041f0 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800041d4: 13 f5 8a 00  	andi	a0, s5, 8
800041d8: 63 06 05 02  	beqz	a0, 0x80004204 <.LBB4_90+0x2ac>
800041dc: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800041e0: 33 05 85 01  	add	a0, a0, s8
800041e4: 13 0c 1c 00  	addi	s8, s8, 1
800041e8: 93 05 00 02  	addi	a1, zero, 32
800041ec: 6f 00 40 01  	j	0x80004200 <.LBB4_90+0x2a8>
800041f0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
800041f4: 33 05 85 01  	add	a0, a0, s8
800041f8: 13 0c 1c 00  	addi	s8, s8, 1
800041fc: 93 05 b0 02  	addi	a1, zero, 43
80004200: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004204: 33 35 90 00  	snez	a0, s1
80004208: b3 35 2c 01  	sltu	a1, s8, s2
8000420c: 93 c5 15 00  	xori	a1, a1, 1
80004210: 33 65 b5 00  	or	a0, a0, a1
80004214: 93 fa 2a 00  	andi	s5, s5, 2
80004218: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000421c: 63 16 05 02  	bnez	a0, 0x80004248 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004220: b3 04 89 41  	sub	s1, s2, s8
80004224: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004228: 13 04 16 00  	addi	s0, a2, 1
8000422c: 13 05 00 02  	addi	a0, zero, 32
80004230: 93 05 0b 00  	mv	a1, s6
80004234: 93 86 09 00  	mv	a3, s3
80004238: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
8000423c: 93 84 f4 ff  	addi	s1, s1, -1
80004240: 13 06 04 00  	mv	a2, s0
80004244: e3 92 04 fe  	bnez	s1, 0x80004228 <.LBB4_90+0x2d0>
80004248: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
8000424c: 63 0c 0c 02  	beqz	s8, 0x80004284 <.LBB4_90+0x32c>
80004250: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80004254: 33 85 8c 01  	add	a0, s9, s8
80004258: 03 45 05 00  	lbu	a0, 0(a0)
8000425c: 13 0d fc ff  	addi	s10, s8, -1
80004260: 93 04 14 00  	addi	s1, s0, 1
80004264: 93 05 0b 00  	mv	a1, s6
80004268: 13 06 04 00  	mv	a2, s0
8000426c: 93 86 09 00  	mv	a3, s3
80004270: e7 80 0b 00  	jalr	s7
80004274: 13 84 04 00  	mv	s0, s1
80004278: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
8000427c: e3 1c 0d fc  	bnez	s10, 0x80004254 <.LBB4_90+0x2fc>
80004280: 6f 00 80 00  	j	0x80004288 <.LBB4_90+0x330>
80004284: 93 04 04 00  	mv	s1, s0
80004288: 33 85 44 41  	sub	a0, s1, s4
8000428c: 33 35 25 01  	sltu	a0, a0, s2
80004290: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004294: 93 c5 1a 00  	xori	a1, s5, 1
80004298: 33 e5 a5 00  	or	a0, a1, a0
8000429c: 63 18 05 02  	bnez	a0, 0x800042cc <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800042a0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800042a4: 13 84 14 00  	addi	s0, s1, 1
800042a8: 13 05 00 02  	addi	a0, zero, 32
800042ac: 93 05 0b 00  	mv	a1, s6
800042b0: 13 86 04 00  	mv	a2, s1
800042b4: 93 86 09 00  	mv	a3, s3
800042b8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800042bc: 33 05 8a 00  	add	a0, s4, s0
800042c0: 93 04 04 00  	mv	s1, s0
800042c4: e3 60 25 ff  	bltu	a0, s2, 0x800042a4 <.LBB4_90+0x34c>
800042c8: 6f 00 80 00  	j	0x800042d0 <.LBB4_90+0x378>
800042cc: 13 84 04 00  	mv	s0, s1
; }
800042d0: 13 05 04 00  	mv	a0, s0
800042d4: 07 39 81 02  	fld	fs2, 40(sp)
800042d8: 87 34 01 03  	fld	fs1, 48(sp)
800042dc: 07 34 81 03  	fld	fs0, 56(sp)
800042e0: 03 2d 01 04  	lw	s10, 64(sp)
800042e4: 83 2c 41 04  	lw	s9, 68(sp)
800042e8: 03 2c 81 04  	lw	s8, 72(sp)
800042ec: 83 2b c1 04  	lw	s7, 76(sp)
800042f0: 03 2b 01 05  	lw	s6, 80(sp)
800042f4: 83 2a 41 05  	lw	s5, 84(sp)
800042f8: 03 2a 81 05  	lw	s4, 88(sp)
800042fc: 83 29 c1 05  	lw	s3, 92(sp)
80004300: 03 29 01 06  	lw	s2, 96(sp)
80004304: 83 24 41 06  	lw	s1, 100(sp)
80004308: 03 24 81 06  	lw	s0, 104(sp)
8000430c: 83 20 c1 06  	lw	ra, 108(sp)
80004310: 13 01 01 07  	addi	sp, sp, 112
80004314: 67 80 00 00  	ret

80004318 <_etoa>:
; {
80004318: 13 01 01 f8  	addi	sp, sp, -128
8000431c: 23 2e 11 06  	sw	ra, 124(sp)
80004320: 23 2c 81 06  	sw	s0, 120(sp)
80004324: 23 2a 91 06  	sw	s1, 116(sp)
80004328: 23 28 21 07  	sw	s2, 112(sp)
8000432c: 23 26 31 07  	sw	s3, 108(sp)
80004330: 23 24 41 07  	sw	s4, 104(sp)
80004334: 23 22 51 07  	sw	s5, 100(sp)
80004338: 23 20 61 07  	sw	s6, 96(sp)
8000433c: 23 2e 71 05  	sw	s7, 92(sp)
80004340: 23 2c 81 05  	sw	s8, 88(sp)
80004344: 23 2a 91 05  	sw	s9, 84(sp)
80004348: 23 28 a1 05  	sw	s10, 80(sp)
8000434c: 23 26 b1 05  	sw	s11, 76(sp)

80004350 <.LBB5_43>:
80004350: 97 14 00 00  	auipc	s1, 1
80004354: 93 84 04 23  	addi	s1, s1, 560
80004358: 87 b0 04 00  	fld	ft1, 0(s1)

8000435c <.LBB5_44>:
8000435c: 97 14 00 00  	auipc	s1, 1
80004360: 93 84 c4 22  	addi	s1, s1, 556
80004364: 07 b1 04 00  	fld	ft2, 0(s1)
80004368: 53 00 a5 22  	fmv.d	ft0, fa0
8000436c: d3 04 15 a2  	fle.d	s1, fa0, ft1
80004370: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004374: b3 f4 84 00  	and	s1, s1, s0
80004378: 93 0a 08 00  	mv	s5, a6
8000437c: 13 89 07 00  	mv	s2, a5
80004380: 93 07 07 00  	mv	a5, a4
80004384: 93 89 06 00  	mv	s3, a3
80004388: 13 0a 06 00  	mv	s4, a2
8000438c: 13 8b 05 00  	mv	s6, a1
80004390: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004394: 63 92 04 06  	bnez	s1, 0x800043f8 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004398: 13 85 0b 00  	mv	a0, s7
8000439c: 93 05 0b 00  	mv	a1, s6
800043a0: 13 06 0a 00  	mv	a2, s4
800043a4: 93 86 09 00  	mv	a3, s3
800043a8: 53 05 00 22  	fmv.d	fa0, ft0
800043ac: 13 87 07 00  	mv	a4, a5
800043b0: 93 07 09 00  	mv	a5, s2
800043b4: 13 88 0a 00  	mv	a6, s5
800043b8: 83 2d c1 04  	lw	s11, 76(sp)
800043bc: 03 2d 01 05  	lw	s10, 80(sp)
800043c0: 83 2c 41 05  	lw	s9, 84(sp)
800043c4: 03 2c 81 05  	lw	s8, 88(sp)
800043c8: 83 2b c1 05  	lw	s7, 92(sp)
800043cc: 03 2b 01 06  	lw	s6, 96(sp)
800043d0: 83 2a 41 06  	lw	s5, 100(sp)
800043d4: 03 2a 81 06  	lw	s4, 104(sp)
800043d8: 83 29 c1 06  	lw	s3, 108(sp)
800043dc: 03 29 01 07  	lw	s2, 112(sp)
800043e0: 83 24 41 07  	lw	s1, 116(sp)
800043e4: 03 24 81 07  	lw	s0, 120(sp)
800043e8: 83 20 c1 07  	lw	ra, 124(sp)
800043ec: 13 01 01 08  	addi	sp, sp, 128
800043f0: 17 03 00 00  	auipc	t1, 0
800043f4: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
800043f8: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
800043fc: 13 f5 0a 40  	andi	a0, s5, 1024
80004400: 13 07 60 00  	addi	a4, zero, 6
80004404: 63 04 05 00  	beqz	a0, 0x8000440c <.LBB5_44+0xb0>
80004408: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
8000440c: 27 30 a1 02  	fsd	fa0, 32(sp)
80004410: 83 25 41 02  	lw	a1, 36(sp)
80004414: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004418: 93 d6 45 01  	srli	a3, a1, 20
8000441c: b7 07 10 00  	lui	a5, 256
80004420: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004424: b3 f5 f5 00  	and	a1, a1, a5
80004428: 23 2c c1 00  	sw	a2, 24(sp)
8000442c: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004430: b3 e5 c5 00  	or	a1, a1, a2
80004434: 23 2e b1 00  	sw	a1, 28(sp)
80004438: 87 30 81 01  	fld	ft1, 24(sp)

8000443c <.LBB5_45>:
8000443c: 97 15 00 00  	auipc	a1, 1
80004440: 93 85 45 15  	addi	a1, a1, 340
80004444: 07 b1 05 00  	fld	ft2, 0(a1)

80004448 <.LBB5_46>:
80004448: 97 15 00 00  	auipc	a1, 1
8000444c: 93 85 05 15  	addi	a1, a1, 336
80004450: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004454: 93 f5 f6 7f  	andi	a1, a3, 2047
80004458: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000445c: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004460: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80004464 <.LBB5_47>:
80004464: 97 15 00 00  	auipc	a1, 1
80004468: 93 85 c5 13  	addi	a1, a1, 316
8000446c: 07 b1 05 00  	fld	ft2, 0(a1)

80004470 <.LBB5_48>:
80004470: 97 15 00 00  	auipc	a1, 1
80004474: 93 85 85 13  	addi	a1, a1, 312
80004478: 87 b1 05 00  	fld	ft3, 0(a1)

8000447c <.LBB5_49>:
8000447c: 97 15 00 00  	auipc	a1, 1
80004480: 93 85 45 13  	addi	a1, a1, 308
80004484: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004488: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
8000448c: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004490: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004494: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80004498 <.LBB5_50>:
80004498: 17 16 00 00  	auipc	a2, 1
8000449c: 13 06 06 12  	addi	a2, a2, 288
800044a0: 87 31 06 00  	fld	ft3, 0(a2)

800044a4 <.LBB5_51>:
800044a4: 17 16 00 00  	auipc	a2, 1
800044a8: 13 06 c6 11  	addi	a2, a2, 284
800044ac: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800044b0: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800044b4: 53 01 06 d2  	fcvt.d.w	ft2, a2
800044b8: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800044bc: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800044c0: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800044c4: 13 06 f6 3f  	addi	a2, a2, 1023
800044c8: 23 28 01 00  	sw	zero, 16(sp)
800044cc: 13 16 46 01  	slli	a2, a2, 20
800044d0: 23 2a c1 00  	sw	a2, 20(sp)

800044d4 <.LBB5_52>:
800044d4: 17 16 00 00  	auipc	a2, 1
800044d8: 13 06 c6 0f  	addi	a2, a2, 252
800044dc: 87 31 06 00  	fld	ft3, 0(a2)

800044e0 <.LBB5_53>:
800044e0: 17 16 00 00  	auipc	a2, 1
800044e4: 13 06 86 0f  	addi	a2, a2, 248
800044e8: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800044ec: 87 32 01 01  	fld	ft5, 16(sp)

800044f0 <.LBB5_54>:
800044f0: 17 16 00 00  	auipc	a2, 1
800044f4: 13 06 86 0d  	addi	a2, a2, 216
800044f8: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800044fc: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004500 <.LBB5_55>:
80004500: 17 16 00 00  	auipc	a2, 1
80004504: 13 06 06 0e  	addi	a2, a2, 224
80004508: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000450c: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004510: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004514: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004518: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
8000451c: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004520: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004524: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80004528: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
8000452c: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004530: 63 0a 06 00  	beqz	a2, 0x80004544 <.LBB5_56+0x10>

80004534 <.LBB5_56>:
80004534: 97 16 00 00  	auipc	a3, 1
80004538: 93 86 46 0b  	addi	a3, a3, 180
8000453c: 07 b1 06 00  	fld	ft2, 0(a3)
80004540: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80004544: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004548: 93 05 34 06  	addi	a1, s0, 99
8000454c: 93 b5 75 0c  	sltiu	a1, a1, 199
80004550: 13 06 50 00  	addi	a2, zero, 5
80004554: b7 16 00 00  	lui	a3, 1
80004558: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
8000455c: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004560: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80004564: 63 84 06 06  	beqz	a3, 0x800045cc <.LBB5_58+0x58>

80004568 <.LBB5_57>:
80004568: 97 15 00 00  	auipc	a1, 1
8000456c: 93 85 85 08  	addi	a1, a1, 136
80004570: 07 b1 05 00  	fld	ft2, 0(a1)

80004574 <.LBB5_58>:
80004574: 97 15 00 00  	auipc	a1, 1
80004578: 93 85 45 08  	addi	a1, a1, 132
8000457c: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004580: d3 15 25 a2  	flt.d	a1, fa0, ft2
80004584: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80004588: b3 e5 c5 00  	or	a1, a1, a2
8000458c: 63 98 05 00  	bnez	a1, 0x8000459c <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004590: 63 40 e4 02  	blt	s0, a4, 0x800045b0 <.LBB5_58+0x3c>
80004594: 13 07 00 00  	mv	a4, zero
80004598: 6f 00 00 02  	j	0x800045b8 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
8000459c: 63 06 07 02  	beqz	a4, 0x800045c8 <.LBB5_58+0x54>
800045a0: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800045a4: 13 45 15 00  	xori	a0, a0, 1
800045a8: 33 07 a7 40  	sub	a4, a4, a0
800045ac: 6f 00 00 02  	j	0x800045cc <.LBB5_58+0x58>
800045b0: 13 45 f4 ff  	not	a0, s0
800045b4: 33 07 a7 00  	add	a4, a4, a0
800045b8: 13 04 00 00  	mv	s0, zero
800045bc: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800045c0: 93 ea 0a 40  	ori	s5, s5, 1024
800045c4: 6f 00 80 00  	j	0x800045cc <.LBB5_58+0x58>
800045c8: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800045cc: b3 05 99 41  	sub	a1, s2, s9
800045d0: 33 36 b9 00  	sltu	a2, s2, a1
800045d4: 13 05 00 00  	mv	a0, zero
800045d8: 63 14 06 00  	bnez	a2, 0x800045e0 <.LBB5_58+0x6c>
800045dc: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800045e0: 93 07 00 00  	mv	a5, zero
800045e4: 93 d5 1a 00  	srli	a1, s5, 1
800045e8: 93 f4 15 00  	andi	s1, a1, 1
800045ec: b3 35 90 01  	snez	a1, s9
800045f0: b3 f5 b4 00  	and	a1, s1, a1
800045f4: 53 01 00 d2  	fcvt.d.w	ft2, zero
800045f8: 63 94 05 00  	bnez	a1, 0x80004600 <.LBB5_58+0x8c>
800045fc: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004600: 93 35 14 00  	seqz	a1, s0
80004604: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004608: 63 94 05 00  	bnez	a1, 0x80004610 <.LBB5_58+0x9c>
8000460c: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004610: 63 04 05 00  	beqz	a0, 0x80004618 <.LBB5_58+0xa4>
80004614: 53 15 a5 22  	fneg.d	fa0, fa0
80004618: 37 f5 ff ff  	lui	a0, 1048575
8000461c: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004620: 33 f8 aa 00  	and	a6, s5, a0
80004624: 13 85 0b 00  	mv	a0, s7
80004628: 93 05 0b 00  	mv	a1, s6
8000462c: 13 06 0a 00  	mv	a2, s4
80004630: 93 86 09 00  	mv	a3, s3
80004634: 97 f0 ff ff  	auipc	ra, 1048575
80004638: e7 80 40 60  	jalr	1540(ra)
8000463c: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004640: 63 82 0c 18  	beqz	s9, 0x800047c4 <.LBB5_58+0x250>
80004644: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80004648: 13 f5 0a 02  	andi	a0, s5, 32
8000464c: 13 45 55 06  	xori	a0, a0, 101
80004650: 93 05 0b 00  	mv	a1, s6
80004654: 13 06 0d 00  	mv	a2, s10
80004658: 93 86 09 00  	mv	a3, s3
8000465c: e7 80 0b 00  	jalr	s7
80004660: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004664: 93 5a f4 01  	srli	s5, s0, 31
80004668: 13 55 f4 41  	srai	a0, s0, 31
8000466c: b3 05 a4 00  	add	a1, s0, a0
80004670: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004674: 93 8d dc ff  	addi	s11, s9, -3
80004678: 13 04 f0 01  	addi	s0, zero, 31
8000467c: 37 d5 cc cc  	lui	a0, 838861
80004680: 13 05 d5 cc  	addi	a0, a0, -819
80004684: 13 08 a0 00  	addi	a6, zero, 10
80004688: 93 08 c1 02  	addi	a7, sp, 44
8000468c: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004690: b3 37 a7 02  	mulhu	a5, a4, a0
80004694: 93 d5 37 00  	srli	a1, a5, 3
80004698: b3 87 05 03  	mul	a5, a1, a6
8000469c: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800046a0: 13 e6 07 03  	ori	a2, a5, 48
800046a4: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800046a8: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800046ac: 13 0c 1c 00  	addi	s8, s8, 1
800046b0: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800046b4: 33 b6 e2 00  	sltu	a2, t0, a4
800046b8: 33 f6 c7 00  	and	a2, a5, a2
800046bc: 93 8d fd ff  	addi	s11, s11, -1
800046c0: 13 04 f4 ff  	addi	s0, s0, -1
800046c4: 13 87 05 00  	mv	a4, a1
800046c8: e3 14 06 fc  	bnez	a2, 0x80004690 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800046cc: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800046d0: 33 35 ac 00  	sltu	a0, s8, a0
800046d4: 13 45 15 00  	xori	a0, a0, 1
800046d8: 93 c5 17 00  	xori	a1, a5, 1
800046dc: 33 e5 a5 00  	or	a0, a1, a0
800046e0: 63 12 05 04  	bnez	a0, 0x80004724 <.LBB5_58+0x1b0>
800046e4: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800046e8: b3 85 8c 41  	sub	a1, s9, s8
800046ec: 93 85 d5 ff  	addi	a1, a1, -3
800046f0: 13 06 f0 01  	addi	a2, zero, 31
800046f4: 33 06 86 41  	sub	a2, a2, s8
800046f8: 33 05 85 01  	add	a0, a0, s8
800046fc: 63 e4 c5 00  	bltu	a1, a2, 0x80004704 <.LBB5_58+0x190>
80004700: 93 05 06 00  	mv	a1, a2
80004704: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004708: 93 05 00 03  	addi	a1, zero, 48
8000470c: 97 c0 ff ff  	auipc	ra, 1048572
80004710: e7 80 c0 e4  	jalr	-436(ra)
;   if (flags & FLAGS_HASH) {
80004714: 63 e4 8d 00  	bltu	s11, s0, 0x8000471c <.LBB5_58+0x1a8>
80004718: 93 0d 04 00  	mv	s11, s0
8000471c: 33 85 8d 01  	add	a0, s11, s8
80004720: 13 0c 15 00  	addi	s8, a0, 1
80004724: 83 2c c1 00  	lw	s9, 12(sp)
80004728: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000472c: 63 60 85 03  	bltu	a0, s8, 0x8000474c <.LBB5_58+0x1d8>
80004730: 13 05 c1 02  	addi	a0, sp, 44
80004734: 33 05 85 01  	add	a0, a0, s8
80004738: 93 05 d0 02  	addi	a1, zero, 45
8000473c: 63 94 0a 00  	bnez	s5, 0x80004744 <.LBB5_58+0x1d0>
80004740: 93 05 b0 02  	addi	a1, zero, 43
80004744: 13 0c 1c 00  	addi	s8, s8, 1
80004748: 23 00 b5 00  	sb	a1, 0(a0)
8000474c: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004750: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004754: 33 85 8a 01  	add	a0, s5, s8
80004758: 03 45 05 00  	lbu	a0, 0(a0)
8000475c: 13 06 04 00  	mv	a2, s0
80004760: 93 04 fc ff  	addi	s1, s8, -1
80004764: 13 04 14 00  	addi	s0, s0, 1
80004768: 93 05 0b 00  	mv	a1, s6
8000476c: 93 86 09 00  	mv	a3, s3
80004770: e7 80 0b 00  	jalr	s7
80004774: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80004778: e3 9e 04 fc  	bnez	s1, 0x80004754 <.LBB5_58+0x1e0>
8000477c: 33 05 44 41  	sub	a0, s0, s4
80004780: 33 35 25 01  	sltu	a0, a0, s2
80004784: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80004788: 93 c5 1c 00  	xori	a1, s9, 1
8000478c: 33 e5 a5 00  	or	a0, a1, a0
80004790: 63 18 05 02  	bnez	a0, 0x800047c0 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004794: b3 04 40 41  	neg	s1, s4
80004798: 13 0d 14 00  	addi	s10, s0, 1
8000479c: 13 05 00 02  	addi	a0, zero, 32
800047a0: 93 05 0b 00  	mv	a1, s6
800047a4: 13 06 04 00  	mv	a2, s0
800047a8: 93 86 09 00  	mv	a3, s3
800047ac: e7 80 0b 00  	jalr	s7
800047b0: 33 85 a4 01  	add	a0, s1, s10
800047b4: 13 04 0d 00  	mv	s0, s10
800047b8: e3 60 25 ff  	bltu	a0, s2, 0x80004798 <.LBB5_58+0x224>
800047bc: 6f 00 80 00  	j	0x800047c4 <.LBB5_58+0x250>
800047c0: 13 0d 04 00  	mv	s10, s0
; }
800047c4: 13 05 0d 00  	mv	a0, s10
800047c8: 83 2d c1 04  	lw	s11, 76(sp)
800047cc: 03 2d 01 05  	lw	s10, 80(sp)
800047d0: 83 2c 41 05  	lw	s9, 84(sp)
800047d4: 03 2c 81 05  	lw	s8, 88(sp)
800047d8: 83 2b c1 05  	lw	s7, 92(sp)
800047dc: 03 2b 01 06  	lw	s6, 96(sp)
800047e0: 83 2a 41 06  	lw	s5, 100(sp)
800047e4: 03 2a 81 06  	lw	s4, 104(sp)
800047e8: 83 29 c1 06  	lw	s3, 108(sp)
800047ec: 03 29 01 07  	lw	s2, 112(sp)
800047f0: 83 24 41 07  	lw	s1, 116(sp)
800047f4: 03 24 81 07  	lw	s0, 120(sp)
800047f8: 83 20 c1 07  	lw	ra, 124(sp)
800047fc: 13 01 01 08  	addi	sp, sp, 128
80004800: 67 80 00 00  	ret

80004804 <_ntoa_format>:
; {
80004804: 13 01 01 fc  	addi	sp, sp, -64
80004808: 23 2e 11 02  	sw	ra, 60(sp)
8000480c: 23 2c 81 02  	sw	s0, 56(sp)
80004810: 23 2a 91 02  	sw	s1, 52(sp)
80004814: 23 28 21 03  	sw	s2, 48(sp)
80004818: 23 26 31 03  	sw	s3, 44(sp)
8000481c: 23 24 41 03  	sw	s4, 40(sp)
80004820: 23 22 51 03  	sw	s5, 36(sp)
80004824: 23 20 61 03  	sw	s6, 32(sp)
80004828: 23 2e 71 01  	sw	s7, 28(sp)
8000482c: 23 2c 81 01  	sw	s8, 24(sp)
80004830: 23 2a 91 01  	sw	s9, 20(sp)
80004834: 23 28 a1 01  	sw	s10, 16(sp)
80004838: 23 26 b1 01  	sw	s11, 12(sp)
8000483c: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004840: 93 fa 2e 00  	andi	s5, t4, 2
80004844: 13 09 0e 00  	mv	s2, t3
80004848: 13 8d 03 00  	mv	s10, t2
8000484c: 93 8c 08 00  	mv	s9, a7
80004850: 13 8c 07 00  	mv	s8, a5
80004854: 93 89 06 00  	mv	s3, a3
80004858: 13 0a 06 00  	mv	s4, a2
8000485c: 13 8b 05 00  	mv	s6, a1
80004860: 93 0d 05 00  	mv	s11, a0
80004864: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80004868: 63 9e 0a 0c  	bnez	s5, 0x80004944 <_ntoa_format+0x140>
8000486c: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004870: 63 0e 09 00  	beqz	s2, 0x8000488c <_ntoa_format+0x88>
80004874: 63 0e 04 00  	beqz	s0, 0x80004890 <_ntoa_format+0x8c>
80004878: 13 f5 cb 00  	andi	a0, s7, 12
8000487c: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004880: 33 65 05 01  	or	a0, a0, a6
80004884: 33 09 a9 40  	sub	s2, s2, a0
80004888: 6f 00 80 00  	j	0x80004890 <_ntoa_format+0x8c>
8000488c: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004890: 33 35 ac 01  	sltu	a0, s8, s10
80004894: 93 45 15 00  	xori	a1, a0, 1
80004898: 13 05 f0 01  	addi	a0, zero, 31
8000489c: 33 36 85 01  	sltu	a2, a0, s8
800048a0: b3 65 b6 00  	or	a1, a2, a1
800048a4: 63 94 05 04  	bnez	a1, 0x800048ec <_ntoa_format+0xe8>
800048a8: 23 22 51 01  	sw	s5, 4(sp)
800048ac: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800048b0: 93 45 fc ff  	not	a1, s8
800048b4: b3 85 a5 01  	add	a1, a1, s10
800048b8: 33 06 85 41  	sub	a2, a0, s8
800048bc: 33 05 87 01  	add	a0, a4, s8
800048c0: 63 e4 c5 00  	bltu	a1, a2, 0x800048c8 <_ntoa_format+0xc4>
800048c4: 93 05 06 00  	mv	a1, a2
800048c8: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800048cc: 93 05 00 03  	addi	a1, zero, 48
800048d0: 13 86 04 00  	mv	a2, s1
800048d4: 97 c0 ff ff  	auipc	ra, 1048572
800048d8: e7 80 40 c8  	jalr	-892(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800048dc: 33 8c 84 01  	add	s8, s1, s8
800048e0: 03 27 81 00  	lw	a4, 8(sp)
800048e4: 13 88 0a 00  	mv	a6, s5
800048e8: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800048ec: 63 0c 04 04  	beqz	s0, 0x80004944 <_ntoa_format+0x140>
800048f0: 33 35 2c 01  	sltu	a0, s8, s2
800048f4: 93 45 15 00  	xori	a1, a0, 1
800048f8: 13 05 f0 01  	addi	a0, zero, 31
800048fc: 33 36 85 01  	sltu	a2, a0, s8
80004900: b3 e5 c5 00  	or	a1, a1, a2
80004904: 63 90 05 04  	bnez	a1, 0x80004944 <_ntoa_format+0x140>
80004908: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000490c: 93 45 fc ff  	not	a1, s8
80004910: b3 05 b9 00  	add	a1, s2, a1
80004914: 33 06 85 41  	sub	a2, a0, s8
80004918: 33 05 87 01  	add	a0, a4, s8
8000491c: 63 e4 c5 00  	bltu	a1, a2, 0x80004924 <_ntoa_format+0x120>
80004920: 93 05 06 00  	mv	a1, a2
80004924: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004928: 93 05 00 03  	addi	a1, zero, 48
8000492c: 13 86 04 00  	mv	a2, s1
80004930: 97 c0 ff ff  	auipc	ra, 1048572
80004934: e7 80 80 c2  	jalr	-984(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004938: 33 8c 84 01  	add	s8, s1, s8
8000493c: 03 27 81 00  	lw	a4, 8(sp)
80004940: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004944: 13 f5 0b 01  	andi	a0, s7, 16
80004948: 63 02 05 0e  	beqz	a0, 0x80004a2c <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
8000494c: 13 f5 0b 40  	andi	a0, s7, 1024
80004950: 13 55 a5 00  	srli	a0, a0, 10
80004954: 93 35 1c 00  	seqz	a1, s8
80004958: 33 65 b5 00  	or	a0, a0, a1
8000495c: 63 1e 05 02  	bnez	a0, 0x80004998 <_ntoa_format+0x194>
80004960: 33 45 ac 01  	xor	a0, s8, s10
80004964: 33 35 a0 00  	snez	a0, a0
80004968: b3 45 2c 01  	xor	a1, s8, s2
8000496c: b3 35 b0 00  	snez	a1, a1
80004970: 33 75 b5 00  	and	a0, a0, a1
80004974: 63 12 05 02  	bnez	a0, 0x80004998 <_ntoa_format+0x194>
;       len--;
80004978: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
8000497c: b3 35 a0 00  	snez	a1, a0
80004980: 13 86 0c ff  	addi	a2, s9, -16
80004984: 13 36 16 00  	seqz	a2, a2
80004988: b3 75 b6 00  	and	a1, a2, a1
8000498c: 63 84 05 00  	beqz	a1, 0x80004994 <_ntoa_format+0x190>
80004990: 13 05 ec ff  	addi	a0, s8, -2
80004994: 13 0c 05 00  	mv	s8, a0
80004998: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000499c: 63 96 ac 02  	bne	s9, a0, 0x800049c8 <_ntoa_format+0x1c4>
800049a0: 13 f5 0b 02  	andi	a0, s7, 32
800049a4: 93 55 55 00  	srli	a1, a0, 5
800049a8: 13 06 f0 01  	addi	a2, zero, 31
800049ac: 33 36 86 01  	sltu	a2, a2, s8
800049b0: b3 e5 c5 00  	or	a1, a1, a2
800049b4: 63 9e 05 02  	bnez	a1, 0x800049f0 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800049b8: 33 05 87 01  	add	a0, a4, s8
800049bc: 13 0c 1c 00  	addi	s8, s8, 1
800049c0: 93 05 80 07  	addi	a1, zero, 120
800049c4: 6f 00 c0 04  	j	0x80004a10 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800049c8: 13 85 ec ff  	addi	a0, s9, -2
800049cc: 33 35 a0 00  	snez	a0, a0
800049d0: 93 05 f0 01  	addi	a1, zero, 31
800049d4: b3 b5 85 01  	sltu	a1, a1, s8
800049d8: 33 65 b5 00  	or	a0, a0, a1
800049dc: 63 1c 05 02  	bnez	a0, 0x80004a14 <_ntoa_format+0x210>
;       buf[len++] = 'b';
800049e0: 33 05 87 01  	add	a0, a4, s8
800049e4: 13 0c 1c 00  	addi	s8, s8, 1
800049e8: 93 05 20 06  	addi	a1, zero, 98
800049ec: 6f 00 40 02  	j	0x80004a10 <_ntoa_format+0x20c>
800049f0: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800049f4: 13 35 15 00  	seqz	a0, a0
800049f8: 93 c5 15 00  	xori	a1, a1, 1
800049fc: 33 65 b5 00  	or	a0, a0, a1
80004a00: 63 1a 05 00  	bnez	a0, 0x80004a14 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004a04: 33 05 87 01  	add	a0, a4, s8
80004a08: 13 0c 1c 00  	addi	s8, s8, 1
80004a0c: 93 05 80 05  	addi	a1, zero, 88
80004a10: 23 00 b5 00  	sb	a1, 0(a0)
80004a14: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004a18: 63 60 85 07  	bltu	a0, s8, 0x80004a78 <_ntoa_format+0x274>
;       buf[len++] = '0';
80004a1c: 33 05 87 01  	add	a0, a4, s8
80004a20: 13 0c 1c 00  	addi	s8, s8, 1
80004a24: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80004a28: 23 00 b5 00  	sb	a1, 0(a0)
80004a2c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004a30: 63 64 85 05  	bltu	a0, s8, 0x80004a78 <_ntoa_format+0x274>
;     if (negative) {
80004a34: 63 0a 08 00  	beqz	a6, 0x80004a48 <_ntoa_format+0x244>
;       buf[len++] = '-';
80004a38: 33 05 87 01  	add	a0, a4, s8
80004a3c: 13 0c 1c 00  	addi	s8, s8, 1
80004a40: 93 05 d0 02  	addi	a1, zero, 45
80004a44: 6f 00 00 03  	j	0x80004a74 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80004a48: 13 f5 4b 00  	andi	a0, s7, 4
80004a4c: 63 1e 05 00  	bnez	a0, 0x80004a68 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80004a50: 13 f5 8b 00  	andi	a0, s7, 8
80004a54: 63 02 05 02  	beqz	a0, 0x80004a78 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80004a58: 33 05 87 01  	add	a0, a4, s8
80004a5c: 13 0c 1c 00  	addi	s8, s8, 1
80004a60: 93 05 00 02  	addi	a1, zero, 32
80004a64: 6f 00 00 01  	j	0x80004a74 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004a68: 33 05 87 01  	add	a0, a4, s8
80004a6c: 13 0c 1c 00  	addi	s8, s8, 1
80004a70: 93 05 b0 02  	addi	a1, zero, 43
80004a74: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004a78: 13 f5 3b 00  	andi	a0, s7, 3
80004a7c: 33 35 a0 00  	snez	a0, a0
80004a80: b3 35 2c 01  	sltu	a1, s8, s2
80004a84: 93 c5 15 00  	xori	a1, a1, 1
80004a88: 33 65 b5 00  	or	a0, a0, a1
80004a8c: 13 04 0a 00  	mv	s0, s4
80004a90: 63 16 05 02  	bnez	a0, 0x80004abc <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80004a94: b3 04 89 41  	sub	s1, s2, s8
80004a98: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004a9c: 13 04 16 00  	addi	s0, a2, 1
80004aa0: 13 05 00 02  	addi	a0, zero, 32
80004aa4: 93 05 0b 00  	mv	a1, s6
80004aa8: 93 86 09 00  	mv	a3, s3
80004aac: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80004ab0: 93 84 f4 ff  	addi	s1, s1, -1
80004ab4: 13 06 04 00  	mv	a2, s0
80004ab8: e3 92 04 fe  	bnez	s1, 0x80004a9c <_ntoa_format+0x298>
80004abc: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80004ac0: 63 0e 0c 02  	beqz	s8, 0x80004afc <_ntoa_format+0x2f8>
80004ac4: 03 25 81 00  	lw	a0, 8(sp)
80004ac8: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004acc: 33 85 8b 01  	add	a0, s7, s8
80004ad0: 03 45 05 00  	lbu	a0, 0(a0)
80004ad4: 93 0c fc ff  	addi	s9, s8, -1
80004ad8: 93 04 14 00  	addi	s1, s0, 1
80004adc: 93 05 0b 00  	mv	a1, s6
80004ae0: 13 06 04 00  	mv	a2, s0
80004ae4: 93 86 09 00  	mv	a3, s3
80004ae8: e7 80 0d 00  	jalr	s11
80004aec: 13 84 04 00  	mv	s0, s1
80004af0: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80004af4: e3 9c 0c fc  	bnez	s9, 0x80004acc <_ntoa_format+0x2c8>
80004af8: 6f 00 80 00  	j	0x80004b00 <_ntoa_format+0x2fc>
80004afc: 93 04 04 00  	mv	s1, s0
80004b00: 33 85 44 41  	sub	a0, s1, s4
80004b04: 33 35 25 01  	sltu	a0, a0, s2
80004b08: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004b0c: 93 c5 1a 00  	xori	a1, s5, 1
80004b10: 33 e5 a5 00  	or	a0, a1, a0
80004b14: 63 18 05 02  	bnez	a0, 0x80004b44 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80004b18: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004b1c: 13 84 14 00  	addi	s0, s1, 1
80004b20: 13 05 00 02  	addi	a0, zero, 32
80004b24: 93 05 0b 00  	mv	a1, s6
80004b28: 13 86 04 00  	mv	a2, s1
80004b2c: 93 86 09 00  	mv	a3, s3
80004b30: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80004b34: 33 05 8a 00  	add	a0, s4, s0
80004b38: 93 04 04 00  	mv	s1, s0
80004b3c: e3 60 25 ff  	bltu	a0, s2, 0x80004b1c <_ntoa_format+0x318>
80004b40: 6f 00 80 00  	j	0x80004b48 <_ntoa_format+0x344>
80004b44: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80004b48: 13 05 04 00  	mv	a0, s0
80004b4c: 83 2d c1 00  	lw	s11, 12(sp)
80004b50: 03 2d 01 01  	lw	s10, 16(sp)
80004b54: 83 2c 41 01  	lw	s9, 20(sp)
80004b58: 03 2c 81 01  	lw	s8, 24(sp)
80004b5c: 83 2b c1 01  	lw	s7, 28(sp)
80004b60: 03 2b 01 02  	lw	s6, 32(sp)
80004b64: 83 2a 41 02  	lw	s5, 36(sp)
80004b68: 03 2a 81 02  	lw	s4, 40(sp)
80004b6c: 83 29 c1 02  	lw	s3, 44(sp)
80004b70: 03 29 01 03  	lw	s2, 48(sp)
80004b74: 83 24 41 03  	lw	s1, 52(sp)
80004b78: 03 24 81 03  	lw	s0, 56(sp)
80004b7c: 83 20 c1 03  	lw	ra, 60(sp)
80004b80: 13 01 01 04  	addi	sp, sp, 64
80004b84: 67 80 00 00  	ret

80004b88 <_snrt_init_team>:
;     team->base.root = team;
80004b88: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80004b8c: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004b90: 03 23 87 00  	lw	t1, 8(a4)
80004b94: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004b98: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80004b9c: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004ba0: 83 22 47 00  	lw	t0, 4(a4)
80004ba4: 33 88 08 03  	mul	a6, a7, a6
80004ba8: 33 05 58 02  	mul	a0, a6, t0
80004bac: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004bb0: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80004bb4: 33 85 68 40  	sub	a0, a7, t1
80004bb8: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80004bbc: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80004bc0: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80004bc4: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80004bc8: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80004bcc: 03 25 87 01  	lw	a0, 24(a4)
80004bd0: b7 05 00 10  	lui	a1, 65536
80004bd4: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80004bd8: 23 a2 07 02  	sw	zero, 36(a5)
80004bdc: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80004be0: 03 25 07 02  	lw	a0, 32(a4)
80004be4: 83 25 47 02  	lw	a1, 36(a4)
80004be8: 23 a4 a7 02  	sw	a0, 40(a5)
80004bec: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80004bf0: 23 a8 c7 02  	sw	a2, 48(a5)
80004bf4: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80004bf8: 23 ac d7 02  	sw	a3, 56(a5)
80004bfc: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80004c00: 03 25 07 01  	lw	a0, 16(a4)
80004c04: 33 08 a6 00  	add	a6, a2, a0
80004c08: 93 05 08 19  	addi	a1, a6, 400
80004c0c: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80004c10: b3 32 a8 00  	sltu	t0, a6, a0
80004c14: 93 55 15 00  	srli	a1, a0, 1
80004c18: 33 03 b8 00  	add	t1, a6, a1
80004c1c: b3 35 03 01  	sltu	a1, t1, a6
80004c20: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80004c24: 23 a0 67 04  	sw	t1, 64(a5)
80004c28: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80004c2c: 13 15 15 00  	slli	a0, a0, 1
80004c30: b3 05 c5 00  	add	a1, a0, a2
80004c34: 33 b5 a5 00  	sltu	a0, a1, a0
80004c38: 23 a4 b7 04  	sw	a1, 72(a5)
80004c3c: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80004c40: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80004c44: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80004c48: 37 05 00 00  	lui	a0, 0
80004c4c: 33 05 45 00  	add	a0, a0, tp
80004c50: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004c54: 03 a5 07 00  	lw	a0, 0(a5)
80004c58: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80004c5c: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004c60: b3 85 b8 40  	sub	a1, a7, a1
80004c64: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80004c68: b7 05 00 00  	lui	a1, 0
80004c6c: b3 85 45 00  	add	a1, a1, tp
80004c70: 23 a2 a5 00  	sw	a0, 4(a1)
80004c74: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80004c78: 33 85 a8 02  	mul	a0, a7, a0

80004c7c <.LBB0_1>:
80004c7c: 97 15 00 00  	auipc	a1, 1
80004c80: 93 85 85 98  	addi	a1, a1, -1656
80004c84: 33 05 b5 00  	add	a0, a0, a1
80004c88: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80004c8c: 83 28 07 03  	lw	a7, 48(a4)
80004c90: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80004c94: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80004c98: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80004c9c: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80004ca0: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80004ca4: 13 05 76 00  	addi	a0, a2, 7
80004ca8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80004cac: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80004cb0: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80004cb4: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80004cb8: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80004cbc: 03 a5 05 00  	lw	a0, 0(a1)
80004cc0: 13 05 f5 44  	addi	a0, a0, 1103
80004cc4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80004cc8: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80004ccc: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80004cd0: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80004cd4: 37 05 00 00  	lui	a0, 0
80004cd8: 33 05 45 00  	add	a0, a0, tp
80004cdc: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80004ce0: 37 05 00 00  	lui	a0, 0
80004ce4: 33 05 45 00  	add	a0, a0, tp
80004ce8: 23 26 e5 00  	sw	a4, 12(a0)
; }
80004cec: 67 80 00 00  	ret

80004cf0 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004cf0: 37 05 00 00  	lui	a0, 0
80004cf4: 33 05 45 00  	add	a0, a0, tp
80004cf8: 03 25 05 00  	lw	a0, 0(a0)
80004cfc: 03 25 05 00  	lw	a0, 0(a0)
80004d00: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004d04: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004d08: 33 85 a5 40  	sub	a0, a1, a0
80004d0c: 67 80 00 00  	ret

80004d10 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80004d10: 37 05 00 00  	lui	a0, 0
80004d14: 33 05 45 00  	add	a0, a0, tp
80004d18: 03 25 05 00  	lw	a0, 0(a0)
80004d1c: 03 25 05 00  	lw	a0, 0(a0)
80004d20: 03 25 05 07  	lw	a0, 112(a0)
80004d24: 67 80 00 00  	ret

80004d28 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80004d28: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80004d2c: 63 44 05 00  	bltz	a0, 0x80004d34 <__snrt_isr+0xc>
;         while (1)
80004d30: 6f 00 00 00  	j	0x80004d30 <__snrt_isr+0x8>
80004d34: b7 05 00 80  	lui	a1, 524288
80004d38: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80004d3c: 33 75 b5 00  	and	a0, a0, a1
80004d40: 13 05 d5 ff  	addi	a0, a0, -3
80004d44: 93 55 25 00  	srli	a1, a0, 2
80004d48: 13 15 e5 01  	slli	a0, a0, 30
80004d4c: 33 65 b5 00  	or	a0, a0, a1
80004d50: 93 05 40 00  	addi	a1, zero, 4
80004d54: 63 0a b5 06  	beq	a0, a1, 0x80004dc8 <.LBB1_7+0x58>
80004d58: 63 1a 05 08  	bnez	a0, 0x80004dec <.LBB1_7+0x7c>
80004d5c: 37 05 00 00  	lui	a0, 0
80004d60: 33 05 45 00  	add	a0, a0, tp
80004d64: 03 25 05 00  	lw	a0, 0(a0)
80004d68: 03 25 05 00  	lw	a0, 0(a0)
80004d6c: f3 25 40 f1  	csrr	a1, mhartid

80004d70 <.LBB1_7>:
;     asm volatile(
80004d70: 17 16 00 00  	auipc	a2, 1
80004d74: 13 06 06 89  	addi	a2, a2, -1904
80004d78: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80004d7c: 93 06 06 00  	mv	a3, a2
80004d80: 93 02 10 00  	addi	t0, zero, 1
80004d84: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80004d88: e3 9e 02 fe  	bnez	t0, 0x80004d84 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80004d8c: b7 06 00 00  	lui	a3, 0
80004d90: b3 86 46 00  	add	a3, a3, tp
80004d94: 83 a6 86 00  	lw	a3, 8(a3)
80004d98: 33 85 a5 40  	sub	a0, a1, a0
80004d9c: 93 55 35 00  	srli	a1, a0, 3
80004da0: 93 f5 c5 ff  	andi	a1, a1, -4
80004da4: b3 85 b6 00  	add	a1, a3, a1
80004da8: 83 a6 05 00  	lw	a3, 0(a1)
80004dac: 13 07 10 00  	addi	a4, zero, 1
80004db0: 33 15 a7 00  	sll	a0, a4, a0
80004db4: 13 45 f5 ff  	not	a0, a0
80004db8: 33 f5 a6 00  	and	a0, a3, a0
80004dbc: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80004dc0: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80004dc4: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80004dc8: 37 05 00 00  	lui	a0, 0
80004dcc: 33 05 45 00  	add	a0, a0, tp
80004dd0: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004dd4: b7 05 00 00  	lui	a1, 0
80004dd8: b3 85 45 00  	add	a1, a1, tp
80004ddc: 83 a5 c5 00  	lw	a1, 12(a1)
80004de0: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80004de4: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004de8: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80004dec: 67 80 00 00  	ret

Disassembly of section .init:

80004df0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80004df0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80004df4: 93 81 81 f1  	addi	gp, gp, -232

80004df8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80004df8: 97 00 00 00  	auipc	ra, 0
80004dfc: e7 80 40 3c  	jalr	964(ra)

80004e00 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80004e00: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80004e04: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80004e08: 97 00 00 00  	auipc	ra, 0
80004e0c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80004e10: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80004e14: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80004e18: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80004e1c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80004e20: 63 92 02 02  	bnez	t0, 0x80004e44 <snrt.crt0.init_registers>

80004e24 <.Lpcrel_hi0>:
;     la        t0, _edata
80004e24: 97 02 00 00  	auipc	t0, 0
80004e28: 93 82 c2 7d  	addi	t0, t0, 2012

80004e2c <.Lpcrel_hi1>:
;     la        t1, _end
80004e2c: 17 03 00 00  	auipc	t1, 0
80004e30: 13 03 83 7d  	addi	t1, t1, 2008
;     bge       t0, t1, 2f
80004e34: 63 d8 62 00  	bge	t0, t1, 0x80004e44 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80004e38: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80004e3c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80004e40: e3 cc 62 fe  	blt	t0, t1, 0x80004e38 <.Lpcrel_hi1+0xc>

80004e44 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80004e44: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80004e48: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80004e4c: 63 82 02 08  	beqz	t0, 0x80004ed0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80004e50: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80004e54: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80004e58: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80004e5c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80004e60: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80004e64: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80004e68: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80004e6c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80004e70: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80004e74: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80004e78: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80004e7c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80004e80: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80004e84: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80004e88: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80004e8c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80004e90: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80004e94: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80004e98: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80004e9c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80004ea0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80004ea4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80004ea8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80004eac: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80004eb0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80004eb4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80004eb8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80004ebc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80004ec0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80004ec4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80004ec8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80004ecc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80004ed0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80004ed0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80004ed4: 23 a0 06 00  	sw	zero, 0(a3)

80004ed8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80004ed8: 97 02 00 00  	auipc	t0, 0
80004edc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80004ee0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80004ee4: 93 87 06 00  	mv	a5, a3

80004ee8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80004ee8: 97 03 00 00  	auipc	t2, 0
80004eec: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80004ef0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80004ef4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80004ef8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80004efc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80004f00: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80004f04: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80004f08: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80004f0c: b3 86 66 40  	sub	a3, a3, t1

80004f10 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80004f10: 97 02 00 00  	auipc	t0, 0
80004f14: 93 82 82 5f  	addi	t0, t0, 1528

80004f18 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80004f18: 17 03 00 00  	auipc	t1, 0
80004f1c: 13 03 03 5f  	addi	t1, t1, 1520

80004f20 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80004f20: 97 03 00 00  	auipc	t2, 0
80004f24: 93 83 83 5e  	addi	t2, t2, 1512

80004f28 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80004f28: 17 0e 00 00  	auipc	t3, 0
80004f2c: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80004f30: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80004f34: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80004f38: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80004f3c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80004f40: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80004f44: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80004f48: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80004f4c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80004f50: 63 dc 62 00  	bge	t0, t1, 0x80004f68 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80004f54: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80004f58: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80004f5c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004f60: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80004f64: e3 c8 62 fe  	blt	t0, t1, 0x80004f54 <.Lpcrel_hi7+0x2c>

80004f68 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80004f68: 97 02 00 00  	auipc	t0, 0
80004f6c: 93 82 02 5a  	addi	t0, t0, 1440

80004f70 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80004f70: 17 03 00 00  	auipc	t1, 0
80004f74: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80004f78: 63 da 62 00  	bge	t0, t1, 0x80004f8c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80004f7c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80004f80: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004f84: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80004f88: e3 ca 72 fe  	blt	t0, t2, 0x80004f7c <.Lpcrel_hi9+0xc>

80004f8c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80004f8c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80004f90: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80004f94: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80004f98: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80004f9c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80004fa0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80004fa4: 97 00 00 00  	auipc	ra, 0
80004fa8: e7 80 40 be  	jalr	-1052(ra)
;     lw        a0, 0(sp)
80004fac: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80004fb0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80004fb4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80004fb8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80004fbc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80004fc0: 13 01 41 01  	addi	sp, sp, 20

80004fc4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80004fc4: 97 02 00 00  	auipc	t0, 0
80004fc8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80004fcc: 73 90 52 30  	csrw	mtvec, t0

80004fd0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80004fd0: 97 00 00 00  	auipc	ra, 0
80004fd4: e7 80 00 22  	jalr	544(ra)

80004fd8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80004fd8: 97 b0 ff ff  	auipc	ra, 1048571
80004fdc: e7 80 c0 65  	jalr	1628(ra)
;     mv        s0, a0 # store return value in s0
80004fe0: 13 04 05 00  	mv	s0, a0

80004fe4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80004fe4: 97 00 00 00  	auipc	ra, 0
80004fe8: e7 80 c0 20  	jalr	524(ra)

80004fec <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80004fec: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80004ff0: 97 00 00 00  	auipc	ra, 0
80004ff4: e7 80 c0 22  	jalr	556(ra)
;     wfi
80004ff8: 73 00 50 10  	wfi	
;     j       1b
80004ffc: 6f f0 df ff  	j	0x80004ff8 <snrt.crt0.end+0xc>

80005000 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005000: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005004: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005008: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000500c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80005010: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80005014: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80005018: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000501c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80005020: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80005024: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80005028: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000502c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80005030: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80005034: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80005038: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000503c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80005040: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80005044: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80005048: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000504c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005050: 63 84 02 08  	beqz	t0, 0x800050d8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80005054: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80005058: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000505c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80005060: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80005064: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80005068: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000506c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80005070: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80005074: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80005078: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000507c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80005080: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80005084: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80005088: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000508c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80005090: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80005094: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80005098: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000509c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800050a0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800050a4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800050a8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800050ac: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800050b0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800050b4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800050b8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800050bc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800050c0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800050c4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800050c8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800050cc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800050d0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800050d4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800050d8: 97 00 00 00  	auipc	ra, 0
800050dc: e7 80 00 c5  	jalr	-944(ra)
;     csrr    t0, misa
800050e0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800050e4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800050e8: 63 84 02 08  	beqz	t0, 0x80005170 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
800050ec: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
800050f0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
800050f4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
800050f8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
800050fc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005100: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005104: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005108: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000510c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005110: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005114: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005118: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000511c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80005120: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80005124: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80005128: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000512c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80005130: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80005134: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80005138: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000513c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80005140: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80005144: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80005148: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000514c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80005150: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80005154: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80005158: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000515c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80005160: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80005164: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80005168: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000516c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80005170: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80005174: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80005178: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000517c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005180: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005184: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005188: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000518c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80005190: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80005194: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80005198: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000519c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800051a0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800051a4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800051a8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800051ac: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800051b0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800051b4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800051b8: 73 00 20 30  	mret	

800051bc <_snrt_init_core_info>:
;     mv        a4, a1
800051bc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800051c0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800051c4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800051c8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800051cc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800051d0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800051d4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800051d8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800051dc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
800051e0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
800051e4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
800051e8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
800051ec: 67 80 00 00  	ret

800051f0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
800051f0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
800051f4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
800051f8: 97 00 00 00  	auipc	ra, 0
800051fc: e7 80 80 b1  	jalr	-1256(ra)
;     lw        a0, 0(a0)
80005200: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005204: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005208: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000520c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005210: 67 80 00 00  	ret

80005214 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005214: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005218: 67 80 00 00  	ret

8000521c <_snrt_exit>:
;     addi      sp, sp, -8
8000521c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005220: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005224: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005228: 97 00 00 00  	auipc	ra, 0
8000522c: e7 80 80 ac  	jalr	-1336(ra)
;     lw        t0, 0(sp)
80005230: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005234: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005238: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000523c: 63 1c 05 00  	bnez	a0, 0x80005254 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80005240: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80005244: 93 e2 12 00  	ori	t0, t0, 1

80005248 <.Lpcrel_hi11>:
;     la        t1, tohost
80005248: 17 03 00 00  	auipc	t1, 0
8000524c: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80005250: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80005254: 67 80 00 00  	ret
