
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET-IS_RESTRICTED-2mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00004cf4 80000000 TEXT
  2 .init             00000468 80004d00 TEXT
  3 .rodata           00000238 80005168 DATA
  4 .htif             00000048 800053c0 DATA
  5 .tdata            00000000 80005408 DATA
  6 .tbss             00000010 80005408 BSS
  7 .tbssend          00000000 80005418 DATA
  8 .sdata            000000e8 80005418 DATA
  9 .data             00000000 80005500 DATA
 10 .sbss             00000004 80005500 BSS
 11 .bss              00000000 80005504 BSS
 12 .dram             00000000 80005504 DATA
 13 .debug_info       00003701 00000000 
 14 .debug_abbrev     00000c09 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003540 00000000 
 17 .debug_loc        00003f86 00000000 
 18 .debug_ranges     000003d0 00000000 
 19 .debug_str        00000b05 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c8 00000000 
 23 .symtab           000033a0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000095e 00000000 


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
80000634: 13 01 01 ed  	addi	sp, sp, -304
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 12  	sw	ra, 300(sp)
8000063c: 23 24 81 12  	sw	s0, 296(sp)
80000640: 23 22 91 12  	sw	s1, 292(sp)
80000644: 23 20 21 13  	sw	s2, 288(sp)
80000648: 23 2e 31 11  	sw	s3, 284(sp)
8000064c: 23 2c 41 11  	sw	s4, 280(sp)
80000650: 23 2a 51 11  	sw	s5, 276(sp)
80000654: 23 28 61 11  	sw	s6, 272(sp)
80000658: 23 26 71 11  	sw	s7, 268(sp)
8000065c: 23 24 81 11  	sw	s8, 264(sp)
80000660: 23 22 91 11  	sw	s9, 260(sp)
80000664: 23 20 a1 11  	sw	s10, 256(sp)
80000668: 23 2e b1 0f  	sw	s11, 252(sp)
8000066c: 27 38 81 0e  	fsd	fs0, 240(sp)
80000670: 27 34 91 0e  	fsd	fs1, 232(sp)
80000674: 27 30 21 0f  	fsd	fs2, 224(sp)
80000678: 27 3c 31 0d  	fsd	fs3, 216(sp)
8000067c: 27 38 41 0d  	fsd	fs4, 208(sp)
80000680: 27 34 51 0d  	fsd	fs5, 200(sp)
80000684: 27 30 61 0d  	fsd	fs6, 192(sp)
80000688: 27 3c 71 0b  	fsd	fs7, 184(sp)
8000068c: 27 38 81 0b  	fsd	fs8, 176(sp)
80000690: 27 34 91 0b  	fsd	fs9, 168(sp)
80000694: 27 30 a1 0b  	fsd	fs10, 160(sp)
80000698: 37 05 00 00  	lui	a0, 0
8000069c: 33 05 45 00  	add	a0, a0, tp
800006a0: 83 25 45 00  	lw	a1, 4(a0)
800006a4: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
800006a8: 63 84 05 00  	beqz	a1, 0x800006b0 <main+0x7c>
800006ac: 6f 20 40 72  	j	0x80002dd0 <.LBB0_85+0x10>
;     return _snrt_team_current->root;
800006b0: 37 05 00 00  	lui	a0, 0
800006b4: 33 05 45 00  	add	a0, a0, tp
800006b8: 03 25 05 00  	lw	a0, 0(a0)
800006bc: 03 25 05 00  	lw	a0, 0(a0)
800006c0: b7 15 00 00  	lui	a1, 1
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c4: 83 27 85 05  	lw	a5, 88(a0)
800006c8: 83 26 05 05  	lw	a3, 80(a0)
800006cc: 03 27 45 05  	lw	a4, 84(a0)
800006d0: 13 8d 85 8f  	addi	s10, a1, -1800
800006d4: b3 85 a7 01  	add	a1, a5, s10
800006d8: 13 86 85 00  	addi	a2, a1, 8
800006dc: b3 05 d7 00  	add	a1, a4, a3
800006e0: 63 f6 c5 00  	bgeu	a1, a2, 0x800006ec <main+0xb8>
800006e4: 93 06 00 00  	mv	a3, zero
800006e8: 6f 00 00 01  	j	0x800006f8 <main+0xc4>
;     void *ret = (void *)alloc->next;
800006ec: 93 86 07 00  	mv	a3, a5
;     alloc->next += size;
800006f0: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f4: 93 07 06 00  	mv	a5, a2
800006f8: 33 06 fd 00  	add	a2, s10, a5
800006fc: 13 06 86 20  	addi	a2, a2, 520
80000700: 63 f6 c5 00  	bgeu	a1, a2, 0x8000070c <main+0xd8>
80000704: 13 04 00 00  	mv	s0, zero
80000708: 6f 00 00 01  	j	0x80000718 <main+0xe4>
;     void *ret = (void *)alloc->next;
8000070c: 13 84 07 00  	mv	s0, a5
;     alloc->next += size;
80000710: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000714: 93 07 06 00  	mv	a5, a2
80000718: 33 06 fd 00  	add	a2, s10, a5
8000071c: 13 06 86 36  	addi	a2, a2, 872
80000720: 63 f6 c5 00  	bgeu	a1, a2, 0x8000072c <main+0xf8>
80000724: 93 0d 00 00  	mv	s11, zero
80000728: 6f 00 00 01  	j	0x80000738 <main+0x104>
;     void *ret = (void *)alloc->next;
8000072c: 93 8d 07 00  	mv	s11, a5
;     alloc->next += size;
80000730: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000734: 93 07 06 00  	mv	a5, a2
80000738: 33 06 fd 00  	add	a2, s10, a5
8000073c: 13 06 86 48  	addi	a2, a2, 1160
80000740: 63 f6 c5 00  	bgeu	a1, a2, 0x8000074c <main+0x118>
80000744: 93 00 00 00  	mv	ra, zero
80000748: 6f 00 00 01  	j	0x80000758 <main+0x124>
;     void *ret = (void *)alloc->next;
8000074c: 93 80 07 00  	mv	ra, a5
;     alloc->next += size;
80000750: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000754: 93 07 06 00  	mv	a5, a2
80000758: 33 06 fd 00  	add	a2, s10, a5
8000075c: 13 06 86 30  	addi	a2, a2, 776
80000760: 63 f6 c5 00  	bgeu	a1, a2, 0x8000076c <main+0x138>
80000764: 93 07 00 00  	mv	a5, zero
80000768: 6f 00 80 00  	j	0x80000770 <main+0x13c>
;     alloc->next += size;
8000076c: 23 2c c5 04  	sw	a2, 88(a0)
80000770: 23 20 d1 02  	sw	a3, 32(sp)
80000774: 23 24 f1 02  	sw	a5, 40(sp)
;   for (i = 0; i < ni; i++)
80000778: 33 05 8d 00  	add	a0, s10, s0
8000077c: 13 05 05 20  	addi	a0, a0, 512
80000780: 93 55 44 01  	srli	a1, s0, 20
80000784: b3 35 b0 00  	snez	a1, a1
80000788: 37 06 12 00  	lui	a2, 288
8000078c: 13 06 16 00  	addi	a2, a2, 1
80000790: 33 35 c5 00  	sltu	a0, a0, a2
80000794: b3 f5 a5 00  	and	a1, a1, a0

80000798 <.LBB0_74>:
80000798: 17 55 00 00  	auipc	a0, 5
8000079c: 13 05 05 c8  	addi	a0, a0, -896
800007a0: 23 28 b1 00  	sw	a1, 16(sp)
800007a4: 23 2c 81 00  	sw	s0, 24(sp)
800007a8: 13 08 00 00  	mv	a6, zero
800007ac: 93 08 00 00  	mv	a7, zero
800007b0: 63 8c 05 24  	beqz	a1, 0x80000a08 <.LBB0_74+0x270>
800007b4: 13 03 00 00  	mv	t1, zero
800007b8: 93 03 00 00  	mv	t2, zero
800007bc: 13 0e 00 00  	mv	t3, zero
800007c0: 93 0e 00 00  	mv	t4, zero
800007c4: 13 0f 00 00  	mv	t5, zero
800007c8: 93 0f 00 00  	mv	t6, zero
800007cc: 13 09 00 00  	mv	s2, zero
800007d0: 93 05 80 00  	addi	a1, zero, 8
800007d4: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++)
800007d8: 93 06 00 04  	addi	a3, zero, 64
800007dc: 13 07 00 0c  	addi	a4, zero, 192
800007e0: ab 20 d6 00  	scfgw	a2, a3
800007e4: ab a0 e5 00  	scfgw	a1, a4
800007e8: 13 06 f0 00  	addi	a2, zero, 15
800007ec: 93 06 00 06  	addi	a3, zero, 96
800007f0: 13 07 00 0e  	addi	a4, zero, 224
800007f4: ab 20 d6 00  	scfgw	a2, a3
800007f8: ab a0 e5 00  	scfgw	a1, a4
800007fc: 93 05 00 02  	addi	a1, zero, 32
80000800: ab 20 b0 00  	scfgw	zero, a1
80000804: 2b 20 04 3a  	scfgwi	s0, 928
80000808: f3 e5 00 7c  	csrrsi	a1, 1984, 1
8000080c: 93 09 10 00  	addi	s3, zero, 1
80000810: 87 31 05 00  	fld	ft3, 0(a0)
80000814: 93 02 10 15  	addi	t0, zero, 337
80000818: 13 0a 10 00  	addi	s4, zero, 1
8000081c: 93 0a 10 00  	addi	s5, zero, 1
80000820: 13 0b 10 00  	addi	s6, zero, 1
80000824: 93 07 10 00  	addi	a5, zero, 1
80000828: 93 04 10 00  	addi	s1, zero, 1
8000082c: 13 04 10 00  	addi	s0, zero, 1
80000830: 13 05 10 00  	addi	a0, zero, 1
80000834: 93 05 10 00  	addi	a1, zero, 1
80000838: 13 06 10 00  	addi	a2, zero, 1
8000083c: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000840: 53 80 31 22  	fmv.d	ft0, ft3
80000844: 13 f7 f9 00  	andi	a4, s3, 15
80000848: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000084c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000850: 53 00 42 22  	fmv.d	ft0, ft4
80000854: 13 77 e8 00  	andi	a4, a6, 14
80000858: 13 67 17 00  	ori	a4, a4, 1
8000085c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000860: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000864: 53 00 42 22  	fmv.d	ft0, ft4
80000868: 13 77 fa 00  	andi	a4, s4, 15
8000086c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000870: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000874: 53 00 42 22  	fmv.d	ft0, ft4
80000878: 13 f7 c8 00  	andi	a4, a7, 12
8000087c: 13 67 17 00  	ori	a4, a4, 1
80000880: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000884: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000888: 53 00 42 22  	fmv.d	ft0, ft4
8000088c: 13 f7 fa 00  	andi	a4, s5, 15
80000890: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000894: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000898: 53 00 42 22  	fmv.d	ft0, ft4
8000089c: 13 77 e3 00  	andi	a4, t1, 14
800008a0: 13 67 17 00  	ori	a4, a4, 1
800008a4: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008a8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008ac: 53 00 42 22  	fmv.d	ft0, ft4
800008b0: 13 77 fb 00  	andi	a4, s6, 15
800008b4: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008b8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008bc: 53 00 42 22  	fmv.d	ft0, ft4
800008c0: 13 f7 83 00  	andi	a4, t2, 8
800008c4: 13 67 17 00  	ori	a4, a4, 1
800008c8: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008cc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008d0: 53 00 42 22  	fmv.d	ft0, ft4
800008d4: 13 f7 f7 00  	andi	a4, a5, 15
800008d8: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008dc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008e0: 53 00 42 22  	fmv.d	ft0, ft4
800008e4: 13 77 ee 00  	andi	a4, t3, 14
800008e8: 13 67 17 00  	ori	a4, a4, 1
800008ec: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008f0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008f4: 53 00 42 22  	fmv.d	ft0, ft4
800008f8: 13 f7 f4 00  	andi	a4, s1, 15
800008fc: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000900: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000904: 53 00 42 22  	fmv.d	ft0, ft4
80000908: 13 f7 ce 00  	andi	a4, t4, 12
8000090c: 13 67 17 00  	ori	a4, a4, 1
80000910: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000914: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000918: 53 00 42 22  	fmv.d	ft0, ft4
8000091c: 13 77 f4 00  	andi	a4, s0, 15
80000920: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000924: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000928: 53 00 42 22  	fmv.d	ft0, ft4
8000092c: 13 77 ef 00  	andi	a4, t5, 14
80000930: 13 67 17 00  	ori	a4, a4, 1
80000934: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000938: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000093c: 53 00 42 22  	fmv.d	ft0, ft4
80000940: 13 77 f5 00  	andi	a4, a0, 15
80000944: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000948: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000094c: 53 00 42 22  	fmv.d	ft0, ft4
80000950: 53 80 31 22  	fmv.d	ft0, ft3
80000954: 13 f7 f5 00  	andi	a4, a1, 15
80000958: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000095c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000960: 53 00 42 22  	fmv.d	ft0, ft4
80000964: 13 f7 ef 00  	andi	a4, t6, 14
80000968: 13 67 17 00  	ori	a4, a4, 1
8000096c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000970: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000974: 53 00 42 22  	fmv.d	ft0, ft4
80000978: 13 77 f6 00  	andi	a4, a2, 15
8000097c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000980: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000984: 53 00 42 22  	fmv.d	ft0, ft4
80000988: 13 77 c9 00  	andi	a4, s2, 12
8000098c: 13 67 17 00  	ori	a4, a4, 1
80000990: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000994: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000998: 53 00 42 22  	fmv.d	ft0, ft4
8000099c: 13 f7 f6 00  	andi	a4, a3, 15
800009a0: 53 02 07 d2  	fcvt.d.w	ft4, a4
800009a4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009a8: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
800009ac: 93 86 56 01  	addi	a3, a3, 21
800009b0: 13 09 49 01  	addi	s2, s2, 20
800009b4: 13 06 36 01  	addi	a2, a2, 19
800009b8: 93 8f 2f 01  	addi	t6, t6, 18
800009bc: 93 85 15 01  	addi	a1, a1, 17
800009c0: 13 05 f5 00  	addi	a0, a0, 15
800009c4: 13 0f ef 00  	addi	t5, t5, 14
800009c8: 13 04 d4 00  	addi	s0, s0, 13
800009cc: 93 8e ce 00  	addi	t4, t4, 12
800009d0: 93 84 b4 00  	addi	s1, s1, 11
800009d4: 13 0e ae 00  	addi	t3, t3, 10
800009d8: 93 87 97 00  	addi	a5, a5, 9
800009dc: 93 83 83 00  	addi	t2, t2, 8
800009e0: 13 0b 7b 00  	addi	s6, s6, 7
800009e4: 13 03 63 00  	addi	t1, t1, 6
800009e8: 93 8a 5a 00  	addi	s5, s5, 5
800009ec: 93 88 48 00  	addi	a7, a7, 4
800009f0: 13 0a 3a 00  	addi	s4, s4, 3
800009f4: 13 08 28 00  	addi	a6, a6, 2
800009f8: 93 89 19 00  	addi	s3, s3, 1
800009fc: e3 92 56 e4  	bne	a3, t0, 0x80000840 <.LBB0_74+0xa8>
80000a00: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000a04: 6f 00 80 22  	j	0x80000c2c <.LBB0_74+0x494>
80000a08: 93 02 00 00  	mv	t0, zero
80000a0c: 13 0e 00 00  	mv	t3, zero
80000a10: 93 0e 00 00  	mv	t4, zero
80000a14: 13 0f 00 00  	mv	t5, zero
80000a18: 93 0f 00 00  	mv	t6, zero
80000a1c: 13 09 00 00  	mv	s2, zero
80000a20: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a24: 93 05 84 05  	addi	a1, s0, 88
80000a28: 13 0a 10 00  	addi	s4, zero, 1
80000a2c: 37 03 b0 3f  	lui	t1, 260864
80000a30: 87 31 05 00  	fld	ft3, 0(a0)
80000a34: 93 03 10 15  	addi	t2, zero, 337
80000a38: 93 0a 10 00  	addi	s5, zero, 1
80000a3c: 13 0b 10 00  	addi	s6, zero, 1
80000a40: 93 0b 10 00  	addi	s7, zero, 1
80000a44: 13 0c 10 00  	addi	s8, zero, 1
80000a48: 13 04 10 00  	addi	s0, zero, 1
80000a4c: 13 05 10 00  	addi	a0, zero, 1
80000a50: 13 06 10 00  	addi	a2, zero, 1
80000a54: 93 06 10 00  	addi	a3, zero, 1
80000a58: 13 07 10 00  	addi	a4, zero, 1
80000a5c: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000a60: 23 a6 65 fa  	sw	t1, -84(a1)
80000a64: 23 a4 05 fa  	sw	zero, -88(a1)
80000a68: 93 f4 f7 00  	andi	s1, a5, 15
80000a6c: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a70: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a74: 27 b8 45 fa  	fsd	ft4, -80(a1)
80000a78: 93 74 e9 00  	andi	s1, s2, 14
80000a7c: 93 e4 14 00  	ori	s1, s1, 1
80000a80: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a84: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a88: 27 bc 45 fa  	fsd	ft4, -72(a1)
80000a8c: 93 74 f6 00  	andi	s1, a2, 15
80000a90: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a94: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a98: 27 b0 45 fc  	fsd	ft4, -64(a1)
80000a9c: 93 74 cf 00  	andi	s1, t5, 12
80000aa0: 93 e4 14 00  	ori	s1, s1, 1
80000aa4: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000aa8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000aac: 27 b4 45 fc  	fsd	ft4, -56(a1)
80000ab0: 93 74 f4 00  	andi	s1, s0, 15
80000ab4: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ab8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000abc: 27 b8 45 fc  	fsd	ft4, -48(a1)
80000ac0: 93 f4 ee 00  	andi	s1, t4, 14
80000ac4: 93 e4 14 00  	ori	s1, s1, 1
80000ac8: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000acc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ad0: 27 bc 45 fc  	fsd	ft4, -40(a1)
80000ad4: 93 f4 fb 00  	andi	s1, s7, 15
80000ad8: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000adc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ae0: 27 b0 45 fe  	fsd	ft4, -32(a1)
80000ae4: 93 f4 82 00  	andi	s1, t0, 8
80000ae8: 93 e4 14 00  	ori	s1, s1, 1
80000aec: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000af0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000af4: 27 b4 45 fe  	fsd	ft4, -24(a1)
80000af8: 93 f4 fa 00  	andi	s1, s5, 15
80000afc: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b00: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b04: 27 b8 45 fe  	fsd	ft4, -16(a1)
80000b08: 93 74 e8 00  	andi	s1, a6, 14
80000b0c: 93 e4 14 00  	ori	s1, s1, 1
80000b10: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b14: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b18: 27 bc 45 fe  	fsd	ft4, -8(a1)
80000b1c: 93 74 fa 00  	andi	s1, s4, 15
80000b20: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b24: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b28: 27 b0 45 00  	fsd	ft4, 0(a1)
80000b2c: 93 f4 c8 00  	andi	s1, a7, 12
80000b30: 93 e4 14 00  	ori	s1, s1, 1
80000b34: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b38: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b3c: 27 b4 45 00  	fsd	ft4, 8(a1)
80000b40: 93 74 fb 00  	andi	s1, s6, 15
80000b44: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b48: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b4c: 27 b8 45 00  	fsd	ft4, 16(a1)
80000b50: 93 74 ee 00  	andi	s1, t3, 14
80000b54: 93 e4 14 00  	ori	s1, s1, 1
80000b58: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b5c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b60: 27 bc 45 00  	fsd	ft4, 24(a1)
80000b64: 93 74 fc 00  	andi	s1, s8, 15
80000b68: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b6c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b70: 27 b0 45 02  	fsd	ft4, 32(a1)
80000b74: 23 a6 65 02  	sw	t1, 44(a1)
80000b78: 23 a4 05 02  	sw	zero, 40(a1)
80000b7c: 93 74 f5 00  	andi	s1, a0, 15
80000b80: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b84: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b88: 27 b8 45 02  	fsd	ft4, 48(a1)
80000b8c: 93 f4 ef 00  	andi	s1, t6, 14
80000b90: 93 e4 14 00  	ori	s1, s1, 1
80000b94: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b98: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b9c: 27 bc 45 02  	fsd	ft4, 56(a1)
80000ba0: 93 f4 f6 00  	andi	s1, a3, 15
80000ba4: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ba8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bac: 27 b0 45 04  	fsd	ft4, 64(a1)
80000bb0: 93 f4 c9 00  	andi	s1, s3, 12
80000bb4: 93 e4 14 00  	ori	s1, s1, 1
80000bb8: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000bbc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bc0: 27 b4 45 04  	fsd	ft4, 72(a1)
80000bc4: 93 74 f7 00  	andi	s1, a4, 15
80000bc8: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000bcc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bd0: 27 b8 45 04  	fsd	ft4, 80(a1)
;   for (i = 0; i < ni; i++)
80000bd4: 93 87 17 00  	addi	a5, a5, 1
80000bd8: 13 07 57 01  	addi	a4, a4, 21
80000bdc: 93 89 49 01  	addi	s3, s3, 20
80000be0: 13 09 29 00  	addi	s2, s2, 2
80000be4: 93 86 36 01  	addi	a3, a3, 19
80000be8: 13 06 36 00  	addi	a2, a2, 3
80000bec: 93 8f 2f 01  	addi	t6, t6, 18
80000bf0: 13 0f 4f 00  	addi	t5, t5, 4
80000bf4: 13 05 15 01  	addi	a0, a0, 17
80000bf8: 13 04 54 00  	addi	s0, s0, 5
80000bfc: 93 8e 6e 00  	addi	t4, t4, 6
80000c00: 13 0c fc 00  	addi	s8, s8, 15
80000c04: 93 8b 7b 00  	addi	s7, s7, 7
80000c08: 13 0e ee 00  	addi	t3, t3, 14
80000c0c: 93 82 82 00  	addi	t0, t0, 8
80000c10: 13 0b db 00  	addi	s6, s6, 13
80000c14: 93 8a 9a 00  	addi	s5, s5, 9
80000c18: 93 88 c8 00  	addi	a7, a7, 12
80000c1c: 93 85 05 0b  	addi	a1, a1, 176
80000c20: 13 0a ba 00  	addi	s4, s4, 11
80000c24: 13 08 a8 00  	addi	a6, a6, 10
80000c28: e3 1c 77 e2  	bne	a4, t2, 0x80000a60 <.LBB0_74+0x2c8>
;   for (i = 0; i < nk; i++)
80000c2c: 33 05 bd 01  	add	a0, s10, s11
80000c30: 13 05 05 36  	addi	a0, a0, 864
80000c34: 93 d5 4d 01  	srli	a1, s11, 20
80000c38: b3 35 b0 00  	snez	a1, a1
80000c3c: 37 06 12 00  	lui	a2, 288
80000c40: 13 06 16 00  	addi	a2, a2, 1
80000c44: 33 35 c5 00  	sltu	a0, a0, a2
80000c48: 33 f5 a5 00  	and	a0, a1, a0

80000c4c <.LBB0_75>:
80000c4c: 97 4a 00 00  	auipc	s5, 4
80000c50: 93 8a 4a 7d  	addi	s5, s5, 2004
80000c54: 23 26 a1 00  	sw	a0, 12(sp)
80000c58: 13 08 00 00  	mv	a6, zero
80000c5c: 93 08 00 00  	mv	a7, zero
80000c60: 93 02 00 00  	mv	t0, zero
80000c64: 13 03 00 00  	mv	t1, zero
80000c68: 93 03 00 00  	mv	t2, zero
80000c6c: 13 0e 00 00  	mv	t3, zero
80000c70: 93 0e 00 00  	mv	t4, zero
80000c74: 13 0f 00 00  	mv	t5, zero
80000c78: 93 0f 00 00  	mv	t6, zero
80000c7c: 13 09 00 00  	mv	s2, zero
80000c80: 63 04 05 2a  	beqz	a0, 0x80000f28 <.LBB0_75+0x2dc>
80000c84: 13 0a 00 00  	mv	s4, zero
80000c88: 13 0b 00 00  	mv	s6, zero
80000c8c: 13 07 00 00  	mv	a4, zero
80000c90: 93 07 00 00  	mv	a5, zero
80000c94: 93 04 00 00  	mv	s1, zero
80000c98: 13 04 00 00  	mv	s0, zero
80000c9c: 13 05 00 00  	mv	a0, zero
80000ca0: 93 05 80 00  	addi	a1, zero, 8
80000ca4: 93 09 10 01  	addi	s3, zero, 17
;   for (i = 0; i < nk; i++)
80000ca8: 13 06 00 04  	addi	a2, zero, 64
80000cac: ab a0 c9 00  	scfgw	s3, a2
80000cb0: 13 06 00 0c  	addi	a2, zero, 192
80000cb4: ab a0 c5 00  	scfgw	a1, a2
80000cb8: 93 09 50 01  	addi	s3, zero, 21
80000cbc: 13 06 00 06  	addi	a2, zero, 96
80000cc0: ab a0 c9 00  	scfgw	s3, a2
80000cc4: 13 06 00 0e  	addi	a2, zero, 224
80000cc8: ab a0 c5 00  	scfgw	a1, a2
80000ccc: 93 05 00 02  	addi	a1, zero, 32
80000cd0: ab 20 b0 00  	scfgw	zero, a1
80000cd4: 2b a0 0d 3a  	scfgwi	s11, 928
80000cd8: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000cdc: b7 95 e3 38  	lui	a1, 233017
80000ce0: 93 85 95 e3  	addi	a1, a1, -455
80000ce4: 93 09 e0 fe  	addi	s3, zero, -18
80000ce8: 87 b1 0a 00  	fld	ft3, 0(s5)
80000cec: 13 06 20 01  	addi	a2, zero, 18
80000cf0: 53 02 00 d2  	fcvt.d.w	ft4, zero
80000cf4: 93 0a 60 17  	addi	s5, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000cf8: b3 36 b5 02  	mulhu	a3, a0, a1
80000cfc: 93 d6 26 00  	srli	a3, a3, 2
80000d00: b3 86 c6 02  	mul	a3, a3, a2
80000d04: b3 06 d5 40  	sub	a3, a0, a3
80000d08: d3 82 06 d2  	fcvt.d.w	ft5, a3
80000d0c: b3 36 b8 02  	mulhu	a3, a6, a1
80000d10: 93 d6 26 00  	srli	a3, a3, 2
80000d14: b3 86 c6 02  	mul	a3, a3, a2
80000d18: b3 06 d8 40  	sub	a3, a6, a3
80000d1c: 53 83 06 d2  	fcvt.d.w	ft6, a3
80000d20: b3 b6 b8 02  	mulhu	a3, a7, a1
80000d24: 93 d6 26 00  	srli	a3, a3, 2
80000d28: b3 86 c6 02  	mul	a3, a3, a2
80000d2c: b3 86 d8 40  	sub	a3, a7, a3
80000d30: d3 83 06 d2  	fcvt.d.w	ft7, a3
80000d34: b3 b6 b2 02  	mulhu	a3, t0, a1
80000d38: 93 d6 26 00  	srli	a3, a3, 2
80000d3c: b3 86 c6 02  	mul	a3, a3, a2
80000d40: b3 86 d2 40  	sub	a3, t0, a3
80000d44: 53 85 06 d2  	fcvt.d.w	fa0, a3
80000d48: b3 36 b3 02  	mulhu	a3, t1, a1
80000d4c: 93 d6 26 00  	srli	a3, a3, 2
80000d50: b3 86 c6 02  	mul	a3, a3, a2
80000d54: b3 06 d3 40  	sub	a3, t1, a3
80000d58: d3 85 06 d2  	fcvt.d.w	fa1, a3
80000d5c: b3 b6 b3 02  	mulhu	a3, t2, a1
80000d60: 93 d6 26 00  	srli	a3, a3, 2
80000d64: b3 86 c6 02  	mul	a3, a3, a2
80000d68: b3 86 d3 40  	sub	a3, t2, a3
80000d6c: 53 86 06 d2  	fcvt.d.w	fa2, a3
80000d70: b3 36 be 02  	mulhu	a3, t3, a1
80000d74: 93 d6 26 00  	srli	a3, a3, 2
80000d78: b3 86 c6 02  	mul	a3, a3, a2
80000d7c: b3 06 de 40  	sub	a3, t3, a3
80000d80: d3 86 06 d2  	fcvt.d.w	fa3, a3
80000d84: b3 b6 be 02  	mulhu	a3, t4, a1
80000d88: 93 d6 26 00  	srli	a3, a3, 2
80000d8c: b3 86 c6 02  	mul	a3, a3, a2
80000d90: b3 86 de 40  	sub	a3, t4, a3
80000d94: 53 87 06 d2  	fcvt.d.w	fa4, a3
80000d98: b3 36 bf 02  	mulhu	a3, t5, a1
80000d9c: 93 d6 26 00  	srli	a3, a3, 2
80000da0: b3 86 c6 02  	mul	a3, a3, a2
80000da4: b3 06 df 40  	sub	a3, t5, a3
80000da8: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000dac: b3 b6 bf 02  	mulhu	a3, t6, a1
80000db0: 93 d6 26 00  	srli	a3, a3, 2
80000db4: b3 86 c6 02  	mul	a3, a3, a2
80000db8: b3 86 df 40  	sub	a3, t6, a3
80000dbc: 53 88 06 d2  	fcvt.d.w	fa6, a3
80000dc0: b3 36 b9 02  	mulhu	a3, s2, a1
80000dc4: 93 d6 26 00  	srli	a3, a3, 2
80000dc8: b3 86 c6 02  	mul	a3, a3, a2
80000dcc: b3 06 d9 40  	sub	a3, s2, a3
80000dd0: d3 88 06 d2  	fcvt.d.w	fa7, a3
80000dd4: b3 36 ba 02  	mulhu	a3, s4, a1
80000dd8: 93 d6 26 00  	srli	a3, a3, 2
80000ddc: b3 86 c6 02  	mul	a3, a3, a2
80000de0: b3 06 da 40  	sub	a3, s4, a3
80000de4: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80000de8: b3 36 bb 02  	mulhu	a3, s6, a1
80000dec: 93 d6 26 00  	srli	a3, a3, 2
80000df0: b3 86 c6 02  	mul	a3, a3, a2
80000df4: b3 06 db 40  	sub	a3, s6, a3
80000df8: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80000dfc: b3 36 b7 02  	mulhu	a3, a4, a1
80000e00: 93 d6 26 00  	srli	a3, a3, 2
80000e04: b3 86 c6 02  	mul	a3, a3, a2
80000e08: b3 06 d7 40  	sub	a3, a4, a3
80000e0c: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80000e10: b3 b6 b7 02  	mulhu	a3, a5, a1
80000e14: 93 d6 26 00  	srli	a3, a3, 2
80000e18: b3 86 c6 02  	mul	a3, a3, a2
80000e1c: b3 86 d7 40  	sub	a3, a5, a3
80000e20: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80000e24: b3 b6 b4 02  	mulhu	a3, s1, a1
80000e28: 93 d6 26 00  	srli	a3, a3, 2
80000e2c: b3 86 c6 02  	mul	a3, a3, a2
80000e30: b3 86 d4 40  	sub	a3, s1, a3
80000e34: 53 84 06 d2  	fcvt.d.w	fs0, a3
80000e38: b3 36 b4 02  	mulhu	a3, s0, a1
80000e3c: 93 d6 26 00  	srli	a3, a3, 2
80000e40: b3 86 36 03  	mul	a3, a3, s3
80000e44: b3 06 d4 00  	add	a3, s0, a3
80000e48: d3 84 06 d2  	fcvt.d.w	fs1, a3
80000e4c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e50: 53 80 52 22  	fmv.d	ft0, ft5
80000e54: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e58: 53 80 52 22  	fmv.d	ft0, ft5
80000e5c: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e60: 53 80 52 22  	fmv.d	ft0, ft5
80000e64: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e68: 53 80 52 22  	fmv.d	ft0, ft5
80000e6c: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e70: 53 80 52 22  	fmv.d	ft0, ft5
80000e74: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e78: 53 80 52 22  	fmv.d	ft0, ft5
80000e7c: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e80: 53 80 52 22  	fmv.d	ft0, ft5
80000e84: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e88: 53 80 52 22  	fmv.d	ft0, ft5
80000e8c: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e90: 53 80 52 22  	fmv.d	ft0, ft5
80000e94: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000e98: 53 80 52 22  	fmv.d	ft0, ft5
80000e9c: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000ea0: 53 80 52 22  	fmv.d	ft0, ft5
80000ea4: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000ea8: 53 80 52 22  	fmv.d	ft0, ft5
80000eac: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000eb0: 53 80 52 22  	fmv.d	ft0, ft5
80000eb4: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000eb8: 53 80 52 22  	fmv.d	ft0, ft5
80000ebc: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000ec0: 53 80 52 22  	fmv.d	ft0, ft5
80000ec4: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000ec8: 53 80 52 22  	fmv.d	ft0, ft5
80000ecc: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000ed0: 53 80 52 22  	fmv.d	ft0, ft5
80000ed4: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000ed8: 13 05 15 00  	addi	a0, a0, 1
80000edc: 13 04 14 01  	addi	s0, s0, 17
80000ee0: 93 84 04 01  	addi	s1, s1, 16
80000ee4: 93 87 f7 00  	addi	a5, a5, 15
80000ee8: 13 07 e7 00  	addi	a4, a4, 14
80000eec: 13 0b db 00  	addi	s6, s6, 13
80000ef0: 13 0a ca 00  	addi	s4, s4, 12
80000ef4: 13 09 b9 00  	addi	s2, s2, 11
80000ef8: 93 8f af 00  	addi	t6, t6, 10
80000efc: 13 0f 9f 00  	addi	t5, t5, 9
80000f00: 93 8e 8e 00  	addi	t4, t4, 8
80000f04: 13 0e 7e 00  	addi	t3, t3, 7
80000f08: 93 83 63 00  	addi	t2, t2, 6
80000f0c: 13 03 53 00  	addi	t1, t1, 5
80000f10: 93 82 42 00  	addi	t0, t0, 4
80000f14: 93 88 38 00  	addi	a7, a7, 3
80000f18: 13 08 28 00  	addi	a6, a6, 2
80000f1c: e3 1e 54 dd  	bne	s0, s5, 0x80000cf8 <.LBB0_75+0xac>
80000f20: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f24: 6f 00 c0 26  	j	0x80001190 <.LBB0_75+0x544>
80000f28: 93 09 00 00  	mv	s3, zero
80000f2c: 13 0a 00 00  	mv	s4, zero
80000f30: 93 0b 00 00  	mv	s7, zero
80000f34: 93 07 00 00  	mv	a5, zero
80000f38: 93 04 00 00  	mv	s1, zero
80000f3c: 13 04 00 00  	mv	s0, zero
80000f40: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nk; i++)
80000f44: 93 85 8d 04  	addi	a1, s11, 72
80000f48: 37 96 e3 38  	lui	a2, 233017
80000f4c: 13 06 96 e3  	addi	a2, a2, -455
80000f50: 87 b1 0a 00  	fld	ft3, 0(s5)
80000f54: 93 06 20 01  	addi	a3, zero, 18
80000f58: 93 0a e0 fe  	addi	s5, zero, -18
80000f5c: 13 0b 60 17  	addi	s6, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000f60: 33 37 c5 02  	mulhu	a4, a0, a2
80000f64: 13 57 27 00  	srli	a4, a4, 2
80000f68: 33 07 d7 02  	mul	a4, a4, a3
80000f6c: 33 07 e5 40  	sub	a4, a0, a4
80000f70: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000f74: 33 b7 c4 02  	mulhu	a4, s1, a2
80000f78: 13 57 27 00  	srli	a4, a4, 2
80000f7c: 33 07 d7 02  	mul	a4, a4, a3
80000f80: 33 87 e4 40  	sub	a4, s1, a4
80000f84: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000f88: 33 b7 c7 02  	mulhu	a4, a5, a2
80000f8c: 13 57 27 00  	srli	a4, a4, 2
80000f90: 33 07 d7 02  	mul	a4, a4, a3
80000f94: 33 87 e7 40  	sub	a4, a5, a4
80000f98: 53 03 07 d2  	fcvt.d.w	ft6, a4
80000f9c: 33 37 ca 02  	mulhu	a4, s4, a2
80000fa0: 13 57 27 00  	srli	a4, a4, 2
80000fa4: 33 07 d7 02  	mul	a4, a4, a3
80000fa8: 33 07 ea 40  	sub	a4, s4, a4
80000fac: d3 03 07 d2  	fcvt.d.w	ft7, a4
80000fb0: 33 37 c9 02  	mulhu	a4, s2, a2
80000fb4: 13 57 27 00  	srli	a4, a4, 2
80000fb8: 33 07 d7 02  	mul	a4, a4, a3
80000fbc: 33 07 e9 40  	sub	a4, s2, a4
80000fc0: 53 05 07 d2  	fcvt.d.w	fa0, a4
80000fc4: 33 37 cf 02  	mulhu	a4, t5, a2
80000fc8: 13 57 27 00  	srli	a4, a4, 2
80000fcc: 33 07 d7 02  	mul	a4, a4, a3
80000fd0: 33 07 ef 40  	sub	a4, t5, a4
80000fd4: d3 05 07 d2  	fcvt.d.w	fa1, a4
80000fd8: 33 37 ce 02  	mulhu	a4, t3, a2
80000fdc: 13 57 27 00  	srli	a4, a4, 2
80000fe0: 33 07 d7 02  	mul	a4, a4, a3
80000fe4: 33 07 ee 40  	sub	a4, t3, a4
80000fe8: 53 06 07 d2  	fcvt.d.w	fa2, a4
80000fec: 33 37 c3 02  	mulhu	a4, t1, a2
80000ff0: 13 57 27 00  	srli	a4, a4, 2
80000ff4: 33 07 d7 02  	mul	a4, a4, a3
80000ff8: 33 07 e3 40  	sub	a4, t1, a4
80000ffc: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001000: 33 37 c8 02  	mulhu	a4, a6, a2
80001004: 13 57 27 00  	srli	a4, a4, 2
80001008: 33 07 d7 02  	mul	a4, a4, a3
8000100c: 33 07 e8 40  	sub	a4, a6, a4
80001010: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001014: 33 b7 c8 02  	mulhu	a4, a7, a2
80001018: 13 57 27 00  	srli	a4, a4, 2
8000101c: 33 07 d7 02  	mul	a4, a4, a3
80001020: 33 87 e8 40  	sub	a4, a7, a4
80001024: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001028: 33 b7 c2 02  	mulhu	a4, t0, a2
8000102c: 13 57 27 00  	srli	a4, a4, 2
80001030: 33 07 d7 02  	mul	a4, a4, a3
80001034: 33 87 e2 40  	sub	a4, t0, a4
80001038: 53 08 07 d2  	fcvt.d.w	fa6, a4
8000103c: 33 b7 c3 02  	mulhu	a4, t2, a2
80001040: 13 57 27 00  	srli	a4, a4, 2
80001044: 33 07 d7 02  	mul	a4, a4, a3
80001048: 33 87 e3 40  	sub	a4, t2, a4
8000104c: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001050: 33 b7 ce 02  	mulhu	a4, t4, a2
80001054: 13 57 27 00  	srli	a4, a4, 2
80001058: 33 07 d7 02  	mul	a4, a4, a3
8000105c: 33 87 ee 40  	sub	a4, t4, a4
80001060: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001064: 33 b7 cf 02  	mulhu	a4, t6, a2
80001068: 13 57 27 00  	srli	a4, a4, 2
8000106c: 33 07 d7 02  	mul	a4, a4, a3
80001070: 33 87 ef 40  	sub	a4, t6, a4
80001074: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001078: 33 b7 c9 02  	mulhu	a4, s3, a2
8000107c: 13 57 27 00  	srli	a4, a4, 2
80001080: 33 07 d7 02  	mul	a4, a4, a3
80001084: 33 87 e9 40  	sub	a4, s3, a4
80001088: 53 0f 07 d2  	fcvt.d.w	ft10, a4
8000108c: 33 b7 cb 02  	mulhu	a4, s7, a2
80001090: 13 57 27 00  	srli	a4, a4, 2
80001094: 33 07 d7 02  	mul	a4, a4, a3
80001098: 33 87 eb 40  	sub	a4, s7, a4
8000109c: d3 0f 07 d2  	fcvt.d.w	ft11, a4
800010a0: 33 37 c4 02  	mulhu	a4, s0, a2
800010a4: 13 57 27 00  	srli	a4, a4, 2
800010a8: 33 07 57 03  	mul	a4, a4, s5
800010ac: 33 07 e4 00  	add	a4, s0, a4
800010b0: 53 04 07 d2  	fcvt.d.w	fs0, a4
800010b4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800010b8: 27 bc 45 fa  	fsd	ft4, -72(a1)
800010bc: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800010c0: 27 b0 45 fc  	fsd	ft4, -64(a1)
800010c4: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800010c8: 27 b4 45 fc  	fsd	ft4, -56(a1)
800010cc: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800010d0: 27 b8 45 fc  	fsd	ft4, -48(a1)
800010d4: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800010d8: 27 bc 45 fc  	fsd	ft4, -40(a1)
800010dc: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800010e0: 27 b0 45 fe  	fsd	ft4, -32(a1)
800010e4: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800010e8: 27 b4 45 fe  	fsd	ft4, -24(a1)
800010ec: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800010f0: 27 b8 45 fe  	fsd	ft4, -16(a1)
800010f4: 53 72 37 12  	fmul.d	ft4, fa4, ft3
800010f8: 27 bc 45 fe  	fsd	ft4, -8(a1)
800010fc: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001100: 27 b0 45 00  	fsd	ft4, 0(a1)
80001104: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001108: 27 b4 45 00  	fsd	ft4, 8(a1)
8000110c: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001110: 27 b8 45 00  	fsd	ft4, 16(a1)
80001114: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001118: 27 bc 45 00  	fsd	ft4, 24(a1)
8000111c: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001120: 27 b0 45 02  	fsd	ft4, 32(a1)
80001124: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001128: 27 b4 45 02  	fsd	ft4, 40(a1)
8000112c: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001130: 27 b8 45 02  	fsd	ft4, 48(a1)
80001134: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001138: 27 bc 45 02  	fsd	ft4, 56(a1)
8000113c: 23 a2 05 04  	sw	zero, 68(a1)
80001140: 23 a0 05 04  	sw	zero, 64(a1)
;   for (i = 0; i < nk; i++)
80001144: 13 05 15 00  	addi	a0, a0, 1
80001148: 13 04 14 01  	addi	s0, s0, 17
8000114c: 93 84 24 00  	addi	s1, s1, 2
80001150: 93 87 37 00  	addi	a5, a5, 3
80001154: 93 8b 0b 01  	addi	s7, s7, 16
80001158: 13 0a 4a 00  	addi	s4, s4, 4
8000115c: 93 89 f9 00  	addi	s3, s3, 15
80001160: 13 09 59 00  	addi	s2, s2, 5
80001164: 93 8f ef 00  	addi	t6, t6, 14
80001168: 13 0f 6f 00  	addi	t5, t5, 6
8000116c: 93 8e de 00  	addi	t4, t4, 13
80001170: 13 0e 7e 00  	addi	t3, t3, 7
80001174: 93 83 c3 00  	addi	t2, t2, 12
80001178: 13 03 83 00  	addi	t1, t1, 8
8000117c: 93 82 b2 00  	addi	t0, t0, 11
80001180: 93 85 05 09  	addi	a1, a1, 144
80001184: 93 88 a8 00  	addi	a7, a7, 10
80001188: 13 08 98 00  	addi	a6, a6, 9
8000118c: e3 1a 64 dd  	bne	s0, s6, 0x80000f60 <.LBB0_75+0x314>
80001190: 23 2a b1 01  	sw	s11, 20(sp)
80001194: 23 22 a1 03  	sw	s10, 36(sp)
;   for (i = 0; i < nj; i++)
80001198: 33 05 1d 00  	add	a0, s10, ra
8000119c: 13 05 05 48  	addi	a0, a0, 1152
800011a0: 93 d5 40 01  	srli	a1, ra, 20
800011a4: 33 36 b0 00  	snez	a2, a1
800011a8: b7 05 12 00  	lui	a1, 288
800011ac: 93 85 15 00  	addi	a1, a1, 1
800011b0: 33 35 b5 00  	sltu	a0, a0, a1
800011b4: 23 22 c1 00  	sw	a2, 4(sp)
800011b8: b3 75 a6 00  	and	a1, a2, a0

