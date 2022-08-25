
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-SMALL_DATASET-IS_RESTRICTED-3mm-ssrfriendly-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000031e8 80000000 TEXT
  2 .init             00000468 800031f0 TEXT
  3 .rodata           00000238 80003658 DATA
  4 .htif             00000048 800038c0 DATA
  5 .tdata            00000000 80003908 DATA
  6 .tbss             00000010 80003908 BSS
  7 .tbssend          00000000 80003918 DATA
  8 .sdata            000000d8 80003918 DATA
  9 .data             00000000 800039f0 DATA
 10 .sbss             00000004 800039f0 BSS
 11 .bss              00000000 800039f4 BSS
 12 .dram             00000000 800039f4 DATA
 13 .debug_info       00003851 00000000 
 14 .debug_abbrev     00000c03 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002dcd 00000000 
 17 .debug_loc        00003741 00000000 
 18 .debug_ranges     000003d8 00000000 
 19 .debug_str        00000b0f 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002ac 00000000 
 23 .symtab           00003460 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000093c 00000000 


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
80000634: 13 01 01 fc  	addi	sp, sp, -64
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 02  	sw	ra, 60(sp)
8000063c: 23 2c 81 02  	sw	s0, 56(sp)
80000640: 23 2a 91 02  	sw	s1, 52(sp)
80000644: 23 28 21 03  	sw	s2, 48(sp)
80000648: 23 26 31 03  	sw	s3, 44(sp)
8000064c: 23 24 41 03  	sw	s4, 40(sp)
80000650: 23 22 51 03  	sw	s5, 36(sp)
80000654: 23 20 61 03  	sw	s6, 32(sp)
80000658: 23 2e 71 01  	sw	s7, 28(sp)
8000065c: 23 2c 81 01  	sw	s8, 24(sp)
80000660: 23 2a 91 01  	sw	s9, 20(sp)
80000664: 27 34 81 00  	fsd	fs0, 8(sp)
80000668: 37 05 00 00  	lui	a0, 0
8000066c: 33 05 45 00  	add	a0, a0, tp
80000670: 83 25 45 00  	lw	a1, 4(a0)
80000674: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
80000678: e3 9e 05 46  	bnez	a1, 0x800012f4 <.LBB0_121+0x10>
;     return _snrt_team_current->root;
8000067c: 37 05 00 00  	lui	a0, 0
80000680: 33 05 45 00  	add	a0, a0, tp
80000684: 03 25 05 00  	lw	a0, 0(a0)
80000688: 03 26 05 00  	lw	a2, 0(a0)
8000068c: 37 45 00 00  	lui	a0, 4
;     if (alloc->next + size > alloc->base + alloc->size) {
80000690: 03 2a 86 05  	lw	s4, 88(a2)
80000694: 83 26 06 05  	lw	a3, 80(a2)
80000698: 03 27 46 05  	lw	a4, 84(a2)
8000069c: 93 08 85 e7  	addi	a7, a0, -392
800006a0: 33 05 1a 01  	add	a0, s4, a7
800006a4: 93 05 85 00  	addi	a1, a0, 8
800006a8: 33 07 d7 00  	add	a4, a4, a3
800006ac: 63 76 b7 00  	bgeu	a4, a1, 0x800006b8 <main+0x84>
800006b0: 93 0c 00 00  	mv	s9, zero
800006b4: 6f 00 00 01  	j	0x800006c4 <main+0x90>
;     void *ret = (void *)alloc->next;
800006b8: 93 0c 0a 00  	mv	s9, s4
;     alloc->next += size;
800006bc: 23 2c b6 04  	sw	a1, 88(a2)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c0: 13 8a 05 00  	mv	s4, a1
800006c4: b7 55 00 00  	lui	a1, 5
800006c8: 13 83 85 af  	addi	t1, a1, -1288
;     if (alloc->next + size > alloc->base + alloc->size) {
800006cc: b3 06 6a 00  	add	a3, s4, t1
800006d0: 93 86 86 00  	addi	a3, a3, 8
800006d4: 63 76 d7 00  	bgeu	a4, a3, 0x800006e0 <main+0xac>
800006d8: 13 04 00 00  	mv	s0, zero
800006dc: 6f 00 00 01  	j	0x800006ec <main+0xb8>
;     void *ret = (void *)alloc->next;
800006e0: 13 04 0a 00  	mv	s0, s4
;     alloc->next += size;
800006e4: 23 2c d6 04  	sw	a3, 88(a2)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e8: 13 8a 06 00  	mv	s4, a3
800006ec: 93 82 85 77  	addi	t0, a1, 1912
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f0: b3 05 5a 00  	add	a1, s4, t0
800006f4: 93 85 85 64  	addi	a1, a1, 1608
800006f8: 63 76 b7 00  	bgeu	a4, a1, 0x80000704 <main+0xd0>
800006fc: 13 09 00 00  	mv	s2, zero
80000700: 6f 00 00 01  	j	0x80000710 <main+0xdc>
;     void *ret = (void *)alloc->next;
80000704: 13 09 0a 00  	mv	s2, s4
;     alloc->next += size;
80000708: 23 2c b6 04  	sw	a1, 88(a2)
;     if (alloc->next + size > alloc->base + alloc->size) {
8000070c: 13 8a 05 00  	mv	s4, a1
80000710: b7 75 00 00  	lui	a1, 7
80000714: 13 88 85 d5  	addi	a6, a1, -680
;     if (alloc->next + size > alloc->base + alloc->size) {
80000718: b3 05 0a 01  	add	a1, s4, a6
8000071c: 93 85 85 00  	addi	a1, a1, 8
80000720: 63 76 b7 00  	bgeu	a4, a1, 0x8000072c <main+0xf8>
80000724: 93 09 00 00  	mv	s3, zero
80000728: 6f 00 00 01  	j	0x80000738 <main+0x104>
;     void *ret = (void *)alloc->next;
8000072c: 93 09 0a 00  	mv	s3, s4
;     alloc->next += size;
80000730: 23 2c b6 04  	sw	a1, 88(a2)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000734: 13 8a 05 00  	mv	s4, a1
80000738: b7 85 00 00  	lui	a1, 8
8000073c: 93 83 85 cf  	addi	t2, a1, -776
;     if (alloc->next + size > alloc->base + alloc->size) {
80000740: b3 05 7a 00  	add	a1, s4, t2
80000744: 93 85 85 00  	addi	a1, a1, 8
80000748: 63 76 b7 00  	bgeu	a4, a1, 0x80000754 <main+0x120>
8000074c: 93 06 00 00  	mv	a3, zero
80000750: 6f 00 00 01  	j	0x80000760 <main+0x12c>
;     void *ret = (void *)alloc->next;
80000754: 93 06 0a 00  	mv	a3, s4
;     alloc->next += size;
80000758: 23 2c b6 04  	sw	a1, 88(a2)
;     if (alloc->next + size > alloc->base + alloc->size) {
8000075c: 13 8a 05 00  	mv	s4, a1
80000760: b7 b5 00 00  	lui	a1, 11
80000764: 13 8e 85 ef  	addi	t3, a1, -264
;     if (alloc->next + size > alloc->base + alloc->size) {
80000768: b3 05 ca 01  	add	a1, s4, t3
8000076c: 93 85 85 00  	addi	a1, a1, 8
80000770: 63 76 b7 00  	bgeu	a4, a1, 0x8000077c <main+0x148>
80000774: 13 0f 00 00  	mv	t5, zero
80000778: 6f 00 00 01  	j	0x80000788 <main+0x154>
;     void *ret = (void *)alloc->next;
8000077c: 13 0f 0a 00  	mv	t5, s4
;     alloc->next += size;
80000780: 23 2c b6 04  	sw	a1, 88(a2)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000784: 13 8a 05 00  	mv	s4, a1
80000788: b3 85 42 01  	add	a1, t0, s4
8000078c: 93 85 85 00  	addi	a1, a1, 8
80000790: 63 76 b7 00  	bgeu	a4, a1, 0x8000079c <main+0x168>
80000794: 13 0a 00 00  	mv	s4, zero
80000798: 6f 00 80 00  	j	0x800007a0 <main+0x16c>
;     alloc->next += size;
8000079c: 23 2c b6 04  	sw	a1, 88(a2)
;   for (i = 0; i < ni; i++)
800007a0: b3 05 64 00  	add	a1, s0, t1
800007a4: 13 56 44 01  	srli	a2, s0, 20
800007a8: 33 36 c0 00  	snez	a2, a2
800007ac: 37 07 12 00  	lui	a4, 288
800007b0: 13 07 17 00  	addi	a4, a4, 1
800007b4: b3 b5 e5 00  	sltu	a1, a1, a4
800007b8: 33 73 b6 00  	and	t1, a2, a1

800007bc <.LBB0_114>:
800007bc: 17 36 00 00  	auipc	a2, 3
800007c0: 13 06 c6 15  	addi	a2, a2, 348
800007c4: 93 05 00 00  	mv	a1, zero
800007c8: 63 08 03 08  	beqz	t1, 0x80000858 <.LBB0_114+0x9c>
800007cc: 13 07 80 00  	addi	a4, zero, 8
800007d0: 93 07 b0 03  	addi	a5, zero, 59
;   for (i = 0; i < ni; i++)
800007d4: 93 04 00 04  	addi	s1, zero, 64
800007d8: ab a0 97 00  	scfgw	a5, s1
800007dc: 93 07 00 0c  	addi	a5, zero, 192
800007e0: ab 20 f7 00  	scfgw	a4, a5
800007e4: 93 07 70 02  	addi	a5, zero, 39
800007e8: 93 04 00 06  	addi	s1, zero, 96
800007ec: ab a0 97 00  	scfgw	a5, s1
800007f0: 93 07 00 0e  	addi	a5, zero, 224
800007f4: ab 20 f7 00  	scfgw	a4, a5
800007f8: 13 07 00 02  	addi	a4, zero, 32
800007fc: ab 20 e0 00  	scfgw	zero, a4
80000800: 2b 20 04 3a  	scfgwi	s0, 928
80000804: 73 e7 00 7c  	csrrsi	a4, 1984, 1
80000808: 87 31 06 00  	fld	ft3, 0(a2)
8000080c: 37 d6 cc cc  	lui	a2, 838861
80000810: 13 06 d6 cc  	addi	a2, a2, -819
80000814: 93 0e 80 02  	addi	t4, zero, 40
80000818: 93 07 c0 03  	addi	a5, zero, 60
8000081c: 93 04 10 00  	addi	s1, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000820: 33 b7 c4 02  	mulhu	a4, s1, a2
80000824: 13 57 57 00  	srli	a4, a4, 5
80000828: 33 07 d7 03  	mul	a4, a4, t4
8000082c: 33 87 e4 40  	sub	a4, s1, a4
80000830: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000834: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000838: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nk; j++)
8000083c: 93 87 f7 ff  	addi	a5, a5, -1
80000840: b3 84 b4 00  	add	s1, s1, a1
80000844: e3 9e 07 fc  	bnez	a5, 0x80000820 <.LBB0_114+0x64>
;   for (i = 0; i < ni; i++)
80000848: 93 85 15 00  	addi	a1, a1, 1
8000084c: e3 96 d5 fd  	bne	a1, t4, 0x80000818 <.LBB0_114+0x5c>
80000850: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000854: 6f 00 c0 05  	j	0x800008b0 <.LBB0_114+0xf4>
80000858: 37 d7 cc cc  	lui	a4, 838861
8000085c: 87 31 06 00  	fld	ft3, 0(a2)
80000860: 93 0a d7 cc  	addi	s5, a4, -819
80000864: 93 0f 80 02  	addi	t6, zero, 40
80000868: 93 0e 00 1e  	addi	t4, zero, 480
8000086c: 93 04 04 00  	mv	s1, s0
80000870: 93 07 00 00  	mv	a5, zero
80000874: 13 07 10 00  	addi	a4, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000878: 33 36 57 03  	mulhu	a2, a4, s5
8000087c: 13 56 56 00  	srli	a2, a2, 5
80000880: 33 06 f6 03  	mul	a2, a2, t6
80000884: 33 06 c7 40  	sub	a2, a4, a2
80000888: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000088c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000890: 33 86 f4 00  	add	a2, s1, a5
80000894: 27 30 46 00  	fsd	ft4, 0(a2)
;     for (j = 0; j < nk; j++)
80000898: 93 87 87 00  	addi	a5, a5, 8
8000089c: 33 07 b7 00  	add	a4, a4, a1
800008a0: e3 9c d7 fd  	bne	a5, t4, 0x80000878 <.LBB0_114+0xbc>
;   for (i = 0; i < ni; i++)
800008a4: 93 85 15 00  	addi	a1, a1, 1
800008a8: 93 84 04 1e  	addi	s1, s1, 480
800008ac: e3 92 f5 fd  	bne	a1, t6, 0x80000870 <.LBB0_114+0xb4>
;   for (i = 0; i < nk; i++)
800008b0: b3 85 22 01  	add	a1, t0, s2
800008b4: 93 85 05 64  	addi	a1, a1, 1600
800008b8: 13 56 49 01  	srli	a2, s2, 20
800008bc: 33 36 c0 00  	snez	a2, a2
800008c0: 37 07 12 00  	lui	a4, 288
800008c4: 13 07 17 00  	addi	a4, a4, 1
800008c8: b3 b5 e5 00  	sltu	a1, a1, a4
800008cc: b3 7e b6 00  	and	t4, a2, a1

800008d0 <.LBB0_115>:
800008d0: 17 36 00 00  	auipc	a2, 3
800008d4: 13 06 06 05  	addi	a2, a2, 80
800008d8: 63 80 0e 0a  	beqz	t4, 0x80000978 <.LBB0_115+0xa8>
800008dc: 13 07 00 00  	mv	a4, zero
800008e0: 93 05 80 00  	addi	a1, zero, 8
800008e4: 93 07 10 03  	addi	a5, zero, 49
;   for (i = 0; i < nk; i++)
800008e8: 93 04 00 04  	addi	s1, zero, 64
800008ec: ab a0 97 00  	scfgw	a5, s1
800008f0: 93 07 00 0c  	addi	a5, zero, 192
800008f4: ab a0 f5 00  	scfgw	a1, a5
800008f8: 93 07 b0 03  	addi	a5, zero, 59
800008fc: 93 04 00 06  	addi	s1, zero, 96
80000900: ab a0 97 00  	scfgw	a5, s1
80000904: 93 07 00 0e  	addi	a5, zero, 224
80000908: ab a0 f5 00  	scfgw	a1, a5
8000090c: 93 05 00 02  	addi	a1, zero, 32
80000910: ab 20 b0 00  	scfgw	zero, a1
80000914: 2b 20 09 3a  	scfgwi	s2, 928
80000918: f3 e5 00 7c  	csrrsi	a1, 1984, 1
8000091c: 93 0a 20 00  	addi	s5, zero, 2
80000920: b7 85 eb 51  	lui	a1, 335544
80000924: 87 31 06 00  	fld	ft3, 0(a2)
80000928: 13 86 f5 51  	addi	a2, a1, 1311
8000092c: 13 0b 20 03  	addi	s6, zero, 50
80000930: 93 0f c0 03  	addi	t6, zero, 60
80000934: 93 85 0a 00  	mv	a1, s5
80000938: 93 04 20 03  	addi	s1, zero, 50
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
8000093c: b3 b7 c5 02  	mulhu	a5, a1, a2
80000940: 93 d7 47 00  	srli	a5, a5, 4
80000944: b3 87 67 03  	mul	a5, a5, s6
80000948: b3 87 f5 40  	sub	a5, a1, a5
8000094c: 53 82 07 d2  	fcvt.d.w	ft4, a5
80000950: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000954: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nj; j++)
80000958: 93 84 f4 ff  	addi	s1, s1, -1
8000095c: b3 85 e5 00  	add	a1, a1, a4
80000960: e3 9e 04 fc  	bnez	s1, 0x8000093c <.LBB0_115+0x6c>
;   for (i = 0; i < nk; i++)
80000964: 13 07 17 00  	addi	a4, a4, 1
80000968: 93 8a 1a 00  	addi	s5, s5, 1
8000096c: e3 14 f7 fd  	bne	a4, t6, 0x80000934 <.LBB0_115+0x64>
80000970: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000974: 6f 00 c0 06  	j	0x800009e0 <.LBB0_115+0x110>
80000978: 93 05 00 00  	mv	a1, zero
8000097c: 93 0a 20 00  	addi	s5, zero, 2
80000980: 37 87 eb 51  	lui	a4, 335544
80000984: 13 0c f7 51  	addi	s8, a4, 1311
80000988: 87 31 06 00  	fld	ft3, 0(a2)
8000098c: 13 0b 20 03  	addi	s6, zero, 50
80000990: 93 0b 00 19  	addi	s7, zero, 400
80000994: 93 0f c0 03  	addi	t6, zero, 60
80000998: 13 07 09 00  	mv	a4, s2
8000099c: 13 06 00 00  	mv	a2, zero
800009a0: 93 84 0a 00  	mv	s1, s5
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
800009a4: b3 b7 84 03  	mulhu	a5, s1, s8
800009a8: 93 d7 47 00  	srli	a5, a5, 4
800009ac: b3 87 67 03  	mul	a5, a5, s6
800009b0: b3 87 f4 40  	sub	a5, s1, a5
800009b4: 53 82 07 d2  	fcvt.d.w	ft4, a5
800009b8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009bc: b3 07 c7 00  	add	a5, a4, a2
800009c0: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nj; j++)
800009c4: 13 06 86 00  	addi	a2, a2, 8
800009c8: b3 84 b4 00  	add	s1, s1, a1
800009cc: e3 1c 76 fd  	bne	a2, s7, 0x800009a4 <.LBB0_115+0xd4>
;   for (i = 0; i < nk; i++)
800009d0: 93 85 15 00  	addi	a1, a1, 1
800009d4: 13 07 07 19  	addi	a4, a4, 400
800009d8: 93 8a 1a 00  	addi	s5, s5, 1
800009dc: e3 90 f5 fd  	bne	a1, t6, 0x8000099c <.LBB0_115+0xcc>
;   for (i = 0; i < nj; i++)
800009e0: b3 85 76 00  	add	a1, a3, t2
800009e4: 13 d6 46 01  	srli	a2, a3, 20
800009e8: 33 36 c0 00  	snez	a2, a2
800009ec: 37 07 12 00  	lui	a4, 288
800009f0: 13 07 17 00  	addi	a4, a4, 1
800009f4: b3 b5 e5 00  	sltu	a1, a1, a4
800009f8: b3 73 b6 00  	and	t2, a2, a1

800009fc <.LBB0_116>:
800009fc: 97 3f 00 00  	auipc	t6, 3
80000a00: 93 8f cf f2  	addi	t6, t6, -212
80000a04: 93 0a 00 00  	mv	s5, zero
80000a08: 63 80 03 0a  	beqz	t2, 0x80000aa8 <.LBB0_116+0xac>
80000a0c: 13 06 00 00  	mv	a2, zero
80000a10: 93 05 80 00  	addi	a1, zero, 8
80000a14: 13 07 f0 04  	addi	a4, zero, 79
;   for (i = 0; i < nj; i++)
80000a18: 93 07 00 04  	addi	a5, zero, 64
80000a1c: ab 20 f7 00  	scfgw	a4, a5
80000a20: 13 07 00 0c  	addi	a4, zero, 192
80000a24: ab a0 e5 00  	scfgw	a1, a4
80000a28: 13 07 10 03  	addi	a4, zero, 49
80000a2c: 93 07 00 06  	addi	a5, zero, 96
80000a30: ab 20 f7 00  	scfgw	a4, a5
80000a34: 13 07 00 0e  	addi	a4, zero, 224
80000a38: ab a0 e5 00  	scfgw	a1, a4
80000a3c: 93 05 00 02  	addi	a1, zero, 32
80000a40: ab 20 b0 00  	scfgw	zero, a1
80000a44: 2b a0 06 3a  	scfgwi	a3, 928
80000a48: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000a4c: b7 a5 0e ea  	lui	a1, 958698
80000a50: 87 b1 0f 00  	fld	ft3, 0(t6)
80000a54: 93 85 b5 0e  	addi	a1, a1, 235
80000a58: 13 0b 60 04  	addi	s6, zero, 70
80000a5c: 93 0f 20 03  	addi	t6, zero, 50
80000a60: 93 04 00 05  	addi	s1, zero, 80
80000a64: 13 87 0a 00  	mv	a4, s5
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000a68: 93 57 17 00  	srli	a5, a4, 1
80000a6c: b3 b7 b7 02  	mulhu	a5, a5, a1
80000a70: 93 d7 57 00  	srli	a5, a5, 5
80000a74: b3 87 67 03  	mul	a5, a5, s6
80000a78: b3 07 f7 40  	sub	a5, a4, a5
80000a7c: 53 82 07 d2  	fcvt.d.w	ft4, a5
80000a80: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a84: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nm; j++)
80000a88: 93 84 f4 ff  	addi	s1, s1, -1
80000a8c: 33 07 c7 00  	add	a4, a4, a2
80000a90: e3 9c 04 fc  	bnez	s1, 0x80000a68 <.LBB0_116+0x6c>
;   for (i = 0; i < nj; i++)
80000a94: 13 06 16 00  	addi	a2, a2, 1
80000a98: 93 8a 3a 00  	addi	s5, s5, 3
80000a9c: e3 12 f6 fd  	bne	a2, t6, 0x80000a60 <.LBB0_116+0x64>
80000aa0: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000aa4: 6f 00 c0 06  	j	0x80000b10 <.LBB0_116+0x114>
80000aa8: 93 05 00 00  	mv	a1, zero
80000aac: 37 a6 0e ea  	lui	a2, 958698
80000ab0: 13 0c b6 0e  	addi	s8, a2, 235
80000ab4: 87 b1 0f 00  	fld	ft3, 0(t6)
80000ab8: 13 0b 60 04  	addi	s6, zero, 70
80000abc: 93 0b 00 28  	addi	s7, zero, 640
80000ac0: 93 0f 20 03  	addi	t6, zero, 50
80000ac4: 13 86 06 00  	mv	a2, a3
80000ac8: 93 07 00 00  	mv	a5, zero
80000acc: 93 84 0a 00  	mv	s1, s5
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000ad0: 13 d7 14 00  	srli	a4, s1, 1
80000ad4: 33 37 87 03  	mulhu	a4, a4, s8
80000ad8: 13 57 57 00  	srli	a4, a4, 5
80000adc: 33 07 67 03  	mul	a4, a4, s6
80000ae0: 33 87 e4 40  	sub	a4, s1, a4
80000ae4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ae8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000aec: 33 07 f6 00  	add	a4, a2, a5
80000af0: 27 30 47 00  	fsd	ft4, 0(a4)
;     for (j = 0; j < nm; j++)
80000af4: 93 87 87 00  	addi	a5, a5, 8
80000af8: b3 84 b4 00  	add	s1, s1, a1
80000afc: e3 9a 77 fd  	bne	a5, s7, 0x80000ad0 <.LBB0_116+0xd4>
;   for (i = 0; i < nj; i++)
80000b00: 93 85 15 00  	addi	a1, a1, 1
80000b04: 13 06 06 28  	addi	a2, a2, 640
80000b08: 93 8a 3a 00  	addi	s5, s5, 3
80000b0c: e3 9e f5 fb  	bne	a1, t6, 0x80000ac8 <.LBB0_116+0xcc>
;   for (i = 0; i < nm; i++)
80000b10: b3 05 cf 01  	add	a1, t5, t3
80000b14: 13 56 4f 01  	srli	a2, t5, 20
80000b18: 33 36 c0 00  	snez	a2, a2
80000b1c: 37 07 12 00  	lui	a4, 288
80000b20: 13 07 17 00  	addi	a4, a4, 1
80000b24: b3 b5 e5 00  	sltu	a1, a1, a4
80000b28: b3 7f b6 00  	and	t6, a2, a1

80000b2c <.LBB0_117>:
80000b2c: 17 37 00 00  	auipc	a4, 3
80000b30: 13 07 47 e0  	addi	a4, a4, -508
80000b34: 63 80 0f 0a  	beqz	t6, 0x80000bd4 <.LBB0_117+0xa8>
80000b38: 13 06 00 00  	mv	a2, zero
80000b3c: 93 05 80 00  	addi	a1, zero, 8
80000b40: 93 07 50 04  	addi	a5, zero, 69
;   for (i = 0; i < nm; i++)
80000b44: 93 04 00 04  	addi	s1, zero, 64
80000b48: ab a0 97 00  	scfgw	a5, s1
80000b4c: 93 07 00 0c  	addi	a5, zero, 192
80000b50: ab a0 f5 00  	scfgw	a1, a5
80000b54: 93 07 f0 04  	addi	a5, zero, 79
80000b58: 93 04 00 06  	addi	s1, zero, 96
80000b5c: ab a0 97 00  	scfgw	a5, s1
80000b60: 93 07 00 0e  	addi	a5, zero, 224
80000b64: ab a0 f5 00  	scfgw	a1, a5
80000b68: 93 05 00 02  	addi	a1, zero, 32
80000b6c: ab 20 b0 00  	scfgw	zero, a1
80000b70: 2b 20 0f 3a  	scfgwi	t5, 928
80000b74: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000b78: 93 0a 20 00  	addi	s5, zero, 2
80000b7c: b7 95 88 88  	lui	a1, 559241
80000b80: 87 31 07 00  	fld	ft3, 0(a4)
80000b84: 13 87 95 88  	addi	a4, a1, -1911
80000b88: 13 0b c0 03  	addi	s6, zero, 60
80000b8c: 13 0e 00 05  	addi	t3, zero, 80
80000b90: 93 04 60 04  	addi	s1, zero, 70
80000b94: 93 85 0a 00  	mv	a1, s5
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80000b98: b3 b7 e5 02  	mulhu	a5, a1, a4
80000b9c: 93 d7 57 00  	srli	a5, a5, 5
80000ba0: b3 87 67 03  	mul	a5, a5, s6
80000ba4: b3 87 f5 40  	sub	a5, a1, a5
80000ba8: 53 82 07 d2  	fcvt.d.w	ft4, a5
80000bac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bb0: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nl; j++)
80000bb4: 93 84 f4 ff  	addi	s1, s1, -1
80000bb8: b3 85 c5 00  	add	a1, a1, a2
80000bbc: e3 9e 04 fc  	bnez	s1, 0x80000b98 <.LBB0_117+0x6c>
;   for (i = 0; i < nm; i++)
80000bc0: 13 06 16 00  	addi	a2, a2, 1
80000bc4: 93 8a 2a 00  	addi	s5, s5, 2
80000bc8: e3 14 c6 fd  	bne	a2, t3, 0x80000b90 <.LBB0_117+0x64>
80000bcc: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000bd0: 6f 00 c0 06  	j	0x80000c3c <.LBB0_117+0x110>
80000bd4: 93 05 00 00  	mv	a1, zero
80000bd8: 93 0a 20 00  	addi	s5, zero, 2
80000bdc: 37 96 88 88  	lui	a2, 559241
80000be0: 13 0c 96 88  	addi	s8, a2, -1911
80000be4: 87 31 07 00  	fld	ft3, 0(a4)
80000be8: 13 0b c0 03  	addi	s6, zero, 60
80000bec: 93 0b 00 23  	addi	s7, zero, 560
80000bf0: 13 0e 00 05  	addi	t3, zero, 80
80000bf4: 13 06 0f 00  	mv	a2, t5
80000bf8: 13 07 00 00  	mv	a4, zero
80000bfc: 93 84 0a 00  	mv	s1, s5
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80000c00: b3 b7 84 03  	mulhu	a5, s1, s8
80000c04: 93 d7 57 00  	srli	a5, a5, 5
80000c08: b3 87 67 03  	mul	a5, a5, s6
80000c0c: b3 87 f4 40  	sub	a5, s1, a5
80000c10: 53 82 07 d2  	fcvt.d.w	ft4, a5
80000c14: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000c18: b3 07 e6 00  	add	a5, a2, a4
80000c1c: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nl; j++)
80000c20: 13 07 87 00  	addi	a4, a4, 8
80000c24: b3 84 b4 00  	add	s1, s1, a1
80000c28: e3 1c 77 fd  	bne	a4, s7, 0x80000c00 <.LBB0_117+0xd4>
;   for (i = 0; i < nm; i++)
80000c2c: 93 85 15 00  	addi	a1, a1, 1
80000c30: 13 06 06 23  	addi	a2, a2, 560
80000c34: 93 8a 2a 00  	addi	s5, s5, 2
80000c38: e3 90 c5 fd  	bne	a1, t3, 0x80000bf8 <.LBB0_117+0xcc>
;  for (i = 0; i < ni; i++)
80000c3c: b3 85 1c 01  	add	a1, s9, a7
80000c40: 13 d6 4c 01  	srli	a2, s9, 20
80000c44: 33 36 c0 00  	snez	a2, a2
80000c48: 37 07 12 00  	lui	a4, 288
80000c4c: 13 07 17 00  	addi	a4, a4, 1
80000c50: b3 b5 e5 00  	sltu	a1, a1, a4
80000c54: 33 7e b6 00  	and	t3, a2, a1
80000c58: b3 75 6e 00  	and	a1, t3, t1
80000c5c: b3 f5 d5 01  	and	a1, a1, t4
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80000c60: f3 28 00 b0  	csrr	a7, mcycle
80000c64: 63 8e 05 10  	beqz	a1, 0x80000d80 <.LBB0_117+0x254>
80000c68: 13 07 00 00  	mv	a4, zero
80000c6c: 93 05 80 00  	addi	a1, zero, 8
80000c70: 93 0e 10 03  	addi	t4, zero, 49
;  for (i = 0; i < ni; i++)
80000c74: 93 07 00 04  	addi	a5, zero, 64
80000c78: 93 04 00 0c  	addi	s1, zero, 192
80000c7c: ab a0 fe 00  	scfgw	t4, a5
80000c80: ab a0 95 00  	scfgw	a1, s1
80000c84: 93 0a 70 02  	addi	s5, zero, 39
80000c88: 93 04 00 06  	addi	s1, zero, 96
80000c8c: 13 03 00 0e  	addi	t1, zero, 224
80000c90: ab a0 9a 00  	scfgw	s5, s1
80000c94: ab a0 65 00  	scfgw	a1, t1
80000c98: 93 04 00 02  	addi	s1, zero, 32
80000c9c: ab 20 90 00  	scfgw	zero, s1
80000ca0: 2b a0 0c 3a  	scfgwi	s9, 928
80000ca4: 13 03 b0 03  	addi	t1, zero, 59
80000ca8: 93 04 10 00  	addi	s1, zero, 1
80000cac: 13 86 04 04  	addi	a2, s1, 64
80000cb0: 93 87 04 0c  	addi	a5, s1, 192
80000cb4: ab 20 c3 00  	scfgw	t1, a2
80000cb8: ab a0 f5 00  	scfgw	a1, a5
80000cbc: 13 06 80 e2  	addi	a2, zero, -472
80000cc0: 93 87 04 06  	addi	a5, s1, 96
80000cc4: ab a0 fe 00  	scfgw	t4, a5
80000cc8: 93 87 04 0e  	addi	a5, s1, 224
80000ccc: ab 20 f6 00  	scfgw	a2, a5
80000cd0: 13 86 04 08  	addi	a2, s1, 128
80000cd4: 93 87 04 10  	addi	a5, s1, 256
80000cd8: ab a0 ca 00  	scfgw	s5, a2
80000cdc: ab a0 f5 00  	scfgw	a1, a5
80000ce0: 93 85 04 02  	addi	a1, s1, 32
80000ce4: ab 20 b0 00  	scfgw	zero, a1
80000ce8: 2b 20 14 34  	scfgwi	s0, 833
80000cec: 93 05 00 19  	addi	a1, zero, 400
80000cf0: 13 06 20 00  	addi	a2, zero, 2
80000cf4: 93 07 06 04  	addi	a5, a2, 64
80000cf8: 13 04 06 0c  	addi	s0, a2, 192
80000cfc: ab 20 f3 00  	scfgw	t1, a5
80000d00: ab a0 85 00  	scfgw	a1, s0
80000d04: b7 a5 ff ff  	lui	a1, 1048570
80000d08: 93 87 85 3d  	addi	a5, a1, 984
80000d0c: 93 04 06 06  	addi	s1, a2, 96
80000d10: 13 04 06 0e  	addi	s0, a2, 224
80000d14: ab a0 9e 00  	scfgw	t4, s1
80000d18: ab a0 87 00  	scfgw	a5, s0
80000d1c: 93 85 85 24  	addi	a1, a1, 584
80000d20: 93 07 06 08  	addi	a5, a2, 128
80000d24: 93 04 06 10  	addi	s1, a2, 256
80000d28: ab a0 fa 00  	scfgw	s5, a5
80000d2c: ab a0 95 00  	scfgw	a1, s1
80000d30: 93 05 06 02  	addi	a1, a2, 32
80000d34: ab 20 b0 00  	scfgw	zero, a1
80000d38: 2b 20 29 34  	scfgwi	s2, 834
80000d3c: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000d40: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000d44: 93 05 20 03  	addi	a1, zero, 50
80000d48: 13 06 80 02  	addi	a2, zero, 40
80000d4c: 93 07 00 00  	mv	a5, zero
80000d50: 93 04 c0 03  	addi	s1, zero, 60
80000d54: 53 82 31 22  	fmv.d	ft4, ft3
;       for (k = 0; k < nk; ++k)
80000d58: 93 84 f4 ff  	addi	s1, s1, -1
;         x += A[i][k] * B[k][j];
80000d5c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
;       for (k = 0; k < nk; ++k)
80000d60: e3 9c 04 fe  	bnez	s1, 0x80000d58 <.LBB0_117+0x22c>
;       E[i][j] = x;
80000d64: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nj; j++)
80000d68: 93 87 17 00  	addi	a5, a5, 1
80000d6c: e3 92 b7 fe  	bne	a5, a1, 0x80000d50 <.LBB0_117+0x224>
;  for (i = 0; i < ni; i++)
80000d70: 13 07 17 00  	addi	a4, a4, 1
80000d74: e3 1c c7 fc  	bne	a4, a2, 0x80000d4c <.LBB0_117+0x220>
80000d78: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000d7c: 6f 00 80 07  	j	0x80000df4 <.LBB0_117+0x2c8>
80000d80: 13 0b 00 00  	mv	s6, zero
80000d84: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000d88: 13 07 00 1e  	addi	a4, zero, 480
80000d8c: 93 0e 00 19  	addi	t4, zero, 400
80000d90: 93 0a 20 03  	addi	s5, zero, 50
80000d94: 13 03 80 02  	addi	t1, zero, 40
80000d98: 93 04 00 00  	mv	s1, zero
80000d9c: 13 06 09 00  	mv	a2, s2
80000da0: 93 05 00 00  	mv	a1, zero
80000da4: 93 07 06 00  	mv	a5, a2
80000da8: 53 82 31 22  	fmv.d	ft4, ft3
;         x += A[i][k] * B[k][j];
80000dac: 33 05 b4 00  	add	a0, s0, a1
80000db0: 87 32 05 00  	fld	ft5, 0(a0)
80000db4: 07 b3 07 00  	fld	ft6, 0(a5)
80000db8: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;       for (k = 0; k < nk; ++k)
80000dbc: 93 85 85 00  	addi	a1, a1, 8
80000dc0: 93 87 07 19  	addi	a5, a5, 400
80000dc4: e3 94 e5 fe  	bne	a1, a4, 0x80000dac <.LBB0_117+0x280>
;       E[i][j] = x;
80000dc8: 33 05 db 03  	mul	a0, s6, t4
80000dcc: 33 85 ac 00  	add	a0, s9, a0
80000dd0: 93 95 34 00  	slli	a1, s1, 3
80000dd4: 33 05 b5 00  	add	a0, a0, a1
80000dd8: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nj; j++)
80000ddc: 93 84 14 00  	addi	s1, s1, 1
80000de0: 13 06 86 00  	addi	a2, a2, 8
80000de4: e3 9e 54 fb  	bne	s1, s5, 0x80000da0 <.LBB0_117+0x274>
;  for (i = 0; i < ni; i++)
80000de8: 13 0b 1b 00  	addi	s6, s6, 1
80000dec: 13 04 04 1e  	addi	s0, s0, 480
80000df0: e3 14 6b fa  	bne	s6, t1, 0x80000d98 <.LBB0_117+0x26c>
;   for (i = 0; i < nj; i++)
80000df4: 33 85 09 01  	add	a0, s3, a6
80000df8: 93 d5 49 01  	srli	a1, s3, 20
80000dfc: b3 35 b0 00  	snez	a1, a1
80000e00: 37 06 12 00  	lui	a2, 288
80000e04: 13 06 16 00  	addi	a2, a2, 1
80000e08: 33 35 c5 00  	sltu	a0, a0, a2
80000e0c: 33 f8 a5 00  	and	a6, a1, a0
80000e10: 33 75 78 00  	and	a0, a6, t2
80000e14: 13 06 00 00  	mv	a2, zero
80000e18: 33 75 f5 01  	and	a0, a0, t6
80000e1c: 63 0c 05 10  	beqz	a0, 0x80000f34 <.LBB0_117+0x408>
80000e20: 13 05 80 00  	addi	a0, zero, 8
80000e24: 93 05 50 04  	addi	a1, zero, 69
;   for (i = 0; i < nj; i++)
80000e28: 13 07 00 04  	addi	a4, zero, 64
80000e2c: 93 07 00 0c  	addi	a5, zero, 192
80000e30: ab a0 e5 00  	scfgw	a1, a4
80000e34: ab 20 f5 00  	scfgw	a0, a5
80000e38: 13 07 10 03  	addi	a4, zero, 49
80000e3c: 93 07 00 06  	addi	a5, zero, 96
80000e40: 93 04 00 0e  	addi	s1, zero, 224
80000e44: ab 20 f7 00  	scfgw	a4, a5
80000e48: ab 20 95 00  	scfgw	a0, s1
80000e4c: 93 07 00 02  	addi	a5, zero, 32
80000e50: ab 20 f0 00  	scfgw	zero, a5
80000e54: 2b a0 09 3a  	scfgwi	s3, 928
80000e58: 13 03 f0 04  	addi	t1, zero, 79
80000e5c: 93 04 10 00  	addi	s1, zero, 1
80000e60: 13 84 04 04  	addi	s0, s1, 64
80000e64: 93 87 04 0c  	addi	a5, s1, 192
80000e68: ab 20 83 00  	scfgw	t1, s0
80000e6c: ab 20 f5 00  	scfgw	a0, a5
80000e70: 93 07 80 d8  	addi	a5, zero, -632
80000e74: 13 84 04 06  	addi	s0, s1, 96
80000e78: ab a0 85 00  	scfgw	a1, s0
80000e7c: 13 84 04 0e  	addi	s0, s1, 224
80000e80: ab a0 87 00  	scfgw	a5, s0
80000e84: 93 87 04 08  	addi	a5, s1, 128
80000e88: 13 84 04 10  	addi	s0, s1, 256
80000e8c: ab 20 f7 00  	scfgw	a4, a5
80000e90: ab 20 85 00  	scfgw	a0, s0
80000e94: 13 85 04 02  	addi	a0, s1, 32
80000e98: ab 20 a0 00  	scfgw	zero, a0
80000e9c: 2b a0 16 34  	scfgwi	a3, 833
80000ea0: 13 05 00 23  	addi	a0, zero, 560
80000ea4: 93 06 20 00  	addi	a3, zero, 2
80000ea8: 93 87 06 04  	addi	a5, a3, 64
80000eac: 93 84 06 0c  	addi	s1, a3, 192
80000eb0: ab 20 f3 00  	scfgw	t1, a5
80000eb4: ab 20 95 00  	scfgw	a0, s1
80000eb8: 37 55 ff ff  	lui	a0, 1048565
80000ebc: 93 07 85 33  	addi	a5, a0, 824
80000ec0: 93 84 06 06  	addi	s1, a3, 96
80000ec4: 13 84 06 0e  	addi	s0, a3, 224
80000ec8: ab a0 95 00  	scfgw	a1, s1
80000ecc: ab a0 87 00  	scfgw	a5, s0
80000ed0: 13 05 85 10  	addi	a0, a0, 264
80000ed4: 93 85 06 08  	addi	a1, a3, 128
80000ed8: 93 87 06 10  	addi	a5, a3, 256
80000edc: ab 20 b7 00  	scfgw	a4, a1
80000ee0: ab 20 f5 00  	scfgw	a0, a5
80000ee4: 13 85 06 02  	addi	a0, a3, 32
80000ee8: ab 20 a0 00  	scfgw	zero, a0
80000eec: 2b 20 2f 34  	scfgwi	t5, 834
80000ef0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000ef4: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000ef8: 93 05 60 04  	addi	a1, zero, 70
80000efc: 93 06 20 03  	addi	a3, zero, 50
80000f00: 13 07 00 00  	mv	a4, zero
80000f04: 93 07 00 05  	addi	a5, zero, 80
80000f08: 53 82 31 22  	fmv.d	ft4, ft3
;       for (k = 0; k < nm; ++k)
80000f0c: 93 87 f7 ff  	addi	a5, a5, -1
;         x += C[i][k] * D[k][j];
80000f10: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
;       for (k = 0; k < nm; ++k)
80000f14: e3 9c 07 fe  	bnez	a5, 0x80000f0c <.LBB0_117+0x3e0>
;       F[i][j] = x;
80000f18: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nl; j++)
80000f1c: 13 07 17 00  	addi	a4, a4, 1
80000f20: e3 12 b7 fe  	bne	a4, a1, 0x80000f04 <.LBB0_117+0x3d8>
;   for (i = 0; i < nj; i++)
80000f24: 13 06 16 00  	addi	a2, a2, 1
80000f28: e3 1c d6 fc  	bne	a2, a3, 0x80000f00 <.LBB0_117+0x3d4>
80000f2c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f30: 6f 00 40 07  	j	0x80000fa4 <.LBB0_117+0x478>
80000f34: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000f38: 13 07 00 28  	addi	a4, zero, 640
80000f3c: 93 03 00 23  	addi	t2, zero, 560
80000f40: 93 0e 60 04  	addi	t4, zero, 70
80000f44: 13 03 20 03  	addi	t1, zero, 50
80000f48: 93 04 00 00  	mv	s1, zero
80000f4c: 93 05 0f 00  	mv	a1, t5
80000f50: 13 04 00 00  	mv	s0, zero
80000f54: 93 87 05 00  	mv	a5, a1
80000f58: 53 82 31 22  	fmv.d	ft4, ft3
;         x += C[i][k] * D[k][j];
80000f5c: 33 85 86 00  	add	a0, a3, s0
80000f60: 87 32 05 00  	fld	ft5, 0(a0)
80000f64: 07 b3 07 00  	fld	ft6, 0(a5)
80000f68: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;       for (k = 0; k < nm; ++k)
80000f6c: 13 04 84 00  	addi	s0, s0, 8
80000f70: 93 87 07 23  	addi	a5, a5, 560
80000f74: e3 14 e4 fe  	bne	s0, a4, 0x80000f5c <.LBB0_117+0x430>
;       F[i][j] = x;
80000f78: 33 05 76 02  	mul	a0, a2, t2
80000f7c: 33 85 a9 00  	add	a0, s3, a0
80000f80: 93 97 34 00  	slli	a5, s1, 3
80000f84: 33 05 f5 00  	add	a0, a0, a5
80000f88: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nl; j++)
80000f8c: 93 84 14 00  	addi	s1, s1, 1
80000f90: 93 85 85 00  	addi	a1, a1, 8
80000f94: e3 9e d4 fb  	bne	s1, t4, 0x80000f50 <.LBB0_117+0x424>
;   for (i = 0; i < nj; i++)
80000f98: 13 06 16 00  	addi	a2, a2, 1
80000f9c: 93 86 06 28  	addi	a3, a3, 640
80000fa0: e3 14 66 fa  	bne	a2, t1, 0x80000f48 <.LBB0_117+0x41c>
;   for (i = 0; i < ni; i++)
80000fa4: 33 05 5a 00  	add	a0, s4, t0
80000fa8: 93 55 4a 01  	srli	a1, s4, 20
80000fac: b3 35 b0 00  	snez	a1, a1
80000fb0: 37 06 12 00  	lui	a2, 288
80000fb4: 13 06 16 00  	addi	a2, a2, 1
80000fb8: 33 35 c5 00  	sltu	a0, a0, a2
80000fbc: 33 f9 a5 00  	and	s2, a1, a0
80000fc0: 33 75 2e 01  	and	a0, t3, s2
80000fc4: 13 06 00 00  	mv	a2, zero
80000fc8: 33 75 a8 00  	and	a0, a6, a0
80000fcc: 63 02 05 1c  	beqz	a0, 0x80001190 <.LBB0_117+0x664>
80000fd0: 13 05 80 00  	addi	a0, zero, 8
80000fd4: 93 05 50 04  	addi	a1, zero, 69
;   for (i = 0; i < ni; i++)
80000fd8: 93 06 00 04  	addi	a3, zero, 64
80000fdc: 13 07 00 0c  	addi	a4, zero, 192
80000fe0: ab a0 d5 00  	scfgw	a1, a3
80000fe4: ab 20 e5 00  	scfgw	a0, a4
80000fe8: 93 06 70 02  	addi	a3, zero, 39
80000fec: 13 07 00 06  	addi	a4, zero, 96
80000ff0: 93 07 00 0e  	addi	a5, zero, 224
80000ff4: ab a0 e6 00  	scfgw	a3, a4
80000ff8: ab 20 f5 00  	scfgw	a0, a5
80000ffc: 13 07 00 02  	addi	a4, zero, 32
80001000: ab 20 e0 00  	scfgw	zero, a4
80001004: 2b 20 0a 3a  	scfgwi	s4, 928
80001008: 13 07 10 03  	addi	a4, zero, 49
8000100c: 93 07 10 00  	addi	a5, zero, 1
80001010: 93 84 07 04  	addi	s1, a5, 64
80001014: 13 84 07 0c  	addi	s0, a5, 192
80001018: ab 20 97 00  	scfgw	a4, s1
8000101c: ab 20 85 00  	scfgw	a0, s0
80001020: 93 04 80 e7  	addi	s1, zero, -392
80001024: 13 84 07 06  	addi	s0, a5, 96
80001028: ab a0 85 00  	scfgw	a1, s0
8000102c: 13 84 07 0e  	addi	s0, a5, 224
80001030: ab a0 84 00  	scfgw	s1, s0
80001034: 93 84 07 08  	addi	s1, a5, 128
80001038: 13 84 07 10  	addi	s0, a5, 256
8000103c: ab a0 96 00  	scfgw	a3, s1
80001040: ab 20 85 00  	scfgw	a0, s0
80001044: 13 85 07 02  	addi	a0, a5, 32
80001048: ab 20 a0 00  	scfgw	zero, a0
8000104c: 2b a0 1c 34  	scfgwi	s9, 833
80001050: 13 05 00 23  	addi	a0, zero, 560
80001054: 93 07 20 00  	addi	a5, zero, 2
80001058: 93 84 07 04  	addi	s1, a5, 64
8000105c: 13 84 07 0c  	addi	s0, a5, 192
80001060: ab 20 97 00  	scfgw	a4, s1
80001064: ab 20 85 00  	scfgw	a0, s0
80001068: 37 95 ff ff  	lui	a0, 1048569
8000106c: 13 07 85 4d  	addi	a4, a0, 1240
80001070: 93 84 07 06  	addi	s1, a5, 96
80001074: 13 84 07 0e  	addi	s0, a5, 224
80001078: ab a0 95 00  	scfgw	a1, s1
8000107c: ab 20 87 00  	scfgw	a4, s0
80001080: 13 05 85 2a  	addi	a0, a0, 680
80001084: 93 85 07 08  	addi	a1, a5, 128
80001088: 13 87 07 10  	addi	a4, a5, 256
8000108c: ab a0 b6 00  	scfgw	a3, a1
80001090: ab 20 e5 00  	scfgw	a0, a4
80001094: 13 85 07 02  	addi	a0, a5, 32
80001098: ab 20 a0 00  	scfgw	zero, a0
8000109c: 2b a0 29 34  	scfgwi	s3, 834
800010a0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800010a4: 13 05 80 02  	addi	a0, zero, 40
800010a8: 93 05 60 04  	addi	a1, zero, 70
;         x += E[i][k] * F[k][j];
800010ac: d3 71 11 12  	fmul.d	ft3, ft2, ft1
800010b0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010b4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010b8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010bc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010c0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010c4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010c8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010cc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010d0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010d4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010d8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010dc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010e0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010e4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010e8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010ec: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010f0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010f4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010f8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800010fc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001100: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001104: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001108: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000110c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001110: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001114: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001118: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000111c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001120: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001124: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001128: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000112c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001130: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001134: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001138: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000113c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001140: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001144: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001148: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000114c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001150: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001154: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001158: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000115c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001160: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001164: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001168: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000116c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80001170: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       G[i][j] = x;
80001174: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nl; j++)
80001178: 93 85 f5 ff  	addi	a1, a1, -1
8000117c: e3 98 05 f2  	bnez	a1, 0x800010ac <.LBB0_117+0x580>
;   for (i = 0; i < ni; i++)
80001180: 13 06 16 00  	addi	a2, a2, 1
80001184: e3 12 a6 f2  	bne	a2, a0, 0x800010a8 <.LBB0_117+0x57c>
80001188: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000118c: 6f 00 40 07  	j	0x80001200 <.LBB0_117+0x6d4>
80001190: d3 01 00 d2  	fcvt.d.w	ft3, zero
80001194: 93 06 00 19  	addi	a3, zero, 400
80001198: 93 02 00 23  	addi	t0, zero, 560
8000119c: 93 07 60 04  	addi	a5, zero, 70
800011a0: 13 08 80 02  	addi	a6, zero, 40
800011a4: 93 05 00 00  	mv	a1, zero
800011a8: 13 87 09 00  	mv	a4, s3
800011ac: 13 04 00 00  	mv	s0, zero
800011b0: 93 04 07 00  	mv	s1, a4
800011b4: 53 82 31 22  	fmv.d	ft4, ft3
;         x += E[i][k] * F[k][j];
800011b8: 33 85 8c 00  	add	a0, s9, s0
800011bc: 87 32 05 00  	fld	ft5, 0(a0)
800011c0: 07 b3 04 00  	fld	ft6, 0(s1)
800011c4: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;       for (k = 0; k < nj; ++k)
800011c8: 13 04 84 00  	addi	s0, s0, 8
800011cc: 93 84 04 23  	addi	s1, s1, 560
800011d0: e3 14 d4 fe  	bne	s0, a3, 0x800011b8 <.LBB0_117+0x68c>
;       G[i][j] = x;
800011d4: 33 05 56 02  	mul	a0, a2, t0
800011d8: 33 05 aa 00  	add	a0, s4, a0
800011dc: 93 94 35 00  	slli	s1, a1, 3
800011e0: 33 05 95 00  	add	a0, a0, s1
800011e4: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nl; j++)
800011e8: 93 85 15 00  	addi	a1, a1, 1
800011ec: 13 07 87 00  	addi	a4, a4, 8
800011f0: e3 9e f5 fa  	bne	a1, a5, 0x800011ac <.LBB0_117+0x680>
;   for (i = 0; i < ni; i++)
800011f4: 13 06 16 00  	addi	a2, a2, 1
800011f8: 93 8c 0c 19  	addi	s9, s9, 400
800011fc: e3 14 06 fb  	bne	a2, a6, 0x800011a4 <.LBB0_117+0x678>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001200: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80001204: b3 05 15 41  	sub	a1, a0, a7

