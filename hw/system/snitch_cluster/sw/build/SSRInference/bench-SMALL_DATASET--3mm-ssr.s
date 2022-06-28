
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-SMALL_DATASET--3mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00003210 80000000 TEXT
  2 .init             00000468 80003210 TEXT
  3 .rodata           00000238 80003678 DATA
  4 .htif             00000048 800038c0 DATA
  5 .tdata            00000000 80003908 DATA
  6 .tbss             00000010 80003908 BSS
  7 .tbssend          00000000 80003918 DATA
  8 .sdata            000000d8 80003918 DATA
  9 .data             00000000 800039f0 DATA
 10 .sbss             00000004 800039f0 BSS
 11 .bss              00000000 800039f4 BSS
 12 .dram             00000000 800039f4 DATA
 13 .debug_info       000037ca 00000000 
 14 .debug_abbrev     00000c14 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002e5e 00000000 
 17 .debug_loc        000033c3 00000000 
 18 .debug_ranges     000003d8 00000000 
 19 .debug_str        00000b01 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002a8 00000000 
 23 .symtab           000033a0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000930 00000000 


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
8000065c: 27 38 81 00  	fsd	fs0, 16(sp)
80000660: 37 05 00 00  	lui	a0, 0
80000664: 33 05 45 00  	add	a0, a0, tp
80000668: 83 25 45 00  	lw	a1, 4(a0)
8000066c: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
80000670: e3 9a 05 4a  	bnez	a1, 0x80001324 <.LBB0_149+0x10>
;     return _snrt_team_current->root;
80000674: 37 05 00 00  	lui	a0, 0
80000678: 33 05 45 00  	add	a0, a0, tp
8000067c: 03 25 05 00  	lw	a0, 0(a0)
80000680: 83 26 05 00  	lw	a3, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000684: 83 a9 86 05  	lw	s3, 88(a3)
80000688: 83 a5 06 05  	lw	a1, 80(a3)
8000068c: 03 a6 46 05  	lw	a2, 84(a3)
80000690: 37 45 00 00  	lui	a0, 4
80000694: 13 05 05 e8  	addi	a0, a0, -384
80000698: 33 85 a9 00  	add	a0, s3, a0
8000069c: b3 07 b6 00  	add	a5, a2, a1
800006a0: 63 f6 a7 00  	bgeu	a5, a0, 0x800006ac <main+0x78>
800006a4: 13 0b 00 00  	mv	s6, zero
800006a8: 6f 00 00 01  	j	0x800006b8 <main+0x84>
;     void *ret = (void *)alloc->next;
800006ac: 13 8b 09 00  	mv	s6, s3
;     alloc->next += size;
800006b0: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b4: 93 09 05 00  	mv	s3, a0
800006b8: b7 55 00 00  	lui	a1, 5
800006bc: 13 85 05 b0  	addi	a0, a1, -1280
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c0: 33 85 a9 00  	add	a0, s3, a0
800006c4: 63 f6 a7 00  	bgeu	a5, a0, 0x800006d0 <main+0x9c>
800006c8: 13 07 00 00  	mv	a4, zero
800006cc: 6f 00 00 01  	j	0x800006dc <main+0xa8>
;     void *ret = (void *)alloc->next;
800006d0: 13 87 09 00  	mv	a4, s3
;     alloc->next += size;
800006d4: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d8: 93 09 05 00  	mv	s3, a0
800006dc: 13 88 05 78  	addi	a6, a1, 1920
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e0: 33 85 09 01  	add	a0, s3, a6
800006e4: 13 05 05 64  	addi	a0, a0, 1600
800006e8: 63 f6 a7 00  	bgeu	a5, a0, 0x800006f4 <main+0xc0>
800006ec: 93 0f 00 00  	mv	t6, zero
800006f0: 6f 00 00 01  	j	0x80000700 <main+0xcc>
;     void *ret = (void *)alloc->next;
800006f4: 93 8f 09 00  	mv	t6, s3
;     alloc->next += size;
800006f8: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006fc: 93 09 05 00  	mv	s3, a0
80000700: 37 75 00 00  	lui	a0, 7
80000704: 13 05 05 d6  	addi	a0, a0, -672
;     if (alloc->next + size > alloc->base + alloc->size) {
80000708: 33 85 a9 00  	add	a0, s3, a0
8000070c: 63 f6 a7 00  	bgeu	a5, a0, 0x80000718 <main+0xe4>
80000710: 13 09 00 00  	mv	s2, zero
80000714: 6f 00 00 01  	j	0x80000724 <main+0xf0>
;     void *ret = (void *)alloc->next;
80000718: 13 89 09 00  	mv	s2, s3
;     alloc->next += size;
8000071c: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000720: 93 09 05 00  	mv	s3, a0
80000724: 37 85 00 00  	lui	a0, 8
80000728: 13 05 05 d0  	addi	a0, a0, -768
;     if (alloc->next + size > alloc->base + alloc->size) {
8000072c: 33 85 a9 00  	add	a0, s3, a0
80000730: 63 f6 a7 00  	bgeu	a5, a0, 0x8000073c <main+0x108>
80000734: 93 0b 00 00  	mv	s7, zero
80000738: 6f 00 00 01  	j	0x80000748 <main+0x114>
;     void *ret = (void *)alloc->next;
8000073c: 93 8b 09 00  	mv	s7, s3
;     alloc->next += size;
80000740: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000744: 93 09 05 00  	mv	s3, a0
80000748: 37 b5 00 00  	lui	a0, 11
8000074c: 13 05 05 f0  	addi	a0, a0, -256
;     if (alloc->next + size > alloc->base + alloc->size) {
80000750: 33 85 a9 00  	add	a0, s3, a0
80000754: 63 fc a7 00  	bgeu	a5, a0, 0x8000076c <main+0x138>
80000758: 13 0f 00 00  	mv	t5, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
8000075c: 33 85 09 01  	add	a0, s3, a6
80000760: 63 e0 a7 02  	bltu	a5, a0, 0x80000780 <main+0x14c>
;     alloc->next += size;
80000764: 23 ac a6 04  	sw	a0, 88(a3)
80000768: 6f 00 c0 01  	j	0x80000784 <main+0x150>
;     void *ret = (void *)alloc->next;
8000076c: 13 8f 09 00  	mv	t5, s3
;     alloc->next += size;
80000770: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000774: 93 09 05 00  	mv	s3, a0
80000778: 33 85 09 01  	add	a0, s3, a6
8000077c: e3 f4 a7 fe  	bgeu	a5, a0, 0x80000764 <main+0x130>
80000780: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000784: 13 55 47 01  	srli	a0, a4, 20
80000788: 33 35 a0 00  	snez	a0, a0
8000078c: b7 b5 11 00  	lui	a1, 283
80000790: 93 85 95 50  	addi	a1, a1, 1289
80000794: b3 35 b7 00  	sltu	a1, a4, a1
80000798: b3 78 b5 00  	and	a7, a0, a1

8000079c <.LBB0_142>:
8000079c: 97 35 00 00  	auipc	a1, 3
800007a0: 93 85 c5 17  	addi	a1, a1, 380
800007a4: 93 06 00 00  	mv	a3, zero
800007a8: 63 88 08 08  	beqz	a7, 0x80000838 <.LBB0_142+0x9c>
800007ac: 13 05 80 00  	addi	a0, zero, 8
800007b0: 93 07 b0 03  	addi	a5, zero, 59
;   for (i = 0; i < ni; i++)
800007b4: 93 04 00 04  	addi	s1, zero, 64
800007b8: ab a0 97 00  	scfgw	a5, s1
800007bc: 93 07 00 0c  	addi	a5, zero, 192
800007c0: ab 20 f5 00  	scfgw	a0, a5
800007c4: 93 07 70 02  	addi	a5, zero, 39
800007c8: 93 04 00 06  	addi	s1, zero, 96
800007cc: ab a0 97 00  	scfgw	a5, s1
800007d0: 93 07 00 0e  	addi	a5, zero, 224
800007d4: ab 20 f5 00  	scfgw	a0, a5
800007d8: 13 05 00 02  	addi	a0, zero, 32
800007dc: ab 20 a0 00  	scfgw	zero, a0
800007e0: 2b 20 07 3a  	scfgwi	a4, 928
800007e4: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800007e8: 87 b1 05 00  	fld	ft3, 0(a1)
800007ec: 37 d5 cc cc  	lui	a0, 838861
800007f0: 93 05 d5 cc  	addi	a1, a0, -819
800007f4: 93 07 80 02  	addi	a5, zero, 40
800007f8: 93 04 c0 03  	addi	s1, zero, 60
800007fc: 13 04 10 00  	addi	s0, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000800: 33 35 b4 02  	mulhu	a0, s0, a1
80000804: 13 55 55 00  	srli	a0, a0, 5
80000808: 33 05 f5 02  	mul	a0, a0, a5
8000080c: 33 05 a4 40  	sub	a0, s0, a0
80000810: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000814: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000818: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nk; j++)
8000081c: 93 84 f4 ff  	addi	s1, s1, -1
80000820: 33 04 d4 00  	add	s0, s0, a3
80000824: e3 9e 04 fc  	bnez	s1, 0x80000800 <.LBB0_142+0x64>
;   for (i = 0; i < ni; i++)
80000828: 93 86 16 00  	addi	a3, a3, 1
8000082c: e3 96 f6 fc  	bne	a3, a5, 0x800007f8 <.LBB0_142+0x5c>
80000830: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000834: 6f 00 c0 05  	j	0x80000890 <.LBB0_142+0xf4>
80000838: 37 d5 cc cc  	lui	a0, 838861
8000083c: 87 b1 05 00  	fld	ft3, 0(a1)
80000840: 93 05 d5 cc  	addi	a1, a0, -819
80000844: 93 02 80 02  	addi	t0, zero, 40
80000848: 13 08 00 1e  	addi	a6, zero, 480
8000084c: 13 04 07 00  	mv	s0, a4
80000850: 93 04 00 00  	mv	s1, zero
80000854: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000858: 33 b5 b7 02  	mulhu	a0, a5, a1
8000085c: 13 55 55 00  	srli	a0, a0, 5
80000860: 33 05 55 02  	mul	a0, a0, t0
80000864: 33 85 a7 40  	sub	a0, a5, a0
80000868: 53 02 05 d2  	fcvt.d.w	ft4, a0
8000086c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000870: 33 05 94 00  	add	a0, s0, s1
80000874: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nk; j++)
80000878: 93 84 84 00  	addi	s1, s1, 8
8000087c: b3 87 d7 00  	add	a5, a5, a3
80000880: e3 9c 04 fd  	bne	s1, a6, 0x80000858 <.LBB0_142+0xbc>
;   for (i = 0; i < ni; i++)
80000884: 93 86 16 00  	addi	a3, a3, 1
80000888: 13 04 04 1e  	addi	s0, s0, 480
8000088c: e3 92 56 fc  	bne	a3, t0, 0x80000850 <.LBB0_142+0xb4>
;   for (i = 0; i < nk; i++)
80000890: 13 d5 4f 01  	srli	a0, t6, 20
80000894: 33 35 a0 00  	snez	a0, a0
80000898: b7 a5 11 00  	lui	a1, 282
8000089c: 93 85 95 24  	addi	a1, a1, 585
800008a0: b3 b5 bf 00  	sltu	a1, t6, a1
800008a4: 33 7e b5 00  	and	t3, a0, a1

800008a8 <.LBB0_143>:
800008a8: 97 36 00 00  	auipc	a3, 3
800008ac: 93 86 86 07  	addi	a3, a3, 120
800008b0: 93 05 00 00  	mv	a1, zero
800008b4: 63 0e 0e 08  	beqz	t3, 0x80000950 <.LBB0_143+0xa8>
800008b8: 13 05 80 00  	addi	a0, zero, 8
800008bc: 93 07 10 03  	addi	a5, zero, 49
;   for (i = 0; i < nk; i++)
800008c0: 93 04 00 04  	addi	s1, zero, 64
800008c4: ab a0 97 00  	scfgw	a5, s1
800008c8: 93 07 00 0c  	addi	a5, zero, 192
800008cc: ab 20 f5 00  	scfgw	a0, a5
800008d0: 93 07 b0 03  	addi	a5, zero, 59
800008d4: 93 04 00 06  	addi	s1, zero, 96
800008d8: ab a0 97 00  	scfgw	a5, s1
800008dc: 93 07 00 0e  	addi	a5, zero, 224
800008e0: ab 20 f5 00  	scfgw	a0, a5
800008e4: 13 05 00 02  	addi	a0, zero, 32
800008e8: ab 20 a0 00  	scfgw	zero, a0
800008ec: 2b a0 0f 3a  	scfgwi	t6, 928
800008f0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800008f4: 93 02 20 00  	addi	t0, zero, 2
800008f8: 37 85 eb 51  	lui	a0, 335544
800008fc: 87 b1 06 00  	fld	ft3, 0(a3)
80000900: 93 06 f5 51  	addi	a3, a0, 1311
80000904: 93 04 20 03  	addi	s1, zero, 50
80000908: 13 08 c0 03  	addi	a6, zero, 60
8000090c: 93 87 02 00  	mv	a5, t0
80000910: 13 04 20 03  	addi	s0, zero, 50
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000914: 33 b5 d7 02  	mulhu	a0, a5, a3
80000918: 13 55 45 00  	srli	a0, a0, 4
8000091c: 33 05 95 02  	mul	a0, a0, s1
80000920: 33 85 a7 40  	sub	a0, a5, a0
80000924: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000928: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000092c: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nj; j++)
80000930: 13 04 f4 ff  	addi	s0, s0, -1
80000934: b3 87 b7 00  	add	a5, a5, a1
80000938: e3 1e 04 fc  	bnez	s0, 0x80000914 <.LBB0_143+0x6c>
;   for (i = 0; i < nk; i++)
8000093c: 93 85 15 00  	addi	a1, a1, 1
80000940: 93 82 12 00  	addi	t0, t0, 1
80000944: e3 94 05 fd  	bne	a1, a6, 0x8000090c <.LBB0_143+0x64>
80000948: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000094c: 6f 00 80 06  	j	0x800009b4 <.LBB0_143+0x10c>
80000950: 93 02 20 00  	addi	t0, zero, 2
80000954: 37 85 eb 51  	lui	a0, 335544
80000958: 93 04 f5 51  	addi	s1, a0, 1311
8000095c: 87 b1 06 00  	fld	ft3, 0(a3)
80000960: 13 03 20 03  	addi	t1, zero, 50
80000964: 93 03 00 19  	addi	t2, zero, 400
80000968: 13 08 c0 03  	addi	a6, zero, 60
8000096c: 93 87 0f 00  	mv	a5, t6
80000970: 93 06 00 00  	mv	a3, zero
80000974: 13 84 02 00  	mv	s0, t0
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000978: 33 35 94 02  	mulhu	a0, s0, s1
8000097c: 13 55 45 00  	srli	a0, a0, 4
80000980: 33 05 65 02  	mul	a0, a0, t1
80000984: 33 05 a4 40  	sub	a0, s0, a0
80000988: 53 02 05 d2  	fcvt.d.w	ft4, a0
8000098c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000990: 33 85 d7 00  	add	a0, a5, a3
80000994: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nj; j++)
80000998: 93 86 86 00  	addi	a3, a3, 8
8000099c: 33 04 b4 00  	add	s0, s0, a1
800009a0: e3 9c 76 fc  	bne	a3, t2, 0x80000978 <.LBB0_143+0xd0>
;   for (i = 0; i < nk; i++)
800009a4: 93 85 15 00  	addi	a1, a1, 1
800009a8: 93 87 07 19  	addi	a5, a5, 400
800009ac: 93 82 12 00  	addi	t0, t0, 1
800009b0: e3 90 05 fd  	bne	a1, a6, 0x80000970 <.LBB0_143+0xc8>
;   for (i = 0; i < nj; i++)
800009b4: 13 d5 4b 01  	srli	a0, s7, 20
800009b8: 33 35 a0 00  	snez	a0, a0
800009bc: b7 85 11 00  	lui	a1, 280
800009c0: 93 85 95 30  	addi	a1, a1, 777
800009c4: b3 b5 bb 00  	sltu	a1, s7, a1
800009c8: b3 72 b5 00  	and	t0, a0, a1

800009cc <.LBB0_144>:
800009cc: 97 36 00 00  	auipc	a3, 3
800009d0: 93 86 c6 f5  	addi	a3, a3, -164
800009d4: 13 03 00 00  	mv	t1, zero
800009d8: 93 07 00 00  	mv	a5, zero
800009dc: 63 8e 02 08  	beqz	t0, 0x80000a78 <.LBB0_144+0xac>
800009e0: 13 05 80 00  	addi	a0, zero, 8
800009e4: 93 05 f0 04  	addi	a1, zero, 79
;   for (i = 0; i < nj; i++)
800009e8: 93 04 00 04  	addi	s1, zero, 64
800009ec: ab a0 95 00  	scfgw	a1, s1
800009f0: 93 05 00 0c  	addi	a1, zero, 192
800009f4: ab 20 b5 00  	scfgw	a0, a1
800009f8: 93 05 10 03  	addi	a1, zero, 49
800009fc: 93 04 00 06  	addi	s1, zero, 96
80000a00: ab a0 95 00  	scfgw	a1, s1
80000a04: 93 05 00 0e  	addi	a1, zero, 224
80000a08: ab 20 b5 00  	scfgw	a0, a1
80000a0c: 13 05 00 02  	addi	a0, zero, 32
80000a10: ab 20 a0 00  	scfgw	zero, a0
80000a14: 2b a0 0b 3a  	scfgwi	s7, 928
80000a18: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000a1c: 37 a5 0e ea  	lui	a0, 958698
80000a20: 87 b1 06 00  	fld	ft3, 0(a3)
80000a24: 93 06 b5 0e  	addi	a3, a0, 235
80000a28: 93 04 60 04  	addi	s1, zero, 70
80000a2c: 13 08 20 03  	addi	a6, zero, 50
80000a30: 13 04 00 05  	addi	s0, zero, 80
80000a34: 93 05 03 00  	mv	a1, t1
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000a38: 13 d5 15 00  	srli	a0, a1, 1
80000a3c: 33 35 d5 02  	mulhu	a0, a0, a3
80000a40: 13 55 55 00  	srli	a0, a0, 5
80000a44: 33 05 95 02  	mul	a0, a0, s1
80000a48: 33 85 a5 40  	sub	a0, a1, a0
80000a4c: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000a50: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a54: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nm; j++)
80000a58: 13 04 f4 ff  	addi	s0, s0, -1
80000a5c: b3 85 f5 00  	add	a1, a1, a5
80000a60: e3 1c 04 fc  	bnez	s0, 0x80000a38 <.LBB0_144+0x6c>
;   for (i = 0; i < nj; i++)
80000a64: 93 87 17 00  	addi	a5, a5, 1
80000a68: 13 03 33 00  	addi	t1, t1, 3
80000a6c: e3 92 07 fd  	bne	a5, a6, 0x80000a30 <.LBB0_144+0x64>
80000a70: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000a74: 6f 00 80 06  	j	0x80000adc <.LBB0_144+0x110>
80000a78: 37 a5 0e ea  	lui	a0, 958698
80000a7c: 93 04 b5 0e  	addi	s1, a0, 235
80000a80: 87 b1 06 00  	fld	ft3, 0(a3)
80000a84: 93 03 60 04  	addi	t2, zero, 70
80000a88: 93 0e 00 28  	addi	t4, zero, 640
80000a8c: 13 08 20 03  	addi	a6, zero, 50
80000a90: 93 85 0b 00  	mv	a1, s7
80000a94: 93 06 00 00  	mv	a3, zero
80000a98: 13 04 03 00  	mv	s0, t1
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000a9c: 13 55 14 00  	srli	a0, s0, 1
80000aa0: 33 35 95 02  	mulhu	a0, a0, s1
80000aa4: 13 55 55 00  	srli	a0, a0, 5
80000aa8: 33 05 75 02  	mul	a0, a0, t2
80000aac: 33 05 a4 40  	sub	a0, s0, a0
80000ab0: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000ab4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ab8: 33 85 d5 00  	add	a0, a1, a3
80000abc: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nm; j++)
80000ac0: 93 86 86 00  	addi	a3, a3, 8
80000ac4: 33 04 f4 00  	add	s0, s0, a5
80000ac8: e3 9a d6 fd  	bne	a3, t4, 0x80000a9c <.LBB0_144+0xd0>
;   for (i = 0; i < nj; i++)
80000acc: 93 87 17 00  	addi	a5, a5, 1
80000ad0: 93 85 05 28  	addi	a1, a1, 640
80000ad4: 13 03 33 00  	addi	t1, t1, 3
80000ad8: e3 9e 07 fb  	bne	a5, a6, 0x80000a94 <.LBB0_144+0xc8>
;   for (i = 0; i < nm; i++)
80000adc: 13 55 4f 01  	srli	a0, t5, 20
80000ae0: 33 35 a0 00  	snez	a0, a0
80000ae4: b7 55 11 00  	lui	a1, 277
80000ae8: 93 85 95 10  	addi	a1, a1, 265
80000aec: b3 35 bf 00  	sltu	a1, t5, a1
80000af0: b3 7e b5 00  	and	t4, a0, a1