800011bc <.LBB0_76>:
800011bc: 97 48 00 00  	auipc	a7, 4
800011c0: 93 88 c8 26  	addi	a7, a7, 620
800011c4: 23 24 b1 00  	sw	a1, 8(sp)
800011c8: 23 2e 11 00  	sw	ra, 28(sp)
800011cc: 63 8c 05 4c  	beqz	a1, 0x800016a4 <.LBB0_76+0x4e8>
800011d0: 93 04 00 00  	mv	s1, zero
800011d4: 13 0d 00 00  	mv	s10, zero
800011d8: 93 06 00 00  	mv	a3, zero
800011dc: 93 07 00 00  	mv	a5, zero
800011e0: 13 06 00 00  	mv	a2, zero
800011e4: 93 05 80 00  	addi	a1, zero, 8
800011e8: 13 08 70 01  	addi	a6, zero, 23
;   for (i = 0; i < nj; i++)
800011ec: 13 05 00 04  	addi	a0, zero, 64
800011f0: 13 07 00 0c  	addi	a4, zero, 192
800011f4: ab 20 a8 00  	scfgw	a6, a0
800011f8: ab a0 e5 00  	scfgw	a1, a4
800011fc: 13 08 10 01  	addi	a6, zero, 17
80001200: 13 05 00 06  	addi	a0, zero, 96
80001204: 13 07 00 0e  	addi	a4, zero, 224
80001208: ab 20 a8 00  	scfgw	a6, a0
8000120c: ab a0 e5 00  	scfgw	a1, a4
80001210: 93 05 00 02  	addi	a1, zero, 32
80001214: ab 20 b0 00  	scfgw	zero, a1
80001218: 2b a0 00 3a  	scfgwi	ra, 928
8000121c: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80001220: 13 07 10 00  	addi	a4, zero, 1
80001224: b7 b5 aa aa  	lui	a1, 699051
80001228: 93 85 b5 aa  	addi	a1, a1, -1365
8000122c: 13 0c 80 01  	addi	s8, zero, 24
80001230: 87 b1 08 00  	fld	ft3, 0(a7)
80001234: 13 0b 10 00  	addi	s6, zero, 1
80001238: 13 04 10 00  	addi	s0, zero, 1
8000123c: 13 05 10 00  	addi	a0, zero, 1
80001240: 23 2a a1 08  	sw	a0, 148(sp)
80001244: 93 08 10 00  	addi	a7, zero, 1
80001248: 13 05 10 00  	addi	a0, zero, 1
8000124c: 23 28 a1 08  	sw	a0, 144(sp)
80001250: 13 05 10 00  	addi	a0, zero, 1
80001254: 23 26 a1 08  	sw	a0, 140(sp)
80001258: 13 05 10 00  	addi	a0, zero, 1
8000125c: 23 24 a1 08  	sw	a0, 136(sp)
80001260: 13 05 10 00  	addi	a0, zero, 1
80001264: 23 22 a1 08  	sw	a0, 132(sp)
80001268: 93 02 10 00  	addi	t0, zero, 1
8000126c: 13 05 10 00  	addi	a0, zero, 1
80001270: 23 20 a1 08  	sw	a0, 128(sp)
80001274: 13 05 10 00  	addi	a0, zero, 1
80001278: 23 2e a1 06  	sw	a0, 124(sp)
8000127c: 13 05 10 00  	addi	a0, zero, 1
80001280: 23 2c a1 06  	sw	a0, 120(sp)
80001284: 13 05 10 00  	addi	a0, zero, 1
80001288: 23 2a a1 06  	sw	a0, 116(sp)
8000128c: 13 05 10 00  	addi	a0, zero, 1
80001290: 23 28 a1 06  	sw	a0, 112(sp)
80001294: 13 05 10 00  	addi	a0, zero, 1
80001298: 23 26 a1 06  	sw	a0, 108(sp)
8000129c: 13 05 10 00  	addi	a0, zero, 1
800012a0: 23 24 a1 06  	sw	a0, 104(sp)
800012a4: 13 05 10 00  	addi	a0, zero, 1
800012a8: 23 22 a1 06  	sw	a0, 100(sp)
800012ac: 13 05 10 00  	addi	a0, zero, 1
800012b0: 23 20 a1 06  	sw	a0, 96(sp)
800012b4: 13 05 10 00  	addi	a0, zero, 1
800012b8: 23 2e a1 04  	sw	a0, 92(sp)
800012bc: 13 05 10 00  	addi	a0, zero, 1
800012c0: 23 2c a1 04  	sw	a0, 88(sp)
800012c4: 13 05 10 00  	addi	a0, zero, 1
800012c8: 23 2a a1 04  	sw	a0, 84(sp)
800012cc: 13 05 10 00  	addi	a0, zero, 1
800012d0: 23 28 a1 04  	sw	a0, 80(sp)
800012d4: 23 20 51 04  	sw	t0, 64(sp)
800012d8: 23 22 11 05  	sw	a7, 68(sp)
800012dc: 23 24 81 04  	sw	s0, 72(sp)
800012e0: 23 26 a1 05  	sw	s10, 76(sp)
800012e4: 13 88 06 00  	mv	a6, a3
800012e8: 93 06 06 00  	mv	a3, a2
800012ec: 13 06 0b 00  	mv	a2, s6
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
800012f0: 33 bb b4 02  	mulhu	s6, s1, a1
800012f4: 13 55 4b 00  	srli	a0, s6, 4
800012f8: 13 0b 06 00  	mv	s6, a2
800012fc: 13 86 06 00  	mv	a2, a3
80001300: 93 06 08 00  	mv	a3, a6
80001304: 03 2d c1 04  	lw	s10, 76(sp)
80001308: 33 05 85 03  	mul	a0, a0, s8
8000130c: 33 05 a7 40  	sub	a0, a4, a0
80001310: 53 02 05 d2  	fcvt.d.w	ft4, a0
80001314: 33 35 bd 02  	mulhu	a0, s10, a1
80001318: 13 55 45 00  	srli	a0, a0, 4
8000131c: 33 05 85 03  	mul	a0, a0, s8
80001320: 33 05 ab 40  	sub	a0, s6, a0
80001324: d3 02 05 d2  	fcvt.d.w	ft5, a0
80001328: 33 35 b4 02  	mulhu	a0, s0, a1
8000132c: 13 55 45 00  	srli	a0, a0, 4
80001330: 33 05 85 03  	mul	a0, a0, s8
80001334: 33 05 a4 40  	sub	a0, s0, a0
80001338: 53 03 05 d2  	fcvt.d.w	ft6, a0
8000133c: 33 35 b8 02  	mulhu	a0, a6, a1
80001340: 13 55 45 00  	srli	a0, a0, 4
80001344: 33 05 85 03  	mul	a0, a0, s8
80001348: 03 24 41 09  	lw	s0, 148(sp)
8000134c: 33 05 a4 40  	sub	a0, s0, a0
80001350: d3 03 05 d2  	fcvt.d.w	ft7, a0
80001354: 33 b5 b8 02  	mulhu	a0, a7, a1
80001358: 13 55 45 00  	srli	a0, a0, 4
8000135c: 33 05 85 03  	mul	a0, a0, s8
80001360: 33 85 a8 40  	sub	a0, a7, a0
80001364: 53 05 05 d2  	fcvt.d.w	fa0, a0
80001368: 33 b5 b7 02  	mulhu	a0, a5, a1
8000136c: 13 55 45 00  	srli	a0, a0, 4
80001370: 33 05 85 03  	mul	a0, a0, s8
80001374: 83 2c 01 09  	lw	s9, 144(sp)
80001378: 33 85 ac 40  	sub	a0, s9, a0
8000137c: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001380: 83 2d c1 08  	lw	s11, 140(sp)
80001384: 33 b5 bd 02  	mulhu	a0, s11, a1
80001388: 13 55 45 00  	srli	a0, a0, 4
8000138c: 33 05 85 03  	mul	a0, a0, s8
80001390: 33 85 ad 40  	sub	a0, s11, a0
80001394: 53 06 05 d2  	fcvt.d.w	fa2, a0
80001398: 83 20 81 08  	lw	ra, 136(sp)
8000139c: 33 b5 b0 02  	mulhu	a0, ra, a1
800013a0: 13 55 45 00  	srli	a0, a0, 4
800013a4: 33 05 85 03  	mul	a0, a0, s8
800013a8: 33 85 a0 40  	sub	a0, ra, a0
800013ac: d3 06 05 d2  	fcvt.d.w	fa3, a0
800013b0: 03 28 41 08  	lw	a6, 132(sp)
800013b4: 33 35 b8 02  	mulhu	a0, a6, a1
800013b8: 13 55 45 00  	srli	a0, a0, 4
800013bc: 33 05 85 03  	mul	a0, a0, s8
800013c0: 33 05 a8 40  	sub	a0, a6, a0
800013c4: 53 07 05 d2  	fcvt.d.w	fa4, a0
800013c8: 33 35 b6 02  	mulhu	a0, a2, a1
800013cc: 13 55 45 00  	srli	a0, a0, 4
800013d0: 33 05 85 03  	mul	a0, a0, s8
800013d4: 33 85 a2 40  	sub	a0, t0, a0
800013d8: d3 07 05 d2  	fcvt.d.w	fa5, a0
800013dc: 83 28 01 08  	lw	a7, 128(sp)
800013e0: 33 b5 b8 02  	mulhu	a0, a7, a1
800013e4: 13 55 45 00  	srli	a0, a0, 4
800013e8: 33 05 85 03  	mul	a0, a0, s8
800013ec: 33 85 a8 40  	sub	a0, a7, a0
800013f0: 53 08 05 d2  	fcvt.d.w	fa6, a0
800013f4: 83 22 c1 07  	lw	t0, 124(sp)
800013f8: 33 b5 b2 02  	mulhu	a0, t0, a1
800013fc: 13 55 45 00  	srli	a0, a0, 4
80001400: 33 05 85 03  	mul	a0, a0, s8
80001404: 33 85 a2 40  	sub	a0, t0, a0
80001408: d3 08 05 d2  	fcvt.d.w	fa7, a0
8000140c: 03 23 81 07  	lw	t1, 120(sp)
80001410: 33 35 b3 02  	mulhu	a0, t1, a1
80001414: 13 55 45 00  	srli	a0, a0, 4
80001418: 33 05 85 03  	mul	a0, a0, s8
8000141c: 33 05 a3 40  	sub	a0, t1, a0
80001420: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80001424: 83 23 41 07  	lw	t2, 116(sp)
80001428: 33 b5 b3 02  	mulhu	a0, t2, a1
8000142c: 13 55 45 00  	srli	a0, a0, 4
80001430: 33 05 85 03  	mul	a0, a0, s8
80001434: 33 85 a3 40  	sub	a0, t2, a0
80001438: d3 0e 05 d2  	fcvt.d.w	ft9, a0
8000143c: 03 29 01 07  	lw	s2, 112(sp)
80001440: 33 35 b9 02  	mulhu	a0, s2, a1
80001444: 13 55 45 00  	srli	a0, a0, 4
80001448: 33 05 85 03  	mul	a0, a0, s8
8000144c: 33 05 a9 40  	sub	a0, s2, a0
80001450: 53 0f 05 d2  	fcvt.d.w	ft10, a0
80001454: 03 2e c1 06  	lw	t3, 108(sp)
80001458: 33 35 be 02  	mulhu	a0, t3, a1
8000145c: 13 55 45 00  	srli	a0, a0, 4
80001460: 33 05 85 03  	mul	a0, a0, s8
80001464: 33 05 ae 40  	sub	a0, t3, a0
80001468: d3 0f 05 d2  	fcvt.d.w	ft11, a0
8000146c: 83 2e 81 06  	lw	t4, 104(sp)
80001470: 33 b5 be 02  	mulhu	a0, t4, a1
80001474: 13 55 45 00  	srli	a0, a0, 4
80001478: 33 05 85 03  	mul	a0, a0, s8
8000147c: 33 85 ae 40  	sub	a0, t4, a0
80001480: 53 04 05 d2  	fcvt.d.w	fs0, a0
80001484: 83 29 41 06  	lw	s3, 100(sp)
80001488: 33 b5 b9 02  	mulhu	a0, s3, a1
8000148c: 13 55 45 00  	srli	a0, a0, 4
80001490: 33 05 85 03  	mul	a0, a0, s8
80001494: 33 85 a9 40  	sub	a0, s3, a0
80001498: d3 04 05 d2  	fcvt.d.w	fs1, a0
8000149c: 03 2f 01 06  	lw	t5, 96(sp)
800014a0: 33 35 bf 02  	mulhu	a0, t5, a1
800014a4: 13 55 45 00  	srli	a0, a0, 4
800014a8: 33 05 85 03  	mul	a0, a0, s8
800014ac: 33 05 af 40  	sub	a0, t5, a0
800014b0: 53 09 05 d2  	fcvt.d.w	fs2, a0
800014b4: 83 2f c1 05  	lw	t6, 92(sp)
800014b8: 33 b5 bf 02  	mulhu	a0, t6, a1
800014bc: 13 55 45 00  	srli	a0, a0, 4
800014c0: 33 05 85 03  	mul	a0, a0, s8
800014c4: 33 85 af 40  	sub	a0, t6, a0
800014c8: d3 09 05 d2  	fcvt.d.w	fs3, a0
800014cc: 03 2a 81 05  	lw	s4, 88(sp)
800014d0: 33 35 ba 02  	mulhu	a0, s4, a1
800014d4: 13 55 45 00  	srli	a0, a0, 4
800014d8: 33 05 85 03  	mul	a0, a0, s8
800014dc: 33 05 aa 40  	sub	a0, s4, a0
800014e0: 53 0a 05 d2  	fcvt.d.w	fs4, a0
800014e4: 83 2a 41 05  	lw	s5, 84(sp)
800014e8: 33 b5 ba 02  	mulhu	a0, s5, a1
800014ec: 13 55 45 00  	srli	a0, a0, 4
800014f0: 33 05 85 03  	mul	a0, a0, s8
800014f4: 33 85 aa 40  	sub	a0, s5, a0
800014f8: d3 0a 05 d2  	fcvt.d.w	fs5, a0
800014fc: 83 2b 01 05  	lw	s7, 80(sp)
80001500: 33 b5 bb 02  	mulhu	a0, s7, a1
80001504: 13 55 45 00  	srli	a0, a0, 4
80001508: 33 05 85 03  	mul	a0, a0, s8
8000150c: 33 85 ab 40  	sub	a0, s7, a0
80001510: 53 0b 05 d2  	fcvt.d.w	fs6, a0
80001514: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001518: 53 00 42 22  	fmv.d	ft0, ft4
8000151c: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001520: 53 00 42 22  	fmv.d	ft0, ft4
80001524: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001528: 53 00 42 22  	fmv.d	ft0, ft4
8000152c: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001530: 53 00 42 22  	fmv.d	ft0, ft4
80001534: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001538: 53 00 42 22  	fmv.d	ft0, ft4
8000153c: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001540: 53 00 42 22  	fmv.d	ft0, ft4
80001544: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001548: 53 00 42 22  	fmv.d	ft0, ft4
8000154c: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001550: 53 00 42 22  	fmv.d	ft0, ft4
80001554: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001558: 53 00 42 22  	fmv.d	ft0, ft4
8000155c: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001560: 53 00 42 22  	fmv.d	ft0, ft4
80001564: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001568: 53 00 42 22  	fmv.d	ft0, ft4
8000156c: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001570: 53 00 42 22  	fmv.d	ft0, ft4
80001574: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001578: 53 00 42 22  	fmv.d	ft0, ft4
8000157c: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001580: 53 00 42 22  	fmv.d	ft0, ft4
80001584: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001588: 53 00 42 22  	fmv.d	ft0, ft4
8000158c: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001590: 53 00 42 22  	fmv.d	ft0, ft4
80001594: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001598: 53 00 42 22  	fmv.d	ft0, ft4
8000159c: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
800015a0: 53 00 42 22  	fmv.d	ft0, ft4
800015a4: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800015a8: 53 00 42 22  	fmv.d	ft0, ft4
800015ac: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
800015b0: 53 00 42 22  	fmv.d	ft0, ft4
800015b4: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
800015b8: 53 00 42 22  	fmv.d	ft0, ft4
800015bc: 53 80 31 22  	fmv.d	ft0, ft3
800015c0: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
800015c4: 53 00 42 22  	fmv.d	ft0, ft4
800015c8: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
800015cc: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nj; i++)
800015d0: 93 8b ab 01  	addi	s7, s7, 26
800015d4: 93 8a 9a 01  	addi	s5, s5, 25
800015d8: 23 2a 51 05  	sw	s5, 84(sp)
800015dc: 13 0a 7a 01  	addi	s4, s4, 23
800015e0: 23 2c 41 05  	sw	s4, 88(sp)
800015e4: 93 8f 6f 01  	addi	t6, t6, 22
800015e8: 23 2e f1 05  	sw	t6, 92(sp)
800015ec: 13 0f 5f 01  	addi	t5, t5, 21
800015f0: 23 20 e1 07  	sw	t5, 96(sp)
800015f4: 93 89 49 01  	addi	s3, s3, 20
800015f8: 23 22 31 07  	sw	s3, 100(sp)
800015fc: 93 8e 3e 01  	addi	t4, t4, 19
80001600: 23 24 d1 07  	sw	t4, 104(sp)
80001604: 13 0e 2e 01  	addi	t3, t3, 18
80001608: 23 26 c1 07  	sw	t3, 108(sp)
8000160c: 13 09 19 01  	addi	s2, s2, 17
80001610: 23 28 21 07  	sw	s2, 112(sp)
80001614: 93 83 03 01  	addi	t2, t2, 16
80001618: 23 2a 71 06  	sw	t2, 116(sp)
8000161c: 13 03 f3 00  	addi	t1, t1, 15
80001620: 23 2c 61 06  	sw	t1, 120(sp)
80001624: 93 82 e2 00  	addi	t0, t0, 14
80001628: 23 2e 51 06  	sw	t0, 124(sp)
8000162c: 83 22 01 04  	lw	t0, 64(sp)
80001630: 93 88 d8 00  	addi	a7, a7, 13
80001634: 23 20 11 09  	sw	a7, 128(sp)
80001638: 83 28 41 04  	lw	a7, 68(sp)
8000163c: 93 82 c2 00  	addi	t0, t0, 12
80001640: 13 06 c6 00  	addi	a2, a2, 12
80001644: 13 08 b8 00  	addi	a6, a6, 11
80001648: 23 22 01 09  	sw	a6, 132(sp)
8000164c: 93 80 a0 00  	addi	ra, ra, 10
80001650: 23 24 11 08  	sw	ra, 136(sp)
80001654: 93 8d 9d 00  	addi	s11, s11, 9
80001658: 23 26 b1 09  	sw	s11, 140(sp)
8000165c: 93 8c 8c 00  	addi	s9, s9, 8
80001660: 23 28 91 09  	sw	s9, 144(sp)
80001664: 93 87 87 00  	addi	a5, a5, 8
80001668: 93 88 78 00  	addi	a7, a7, 7
8000166c: 13 04 64 00  	addi	s0, s0, 6
80001670: 23 2a 81 08  	sw	s0, 148(sp)
80001674: 03 24 81 04  	lw	s0, 72(sp)
80001678: 93 86 66 00  	addi	a3, a3, 6
8000167c: 13 04 54 00  	addi	s0, s0, 5
80001680: 13 0b 4b 00  	addi	s6, s6, 4
80001684: 13 0d 4d 00  	addi	s10, s10, 4
80001688: 13 07 37 00  	addi	a4, a4, 3
8000168c: 93 84 34 00  	addi	s1, s1, 3
80001690: 13 05 50 1d  	addi	a0, zero, 469
80001694: 23 28 71 05  	sw	s7, 80(sp)
80001698: e3 9e ab c2  	bne	s7, a0, 0x800012d4 <.LBB0_76+0x118>
8000169c: 73 f5 00 7c  	csrrci	a0, 1984, 1
800016a0: 6f 00 80 4d  	j	0x80001b78 <.LBB0_76+0x9bc>
800016a4: 23 22 01 08  	sw	zero, 132(sp)
800016a8: 23 20 01 08  	sw	zero, 128(sp)
800016ac: 23 2a 01 08  	sw	zero, 148(sp)
800016b0: 23 28 01 08  	sw	zero, 144(sp)
800016b4: 23 24 01 08  	sw	zero, 136(sp)
;   for (i = 0; i < nj; i++)
800016b8: 93 86 00 06  	addi	a3, ra, 96
800016bc: 13 05 10 00  	addi	a0, zero, 1
800016c0: 23 2c a1 06  	sw	a0, 120(sp)
800016c4: b7 b5 aa aa  	lui	a1, 699051
800016c8: 13 87 b5 aa  	addi	a4, a1, -1365
800016cc: 87 b1 08 00  	fld	ft3, 0(a7)
800016d0: 37 55 a5 3f  	lui	a0, 260693
800016d4: 13 05 55 55  	addi	a0, a0, 1365
800016d8: 23 28 a1 02  	sw	a0, 48(sp)
800016dc: 37 55 55 55  	lui	a0, 349525
800016e0: 13 05 55 55  	addi	a0, a0, 1365
800016e4: 23 26 a1 02  	sw	a0, 44(sp)
800016e8: 13 05 10 00  	addi	a0, zero, 1
800016ec: 23 2a a1 06  	sw	a0, 116(sp)
800016f0: 13 05 10 00  	addi	a0, zero, 1
800016f4: 23 28 a1 06  	sw	a0, 112(sp)
800016f8: 13 05 10 00  	addi	a0, zero, 1
800016fc: 23 26 a1 06  	sw	a0, 108(sp)
80001700: 13 05 10 00  	addi	a0, zero, 1
80001704: 23 24 a1 06  	sw	a0, 104(sp)
80001708: 13 05 10 00  	addi	a0, zero, 1
8000170c: 23 2e a1 06  	sw	a0, 124(sp)
80001710: 13 05 10 00  	addi	a0, zero, 1
80001714: 23 22 a1 06  	sw	a0, 100(sp)
80001718: 13 05 10 00  	addi	a0, zero, 1
8000171c: 23 20 a1 06  	sw	a0, 96(sp)
80001720: 13 05 10 00  	addi	a0, zero, 1
80001724: 23 2e a1 04  	sw	a0, 92(sp)
80001728: 13 05 10 00  	addi	a0, zero, 1
8000172c: 23 2c a1 04  	sw	a0, 88(sp)
80001730: 13 05 10 00  	addi	a0, zero, 1
80001734: 23 2a a1 04  	sw	a0, 84(sp)
80001738: 13 05 10 00  	addi	a0, zero, 1
8000173c: 23 28 a1 04  	sw	a0, 80(sp)
80001740: 13 05 10 00  	addi	a0, zero, 1
80001744: 23 26 a1 04  	sw	a0, 76(sp)
80001748: 13 04 10 00  	addi	s0, zero, 1
8000174c: 13 05 10 00  	addi	a0, zero, 1
80001750: 23 24 a1 04  	sw	a0, 72(sp)
80001754: 13 05 10 00  	addi	a0, zero, 1
80001758: 23 22 a1 04  	sw	a0, 68(sp)
8000175c: 13 05 10 00  	addi	a0, zero, 1
80001760: 23 20 a1 04  	sw	a0, 64(sp)
80001764: 93 04 10 00  	addi	s1, zero, 1
80001768: 13 05 10 00  	addi	a0, zero, 1
8000176c: 23 2e a1 02  	sw	a0, 60(sp)
80001770: 13 05 10 00  	addi	a0, zero, 1
80001774: 23 2c a1 02  	sw	a0, 56(sp)
80001778: 13 05 10 00  	addi	a0, zero, 1
8000177c: 23 26 a1 08  	sw	a0, 140(sp)
80001780: 13 08 10 00  	addi	a6, zero, 1
80001784: 13 05 10 00  	addi	a0, zero, 1
80001788: 23 2a a1 02  	sw	a0, 52(sp)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
8000178c: 03 25 81 08  	lw	a0, 136(sp)
80001790: b3 35 e5 02  	mulhu	a1, a0, a4
80001794: 93 d5 45 00  	srli	a1, a1, 4
80001798: 13 05 80 01  	addi	a0, zero, 24
8000179c: b3 85 a5 02  	mul	a1, a1, a0
800017a0: b3 0c b8 40  	sub	s9, a6, a1
800017a4: 53 82 0c d2  	fcvt.d.w	ft4, s9
800017a8: 83 25 01 09  	lw	a1, 144(sp)
800017ac: b3 b5 e5 02  	mulhu	a1, a1, a4
800017b0: 93 d5 45 00  	srli	a1, a1, 4
800017b4: b3 85 a5 02  	mul	a1, a1, a0
800017b8: 03 26 c1 08  	lw	a2, 140(sp)
800017bc: b3 05 b6 40  	sub	a1, a2, a1
800017c0: d3 82 05 d2  	fcvt.d.w	ft5, a1
800017c4: 83 2a c1 03  	lw	s5, 60(sp)
800017c8: b3 b5 ea 02  	mulhu	a1, s5, a4
800017cc: 93 d5 45 00  	srli	a1, a1, 4
800017d0: b3 85 a5 02  	mul	a1, a1, a0
800017d4: b3 85 ba 40  	sub	a1, s5, a1
800017d8: 53 83 05 d2  	fcvt.d.w	ft6, a1
800017dc: 83 25 41 09  	lw	a1, 148(sp)
800017e0: b3 b5 e5 02  	mulhu	a1, a1, a4
800017e4: 93 d5 45 00  	srli	a1, a1, 4
800017e8: b3 85 a5 02  	mul	a1, a1, a0
800017ec: b3 85 b4 40  	sub	a1, s1, a1
800017f0: d3 83 05 d2  	fcvt.d.w	ft7, a1
800017f4: 83 29 41 04  	lw	s3, 68(sp)
800017f8: b3 b5 e9 02  	mulhu	a1, s3, a4
800017fc: 93 d5 45 00  	srli	a1, a1, 4
80001800: b3 85 a5 02  	mul	a1, a1, a0
80001804: b3 85 b9 40  	sub	a1, s3, a1
80001808: 53 85 05 d2  	fcvt.d.w	fa0, a1
8000180c: 83 2c 01 08  	lw	s9, 128(sp)
80001810: b3 b5 ec 02  	mulhu	a1, s9, a4
80001814: 93 d5 45 00  	srli	a1, a1, 4
80001818: b3 85 a5 02  	mul	a1, a1, a0
8000181c: b3 05 b4 40  	sub	a1, s0, a1
80001820: d3 85 05 d2  	fcvt.d.w	fa1, a1
80001824: 83 2d 01 05  	lw	s11, 80(sp)
80001828: b3 b5 ed 02  	mulhu	a1, s11, a4
8000182c: 93 d5 45 00  	srli	a1, a1, 4
80001830: b3 85 a5 02  	mul	a1, a1, a0
80001834: b3 85 bd 40  	sub	a1, s11, a1
80001838: 53 86 05 d2  	fcvt.d.w	fa2, a1
8000183c: 83 2f 81 05  	lw	t6, 88(sp)
80001840: b3 b5 ef 02  	mulhu	a1, t6, a4
80001844: 93 d5 45 00  	srli	a1, a1, 4
80001848: b3 85 a5 02  	mul	a1, a1, a0
8000184c: b3 85 bf 40  	sub	a1, t6, a1
80001850: d3 86 05 d2  	fcvt.d.w	fa3, a1
80001854: 83 20 01 06  	lw	ra, 96(sp)
80001858: b3 b5 e0 02  	mulhu	a1, ra, a4
8000185c: 93 d5 45 00  	srli	a1, a1, 4
80001860: b3 85 a5 02  	mul	a1, a1, a0
80001864: b3 85 b0 40  	sub	a1, ra, a1
80001868: 53 87 05 d2  	fcvt.d.w	fa4, a1
8000186c: 03 26 41 08  	lw	a2, 132(sp)
80001870: b3 35 e6 02  	mulhu	a1, a2, a4
80001874: 93 d5 45 00  	srli	a1, a1, 4
80001878: b3 85 a5 02  	mul	a1, a1, a0
8000187c: 83 2b c1 07  	lw	s7, 124(sp)
80001880: b3 85 bb 40  	sub	a1, s7, a1
80001884: d3 87 05 d2  	fcvt.d.w	fa5, a1
80001888: 83 23 c1 06  	lw	t2, 108(sp)
8000188c: b3 b5 e3 02  	mulhu	a1, t2, a4
80001890: 93 d5 45 00  	srli	a1, a1, 4
80001894: b3 85 a5 02  	mul	a1, a1, a0
80001898: b3 85 b3 40  	sub	a1, t2, a1
8000189c: 53 88 05 d2  	fcvt.d.w	fa6, a1
800018a0: 83 28 81 07  	lw	a7, 120(sp)
800018a4: b3 b5 e8 02  	mulhu	a1, a7, a4
800018a8: 93 d5 45 00  	srli	a1, a1, 4
800018ac: b3 85 a5 02  	mul	a1, a1, a0
800018b0: b3 85 b8 40  	sub	a1, a7, a1
800018b4: d3 88 05 d2  	fcvt.d.w	fa7, a1
800018b8: 83 22 41 07  	lw	t0, 116(sp)
800018bc: b3 b5 e2 02  	mulhu	a1, t0, a4
800018c0: 93 d5 45 00  	srli	a1, a1, 4
800018c4: b3 85 a5 02  	mul	a1, a1, a0
800018c8: b3 85 b2 40  	sub	a1, t0, a1
800018cc: 53 8e 05 d2  	fcvt.d.w	ft8, a1
800018d0: 03 23 01 07  	lw	t1, 112(sp)
800018d4: b3 35 e3 02  	mulhu	a1, t1, a4
800018d8: 93 d5 45 00  	srli	a1, a1, 4
800018dc: b3 85 a5 02  	mul	a1, a1, a0
800018e0: b3 05 b3 40  	sub	a1, t1, a1
800018e4: d3 8e 05 d2  	fcvt.d.w	ft9, a1
800018e8: 03 29 81 06  	lw	s2, 104(sp)
800018ec: b3 35 e9 02  	mulhu	a1, s2, a4
800018f0: 93 d5 45 00  	srli	a1, a1, 4
800018f4: b3 85 a5 02  	mul	a1, a1, a0
800018f8: b3 05 b9 40  	sub	a1, s2, a1
800018fc: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001900: 03 2e 41 06  	lw	t3, 100(sp)
80001904: b3 35 ee 02  	mulhu	a1, t3, a4
80001908: 93 d5 45 00  	srli	a1, a1, 4
8000190c: b3 85 a5 02  	mul	a1, a1, a0
80001910: b3 05 be 40  	sub	a1, t3, a1
80001914: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001918: 03 2f c1 05  	lw	t5, 92(sp)
8000191c: b3 35 ef 02  	mulhu	a1, t5, a4
80001920: 93 d5 45 00  	srli	a1, a1, 4
80001924: b3 85 a5 02  	mul	a1, a1, a0
80001928: b3 05 bf 40  	sub	a1, t5, a1
8000192c: 53 84 05 d2  	fcvt.d.w	fs0, a1
80001930: 03 2d 41 05  	lw	s10, 84(sp)
80001934: b3 35 ed 02  	mulhu	a1, s10, a4
80001938: 93 d5 45 00  	srli	a1, a1, 4
8000193c: b3 85 a5 02  	mul	a1, a1, a0
80001940: b3 05 bd 40  	sub	a1, s10, a1
80001944: d3 84 05 d2  	fcvt.d.w	fs1, a1
80001948: 83 2e c1 04  	lw	t4, 76(sp)
8000194c: b3 b5 ee 02  	mulhu	a1, t4, a4
80001950: 93 d5 45 00  	srli	a1, a1, 4
80001954: b3 85 a5 02  	mul	a1, a1, a0
80001958: b3 85 be 40  	sub	a1, t4, a1
8000195c: 53 89 05 d2  	fcvt.d.w	fs2, a1
80001960: 03 2b 81 04  	lw	s6, 72(sp)
80001964: b3 35 eb 02  	mulhu	a1, s6, a4
80001968: 93 d5 45 00  	srli	a1, a1, 4
8000196c: b3 85 a5 02  	mul	a1, a1, a0
80001970: b3 05 bb 40  	sub	a1, s6, a1
80001974: d3 89 05 d2  	fcvt.d.w	fs3, a1
80001978: 03 2a 01 04  	lw	s4, 64(sp)
8000197c: b3 35 ea 02  	mulhu	a1, s4, a4
80001980: 93 d5 45 00  	srli	a1, a1, 4
80001984: b3 85 a5 02  	mul	a1, a1, a0
80001988: b3 05 ba 40  	sub	a1, s4, a1
8000198c: 53 8a 05 d2  	fcvt.d.w	fs4, a1
80001990: 03 2c 81 03  	lw	s8, 56(sp)
80001994: b3 35 ec 02  	mulhu	a1, s8, a4
80001998: 93 d5 45 00  	srli	a1, a1, 4
8000199c: b3 85 a5 02  	mul	a1, a1, a0
800019a0: b3 05 bc 40  	sub	a1, s8, a1
800019a4: d3 8a 05 d2  	fcvt.d.w	fs5, a1
800019a8: 83 27 41 03  	lw	a5, 52(sp)
800019ac: b3 b5 e7 02  	mulhu	a1, a5, a4
800019b0: 93 d5 45 00  	srli	a1, a1, 4
800019b4: b3 85 a5 02  	mul	a1, a1, a0
800019b8: b3 85 b7 40  	sub	a1, a5, a1
800019bc: 53 8b 05 d2  	fcvt.d.w	fs6, a1
800019c0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800019c4: 27 b0 46 fa  	fsd	ft4, -96(a3)
800019c8: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800019cc: 27 b4 46 fa  	fsd	ft4, -88(a3)
800019d0: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800019d4: 27 b8 46 fa  	fsd	ft4, -80(a3)
800019d8: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800019dc: 27 bc 46 fa  	fsd	ft4, -72(a3)
800019e0: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800019e4: 27 b0 46 fc  	fsd	ft4, -64(a3)
800019e8: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800019ec: 27 b4 46 fc  	fsd	ft4, -56(a3)
800019f0: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800019f4: 27 b8 46 fc  	fsd	ft4, -48(a3)
800019f8: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800019fc: 27 bc 46 fc  	fsd	ft4, -40(a3)
80001a00: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001a04: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001a08: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001a0c: 27 b4 46 fe  	fsd	ft4, -24(a3)
80001a10: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001a14: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001a18: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001a1c: 27 bc 46 fe  	fsd	ft4, -8(a3)
80001a20: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001a24: 27 b0 46 00  	fsd	ft4, 0(a3)
80001a28: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001a2c: 27 b4 46 00  	fsd	ft4, 8(a3)
80001a30: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001a34: 27 b8 46 00  	fsd	ft4, 16(a3)
80001a38: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001a3c: 27 bc 46 00  	fsd	ft4, 24(a3)
80001a40: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001a44: 27 b0 46 02  	fsd	ft4, 32(a3)
80001a48: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001a4c: 27 b4 46 02  	fsd	ft4, 40(a3)
80001a50: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001a54: 27 b8 46 02  	fsd	ft4, 48(a3)
80001a58: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001a5c: 27 bc 46 02  	fsd	ft4, 56(a3)
80001a60: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001a64: 27 b0 46 04  	fsd	ft4, 64(a3)
80001a68: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80001a6c: 27 b8 46 04  	fsd	ft4, 80(a3)
80001a70: 83 25 01 03  	lw	a1, 48(sp)
80001a74: 23 a6 b6 04  	sw	a1, 76(a3)
80001a78: 83 25 c1 02  	lw	a1, 44(sp)
80001a7c: 23 a4 b6 04  	sw	a1, 72(a3)
80001a80: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80001a84: 27 bc 46 04  	fsd	ft4, 88(a3)
;   for (i = 0; i < nj; i++)
80001a88: 93 87 a7 01  	addi	a5, a5, 26
80001a8c: 13 08 38 00  	addi	a6, a6, 3
80001a90: 03 25 81 08  	lw	a0, 136(sp)
80001a94: 13 05 35 00  	addi	a0, a0, 3
80001a98: 23 24 a1 08  	sw	a0, 136(sp)
80001a9c: 03 25 c1 08  	lw	a0, 140(sp)
80001aa0: 13 05 45 00  	addi	a0, a0, 4
80001aa4: 23 26 a1 08  	sw	a0, 140(sp)
80001aa8: 03 25 01 09  	lw	a0, 144(sp)
80001aac: 13 05 45 00  	addi	a0, a0, 4
80001ab0: 23 28 a1 08  	sw	a0, 144(sp)
80001ab4: 13 0c 9c 01  	addi	s8, s8, 25
80001ab8: 23 2c 81 03  	sw	s8, 56(sp)
80001abc: 93 8a 5a 00  	addi	s5, s5, 5
80001ac0: 23 2e 51 03  	sw	s5, 60(sp)
80001ac4: 93 84 64 00  	addi	s1, s1, 6
80001ac8: 03 25 41 09  	lw	a0, 148(sp)
80001acc: 13 05 65 00  	addi	a0, a0, 6
80001ad0: 23 2a a1 08  	sw	a0, 148(sp)
80001ad4: 13 0a 7a 01  	addi	s4, s4, 23
80001ad8: 23 20 41 05  	sw	s4, 64(sp)
80001adc: 93 89 79 00  	addi	s3, s3, 7
80001ae0: 23 22 31 05  	sw	s3, 68(sp)
80001ae4: 13 0b 6b 01  	addi	s6, s6, 22
80001ae8: 23 24 61 05  	sw	s6, 72(sp)
80001aec: 13 04 84 00  	addi	s0, s0, 8
80001af0: 93 8c 8c 00  	addi	s9, s9, 8
80001af4: 23 20 91 09  	sw	s9, 128(sp)
80001af8: 93 8e 5e 01  	addi	t4, t4, 21
80001afc: 23 26 d1 05  	sw	t4, 76(sp)
80001b00: 93 8d 9d 00  	addi	s11, s11, 9
80001b04: 23 28 b1 05  	sw	s11, 80(sp)
80001b08: 13 0d 4d 01  	addi	s10, s10, 20
80001b0c: 23 2a a1 05  	sw	s10, 84(sp)
80001b10: 93 8f af 00  	addi	t6, t6, 10
80001b14: 23 2c f1 05  	sw	t6, 88(sp)
80001b18: 13 0f 3f 01  	addi	t5, t5, 19
80001b1c: 23 2e e1 05  	sw	t5, 92(sp)
80001b20: 93 80 b0 00  	addi	ra, ra, 11
80001b24: 23 20 11 06  	sw	ra, 96(sp)
80001b28: 13 0e 2e 01  	addi	t3, t3, 18
80001b2c: 23 22 c1 07  	sw	t3, 100(sp)
80001b30: 93 8b cb 00  	addi	s7, s7, 12
80001b34: 23 2e 71 07  	sw	s7, 124(sp)
80001b38: 13 06 c6 00  	addi	a2, a2, 12
80001b3c: 23 22 c1 08  	sw	a2, 132(sp)
80001b40: 13 09 19 01  	addi	s2, s2, 17
80001b44: 23 24 21 07  	sw	s2, 104(sp)
80001b48: 93 83 d3 00  	addi	t2, t2, 13
80001b4c: 23 26 71 06  	sw	t2, 108(sp)
80001b50: 13 03 03 01  	addi	t1, t1, 16
80001b54: 23 28 61 06  	sw	t1, 112(sp)
80001b58: 93 86 06 0c  	addi	a3, a3, 192
80001b5c: 93 82 f2 00  	addi	t0, t0, 15
80001b60: 23 2a 51 06  	sw	t0, 116(sp)
80001b64: 93 88 e8 00  	addi	a7, a7, 14
80001b68: 23 2c 11 07  	sw	a7, 120(sp)
80001b6c: 13 05 50 1d  	addi	a0, zero, 469
80001b70: 23 2a f1 02  	sw	a5, 52(sp)
80001b74: e3 9c a7 c0  	bne	a5, a0, 0x8000178c <.LBB0_76+0x5d0>
80001b78: 83 20 81 02  	lw	ra, 40(sp)
;   for (i = 0; i < ni; i++)
80001b7c: 03 25 41 02  	lw	a0, 36(sp)
80001b80: 33 05 15 00  	add	a0, a0, ra
80001b84: 13 05 05 30  	addi	a0, a0, 768
80001b88: 93 d5 40 01  	srli	a1, ra, 20
80001b8c: b3 35 b0 00  	snez	a1, a1
80001b90: 37 06 12 00  	lui	a2, 288
80001b94: 13 06 16 00  	addi	a2, a2, 1
80001b98: 33 35 c5 00  	sltu	a0, a0, a2
80001b9c: 33 f5 a5 00  	and	a0, a1, a0