80001208 <.LBB0_118>:
80001208: 17 25 00 00  	auipc	a0, 2
8000120c: 13 05 95 46  	addi	a0, a0, 1129
80001210: 97 00 00 00  	auipc	ra, 0
80001214: e7 80 c0 11  	jalr	284(ra)
80001218: 13 05 00 00  	mv	a0, zero
8000121c: 63 04 09 06  	beqz	s2, 0x80001284 <.LBB0_118+0x7c>
80001220: 93 05 80 00  	addi	a1, zero, 8
80001224: 13 06 50 04  	addi	a2, zero, 69
;     for (int i = 0; i < n; i++){
80001228: 93 06 00 04  	addi	a3, zero, 64
8000122c: ab 20 d6 00  	scfgw	a2, a3
80001230: 13 06 00 0c  	addi	a2, zero, 192
80001234: ab a0 c5 00  	scfgw	a1, a2
80001238: 13 06 70 02  	addi	a2, zero, 39
8000123c: 93 06 00 06  	addi	a3, zero, 96
80001240: ab 20 d6 00  	scfgw	a2, a3
80001244: 13 06 00 0e  	addi	a2, zero, 224
80001248: ab a0 c5 00  	scfgw	a1, a2
8000124c: 93 05 00 02  	addi	a1, zero, 32
80001250: ab 20 b0 00  	scfgw	zero, a1
80001254: 2b 20 0a 32  	scfgwi	s4, 800
80001258: f3 e5 00 7c  	csrrsi	a1, 1984, 1
8000125c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80001260: 93 05 80 02  	addi	a1, zero, 40
80001264: 13 06 60 04  	addi	a2, zero, 70
;         for (int j = 0; j < m; j++){
80001268: 13 06 f6 ff  	addi	a2, a2, -1
;             r += A[i * m + j];
8000126c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;         for (int j = 0; j < m; j++){
80001270: e3 1c 06 fe  	bnez	a2, 0x80001268 <.LBB0_118+0x60>
;     for (int i = 0; i < n; i++){
80001274: 13 05 15 00  	addi	a0, a0, 1
80001278: e3 16 b5 fe  	bne	a0, a1, 0x80001264 <.LBB0_118+0x5c>
8000127c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001280: 6f 00 40 03  	j	0x800012b4 <.LBB0_119>
80001284: d3 01 00 d2  	fcvt.d.w	ft3, zero
80001288: 93 05 00 23  	addi	a1, zero, 560
8000128c: 13 06 80 02  	addi	a2, zero, 40
80001290: 93 06 00 00  	mv	a3, zero
;             r += A[i * m + j];
80001294: 33 07 da 00  	add	a4, s4, a3
80001298: 07 32 07 00  	fld	ft4, 0(a4)
;         for (int j = 0; j < m; j++){
8000129c: 93 86 86 00  	addi	a3, a3, 8
;             r += A[i * m + j];
800012a0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;         for (int j = 0; j < m; j++){
800012a4: e3 98 b6 fe  	bne	a3, a1, 0x80001294 <.LBB0_118+0x8c>
;     for (int i = 0; i < n; i++){
800012a8: 13 05 15 00  	addi	a0, a0, 1
800012ac: 13 0a 0a 23  	addi	s4, s4, 560
800012b0: e3 10 c5 fe  	bne	a0, a2, 0x80001290 <.LBB0_118+0x88>

800012b4 <.LBB0_119>:
800012b4: 17 25 00 00  	auipc	a0, 2
800012b8: 13 05 45 68  	addi	a0, a0, 1668
800012bc: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
800012c0: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
800012c4: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
800012c8: 27 30 81 00  	fsd	fs0, 0(sp)
800012cc: 03 26 01 00  	lw	a2, 0(sp)
800012d0: 83 26 41 00  	lw	a3, 4(sp)

800012d4 <.LBB0_120>:
800012d4: 17 25 00 00  	auipc	a0, 2
800012d8: 13 05 15 39  	addi	a0, a0, 913
800012dc: 97 00 00 00  	auipc	ra, 0
800012e0: e7 80 00 05  	jalr	80(ra)

800012e4 <.LBB0_121>:
800012e4: 17 25 00 00  	auipc	a0, 2
800012e8: 13 05 c5 65  	addi	a0, a0, 1628
800012ec: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
800012f0: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
800012f4: 07 34 81 00  	fld	fs0, 8(sp)
800012f8: 83 2c 41 01  	lw	s9, 20(sp)
800012fc: 03 2c 81 01  	lw	s8, 24(sp)
80001300: 83 2b c1 01  	lw	s7, 28(sp)
80001304: 03 2b 01 02  	lw	s6, 32(sp)
80001308: 83 2a 41 02  	lw	s5, 36(sp)
8000130c: 03 2a 81 02  	lw	s4, 40(sp)
80001310: 83 29 c1 02  	lw	s3, 44(sp)
80001314: 03 29 01 03  	lw	s2, 48(sp)
80001318: 83 24 41 03  	lw	s1, 52(sp)
8000131c: 03 24 81 03  	lw	s0, 56(sp)
80001320: 83 20 c1 03  	lw	ra, 60(sp)
80001324: 13 01 01 04  	addi	sp, sp, 64
80001328: 67 80 00 00  	ret

8000132c <printf_>:
; {
8000132c: 13 01 01 fd  	addi	sp, sp, -48
80001330: 23 26 11 00  	sw	ra, 12(sp)
80001334: 93 02 05 00  	mv	t0, a0
80001338: 23 26 11 03  	sw	a7, 44(sp)
8000133c: 23 24 01 03  	sw	a6, 40(sp)
80001340: 23 22 f1 02  	sw	a5, 36(sp)
80001344: 23 20 e1 02  	sw	a4, 32(sp)
80001348: 23 2e d1 00  	sw	a3, 28(sp)
8000134c: 23 2c c1 00  	sw	a2, 24(sp)
80001350: 23 2a b1 00  	sw	a1, 20(sp)
80001354: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001358: 23 24 a1 00  	sw	a0, 8(sp)

8000135c <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
8000135c: 17 15 00 00  	auipc	a0, 1
80001360: 13 05 45 c2  	addi	a0, a0, -988
80001364: 93 05 71 00  	addi	a1, sp, 7
80001368: 13 06 f0 ff  	addi	a2, zero, -1
8000136c: 13 07 41 01  	addi	a4, sp, 20
80001370: 93 86 02 00  	mv	a3, t0
80001374: 97 00 00 00  	auipc	ra, 0
80001378: e7 80 40 01  	jalr	20(ra)
;   return ret;
8000137c: 83 20 c1 00  	lw	ra, 12(sp)
80001380: 13 01 01 03  	addi	sp, sp, 48
80001384: 67 80 00 00  	ret

80001388 <_vsnprintf.llvm.11632292163828655644>:
; {
80001388: 13 01 01 f9  	addi	sp, sp, -112
8000138c: 23 26 11 06  	sw	ra, 108(sp)
80001390: 23 24 81 06  	sw	s0, 104(sp)
80001394: 23 22 91 06  	sw	s1, 100(sp)
80001398: 23 20 21 07  	sw	s2, 96(sp)
8000139c: 23 2e 31 05  	sw	s3, 92(sp)
800013a0: 23 2c 41 05  	sw	s4, 88(sp)
800013a4: 23 2a 51 05  	sw	s5, 84(sp)
800013a8: 23 28 61 05  	sw	s6, 80(sp)
800013ac: 23 26 71 05  	sw	s7, 76(sp)
800013b0: 23 24 81 05  	sw	s8, 72(sp)
800013b4: 23 22 91 05  	sw	s9, 68(sp)
800013b8: 23 20 a1 05  	sw	s10, 64(sp)
800013bc: 23 2e b1 03  	sw	s11, 60(sp)
800013c0: 93 09 07 00  	mv	s3, a4
800013c4: 13 84 06 00  	mv	s0, a3
800013c8: 93 0a 06 00  	mv	s5, a2
800013cc: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800013d0: 63 86 05 00  	beqz	a1, 0x800013dc <.LBB1_183>
800013d4: 13 09 05 00  	mv	s2, a0
800013d8: 6f 00 c0 00  	j	0x800013e4 <.LBB1_183+0x8>

800013dc <.LBB1_183>:
800013dc: 17 19 00 00  	auipc	s2, 1
800013e0: 13 09 09 c5  	addi	s2, s2, -944
800013e4: 13 0c 00 00  	mv	s8, zero
800013e8: 13 0b 50 02  	addi	s6, zero, 37
800013ec: 93 0d 00 01  	addi	s11, zero, 16
800013f0: 93 0b e0 02  	addi	s7, zero, 46
800013f4: 37 15 00 00  	lui	a0, 1
800013f8: 13 05 05 80  	addi	a0, a0, -2048
800013fc: 23 2c a1 00  	sw	a0, 24(sp)
80001400: 37 05 01 00  	lui	a0, 16
80001404: 13 05 f5 ff  	addi	a0, a0, -1
80001408: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
8000140c: 13 0d 24 00  	addi	s10, s0, 2
80001410: 93 0c 0c 00  	mv	s9, s8
80001414: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001418: 03 45 04 00  	lbu	a0, 0(s0)
8000141c: e3 04 05 30  	beqz	a0, 0x80001f24 <.LBB1_124+0x3b0>
80001420: 63 08 65 03  	beq	a0, s6, 0x80001450 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80001424: 93 84 1c 00  	addi	s1, s9, 1
80001428: 93 05 0a 00  	mv	a1, s4
8000142c: 13 86 0c 00  	mv	a2, s9
80001430: 93 86 0a 00  	mv	a3, s5
80001434: e7 00 09 00  	jalr	s2
;       format++;
80001438: 13 04 14 00  	addi	s0, s0, 1
;       continue;
8000143c: 13 0d 1d 00  	addi	s10, s10, 1
80001440: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001444: 03 45 04 00  	lbu	a0, 0(s0)
80001448: e3 1c 05 fc  	bnez	a0, 0x80001420 <.LBB1_183+0x44>
8000144c: 6f 00 90 2d  	j	0x80001f24 <.LBB1_124+0x3b0>
;     flags = 0U;
80001450: 13 04 00 00  	mv	s0, zero
80001454: 6f 00 00 01  	j	0x80001464 <.LBB1_9+0x8>

80001458 <.LBB1_8>:
80001458: 93 05 00 01  	addi	a1, zero, 16

8000145c <.LBB1_9>:
8000145c: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001460: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001464: 03 45 fd ff  	lbu	a0, -1(s10)
80001468: 93 05 05 fe  	addi	a1, a0, -32
8000146c: 63 ec bd 02  	bltu	s11, a1, 0x800014a4 <.LBB1_15>
80001470: 93 95 25 00  	slli	a1, a1, 2

80001474 <.LBB1_184>:
80001474: 17 26 00 00  	auipc	a2, 2
80001478: 13 06 06 21  	addi	a2, a2, 528
8000147c: b3 85 c5 00  	add	a1, a1, a2
80001480: 03 a6 05 00  	lw	a2, 0(a1)
80001484: 93 05 10 00  	addi	a1, zero, 1
80001488: 67 00 06 00  	jr	a2

8000148c <.LBB1_12>:
8000148c: 93 05 80 00  	addi	a1, zero, 8
80001490: 6f f0 df fc  	j	0x8000145c <.LBB1_9>

80001494 <.LBB1_13>:
80001494: 93 05 40 00  	addi	a1, zero, 4
80001498: 6f f0 5f fc  	j	0x8000145c <.LBB1_9>

8000149c <.LBB1_14>:
8000149c: 93 05 20 00  	addi	a1, zero, 2
800014a0: 6f f0 df fb  	j	0x8000145c <.LBB1_9>

800014a4 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800014a4: 93 05 05 fd  	addi	a1, a0, -48
800014a8: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800014ac: 93 05 fd ff  	addi	a1, s10, -1
800014b0: 93 06 90 00  	addi	a3, zero, 9
800014b4: 63 ee c6 06  	bltu	a3, a2, 0x80001530 <.LBB1_15+0x8c>
800014b8: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800014bc: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800014c0: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800014c4: b3 06 8b 03  	mul	a3, s6, s8
800014c8: 93 85 15 00  	addi	a1, a1, 1
800014cc: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800014d0: 93 06 05 fd  	addi	a3, a0, -48
800014d4: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800014d8: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800014dc: e3 e0 86 ff  	bltu	a3, s8, 0x800014bc <.LBB1_15+0x18>
800014e0: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800014e4: 63 16 75 0b  	bne	a0, s7, 0x80001590 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
800014e8: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
800014ec: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
800014f0: 93 05 05 fd  	addi	a1, a0, -48
800014f4: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
800014f8: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
800014fc: 93 06 90 00  	addi	a3, zero, 9
80001500: 63 e0 c6 06  	bltu	a3, a2, 0x80001560 <.LBB1_15+0xbc>
80001504: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001508: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000150c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001510: b3 86 8b 03  	mul	a3, s7, s8
80001514: 93 85 15 00  	addi	a1, a1, 1
80001518: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000151c: 93 06 05 fd  	addi	a3, a0, -48
80001520: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001524: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001528: e3 e0 86 ff  	bltu	a3, s8, 0x80001508 <.LBB1_15+0x64>
8000152c: 6f 00 00 07  	j	0x8000159c <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001530: 13 06 a0 02  	addi	a2, zero, 42
80001534: 63 18 c5 04  	bne	a0, a2, 0x80001584 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001538: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
8000153c: 63 d4 05 00  	bgez	a1, 0x80001544 <.LBB1_15+0xa0>
80001540: 13 64 24 00  	ori	s0, s0, 2
80001544: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001548: 03 45 0d 00  	lbu	a0, 0(s10)
8000154c: 13 d6 f5 41  	srai	a2, a1, 31
80001550: b3 85 c5 00  	add	a1, a1, a2
80001554: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001558: e3 08 75 f9  	beq	a0, s7, 0x800014e8 <.LBB1_15+0x44>
8000155c: 6f 00 40 03  	j	0x80001590 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001560: 13 06 a0 02  	addi	a2, zero, 42
80001564: 63 1a c5 02  	bne	a0, a2, 0x80001598 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001568: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
8000156c: 63 44 70 01  	bgtz	s7, 0x80001574 <.LBB1_15+0xd0>
80001570: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001574: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001578: 13 0d 2d 00  	addi	s10, s10, 2
8000157c: 93 89 49 00  	addi	s3, s3, 4
80001580: 6f 00 00 02  	j	0x800015a0 <.LBB1_15+0xfc>
80001584: 13 0b 00 00  	mv	s6, zero
80001588: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
8000158c: e3 0e 75 f5  	beq	a0, s7, 0x800014e8 <.LBB1_15+0x44>
80001590: 93 0b 00 00  	mv	s7, zero
80001594: 6f 00 c0 00  	j	0x800015a0 <.LBB1_15+0xfc>
80001598: 93 0b 00 00  	mv	s7, zero
8000159c: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800015a0: 93 05 85 f9  	addi	a1, a0, -104
800015a4: 13 d6 15 00  	srli	a2, a1, 1
800015a8: 93 95 f5 01  	slli	a1, a1, 31
800015ac: b3 e5 c5 00  	or	a1, a1, a2
800015b0: 13 06 90 00  	addi	a2, zero, 9
800015b4: 63 62 b6 06  	bltu	a2, a1, 0x80001618 <.LBB1_42>
800015b8: 93 95 25 00  	slli	a1, a1, 2

800015bc <.LBB1_185>:
800015bc: 17 26 00 00  	auipc	a2, 2
800015c0: 13 06 c6 10  	addi	a2, a2, 268
800015c4: b3 85 c5 00  	add	a1, a1, a2
800015c8: 83 a6 05 00  	lw	a3, 0(a1)
800015cc: 93 05 10 00  	addi	a1, zero, 1
800015d0: 13 06 00 10  	addi	a2, zero, 256
800015d4: 67 80 06 00  	jr	a3

800015d8 <.LBB1_36>:
;         if (*format == 'h') {
800015d8: 03 45 1d 00  	lbu	a0, 1(s10)
800015dc: 93 05 80 06  	addi	a1, zero, 104
800015e0: 63 12 b5 12  	bne	a0, a1, 0x80001704 <.LBB1_53+0x48>
800015e4: 93 05 20 00  	addi	a1, zero, 2
800015e8: 13 06 00 0c  	addi	a2, zero, 192
800015ec: 6f 00 00 02  	j	0x8000160c <.LBB1_41>

800015f0 <.LBB1_38>:
800015f0: 13 06 00 20  	addi	a2, zero, 512
800015f4: 6f 00 80 01  	j	0x8000160c <.LBB1_41>

800015f8 <.LBB1_39>:
;         if (*format == 'l') {
800015f8: 03 45 1d 00  	lbu	a0, 1(s10)
800015fc: 93 05 c0 06  	addi	a1, zero, 108
80001600: 63 18 b5 10  	bne	a0, a1, 0x80001710 <.LBB1_53+0x54>
80001604: 93 05 20 00  	addi	a1, zero, 2
80001608: 13 06 00 30  	addi	a2, zero, 768

8000160c <.LBB1_41>:
8000160c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001610: 03 45 0d 00  	lbu	a0, 0(s10)
80001614: 33 64 c4 00  	or	s0, s0, a2

80001618 <.LBB1_42>:
;     switch (*format) {
80001618: 93 05 b5 fd  	addi	a1, a0, -37
8000161c: 13 06 30 05  	addi	a2, zero, 83
80001620: 63 64 b6 10  	bltu	a2, a1, 0x80001728 <.LBB1_59>
80001624: 93 95 25 00  	slli	a1, a1, 2

80001628 <.LBB1_186>:
80001628: 17 26 00 00  	auipc	a2, 2
8000162c: 13 06 86 0c  	addi	a2, a2, 200
80001630: b3 85 c5 00  	add	a1, a1, a2
80001634: 03 a6 05 00  	lw	a2, 0(a1)
80001638: 93 05 80 00  	addi	a1, zero, 8
8000163c: 13 0c 00 01  	addi	s8, zero, 16
80001640: 67 00 06 00  	jr	a2

80001644 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001644: 13 74 f4 fe  	andi	s0, s0, -17
80001648: 13 0c a0 00  	addi	s8, zero, 10

8000164c <.LBB1_45>:
;         if (*format == 'X') {
8000164c: 93 05 80 05  	addi	a1, zero, 88
80001650: 63 14 b5 00  	bne	a0, a1, 0x80001658 <.LBB1_45+0xc>
80001654: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001658: 93 05 40 06  	addi	a1, zero, 100
8000165c: 63 08 b5 0e  	beq	a0, a1, 0x8000174c <.LBB1_62+0x8>
80001660: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001664: 13 06 90 06  	addi	a2, zero, 105
80001668: 63 02 c5 0e  	beq	a0, a2, 0x8000174c <.LBB1_62+0x8>
8000166c: 6f 00 80 0d  	j	0x80001744 <.LBB1_62>

80001670 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001670: 93 05 60 04  	addi	a1, zero, 70
80001674: 63 14 b5 00  	bne	a0, a1, 0x8000167c <.LBB1_49+0xc>
80001678: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
8000167c: 13 85 79 00  	addi	a0, s3, 7
80001680: 13 75 85 ff  	andi	a0, a0, -8
80001684: 07 35 05 00  	fld	fa0, 0(a0)
80001688: 93 09 85 00  	addi	s3, a0, 8
8000168c: 13 05 09 00  	mv	a0, s2
80001690: 93 05 0a 00  	mv	a1, s4
80001694: 13 86 0c 00  	mv	a2, s9
80001698: 93 86 0a 00  	mv	a3, s5
8000169c: 13 87 0b 00  	mv	a4, s7
800016a0: 93 07 0b 00  	mv	a5, s6
800016a4: 13 08 04 00  	mv	a6, s0
800016a8: 97 10 00 00  	auipc	ra, 1
800016ac: e7 80 80 98  	jalr	-1656(ra)
800016b0: 6f 00 00 7c  	j	0x80001e70 <.LBB1_124+0x2fc>

800016b4 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800016b4: 83 25 81 01  	lw	a1, 24(sp)
800016b8: 33 64 b4 00  	or	s0, s0, a1

800016bc <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800016bc: 13 65 25 00  	ori	a0, a0, 2
800016c0: 93 05 70 04  	addi	a1, zero, 71
800016c4: 63 14 b5 00  	bne	a0, a1, 0x800016cc <.LBB1_53+0x10>
800016c8: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800016cc: 13 85 79 00  	addi	a0, s3, 7
800016d0: 13 75 85 ff  	andi	a0, a0, -8
800016d4: 07 35 05 00  	fld	fa0, 0(a0)
800016d8: 93 09 85 00  	addi	s3, a0, 8
800016dc: 13 05 09 00  	mv	a0, s2
800016e0: 93 05 0a 00  	mv	a1, s4
800016e4: 13 86 0c 00  	mv	a2, s9
800016e8: 93 86 0a 00  	mv	a3, s5
800016ec: 13 87 0b 00  	mv	a4, s7
800016f0: 93 07 0b 00  	mv	a5, s6
800016f4: 13 08 04 00  	mv	a6, s0
800016f8: 97 10 00 00  	auipc	ra, 1
800016fc: e7 80 80 01  	jalr	24(ra)
80001700: 6f 00 00 77  	j	0x80001e70 <.LBB1_124+0x2fc>
80001704: 13 64 04 08  	ori	s0, s0, 128
80001708: 13 0d 1d 00  	addi	s10, s10, 1
8000170c: 6f f0 df f0  	j	0x80001618 <.LBB1_42>
80001710: 13 64 04 10  	ori	s0, s0, 256
80001714: 13 0d 1d 00  	addi	s10, s10, 1
80001718: 6f f0 1f f0  	j	0x80001618 <.LBB1_42>

8000171c <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
8000171c: 13 8c 1c 00  	addi	s8, s9, 1
80001720: 13 05 50 02  	addi	a0, zero, 37
80001724: 6f 00 80 00  	j	0x8000172c <.LBB1_59+0x4>

80001728 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001728: 13 8c 1c 00  	addi	s8, s9, 1
8000172c: 93 05 0a 00  	mv	a1, s4
80001730: 13 86 0c 00  	mv	a2, s9
80001734: 93 86 0a 00  	mv	a3, s5
80001738: e7 00 09 00  	jalr	s2
8000173c: 6f 00 80 73  	j	0x80001e74 <.LBB1_124+0x300>

80001740 <.LBB1_61>:
80001740: 93 05 20 00  	addi	a1, zero, 2

80001744 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001744: 13 74 34 ff  	andi	s0, s0, -13
80001748: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
8000174c: 93 75 04 40  	andi	a1, s0, 1024
80001750: 63 84 05 00  	beqz	a1, 0x80001758 <.LBB1_62+0x14>
80001754: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001758: 93 05 90 06  	addi	a1, zero, 105
8000175c: 63 06 b5 00  	beq	a0, a1, 0x80001768 <.LBB1_62+0x24>
80001760: 93 05 40 06  	addi	a1, zero, 100
80001764: 63 1c b5 12  	bne	a0, a1, 0x8000189c <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001768: 13 75 04 20  	andi	a0, s0, 512
8000176c: 63 16 05 02  	bnez	a0, 0x80001798 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001770: 13 75 04 10  	andi	a0, s0, 256
80001774: 63 1c 05 14  	bnez	a0, 0x800018cc <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001778: 13 75 04 04  	andi	a0, s0, 64
8000177c: 63 18 05 4e  	bnez	a0, 0x80001c6c <.LBB1_124+0xf8>
80001780: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001784: 93 75 04 08  	andi	a1, s0, 128
80001788: 63 84 05 4e  	beqz	a1, 0x80001c70 <.LBB1_124+0xfc>
8000178c: 13 15 08 01  	slli	a0, a6, 16
80001790: 13 58 05 41  	srai	a6, a0, 16
80001794: 6f 00 c0 4d  	j	0x80001c70 <.LBB1_124+0xfc>
80001798: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
8000179c: 13 85 79 00  	addi	a0, s3, 7
800017a0: 13 75 85 ff  	andi	a0, a0, -8
800017a4: 83 29 05 00  	lw	s3, 0(a0)
800017a8: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800017ac: 13 65 45 00  	ori	a0, a0, 4
800017b0: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800017b4: 23 24 a1 00  	sw	a0, 8(sp)
800017b8: 33 e5 a9 00  	or	a0, s3, a0
800017bc: 63 14 05 00  	bnez	a0, 0x800017c4 <.LBB1_62+0x80>
800017c0: 13 74 f4 fe  	andi	s0, s0, -17
800017c4: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800017c8: 93 75 04 40  	andi	a1, s0, 1024
800017cc: 93 d5 a5 00  	srli	a1, a1, 10
800017d0: 33 75 b5 00  	and	a0, a0, a1
800017d4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800017d8: 63 14 05 0a  	bnez	a0, 0x80001880 <.LBB1_62+0x13c>
800017dc: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800017e0: 63 da 04 00  	bgez	s1, 0x800017f4 <.LBB1_62+0xb0>
800017e4: 33 35 30 01  	snez	a0, s3
800017e8: b3 09 30 41  	neg	s3, s3
800017ec: 33 85 a4 00  	add	a0, s1, a0
800017f0: b3 04 a0 40  	neg	s1, a0
800017f4: 13 09 00 00  	mv	s2, zero
800017f8: 13 75 04 02  	andi	a0, s0, 32
800017fc: 13 45 15 06  	xori	a0, a0, 97
80001800: 13 05 65 0f  	addi	a0, a0, 246
80001804: 23 2a a1 00  	sw	a0, 20(sp)
80001808: 6f 00 40 02  	j	0x8000182c <.LBB1_62+0xe8>
8000180c: 13 06 10 00  	addi	a2, zero, 1
80001810: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001814: 93 36 f9 01  	sltiu	a3, s2, 31
80001818: 33 f6 c6 00  	and	a2, a3, a2
8000181c: 13 89 07 00  	mv	s2, a5
80001820: 93 09 05 00  	mv	s3, a0
80001824: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001828: 63 0c 06 04  	beqz	a2, 0x80001880 <.LBB1_62+0x13c>
;       value /= base;
8000182c: 13 85 09 00  	mv	a0, s3
80001830: 93 85 04 00  	mv	a1, s1
80001834: 13 06 0c 00  	mv	a2, s8
80001838: 93 06 00 00  	mv	a3, zero
8000183c: 97 e0 ff ff  	auipc	ra, 1048574
80001840: e7 80 40 7c  	jalr	1988(ra)
80001844: 33 06 85 03  	mul	a2, a0, s8
80001848: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000184c: 13 77 e6 0f  	andi	a4, a2, 254
80001850: 93 06 00 03  	addi	a3, zero, 48
80001854: 93 07 a0 00  	addi	a5, zero, 10
80001858: 63 64 f7 00  	bltu	a4, a5, 0x80001860 <.LBB1_62+0x11c>
8000185c: 83 26 41 01  	lw	a3, 20(sp)
80001860: 33 86 c6 00  	add	a2, a3, a2
80001864: 93 06 c1 01  	addi	a3, sp, 28
80001868: b3 86 26 01  	add	a3, a3, s2
8000186c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001870: e3 9e 04 f8  	bnez	s1, 0x8000180c <.LBB1_62+0xc8>
80001874: 33 b6 89 01  	sltu	a2, s3, s8
80001878: 13 46 16 00  	xori	a2, a2, 1
8000187c: 6f f0 5f f9  	j	0x80001810 <.LBB1_62+0xcc>
80001880: 03 25 41 00  	lw	a0, 4(sp)
80001884: 93 09 85 00  	addi	s3, a0, 8
80001888: 03 25 81 00  	lw	a0, 8(sp)
8000188c: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001890: 13 07 c1 01  	addi	a4, sp, 28
80001894: 03 29 c1 00  	lw	s2, 12(sp)
80001898: 6f 00 80 47  	j	0x80001d10 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
8000189c: 13 75 04 20  	andi	a0, s0, 512
800018a0: 63 12 05 0c  	bnez	a0, 0x80001964 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800018a4: 13 75 04 10  	andi	a0, s0, 256
800018a8: 63 1e 05 46  	bnez	a0, 0x80001d24 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800018ac: 13 75 04 04  	andi	a0, s0, 64
800018b0: 63 10 05 50  	bnez	a0, 0x80001db0 <.LBB1_124+0x23c>
800018b4: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800018b8: 93 75 04 08  	andi	a1, s0, 128
800018bc: 63 8c 05 4e  	beqz	a1, 0x80001db4 <.LBB1_124+0x240>
800018c0: 83 25 01 01  	lw	a1, 16(sp)
800018c4: 33 75 b5 00  	and	a0, a0, a1
800018c8: 6f 00 c0 4e  	j	0x80001db4 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800018cc: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800018d0: 63 14 08 00  	bnez	a6, 0x800018d8 <.LBB1_62+0x194>
800018d4: 13 74 f4 fe  	andi	s0, s0, -17
800018d8: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800018dc: 13 76 04 40  	andi	a2, s0, 1024
800018e0: 13 56 a6 00  	srli	a2, a2, 10
800018e4: b3 f5 c5 00  	and	a1, a1, a2
800018e8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800018ec: 63 9c 05 40  	bnez	a1, 0x80001d04 <.LBB1_124+0x190>
800018f0: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800018f4: 13 56 f8 41  	srai	a2, a6, 31
800018f8: b3 06 c8 00  	add	a3, a6, a2
800018fc: b3 c6 c6 00  	xor	a3, a3, a2
80001900: 13 76 04 02  	andi	a2, s0, 32
80001904: 13 46 16 06  	xori	a2, a2, 97
80001908: 93 08 66 0f  	addi	a7, a2, 246
8000190c: 6f 00 40 03  	j	0x80001940 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001910: 33 05 f6 00  	add	a0, a2, a5
80001914: 93 87 15 00  	addi	a5, a1, 1
80001918: 13 06 c1 01  	addi	a2, sp, 28
8000191c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001920: b3 b6 86 01  	sltu	a3, a3, s8
80001924: 93 c6 16 00  	xori	a3, a3, 1
80001928: 93 b5 f5 01  	sltiu	a1, a1, 31
8000192c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001930: 23 00 a6 00  	sb	a0, 0(a2)
80001934: 93 85 07 00  	mv	a1, a5
80001938: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000193c: 63 84 04 3c  	beqz	s1, 0x80001d04 <.LBB1_124+0x190>
;       value /= base;
80001940: 33 d7 86 03  	divu	a4, a3, s8
80001944: 33 06 87 03  	mul	a2, a4, s8
80001948: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000194c: 13 f5 e7 0f  	andi	a0, a5, 254
80001950: 13 06 00 03  	addi	a2, zero, 48
80001954: 93 04 a0 00  	addi	s1, zero, 10
80001958: e3 6c 95 fa  	bltu	a0, s1, 0x80001910 <.LBB1_62+0x1cc>
8000195c: 13 86 08 00  	mv	a2, a7
80001960: 6f f0 1f fb  	j	0x80001910 <.LBB1_62+0x1cc>
80001964: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001968: 13 85 79 00  	addi	a0, s3, 7
8000196c: 93 75 85 ff  	andi	a1, a0, -8
80001970: 03 a9 05 00  	lw	s2, 0(a1)
80001974: 13 e5 45 00  	ori	a0, a1, 4
80001978: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
8000197c: 33 65 39 01  	or	a0, s2, s3
80001980: 23 24 b1 00  	sw	a1, 8(sp)
80001984: 63 14 05 00  	bnez	a0, 0x8000198c <.LBB1_62+0x248>
80001988: 13 74 f4 fe  	andi	s0, s0, -17
8000198c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001990: 93 75 04 40  	andi	a1, s0, 1024
80001994: 93 d5 a5 00  	srli	a1, a1, 10
80001998: 33 75 b5 00  	and	a0, a0, a1
8000199c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800019a0: 63 18 05 08  	bnez	a0, 0x80001a30 <.LBB1_62+0x2ec>
800019a4: 93 04 00 00  	mv	s1, zero
800019a8: 13 75 04 02  	andi	a0, s0, 32
800019ac: 13 45 15 06  	xori	a0, a0, 97
800019b0: 13 05 65 0f  	addi	a0, a0, 246
800019b4: 23 2a a1 00  	sw	a0, 20(sp)
800019b8: 6f 00 40 02  	j	0x800019dc <.LBB1_62+0x298>
800019bc: 13 06 10 00  	addi	a2, zero, 1
800019c0: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800019c4: 93 b6 f4 01  	sltiu	a3, s1, 31
800019c8: 33 f6 c6 00  	and	a2, a3, a2
800019cc: 93 84 07 00  	mv	s1, a5
800019d0: 13 09 05 00  	mv	s2, a0
800019d4: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800019d8: 63 0c 06 04  	beqz	a2, 0x80001a30 <.LBB1_62+0x2ec>
;       value /= base;
800019dc: 13 05 09 00  	mv	a0, s2
800019e0: 93 85 09 00  	mv	a1, s3
800019e4: 13 06 0c 00  	mv	a2, s8
800019e8: 93 06 00 00  	mv	a3, zero
800019ec: 97 e0 ff ff  	auipc	ra, 1048574
800019f0: e7 80 40 61  	jalr	1556(ra)
800019f4: 33 06 85 03  	mul	a2, a0, s8
800019f8: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800019fc: 13 77 e6 0f  	andi	a4, a2, 254
80001a00: 93 06 00 03  	addi	a3, zero, 48
80001a04: 93 07 a0 00  	addi	a5, zero, 10
80001a08: 63 64 f7 00  	bltu	a4, a5, 0x80001a10 <.LBB1_62+0x2cc>
80001a0c: 83 26 41 01  	lw	a3, 20(sp)
80001a10: 33 86 c6 00  	add	a2, a3, a2
80001a14: 93 06 c1 01  	addi	a3, sp, 28
80001a18: b3 86 96 00  	add	a3, a3, s1
80001a1c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001a20: e3 9e 09 f8  	bnez	s3, 0x800019bc <.LBB1_62+0x278>
80001a24: 33 36 89 01  	sltu	a2, s2, s8
80001a28: 13 46 16 00  	xori	a2, a2, 1
80001a2c: 6f f0 5f f9  	j	0x800019c0 <.LBB1_62+0x27c>
80001a30: 03 25 81 00  	lw	a0, 8(sp)
80001a34: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001a38: 13 07 c1 01  	addi	a4, sp, 28
80001a3c: 03 29 c1 00  	lw	s2, 12(sp)
80001a40: 6f 00 40 40  	j	0x80001e44 <.LBB1_124+0x2d0>

80001a44 <.LBB1_108>:
80001a44: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80001a48: 13 79 24 00  	andi	s2, s0, 2
80001a4c: 93 04 10 00  	addi	s1, zero, 1
80001a50: 63 1e 09 02  	bnez	s2, 0x80001a8c <.LBB1_108+0x48>
80001a54: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80001a58: 63 6a 9b 02  	bltu	s6, s1, 0x80001a8c <.LBB1_108+0x48>
80001a5c: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80001a60: 13 0c fb ff  	addi	s8, s6, -1
80001a64: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80001a68: 33 86 8c 00  	add	a2, s9, s0
80001a6c: 13 05 00 02  	addi	a0, zero, 32
80001a70: 93 05 0a 00  	mv	a1, s4
80001a74: 93 86 0a 00  	mv	a3, s5
80001a78: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80001a7c: 13 04 14 00  	addi	s0, s0, 1
80001a80: e3 14 8c fe  	bne	s8, s0, 0x80001a68 <.LBB1_108+0x24>
80001a84: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001a88: b3 8c 8c 00  	add	s9, s9, s0
80001a8c: 03 c5 09 00  	lbu	a0, 0(s3)
80001a90: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001a94: 93 89 49 00  	addi	s3, s3, 4
80001a98: 13 8c 1c 00  	addi	s8, s9, 1
80001a9c: 93 05 0a 00  	mv	a1, s4
80001aa0: 13 86 0c 00  	mv	a2, s9
80001aa4: 93 86 0a 00  	mv	a3, s5
80001aa8: 13 89 0b 00  	mv	s2, s7
80001aac: e7 80 0b 00  	jalr	s7
80001ab0: 33 b5 64 01  	sltu	a0, s1, s6
80001ab4: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001ab8: 33 65 a4 00  	or	a0, s0, a0
80001abc: 63 1c 05 3a  	bnez	a0, 0x80001e74 <.LBB1_124+0x300>
;           while (l++ < width) {
80001ac0: 33 04 9b 40  	sub	s0, s6, s1
80001ac4: 93 0b e0 02  	addi	s7, zero, 46
80001ac8: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001acc: 13 0c 1c 00  	addi	s8, s8, 1
80001ad0: 13 05 00 02  	addi	a0, zero, 32
80001ad4: 93 05 0a 00  	mv	a1, s4
80001ad8: 93 86 0a 00  	mv	a3, s5
80001adc: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001ae0: 13 04 f4 ff  	addi	s0, s0, -1
80001ae4: e3 12 04 fe  	bnez	s0, 0x80001ac8 <.LBB1_108+0x84>
80001ae8: 13 0b 50 02  	addi	s6, zero, 37
80001aec: 13 04 1d 00  	addi	s0, s10, 1
80001af0: 6f f0 df 91  	j	0x8000140c <.LBB1_183+0x30>

80001af4 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001af4: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001af8: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80001afc: 63 14 05 00  	bnez	a0, 0x80001b04 <.LBB1_117+0x10>
80001b00: 93 fe fe fe  	andi	t4, t4, -17
80001b04: 93 04 a0 00  	addi	s1, zero, 10
80001b08: 13 04 f0 00  	addi	s0, zero, 15
80001b0c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001b10: 13 f6 0e 40  	andi	a2, t4, 1024
80001b14: 13 56 a6 00  	srli	a2, a2, 10
80001b18: b3 f5 c5 00  	and	a1, a1, a2
80001b1c: 93 07 00 00  	mv	a5, zero
80001b20: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001b24: 63 98 05 10  	bnez	a1, 0x80001c34 <.LBB1_124+0xc0>
80001b28: 93 05 00 00  	mv	a1, zero
80001b2c: 6f 00 40 03  	j	0x80001b60 <.LBB1_117+0x6c>
80001b30: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b34: 33 06 d6 00  	add	a2, a2, a3
80001b38: 93 87 15 00  	addi	a5, a1, 1
80001b3c: 93 06 c1 01  	addi	a3, sp, 28
80001b40: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b44: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80001b48: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b4c: 93 b5 f5 01  	sltiu	a1, a1, 31
80001b50: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b54: 23 80 c6 00  	sb	a2, 0(a3)
80001b58: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b5c: 63 0c 07 0c  	beqz	a4, 0x80001c34 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b60: 93 76 e5 00  	andi	a3, a0, 14
80001b64: 13 06 00 03  	addi	a2, zero, 48
80001b68: e3 e4 96 fc  	bltu	a3, s1, 0x80001b30 <.LBB1_117+0x3c>
80001b6c: 13 06 70 03  	addi	a2, zero, 55
80001b70: 6f f0 1f fc  	j	0x80001b30 <.LBB1_117+0x3c>

80001b74 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001b74: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80001b78: 03 c5 07 00  	lbu	a0, 0(a5)
80001b7c: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80001b80: 63 0c 05 02  	beqz	a0, 0x80001bb8 <.LBB1_124+0x44>
80001b84: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80001b88: 63 84 0b 00  	beqz	s7, 0x80001b90 <.LBB1_124+0x1c>
80001b8c: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80001b90: 93 85 f5 ff  	addi	a1, a1, -1
80001b94: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001b98: 03 c7 16 00  	lbu	a4, 1(a3)
80001b9c: 13 86 16 00  	addi	a2, a3, 1
80001ba0: b3 36 e0 00  	snez	a3, a4
80001ba4: 33 37 b0 00  	snez	a4, a1
80001ba8: 33 77 d7 00  	and	a4, a4, a3
80001bac: 93 85 f5 ff  	addi	a1, a1, -1
80001bb0: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001bb4: e3 12 07 fe  	bnez	a4, 0x80001b98 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001bb8: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80001bbc: 93 75 04 40  	andi	a1, s0, 1024
80001bc0: 93 b4 15 00  	seqz	s1, a1
80001bc4: 23 2a c1 00  	sw	a2, 20(sp)
80001bc8: b3 35 76 01  	sltu	a1, a2, s7
80001bcc: b3 e5 b4 00  	or	a1, s1, a1
80001bd0: 63 94 05 00  	bnez	a1, 0x80001bd8 <.LBB1_124+0x64>
80001bd4: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001bd8: 93 75 24 00  	andi	a1, s0, 2
80001bdc: 23 26 b1 00  	sw	a1, 12(sp)
80001be0: 63 96 05 2a  	bnez	a1, 0x80001e8c <.LBB1_124+0x318>
80001be4: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001be8: 63 fe 65 29  	bgeu	a1, s6, 0x80001e84 <.LBB1_124+0x310>
80001bec: 23 24 f1 00  	sw	a5, 8(sp)
80001bf0: 13 04 00 00  	mv	s0, zero
80001bf4: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001bf8: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80001bfc: 33 86 8c 00  	add	a2, s9, s0
80001c00: 13 05 00 02  	addi	a0, zero, 32
80001c04: 93 05 0a 00  	mv	a1, s4
80001c08: 93 86 0a 00  	mv	a3, s5
80001c0c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001c10: 13 04 14 00  	addi	s0, s0, 1
80001c14: e3 14 89 fe  	bne	s2, s0, 0x80001bfc <.LBB1_124+0x88>
80001c18: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001c1c: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80001c20: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001c24: 23 2a b1 00  	sw	a1, 20(sp)
80001c28: b3 8c 8c 00  	add	s9, s9, s0
80001c2c: 13 09 0c 00  	mv	s2, s8
80001c30: 6f 00 c0 25  	j	0x80001e8c <.LBB1_124+0x318>
80001c34: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001c38: 13 07 c1 01  	addi	a4, sp, 28
80001c3c: 93 08 00 01  	addi	a7, zero, 16
80001c40: 13 0e 80 00  	addi	t3, zero, 8
80001c44: 13 05 09 00  	mv	a0, s2
80001c48: 93 05 0a 00  	mv	a1, s4
80001c4c: 13 86 0c 00  	mv	a2, s9
80001c50: 93 86 0a 00  	mv	a3, s5
80001c54: 13 08 00 00  	mv	a6, zero
80001c58: 93 83 0b 00  	mv	t2, s7
80001c5c: 97 10 00 00  	auipc	ra, 1
80001c60: e7 80 00 fa  	jalr	-96(ra)
80001c64: 13 0c 05 00  	mv	s8, a0
80001c68: 6f 00 00 21  	j	0x80001e78 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001c6c: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80001c70: 63 14 08 00  	bnez	a6, 0x80001c78 <.LBB1_124+0x104>
80001c74: 13 74 f4 fe  	andi	s0, s0, -17
80001c78: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001c7c: 13 76 04 40  	andi	a2, s0, 1024
80001c80: 13 56 a6 00  	srli	a2, a2, 10
80001c84: b3 f5 c5 00  	and	a1, a1, a2
80001c88: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001c8c: 63 9c 05 06  	bnez	a1, 0x80001d04 <.LBB1_124+0x190>
80001c90: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001c94: 13 56 f8 41  	srai	a2, a6, 31
80001c98: b3 06 c8 00  	add	a3, a6, a2
80001c9c: b3 c6 c6 00  	xor	a3, a3, a2
80001ca0: 13 76 04 02  	andi	a2, s0, 32
80001ca4: 13 46 16 06  	xori	a2, a2, 97
80001ca8: 93 08 66 0f  	addi	a7, a2, 246
80001cac: 6f 00 40 03  	j	0x80001ce0 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001cb0: 33 05 f6 00  	add	a0, a2, a5
80001cb4: 93 87 15 00  	addi	a5, a1, 1
80001cb8: 13 06 c1 01  	addi	a2, sp, 28
80001cbc: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001cc0: b3 b6 86 01  	sltu	a3, a3, s8
80001cc4: 93 c6 16 00  	xori	a3, a3, 1
80001cc8: 93 b5 f5 01  	sltiu	a1, a1, 31
80001ccc: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001cd0: 23 00 a6 00  	sb	a0, 0(a2)
80001cd4: 93 85 07 00  	mv	a1, a5
80001cd8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001cdc: 63 84 04 02  	beqz	s1, 0x80001d04 <.LBB1_124+0x190>
;       value /= base;
80001ce0: 33 d7 86 03  	divu	a4, a3, s8
80001ce4: 33 06 87 03  	mul	a2, a4, s8
80001ce8: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001cec: 13 f5 e7 0f  	andi	a0, a5, 254
80001cf0: 13 06 00 03  	addi	a2, zero, 48
80001cf4: 93 04 a0 00  	addi	s1, zero, 10
80001cf8: e3 6c 95 fa  	bltu	a0, s1, 0x80001cb0 <.LBB1_124+0x13c>
80001cfc: 13 86 08 00  	mv	a2, a7
80001d00: 6f f0 1f fb  	j	0x80001cb0 <.LBB1_124+0x13c>
80001d04: 93 89 49 00  	addi	s3, s3, 4
80001d08: 13 58 f8 01  	srli	a6, a6, 31
80001d0c: 13 07 c1 01  	addi	a4, sp, 28
80001d10: 13 05 09 00  	mv	a0, s2
80001d14: 93 05 0a 00  	mv	a1, s4
80001d18: 13 86 0c 00  	mv	a2, s9
80001d1c: 93 86 0a 00  	mv	a3, s5
80001d20: 6f 00 80 13  	j	0x80001e58 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001d24: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001d28: 63 14 05 00  	bnez	a0, 0x80001d30 <.LBB1_124+0x1bc>
80001d2c: 13 74 f4 fe  	andi	s0, s0, -17
80001d30: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d34: 13 76 04 40  	andi	a2, s0, 1024
80001d38: 13 56 a6 00  	srli	a2, a2, 10
80001d3c: b3 f5 c5 00  	and	a1, a1, a2
80001d40: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d44: 63 9c 05 0e  	bnez	a1, 0x80001e3c <.LBB1_124+0x2c8>
80001d48: 13 06 00 00  	mv	a2, zero
80001d4c: 93 75 04 02  	andi	a1, s0, 32
80001d50: 93 c5 15 06  	xori	a1, a1, 97
80001d54: 13 88 65 0f  	addi	a6, a1, 246
80001d58: 6f 00 40 03  	j	0x80001d8c <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d5c: 33 87 e7 00  	add	a4, a5, a4
80001d60: 93 07 16 00  	addi	a5, a2, 1
80001d64: 93 05 c1 01  	addi	a1, sp, 28
80001d68: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d6c: 33 35 85 01  	sltu	a0, a0, s8
80001d70: 13 45 15 00  	xori	a0, a0, 1
80001d74: 13 36 f6 01  	sltiu	a2, a2, 31
80001d78: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d7c: 23 80 e4 00  	sb	a4, 0(s1)
80001d80: 13 86 07 00  	mv	a2, a5
80001d84: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d88: 63 8a 05 0a  	beqz	a1, 0x80001e3c <.LBB1_124+0x2c8>
;       value /= base;
80001d8c: b3 56 85 03  	divu	a3, a0, s8
80001d90: 33 87 86 03  	mul	a4, a3, s8
80001d94: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d98: 93 74 e7 0f  	andi	s1, a4, 254
80001d9c: 93 07 00 03  	addi	a5, zero, 48
80001da0: 93 05 a0 00  	addi	a1, zero, 10
80001da4: e3 ec b4 fa  	bltu	s1, a1, 0x80001d5c <.LBB1_124+0x1e8>
80001da8: 93 07 08 00  	mv	a5, a6
80001dac: 6f f0 1f fb  	j	0x80001d5c <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001db0: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001db4: 63 14 05 00  	bnez	a0, 0x80001dbc <.LBB1_124+0x248>
80001db8: 13 74 f4 fe  	andi	s0, s0, -17
80001dbc: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001dc0: 13 76 04 40  	andi	a2, s0, 1024
80001dc4: 13 56 a6 00  	srli	a2, a2, 10
80001dc8: b3 f5 c5 00  	and	a1, a1, a2
80001dcc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001dd0: 63 96 05 06  	bnez	a1, 0x80001e3c <.LBB1_124+0x2c8>
80001dd4: 13 06 00 00  	mv	a2, zero
80001dd8: 93 75 04 02  	andi	a1, s0, 32
80001ddc: 93 c5 15 06  	xori	a1, a1, 97
80001de0: 13 88 65 0f  	addi	a6, a1, 246
80001de4: 6f 00 40 03  	j	0x80001e18 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001de8: 33 87 e7 00  	add	a4, a5, a4
80001dec: 93 07 16 00  	addi	a5, a2, 1
80001df0: 93 05 c1 01  	addi	a1, sp, 28
80001df4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001df8: 33 35 85 01  	sltu	a0, a0, s8
80001dfc: 13 45 15 00  	xori	a0, a0, 1
80001e00: 13 36 f6 01  	sltiu	a2, a2, 31
80001e04: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e08: 23 80 e4 00  	sb	a4, 0(s1)
80001e0c: 13 86 07 00  	mv	a2, a5
80001e10: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e14: 63 84 05 02  	beqz	a1, 0x80001e3c <.LBB1_124+0x2c8>
;       value /= base;
80001e18: b3 56 85 03  	divu	a3, a0, s8
80001e1c: 33 87 86 03  	mul	a4, a3, s8
80001e20: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e24: 93 74 e7 0f  	andi	s1, a4, 254
80001e28: 93 07 00 03  	addi	a5, zero, 48
80001e2c: 93 05 a0 00  	addi	a1, zero, 10
80001e30: e3 ec b4 fa  	bltu	s1, a1, 0x80001de8 <.LBB1_124+0x274>
80001e34: 93 07 08 00  	mv	a5, a6
80001e38: 6f f0 1f fb  	j	0x80001de8 <.LBB1_124+0x274>
80001e3c: 93 89 49 00  	addi	s3, s3, 4
80001e40: 13 07 c1 01  	addi	a4, sp, 28
80001e44: 13 05 09 00  	mv	a0, s2
80001e48: 93 05 0a 00  	mv	a1, s4
80001e4c: 13 86 0c 00  	mv	a2, s9
80001e50: 93 86 0a 00  	mv	a3, s5
80001e54: 13 08 00 00  	mv	a6, zero
80001e58: 93 08 0c 00  	mv	a7, s8
80001e5c: 93 83 0b 00  	mv	t2, s7
80001e60: 13 0e 0b 00  	mv	t3, s6
80001e64: 93 0e 04 00  	mv	t4, s0
80001e68: 97 10 00 00  	auipc	ra, 1
80001e6c: e7 80 40 d9  	jalr	-620(ra)
80001e70: 13 0c 05 00  	mv	s8, a0
80001e74: 13 0b 50 02  	addi	s6, zero, 37
80001e78: 93 0b e0 02  	addi	s7, zero, 46
80001e7c: 13 04 1d 00  	addi	s0, s10, 1
80001e80: 6f f0 cf d8  	j	0x8000140c <.LBB1_183+0x30>
80001e84: 93 85 15 00  	addi	a1, a1, 1
80001e88: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001e8c: 63 00 05 04  	beqz	a0, 0x80001ecc <.LBB1_124+0x358>
80001e90: 13 84 17 00  	addi	s0, a5, 1
80001e94: 6f 00 00 03  	j	0x80001ec4 <.LBB1_124+0x350>
80001e98: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001e9c: 13 8c 1c 00  	addi	s8, s9, 1
80001ea0: 13 75 f5 0f  	andi	a0, a0, 255
80001ea4: 93 05 0a 00  	mv	a1, s4
80001ea8: 13 86 0c 00  	mv	a2, s9
80001eac: 93 86 0a 00  	mv	a3, s5
80001eb0: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001eb4: 03 45 04 00  	lbu	a0, 0(s0)
80001eb8: 13 04 14 00  	addi	s0, s0, 1
80001ebc: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001ec0: 63 08 05 00  	beqz	a0, 0x80001ed0 <.LBB1_124+0x35c>
80001ec4: e3 9c 04 fc  	bnez	s1, 0x80001e9c <.LBB1_124+0x328>
80001ec8: e3 98 0b fc  	bnez	s7, 0x80001e98 <.LBB1_124+0x324>
80001ecc: 13 8c 0c 00  	mv	s8, s9
80001ed0: 03 25 c1 00  	lw	a0, 12(sp)
80001ed4: 13 35 15 00  	seqz	a0, a0
80001ed8: 03 26 41 01  	lw	a2, 20(sp)
80001edc: b3 35 66 01  	sltu	a1, a2, s6
80001ee0: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001ee4: 33 65 b5 00  	or	a0, a0, a1
80001ee8: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001eec: e3 14 05 f8  	bnez	a0, 0x80001e74 <.LBB1_124+0x300>
;           while (l++ < width) {
80001ef0: 33 04 cb 40  	sub	s0, s6, a2
80001ef4: 93 0b e0 02  	addi	s7, zero, 46
80001ef8: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001efc: 13 0c 1c 00  	addi	s8, s8, 1
80001f00: 13 05 00 02  	addi	a0, zero, 32
80001f04: 93 05 0a 00  	mv	a1, s4
80001f08: 93 86 0a 00  	mv	a3, s5
80001f0c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001f10: 13 04 f4 ff  	addi	s0, s0, -1
80001f14: e3 12 04 fe  	bnez	s0, 0x80001ef8 <.LBB1_124+0x384>
80001f18: 13 0b 50 02  	addi	s6, zero, 37
80001f1c: 13 04 1d 00  	addi	s0, s10, 1
80001f20: 6f f0 cf ce  	j	0x8000140c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001f24: 13 86 0c 00  	mv	a2, s9
80001f28: 63 e4 5c 01  	bltu	s9, s5, 0x80001f30 <.LBB1_124+0x3bc>
80001f2c: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001f30: 13 05 00 00  	mv	a0, zero
80001f34: 93 05 0a 00  	mv	a1, s4
80001f38: 93 86 0a 00  	mv	a3, s5
80001f3c: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001f40: 13 85 0c 00  	mv	a0, s9
80001f44: 83 2d c1 03  	lw	s11, 60(sp)
80001f48: 03 2d 01 04  	lw	s10, 64(sp)
80001f4c: 83 2c 41 04  	lw	s9, 68(sp)
80001f50: 03 2c 81 04  	lw	s8, 72(sp)
80001f54: 83 2b c1 04  	lw	s7, 76(sp)
80001f58: 03 2b 01 05  	lw	s6, 80(sp)
80001f5c: 83 2a 41 05  	lw	s5, 84(sp)
80001f60: 03 2a 81 05  	lw	s4, 88(sp)
80001f64: 83 29 c1 05  	lw	s3, 92(sp)
80001f68: 03 29 01 06  	lw	s2, 96(sp)
80001f6c: 83 24 41 06  	lw	s1, 100(sp)
80001f70: 03 24 81 06  	lw	s0, 104(sp)
80001f74: 83 20 c1 06  	lw	ra, 108(sp)
80001f78: 13 01 01 07  	addi	sp, sp, 112
80001f7c: 67 80 00 00  	ret

80001f80 <_out_char.llvm.11632292163828655644>:
;   if (character) {
80001f80: 63 04 05 0a  	beqz	a0, 0x80002028 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001f84: f3 25 40 f1  	csrr	a1, mhartid
80001f88: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001f8c: 33 86 c5 02  	mul	a2, a1, a2

80001f90 <.LBB2_6>:
80001f90: 97 26 00 00  	auipc	a3, 2
80001f94: 93 86 46 a6  	addi	a3, a3, -1436
80001f98: b3 05 d6 00  	add	a1, a2, a3
80001f9c: 03 a7 05 00  	lw	a4, 0(a1)
80001fa0: 93 07 17 00  	addi	a5, a4, 1
80001fa4: 23 a0 f5 00  	sw	a5, 0(a1)
80001fa8: 33 87 e5 00  	add	a4, a1, a4
80001fac: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001fb0: 03 a7 05 00  	lw	a4, 0(a1)
80001fb4: 13 07 47 c0  	addi	a4, a4, -1020
80001fb8: 33 37 e0 00  	snez	a4, a4
80001fbc: 13 05 65 ff  	addi	a0, a0, -10
80001fc0: 33 35 a0 00  	snez	a0, a0
80001fc4: 33 75 e5 00  	and	a0, a0, a4
80001fc8: 63 10 05 06  	bnez	a0, 0x80002028 <.LBB2_8+0x18>
80001fcc: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001fd0: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001fd4: 23 26 05 00  	sw	zero, 12(a0)
80001fd8: 93 06 00 04  	addi	a3, zero, 64
80001fdc: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001fe0: 23 2a 05 00  	sw	zero, 20(a0)
80001fe4: 93 06 10 00  	addi	a3, zero, 1
80001fe8: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001fec: 23 2e 05 00  	sw	zero, 28(a0)
80001ff0: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001ff4: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001ff8: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001ffc: 23 22 05 02  	sw	zero, 36(a0)
80002000: 23 20 c5 02  	sw	a2, 32(a0)

80002004 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80002004: 17 25 00 00  	auipc	a0, 2
80002008: 13 05 c5 8b  	addi	a0, a0, -1860
8000200c: 23 20 d5 00  	sw	a3, 0(a0)

80002010 <.LBB2_8>:
80002010: 17 25 00 00  	auipc	a0, 2
80002014: 13 05 05 8f  	addi	a0, a0, -1808
;         while (fromhost == 0)
80002018: 03 26 05 00  	lw	a2, 0(a0)
8000201c: e3 0e 06 fe  	beqz	a2, 0x80002018 <.LBB2_8+0x8>
;         fromhost = 0;
80002020: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80002024: 23 a0 05 00  	sw	zero, 0(a1)
; }
80002028: 67 80 00 00  	ret

8000202c <_out_null>:
; }
8000202c: 67 80 00 00  	ret

80002030 <_ftoa>:
; {
80002030: 13 01 01 f9  	addi	sp, sp, -112
80002034: 23 26 11 06  	sw	ra, 108(sp)
80002038: 23 24 81 06  	sw	s0, 104(sp)
8000203c: 23 22 91 06  	sw	s1, 100(sp)
80002040: 23 20 21 07  	sw	s2, 96(sp)
80002044: 23 2e 31 05  	sw	s3, 92(sp)
80002048: 23 2c 41 05  	sw	s4, 88(sp)
8000204c: 23 2a 51 05  	sw	s5, 84(sp)
80002050: 23 28 61 05  	sw	s6, 80(sp)
80002054: 23 26 71 05  	sw	s7, 76(sp)
80002058: 23 24 81 05  	sw	s8, 72(sp)
8000205c: 23 22 91 05  	sw	s9, 68(sp)
80002060: 23 20 a1 05  	sw	s10, 64(sp)
80002064: 27 3c 81 02  	fsd	fs0, 56(sp)
80002068: 27 38 91 02  	fsd	fs1, 48(sp)
8000206c: 27 34 21 03  	fsd	fs2, 40(sp)

80002070 <.LBB4_83>:
80002070: 97 24 00 00  	auipc	s1, 2
80002074: 93 84 84 8d  	addi	s1, s1, -1832
80002078: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
8000207c: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80002080: 93 0a 08 00  	mv	s5, a6
80002084: 13 89 07 00  	mv	s2, a5
80002088: 93 89 06 00  	mv	s3, a3
8000208c: 13 0a 06 00  	mv	s4, a2
80002090: 13 8b 05 00  	mv	s6, a1
80002094: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80002098: 63 98 04 0e  	bnez	s1, 0x80002188 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000209c: 13 f5 2a 00  	andi	a0, s5, 2
800020a0: 93 f5 3a 00  	andi	a1, s5, 3
800020a4: b3 35 b0 00  	snez	a1, a1
800020a8: 13 36 59 00  	sltiu	a2, s2, 5
800020ac: b3 65 b6 00  	or	a1, a2, a1
800020b0: 93 5c 15 00  	srli	s9, a0, 1
800020b4: 13 04 0a 00  	mv	s0, s4
800020b8: 63 96 05 02  	bnez	a1, 0x800020e4 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800020bc: 93 04 c9 ff  	addi	s1, s2, -4
800020c0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800020c4: 13 04 16 00  	addi	s0, a2, 1
800020c8: 13 05 00 02  	addi	a0, zero, 32
800020cc: 93 05 0b 00  	mv	a1, s6
800020d0: 93 86 09 00  	mv	a3, s3
800020d4: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800020d8: 93 84 f4 ff  	addi	s1, s1, -1
800020dc: 13 06 04 00  	mv	a2, s0
800020e0: e3 92 04 fe  	bnez	s1, 0x800020c4 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
800020e4: 93 04 14 00  	addi	s1, s0, 1
800020e8: 13 05 d0 02  	addi	a0, zero, 45
800020ec: 93 05 0b 00  	mv	a1, s6
800020f0: 13 06 04 00  	mv	a2, s0
800020f4: 93 86 09 00  	mv	a3, s3
800020f8: e7 80 0b 00  	jalr	s7
800020fc: 93 0a 24 00  	addi	s5, s0, 2
80002100: 13 05 90 06  	addi	a0, zero, 105
80002104: 93 05 0b 00  	mv	a1, s6
80002108: 13 86 04 00  	mv	a2, s1
8000210c: 93 86 09 00  	mv	a3, s3
80002110: e7 80 0b 00  	jalr	s7
80002114: 13 0c 34 00  	addi	s8, s0, 3
80002118: 13 05 e0 06  	addi	a0, zero, 110
8000211c: 93 05 0b 00  	mv	a1, s6
80002120: 13 86 0a 00  	mv	a2, s5
80002124: 93 86 09 00  	mv	a3, s3
80002128: e7 80 0b 00  	jalr	s7
8000212c: 93 04 44 00  	addi	s1, s0, 4
80002130: 13 05 60 06  	addi	a0, zero, 102
80002134: 93 05 0b 00  	mv	a1, s6
80002138: 13 06 0c 00  	mv	a2, s8
8000213c: 93 86 09 00  	mv	a3, s3
80002140: e7 80 0b 00  	jalr	s7
80002144: 33 85 44 41  	sub	a0, s1, s4
80002148: 33 35 25 01  	sltu	a0, a0, s2
8000214c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002150: 93 c5 1c 00  	xori	a1, s9, 1
80002154: 33 e5 a5 00  	or	a0, a1, a0
80002158: 63 16 05 56  	bnez	a0, 0x800026c4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000215c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002160: 13 84 14 00  	addi	s0, s1, 1
80002164: 13 05 00 02  	addi	a0, zero, 32
80002168: 93 05 0b 00  	mv	a1, s6
8000216c: 13 86 04 00  	mv	a2, s1
80002170: 93 86 09 00  	mv	a3, s3
80002174: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002178: 33 05 8a 00  	add	a0, s4, s0
8000217c: 93 04 04 00  	mv	s1, s0
80002180: e3 60 25 ff  	bltu	a0, s2, 0x80002160 <.LBB4_83+0xf0>
80002184: 6f 00 40 54  	j	0x800026c8 <.LBB4_90+0x378>
80002188: 53 04 a5 22  	fmv.d	fs0, fa0

8000218c <.LBB4_84>:
8000218c: 17 15 00 00  	auipc	a0, 1
80002190: 13 05 45 7c  	addi	a0, a0, 1988
80002194: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80002198: 53 05 05 a2  	fle.d	a0, fa0, ft0
8000219c: 63 1e 05 00  	bnez	a0, 0x800021b8 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800021a0: 93 f5 4a 00  	andi	a1, s5, 4
800021a4: 13 b5 15 00  	seqz	a0, a1
800021a8: 63 82 05 06  	beqz	a1, 0x8000220c <.LBB4_88>

800021ac <.LBB4_85>:
800021ac: 17 1c 00 00  	auipc	s8, 1
800021b0: 13 0c 4c 4b  	addi	s8, s8, 1204
800021b4: 6f 00 00 06  	j	0x80002214 <.LBB4_88+0x8>

800021b8 <.LBB4_86>:
800021b8: 17 15 00 00  	auipc	a0, 1
800021bc: 13 05 05 7a  	addi	a0, a0, 1952
800021c0: 07 30 05 00  	fld	ft0, 0(a0)

800021c4 <.LBB4_87>:
800021c4: 17 15 00 00  	auipc	a0, 1
800021c8: 13 05 c5 79  	addi	a0, a0, 1948
800021cc: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
800021d0: 53 05 04 a2  	fle.d	a0, fs0, ft0
800021d4: d3 85 80 a2  	fle.d	a1, ft1, fs0
800021d8: 33 75 b5 00  	and	a0, a0, a1
800021dc: 63 1e 05 0e  	bnez	a0, 0x800022d8 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
800021e0: 13 85 0b 00  	mv	a0, s7
800021e4: 93 05 0b 00  	mv	a1, s6
800021e8: 13 06 0a 00  	mv	a2, s4
800021ec: 93 86 09 00  	mv	a3, s3
800021f0: 53 05 84 22  	fmv.d	fa0, fs0
800021f4: 93 07 09 00  	mv	a5, s2
800021f8: 13 88 0a 00  	mv	a6, s5
800021fc: 97 00 00 00  	auipc	ra, 0
80002200: e7 80 40 51  	jalr	1300(ra)
80002204: 13 04 05 00  	mv	s0, a0
80002208: 6f 00 00 4c  	j	0x800026c8 <.LBB4_90+0x378>

8000220c <.LBB4_88>:
8000220c: 17 1c 00 00  	auipc	s8, 1
80002210: 13 0c 3c 47  	addi	s8, s8, 1139
80002214: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002218: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000221c: 13 f5 3a 00  	andi	a0, s5, 3
80002220: 33 35 a0 00  	snez	a0, a0
80002224: b3 b5 2c 01  	sltu	a1, s9, s2
80002228: 93 c5 15 00  	xori	a1, a1, 1
8000222c: 33 65 b5 00  	or	a0, a0, a1
80002230: 93 fa 2a 00  	andi	s5, s5, 2
80002234: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002238: 63 16 05 02  	bnez	a0, 0x80002264 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
8000223c: 33 04 99 41  	sub	s0, s2, s9
80002240: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002244: 93 04 16 00  	addi	s1, a2, 1
80002248: 13 05 00 02  	addi	a0, zero, 32
8000224c: 93 05 0b 00  	mv	a1, s6
80002250: 93 86 09 00  	mv	a3, s3
80002254: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002258: 13 04 f4 ff  	addi	s0, s0, -1
8000225c: 13 86 04 00  	mv	a2, s1
80002260: e3 12 04 fe  	bnez	s0, 0x80002244 <.LBB4_88+0x38>
80002264: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002268: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
8000226c: 33 05 9c 01  	add	a0, s8, s9
80002270: 03 45 05 00  	lbu	a0, 0(a0)
80002274: 13 86 04 00  	mv	a2, s1
80002278: 13 84 fc ff  	addi	s0, s9, -1
8000227c: 93 84 14 00  	addi	s1, s1, 1
80002280: 93 05 0b 00  	mv	a1, s6
80002284: 93 86 09 00  	mv	a3, s3
80002288: e7 80 0b 00  	jalr	s7
8000228c: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80002290: e3 1e 04 fc  	bnez	s0, 0x8000226c <.LBB4_88+0x60>
80002294: 33 85 44 41  	sub	a0, s1, s4
80002298: 33 35 25 01  	sltu	a0, a0, s2
8000229c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800022a0: 93 c5 1a 00  	xori	a1, s5, 1
800022a4: 33 e5 a5 00  	or	a0, a1, a0
800022a8: 63 1e 05 40  	bnez	a0, 0x800026c4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800022ac: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800022b0: 13 84 14 00  	addi	s0, s1, 1
800022b4: 13 05 00 02  	addi	a0, zero, 32
800022b8: 93 05 0b 00  	mv	a1, s6
800022bc: 13 86 04 00  	mv	a2, s1
800022c0: 93 86 09 00  	mv	a3, s3
800022c4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800022c8: 33 05 8a 00  	add	a0, s4, s0
800022cc: 93 04 04 00  	mv	s1, s0
800022d0: e3 60 25 ff  	bltu	a0, s2, 0x800022b0 <.LBB4_88+0xa4>
800022d4: 6f 00 40 3f  	j	0x800026c8 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
800022d8: 13 f5 0a 40  	andi	a0, s5, 1024
800022dc: 13 0c 60 00  	addi	s8, zero, 6
800022e0: 63 04 05 00  	beqz	a0, 0x800022e8 <.LBB4_88+0xdc>
800022e4: 13 0c 07 00  	mv	s8, a4
800022e8: 13 05 a0 00  	addi	a0, zero, 10
800022ec: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800022f0: 63 6c ac 02  	bltu	s8, a0, 0x80002328 <.LBB4_88+0x11c>
800022f4: 93 04 6c ff  	addi	s1, s8, -10
800022f8: 13 05 f0 01  	addi	a0, zero, 31
800022fc: 63 e4 a4 00  	bltu	s1, a0, 0x80002304 <.LBB4_88+0xf8>
80002300: 93 04 f0 01  	addi	s1, zero, 31
80002304: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002308: 13 05 81 00  	addi	a0, sp, 8
8000230c: 93 05 00 03  	addi	a1, zero, 48
80002310: 13 06 04 00  	mv	a2, s0
80002314: 97 e0 ff ff  	auipc	ra, 1048574
80002318: e7 80 40 24  	jalr	580(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
8000231c: 13 c5 f4 ff  	not	a0, s1
80002320: 33 0c ac 00  	add	s8, s8, a0
80002324: 6f 00 80 00  	j	0x8000232c <.LBB4_88+0x120>
80002328: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
8000232c: 13 15 3c 00  	slli	a0, s8, 3

80002330 <.LBB4_89>:
80002330: 97 15 00 00  	auipc	a1, 1
80002334: 93 85 05 51  	addi	a1, a1, 1296
80002338: 33 05 b5 00  	add	a0, a0, a1
8000233c: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002340: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80002344: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002348: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
8000234c: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002350 <.LBB4_90>:
80002350: 17 15 00 00  	auipc	a0, 1
80002354: 13 05 85 61  	addi	a0, a0, 1560
80002358: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
8000235c: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80002360: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80002364: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002368: d3 05 01 a2  	fle.d	a1, ft2, ft0
8000236c: 63 90 05 02  	bnez	a1, 0x8000238c <.LBB4_90+0x3c>
;     ++frac;
80002370: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80002374: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80002378: d3 15 11 a2  	flt.d	a1, ft2, ft1
8000237c: 63 94 05 02  	bnez	a1, 0x800023a4 <.LBB4_90+0x54>
80002380: 13 05 00 00  	mv	a0, zero
;       ++whole;
80002384: 93 84 14 00  	addi	s1, s1, 1
80002388: 6f 00 c0 01  	j	0x800023a4 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
8000238c: d3 15 01 a2  	flt.d	a1, ft2, ft0
80002390: 63 9a 05 00  	bnez	a1, 0x800023a4 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80002394: 93 35 15 00  	seqz	a1, a0
80002398: 13 76 15 00  	andi	a2, a0, 1
8000239c: b3 65 b6 00  	or	a1, a2, a1
800023a0: 33 85 a5 00  	add	a0, a1, a0
800023a4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
800023a8: 63 0c 0c 0c  	beqz	s8, 0x80002480 <.LBB4_90+0x130>
800023ac: 13 06 00 00  	mv	a2, zero
800023b0: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
800023b4: 33 83 85 00  	add	t1, a1, s0
800023b8: 93 02 00 02  	addi	t0, zero, 32
800023bc: 33 87 82 40  	sub	a4, t0, s0
800023c0: b7 d5 cc cc  	lui	a1, 838861
800023c4: 93 83 d5 cc  	addi	t2, a1, -819
800023c8: 13 08 a0 00  	addi	a6, zero, 10
800023cc: 93 08 90 00  	addi	a7, zero, 9
800023d0: 63 04 c7 0c  	beq	a4, a2, 0x80002498 <.LBB4_90+0x148>
800023d4: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
800023d8: 33 35 75 02  	mulhu	a0, a0, t2
800023dc: 13 55 35 00  	srli	a0, a0, 3
800023e0: b3 06 05 03  	mul	a3, a0, a6
800023e4: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
800023e8: 93 e6 06 03  	ori	a3, a3, 48
800023ec: b3 07 c3 00  	add	a5, t1, a2
800023f0: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
800023f4: 13 06 16 00  	addi	a2, a2, 1
800023f8: e3 ec b8 fc  	bltu	a7, a1, 0x800023d0 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800023fc: 33 05 c4 00  	add	a0, s0, a2
80002400: 93 05 f5 ff  	addi	a1, a0, -1
80002404: 93 06 e0 01  	addi	a3, zero, 30
80002408: b3 b6 b6 00  	sltu	a3, a3, a1
8000240c: 33 47 cc 00  	xor	a4, s8, a2
80002410: 13 37 17 00  	seqz	a4, a4
80002414: b3 e6 e6 00  	or	a3, a3, a4
80002418: 63 94 06 08  	bnez	a3, 0x800024a0 <.LBB4_90+0x150>
8000241c: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002420: 33 05 85 00  	add	a0, a0, s0
80002424: 93 45 f6 ff  	not	a1, a2
80002428: 33 8c 85 01  	add	s8, a1, s8
8000242c: 33 04 c4 00  	add	s0, s0, a2
80002430: 93 05 f0 01  	addi	a1, zero, 31
80002434: b3 86 85 40  	sub	a3, a1, s0
80002438: 33 05 c5 00  	add	a0, a0, a2
8000243c: 93 05 0c 00  	mv	a1, s8
80002440: 63 64 dc 00  	bltu	s8, a3, 0x80002448 <.LBB4_90+0xf8>
80002444: 93 85 06 00  	mv	a1, a3
80002448: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000244c: 93 05 00 03  	addi	a1, zero, 48
80002450: 97 e0 ff ff  	auipc	ra, 1048574
80002454: e7 80 80 10  	jalr	264(ra)
80002458: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000245c: b3 05 a4 00  	add	a1, s0, a0
80002460: 93 b5 f5 01  	sltiu	a1, a1, 31
80002464: 33 46 ac 00  	xor	a2, s8, a0
80002468: 33 36 c0 00  	snez	a2, a2
8000246c: 33 f6 c5 00  	and	a2, a1, a2
80002470: 13 05 15 00  	addi	a0, a0, 1
80002474: e3 14 06 fe  	bnez	a2, 0x8000245c <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002478: 33 05 a4 00  	add	a0, s0, a0
8000247c: 6f 00 80 02  	j	0x800024a4 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80002480: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002484: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002488: 53 05 10 a2  	fle.d	a0, ft0, ft1
8000248c: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002490: b3 84 a4 00  	add	s1, s1, a0
80002494: 6f 00 c0 03  	j	0x800024d0 <.LBB4_90+0x180>
80002498: 13 04 00 02  	addi	s0, zero, 32
8000249c: 6f 00 80 03  	j	0x800024d4 <.LBB4_90+0x184>
800024a0: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800024a4: 63 8e 05 00  	beqz	a1, 0x800024c0 <.LBB4_90+0x170>
;       buf[len++] = '.';
800024a8: 13 04 15 00  	addi	s0, a0, 1
800024ac: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
800024b0: 33 85 a5 00  	add	a0, a1, a0
800024b4: 93 05 e0 02  	addi	a1, zero, 46
800024b8: 23 00 b5 00  	sb	a1, 0(a0)
800024bc: 6f 00 80 00  	j	0x800024c4 <.LBB4_90+0x174>
800024c0: 13 04 05 00  	mv	s0, a0
800024c4: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800024c8: 93 02 04 00  	mv	t0, s0
800024cc: 63 64 85 00  	bltu	a0, s0, 0x800024d4 <.LBB4_90+0x184>
800024d0: 93 02 00 02  	addi	t0, zero, 32
800024d4: d3 1c 94 a2  	flt.d	s9, fs0, fs1
800024d8: 37 65 66 66  	lui	a0, 419430
800024dc: 93 05 75 66  	addi	a1, a0, 1639
800024e0: 13 08 a0 00  	addi	a6, zero, 10
800024e4: 93 06 81 00  	addi	a3, sp, 8
800024e8: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800024ec: 63 80 82 04  	beq	t0, s0, 0x8000252c <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
800024f0: 33 95 b4 02  	mulh	a0, s1, a1
800024f4: 93 57 f5 01  	srli	a5, a0, 31
800024f8: 13 55 25 40  	srai	a0, a0, 2
800024fc: 33 05 f5 00  	add	a0, a0, a5
80002500: b3 07 05 03  	mul	a5, a0, a6
80002504: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002508: 93 87 07 03  	addi	a5, a5, 48
8000250c: 13 0c 14 00  	addi	s8, s0, 1
80002510: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002514: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002518: 23 00 f4 00  	sb	a5, 0(s0)
8000251c: 13 04 0c 00  	mv	s0, s8
80002520: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002524: e3 64 c7 fc  	bltu	a4, a2, 0x800024ec <.LBB4_90+0x19c>
80002528: 6f 00 80 00  	j	0x80002530 <.LBB4_90+0x1e0>
8000252c: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002530: 93 f4 3a 00  	andi	s1, s5, 3
80002534: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002538: 63 96 a4 06  	bne	s1, a0, 0x800025a4 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000253c: 63 0c 09 00  	beqz	s2, 0x80002554 <.LBB4_90+0x204>
80002540: 13 f5 ca 00  	andi	a0, s5, 12
80002544: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002548: 33 e5 ac 00  	or	a0, s9, a0
8000254c: 33 09 a9 40  	sub	s2, s2, a0
80002550: 6f 00 80 00  	j	0x80002558 <.LBB4_90+0x208>
80002554: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002558: 33 35 2c 01  	sltu	a0, s8, s2
8000255c: 93 45 15 00  	xori	a1, a0, 1
80002560: 13 05 f0 01  	addi	a0, zero, 31
80002564: 33 36 85 01  	sltu	a2, a0, s8
80002568: b3 65 b6 00  	or	a1, a2, a1
8000256c: 63 9c 05 02  	bnez	a1, 0x800025a4 <.LBB4_90+0x254>
80002570: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002574: 93 45 fc ff  	not	a1, s8
80002578: b3 05 b9 00  	add	a1, s2, a1
8000257c: 33 06 85 41  	sub	a2, a0, s8
80002580: 33 85 86 01  	add	a0, a3, s8
80002584: 63 e4 c5 00  	bltu	a1, a2, 0x8000258c <.LBB4_90+0x23c>
80002588: 93 05 06 00  	mv	a1, a2
8000258c: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002590: 93 05 00 03  	addi	a1, zero, 48
80002594: 13 06 04 00  	mv	a2, s0
80002598: 97 e0 ff ff  	auipc	ra, 1048574
8000259c: e7 80 00 fc  	jalr	-64(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800025a0: 33 0c 84 01  	add	s8, s0, s8
800025a4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800025a8: 63 6a 85 05  	bltu	a0, s8, 0x800025fc <.LBB4_90+0x2ac>
;     if (negative) {
800025ac: 63 8c 0c 00  	beqz	s9, 0x800025c4 <.LBB4_90+0x274>
800025b0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800025b4: 33 05 85 01  	add	a0, a0, s8
800025b8: 13 0c 1c 00  	addi	s8, s8, 1
800025bc: 93 05 d0 02  	addi	a1, zero, 45
800025c0: 6f 00 80 03  	j	0x800025f8 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800025c4: 13 f5 4a 00  	andi	a0, s5, 4
800025c8: 63 10 05 02  	bnez	a0, 0x800025e8 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800025cc: 13 f5 8a 00  	andi	a0, s5, 8
800025d0: 63 06 05 02  	beqz	a0, 0x800025fc <.LBB4_90+0x2ac>
800025d4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800025d8: 33 05 85 01  	add	a0, a0, s8
800025dc: 13 0c 1c 00  	addi	s8, s8, 1
800025e0: 93 05 00 02  	addi	a1, zero, 32
800025e4: 6f 00 40 01  	j	0x800025f8 <.LBB4_90+0x2a8>
800025e8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
800025ec: 33 05 85 01  	add	a0, a0, s8
800025f0: 13 0c 1c 00  	addi	s8, s8, 1
800025f4: 93 05 b0 02  	addi	a1, zero, 43
800025f8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800025fc: 33 35 90 00  	snez	a0, s1
80002600: b3 35 2c 01  	sltu	a1, s8, s2
80002604: 93 c5 15 00  	xori	a1, a1, 1
80002608: 33 65 b5 00  	or	a0, a0, a1
8000260c: 93 fa 2a 00  	andi	s5, s5, 2
80002610: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002614: 63 16 05 02  	bnez	a0, 0x80002640 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002618: b3 04 89 41  	sub	s1, s2, s8
8000261c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002620: 13 04 16 00  	addi	s0, a2, 1
80002624: 13 05 00 02  	addi	a0, zero, 32
80002628: 93 05 0b 00  	mv	a1, s6
8000262c: 93 86 09 00  	mv	a3, s3
80002630: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002634: 93 84 f4 ff  	addi	s1, s1, -1
80002638: 13 06 04 00  	mv	a2, s0
8000263c: e3 92 04 fe  	bnez	s1, 0x80002620 <.LBB4_90+0x2d0>
80002640: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002644: 63 0c 0c 02  	beqz	s8, 0x8000267c <.LBB4_90+0x32c>
80002648: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
8000264c: 33 85 8c 01  	add	a0, s9, s8
80002650: 03 45 05 00  	lbu	a0, 0(a0)
80002654: 13 0d fc ff  	addi	s10, s8, -1
80002658: 93 04 14 00  	addi	s1, s0, 1
8000265c: 93 05 0b 00  	mv	a1, s6
80002660: 13 06 04 00  	mv	a2, s0
80002664: 93 86 09 00  	mv	a3, s3
80002668: e7 80 0b 00  	jalr	s7
8000266c: 13 84 04 00  	mv	s0, s1
80002670: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002674: e3 1c 0d fc  	bnez	s10, 0x8000264c <.LBB4_90+0x2fc>
80002678: 6f 00 80 00  	j	0x80002680 <.LBB4_90+0x330>
8000267c: 93 04 04 00  	mv	s1, s0
80002680: 33 85 44 41  	sub	a0, s1, s4
80002684: 33 35 25 01  	sltu	a0, a0, s2
80002688: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000268c: 93 c5 1a 00  	xori	a1, s5, 1
80002690: 33 e5 a5 00  	or	a0, a1, a0
80002694: 63 18 05 02  	bnez	a0, 0x800026c4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002698: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000269c: 13 84 14 00  	addi	s0, s1, 1
800026a0: 13 05 00 02  	addi	a0, zero, 32
800026a4: 93 05 0b 00  	mv	a1, s6
800026a8: 13 86 04 00  	mv	a2, s1
800026ac: 93 86 09 00  	mv	a3, s3
800026b0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800026b4: 33 05 8a 00  	add	a0, s4, s0
800026b8: 93 04 04 00  	mv	s1, s0
800026bc: e3 60 25 ff  	bltu	a0, s2, 0x8000269c <.LBB4_90+0x34c>
800026c0: 6f 00 80 00  	j	0x800026c8 <.LBB4_90+0x378>
800026c4: 13 84 04 00  	mv	s0, s1
; }
800026c8: 13 05 04 00  	mv	a0, s0
800026cc: 07 39 81 02  	fld	fs2, 40(sp)
800026d0: 87 34 01 03  	fld	fs1, 48(sp)
800026d4: 07 34 81 03  	fld	fs0, 56(sp)
800026d8: 03 2d 01 04  	lw	s10, 64(sp)
800026dc: 83 2c 41 04  	lw	s9, 68(sp)
800026e0: 03 2c 81 04  	lw	s8, 72(sp)
800026e4: 83 2b c1 04  	lw	s7, 76(sp)
800026e8: 03 2b 01 05  	lw	s6, 80(sp)
800026ec: 83 2a 41 05  	lw	s5, 84(sp)
800026f0: 03 2a 81 05  	lw	s4, 88(sp)
800026f4: 83 29 c1 05  	lw	s3, 92(sp)
800026f8: 03 29 01 06  	lw	s2, 96(sp)
800026fc: 83 24 41 06  	lw	s1, 100(sp)
80002700: 03 24 81 06  	lw	s0, 104(sp)
80002704: 83 20 c1 06  	lw	ra, 108(sp)
80002708: 13 01 01 07  	addi	sp, sp, 112
8000270c: 67 80 00 00  	ret

80002710 <_etoa>:
; {
80002710: 13 01 01 f8  	addi	sp, sp, -128
80002714: 23 2e 11 06  	sw	ra, 124(sp)
80002718: 23 2c 81 06  	sw	s0, 120(sp)
8000271c: 23 2a 91 06  	sw	s1, 116(sp)
80002720: 23 28 21 07  	sw	s2, 112(sp)
80002724: 23 26 31 07  	sw	s3, 108(sp)
80002728: 23 24 41 07  	sw	s4, 104(sp)
8000272c: 23 22 51 07  	sw	s5, 100(sp)
80002730: 23 20 61 07  	sw	s6, 96(sp)
80002734: 23 2e 71 05  	sw	s7, 92(sp)
80002738: 23 2c 81 05  	sw	s8, 88(sp)
8000273c: 23 2a 91 05  	sw	s9, 84(sp)
80002740: 23 28 a1 05  	sw	s10, 80(sp)
80002744: 23 26 b1 05  	sw	s11, 76(sp)

80002748 <.LBB5_43>:
80002748: 97 14 00 00  	auipc	s1, 1
8000274c: 93 84 84 22  	addi	s1, s1, 552
80002750: 87 b0 04 00  	fld	ft1, 0(s1)

80002754 <.LBB5_44>:
80002754: 97 14 00 00  	auipc	s1, 1
80002758: 93 84 44 22  	addi	s1, s1, 548
8000275c: 07 b1 04 00  	fld	ft2, 0(s1)
80002760: 53 00 a5 22  	fmv.d	ft0, fa0
80002764: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002768: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
8000276c: b3 f4 84 00  	and	s1, s1, s0
80002770: 93 0a 08 00  	mv	s5, a6
80002774: 13 89 07 00  	mv	s2, a5
80002778: 93 07 07 00  	mv	a5, a4
8000277c: 93 89 06 00  	mv	s3, a3
80002780: 13 0a 06 00  	mv	s4, a2
80002784: 13 8b 05 00  	mv	s6, a1
80002788: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
8000278c: 63 92 04 06  	bnez	s1, 0x800027f0 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002790: 13 85 0b 00  	mv	a0, s7
80002794: 93 05 0b 00  	mv	a1, s6
80002798: 13 06 0a 00  	mv	a2, s4
8000279c: 93 86 09 00  	mv	a3, s3
800027a0: 53 05 00 22  	fmv.d	fa0, ft0
800027a4: 13 87 07 00  	mv	a4, a5
800027a8: 93 07 09 00  	mv	a5, s2
800027ac: 13 88 0a 00  	mv	a6, s5
800027b0: 83 2d c1 04  	lw	s11, 76(sp)
800027b4: 03 2d 01 05  	lw	s10, 80(sp)
800027b8: 83 2c 41 05  	lw	s9, 84(sp)
800027bc: 03 2c 81 05  	lw	s8, 88(sp)
800027c0: 83 2b c1 05  	lw	s7, 92(sp)
800027c4: 03 2b 01 06  	lw	s6, 96(sp)
800027c8: 83 2a 41 06  	lw	s5, 100(sp)
800027cc: 03 2a 81 06  	lw	s4, 104(sp)
800027d0: 83 29 c1 06  	lw	s3, 108(sp)
800027d4: 03 29 01 07  	lw	s2, 112(sp)
800027d8: 83 24 41 07  	lw	s1, 116(sp)
800027dc: 03 24 81 07  	lw	s0, 120(sp)
800027e0: 83 20 c1 07  	lw	ra, 124(sp)
800027e4: 13 01 01 08  	addi	sp, sp, 128
800027e8: 17 03 00 00  	auipc	t1, 0
800027ec: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
800027f0: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
800027f4: 13 f5 0a 40  	andi	a0, s5, 1024
800027f8: 13 07 60 00  	addi	a4, zero, 6
800027fc: 63 04 05 00  	beqz	a0, 0x80002804 <.LBB5_44+0xb0>
80002800: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002804: 27 30 a1 02  	fsd	fa0, 32(sp)
80002808: 83 25 41 02  	lw	a1, 36(sp)
8000280c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002810: 93 d6 45 01  	srli	a3, a1, 20
80002814: b7 07 10 00  	lui	a5, 256
80002818: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
8000281c: b3 f5 f5 00  	and	a1, a1, a5
80002820: 23 2c c1 00  	sw	a2, 24(sp)
80002824: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002828: b3 e5 c5 00  	or	a1, a1, a2
8000282c: 23 2e b1 00  	sw	a1, 28(sp)
80002830: 87 30 81 01  	fld	ft1, 24(sp)

80002834 <.LBB5_45>:
80002834: 97 15 00 00  	auipc	a1, 1
80002838: 93 85 c5 14  	addi	a1, a1, 332
8000283c: 07 b1 05 00  	fld	ft2, 0(a1)

80002840 <.LBB5_46>:
80002840: 97 15 00 00  	auipc	a1, 1
80002844: 93 85 85 14  	addi	a1, a1, 328
80002848: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000284c: 93 f5 f6 7f  	andi	a1, a3, 2047
80002850: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002854: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002858: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

8000285c <.LBB5_47>:
8000285c: 97 15 00 00  	auipc	a1, 1
80002860: 93 85 45 13  	addi	a1, a1, 308
80002864: 07 b1 05 00  	fld	ft2, 0(a1)

80002868 <.LBB5_48>:
80002868: 97 15 00 00  	auipc	a1, 1
8000286c: 93 85 05 13  	addi	a1, a1, 304
80002870: 87 b1 05 00  	fld	ft3, 0(a1)

80002874 <.LBB5_49>:
80002874: 97 15 00 00  	auipc	a1, 1
80002878: 93 85 c5 12  	addi	a1, a1, 300
8000287c: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002880: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002884: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002888: d3 80 05 d2  	fcvt.d.w	ft1, a1
8000288c: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002890 <.LBB5_50>:
80002890: 17 16 00 00  	auipc	a2, 1
80002894: 13 06 86 11  	addi	a2, a2, 280
80002898: 87 31 06 00  	fld	ft3, 0(a2)

8000289c <.LBB5_51>:
8000289c: 17 16 00 00  	auipc	a2, 1
800028a0: 13 06 46 11  	addi	a2, a2, 276
800028a4: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800028a8: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800028ac: 53 01 06 d2  	fcvt.d.w	ft2, a2
800028b0: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800028b4: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800028b8: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800028bc: 13 06 f6 3f  	addi	a2, a2, 1023
800028c0: 23 28 01 00  	sw	zero, 16(sp)
800028c4: 13 16 46 01  	slli	a2, a2, 20
800028c8: 23 2a c1 00  	sw	a2, 20(sp)

800028cc <.LBB5_52>:
800028cc: 17 16 00 00  	auipc	a2, 1
800028d0: 13 06 46 0f  	addi	a2, a2, 244
800028d4: 87 31 06 00  	fld	ft3, 0(a2)

800028d8 <.LBB5_53>:
800028d8: 17 16 00 00  	auipc	a2, 1
800028dc: 13 06 06 0f  	addi	a2, a2, 240
800028e0: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800028e4: 87 32 01 01  	fld	ft5, 16(sp)

800028e8 <.LBB5_54>:
800028e8: 17 16 00 00  	auipc	a2, 1
800028ec: 13 06 06 0d  	addi	a2, a2, 208
800028f0: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800028f4: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

800028f8 <.LBB5_55>:
800028f8: 17 16 00 00  	auipc	a2, 1
800028fc: 13 06 86 0d  	addi	a2, a2, 216
80002900: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002904: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002908: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
8000290c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002910: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002914: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002918: 53 71 23 02  	fadd.d	ft2, ft6, ft2
8000291c: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002920: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002924: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002928: 63 0a 06 00  	beqz	a2, 0x8000293c <.LBB5_56+0x10>

8000292c <.LBB5_56>:
8000292c: 97 16 00 00  	auipc	a3, 1
80002930: 93 86 c6 0a  	addi	a3, a3, 172
80002934: 07 b1 06 00  	fld	ft2, 0(a3)
80002938: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
8000293c: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002940: 93 05 34 06  	addi	a1, s0, 99
80002944: 93 b5 75 0c  	sltiu	a1, a1, 199
80002948: 13 06 50 00  	addi	a2, zero, 5
8000294c: b7 16 00 00  	lui	a3, 1
80002950: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002954: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002958: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
8000295c: 63 84 06 06  	beqz	a3, 0x800029c4 <.LBB5_58+0x58>

80002960 <.LBB5_57>:
80002960: 97 15 00 00  	auipc	a1, 1
80002964: 93 85 05 08  	addi	a1, a1, 128
80002968: 07 b1 05 00  	fld	ft2, 0(a1)

8000296c <.LBB5_58>:
8000296c: 97 15 00 00  	auipc	a1, 1
80002970: 93 85 c5 07  	addi	a1, a1, 124
80002974: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80002978: d3 15 25 a2  	flt.d	a1, fa0, ft2
8000297c: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80002980: b3 e5 c5 00  	or	a1, a1, a2
80002984: 63 98 05 00  	bnez	a1, 0x80002994 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002988: 63 40 e4 02  	blt	s0, a4, 0x800029a8 <.LBB5_58+0x3c>
8000298c: 13 07 00 00  	mv	a4, zero
80002990: 6f 00 00 02  	j	0x800029b0 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002994: 63 06 07 02  	beqz	a4, 0x800029c0 <.LBB5_58+0x54>
80002998: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
8000299c: 13 45 15 00  	xori	a0, a0, 1
800029a0: 33 07 a7 40  	sub	a4, a4, a0
800029a4: 6f 00 00 02  	j	0x800029c4 <.LBB5_58+0x58>
800029a8: 13 45 f4 ff  	not	a0, s0
800029ac: 33 07 a7 00  	add	a4, a4, a0
800029b0: 13 04 00 00  	mv	s0, zero
800029b4: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800029b8: 93 ea 0a 40  	ori	s5, s5, 1024
800029bc: 6f 00 80 00  	j	0x800029c4 <.LBB5_58+0x58>
800029c0: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800029c4: b3 05 99 41  	sub	a1, s2, s9
800029c8: 33 36 b9 00  	sltu	a2, s2, a1
800029cc: 13 05 00 00  	mv	a0, zero
800029d0: 63 14 06 00  	bnez	a2, 0x800029d8 <.LBB5_58+0x6c>
800029d4: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800029d8: 93 07 00 00  	mv	a5, zero
800029dc: 93 d5 1a 00  	srli	a1, s5, 1
800029e0: 93 f4 15 00  	andi	s1, a1, 1
800029e4: b3 35 90 01  	snez	a1, s9
800029e8: b3 f5 b4 00  	and	a1, s1, a1
800029ec: 53 01 00 d2  	fcvt.d.w	ft2, zero
800029f0: 63 94 05 00  	bnez	a1, 0x800029f8 <.LBB5_58+0x8c>
800029f4: 93 07 05 00  	mv	a5, a0
;   if (expval) {
800029f8: 93 35 14 00  	seqz	a1, s0
800029fc: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002a00: 63 94 05 00  	bnez	a1, 0x80002a08 <.LBB5_58+0x9c>
80002a04: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002a08: 63 04 05 00  	beqz	a0, 0x80002a10 <.LBB5_58+0xa4>
80002a0c: 53 15 a5 22  	fneg.d	fa0, fa0
80002a10: 37 f5 ff ff  	lui	a0, 1048575
80002a14: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002a18: 33 f8 aa 00  	and	a6, s5, a0
80002a1c: 13 85 0b 00  	mv	a0, s7
80002a20: 93 05 0b 00  	mv	a1, s6
80002a24: 13 06 0a 00  	mv	a2, s4
80002a28: 93 86 09 00  	mv	a3, s3
80002a2c: 97 f0 ff ff  	auipc	ra, 1048575
80002a30: e7 80 40 60  	jalr	1540(ra)
80002a34: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80002a38: 63 82 0c 18  	beqz	s9, 0x80002bbc <.LBB5_58+0x250>
80002a3c: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80002a40: 13 f5 0a 02  	andi	a0, s5, 32
80002a44: 13 45 55 06  	xori	a0, a0, 101
80002a48: 93 05 0b 00  	mv	a1, s6
80002a4c: 13 06 0d 00  	mv	a2, s10
80002a50: 93 86 09 00  	mv	a3, s3
80002a54: e7 80 0b 00  	jalr	s7
80002a58: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80002a5c: 93 5a f4 01  	srli	s5, s0, 31
80002a60: 13 55 f4 41  	srai	a0, s0, 31
80002a64: b3 05 a4 00  	add	a1, s0, a0
80002a68: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80002a6c: 93 8d dc ff  	addi	s11, s9, -3
80002a70: 13 04 f0 01  	addi	s0, zero, 31
80002a74: 37 d5 cc cc  	lui	a0, 838861
80002a78: 13 05 d5 cc  	addi	a0, a0, -819
80002a7c: 13 08 a0 00  	addi	a6, zero, 10
80002a80: 93 08 c1 02  	addi	a7, sp, 44
80002a84: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80002a88: b3 37 a7 02  	mulhu	a5, a4, a0
80002a8c: 93 d5 37 00  	srli	a1, a5, 3
80002a90: b3 87 05 03  	mul	a5, a1, a6
80002a94: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002a98: 13 e6 07 03  	ori	a2, a5, 48
80002a9c: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002aa0: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002aa4: 13 0c 1c 00  	addi	s8, s8, 1
80002aa8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002aac: 33 b6 e2 00  	sltu	a2, t0, a4
80002ab0: 33 f6 c7 00  	and	a2, a5, a2
80002ab4: 93 8d fd ff  	addi	s11, s11, -1
80002ab8: 13 04 f4 ff  	addi	s0, s0, -1
80002abc: 13 87 05 00  	mv	a4, a1
80002ac0: e3 14 06 fc  	bnez	a2, 0x80002a88 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002ac4: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ac8: 33 35 ac 00  	sltu	a0, s8, a0
80002acc: 13 45 15 00  	xori	a0, a0, 1
80002ad0: 93 c5 17 00  	xori	a1, a5, 1
80002ad4: 33 e5 a5 00  	or	a0, a1, a0
80002ad8: 63 12 05 04  	bnez	a0, 0x80002b1c <.LBB5_58+0x1b0>
80002adc: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ae0: b3 85 8c 41  	sub	a1, s9, s8
80002ae4: 93 85 d5 ff  	addi	a1, a1, -3
80002ae8: 13 06 f0 01  	addi	a2, zero, 31
80002aec: 33 06 86 41  	sub	a2, a2, s8
80002af0: 33 05 85 01  	add	a0, a0, s8
80002af4: 63 e4 c5 00  	bltu	a1, a2, 0x80002afc <.LBB5_58+0x190>
80002af8: 93 05 06 00  	mv	a1, a2
80002afc: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002b00: 93 05 00 03  	addi	a1, zero, 48
80002b04: 97 e0 ff ff  	auipc	ra, 1048574
80002b08: e7 80 40 a5  	jalr	-1452(ra)
;   if (flags & FLAGS_HASH) {
80002b0c: 63 e4 8d 00  	bltu	s11, s0, 0x80002b14 <.LBB5_58+0x1a8>
80002b10: 93 0d 04 00  	mv	s11, s0
80002b14: 33 85 8d 01  	add	a0, s11, s8
80002b18: 13 0c 15 00  	addi	s8, a0, 1
80002b1c: 83 2c c1 00  	lw	s9, 12(sp)
80002b20: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002b24: 63 60 85 03  	bltu	a0, s8, 0x80002b44 <.LBB5_58+0x1d8>
80002b28: 13 05 c1 02  	addi	a0, sp, 44
80002b2c: 33 05 85 01  	add	a0, a0, s8
80002b30: 93 05 d0 02  	addi	a1, zero, 45
80002b34: 63 94 0a 00  	bnez	s5, 0x80002b3c <.LBB5_58+0x1d0>
80002b38: 93 05 b0 02  	addi	a1, zero, 43
80002b3c: 13 0c 1c 00  	addi	s8, s8, 1
80002b40: 23 00 b5 00  	sb	a1, 0(a0)
80002b44: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80002b48: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80002b4c: 33 85 8a 01  	add	a0, s5, s8
80002b50: 03 45 05 00  	lbu	a0, 0(a0)
80002b54: 13 06 04 00  	mv	a2, s0
80002b58: 93 04 fc ff  	addi	s1, s8, -1
80002b5c: 13 04 14 00  	addi	s0, s0, 1
80002b60: 93 05 0b 00  	mv	a1, s6
80002b64: 93 86 09 00  	mv	a3, s3
80002b68: e7 80 0b 00  	jalr	s7
80002b6c: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80002b70: e3 9e 04 fc  	bnez	s1, 0x80002b4c <.LBB5_58+0x1e0>
80002b74: 33 05 44 41  	sub	a0, s0, s4
80002b78: 33 35 25 01  	sltu	a0, a0, s2
80002b7c: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80002b80: 93 c5 1c 00  	xori	a1, s9, 1
80002b84: 33 e5 a5 00  	or	a0, a1, a0
80002b88: 63 18 05 02  	bnez	a0, 0x80002bb8 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80002b8c: b3 04 40 41  	neg	s1, s4
80002b90: 13 0d 14 00  	addi	s10, s0, 1
80002b94: 13 05 00 02  	addi	a0, zero, 32
80002b98: 93 05 0b 00  	mv	a1, s6
80002b9c: 13 06 04 00  	mv	a2, s0
80002ba0: 93 86 09 00  	mv	a3, s3
80002ba4: e7 80 0b 00  	jalr	s7
80002ba8: 33 85 a4 01  	add	a0, s1, s10
80002bac: 13 04 0d 00  	mv	s0, s10
80002bb0: e3 60 25 ff  	bltu	a0, s2, 0x80002b90 <.LBB5_58+0x224>
80002bb4: 6f 00 80 00  	j	0x80002bbc <.LBB5_58+0x250>
80002bb8: 13 0d 04 00  	mv	s10, s0
; }
80002bbc: 13 05 0d 00  	mv	a0, s10
80002bc0: 83 2d c1 04  	lw	s11, 76(sp)
80002bc4: 03 2d 01 05  	lw	s10, 80(sp)
80002bc8: 83 2c 41 05  	lw	s9, 84(sp)
80002bcc: 03 2c 81 05  	lw	s8, 88(sp)
80002bd0: 83 2b c1 05  	lw	s7, 92(sp)
80002bd4: 03 2b 01 06  	lw	s6, 96(sp)
80002bd8: 83 2a 41 06  	lw	s5, 100(sp)
80002bdc: 03 2a 81 06  	lw	s4, 104(sp)
80002be0: 83 29 c1 06  	lw	s3, 108(sp)
80002be4: 03 29 01 07  	lw	s2, 112(sp)
80002be8: 83 24 41 07  	lw	s1, 116(sp)
80002bec: 03 24 81 07  	lw	s0, 120(sp)
80002bf0: 83 20 c1 07  	lw	ra, 124(sp)
80002bf4: 13 01 01 08  	addi	sp, sp, 128
80002bf8: 67 80 00 00  	ret

80002bfc <_ntoa_format>:
; {
80002bfc: 13 01 01 fc  	addi	sp, sp, -64
80002c00: 23 2e 11 02  	sw	ra, 60(sp)
80002c04: 23 2c 81 02  	sw	s0, 56(sp)
80002c08: 23 2a 91 02  	sw	s1, 52(sp)
80002c0c: 23 28 21 03  	sw	s2, 48(sp)
80002c10: 23 26 31 03  	sw	s3, 44(sp)
80002c14: 23 24 41 03  	sw	s4, 40(sp)
80002c18: 23 22 51 03  	sw	s5, 36(sp)
80002c1c: 23 20 61 03  	sw	s6, 32(sp)
80002c20: 23 2e 71 01  	sw	s7, 28(sp)
80002c24: 23 2c 81 01  	sw	s8, 24(sp)
80002c28: 23 2a 91 01  	sw	s9, 20(sp)
80002c2c: 23 28 a1 01  	sw	s10, 16(sp)
80002c30: 23 26 b1 01  	sw	s11, 12(sp)
80002c34: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80002c38: 93 fa 2e 00  	andi	s5, t4, 2
80002c3c: 13 09 0e 00  	mv	s2, t3
80002c40: 13 8d 03 00  	mv	s10, t2
80002c44: 93 8c 08 00  	mv	s9, a7
80002c48: 13 8c 07 00  	mv	s8, a5
80002c4c: 93 89 06 00  	mv	s3, a3
80002c50: 13 0a 06 00  	mv	s4, a2
80002c54: 13 8b 05 00  	mv	s6, a1
80002c58: 93 0d 05 00  	mv	s11, a0
80002c5c: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80002c60: 63 9e 0a 0c  	bnez	s5, 0x80002d3c <_ntoa_format+0x140>
80002c64: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002c68: 63 0e 09 00  	beqz	s2, 0x80002c84 <_ntoa_format+0x88>
80002c6c: 63 0e 04 00  	beqz	s0, 0x80002c88 <_ntoa_format+0x8c>
80002c70: 13 f5 cb 00  	andi	a0, s7, 12
80002c74: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002c78: 33 65 05 01  	or	a0, a0, a6
80002c7c: 33 09 a9 40  	sub	s2, s2, a0
80002c80: 6f 00 80 00  	j	0x80002c88 <_ntoa_format+0x8c>
80002c84: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002c88: 33 35 ac 01  	sltu	a0, s8, s10
80002c8c: 93 45 15 00  	xori	a1, a0, 1
80002c90: 13 05 f0 01  	addi	a0, zero, 31
80002c94: 33 36 85 01  	sltu	a2, a0, s8
80002c98: b3 65 b6 00  	or	a1, a2, a1
80002c9c: 63 94 05 04  	bnez	a1, 0x80002ce4 <_ntoa_format+0xe8>
80002ca0: 23 22 51 01  	sw	s5, 4(sp)
80002ca4: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ca8: 93 45 fc ff  	not	a1, s8
80002cac: b3 85 a5 01  	add	a1, a1, s10
80002cb0: 33 06 85 41  	sub	a2, a0, s8
80002cb4: 33 05 87 01  	add	a0, a4, s8
80002cb8: 63 e4 c5 00  	bltu	a1, a2, 0x80002cc0 <_ntoa_format+0xc4>
80002cbc: 93 05 06 00  	mv	a1, a2
80002cc0: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002cc4: 93 05 00 03  	addi	a1, zero, 48
80002cc8: 13 86 04 00  	mv	a2, s1
80002ccc: 97 e0 ff ff  	auipc	ra, 1048574
80002cd0: e7 80 c0 88  	jalr	-1908(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002cd4: 33 8c 84 01  	add	s8, s1, s8
80002cd8: 03 27 81 00  	lw	a4, 8(sp)
80002cdc: 13 88 0a 00  	mv	a6, s5
80002ce0: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002ce4: 63 0c 04 04  	beqz	s0, 0x80002d3c <_ntoa_format+0x140>
80002ce8: 33 35 2c 01  	sltu	a0, s8, s2
80002cec: 93 45 15 00  	xori	a1, a0, 1
80002cf0: 13 05 f0 01  	addi	a0, zero, 31
80002cf4: 33 36 85 01  	sltu	a2, a0, s8
80002cf8: b3 e5 c5 00  	or	a1, a1, a2
80002cfc: 63 90 05 04  	bnez	a1, 0x80002d3c <_ntoa_format+0x140>
80002d00: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d04: 93 45 fc ff  	not	a1, s8
80002d08: b3 05 b9 00  	add	a1, s2, a1
80002d0c: 33 06 85 41  	sub	a2, a0, s8
80002d10: 33 05 87 01  	add	a0, a4, s8
80002d14: 63 e4 c5 00  	bltu	a1, a2, 0x80002d1c <_ntoa_format+0x120>
80002d18: 93 05 06 00  	mv	a1, a2
80002d1c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002d20: 93 05 00 03  	addi	a1, zero, 48
80002d24: 13 86 04 00  	mv	a2, s1
80002d28: 97 e0 ff ff  	auipc	ra, 1048574
80002d2c: e7 80 00 83  	jalr	-2000(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d30: 33 8c 84 01  	add	s8, s1, s8
80002d34: 03 27 81 00  	lw	a4, 8(sp)
80002d38: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80002d3c: 13 f5 0b 01  	andi	a0, s7, 16
80002d40: 63 02 05 0e  	beqz	a0, 0x80002e24 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002d44: 13 f5 0b 40  	andi	a0, s7, 1024
80002d48: 13 55 a5 00  	srli	a0, a0, 10
80002d4c: 93 35 1c 00  	seqz	a1, s8
80002d50: 33 65 b5 00  	or	a0, a0, a1
80002d54: 63 1e 05 02  	bnez	a0, 0x80002d90 <_ntoa_format+0x194>
80002d58: 33 45 ac 01  	xor	a0, s8, s10
80002d5c: 33 35 a0 00  	snez	a0, a0
80002d60: b3 45 2c 01  	xor	a1, s8, s2
80002d64: b3 35 b0 00  	snez	a1, a1
80002d68: 33 75 b5 00  	and	a0, a0, a1
80002d6c: 63 12 05 02  	bnez	a0, 0x80002d90 <_ntoa_format+0x194>
;       len--;
80002d70: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002d74: b3 35 a0 00  	snez	a1, a0
80002d78: 13 86 0c ff  	addi	a2, s9, -16
80002d7c: 13 36 16 00  	seqz	a2, a2
80002d80: b3 75 b6 00  	and	a1, a2, a1
80002d84: 63 84 05 00  	beqz	a1, 0x80002d8c <_ntoa_format+0x190>
80002d88: 13 05 ec ff  	addi	a0, s8, -2
80002d8c: 13 0c 05 00  	mv	s8, a0
80002d90: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d94: 63 96 ac 02  	bne	s9, a0, 0x80002dc0 <_ntoa_format+0x1c4>
80002d98: 13 f5 0b 02  	andi	a0, s7, 32
80002d9c: 93 55 55 00  	srli	a1, a0, 5
80002da0: 13 06 f0 01  	addi	a2, zero, 31
80002da4: 33 36 86 01  	sltu	a2, a2, s8
80002da8: b3 e5 c5 00  	or	a1, a1, a2
80002dac: 63 9e 05 02  	bnez	a1, 0x80002de8 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002db0: 33 05 87 01  	add	a0, a4, s8
80002db4: 13 0c 1c 00  	addi	s8, s8, 1
80002db8: 93 05 80 07  	addi	a1, zero, 120
80002dbc: 6f 00 c0 04  	j	0x80002e08 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002dc0: 13 85 ec ff  	addi	a0, s9, -2
80002dc4: 33 35 a0 00  	snez	a0, a0
80002dc8: 93 05 f0 01  	addi	a1, zero, 31
80002dcc: b3 b5 85 01  	sltu	a1, a1, s8
80002dd0: 33 65 b5 00  	or	a0, a0, a1
80002dd4: 63 1c 05 02  	bnez	a0, 0x80002e0c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002dd8: 33 05 87 01  	add	a0, a4, s8
80002ddc: 13 0c 1c 00  	addi	s8, s8, 1
80002de0: 93 05 20 06  	addi	a1, zero, 98
80002de4: 6f 00 40 02  	j	0x80002e08 <_ntoa_format+0x20c>
80002de8: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002dec: 13 35 15 00  	seqz	a0, a0
80002df0: 93 c5 15 00  	xori	a1, a1, 1
80002df4: 33 65 b5 00  	or	a0, a0, a1
80002df8: 63 1a 05 00  	bnez	a0, 0x80002e0c <_ntoa_format+0x210>
;       buf[len++] = 'X';
80002dfc: 33 05 87 01  	add	a0, a4, s8
80002e00: 13 0c 1c 00  	addi	s8, s8, 1
80002e04: 93 05 80 05  	addi	a1, zero, 88
80002e08: 23 00 b5 00  	sb	a1, 0(a0)
80002e0c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002e10: 63 60 85 07  	bltu	a0, s8, 0x80002e70 <_ntoa_format+0x274>
;       buf[len++] = '0';
80002e14: 33 05 87 01  	add	a0, a4, s8
80002e18: 13 0c 1c 00  	addi	s8, s8, 1
80002e1c: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80002e20: 23 00 b5 00  	sb	a1, 0(a0)
80002e24: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002e28: 63 64 85 05  	bltu	a0, s8, 0x80002e70 <_ntoa_format+0x274>
;     if (negative) {
80002e2c: 63 0a 08 00  	beqz	a6, 0x80002e40 <_ntoa_format+0x244>
;       buf[len++] = '-';
80002e30: 33 05 87 01  	add	a0, a4, s8
80002e34: 13 0c 1c 00  	addi	s8, s8, 1
80002e38: 93 05 d0 02  	addi	a1, zero, 45
80002e3c: 6f 00 00 03  	j	0x80002e6c <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80002e40: 13 f5 4b 00  	andi	a0, s7, 4
80002e44: 63 1e 05 00  	bnez	a0, 0x80002e60 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80002e48: 13 f5 8b 00  	andi	a0, s7, 8
80002e4c: 63 02 05 02  	beqz	a0, 0x80002e70 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80002e50: 33 05 87 01  	add	a0, a4, s8
80002e54: 13 0c 1c 00  	addi	s8, s8, 1
80002e58: 93 05 00 02  	addi	a1, zero, 32
80002e5c: 6f 00 00 01  	j	0x80002e6c <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002e60: 33 05 87 01  	add	a0, a4, s8
80002e64: 13 0c 1c 00  	addi	s8, s8, 1
80002e68: 93 05 b0 02  	addi	a1, zero, 43
80002e6c: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002e70: 13 f5 3b 00  	andi	a0, s7, 3
80002e74: 33 35 a0 00  	snez	a0, a0
80002e78: b3 35 2c 01  	sltu	a1, s8, s2
80002e7c: 93 c5 15 00  	xori	a1, a1, 1
80002e80: 33 65 b5 00  	or	a0, a0, a1
80002e84: 13 04 0a 00  	mv	s0, s4
80002e88: 63 16 05 02  	bnez	a0, 0x80002eb4 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80002e8c: b3 04 89 41  	sub	s1, s2, s8
80002e90: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002e94: 13 04 16 00  	addi	s0, a2, 1
80002e98: 13 05 00 02  	addi	a0, zero, 32
80002e9c: 93 05 0b 00  	mv	a1, s6
80002ea0: 93 86 09 00  	mv	a3, s3
80002ea4: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002ea8: 93 84 f4 ff  	addi	s1, s1, -1
80002eac: 13 06 04 00  	mv	a2, s0
80002eb0: e3 92 04 fe  	bnez	s1, 0x80002e94 <_ntoa_format+0x298>
80002eb4: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002eb8: 63 0e 0c 02  	beqz	s8, 0x80002ef4 <_ntoa_format+0x2f8>
80002ebc: 03 25 81 00  	lw	a0, 8(sp)
80002ec0: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002ec4: 33 85 8b 01  	add	a0, s7, s8
80002ec8: 03 45 05 00  	lbu	a0, 0(a0)
80002ecc: 93 0c fc ff  	addi	s9, s8, -1
80002ed0: 93 04 14 00  	addi	s1, s0, 1
80002ed4: 93 05 0b 00  	mv	a1, s6
80002ed8: 13 06 04 00  	mv	a2, s0
80002edc: 93 86 09 00  	mv	a3, s3
80002ee0: e7 80 0d 00  	jalr	s11
80002ee4: 13 84 04 00  	mv	s0, s1
80002ee8: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002eec: e3 9c 0c fc  	bnez	s9, 0x80002ec4 <_ntoa_format+0x2c8>
80002ef0: 6f 00 80 00  	j	0x80002ef8 <_ntoa_format+0x2fc>
80002ef4: 93 04 04 00  	mv	s1, s0
80002ef8: 33 85 44 41  	sub	a0, s1, s4
80002efc: 33 35 25 01  	sltu	a0, a0, s2
80002f00: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002f04: 93 c5 1a 00  	xori	a1, s5, 1
80002f08: 33 e5 a5 00  	or	a0, a1, a0
80002f0c: 63 18 05 02  	bnez	a0, 0x80002f3c <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002f10: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002f14: 13 84 14 00  	addi	s0, s1, 1
80002f18: 13 05 00 02  	addi	a0, zero, 32
80002f1c: 93 05 0b 00  	mv	a1, s6
80002f20: 13 86 04 00  	mv	a2, s1
80002f24: 93 86 09 00  	mv	a3, s3
80002f28: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002f2c: 33 05 8a 00  	add	a0, s4, s0
80002f30: 93 04 04 00  	mv	s1, s0
80002f34: e3 60 25 ff  	bltu	a0, s2, 0x80002f14 <_ntoa_format+0x318>
80002f38: 6f 00 80 00  	j	0x80002f40 <_ntoa_format+0x344>
80002f3c: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002f40: 13 05 04 00  	mv	a0, s0
80002f44: 83 2d c1 00  	lw	s11, 12(sp)
80002f48: 03 2d 01 01  	lw	s10, 16(sp)
80002f4c: 83 2c 41 01  	lw	s9, 20(sp)
80002f50: 03 2c 81 01  	lw	s8, 24(sp)
80002f54: 83 2b c1 01  	lw	s7, 28(sp)
80002f58: 03 2b 01 02  	lw	s6, 32(sp)
80002f5c: 83 2a 41 02  	lw	s5, 36(sp)
80002f60: 03 2a 81 02  	lw	s4, 40(sp)
80002f64: 83 29 c1 02  	lw	s3, 44(sp)
80002f68: 03 29 01 03  	lw	s2, 48(sp)
80002f6c: 83 24 41 03  	lw	s1, 52(sp)
80002f70: 03 24 81 03  	lw	s0, 56(sp)
80002f74: 83 20 c1 03  	lw	ra, 60(sp)
80002f78: 13 01 01 04  	addi	sp, sp, 64
80002f7c: 67 80 00 00  	ret

80002f80 <_snrt_init_team>:
;     team->base.root = team;
80002f80: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002f84: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002f88: 03 23 87 00  	lw	t1, 8(a4)
80002f8c: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002f90: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002f94: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002f98: 83 22 47 00  	lw	t0, 4(a4)
80002f9c: 33 88 08 03  	mul	a6, a7, a6
80002fa0: 33 05 58 02  	mul	a0, a6, t0
80002fa4: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002fa8: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002fac: 33 85 68 40  	sub	a0, a7, t1
80002fb0: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002fb4: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002fb8: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002fbc: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002fc0: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002fc4: 03 25 87 01  	lw	a0, 24(a4)
80002fc8: b7 05 00 10  	lui	a1, 65536
80002fcc: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002fd0: 23 a2 07 02  	sw	zero, 36(a5)
80002fd4: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002fd8: 03 25 07 02  	lw	a0, 32(a4)
80002fdc: 83 25 47 02  	lw	a1, 36(a4)
80002fe0: 23 a4 a7 02  	sw	a0, 40(a5)
80002fe4: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002fe8: 23 a8 c7 02  	sw	a2, 48(a5)
80002fec: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002ff0: 23 ac d7 02  	sw	a3, 56(a5)
80002ff4: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002ff8: 03 25 07 01  	lw	a0, 16(a4)
80002ffc: 33 08 a6 00  	add	a6, a2, a0
80003000: 93 05 08 19  	addi	a1, a6, 400
80003004: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80003008: b3 32 a8 00  	sltu	t0, a6, a0
8000300c: 93 55 15 00  	srli	a1, a0, 1
80003010: 33 03 b8 00  	add	t1, a6, a1
80003014: b3 35 03 01  	sltu	a1, t1, a6
80003018: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
8000301c: 23 a0 67 04  	sw	t1, 64(a5)
80003020: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80003024: 13 15 15 00  	slli	a0, a0, 1
80003028: b3 05 c5 00  	add	a1, a0, a2
8000302c: 33 b5 a5 00  	sltu	a0, a1, a0
80003030: 23 a4 b7 04  	sw	a1, 72(a5)
80003034: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80003038: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
8000303c: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80003040: 37 05 00 00  	lui	a0, 0
80003044: 33 05 45 00  	add	a0, a0, tp
80003048: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000304c: 03 a5 07 00  	lw	a0, 0(a5)
80003050: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80003054: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003058: b3 85 b8 40  	sub	a1, a7, a1
8000305c: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80003060: b7 05 00 00  	lui	a1, 0
80003064: b3 85 45 00  	add	a1, a1, tp
80003068: 23 a2 a5 00  	sw	a0, 4(a1)
8000306c: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80003070: 33 85 a8 02  	mul	a0, a7, a0

80003074 <.LBB0_1>:
80003074: 97 15 00 00  	auipc	a1, 1
80003078: 93 85 05 98  	addi	a1, a1, -1664
8000307c: 33 05 b5 00  	add	a0, a0, a1
80003080: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80003084: 83 28 07 03  	lw	a7, 48(a4)
80003088: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
8000308c: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80003090: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80003094: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80003098: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
8000309c: 13 05 76 00  	addi	a0, a2, 7
800030a0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800030a4: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800030a8: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800030ac: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800030b0: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800030b4: 03 a5 05 00  	lw	a0, 0(a1)
800030b8: 13 05 f5 44  	addi	a0, a0, 1103
800030bc: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800030c0: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800030c4: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800030c8: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800030cc: 37 05 00 00  	lui	a0, 0
800030d0: 33 05 45 00  	add	a0, a0, tp
800030d4: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800030d8: 37 05 00 00  	lui	a0, 0
800030dc: 33 05 45 00  	add	a0, a0, tp
800030e0: 23 26 e5 00  	sw	a4, 12(a0)
; }
800030e4: 67 80 00 00  	ret

800030e8 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800030e8: 37 05 00 00  	lui	a0, 0
800030ec: 33 05 45 00  	add	a0, a0, tp
800030f0: 03 25 05 00  	lw	a0, 0(a0)
800030f4: 03 25 05 00  	lw	a0, 0(a0)
800030f8: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800030fc: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003100: 33 85 a5 40  	sub	a0, a1, a0
80003104: 67 80 00 00  	ret

80003108 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80003108: 37 05 00 00  	lui	a0, 0
8000310c: 33 05 45 00  	add	a0, a0, tp
80003110: 03 25 05 00  	lw	a0, 0(a0)
80003114: 03 25 05 00  	lw	a0, 0(a0)
80003118: 03 25 05 07  	lw	a0, 112(a0)
8000311c: 67 80 00 00  	ret

80003120 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80003120: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80003124: 63 44 05 00  	bltz	a0, 0x8000312c <__snrt_isr+0xc>
;         while (1)
80003128: 6f 00 00 00  	j	0x80003128 <__snrt_isr+0x8>
8000312c: b7 05 00 80  	lui	a1, 524288
80003130: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80003134: 33 75 b5 00  	and	a0, a0, a1
80003138: 13 05 d5 ff  	addi	a0, a0, -3
8000313c: 93 55 25 00  	srli	a1, a0, 2
80003140: 13 15 e5 01  	slli	a0, a0, 30
80003144: 33 65 b5 00  	or	a0, a0, a1
80003148: 93 05 40 00  	addi	a1, zero, 4
8000314c: 63 0a b5 06  	beq	a0, a1, 0x800031c0 <.LBB1_7+0x58>
80003150: 63 1a 05 08  	bnez	a0, 0x800031e4 <.LBB1_7+0x7c>
80003154: 37 05 00 00  	lui	a0, 0
80003158: 33 05 45 00  	add	a0, a0, tp
8000315c: 03 25 05 00  	lw	a0, 0(a0)
80003160: 03 25 05 00  	lw	a0, 0(a0)
80003164: f3 25 40 f1  	csrr	a1, mhartid

80003168 <.LBB1_7>:
;     asm volatile(
80003168: 17 16 00 00  	auipc	a2, 1
8000316c: 13 06 86 88  	addi	a2, a2, -1912
80003170: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80003174: 93 06 06 00  	mv	a3, a2
80003178: 93 02 10 00  	addi	t0, zero, 1
8000317c: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80003180: e3 9e 02 fe  	bnez	t0, 0x8000317c <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80003184: b7 06 00 00  	lui	a3, 0
80003188: b3 86 46 00  	add	a3, a3, tp
8000318c: 83 a6 86 00  	lw	a3, 8(a3)
80003190: 33 85 a5 40  	sub	a0, a1, a0
80003194: 93 55 35 00  	srli	a1, a0, 3
80003198: 93 f5 c5 ff  	andi	a1, a1, -4
8000319c: b3 85 b6 00  	add	a1, a3, a1
800031a0: 83 a6 05 00  	lw	a3, 0(a1)
800031a4: 13 07 10 00  	addi	a4, zero, 1
800031a8: 33 15 a7 00  	sll	a0, a4, a0
800031ac: 13 45 f5 ff  	not	a0, a0
800031b0: 33 f5 a6 00  	and	a0, a3, a0
800031b4: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800031b8: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800031bc: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800031c0: 37 05 00 00  	lui	a0, 0
800031c4: 33 05 45 00  	add	a0, a0, tp
800031c8: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800031cc: b7 05 00 00  	lui	a1, 0
800031d0: b3 85 45 00  	add	a1, a1, tp
800031d4: 83 a5 c5 00  	lw	a1, 12(a1)
800031d8: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800031dc: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800031e0: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800031e4: 67 80 00 00  	ret

Disassembly of section .init:

800031f0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800031f0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800031f4: 93 81 81 f1  	addi	gp, gp, -232

800031f8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800031f8: 97 00 00 00  	auipc	ra, 0
800031fc: e7 80 40 3c  	jalr	964(ra)

80003200 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80003200: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80003204: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80003208: 97 00 00 00  	auipc	ra, 0
8000320c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80003210: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80003214: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80003218: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000321c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80003220: 63 92 02 02  	bnez	t0, 0x80003244 <snrt.crt0.init_registers>

80003224 <.Lpcrel_hi0>:
;     la        t0, _edata
80003224: 97 02 00 00  	auipc	t0, 0
80003228: 93 82 c2 7c  	addi	t0, t0, 1996

8000322c <.Lpcrel_hi1>:
;     la        t1, _end
8000322c: 17 03 00 00  	auipc	t1, 0
80003230: 13 03 83 7c  	addi	t1, t1, 1992
;     bge       t0, t1, 2f
80003234: 63 d8 62 00  	bge	t0, t1, 0x80003244 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80003238: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000323c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80003240: e3 cc 62 fe  	blt	t0, t1, 0x80003238 <.Lpcrel_hi1+0xc>

80003244 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80003244: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80003248: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000324c: 63 82 02 08  	beqz	t0, 0x800032d0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80003250: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80003254: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80003258: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000325c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80003260: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80003264: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80003268: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000326c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80003270: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80003274: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80003278: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000327c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80003280: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80003284: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80003288: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000328c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80003290: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80003294: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80003298: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000329c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800032a0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800032a4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800032a8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800032ac: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800032b0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800032b4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800032b8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800032bc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800032c0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800032c4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800032c8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800032cc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800032d0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800032d0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800032d4: 23 a0 06 00  	sw	zero, 0(a3)

800032d8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800032d8: 97 02 00 00  	auipc	t0, 0
800032dc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
800032e0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800032e4: 93 87 06 00  	mv	a5, a3

800032e8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800032e8: 97 03 00 00  	auipc	t2, 0
800032ec: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
800032f0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
800032f4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
800032f8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
800032fc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003300: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003304: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003308: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000330c: b3 86 66 40  	sub	a3, a3, t1

80003310 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003310: 97 02 00 00  	auipc	t0, 0
80003314: 93 82 82 5f  	addi	t0, t0, 1528

80003318 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003318: 17 03 00 00  	auipc	t1, 0
8000331c: 13 03 03 5f  	addi	t1, t1, 1520

80003320 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80003320: 97 03 00 00  	auipc	t2, 0
80003324: 93 83 83 5e  	addi	t2, t2, 1512

80003328 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80003328: 17 0e 00 00  	auipc	t3, 0
8000332c: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003330: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003334: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003338: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000333c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003340: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003344: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003348: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000334c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003350: 63 dc 62 00  	bge	t0, t1, 0x80003368 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003354: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003358: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000335c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003360: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80003364: e3 c8 62 fe  	blt	t0, t1, 0x80003354 <.Lpcrel_hi7+0x2c>

80003368 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80003368: 97 02 00 00  	auipc	t0, 0
8000336c: 93 82 02 5a  	addi	t0, t0, 1440

80003370 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80003370: 17 03 00 00  	auipc	t1, 0
80003374: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80003378: 63 da 62 00  	bge	t0, t1, 0x8000338c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000337c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80003380: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003384: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80003388: e3 ca 72 fe  	blt	t0, t2, 0x8000337c <.Lpcrel_hi9+0xc>

8000338c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000338c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80003390: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80003394: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80003398: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000339c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800033a0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800033a4: 97 00 00 00  	auipc	ra, 0
800033a8: e7 80 c0 bd  	jalr	-1060(ra)
;     lw        a0, 0(sp)
800033ac: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800033b0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800033b4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800033b8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800033bc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800033c0: 13 01 41 01  	addi	sp, sp, 20

800033c4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800033c4: 97 02 00 00  	auipc	t0, 0
800033c8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800033cc: 73 90 52 30  	csrw	mtvec, t0

800033d0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800033d0: 97 00 00 00  	auipc	ra, 0
800033d4: e7 80 00 22  	jalr	544(ra)

800033d8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800033d8: 97 d0 ff ff  	auipc	ra, 1048573
800033dc: e7 80 c0 25  	jalr	604(ra)
;     mv        s0, a0 # store return value in s0
800033e0: 13 04 05 00  	mv	s0, a0

800033e4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800033e4: 97 00 00 00  	auipc	ra, 0
800033e8: e7 80 c0 20  	jalr	524(ra)

800033ec <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800033ec: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
800033f0: 97 00 00 00  	auipc	ra, 0
800033f4: e7 80 c0 22  	jalr	556(ra)
;     wfi
800033f8: 73 00 50 10  	wfi	
;     j       1b
800033fc: 6f f0 df ff  	j	0x800033f8 <snrt.crt0.end+0xc>

80003400 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003400: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003404: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003408: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000340c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003410: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003414: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003418: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000341c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80003420: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80003424: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80003428: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000342c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003430: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003434: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003438: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000343c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003440: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003444: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003448: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000344c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003450: 63 84 02 08  	beqz	t0, 0x800034d8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003454: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003458: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000345c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003460: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003464: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003468: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000346c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003470: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003474: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003478: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000347c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80003480: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80003484: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80003488: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000348c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80003490: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80003494: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80003498: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000349c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800034a0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800034a4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800034a8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800034ac: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800034b0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800034b4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800034b8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800034bc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800034c0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800034c4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800034c8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800034cc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800034d0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800034d4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800034d8: 97 00 00 00  	auipc	ra, 0
800034dc: e7 80 80 c4  	jalr	-952(ra)
;     csrr    t0, misa
800034e0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800034e4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800034e8: 63 84 02 08  	beqz	t0, 0x80003570 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
800034ec: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
800034f0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
800034f4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
800034f8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
800034fc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003500: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003504: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003508: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000350c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003510: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003514: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003518: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000351c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003520: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003524: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003528: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000352c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003530: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003534: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003538: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000353c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003540: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003544: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003548: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000354c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003550: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003554: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003558: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000355c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003560: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003564: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003568: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000356c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003570: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003574: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003578: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000357c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003580: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003584: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003588: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000358c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003590: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003594: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003598: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000359c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800035a0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800035a4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800035a8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800035ac: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800035b0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800035b4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800035b8: 73 00 20 30  	mret	

800035bc <_snrt_init_core_info>:
;     mv        a4, a1
800035bc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800035c0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800035c4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800035c8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800035cc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800035d0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800035d4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800035d8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800035dc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
800035e0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
800035e4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
800035e8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
800035ec: 67 80 00 00  	ret

800035f0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
800035f0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
800035f4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
800035f8: 97 00 00 00  	auipc	ra, 0
800035fc: e7 80 00 b1  	jalr	-1264(ra)
;     lw        a0, 0(a0)
80003600: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003604: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003608: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000360c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003610: 67 80 00 00  	ret

80003614 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003614: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003618: 67 80 00 00  	ret

8000361c <_snrt_exit>:
;     addi      sp, sp, -8
8000361c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003620: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003624: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003628: 97 00 00 00  	auipc	ra, 0
8000362c: e7 80 00 ac  	jalr	-1344(ra)
;     lw        t0, 0(sp)
80003630: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003634: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003638: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000363c: 63 1c 05 00  	bnez	a0, 0x80003654 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003640: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003644: 93 e2 12 00  	ori	t0, t0, 1

80003648 <.Lpcrel_hi11>:
;     la        t1, tohost
80003648: 17 03 00 00  	auipc	t1, 0
8000364c: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80003650: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003654: 67 80 00 00  	ret