80000af4 <.LBB0_145>:
80000af4: 97 36 00 00  	auipc	a3, 3
80000af8: 93 86 c6 e3  	addi	a3, a3, -452
80000afc: 93 05 00 00  	mv	a1, zero
80000b00: 63 8e 0e 08  	beqz	t4, 0x80000b9c <.LBB0_145+0xa8>
80000b04: 13 05 80 00  	addi	a0, zero, 8
80000b08: 93 07 50 04  	addi	a5, zero, 69
;   for (i = 0; i < nm; i++)
80000b0c: 93 04 00 04  	addi	s1, zero, 64
80000b10: ab a0 97 00  	scfgw	a5, s1
80000b14: 93 07 00 0c  	addi	a5, zero, 192
80000b18: ab 20 f5 00  	scfgw	a0, a5
80000b1c: 93 07 f0 04  	addi	a5, zero, 79
80000b20: 93 04 00 06  	addi	s1, zero, 96
80000b24: ab a0 97 00  	scfgw	a5, s1
80000b28: 93 07 00 0e  	addi	a5, zero, 224
80000b2c: ab 20 f5 00  	scfgw	a0, a5
80000b30: 13 05 00 02  	addi	a0, zero, 32
80000b34: ab 20 a0 00  	scfgw	zero, a0
80000b38: 2b 20 0f 3a  	scfgwi	t5, 928
80000b3c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000b40: 13 03 20 00  	addi	t1, zero, 2
80000b44: 37 95 88 88  	lui	a0, 559241
80000b48: 87 b1 06 00  	fld	ft3, 0(a3)
80000b4c: 93 06 95 88  	addi	a3, a0, -1911
80000b50: 93 04 c0 03  	addi	s1, zero, 60
80000b54: 13 08 00 05  	addi	a6, zero, 80
80000b58: 13 04 60 04  	addi	s0, zero, 70
80000b5c: 93 07 03 00  	mv	a5, t1
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80000b60: 33 b5 d7 02  	mulhu	a0, a5, a3
80000b64: 13 55 55 00  	srli	a0, a0, 5
80000b68: 33 05 95 02  	mul	a0, a0, s1
80000b6c: 33 85 a7 40  	sub	a0, a5, a0
80000b70: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000b74: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b78: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nl; j++)
80000b7c: 13 04 f4 ff  	addi	s0, s0, -1
80000b80: b3 87 b7 00  	add	a5, a5, a1
80000b84: e3 1e 04 fc  	bnez	s0, 0x80000b60 <.LBB0_145+0x6c>
;   for (i = 0; i < nm; i++)
80000b88: 93 85 15 00  	addi	a1, a1, 1
80000b8c: 13 03 23 00  	addi	t1, t1, 2
80000b90: e3 94 05 fd  	bne	a1, a6, 0x80000b58 <.LBB0_145+0x64>
80000b94: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000b98: 6f 00 80 06  	j	0x80000c00 <.LBB0_145+0x10c>
80000b9c: 13 03 20 00  	addi	t1, zero, 2
80000ba0: 37 95 88 88  	lui	a0, 559241
80000ba4: 93 04 95 88  	addi	s1, a0, -1911
80000ba8: 87 b1 06 00  	fld	ft3, 0(a3)
80000bac: 93 03 c0 03  	addi	t2, zero, 60
80000bb0: 13 0a 00 23  	addi	s4, zero, 560
80000bb4: 13 08 00 05  	addi	a6, zero, 80
80000bb8: 93 07 0f 00  	mv	a5, t5
80000bbc: 93 06 00 00  	mv	a3, zero
80000bc0: 13 04 03 00  	mv	s0, t1
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80000bc4: 33 35 94 02  	mulhu	a0, s0, s1
80000bc8: 13 55 55 00  	srli	a0, a0, 5
80000bcc: 33 05 75 02  	mul	a0, a0, t2
80000bd0: 33 05 a4 40  	sub	a0, s0, a0
80000bd4: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000bd8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bdc: 33 85 d7 00  	add	a0, a5, a3
80000be0: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nl; j++)
80000be4: 93 86 86 00  	addi	a3, a3, 8
80000be8: 33 04 b4 00  	add	s0, s0, a1
80000bec: e3 9c 46 fd  	bne	a3, s4, 0x80000bc4 <.LBB0_145+0xd0>
;   for (i = 0; i < nm; i++)
80000bf0: 93 85 15 00  	addi	a1, a1, 1
80000bf4: 93 87 07 23  	addi	a5, a5, 560
80000bf8: 13 03 23 00  	addi	t1, t1, 2
80000bfc: e3 90 05 fd  	bne	a1, a6, 0x80000bbc <.LBB0_145+0xc8>
80000c00: 37 55 00 00  	lui	a0, 5
80000c04: 13 03 85 77  	addi	t1, a0, 1912
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80000c08: 73 28 00 b0  	csrr	a6, mcycle
80000c0c: 13 05 85 af  	addi	a0, a0, -1288
;  for (i = 0; i < ni; i++)
80000c10: b3 06 a7 00  	add	a3, a4, a0
80000c14: 33 85 6f 00  	add	a0, t6, t1
80000c18: b3 37 f5 01  	sltu	a5, a0, t6
80000c1c: 93 05 05 64  	addi	a1, a0, 1600
80000c20: 33 b5 a5 00  	sltu	a0, a1, a0
80000c24: b7 44 00 00  	lui	s1, 4
80000c28: 93 84 84 e7  	addi	s1, s1, -392
80000c2c: b3 03 9b 00  	add	t2, s6, s1
80000c30: 63 f6 e6 02  	bgeu	a3, a4, 0x80000c5c <.LBB0_145+0x168>
80000c34: 93 06 00 00  	mv	a3, zero
80000c38: 33 85 a7 00  	add	a0, a5, a0
80000c3c: 63 e6 63 03  	bltu	t2, s6, 0x80000c68 <.LBB0_145+0x174>
80000c40: b3 b7 e3 00  	sltu	a5, t2, a4
;  for (i = 0; i < ni; i++)
80000c44: 63 16 05 02  	bnez	a0, 0x80000c70 <.LBB0_145+0x17c>
80000c48: b3 b5 65 01  	sltu	a1, a1, s6
;  for (i = 0; i < ni; i++)
80000c4c: 33 e5 d7 00  	or	a0, a5, a3
80000c50: 63 e6 63 03  	bltu	t2, s6, 0x80000c7c <.LBB0_145+0x188>
80000c54: b3 b6 f3 01  	sltu	a3, t2, t6
80000c58: 6f 00 80 02  	j	0x80000c80 <.LBB0_145+0x18c>
80000c5c: b3 b6 66 01  	sltu	a3, a3, s6
;  for (i = 0; i < ni; i++)
80000c60: 33 85 a7 00  	add	a0, a5, a0
80000c64: e3 fe 63 fd  	bgeu	t2, s6, 0x80000c40 <.LBB0_145+0x14c>
80000c68: 93 07 00 00  	mv	a5, zero
80000c6c: e3 0e 05 fc  	beqz	a0, 0x80000c48 <.LBB0_145+0x154>
80000c70: 93 05 00 00  	mv	a1, zero
80000c74: 33 e5 d7 00  	or	a0, a5, a3
80000c78: e3 fe 63 fd  	bgeu	t2, s6, 0x80000c54 <.LBB0_145+0x160>
80000c7c: 93 06 00 00  	mv	a3, zero
80000c80: b3 e5 b6 00  	or	a1, a3, a1
80000c84: 33 75 b5 00  	and	a0, a0, a1
80000c88: 33 f5 a8 00  	and	a0, a7, a0
80000c8c: 33 75 ae 00  	and	a0, t3, a0
80000c90: 63 00 05 10  	beqz	a0, 0x80000d90 <.LBB0_145+0x29c>
80000c94: 93 06 00 00  	mv	a3, zero
80000c98: 13 05 80 00  	addi	a0, zero, 8
80000c9c: 13 0e b0 03  	addi	t3, zero, 59
;  for (i = 0; i < ni; i++)
80000ca0: 93 05 00 04  	addi	a1, zero, 64
80000ca4: 93 04 00 0c  	addi	s1, zero, 192
80000ca8: ab 20 be 00  	scfgw	t3, a1
80000cac: ab 20 95 00  	scfgw	a0, s1
80000cb0: 93 08 80 e2  	addi	a7, zero, -472
80000cb4: 93 04 10 03  	addi	s1, zero, 49
80000cb8: 13 04 00 06  	addi	s0, zero, 96
80000cbc: 93 05 00 0e  	addi	a1, zero, 224
80000cc0: ab a0 84 00  	scfgw	s1, s0
80000cc4: ab a0 b8 00  	scfgw	a7, a1
80000cc8: 13 0a 70 02  	addi	s4, zero, 39
80000ccc: 93 05 00 08  	addi	a1, zero, 128
80000cd0: 93 08 00 10  	addi	a7, zero, 256
80000cd4: ab 20 ba 00  	scfgw	s4, a1
80000cd8: ab 20 15 01  	scfgw	a0, a7
80000cdc: 13 05 00 02  	addi	a0, zero, 32
80000ce0: ab 20 a0 00  	scfgw	zero, a0
80000ce4: 2b 20 07 34  	scfgwi	a4, 832
80000ce8: 93 05 00 19  	addi	a1, zero, 400
80000cec: 13 05 10 00  	addi	a0, zero, 1
80000cf0: 13 07 05 04  	addi	a4, a0, 64
80000cf4: 93 07 05 0c  	addi	a5, a0, 192
80000cf8: ab 20 ee 00  	scfgw	t3, a4
80000cfc: ab a0 f5 00  	scfgw	a1, a5
80000d00: 37 a7 ff ff  	lui	a4, 1048570
80000d04: 93 07 87 3d  	addi	a5, a4, 984
80000d08: 13 04 05 06  	addi	s0, a0, 96
80000d0c: ab a0 84 00  	scfgw	s1, s0
80000d10: 93 04 05 0e  	addi	s1, a0, 224
80000d14: ab a0 97 00  	scfgw	a5, s1
80000d18: 13 07 87 24  	addi	a4, a4, 584
80000d1c: 93 07 05 08  	addi	a5, a0, 128
80000d20: 93 04 05 10  	addi	s1, a0, 256
80000d24: ab 20 fa 00  	scfgw	s4, a5
80000d28: ab 20 97 00  	scfgw	a4, s1
80000d2c: 13 05 05 02  	addi	a0, a0, 32
80000d30: ab 20 a0 00  	scfgw	zero, a0
80000d34: 2b a0 1f 34  	scfgwi	t6, 833
80000d38: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000d3c: 13 07 20 03  	addi	a4, zero, 50
80000d40: 93 07 80 02  	addi	a5, zero, 40
80000d44: 93 04 00 00  	mv	s1, zero
;  E[i][j] = 0.0;
80000d48: 33 85 b6 02  	mul	a0, a3, a1
80000d4c: 33 05 ab 00  	add	a0, s6, a0
80000d50: 13 94 34 00  	slli	s0, s1, 3
80000d54: 33 04 85 00  	add	s0, a0, s0
80000d58: 23 22 04 00  	sw	zero, 4(s0)
80000d5c: 23 20 04 00  	sw	zero, 0(s0)
80000d60: 13 05 c0 03  	addi	a0, zero, 60
;    E[i][j] += A[i][k] * B[k][j];
80000d64: 87 32 04 00  	fld	ft5, 0(s0)
80000d68: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
;  for (k = 0; k < nk; ++k)
80000d6c: 13 05 f5 ff  	addi	a0, a0, -1
;    E[i][j] += A[i][k] * B[k][j];
80000d70: 27 30 34 00  	fsd	ft3, 0(s0)
;  for (k = 0; k < nk; ++k)
80000d74: e3 18 05 fe  	bnez	a0, 0x80000d64 <.LBB0_145+0x270>
;     for (j = 0; j < nj; j++)
80000d78: 93 84 14 00  	addi	s1, s1, 1
80000d7c: e3 96 e4 fc  	bne	s1, a4, 0x80000d48 <.LBB0_145+0x254>
;  for (i = 0; i < ni; i++)
80000d80: 93 86 16 00  	addi	a3, a3, 1
80000d84: e3 90 f6 fc  	bne	a3, a5, 0x80000d44 <.LBB0_145+0x250>
80000d88: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000d8c: 6f 00 00 08  	j	0x80000e0c <.LBB0_145+0x318>
80000d90: 93 0a 00 00  	mv	s5, zero
80000d94: 13 0e 00 19  	addi	t3, zero, 400
80000d98: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000d9c: 93 05 00 1e  	addi	a1, zero, 480
80000da0: 13 0a 20 03  	addi	s4, zero, 50
80000da4: 93 08 80 02  	addi	a7, zero, 40
80000da8: 13 04 00 00  	mv	s0, zero
80000dac: 13 85 0f 00  	mv	a0, t6
;    E[i][j] += A[i][k] * B[k][j];
80000db0: 93 04 00 00  	mv	s1, zero
;  E[i][j] = 0.0;
80000db4: b3 86 ca 03  	mul	a3, s5, t3
80000db8: b3 06 db 00  	add	a3, s6, a3
80000dbc: 93 17 34 00  	slli	a5, s0, 3
80000dc0: b3 86 f6 00  	add	a3, a3, a5
80000dc4: 23 a2 06 00  	sw	zero, 4(a3)
80000dc8: 23 a0 06 00  	sw	zero, 0(a3)
;    E[i][j] += A[i][k] * B[k][j];
80000dcc: 93 07 05 00  	mv	a5, a0
80000dd0: 53 82 31 22  	fmv.d	ft4, ft3
80000dd4: 33 06 97 00  	add	a2, a4, s1
80000dd8: 87 32 06 00  	fld	ft5, 0(a2)
80000ddc: 07 b3 07 00  	fld	ft6, 0(a5)
80000de0: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80000de4: 27 b0 46 00  	fsd	ft4, 0(a3)
;  for (k = 0; k < nk; ++k)
80000de8: 93 84 84 00  	addi	s1, s1, 8
80000dec: 93 87 07 19  	addi	a5, a5, 400
80000df0: e3 92 b4 fe  	bne	s1, a1, 0x80000dd4 <.LBB0_145+0x2e0>
;     for (j = 0; j < nj; j++)
80000df4: 13 04 14 00  	addi	s0, s0, 1
80000df8: 13 05 85 00  	addi	a0, a0, 8
80000dfc: e3 1a 44 fb  	bne	s0, s4, 0x80000db0 <.LBB0_145+0x2bc>
;  for (i = 0; i < ni; i++)
80000e00: 93 8a 1a 00  	addi	s5, s5, 1
80000e04: 13 07 07 1e  	addi	a4, a4, 480
80000e08: e3 90 1a fb  	bne	s5, a7, 0x80000da8 <.LBB0_145+0x2b4>
80000e0c: 37 85 00 00  	lui	a0, 8
80000e10: 13 05 85 cf  	addi	a0, a0, -776
;   for (i = 0; i < nj; i++)
80000e14: b3 85 ab 00  	add	a1, s7, a0
80000e18: 37 b5 00 00  	lui	a0, 11
80000e1c: 13 05 85 ef  	addi	a0, a0, -264
80000e20: 37 76 00 00  	lui	a2, 7
80000e24: 13 06 86 d5  	addi	a2, a2, -680
80000e28: 33 0e c9 00  	add	t3, s2, a2
80000e2c: 63 f6 75 03  	bgeu	a1, s7, 0x80000e58 <.LBB0_145+0x364>
80000e30: 93 05 00 00  	mv	a1, zero
80000e34: 33 05 af 00  	add	a0, t5, a0
80000e38: 63 66 2e 03  	bltu	t3, s2, 0x80000e64 <.LBB0_145+0x370>
80000e3c: 33 37 7e 01  	sltu	a4, t3, s7
;   for (i = 0; i < nj; i++)
80000e40: 63 66 e5 03  	bltu	a0, t5, 0x80000e6c <.LBB0_145+0x378>
80000e44: b3 36 25 01  	sltu	a3, a0, s2
;   for (i = 0; i < nj; i++)
80000e48: 33 65 b7 00  	or	a0, a4, a1
80000e4c: 63 66 2e 03  	bltu	t3, s2, 0x80000e78 <.LBB0_145+0x384>
80000e50: b3 35 ee 01  	sltu	a1, t3, t5
80000e54: 6f 00 80 02  	j	0x80000e7c <.LBB0_145+0x388>
80000e58: b3 b5 25 01  	sltu	a1, a1, s2
;   for (i = 0; i < nj; i++)
80000e5c: 33 05 af 00  	add	a0, t5, a0
80000e60: e3 7e 2e fd  	bgeu	t3, s2, 0x80000e3c <.LBB0_145+0x348>
80000e64: 13 07 00 00  	mv	a4, zero
80000e68: e3 7e e5 fd  	bgeu	a0, t5, 0x80000e44 <.LBB0_145+0x350>
80000e6c: 93 06 00 00  	mv	a3, zero
80000e70: 33 65 b7 00  	or	a0, a4, a1
80000e74: e3 7e 2e fd  	bgeu	t3, s2, 0x80000e50 <.LBB0_145+0x35c>
80000e78: 93 05 00 00  	mv	a1, zero
80000e7c: b3 e5 d5 00  	or	a1, a1, a3
80000e80: 33 75 b5 00  	and	a0, a0, a1
80000e84: 33 f5 a2 00  	and	a0, t0, a0
80000e88: 33 f5 ae 00  	and	a0, t4, a0
80000e8c: b3 b8 63 01  	sltu	a7, t2, s6
80000e90: 93 06 00 00  	mv	a3, zero
80000e94: 63 0e 05 0e  	beqz	a0, 0x80000f90 <.LBB0_145+0x49c>
80000e98: 13 05 80 00  	addi	a0, zero, 8
80000e9c: 13 06 f0 04  	addi	a2, zero, 79
;   for (i = 0; i < nj; i++)
80000ea0: 93 05 00 04  	addi	a1, zero, 64
80000ea4: 13 07 00 0c  	addi	a4, zero, 192
80000ea8: ab 20 b6 00  	scfgw	a2, a1
80000eac: ab 20 e5 00  	scfgw	a0, a4
80000eb0: 93 05 80 d8  	addi	a1, zero, -632
80000eb4: 13 07 50 04  	addi	a4, zero, 69
80000eb8: 93 07 00 06  	addi	a5, zero, 96
80000ebc: 93 04 00 0e  	addi	s1, zero, 224
80000ec0: ab 20 f7 00  	scfgw	a4, a5
80000ec4: ab a0 95 00  	scfgw	a1, s1
80000ec8: 93 07 10 03  	addi	a5, zero, 49
80000ecc: 93 05 00 08  	addi	a1, zero, 128
80000ed0: 93 04 00 10  	addi	s1, zero, 256
80000ed4: ab a0 b7 00  	scfgw	a5, a1
80000ed8: ab 20 95 00  	scfgw	a0, s1
80000edc: 13 05 00 02  	addi	a0, zero, 32
80000ee0: ab 20 a0 00  	scfgw	zero, a0
80000ee4: 2b a0 0b 34  	scfgwi	s7, 832
80000ee8: 93 05 00 23  	addi	a1, zero, 560
80000eec: 13 05 10 00  	addi	a0, zero, 1
80000ef0: 93 04 05 04  	addi	s1, a0, 64
80000ef4: 13 04 05 0c  	addi	s0, a0, 192
80000ef8: ab 20 96 00  	scfgw	a2, s1
80000efc: ab a0 85 00  	scfgw	a1, s0
80000f00: 37 56 ff ff  	lui	a2, 1048565
80000f04: 93 04 86 33  	addi	s1, a2, 824
80000f08: 13 04 05 06  	addi	s0, a0, 96
80000f0c: ab 20 87 00  	scfgw	a4, s0
80000f10: 13 07 05 0e  	addi	a4, a0, 224
80000f14: ab a0 e4 00  	scfgw	s1, a4
80000f18: 13 06 86 10  	addi	a2, a2, 264
80000f1c: 13 07 05 08  	addi	a4, a0, 128
80000f20: 93 04 05 10  	addi	s1, a0, 256
80000f24: ab a0 e7 00  	scfgw	a5, a4
80000f28: ab 20 96 00  	scfgw	a2, s1
80000f2c: 13 05 05 02  	addi	a0, a0, 32
80000f30: ab 20 a0 00  	scfgw	zero, a0
80000f34: 2b 20 1f 34  	scfgwi	t5, 833
80000f38: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000f3c: 13 06 60 04  	addi	a2, zero, 70
80000f40: 13 07 20 03  	addi	a4, zero, 50
80000f44: 93 07 00 00  	mv	a5, zero
;  F[i][j] = 0.0;
80000f48: 33 85 b6 02  	mul	a0, a3, a1
80000f4c: 33 05 a9 00  	add	a0, s2, a0
80000f50: 93 94 37 00  	slli	s1, a5, 3
80000f54: b3 04 95 00  	add	s1, a0, s1
80000f58: 23 a2 04 00  	sw	zero, 4(s1)
80000f5c: 23 a0 04 00  	sw	zero, 0(s1)
80000f60: 13 05 00 05  	addi	a0, zero, 80
;    F[i][j] += C[i][k] * D[k][j];
80000f64: 87 b2 04 00  	fld	ft5, 0(s1)
80000f68: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
;  for (k = 0; k < nm; ++k)
80000f6c: 13 05 f5 ff  	addi	a0, a0, -1
;    F[i][j] += C[i][k] * D[k][j];
80000f70: 27 b0 34 00  	fsd	ft3, 0(s1)
;  for (k = 0; k < nm; ++k)
80000f74: e3 18 05 fe  	bnez	a0, 0x80000f64 <.LBB0_145+0x470>
;     for (j = 0; j < nl; j++)
80000f78: 93 87 17 00  	addi	a5, a5, 1
80000f7c: e3 96 c7 fc  	bne	a5, a2, 0x80000f48 <.LBB0_145+0x454>
;   for (i = 0; i < nj; i++)
80000f80: 93 86 16 00  	addi	a3, a3, 1
80000f84: e3 90 e6 fc  	bne	a3, a4, 0x80000f44 <.LBB0_145+0x450>
80000f88: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f8c: 6f 00 c0 07  	j	0x80001008 <.LBB0_145+0x514>
80000f90: 93 0e 00 23  	addi	t4, zero, 560
80000f94: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000f98: 93 05 00 28  	addi	a1, zero, 640
80000f9c: 93 0f 60 04  	addi	t6, zero, 70
80000fa0: 93 02 20 03  	addi	t0, zero, 50
80000fa4: 13 04 00 00  	mv	s0, zero
80000fa8: 13 07 0f 00  	mv	a4, t5
;    F[i][j] += C[i][k] * D[k][j];
80000fac: 93 07 00 00  	mv	a5, zero
;  F[i][j] = 0.0;
80000fb0: 33 85 d6 03  	mul	a0, a3, t4
80000fb4: 33 05 a9 00  	add	a0, s2, a0
80000fb8: 13 16 34 00  	slli	a2, s0, 3
80000fbc: b3 04 c5 00  	add	s1, a0, a2
80000fc0: 23 a2 04 00  	sw	zero, 4(s1)
80000fc4: 23 a0 04 00  	sw	zero, 0(s1)
;    F[i][j] += C[i][k] * D[k][j];
80000fc8: 13 05 07 00  	mv	a0, a4
80000fcc: 53 82 31 22  	fmv.d	ft4, ft3
80000fd0: 33 86 fb 00  	add	a2, s7, a5
80000fd4: 87 32 06 00  	fld	ft5, 0(a2)
80000fd8: 07 33 05 00  	fld	ft6, 0(a0)
80000fdc: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80000fe0: 27 b0 44 00  	fsd	ft4, 0(s1)
;  for (k = 0; k < nm; ++k)
80000fe4: 93 87 87 00  	addi	a5, a5, 8
80000fe8: 13 05 05 23  	addi	a0, a0, 560
80000fec: e3 92 b7 fe  	bne	a5, a1, 0x80000fd0 <.LBB0_145+0x4dc>
;     for (j = 0; j < nl; j++)
80000ff0: 13 04 14 00  	addi	s0, s0, 1
80000ff4: 13 07 87 00  	addi	a4, a4, 8
80000ff8: e3 1a f4 fb  	bne	s0, t6, 0x80000fac <.LBB0_145+0x4b8>
;   for (i = 0; i < nj; i++)
80000ffc: 93 86 16 00  	addi	a3, a3, 1
80001000: 93 8b 0b 28  	addi	s7, s7, 640
80001004: e3 90 56 fa  	bne	a3, t0, 0x80000fa4 <.LBB0_145+0x4b0>
;   for (i = 0; i < ni; i++)
80001008: b3 85 69 00  	add	a1, s3, t1
8000100c: 63 86 08 02  	beqz	a7, 0x80001038 <.LBB0_145+0x544>
80001010: 13 06 00 00  	mv	a2, zero
80001014: 33 35 2e 01  	sltu	a0, t3, s2
;   for (i = 0; i < ni; i++)
80001018: 63 e6 35 03  	bltu	a1, s3, 0x80001044 <.LBB0_145+0x550>
8000101c: 33 b7 65 01  	sltu	a4, a1, s6
;   for (i = 0; i < ni; i++)
80001020: 63 16 05 02  	bnez	a0, 0x8000104c <.LBB0_145+0x558>
80001024: b3 36 3e 01  	sltu	a3, t3, s3
;   for (i = 0; i < ni; i++)
80001028: 33 65 e6 00  	or	a0, a2, a4
8000102c: 63 e6 35 03  	bltu	a1, s3, 0x80001058 <.LBB0_145+0x564>
80001030: b3 b5 25 01  	sltu	a1, a1, s2
80001034: 6f 00 80 02  	j	0x8000105c <.LBB0_145+0x568>
80001038: 33 b6 33 01  	sltu	a2, t2, s3
8000103c: 33 35 2e 01  	sltu	a0, t3, s2
;   for (i = 0; i < ni; i++)
80001040: e3 fe 35 fd  	bgeu	a1, s3, 0x8000101c <.LBB0_145+0x528>
80001044: 13 07 00 00  	mv	a4, zero
80001048: e3 0e 05 fc  	beqz	a0, 0x80001024 <.LBB0_145+0x530>
8000104c: 93 06 00 00  	mv	a3, zero
80001050: 33 65 e6 00  	or	a0, a2, a4
80001054: e3 fe 35 fd  	bgeu	a1, s3, 0x80001030 <.LBB0_145+0x53c>
80001058: 93 05 00 00  	mv	a1, zero
8000105c: b3 e5 b6 00  	or	a1, a3, a1
80001060: 33 75 b5 00  	and	a0, a0, a1
80001064: 93 55 4b 01  	srli	a1, s6, 20
80001068: b3 35 b0 00  	snez	a1, a1
8000106c: 37 c6 11 00  	lui	a2, 284
80001070: 13 06 96 18  	addi	a2, a2, 393
80001074: 33 36 cb 00  	sltu	a2, s6, a2
80001078: b3 f5 c5 00  	and	a1, a1, a2
8000107c: 33 f5 a5 00  	and	a0, a1, a0
80001080: 93 55 49 01  	srli	a1, s2, 20
80001084: b3 35 b0 00  	snez	a1, a1
80001088: 37 96 11 00  	lui	a2, 281
8000108c: 13 06 96 2a  	addi	a2, a2, 681
80001090: 33 36 c9 00  	sltu	a2, s2, a2
80001094: b3 f5 c5 00  	and	a1, a1, a2
80001098: 13 06 00 00  	mv	a2, zero
8000109c: 33 f5 a5 00  	and	a0, a1, a0
800010a0: 63 0e 05 0e  	beqz	a0, 0x8000119c <.LBB0_145+0x6a8>
800010a4: 13 05 80 00  	addi	a0, zero, 8
800010a8: 93 05 10 03  	addi	a1, zero, 49
;   for (i = 0; i < ni; i++)
800010ac: 93 06 00 04  	addi	a3, zero, 64
800010b0: 13 07 00 0c  	addi	a4, zero, 192
800010b4: ab a0 d5 00  	scfgw	a1, a3
800010b8: ab 20 e5 00  	scfgw	a0, a4
800010bc: 93 06 80 e7  	addi	a3, zero, -392
800010c0: 13 07 50 04  	addi	a4, zero, 69
800010c4: 93 07 00 06  	addi	a5, zero, 96
800010c8: 93 04 00 0e  	addi	s1, zero, 224
800010cc: ab 20 f7 00  	scfgw	a4, a5
800010d0: ab a0 96 00  	scfgw	a3, s1
800010d4: 93 06 70 02  	addi	a3, zero, 39
800010d8: 93 07 00 08  	addi	a5, zero, 128
800010dc: 93 04 00 10  	addi	s1, zero, 256
800010e0: ab a0 f6 00  	scfgw	a3, a5
800010e4: ab 20 95 00  	scfgw	a0, s1
800010e8: 13 05 00 02  	addi	a0, zero, 32
800010ec: ab 20 a0 00  	scfgw	zero, a0
800010f0: 2b 20 0b 34  	scfgwi	s6, 832
800010f4: 13 05 00 23  	addi	a0, zero, 560
800010f8: 93 07 10 00  	addi	a5, zero, 1
800010fc: 93 84 07 04  	addi	s1, a5, 64
80001100: 13 84 07 0c  	addi	s0, a5, 192
80001104: ab a0 95 00  	scfgw	a1, s1
80001108: ab 20 85 00  	scfgw	a0, s0
8000110c: b7 95 ff ff  	lui	a1, 1048569
80001110: 93 84 85 4d  	addi	s1, a1, 1240
80001114: 13 84 07 06  	addi	s0, a5, 96
80001118: ab 20 87 00  	scfgw	a4, s0
8000111c: 13 87 07 0e  	addi	a4, a5, 224
80001120: ab a0 e4 00  	scfgw	s1, a4
80001124: 93 85 85 2a  	addi	a1, a1, 680
80001128: 13 87 07 08  	addi	a4, a5, 128
8000112c: 93 84 07 10  	addi	s1, a5, 256
80001130: ab a0 e6 00  	scfgw	a3, a4
80001134: ab a0 95 00  	scfgw	a1, s1
80001138: 93 85 07 02  	addi	a1, a5, 32
8000113c: ab 20 b0 00  	scfgw	zero, a1
80001140: 2b 20 19 34  	scfgwi	s2, 833
80001144: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80001148: 93 05 60 04  	addi	a1, zero, 70
8000114c: 93 06 80 02  	addi	a3, zero, 40
80001150: 13 07 00 00  	mv	a4, zero
;  G[i][j] = 0.0;
80001154: b3 07 a6 02  	mul	a5, a2, a0
80001158: b3 87 f9 00  	add	a5, s3, a5
8000115c: 93 14 37 00  	slli	s1, a4, 3
80001160: b3 87 97 00  	add	a5, a5, s1
80001164: 23 a2 07 00  	sw	zero, 4(a5)
80001168: 23 a0 07 00  	sw	zero, 0(a5)
8000116c: 93 04 20 03  	addi	s1, zero, 50
;    G[i][j] += E[i][k] * F[k][j];
80001170: 87 b2 07 00  	fld	ft5, 0(a5)
80001174: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
;  for (k = 0; k < nj; ++k)
80001178: 93 84 f4 ff  	addi	s1, s1, -1
;    G[i][j] += E[i][k] * F[k][j];
8000117c: 27 b0 37 00  	fsd	ft3, 0(a5)
;  for (k = 0; k < nj; ++k)
80001180: e3 98 04 fe  	bnez	s1, 0x80001170 <.LBB0_145+0x67c>
;     for (j = 0; j < nl; j++)
80001184: 13 07 17 00  	addi	a4, a4, 1
80001188: e3 16 b7 fc  	bne	a4, a1, 0x80001154 <.LBB0_145+0x660>
;   for (i = 0; i < ni; i++)
8000118c: 13 06 16 00  	addi	a2, a2, 1
80001190: e3 10 d6 fc  	bne	a2, a3, 0x80001150 <.LBB0_145+0x65c>
80001194: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001198: 6f 00 c0 07  	j	0x80001214 <.LBB0_145+0x720>
8000119c: 93 02 00 23  	addi	t0, zero, 560
800011a0: d3 01 00 d2  	fcvt.d.w	ft3, zero
800011a4: 93 05 00 19  	addi	a1, zero, 400
800011a8: 13 03 60 04  	addi	t1, zero, 70
800011ac: 93 08 80 02  	addi	a7, zero, 40
800011b0: 93 04 00 00  	mv	s1, zero
800011b4: 13 04 09 00  	mv	s0, s2
;    G[i][j] += E[i][k] * F[k][j];
800011b8: 93 07 00 00  	mv	a5, zero
;  G[i][j] = 0.0;
800011bc: 33 05 56 02  	mul	a0, a2, t0
800011c0: 33 85 a9 00  	add	a0, s3, a0
800011c4: 93 96 34 00  	slli	a3, s1, 3
800011c8: b3 06 d5 00  	add	a3, a0, a3
800011cc: 23 a2 06 00  	sw	zero, 4(a3)
800011d0: 23 a0 06 00  	sw	zero, 0(a3)
;    G[i][j] += E[i][k] * F[k][j];
800011d4: 13 05 04 00  	mv	a0, s0
800011d8: 53 82 31 22  	fmv.d	ft4, ft3
800011dc: 33 07 fb 00  	add	a4, s6, a5
800011e0: 87 32 07 00  	fld	ft5, 0(a4)
800011e4: 07 33 05 00  	fld	ft6, 0(a0)
800011e8: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800011ec: 27 b0 46 00  	fsd	ft4, 0(a3)
;  for (k = 0; k < nj; ++k)
800011f0: 93 87 87 00  	addi	a5, a5, 8
800011f4: 13 05 05 23  	addi	a0, a0, 560
800011f8: e3 92 b7 fe  	bne	a5, a1, 0x800011dc <.LBB0_145+0x6e8>
;     for (j = 0; j < nl; j++)
800011fc: 93 84 14 00  	addi	s1, s1, 1
80001200: 13 04 84 00  	addi	s0, s0, 8
80001204: e3 9a 64 fa  	bne	s1, t1, 0x800011b8 <.LBB0_145+0x6c4>
;   for (i = 0; i < ni; i++)
80001208: 13 06 16 00  	addi	a2, a2, 1
8000120c: 13 0b 0b 19  	addi	s6, s6, 400
80001210: e3 10 16 fb  	bne	a2, a7, 0x800011b0 <.LBB0_145+0x6bc>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001214: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80001218: b3 05 05 41  	sub	a1, a0, a6