80001ba0 <.LBB0_77>:
80001ba0: 17 46 00 00  	auipc	a2, 4
80001ba4: 13 06 06 89  	addi	a2, a2, -1904
80001ba8: 23 2a a1 08  	sw	a0, 148(sp)
80001bac: 63 04 05 3a  	beqz	a0, 0x80001f54 <.LBB0_77+0x3b4>
80001bb0: 13 0a 00 00  	mv	s4, zero
80001bb4: 93 0a 00 00  	mv	s5, zero
80001bb8: 13 0b 00 00  	mv	s6, zero
80001bbc: 93 0b 00 00  	mv	s7, zero
80001bc0: 13 08 00 00  	mv	a6, zero
80001bc4: 93 08 00 00  	mv	a7, zero
80001bc8: 93 02 00 00  	mv	t0, zero
80001bcc: 13 03 00 00  	mv	t1, zero
80001bd0: 93 03 00 00  	mv	t2, zero
80001bd4: 13 0e 00 00  	mv	t3, zero
80001bd8: 93 0e 00 00  	mv	t4, zero
80001bdc: 13 0f 00 00  	mv	t5, zero
80001be0: 93 0f 00 00  	mv	t6, zero
80001be4: 13 09 00 00  	mv	s2, zero
80001be8: 13 0c 00 00  	mv	s8, zero
80001bec: 93 0c 00 00  	mv	s9, zero
80001bf0: 93 0d 00 00  	mv	s11, zero
80001bf4: 93 09 00 00  	mv	s3, zero
80001bf8: 93 07 00 00  	mv	a5, zero
80001bfc: 13 04 00 00  	mv	s0, zero
80001c00: 93 06 00 00  	mv	a3, zero
80001c04: 93 05 00 00  	mv	a1, zero
80001c08: 13 07 00 00  	mv	a4, zero
80001c0c: 13 05 80 00  	addi	a0, zero, 8
80001c10: 13 0d 70 01  	addi	s10, zero, 23
;   for (i = 0; i < ni; i++)
80001c14: 93 04 00 04  	addi	s1, zero, 64
80001c18: ab 20 9d 00  	scfgw	s10, s1
80001c1c: 93 04 00 0c  	addi	s1, zero, 192
80001c20: ab 20 95 00  	scfgw	a0, s1
80001c24: 13 0d f0 00  	addi	s10, zero, 15
80001c28: 93 04 00 06  	addi	s1, zero, 96
80001c2c: ab 20 9d 00  	scfgw	s10, s1
80001c30: 93 04 00 0e  	addi	s1, zero, 224
80001c34: ab 20 95 00  	scfgw	a0, s1
80001c38: 13 05 00 02  	addi	a0, zero, 32
80001c3c: ab 20 a0 00  	scfgw	zero, a0
80001c40: 2b a0 00 3a  	scfgwi	ra, 928
80001c44: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80001c48: 37 95 2e ba  	lui	a0, 762601
80001c4c: 93 04 35 ba  	addi	s1, a0, -1117
80001c50: 13 0d a0 fe  	addi	s10, zero, -22
80001c54: 87 31 06 00  	fld	ft3, 0(a2)
80001c58: 13 05 60 01  	addi	a0, zero, 22
80001c5c: 53 02 00 d2  	fcvt.d.w	ft4, zero
80001c60: 93 00 00 19  	addi	ra, zero, 400
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001c64: 33 36 9a 02  	mulhu	a2, s4, s1
80001c68: 13 56 46 00  	srli	a2, a2, 4
80001c6c: 33 06 a6 02  	mul	a2, a2, a0
80001c70: 33 06 ca 40  	sub	a2, s4, a2
80001c74: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001c78: 33 b6 9a 02  	mulhu	a2, s5, s1
80001c7c: 13 56 46 00  	srli	a2, a2, 4
80001c80: 33 06 a6 02  	mul	a2, a2, a0
80001c84: 33 86 ca 40  	sub	a2, s5, a2
80001c88: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001c8c: 33 36 9b 02  	mulhu	a2, s6, s1
80001c90: 13 56 46 00  	srli	a2, a2, 4
80001c94: 33 06 a6 02  	mul	a2, a2, a0
80001c98: 33 06 cb 40  	sub	a2, s6, a2
80001c9c: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001ca0: 33 b6 9b 02  	mulhu	a2, s7, s1
80001ca4: 13 56 46 00  	srli	a2, a2, 4
80001ca8: 33 06 a6 02  	mul	a2, a2, a0
80001cac: 33 86 cb 40  	sub	a2, s7, a2
80001cb0: 53 05 06 d2  	fcvt.d.w	fa0, a2
80001cb4: 33 36 98 02  	mulhu	a2, a6, s1
80001cb8: 13 56 46 00  	srli	a2, a2, 4
80001cbc: 33 06 a6 02  	mul	a2, a2, a0
80001cc0: 33 06 c8 40  	sub	a2, a6, a2
80001cc4: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001cc8: 33 b6 98 02  	mulhu	a2, a7, s1
80001ccc: 13 56 46 00  	srli	a2, a2, 4
80001cd0: 33 06 a6 02  	mul	a2, a2, a0
80001cd4: 33 86 c8 40  	sub	a2, a7, a2
80001cd8: 53 06 06 d2  	fcvt.d.w	fa2, a2
80001cdc: 33 b6 92 02  	mulhu	a2, t0, s1
80001ce0: 13 56 46 00  	srli	a2, a2, 4
80001ce4: 33 06 a6 02  	mul	a2, a2, a0
80001ce8: 33 86 c2 40  	sub	a2, t0, a2
80001cec: d3 06 06 d2  	fcvt.d.w	fa3, a2
80001cf0: 33 36 93 02  	mulhu	a2, t1, s1
80001cf4: 13 56 46 00  	srli	a2, a2, 4
80001cf8: 33 06 a6 02  	mul	a2, a2, a0
80001cfc: 33 06 c3 40  	sub	a2, t1, a2
80001d00: 53 07 06 d2  	fcvt.d.w	fa4, a2
80001d04: 33 b6 93 02  	mulhu	a2, t2, s1
80001d08: 13 56 46 00  	srli	a2, a2, 4
80001d0c: 33 06 a6 02  	mul	a2, a2, a0
80001d10: 33 86 c3 40  	sub	a2, t2, a2
80001d14: d3 07 06 d2  	fcvt.d.w	fa5, a2
80001d18: 33 36 9e 02  	mulhu	a2, t3, s1
80001d1c: 13 56 46 00  	srli	a2, a2, 4
80001d20: 33 06 a6 02  	mul	a2, a2, a0
80001d24: 33 06 ce 40  	sub	a2, t3, a2
80001d28: 53 08 06 d2  	fcvt.d.w	fa6, a2
80001d2c: 33 b6 9e 02  	mulhu	a2, t4, s1
80001d30: 13 56 46 00  	srli	a2, a2, 4
80001d34: 33 06 a6 02  	mul	a2, a2, a0
80001d38: 33 86 ce 40  	sub	a2, t4, a2
80001d3c: d3 08 06 d2  	fcvt.d.w	fa7, a2
80001d40: 33 36 9f 02  	mulhu	a2, t5, s1
80001d44: 13 56 46 00  	srli	a2, a2, 4
80001d48: 33 06 a6 02  	mul	a2, a2, a0
80001d4c: 33 06 cf 40  	sub	a2, t5, a2
80001d50: 53 0e 06 d2  	fcvt.d.w	ft8, a2
80001d54: 33 b6 9f 02  	mulhu	a2, t6, s1
80001d58: 13 56 46 00  	srli	a2, a2, 4
80001d5c: 33 06 a6 02  	mul	a2, a2, a0
80001d60: 33 86 cf 40  	sub	a2, t6, a2
80001d64: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80001d68: 33 36 99 02  	mulhu	a2, s2, s1
80001d6c: 13 56 46 00  	srli	a2, a2, 4
80001d70: 33 06 a6 02  	mul	a2, a2, a0
80001d74: 33 06 c9 40  	sub	a2, s2, a2
80001d78: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80001d7c: 33 36 9c 02  	mulhu	a2, s8, s1
80001d80: 13 56 46 00  	srli	a2, a2, 4
80001d84: 33 06 a6 02  	mul	a2, a2, a0
80001d88: 33 06 cc 40  	sub	a2, s8, a2
80001d8c: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80001d90: 33 b6 9c 02  	mulhu	a2, s9, s1
80001d94: 13 56 46 00  	srli	a2, a2, 4
80001d98: 33 06 a6 02  	mul	a2, a2, a0
80001d9c: 33 86 cc 40  	sub	a2, s9, a2
80001da0: 53 04 06 d2  	fcvt.d.w	fs0, a2
80001da4: 33 b6 9d 02  	mulhu	a2, s11, s1
80001da8: 13 56 46 00  	srli	a2, a2, 4
80001dac: 33 06 a6 02  	mul	a2, a2, a0
80001db0: 33 86 cd 40  	sub	a2, s11, a2
80001db4: d3 04 06 d2  	fcvt.d.w	fs1, a2
80001db8: 33 b6 99 02  	mulhu	a2, s3, s1
80001dbc: 13 56 46 00  	srli	a2, a2, 4
80001dc0: 33 06 a6 02  	mul	a2, a2, a0
80001dc4: 33 86 c9 40  	sub	a2, s3, a2
80001dc8: 53 09 06 d2  	fcvt.d.w	fs2, a2
80001dcc: 33 b6 97 02  	mulhu	a2, a5, s1
80001dd0: 13 56 46 00  	srli	a2, a2, 4
80001dd4: 33 06 a6 02  	mul	a2, a2, a0
80001dd8: 33 86 c7 40  	sub	a2, a5, a2
80001ddc: d3 09 06 d2  	fcvt.d.w	fs3, a2
80001de0: 33 36 94 02  	mulhu	a2, s0, s1
80001de4: 13 56 46 00  	srli	a2, a2, 4
80001de8: 33 06 a6 02  	mul	a2, a2, a0
80001dec: 33 06 c4 40  	sub	a2, s0, a2
80001df0: 53 0a 06 d2  	fcvt.d.w	fs4, a2
80001df4: 33 b6 96 02  	mulhu	a2, a3, s1
80001df8: 13 56 46 00  	srli	a2, a2, 4
80001dfc: 33 06 a6 02  	mul	a2, a2, a0
80001e00: 33 86 c6 40  	sub	a2, a3, a2
80001e04: d3 0a 06 d2  	fcvt.d.w	fs5, a2
80001e08: 33 b6 95 02  	mulhu	a2, a1, s1
80001e0c: 13 56 46 00  	srli	a2, a2, 4
80001e10: 33 06 a6 02  	mul	a2, a2, a0
80001e14: 33 86 c5 40  	sub	a2, a1, a2
80001e18: 53 0b 06 d2  	fcvt.d.w	fs6, a2
80001e1c: 33 36 97 02  	mulhu	a2, a4, s1
80001e20: 13 56 46 00  	srli	a2, a2, 4
80001e24: 33 06 a6 03  	mul	a2, a2, s10
80001e28: 33 06 c7 00  	add	a2, a4, a2
80001e2c: d3 0b 06 d2  	fcvt.d.w	fs7, a2
80001e30: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001e34: 53 80 52 22  	fmv.d	ft0, ft5
80001e38: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001e3c: 53 80 52 22  	fmv.d	ft0, ft5
80001e40: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001e44: 53 80 52 22  	fmv.d	ft0, ft5
80001e48: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001e4c: 53 80 52 22  	fmv.d	ft0, ft5
80001e50: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001e54: 53 80 52 22  	fmv.d	ft0, ft5
80001e58: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001e5c: 53 80 52 22  	fmv.d	ft0, ft5
80001e60: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001e64: 53 80 52 22  	fmv.d	ft0, ft5
80001e68: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001e6c: 53 80 52 22  	fmv.d	ft0, ft5
80001e70: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001e74: 53 80 52 22  	fmv.d	ft0, ft5
80001e78: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001e7c: 53 80 52 22  	fmv.d	ft0, ft5
80001e80: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001e84: 53 80 52 22  	fmv.d	ft0, ft5
80001e88: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001e8c: 53 80 52 22  	fmv.d	ft0, ft5
80001e90: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001e94: 53 80 52 22  	fmv.d	ft0, ft5
80001e98: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001e9c: 53 80 52 22  	fmv.d	ft0, ft5
80001ea0: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001ea4: 53 80 52 22  	fmv.d	ft0, ft5
80001ea8: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001eac: 53 80 52 22  	fmv.d	ft0, ft5
80001eb0: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001eb4: 53 80 52 22  	fmv.d	ft0, ft5
80001eb8: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001ebc: 53 80 52 22  	fmv.d	ft0, ft5
80001ec0: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001ec4: 53 80 52 22  	fmv.d	ft0, ft5
80001ec8: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001ecc: 53 80 52 22  	fmv.d	ft0, ft5
80001ed0: 53 00 42 22  	fmv.d	ft0, ft4
80001ed4: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001ed8: 53 80 52 22  	fmv.d	ft0, ft5
80001edc: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80001ee0: 53 80 52 22  	fmv.d	ft0, ft5
80001ee4: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80001ee8: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < ni; i++)
80001eec: 13 07 97 01  	addi	a4, a4, 25
80001ef0: 93 85 85 01  	addi	a1, a1, 24
80001ef4: 93 86 76 01  	addi	a3, a3, 23
80001ef8: 13 04 54 01  	addi	s0, s0, 21
80001efc: 93 87 47 01  	addi	a5, a5, 20
80001f00: 93 89 39 01  	addi	s3, s3, 19
80001f04: 93 8d 2d 01  	addi	s11, s11, 18
80001f08: 93 8c 1c 01  	addi	s9, s9, 17
80001f0c: 13 0c 0c 01  	addi	s8, s8, 16
80001f10: 13 09 f9 00  	addi	s2, s2, 15
80001f14: 93 8f ef 00  	addi	t6, t6, 14
80001f18: 13 0f df 00  	addi	t5, t5, 13
80001f1c: 93 8e ce 00  	addi	t4, t4, 12
80001f20: 13 0e be 00  	addi	t3, t3, 11
80001f24: 93 83 a3 00  	addi	t2, t2, 10
80001f28: 13 03 93 00  	addi	t1, t1, 9
80001f2c: 93 82 82 00  	addi	t0, t0, 8
80001f30: 93 88 78 00  	addi	a7, a7, 7
80001f34: 13 08 68 00  	addi	a6, a6, 6
80001f38: 93 8b 5b 00  	addi	s7, s7, 5
80001f3c: 13 0b 4b 00  	addi	s6, s6, 4
80001f40: 93 8a 3a 00  	addi	s5, s5, 3
80001f44: 13 0a 2a 00  	addi	s4, s4, 2
80001f48: e3 1e 17 d0  	bne	a4, ra, 0x80001c64 <.LBB0_77+0xc4>
80001f4c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001f50: 6f 00 40 39  	j	0x800022e4 <.LBB0_77+0x744>
80001f54: 93 06 00 00  	mv	a3, zero
80001f58: 13 07 00 00  	mv	a4, zero
80001f5c: 93 07 00 00  	mv	a5, zero
80001f60: 93 04 00 00  	mv	s1, zero
80001f64: 93 05 00 00  	mv	a1, zero
80001f68: 13 0e 00 00  	mv	t3, zero
80001f6c: 93 0e 00 00  	mv	t4, zero
80001f70: 13 0f 00 00  	mv	t5, zero
80001f74: 93 0f 00 00  	mv	t6, zero
80001f78: 13 09 00 00  	mv	s2, zero
80001f7c: 13 0a 00 00  	mv	s4, zero
80001f80: 93 0a 00 00  	mv	s5, zero
80001f84: 13 0b 00 00  	mv	s6, zero
80001f88: 93 0b 00 00  	mv	s7, zero
80001f8c: 13 0c 00 00  	mv	s8, zero
80001f90: 93 0c 00 00  	mv	s9, zero
80001f94: 13 0d 00 00  	mv	s10, zero
80001f98: 93 0d 00 00  	mv	s11, zero
80001f9c: 93 09 00 00  	mv	s3, zero
80001fa0: 13 08 00 00  	mv	a6, zero
80001fa4: 93 08 00 00  	mv	a7, zero
80001fa8: 93 02 00 00  	mv	t0, zero
80001fac: 13 03 00 00  	mv	t1, zero
;   for (i = 0; i < ni; i++)
80001fb0: 13 84 00 06  	addi	s0, ra, 96
80001fb4: 37 95 2e ba  	lui	a0, 762601
80001fb8: 13 05 35 ba  	addi	a0, a0, -1117
80001fbc: 87 31 06 00  	fld	ft3, 0(a2)
80001fc0: 93 03 60 01  	addi	t2, zero, 22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001fc4: 33 b6 a2 02  	mulhu	a2, t0, a0
80001fc8: 13 56 46 00  	srli	a2, a2, 4
80001fcc: 33 06 76 02  	mul	a2, a2, t2
80001fd0: b3 80 c2 40  	sub	ra, t0, a2
80001fd4: 53 82 00 d2  	fcvt.d.w	ft4, ra
80001fd8: 33 b6 a8 02  	mulhu	a2, a7, a0
80001fdc: 13 56 46 00  	srli	a2, a2, 4
80001fe0: 33 06 76 02  	mul	a2, a2, t2
80001fe4: 33 86 c8 40  	sub	a2, a7, a2
80001fe8: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001fec: 33 b6 a9 02  	mulhu	a2, s3, a0
80001ff0: 13 56 46 00  	srli	a2, a2, 4
80001ff4: 33 06 76 02  	mul	a2, a2, t2
80001ff8: 33 86 c9 40  	sub	a2, s3, a2
80001ffc: 53 03 06 d2  	fcvt.d.w	ft6, a2
80002000: 33 36 ad 02  	mulhu	a2, s10, a0
80002004: 13 56 46 00  	srli	a2, a2, 4
80002008: 33 06 76 02  	mul	a2, a2, t2
8000200c: 33 06 cd 40  	sub	a2, s10, a2
80002010: d3 03 06 d2  	fcvt.d.w	ft7, a2
80002014: 33 b6 ac 02  	mulhu	a2, s9, a0
80002018: 13 56 46 00  	srli	a2, a2, 4
8000201c: 33 06 76 02  	mul	a2, a2, t2
80002020: 33 86 cc 40  	sub	a2, s9, a2
80002024: 53 05 06 d2  	fcvt.d.w	fa0, a2
80002028: 33 b6 ab 02  	mulhu	a2, s7, a0
8000202c: 13 56 46 00  	srli	a2, a2, 4
80002030: 33 06 76 02  	mul	a2, a2, t2
80002034: 33 86 cb 40  	sub	a2, s7, a2
80002038: d3 05 06 d2  	fcvt.d.w	fa1, a2
8000203c: 33 b6 aa 02  	mulhu	a2, s5, a0
80002040: 13 56 46 00  	srli	a2, a2, 4
80002044: 33 06 76 02  	mul	a2, a2, t2
80002048: 33 86 ca 40  	sub	a2, s5, a2
8000204c: 53 06 06 d2  	fcvt.d.w	fa2, a2
80002050: 33 36 a9 02  	mulhu	a2, s2, a0
80002054: 13 56 46 00  	srli	a2, a2, 4
80002058: 33 06 76 02  	mul	a2, a2, t2
8000205c: 33 06 c9 40  	sub	a2, s2, a2
80002060: d3 06 06 d2  	fcvt.d.w	fa3, a2
80002064: 33 36 af 02  	mulhu	a2, t5, a0
80002068: 13 56 46 00  	srli	a2, a2, 4
8000206c: 33 06 76 02  	mul	a2, a2, t2
80002070: 33 06 cf 40  	sub	a2, t5, a2
80002074: 53 07 06 d2  	fcvt.d.w	fa4, a2
80002078: 33 36 ae 02  	mulhu	a2, t3, a0
8000207c: 13 56 46 00  	srli	a2, a2, 4
80002080: 33 06 76 02  	mul	a2, a2, t2
80002084: 33 06 ce 40  	sub	a2, t3, a2
80002088: d3 07 06 d2  	fcvt.d.w	fa5, a2
8000208c: 33 b6 a4 02  	mulhu	a2, s1, a0
80002090: 13 56 46 00  	srli	a2, a2, 4
80002094: 33 06 76 02  	mul	a2, a2, t2
80002098: 33 86 c4 40  	sub	a2, s1, a2
8000209c: 53 08 06 d2  	fcvt.d.w	fa6, a2
800020a0: 33 b6 a6 02  	mulhu	a2, a3, a0
800020a4: 13 56 46 00  	srli	a2, a2, 4
800020a8: 33 06 76 02  	mul	a2, a2, t2
800020ac: 33 86 c6 40  	sub	a2, a3, a2
800020b0: d3 08 06 d2  	fcvt.d.w	fa7, a2
800020b4: 33 36 a7 02  	mulhu	a2, a4, a0
800020b8: 13 56 46 00  	srli	a2, a2, 4
800020bc: 33 06 76 02  	mul	a2, a2, t2
800020c0: 33 06 c7 40  	sub	a2, a4, a2
800020c4: 53 0e 06 d2  	fcvt.d.w	ft8, a2
800020c8: 33 b6 a7 02  	mulhu	a2, a5, a0
800020cc: 13 56 46 00  	srli	a2, a2, 4
800020d0: 33 06 76 02  	mul	a2, a2, t2
800020d4: 33 86 c7 40  	sub	a2, a5, a2
800020d8: d3 0e 06 d2  	fcvt.d.w	ft9, a2
800020dc: 33 b6 a5 02  	mulhu	a2, a1, a0
800020e0: 13 56 46 00  	srli	a2, a2, 4
800020e4: 33 06 76 02  	mul	a2, a2, t2
800020e8: 33 86 c5 40  	sub	a2, a1, a2
800020ec: 53 0f 06 d2  	fcvt.d.w	ft10, a2
800020f0: 33 b6 ae 02  	mulhu	a2, t4, a0
800020f4: 13 56 46 00  	srli	a2, a2, 4
800020f8: 33 06 76 02  	mul	a2, a2, t2
800020fc: 33 86 ce 40  	sub	a2, t4, a2
80002100: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80002104: 33 b6 af 02  	mulhu	a2, t6, a0
80002108: 13 56 46 00  	srli	a2, a2, 4
8000210c: 33 06 76 02  	mul	a2, a2, t2
80002110: 33 86 cf 40  	sub	a2, t6, a2
80002114: 53 04 06 d2  	fcvt.d.w	fs0, a2
80002118: 33 36 aa 02  	mulhu	a2, s4, a0
8000211c: 13 56 46 00  	srli	a2, a2, 4
80002120: 33 06 76 02  	mul	a2, a2, t2
80002124: 33 06 ca 40  	sub	a2, s4, a2
80002128: d3 04 06 d2  	fcvt.d.w	fs1, a2
8000212c: 33 36 ab 02  	mulhu	a2, s6, a0
80002130: 13 56 46 00  	srli	a2, a2, 4
80002134: 33 06 76 02  	mul	a2, a2, t2
80002138: 33 06 cb 40  	sub	a2, s6, a2
8000213c: 53 09 06 d2  	fcvt.d.w	fs2, a2
80002140: 33 36 ac 02  	mulhu	a2, s8, a0
80002144: 13 56 46 00  	srli	a2, a2, 4
80002148: 33 06 76 02  	mul	a2, a2, t2
8000214c: 33 06 cc 40  	sub	a2, s8, a2
80002150: d3 09 06 d2  	fcvt.d.w	fs3, a2
80002154: 33 b6 ad 02  	mulhu	a2, s11, a0
80002158: 13 56 46 00  	srli	a2, a2, 4
8000215c: 33 06 76 02  	mul	a2, a2, t2
80002160: 33 86 cd 40  	sub	a2, s11, a2
80002164: 53 0a 06 d2  	fcvt.d.w	fs4, a2
80002168: 33 36 a8 02  	mulhu	a2, a6, a0
8000216c: 13 56 46 00  	srli	a2, a2, 4
80002170: 33 06 76 02  	mul	a2, a2, t2
80002174: 33 06 c8 40  	sub	a2, a6, a2
80002178: d3 0a 06 d2  	fcvt.d.w	fs5, a2
8000217c: 33 36 a3 02  	mulhu	a2, t1, a0
80002180: 13 56 46 00  	srli	a2, a2, 4
80002184: 93 80 05 00  	mv	ra, a1
80002188: 93 85 04 00  	mv	a1, s1
8000218c: 93 84 07 00  	mv	s1, a5
80002190: 93 07 07 00  	mv	a5, a4
80002194: 13 87 06 00  	mv	a4, a3
80002198: 93 06 a0 fe  	addi	a3, zero, -22
8000219c: 33 06 d6 02  	mul	a2, a2, a3
800021a0: 93 06 07 00  	mv	a3, a4
800021a4: 13 87 07 00  	mv	a4, a5
800021a8: 93 87 04 00  	mv	a5, s1
800021ac: 93 84 05 00  	mv	s1, a1
800021b0: 93 85 00 00  	mv	a1, ra
800021b4: 33 06 c3 00  	add	a2, t1, a2
800021b8: 53 0b 06 d2  	fcvt.d.w	fs6, a2
800021bc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800021c0: 27 30 44 fa  	fsd	ft4, -96(s0)
800021c4: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800021c8: 27 34 44 fa  	fsd	ft4, -88(s0)
800021cc: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800021d0: 27 38 44 fa  	fsd	ft4, -80(s0)
800021d4: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800021d8: 27 3c 44 fa  	fsd	ft4, -72(s0)
800021dc: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800021e0: 27 30 44 fc  	fsd	ft4, -64(s0)
800021e4: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800021e8: 27 34 44 fc  	fsd	ft4, -56(s0)
800021ec: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800021f0: 27 38 44 fc  	fsd	ft4, -48(s0)
800021f4: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800021f8: 27 3c 44 fc  	fsd	ft4, -40(s0)
800021fc: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80002200: 27 30 44 fe  	fsd	ft4, -32(s0)
80002204: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80002208: 27 34 44 fe  	fsd	ft4, -24(s0)
8000220c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80002210: 27 38 44 fe  	fsd	ft4, -16(s0)
80002214: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80002218: 27 3c 44 fe  	fsd	ft4, -8(s0)
8000221c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80002220: 27 30 44 00  	fsd	ft4, 0(s0)
80002224: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80002228: 27 34 44 00  	fsd	ft4, 8(s0)
8000222c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80002230: 27 38 44 00  	fsd	ft4, 16(s0)
80002234: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80002238: 27 3c 44 00  	fsd	ft4, 24(s0)
8000223c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80002240: 27 30 44 02  	fsd	ft4, 32(s0)
80002244: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80002248: 27 34 44 02  	fsd	ft4, 40(s0)
8000224c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80002250: 27 38 44 02  	fsd	ft4, 48(s0)
80002254: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80002258: 27 3c 44 02  	fsd	ft4, 56(s0)
8000225c: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80002260: 27 34 44 04  	fsd	ft4, 72(s0)
80002264: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80002268: 27 38 44 04  	fsd	ft4, 80(s0)
8000226c: 23 22 04 04  	sw	zero, 68(s0)
80002270: 23 20 04 04  	sw	zero, 64(s0)
80002274: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80002278: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < ni; i++)
8000227c: 13 03 93 01  	addi	t1, t1, 25
80002280: 93 82 22 00  	addi	t0, t0, 2
80002284: 93 88 38 00  	addi	a7, a7, 3
80002288: 13 08 88 01  	addi	a6, a6, 24
8000228c: 93 89 49 00  	addi	s3, s3, 4
80002290: 93 8d 7d 01  	addi	s11, s11, 23
80002294: 13 0d 5d 00  	addi	s10, s10, 5
80002298: 93 8c 6c 00  	addi	s9, s9, 6
8000229c: 13 0c 5c 01  	addi	s8, s8, 21
800022a0: 93 8b 7b 00  	addi	s7, s7, 7
800022a4: 13 0b 4b 01  	addi	s6, s6, 20
800022a8: 93 8a 8a 00  	addi	s5, s5, 8
800022ac: 13 0a 3a 01  	addi	s4, s4, 19
800022b0: 13 09 99 00  	addi	s2, s2, 9
800022b4: 93 8f 2f 01  	addi	t6, t6, 18
800022b8: 13 0f af 00  	addi	t5, t5, 10
800022bc: 93 8e 1e 01  	addi	t4, t4, 17
800022c0: 13 0e be 00  	addi	t3, t3, 11
800022c4: 93 85 00 01  	addi	a1, ra, 16
800022c8: 93 84 c4 00  	addi	s1, s1, 12
800022cc: 93 87 f7 00  	addi	a5, a5, 15
800022d0: 13 04 04 0c  	addi	s0, s0, 192
800022d4: 13 07 e7 00  	addi	a4, a4, 14
800022d8: 93 86 d6 00  	addi	a3, a3, 13
800022dc: 13 06 00 19  	addi	a2, zero, 400
800022e0: e3 12 c3 ce  	bne	t1, a2, 0x80001fc4 <.LBB0_77+0x424>
;   for (i = 0; i < ni; i++) {
800022e4: 03 25 01 01  	lw	a0, 16(sp)
800022e8: 83 25 c1 00  	lw	a1, 12(sp)
800022ec: 33 75 b5 00  	and	a0, a0, a1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800022f0: 73 28 00 b0  	csrr	a6, mcycle
800022f4: 63 0a 05 3a  	beqz	a0, 0x800026a8 <.LBB0_80+0xc8>
800022f8: 13 05 00 00  	mv	a0, zero
800022fc: 93 05 80 00  	addi	a1, zero, 8
80002300: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++) {
80002304: 93 06 00 04  	addi	a3, zero, 64
80002308: 13 07 00 0c  	addi	a4, zero, 192
8000230c: ab 20 d6 00  	scfgw	a2, a3
80002310: ab a0 e5 00  	scfgw	a1, a4
80002314: 93 06 80 f5  	addi	a3, zero, -168
80002318: 13 07 10 01  	addi	a4, zero, 17
8000231c: 93 07 00 06  	addi	a5, zero, 96
80002320: 93 04 00 0e  	addi	s1, zero, 224
80002324: ab 20 f7 00  	scfgw	a4, a5
80002328: ab a0 96 00  	scfgw	a3, s1
8000232c: 93 06 f0 00  	addi	a3, zero, 15
80002330: 93 07 00 08  	addi	a5, zero, 128
80002334: 93 04 00 10  	addi	s1, zero, 256
80002338: ab a0 f6 00  	scfgw	a3, a5
8000233c: ab a0 95 00  	scfgw	a1, s1
80002340: 93 05 00 02  	addi	a1, zero, 32
80002344: ab 20 b0 00  	scfgw	zero, a1
80002348: 83 25 81 01  	lw	a1, 24(sp)
8000234c: 2b a0 05 34  	scfgwi	a1, 832
80002350: 93 05 00 09  	addi	a1, zero, 144
80002354: 93 07 10 00  	addi	a5, zero, 1
80002358: 93 84 07 04  	addi	s1, a5, 64
8000235c: 13 84 07 0c  	addi	s0, a5, 192
80002360: ab 20 96 00  	scfgw	a2, s1
80002364: ab a0 85 00  	scfgw	a1, s0
80002368: 37 f6 ff ff  	lui	a2, 1048575
8000236c: 93 04 86 43  	addi	s1, a2, 1080
80002370: 13 84 07 06  	addi	s0, a5, 96
80002374: ab 20 87 00  	scfgw	a4, s0
80002378: 13 87 07 0e  	addi	a4, a5, 224
8000237c: ab a0 e4 00  	scfgw	s1, a4
80002380: 13 06 86 3a  	addi	a2, a2, 936
80002384: 13 87 07 08  	addi	a4, a5, 128
80002388: 93 84 07 10  	addi	s1, a5, 256
8000238c: ab a0 e6 00  	scfgw	a3, a4
80002390: ab 20 96 00  	scfgw	a2, s1
80002394: 13 86 07 02  	addi	a2, a5, 32
80002398: ab 20 c0 00  	scfgw	zero, a2

8000239c <.LBB0_78>:
8000239c: 17 36 00 00  	auipc	a2, 3
800023a0: 13 06 c6 09  	addi	a2, a2, 156
800023a4: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
800023a8: 03 26 41 01  	lw	a2, 20(sp)
800023ac: 2b 20 16 34  	scfgwi	a2, 833
800023b0: 73 e6 00 7c  	csrrsi	a2, 1984, 1
800023b4: 13 06 00 01  	addi	a2, zero, 16
800023b8: 83 29 01 02  	lw	s3, 32(sp)
800023bc: 93 86 09 00  	mv	a3, s3
800023c0: 03 29 81 02  	lw	s2, 40(sp)
800023c4: 03 2a c1 01  	lw	s4, 28(sp)
800023c8: 83 2a 41 02  	lw	s5, 36(sp)
800023cc: 13 07 00 00  	mv	a4, zero
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800023d0: 53 f2 00 12  	fmul.d	ft4, ft1, ft0
800023d4: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023d8: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023dc: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023e0: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023e4: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023e8: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023ec: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023f0: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023f4: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023f8: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800023fc: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002400: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002404: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002408: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
8000240c: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002410: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002414: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002418: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
8000241c: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002420: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002424: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002428: b3 87 e6 00  	add	a5, a3, a4
8000242c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
;     for (j = 0; j < nj; j++) {
80002430: 13 07 87 00  	addi	a4, a4, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002434: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nj; j++) {
80002438: e3 1c b7 f8  	bne	a4, a1, 0x800023d0 <.LBB0_78+0x34>
;   for (i = 0; i < ni; i++) {
8000243c: 13 05 15 00  	addi	a0, a0, 1
80002440: 93 86 06 09  	addi	a3, a3, 144
80002444: e3 14 c5 f8  	bne	a0, a2, 0x800023cc <.LBB0_78+0x30>
80002448: 73 f5 00 7c  	csrrci	a0, 1984, 1
;   for (i = 0; i < ni; i++) {
8000244c: 33 85 59 01  	add	a0, s3, s5
80002450: 93 d5 49 01  	srli	a1, s3, 20
80002454: 33 36 b0 00  	snez	a2, a1
80002458: b7 05 12 00  	lui	a1, 288
8000245c: 93 85 15 00  	addi	a1, a1, 1
80002460: 33 35 b5 00  	sltu	a0, a0, a1
80002464: 33 75 a6 00  	and	a0, a2, a0
80002468: 83 2a 41 09  	lw	s5, 148(sp)
8000246c: 33 75 55 01  	and	a0, a0, s5
80002470: 03 26 81 00  	lw	a2, 8(sp)
80002474: 33 75 a6 00  	and	a0, a2, a0
80002478: 63 08 05 56  	beqz	a0, 0x800029e8 <.LBB0_81+0x2c0>
8000247c: 13 05 00 00  	mv	a0, zero
80002480: 93 05 80 00  	addi	a1, zero, 8
80002484: 93 08 70 01  	addi	a7, zero, 23
;   for (i = 0; i < ni; i++) {
80002488: 93 06 00 04  	addi	a3, zero, 64
8000248c: 13 07 00 0c  	addi	a4, zero, 192
80002490: ab a0 d8 00  	scfgw	a7, a3
80002494: ab a0 e5 00  	scfgw	a1, a4
80002498: 93 06 f0 00  	addi	a3, zero, 15
8000249c: 13 07 00 06  	addi	a4, zero, 96
800024a0: 93 07 00 0e  	addi	a5, zero, 224
800024a4: ab a0 e6 00  	scfgw	a3, a4
800024a8: ab a0 f5 00  	scfgw	a1, a5
800024ac: 13 07 00 02  	addi	a4, zero, 32
800024b0: ab 20 e0 00  	scfgw	zero, a4
800024b4: 2b 20 09 32  	scfgwi	s2, 800
800024b8: 13 07 10 01  	addi	a4, zero, 17
800024bc: 93 07 10 00  	addi	a5, zero, 1
800024c0: 93 84 07 04  	addi	s1, a5, 64
800024c4: 13 84 07 0c  	addi	s0, a5, 192
800024c8: ab 20 97 00  	scfgw	a4, s1
800024cc: ab a0 85 00  	scfgw	a1, s0
800024d0: 93 04 80 f7  	addi	s1, zero, -136
800024d4: 13 84 07 06  	addi	s0, a5, 96
800024d8: ab a0 88 00  	scfgw	a7, s0
800024dc: 13 84 07 0e  	addi	s0, a5, 224
800024e0: ab a0 84 00  	scfgw	s1, s0
800024e4: 93 84 07 08  	addi	s1, a5, 128
800024e8: 13 84 07 10  	addi	s0, a5, 256
800024ec: ab a0 96 00  	scfgw	a3, s1
800024f0: ab a0 85 00  	scfgw	a1, s0
800024f4: 93 85 07 02  	addi	a1, a5, 32
800024f8: ab 20 b0 00  	scfgw	zero, a1
800024fc: 2b a0 19 34  	scfgwi	s3, 833
80002500: 93 05 00 0c  	addi	a1, zero, 192
80002504: 93 07 20 00  	addi	a5, zero, 2
80002508: 93 84 07 04  	addi	s1, a5, 64
8000250c: 13 84 07 0c  	addi	s0, a5, 192
80002510: ab 20 97 00  	scfgw	a4, s1
80002514: ab a0 85 00  	scfgw	a1, s0
80002518: 37 f7 ff ff  	lui	a4, 1048575
8000251c: 93 04 87 34  	addi	s1, a4, 840
80002520: 13 84 07 06  	addi	s0, a5, 96
80002524: 13 86 07 0e  	addi	a2, a5, 224
80002528: ab a0 88 00  	scfgw	a7, s0
8000252c: ab a0 c4 00  	scfgw	s1, a2
80002530: 13 06 87 28  	addi	a2, a4, 648
80002534: 13 87 07 08  	addi	a4, a5, 128
80002538: 93 84 07 10  	addi	s1, a5, 256
8000253c: ab a0 e6 00  	scfgw	a3, a4
80002540: ab 20 96 00  	scfgw	a2, s1
80002544: 13 86 07 02  	addi	a2, a5, 32
80002548: ab 20 c0 00  	scfgw	zero, a2

8000254c <.LBB0_79>:
8000254c: 17 36 00 00  	auipc	a2, 3
80002550: 13 06 46 ef  	addi	a2, a2, -268
80002554: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
80002558: 2b 20 2a 34  	scfgwi	s4, 834
8000255c: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80002560: 13 06 00 01  	addi	a2, zero, 16
80002564: 93 06 09 00  	mv	a3, s2
80002568: 13 07 00 00  	mv	a4, zero
;       D[i][j] *= beta;
8000256c: 53 72 30 12  	fmul.d	ft4, ft0, ft3
;         D[i][j] += tmp[i][k] * C[k][j];
80002570: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002574: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002578: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
8000257c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002580: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002584: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002588: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
8000258c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002590: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002594: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002598: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
8000259c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800025a0: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800025a4: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800025a8: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800025ac: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800025b0: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
;       D[i][j] *= beta;
800025b4: b3 87 e6 00  	add	a5, a3, a4
;         D[i][j] += tmp[i][k] * C[k][j];
800025b8: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
;     for (j = 0; j < nl; j++) {
800025bc: 13 07 87 00  	addi	a4, a4, 8
;         D[i][j] += tmp[i][k] * C[k][j];
800025c0: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nl; j++) {
800025c4: e3 14 b7 fa  	bne	a4, a1, 0x8000256c <.LBB0_79+0x20>
;   for (i = 0; i < ni; i++) {
800025c8: 13 05 15 00  	addi	a0, a0, 1
800025cc: 93 86 06 0c  	addi	a3, a3, 192
800025d0: e3 1c c5 f8  	bne	a0, a2, 0x80002568 <.LBB0_79+0x1c>
800025d4: 73 f5 00 7c  	csrrci	a0, 1984, 1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800025d8: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
800025dc: b3 05 05 41  	sub	a1, a0, a6

800025e0 <.LBB0_80>:
800025e0: 17 35 00 00  	auipc	a0, 3
800025e4: 13 05 15 ba  	addi	a0, a0, -1119
800025e8: 97 10 00 00  	auipc	ra, 1
800025ec: e7 80 00 85  	jalr	-1968(ra)
800025f0: 63 84 0a 6c  	beqz	s5, 0x80002cb8 <.LBB0_82+0x264>
800025f4: 13 05 80 00  	addi	a0, zero, 8
800025f8: 93 05 70 01  	addi	a1, zero, 23
;     for (int i = 0; i < n; i++){
800025fc: 13 06 00 04  	addi	a2, zero, 64
80002600: 93 06 00 0c  	addi	a3, zero, 192
80002604: ab a0 c5 00  	scfgw	a1, a2
80002608: ab 20 d5 00  	scfgw	a0, a3
8000260c: 93 05 f0 00  	addi	a1, zero, 15
80002610: 13 06 00 06  	addi	a2, zero, 96
80002614: 93 06 00 0e  	addi	a3, zero, 224
80002618: ab a0 c5 00  	scfgw	a1, a2
8000261c: ab 20 d5 00  	scfgw	a0, a3
80002620: 13 05 00 02  	addi	a0, zero, 32
80002624: ab 20 a0 00  	scfgw	zero, a0
80002628: 2b 20 09 32  	scfgwi	s2, 800
8000262c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002630: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002634: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
80002638: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000263c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002640: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002644: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002648: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000264c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002650: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002654: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002658: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000265c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002660: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002664: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002668: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000266c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002670: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002674: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002678: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000267c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002680: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002684: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002688: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000268c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002690: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80002694: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80002698: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
8000269c: e3 1e 05 f8  	bnez	a0, 0x80002638 <.LBB0_80+0x58>
800026a0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800026a4: 6f 00 c0 6e  	j	0x80002d90 <.LBB0_83>
800026a8: 93 0b 00 00  	mv	s7, zero
800026ac: 03 25 41 01  	lw	a0, 20(sp)
;   for (i = 0; i < ni; i++) {
800026b0: 93 02 05 09  	addi	t0, a0, 144
800026b4: 93 05 85 5e  	addi	a1, a0, 1512
800026b8: 13 83 85 5e  	addi	t1, a1, 1512
800026bc: 93 05 05 5a  	addi	a1, a0, 1440
800026c0: 13 8e 05 5a  	addi	t3, a1, 1440
800026c4: 93 05 85 11  	addi	a1, a0, 280
800026c8: 13 06 c5 62  	addi	a2, a0, 1580
800026cc: 13 06 c6 62  	addi	a2, a2, 1580
800026d0: 93 06 45 5e  	addi	a3, a0, 1508
800026d4: 93 86 46 5e  	addi	a3, a3, 1508
800026d8: 13 d7 42 01  	srli	a4, t0, 20
800026dc: 33 37 e0 00  	snez	a4, a4
800026e0: b7 07 12 00  	lui	a5, 288
800026e4: 93 87 17 00  	addi	a5, a5, 1
800026e8: b3 b5 f5 00  	sltu	a1, a1, a5
800026ec: b3 75 b7 00  	and	a1, a4, a1
800026f0: 13 57 43 01  	srli	a4, t1, 20
800026f4: 33 37 e0 00  	snez	a4, a4
800026f8: 33 36 f6 00  	sltu	a2, a2, a5
800026fc: 33 76 c7 00  	and	a2, a4, a2
80002700: b3 f5 c5 00  	and	a1, a1, a2
80002704: 13 56 4e 01  	srli	a2, t3, 20
80002708: 33 36 c0 00  	snez	a2, a2
8000270c: b3 b6 f6 00  	sltu	a3, a3, a5
80002710: 33 76 d6 00  	and	a2, a2, a3
80002714: 33 77 b6 00  	and	a4, a2, a1
80002718: 93 08 00 0b  	addi	a7, zero, 176
8000271c: 93 0e 80 00  	addi	t4, zero, 8
80002720: 13 0f 10 01  	addi	t5, zero, 17
80002724: 93 0f 10 00  	addi	t6, zero, 1

80002728 <.LBB0_81>:
80002728: 97 35 00 00  	auipc	a1, 3
8000272c: 93 85 05 d1  	addi	a1, a1, -752
80002730: 87 b1 05 00  	fld	ft3, 0(a1)
80002734: 13 0b 20 00  	addi	s6, zero, 2
80002738: 13 06 00 09  	addi	a2, zero, 144
8000273c: 93 03 00 01  	addi	t2, zero, 16
80002740: 83 29 01 02  	lw	s3, 32(sp)
80002744: 93 86 09 00  	mv	a3, s3
80002748: 03 29 81 02  	lw	s2, 40(sp)
8000274c: 03 2a c1 01  	lw	s4, 28(sp)
80002750: 83 2a 41 02  	lw	s5, 36(sp)
80002754: 83 25 81 01  	lw	a1, 24(sp)
80002758: 6f 00 00 01  	j	0x80002768 <.LBB0_81+0x40>
;   for (i = 0; i < ni; i++) {
8000275c: 93 8b 1b 00  	addi	s7, s7, 1
80002760: 93 86 06 09  	addi	a3, a3, 144
80002764: e3 84 7b ce  	beq	s7, t2, 0x8000244c <.LBB0_78+0xb0>
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002768: 33 84 1b 03  	mul	s0, s7, a7
8000276c: 33 84 85 00  	add	s0, a1, s0
80002770: 07 32 84 04  	fld	ft4, 72(s0)
80002774: 87 32 04 05  	fld	ft5, 80(s0)
80002778: 07 33 84 05  	fld	ft6, 88(s0)
8000277c: 87 33 04 06  	fld	ft7, 96(s0)
80002780: 07 35 84 06  	fld	fa0, 104(s0)
80002784: 87 35 04 07  	fld	fa1, 112(s0)
80002788: 07 36 04 00  	fld	fa2, 0(s0)
8000278c: 87 36 84 00  	fld	fa3, 8(s0)
80002790: 07 37 04 01  	fld	fa4, 16(s0)
80002794: 87 37 84 01  	fld	fa5, 24(s0)
80002798: 07 38 04 02  	fld	fa6, 32(s0)
8000279c: 87 38 84 02  	fld	fa7, 40(s0)
800027a0: 07 3e 04 03  	fld	ft8, 48(s0)
800027a4: 87 3e 84 03  	fld	ft9, 56(s0)
800027a8: 07 3f 04 04  	fld	ft10, 64(s0)
800027ac: 87 3f 84 07  	fld	ft11, 120(s0)
800027b0: 07 34 04 08  	fld	fs0, 128(s0)
800027b4: 87 34 84 08  	fld	fs1, 136(s0)
800027b8: 07 39 04 09  	fld	fs2, 144(s0)
800027bc: 87 39 84 09  	fld	fs3, 152(s0)
800027c0: 07 3a 04 0a  	fld	fs4, 160(s0)
800027c4: 87 3a 84 0a  	fld	fs5, 168(s0)
800027c8: 13 04 00 00  	mv	s0, zero
800027cc: 63 0a 07 12  	beqz	a4, 0x80002900 <.LBB0_81+0x1d8>
;     for (j = 0; j < nj; j++) {
800027d0: 93 07 00 04  	addi	a5, zero, 64
800027d4: ab 20 ff 00  	scfgw	t5, a5
800027d8: 93 07 00 0c  	addi	a5, zero, 192
800027dc: ab a0 fe 00  	scfgw	t4, a5
800027e0: 93 07 00 02  	addi	a5, zero, 32
800027e4: ab 20 f0 00  	scfgw	zero, a5
800027e8: 2b a0 02 30  	scfgwi	t0, 768
800027ec: 93 87 0f 04  	addi	a5, t6, 64
800027f0: ab 20 ff 00  	scfgw	t5, a5
800027f4: 93 87 0f 0c  	addi	a5, t6, 192
800027f8: ab a0 fe 00  	scfgw	t4, a5
800027fc: 93 87 0f 02  	addi	a5, t6, 32
80002800: ab 20 f0 00  	scfgw	zero, a5
80002804: 2b 20 13 30  	scfgwi	t1, 769
80002808: 93 07 0b 04  	addi	a5, s6, 64
8000280c: ab 20 ff 00  	scfgw	t5, a5
80002810: 93 07 0b 0c  	addi	a5, s6, 192
80002814: ab a0 fe 00  	scfgw	t4, a5
80002818: 93 07 0b 02  	addi	a5, s6, 32
8000281c: ab 20 f0 00  	scfgw	zero, a5
80002820: 2b 20 2e 30  	scfgwi	t3, 770
80002824: f3 e7 00 7c  	csrrsi	a5, 1984, 1
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002828: b3 07 85 00  	add	a5, a0, s0
8000282c: 07 bb 07 00  	fld	fs6, 0(a5)
80002830: 53 7b cb 12  	fmul.d	fs6, fs6, fa2
80002834: 07 bc 07 12  	fld	fs8, 288(a5)
80002838: 87 bc 07 1b  	fld	fs9, 432(a5)
8000283c: 07 bd 07 24  	fld	fs10, 576(a5)
80002840: 43 7b d0 b2  	fmadd.d	fs6, ft0, fa3, fs6
80002844: 87 bb 07 2d  	fld	fs7, 720(a5)
80002848: 43 7b ec b2  	fmadd.d	fs6, fs8, fa4, fs6
8000284c: 07 bc 07 36  	fld	fs8, 864(a5)
80002850: 43 fb fc b2  	fmadd.d	fs6, fs9, fa5, fs6
80002854: 87 bc 07 3f  	fld	fs9, 1008(a5)
80002858: 43 7b 0d b3  	fmadd.d	fs6, fs10, fa6, fs6
8000285c: 07 bd 07 48  	fld	fs10, 1152(a5)
80002860: 43 fb 1b b3  	fmadd.d	fs6, fs7, fa7, fs6
80002864: 87 bb 07 51  	fld	fs7, 1296(a5)
80002868: 43 7b cc b3  	fmadd.d	fs6, fs8, ft8, fs6
8000286c: 07 bc 07 5a  	fld	fs8, 1440(a5)
80002870: 43 fb dc b3  	fmadd.d	fs6, fs9, ft9, fs6
80002874: 87 bc 07 63  	fld	fs9, 1584(a5)
80002878: 43 7b ed b3  	fmadd.d	fs6, fs10, ft10, fs6
8000287c: 07 bd 07 6c  	fld	fs10, 1728(a5)
80002880: 43 fb 4b b2  	fmadd.d	fs6, fs7, ft4, fs6
80002884: 87 bb 07 75  	fld	fs7, 1872(a5)
80002888: 43 7b 5c b2  	fmadd.d	fs6, fs8, ft5, fs6
8000288c: 07 bc 07 7e  	fld	fs8, 2016(a5)
80002890: 93 84 87 43  	addi	s1, a5, 1080
80002894: 43 fb 6c b2  	fmadd.d	fs6, fs9, ft6, fs6
80002898: 87 bc 84 43  	fld	fs9, 1080(s1)
8000289c: 93 84 07 48  	addi	s1, a5, 1152
800028a0: 43 7b 7d b2  	fmadd.d	fs6, fs10, ft7, fs6
800028a4: 07 bd 04 48  	fld	fs10, 1152(s1)
800028a8: 93 84 87 4c  	addi	s1, a5, 1224
800028ac: 43 fb ab b2  	fmadd.d	fs6, fs7, fa0, fs6
800028b0: 87 bb 84 4c  	fld	fs7, 1224(s1)
800028b4: 93 84 07 51  	addi	s1, a5, 1296
800028b8: 43 7b bc b2  	fmadd.d	fs6, fs8, fa1, fs6
800028bc: 07 bc 04 51  	fld	fs8, 1296(s1)
800028c0: 93 87 87 55  	addi	a5, a5, 1368
800028c4: 43 fb fc b3  	fmadd.d	fs6, fs9, ft11, fs6
800028c8: 87 bc 87 55  	fld	fs9, 1368(a5)
800028cc: 43 7b 8d b2  	fmadd.d	fs6, fs10, fs0, fs6
800028d0: 43 fb 9b b2  	fmadd.d	fs6, fs7, fs1, fs6
800028d4: 43 7b 2c b3  	fmadd.d	fs6, fs8, fs2, fs6
800028d8: 43 fb 3c b3  	fmadd.d	fs6, fs9, fs3, fs6
800028dc: 43 7b 41 b3  	fmadd.d	fs6, ft2, fs4, fs6
800028e0: 43 fb 50 b3  	fmadd.d	fs6, ft1, fs5, fs6
800028e4: b3 87 86 00  	add	a5, a3, s0
800028e8: 53 7b 3b 12  	fmul.d	fs6, fs6, ft3
;     for (j = 0; j < nj; j++) {
800028ec: 13 04 84 00  	addi	s0, s0, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800028f0: 27 b0 67 01  	fsd	fs6, 0(a5)
;     for (j = 0; j < nj; j++) {
800028f4: e3 1a c4 f2  	bne	s0, a2, 0x80002828 <.LBB0_81+0x100>
800028f8: f3 f7 00 7c  	csrrci	a5, 1984, 1
800028fc: 6f f0 1f e6  	j	0x8000275c <.LBB0_81+0x34>
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002900: b3 07 85 00  	add	a5, a0, s0
80002904: 07 bb 07 00  	fld	fs6, 0(a5)
80002908: 53 7b cb 12  	fmul.d	fs6, fs6, fa2
8000290c: 87 bb 07 09  	fld	fs7, 144(a5)
80002910: 07 bc 07 12  	fld	fs8, 288(a5)
80002914: 87 bc 07 1b  	fld	fs9, 432(a5)
80002918: 07 bd 07 24  	fld	fs10, 576(a5)
8000291c: 43 fb db b2  	fmadd.d	fs6, fs7, fa3, fs6
80002920: 87 bb 07 2d  	fld	fs7, 720(a5)
80002924: 43 7b ec b2  	fmadd.d	fs6, fs8, fa4, fs6
80002928: 07 bc 07 36  	fld	fs8, 864(a5)
8000292c: 43 fb fc b2  	fmadd.d	fs6, fs9, fa5, fs6
80002930: 87 bc 07 3f  	fld	fs9, 1008(a5)
80002934: 43 7b 0d b3  	fmadd.d	fs6, fs10, fa6, fs6
80002938: 07 bd 07 48  	fld	fs10, 1152(a5)
8000293c: 43 fb 1b b3  	fmadd.d	fs6, fs7, fa7, fs6
80002940: 87 bb 07 51  	fld	fs7, 1296(a5)
80002944: 43 7b cc b3  	fmadd.d	fs6, fs8, ft8, fs6
80002948: 07 bc 07 5a  	fld	fs8, 1440(a5)
8000294c: 43 fb dc b3  	fmadd.d	fs6, fs9, ft9, fs6
80002950: 87 bc 07 63  	fld	fs9, 1584(a5)
80002954: 43 7b ed b3  	fmadd.d	fs6, fs10, ft10, fs6
80002958: 07 bd 07 6c  	fld	fs10, 1728(a5)
8000295c: 43 fb 4b b2  	fmadd.d	fs6, fs7, ft4, fs6
80002960: 87 bb 07 75  	fld	fs7, 1872(a5)
80002964: 43 7b 5c b2  	fmadd.d	fs6, fs8, ft5, fs6
80002968: 07 bc 07 7e  	fld	fs8, 2016(a5)
8000296c: 93 84 87 43  	addi	s1, a5, 1080
80002970: 43 fb 6c b2  	fmadd.d	fs6, fs9, ft6, fs6
80002974: 87 bc 84 43  	fld	fs9, 1080(s1)
80002978: 93 84 07 48  	addi	s1, a5, 1152
8000297c: 43 7b 7d b2  	fmadd.d	fs6, fs10, ft7, fs6
80002980: 07 bd 04 48  	fld	fs10, 1152(s1)
80002984: 93 84 87 4c  	addi	s1, a5, 1224
80002988: 43 fb ab b2  	fmadd.d	fs6, fs7, fa0, fs6
8000298c: 87 bb 84 4c  	fld	fs7, 1224(s1)
80002990: 93 84 07 51  	addi	s1, a5, 1296
80002994: 43 7b bc b2  	fmadd.d	fs6, fs8, fa1, fs6
80002998: 07 bc 04 51  	fld	fs8, 1296(s1)
8000299c: 93 84 87 55  	addi	s1, a5, 1368
800029a0: 43 fb fc b3  	fmadd.d	fs6, fs9, ft11, fs6
800029a4: 87 bc 84 55  	fld	fs9, 1368(s1)
800029a8: 93 84 07 5a  	addi	s1, a5, 1440
800029ac: 43 7b 8d b2  	fmadd.d	fs6, fs10, fs0, fs6
800029b0: 07 bd 04 5a  	fld	fs10, 1440(s1)
800029b4: 93 87 87 5e  	addi	a5, a5, 1512
800029b8: 43 fb 9b b2  	fmadd.d	fs6, fs7, fs1, fs6
800029bc: 87 bb 87 5e  	fld	fs7, 1512(a5)
800029c0: 43 7b 2c b3  	fmadd.d	fs6, fs8, fs2, fs6
800029c4: 43 fb 3c b3  	fmadd.d	fs6, fs9, fs3, fs6
800029c8: 43 7b 4d b3  	fmadd.d	fs6, fs10, fs4, fs6
800029cc: 43 fb 5b b3  	fmadd.d	fs6, fs7, fs5, fs6
800029d0: b3 87 86 00  	add	a5, a3, s0
800029d4: 53 7b 3b 12  	fmul.d	fs6, fs6, ft3
;     for (j = 0; j < nj; j++) {
800029d8: 13 04 84 00  	addi	s0, s0, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800029dc: 27 b0 67 01  	fsd	fs6, 0(a5)
;     for (j = 0; j < nj; j++) {
800029e0: e3 10 c4 f2  	bne	s0, a2, 0x80002900 <.LBB0_81+0x1d8>
800029e4: 6f f0 9f d7  	j	0x8000275c <.LBB0_81+0x34>
800029e8: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < ni; i++) {
800029ec: 13 06 0a 66  	addi	a2, s4, 1632
800029f0: 93 02 06 66  	addi	t0, a2, 1632
800029f4: 13 06 0a 60  	addi	a2, s4, 1536
800029f8: 93 03 06 60  	addi	t2, a2, 1536
800029fc: 13 06 8a 0b  	addi	a2, s4, 184
80002a00: 93 06 ca 6b  	addi	a3, s4, 1724
80002a04: 93 86 c6 6b  	addi	a3, a3, 1724
80002a08: 13 07 ca 65  	addi	a4, s4, 1628
80002a0c: 13 07 c7 65  	addi	a4, a4, 1628
80002a10: 33 36 b6 00  	sltu	a2, a2, a1
80002a14: 83 27 41 00  	lw	a5, 4(sp)
80002a18: 33 f6 c7 00  	and	a2, a5, a2
80002a1c: 93 d7 42 01  	srli	a5, t0, 20
80002a20: b3 37 f0 00  	snez	a5, a5
80002a24: b3 b6 b6 00  	sltu	a3, a3, a1
80002a28: b3 f6 d7 00  	and	a3, a5, a3
80002a2c: 33 76 d6 00  	and	a2, a2, a3
80002a30: 93 d6 43 01  	srli	a3, t2, 20
80002a34: b3 36 d0 00  	snez	a3, a3
80002a38: b3 35 b7 00  	sltu	a1, a4, a1
80002a3c: b3 f5 b6 00  	and	a1, a3, a1
80002a40: b3 f6 c5 00  	and	a3, a1, a2
80002a44: 93 08 00 09  	addi	a7, zero, 144
80002a48: 13 0e 80 00  	addi	t3, zero, 8
80002a4c: 93 0e 70 01  	addi	t4, zero, 23
80002a50: 13 0f 10 00  	addi	t5, zero, 1

80002a54 <.LBB0_82>:
80002a54: 97 35 00 00  	auipc	a1, 3
80002a58: 93 85 c5 9e  	addi	a1, a1, -1556
80002a5c: 87 b1 05 00  	fld	ft3, 0(a1)
80002a60: 93 0f 20 00  	addi	t6, zero, 2
80002a64: 93 05 00 0c  	addi	a1, zero, 192
80002a68: 13 03 00 01  	addi	t1, zero, 16
80002a6c: 13 06 09 00  	mv	a2, s2
80002a70: 6f 00 00 01  	j	0x80002a80 <.LBB0_82+0x2c>
;   for (i = 0; i < ni; i++) {
80002a74: 13 05 15 00  	addi	a0, a0, 1
80002a78: 13 06 06 0c  	addi	a2, a2, 192
80002a7c: e3 0e 65 b4  	beq	a0, t1, 0x800025d8 <.LBB0_79+0x8c>
;         D[i][j] += tmp[i][k] * C[k][j];
80002a80: b3 07 15 03  	mul	a5, a0, a7
80002a84: b3 87 f9 00  	add	a5, s3, a5
80002a88: 07 b2 07 01  	fld	ft4, 16(a5)
80002a8c: 87 b2 87 01  	fld	ft5, 24(a5)
80002a90: 07 b3 07 02  	fld	ft6, 32(a5)
80002a94: 87 b3 87 02  	fld	ft7, 40(a5)
80002a98: 07 b5 07 03  	fld	fa0, 48(a5)
80002a9c: 87 b5 87 03  	fld	fa1, 56(a5)
80002aa0: 07 b6 07 04  	fld	fa2, 64(a5)
80002aa4: 87 b6 87 04  	fld	fa3, 72(a5)
80002aa8: 07 b7 07 05  	fld	fa4, 80(a5)
80002aac: 87 b7 87 05  	fld	fa5, 88(a5)
80002ab0: 07 b8 07 06  	fld	fa6, 96(a5)
80002ab4: 87 b8 87 06  	fld	fa7, 104(a5)
80002ab8: 07 be 07 07  	fld	ft8, 112(a5)
80002abc: 87 be 87 07  	fld	ft9, 120(a5)
80002ac0: 07 bf 07 08  	fld	ft10, 128(a5)
80002ac4: 87 bf 87 08  	fld	ft11, 136(a5)
80002ac8: 07 b4 07 00  	fld	fs0, 0(a5)
80002acc: 87 b4 87 00  	fld	fs1, 8(a5)
80002ad0: 93 07 00 00  	mv	a5, zero
80002ad4: 63 8c 06 10  	beqz	a3, 0x80002bec <.LBB0_82+0x198>
;     for (j = 0; j < nl; j++) {
80002ad8: 93 04 00 04  	addi	s1, zero, 64
80002adc: ab a0 9e 00  	scfgw	t4, s1
80002ae0: 93 04 00 0c  	addi	s1, zero, 192
80002ae4: ab 20 9e 00  	scfgw	t3, s1
80002ae8: 93 04 00 02  	addi	s1, zero, 32
80002aec: ab 20 90 00  	scfgw	zero, s1
80002af0: 2b 20 0a 30  	scfgwi	s4, 768
80002af4: 93 04 0f 04  	addi	s1, t5, 64
80002af8: ab a0 9e 00  	scfgw	t4, s1
80002afc: 93 04 0f 0c  	addi	s1, t5, 192
80002b00: ab 20 9e 00  	scfgw	t3, s1
80002b04: 93 04 0f 02  	addi	s1, t5, 32
80002b08: ab 20 90 00  	scfgw	zero, s1
80002b0c: 2b a0 12 30  	scfgwi	t0, 769
80002b10: 93 84 0f 04  	addi	s1, t6, 64
80002b14: ab a0 9e 00  	scfgw	t4, s1
80002b18: 93 84 0f 0c  	addi	s1, t6, 192
80002b1c: ab 20 9e 00  	scfgw	t3, s1
80002b20: 93 84 0f 02  	addi	s1, t6, 32
80002b24: ab 20 90 00  	scfgw	zero, s1
80002b28: 2b a0 23 30  	scfgwi	t2, 770
80002b2c: f3 e4 00 7c  	csrrsi	s1, 1984, 1
;       D[i][j] *= beta;
80002b30: 33 07 f6 00  	add	a4, a2, a5
80002b34: 07 39 07 00  	fld	fs2, 0(a4)
;         D[i][j] += tmp[i][k] * C[k][j];
80002b38: 33 04 fa 00  	add	s0, s4, a5
80002b3c: 07 3a 04 0c  	fld	fs4, 192(s0)
;       D[i][j] *= beta;
80002b40: 53 79 39 12  	fmul.d	fs2, fs2, ft3
;         D[i][j] += tmp[i][k] * C[k][j];
80002b44: 43 79 80 92  	fmadd.d	fs2, ft0, fs0, fs2
80002b48: 43 79 9a 92  	fmadd.d	fs2, fs4, fs1, fs2
80002b4c: 87 39 04 18  	fld	fs3, 384(s0)
80002b50: 07 3a 04 24  	fld	fs4, 576(s0)
80002b54: 87 3a 04 30  	fld	fs5, 768(s0)
80002b58: 07 3b 04 3c  	fld	fs6, 960(s0)
80002b5c: 43 f9 49 92  	fmadd.d	fs2, fs3, ft4, fs2
80002b60: 43 79 5a 92  	fmadd.d	fs2, fs4, ft5, fs2
80002b64: 43 f9 6a 92  	fmadd.d	fs2, fs5, ft6, fs2
80002b68: 43 79 7b 92  	fmadd.d	fs2, fs6, ft7, fs2
80002b6c: 87 39 04 48  	fld	fs3, 1152(s0)
80002b70: 07 3a 04 54  	fld	fs4, 1344(s0)
80002b74: 87 3a 04 60  	fld	fs5, 1536(s0)
80002b78: 07 3b 04 6c  	fld	fs6, 1728(s0)
80002b7c: 43 f9 a9 92  	fmadd.d	fs2, fs3, fa0, fs2
80002b80: 43 79 ba 92  	fmadd.d	fs2, fs4, fa1, fs2
80002b84: 43 f9 ca 92  	fmadd.d	fs2, fs5, fa2, fs2
80002b88: 43 79 db 92  	fmadd.d	fs2, fs6, fa3, fs2
80002b8c: 87 39 04 78  	fld	fs3, 1920(s0)
80002b90: 93 04 04 42  	addi	s1, s0, 1056
80002b94: 07 ba 04 42  	fld	fs4, 1056(s1)
80002b98: 93 04 04 48  	addi	s1, s0, 1152
80002b9c: 87 ba 04 48  	fld	fs5, 1152(s1)
80002ba0: 93 04 04 4e  	addi	s1, s0, 1248
80002ba4: 07 bb 04 4e  	fld	fs6, 1248(s1)
80002ba8: 43 f9 e9 92  	fmadd.d	fs2, fs3, fa4, fs2
80002bac: 43 79 fa 92  	fmadd.d	fs2, fs4, fa5, fs2
80002bb0: 43 f9 0a 93  	fmadd.d	fs2, fs5, fa6, fs2
80002bb4: 43 79 1b 93  	fmadd.d	fs2, fs6, fa7, fs2
80002bb8: 93 04 04 54  	addi	s1, s0, 1344
80002bbc: 87 b9 04 54  	fld	fs3, 1344(s1)
80002bc0: 13 04 04 5a  	addi	s0, s0, 1440
80002bc4: 07 3a 04 5a  	fld	fs4, 1440(s0)
80002bc8: 43 f9 c9 93  	fmadd.d	fs2, fs3, ft8, fs2
80002bcc: 43 79 da 93  	fmadd.d	fs2, fs4, ft9, fs2
80002bd0: 43 79 e1 93  	fmadd.d	fs2, ft2, ft10, fs2
80002bd4: 43 f9 f0 93  	fmadd.d	fs2, ft1, ft11, fs2
;     for (j = 0; j < nl; j++) {
80002bd8: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80002bdc: 27 30 27 01  	fsd	fs2, 0(a4)
;     for (j = 0; j < nl; j++) {
80002be0: e3 98 b7 f4  	bne	a5, a1, 0x80002b30 <.LBB0_82+0xdc>
80002be4: 73 f7 00 7c  	csrrci	a4, 1984, 1
80002be8: 6f f0 df e8  	j	0x80002a74 <.LBB0_82+0x20>
;       D[i][j] *= beta;
80002bec: b3 04 f6 00  	add	s1, a2, a5
80002bf0: 07 b9 04 00  	fld	fs2, 0(s1)
;         D[i][j] += tmp[i][k] * C[k][j];
80002bf4: 33 04 fa 00  	add	s0, s4, a5
80002bf8: 87 39 04 00  	fld	fs3, 0(s0)
80002bfc: 07 3a 04 0c  	fld	fs4, 192(s0)
;       D[i][j] *= beta;
80002c00: 53 79 39 12  	fmul.d	fs2, fs2, ft3
;         D[i][j] += tmp[i][k] * C[k][j];
80002c04: 43 f9 89 92  	fmadd.d	fs2, fs3, fs0, fs2
80002c08: 43 79 9a 92  	fmadd.d	fs2, fs4, fs1, fs2
80002c0c: 87 39 04 18  	fld	fs3, 384(s0)
80002c10: 07 3a 04 24  	fld	fs4, 576(s0)
80002c14: 87 3a 04 30  	fld	fs5, 768(s0)
80002c18: 07 3b 04 3c  	fld	fs6, 960(s0)
80002c1c: 43 f9 49 92  	fmadd.d	fs2, fs3, ft4, fs2
80002c20: 43 79 5a 92  	fmadd.d	fs2, fs4, ft5, fs2
80002c24: 43 f9 6a 92  	fmadd.d	fs2, fs5, ft6, fs2
80002c28: 43 79 7b 92  	fmadd.d	fs2, fs6, ft7, fs2
80002c2c: 87 39 04 48  	fld	fs3, 1152(s0)
80002c30: 07 3a 04 54  	fld	fs4, 1344(s0)
80002c34: 87 3a 04 60  	fld	fs5, 1536(s0)
80002c38: 07 3b 04 6c  	fld	fs6, 1728(s0)
80002c3c: 43 f9 a9 92  	fmadd.d	fs2, fs3, fa0, fs2
80002c40: 43 79 ba 92  	fmadd.d	fs2, fs4, fa1, fs2
80002c44: 43 f9 ca 92  	fmadd.d	fs2, fs5, fa2, fs2
80002c48: 43 79 db 92  	fmadd.d	fs2, fs6, fa3, fs2
80002c4c: 87 39 04 78  	fld	fs3, 1920(s0)
80002c50: 13 07 04 42  	addi	a4, s0, 1056
80002c54: 07 3a 07 42  	fld	fs4, 1056(a4)
80002c58: 13 07 04 48  	addi	a4, s0, 1152
80002c5c: 87 3a 07 48  	fld	fs5, 1152(a4)
80002c60: 13 07 04 4e  	addi	a4, s0, 1248
80002c64: 07 3b 07 4e  	fld	fs6, 1248(a4)
80002c68: 43 f9 e9 92  	fmadd.d	fs2, fs3, fa4, fs2
80002c6c: 43 79 fa 92  	fmadd.d	fs2, fs4, fa5, fs2
80002c70: 43 f9 0a 93  	fmadd.d	fs2, fs5, fa6, fs2
80002c74: 43 79 1b 93  	fmadd.d	fs2, fs6, fa7, fs2
80002c78: 13 07 04 54  	addi	a4, s0, 1344
80002c7c: 87 39 07 54  	fld	fs3, 1344(a4)
80002c80: 13 07 04 5a  	addi	a4, s0, 1440
80002c84: 07 3a 07 5a  	fld	fs4, 1440(a4)
80002c88: 13 07 04 60  	addi	a4, s0, 1536
80002c8c: 87 3a 07 60  	fld	fs5, 1536(a4)
80002c90: 13 07 04 66  	addi	a4, s0, 1632
80002c94: 07 3b 07 66  	fld	fs6, 1632(a4)
80002c98: 43 f9 c9 93  	fmadd.d	fs2, fs3, ft8, fs2
80002c9c: 43 79 da 93  	fmadd.d	fs2, fs4, ft9, fs2
80002ca0: 43 f9 ea 93  	fmadd.d	fs2, fs5, ft10, fs2
80002ca4: 43 79 fb 93  	fmadd.d	fs2, fs6, ft11, fs2
;     for (j = 0; j < nl; j++) {
80002ca8: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80002cac: 27 b0 24 01  	fsd	fs2, 0(s1)
;     for (j = 0; j < nl; j++) {
80002cb0: e3 9e b7 f2  	bne	a5, a1, 0x80002bec <.LBB0_82+0x198>
80002cb4: 6f f0 1f dc  	j	0x80002a74 <.LBB0_82+0x20>
;     for (int i = 0; i < n; i++){
80002cb8: 13 05 09 06  	addi	a0, s2, 96
80002cbc: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002cc0: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80002cc4: 07 32 05 fa  	fld	ft4, -96(a0)
80002cc8: 87 32 85 fa  	fld	ft5, -88(a0)
80002ccc: 07 33 05 fb  	fld	ft6, -80(a0)
80002cd0: 87 33 85 fb  	fld	ft7, -72(a0)
80002cd4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002cd8: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002cdc: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002ce0: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002ce4: 07 32 05 fc  	fld	ft4, -64(a0)
80002ce8: 87 32 85 fc  	fld	ft5, -56(a0)
80002cec: 07 33 05 fd  	fld	ft6, -48(a0)
80002cf0: 87 33 85 fd  	fld	ft7, -40(a0)
80002cf4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002cf8: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002cfc: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002d00: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002d04: 07 32 05 fe  	fld	ft4, -32(a0)
80002d08: 87 32 85 fe  	fld	ft5, -24(a0)
80002d0c: 07 33 05 ff  	fld	ft6, -16(a0)
80002d10: 87 33 85 ff  	fld	ft7, -8(a0)
80002d14: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002d18: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002d1c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002d20: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002d24: 07 32 05 00  	fld	ft4, 0(a0)
80002d28: 87 32 85 00  	fld	ft5, 8(a0)
80002d2c: 07 33 05 01  	fld	ft6, 16(a0)
80002d30: 87 33 85 01  	fld	ft7, 24(a0)
80002d34: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002d38: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002d3c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002d40: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002d44: 07 32 05 02  	fld	ft4, 32(a0)
80002d48: 87 32 85 02  	fld	ft5, 40(a0)
80002d4c: 07 33 05 03  	fld	ft6, 48(a0)
80002d50: 87 33 85 03  	fld	ft7, 56(a0)
80002d54: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002d58: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002d5c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002d60: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002d64: 07 32 05 04  	fld	ft4, 64(a0)
80002d68: 87 32 85 04  	fld	ft5, 72(a0)
80002d6c: 07 33 05 05  	fld	ft6, 80(a0)
80002d70: 87 33 85 05  	fld	ft7, 88(a0)
80002d74: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002d78: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002d7c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002d80: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80002d84: 93 85 f5 ff  	addi	a1, a1, -1
80002d88: 13 05 05 0c  	addi	a0, a0, 192
80002d8c: e3 9c 05 f2  	bnez	a1, 0x80002cc4 <.LBB0_82+0x270>

80002d90 <.LBB0_83>:
80002d90: 17 25 00 00  	auipc	a0, 2
80002d94: 13 05 85 6b  	addi	a0, a0, 1720
80002d98: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80002d9c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80002da0: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80002da4: 27 3c 81 08  	fsd	fs0, 152(sp)
80002da8: 03 26 81 09  	lw	a2, 152(sp)
80002dac: 83 26 c1 09  	lw	a3, 156(sp)

80002db0 <.LBB0_84>:
80002db0: 17 25 00 00  	auipc	a0, 2
80002db4: 13 05 55 3c  	addi	a0, a0, 965
80002db8: 97 00 00 00  	auipc	ra, 0
80002dbc: e7 80 00 08  	jalr	128(ra)

80002dc0 <.LBB0_85>:
80002dc0: 17 25 00 00  	auipc	a0, 2
80002dc4: 13 05 05 69  	addi	a0, a0, 1680
80002dc8: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80002dcc: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80002dd0: 07 3d 01 0a  	fld	fs10, 160(sp)
80002dd4: 87 3c 81 0a  	fld	fs9, 168(sp)
80002dd8: 07 3c 01 0b  	fld	fs8, 176(sp)
80002ddc: 87 3b 81 0b  	fld	fs7, 184(sp)
80002de0: 07 3b 01 0c  	fld	fs6, 192(sp)
80002de4: 87 3a 81 0c  	fld	fs5, 200(sp)
80002de8: 07 3a 01 0d  	fld	fs4, 208(sp)
80002dec: 87 39 81 0d  	fld	fs3, 216(sp)
80002df0: 07 39 01 0e  	fld	fs2, 224(sp)
80002df4: 87 34 81 0e  	fld	fs1, 232(sp)
80002df8: 07 34 01 0f  	fld	fs0, 240(sp)
80002dfc: 83 2d c1 0f  	lw	s11, 252(sp)
80002e00: 03 2d 01 10  	lw	s10, 256(sp)
80002e04: 83 2c 41 10  	lw	s9, 260(sp)
80002e08: 03 2c 81 10  	lw	s8, 264(sp)
80002e0c: 83 2b c1 10  	lw	s7, 268(sp)
80002e10: 03 2b 01 11  	lw	s6, 272(sp)
80002e14: 83 2a 41 11  	lw	s5, 276(sp)
80002e18: 03 2a 81 11  	lw	s4, 280(sp)
80002e1c: 83 29 c1 11  	lw	s3, 284(sp)
80002e20: 03 29 01 12  	lw	s2, 288(sp)
80002e24: 83 24 41 12  	lw	s1, 292(sp)
80002e28: 03 24 81 12  	lw	s0, 296(sp)
80002e2c: 83 20 c1 12  	lw	ra, 300(sp)
80002e30: 13 01 01 13  	addi	sp, sp, 304
80002e34: 67 80 00 00  	ret

80002e38 <printf_>:
; {
80002e38: 13 01 01 fd  	addi	sp, sp, -48
80002e3c: 23 26 11 00  	sw	ra, 12(sp)
80002e40: 93 02 05 00  	mv	t0, a0
80002e44: 23 26 11 03  	sw	a7, 44(sp)
80002e48: 23 24 01 03  	sw	a6, 40(sp)
80002e4c: 23 22 f1 02  	sw	a5, 36(sp)
80002e50: 23 20 e1 02  	sw	a4, 32(sp)
80002e54: 23 2e d1 00  	sw	a3, 28(sp)
80002e58: 23 2c c1 00  	sw	a2, 24(sp)
80002e5c: 23 2a b1 00  	sw	a1, 20(sp)
80002e60: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80002e64: 23 24 a1 00  	sw	a0, 8(sp)

80002e68 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80002e68: 17 15 00 00  	auipc	a0, 1
80002e6c: 13 05 45 c2  	addi	a0, a0, -988
80002e70: 93 05 71 00  	addi	a1, sp, 7
80002e74: 13 06 f0 ff  	addi	a2, zero, -1
80002e78: 13 07 41 01  	addi	a4, sp, 20
80002e7c: 93 86 02 00  	mv	a3, t0
80002e80: 97 00 00 00  	auipc	ra, 0
80002e84: e7 80 40 01  	jalr	20(ra)
;   return ret;
80002e88: 83 20 c1 00  	lw	ra, 12(sp)
80002e8c: 13 01 01 03  	addi	sp, sp, 48
80002e90: 67 80 00 00  	ret

80002e94 <_vsnprintf.llvm.11632292163828655644>:
; {
80002e94: 13 01 01 f9  	addi	sp, sp, -112
80002e98: 23 26 11 06  	sw	ra, 108(sp)
80002e9c: 23 24 81 06  	sw	s0, 104(sp)
80002ea0: 23 22 91 06  	sw	s1, 100(sp)
80002ea4: 23 20 21 07  	sw	s2, 96(sp)
80002ea8: 23 2e 31 05  	sw	s3, 92(sp)
80002eac: 23 2c 41 05  	sw	s4, 88(sp)
80002eb0: 23 2a 51 05  	sw	s5, 84(sp)
80002eb4: 23 28 61 05  	sw	s6, 80(sp)
80002eb8: 23 26 71 05  	sw	s7, 76(sp)
80002ebc: 23 24 81 05  	sw	s8, 72(sp)
80002ec0: 23 22 91 05  	sw	s9, 68(sp)
80002ec4: 23 20 a1 05  	sw	s10, 64(sp)
80002ec8: 23 2e b1 03  	sw	s11, 60(sp)
80002ecc: 93 09 07 00  	mv	s3, a4
80002ed0: 13 84 06 00  	mv	s0, a3
80002ed4: 93 0a 06 00  	mv	s5, a2
80002ed8: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80002edc: 63 86 05 00  	beqz	a1, 0x80002ee8 <.LBB1_183>
80002ee0: 13 09 05 00  	mv	s2, a0
80002ee4: 6f 00 c0 00  	j	0x80002ef0 <.LBB1_183+0x8>

80002ee8 <.LBB1_183>:
80002ee8: 17 19 00 00  	auipc	s2, 1
80002eec: 13 09 09 c5  	addi	s2, s2, -944
80002ef0: 13 0c 00 00  	mv	s8, zero
80002ef4: 13 0b 50 02  	addi	s6, zero, 37
80002ef8: 93 0d 00 01  	addi	s11, zero, 16
80002efc: 93 0b e0 02  	addi	s7, zero, 46
80002f00: 37 15 00 00  	lui	a0, 1
80002f04: 13 05 05 80  	addi	a0, a0, -2048
80002f08: 23 2c a1 00  	sw	a0, 24(sp)
80002f0c: 37 05 01 00  	lui	a0, 16
80002f10: 13 05 f5 ff  	addi	a0, a0, -1
80002f14: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80002f18: 13 0d 24 00  	addi	s10, s0, 2
80002f1c: 93 0c 0c 00  	mv	s9, s8
80002f20: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80002f24: 03 45 04 00  	lbu	a0, 0(s0)
80002f28: e3 04 05 30  	beqz	a0, 0x80003a30 <.LBB1_124+0x3b0>
80002f2c: 63 08 65 03  	beq	a0, s6, 0x80002f5c <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80002f30: 93 84 1c 00  	addi	s1, s9, 1
80002f34: 93 05 0a 00  	mv	a1, s4
80002f38: 13 86 0c 00  	mv	a2, s9
80002f3c: 93 86 0a 00  	mv	a3, s5
80002f40: e7 00 09 00  	jalr	s2
;       format++;
80002f44: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80002f48: 13 0d 1d 00  	addi	s10, s10, 1
80002f4c: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80002f50: 03 45 04 00  	lbu	a0, 0(s0)
80002f54: e3 1c 05 fc  	bnez	a0, 0x80002f2c <.LBB1_183+0x44>
80002f58: 6f 00 90 2d  	j	0x80003a30 <.LBB1_124+0x3b0>
;     flags = 0U;
80002f5c: 13 04 00 00  	mv	s0, zero
80002f60: 6f 00 00 01  	j	0x80002f70 <.LBB1_9+0x8>

80002f64 <.LBB1_8>:
80002f64: 93 05 00 01  	addi	a1, zero, 16

80002f68 <.LBB1_9>:
80002f68: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80002f6c: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80002f70: 03 45 fd ff  	lbu	a0, -1(s10)
80002f74: 93 05 05 fe  	addi	a1, a0, -32
80002f78: 63 ec bd 02  	bltu	s11, a1, 0x80002fb0 <.LBB1_15>
80002f7c: 93 95 25 00  	slli	a1, a1, 2

80002f80 <.LBB1_184>:
80002f80: 17 26 00 00  	auipc	a2, 2
80002f84: 13 06 46 21  	addi	a2, a2, 532
80002f88: b3 85 c5 00  	add	a1, a1, a2
80002f8c: 03 a6 05 00  	lw	a2, 0(a1)
80002f90: 93 05 10 00  	addi	a1, zero, 1
80002f94: 67 00 06 00  	jr	a2

80002f98 <.LBB1_12>:
80002f98: 93 05 80 00  	addi	a1, zero, 8
80002f9c: 6f f0 df fc  	j	0x80002f68 <.LBB1_9>

80002fa0 <.LBB1_13>:
80002fa0: 93 05 40 00  	addi	a1, zero, 4
80002fa4: 6f f0 5f fc  	j	0x80002f68 <.LBB1_9>

80002fa8 <.LBB1_14>:
80002fa8: 93 05 20 00  	addi	a1, zero, 2
80002fac: 6f f0 df fb  	j	0x80002f68 <.LBB1_9>

80002fb0 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80002fb0: 93 05 05 fd  	addi	a1, a0, -48
80002fb4: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80002fb8: 93 05 fd ff  	addi	a1, s10, -1
80002fbc: 93 06 90 00  	addi	a3, zero, 9
80002fc0: 63 ee c6 06  	bltu	a3, a2, 0x8000303c <.LBB1_15+0x8c>
80002fc4: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002fc8: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80002fcc: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002fd0: b3 06 8b 03  	mul	a3, s6, s8
80002fd4: 93 85 15 00  	addi	a1, a1, 1
80002fd8: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80002fdc: 93 06 05 fd  	addi	a3, a0, -48
80002fe0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002fe4: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80002fe8: e3 e0 86 ff  	bltu	a3, s8, 0x80002fc8 <.LBB1_15+0x18>
80002fec: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80002ff0: 63 16 75 0b  	bne	a0, s7, 0x8000309c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80002ff4: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80002ff8: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80002ffc: 93 05 05 fd  	addi	a1, a0, -48
80003000: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80003004: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80003008: 93 06 90 00  	addi	a3, zero, 9
8000300c: 63 e0 c6 06  	bltu	a3, a2, 0x8000306c <.LBB1_15+0xbc>
80003010: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003014: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003018: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000301c: b3 86 8b 03  	mul	a3, s7, s8
80003020: 93 85 15 00  	addi	a1, a1, 1
80003024: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003028: 93 06 05 fd  	addi	a3, a0, -48
8000302c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003030: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80003034: e3 e0 86 ff  	bltu	a3, s8, 0x80003014 <.LBB1_15+0x64>
80003038: 6f 00 00 07  	j	0x800030a8 <.LBB1_15+0xf8>
;     else if (*format == '*') {
8000303c: 13 06 a0 02  	addi	a2, zero, 42
80003040: 63 18 c5 04  	bne	a0, a2, 0x80003090 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80003044: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80003048: 63 d4 05 00  	bgez	a1, 0x80003050 <.LBB1_15+0xa0>
8000304c: 13 64 24 00  	ori	s0, s0, 2
80003050: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80003054: 03 45 0d 00  	lbu	a0, 0(s10)
80003058: 13 d6 f5 41  	srai	a2, a1, 31
8000305c: b3 85 c5 00  	add	a1, a1, a2
80003060: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80003064: e3 08 75 f9  	beq	a0, s7, 0x80002ff4 <.LBB1_15+0x44>
80003068: 6f 00 40 03  	j	0x8000309c <.LBB1_15+0xec>
;       else if (*format == '*') {
8000306c: 13 06 a0 02  	addi	a2, zero, 42
80003070: 63 1a c5 02  	bne	a0, a2, 0x800030a4 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80003074: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80003078: 63 44 70 01  	bgtz	s7, 0x80003080 <.LBB1_15+0xd0>
8000307c: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80003080: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80003084: 13 0d 2d 00  	addi	s10, s10, 2
80003088: 93 89 49 00  	addi	s3, s3, 4
8000308c: 6f 00 00 02  	j	0x800030ac <.LBB1_15+0xfc>
80003090: 13 0b 00 00  	mv	s6, zero
80003094: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003098: e3 0e 75 f5  	beq	a0, s7, 0x80002ff4 <.LBB1_15+0x44>
8000309c: 93 0b 00 00  	mv	s7, zero
800030a0: 6f 00 c0 00  	j	0x800030ac <.LBB1_15+0xfc>
800030a4: 93 0b 00 00  	mv	s7, zero
800030a8: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800030ac: 93 05 85 f9  	addi	a1, a0, -104
800030b0: 13 d6 15 00  	srli	a2, a1, 1
800030b4: 93 95 f5 01  	slli	a1, a1, 31
800030b8: b3 e5 c5 00  	or	a1, a1, a2
800030bc: 13 06 90 00  	addi	a2, zero, 9
800030c0: 63 62 b6 06  	bltu	a2, a1, 0x80003124 <.LBB1_42>
800030c4: 93 95 25 00  	slli	a1, a1, 2

800030c8 <.LBB1_185>:
800030c8: 17 26 00 00  	auipc	a2, 2
800030cc: 13 06 06 11  	addi	a2, a2, 272
800030d0: b3 85 c5 00  	add	a1, a1, a2
800030d4: 83 a6 05 00  	lw	a3, 0(a1)
800030d8: 93 05 10 00  	addi	a1, zero, 1
800030dc: 13 06 00 10  	addi	a2, zero, 256
800030e0: 67 80 06 00  	jr	a3

800030e4 <.LBB1_36>:
;         if (*format == 'h') {
800030e4: 03 45 1d 00  	lbu	a0, 1(s10)
800030e8: 93 05 80 06  	addi	a1, zero, 104
800030ec: 63 12 b5 12  	bne	a0, a1, 0x80003210 <.LBB1_53+0x48>
800030f0: 93 05 20 00  	addi	a1, zero, 2
800030f4: 13 06 00 0c  	addi	a2, zero, 192
800030f8: 6f 00 00 02  	j	0x80003118 <.LBB1_41>

800030fc <.LBB1_38>:
800030fc: 13 06 00 20  	addi	a2, zero, 512
80003100: 6f 00 80 01  	j	0x80003118 <.LBB1_41>

80003104 <.LBB1_39>:
;         if (*format == 'l') {
80003104: 03 45 1d 00  	lbu	a0, 1(s10)
80003108: 93 05 c0 06  	addi	a1, zero, 108
8000310c: 63 18 b5 10  	bne	a0, a1, 0x8000321c <.LBB1_53+0x54>
80003110: 93 05 20 00  	addi	a1, zero, 2
80003114: 13 06 00 30  	addi	a2, zero, 768

80003118 <.LBB1_41>:
80003118: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
8000311c: 03 45 0d 00  	lbu	a0, 0(s10)
80003120: 33 64 c4 00  	or	s0, s0, a2

80003124 <.LBB1_42>:
;     switch (*format) {
80003124: 93 05 b5 fd  	addi	a1, a0, -37
80003128: 13 06 30 05  	addi	a2, zero, 83
8000312c: 63 64 b6 10  	bltu	a2, a1, 0x80003234 <.LBB1_59>
80003130: 93 95 25 00  	slli	a1, a1, 2

80003134 <.LBB1_186>:
80003134: 17 26 00 00  	auipc	a2, 2
80003138: 13 06 c6 0c  	addi	a2, a2, 204
8000313c: b3 85 c5 00  	add	a1, a1, a2
80003140: 03 a6 05 00  	lw	a2, 0(a1)
80003144: 93 05 80 00  	addi	a1, zero, 8
80003148: 13 0c 00 01  	addi	s8, zero, 16
8000314c: 67 00 06 00  	jr	a2

80003150 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80003150: 13 74 f4 fe  	andi	s0, s0, -17
80003154: 13 0c a0 00  	addi	s8, zero, 10

80003158 <.LBB1_45>:
;         if (*format == 'X') {
80003158: 93 05 80 05  	addi	a1, zero, 88
8000315c: 63 14 b5 00  	bne	a0, a1, 0x80003164 <.LBB1_45+0xc>
80003160: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80003164: 93 05 40 06  	addi	a1, zero, 100
80003168: 63 08 b5 0e  	beq	a0, a1, 0x80003258 <.LBB1_62+0x8>
8000316c: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80003170: 13 06 90 06  	addi	a2, zero, 105
80003174: 63 02 c5 0e  	beq	a0, a2, 0x80003258 <.LBB1_62+0x8>
80003178: 6f 00 80 0d  	j	0x80003250 <.LBB1_62>

8000317c <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
8000317c: 93 05 60 04  	addi	a1, zero, 70
80003180: 63 14 b5 00  	bne	a0, a1, 0x80003188 <.LBB1_49+0xc>
80003184: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003188: 13 85 79 00  	addi	a0, s3, 7
8000318c: 13 75 85 ff  	andi	a0, a0, -8
80003190: 07 35 05 00  	fld	fa0, 0(a0)
80003194: 93 09 85 00  	addi	s3, a0, 8
80003198: 13 05 09 00  	mv	a0, s2
8000319c: 93 05 0a 00  	mv	a1, s4
800031a0: 13 86 0c 00  	mv	a2, s9
800031a4: 93 86 0a 00  	mv	a3, s5
800031a8: 13 87 0b 00  	mv	a4, s7
800031ac: 93 07 0b 00  	mv	a5, s6
800031b0: 13 08 04 00  	mv	a6, s0
800031b4: 97 10 00 00  	auipc	ra, 1
800031b8: e7 80 80 98  	jalr	-1656(ra)
800031bc: 6f 00 00 7c  	j	0x8000397c <.LBB1_124+0x2fc>

800031c0 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800031c0: 83 25 81 01  	lw	a1, 24(sp)
800031c4: 33 64 b4 00  	or	s0, s0, a1

800031c8 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800031c8: 13 65 25 00  	ori	a0, a0, 2
800031cc: 93 05 70 04  	addi	a1, zero, 71
800031d0: 63 14 b5 00  	bne	a0, a1, 0x800031d8 <.LBB1_53+0x10>
800031d4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800031d8: 13 85 79 00  	addi	a0, s3, 7
800031dc: 13 75 85 ff  	andi	a0, a0, -8
800031e0: 07 35 05 00  	fld	fa0, 0(a0)
800031e4: 93 09 85 00  	addi	s3, a0, 8
800031e8: 13 05 09 00  	mv	a0, s2
800031ec: 93 05 0a 00  	mv	a1, s4
800031f0: 13 86 0c 00  	mv	a2, s9
800031f4: 93 86 0a 00  	mv	a3, s5
800031f8: 13 87 0b 00  	mv	a4, s7
800031fc: 93 07 0b 00  	mv	a5, s6
80003200: 13 08 04 00  	mv	a6, s0
80003204: 97 10 00 00  	auipc	ra, 1
80003208: e7 80 80 01  	jalr	24(ra)
8000320c: 6f 00 00 77  	j	0x8000397c <.LBB1_124+0x2fc>
80003210: 13 64 04 08  	ori	s0, s0, 128
80003214: 13 0d 1d 00  	addi	s10, s10, 1
80003218: 6f f0 df f0  	j	0x80003124 <.LBB1_42>
8000321c: 13 64 04 10  	ori	s0, s0, 256
80003220: 13 0d 1d 00  	addi	s10, s10, 1
80003224: 6f f0 1f f0  	j	0x80003124 <.LBB1_42>

80003228 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003228: 13 8c 1c 00  	addi	s8, s9, 1
8000322c: 13 05 50 02  	addi	a0, zero, 37
80003230: 6f 00 80 00  	j	0x80003238 <.LBB1_59+0x4>

80003234 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80003234: 13 8c 1c 00  	addi	s8, s9, 1
80003238: 93 05 0a 00  	mv	a1, s4
8000323c: 13 86 0c 00  	mv	a2, s9
80003240: 93 86 0a 00  	mv	a3, s5
80003244: e7 00 09 00  	jalr	s2
80003248: 6f 00 80 73  	j	0x80003980 <.LBB1_124+0x300>

8000324c <.LBB1_61>:
8000324c: 93 05 20 00  	addi	a1, zero, 2

80003250 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80003250: 13 74 34 ff  	andi	s0, s0, -13
80003254: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80003258: 93 75 04 40  	andi	a1, s0, 1024
8000325c: 63 84 05 00  	beqz	a1, 0x80003264 <.LBB1_62+0x14>
80003260: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80003264: 93 05 90 06  	addi	a1, zero, 105
80003268: 63 06 b5 00  	beq	a0, a1, 0x80003274 <.LBB1_62+0x24>
8000326c: 93 05 40 06  	addi	a1, zero, 100
80003270: 63 1c b5 12  	bne	a0, a1, 0x800033a8 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80003274: 13 75 04 20  	andi	a0, s0, 512
80003278: 63 16 05 02  	bnez	a0, 0x800032a4 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
8000327c: 13 75 04 10  	andi	a0, s0, 256
80003280: 63 1c 05 14  	bnez	a0, 0x800033d8 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003284: 13 75 04 04  	andi	a0, s0, 64
80003288: 63 18 05 4e  	bnez	a0, 0x80003778 <.LBB1_124+0xf8>
8000328c: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003290: 93 75 04 08  	andi	a1, s0, 128
80003294: 63 84 05 4e  	beqz	a1, 0x8000377c <.LBB1_124+0xfc>
80003298: 13 15 08 01  	slli	a0, a6, 16
8000329c: 13 58 05 41  	srai	a6, a0, 16
800032a0: 6f 00 c0 4d  	j	0x8000377c <.LBB1_124+0xfc>
800032a4: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800032a8: 13 85 79 00  	addi	a0, s3, 7
800032ac: 13 75 85 ff  	andi	a0, a0, -8
800032b0: 83 29 05 00  	lw	s3, 0(a0)
800032b4: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800032b8: 13 65 45 00  	ori	a0, a0, 4
800032bc: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800032c0: 23 24 a1 00  	sw	a0, 8(sp)
800032c4: 33 e5 a9 00  	or	a0, s3, a0
800032c8: 63 14 05 00  	bnez	a0, 0x800032d0 <.LBB1_62+0x80>
800032cc: 13 74 f4 fe  	andi	s0, s0, -17
800032d0: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800032d4: 93 75 04 40  	andi	a1, s0, 1024
800032d8: 93 d5 a5 00  	srli	a1, a1, 10
800032dc: 33 75 b5 00  	and	a0, a0, a1
800032e0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800032e4: 63 14 05 0a  	bnez	a0, 0x8000338c <.LBB1_62+0x13c>
800032e8: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800032ec: 63 da 04 00  	bgez	s1, 0x80003300 <.LBB1_62+0xb0>
800032f0: 33 35 30 01  	snez	a0, s3
800032f4: b3 09 30 41  	neg	s3, s3
800032f8: 33 85 a4 00  	add	a0, s1, a0
800032fc: b3 04 a0 40  	neg	s1, a0
80003300: 13 09 00 00  	mv	s2, zero
80003304: 13 75 04 02  	andi	a0, s0, 32
80003308: 13 45 15 06  	xori	a0, a0, 97
8000330c: 13 05 65 0f  	addi	a0, a0, 246
80003310: 23 2a a1 00  	sw	a0, 20(sp)
80003314: 6f 00 40 02  	j	0x80003338 <.LBB1_62+0xe8>
80003318: 13 06 10 00  	addi	a2, zero, 1
8000331c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003320: 93 36 f9 01  	sltiu	a3, s2, 31
80003324: 33 f6 c6 00  	and	a2, a3, a2
80003328: 13 89 07 00  	mv	s2, a5
8000332c: 93 09 05 00  	mv	s3, a0
80003330: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003334: 63 0c 06 04  	beqz	a2, 0x8000338c <.LBB1_62+0x13c>
;       value /= base;
80003338: 13 85 09 00  	mv	a0, s3
8000333c: 93 85 04 00  	mv	a1, s1
80003340: 13 06 0c 00  	mv	a2, s8
80003344: 93 06 00 00  	mv	a3, zero
80003348: 97 d0 ff ff  	auipc	ra, 1048573
8000334c: e7 80 80 cb  	jalr	-840(ra)
80003350: 33 06 85 03  	mul	a2, a0, s8
80003354: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003358: 13 77 e6 0f  	andi	a4, a2, 254
8000335c: 93 06 00 03  	addi	a3, zero, 48
80003360: 93 07 a0 00  	addi	a5, zero, 10
80003364: 63 64 f7 00  	bltu	a4, a5, 0x8000336c <.LBB1_62+0x11c>
80003368: 83 26 41 01  	lw	a3, 20(sp)
8000336c: 33 86 c6 00  	add	a2, a3, a2
80003370: 93 06 c1 01  	addi	a3, sp, 28
80003374: b3 86 26 01  	add	a3, a3, s2
80003378: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000337c: e3 9e 04 f8  	bnez	s1, 0x80003318 <.LBB1_62+0xc8>
80003380: 33 b6 89 01  	sltu	a2, s3, s8
80003384: 13 46 16 00  	xori	a2, a2, 1
80003388: 6f f0 5f f9  	j	0x8000331c <.LBB1_62+0xcc>
8000338c: 03 25 41 00  	lw	a0, 4(sp)
80003390: 93 09 85 00  	addi	s3, a0, 8
80003394: 03 25 81 00  	lw	a0, 8(sp)
80003398: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000339c: 13 07 c1 01  	addi	a4, sp, 28
800033a0: 03 29 c1 00  	lw	s2, 12(sp)
800033a4: 6f 00 80 47  	j	0x8000381c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
800033a8: 13 75 04 20  	andi	a0, s0, 512
800033ac: 63 12 05 0c  	bnez	a0, 0x80003470 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800033b0: 13 75 04 10  	andi	a0, s0, 256
800033b4: 63 1e 05 46  	bnez	a0, 0x80003830 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800033b8: 13 75 04 04  	andi	a0, s0, 64
800033bc: 63 10 05 50  	bnez	a0, 0x800038bc <.LBB1_124+0x23c>
800033c0: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800033c4: 93 75 04 08  	andi	a1, s0, 128
800033c8: 63 8c 05 4e  	beqz	a1, 0x800038c0 <.LBB1_124+0x240>
800033cc: 83 25 01 01  	lw	a1, 16(sp)
800033d0: 33 75 b5 00  	and	a0, a0, a1
800033d4: 6f 00 c0 4e  	j	0x800038c0 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800033d8: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800033dc: 63 14 08 00  	bnez	a6, 0x800033e4 <.LBB1_62+0x194>
800033e0: 13 74 f4 fe  	andi	s0, s0, -17
800033e4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800033e8: 13 76 04 40  	andi	a2, s0, 1024
800033ec: 13 56 a6 00  	srli	a2, a2, 10
800033f0: b3 f5 c5 00  	and	a1, a1, a2
800033f4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800033f8: 63 9c 05 40  	bnez	a1, 0x80003810 <.LBB1_124+0x190>
800033fc: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003400: 13 56 f8 41  	srai	a2, a6, 31
80003404: b3 06 c8 00  	add	a3, a6, a2
80003408: b3 c6 c6 00  	xor	a3, a3, a2
8000340c: 13 76 04 02  	andi	a2, s0, 32
80003410: 13 46 16 06  	xori	a2, a2, 97
80003414: 93 08 66 0f  	addi	a7, a2, 246
80003418: 6f 00 40 03  	j	0x8000344c <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000341c: 33 05 f6 00  	add	a0, a2, a5
80003420: 93 87 15 00  	addi	a5, a1, 1
80003424: 13 06 c1 01  	addi	a2, sp, 28
80003428: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000342c: b3 b6 86 01  	sltu	a3, a3, s8
80003430: 93 c6 16 00  	xori	a3, a3, 1
80003434: 93 b5 f5 01  	sltiu	a1, a1, 31
80003438: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000343c: 23 00 a6 00  	sb	a0, 0(a2)
80003440: 93 85 07 00  	mv	a1, a5
80003444: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003448: 63 84 04 3c  	beqz	s1, 0x80003810 <.LBB1_124+0x190>
;       value /= base;
8000344c: 33 d7 86 03  	divu	a4, a3, s8
80003450: 33 06 87 03  	mul	a2, a4, s8
80003454: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003458: 13 f5 e7 0f  	andi	a0, a5, 254
8000345c: 13 06 00 03  	addi	a2, zero, 48
80003460: 93 04 a0 00  	addi	s1, zero, 10
80003464: e3 6c 95 fa  	bltu	a0, s1, 0x8000341c <.LBB1_62+0x1cc>
80003468: 13 86 08 00  	mv	a2, a7
8000346c: 6f f0 1f fb  	j	0x8000341c <.LBB1_62+0x1cc>
80003470: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003474: 13 85 79 00  	addi	a0, s3, 7
80003478: 93 75 85 ff  	andi	a1, a0, -8
8000347c: 03 a9 05 00  	lw	s2, 0(a1)
80003480: 13 e5 45 00  	ori	a0, a1, 4
80003484: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80003488: 33 65 39 01  	or	a0, s2, s3
8000348c: 23 24 b1 00  	sw	a1, 8(sp)
80003490: 63 14 05 00  	bnez	a0, 0x80003498 <.LBB1_62+0x248>
80003494: 13 74 f4 fe  	andi	s0, s0, -17
80003498: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000349c: 93 75 04 40  	andi	a1, s0, 1024
800034a0: 93 d5 a5 00  	srli	a1, a1, 10
800034a4: 33 75 b5 00  	and	a0, a0, a1
800034a8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800034ac: 63 18 05 08  	bnez	a0, 0x8000353c <.LBB1_62+0x2ec>
800034b0: 93 04 00 00  	mv	s1, zero
800034b4: 13 75 04 02  	andi	a0, s0, 32
800034b8: 13 45 15 06  	xori	a0, a0, 97
800034bc: 13 05 65 0f  	addi	a0, a0, 246
800034c0: 23 2a a1 00  	sw	a0, 20(sp)
800034c4: 6f 00 40 02  	j	0x800034e8 <.LBB1_62+0x298>
800034c8: 13 06 10 00  	addi	a2, zero, 1
800034cc: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034d0: 93 b6 f4 01  	sltiu	a3, s1, 31
800034d4: 33 f6 c6 00  	and	a2, a3, a2
800034d8: 93 84 07 00  	mv	s1, a5
800034dc: 13 09 05 00  	mv	s2, a0
800034e0: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034e4: 63 0c 06 04  	beqz	a2, 0x8000353c <.LBB1_62+0x2ec>
;       value /= base;
800034e8: 13 05 09 00  	mv	a0, s2
800034ec: 93 85 09 00  	mv	a1, s3
800034f0: 13 06 0c 00  	mv	a2, s8
800034f4: 93 06 00 00  	mv	a3, zero
800034f8: 97 d0 ff ff  	auipc	ra, 1048573
800034fc: e7 80 80 b0  	jalr	-1272(ra)
80003500: 33 06 85 03  	mul	a2, a0, s8
80003504: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003508: 13 77 e6 0f  	andi	a4, a2, 254
8000350c: 93 06 00 03  	addi	a3, zero, 48
80003510: 93 07 a0 00  	addi	a5, zero, 10
80003514: 63 64 f7 00  	bltu	a4, a5, 0x8000351c <.LBB1_62+0x2cc>
80003518: 83 26 41 01  	lw	a3, 20(sp)
8000351c: 33 86 c6 00  	add	a2, a3, a2
80003520: 93 06 c1 01  	addi	a3, sp, 28
80003524: b3 86 96 00  	add	a3, a3, s1
80003528: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000352c: e3 9e 09 f8  	bnez	s3, 0x800034c8 <.LBB1_62+0x278>
80003530: 33 36 89 01  	sltu	a2, s2, s8
80003534: 13 46 16 00  	xori	a2, a2, 1
80003538: 6f f0 5f f9  	j	0x800034cc <.LBB1_62+0x27c>
8000353c: 03 25 81 00  	lw	a0, 8(sp)
80003540: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003544: 13 07 c1 01  	addi	a4, sp, 28
80003548: 03 29 c1 00  	lw	s2, 12(sp)
8000354c: 6f 00 40 40  	j	0x80003950 <.LBB1_124+0x2d0>

80003550 <.LBB1_108>:
80003550: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003554: 13 79 24 00  	andi	s2, s0, 2
80003558: 93 04 10 00  	addi	s1, zero, 1
8000355c: 63 1e 09 02  	bnez	s2, 0x80003598 <.LBB1_108+0x48>
80003560: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003564: 63 6a 9b 02  	bltu	s6, s1, 0x80003598 <.LBB1_108+0x48>
80003568: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
8000356c: 13 0c fb ff  	addi	s8, s6, -1
80003570: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003574: 33 86 8c 00  	add	a2, s9, s0
80003578: 13 05 00 02  	addi	a0, zero, 32
8000357c: 93 05 0a 00  	mv	a1, s4
80003580: 93 86 0a 00  	mv	a3, s5
80003584: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003588: 13 04 14 00  	addi	s0, s0, 1
8000358c: e3 14 8c fe  	bne	s8, s0, 0x80003574 <.LBB1_108+0x24>
80003590: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003594: b3 8c 8c 00  	add	s9, s9, s0
80003598: 03 c5 09 00  	lbu	a0, 0(s3)
8000359c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800035a0: 93 89 49 00  	addi	s3, s3, 4
800035a4: 13 8c 1c 00  	addi	s8, s9, 1
800035a8: 93 05 0a 00  	mv	a1, s4
800035ac: 13 86 0c 00  	mv	a2, s9
800035b0: 93 86 0a 00  	mv	a3, s5
800035b4: 13 89 0b 00  	mv	s2, s7
800035b8: e7 80 0b 00  	jalr	s7
800035bc: 33 b5 64 01  	sltu	a0, s1, s6
800035c0: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800035c4: 33 65 a4 00  	or	a0, s0, a0
800035c8: 63 1c 05 3a  	bnez	a0, 0x80003980 <.LBB1_124+0x300>
;           while (l++ < width) {
800035cc: 33 04 9b 40  	sub	s0, s6, s1
800035d0: 93 0b e0 02  	addi	s7, zero, 46
800035d4: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800035d8: 13 0c 1c 00  	addi	s8, s8, 1
800035dc: 13 05 00 02  	addi	a0, zero, 32
800035e0: 93 05 0a 00  	mv	a1, s4
800035e4: 93 86 0a 00  	mv	a3, s5
800035e8: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800035ec: 13 04 f4 ff  	addi	s0, s0, -1
800035f0: e3 12 04 fe  	bnez	s0, 0x800035d4 <.LBB1_108+0x84>
800035f4: 13 0b 50 02  	addi	s6, zero, 37
800035f8: 13 04 1d 00  	addi	s0, s10, 1
800035fc: 6f f0 df 91  	j	0x80002f18 <.LBB1_183+0x30>

80003600 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003600: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003604: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003608: 63 14 05 00  	bnez	a0, 0x80003610 <.LBB1_117+0x10>
8000360c: 93 fe fe fe  	andi	t4, t4, -17
80003610: 93 04 a0 00  	addi	s1, zero, 10
80003614: 13 04 f0 00  	addi	s0, zero, 15
80003618: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000361c: 13 f6 0e 40  	andi	a2, t4, 1024
80003620: 13 56 a6 00  	srli	a2, a2, 10
80003624: b3 f5 c5 00  	and	a1, a1, a2
80003628: 93 07 00 00  	mv	a5, zero
8000362c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80003630: 63 98 05 10  	bnez	a1, 0x80003740 <.LBB1_124+0xc0>
80003634: 93 05 00 00  	mv	a1, zero
80003638: 6f 00 40 03  	j	0x8000366c <.LBB1_117+0x6c>
8000363c: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003640: 33 06 d6 00  	add	a2, a2, a3
80003644: 93 87 15 00  	addi	a5, a1, 1
80003648: 93 06 c1 01  	addi	a3, sp, 28
8000364c: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003650: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003654: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003658: 93 b5 f5 01  	sltiu	a1, a1, 31
8000365c: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003660: 23 80 c6 00  	sb	a2, 0(a3)
80003664: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003668: 63 0c 07 0c  	beqz	a4, 0x80003740 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000366c: 93 76 e5 00  	andi	a3, a0, 14
80003670: 13 06 00 03  	addi	a2, zero, 48
80003674: e3 e4 96 fc  	bltu	a3, s1, 0x8000363c <.LBB1_117+0x3c>
80003678: 13 06 70 03  	addi	a2, zero, 55
8000367c: 6f f0 1f fc  	j	0x8000363c <.LBB1_117+0x3c>

80003680 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80003680: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003684: 03 c5 07 00  	lbu	a0, 0(a5)
80003688: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
8000368c: 63 0c 05 02  	beqz	a0, 0x800036c4 <.LBB1_124+0x44>
80003690: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003694: 63 84 0b 00  	beqz	s7, 0x8000369c <.LBB1_124+0x1c>
80003698: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
8000369c: 93 85 f5 ff  	addi	a1, a1, -1
800036a0: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800036a4: 03 c7 16 00  	lbu	a4, 1(a3)
800036a8: 13 86 16 00  	addi	a2, a3, 1
800036ac: b3 36 e0 00  	snez	a3, a4
800036b0: 33 37 b0 00  	snez	a4, a1
800036b4: 33 77 d7 00  	and	a4, a4, a3
800036b8: 93 85 f5 ff  	addi	a1, a1, -1
800036bc: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800036c0: e3 12 07 fe  	bnez	a4, 0x800036a4 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800036c4: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800036c8: 93 75 04 40  	andi	a1, s0, 1024
800036cc: 93 b4 15 00  	seqz	s1, a1
800036d0: 23 2a c1 00  	sw	a2, 20(sp)
800036d4: b3 35 76 01  	sltu	a1, a2, s7
800036d8: b3 e5 b4 00  	or	a1, s1, a1
800036dc: 63 94 05 00  	bnez	a1, 0x800036e4 <.LBB1_124+0x64>
800036e0: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
800036e4: 93 75 24 00  	andi	a1, s0, 2
800036e8: 23 26 b1 00  	sw	a1, 12(sp)
800036ec: 63 96 05 2a  	bnez	a1, 0x80003998 <.LBB1_124+0x318>
800036f0: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
800036f4: 63 fe 65 29  	bgeu	a1, s6, 0x80003990 <.LBB1_124+0x310>
800036f8: 23 24 f1 00  	sw	a5, 8(sp)
800036fc: 13 04 00 00  	mv	s0, zero
80003700: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003704: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003708: 33 86 8c 00  	add	a2, s9, s0
8000370c: 13 05 00 02  	addi	a0, zero, 32
80003710: 93 05 0a 00  	mv	a1, s4
80003714: 93 86 0a 00  	mv	a3, s5
80003718: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
8000371c: 13 04 14 00  	addi	s0, s0, 1
80003720: e3 14 89 fe  	bne	s2, s0, 0x80003708 <.LBB1_124+0x88>
80003724: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003728: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
8000372c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003730: 23 2a b1 00  	sw	a1, 20(sp)
80003734: b3 8c 8c 00  	add	s9, s9, s0
80003738: 13 09 0c 00  	mv	s2, s8
8000373c: 6f 00 c0 25  	j	0x80003998 <.LBB1_124+0x318>
80003740: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003744: 13 07 c1 01  	addi	a4, sp, 28
80003748: 93 08 00 01  	addi	a7, zero, 16
8000374c: 13 0e 80 00  	addi	t3, zero, 8
80003750: 13 05 09 00  	mv	a0, s2
80003754: 93 05 0a 00  	mv	a1, s4
80003758: 13 86 0c 00  	mv	a2, s9
8000375c: 93 86 0a 00  	mv	a3, s5
80003760: 13 08 00 00  	mv	a6, zero
80003764: 93 83 0b 00  	mv	t2, s7
80003768: 97 10 00 00  	auipc	ra, 1
8000376c: e7 80 00 fa  	jalr	-96(ra)
80003770: 13 0c 05 00  	mv	s8, a0
80003774: 6f 00 00 21  	j	0x80003984 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003778: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
8000377c: 63 14 08 00  	bnez	a6, 0x80003784 <.LBB1_124+0x104>
80003780: 13 74 f4 fe  	andi	s0, s0, -17
80003784: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003788: 13 76 04 40  	andi	a2, s0, 1024
8000378c: 13 56 a6 00  	srli	a2, a2, 10
80003790: b3 f5 c5 00  	and	a1, a1, a2
80003794: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003798: 63 9c 05 06  	bnez	a1, 0x80003810 <.LBB1_124+0x190>
8000379c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800037a0: 13 56 f8 41  	srai	a2, a6, 31
800037a4: b3 06 c8 00  	add	a3, a6, a2
800037a8: b3 c6 c6 00  	xor	a3, a3, a2
800037ac: 13 76 04 02  	andi	a2, s0, 32
800037b0: 13 46 16 06  	xori	a2, a2, 97
800037b4: 93 08 66 0f  	addi	a7, a2, 246
800037b8: 6f 00 40 03  	j	0x800037ec <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037bc: 33 05 f6 00  	add	a0, a2, a5
800037c0: 93 87 15 00  	addi	a5, a1, 1
800037c4: 13 06 c1 01  	addi	a2, sp, 28
800037c8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037cc: b3 b6 86 01  	sltu	a3, a3, s8
800037d0: 93 c6 16 00  	xori	a3, a3, 1
800037d4: 93 b5 f5 01  	sltiu	a1, a1, 31
800037d8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037dc: 23 00 a6 00  	sb	a0, 0(a2)
800037e0: 93 85 07 00  	mv	a1, a5
800037e4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037e8: 63 84 04 02  	beqz	s1, 0x80003810 <.LBB1_124+0x190>
;       value /= base;
800037ec: 33 d7 86 03  	divu	a4, a3, s8
800037f0: 33 06 87 03  	mul	a2, a4, s8
800037f4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037f8: 13 f5 e7 0f  	andi	a0, a5, 254
800037fc: 13 06 00 03  	addi	a2, zero, 48
80003800: 93 04 a0 00  	addi	s1, zero, 10
80003804: e3 6c 95 fa  	bltu	a0, s1, 0x800037bc <.LBB1_124+0x13c>
80003808: 13 86 08 00  	mv	a2, a7
8000380c: 6f f0 1f fb  	j	0x800037bc <.LBB1_124+0x13c>
80003810: 93 89 49 00  	addi	s3, s3, 4
80003814: 13 58 f8 01  	srli	a6, a6, 31
80003818: 13 07 c1 01  	addi	a4, sp, 28
8000381c: 13 05 09 00  	mv	a0, s2
80003820: 93 05 0a 00  	mv	a1, s4
80003824: 13 86 0c 00  	mv	a2, s9
80003828: 93 86 0a 00  	mv	a3, s5
8000382c: 6f 00 80 13  	j	0x80003964 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80003830: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003834: 63 14 05 00  	bnez	a0, 0x8000383c <.LBB1_124+0x1bc>
80003838: 13 74 f4 fe  	andi	s0, s0, -17
8000383c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003840: 13 76 04 40  	andi	a2, s0, 1024
80003844: 13 56 a6 00  	srli	a2, a2, 10
80003848: b3 f5 c5 00  	and	a1, a1, a2
8000384c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003850: 63 9c 05 0e  	bnez	a1, 0x80003948 <.LBB1_124+0x2c8>
80003854: 13 06 00 00  	mv	a2, zero
80003858: 93 75 04 02  	andi	a1, s0, 32
8000385c: 93 c5 15 06  	xori	a1, a1, 97
80003860: 13 88 65 0f  	addi	a6, a1, 246
80003864: 6f 00 40 03  	j	0x80003898 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003868: 33 87 e7 00  	add	a4, a5, a4
8000386c: 93 07 16 00  	addi	a5, a2, 1
80003870: 93 05 c1 01  	addi	a1, sp, 28
80003874: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003878: 33 35 85 01  	sltu	a0, a0, s8
8000387c: 13 45 15 00  	xori	a0, a0, 1
80003880: 13 36 f6 01  	sltiu	a2, a2, 31
80003884: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003888: 23 80 e4 00  	sb	a4, 0(s1)
8000388c: 13 86 07 00  	mv	a2, a5
80003890: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003894: 63 8a 05 0a  	beqz	a1, 0x80003948 <.LBB1_124+0x2c8>
;       value /= base;
80003898: b3 56 85 03  	divu	a3, a0, s8
8000389c: 33 87 86 03  	mul	a4, a3, s8
800038a0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800038a4: 93 74 e7 0f  	andi	s1, a4, 254
800038a8: 93 07 00 03  	addi	a5, zero, 48
800038ac: 93 05 a0 00  	addi	a1, zero, 10
800038b0: e3 ec b4 fa  	bltu	s1, a1, 0x80003868 <.LBB1_124+0x1e8>
800038b4: 93 07 08 00  	mv	a5, a6
800038b8: 6f f0 1f fb  	j	0x80003868 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800038bc: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800038c0: 63 14 05 00  	bnez	a0, 0x800038c8 <.LBB1_124+0x248>
800038c4: 13 74 f4 fe  	andi	s0, s0, -17
800038c8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800038cc: 13 76 04 40  	andi	a2, s0, 1024
800038d0: 13 56 a6 00  	srli	a2, a2, 10
800038d4: b3 f5 c5 00  	and	a1, a1, a2
800038d8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800038dc: 63 96 05 06  	bnez	a1, 0x80003948 <.LBB1_124+0x2c8>
800038e0: 13 06 00 00  	mv	a2, zero
800038e4: 93 75 04 02  	andi	a1, s0, 32
800038e8: 93 c5 15 06  	xori	a1, a1, 97
800038ec: 13 88 65 0f  	addi	a6, a1, 246
800038f0: 6f 00 40 03  	j	0x80003924 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800038f4: 33 87 e7 00  	add	a4, a5, a4
800038f8: 93 07 16 00  	addi	a5, a2, 1
800038fc: 93 05 c1 01  	addi	a1, sp, 28
80003900: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003904: 33 35 85 01  	sltu	a0, a0, s8
80003908: 13 45 15 00  	xori	a0, a0, 1
8000390c: 13 36 f6 01  	sltiu	a2, a2, 31
80003910: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003914: 23 80 e4 00  	sb	a4, 0(s1)
80003918: 13 86 07 00  	mv	a2, a5
8000391c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003920: 63 84 05 02  	beqz	a1, 0x80003948 <.LBB1_124+0x2c8>
;       value /= base;
80003924: b3 56 85 03  	divu	a3, a0, s8
80003928: 33 87 86 03  	mul	a4, a3, s8
8000392c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003930: 93 74 e7 0f  	andi	s1, a4, 254
80003934: 93 07 00 03  	addi	a5, zero, 48
80003938: 93 05 a0 00  	addi	a1, zero, 10
8000393c: e3 ec b4 fa  	bltu	s1, a1, 0x800038f4 <.LBB1_124+0x274>
80003940: 93 07 08 00  	mv	a5, a6
80003944: 6f f0 1f fb  	j	0x800038f4 <.LBB1_124+0x274>
80003948: 93 89 49 00  	addi	s3, s3, 4
8000394c: 13 07 c1 01  	addi	a4, sp, 28
80003950: 13 05 09 00  	mv	a0, s2
80003954: 93 05 0a 00  	mv	a1, s4
80003958: 13 86 0c 00  	mv	a2, s9
8000395c: 93 86 0a 00  	mv	a3, s5
80003960: 13 08 00 00  	mv	a6, zero
80003964: 93 08 0c 00  	mv	a7, s8
80003968: 93 83 0b 00  	mv	t2, s7
8000396c: 13 0e 0b 00  	mv	t3, s6
80003970: 93 0e 04 00  	mv	t4, s0
80003974: 97 10 00 00  	auipc	ra, 1
80003978: e7 80 40 d9  	jalr	-620(ra)
8000397c: 13 0c 05 00  	mv	s8, a0
80003980: 13 0b 50 02  	addi	s6, zero, 37
80003984: 93 0b e0 02  	addi	s7, zero, 46
80003988: 13 04 1d 00  	addi	s0, s10, 1
8000398c: 6f f0 cf d8  	j	0x80002f18 <.LBB1_183+0x30>
80003990: 93 85 15 00  	addi	a1, a1, 1
80003994: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003998: 63 00 05 04  	beqz	a0, 0x800039d8 <.LBB1_124+0x358>
8000399c: 13 84 17 00  	addi	s0, a5, 1
800039a0: 6f 00 00 03  	j	0x800039d0 <.LBB1_124+0x350>
800039a4: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800039a8: 13 8c 1c 00  	addi	s8, s9, 1
800039ac: 13 75 f5 0f  	andi	a0, a0, 255
800039b0: 93 05 0a 00  	mv	a1, s4
800039b4: 13 86 0c 00  	mv	a2, s9
800039b8: 93 86 0a 00  	mv	a3, s5
800039bc: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800039c0: 03 45 04 00  	lbu	a0, 0(s0)
800039c4: 13 04 14 00  	addi	s0, s0, 1
800039c8: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800039cc: 63 08 05 00  	beqz	a0, 0x800039dc <.LBB1_124+0x35c>
800039d0: e3 9c 04 fc  	bnez	s1, 0x800039a8 <.LBB1_124+0x328>
800039d4: e3 98 0b fc  	bnez	s7, 0x800039a4 <.LBB1_124+0x324>
800039d8: 13 8c 0c 00  	mv	s8, s9
800039dc: 03 25 c1 00  	lw	a0, 12(sp)
800039e0: 13 35 15 00  	seqz	a0, a0
800039e4: 03 26 41 01  	lw	a2, 20(sp)
800039e8: b3 35 66 01  	sltu	a1, a2, s6
800039ec: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800039f0: 33 65 b5 00  	or	a0, a0, a1
800039f4: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
800039f8: e3 14 05 f8  	bnez	a0, 0x80003980 <.LBB1_124+0x300>
;           while (l++ < width) {
800039fc: 33 04 cb 40  	sub	s0, s6, a2
80003a00: 93 0b e0 02  	addi	s7, zero, 46
80003a04: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003a08: 13 0c 1c 00  	addi	s8, s8, 1
80003a0c: 13 05 00 02  	addi	a0, zero, 32
80003a10: 93 05 0a 00  	mv	a1, s4
80003a14: 93 86 0a 00  	mv	a3, s5
80003a18: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003a1c: 13 04 f4 ff  	addi	s0, s0, -1
80003a20: e3 12 04 fe  	bnez	s0, 0x80003a04 <.LBB1_124+0x384>
80003a24: 13 0b 50 02  	addi	s6, zero, 37
80003a28: 13 04 1d 00  	addi	s0, s10, 1
80003a2c: 6f f0 cf ce  	j	0x80002f18 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003a30: 13 86 0c 00  	mv	a2, s9
80003a34: 63 e4 5c 01  	bltu	s9, s5, 0x80003a3c <.LBB1_124+0x3bc>
80003a38: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003a3c: 13 05 00 00  	mv	a0, zero
80003a40: 93 05 0a 00  	mv	a1, s4
80003a44: 93 86 0a 00  	mv	a3, s5
80003a48: e7 00 09 00  	jalr	s2
;   return (int)idx;
80003a4c: 13 85 0c 00  	mv	a0, s9
80003a50: 83 2d c1 03  	lw	s11, 60(sp)
80003a54: 03 2d 01 04  	lw	s10, 64(sp)
80003a58: 83 2c 41 04  	lw	s9, 68(sp)
80003a5c: 03 2c 81 04  	lw	s8, 72(sp)
80003a60: 83 2b c1 04  	lw	s7, 76(sp)
80003a64: 03 2b 01 05  	lw	s6, 80(sp)
80003a68: 83 2a 41 05  	lw	s5, 84(sp)
80003a6c: 03 2a 81 05  	lw	s4, 88(sp)
80003a70: 83 29 c1 05  	lw	s3, 92(sp)
80003a74: 03 29 01 06  	lw	s2, 96(sp)
80003a78: 83 24 41 06  	lw	s1, 100(sp)
80003a7c: 03 24 81 06  	lw	s0, 104(sp)
80003a80: 83 20 c1 06  	lw	ra, 108(sp)
80003a84: 13 01 01 07  	addi	sp, sp, 112
80003a88: 67 80 00 00  	ret

80003a8c <_out_char.llvm.11632292163828655644>:
;   if (character) {
80003a8c: 63 04 05 0a  	beqz	a0, 0x80003b34 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003a90: f3 25 40 f1  	csrr	a1, mhartid
80003a94: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80003a98: 33 86 c5 02  	mul	a2, a1, a2

80003a9c <.LBB2_6>:
80003a9c: 97 26 00 00  	auipc	a3, 2
80003aa0: 93 86 86 a6  	addi	a3, a3, -1432
80003aa4: b3 05 d6 00  	add	a1, a2, a3
80003aa8: 03 a7 05 00  	lw	a4, 0(a1)
80003aac: 93 07 17 00  	addi	a5, a4, 1
80003ab0: 23 a0 f5 00  	sw	a5, 0(a1)
80003ab4: 33 87 e5 00  	add	a4, a1, a4
80003ab8: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80003abc: 03 a7 05 00  	lw	a4, 0(a1)
80003ac0: 13 07 47 c0  	addi	a4, a4, -1020
80003ac4: 33 37 e0 00  	snez	a4, a4
80003ac8: 13 05 65 ff  	addi	a0, a0, -10
80003acc: 33 35 a0 00  	snez	a0, a0
80003ad0: 33 75 e5 00  	and	a0, a0, a4
80003ad4: 63 10 05 06  	bnez	a0, 0x80003b34 <.LBB2_8+0x18>
80003ad8: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80003adc: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003ae0: 23 26 05 00  	sw	zero, 12(a0)
80003ae4: 93 06 00 04  	addi	a3, zero, 64
80003ae8: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80003aec: 23 2a 05 00  	sw	zero, 20(a0)
80003af0: 93 06 10 00  	addi	a3, zero, 1
80003af4: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80003af8: 23 2e 05 00  	sw	zero, 28(a0)
80003afc: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003b00: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003b04: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003b08: 23 22 05 02  	sw	zero, 36(a0)
80003b0c: 23 20 c5 02  	sw	a2, 32(a0)

80003b10 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80003b10: 17 25 00 00  	auipc	a0, 2
80003b14: 13 05 05 8b  	addi	a0, a0, -1872
80003b18: 23 20 d5 00  	sw	a3, 0(a0)

80003b1c <.LBB2_8>:
80003b1c: 17 25 00 00  	auipc	a0, 2
80003b20: 13 05 45 8e  	addi	a0, a0, -1820
;         while (fromhost == 0)
80003b24: 03 26 05 00  	lw	a2, 0(a0)
80003b28: e3 0e 06 fe  	beqz	a2, 0x80003b24 <.LBB2_8+0x8>
;         fromhost = 0;
80003b2c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80003b30: 23 a0 05 00  	sw	zero, 0(a1)
; }
80003b34: 67 80 00 00  	ret

80003b38 <_out_null>:
; }
80003b38: 67 80 00 00  	ret

80003b3c <_ftoa>:
; {
80003b3c: 13 01 01 f9  	addi	sp, sp, -112
80003b40: 23 26 11 06  	sw	ra, 108(sp)
80003b44: 23 24 81 06  	sw	s0, 104(sp)
80003b48: 23 22 91 06  	sw	s1, 100(sp)
80003b4c: 23 20 21 07  	sw	s2, 96(sp)
80003b50: 23 2e 31 05  	sw	s3, 92(sp)
80003b54: 23 2c 41 05  	sw	s4, 88(sp)
80003b58: 23 2a 51 05  	sw	s5, 84(sp)
80003b5c: 23 28 61 05  	sw	s6, 80(sp)
80003b60: 23 26 71 05  	sw	s7, 76(sp)
80003b64: 23 24 81 05  	sw	s8, 72(sp)
80003b68: 23 22 91 05  	sw	s9, 68(sp)
80003b6c: 23 20 a1 05  	sw	s10, 64(sp)
80003b70: 27 3c 81 02  	fsd	fs0, 56(sp)
80003b74: 27 38 91 02  	fsd	fs1, 48(sp)
80003b78: 27 34 21 03  	fsd	fs2, 40(sp)

80003b7c <.LBB4_83>:
80003b7c: 97 24 00 00  	auipc	s1, 2
80003b80: 93 84 c4 8d  	addi	s1, s1, -1828
80003b84: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80003b88: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80003b8c: 93 0a 08 00  	mv	s5, a6
80003b90: 13 89 07 00  	mv	s2, a5
80003b94: 93 89 06 00  	mv	s3, a3
80003b98: 13 0a 06 00  	mv	s4, a2
80003b9c: 13 8b 05 00  	mv	s6, a1
80003ba0: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80003ba4: 63 98 04 0e  	bnez	s1, 0x80003c94 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003ba8: 13 f5 2a 00  	andi	a0, s5, 2
80003bac: 93 f5 3a 00  	andi	a1, s5, 3
80003bb0: b3 35 b0 00  	snez	a1, a1
80003bb4: 13 36 59 00  	sltiu	a2, s2, 5
80003bb8: b3 65 b6 00  	or	a1, a2, a1
80003bbc: 93 5c 15 00  	srli	s9, a0, 1
80003bc0: 13 04 0a 00  	mv	s0, s4
80003bc4: 63 96 05 02  	bnez	a1, 0x80003bf0 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80003bc8: 93 04 c9 ff  	addi	s1, s2, -4
80003bcc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003bd0: 13 04 16 00  	addi	s0, a2, 1
80003bd4: 13 05 00 02  	addi	a0, zero, 32
80003bd8: 93 05 0b 00  	mv	a1, s6
80003bdc: 93 86 09 00  	mv	a3, s3
80003be0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003be4: 93 84 f4 ff  	addi	s1, s1, -1
80003be8: 13 06 04 00  	mv	a2, s0
80003bec: e3 92 04 fe  	bnez	s1, 0x80003bd0 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80003bf0: 93 04 14 00  	addi	s1, s0, 1
80003bf4: 13 05 d0 02  	addi	a0, zero, 45
80003bf8: 93 05 0b 00  	mv	a1, s6
80003bfc: 13 06 04 00  	mv	a2, s0
80003c00: 93 86 09 00  	mv	a3, s3
80003c04: e7 80 0b 00  	jalr	s7
80003c08: 93 0a 24 00  	addi	s5, s0, 2
80003c0c: 13 05 90 06  	addi	a0, zero, 105
80003c10: 93 05 0b 00  	mv	a1, s6
80003c14: 13 86 04 00  	mv	a2, s1
80003c18: 93 86 09 00  	mv	a3, s3
80003c1c: e7 80 0b 00  	jalr	s7
80003c20: 13 0c 34 00  	addi	s8, s0, 3
80003c24: 13 05 e0 06  	addi	a0, zero, 110
80003c28: 93 05 0b 00  	mv	a1, s6
80003c2c: 13 86 0a 00  	mv	a2, s5
80003c30: 93 86 09 00  	mv	a3, s3
80003c34: e7 80 0b 00  	jalr	s7
80003c38: 93 04 44 00  	addi	s1, s0, 4
80003c3c: 13 05 60 06  	addi	a0, zero, 102
80003c40: 93 05 0b 00  	mv	a1, s6
80003c44: 13 06 0c 00  	mv	a2, s8
80003c48: 93 86 09 00  	mv	a3, s3
80003c4c: e7 80 0b 00  	jalr	s7
80003c50: 33 85 44 41  	sub	a0, s1, s4
80003c54: 33 35 25 01  	sltu	a0, a0, s2
80003c58: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003c5c: 93 c5 1c 00  	xori	a1, s9, 1
80003c60: 33 e5 a5 00  	or	a0, a1, a0
80003c64: 63 16 05 56  	bnez	a0, 0x800041d0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003c68: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003c6c: 13 84 14 00  	addi	s0, s1, 1
80003c70: 13 05 00 02  	addi	a0, zero, 32
80003c74: 93 05 0b 00  	mv	a1, s6
80003c78: 13 86 04 00  	mv	a2, s1
80003c7c: 93 86 09 00  	mv	a3, s3
80003c80: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003c84: 33 05 8a 00  	add	a0, s4, s0
80003c88: 93 04 04 00  	mv	s1, s0
80003c8c: e3 60 25 ff  	bltu	a0, s2, 0x80003c6c <.LBB4_83+0xf0>
80003c90: 6f 00 40 54  	j	0x800041d4 <.LBB4_90+0x378>
80003c94: 53 04 a5 22  	fmv.d	fs0, fa0

80003c98 <.LBB4_84>:
80003c98: 17 15 00 00  	auipc	a0, 1
80003c9c: 13 05 85 7c  	addi	a0, a0, 1992
80003ca0: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80003ca4: 53 05 05 a2  	fle.d	a0, fa0, ft0
80003ca8: 63 1e 05 00  	bnez	a0, 0x80003cc4 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003cac: 93 f5 4a 00  	andi	a1, s5, 4
80003cb0: 13 b5 15 00  	seqz	a0, a1
80003cb4: 63 82 05 06  	beqz	a1, 0x80003d18 <.LBB4_88>

80003cb8 <.LBB4_85>:
80003cb8: 17 1c 00 00  	auipc	s8, 1
80003cbc: 13 0c 8c 4b  	addi	s8, s8, 1208
80003cc0: 6f 00 00 06  	j	0x80003d20 <.LBB4_88+0x8>

80003cc4 <.LBB4_86>:
80003cc4: 17 15 00 00  	auipc	a0, 1
80003cc8: 13 05 45 7a  	addi	a0, a0, 1956
80003ccc: 07 30 05 00  	fld	ft0, 0(a0)

80003cd0 <.LBB4_87>:
80003cd0: 17 15 00 00  	auipc	a0, 1
80003cd4: 13 05 05 7a  	addi	a0, a0, 1952
80003cd8: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80003cdc: 53 05 04 a2  	fle.d	a0, fs0, ft0
80003ce0: d3 85 80 a2  	fle.d	a1, ft1, fs0
80003ce4: 33 75 b5 00  	and	a0, a0, a1
80003ce8: 63 1e 05 0e  	bnez	a0, 0x80003de4 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80003cec: 13 85 0b 00  	mv	a0, s7
80003cf0: 93 05 0b 00  	mv	a1, s6
80003cf4: 13 06 0a 00  	mv	a2, s4
80003cf8: 93 86 09 00  	mv	a3, s3
80003cfc: 53 05 84 22  	fmv.d	fa0, fs0
80003d00: 93 07 09 00  	mv	a5, s2
80003d04: 13 88 0a 00  	mv	a6, s5
80003d08: 97 00 00 00  	auipc	ra, 0
80003d0c: e7 80 40 51  	jalr	1300(ra)
80003d10: 13 04 05 00  	mv	s0, a0
80003d14: 6f 00 00 4c  	j	0x800041d4 <.LBB4_90+0x378>

80003d18 <.LBB4_88>:
80003d18: 17 1c 00 00  	auipc	s8, 1
80003d1c: 13 0c 7c 47  	addi	s8, s8, 1143
80003d20: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003d24: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003d28: 13 f5 3a 00  	andi	a0, s5, 3
80003d2c: 33 35 a0 00  	snez	a0, a0
80003d30: b3 b5 2c 01  	sltu	a1, s9, s2
80003d34: 93 c5 15 00  	xori	a1, a1, 1
80003d38: 33 65 b5 00  	or	a0, a0, a1
80003d3c: 93 fa 2a 00  	andi	s5, s5, 2
80003d40: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003d44: 63 16 05 02  	bnez	a0, 0x80003d70 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80003d48: 33 04 99 41  	sub	s0, s2, s9
80003d4c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003d50: 93 04 16 00  	addi	s1, a2, 1
80003d54: 13 05 00 02  	addi	a0, zero, 32
80003d58: 93 05 0b 00  	mv	a1, s6
80003d5c: 93 86 09 00  	mv	a3, s3
80003d60: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003d64: 13 04 f4 ff  	addi	s0, s0, -1
80003d68: 13 86 04 00  	mv	a2, s1
80003d6c: e3 12 04 fe  	bnez	s0, 0x80003d50 <.LBB4_88+0x38>
80003d70: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003d74: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003d78: 33 05 9c 01  	add	a0, s8, s9
80003d7c: 03 45 05 00  	lbu	a0, 0(a0)
80003d80: 13 86 04 00  	mv	a2, s1
80003d84: 13 84 fc ff  	addi	s0, s9, -1
80003d88: 93 84 14 00  	addi	s1, s1, 1
80003d8c: 93 05 0b 00  	mv	a1, s6
80003d90: 93 86 09 00  	mv	a3, s3
80003d94: e7 80 0b 00  	jalr	s7
80003d98: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80003d9c: e3 1e 04 fc  	bnez	s0, 0x80003d78 <.LBB4_88+0x60>
80003da0: 33 85 44 41  	sub	a0, s1, s4
80003da4: 33 35 25 01  	sltu	a0, a0, s2
80003da8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003dac: 93 c5 1a 00  	xori	a1, s5, 1
80003db0: 33 e5 a5 00  	or	a0, a1, a0
80003db4: 63 1e 05 40  	bnez	a0, 0x800041d0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003db8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003dbc: 13 84 14 00  	addi	s0, s1, 1
80003dc0: 13 05 00 02  	addi	a0, zero, 32
80003dc4: 93 05 0b 00  	mv	a1, s6
80003dc8: 13 86 04 00  	mv	a2, s1
80003dcc: 93 86 09 00  	mv	a3, s3
80003dd0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003dd4: 33 05 8a 00  	add	a0, s4, s0
80003dd8: 93 04 04 00  	mv	s1, s0
80003ddc: e3 60 25 ff  	bltu	a0, s2, 0x80003dbc <.LBB4_88+0xa4>
80003de0: 6f 00 40 3f  	j	0x800041d4 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80003de4: 13 f5 0a 40  	andi	a0, s5, 1024
80003de8: 13 0c 60 00  	addi	s8, zero, 6
80003dec: 63 04 05 00  	beqz	a0, 0x80003df4 <.LBB4_88+0xdc>
80003df0: 13 0c 07 00  	mv	s8, a4
80003df4: 13 05 a0 00  	addi	a0, zero, 10
80003df8: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003dfc: 63 6c ac 02  	bltu	s8, a0, 0x80003e34 <.LBB4_88+0x11c>
80003e00: 93 04 6c ff  	addi	s1, s8, -10
80003e04: 13 05 f0 01  	addi	a0, zero, 31
80003e08: 63 e4 a4 00  	bltu	s1, a0, 0x80003e10 <.LBB4_88+0xf8>
80003e0c: 93 04 f0 01  	addi	s1, zero, 31
80003e10: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80003e14: 13 05 81 00  	addi	a0, sp, 8
80003e18: 93 05 00 03  	addi	a1, zero, 48
80003e1c: 13 06 04 00  	mv	a2, s0
80003e20: 97 c0 ff ff  	auipc	ra, 1048572
80003e24: e7 80 80 73  	jalr	1848(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003e28: 13 c5 f4 ff  	not	a0, s1
80003e2c: 33 0c ac 00  	add	s8, s8, a0
80003e30: 6f 00 80 00  	j	0x80003e38 <.LBB4_88+0x120>
80003e34: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80003e38: 13 15 3c 00  	slli	a0, s8, 3

80003e3c <.LBB4_89>:
80003e3c: 97 15 00 00  	auipc	a1, 1
80003e40: 93 85 45 51  	addi	a1, a1, 1300
80003e44: 33 05 b5 00  	add	a0, a0, a1
80003e48: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80003e4c: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80003e50: 53 80 04 d2  	fcvt.d.w	ft0, s1
80003e54: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80003e58: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80003e5c <.LBB4_90>:
80003e5c: 17 15 00 00  	auipc	a0, 1
80003e60: 13 05 c5 61  	addi	a0, a0, 1564
80003e64: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80003e68: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80003e6c: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80003e70: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80003e74: d3 05 01 a2  	fle.d	a1, ft2, ft0
80003e78: 63 90 05 02  	bnez	a1, 0x80003e98 <.LBB4_90+0x3c>
;     ++frac;
80003e7c: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80003e80: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80003e84: d3 15 11 a2  	flt.d	a1, ft2, ft1
80003e88: 63 94 05 02  	bnez	a1, 0x80003eb0 <.LBB4_90+0x54>
80003e8c: 13 05 00 00  	mv	a0, zero
;       ++whole;
80003e90: 93 84 14 00  	addi	s1, s1, 1
80003e94: 6f 00 c0 01  	j	0x80003eb0 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80003e98: d3 15 01 a2  	flt.d	a1, ft2, ft0
80003e9c: 63 9a 05 00  	bnez	a1, 0x80003eb0 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80003ea0: 93 35 15 00  	seqz	a1, a0
80003ea4: 13 76 15 00  	andi	a2, a0, 1
80003ea8: b3 65 b6 00  	or	a1, a2, a1
80003eac: 33 85 a5 00  	add	a0, a1, a0
80003eb0: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80003eb4: 63 0c 0c 0c  	beqz	s8, 0x80003f8c <.LBB4_90+0x130>
80003eb8: 13 06 00 00  	mv	a2, zero
80003ebc: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003ec0: 33 83 85 00  	add	t1, a1, s0
80003ec4: 93 02 00 02  	addi	t0, zero, 32
80003ec8: 33 87 82 40  	sub	a4, t0, s0
80003ecc: b7 d5 cc cc  	lui	a1, 838861
80003ed0: 93 83 d5 cc  	addi	t2, a1, -819
80003ed4: 13 08 a0 00  	addi	a6, zero, 10
80003ed8: 93 08 90 00  	addi	a7, zero, 9
80003edc: 63 04 c7 0c  	beq	a4, a2, 0x80003fa4 <.LBB4_90+0x148>
80003ee0: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80003ee4: 33 35 75 02  	mulhu	a0, a0, t2
80003ee8: 13 55 35 00  	srli	a0, a0, 3
80003eec: b3 06 05 03  	mul	a3, a0, a6
80003ef0: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80003ef4: 93 e6 06 03  	ori	a3, a3, 48
80003ef8: b3 07 c3 00  	add	a5, t1, a2
80003efc: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80003f00: 13 06 16 00  	addi	a2, a2, 1
80003f04: e3 ec b8 fc  	bltu	a7, a1, 0x80003edc <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003f08: 33 05 c4 00  	add	a0, s0, a2
80003f0c: 93 05 f5 ff  	addi	a1, a0, -1
80003f10: 93 06 e0 01  	addi	a3, zero, 30
80003f14: b3 b6 b6 00  	sltu	a3, a3, a1
80003f18: 33 47 cc 00  	xor	a4, s8, a2
80003f1c: 13 37 17 00  	seqz	a4, a4
80003f20: b3 e6 e6 00  	or	a3, a3, a4
80003f24: 63 94 06 08  	bnez	a3, 0x80003fac <.LBB4_90+0x150>
80003f28: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003f2c: 33 05 85 00  	add	a0, a0, s0
80003f30: 93 45 f6 ff  	not	a1, a2
80003f34: 33 8c 85 01  	add	s8, a1, s8
80003f38: 33 04 c4 00  	add	s0, s0, a2
80003f3c: 93 05 f0 01  	addi	a1, zero, 31
80003f40: b3 86 85 40  	sub	a3, a1, s0
80003f44: 33 05 c5 00  	add	a0, a0, a2
80003f48: 93 05 0c 00  	mv	a1, s8
80003f4c: 63 64 dc 00  	bltu	s8, a3, 0x80003f54 <.LBB4_90+0xf8>
80003f50: 93 85 06 00  	mv	a1, a3
80003f54: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80003f58: 93 05 00 03  	addi	a1, zero, 48
80003f5c: 97 c0 ff ff  	auipc	ra, 1048572
80003f60: e7 80 c0 5f  	jalr	1532(ra)
80003f64: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003f68: b3 05 a4 00  	add	a1, s0, a0
80003f6c: 93 b5 f5 01  	sltiu	a1, a1, 31
80003f70: 33 46 ac 00  	xor	a2, s8, a0
80003f74: 33 36 c0 00  	snez	a2, a2
80003f78: 33 f6 c5 00  	and	a2, a1, a2
80003f7c: 13 05 15 00  	addi	a0, a0, 1
80003f80: e3 14 06 fe  	bnez	a2, 0x80003f68 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003f84: 33 05 a4 00  	add	a0, s0, a0
80003f88: 6f 00 80 02  	j	0x80003fb0 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80003f8c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80003f90: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80003f94: 53 05 10 a2  	fle.d	a0, ft0, ft1
80003f98: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80003f9c: b3 84 a4 00  	add	s1, s1, a0
80003fa0: 6f 00 c0 03  	j	0x80003fdc <.LBB4_90+0x180>
80003fa4: 13 04 00 02  	addi	s0, zero, 32
80003fa8: 6f 00 80 03  	j	0x80003fe0 <.LBB4_90+0x184>
80003fac: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003fb0: 63 8e 05 00  	beqz	a1, 0x80003fcc <.LBB4_90+0x170>
;       buf[len++] = '.';
80003fb4: 13 04 15 00  	addi	s0, a0, 1
80003fb8: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80003fbc: 33 85 a5 00  	add	a0, a1, a0
80003fc0: 93 05 e0 02  	addi	a1, zero, 46
80003fc4: 23 00 b5 00  	sb	a1, 0(a0)
80003fc8: 6f 00 80 00  	j	0x80003fd0 <.LBB4_90+0x174>
80003fcc: 13 04 05 00  	mv	s0, a0
80003fd0: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003fd4: 93 02 04 00  	mv	t0, s0
80003fd8: 63 64 85 00  	bltu	a0, s0, 0x80003fe0 <.LBB4_90+0x184>
80003fdc: 93 02 00 02  	addi	t0, zero, 32
80003fe0: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80003fe4: 37 65 66 66  	lui	a0, 419430
80003fe8: 93 05 75 66  	addi	a1, a0, 1639
80003fec: 13 08 a0 00  	addi	a6, zero, 10
80003ff0: 93 06 81 00  	addi	a3, sp, 8
80003ff4: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003ff8: 63 80 82 04  	beq	t0, s0, 0x80004038 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80003ffc: 33 95 b4 02  	mulh	a0, s1, a1
80004000: 93 57 f5 01  	srli	a5, a0, 31
80004004: 13 55 25 40  	srai	a0, a0, 2
80004008: 33 05 f5 00  	add	a0, a0, a5
8000400c: b3 07 05 03  	mul	a5, a0, a6
80004010: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004014: 93 87 07 03  	addi	a5, a5, 48
80004018: 13 0c 14 00  	addi	s8, s0, 1
8000401c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80004020: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80004024: 23 00 f4 00  	sb	a5, 0(s0)
80004028: 13 04 0c 00  	mv	s0, s8
8000402c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80004030: e3 64 c7 fc  	bltu	a4, a2, 0x80003ff8 <.LBB4_90+0x19c>
80004034: 6f 00 80 00  	j	0x8000403c <.LBB4_90+0x1e0>
80004038: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
8000403c: 93 f4 3a 00  	andi	s1, s5, 3
80004040: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004044: 63 96 a4 06  	bne	s1, a0, 0x800040b0 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004048: 63 0c 09 00  	beqz	s2, 0x80004060 <.LBB4_90+0x204>
8000404c: 13 f5 ca 00  	andi	a0, s5, 12
80004050: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004054: 33 e5 ac 00  	or	a0, s9, a0
80004058: 33 09 a9 40  	sub	s2, s2, a0
8000405c: 6f 00 80 00  	j	0x80004064 <.LBB4_90+0x208>
80004060: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004064: 33 35 2c 01  	sltu	a0, s8, s2
80004068: 93 45 15 00  	xori	a1, a0, 1
8000406c: 13 05 f0 01  	addi	a0, zero, 31
80004070: 33 36 85 01  	sltu	a2, a0, s8
80004074: b3 65 b6 00  	or	a1, a2, a1
80004078: 63 9c 05 02  	bnez	a1, 0x800040b0 <.LBB4_90+0x254>
8000407c: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004080: 93 45 fc ff  	not	a1, s8
80004084: b3 05 b9 00  	add	a1, s2, a1
80004088: 33 06 85 41  	sub	a2, a0, s8
8000408c: 33 85 86 01  	add	a0, a3, s8
80004090: 63 e4 c5 00  	bltu	a1, a2, 0x80004098 <.LBB4_90+0x23c>
80004094: 93 05 06 00  	mv	a1, a2
80004098: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
8000409c: 93 05 00 03  	addi	a1, zero, 48
800040a0: 13 06 04 00  	mv	a2, s0
800040a4: 97 c0 ff ff  	auipc	ra, 1048572
800040a8: e7 80 40 4b  	jalr	1204(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800040ac: 33 0c 84 01  	add	s8, s0, s8
800040b0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800040b4: 63 6a 85 05  	bltu	a0, s8, 0x80004108 <.LBB4_90+0x2ac>
;     if (negative) {
800040b8: 63 8c 0c 00  	beqz	s9, 0x800040d0 <.LBB4_90+0x274>
800040bc: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800040c0: 33 05 85 01  	add	a0, a0, s8
800040c4: 13 0c 1c 00  	addi	s8, s8, 1
800040c8: 93 05 d0 02  	addi	a1, zero, 45
800040cc: 6f 00 80 03  	j	0x80004104 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800040d0: 13 f5 4a 00  	andi	a0, s5, 4
800040d4: 63 10 05 02  	bnez	a0, 0x800040f4 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800040d8: 13 f5 8a 00  	andi	a0, s5, 8
800040dc: 63 06 05 02  	beqz	a0, 0x80004108 <.LBB4_90+0x2ac>
800040e0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800040e4: 33 05 85 01  	add	a0, a0, s8
800040e8: 13 0c 1c 00  	addi	s8, s8, 1
800040ec: 93 05 00 02  	addi	a1, zero, 32
800040f0: 6f 00 40 01  	j	0x80004104 <.LBB4_90+0x2a8>
800040f4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
800040f8: 33 05 85 01  	add	a0, a0, s8
800040fc: 13 0c 1c 00  	addi	s8, s8, 1
80004100: 93 05 b0 02  	addi	a1, zero, 43
80004104: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004108: 33 35 90 00  	snez	a0, s1
8000410c: b3 35 2c 01  	sltu	a1, s8, s2
80004110: 93 c5 15 00  	xori	a1, a1, 1
80004114: 33 65 b5 00  	or	a0, a0, a1
80004118: 93 fa 2a 00  	andi	s5, s5, 2
8000411c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004120: 63 16 05 02  	bnez	a0, 0x8000414c <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004124: b3 04 89 41  	sub	s1, s2, s8
80004128: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000412c: 13 04 16 00  	addi	s0, a2, 1
80004130: 13 05 00 02  	addi	a0, zero, 32
80004134: 93 05 0b 00  	mv	a1, s6
80004138: 93 86 09 00  	mv	a3, s3
8000413c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004140: 93 84 f4 ff  	addi	s1, s1, -1
80004144: 13 06 04 00  	mv	a2, s0
80004148: e3 92 04 fe  	bnez	s1, 0x8000412c <.LBB4_90+0x2d0>
8000414c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004150: 63 0c 0c 02  	beqz	s8, 0x80004188 <.LBB4_90+0x32c>
80004154: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80004158: 33 85 8c 01  	add	a0, s9, s8
8000415c: 03 45 05 00  	lbu	a0, 0(a0)
80004160: 13 0d fc ff  	addi	s10, s8, -1
80004164: 93 04 14 00  	addi	s1, s0, 1
80004168: 93 05 0b 00  	mv	a1, s6
8000416c: 13 06 04 00  	mv	a2, s0
80004170: 93 86 09 00  	mv	a3, s3
80004174: e7 80 0b 00  	jalr	s7
80004178: 13 84 04 00  	mv	s0, s1
8000417c: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80004180: e3 1c 0d fc  	bnez	s10, 0x80004158 <.LBB4_90+0x2fc>
80004184: 6f 00 80 00  	j	0x8000418c <.LBB4_90+0x330>
80004188: 93 04 04 00  	mv	s1, s0
8000418c: 33 85 44 41  	sub	a0, s1, s4
80004190: 33 35 25 01  	sltu	a0, a0, s2
80004194: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004198: 93 c5 1a 00  	xori	a1, s5, 1
8000419c: 33 e5 a5 00  	or	a0, a1, a0
800041a0: 63 18 05 02  	bnez	a0, 0x800041d0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800041a4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800041a8: 13 84 14 00  	addi	s0, s1, 1
800041ac: 13 05 00 02  	addi	a0, zero, 32
800041b0: 93 05 0b 00  	mv	a1, s6
800041b4: 13 86 04 00  	mv	a2, s1
800041b8: 93 86 09 00  	mv	a3, s3
800041bc: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800041c0: 33 05 8a 00  	add	a0, s4, s0
800041c4: 93 04 04 00  	mv	s1, s0
800041c8: e3 60 25 ff  	bltu	a0, s2, 0x800041a8 <.LBB4_90+0x34c>
800041cc: 6f 00 80 00  	j	0x800041d4 <.LBB4_90+0x378>
800041d0: 13 84 04 00  	mv	s0, s1
; }
800041d4: 13 05 04 00  	mv	a0, s0
800041d8: 07 39 81 02  	fld	fs2, 40(sp)
800041dc: 87 34 01 03  	fld	fs1, 48(sp)
800041e0: 07 34 81 03  	fld	fs0, 56(sp)
800041e4: 03 2d 01 04  	lw	s10, 64(sp)
800041e8: 83 2c 41 04  	lw	s9, 68(sp)
800041ec: 03 2c 81 04  	lw	s8, 72(sp)
800041f0: 83 2b c1 04  	lw	s7, 76(sp)
800041f4: 03 2b 01 05  	lw	s6, 80(sp)
800041f8: 83 2a 41 05  	lw	s5, 84(sp)
800041fc: 03 2a 81 05  	lw	s4, 88(sp)
80004200: 83 29 c1 05  	lw	s3, 92(sp)
80004204: 03 29 01 06  	lw	s2, 96(sp)
80004208: 83 24 41 06  	lw	s1, 100(sp)
8000420c: 03 24 81 06  	lw	s0, 104(sp)
80004210: 83 20 c1 06  	lw	ra, 108(sp)
80004214: 13 01 01 07  	addi	sp, sp, 112
80004218: 67 80 00 00  	ret

8000421c <_etoa>:
; {
8000421c: 13 01 01 f8  	addi	sp, sp, -128
80004220: 23 2e 11 06  	sw	ra, 124(sp)
80004224: 23 2c 81 06  	sw	s0, 120(sp)
80004228: 23 2a 91 06  	sw	s1, 116(sp)
8000422c: 23 28 21 07  	sw	s2, 112(sp)
80004230: 23 26 31 07  	sw	s3, 108(sp)
80004234: 23 24 41 07  	sw	s4, 104(sp)
80004238: 23 22 51 07  	sw	s5, 100(sp)
8000423c: 23 20 61 07  	sw	s6, 96(sp)
80004240: 23 2e 71 05  	sw	s7, 92(sp)
80004244: 23 2c 81 05  	sw	s8, 88(sp)
80004248: 23 2a 91 05  	sw	s9, 84(sp)
8000424c: 23 28 a1 05  	sw	s10, 80(sp)
80004250: 23 26 b1 05  	sw	s11, 76(sp)

80004254 <.LBB5_43>:
80004254: 97 14 00 00  	auipc	s1, 1
80004258: 93 84 c4 22  	addi	s1, s1, 556
8000425c: 87 b0 04 00  	fld	ft1, 0(s1)

80004260 <.LBB5_44>:
80004260: 97 14 00 00  	auipc	s1, 1
80004264: 93 84 84 22  	addi	s1, s1, 552
80004268: 07 b1 04 00  	fld	ft2, 0(s1)
8000426c: 53 00 a5 22  	fmv.d	ft0, fa0
80004270: d3 04 15 a2  	fle.d	s1, fa0, ft1
80004274: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004278: b3 f4 84 00  	and	s1, s1, s0
8000427c: 93 0a 08 00  	mv	s5, a6
80004280: 13 89 07 00  	mv	s2, a5
80004284: 93 07 07 00  	mv	a5, a4
80004288: 93 89 06 00  	mv	s3, a3
8000428c: 13 0a 06 00  	mv	s4, a2
80004290: 13 8b 05 00  	mv	s6, a1
80004294: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004298: 63 92 04 06  	bnez	s1, 0x800042fc <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000429c: 13 85 0b 00  	mv	a0, s7
800042a0: 93 05 0b 00  	mv	a1, s6
800042a4: 13 06 0a 00  	mv	a2, s4
800042a8: 93 86 09 00  	mv	a3, s3
800042ac: 53 05 00 22  	fmv.d	fa0, ft0
800042b0: 13 87 07 00  	mv	a4, a5
800042b4: 93 07 09 00  	mv	a5, s2
800042b8: 13 88 0a 00  	mv	a6, s5
800042bc: 83 2d c1 04  	lw	s11, 76(sp)
800042c0: 03 2d 01 05  	lw	s10, 80(sp)
800042c4: 83 2c 41 05  	lw	s9, 84(sp)
800042c8: 03 2c 81 05  	lw	s8, 88(sp)
800042cc: 83 2b c1 05  	lw	s7, 92(sp)
800042d0: 03 2b 01 06  	lw	s6, 96(sp)
800042d4: 83 2a 41 06  	lw	s5, 100(sp)
800042d8: 03 2a 81 06  	lw	s4, 104(sp)
800042dc: 83 29 c1 06  	lw	s3, 108(sp)
800042e0: 03 29 01 07  	lw	s2, 112(sp)
800042e4: 83 24 41 07  	lw	s1, 116(sp)
800042e8: 03 24 81 07  	lw	s0, 120(sp)
800042ec: 83 20 c1 07  	lw	ra, 124(sp)
800042f0: 13 01 01 08  	addi	sp, sp, 128
800042f4: 17 03 00 00  	auipc	t1, 0
800042f8: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
800042fc: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80004300: 13 f5 0a 40  	andi	a0, s5, 1024
80004304: 13 07 60 00  	addi	a4, zero, 6
80004308: 63 04 05 00  	beqz	a0, 0x80004310 <.LBB5_44+0xb0>
8000430c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004310: 27 30 a1 02  	fsd	fa0, 32(sp)
80004314: 83 25 41 02  	lw	a1, 36(sp)
80004318: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000431c: 93 d6 45 01  	srli	a3, a1, 20
80004320: b7 07 10 00  	lui	a5, 256
80004324: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004328: b3 f5 f5 00  	and	a1, a1, a5
8000432c: 23 2c c1 00  	sw	a2, 24(sp)
80004330: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004334: b3 e5 c5 00  	or	a1, a1, a2
80004338: 23 2e b1 00  	sw	a1, 28(sp)
8000433c: 87 30 81 01  	fld	ft1, 24(sp)

80004340 <.LBB5_45>:
80004340: 97 15 00 00  	auipc	a1, 1
80004344: 93 85 05 15  	addi	a1, a1, 336
80004348: 07 b1 05 00  	fld	ft2, 0(a1)

8000434c <.LBB5_46>:
8000434c: 97 15 00 00  	auipc	a1, 1
80004350: 93 85 c5 14  	addi	a1, a1, 332
80004354: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004358: 93 f5 f6 7f  	andi	a1, a3, 2047
8000435c: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004360: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004364: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80004368 <.LBB5_47>:
80004368: 97 15 00 00  	auipc	a1, 1
8000436c: 93 85 85 13  	addi	a1, a1, 312
80004370: 07 b1 05 00  	fld	ft2, 0(a1)

80004374 <.LBB5_48>:
80004374: 97 15 00 00  	auipc	a1, 1
80004378: 93 85 45 13  	addi	a1, a1, 308
8000437c: 87 b1 05 00  	fld	ft3, 0(a1)

80004380 <.LBB5_49>:
80004380: 97 15 00 00  	auipc	a1, 1
80004384: 93 85 05 13  	addi	a1, a1, 304
80004388: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000438c: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004390: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004394: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004398: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

8000439c <.LBB5_50>:
8000439c: 17 16 00 00  	auipc	a2, 1
800043a0: 13 06 c6 11  	addi	a2, a2, 284
800043a4: 87 31 06 00  	fld	ft3, 0(a2)

800043a8 <.LBB5_51>:
800043a8: 17 16 00 00  	auipc	a2, 1
800043ac: 13 06 86 11  	addi	a2, a2, 280
800043b0: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800043b4: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800043b8: 53 01 06 d2  	fcvt.d.w	ft2, a2
800043bc: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800043c0: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800043c4: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800043c8: 13 06 f6 3f  	addi	a2, a2, 1023
800043cc: 23 28 01 00  	sw	zero, 16(sp)
800043d0: 13 16 46 01  	slli	a2, a2, 20
800043d4: 23 2a c1 00  	sw	a2, 20(sp)

800043d8 <.LBB5_52>:
800043d8: 17 16 00 00  	auipc	a2, 1
800043dc: 13 06 86 0f  	addi	a2, a2, 248
800043e0: 87 31 06 00  	fld	ft3, 0(a2)

800043e4 <.LBB5_53>:
800043e4: 17 16 00 00  	auipc	a2, 1
800043e8: 13 06 46 0f  	addi	a2, a2, 244
800043ec: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800043f0: 87 32 01 01  	fld	ft5, 16(sp)

800043f4 <.LBB5_54>:
800043f4: 17 16 00 00  	auipc	a2, 1
800043f8: 13 06 46 0d  	addi	a2, a2, 212
800043fc: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004400: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004404 <.LBB5_55>:
80004404: 17 16 00 00  	auipc	a2, 1
80004408: 13 06 c6 0d  	addi	a2, a2, 220
8000440c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004410: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004414: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004418: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
8000441c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004420: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004424: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004428: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
8000442c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80004430: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004434: 63 0a 06 00  	beqz	a2, 0x80004448 <.LBB5_56+0x10>

80004438 <.LBB5_56>:
80004438: 97 16 00 00  	auipc	a3, 1
8000443c: 93 86 06 0b  	addi	a3, a3, 176
80004440: 07 b1 06 00  	fld	ft2, 0(a3)
80004444: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80004448: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
8000444c: 93 05 34 06  	addi	a1, s0, 99
80004450: 93 b5 75 0c  	sltiu	a1, a1, 199
80004454: 13 06 50 00  	addi	a2, zero, 5
80004458: b7 16 00 00  	lui	a3, 1
8000445c: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80004460: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004464: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80004468: 63 84 06 06  	beqz	a3, 0x800044d0 <.LBB5_58+0x58>

8000446c <.LBB5_57>:
8000446c: 97 15 00 00  	auipc	a1, 1
80004470: 93 85 45 08  	addi	a1, a1, 132
80004474: 07 b1 05 00  	fld	ft2, 0(a1)

80004478 <.LBB5_58>:
80004478: 97 15 00 00  	auipc	a1, 1
8000447c: 93 85 05 08  	addi	a1, a1, 128
80004480: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004484: d3 15 25 a2  	flt.d	a1, fa0, ft2
80004488: 53 86 a1 a2  	fle.d	a2, ft3, fa0
8000448c: b3 e5 c5 00  	or	a1, a1, a2
80004490: 63 98 05 00  	bnez	a1, 0x800044a0 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004494: 63 40 e4 02  	blt	s0, a4, 0x800044b4 <.LBB5_58+0x3c>
80004498: 13 07 00 00  	mv	a4, zero
8000449c: 6f 00 00 02  	j	0x800044bc <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800044a0: 63 06 07 02  	beqz	a4, 0x800044cc <.LBB5_58+0x54>
800044a4: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800044a8: 13 45 15 00  	xori	a0, a0, 1
800044ac: 33 07 a7 40  	sub	a4, a4, a0
800044b0: 6f 00 00 02  	j	0x800044d0 <.LBB5_58+0x58>
800044b4: 13 45 f4 ff  	not	a0, s0
800044b8: 33 07 a7 00  	add	a4, a4, a0
800044bc: 13 04 00 00  	mv	s0, zero
800044c0: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800044c4: 93 ea 0a 40  	ori	s5, s5, 1024
800044c8: 6f 00 80 00  	j	0x800044d0 <.LBB5_58+0x58>
800044cc: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800044d0: b3 05 99 41  	sub	a1, s2, s9
800044d4: 33 36 b9 00  	sltu	a2, s2, a1
800044d8: 13 05 00 00  	mv	a0, zero
800044dc: 63 14 06 00  	bnez	a2, 0x800044e4 <.LBB5_58+0x6c>
800044e0: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800044e4: 93 07 00 00  	mv	a5, zero
800044e8: 93 d5 1a 00  	srli	a1, s5, 1
800044ec: 93 f4 15 00  	andi	s1, a1, 1
800044f0: b3 35 90 01  	snez	a1, s9
800044f4: b3 f5 b4 00  	and	a1, s1, a1
800044f8: 53 01 00 d2  	fcvt.d.w	ft2, zero
800044fc: 63 94 05 00  	bnez	a1, 0x80004504 <.LBB5_58+0x8c>
80004500: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004504: 93 35 14 00  	seqz	a1, s0
80004508: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
8000450c: 63 94 05 00  	bnez	a1, 0x80004514 <.LBB5_58+0x9c>
80004510: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004514: 63 04 05 00  	beqz	a0, 0x8000451c <.LBB5_58+0xa4>
80004518: 53 15 a5 22  	fneg.d	fa0, fa0
8000451c: 37 f5 ff ff  	lui	a0, 1048575
80004520: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004524: 33 f8 aa 00  	and	a6, s5, a0
80004528: 13 85 0b 00  	mv	a0, s7
8000452c: 93 05 0b 00  	mv	a1, s6
80004530: 13 06 0a 00  	mv	a2, s4
80004534: 93 86 09 00  	mv	a3, s3
80004538: 97 f0 ff ff  	auipc	ra, 1048575
8000453c: e7 80 40 60  	jalr	1540(ra)
80004540: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004544: 63 82 0c 18  	beqz	s9, 0x800046c8 <.LBB5_58+0x250>
80004548: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
8000454c: 13 f5 0a 02  	andi	a0, s5, 32
80004550: 13 45 55 06  	xori	a0, a0, 101
80004554: 93 05 0b 00  	mv	a1, s6
80004558: 13 06 0d 00  	mv	a2, s10
8000455c: 93 86 09 00  	mv	a3, s3
80004560: e7 80 0b 00  	jalr	s7
80004564: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004568: 93 5a f4 01  	srli	s5, s0, 31
8000456c: 13 55 f4 41  	srai	a0, s0, 31
80004570: b3 05 a4 00  	add	a1, s0, a0
80004574: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004578: 93 8d dc ff  	addi	s11, s9, -3
8000457c: 13 04 f0 01  	addi	s0, zero, 31
80004580: 37 d5 cc cc  	lui	a0, 838861
80004584: 13 05 d5 cc  	addi	a0, a0, -819
80004588: 13 08 a0 00  	addi	a6, zero, 10
8000458c: 93 08 c1 02  	addi	a7, sp, 44
80004590: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004594: b3 37 a7 02  	mulhu	a5, a4, a0
80004598: 93 d5 37 00  	srli	a1, a5, 3
8000459c: b3 87 05 03  	mul	a5, a1, a6
800045a0: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800045a4: 13 e6 07 03  	ori	a2, a5, 48
800045a8: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800045ac: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800045b0: 13 0c 1c 00  	addi	s8, s8, 1
800045b4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800045b8: 33 b6 e2 00  	sltu	a2, t0, a4
800045bc: 33 f6 c7 00  	and	a2, a5, a2
800045c0: 93 8d fd ff  	addi	s11, s11, -1
800045c4: 13 04 f4 ff  	addi	s0, s0, -1
800045c8: 13 87 05 00  	mv	a4, a1
800045cc: e3 14 06 fc  	bnez	a2, 0x80004594 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800045d0: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800045d4: 33 35 ac 00  	sltu	a0, s8, a0
800045d8: 13 45 15 00  	xori	a0, a0, 1
800045dc: 93 c5 17 00  	xori	a1, a5, 1
800045e0: 33 e5 a5 00  	or	a0, a1, a0
800045e4: 63 12 05 04  	bnez	a0, 0x80004628 <.LBB5_58+0x1b0>
800045e8: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800045ec: b3 85 8c 41  	sub	a1, s9, s8
800045f0: 93 85 d5 ff  	addi	a1, a1, -3
800045f4: 13 06 f0 01  	addi	a2, zero, 31
800045f8: 33 06 86 41  	sub	a2, a2, s8
800045fc: 33 05 85 01  	add	a0, a0, s8
80004600: 63 e4 c5 00  	bltu	a1, a2, 0x80004608 <.LBB5_58+0x190>
80004604: 93 05 06 00  	mv	a1, a2
80004608: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000460c: 93 05 00 03  	addi	a1, zero, 48
80004610: 97 c0 ff ff  	auipc	ra, 1048572
80004614: e7 80 80 f4  	jalr	-184(ra)
;   if (flags & FLAGS_HASH) {
80004618: 63 e4 8d 00  	bltu	s11, s0, 0x80004620 <.LBB5_58+0x1a8>
8000461c: 93 0d 04 00  	mv	s11, s0
80004620: 33 85 8d 01  	add	a0, s11, s8
80004624: 13 0c 15 00  	addi	s8, a0, 1
80004628: 83 2c c1 00  	lw	s9, 12(sp)
8000462c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004630: 63 60 85 03  	bltu	a0, s8, 0x80004650 <.LBB5_58+0x1d8>
80004634: 13 05 c1 02  	addi	a0, sp, 44
80004638: 33 05 85 01  	add	a0, a0, s8
8000463c: 93 05 d0 02  	addi	a1, zero, 45
80004640: 63 94 0a 00  	bnez	s5, 0x80004648 <.LBB5_58+0x1d0>
80004644: 93 05 b0 02  	addi	a1, zero, 43
80004648: 13 0c 1c 00  	addi	s8, s8, 1
8000464c: 23 00 b5 00  	sb	a1, 0(a0)
80004650: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004654: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004658: 33 85 8a 01  	add	a0, s5, s8
8000465c: 03 45 05 00  	lbu	a0, 0(a0)
80004660: 13 06 04 00  	mv	a2, s0
80004664: 93 04 fc ff  	addi	s1, s8, -1
80004668: 13 04 14 00  	addi	s0, s0, 1
8000466c: 93 05 0b 00  	mv	a1, s6
80004670: 93 86 09 00  	mv	a3, s3
80004674: e7 80 0b 00  	jalr	s7
80004678: 13 8c 04 00  	mv	s8, s1
;   while (len) {
8000467c: e3 9e 04 fc  	bnez	s1, 0x80004658 <.LBB5_58+0x1e0>
80004680: 33 05 44 41  	sub	a0, s0, s4
80004684: 33 35 25 01  	sltu	a0, a0, s2
80004688: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
8000468c: 93 c5 1c 00  	xori	a1, s9, 1
80004690: 33 e5 a5 00  	or	a0, a1, a0
80004694: 63 18 05 02  	bnez	a0, 0x800046c4 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004698: b3 04 40 41  	neg	s1, s4
8000469c: 13 0d 14 00  	addi	s10, s0, 1
800046a0: 13 05 00 02  	addi	a0, zero, 32
800046a4: 93 05 0b 00  	mv	a1, s6
800046a8: 13 06 04 00  	mv	a2, s0
800046ac: 93 86 09 00  	mv	a3, s3
800046b0: e7 80 0b 00  	jalr	s7
800046b4: 33 85 a4 01  	add	a0, s1, s10
800046b8: 13 04 0d 00  	mv	s0, s10
800046bc: e3 60 25 ff  	bltu	a0, s2, 0x8000469c <.LBB5_58+0x224>
800046c0: 6f 00 80 00  	j	0x800046c8 <.LBB5_58+0x250>
800046c4: 13 0d 04 00  	mv	s10, s0
; }
800046c8: 13 05 0d 00  	mv	a0, s10
800046cc: 83 2d c1 04  	lw	s11, 76(sp)
800046d0: 03 2d 01 05  	lw	s10, 80(sp)
800046d4: 83 2c 41 05  	lw	s9, 84(sp)
800046d8: 03 2c 81 05  	lw	s8, 88(sp)
800046dc: 83 2b c1 05  	lw	s7, 92(sp)
800046e0: 03 2b 01 06  	lw	s6, 96(sp)
800046e4: 83 2a 41 06  	lw	s5, 100(sp)
800046e8: 03 2a 81 06  	lw	s4, 104(sp)
800046ec: 83 29 c1 06  	lw	s3, 108(sp)
800046f0: 03 29 01 07  	lw	s2, 112(sp)
800046f4: 83 24 41 07  	lw	s1, 116(sp)
800046f8: 03 24 81 07  	lw	s0, 120(sp)
800046fc: 83 20 c1 07  	lw	ra, 124(sp)
80004700: 13 01 01 08  	addi	sp, sp, 128
80004704: 67 80 00 00  	ret

80004708 <_ntoa_format>:
; {
80004708: 13 01 01 fc  	addi	sp, sp, -64
8000470c: 23 2e 11 02  	sw	ra, 60(sp)
80004710: 23 2c 81 02  	sw	s0, 56(sp)
80004714: 23 2a 91 02  	sw	s1, 52(sp)
80004718: 23 28 21 03  	sw	s2, 48(sp)
8000471c: 23 26 31 03  	sw	s3, 44(sp)
80004720: 23 24 41 03  	sw	s4, 40(sp)
80004724: 23 22 51 03  	sw	s5, 36(sp)
80004728: 23 20 61 03  	sw	s6, 32(sp)
8000472c: 23 2e 71 01  	sw	s7, 28(sp)
80004730: 23 2c 81 01  	sw	s8, 24(sp)
80004734: 23 2a 91 01  	sw	s9, 20(sp)
80004738: 23 28 a1 01  	sw	s10, 16(sp)
8000473c: 23 26 b1 01  	sw	s11, 12(sp)
80004740: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004744: 93 fa 2e 00  	andi	s5, t4, 2
80004748: 13 09 0e 00  	mv	s2, t3
8000474c: 13 8d 03 00  	mv	s10, t2
80004750: 93 8c 08 00  	mv	s9, a7
80004754: 13 8c 07 00  	mv	s8, a5
80004758: 93 89 06 00  	mv	s3, a3
8000475c: 13 0a 06 00  	mv	s4, a2
80004760: 13 8b 05 00  	mv	s6, a1
80004764: 93 0d 05 00  	mv	s11, a0
80004768: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
8000476c: 63 9e 0a 0c  	bnez	s5, 0x80004848 <_ntoa_format+0x140>
80004770: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004774: 63 0e 09 00  	beqz	s2, 0x80004790 <_ntoa_format+0x88>
80004778: 63 0e 04 00  	beqz	s0, 0x80004794 <_ntoa_format+0x8c>
8000477c: 13 f5 cb 00  	andi	a0, s7, 12
80004780: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004784: 33 65 05 01  	or	a0, a0, a6
80004788: 33 09 a9 40  	sub	s2, s2, a0
8000478c: 6f 00 80 00  	j	0x80004794 <_ntoa_format+0x8c>
80004790: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004794: 33 35 ac 01  	sltu	a0, s8, s10
80004798: 93 45 15 00  	xori	a1, a0, 1
8000479c: 13 05 f0 01  	addi	a0, zero, 31
800047a0: 33 36 85 01  	sltu	a2, a0, s8
800047a4: b3 65 b6 00  	or	a1, a2, a1
800047a8: 63 94 05 04  	bnez	a1, 0x800047f0 <_ntoa_format+0xe8>
800047ac: 23 22 51 01  	sw	s5, 4(sp)
800047b0: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800047b4: 93 45 fc ff  	not	a1, s8
800047b8: b3 85 a5 01  	add	a1, a1, s10
800047bc: 33 06 85 41  	sub	a2, a0, s8
800047c0: 33 05 87 01  	add	a0, a4, s8
800047c4: 63 e4 c5 00  	bltu	a1, a2, 0x800047cc <_ntoa_format+0xc4>
800047c8: 93 05 06 00  	mv	a1, a2
800047cc: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800047d0: 93 05 00 03  	addi	a1, zero, 48
800047d4: 13 86 04 00  	mv	a2, s1
800047d8: 97 c0 ff ff  	auipc	ra, 1048572
800047dc: e7 80 00 d8  	jalr	-640(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800047e0: 33 8c 84 01  	add	s8, s1, s8
800047e4: 03 27 81 00  	lw	a4, 8(sp)
800047e8: 13 88 0a 00  	mv	a6, s5
800047ec: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800047f0: 63 0c 04 04  	beqz	s0, 0x80004848 <_ntoa_format+0x140>
800047f4: 33 35 2c 01  	sltu	a0, s8, s2
800047f8: 93 45 15 00  	xori	a1, a0, 1
800047fc: 13 05 f0 01  	addi	a0, zero, 31
80004800: 33 36 85 01  	sltu	a2, a0, s8
80004804: b3 e5 c5 00  	or	a1, a1, a2
80004808: 63 90 05 04  	bnez	a1, 0x80004848 <_ntoa_format+0x140>
8000480c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004810: 93 45 fc ff  	not	a1, s8
80004814: b3 05 b9 00  	add	a1, s2, a1
80004818: 33 06 85 41  	sub	a2, a0, s8
8000481c: 33 05 87 01  	add	a0, a4, s8
80004820: 63 e4 c5 00  	bltu	a1, a2, 0x80004828 <_ntoa_format+0x120>
80004824: 93 05 06 00  	mv	a1, a2
80004828: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000482c: 93 05 00 03  	addi	a1, zero, 48
80004830: 13 86 04 00  	mv	a2, s1
80004834: 97 c0 ff ff  	auipc	ra, 1048572
80004838: e7 80 40 d2  	jalr	-732(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000483c: 33 8c 84 01  	add	s8, s1, s8
80004840: 03 27 81 00  	lw	a4, 8(sp)
80004844: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004848: 13 f5 0b 01  	andi	a0, s7, 16
8000484c: 63 02 05 0e  	beqz	a0, 0x80004930 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80004850: 13 f5 0b 40  	andi	a0, s7, 1024
80004854: 13 55 a5 00  	srli	a0, a0, 10
80004858: 93 35 1c 00  	seqz	a1, s8
8000485c: 33 65 b5 00  	or	a0, a0, a1
80004860: 63 1e 05 02  	bnez	a0, 0x8000489c <_ntoa_format+0x194>
80004864: 33 45 ac 01  	xor	a0, s8, s10
80004868: 33 35 a0 00  	snez	a0, a0
8000486c: b3 45 2c 01  	xor	a1, s8, s2
80004870: b3 35 b0 00  	snez	a1, a1
80004874: 33 75 b5 00  	and	a0, a0, a1
80004878: 63 12 05 02  	bnez	a0, 0x8000489c <_ntoa_format+0x194>
;       len--;
8000487c: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80004880: b3 35 a0 00  	snez	a1, a0
80004884: 13 86 0c ff  	addi	a2, s9, -16
80004888: 13 36 16 00  	seqz	a2, a2
8000488c: b3 75 b6 00  	and	a1, a2, a1
80004890: 63 84 05 00  	beqz	a1, 0x80004898 <_ntoa_format+0x190>
80004894: 13 05 ec ff  	addi	a0, s8, -2
80004898: 13 0c 05 00  	mv	s8, a0
8000489c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800048a0: 63 96 ac 02  	bne	s9, a0, 0x800048cc <_ntoa_format+0x1c4>
800048a4: 13 f5 0b 02  	andi	a0, s7, 32
800048a8: 93 55 55 00  	srli	a1, a0, 5
800048ac: 13 06 f0 01  	addi	a2, zero, 31
800048b0: 33 36 86 01  	sltu	a2, a2, s8
800048b4: b3 e5 c5 00  	or	a1, a1, a2
800048b8: 63 9e 05 02  	bnez	a1, 0x800048f4 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800048bc: 33 05 87 01  	add	a0, a4, s8
800048c0: 13 0c 1c 00  	addi	s8, s8, 1
800048c4: 93 05 80 07  	addi	a1, zero, 120
800048c8: 6f 00 c0 04  	j	0x80004914 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800048cc: 13 85 ec ff  	addi	a0, s9, -2
800048d0: 33 35 a0 00  	snez	a0, a0
800048d4: 93 05 f0 01  	addi	a1, zero, 31
800048d8: b3 b5 85 01  	sltu	a1, a1, s8
800048dc: 33 65 b5 00  	or	a0, a0, a1
800048e0: 63 1c 05 02  	bnez	a0, 0x80004918 <_ntoa_format+0x210>
;       buf[len++] = 'b';
800048e4: 33 05 87 01  	add	a0, a4, s8
800048e8: 13 0c 1c 00  	addi	s8, s8, 1
800048ec: 93 05 20 06  	addi	a1, zero, 98
800048f0: 6f 00 40 02  	j	0x80004914 <_ntoa_format+0x20c>
800048f4: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800048f8: 13 35 15 00  	seqz	a0, a0
800048fc: 93 c5 15 00  	xori	a1, a1, 1
80004900: 33 65 b5 00  	or	a0, a0, a1
80004904: 63 1a 05 00  	bnez	a0, 0x80004918 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004908: 33 05 87 01  	add	a0, a4, s8
8000490c: 13 0c 1c 00  	addi	s8, s8, 1
80004910: 93 05 80 05  	addi	a1, zero, 88
80004914: 23 00 b5 00  	sb	a1, 0(a0)
80004918: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000491c: 63 60 85 07  	bltu	a0, s8, 0x8000497c <_ntoa_format+0x274>
;       buf[len++] = '0';
80004920: 33 05 87 01  	add	a0, a4, s8
80004924: 13 0c 1c 00  	addi	s8, s8, 1
80004928: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
8000492c: 23 00 b5 00  	sb	a1, 0(a0)
80004930: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004934: 63 64 85 05  	bltu	a0, s8, 0x8000497c <_ntoa_format+0x274>
;     if (negative) {
80004938: 63 0a 08 00  	beqz	a6, 0x8000494c <_ntoa_format+0x244>
;       buf[len++] = '-';
8000493c: 33 05 87 01  	add	a0, a4, s8
80004940: 13 0c 1c 00  	addi	s8, s8, 1
80004944: 93 05 d0 02  	addi	a1, zero, 45
80004948: 6f 00 00 03  	j	0x80004978 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
8000494c: 13 f5 4b 00  	andi	a0, s7, 4
80004950: 63 1e 05 00  	bnez	a0, 0x8000496c <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80004954: 13 f5 8b 00  	andi	a0, s7, 8
80004958: 63 02 05 02  	beqz	a0, 0x8000497c <_ntoa_format+0x274>
;       buf[len++] = ' ';
8000495c: 33 05 87 01  	add	a0, a4, s8
80004960: 13 0c 1c 00  	addi	s8, s8, 1
80004964: 93 05 00 02  	addi	a1, zero, 32
80004968: 6f 00 00 01  	j	0x80004978 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000496c: 33 05 87 01  	add	a0, a4, s8
80004970: 13 0c 1c 00  	addi	s8, s8, 1
80004974: 93 05 b0 02  	addi	a1, zero, 43
80004978: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000497c: 13 f5 3b 00  	andi	a0, s7, 3
80004980: 33 35 a0 00  	snez	a0, a0
80004984: b3 35 2c 01  	sltu	a1, s8, s2
80004988: 93 c5 15 00  	xori	a1, a1, 1
8000498c: 33 65 b5 00  	or	a0, a0, a1
80004990: 13 04 0a 00  	mv	s0, s4
80004994: 63 16 05 02  	bnez	a0, 0x800049c0 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80004998: b3 04 89 41  	sub	s1, s2, s8
8000499c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800049a0: 13 04 16 00  	addi	s0, a2, 1
800049a4: 13 05 00 02  	addi	a0, zero, 32
800049a8: 93 05 0b 00  	mv	a1, s6
800049ac: 93 86 09 00  	mv	a3, s3
800049b0: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800049b4: 93 84 f4 ff  	addi	s1, s1, -1
800049b8: 13 06 04 00  	mv	a2, s0
800049bc: e3 92 04 fe  	bnez	s1, 0x800049a0 <_ntoa_format+0x298>
800049c0: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800049c4: 63 0e 0c 02  	beqz	s8, 0x80004a00 <_ntoa_format+0x2f8>
800049c8: 03 25 81 00  	lw	a0, 8(sp)
800049cc: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800049d0: 33 85 8b 01  	add	a0, s7, s8
800049d4: 03 45 05 00  	lbu	a0, 0(a0)
800049d8: 93 0c fc ff  	addi	s9, s8, -1
800049dc: 93 04 14 00  	addi	s1, s0, 1
800049e0: 93 05 0b 00  	mv	a1, s6
800049e4: 13 06 04 00  	mv	a2, s0
800049e8: 93 86 09 00  	mv	a3, s3
800049ec: e7 80 0d 00  	jalr	s11
800049f0: 13 84 04 00  	mv	s0, s1
800049f4: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800049f8: e3 9c 0c fc  	bnez	s9, 0x800049d0 <_ntoa_format+0x2c8>
800049fc: 6f 00 80 00  	j	0x80004a04 <_ntoa_format+0x2fc>
80004a00: 93 04 04 00  	mv	s1, s0
80004a04: 33 85 44 41  	sub	a0, s1, s4
80004a08: 33 35 25 01  	sltu	a0, a0, s2
80004a0c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004a10: 93 c5 1a 00  	xori	a1, s5, 1
80004a14: 33 e5 a5 00  	or	a0, a1, a0
80004a18: 63 18 05 02  	bnez	a0, 0x80004a48 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80004a1c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004a20: 13 84 14 00  	addi	s0, s1, 1
80004a24: 13 05 00 02  	addi	a0, zero, 32
80004a28: 93 05 0b 00  	mv	a1, s6
80004a2c: 13 86 04 00  	mv	a2, s1
80004a30: 93 86 09 00  	mv	a3, s3
80004a34: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80004a38: 33 05 8a 00  	add	a0, s4, s0
80004a3c: 93 04 04 00  	mv	s1, s0
80004a40: e3 60 25 ff  	bltu	a0, s2, 0x80004a20 <_ntoa_format+0x318>
80004a44: 6f 00 80 00  	j	0x80004a4c <_ntoa_format+0x344>
80004a48: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80004a4c: 13 05 04 00  	mv	a0, s0
80004a50: 83 2d c1 00  	lw	s11, 12(sp)
80004a54: 03 2d 01 01  	lw	s10, 16(sp)
80004a58: 83 2c 41 01  	lw	s9, 20(sp)
80004a5c: 03 2c 81 01  	lw	s8, 24(sp)
80004a60: 83 2b c1 01  	lw	s7, 28(sp)
80004a64: 03 2b 01 02  	lw	s6, 32(sp)
80004a68: 83 2a 41 02  	lw	s5, 36(sp)
80004a6c: 03 2a 81 02  	lw	s4, 40(sp)
80004a70: 83 29 c1 02  	lw	s3, 44(sp)
80004a74: 03 29 01 03  	lw	s2, 48(sp)
80004a78: 83 24 41 03  	lw	s1, 52(sp)
80004a7c: 03 24 81 03  	lw	s0, 56(sp)
80004a80: 83 20 c1 03  	lw	ra, 60(sp)
80004a84: 13 01 01 04  	addi	sp, sp, 64
80004a88: 67 80 00 00  	ret

80004a8c <_snrt_init_team>:
;     team->base.root = team;
80004a8c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80004a90: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004a94: 03 23 87 00  	lw	t1, 8(a4)
80004a98: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004a9c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80004aa0: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004aa4: 83 22 47 00  	lw	t0, 4(a4)
80004aa8: 33 88 08 03  	mul	a6, a7, a6
80004aac: 33 05 58 02  	mul	a0, a6, t0
80004ab0: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004ab4: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80004ab8: 33 85 68 40  	sub	a0, a7, t1
80004abc: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80004ac0: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80004ac4: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80004ac8: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80004acc: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80004ad0: 03 25 87 01  	lw	a0, 24(a4)
80004ad4: b7 05 00 10  	lui	a1, 65536
80004ad8: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80004adc: 23 a2 07 02  	sw	zero, 36(a5)
80004ae0: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80004ae4: 03 25 07 02  	lw	a0, 32(a4)
80004ae8: 83 25 47 02  	lw	a1, 36(a4)
80004aec: 23 a4 a7 02  	sw	a0, 40(a5)
80004af0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80004af4: 23 a8 c7 02  	sw	a2, 48(a5)
80004af8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80004afc: 23 ac d7 02  	sw	a3, 56(a5)
80004b00: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80004b04: 03 25 07 01  	lw	a0, 16(a4)
80004b08: 33 08 a6 00  	add	a6, a2, a0
80004b0c: 93 05 08 19  	addi	a1, a6, 400
80004b10: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80004b14: b3 32 a8 00  	sltu	t0, a6, a0
80004b18: 93 55 15 00  	srli	a1, a0, 1
80004b1c: 33 03 b8 00  	add	t1, a6, a1
80004b20: b3 35 03 01  	sltu	a1, t1, a6
80004b24: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80004b28: 23 a0 67 04  	sw	t1, 64(a5)
80004b2c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80004b30: 13 15 15 00  	slli	a0, a0, 1
80004b34: b3 05 c5 00  	add	a1, a0, a2
80004b38: 33 b5 a5 00  	sltu	a0, a1, a0
80004b3c: 23 a4 b7 04  	sw	a1, 72(a5)
80004b40: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80004b44: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80004b48: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80004b4c: 37 05 00 00  	lui	a0, 0
80004b50: 33 05 45 00  	add	a0, a0, tp
80004b54: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004b58: 03 a5 07 00  	lw	a0, 0(a5)
80004b5c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80004b60: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004b64: b3 85 b8 40  	sub	a1, a7, a1
80004b68: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80004b6c: b7 05 00 00  	lui	a1, 0
80004b70: b3 85 45 00  	add	a1, a1, tp
80004b74: 23 a2 a5 00  	sw	a0, 4(a1)
80004b78: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80004b7c: 33 85 a8 02  	mul	a0, a7, a0

80004b80 <.LBB0_1>:
80004b80: 97 15 00 00  	auipc	a1, 1
80004b84: 93 85 45 98  	addi	a1, a1, -1660
80004b88: 33 05 b5 00  	add	a0, a0, a1
80004b8c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80004b90: 83 28 07 03  	lw	a7, 48(a4)
80004b94: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80004b98: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80004b9c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80004ba0: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80004ba4: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80004ba8: 13 05 76 00  	addi	a0, a2, 7
80004bac: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80004bb0: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80004bb4: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80004bb8: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80004bbc: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80004bc0: 03 a5 05 00  	lw	a0, 0(a1)
80004bc4: 13 05 f5 44  	addi	a0, a0, 1103
80004bc8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80004bcc: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80004bd0: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80004bd4: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80004bd8: 37 05 00 00  	lui	a0, 0
80004bdc: 33 05 45 00  	add	a0, a0, tp
80004be0: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80004be4: 37 05 00 00  	lui	a0, 0
80004be8: 33 05 45 00  	add	a0, a0, tp
80004bec: 23 26 e5 00  	sw	a4, 12(a0)
; }
80004bf0: 67 80 00 00  	ret

80004bf4 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004bf4: 37 05 00 00  	lui	a0, 0
80004bf8: 33 05 45 00  	add	a0, a0, tp
80004bfc: 03 25 05 00  	lw	a0, 0(a0)
80004c00: 03 25 05 00  	lw	a0, 0(a0)
80004c04: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004c08: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004c0c: 33 85 a5 40  	sub	a0, a1, a0
80004c10: 67 80 00 00  	ret

80004c14 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80004c14: 37 05 00 00  	lui	a0, 0
80004c18: 33 05 45 00  	add	a0, a0, tp
80004c1c: 03 25 05 00  	lw	a0, 0(a0)
80004c20: 03 25 05 00  	lw	a0, 0(a0)
80004c24: 03 25 05 07  	lw	a0, 112(a0)
80004c28: 67 80 00 00  	ret

80004c2c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80004c2c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80004c30: 63 44 05 00  	bltz	a0, 0x80004c38 <__snrt_isr+0xc>
;         while (1)
80004c34: 6f 00 00 00  	j	0x80004c34 <__snrt_isr+0x8>
80004c38: b7 05 00 80  	lui	a1, 524288
80004c3c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80004c40: 33 75 b5 00  	and	a0, a0, a1
80004c44: 13 05 d5 ff  	addi	a0, a0, -3
80004c48: 93 55 25 00  	srli	a1, a0, 2
80004c4c: 13 15 e5 01  	slli	a0, a0, 30
80004c50: 33 65 b5 00  	or	a0, a0, a1
80004c54: 93 05 40 00  	addi	a1, zero, 4
80004c58: 63 0a b5 06  	beq	a0, a1, 0x80004ccc <.LBB1_7+0x58>
80004c5c: 63 1a 05 08  	bnez	a0, 0x80004cf0 <.LBB1_7+0x7c>
80004c60: 37 05 00 00  	lui	a0, 0
80004c64: 33 05 45 00  	add	a0, a0, tp
80004c68: 03 25 05 00  	lw	a0, 0(a0)
80004c6c: 03 25 05 00  	lw	a0, 0(a0)
80004c70: f3 25 40 f1  	csrr	a1, mhartid

80004c74 <.LBB1_7>:
;     asm volatile(
80004c74: 17 16 00 00  	auipc	a2, 1
80004c78: 13 06 c6 88  	addi	a2, a2, -1908
80004c7c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80004c80: 93 06 06 00  	mv	a3, a2
80004c84: 93 02 10 00  	addi	t0, zero, 1
80004c88: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80004c8c: e3 9e 02 fe  	bnez	t0, 0x80004c88 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80004c90: b7 06 00 00  	lui	a3, 0
80004c94: b3 86 46 00  	add	a3, a3, tp
80004c98: 83 a6 86 00  	lw	a3, 8(a3)
80004c9c: 33 85 a5 40  	sub	a0, a1, a0
80004ca0: 93 55 35 00  	srli	a1, a0, 3
80004ca4: 93 f5 c5 ff  	andi	a1, a1, -4
80004ca8: b3 85 b6 00  	add	a1, a3, a1
80004cac: 83 a6 05 00  	lw	a3, 0(a1)
80004cb0: 13 07 10 00  	addi	a4, zero, 1
80004cb4: 33 15 a7 00  	sll	a0, a4, a0
80004cb8: 13 45 f5 ff  	not	a0, a0
80004cbc: 33 f5 a6 00  	and	a0, a3, a0
80004cc0: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80004cc4: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80004cc8: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80004ccc: 37 05 00 00  	lui	a0, 0
80004cd0: 33 05 45 00  	add	a0, a0, tp
80004cd4: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004cd8: b7 05 00 00  	lui	a1, 0
80004cdc: b3 85 45 00  	add	a1, a1, tp
80004ce0: 83 a5 c5 00  	lw	a1, 12(a1)
80004ce4: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80004ce8: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004cec: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80004cf0: 67 80 00 00  	ret

Disassembly of section .init:

80004d00 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80004d00: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80004d04: 93 81 81 f0  	addi	gp, gp, -248

80004d08 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80004d08: 97 00 00 00  	auipc	ra, 0
80004d0c: e7 80 40 3c  	jalr	964(ra)

80004d10 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80004d10: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80004d14: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80004d18: 97 00 00 00  	auipc	ra, 0
80004d1c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80004d20: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80004d24: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80004d28: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80004d2c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80004d30: 63 92 02 02  	bnez	t0, 0x80004d54 <snrt.crt0.init_registers>

80004d34 <.Lpcrel_hi0>:
;     la        t0, _edata
80004d34: 97 02 00 00  	auipc	t0, 0
80004d38: 93 82 c2 7c  	addi	t0, t0, 1996

80004d3c <.Lpcrel_hi1>:
;     la        t1, _end
80004d3c: 17 03 00 00  	auipc	t1, 0
80004d40: 13 03 83 7c  	addi	t1, t1, 1992
;     bge       t0, t1, 2f
80004d44: 63 d8 62 00  	bge	t0, t1, 0x80004d54 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80004d48: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80004d4c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80004d50: e3 cc 62 fe  	blt	t0, t1, 0x80004d48 <.Lpcrel_hi1+0xc>

80004d54 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80004d54: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80004d58: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80004d5c: 63 82 02 08  	beqz	t0, 0x80004de0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80004d60: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80004d64: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80004d68: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80004d6c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80004d70: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80004d74: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80004d78: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80004d7c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80004d80: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80004d84: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80004d88: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80004d8c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80004d90: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80004d94: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80004d98: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80004d9c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80004da0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80004da4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80004da8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80004dac: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80004db0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80004db4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80004db8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80004dbc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80004dc0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80004dc4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80004dc8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80004dcc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80004dd0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80004dd4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80004dd8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80004ddc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80004de0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80004de0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80004de4: 23 a0 06 00  	sw	zero, 0(a3)

80004de8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80004de8: 97 02 00 00  	auipc	t0, 0
80004dec: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80004df0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80004df4: 93 87 06 00  	mv	a5, a3

80004df8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80004df8: 97 03 00 00  	auipc	t2, 0
80004dfc: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80004e00: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80004e04: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80004e08: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80004e0c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80004e10: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80004e14: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80004e18: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80004e1c: b3 86 66 40  	sub	a3, a3, t1

80004e20 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80004e20: 97 02 00 00  	auipc	t0, 0
80004e24: 93 82 82 5e  	addi	t0, t0, 1512

80004e28 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80004e28: 17 03 00 00  	auipc	t1, 0
80004e2c: 13 03 03 5e  	addi	t1, t1, 1504

80004e30 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80004e30: 97 03 00 00  	auipc	t2, 0
80004e34: 93 83 83 5d  	addi	t2, t2, 1496

80004e38 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80004e38: 17 0e 00 00  	auipc	t3, 0
80004e3c: 13 0e 0e 5e  	addi	t3, t3, 1504
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80004e40: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80004e44: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80004e48: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80004e4c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80004e50: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80004e54: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80004e58: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80004e5c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80004e60: 63 dc 62 00  	bge	t0, t1, 0x80004e78 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80004e64: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80004e68: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80004e6c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004e70: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80004e74: e3 c8 62 fe  	blt	t0, t1, 0x80004e64 <.Lpcrel_hi7+0x2c>

80004e78 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80004e78: 97 02 00 00  	auipc	t0, 0
80004e7c: 93 82 02 59  	addi	t0, t0, 1424

80004e80 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80004e80: 17 03 00 00  	auipc	t1, 0
80004e84: 13 03 83 59  	addi	t1, t1, 1432
;     bge       t0, t1, 2f
80004e88: 63 da 62 00  	bge	t0, t1, 0x80004e9c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80004e8c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80004e90: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004e94: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80004e98: e3 ca 72 fe  	blt	t0, t2, 0x80004e8c <.Lpcrel_hi9+0xc>

80004e9c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80004e9c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80004ea0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80004ea4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80004ea8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80004eac: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80004eb0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80004eb4: 97 00 00 00  	auipc	ra, 0
80004eb8: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
80004ebc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80004ec0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80004ec4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80004ec8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80004ecc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80004ed0: 13 01 41 01  	addi	sp, sp, 20

80004ed4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80004ed4: 97 02 00 00  	auipc	t0, 0
80004ed8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80004edc: 73 90 52 30  	csrw	mtvec, t0

80004ee0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80004ee0: 97 00 00 00  	auipc	ra, 0
80004ee4: e7 80 00 22  	jalr	544(ra)

80004ee8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80004ee8: 97 b0 ff ff  	auipc	ra, 1048571
80004eec: e7 80 c0 74  	jalr	1868(ra)
;     mv        s0, a0 # store return value in s0
80004ef0: 13 04 05 00  	mv	s0, a0

80004ef4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80004ef4: 97 00 00 00  	auipc	ra, 0
80004ef8: e7 80 c0 20  	jalr	524(ra)

80004efc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80004efc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80004f00: 97 00 00 00  	auipc	ra, 0
80004f04: e7 80 c0 22  	jalr	556(ra)
;     wfi
80004f08: 73 00 50 10  	wfi	
;     j       1b
80004f0c: 6f f0 df ff  	j	0x80004f08 <snrt.crt0.end+0xc>

80004f10 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80004f10: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80004f14: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80004f18: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80004f1c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80004f20: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80004f24: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80004f28: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80004f2c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80004f30: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80004f34: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80004f38: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80004f3c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80004f40: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80004f44: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80004f48: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80004f4c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80004f50: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80004f54: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80004f58: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80004f5c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80004f60: 63 84 02 08  	beqz	t0, 0x80004fe8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80004f64: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80004f68: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80004f6c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80004f70: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80004f74: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80004f78: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80004f7c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80004f80: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80004f84: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80004f88: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80004f8c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80004f90: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80004f94: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80004f98: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80004f9c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80004fa0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80004fa4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80004fa8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80004fac: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80004fb0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80004fb4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80004fb8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80004fbc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80004fc0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80004fc4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80004fc8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80004fcc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80004fd0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80004fd4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80004fd8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80004fdc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80004fe0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80004fe4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80004fe8: 97 00 00 00  	auipc	ra, 0
80004fec: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80004ff0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80004ff4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80004ff8: 63 84 02 08  	beqz	t0, 0x80005080 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80004ffc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80005000: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80005004: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80005008: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000500c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005010: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005014: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005018: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000501c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005020: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005024: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005028: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000502c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80005030: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80005034: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80005038: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000503c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80005040: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80005044: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80005048: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000504c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80005050: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80005054: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80005058: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000505c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80005060: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80005064: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80005068: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000506c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80005070: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80005074: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80005078: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000507c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80005080: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80005084: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80005088: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000508c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005090: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005094: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005098: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000509c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800050a0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800050a4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800050a8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800050ac: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800050b0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800050b4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800050b8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800050bc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800050c0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800050c4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800050c8: 73 00 20 30  	mret	

800050cc <_snrt_init_core_info>:
;     mv        a4, a1
800050cc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800050d0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800050d4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800050d8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800050dc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800050e0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800050e4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800050e8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800050ec: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
800050f0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
800050f4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
800050f8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
800050fc: 67 80 00 00  	ret

80005100 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80005100: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80005104: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80005108: 97 00 00 00  	auipc	ra, 0
8000510c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80005110: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005114: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005118: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000511c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005120: 67 80 00 00  	ret

80005124 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005124: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005128: 67 80 00 00  	ret

8000512c <_snrt_exit>:
;     addi      sp, sp, -8
8000512c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005130: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005134: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005138: 97 00 00 00  	auipc	ra, 0
8000513c: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80005140: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005144: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005148: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000514c: 63 1c 05 00  	bnez	a0, 0x80005164 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80005150: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80005154: 93 e2 12 00  	ori	t0, t0, 1

80005158 <.Lpcrel_hi11>:
;     la        t1, tohost
80005158: 17 03 00 00  	auipc	t1, 0
8000515c: 13 03 83 26  	addi	t1, t1, 616
;     sw        t0, 0(t1)
80005160: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80005164: 67 80 00 00  	ret