8000121c <.LBB0_146>:
8000121c: 17 25 00 00  	auipc	a0, 2
80001220: 13 05 55 47  	addi	a0, a0, 1141
80001224: 97 00 00 00  	auipc	ra, 0
80001228: e7 80 00 13  	jalr	304(ra)
;     for (int i = 0; i < n; i++){
8000122c: 13 d5 49 01  	srli	a0, s3, 20
80001230: 33 35 a0 00  	snez	a0, a0
80001234: b7 b5 11 00  	lui	a1, 283
80001238: 93 85 95 88  	addi	a1, a1, -1911
8000123c: b3 b5 b9 00  	sltu	a1, s3, a1
80001240: 33 75 b5 00  	and	a0, a0, a1
80001244: 63 06 05 06  	beqz	a0, 0x800012b0 <.LBB0_146+0x94>
80001248: 13 05 00 00  	mv	a0, zero
8000124c: 93 05 80 00  	addi	a1, zero, 8
80001250: 13 06 50 04  	addi	a2, zero, 69
;     for (int i = 0; i < n; i++){
80001254: 93 06 00 04  	addi	a3, zero, 64
80001258: ab 20 d6 00  	scfgw	a2, a3
8000125c: 13 06 00 0c  	addi	a2, zero, 192
80001260: ab a0 c5 00  	scfgw	a1, a2
80001264: 13 06 70 02  	addi	a2, zero, 39
80001268: 93 06 00 06  	addi	a3, zero, 96
8000126c: ab 20 d6 00  	scfgw	a2, a3
80001270: 13 06 00 0e  	addi	a2, zero, 224
80001274: ab a0 c5 00  	scfgw	a1, a2
80001278: 93 05 00 02  	addi	a1, zero, 32
8000127c: ab 20 b0 00  	scfgw	zero, a1
80001280: 2b a0 09 32  	scfgwi	s3, 800
80001284: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80001288: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000128c: 93 05 80 02  	addi	a1, zero, 40
80001290: 13 06 60 04  	addi	a2, zero, 70
;         for (int j = 0; j < m; j++){
80001294: 13 06 f6 ff  	addi	a2, a2, -1
;             r += A[i * m + j];
80001298: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;         for (int j = 0; j < m; j++){
8000129c: e3 1c 06 fe  	bnez	a2, 0x80001294 <.LBB0_146+0x78>
;     for (int i = 0; i < n; i++){
800012a0: 13 05 15 00  	addi	a0, a0, 1
800012a4: e3 16 b5 fe  	bne	a0, a1, 0x80001290 <.LBB0_146+0x74>
800012a8: 73 f5 00 7c  	csrrci	a0, 1984, 1
800012ac: 6f 00 80 03  	j	0x800012e4 <.LBB0_147>
800012b0: 13 05 00 00  	mv	a0, zero
800012b4: d3 01 00 d2  	fcvt.d.w	ft3, zero
800012b8: 93 05 00 23  	addi	a1, zero, 560
800012bc: 13 06 80 02  	addi	a2, zero, 40
800012c0: 93 06 00 00  	mv	a3, zero
;             r += A[i * m + j];
800012c4: 33 87 d9 00  	add	a4, s3, a3
800012c8: 07 32 07 00  	fld	ft4, 0(a4)
;         for (int j = 0; j < m; j++){
800012cc: 93 86 86 00  	addi	a3, a3, 8
;             r += A[i * m + j];
800012d0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;         for (int j = 0; j < m; j++){
800012d4: e3 98 b6 fe  	bne	a3, a1, 0x800012c4 <.LBB0_146+0xa8>
;     for (int i = 0; i < n; i++){
800012d8: 13 05 15 00  	addi	a0, a0, 1
800012dc: 93 89 09 23  	addi	s3, s3, 560
800012e0: e3 10 c5 fe  	bne	a0, a2, 0x800012c0 <.LBB0_146+0xa4>

800012e4 <.LBB0_147>:
800012e4: 17 25 00 00  	auipc	a0, 2
800012e8: 13 05 45 65  	addi	a0, a0, 1620
800012ec: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
800012f0: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
800012f4: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
800012f8: 27 34 81 00  	fsd	fs0, 8(sp)
800012fc: 03 26 81 00  	lw	a2, 8(sp)
80001300: 83 26 c1 00  	lw	a3, 12(sp)

80001304 <.LBB0_148>:
80001304: 17 25 00 00  	auipc	a0, 2
80001308: 13 05 15 38  	addi	a0, a0, 897
8000130c: 97 00 00 00  	auipc	ra, 0
80001310: e7 80 80 04  	jalr	72(ra)

80001314 <.LBB0_149>:
80001314: 17 25 00 00  	auipc	a0, 2
80001318: 13 05 c5 62  	addi	a0, a0, 1580
8000131c: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80001320: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80001324: 07 34 01 01  	fld	fs0, 16(sp)
80001328: 83 2b c1 01  	lw	s7, 28(sp)
8000132c: 03 2b 01 02  	lw	s6, 32(sp)
80001330: 83 2a 41 02  	lw	s5, 36(sp)
80001334: 03 2a 81 02  	lw	s4, 40(sp)
80001338: 83 29 c1 02  	lw	s3, 44(sp)
8000133c: 03 29 01 03  	lw	s2, 48(sp)
80001340: 83 24 41 03  	lw	s1, 52(sp)
80001344: 03 24 81 03  	lw	s0, 56(sp)
80001348: 83 20 c1 03  	lw	ra, 60(sp)
8000134c: 13 01 01 04  	addi	sp, sp, 64
80001350: 67 80 00 00  	ret

80001354 <printf_>:
; {
80001354: 13 01 01 fd  	addi	sp, sp, -48
80001358: 23 26 11 00  	sw	ra, 12(sp)
8000135c: 93 02 05 00  	mv	t0, a0
80001360: 23 26 11 03  	sw	a7, 44(sp)
80001364: 23 24 01 03  	sw	a6, 40(sp)
80001368: 23 22 f1 02  	sw	a5, 36(sp)
8000136c: 23 20 e1 02  	sw	a4, 32(sp)
80001370: 23 2e d1 00  	sw	a3, 28(sp)
80001374: 23 2c c1 00  	sw	a2, 24(sp)
80001378: 23 2a b1 00  	sw	a1, 20(sp)
8000137c: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001380: 23 24 a1 00  	sw	a0, 8(sp)

80001384 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80001384: 17 15 00 00  	auipc	a0, 1
80001388: 13 05 45 c2  	addi	a0, a0, -988
8000138c: 93 05 71 00  	addi	a1, sp, 7
80001390: 13 06 f0 ff  	addi	a2, zero, -1
80001394: 13 07 41 01  	addi	a4, sp, 20
80001398: 93 86 02 00  	mv	a3, t0
8000139c: 97 00 00 00  	auipc	ra, 0
800013a0: e7 80 40 01  	jalr	20(ra)
;   return ret;
800013a4: 83 20 c1 00  	lw	ra, 12(sp)
800013a8: 13 01 01 03  	addi	sp, sp, 48
800013ac: 67 80 00 00  	ret

800013b0 <_vsnprintf.llvm.17592004524093383706>:
; {
800013b0: 13 01 01 f9  	addi	sp, sp, -112
800013b4: 23 26 11 06  	sw	ra, 108(sp)
800013b8: 23 24 81 06  	sw	s0, 104(sp)
800013bc: 23 22 91 06  	sw	s1, 100(sp)
800013c0: 23 20 21 07  	sw	s2, 96(sp)
800013c4: 23 2e 31 05  	sw	s3, 92(sp)
800013c8: 23 2c 41 05  	sw	s4, 88(sp)
800013cc: 23 2a 51 05  	sw	s5, 84(sp)
800013d0: 23 28 61 05  	sw	s6, 80(sp)
800013d4: 23 26 71 05  	sw	s7, 76(sp)
800013d8: 23 24 81 05  	sw	s8, 72(sp)
800013dc: 23 22 91 05  	sw	s9, 68(sp)
800013e0: 23 20 a1 05  	sw	s10, 64(sp)
800013e4: 23 2e b1 03  	sw	s11, 60(sp)
800013e8: 93 09 07 00  	mv	s3, a4
800013ec: 13 84 06 00  	mv	s0, a3
800013f0: 93 0a 06 00  	mv	s5, a2
800013f4: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800013f8: 63 86 05 00  	beqz	a1, 0x80001404 <.LBB1_183>
800013fc: 13 09 05 00  	mv	s2, a0
80001400: 6f 00 c0 00  	j	0x8000140c <.LBB1_183+0x8>

80001404 <.LBB1_183>:
80001404: 17 19 00 00  	auipc	s2, 1
80001408: 13 09 09 c5  	addi	s2, s2, -944
8000140c: 13 0c 00 00  	mv	s8, zero
80001410: 13 0b 50 02  	addi	s6, zero, 37
80001414: 93 0d 00 01  	addi	s11, zero, 16
80001418: 93 0b e0 02  	addi	s7, zero, 46
8000141c: 37 15 00 00  	lui	a0, 1
80001420: 13 05 05 80  	addi	a0, a0, -2048
80001424: 23 2c a1 00  	sw	a0, 24(sp)
80001428: 37 05 01 00  	lui	a0, 16
8000142c: 13 05 f5 ff  	addi	a0, a0, -1
80001430: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80001434: 13 0d 24 00  	addi	s10, s0, 2
80001438: 93 0c 0c 00  	mv	s9, s8
8000143c: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001440: 03 45 04 00  	lbu	a0, 0(s0)
80001444: e3 04 05 30  	beqz	a0, 0x80001f4c <.LBB1_124+0x3b0>
80001448: 63 08 65 03  	beq	a0, s6, 0x80001478 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
8000144c: 93 84 1c 00  	addi	s1, s9, 1
80001450: 93 05 0a 00  	mv	a1, s4
80001454: 13 86 0c 00  	mv	a2, s9
80001458: 93 86 0a 00  	mv	a3, s5
8000145c: e7 00 09 00  	jalr	s2
;       format++;
80001460: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80001464: 13 0d 1d 00  	addi	s10, s10, 1
80001468: 93 8c 04 00  	mv	s9, s1
;   while (*format)
8000146c: 03 45 04 00  	lbu	a0, 0(s0)
80001470: e3 1c 05 fc  	bnez	a0, 0x80001448 <.LBB1_183+0x44>
80001474: 6f 00 90 2d  	j	0x80001f4c <.LBB1_124+0x3b0>
;     flags = 0U;
80001478: 13 04 00 00  	mv	s0, zero
8000147c: 6f 00 00 01  	j	0x8000148c <.LBB1_9+0x8>

80001480 <.LBB1_8>:
80001480: 93 05 00 01  	addi	a1, zero, 16

80001484 <.LBB1_9>:
80001484: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001488: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
8000148c: 03 45 fd ff  	lbu	a0, -1(s10)
80001490: 93 05 05 fe  	addi	a1, a0, -32
80001494: 63 ec bd 02  	bltu	s11, a1, 0x800014cc <.LBB1_15>
80001498: 93 95 25 00  	slli	a1, a1, 2

8000149c <.LBB1_184>:
8000149c: 17 26 00 00  	auipc	a2, 2
800014a0: 13 06 86 20  	addi	a2, a2, 520
800014a4: b3 85 c5 00  	add	a1, a1, a2
800014a8: 03 a6 05 00  	lw	a2, 0(a1)
800014ac: 93 05 10 00  	addi	a1, zero, 1
800014b0: 67 00 06 00  	jr	a2

800014b4 <.LBB1_12>:
800014b4: 93 05 80 00  	addi	a1, zero, 8
800014b8: 6f f0 df fc  	j	0x80001484 <.LBB1_9>

800014bc <.LBB1_13>:
800014bc: 93 05 40 00  	addi	a1, zero, 4
800014c0: 6f f0 5f fc  	j	0x80001484 <.LBB1_9>

800014c4 <.LBB1_14>:
800014c4: 93 05 20 00  	addi	a1, zero, 2
800014c8: 6f f0 df fb  	j	0x80001484 <.LBB1_9>

800014cc <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800014cc: 93 05 05 fd  	addi	a1, a0, -48
800014d0: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800014d4: 93 05 fd ff  	addi	a1, s10, -1
800014d8: 93 06 90 00  	addi	a3, zero, 9
800014dc: 63 ee c6 06  	bltu	a3, a2, 0x80001558 <.LBB1_15+0x8c>
800014e0: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800014e4: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800014e8: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800014ec: b3 06 8b 03  	mul	a3, s6, s8
800014f0: 93 85 15 00  	addi	a1, a1, 1
800014f4: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800014f8: 93 06 05 fd  	addi	a3, a0, -48
800014fc: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001500: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001504: e3 e0 86 ff  	bltu	a3, s8, 0x800014e4 <.LBB1_15+0x18>
80001508: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
8000150c: 63 16 75 0b  	bne	a0, s7, 0x800015b8 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001510: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001514: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001518: 93 05 05 fd  	addi	a1, a0, -48
8000151c: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001520: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001524: 93 06 90 00  	addi	a3, zero, 9
80001528: 63 e0 c6 06  	bltu	a3, a2, 0x80001588 <.LBB1_15+0xbc>
8000152c: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001530: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001534: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001538: b3 86 8b 03  	mul	a3, s7, s8
8000153c: 93 85 15 00  	addi	a1, a1, 1
80001540: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001544: 93 06 05 fd  	addi	a3, a0, -48
80001548: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000154c: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001550: e3 e0 86 ff  	bltu	a3, s8, 0x80001530 <.LBB1_15+0x64>
80001554: 6f 00 00 07  	j	0x800015c4 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001558: 13 06 a0 02  	addi	a2, zero, 42
8000155c: 63 18 c5 04  	bne	a0, a2, 0x800015ac <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001560: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001564: 63 d4 05 00  	bgez	a1, 0x8000156c <.LBB1_15+0xa0>
80001568: 13 64 24 00  	ori	s0, s0, 2
8000156c: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001570: 03 45 0d 00  	lbu	a0, 0(s10)
80001574: 13 d6 f5 41  	srai	a2, a1, 31
80001578: b3 85 c5 00  	add	a1, a1, a2
8000157c: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001580: e3 08 75 f9  	beq	a0, s7, 0x80001510 <.LBB1_15+0x44>
80001584: 6f 00 40 03  	j	0x800015b8 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001588: 13 06 a0 02  	addi	a2, zero, 42
8000158c: 63 1a c5 02  	bne	a0, a2, 0x800015c0 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001590: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001594: 63 44 70 01  	bgtz	s7, 0x8000159c <.LBB1_15+0xd0>
80001598: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
8000159c: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800015a0: 13 0d 2d 00  	addi	s10, s10, 2
800015a4: 93 89 49 00  	addi	s3, s3, 4
800015a8: 6f 00 00 02  	j	0x800015c8 <.LBB1_15+0xfc>
800015ac: 13 0b 00 00  	mv	s6, zero
800015b0: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800015b4: e3 0e 75 f5  	beq	a0, s7, 0x80001510 <.LBB1_15+0x44>
800015b8: 93 0b 00 00  	mv	s7, zero
800015bc: 6f 00 c0 00  	j	0x800015c8 <.LBB1_15+0xfc>
800015c0: 93 0b 00 00  	mv	s7, zero
800015c4: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800015c8: 93 05 85 f9  	addi	a1, a0, -104
800015cc: 13 d6 15 00  	srli	a2, a1, 1
800015d0: 93 95 f5 01  	slli	a1, a1, 31
800015d4: b3 e5 c5 00  	or	a1, a1, a2
800015d8: 13 06 90 00  	addi	a2, zero, 9
800015dc: 63 62 b6 06  	bltu	a2, a1, 0x80001640 <.LBB1_42>
800015e0: 93 95 25 00  	slli	a1, a1, 2

800015e4 <.LBB1_185>:
800015e4: 17 26 00 00  	auipc	a2, 2
800015e8: 13 06 46 10  	addi	a2, a2, 260
800015ec: b3 85 c5 00  	add	a1, a1, a2
800015f0: 83 a6 05 00  	lw	a3, 0(a1)
800015f4: 93 05 10 00  	addi	a1, zero, 1
800015f8: 13 06 00 10  	addi	a2, zero, 256
800015fc: 67 80 06 00  	jr	a3

80001600 <.LBB1_36>:
;         if (*format == 'h') {
80001600: 03 45 1d 00  	lbu	a0, 1(s10)
80001604: 93 05 80 06  	addi	a1, zero, 104
80001608: 63 12 b5 12  	bne	a0, a1, 0x8000172c <.LBB1_53+0x48>
8000160c: 93 05 20 00  	addi	a1, zero, 2
80001610: 13 06 00 0c  	addi	a2, zero, 192
80001614: 6f 00 00 02  	j	0x80001634 <.LBB1_41>

80001618 <.LBB1_38>:
80001618: 13 06 00 20  	addi	a2, zero, 512
8000161c: 6f 00 80 01  	j	0x80001634 <.LBB1_41>

80001620 <.LBB1_39>:
;         if (*format == 'l') {
80001620: 03 45 1d 00  	lbu	a0, 1(s10)
80001624: 93 05 c0 06  	addi	a1, zero, 108
80001628: 63 18 b5 10  	bne	a0, a1, 0x80001738 <.LBB1_53+0x54>
8000162c: 93 05 20 00  	addi	a1, zero, 2
80001630: 13 06 00 30  	addi	a2, zero, 768

80001634 <.LBB1_41>:
80001634: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001638: 03 45 0d 00  	lbu	a0, 0(s10)
8000163c: 33 64 c4 00  	or	s0, s0, a2

80001640 <.LBB1_42>:
;     switch (*format) {
80001640: 93 05 b5 fd  	addi	a1, a0, -37
80001644: 13 06 30 05  	addi	a2, zero, 83
80001648: 63 64 b6 10  	bltu	a2, a1, 0x80001750 <.LBB1_59>
8000164c: 93 95 25 00  	slli	a1, a1, 2

80001650 <.LBB1_186>:
80001650: 17 26 00 00  	auipc	a2, 2
80001654: 13 06 06 0c  	addi	a2, a2, 192
80001658: b3 85 c5 00  	add	a1, a1, a2
8000165c: 03 a6 05 00  	lw	a2, 0(a1)
80001660: 93 05 80 00  	addi	a1, zero, 8
80001664: 13 0c 00 01  	addi	s8, zero, 16
80001668: 67 00 06 00  	jr	a2

8000166c <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
8000166c: 13 74 f4 fe  	andi	s0, s0, -17
80001670: 13 0c a0 00  	addi	s8, zero, 10

80001674 <.LBB1_45>:
;         if (*format == 'X') {
80001674: 93 05 80 05  	addi	a1, zero, 88
80001678: 63 14 b5 00  	bne	a0, a1, 0x80001680 <.LBB1_45+0xc>
8000167c: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001680: 93 05 40 06  	addi	a1, zero, 100
80001684: 63 08 b5 0e  	beq	a0, a1, 0x80001774 <.LBB1_62+0x8>
80001688: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
8000168c: 13 06 90 06  	addi	a2, zero, 105
80001690: 63 02 c5 0e  	beq	a0, a2, 0x80001774 <.LBB1_62+0x8>
80001694: 6f 00 80 0d  	j	0x8000176c <.LBB1_62>

80001698 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001698: 93 05 60 04  	addi	a1, zero, 70
8000169c: 63 14 b5 00  	bne	a0, a1, 0x800016a4 <.LBB1_49+0xc>
800016a0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800016a4: 13 85 79 00  	addi	a0, s3, 7
800016a8: 13 75 85 ff  	andi	a0, a0, -8
800016ac: 07 35 05 00  	fld	fa0, 0(a0)
800016b0: 93 09 85 00  	addi	s3, a0, 8
800016b4: 13 05 09 00  	mv	a0, s2
800016b8: 93 05 0a 00  	mv	a1, s4
800016bc: 13 86 0c 00  	mv	a2, s9
800016c0: 93 86 0a 00  	mv	a3, s5
800016c4: 13 87 0b 00  	mv	a4, s7
800016c8: 93 07 0b 00  	mv	a5, s6
800016cc: 13 08 04 00  	mv	a6, s0
800016d0: 97 10 00 00  	auipc	ra, 1
800016d4: e7 80 80 98  	jalr	-1656(ra)
800016d8: 6f 00 00 7c  	j	0x80001e98 <.LBB1_124+0x2fc>

800016dc <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800016dc: 83 25 81 01  	lw	a1, 24(sp)
800016e0: 33 64 b4 00  	or	s0, s0, a1

800016e4 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800016e4: 13 65 25 00  	ori	a0, a0, 2
800016e8: 93 05 70 04  	addi	a1, zero, 71
800016ec: 63 14 b5 00  	bne	a0, a1, 0x800016f4 <.LBB1_53+0x10>
800016f0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800016f4: 13 85 79 00  	addi	a0, s3, 7
800016f8: 13 75 85 ff  	andi	a0, a0, -8
800016fc: 07 35 05 00  	fld	fa0, 0(a0)
80001700: 93 09 85 00  	addi	s3, a0, 8
80001704: 13 05 09 00  	mv	a0, s2
80001708: 93 05 0a 00  	mv	a1, s4
8000170c: 13 86 0c 00  	mv	a2, s9
80001710: 93 86 0a 00  	mv	a3, s5
80001714: 13 87 0b 00  	mv	a4, s7
80001718: 93 07 0b 00  	mv	a5, s6
8000171c: 13 08 04 00  	mv	a6, s0
80001720: 97 10 00 00  	auipc	ra, 1
80001724: e7 80 80 01  	jalr	24(ra)
80001728: 6f 00 00 77  	j	0x80001e98 <.LBB1_124+0x2fc>
8000172c: 13 64 04 08  	ori	s0, s0, 128
80001730: 13 0d 1d 00  	addi	s10, s10, 1
80001734: 6f f0 df f0  	j	0x80001640 <.LBB1_42>
80001738: 13 64 04 10  	ori	s0, s0, 256
8000173c: 13 0d 1d 00  	addi	s10, s10, 1
80001740: 6f f0 1f f0  	j	0x80001640 <.LBB1_42>

80001744 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001744: 13 8c 1c 00  	addi	s8, s9, 1
80001748: 13 05 50 02  	addi	a0, zero, 37
8000174c: 6f 00 80 00  	j	0x80001754 <.LBB1_59+0x4>

80001750 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001750: 13 8c 1c 00  	addi	s8, s9, 1
80001754: 93 05 0a 00  	mv	a1, s4
80001758: 13 86 0c 00  	mv	a2, s9
8000175c: 93 86 0a 00  	mv	a3, s5
80001760: e7 00 09 00  	jalr	s2
80001764: 6f 00 80 73  	j	0x80001e9c <.LBB1_124+0x300>

80001768 <.LBB1_61>:
80001768: 93 05 20 00  	addi	a1, zero, 2

8000176c <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
8000176c: 13 74 34 ff  	andi	s0, s0, -13
80001770: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001774: 93 75 04 40  	andi	a1, s0, 1024
80001778: 63 84 05 00  	beqz	a1, 0x80001780 <.LBB1_62+0x14>
8000177c: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001780: 93 05 90 06  	addi	a1, zero, 105
80001784: 63 06 b5 00  	beq	a0, a1, 0x80001790 <.LBB1_62+0x24>
80001788: 93 05 40 06  	addi	a1, zero, 100
8000178c: 63 1c b5 12  	bne	a0, a1, 0x800018c4 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001790: 13 75 04 20  	andi	a0, s0, 512
80001794: 63 16 05 02  	bnez	a0, 0x800017c0 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001798: 13 75 04 10  	andi	a0, s0, 256
8000179c: 63 1c 05 14  	bnez	a0, 0x800018f4 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800017a0: 13 75 04 04  	andi	a0, s0, 64
800017a4: 63 18 05 4e  	bnez	a0, 0x80001c94 <.LBB1_124+0xf8>
800017a8: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800017ac: 93 75 04 08  	andi	a1, s0, 128
800017b0: 63 84 05 4e  	beqz	a1, 0x80001c98 <.LBB1_124+0xfc>
800017b4: 13 15 08 01  	slli	a0, a6, 16
800017b8: 13 58 05 41  	srai	a6, a0, 16
800017bc: 6f 00 c0 4d  	j	0x80001c98 <.LBB1_124+0xfc>
800017c0: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800017c4: 13 85 79 00  	addi	a0, s3, 7
800017c8: 13 75 85 ff  	andi	a0, a0, -8
800017cc: 83 29 05 00  	lw	s3, 0(a0)
800017d0: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800017d4: 13 65 45 00  	ori	a0, a0, 4
800017d8: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800017dc: 23 24 a1 00  	sw	a0, 8(sp)
800017e0: 33 e5 a9 00  	or	a0, s3, a0
800017e4: 63 14 05 00  	bnez	a0, 0x800017ec <.LBB1_62+0x80>
800017e8: 13 74 f4 fe  	andi	s0, s0, -17
800017ec: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800017f0: 93 75 04 40  	andi	a1, s0, 1024
800017f4: 93 d5 a5 00  	srli	a1, a1, 10
800017f8: 33 75 b5 00  	and	a0, a0, a1
800017fc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001800: 63 14 05 0a  	bnez	a0, 0x800018a8 <.LBB1_62+0x13c>
80001804: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001808: 63 da 04 00  	bgez	s1, 0x8000181c <.LBB1_62+0xb0>
8000180c: 33 35 30 01  	snez	a0, s3
80001810: b3 09 30 41  	neg	s3, s3
80001814: 33 85 a4 00  	add	a0, s1, a0
80001818: b3 04 a0 40  	neg	s1, a0
8000181c: 13 09 00 00  	mv	s2, zero
80001820: 13 75 04 02  	andi	a0, s0, 32
80001824: 13 45 15 06  	xori	a0, a0, 97
80001828: 13 05 65 0f  	addi	a0, a0, 246
8000182c: 23 2a a1 00  	sw	a0, 20(sp)
80001830: 6f 00 40 02  	j	0x80001854 <.LBB1_62+0xe8>
80001834: 13 06 10 00  	addi	a2, zero, 1
80001838: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000183c: 93 36 f9 01  	sltiu	a3, s2, 31
80001840: 33 f6 c6 00  	and	a2, a3, a2
80001844: 13 89 07 00  	mv	s2, a5
80001848: 93 09 05 00  	mv	s3, a0
8000184c: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001850: 63 0c 06 04  	beqz	a2, 0x800018a8 <.LBB1_62+0x13c>
;       value /= base;
80001854: 13 85 09 00  	mv	a0, s3
80001858: 93 85 04 00  	mv	a1, s1
8000185c: 13 06 0c 00  	mv	a2, s8
80001860: 93 06 00 00  	mv	a3, zero
80001864: 97 e0 ff ff  	auipc	ra, 1048574
80001868: e7 80 c0 79  	jalr	1948(ra)
8000186c: 33 06 85 03  	mul	a2, a0, s8
80001870: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001874: 13 77 e6 0f  	andi	a4, a2, 254
80001878: 93 06 00 03  	addi	a3, zero, 48
8000187c: 93 07 a0 00  	addi	a5, zero, 10
80001880: 63 64 f7 00  	bltu	a4, a5, 0x80001888 <.LBB1_62+0x11c>
80001884: 83 26 41 01  	lw	a3, 20(sp)
80001888: 33 86 c6 00  	add	a2, a3, a2
8000188c: 93 06 c1 01  	addi	a3, sp, 28
80001890: b3 86 26 01  	add	a3, a3, s2
80001894: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001898: e3 9e 04 f8  	bnez	s1, 0x80001834 <.LBB1_62+0xc8>
8000189c: 33 b6 89 01  	sltu	a2, s3, s8
800018a0: 13 46 16 00  	xori	a2, a2, 1
800018a4: 6f f0 5f f9  	j	0x80001838 <.LBB1_62+0xcc>
800018a8: 03 25 41 00  	lw	a0, 4(sp)
800018ac: 93 09 85 00  	addi	s3, a0, 8
800018b0: 03 25 81 00  	lw	a0, 8(sp)
800018b4: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800018b8: 13 07 c1 01  	addi	a4, sp, 28
800018bc: 03 29 c1 00  	lw	s2, 12(sp)
800018c0: 6f 00 80 47  	j	0x80001d38 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
800018c4: 13 75 04 20  	andi	a0, s0, 512
800018c8: 63 12 05 0c  	bnez	a0, 0x8000198c <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800018cc: 13 75 04 10  	andi	a0, s0, 256
800018d0: 63 1e 05 46  	bnez	a0, 0x80001d4c <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800018d4: 13 75 04 04  	andi	a0, s0, 64
800018d8: 63 10 05 50  	bnez	a0, 0x80001dd8 <.LBB1_124+0x23c>
800018dc: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800018e0: 93 75 04 08  	andi	a1, s0, 128
800018e4: 63 8c 05 4e  	beqz	a1, 0x80001ddc <.LBB1_124+0x240>
800018e8: 83 25 01 01  	lw	a1, 16(sp)
800018ec: 33 75 b5 00  	and	a0, a0, a1
800018f0: 6f 00 c0 4e  	j	0x80001ddc <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800018f4: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800018f8: 63 14 08 00  	bnez	a6, 0x80001900 <.LBB1_62+0x194>
800018fc: 13 74 f4 fe  	andi	s0, s0, -17
80001900: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001904: 13 76 04 40  	andi	a2, s0, 1024
80001908: 13 56 a6 00  	srli	a2, a2, 10
8000190c: b3 f5 c5 00  	and	a1, a1, a2
80001910: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001914: 63 9c 05 40  	bnez	a1, 0x80001d2c <.LBB1_124+0x190>
80001918: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000191c: 13 56 f8 41  	srai	a2, a6, 31
80001920: b3 06 c8 00  	add	a3, a6, a2
80001924: b3 c6 c6 00  	xor	a3, a3, a2
80001928: 13 76 04 02  	andi	a2, s0, 32
8000192c: 13 46 16 06  	xori	a2, a2, 97
80001930: 93 08 66 0f  	addi	a7, a2, 246
80001934: 6f 00 40 03  	j	0x80001968 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001938: 33 05 f6 00  	add	a0, a2, a5
8000193c: 93 87 15 00  	addi	a5, a1, 1
80001940: 13 06 c1 01  	addi	a2, sp, 28
80001944: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001948: b3 b6 86 01  	sltu	a3, a3, s8
8000194c: 93 c6 16 00  	xori	a3, a3, 1
80001950: 93 b5 f5 01  	sltiu	a1, a1, 31
80001954: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001958: 23 00 a6 00  	sb	a0, 0(a2)
8000195c: 93 85 07 00  	mv	a1, a5
80001960: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001964: 63 84 04 3c  	beqz	s1, 0x80001d2c <.LBB1_124+0x190>
;       value /= base;
80001968: 33 d7 86 03  	divu	a4, a3, s8
8000196c: 33 06 87 03  	mul	a2, a4, s8
80001970: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001974: 13 f5 e7 0f  	andi	a0, a5, 254
80001978: 13 06 00 03  	addi	a2, zero, 48
8000197c: 93 04 a0 00  	addi	s1, zero, 10
80001980: e3 6c 95 fa  	bltu	a0, s1, 0x80001938 <.LBB1_62+0x1cc>
80001984: 13 86 08 00  	mv	a2, a7
80001988: 6f f0 1f fb  	j	0x80001938 <.LBB1_62+0x1cc>
8000198c: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001990: 13 85 79 00  	addi	a0, s3, 7
80001994: 93 75 85 ff  	andi	a1, a0, -8
80001998: 03 a9 05 00  	lw	s2, 0(a1)
8000199c: 13 e5 45 00  	ori	a0, a1, 4
800019a0: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800019a4: 33 65 39 01  	or	a0, s2, s3
800019a8: 23 24 b1 00  	sw	a1, 8(sp)
800019ac: 63 14 05 00  	bnez	a0, 0x800019b4 <.LBB1_62+0x248>
800019b0: 13 74 f4 fe  	andi	s0, s0, -17
800019b4: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800019b8: 93 75 04 40  	andi	a1, s0, 1024
800019bc: 93 d5 a5 00  	srli	a1, a1, 10
800019c0: 33 75 b5 00  	and	a0, a0, a1
800019c4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800019c8: 63 18 05 08  	bnez	a0, 0x80001a58 <.LBB1_62+0x2ec>
800019cc: 93 04 00 00  	mv	s1, zero
800019d0: 13 75 04 02  	andi	a0, s0, 32
800019d4: 13 45 15 06  	xori	a0, a0, 97
800019d8: 13 05 65 0f  	addi	a0, a0, 246
800019dc: 23 2a a1 00  	sw	a0, 20(sp)
800019e0: 6f 00 40 02  	j	0x80001a04 <.LBB1_62+0x298>
800019e4: 13 06 10 00  	addi	a2, zero, 1
800019e8: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800019ec: 93 b6 f4 01  	sltiu	a3, s1, 31
800019f0: 33 f6 c6 00  	and	a2, a3, a2
800019f4: 93 84 07 00  	mv	s1, a5
800019f8: 13 09 05 00  	mv	s2, a0
800019fc: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001a00: 63 0c 06 04  	beqz	a2, 0x80001a58 <.LBB1_62+0x2ec>
;       value /= base;
80001a04: 13 05 09 00  	mv	a0, s2
80001a08: 93 85 09 00  	mv	a1, s3
80001a0c: 13 06 0c 00  	mv	a2, s8
80001a10: 93 06 00 00  	mv	a3, zero
80001a14: 97 e0 ff ff  	auipc	ra, 1048574
80001a18: e7 80 c0 5e  	jalr	1516(ra)
80001a1c: 33 06 85 03  	mul	a2, a0, s8
80001a20: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001a24: 13 77 e6 0f  	andi	a4, a2, 254
80001a28: 93 06 00 03  	addi	a3, zero, 48
80001a2c: 93 07 a0 00  	addi	a5, zero, 10
80001a30: 63 64 f7 00  	bltu	a4, a5, 0x80001a38 <.LBB1_62+0x2cc>
80001a34: 83 26 41 01  	lw	a3, 20(sp)
80001a38: 33 86 c6 00  	add	a2, a3, a2
80001a3c: 93 06 c1 01  	addi	a3, sp, 28
80001a40: b3 86 96 00  	add	a3, a3, s1
80001a44: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001a48: e3 9e 09 f8  	bnez	s3, 0x800019e4 <.LBB1_62+0x278>
80001a4c: 33 36 89 01  	sltu	a2, s2, s8
80001a50: 13 46 16 00  	xori	a2, a2, 1
80001a54: 6f f0 5f f9  	j	0x800019e8 <.LBB1_62+0x27c>
80001a58: 03 25 81 00  	lw	a0, 8(sp)
80001a5c: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001a60: 13 07 c1 01  	addi	a4, sp, 28
80001a64: 03 29 c1 00  	lw	s2, 12(sp)
80001a68: 6f 00 40 40  	j	0x80001e6c <.LBB1_124+0x2d0>

80001a6c <.LBB1_108>:
80001a6c: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80001a70: 13 79 24 00  	andi	s2, s0, 2
80001a74: 93 04 10 00  	addi	s1, zero, 1
80001a78: 63 1e 09 02  	bnez	s2, 0x80001ab4 <.LBB1_108+0x48>
80001a7c: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80001a80: 63 6a 9b 02  	bltu	s6, s1, 0x80001ab4 <.LBB1_108+0x48>
80001a84: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80001a88: 13 0c fb ff  	addi	s8, s6, -1
80001a8c: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80001a90: 33 86 8c 00  	add	a2, s9, s0
80001a94: 13 05 00 02  	addi	a0, zero, 32
80001a98: 93 05 0a 00  	mv	a1, s4
80001a9c: 93 86 0a 00  	mv	a3, s5
80001aa0: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80001aa4: 13 04 14 00  	addi	s0, s0, 1
80001aa8: e3 14 8c fe  	bne	s8, s0, 0x80001a90 <.LBB1_108+0x24>
80001aac: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001ab0: b3 8c 8c 00  	add	s9, s9, s0
80001ab4: 03 c5 09 00  	lbu	a0, 0(s3)
80001ab8: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001abc: 93 89 49 00  	addi	s3, s3, 4
80001ac0: 13 8c 1c 00  	addi	s8, s9, 1
80001ac4: 93 05 0a 00  	mv	a1, s4
80001ac8: 13 86 0c 00  	mv	a2, s9
80001acc: 93 86 0a 00  	mv	a3, s5
80001ad0: 13 89 0b 00  	mv	s2, s7
80001ad4: e7 80 0b 00  	jalr	s7
80001ad8: 33 b5 64 01  	sltu	a0, s1, s6
80001adc: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001ae0: 33 65 a4 00  	or	a0, s0, a0
80001ae4: 63 1c 05 3a  	bnez	a0, 0x80001e9c <.LBB1_124+0x300>
;           while (l++ < width) {
80001ae8: 33 04 9b 40  	sub	s0, s6, s1
80001aec: 93 0b e0 02  	addi	s7, zero, 46
80001af0: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001af4: 13 0c 1c 00  	addi	s8, s8, 1
80001af8: 13 05 00 02  	addi	a0, zero, 32
80001afc: 93 05 0a 00  	mv	a1, s4
80001b00: 93 86 0a 00  	mv	a3, s5
80001b04: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001b08: 13 04 f4 ff  	addi	s0, s0, -1
80001b0c: e3 12 04 fe  	bnez	s0, 0x80001af0 <.LBB1_108+0x84>
80001b10: 13 0b 50 02  	addi	s6, zero, 37
80001b14: 13 04 1d 00  	addi	s0, s10, 1
80001b18: 6f f0 df 91  	j	0x80001434 <.LBB1_183+0x30>

80001b1c <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001b1c: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001b20: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80001b24: 63 14 05 00  	bnez	a0, 0x80001b2c <.LBB1_117+0x10>
80001b28: 93 fe fe fe  	andi	t4, t4, -17
80001b2c: 93 04 a0 00  	addi	s1, zero, 10
80001b30: 13 04 f0 00  	addi	s0, zero, 15
80001b34: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001b38: 13 f6 0e 40  	andi	a2, t4, 1024
80001b3c: 13 56 a6 00  	srli	a2, a2, 10
80001b40: b3 f5 c5 00  	and	a1, a1, a2
80001b44: 93 07 00 00  	mv	a5, zero
80001b48: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001b4c: 63 98 05 10  	bnez	a1, 0x80001c5c <.LBB1_124+0xc0>
80001b50: 93 05 00 00  	mv	a1, zero
80001b54: 6f 00 40 03  	j	0x80001b88 <.LBB1_117+0x6c>
80001b58: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b5c: 33 06 d6 00  	add	a2, a2, a3
80001b60: 93 87 15 00  	addi	a5, a1, 1
80001b64: 93 06 c1 01  	addi	a3, sp, 28
80001b68: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b6c: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80001b70: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b74: 93 b5 f5 01  	sltiu	a1, a1, 31
80001b78: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b7c: 23 80 c6 00  	sb	a2, 0(a3)
80001b80: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b84: 63 0c 07 0c  	beqz	a4, 0x80001c5c <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b88: 93 76 e5 00  	andi	a3, a0, 14
80001b8c: 13 06 00 03  	addi	a2, zero, 48
80001b90: e3 e4 96 fc  	bltu	a3, s1, 0x80001b58 <.LBB1_117+0x3c>
80001b94: 13 06 70 03  	addi	a2, zero, 55
80001b98: 6f f0 1f fc  	j	0x80001b58 <.LBB1_117+0x3c>

80001b9c <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001b9c: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80001ba0: 03 c5 07 00  	lbu	a0, 0(a5)
80001ba4: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80001ba8: 63 0c 05 02  	beqz	a0, 0x80001be0 <.LBB1_124+0x44>
80001bac: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80001bb0: 63 84 0b 00  	beqz	s7, 0x80001bb8 <.LBB1_124+0x1c>
80001bb4: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80001bb8: 93 85 f5 ff  	addi	a1, a1, -1
80001bbc: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001bc0: 03 c7 16 00  	lbu	a4, 1(a3)
80001bc4: 13 86 16 00  	addi	a2, a3, 1
80001bc8: b3 36 e0 00  	snez	a3, a4
80001bcc: 33 37 b0 00  	snez	a4, a1
80001bd0: 33 77 d7 00  	and	a4, a4, a3
80001bd4: 93 85 f5 ff  	addi	a1, a1, -1
80001bd8: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001bdc: e3 12 07 fe  	bnez	a4, 0x80001bc0 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001be0: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80001be4: 93 75 04 40  	andi	a1, s0, 1024
80001be8: 93 b4 15 00  	seqz	s1, a1
80001bec: 23 2a c1 00  	sw	a2, 20(sp)
80001bf0: b3 35 76 01  	sltu	a1, a2, s7
80001bf4: b3 e5 b4 00  	or	a1, s1, a1
80001bf8: 63 94 05 00  	bnez	a1, 0x80001c00 <.LBB1_124+0x64>
80001bfc: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001c00: 93 75 24 00  	andi	a1, s0, 2
80001c04: 23 26 b1 00  	sw	a1, 12(sp)
80001c08: 63 96 05 2a  	bnez	a1, 0x80001eb4 <.LBB1_124+0x318>
80001c0c: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001c10: 63 fe 65 29  	bgeu	a1, s6, 0x80001eac <.LBB1_124+0x310>
80001c14: 23 24 f1 00  	sw	a5, 8(sp)
80001c18: 13 04 00 00  	mv	s0, zero
80001c1c: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001c20: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80001c24: 33 86 8c 00  	add	a2, s9, s0
80001c28: 13 05 00 02  	addi	a0, zero, 32
80001c2c: 93 05 0a 00  	mv	a1, s4
80001c30: 93 86 0a 00  	mv	a3, s5
80001c34: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001c38: 13 04 14 00  	addi	s0, s0, 1
80001c3c: e3 14 89 fe  	bne	s2, s0, 0x80001c24 <.LBB1_124+0x88>
80001c40: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001c44: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80001c48: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001c4c: 23 2a b1 00  	sw	a1, 20(sp)
80001c50: b3 8c 8c 00  	add	s9, s9, s0
80001c54: 13 09 0c 00  	mv	s2, s8
80001c58: 6f 00 c0 25  	j	0x80001eb4 <.LBB1_124+0x318>
80001c5c: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001c60: 13 07 c1 01  	addi	a4, sp, 28
80001c64: 93 08 00 01  	addi	a7, zero, 16
80001c68: 13 0e 80 00  	addi	t3, zero, 8
80001c6c: 13 05 09 00  	mv	a0, s2
80001c70: 93 05 0a 00  	mv	a1, s4
80001c74: 13 86 0c 00  	mv	a2, s9
80001c78: 93 86 0a 00  	mv	a3, s5
80001c7c: 13 08 00 00  	mv	a6, zero
80001c80: 93 83 0b 00  	mv	t2, s7
80001c84: 97 10 00 00  	auipc	ra, 1
80001c88: e7 80 00 fa  	jalr	-96(ra)
80001c8c: 13 0c 05 00  	mv	s8, a0
80001c90: 6f 00 00 21  	j	0x80001ea0 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001c94: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80001c98: 63 14 08 00  	bnez	a6, 0x80001ca0 <.LBB1_124+0x104>
80001c9c: 13 74 f4 fe  	andi	s0, s0, -17
80001ca0: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001ca4: 13 76 04 40  	andi	a2, s0, 1024
80001ca8: 13 56 a6 00  	srli	a2, a2, 10
80001cac: b3 f5 c5 00  	and	a1, a1, a2
80001cb0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001cb4: 63 9c 05 06  	bnez	a1, 0x80001d2c <.LBB1_124+0x190>
80001cb8: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001cbc: 13 56 f8 41  	srai	a2, a6, 31
80001cc0: b3 06 c8 00  	add	a3, a6, a2
80001cc4: b3 c6 c6 00  	xor	a3, a3, a2
80001cc8: 13 76 04 02  	andi	a2, s0, 32
80001ccc: 13 46 16 06  	xori	a2, a2, 97
80001cd0: 93 08 66 0f  	addi	a7, a2, 246
80001cd4: 6f 00 40 03  	j	0x80001d08 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001cd8: 33 05 f6 00  	add	a0, a2, a5
80001cdc: 93 87 15 00  	addi	a5, a1, 1
80001ce0: 13 06 c1 01  	addi	a2, sp, 28
80001ce4: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001ce8: b3 b6 86 01  	sltu	a3, a3, s8
80001cec: 93 c6 16 00  	xori	a3, a3, 1
80001cf0: 93 b5 f5 01  	sltiu	a1, a1, 31
80001cf4: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001cf8: 23 00 a6 00  	sb	a0, 0(a2)
80001cfc: 93 85 07 00  	mv	a1, a5
80001d00: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d04: 63 84 04 02  	beqz	s1, 0x80001d2c <.LBB1_124+0x190>
;       value /= base;
80001d08: 33 d7 86 03  	divu	a4, a3, s8
80001d0c: 33 06 87 03  	mul	a2, a4, s8
80001d10: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d14: 13 f5 e7 0f  	andi	a0, a5, 254
80001d18: 13 06 00 03  	addi	a2, zero, 48
80001d1c: 93 04 a0 00  	addi	s1, zero, 10
80001d20: e3 6c 95 fa  	bltu	a0, s1, 0x80001cd8 <.LBB1_124+0x13c>
80001d24: 13 86 08 00  	mv	a2, a7
80001d28: 6f f0 1f fb  	j	0x80001cd8 <.LBB1_124+0x13c>
80001d2c: 93 89 49 00  	addi	s3, s3, 4
80001d30: 13 58 f8 01  	srli	a6, a6, 31
80001d34: 13 07 c1 01  	addi	a4, sp, 28
80001d38: 13 05 09 00  	mv	a0, s2
80001d3c: 93 05 0a 00  	mv	a1, s4
80001d40: 13 86 0c 00  	mv	a2, s9
80001d44: 93 86 0a 00  	mv	a3, s5
80001d48: 6f 00 80 13  	j	0x80001e80 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001d4c: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001d50: 63 14 05 00  	bnez	a0, 0x80001d58 <.LBB1_124+0x1bc>
80001d54: 13 74 f4 fe  	andi	s0, s0, -17
80001d58: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d5c: 13 76 04 40  	andi	a2, s0, 1024
80001d60: 13 56 a6 00  	srli	a2, a2, 10
80001d64: b3 f5 c5 00  	and	a1, a1, a2
80001d68: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d6c: 63 9c 05 0e  	bnez	a1, 0x80001e64 <.LBB1_124+0x2c8>
80001d70: 13 06 00 00  	mv	a2, zero
80001d74: 93 75 04 02  	andi	a1, s0, 32
80001d78: 93 c5 15 06  	xori	a1, a1, 97
80001d7c: 13 88 65 0f  	addi	a6, a1, 246
80001d80: 6f 00 40 03  	j	0x80001db4 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d84: 33 87 e7 00  	add	a4, a5, a4
80001d88: 93 07 16 00  	addi	a5, a2, 1
80001d8c: 93 05 c1 01  	addi	a1, sp, 28
80001d90: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d94: 33 35 85 01  	sltu	a0, a0, s8
80001d98: 13 45 15 00  	xori	a0, a0, 1
80001d9c: 13 36 f6 01  	sltiu	a2, a2, 31
80001da0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001da4: 23 80 e4 00  	sb	a4, 0(s1)
80001da8: 13 86 07 00  	mv	a2, a5
80001dac: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001db0: 63 8a 05 0a  	beqz	a1, 0x80001e64 <.LBB1_124+0x2c8>
;       value /= base;
80001db4: b3 56 85 03  	divu	a3, a0, s8
80001db8: 33 87 86 03  	mul	a4, a3, s8
80001dbc: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001dc0: 93 74 e7 0f  	andi	s1, a4, 254
80001dc4: 93 07 00 03  	addi	a5, zero, 48
80001dc8: 93 05 a0 00  	addi	a1, zero, 10
80001dcc: e3 ec b4 fa  	bltu	s1, a1, 0x80001d84 <.LBB1_124+0x1e8>
80001dd0: 93 07 08 00  	mv	a5, a6
80001dd4: 6f f0 1f fb  	j	0x80001d84 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001dd8: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001ddc: 63 14 05 00  	bnez	a0, 0x80001de4 <.LBB1_124+0x248>
80001de0: 13 74 f4 fe  	andi	s0, s0, -17
80001de4: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001de8: 13 76 04 40  	andi	a2, s0, 1024
80001dec: 13 56 a6 00  	srli	a2, a2, 10
80001df0: b3 f5 c5 00  	and	a1, a1, a2
80001df4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001df8: 63 96 05 06  	bnez	a1, 0x80001e64 <.LBB1_124+0x2c8>
80001dfc: 13 06 00 00  	mv	a2, zero
80001e00: 93 75 04 02  	andi	a1, s0, 32
80001e04: 93 c5 15 06  	xori	a1, a1, 97
80001e08: 13 88 65 0f  	addi	a6, a1, 246
80001e0c: 6f 00 40 03  	j	0x80001e40 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e10: 33 87 e7 00  	add	a4, a5, a4
80001e14: 93 07 16 00  	addi	a5, a2, 1
80001e18: 93 05 c1 01  	addi	a1, sp, 28
80001e1c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e20: 33 35 85 01  	sltu	a0, a0, s8
80001e24: 13 45 15 00  	xori	a0, a0, 1
80001e28: 13 36 f6 01  	sltiu	a2, a2, 31
80001e2c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e30: 23 80 e4 00  	sb	a4, 0(s1)
80001e34: 13 86 07 00  	mv	a2, a5
80001e38: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e3c: 63 84 05 02  	beqz	a1, 0x80001e64 <.LBB1_124+0x2c8>
;       value /= base;
80001e40: b3 56 85 03  	divu	a3, a0, s8
80001e44: 33 87 86 03  	mul	a4, a3, s8
80001e48: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e4c: 93 74 e7 0f  	andi	s1, a4, 254
80001e50: 93 07 00 03  	addi	a5, zero, 48
80001e54: 93 05 a0 00  	addi	a1, zero, 10
80001e58: e3 ec b4 fa  	bltu	s1, a1, 0x80001e10 <.LBB1_124+0x274>
80001e5c: 93 07 08 00  	mv	a5, a6
80001e60: 6f f0 1f fb  	j	0x80001e10 <.LBB1_124+0x274>
80001e64: 93 89 49 00  	addi	s3, s3, 4
80001e68: 13 07 c1 01  	addi	a4, sp, 28
80001e6c: 13 05 09 00  	mv	a0, s2
80001e70: 93 05 0a 00  	mv	a1, s4
80001e74: 13 86 0c 00  	mv	a2, s9
80001e78: 93 86 0a 00  	mv	a3, s5
80001e7c: 13 08 00 00  	mv	a6, zero
80001e80: 93 08 0c 00  	mv	a7, s8
80001e84: 93 83 0b 00  	mv	t2, s7
80001e88: 13 0e 0b 00  	mv	t3, s6
80001e8c: 93 0e 04 00  	mv	t4, s0
80001e90: 97 10 00 00  	auipc	ra, 1
80001e94: e7 80 40 d9  	jalr	-620(ra)
80001e98: 13 0c 05 00  	mv	s8, a0
80001e9c: 13 0b 50 02  	addi	s6, zero, 37
80001ea0: 93 0b e0 02  	addi	s7, zero, 46
80001ea4: 13 04 1d 00  	addi	s0, s10, 1
80001ea8: 6f f0 cf d8  	j	0x80001434 <.LBB1_183+0x30>
80001eac: 93 85 15 00  	addi	a1, a1, 1
80001eb0: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001eb4: 63 00 05 04  	beqz	a0, 0x80001ef4 <.LBB1_124+0x358>
80001eb8: 13 84 17 00  	addi	s0, a5, 1
80001ebc: 6f 00 00 03  	j	0x80001eec <.LBB1_124+0x350>
80001ec0: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001ec4: 13 8c 1c 00  	addi	s8, s9, 1
80001ec8: 13 75 f5 0f  	andi	a0, a0, 255
80001ecc: 93 05 0a 00  	mv	a1, s4
80001ed0: 13 86 0c 00  	mv	a2, s9
80001ed4: 93 86 0a 00  	mv	a3, s5
80001ed8: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001edc: 03 45 04 00  	lbu	a0, 0(s0)
80001ee0: 13 04 14 00  	addi	s0, s0, 1
80001ee4: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001ee8: 63 08 05 00  	beqz	a0, 0x80001ef8 <.LBB1_124+0x35c>
80001eec: e3 9c 04 fc  	bnez	s1, 0x80001ec4 <.LBB1_124+0x328>
80001ef0: e3 98 0b fc  	bnez	s7, 0x80001ec0 <.LBB1_124+0x324>
80001ef4: 13 8c 0c 00  	mv	s8, s9
80001ef8: 03 25 c1 00  	lw	a0, 12(sp)
80001efc: 13 35 15 00  	seqz	a0, a0
80001f00: 03 26 41 01  	lw	a2, 20(sp)
80001f04: b3 35 66 01  	sltu	a1, a2, s6
80001f08: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001f0c: 33 65 b5 00  	or	a0, a0, a1
80001f10: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001f14: e3 14 05 f8  	bnez	a0, 0x80001e9c <.LBB1_124+0x300>
;           while (l++ < width) {
80001f18: 33 04 cb 40  	sub	s0, s6, a2
80001f1c: 93 0b e0 02  	addi	s7, zero, 46
80001f20: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001f24: 13 0c 1c 00  	addi	s8, s8, 1
80001f28: 13 05 00 02  	addi	a0, zero, 32
80001f2c: 93 05 0a 00  	mv	a1, s4
80001f30: 93 86 0a 00  	mv	a3, s5
80001f34: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001f38: 13 04 f4 ff  	addi	s0, s0, -1
80001f3c: e3 12 04 fe  	bnez	s0, 0x80001f20 <.LBB1_124+0x384>
80001f40: 13 0b 50 02  	addi	s6, zero, 37
80001f44: 13 04 1d 00  	addi	s0, s10, 1
80001f48: 6f f0 cf ce  	j	0x80001434 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001f4c: 13 86 0c 00  	mv	a2, s9
80001f50: 63 e4 5c 01  	bltu	s9, s5, 0x80001f58 <.LBB1_124+0x3bc>
80001f54: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001f58: 13 05 00 00  	mv	a0, zero
80001f5c: 93 05 0a 00  	mv	a1, s4
80001f60: 93 86 0a 00  	mv	a3, s5
80001f64: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001f68: 13 85 0c 00  	mv	a0, s9
80001f6c: 83 2d c1 03  	lw	s11, 60(sp)
80001f70: 03 2d 01 04  	lw	s10, 64(sp)
80001f74: 83 2c 41 04  	lw	s9, 68(sp)
80001f78: 03 2c 81 04  	lw	s8, 72(sp)
80001f7c: 83 2b c1 04  	lw	s7, 76(sp)
80001f80: 03 2b 01 05  	lw	s6, 80(sp)
80001f84: 83 2a 41 05  	lw	s5, 84(sp)
80001f88: 03 2a 81 05  	lw	s4, 88(sp)
80001f8c: 83 29 c1 05  	lw	s3, 92(sp)
80001f90: 03 29 01 06  	lw	s2, 96(sp)
80001f94: 83 24 41 06  	lw	s1, 100(sp)
80001f98: 03 24 81 06  	lw	s0, 104(sp)
80001f9c: 83 20 c1 06  	lw	ra, 108(sp)
80001fa0: 13 01 01 07  	addi	sp, sp, 112
80001fa4: 67 80 00 00  	ret

80001fa8 <_out_char.llvm.17592004524093383706>:
;   if (character) {
80001fa8: 63 04 05 0a  	beqz	a0, 0x80002050 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001fac: f3 25 40 f1  	csrr	a1, mhartid
80001fb0: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001fb4: 33 86 c5 02  	mul	a2, a1, a2

80001fb8 <.LBB2_6>:
80001fb8: 97 26 00 00  	auipc	a3, 2
80001fbc: 93 86 c6 a3  	addi	a3, a3, -1476
80001fc0: b3 05 d6 00  	add	a1, a2, a3
80001fc4: 03 a7 05 00  	lw	a4, 0(a1)
80001fc8: 93 07 17 00  	addi	a5, a4, 1
80001fcc: 23 a0 f5 00  	sw	a5, 0(a1)
80001fd0: 33 87 e5 00  	add	a4, a1, a4
80001fd4: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001fd8: 03 a7 05 00  	lw	a4, 0(a1)
80001fdc: 13 07 47 c0  	addi	a4, a4, -1020
80001fe0: 33 37 e0 00  	snez	a4, a4
80001fe4: 13 05 65 ff  	addi	a0, a0, -10
80001fe8: 33 35 a0 00  	snez	a0, a0
80001fec: 33 75 e5 00  	and	a0, a0, a4
80001ff0: 63 10 05 06  	bnez	a0, 0x80002050 <.LBB2_8+0x18>
80001ff4: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001ff8: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001ffc: 23 26 05 00  	sw	zero, 12(a0)
80002000: 93 06 00 04  	addi	a3, zero, 64
80002004: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80002008: 23 2a 05 00  	sw	zero, 20(a0)
8000200c: 93 06 10 00  	addi	a3, zero, 1
80002010: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80002014: 23 2e 05 00  	sw	zero, 28(a0)
80002018: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000201c: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80002020: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80002024: 23 22 05 02  	sw	zero, 36(a0)
80002028: 23 20 c5 02  	sw	a2, 32(a0)

8000202c <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
8000202c: 17 25 00 00  	auipc	a0, 2
80002030: 13 05 45 89  	addi	a0, a0, -1900
80002034: 23 20 d5 00  	sw	a3, 0(a0)

80002038 <.LBB2_8>:
80002038: 17 25 00 00  	auipc	a0, 2
8000203c: 13 05 85 8c  	addi	a0, a0, -1848
;         while (fromhost == 0)
80002040: 03 26 05 00  	lw	a2, 0(a0)
80002044: e3 0e 06 fe  	beqz	a2, 0x80002040 <.LBB2_8+0x8>
;         fromhost = 0;
80002048: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
8000204c: 23 a0 05 00  	sw	zero, 0(a1)
; }
80002050: 67 80 00 00  	ret

80002054 <_out_null>:
; }
80002054: 67 80 00 00  	ret

80002058 <_ftoa>:
; {
80002058: 13 01 01 f9  	addi	sp, sp, -112
8000205c: 23 26 11 06  	sw	ra, 108(sp)
80002060: 23 24 81 06  	sw	s0, 104(sp)
80002064: 23 22 91 06  	sw	s1, 100(sp)
80002068: 23 20 21 07  	sw	s2, 96(sp)
8000206c: 23 2e 31 05  	sw	s3, 92(sp)
80002070: 23 2c 41 05  	sw	s4, 88(sp)
80002074: 23 2a 51 05  	sw	s5, 84(sp)
80002078: 23 28 61 05  	sw	s6, 80(sp)
8000207c: 23 26 71 05  	sw	s7, 76(sp)
80002080: 23 24 81 05  	sw	s8, 72(sp)
80002084: 23 22 91 05  	sw	s9, 68(sp)
80002088: 23 20 a1 05  	sw	s10, 64(sp)
8000208c: 27 3c 81 02  	fsd	fs0, 56(sp)
80002090: 27 38 91 02  	fsd	fs1, 48(sp)
80002094: 27 34 21 03  	fsd	fs2, 40(sp)

80002098 <.LBB4_83>:
80002098: 97 24 00 00  	auipc	s1, 2
8000209c: 93 84 04 8b  	addi	s1, s1, -1872
800020a0: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800020a4: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800020a8: 93 0a 08 00  	mv	s5, a6
800020ac: 13 89 07 00  	mv	s2, a5
800020b0: 93 89 06 00  	mv	s3, a3
800020b4: 13 0a 06 00  	mv	s4, a2
800020b8: 13 8b 05 00  	mv	s6, a1
800020bc: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800020c0: 63 98 04 0e  	bnez	s1, 0x800021b0 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800020c4: 13 f5 2a 00  	andi	a0, s5, 2
800020c8: 93 f5 3a 00  	andi	a1, s5, 3
800020cc: b3 35 b0 00  	snez	a1, a1
800020d0: 13 36 59 00  	sltiu	a2, s2, 5
800020d4: b3 65 b6 00  	or	a1, a2, a1
800020d8: 93 5c 15 00  	srli	s9, a0, 1
800020dc: 13 04 0a 00  	mv	s0, s4
800020e0: 63 96 05 02  	bnez	a1, 0x8000210c <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800020e4: 93 04 c9 ff  	addi	s1, s2, -4
800020e8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800020ec: 13 04 16 00  	addi	s0, a2, 1
800020f0: 13 05 00 02  	addi	a0, zero, 32
800020f4: 93 05 0b 00  	mv	a1, s6
800020f8: 93 86 09 00  	mv	a3, s3
800020fc: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002100: 93 84 f4 ff  	addi	s1, s1, -1
80002104: 13 06 04 00  	mv	a2, s0
80002108: e3 92 04 fe  	bnez	s1, 0x800020ec <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
8000210c: 93 04 14 00  	addi	s1, s0, 1
80002110: 13 05 d0 02  	addi	a0, zero, 45
80002114: 93 05 0b 00  	mv	a1, s6
80002118: 13 06 04 00  	mv	a2, s0
8000211c: 93 86 09 00  	mv	a3, s3
80002120: e7 80 0b 00  	jalr	s7
80002124: 93 0a 24 00  	addi	s5, s0, 2
80002128: 13 05 90 06  	addi	a0, zero, 105
8000212c: 93 05 0b 00  	mv	a1, s6
80002130: 13 86 04 00  	mv	a2, s1
80002134: 93 86 09 00  	mv	a3, s3
80002138: e7 80 0b 00  	jalr	s7
8000213c: 13 0c 34 00  	addi	s8, s0, 3
80002140: 13 05 e0 06  	addi	a0, zero, 110
80002144: 93 05 0b 00  	mv	a1, s6
80002148: 13 86 0a 00  	mv	a2, s5
8000214c: 93 86 09 00  	mv	a3, s3
80002150: e7 80 0b 00  	jalr	s7
80002154: 93 04 44 00  	addi	s1, s0, 4
80002158: 13 05 60 06  	addi	a0, zero, 102
8000215c: 93 05 0b 00  	mv	a1, s6
80002160: 13 06 0c 00  	mv	a2, s8
80002164: 93 86 09 00  	mv	a3, s3
80002168: e7 80 0b 00  	jalr	s7
8000216c: 33 85 44 41  	sub	a0, s1, s4
80002170: 33 35 25 01  	sltu	a0, a0, s2
80002174: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002178: 93 c5 1c 00  	xori	a1, s9, 1
8000217c: 33 e5 a5 00  	or	a0, a1, a0
80002180: 63 16 05 56  	bnez	a0, 0x800026ec <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002184: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002188: 13 84 14 00  	addi	s0, s1, 1
8000218c: 13 05 00 02  	addi	a0, zero, 32
80002190: 93 05 0b 00  	mv	a1, s6
80002194: 13 86 04 00  	mv	a2, s1
80002198: 93 86 09 00  	mv	a3, s3
8000219c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800021a0: 33 05 8a 00  	add	a0, s4, s0
800021a4: 93 04 04 00  	mv	s1, s0
800021a8: e3 60 25 ff  	bltu	a0, s2, 0x80002188 <.LBB4_83+0xf0>
800021ac: 6f 00 40 54  	j	0x800026f0 <.LBB4_90+0x378>
800021b0: 53 04 a5 22  	fmv.d	fs0, fa0

800021b4 <.LBB4_84>:
800021b4: 17 15 00 00  	auipc	a0, 1
800021b8: 13 05 c5 79  	addi	a0, a0, 1948
800021bc: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
800021c0: 53 05 05 a2  	fle.d	a0, fa0, ft0
800021c4: 63 1e 05 00  	bnez	a0, 0x800021e0 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800021c8: 93 f5 4a 00  	andi	a1, s5, 4
800021cc: 13 b5 15 00  	seqz	a0, a1
800021d0: 63 82 05 06  	beqz	a1, 0x80002234 <.LBB4_88>

800021d4 <.LBB4_85>:
800021d4: 17 1c 00 00  	auipc	s8, 1
800021d8: 13 0c cc 4a  	addi	s8, s8, 1196
800021dc: 6f 00 00 06  	j	0x8000223c <.LBB4_88+0x8>

800021e0 <.LBB4_86>:
800021e0: 17 15 00 00  	auipc	a0, 1
800021e4: 13 05 85 77  	addi	a0, a0, 1912
800021e8: 07 30 05 00  	fld	ft0, 0(a0)

800021ec <.LBB4_87>:
800021ec: 17 15 00 00  	auipc	a0, 1
800021f0: 13 05 45 77  	addi	a0, a0, 1908
800021f4: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
800021f8: 53 05 04 a2  	fle.d	a0, fs0, ft0
800021fc: d3 85 80 a2  	fle.d	a1, ft1, fs0
80002200: 33 75 b5 00  	and	a0, a0, a1
80002204: 63 1e 05 0e  	bnez	a0, 0x80002300 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002208: 13 85 0b 00  	mv	a0, s7
8000220c: 93 05 0b 00  	mv	a1, s6
80002210: 13 06 0a 00  	mv	a2, s4
80002214: 93 86 09 00  	mv	a3, s3
80002218: 53 05 84 22  	fmv.d	fa0, fs0
8000221c: 93 07 09 00  	mv	a5, s2
80002220: 13 88 0a 00  	mv	a6, s5
80002224: 97 00 00 00  	auipc	ra, 0
80002228: e7 80 40 51  	jalr	1300(ra)
8000222c: 13 04 05 00  	mv	s0, a0
80002230: 6f 00 00 4c  	j	0x800026f0 <.LBB4_90+0x378>

80002234 <.LBB4_88>:
80002234: 17 1c 00 00  	auipc	s8, 1
80002238: 13 0c bc 46  	addi	s8, s8, 1131
8000223c: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002240: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002244: 13 f5 3a 00  	andi	a0, s5, 3
80002248: 33 35 a0 00  	snez	a0, a0
8000224c: b3 b5 2c 01  	sltu	a1, s9, s2
80002250: 93 c5 15 00  	xori	a1, a1, 1
80002254: 33 65 b5 00  	or	a0, a0, a1
80002258: 93 fa 2a 00  	andi	s5, s5, 2
8000225c: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002260: 63 16 05 02  	bnez	a0, 0x8000228c <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80002264: 33 04 99 41  	sub	s0, s2, s9
80002268: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000226c: 93 04 16 00  	addi	s1, a2, 1
80002270: 13 05 00 02  	addi	a0, zero, 32
80002274: 93 05 0b 00  	mv	a1, s6
80002278: 93 86 09 00  	mv	a3, s3
8000227c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002280: 13 04 f4 ff  	addi	s0, s0, -1
80002284: 13 86 04 00  	mv	a2, s1
80002288: e3 12 04 fe  	bnez	s0, 0x8000226c <.LBB4_88+0x38>
8000228c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002290: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002294: 33 05 9c 01  	add	a0, s8, s9
80002298: 03 45 05 00  	lbu	a0, 0(a0)
8000229c: 13 86 04 00  	mv	a2, s1
800022a0: 13 84 fc ff  	addi	s0, s9, -1
800022a4: 93 84 14 00  	addi	s1, s1, 1
800022a8: 93 05 0b 00  	mv	a1, s6
800022ac: 93 86 09 00  	mv	a3, s3
800022b0: e7 80 0b 00  	jalr	s7
800022b4: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800022b8: e3 1e 04 fc  	bnez	s0, 0x80002294 <.LBB4_88+0x60>
800022bc: 33 85 44 41  	sub	a0, s1, s4
800022c0: 33 35 25 01  	sltu	a0, a0, s2
800022c4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800022c8: 93 c5 1a 00  	xori	a1, s5, 1
800022cc: 33 e5 a5 00  	or	a0, a1, a0
800022d0: 63 1e 05 40  	bnez	a0, 0x800026ec <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800022d4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800022d8: 13 84 14 00  	addi	s0, s1, 1
800022dc: 13 05 00 02  	addi	a0, zero, 32
800022e0: 93 05 0b 00  	mv	a1, s6
800022e4: 13 86 04 00  	mv	a2, s1
800022e8: 93 86 09 00  	mv	a3, s3
800022ec: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800022f0: 33 05 8a 00  	add	a0, s4, s0
800022f4: 93 04 04 00  	mv	s1, s0
800022f8: e3 60 25 ff  	bltu	a0, s2, 0x800022d8 <.LBB4_88+0xa4>
800022fc: 6f 00 40 3f  	j	0x800026f0 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80002300: 13 f5 0a 40  	andi	a0, s5, 1024
80002304: 13 0c 60 00  	addi	s8, zero, 6
80002308: 63 04 05 00  	beqz	a0, 0x80002310 <.LBB4_88+0xdc>
8000230c: 13 0c 07 00  	mv	s8, a4
80002310: 13 05 a0 00  	addi	a0, zero, 10
80002314: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002318: 63 6c ac 02  	bltu	s8, a0, 0x80002350 <.LBB4_88+0x11c>
8000231c: 93 04 6c ff  	addi	s1, s8, -10
80002320: 13 05 f0 01  	addi	a0, zero, 31
80002324: 63 e4 a4 00  	bltu	s1, a0, 0x8000232c <.LBB4_88+0xf8>
80002328: 93 04 f0 01  	addi	s1, zero, 31
8000232c: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002330: 13 05 81 00  	addi	a0, sp, 8
80002334: 93 05 00 03  	addi	a1, zero, 48
80002338: 13 06 04 00  	mv	a2, s0
8000233c: 97 e0 ff ff  	auipc	ra, 1048574
80002340: e7 80 c0 21  	jalr	540(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002344: 13 c5 f4 ff  	not	a0, s1
80002348: 33 0c ac 00  	add	s8, s8, a0
8000234c: 6f 00 80 00  	j	0x80002354 <.LBB4_88+0x120>
80002350: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80002354: 13 15 3c 00  	slli	a0, s8, 3

80002358 <.LBB4_89>:
80002358: 97 15 00 00  	auipc	a1, 1
8000235c: 93 85 85 50  	addi	a1, a1, 1288
80002360: 33 05 b5 00  	add	a0, a0, a1
80002364: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002368: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
8000236c: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002370: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80002374: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002378 <.LBB4_90>:
80002378: 17 15 00 00  	auipc	a0, 1
8000237c: 13 05 05 5f  	addi	a0, a0, 1520
80002380: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80002384: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80002388: d3 01 15 d2  	fcvt.d.wu	ft3, a0
8000238c: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002390: d3 05 01 a2  	fle.d	a1, ft2, ft0
80002394: 63 90 05 02  	bnez	a1, 0x800023b4 <.LBB4_90+0x3c>
;     ++frac;
80002398: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
8000239c: 53 01 15 d2  	fcvt.d.wu	ft2, a0
800023a0: d3 15 11 a2  	flt.d	a1, ft2, ft1
800023a4: 63 94 05 02  	bnez	a1, 0x800023cc <.LBB4_90+0x54>
800023a8: 13 05 00 00  	mv	a0, zero
;       ++whole;
800023ac: 93 84 14 00  	addi	s1, s1, 1
800023b0: 6f 00 c0 01  	j	0x800023cc <.LBB4_90+0x54>
;   else if (diff < 0.5) {
800023b4: d3 15 01 a2  	flt.d	a1, ft2, ft0
800023b8: 63 9a 05 00  	bnez	a1, 0x800023cc <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
800023bc: 93 35 15 00  	seqz	a1, a0
800023c0: 13 76 15 00  	andi	a2, a0, 1
800023c4: b3 65 b6 00  	or	a1, a2, a1
800023c8: 33 85 a5 00  	add	a0, a1, a0
800023cc: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
800023d0: 63 0c 0c 0c  	beqz	s8, 0x800024a8 <.LBB4_90+0x130>
800023d4: 13 06 00 00  	mv	a2, zero
800023d8: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
800023dc: 33 83 85 00  	add	t1, a1, s0
800023e0: 93 02 00 02  	addi	t0, zero, 32
800023e4: 33 87 82 40  	sub	a4, t0, s0
800023e8: b7 d5 cc cc  	lui	a1, 838861
800023ec: 93 83 d5 cc  	addi	t2, a1, -819
800023f0: 13 08 a0 00  	addi	a6, zero, 10
800023f4: 93 08 90 00  	addi	a7, zero, 9
800023f8: 63 04 c7 0c  	beq	a4, a2, 0x800024c0 <.LBB4_90+0x148>
800023fc: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80002400: 33 35 75 02  	mulhu	a0, a0, t2
80002404: 13 55 35 00  	srli	a0, a0, 3
80002408: b3 06 05 03  	mul	a3, a0, a6
8000240c: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002410: 93 e6 06 03  	ori	a3, a3, 48
80002414: b3 07 c3 00  	add	a5, t1, a2
80002418: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
8000241c: 13 06 16 00  	addi	a2, a2, 1
80002420: e3 ec b8 fc  	bltu	a7, a1, 0x800023f8 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002424: 33 05 c4 00  	add	a0, s0, a2
80002428: 93 05 f5 ff  	addi	a1, a0, -1
8000242c: 93 06 e0 01  	addi	a3, zero, 30
80002430: b3 b6 b6 00  	sltu	a3, a3, a1
80002434: 33 47 cc 00  	xor	a4, s8, a2
80002438: 13 37 17 00  	seqz	a4, a4
8000243c: b3 e6 e6 00  	or	a3, a3, a4
80002440: 63 94 06 08  	bnez	a3, 0x800024c8 <.LBB4_90+0x150>
80002444: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002448: 33 05 85 00  	add	a0, a0, s0
8000244c: 93 45 f6 ff  	not	a1, a2
80002450: 33 8c 85 01  	add	s8, a1, s8
80002454: 33 04 c4 00  	add	s0, s0, a2
80002458: 93 05 f0 01  	addi	a1, zero, 31
8000245c: b3 86 85 40  	sub	a3, a1, s0
80002460: 33 05 c5 00  	add	a0, a0, a2
80002464: 93 05 0c 00  	mv	a1, s8
80002468: 63 64 dc 00  	bltu	s8, a3, 0x80002470 <.LBB4_90+0xf8>
8000246c: 93 85 06 00  	mv	a1, a3
80002470: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002474: 93 05 00 03  	addi	a1, zero, 48
80002478: 97 e0 ff ff  	auipc	ra, 1048574
8000247c: e7 80 00 0e  	jalr	224(ra)
80002480: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002484: b3 05 a4 00  	add	a1, s0, a0
80002488: 93 b5 f5 01  	sltiu	a1, a1, 31
8000248c: 33 46 ac 00  	xor	a2, s8, a0
80002490: 33 36 c0 00  	snez	a2, a2
80002494: 33 f6 c5 00  	and	a2, a1, a2
80002498: 13 05 15 00  	addi	a0, a0, 1
8000249c: e3 14 06 fe  	bnez	a2, 0x80002484 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800024a0: 33 05 a4 00  	add	a0, s0, a0
800024a4: 6f 00 80 02  	j	0x800024cc <.LBB4_90+0x154>
;     diff = value - (double)whole;
800024a8: d3 80 04 d2  	fcvt.d.w	ft1, s1
800024ac: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800024b0: 53 05 10 a2  	fle.d	a0, ft0, ft1
800024b4: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800024b8: b3 84 a4 00  	add	s1, s1, a0
800024bc: 6f 00 c0 03  	j	0x800024f8 <.LBB4_90+0x180>
800024c0: 13 04 00 02  	addi	s0, zero, 32
800024c4: 6f 00 80 03  	j	0x800024fc <.LBB4_90+0x184>
800024c8: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800024cc: 63 8e 05 00  	beqz	a1, 0x800024e8 <.LBB4_90+0x170>
;       buf[len++] = '.';
800024d0: 13 04 15 00  	addi	s0, a0, 1
800024d4: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
800024d8: 33 85 a5 00  	add	a0, a1, a0
800024dc: 93 05 e0 02  	addi	a1, zero, 46
800024e0: 23 00 b5 00  	sb	a1, 0(a0)
800024e4: 6f 00 80 00  	j	0x800024ec <.LBB4_90+0x174>
800024e8: 13 04 05 00  	mv	s0, a0
800024ec: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800024f0: 93 02 04 00  	mv	t0, s0
800024f4: 63 64 85 00  	bltu	a0, s0, 0x800024fc <.LBB4_90+0x184>
800024f8: 93 02 00 02  	addi	t0, zero, 32
800024fc: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002500: 37 65 66 66  	lui	a0, 419430
80002504: 93 05 75 66  	addi	a1, a0, 1639
80002508: 13 08 a0 00  	addi	a6, zero, 10
8000250c: 93 06 81 00  	addi	a3, sp, 8
80002510: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002514: 63 80 82 04  	beq	t0, s0, 0x80002554 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002518: 33 95 b4 02  	mulh	a0, s1, a1
8000251c: 93 57 f5 01  	srli	a5, a0, 31
80002520: 13 55 25 40  	srai	a0, a0, 2
80002524: 33 05 f5 00  	add	a0, a0, a5
80002528: b3 07 05 03  	mul	a5, a0, a6
8000252c: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002530: 93 87 07 03  	addi	a5, a5, 48
80002534: 13 0c 14 00  	addi	s8, s0, 1
80002538: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
8000253c: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002540: 23 00 f4 00  	sb	a5, 0(s0)
80002544: 13 04 0c 00  	mv	s0, s8
80002548: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
8000254c: e3 64 c7 fc  	bltu	a4, a2, 0x80002514 <.LBB4_90+0x19c>
80002550: 6f 00 80 00  	j	0x80002558 <.LBB4_90+0x1e0>
80002554: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002558: 93 f4 3a 00  	andi	s1, s5, 3
8000255c: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002560: 63 96 a4 06  	bne	s1, a0, 0x800025cc <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002564: 63 0c 09 00  	beqz	s2, 0x8000257c <.LBB4_90+0x204>
80002568: 13 f5 ca 00  	andi	a0, s5, 12
8000256c: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002570: 33 e5 ac 00  	or	a0, s9, a0
80002574: 33 09 a9 40  	sub	s2, s2, a0
80002578: 6f 00 80 00  	j	0x80002580 <.LBB4_90+0x208>
8000257c: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002580: 33 35 2c 01  	sltu	a0, s8, s2
80002584: 93 45 15 00  	xori	a1, a0, 1
80002588: 13 05 f0 01  	addi	a0, zero, 31
8000258c: 33 36 85 01  	sltu	a2, a0, s8
80002590: b3 65 b6 00  	or	a1, a2, a1
80002594: 63 9c 05 02  	bnez	a1, 0x800025cc <.LBB4_90+0x254>
80002598: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000259c: 93 45 fc ff  	not	a1, s8
800025a0: b3 05 b9 00  	add	a1, s2, a1
800025a4: 33 06 85 41  	sub	a2, a0, s8
800025a8: 33 85 86 01  	add	a0, a3, s8
800025ac: 63 e4 c5 00  	bltu	a1, a2, 0x800025b4 <.LBB4_90+0x23c>
800025b0: 93 05 06 00  	mv	a1, a2
800025b4: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800025b8: 93 05 00 03  	addi	a1, zero, 48
800025bc: 13 06 04 00  	mv	a2, s0
800025c0: 97 e0 ff ff  	auipc	ra, 1048574
800025c4: e7 80 80 f9  	jalr	-104(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800025c8: 33 0c 84 01  	add	s8, s0, s8
800025cc: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800025d0: 63 6a 85 05  	bltu	a0, s8, 0x80002624 <.LBB4_90+0x2ac>
;     if (negative) {
800025d4: 63 8c 0c 00  	beqz	s9, 0x800025ec <.LBB4_90+0x274>
800025d8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800025dc: 33 05 85 01  	add	a0, a0, s8
800025e0: 13 0c 1c 00  	addi	s8, s8, 1
800025e4: 93 05 d0 02  	addi	a1, zero, 45
800025e8: 6f 00 80 03  	j	0x80002620 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800025ec: 13 f5 4a 00  	andi	a0, s5, 4
800025f0: 63 10 05 02  	bnez	a0, 0x80002610 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800025f4: 13 f5 8a 00  	andi	a0, s5, 8
800025f8: 63 06 05 02  	beqz	a0, 0x80002624 <.LBB4_90+0x2ac>
800025fc: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002600: 33 05 85 01  	add	a0, a0, s8
80002604: 13 0c 1c 00  	addi	s8, s8, 1
80002608: 93 05 00 02  	addi	a1, zero, 32
8000260c: 6f 00 40 01  	j	0x80002620 <.LBB4_90+0x2a8>
80002610: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002614: 33 05 85 01  	add	a0, a0, s8
80002618: 13 0c 1c 00  	addi	s8, s8, 1
8000261c: 93 05 b0 02  	addi	a1, zero, 43
80002620: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002624: 33 35 90 00  	snez	a0, s1
80002628: b3 35 2c 01  	sltu	a1, s8, s2
8000262c: 93 c5 15 00  	xori	a1, a1, 1
80002630: 33 65 b5 00  	or	a0, a0, a1
80002634: 93 fa 2a 00  	andi	s5, s5, 2
80002638: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000263c: 63 16 05 02  	bnez	a0, 0x80002668 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002640: b3 04 89 41  	sub	s1, s2, s8
80002644: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002648: 13 04 16 00  	addi	s0, a2, 1
8000264c: 13 05 00 02  	addi	a0, zero, 32
80002650: 93 05 0b 00  	mv	a1, s6
80002654: 93 86 09 00  	mv	a3, s3
80002658: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
8000265c: 93 84 f4 ff  	addi	s1, s1, -1
80002660: 13 06 04 00  	mv	a2, s0
80002664: e3 92 04 fe  	bnez	s1, 0x80002648 <.LBB4_90+0x2d0>
80002668: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
8000266c: 63 0c 0c 02  	beqz	s8, 0x800026a4 <.LBB4_90+0x32c>
80002670: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002674: 33 85 8c 01  	add	a0, s9, s8
80002678: 03 45 05 00  	lbu	a0, 0(a0)
8000267c: 13 0d fc ff  	addi	s10, s8, -1
80002680: 93 04 14 00  	addi	s1, s0, 1
80002684: 93 05 0b 00  	mv	a1, s6
80002688: 13 06 04 00  	mv	a2, s0
8000268c: 93 86 09 00  	mv	a3, s3
80002690: e7 80 0b 00  	jalr	s7
80002694: 13 84 04 00  	mv	s0, s1
80002698: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
8000269c: e3 1c 0d fc  	bnez	s10, 0x80002674 <.LBB4_90+0x2fc>
800026a0: 6f 00 80 00  	j	0x800026a8 <.LBB4_90+0x330>
800026a4: 93 04 04 00  	mv	s1, s0
800026a8: 33 85 44 41  	sub	a0, s1, s4
800026ac: 33 35 25 01  	sltu	a0, a0, s2
800026b0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800026b4: 93 c5 1a 00  	xori	a1, s5, 1
800026b8: 33 e5 a5 00  	or	a0, a1, a0
800026bc: 63 18 05 02  	bnez	a0, 0x800026ec <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800026c0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800026c4: 13 84 14 00  	addi	s0, s1, 1
800026c8: 13 05 00 02  	addi	a0, zero, 32
800026cc: 93 05 0b 00  	mv	a1, s6
800026d0: 13 86 04 00  	mv	a2, s1
800026d4: 93 86 09 00  	mv	a3, s3
800026d8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800026dc: 33 05 8a 00  	add	a0, s4, s0
800026e0: 93 04 04 00  	mv	s1, s0
800026e4: e3 60 25 ff  	bltu	a0, s2, 0x800026c4 <.LBB4_90+0x34c>
800026e8: 6f 00 80 00  	j	0x800026f0 <.LBB4_90+0x378>
800026ec: 13 84 04 00  	mv	s0, s1
; }
800026f0: 13 05 04 00  	mv	a0, s0
800026f4: 07 39 81 02  	fld	fs2, 40(sp)
800026f8: 87 34 01 03  	fld	fs1, 48(sp)
800026fc: 07 34 81 03  	fld	fs0, 56(sp)
80002700: 03 2d 01 04  	lw	s10, 64(sp)
80002704: 83 2c 41 04  	lw	s9, 68(sp)
80002708: 03 2c 81 04  	lw	s8, 72(sp)
8000270c: 83 2b c1 04  	lw	s7, 76(sp)
80002710: 03 2b 01 05  	lw	s6, 80(sp)
80002714: 83 2a 41 05  	lw	s5, 84(sp)
80002718: 03 2a 81 05  	lw	s4, 88(sp)
8000271c: 83 29 c1 05  	lw	s3, 92(sp)
80002720: 03 29 01 06  	lw	s2, 96(sp)
80002724: 83 24 41 06  	lw	s1, 100(sp)
80002728: 03 24 81 06  	lw	s0, 104(sp)
8000272c: 83 20 c1 06  	lw	ra, 108(sp)
80002730: 13 01 01 07  	addi	sp, sp, 112
80002734: 67 80 00 00  	ret

80002738 <_etoa>:
; {
80002738: 13 01 01 f8  	addi	sp, sp, -128
8000273c: 23 2e 11 06  	sw	ra, 124(sp)
80002740: 23 2c 81 06  	sw	s0, 120(sp)
80002744: 23 2a 91 06  	sw	s1, 116(sp)
80002748: 23 28 21 07  	sw	s2, 112(sp)
8000274c: 23 26 31 07  	sw	s3, 108(sp)
80002750: 23 24 41 07  	sw	s4, 104(sp)
80002754: 23 22 51 07  	sw	s5, 100(sp)
80002758: 23 20 61 07  	sw	s6, 96(sp)
8000275c: 23 2e 71 05  	sw	s7, 92(sp)
80002760: 23 2c 81 05  	sw	s8, 88(sp)
80002764: 23 2a 91 05  	sw	s9, 84(sp)
80002768: 23 28 a1 05  	sw	s10, 80(sp)
8000276c: 23 26 b1 05  	sw	s11, 76(sp)

80002770 <.LBB5_43>:
80002770: 97 14 00 00  	auipc	s1, 1
80002774: 93 84 04 20  	addi	s1, s1, 512
80002778: 87 b0 04 00  	fld	ft1, 0(s1)

8000277c <.LBB5_44>:
8000277c: 97 14 00 00  	auipc	s1, 1
80002780: 93 84 c4 1f  	addi	s1, s1, 508
80002784: 07 b1 04 00  	fld	ft2, 0(s1)
80002788: 53 00 a5 22  	fmv.d	ft0, fa0
8000278c: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002790: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002794: b3 f4 84 00  	and	s1, s1, s0
80002798: 93 0a 08 00  	mv	s5, a6
8000279c: 13 89 07 00  	mv	s2, a5
800027a0: 93 07 07 00  	mv	a5, a4
800027a4: 93 89 06 00  	mv	s3, a3
800027a8: 13 0a 06 00  	mv	s4, a2
800027ac: 13 8b 05 00  	mv	s6, a1
800027b0: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800027b4: 63 92 04 06  	bnez	s1, 0x80002818 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800027b8: 13 85 0b 00  	mv	a0, s7
800027bc: 93 05 0b 00  	mv	a1, s6
800027c0: 13 06 0a 00  	mv	a2, s4
800027c4: 93 86 09 00  	mv	a3, s3
800027c8: 53 05 00 22  	fmv.d	fa0, ft0
800027cc: 13 87 07 00  	mv	a4, a5
800027d0: 93 07 09 00  	mv	a5, s2
800027d4: 13 88 0a 00  	mv	a6, s5
800027d8: 83 2d c1 04  	lw	s11, 76(sp)
800027dc: 03 2d 01 05  	lw	s10, 80(sp)
800027e0: 83 2c 41 05  	lw	s9, 84(sp)
800027e4: 03 2c 81 05  	lw	s8, 88(sp)
800027e8: 83 2b c1 05  	lw	s7, 92(sp)
800027ec: 03 2b 01 06  	lw	s6, 96(sp)
800027f0: 83 2a 41 06  	lw	s5, 100(sp)
800027f4: 03 2a 81 06  	lw	s4, 104(sp)
800027f8: 83 29 c1 06  	lw	s3, 108(sp)
800027fc: 03 29 01 07  	lw	s2, 112(sp)
80002800: 83 24 41 07  	lw	s1, 116(sp)
80002804: 03 24 81 07  	lw	s0, 120(sp)
80002808: 83 20 c1 07  	lw	ra, 124(sp)
8000280c: 13 01 01 08  	addi	sp, sp, 128
80002810: 17 03 00 00  	auipc	t1, 0
80002814: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002818: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
8000281c: 13 f5 0a 40  	andi	a0, s5, 1024
80002820: 13 07 60 00  	addi	a4, zero, 6
80002824: 63 04 05 00  	beqz	a0, 0x8000282c <.LBB5_44+0xb0>
80002828: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
8000282c: 27 30 a1 02  	fsd	fa0, 32(sp)
80002830: 83 25 41 02  	lw	a1, 36(sp)
80002834: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002838: 93 d6 45 01  	srli	a3, a1, 20
8000283c: b7 07 10 00  	lui	a5, 256
80002840: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002844: b3 f5 f5 00  	and	a1, a1, a5
80002848: 23 2c c1 00  	sw	a2, 24(sp)
8000284c: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002850: b3 e5 c5 00  	or	a1, a1, a2
80002854: 23 2e b1 00  	sw	a1, 28(sp)
80002858: 87 30 81 01  	fld	ft1, 24(sp)

8000285c <.LBB5_45>:
8000285c: 97 15 00 00  	auipc	a1, 1
80002860: 93 85 45 12  	addi	a1, a1, 292
80002864: 07 b1 05 00  	fld	ft2, 0(a1)

80002868 <.LBB5_46>:
80002868: 97 15 00 00  	auipc	a1, 1
8000286c: 93 85 05 12  	addi	a1, a1, 288
80002870: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002874: 93 f5 f6 7f  	andi	a1, a3, 2047
80002878: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000287c: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002880: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80002884 <.LBB5_47>:
80002884: 97 15 00 00  	auipc	a1, 1
80002888: 93 85 c5 10  	addi	a1, a1, 268
8000288c: 07 b1 05 00  	fld	ft2, 0(a1)

80002890 <.LBB5_48>:
80002890: 97 15 00 00  	auipc	a1, 1
80002894: 93 85 85 10  	addi	a1, a1, 264
80002898: 87 b1 05 00  	fld	ft3, 0(a1)

8000289c <.LBB5_49>:
8000289c: 97 15 00 00  	auipc	a1, 1
800028a0: 93 85 45 10  	addi	a1, a1, 260
800028a4: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800028a8: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800028ac: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800028b0: d3 80 05 d2  	fcvt.d.w	ft1, a1
800028b4: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

800028b8 <.LBB5_50>:
800028b8: 17 16 00 00  	auipc	a2, 1
800028bc: 13 06 06 0f  	addi	a2, a2, 240
800028c0: 87 31 06 00  	fld	ft3, 0(a2)

800028c4 <.LBB5_51>:
800028c4: 17 16 00 00  	auipc	a2, 1
800028c8: 13 06 c6 0e  	addi	a2, a2, 236
800028cc: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800028d0: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800028d4: 53 01 06 d2  	fcvt.d.w	ft2, a2
800028d8: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800028dc: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800028e0: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800028e4: 13 06 f6 3f  	addi	a2, a2, 1023
800028e8: 23 28 01 00  	sw	zero, 16(sp)
800028ec: 13 16 46 01  	slli	a2, a2, 20
800028f0: 23 2a c1 00  	sw	a2, 20(sp)

800028f4 <.LBB5_52>:
800028f4: 17 16 00 00  	auipc	a2, 1
800028f8: 13 06 c6 0c  	addi	a2, a2, 204
800028fc: 87 31 06 00  	fld	ft3, 0(a2)

80002900 <.LBB5_53>:
80002900: 17 16 00 00  	auipc	a2, 1
80002904: 13 06 86 0c  	addi	a2, a2, 200
80002908: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
8000290c: 87 32 01 01  	fld	ft5, 16(sp)

80002910 <.LBB5_54>:
80002910: 17 16 00 00  	auipc	a2, 1
80002914: 13 06 86 0a  	addi	a2, a2, 168
80002918: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000291c: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002920 <.LBB5_55>:
80002920: 17 16 00 00  	auipc	a2, 1
80002924: 13 06 06 0b  	addi	a2, a2, 176
80002928: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000292c: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002930: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80002934: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002938: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
8000293c: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002940: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002944: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002948: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
8000294c: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002950: 63 0a 06 00  	beqz	a2, 0x80002964 <.LBB5_56+0x10>

80002954 <.LBB5_56>:
80002954: 97 16 00 00  	auipc	a3, 1
80002958: 93 86 46 08  	addi	a3, a3, 132
8000295c: 07 b1 06 00  	fld	ft2, 0(a3)
80002960: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80002964: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002968: 93 05 34 06  	addi	a1, s0, 99
8000296c: 93 b5 75 0c  	sltiu	a1, a1, 199
80002970: 13 06 50 00  	addi	a2, zero, 5
80002974: b7 16 00 00  	lui	a3, 1
80002978: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
8000297c: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002980: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80002984: 63 84 06 06  	beqz	a3, 0x800029ec <.LBB5_58+0x58>

80002988 <.LBB5_57>:
80002988: 97 15 00 00  	auipc	a1, 1
8000298c: 93 85 85 05  	addi	a1, a1, 88
80002990: 07 b1 05 00  	fld	ft2, 0(a1)

80002994 <.LBB5_58>:
80002994: 97 15 00 00  	auipc	a1, 1
80002998: 93 85 45 05  	addi	a1, a1, 84
8000299c: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800029a0: d3 15 25 a2  	flt.d	a1, fa0, ft2
800029a4: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800029a8: b3 e5 c5 00  	or	a1, a1, a2
800029ac: 63 98 05 00  	bnez	a1, 0x800029bc <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800029b0: 63 40 e4 02  	blt	s0, a4, 0x800029d0 <.LBB5_58+0x3c>
800029b4: 13 07 00 00  	mv	a4, zero
800029b8: 6f 00 00 02  	j	0x800029d8 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800029bc: 63 06 07 02  	beqz	a4, 0x800029e8 <.LBB5_58+0x54>
800029c0: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800029c4: 13 45 15 00  	xori	a0, a0, 1
800029c8: 33 07 a7 40  	sub	a4, a4, a0
800029cc: 6f 00 00 02  	j	0x800029ec <.LBB5_58+0x58>
800029d0: 13 45 f4 ff  	not	a0, s0
800029d4: 33 07 a7 00  	add	a4, a4, a0
800029d8: 13 04 00 00  	mv	s0, zero
800029dc: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800029e0: 93 ea 0a 40  	ori	s5, s5, 1024
800029e4: 6f 00 80 00  	j	0x800029ec <.LBB5_58+0x58>
800029e8: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800029ec: b3 05 99 41  	sub	a1, s2, s9
800029f0: 33 36 b9 00  	sltu	a2, s2, a1
800029f4: 13 05 00 00  	mv	a0, zero
800029f8: 63 14 06 00  	bnez	a2, 0x80002a00 <.LBB5_58+0x6c>
800029fc: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002a00: 93 07 00 00  	mv	a5, zero
80002a04: 93 d5 1a 00  	srli	a1, s5, 1
80002a08: 93 f4 15 00  	andi	s1, a1, 1
80002a0c: b3 35 90 01  	snez	a1, s9
80002a10: b3 f5 b4 00  	and	a1, s1, a1
80002a14: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002a18: 63 94 05 00  	bnez	a1, 0x80002a20 <.LBB5_58+0x8c>
80002a1c: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002a20: 93 35 14 00  	seqz	a1, s0
80002a24: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002a28: 63 94 05 00  	bnez	a1, 0x80002a30 <.LBB5_58+0x9c>
80002a2c: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002a30: 63 04 05 00  	beqz	a0, 0x80002a38 <.LBB5_58+0xa4>
80002a34: 53 15 a5 22  	fneg.d	fa0, fa0
80002a38: 37 f5 ff ff  	lui	a0, 1048575
80002a3c: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002a40: 33 f8 aa 00  	and	a6, s5, a0
80002a44: 13 85 0b 00  	mv	a0, s7
80002a48: 93 05 0b 00  	mv	a1, s6
80002a4c: 13 06 0a 00  	mv	a2, s4
80002a50: 93 86 09 00  	mv	a3, s3
80002a54: 97 f0 ff ff  	auipc	ra, 1048575
80002a58: e7 80 40 60  	jalr	1540(ra)
80002a5c: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80002a60: 63 82 0c 18  	beqz	s9, 0x80002be4 <.LBB5_58+0x250>
80002a64: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80002a68: 13 f5 0a 02  	andi	a0, s5, 32
80002a6c: 13 45 55 06  	xori	a0, a0, 101
80002a70: 93 05 0b 00  	mv	a1, s6
80002a74: 13 06 0d 00  	mv	a2, s10
80002a78: 93 86 09 00  	mv	a3, s3
80002a7c: e7 80 0b 00  	jalr	s7
80002a80: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80002a84: 93 5a f4 01  	srli	s5, s0, 31
80002a88: 13 55 f4 41  	srai	a0, s0, 31
80002a8c: b3 05 a4 00  	add	a1, s0, a0
80002a90: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80002a94: 93 8d dc ff  	addi	s11, s9, -3
80002a98: 13 04 f0 01  	addi	s0, zero, 31
80002a9c: 37 d5 cc cc  	lui	a0, 838861
80002aa0: 13 05 d5 cc  	addi	a0, a0, -819
80002aa4: 13 08 a0 00  	addi	a6, zero, 10
80002aa8: 93 08 c1 02  	addi	a7, sp, 44
80002aac: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80002ab0: b3 37 a7 02  	mulhu	a5, a4, a0
80002ab4: 93 d5 37 00  	srli	a1, a5, 3
80002ab8: b3 87 05 03  	mul	a5, a1, a6
80002abc: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002ac0: 13 e6 07 03  	ori	a2, a5, 48
80002ac4: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002ac8: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002acc: 13 0c 1c 00  	addi	s8, s8, 1
80002ad0: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002ad4: 33 b6 e2 00  	sltu	a2, t0, a4
80002ad8: 33 f6 c7 00  	and	a2, a5, a2
80002adc: 93 8d fd ff  	addi	s11, s11, -1
80002ae0: 13 04 f4 ff  	addi	s0, s0, -1
80002ae4: 13 87 05 00  	mv	a4, a1
80002ae8: e3 14 06 fc  	bnez	a2, 0x80002ab0 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002aec: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002af0: 33 35 ac 00  	sltu	a0, s8, a0
80002af4: 13 45 15 00  	xori	a0, a0, 1
80002af8: 93 c5 17 00  	xori	a1, a5, 1
80002afc: 33 e5 a5 00  	or	a0, a1, a0
80002b00: 63 12 05 04  	bnez	a0, 0x80002b44 <.LBB5_58+0x1b0>
80002b04: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002b08: b3 85 8c 41  	sub	a1, s9, s8
80002b0c: 93 85 d5 ff  	addi	a1, a1, -3
80002b10: 13 06 f0 01  	addi	a2, zero, 31
80002b14: 33 06 86 41  	sub	a2, a2, s8
80002b18: 33 05 85 01  	add	a0, a0, s8
80002b1c: 63 e4 c5 00  	bltu	a1, a2, 0x80002b24 <.LBB5_58+0x190>
80002b20: 93 05 06 00  	mv	a1, a2
80002b24: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002b28: 93 05 00 03  	addi	a1, zero, 48
80002b2c: 97 e0 ff ff  	auipc	ra, 1048574
80002b30: e7 80 c0 a2  	jalr	-1492(ra)
;   if (flags & FLAGS_HASH) {
80002b34: 63 e4 8d 00  	bltu	s11, s0, 0x80002b3c <.LBB5_58+0x1a8>
80002b38: 93 0d 04 00  	mv	s11, s0
80002b3c: 33 85 8d 01  	add	a0, s11, s8
80002b40: 13 0c 15 00  	addi	s8, a0, 1
80002b44: 83 2c c1 00  	lw	s9, 12(sp)
80002b48: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002b4c: 63 60 85 03  	bltu	a0, s8, 0x80002b6c <.LBB5_58+0x1d8>
80002b50: 13 05 c1 02  	addi	a0, sp, 44
80002b54: 33 05 85 01  	add	a0, a0, s8
80002b58: 93 05 d0 02  	addi	a1, zero, 45
80002b5c: 63 94 0a 00  	bnez	s5, 0x80002b64 <.LBB5_58+0x1d0>
80002b60: 93 05 b0 02  	addi	a1, zero, 43
80002b64: 13 0c 1c 00  	addi	s8, s8, 1
80002b68: 23 00 b5 00  	sb	a1, 0(a0)
80002b6c: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80002b70: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80002b74: 33 85 8a 01  	add	a0, s5, s8
80002b78: 03 45 05 00  	lbu	a0, 0(a0)
80002b7c: 13 06 04 00  	mv	a2, s0
80002b80: 93 04 fc ff  	addi	s1, s8, -1
80002b84: 13 04 14 00  	addi	s0, s0, 1
80002b88: 93 05 0b 00  	mv	a1, s6
80002b8c: 93 86 09 00  	mv	a3, s3
80002b90: e7 80 0b 00  	jalr	s7
80002b94: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80002b98: e3 9e 04 fc  	bnez	s1, 0x80002b74 <.LBB5_58+0x1e0>
80002b9c: 33 05 44 41  	sub	a0, s0, s4
80002ba0: 33 35 25 01  	sltu	a0, a0, s2
80002ba4: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80002ba8: 93 c5 1c 00  	xori	a1, s9, 1
80002bac: 33 e5 a5 00  	or	a0, a1, a0
80002bb0: 63 18 05 02  	bnez	a0, 0x80002be0 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80002bb4: b3 04 40 41  	neg	s1, s4
80002bb8: 13 0d 14 00  	addi	s10, s0, 1
80002bbc: 13 05 00 02  	addi	a0, zero, 32
80002bc0: 93 05 0b 00  	mv	a1, s6
80002bc4: 13 06 04 00  	mv	a2, s0
80002bc8: 93 86 09 00  	mv	a3, s3
80002bcc: e7 80 0b 00  	jalr	s7
80002bd0: 33 85 a4 01  	add	a0, s1, s10
80002bd4: 13 04 0d 00  	mv	s0, s10
80002bd8: e3 60 25 ff  	bltu	a0, s2, 0x80002bb8 <.LBB5_58+0x224>
80002bdc: 6f 00 80 00  	j	0x80002be4 <.LBB5_58+0x250>
80002be0: 13 0d 04 00  	mv	s10, s0
; }
80002be4: 13 05 0d 00  	mv	a0, s10
80002be8: 83 2d c1 04  	lw	s11, 76(sp)
80002bec: 03 2d 01 05  	lw	s10, 80(sp)
80002bf0: 83 2c 41 05  	lw	s9, 84(sp)
80002bf4: 03 2c 81 05  	lw	s8, 88(sp)
80002bf8: 83 2b c1 05  	lw	s7, 92(sp)
80002bfc: 03 2b 01 06  	lw	s6, 96(sp)
80002c00: 83 2a 41 06  	lw	s5, 100(sp)
80002c04: 03 2a 81 06  	lw	s4, 104(sp)
80002c08: 83 29 c1 06  	lw	s3, 108(sp)
80002c0c: 03 29 01 07  	lw	s2, 112(sp)
80002c10: 83 24 41 07  	lw	s1, 116(sp)
80002c14: 03 24 81 07  	lw	s0, 120(sp)
80002c18: 83 20 c1 07  	lw	ra, 124(sp)
80002c1c: 13 01 01 08  	addi	sp, sp, 128
80002c20: 67 80 00 00  	ret

80002c24 <_ntoa_format>:
; {
80002c24: 13 01 01 fc  	addi	sp, sp, -64
80002c28: 23 2e 11 02  	sw	ra, 60(sp)
80002c2c: 23 2c 81 02  	sw	s0, 56(sp)
80002c30: 23 2a 91 02  	sw	s1, 52(sp)
80002c34: 23 28 21 03  	sw	s2, 48(sp)
80002c38: 23 26 31 03  	sw	s3, 44(sp)
80002c3c: 23 24 41 03  	sw	s4, 40(sp)
80002c40: 23 22 51 03  	sw	s5, 36(sp)
80002c44: 23 20 61 03  	sw	s6, 32(sp)
80002c48: 23 2e 71 01  	sw	s7, 28(sp)
80002c4c: 23 2c 81 01  	sw	s8, 24(sp)
80002c50: 23 2a 91 01  	sw	s9, 20(sp)
80002c54: 23 28 a1 01  	sw	s10, 16(sp)
80002c58: 23 26 b1 01  	sw	s11, 12(sp)
80002c5c: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80002c60: 93 fa 2e 00  	andi	s5, t4, 2
80002c64: 13 09 0e 00  	mv	s2, t3
80002c68: 13 8d 03 00  	mv	s10, t2
80002c6c: 93 8c 08 00  	mv	s9, a7
80002c70: 13 8c 07 00  	mv	s8, a5
80002c74: 93 89 06 00  	mv	s3, a3
80002c78: 13 0a 06 00  	mv	s4, a2
80002c7c: 13 8b 05 00  	mv	s6, a1
80002c80: 93 0d 05 00  	mv	s11, a0
80002c84: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80002c88: 63 9e 0a 0c  	bnez	s5, 0x80002d64 <_ntoa_format+0x140>
80002c8c: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002c90: 63 0e 09 00  	beqz	s2, 0x80002cac <_ntoa_format+0x88>
80002c94: 63 0e 04 00  	beqz	s0, 0x80002cb0 <_ntoa_format+0x8c>
80002c98: 13 f5 cb 00  	andi	a0, s7, 12
80002c9c: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002ca0: 33 65 05 01  	or	a0, a0, a6
80002ca4: 33 09 a9 40  	sub	s2, s2, a0
80002ca8: 6f 00 80 00  	j	0x80002cb0 <_ntoa_format+0x8c>
80002cac: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002cb0: 33 35 ac 01  	sltu	a0, s8, s10
80002cb4: 93 45 15 00  	xori	a1, a0, 1
80002cb8: 13 05 f0 01  	addi	a0, zero, 31
80002cbc: 33 36 85 01  	sltu	a2, a0, s8
80002cc0: b3 65 b6 00  	or	a1, a2, a1
80002cc4: 63 94 05 04  	bnez	a1, 0x80002d0c <_ntoa_format+0xe8>
80002cc8: 23 22 51 01  	sw	s5, 4(sp)
80002ccc: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002cd0: 93 45 fc ff  	not	a1, s8
80002cd4: b3 85 a5 01  	add	a1, a1, s10
80002cd8: 33 06 85 41  	sub	a2, a0, s8
80002cdc: 33 05 87 01  	add	a0, a4, s8
80002ce0: 63 e4 c5 00  	bltu	a1, a2, 0x80002ce8 <_ntoa_format+0xc4>
80002ce4: 93 05 06 00  	mv	a1, a2
80002ce8: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002cec: 93 05 00 03  	addi	a1, zero, 48
80002cf0: 13 86 04 00  	mv	a2, s1
80002cf4: 97 e0 ff ff  	auipc	ra, 1048574
80002cf8: e7 80 40 86  	jalr	-1948(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002cfc: 33 8c 84 01  	add	s8, s1, s8
80002d00: 03 27 81 00  	lw	a4, 8(sp)
80002d04: 13 88 0a 00  	mv	a6, s5
80002d08: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d0c: 63 0c 04 04  	beqz	s0, 0x80002d64 <_ntoa_format+0x140>
80002d10: 33 35 2c 01  	sltu	a0, s8, s2
80002d14: 93 45 15 00  	xori	a1, a0, 1
80002d18: 13 05 f0 01  	addi	a0, zero, 31
80002d1c: 33 36 85 01  	sltu	a2, a0, s8
80002d20: b3 e5 c5 00  	or	a1, a1, a2
80002d24: 63 90 05 04  	bnez	a1, 0x80002d64 <_ntoa_format+0x140>
80002d28: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d2c: 93 45 fc ff  	not	a1, s8
80002d30: b3 05 b9 00  	add	a1, s2, a1
80002d34: 33 06 85 41  	sub	a2, a0, s8
80002d38: 33 05 87 01  	add	a0, a4, s8
80002d3c: 63 e4 c5 00  	bltu	a1, a2, 0x80002d44 <_ntoa_format+0x120>
80002d40: 93 05 06 00  	mv	a1, a2
80002d44: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002d48: 93 05 00 03  	addi	a1, zero, 48
80002d4c: 13 86 04 00  	mv	a2, s1
80002d50: 97 e0 ff ff  	auipc	ra, 1048574
80002d54: e7 80 80 80  	jalr	-2040(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d58: 33 8c 84 01  	add	s8, s1, s8
80002d5c: 03 27 81 00  	lw	a4, 8(sp)
80002d60: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80002d64: 13 f5 0b 01  	andi	a0, s7, 16
80002d68: 63 02 05 0e  	beqz	a0, 0x80002e4c <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002d6c: 13 f5 0b 40  	andi	a0, s7, 1024
80002d70: 13 55 a5 00  	srli	a0, a0, 10
80002d74: 93 35 1c 00  	seqz	a1, s8
80002d78: 33 65 b5 00  	or	a0, a0, a1
80002d7c: 63 1e 05 02  	bnez	a0, 0x80002db8 <_ntoa_format+0x194>
80002d80: 33 45 ac 01  	xor	a0, s8, s10
80002d84: 33 35 a0 00  	snez	a0, a0
80002d88: b3 45 2c 01  	xor	a1, s8, s2
80002d8c: b3 35 b0 00  	snez	a1, a1
80002d90: 33 75 b5 00  	and	a0, a0, a1
80002d94: 63 12 05 02  	bnez	a0, 0x80002db8 <_ntoa_format+0x194>
;       len--;
80002d98: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002d9c: b3 35 a0 00  	snez	a1, a0
80002da0: 13 86 0c ff  	addi	a2, s9, -16
80002da4: 13 36 16 00  	seqz	a2, a2
80002da8: b3 75 b6 00  	and	a1, a2, a1
80002dac: 63 84 05 00  	beqz	a1, 0x80002db4 <_ntoa_format+0x190>
80002db0: 13 05 ec ff  	addi	a0, s8, -2
80002db4: 13 0c 05 00  	mv	s8, a0
80002db8: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002dbc: 63 96 ac 02  	bne	s9, a0, 0x80002de8 <_ntoa_format+0x1c4>
80002dc0: 13 f5 0b 02  	andi	a0, s7, 32
80002dc4: 93 55 55 00  	srli	a1, a0, 5
80002dc8: 13 06 f0 01  	addi	a2, zero, 31
80002dcc: 33 36 86 01  	sltu	a2, a2, s8
80002dd0: b3 e5 c5 00  	or	a1, a1, a2
80002dd4: 63 9e 05 02  	bnez	a1, 0x80002e10 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002dd8: 33 05 87 01  	add	a0, a4, s8
80002ddc: 13 0c 1c 00  	addi	s8, s8, 1
80002de0: 93 05 80 07  	addi	a1, zero, 120
80002de4: 6f 00 c0 04  	j	0x80002e30 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002de8: 13 85 ec ff  	addi	a0, s9, -2
80002dec: 33 35 a0 00  	snez	a0, a0
80002df0: 93 05 f0 01  	addi	a1, zero, 31
80002df4: b3 b5 85 01  	sltu	a1, a1, s8
80002df8: 33 65 b5 00  	or	a0, a0, a1
80002dfc: 63 1c 05 02  	bnez	a0, 0x80002e34 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002e00: 33 05 87 01  	add	a0, a4, s8
80002e04: 13 0c 1c 00  	addi	s8, s8, 1
80002e08: 93 05 20 06  	addi	a1, zero, 98
80002e0c: 6f 00 40 02  	j	0x80002e30 <_ntoa_format+0x20c>
80002e10: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002e14: 13 35 15 00  	seqz	a0, a0
80002e18: 93 c5 15 00  	xori	a1, a1, 1
80002e1c: 33 65 b5 00  	or	a0, a0, a1
80002e20: 63 1a 05 00  	bnez	a0, 0x80002e34 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80002e24: 33 05 87 01  	add	a0, a4, s8
80002e28: 13 0c 1c 00  	addi	s8, s8, 1
80002e2c: 93 05 80 05  	addi	a1, zero, 88
80002e30: 23 00 b5 00  	sb	a1, 0(a0)
80002e34: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002e38: 63 60 85 07  	bltu	a0, s8, 0x80002e98 <_ntoa_format+0x274>
;       buf[len++] = '0';
80002e3c: 33 05 87 01  	add	a0, a4, s8
80002e40: 13 0c 1c 00  	addi	s8, s8, 1
80002e44: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80002e48: 23 00 b5 00  	sb	a1, 0(a0)
80002e4c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002e50: 63 64 85 05  	bltu	a0, s8, 0x80002e98 <_ntoa_format+0x274>
;     if (negative) {
80002e54: 63 0a 08 00  	beqz	a6, 0x80002e68 <_ntoa_format+0x244>
;       buf[len++] = '-';
80002e58: 33 05 87 01  	add	a0, a4, s8
80002e5c: 13 0c 1c 00  	addi	s8, s8, 1
80002e60: 93 05 d0 02  	addi	a1, zero, 45
80002e64: 6f 00 00 03  	j	0x80002e94 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80002e68: 13 f5 4b 00  	andi	a0, s7, 4
80002e6c: 63 1e 05 00  	bnez	a0, 0x80002e88 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80002e70: 13 f5 8b 00  	andi	a0, s7, 8
80002e74: 63 02 05 02  	beqz	a0, 0x80002e98 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80002e78: 33 05 87 01  	add	a0, a4, s8
80002e7c: 13 0c 1c 00  	addi	s8, s8, 1
80002e80: 93 05 00 02  	addi	a1, zero, 32
80002e84: 6f 00 00 01  	j	0x80002e94 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002e88: 33 05 87 01  	add	a0, a4, s8
80002e8c: 13 0c 1c 00  	addi	s8, s8, 1
80002e90: 93 05 b0 02  	addi	a1, zero, 43
80002e94: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002e98: 13 f5 3b 00  	andi	a0, s7, 3
80002e9c: 33 35 a0 00  	snez	a0, a0
80002ea0: b3 35 2c 01  	sltu	a1, s8, s2
80002ea4: 93 c5 15 00  	xori	a1, a1, 1
80002ea8: 33 65 b5 00  	or	a0, a0, a1
80002eac: 13 04 0a 00  	mv	s0, s4
80002eb0: 63 16 05 02  	bnez	a0, 0x80002edc <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80002eb4: b3 04 89 41  	sub	s1, s2, s8
80002eb8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002ebc: 13 04 16 00  	addi	s0, a2, 1
80002ec0: 13 05 00 02  	addi	a0, zero, 32
80002ec4: 93 05 0b 00  	mv	a1, s6
80002ec8: 93 86 09 00  	mv	a3, s3
80002ecc: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002ed0: 93 84 f4 ff  	addi	s1, s1, -1
80002ed4: 13 06 04 00  	mv	a2, s0
80002ed8: e3 92 04 fe  	bnez	s1, 0x80002ebc <_ntoa_format+0x298>
80002edc: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002ee0: 63 0e 0c 02  	beqz	s8, 0x80002f1c <_ntoa_format+0x2f8>
80002ee4: 03 25 81 00  	lw	a0, 8(sp)
80002ee8: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002eec: 33 85 8b 01  	add	a0, s7, s8
80002ef0: 03 45 05 00  	lbu	a0, 0(a0)
80002ef4: 93 0c fc ff  	addi	s9, s8, -1
80002ef8: 93 04 14 00  	addi	s1, s0, 1
80002efc: 93 05 0b 00  	mv	a1, s6
80002f00: 13 06 04 00  	mv	a2, s0
80002f04: 93 86 09 00  	mv	a3, s3
80002f08: e7 80 0d 00  	jalr	s11
80002f0c: 13 84 04 00  	mv	s0, s1
80002f10: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002f14: e3 9c 0c fc  	bnez	s9, 0x80002eec <_ntoa_format+0x2c8>
80002f18: 6f 00 80 00  	j	0x80002f20 <_ntoa_format+0x2fc>
80002f1c: 93 04 04 00  	mv	s1, s0
80002f20: 33 85 44 41  	sub	a0, s1, s4
80002f24: 33 35 25 01  	sltu	a0, a0, s2
80002f28: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002f2c: 93 c5 1a 00  	xori	a1, s5, 1
80002f30: 33 e5 a5 00  	or	a0, a1, a0
80002f34: 63 18 05 02  	bnez	a0, 0x80002f64 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002f38: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002f3c: 13 84 14 00  	addi	s0, s1, 1
80002f40: 13 05 00 02  	addi	a0, zero, 32
80002f44: 93 05 0b 00  	mv	a1, s6
80002f48: 13 86 04 00  	mv	a2, s1
80002f4c: 93 86 09 00  	mv	a3, s3
80002f50: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002f54: 33 05 8a 00  	add	a0, s4, s0
80002f58: 93 04 04 00  	mv	s1, s0
80002f5c: e3 60 25 ff  	bltu	a0, s2, 0x80002f3c <_ntoa_format+0x318>
80002f60: 6f 00 80 00  	j	0x80002f68 <_ntoa_format+0x344>
80002f64: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002f68: 13 05 04 00  	mv	a0, s0
80002f6c: 83 2d c1 00  	lw	s11, 12(sp)
80002f70: 03 2d 01 01  	lw	s10, 16(sp)
80002f74: 83 2c 41 01  	lw	s9, 20(sp)
80002f78: 03 2c 81 01  	lw	s8, 24(sp)
80002f7c: 83 2b c1 01  	lw	s7, 28(sp)
80002f80: 03 2b 01 02  	lw	s6, 32(sp)
80002f84: 83 2a 41 02  	lw	s5, 36(sp)
80002f88: 03 2a 81 02  	lw	s4, 40(sp)
80002f8c: 83 29 c1 02  	lw	s3, 44(sp)
80002f90: 03 29 01 03  	lw	s2, 48(sp)
80002f94: 83 24 41 03  	lw	s1, 52(sp)
80002f98: 03 24 81 03  	lw	s0, 56(sp)
80002f9c: 83 20 c1 03  	lw	ra, 60(sp)
80002fa0: 13 01 01 04  	addi	sp, sp, 64
80002fa4: 67 80 00 00  	ret

80002fa8 <_snrt_init_team>:
;     team->base.root = team;
80002fa8: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002fac: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002fb0: 03 23 87 00  	lw	t1, 8(a4)
80002fb4: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002fb8: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002fbc: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002fc0: 83 22 47 00  	lw	t0, 4(a4)
80002fc4: 33 88 08 03  	mul	a6, a7, a6
80002fc8: 33 05 58 02  	mul	a0, a6, t0
80002fcc: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002fd0: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002fd4: 33 85 68 40  	sub	a0, a7, t1
80002fd8: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002fdc: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002fe0: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002fe4: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002fe8: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002fec: 03 25 87 01  	lw	a0, 24(a4)
80002ff0: b7 05 00 10  	lui	a1, 65536
80002ff4: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002ff8: 23 a2 07 02  	sw	zero, 36(a5)
80002ffc: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80003000: 03 25 07 02  	lw	a0, 32(a4)
80003004: 83 25 47 02  	lw	a1, 36(a4)
80003008: 23 a4 a7 02  	sw	a0, 40(a5)
8000300c: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80003010: 23 a8 c7 02  	sw	a2, 48(a5)
80003014: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80003018: 23 ac d7 02  	sw	a3, 56(a5)
8000301c: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80003020: 03 25 07 01  	lw	a0, 16(a4)
80003024: 33 08 a6 00  	add	a6, a2, a0
80003028: 93 05 08 19  	addi	a1, a6, 400
8000302c: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80003030: b3 32 a8 00  	sltu	t0, a6, a0
80003034: 93 55 15 00  	srli	a1, a0, 1
80003038: 33 03 b8 00  	add	t1, a6, a1
8000303c: b3 35 03 01  	sltu	a1, t1, a6
80003040: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80003044: 23 a0 67 04  	sw	t1, 64(a5)
80003048: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
8000304c: 13 15 15 00  	slli	a0, a0, 1
80003050: b3 05 c5 00  	add	a1, a0, a2
80003054: 33 b5 a5 00  	sltu	a0, a1, a0
80003058: 23 a4 b7 04  	sw	a1, 72(a5)
8000305c: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80003060: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80003064: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80003068: 37 05 00 00  	lui	a0, 0
8000306c: 33 05 45 00  	add	a0, a0, tp
80003070: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003074: 03 a5 07 00  	lw	a0, 0(a5)
80003078: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
8000307c: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003080: b3 85 b8 40  	sub	a1, a7, a1
80003084: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80003088: b7 05 00 00  	lui	a1, 0
8000308c: b3 85 45 00  	add	a1, a1, tp
80003090: 23 a2 a5 00  	sw	a0, 4(a1)
80003094: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80003098: 33 85 a8 02  	mul	a0, a7, a0

8000309c <.LBB0_1>:
8000309c: 97 15 00 00  	auipc	a1, 1
800030a0: 93 85 85 95  	addi	a1, a1, -1704
800030a4: 33 05 b5 00  	add	a0, a0, a1
800030a8: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800030ac: 83 28 07 03  	lw	a7, 48(a4)
800030b0: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800030b4: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800030b8: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800030bc: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800030c0: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800030c4: 13 05 76 00  	addi	a0, a2, 7
800030c8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800030cc: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800030d0: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800030d4: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800030d8: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800030dc: 03 a5 05 00  	lw	a0, 0(a1)
800030e0: 13 05 f5 44  	addi	a0, a0, 1103
800030e4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800030e8: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800030ec: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800030f0: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800030f4: 37 05 00 00  	lui	a0, 0
800030f8: 33 05 45 00  	add	a0, a0, tp
800030fc: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80003100: 37 05 00 00  	lui	a0, 0
80003104: 33 05 45 00  	add	a0, a0, tp
80003108: 23 26 e5 00  	sw	a4, 12(a0)
; }
8000310c: 67 80 00 00  	ret

80003110 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003110: 37 05 00 00  	lui	a0, 0
80003114: 33 05 45 00  	add	a0, a0, tp
80003118: 03 25 05 00  	lw	a0, 0(a0)
8000311c: 03 25 05 00  	lw	a0, 0(a0)
80003120: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003124: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003128: 33 85 a5 40  	sub	a0, a1, a0
8000312c: 67 80 00 00  	ret

80003130 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80003130: 37 05 00 00  	lui	a0, 0
80003134: 33 05 45 00  	add	a0, a0, tp
80003138: 03 25 05 00  	lw	a0, 0(a0)
8000313c: 03 25 05 00  	lw	a0, 0(a0)
80003140: 03 25 05 07  	lw	a0, 112(a0)
80003144: 67 80 00 00  	ret

80003148 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80003148: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
8000314c: 63 44 05 00  	bltz	a0, 0x80003154 <__snrt_isr+0xc>
;         while (1)
80003150: 6f 00 00 00  	j	0x80003150 <__snrt_isr+0x8>
80003154: b7 05 00 80  	lui	a1, 524288
80003158: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
8000315c: 33 75 b5 00  	and	a0, a0, a1
80003160: 13 05 d5 ff  	addi	a0, a0, -3
80003164: 93 55 25 00  	srli	a1, a0, 2
80003168: 13 15 e5 01  	slli	a0, a0, 30
8000316c: 33 65 b5 00  	or	a0, a0, a1
80003170: 93 05 40 00  	addi	a1, zero, 4
80003174: 63 0a b5 06  	beq	a0, a1, 0x800031e8 <.LBB1_7+0x58>
80003178: 63 1a 05 08  	bnez	a0, 0x8000320c <.LBB1_7+0x7c>
8000317c: 37 05 00 00  	lui	a0, 0
80003180: 33 05 45 00  	add	a0, a0, tp
80003184: 03 25 05 00  	lw	a0, 0(a0)
80003188: 03 25 05 00  	lw	a0, 0(a0)
8000318c: f3 25 40 f1  	csrr	a1, mhartid

80003190 <.LBB1_7>:
;     asm volatile(
80003190: 17 16 00 00  	auipc	a2, 1
80003194: 13 06 06 86  	addi	a2, a2, -1952
80003198: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
8000319c: 93 06 06 00  	mv	a3, a2
800031a0: 93 02 10 00  	addi	t0, zero, 1
800031a4: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800031a8: e3 9e 02 fe  	bnez	t0, 0x800031a4 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800031ac: b7 06 00 00  	lui	a3, 0
800031b0: b3 86 46 00  	add	a3, a3, tp
800031b4: 83 a6 86 00  	lw	a3, 8(a3)
800031b8: 33 85 a5 40  	sub	a0, a1, a0
800031bc: 93 55 35 00  	srli	a1, a0, 3
800031c0: 93 f5 c5 ff  	andi	a1, a1, -4
800031c4: b3 85 b6 00  	add	a1, a3, a1
800031c8: 83 a6 05 00  	lw	a3, 0(a1)
800031cc: 13 07 10 00  	addi	a4, zero, 1
800031d0: 33 15 a7 00  	sll	a0, a4, a0
800031d4: 13 45 f5 ff  	not	a0, a0
800031d8: 33 f5 a6 00  	and	a0, a3, a0
800031dc: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800031e0: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800031e4: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800031e8: 37 05 00 00  	lui	a0, 0
800031ec: 33 05 45 00  	add	a0, a0, tp
800031f0: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800031f4: b7 05 00 00  	lui	a1, 0
800031f8: b3 85 45 00  	add	a1, a1, tp
800031fc: 83 a5 c5 00  	lw	a1, 12(a1)
80003200: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80003204: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80003208: 23 a4 a5 00  	sw	a0, 8(a1)
; }
8000320c: 67 80 00 00  	ret

Disassembly of section .init:

80003210 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80003210: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80003214: 93 81 81 ef  	addi	gp, gp, -264

80003218 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80003218: 97 00 00 00  	auipc	ra, 0
8000321c: e7 80 40 3c  	jalr	964(ra)

80003220 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80003220: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80003224: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80003228: 97 00 00 00  	auipc	ra, 0
8000322c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80003230: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80003234: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80003238: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000323c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80003240: 63 92 02 02  	bnez	t0, 0x80003264 <snrt.crt0.init_registers>

80003244 <.Lpcrel_hi0>:
;     la        t0, _edata
80003244: 97 02 00 00  	auipc	t0, 0
80003248: 93 82 c2 7a  	addi	t0, t0, 1964

8000324c <.Lpcrel_hi1>:
;     la        t1, _end
8000324c: 17 03 00 00  	auipc	t1, 0
80003250: 13 03 83 7a  	addi	t1, t1, 1960
;     bge       t0, t1, 2f
80003254: 63 d8 62 00  	bge	t0, t1, 0x80003264 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80003258: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000325c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80003260: e3 cc 62 fe  	blt	t0, t1, 0x80003258 <.Lpcrel_hi1+0xc>

80003264 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80003264: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80003268: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000326c: 63 82 02 08  	beqz	t0, 0x800032f0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80003270: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80003274: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80003278: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000327c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80003280: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80003284: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80003288: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000328c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80003290: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80003294: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80003298: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000329c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800032a0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800032a4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800032a8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800032ac: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800032b0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800032b4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800032b8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800032bc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800032c0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800032c4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800032c8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800032cc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800032d0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800032d4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800032d8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800032dc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800032e0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800032e4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800032e8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800032ec: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800032f0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800032f0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800032f4: 23 a0 06 00  	sw	zero, 0(a3)

800032f8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800032f8: 97 02 00 00  	auipc	t0, 0
800032fc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003300: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003304: 93 87 06 00  	mv	a5, a3

80003308 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003308: 97 03 00 00  	auipc	t2, 0
8000330c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003310: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003314: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003318: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000331c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003320: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003324: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003328: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000332c: b3 86 66 40  	sub	a3, a3, t1

80003330 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003330: 97 02 00 00  	auipc	t0, 0
80003334: 93 82 82 5d  	addi	t0, t0, 1496

80003338 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003338: 17 03 00 00  	auipc	t1, 0
8000333c: 13 03 03 5d  	addi	t1, t1, 1488

80003340 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80003340: 97 03 00 00  	auipc	t2, 0
80003344: 93 83 83 5c  	addi	t2, t2, 1480

80003348 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80003348: 17 0e 00 00  	auipc	t3, 0
8000334c: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003350: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003354: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003358: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000335c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003360: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003364: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003368: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000336c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003370: 63 dc 62 00  	bge	t0, t1, 0x80003388 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003374: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003378: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000337c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003380: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80003384: e3 c8 62 fe  	blt	t0, t1, 0x80003374 <.Lpcrel_hi7+0x2c>

80003388 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80003388: 97 02 00 00  	auipc	t0, 0
8000338c: 93 82 02 58  	addi	t0, t0, 1408

80003390 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80003390: 17 03 00 00  	auipc	t1, 0
80003394: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
80003398: 63 da 62 00  	bge	t0, t1, 0x800033ac <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000339c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800033a0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800033a4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800033a8: e3 ca 72 fe  	blt	t0, t2, 0x8000339c <.Lpcrel_hi9+0xc>

800033ac <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800033ac: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800033b0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800033b4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800033b8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800033bc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800033c0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800033c4: 97 00 00 00  	auipc	ra, 0
800033c8: e7 80 40 be  	jalr	-1052(ra)
;     lw        a0, 0(sp)
800033cc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800033d0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800033d4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800033d8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800033dc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800033e0: 13 01 41 01  	addi	sp, sp, 20

800033e4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800033e4: 97 02 00 00  	auipc	t0, 0
800033e8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800033ec: 73 90 52 30  	csrw	mtvec, t0

800033f0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800033f0: 97 00 00 00  	auipc	ra, 0
800033f4: e7 80 00 22  	jalr	544(ra)

800033f8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800033f8: 97 d0 ff ff  	auipc	ra, 1048573
800033fc: e7 80 c0 23  	jalr	572(ra)
;     mv        s0, a0 # store return value in s0
80003400: 13 04 05 00  	mv	s0, a0

80003404 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003404: 97 00 00 00  	auipc	ra, 0
80003408: e7 80 c0 20  	jalr	524(ra)

8000340c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000340c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003410: 97 00 00 00  	auipc	ra, 0
80003414: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003418: 73 00 50 10  	wfi	
;     j       1b
8000341c: 6f f0 df ff  	j	0x80003418 <snrt.crt0.end+0xc>

80003420 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003420: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003424: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003428: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000342c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003430: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003434: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003438: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000343c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80003440: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80003444: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80003448: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000344c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003450: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003454: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003458: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000345c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003460: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003464: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003468: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000346c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003470: 63 84 02 08  	beqz	t0, 0x800034f8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003474: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003478: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000347c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003480: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003484: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003488: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000348c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003490: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003494: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003498: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000349c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800034a0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800034a4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800034a8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800034ac: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800034b0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800034b4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800034b8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800034bc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800034c0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800034c4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800034c8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800034cc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800034d0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800034d4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800034d8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800034dc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800034e0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800034e4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800034e8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800034ec: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800034f0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800034f4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800034f8: 97 00 00 00  	auipc	ra, 0
800034fc: e7 80 00 c5  	jalr	-944(ra)
;     csrr    t0, misa
80003500: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003504: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003508: 63 84 02 08  	beqz	t0, 0x80003590 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000350c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003510: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003514: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003518: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000351c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003520: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003524: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003528: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000352c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003530: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003534: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003538: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000353c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003540: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003544: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003548: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000354c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003550: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003554: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003558: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000355c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003560: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003564: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003568: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000356c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003570: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003574: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003578: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000357c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003580: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003584: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003588: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000358c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003590: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003594: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003598: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000359c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800035a0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800035a4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800035a8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800035ac: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800035b0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800035b4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800035b8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800035bc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800035c0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800035c4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800035c8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800035cc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800035d0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800035d4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800035d8: 73 00 20 30  	mret	

800035dc <_snrt_init_core_info>:
;     mv        a4, a1
800035dc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800035e0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800035e4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800035e8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800035ec: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800035f0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800035f4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800035f8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800035fc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003600: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003604: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003608: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000360c: 67 80 00 00  	ret

80003610 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003610: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003614: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003618: 97 00 00 00  	auipc	ra, 0
8000361c: e7 80 80 b1  	jalr	-1256(ra)
;     lw        a0, 0(a0)
80003620: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003624: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003628: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000362c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003630: 67 80 00 00  	ret

80003634 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003634: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003638: 67 80 00 00  	ret

8000363c <_snrt_exit>:
;     addi      sp, sp, -8
8000363c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003640: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003644: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003648: 97 00 00 00  	auipc	ra, 0
8000364c: e7 80 80 ac  	jalr	-1336(ra)
;     lw        t0, 0(sp)
80003650: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003654: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003658: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000365c: 63 1c 05 00  	bnez	a0, 0x80003674 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003660: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003664: 93 e2 12 00  	ori	t0, t0, 1

80003668 <.Lpcrel_hi11>:
;     la        t1, tohost
80003668: 17 03 00 00  	auipc	t1, 0
8000366c: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
80003670: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003674: 67 80 00 00  	ret
