
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-SMALL_DATASET--2mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00002f84 80000000 TEXT
  2 .init             00000468 80002f90 TEXT
  3 .rodata           00000238 800033f8 DATA
  4 .htif             00000048 80003640 DATA
  5 .tdata            00000000 80003688 DATA
  6 .tbss             00000010 80003688 BSS
  7 .tbssend          00000000 80003698 DATA
  8 .sdata            000000e8 80003698 DATA
  9 .data             00000000 80003780 DATA
 10 .sbss             00000004 80003780 BSS
 11 .bss              00000000 80003784 BSS
 12 .dram             00000000 80003784 DATA
 13 .debug_info       000036e5 00000000 
 14 .debug_abbrev     00000bed 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002d63 00000000 
 17 .debug_loc        00003565 00000000 
 18 .debug_ranges     00000378 00000000 
 19 .debug_str        00000b05 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002ac 00000000 
 23 .symtab           00003350 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000095c 00000000 


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
80000678: e3 9c 05 20  	bnez	a1, 0x80001090 <.LBB0_106+0x10>
;     return _snrt_team_current->root;
8000067c: 37 05 00 00  	lui	a0, 0
80000680: 33 05 45 00  	add	a0, a0, tp
80000684: 03 25 05 00  	lw	a0, 0(a0)
80000688: 83 24 05 00  	lw	s1, 0(a0)
8000068c: 37 45 00 00  	lui	a0, 4
;     if (alloc->next + size > alloc->base + alloc->size) {
80000690: 03 ab 84 05  	lw	s6, 88(s1)
80000694: 03 a6 04 05  	lw	a2, 80(s1)
80000698: 83 a6 44 05  	lw	a3, 84(s1)
8000069c: 13 08 85 e7  	addi	a6, a0, -392
800006a0: 33 05 0b 01  	add	a0, s6, a6
800006a4: 93 05 85 00  	addi	a1, a0, 8
800006a8: b3 87 c6 00  	add	a5, a3, a2
800006ac: 63 f6 b7 00  	bgeu	a5, a1, 0x800006b8 <main+0x84>
800006b0: 93 0c 00 00  	mv	s9, zero
800006b4: 6f 00 00 01  	j	0x800006c4 <main+0x90>
;     void *ret = (void *)alloc->next;
800006b8: 93 0c 0b 00  	mv	s9, s6
;     alloc->next += size;
800006bc: 23 ac b4 04  	sw	a1, 88(s1)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c0: 13 8b 05 00  	mv	s6, a1
800006c4: b7 55 00 00  	lui	a1, 5
800006c8: 13 87 85 77  	addi	a4, a1, 1912
;     if (alloc->next + size > alloc->base + alloc->size) {
800006cc: b3 05 eb 00  	add	a1, s6, a4
800006d0: 93 85 85 00  	addi	a1, a1, 8
800006d4: 63 f6 b7 00  	bgeu	a5, a1, 0x800006e0 <main+0xac>
800006d8: 13 06 00 00  	mv	a2, zero
800006dc: 6f 00 00 01  	j	0x800006ec <main+0xb8>
;     void *ret = (void *)alloc->next;
800006e0: 13 06 0b 00  	mv	a2, s6
;     alloc->next += size;
800006e4: 23 ac b4 04  	sw	a1, 88(s1)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e8: 13 8b 05 00  	mv	s6, a1
800006ec: b7 75 00 00  	lui	a1, 7
800006f0: 13 8e 85 d5  	addi	t3, a1, -680
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f4: b3 05 cb 01  	add	a1, s6, t3
800006f8: 93 85 85 00  	addi	a1, a1, 8
800006fc: 63 f6 b7 00  	bgeu	a5, a1, 0x80000708 <main+0xd4>
80000700: 13 0a 00 00  	mv	s4, zero
80000704: 6f 00 00 01  	j	0x80000714 <main+0xe0>
;     void *ret = (void *)alloc->next;
80000708: 13 0a 0b 00  	mv	s4, s6
;     alloc->next += size;
8000070c: 23 ac b4 04  	sw	a1, 88(s1)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000710: 13 8b 05 00  	mv	s6, a1
80000714: b7 85 00 00  	lui	a1, 8
80000718: 93 83 85 cf  	addi	t2, a1, -776
;     if (alloc->next + size > alloc->base + alloc->size) {
8000071c: b3 05 7b 00  	add	a1, s6, t2
80000720: 93 85 85 00  	addi	a1, a1, 8
80000724: 63 f6 b7 00  	bgeu	a5, a1, 0x80000730 <main+0xfc>
80000728: 93 09 00 00  	mv	s3, zero
8000072c: 6f 00 00 01  	j	0x8000073c <main+0x108>
;     void *ret = (void *)alloc->next;
80000730: 93 09 0b 00  	mv	s3, s6
;     alloc->next += size;
80000734: 23 ac b4 04  	sw	a1, 88(s1)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000738: 13 8b 05 00  	mv	s6, a1
8000073c: b7 65 00 00  	lui	a1, 6
80000740: 13 83 85 3f  	addi	t1, a1, 1016
;     if (alloc->next + size > alloc->base + alloc->size) {
80000744: b3 05 6b 00  	add	a1, s6, t1
80000748: 93 85 85 00  	addi	a1, a1, 8
8000074c: 63 f6 b7 00  	bgeu	a5, a1, 0x80000758 <main+0x124>
80000750: 13 0b 00 00  	mv	s6, zero
80000754: 6f 00 80 00  	j	0x8000075c <main+0x128>
;     alloc->next += size;
80000758: 23 ac b4 04  	sw	a1, 88(s1)
;   for (i = 0; i < ni; i++)
8000075c: b3 02 e6 00  	add	t0, a2, a4
80000760: 93 55 46 01  	srli	a1, a2, 20
80000764: b3 35 b0 00  	snez	a1, a1
80000768: b7 06 12 00  	lui	a3, 288
8000076c: 93 86 16 00  	addi	a3, a3, 1
80000770: b3 b6 d2 00  	sltu	a3, t0, a3
80000774: b3 f8 d5 00  	and	a7, a1, a3

80000778 <.LBB0_96>:
80000778: 97 35 00 00  	auipc	a1, 3
8000077c: 93 85 05 f2  	addi	a1, a1, -224
80000780: 93 06 00 00  	mv	a3, zero
80000784: 63 88 08 08  	beqz	a7, 0x80000814 <.LBB0_96+0x9c>
80000788: 13 07 80 00  	addi	a4, zero, 8
8000078c: 93 07 50 04  	addi	a5, zero, 69
;   for (i = 0; i < ni; i++)
80000790: 93 04 00 04  	addi	s1, zero, 64
80000794: ab a0 97 00  	scfgw	a5, s1
80000798: 93 07 00 0c  	addi	a5, zero, 192
8000079c: ab 20 f7 00  	scfgw	a4, a5
800007a0: 93 07 70 02  	addi	a5, zero, 39
800007a4: 93 04 00 06  	addi	s1, zero, 96
800007a8: ab a0 97 00  	scfgw	a5, s1
800007ac: 93 07 00 0e  	addi	a5, zero, 224
800007b0: ab 20 f7 00  	scfgw	a4, a5
800007b4: 13 07 00 02  	addi	a4, zero, 32
800007b8: ab 20 e0 00  	scfgw	zero, a4
800007bc: 2b 20 06 3a  	scfgwi	a2, 928
800007c0: 73 e7 00 7c  	csrrsi	a4, 1984, 1
800007c4: 87 b1 05 00  	fld	ft3, 0(a1)
800007c8: b7 d5 cc cc  	lui	a1, 838861
800007cc: 93 85 d5 cc  	addi	a1, a1, -819
800007d0: 13 07 80 02  	addi	a4, zero, 40
800007d4: 93 07 60 04  	addi	a5, zero, 70
800007d8: 93 04 10 00  	addi	s1, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
800007dc: 33 b4 b4 02  	mulhu	s0, s1, a1
800007e0: 13 54 54 00  	srli	s0, s0, 5
800007e4: 33 04 e4 02  	mul	s0, s0, a4
800007e8: 33 84 84 40  	sub	s0, s1, s0
800007ec: 53 02 04 d2  	fcvt.d.w	ft4, s0
800007f0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800007f4: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nk; j++)
800007f8: 93 87 f7 ff  	addi	a5, a5, -1
800007fc: b3 84 d4 00  	add	s1, s1, a3
80000800: e3 9e 07 fc  	bnez	a5, 0x800007dc <.LBB0_96+0x64>
;   for (i = 0; i < ni; i++)
80000804: 93 86 16 00  	addi	a3, a3, 1
80000808: e3 96 e6 fc  	bne	a3, a4, 0x800007d4 <.LBB0_96+0x5c>
8000080c: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000810: 6f 00 c0 05  	j	0x8000086c <.LBB0_96+0xf4>
80000814: 37 d7 cc cc  	lui	a4, 838861
80000818: 87 b1 05 00  	fld	ft3, 0(a1)
8000081c: 93 05 d7 cc  	addi	a1, a4, -819
80000820: 13 0f 80 02  	addi	t5, zero, 40
80000824: 93 0e 00 23  	addi	t4, zero, 560
80000828: 93 04 06 00  	mv	s1, a2
8000082c: 13 04 00 00  	mv	s0, zero
80000830: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000834: 33 b7 b7 02  	mulhu	a4, a5, a1
80000838: 13 57 57 00  	srli	a4, a4, 5
8000083c: 33 07 e7 03  	mul	a4, a4, t5
80000840: 33 87 e7 40  	sub	a4, a5, a4
80000844: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000848: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000084c: 33 87 84 00  	add	a4, s1, s0
80000850: 27 30 47 00  	fsd	ft4, 0(a4)
;     for (j = 0; j < nk; j++)
80000854: 13 04 84 00  	addi	s0, s0, 8
80000858: b3 87 d7 00  	add	a5, a5, a3
8000085c: e3 1c d4 fd  	bne	s0, t4, 0x80000834 <.LBB0_96+0xbc>
;   for (i = 0; i < ni; i++)
80000860: 93 86 16 00  	addi	a3, a3, 1
80000864: 93 84 04 23  	addi	s1, s1, 560
80000868: e3 92 e6 fd  	bne	a3, t5, 0x8000082c <.LBB0_96+0xb4>
;   for (i = 0; i < nk; i++)
8000086c: b3 0e ca 01  	add	t4, s4, t3
80000870: 93 55 4a 01  	srli	a1, s4, 20
80000874: b3 35 b0 00  	snez	a1, a1
80000878: b7 06 12 00  	lui	a3, 288
8000087c: 93 86 16 00  	addi	a3, a3, 1
80000880: b3 b6 de 00  	sltu	a3, t4, a3
80000884: b3 fa d5 00  	and	s5, a1, a3

80000888 <.LBB0_97>:
80000888: 97 36 00 00  	auipc	a3, 3
8000088c: 93 86 86 e1  	addi	a3, a3, -488
80000890: 63 8c 0a 08  	beqz	s5, 0x80000928 <.LBB0_97+0xa0>
80000894: 93 04 00 00  	mv	s1, zero
80000898: 93 05 80 00  	addi	a1, zero, 8
8000089c: 13 07 10 03  	addi	a4, zero, 49
;   for (i = 0; i < nk; i++)
800008a0: 93 07 00 04  	addi	a5, zero, 64
800008a4: ab 20 f7 00  	scfgw	a4, a5
800008a8: 13 07 00 0c  	addi	a4, zero, 192
800008ac: ab a0 e5 00  	scfgw	a1, a4
800008b0: 13 07 50 04  	addi	a4, zero, 69
800008b4: 93 07 00 06  	addi	a5, zero, 96
800008b8: ab 20 f7 00  	scfgw	a4, a5
800008bc: 13 07 00 0e  	addi	a4, zero, 224
800008c0: ab a0 e5 00  	scfgw	a1, a4
800008c4: 93 05 00 02  	addi	a1, zero, 32
800008c8: ab 20 b0 00  	scfgw	zero, a1
800008cc: 2b 20 0a 3a  	scfgwi	s4, 928
800008d0: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800008d4: b7 85 eb 51  	lui	a1, 335544
800008d8: 87 b1 06 00  	fld	ft3, 0(a3)
800008dc: 93 85 f5 51  	addi	a1, a1, 1311
800008e0: 13 07 20 03  	addi	a4, zero, 50
800008e4: 13 0e 60 04  	addi	t3, zero, 70
800008e8: 93 86 04 00  	mv	a3, s1
800008ec: 13 04 20 03  	addi	s0, zero, 50
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
800008f0: b3 b7 b6 02  	mulhu	a5, a3, a1
800008f4: 93 d7 47 00  	srli	a5, a5, 4
800008f8: b3 87 e7 02  	mul	a5, a5, a4
800008fc: b3 87 f6 40  	sub	a5, a3, a5
80000900: 53 82 07 d2  	fcvt.d.w	ft4, a5
80000904: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000908: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nj; j++)
8000090c: 13 04 f4 ff  	addi	s0, s0, -1
80000910: b3 86 96 00  	add	a3, a3, s1
80000914: e3 1e 04 fc  	bnez	s0, 0x800008f0 <.LBB0_97+0x68>
;   for (i = 0; i < nk; i++)
80000918: 93 84 14 00  	addi	s1, s1, 1
8000091c: e3 96 c4 fd  	bne	s1, t3, 0x800008e8 <.LBB0_97+0x60>
80000920: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000924: 6f 00 40 06  	j	0x80000988 <.LBB0_97+0x100>
80000928: 93 05 00 00  	mv	a1, zero
8000092c: 37 87 eb 51  	lui	a4, 335544
80000930: 13 07 f7 51  	addi	a4, a4, 1311
80000934: 87 b1 06 00  	fld	ft3, 0(a3)
80000938: 13 0f 20 03  	addi	t5, zero, 50
8000093c: 93 0f 00 19  	addi	t6, zero, 400
80000940: 13 0e 60 04  	addi	t3, zero, 70
80000944: 13 04 0a 00  	mv	s0, s4
80000948: 93 04 00 00  	mv	s1, zero
8000094c: 93 86 05 00  	mv	a3, a1
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000950: b3 b7 e6 02  	mulhu	a5, a3, a4
80000954: 93 d7 47 00  	srli	a5, a5, 4
80000958: b3 87 e7 03  	mul	a5, a5, t5
8000095c: b3 87 f6 40  	sub	a5, a3, a5
80000960: 53 82 07 d2  	fcvt.d.w	ft4, a5
80000964: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000968: b3 07 94 00  	add	a5, s0, s1
8000096c: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nj; j++)
80000970: 93 84 84 00  	addi	s1, s1, 8
80000974: b3 86 b6 00  	add	a3, a3, a1
80000978: e3 9c f4 fd  	bne	s1, t6, 0x80000950 <.LBB0_97+0xc8>
;   for (i = 0; i < nk; i++)
8000097c: 93 85 15 00  	addi	a1, a1, 1
80000980: 13 04 04 19  	addi	s0, s0, 400
80000984: e3 92 c5 fd  	bne	a1, t3, 0x80000948 <.LBB0_97+0xc0>
;   for (i = 0; i < nj; i++)
80000988: 33 8e 79 00  	add	t3, s3, t2
8000098c: 93 d5 49 01  	srli	a1, s3, 20
80000990: b3 35 b0 00  	snez	a1, a1
80000994: b7 06 12 00  	lui	a3, 288
80000998: 93 86 16 00  	addi	a3, a3, 1
8000099c: b3 36 de 00  	sltu	a3, t3, a3
800009a0: b3 f3 d5 00  	and	t2, a1, a3

800009a4 <.LBB0_98>:
800009a4: 97 37 00 00  	auipc	a5, 3
800009a8: 93 87 47 d0  	addi	a5, a5, -764
800009ac: 93 05 00 00  	mv	a1, zero
800009b0: 63 8e 03 08  	beqz	t2, 0x80000a4c <.LBB0_98+0xa8>
800009b4: 93 06 80 00  	addi	a3, zero, 8
800009b8: 13 07 f0 04  	addi	a4, zero, 79
;   for (i = 0; i < nj; i++)
800009bc: 93 04 00 04  	addi	s1, zero, 64
800009c0: ab 20 97 00  	scfgw	a4, s1
800009c4: 13 07 00 0c  	addi	a4, zero, 192
800009c8: ab a0 e6 00  	scfgw	a3, a4
800009cc: 13 07 10 03  	addi	a4, zero, 49
800009d0: 93 04 00 06  	addi	s1, zero, 96
800009d4: ab 20 97 00  	scfgw	a4, s1
800009d8: 13 07 00 0e  	addi	a4, zero, 224
800009dc: ab a0 e6 00  	scfgw	a3, a4
800009e0: 93 06 00 02  	addi	a3, zero, 32
800009e4: ab 20 d0 00  	scfgw	zero, a3
800009e8: 2b a0 09 3a  	scfgwi	s3, 928
800009ec: f3 e6 00 7c  	csrrsi	a3, 1984, 1
800009f0: 93 0f 10 00  	addi	t6, zero, 1
800009f4: b7 d6 cc cc  	lui	a3, 838861
800009f8: 87 b1 07 00  	fld	ft3, 0(a5)
800009fc: 13 87 d6 cc  	addi	a4, a3, -819
80000a00: 93 07 00 05  	addi	a5, zero, 80
80000a04: 13 0f 20 03  	addi	t5, zero, 50
80000a08: 93 86 0f 00  	mv	a3, t6
80000a0c: 93 04 00 05  	addi	s1, zero, 80
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000a10: 33 b4 e6 02  	mulhu	s0, a3, a4
80000a14: 13 54 64 00  	srli	s0, s0, 6
80000a18: 33 04 f4 02  	mul	s0, s0, a5
80000a1c: 33 84 86 40  	sub	s0, a3, s0
80000a20: 53 02 04 d2  	fcvt.d.w	ft4, s0
80000a24: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a28: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nl; j++)
80000a2c: 93 84 f4 ff  	addi	s1, s1, -1
80000a30: b3 86 b6 00  	add	a3, a3, a1
80000a34: e3 9e 04 fc  	bnez	s1, 0x80000a10 <.LBB0_98+0x6c>
;   for (i = 0; i < nj; i++)
80000a38: 93 85 15 00  	addi	a1, a1, 1
80000a3c: 93 8f 3f 00  	addi	t6, t6, 3
80000a40: e3 94 e5 fd  	bne	a1, t5, 0x80000a08 <.LBB0_98+0x64>
80000a44: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000a48: 6f 00 80 06  	j	0x80000ab0 <.LBB0_98+0x10c>
80000a4c: 93 0f 10 00  	addi	t6, zero, 1
80000a50: b7 d6 cc cc  	lui	a3, 838861
80000a54: 13 87 d6 cc  	addi	a4, a3, -819
80000a58: 87 b1 07 00  	fld	ft3, 0(a5)
80000a5c: 13 09 00 05  	addi	s2, zero, 80
80000a60: 93 0b 00 28  	addi	s7, zero, 640
80000a64: 13 0f 20 03  	addi	t5, zero, 50
80000a68: 13 84 09 00  	mv	s0, s3
80000a6c: 93 06 00 00  	mv	a3, zero
80000a70: 93 87 0f 00  	mv	a5, t6
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000a74: b3 b4 e7 02  	mulhu	s1, a5, a4
80000a78: 93 d4 64 00  	srli	s1, s1, 6
80000a7c: b3 84 24 03  	mul	s1, s1, s2
80000a80: b3 84 97 40  	sub	s1, a5, s1
80000a84: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a88: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a8c: b3 04 d4 00  	add	s1, s0, a3
80000a90: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (j = 0; j < nl; j++)
80000a94: 93 86 86 00  	addi	a3, a3, 8
80000a98: b3 87 b7 00  	add	a5, a5, a1
80000a9c: e3 9c 76 fd  	bne	a3, s7, 0x80000a74 <.LBB0_98+0xd0>
;   for (i = 0; i < nj; i++)
80000aa0: 93 85 15 00  	addi	a1, a1, 1
80000aa4: 13 04 04 28  	addi	s0, s0, 640
80000aa8: 93 8f 3f 00  	addi	t6, t6, 3
80000aac: e3 90 e5 fd  	bne	a1, t5, 0x80000a6c <.LBB0_98+0xc8>
;   for (i = 0; i < ni; i++)
80000ab0: 33 0f 6b 00  	add	t5, s6, t1
80000ab4: 93 55 4b 01  	srli	a1, s6, 20
80000ab8: b3 35 b0 00  	snez	a1, a1
80000abc: b7 06 12 00  	lui	a3, 288
80000ac0: 93 86 16 00  	addi	a3, a3, 1
80000ac4: b3 36 df 00  	sltu	a3, t5, a3
80000ac8: 33 f9 d5 00  	and	s2, a1, a3

80000acc <.LBB0_99>:
80000acc: 97 37 00 00  	auipc	a5, 3
80000ad0: 93 87 47 be  	addi	a5, a5, -1052
80000ad4: 93 0f 00 00  	mv	t6, zero
80000ad8: 93 06 00 00  	mv	a3, zero
80000adc: 63 0e 09 08  	beqz	s2, 0x80000b78 <.LBB0_99+0xac>
80000ae0: 93 05 80 00  	addi	a1, zero, 8
80000ae4: 13 07 f0 04  	addi	a4, zero, 79
;   for (i = 0; i < ni; i++)
80000ae8: 13 04 00 04  	addi	s0, zero, 64
80000aec: ab 20 87 00  	scfgw	a4, s0
80000af0: 13 07 00 0c  	addi	a4, zero, 192
80000af4: ab a0 e5 00  	scfgw	a1, a4
80000af8: 13 07 70 02  	addi	a4, zero, 39
80000afc: 13 04 00 06  	addi	s0, zero, 96
80000b00: ab 20 87 00  	scfgw	a4, s0
80000b04: 13 07 00 0e  	addi	a4, zero, 224
80000b08: ab a0 e5 00  	scfgw	a1, a4
80000b0c: 93 05 00 02  	addi	a1, zero, 32
80000b10: ab 20 b0 00  	scfgw	zero, a1
80000b14: 2b 20 0b 3a  	scfgwi	s6, 928
80000b18: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000b1c: b7 a5 0e ea  	lui	a1, 958698
80000b20: 87 b1 07 00  	fld	ft3, 0(a5)
80000b24: 13 87 b5 0e  	addi	a4, a1, 235
80000b28: 93 07 60 04  	addi	a5, zero, 70
80000b2c: 13 03 80 02  	addi	t1, zero, 40
80000b30: 13 04 00 05  	addi	s0, zero, 80
80000b34: 93 85 0f 00  	mv	a1, t6
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80000b38: 93 d4 15 00  	srli	s1, a1, 1
80000b3c: b3 b4 e4 02  	mulhu	s1, s1, a4
80000b40: 93 d4 54 00  	srli	s1, s1, 5
80000b44: b3 84 f4 02  	mul	s1, s1, a5
80000b48: b3 84 95 40  	sub	s1, a1, s1
80000b4c: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b50: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b54: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nl; j++)
80000b58: 13 04 f4 ff  	addi	s0, s0, -1
80000b5c: b3 85 d5 00  	add	a1, a1, a3
80000b60: e3 1c 04 fc  	bnez	s0, 0x80000b38 <.LBB0_99+0x6c>
;   for (i = 0; i < ni; i++)
80000b64: 93 86 16 00  	addi	a3, a3, 1
80000b68: 93 8f 2f 00  	addi	t6, t6, 2
80000b6c: e3 92 66 fc  	bne	a3, t1, 0x80000b30 <.LBB0_99+0x64>
80000b70: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000b74: 6f 00 80 06  	j	0x80000bdc <.LBB0_99+0x110>
80000b78: b7 a5 0e ea  	lui	a1, 958698
80000b7c: 93 84 b5 0e  	addi	s1, a1, 235
80000b80: 87 b1 07 00  	fld	ft3, 0(a5)
80000b84: 93 0b 60 04  	addi	s7, zero, 70
80000b88: 13 0c 00 28  	addi	s8, zero, 640
80000b8c: 13 03 80 02  	addi	t1, zero, 40
80000b90: 13 04 0b 00  	mv	s0, s6
80000b94: 93 05 00 00  	mv	a1, zero
80000b98: 93 87 0f 00  	mv	a5, t6
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80000b9c: 13 d7 17 00  	srli	a4, a5, 1
80000ba0: 33 37 97 02  	mulhu	a4, a4, s1
80000ba4: 13 57 57 00  	srli	a4, a4, 5
80000ba8: 33 07 77 03  	mul	a4, a4, s7
80000bac: 33 87 e7 40  	sub	a4, a5, a4
80000bb0: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000bb4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bb8: 33 07 b4 00  	add	a4, s0, a1
80000bbc: 27 30 47 00  	fsd	ft4, 0(a4)
;     for (j = 0; j < nl; j++)
80000bc0: 93 85 85 00  	addi	a1, a1, 8
80000bc4: b3 87 d7 00  	add	a5, a5, a3
80000bc8: e3 9a 85 fd  	bne	a1, s8, 0x80000b9c <.LBB0_99+0xd0>
;   for (i = 0; i < ni; i++)
80000bcc: 93 86 16 00  	addi	a3, a3, 1
80000bd0: 13 04 04 28  	addi	s0, s0, 640
80000bd4: 93 8f 2f 00  	addi	t6, t6, 2
80000bd8: e3 9e 66 fa  	bne	a3, t1, 0x80000b94 <.LBB0_99+0xc8>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80000bdc: 73 23 00 b0  	csrr	t1, mcycle
;   for (i = 0; i < ni; i++) {
80000be0: b3 8f 0c 01  	add	t6, s9, a6
80000be4: b3 b5 92 01  	sltu	a1, t0, s9
80000be8: b3 b6 cf 00  	sltu	a3, t6, a2
80000bec: b3 e5 b6 00  	or	a1, a3, a1
80000bf0: b3 b6 9e 01  	sltu	a3, t4, s9
80000bf4: 33 b7 4f 01  	sltu	a4, t6, s4
80000bf8: b3 66 d7 00  	or	a3, a4, a3
80000bfc: b3 f5 d5 00  	and	a1, a1, a3
80000c00: b3 f5 b8 00  	and	a1, a7, a1
80000c04: b3 f5 ba 00  	and	a1, s5, a1

80000c08 <.LBB0_100>:
80000c08: 17 38 00 00  	auipc	a6, 3
80000c0c: 13 08 08 ab  	addi	a6, a6, -1360
80000c10: 63 84 05 10  	beqz	a1, 0x80000d18 <.LBB0_100+0x110>
80000c14: 93 04 00 00  	mv	s1, zero
80000c18: 93 05 80 00  	addi	a1, zero, 8
80000c1c: 93 02 50 04  	addi	t0, zero, 69
;   for (i = 0; i < ni; i++) {
80000c20: 13 07 00 04  	addi	a4, zero, 64
80000c24: 93 07 00 0c  	addi	a5, zero, 192
80000c28: ab a0 e2 00  	scfgw	t0, a4
80000c2c: ab a0 f5 00  	scfgw	a1, a5
80000c30: 93 08 80 dd  	addi	a7, zero, -552
80000c34: 93 07 10 03  	addi	a5, zero, 49
80000c38: 13 04 00 06  	addi	s0, zero, 96
80000c3c: 13 07 00 0e  	addi	a4, zero, 224
80000c40: ab a0 87 00  	scfgw	a5, s0
80000c44: ab a0 e8 00  	scfgw	a7, a4
80000c48: 93 0e 70 02  	addi	t4, zero, 39
80000c4c: 13 04 00 08  	addi	s0, zero, 128
80000c50: 93 08 00 10  	addi	a7, zero, 256
80000c54: ab a0 8e 00  	scfgw	t4, s0
80000c58: ab a0 15 01  	scfgw	a1, a7
80000c5c: 93 05 00 02  	addi	a1, zero, 32
80000c60: ab 20 b0 00  	scfgw	zero, a1
80000c64: 2b 20 06 34  	scfgwi	a2, 832
80000c68: 13 06 00 19  	addi	a2, zero, 400
80000c6c: 93 05 10 00  	addi	a1, zero, 1
;   for (i = 0; i < ni; i++) {
80000c70: 13 84 05 04  	addi	s0, a1, 64
80000c74: 93 86 05 0c  	addi	a3, a1, 192
80000c78: ab a0 82 00  	scfgw	t0, s0
80000c7c: ab 20 d6 00  	scfgw	a2, a3
80000c80: b7 96 ff ff  	lui	a3, 1048569
80000c84: 13 84 86 43  	addi	s0, a3, 1080
80000c88: 13 87 05 06  	addi	a4, a1, 96
80000c8c: ab a0 e7 00  	scfgw	a5, a4
80000c90: 13 87 05 0e  	addi	a4, a1, 224
80000c94: ab 20 e4 00  	scfgw	s0, a4
80000c98: 93 86 86 2a  	addi	a3, a3, 680
80000c9c: 13 87 05 08  	addi	a4, a1, 128
80000ca0: 93 87 05 10  	addi	a5, a1, 256
80000ca4: ab a0 ee 00  	scfgw	t4, a4
80000ca8: ab a0 f6 00  	scfgw	a3, a5
80000cac: 93 85 05 02  	addi	a1, a1, 32
80000cb0: ab 20 b0 00  	scfgw	zero, a1
80000cb4: 2b 20 1a 34  	scfgwi	s4, 833
80000cb8: 87 31 08 00  	fld	ft3, 0(a6)
80000cbc: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000cc0: 93 05 20 03  	addi	a1, zero, 50
80000cc4: 93 06 80 02  	addi	a3, zero, 40
80000cc8: 13 07 00 00  	mv	a4, zero
;       tmp[i][j] = 0.0;
80000ccc: b3 87 c4 02  	mul	a5, s1, a2
80000cd0: b3 87 fc 00  	add	a5, s9, a5
80000cd4: 13 14 37 00  	slli	s0, a4, 3
80000cd8: b3 87 87 00  	add	a5, a5, s0
80000cdc: 23 a2 07 00  	sw	zero, 4(a5)
80000ce0: 23 a0 07 00  	sw	zero, 0(a5)
80000ce4: 13 04 60 04  	addi	s0, zero, 70
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80000ce8: 07 b3 07 00  	fld	ft6, 0(a5)
80000cec: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80000cf0: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
;       for (k = 0; k < nk; ++k) {
80000cf4: 13 04 f4 ff  	addi	s0, s0, -1
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80000cf8: 27 b0 47 00  	fsd	ft4, 0(a5)
;       for (k = 0; k < nk; ++k) {
80000cfc: e3 16 04 fe  	bnez	s0, 0x80000ce8 <.LBB0_100+0xe0>
;     for (j = 0; j < nj; j++) {
80000d00: 13 07 17 00  	addi	a4, a4, 1
80000d04: e3 14 b7 fc  	bne	a4, a1, 0x80000ccc <.LBB0_100+0xc4>
;   for (i = 0; i < ni; i++) {
80000d08: 93 84 14 00  	addi	s1, s1, 1
80000d0c: e3 9e d4 fa  	bne	s1, a3, 0x80000cc8 <.LBB0_100+0xc0>
80000d10: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000d14: 6f 00 80 08  	j	0x80000d9c <.LBB0_100+0x194>
80000d18: 93 0e 00 00  	mv	t4, zero
80000d1c: 93 08 00 19  	addi	a7, zero, 400
80000d20: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000d24: 07 32 08 00  	fld	ft4, 0(a6)
80000d28: 93 07 00 23  	addi	a5, zero, 560
80000d2c: 93 02 20 03  	addi	t0, zero, 50
80000d30: 13 08 80 02  	addi	a6, zero, 40
80000d34: 93 06 00 00  	mv	a3, zero
80000d38: 93 04 0a 00  	mv	s1, s4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80000d3c: 13 07 00 00  	mv	a4, zero
;       tmp[i][j] = 0.0;
80000d40: b3 85 1e 03  	mul	a1, t4, a7
80000d44: b3 85 bc 00  	add	a1, s9, a1
80000d48: 13 94 36 00  	slli	s0, a3, 3
80000d4c: b3 85 85 00  	add	a1, a1, s0
80000d50: 23 a2 05 00  	sw	zero, 4(a1)
80000d54: 23 a0 05 00  	sw	zero, 0(a1)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80000d58: 13 84 04 00  	mv	s0, s1
80000d5c: d3 82 31 22  	fmv.d	ft5, ft3
80000d60: 33 05 e6 00  	add	a0, a2, a4
80000d64: 07 33 05 00  	fld	ft6, 0(a0)
80000d68: 87 33 04 00  	fld	ft7, 0(s0)
80000d6c: 53 73 43 12  	fmul.d	ft6, ft6, ft4
80000d70: c3 72 73 2a  	fmadd.d	ft5, ft6, ft7, ft5
80000d74: 27 b0 55 00  	fsd	ft5, 0(a1)
;       for (k = 0; k < nk; ++k) {
80000d78: 13 07 87 00  	addi	a4, a4, 8
80000d7c: 13 04 04 19  	addi	s0, s0, 400
80000d80: e3 10 f7 fe  	bne	a4, a5, 0x80000d60 <.LBB0_100+0x158>
;     for (j = 0; j < nj; j++) {
80000d84: 93 86 16 00  	addi	a3, a3, 1
80000d88: 93 84 84 00  	addi	s1, s1, 8
80000d8c: e3 98 56 fa  	bne	a3, t0, 0x80000d3c <.LBB0_100+0x134>
;   for (i = 0; i < ni; i++) {
80000d90: 93 8e 1e 00  	addi	t4, t4, 1
80000d94: 13 06 06 23  	addi	a2, a2, 560
80000d98: e3 9e 0e f9  	bne	t4, a6, 0x80000d34 <.LBB0_100+0x12c>
;   for (i = 0; i < ni; i++) {
80000d9c: 33 b5 6f 01  	sltu	a0, t6, s6
80000da0: b3 35 9f 01  	sltu	a1, t5, s9
80000da4: 33 65 b5 00  	or	a0, a0, a1
80000da8: b3 35 6e 01  	sltu	a1, t3, s6
80000dac: 33 36 3f 01  	sltu	a2, t5, s3
80000db0: b3 e5 c5 00  	or	a1, a1, a2
80000db4: 33 75 b5 00  	and	a0, a0, a1
80000db8: 33 75 a9 00  	and	a0, s2, a0
80000dbc: 93 d5 4c 01  	srli	a1, s9, 20
80000dc0: b3 35 b0 00  	snez	a1, a1
80000dc4: 37 06 12 00  	lui	a2, 288
80000dc8: 13 06 16 00  	addi	a2, a2, 1
80000dcc: 33 b6 cf 00  	sltu	a2, t6, a2
80000dd0: b3 f5 c5 00  	and	a1, a1, a2
80000dd4: 33 f5 a5 00  	and	a0, a1, a0
80000dd8: 33 f5 a3 00  	and	a0, t2, a0
80000ddc: 63 0e 05 12  	beqz	a0, 0x80000f18 <.LBB0_101+0x64>
80000de0: 13 06 00 00  	mv	a2, zero
80000de4: 13 05 80 00  	addi	a0, zero, 8
80000de8: 13 08 f0 04  	addi	a6, zero, 79
;   for (i = 0; i < ni; i++) {
80000dec: 93 06 00 04  	addi	a3, zero, 64
80000df0: 13 07 00 0c  	addi	a4, zero, 192
80000df4: ab 20 d8 00  	scfgw	a6, a3
80000df8: ab 20 e5 00  	scfgw	a0, a4
80000dfc: 93 06 70 02  	addi	a3, zero, 39
80000e00: 13 07 00 06  	addi	a4, zero, 96
80000e04: 93 07 00 0e  	addi	a5, zero, 224
80000e08: ab a0 e6 00  	scfgw	a3, a4
80000e0c: ab 20 f5 00  	scfgw	a0, a5
80000e10: 13 07 00 02  	addi	a4, zero, 32
80000e14: ab 20 e0 00  	scfgw	zero, a4
80000e18: 2b 20 0b 32  	scfgwi	s6, 800
80000e1c: 13 07 10 03  	addi	a4, zero, 49
80000e20: 93 07 10 00  	addi	a5, zero, 1
80000e24: 93 84 07 04  	addi	s1, a5, 64
80000e28: 13 84 07 0c  	addi	s0, a5, 192
80000e2c: ab 20 97 00  	scfgw	a4, s1
80000e30: ab 20 85 00  	scfgw	a0, s0
80000e34: 93 04 80 e7  	addi	s1, zero, -392
80000e38: 13 84 07 06  	addi	s0, a5, 96
80000e3c: ab 20 88 00  	scfgw	a6, s0
80000e40: 13 84 07 0e  	addi	s0, a5, 224
80000e44: ab a0 84 00  	scfgw	s1, s0
80000e48: 93 84 07 08  	addi	s1, a5, 128
80000e4c: 13 84 07 10  	addi	s0, a5, 256
80000e50: ab a0 96 00  	scfgw	a3, s1
80000e54: ab 20 85 00  	scfgw	a0, s0
80000e58: 13 85 07 02  	addi	a0, a5, 32
80000e5c: ab 20 a0 00  	scfgw	zero, a0
80000e60: 2b a0 1c 34  	scfgwi	s9, 833
80000e64: 13 05 00 28  	addi	a0, zero, 640
80000e68: 93 07 20 00  	addi	a5, zero, 2
80000e6c: 93 84 07 04  	addi	s1, a5, 64
80000e70: 13 84 07 0c  	addi	s0, a5, 192
80000e74: ab 20 97 00  	scfgw	a4, s1
80000e78: ab 20 85 00  	scfgw	a0, s0
80000e7c: 37 87 ff ff  	lui	a4, 1048568
80000e80: 93 04 87 58  	addi	s1, a4, 1416
80000e84: 13 84 07 06  	addi	s0, a5, 96
80000e88: 93 85 07 0e  	addi	a1, a5, 224
80000e8c: ab 20 88 00  	scfgw	a6, s0
80000e90: ab a0 b4 00  	scfgw	s1, a1
80000e94: 93 05 87 30  	addi	a1, a4, 776
80000e98: 13 87 07 08  	addi	a4, a5, 128
80000e9c: 93 84 07 10  	addi	s1, a5, 256
80000ea0: ab a0 e6 00  	scfgw	a3, a4
80000ea4: ab a0 95 00  	scfgw	a1, s1
80000ea8: 93 85 07 02  	addi	a1, a5, 32
80000eac: ab 20 b0 00  	scfgw	zero, a1
80000eb0: 2b a0 29 34  	scfgwi	s3, 834

80000eb4 <.LBB0_101>:
80000eb4: 97 35 00 00  	auipc	a1, 3
80000eb8: 93 85 c5 80  	addi	a1, a1, -2036
80000ebc: 87 b1 05 00  	fld	ft3, 0(a1)
;   for (i = 0; i < ni; i++) {
80000ec0: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000ec4: 93 05 00 05  	addi	a1, zero, 80
80000ec8: 93 06 80 02  	addi	a3, zero, 40
80000ecc: 13 07 00 00  	mv	a4, zero
;       D[i][j] *= beta;
80000ed0: b3 07 a6 02  	mul	a5, a2, a0
80000ed4: b3 07 fb 00  	add	a5, s6, a5
80000ed8: 93 14 37 00  	slli	s1, a4, 3
80000edc: b3 87 97 00  	add	a5, a5, s1
80000ee0: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80000ee4: 27 b0 47 00  	fsd	ft4, 0(a5)
80000ee8: 93 04 20 03  	addi	s1, zero, 50
;         D[i][j] += tmp[i][k] * C[k][j];
80000eec: 07 b3 07 00  	fld	ft6, 0(a5)
80000ef0: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
;       for (k = 0; k < nj; ++k) {
80000ef4: 93 84 f4 ff  	addi	s1, s1, -1
;         D[i][j] += tmp[i][k] * C[k][j];
80000ef8: 27 b0 47 00  	fsd	ft4, 0(a5)
;       for (k = 0; k < nj; ++k) {
80000efc: e3 98 04 fe  	bnez	s1, 0x80000eec <.LBB0_101+0x38>
;     for (j = 0; j < nl; j++) {
80000f00: 13 07 17 00  	addi	a4, a4, 1
80000f04: e3 16 b7 fc  	bne	a4, a1, 0x80000ed0 <.LBB0_101+0x1c>
;   for (i = 0; i < ni; i++) {
80000f08: 13 06 16 00  	addi	a2, a2, 1
80000f0c: e3 10 d6 fc  	bne	a2, a3, 0x80000ecc <.LBB0_101+0x18>
80000f10: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f14: 6f 00 80 08  	j	0x80000f9c <.LBB0_102+0x7c>
80000f18: 93 05 00 00  	mv	a1, zero
80000f1c: 93 08 00 28  	addi	a7, zero, 640

80000f20 <.LBB0_102>:
80000f20: 17 25 00 00  	auipc	a0, 2
80000f24: 13 05 05 7a  	addi	a0, a0, 1952
80000f28: 87 31 05 00  	fld	ft3, 0(a0)
80000f2c: 93 06 00 19  	addi	a3, zero, 400
80000f30: 93 02 00 05  	addi	t0, zero, 80
80000f34: 13 08 80 02  	addi	a6, zero, 40
80000f38: 93 04 00 00  	mv	s1, zero
80000f3c: 13 87 09 00  	mv	a4, s3
;       D[i][j] *= beta;
80000f40: 33 85 15 03  	mul	a0, a1, a7
80000f44: 33 05 ab 00  	add	a0, s6, a0
80000f48: 13 96 34 00  	slli	a2, s1, 3
80000f4c: b3 07 c5 00  	add	a5, a0, a2
80000f50: 07 b2 07 00  	fld	ft4, 0(a5)
;         D[i][j] += tmp[i][k] * C[k][j];
80000f54: 13 06 00 00  	mv	a2, zero
;       D[i][j] *= beta;
80000f58: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000f5c: 27 b0 47 00  	fsd	ft4, 0(a5)
;         D[i][j] += tmp[i][k] * C[k][j];
80000f60: 13 04 07 00  	mv	s0, a4
80000f64: 33 85 cc 00  	add	a0, s9, a2
80000f68: 87 32 05 00  	fld	ft5, 0(a0)
80000f6c: 07 33 04 00  	fld	ft6, 0(s0)
80000f70: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80000f74: 27 b0 47 00  	fsd	ft4, 0(a5)
;       for (k = 0; k < nj; ++k) {
80000f78: 13 06 86 00  	addi	a2, a2, 8
80000f7c: 13 04 04 28  	addi	s0, s0, 640
80000f80: e3 12 d6 fe  	bne	a2, a3, 0x80000f64 <.LBB0_102+0x44>
;     for (j = 0; j < nl; j++) {
80000f84: 93 84 14 00  	addi	s1, s1, 1
80000f88: 13 07 87 00  	addi	a4, a4, 8
80000f8c: e3 9a 54 fa  	bne	s1, t0, 0x80000f40 <.LBB0_102+0x20>
;   for (i = 0; i < ni; i++) {
80000f90: 93 85 15 00  	addi	a1, a1, 1
80000f94: 93 8c 0c 19  	addi	s9, s9, 400
80000f98: e3 90 05 fb  	bne	a1, a6, 0x80000f38 <.LBB0_102+0x18>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80000f9c: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80000fa0: b3 05 65 40  	sub	a1, a0, t1

80000fa4 <.LBB0_103>:
80000fa4: 17 25 00 00  	auipc	a0, 2
80000fa8: 13 05 d5 46  	addi	a0, a0, 1133
80000fac: 97 00 00 00  	auipc	ra, 0
80000fb0: e7 80 c0 11  	jalr	284(ra)
80000fb4: 13 05 00 00  	mv	a0, zero
80000fb8: 63 04 09 06  	beqz	s2, 0x80001020 <.LBB0_103+0x7c>
80000fbc: 93 05 80 00  	addi	a1, zero, 8
80000fc0: 13 06 f0 04  	addi	a2, zero, 79
;     for (int i = 0; i < n; i++){
80000fc4: 93 06 00 04  	addi	a3, zero, 64
80000fc8: ab 20 d6 00  	scfgw	a2, a3
80000fcc: 13 06 00 0c  	addi	a2, zero, 192
80000fd0: ab a0 c5 00  	scfgw	a1, a2
80000fd4: 13 06 70 02  	addi	a2, zero, 39
80000fd8: 93 06 00 06  	addi	a3, zero, 96
80000fdc: ab 20 d6 00  	scfgw	a2, a3
80000fe0: 13 06 00 0e  	addi	a2, zero, 224
80000fe4: ab a0 c5 00  	scfgw	a1, a2
80000fe8: 93 05 00 02  	addi	a1, zero, 32
80000fec: ab 20 b0 00  	scfgw	zero, a1
80000ff0: 2b 20 0b 32  	scfgwi	s6, 800
80000ff4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000ff8: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000ffc: 93 05 80 02  	addi	a1, zero, 40
80001000: 13 06 00 05  	addi	a2, zero, 80
;         for (int j = 0; j < m; j++){
80001004: 13 06 f6 ff  	addi	a2, a2, -1
;             r += A[i * m + j];
80001008: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;         for (int j = 0; j < m; j++){
8000100c: e3 1c 06 fe  	bnez	a2, 0x80001004 <.LBB0_103+0x60>
;     for (int i = 0; i < n; i++){
80001010: 13 05 15 00  	addi	a0, a0, 1
80001014: e3 16 b5 fe  	bne	a0, a1, 0x80001000 <.LBB0_103+0x5c>
80001018: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000101c: 6f 00 40 03  	j	0x80001050 <.LBB0_104>
80001020: d3 01 00 d2  	fcvt.d.w	ft3, zero
80001024: 93 05 00 28  	addi	a1, zero, 640
80001028: 13 06 80 02  	addi	a2, zero, 40
8000102c: 93 06 00 00  	mv	a3, zero
;             r += A[i * m + j];
80001030: 33 07 db 00  	add	a4, s6, a3
80001034: 07 32 07 00  	fld	ft4, 0(a4)
;         for (int j = 0; j < m; j++){
80001038: 93 86 86 00  	addi	a3, a3, 8
;             r += A[i * m + j];
8000103c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;         for (int j = 0; j < m; j++){
80001040: e3 98 b6 fe  	bne	a3, a1, 0x80001030 <.LBB0_103+0x8c>
;     for (int i = 0; i < n; i++){
80001044: 13 05 15 00  	addi	a0, a0, 1
80001048: 13 0b 0b 28  	addi	s6, s6, 640
8000104c: e3 10 c5 fe  	bne	a0, a2, 0x8000102c <.LBB0_103+0x88>

80001050 <.LBB0_104>:
80001050: 17 25 00 00  	auipc	a0, 2
80001054: 13 05 85 67  	addi	a0, a0, 1656
80001058: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
8000105c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80001060: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80001064: 27 30 81 00  	fsd	fs0, 0(sp)
80001068: 03 26 01 00  	lw	a2, 0(sp)
8000106c: 83 26 41 00  	lw	a3, 4(sp)

80001070 <.LBB0_105>:
80001070: 17 25 00 00  	auipc	a0, 2
80001074: 13 05 55 39  	addi	a0, a0, 917
80001078: 97 00 00 00  	auipc	ra, 0
8000107c: e7 80 00 05  	jalr	80(ra)

80001080 <.LBB0_106>:
80001080: 17 25 00 00  	auipc	a0, 2
80001084: 13 05 05 65  	addi	a0, a0, 1616
80001088: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
8000108c: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80001090: 07 34 81 00  	fld	fs0, 8(sp)
80001094: 83 2c 41 01  	lw	s9, 20(sp)
80001098: 03 2c 81 01  	lw	s8, 24(sp)
8000109c: 83 2b c1 01  	lw	s7, 28(sp)
800010a0: 03 2b 01 02  	lw	s6, 32(sp)
800010a4: 83 2a 41 02  	lw	s5, 36(sp)
800010a8: 03 2a 81 02  	lw	s4, 40(sp)
800010ac: 83 29 c1 02  	lw	s3, 44(sp)
800010b0: 03 29 01 03  	lw	s2, 48(sp)
800010b4: 83 24 41 03  	lw	s1, 52(sp)
800010b8: 03 24 81 03  	lw	s0, 56(sp)
800010bc: 83 20 c1 03  	lw	ra, 60(sp)
800010c0: 13 01 01 04  	addi	sp, sp, 64
800010c4: 67 80 00 00  	ret

800010c8 <printf_>:
; {
800010c8: 13 01 01 fd  	addi	sp, sp, -48
800010cc: 23 26 11 00  	sw	ra, 12(sp)
800010d0: 93 02 05 00  	mv	t0, a0
800010d4: 23 26 11 03  	sw	a7, 44(sp)
800010d8: 23 24 01 03  	sw	a6, 40(sp)
800010dc: 23 22 f1 02  	sw	a5, 36(sp)
800010e0: 23 20 e1 02  	sw	a4, 32(sp)
800010e4: 23 2e d1 00  	sw	a3, 28(sp)
800010e8: 23 2c c1 00  	sw	a2, 24(sp)
800010ec: 23 2a b1 00  	sw	a1, 20(sp)
800010f0: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
800010f4: 23 24 a1 00  	sw	a0, 8(sp)

800010f8 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
800010f8: 17 15 00 00  	auipc	a0, 1
800010fc: 13 05 45 c2  	addi	a0, a0, -988
80001100: 93 05 71 00  	addi	a1, sp, 7
80001104: 13 06 f0 ff  	addi	a2, zero, -1
80001108: 13 07 41 01  	addi	a4, sp, 20
8000110c: 93 86 02 00  	mv	a3, t0
80001110: 97 00 00 00  	auipc	ra, 0
80001114: e7 80 40 01  	jalr	20(ra)
;   return ret;
80001118: 83 20 c1 00  	lw	ra, 12(sp)
8000111c: 13 01 01 03  	addi	sp, sp, 48
80001120: 67 80 00 00  	ret

80001124 <_vsnprintf.llvm.11632292163828655644>:
; {
80001124: 13 01 01 f9  	addi	sp, sp, -112
80001128: 23 26 11 06  	sw	ra, 108(sp)
8000112c: 23 24 81 06  	sw	s0, 104(sp)
80001130: 23 22 91 06  	sw	s1, 100(sp)
80001134: 23 20 21 07  	sw	s2, 96(sp)
80001138: 23 2e 31 05  	sw	s3, 92(sp)
8000113c: 23 2c 41 05  	sw	s4, 88(sp)
80001140: 23 2a 51 05  	sw	s5, 84(sp)
80001144: 23 28 61 05  	sw	s6, 80(sp)
80001148: 23 26 71 05  	sw	s7, 76(sp)
8000114c: 23 24 81 05  	sw	s8, 72(sp)
80001150: 23 22 91 05  	sw	s9, 68(sp)
80001154: 23 20 a1 05  	sw	s10, 64(sp)
80001158: 23 2e b1 03  	sw	s11, 60(sp)
8000115c: 93 09 07 00  	mv	s3, a4
80001160: 13 84 06 00  	mv	s0, a3
80001164: 93 0a 06 00  	mv	s5, a2
80001168: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
8000116c: 63 86 05 00  	beqz	a1, 0x80001178 <.LBB1_183>
80001170: 13 09 05 00  	mv	s2, a0
80001174: 6f 00 c0 00  	j	0x80001180 <.LBB1_183+0x8>

80001178 <.LBB1_183>:
80001178: 17 19 00 00  	auipc	s2, 1
8000117c: 13 09 09 c5  	addi	s2, s2, -944
80001180: 13 0c 00 00  	mv	s8, zero
80001184: 13 0b 50 02  	addi	s6, zero, 37
80001188: 93 0d 00 01  	addi	s11, zero, 16
8000118c: 93 0b e0 02  	addi	s7, zero, 46
80001190: 37 15 00 00  	lui	a0, 1
80001194: 13 05 05 80  	addi	a0, a0, -2048
80001198: 23 2c a1 00  	sw	a0, 24(sp)
8000119c: 37 05 01 00  	lui	a0, 16
800011a0: 13 05 f5 ff  	addi	a0, a0, -1
800011a4: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
800011a8: 13 0d 24 00  	addi	s10, s0, 2
800011ac: 93 0c 0c 00  	mv	s9, s8
800011b0: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
800011b4: 03 45 04 00  	lbu	a0, 0(s0)
800011b8: e3 04 05 30  	beqz	a0, 0x80001cc0 <.LBB1_124+0x3b0>
800011bc: 63 08 65 03  	beq	a0, s6, 0x800011ec <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
800011c0: 93 84 1c 00  	addi	s1, s9, 1
800011c4: 93 05 0a 00  	mv	a1, s4
800011c8: 13 86 0c 00  	mv	a2, s9
800011cc: 93 86 0a 00  	mv	a3, s5
800011d0: e7 00 09 00  	jalr	s2
;       format++;
800011d4: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800011d8: 13 0d 1d 00  	addi	s10, s10, 1
800011dc: 93 8c 04 00  	mv	s9, s1
;   while (*format)
800011e0: 03 45 04 00  	lbu	a0, 0(s0)
800011e4: e3 1c 05 fc  	bnez	a0, 0x800011bc <.LBB1_183+0x44>
800011e8: 6f 00 90 2d  	j	0x80001cc0 <.LBB1_124+0x3b0>
;     flags = 0U;
800011ec: 13 04 00 00  	mv	s0, zero
800011f0: 6f 00 00 01  	j	0x80001200 <.LBB1_9+0x8>

800011f4 <.LBB1_8>:
800011f4: 93 05 00 01  	addi	a1, zero, 16

800011f8 <.LBB1_9>:
800011f8: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
800011fc: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001200: 03 45 fd ff  	lbu	a0, -1(s10)
80001204: 93 05 05 fe  	addi	a1, a0, -32
80001208: 63 ec bd 02  	bltu	s11, a1, 0x80001240 <.LBB1_15>
8000120c: 93 95 25 00  	slli	a1, a1, 2

80001210 <.LBB1_184>:
80001210: 17 26 00 00  	auipc	a2, 2
80001214: 13 06 46 21  	addi	a2, a2, 532
80001218: b3 85 c5 00  	add	a1, a1, a2
8000121c: 03 a6 05 00  	lw	a2, 0(a1)
80001220: 93 05 10 00  	addi	a1, zero, 1
80001224: 67 00 06 00  	jr	a2

80001228 <.LBB1_12>:
80001228: 93 05 80 00  	addi	a1, zero, 8
8000122c: 6f f0 df fc  	j	0x800011f8 <.LBB1_9>

80001230 <.LBB1_13>:
80001230: 93 05 40 00  	addi	a1, zero, 4
80001234: 6f f0 5f fc  	j	0x800011f8 <.LBB1_9>

80001238 <.LBB1_14>:
80001238: 93 05 20 00  	addi	a1, zero, 2
8000123c: 6f f0 df fb  	j	0x800011f8 <.LBB1_9>

80001240 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001240: 93 05 05 fd  	addi	a1, a0, -48
80001244: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80001248: 93 05 fd ff  	addi	a1, s10, -1
8000124c: 93 06 90 00  	addi	a3, zero, 9
80001250: 63 ee c6 06  	bltu	a3, a2, 0x800012cc <.LBB1_15+0x8c>
80001254: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001258: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000125c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001260: b3 06 8b 03  	mul	a3, s6, s8
80001264: 93 85 15 00  	addi	a1, a1, 1
80001268: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000126c: 93 06 05 fd  	addi	a3, a0, -48
80001270: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001274: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001278: e3 e0 86 ff  	bltu	a3, s8, 0x80001258 <.LBB1_15+0x18>
8000127c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001280: 63 16 75 0b  	bne	a0, s7, 0x8000132c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001284: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001288: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
8000128c: 93 05 05 fd  	addi	a1, a0, -48
80001290: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001294: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001298: 93 06 90 00  	addi	a3, zero, 9
8000129c: 63 e0 c6 06  	bltu	a3, a2, 0x800012fc <.LBB1_15+0xbc>
800012a0: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800012a4: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800012a8: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800012ac: b3 86 8b 03  	mul	a3, s7, s8
800012b0: 93 85 15 00  	addi	a1, a1, 1
800012b4: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800012b8: 93 06 05 fd  	addi	a3, a0, -48
800012bc: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800012c0: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
800012c4: e3 e0 86 ff  	bltu	a3, s8, 0x800012a4 <.LBB1_15+0x64>
800012c8: 6f 00 00 07  	j	0x80001338 <.LBB1_15+0xf8>
;     else if (*format == '*') {
800012cc: 13 06 a0 02  	addi	a2, zero, 42
800012d0: 63 18 c5 04  	bne	a0, a2, 0x80001320 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800012d4: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800012d8: 63 d4 05 00  	bgez	a1, 0x800012e0 <.LBB1_15+0xa0>
800012dc: 13 64 24 00  	ori	s0, s0, 2
800012e0: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800012e4: 03 45 0d 00  	lbu	a0, 0(s10)
800012e8: 13 d6 f5 41  	srai	a2, a1, 31
800012ec: b3 85 c5 00  	add	a1, a1, a2
800012f0: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800012f4: e3 08 75 f9  	beq	a0, s7, 0x80001284 <.LBB1_15+0x44>
800012f8: 6f 00 40 03  	j	0x8000132c <.LBB1_15+0xec>
;       else if (*format == '*') {
800012fc: 13 06 a0 02  	addi	a2, zero, 42
80001300: 63 1a c5 02  	bne	a0, a2, 0x80001334 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001304: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001308: 63 44 70 01  	bgtz	s7, 0x80001310 <.LBB1_15+0xd0>
8000130c: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001310: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001314: 13 0d 2d 00  	addi	s10, s10, 2
80001318: 93 89 49 00  	addi	s3, s3, 4
8000131c: 6f 00 00 02  	j	0x8000133c <.LBB1_15+0xfc>
80001320: 13 0b 00 00  	mv	s6, zero
80001324: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001328: e3 0e 75 f5  	beq	a0, s7, 0x80001284 <.LBB1_15+0x44>
8000132c: 93 0b 00 00  	mv	s7, zero
80001330: 6f 00 c0 00  	j	0x8000133c <.LBB1_15+0xfc>
80001334: 93 0b 00 00  	mv	s7, zero
80001338: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
8000133c: 93 05 85 f9  	addi	a1, a0, -104
80001340: 13 d6 15 00  	srli	a2, a1, 1
80001344: 93 95 f5 01  	slli	a1, a1, 31
80001348: b3 e5 c5 00  	or	a1, a1, a2
8000134c: 13 06 90 00  	addi	a2, zero, 9
80001350: 63 62 b6 06  	bltu	a2, a1, 0x800013b4 <.LBB1_42>
80001354: 93 95 25 00  	slli	a1, a1, 2

80001358 <.LBB1_185>:
80001358: 17 26 00 00  	auipc	a2, 2
8000135c: 13 06 06 11  	addi	a2, a2, 272
80001360: b3 85 c5 00  	add	a1, a1, a2
80001364: 83 a6 05 00  	lw	a3, 0(a1)
80001368: 93 05 10 00  	addi	a1, zero, 1
8000136c: 13 06 00 10  	addi	a2, zero, 256
80001370: 67 80 06 00  	jr	a3

80001374 <.LBB1_36>:
;         if (*format == 'h') {
80001374: 03 45 1d 00  	lbu	a0, 1(s10)
80001378: 93 05 80 06  	addi	a1, zero, 104
8000137c: 63 12 b5 12  	bne	a0, a1, 0x800014a0 <.LBB1_53+0x48>
80001380: 93 05 20 00  	addi	a1, zero, 2
80001384: 13 06 00 0c  	addi	a2, zero, 192
80001388: 6f 00 00 02  	j	0x800013a8 <.LBB1_41>

8000138c <.LBB1_38>:
8000138c: 13 06 00 20  	addi	a2, zero, 512
80001390: 6f 00 80 01  	j	0x800013a8 <.LBB1_41>

80001394 <.LBB1_39>:
;         if (*format == 'l') {
80001394: 03 45 1d 00  	lbu	a0, 1(s10)
80001398: 93 05 c0 06  	addi	a1, zero, 108
8000139c: 63 18 b5 10  	bne	a0, a1, 0x800014ac <.LBB1_53+0x54>
800013a0: 93 05 20 00  	addi	a1, zero, 2
800013a4: 13 06 00 30  	addi	a2, zero, 768

800013a8 <.LBB1_41>:
800013a8: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
800013ac: 03 45 0d 00  	lbu	a0, 0(s10)
800013b0: 33 64 c4 00  	or	s0, s0, a2

800013b4 <.LBB1_42>:
;     switch (*format) {
800013b4: 93 05 b5 fd  	addi	a1, a0, -37
800013b8: 13 06 30 05  	addi	a2, zero, 83
800013bc: 63 64 b6 10  	bltu	a2, a1, 0x800014c4 <.LBB1_59>
800013c0: 93 95 25 00  	slli	a1, a1, 2

800013c4 <.LBB1_186>:
800013c4: 17 26 00 00  	auipc	a2, 2
800013c8: 13 06 c6 0c  	addi	a2, a2, 204
800013cc: b3 85 c5 00  	add	a1, a1, a2
800013d0: 03 a6 05 00  	lw	a2, 0(a1)
800013d4: 93 05 80 00  	addi	a1, zero, 8
800013d8: 13 0c 00 01  	addi	s8, zero, 16
800013dc: 67 00 06 00  	jr	a2

800013e0 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800013e0: 13 74 f4 fe  	andi	s0, s0, -17
800013e4: 13 0c a0 00  	addi	s8, zero, 10

800013e8 <.LBB1_45>:
;         if (*format == 'X') {
800013e8: 93 05 80 05  	addi	a1, zero, 88
800013ec: 63 14 b5 00  	bne	a0, a1, 0x800013f4 <.LBB1_45+0xc>
800013f0: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800013f4: 93 05 40 06  	addi	a1, zero, 100
800013f8: 63 08 b5 0e  	beq	a0, a1, 0x800014e8 <.LBB1_62+0x8>
800013fc: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001400: 13 06 90 06  	addi	a2, zero, 105
80001404: 63 02 c5 0e  	beq	a0, a2, 0x800014e8 <.LBB1_62+0x8>
80001408: 6f 00 80 0d  	j	0x800014e0 <.LBB1_62>

8000140c <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
8000140c: 93 05 60 04  	addi	a1, zero, 70
80001410: 63 14 b5 00  	bne	a0, a1, 0x80001418 <.LBB1_49+0xc>
80001414: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001418: 13 85 79 00  	addi	a0, s3, 7
8000141c: 13 75 85 ff  	andi	a0, a0, -8
80001420: 07 35 05 00  	fld	fa0, 0(a0)
80001424: 93 09 85 00  	addi	s3, a0, 8
80001428: 13 05 09 00  	mv	a0, s2
8000142c: 93 05 0a 00  	mv	a1, s4
80001430: 13 86 0c 00  	mv	a2, s9
80001434: 93 86 0a 00  	mv	a3, s5
80001438: 13 87 0b 00  	mv	a4, s7
8000143c: 93 07 0b 00  	mv	a5, s6
80001440: 13 08 04 00  	mv	a6, s0
80001444: 97 10 00 00  	auipc	ra, 1
80001448: e7 80 80 98  	jalr	-1656(ra)
8000144c: 6f 00 00 7c  	j	0x80001c0c <.LBB1_124+0x2fc>

80001450 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001450: 83 25 81 01  	lw	a1, 24(sp)
80001454: 33 64 b4 00  	or	s0, s0, a1

80001458 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001458: 13 65 25 00  	ori	a0, a0, 2
8000145c: 93 05 70 04  	addi	a1, zero, 71
80001460: 63 14 b5 00  	bne	a0, a1, 0x80001468 <.LBB1_53+0x10>
80001464: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001468: 13 85 79 00  	addi	a0, s3, 7
8000146c: 13 75 85 ff  	andi	a0, a0, -8
80001470: 07 35 05 00  	fld	fa0, 0(a0)
80001474: 93 09 85 00  	addi	s3, a0, 8
80001478: 13 05 09 00  	mv	a0, s2
8000147c: 93 05 0a 00  	mv	a1, s4
80001480: 13 86 0c 00  	mv	a2, s9
80001484: 93 86 0a 00  	mv	a3, s5
80001488: 13 87 0b 00  	mv	a4, s7
8000148c: 93 07 0b 00  	mv	a5, s6
80001490: 13 08 04 00  	mv	a6, s0
80001494: 97 10 00 00  	auipc	ra, 1
80001498: e7 80 80 01  	jalr	24(ra)
8000149c: 6f 00 00 77  	j	0x80001c0c <.LBB1_124+0x2fc>
800014a0: 13 64 04 08  	ori	s0, s0, 128
800014a4: 13 0d 1d 00  	addi	s10, s10, 1
800014a8: 6f f0 df f0  	j	0x800013b4 <.LBB1_42>
800014ac: 13 64 04 10  	ori	s0, s0, 256
800014b0: 13 0d 1d 00  	addi	s10, s10, 1
800014b4: 6f f0 1f f0  	j	0x800013b4 <.LBB1_42>

800014b8 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
800014b8: 13 8c 1c 00  	addi	s8, s9, 1
800014bc: 13 05 50 02  	addi	a0, zero, 37
800014c0: 6f 00 80 00  	j	0x800014c8 <.LBB1_59+0x4>

800014c4 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
800014c4: 13 8c 1c 00  	addi	s8, s9, 1
800014c8: 93 05 0a 00  	mv	a1, s4
800014cc: 13 86 0c 00  	mv	a2, s9
800014d0: 93 86 0a 00  	mv	a3, s5
800014d4: e7 00 09 00  	jalr	s2
800014d8: 6f 00 80 73  	j	0x80001c10 <.LBB1_124+0x300>

800014dc <.LBB1_61>:
800014dc: 93 05 20 00  	addi	a1, zero, 2

800014e0 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800014e0: 13 74 34 ff  	andi	s0, s0, -13
800014e4: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800014e8: 93 75 04 40  	andi	a1, s0, 1024
800014ec: 63 84 05 00  	beqz	a1, 0x800014f4 <.LBB1_62+0x14>
800014f0: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800014f4: 93 05 90 06  	addi	a1, zero, 105
800014f8: 63 06 b5 00  	beq	a0, a1, 0x80001504 <.LBB1_62+0x24>
800014fc: 93 05 40 06  	addi	a1, zero, 100
80001500: 63 1c b5 12  	bne	a0, a1, 0x80001638 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001504: 13 75 04 20  	andi	a0, s0, 512
80001508: 63 16 05 02  	bnez	a0, 0x80001534 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
8000150c: 13 75 04 10  	andi	a0, s0, 256
80001510: 63 1c 05 14  	bnez	a0, 0x80001668 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001514: 13 75 04 04  	andi	a0, s0, 64
80001518: 63 18 05 4e  	bnez	a0, 0x80001a08 <.LBB1_124+0xf8>
8000151c: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001520: 93 75 04 08  	andi	a1, s0, 128
80001524: 63 84 05 4e  	beqz	a1, 0x80001a0c <.LBB1_124+0xfc>
80001528: 13 15 08 01  	slli	a0, a6, 16
8000152c: 13 58 05 41  	srai	a6, a0, 16
80001530: 6f 00 c0 4d  	j	0x80001a0c <.LBB1_124+0xfc>
80001534: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80001538: 13 85 79 00  	addi	a0, s3, 7
8000153c: 13 75 85 ff  	andi	a0, a0, -8
80001540: 83 29 05 00  	lw	s3, 0(a0)
80001544: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80001548: 13 65 45 00  	ori	a0, a0, 4
8000154c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001550: 23 24 a1 00  	sw	a0, 8(sp)
80001554: 33 e5 a9 00  	or	a0, s3, a0
80001558: 63 14 05 00  	bnez	a0, 0x80001560 <.LBB1_62+0x80>
8000155c: 13 74 f4 fe  	andi	s0, s0, -17
80001560: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001564: 93 75 04 40  	andi	a1, s0, 1024
80001568: 93 d5 a5 00  	srli	a1, a1, 10
8000156c: 33 75 b5 00  	and	a0, a0, a1
80001570: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001574: 63 14 05 0a  	bnez	a0, 0x8000161c <.LBB1_62+0x13c>
80001578: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000157c: 63 da 04 00  	bgez	s1, 0x80001590 <.LBB1_62+0xb0>
80001580: 33 35 30 01  	snez	a0, s3
80001584: b3 09 30 41  	neg	s3, s3
80001588: 33 85 a4 00  	add	a0, s1, a0
8000158c: b3 04 a0 40  	neg	s1, a0
80001590: 13 09 00 00  	mv	s2, zero
80001594: 13 75 04 02  	andi	a0, s0, 32
80001598: 13 45 15 06  	xori	a0, a0, 97
8000159c: 13 05 65 0f  	addi	a0, a0, 246
800015a0: 23 2a a1 00  	sw	a0, 20(sp)
800015a4: 6f 00 40 02  	j	0x800015c8 <.LBB1_62+0xe8>
800015a8: 13 06 10 00  	addi	a2, zero, 1
800015ac: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800015b0: 93 36 f9 01  	sltiu	a3, s2, 31
800015b4: 33 f6 c6 00  	and	a2, a3, a2
800015b8: 13 89 07 00  	mv	s2, a5
800015bc: 93 09 05 00  	mv	s3, a0
800015c0: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800015c4: 63 0c 06 04  	beqz	a2, 0x8000161c <.LBB1_62+0x13c>
;       value /= base;
800015c8: 13 85 09 00  	mv	a0, s3
800015cc: 93 85 04 00  	mv	a1, s1
800015d0: 13 06 0c 00  	mv	a2, s8
800015d4: 93 06 00 00  	mv	a3, zero
800015d8: 97 f0 ff ff  	auipc	ra, 1048575
800015dc: e7 80 80 a2  	jalr	-1496(ra)
800015e0: 33 06 85 03  	mul	a2, a0, s8
800015e4: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800015e8: 13 77 e6 0f  	andi	a4, a2, 254
800015ec: 93 06 00 03  	addi	a3, zero, 48
800015f0: 93 07 a0 00  	addi	a5, zero, 10
800015f4: 63 64 f7 00  	bltu	a4, a5, 0x800015fc <.LBB1_62+0x11c>
800015f8: 83 26 41 01  	lw	a3, 20(sp)
800015fc: 33 86 c6 00  	add	a2, a3, a2
80001600: 93 06 c1 01  	addi	a3, sp, 28
80001604: b3 86 26 01  	add	a3, a3, s2
80001608: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000160c: e3 9e 04 f8  	bnez	s1, 0x800015a8 <.LBB1_62+0xc8>
80001610: 33 b6 89 01  	sltu	a2, s3, s8
80001614: 13 46 16 00  	xori	a2, a2, 1
80001618: 6f f0 5f f9  	j	0x800015ac <.LBB1_62+0xcc>
8000161c: 03 25 41 00  	lw	a0, 4(sp)
80001620: 93 09 85 00  	addi	s3, a0, 8
80001624: 03 25 81 00  	lw	a0, 8(sp)
80001628: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000162c: 13 07 c1 01  	addi	a4, sp, 28
80001630: 03 29 c1 00  	lw	s2, 12(sp)
80001634: 6f 00 80 47  	j	0x80001aac <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80001638: 13 75 04 20  	andi	a0, s0, 512
8000163c: 63 12 05 0c  	bnez	a0, 0x80001700 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001640: 13 75 04 10  	andi	a0, s0, 256
80001644: 63 1e 05 46  	bnez	a0, 0x80001ac0 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001648: 13 75 04 04  	andi	a0, s0, 64
8000164c: 63 10 05 50  	bnez	a0, 0x80001b4c <.LBB1_124+0x23c>
80001650: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001654: 93 75 04 08  	andi	a1, s0, 128
80001658: 63 8c 05 4e  	beqz	a1, 0x80001b50 <.LBB1_124+0x240>
8000165c: 83 25 01 01  	lw	a1, 16(sp)
80001660: 33 75 b5 00  	and	a0, a0, a1
80001664: 6f 00 c0 4e  	j	0x80001b50 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80001668: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
8000166c: 63 14 08 00  	bnez	a6, 0x80001674 <.LBB1_62+0x194>
80001670: 13 74 f4 fe  	andi	s0, s0, -17
80001674: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001678: 13 76 04 40  	andi	a2, s0, 1024
8000167c: 13 56 a6 00  	srli	a2, a2, 10
80001680: b3 f5 c5 00  	and	a1, a1, a2
80001684: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001688: 63 9c 05 40  	bnez	a1, 0x80001aa0 <.LBB1_124+0x190>
8000168c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001690: 13 56 f8 41  	srai	a2, a6, 31
80001694: b3 06 c8 00  	add	a3, a6, a2
80001698: b3 c6 c6 00  	xor	a3, a3, a2
8000169c: 13 76 04 02  	andi	a2, s0, 32
800016a0: 13 46 16 06  	xori	a2, a2, 97
800016a4: 93 08 66 0f  	addi	a7, a2, 246
800016a8: 6f 00 40 03  	j	0x800016dc <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016ac: 33 05 f6 00  	add	a0, a2, a5
800016b0: 93 87 15 00  	addi	a5, a1, 1
800016b4: 13 06 c1 01  	addi	a2, sp, 28
800016b8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016bc: b3 b6 86 01  	sltu	a3, a3, s8
800016c0: 93 c6 16 00  	xori	a3, a3, 1
800016c4: 93 b5 f5 01  	sltiu	a1, a1, 31
800016c8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016cc: 23 00 a6 00  	sb	a0, 0(a2)
800016d0: 93 85 07 00  	mv	a1, a5
800016d4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016d8: 63 84 04 3c  	beqz	s1, 0x80001aa0 <.LBB1_124+0x190>
;       value /= base;
800016dc: 33 d7 86 03  	divu	a4, a3, s8
800016e0: 33 06 87 03  	mul	a2, a4, s8
800016e4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016e8: 13 f5 e7 0f  	andi	a0, a5, 254
800016ec: 13 06 00 03  	addi	a2, zero, 48
800016f0: 93 04 a0 00  	addi	s1, zero, 10
800016f4: e3 6c 95 fa  	bltu	a0, s1, 0x800016ac <.LBB1_62+0x1cc>
800016f8: 13 86 08 00  	mv	a2, a7
800016fc: 6f f0 1f fb  	j	0x800016ac <.LBB1_62+0x1cc>
80001700: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001704: 13 85 79 00  	addi	a0, s3, 7
80001708: 93 75 85 ff  	andi	a1, a0, -8
8000170c: 03 a9 05 00  	lw	s2, 0(a1)
80001710: 13 e5 45 00  	ori	a0, a1, 4
80001714: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80001718: 33 65 39 01  	or	a0, s2, s3
8000171c: 23 24 b1 00  	sw	a1, 8(sp)
80001720: 63 14 05 00  	bnez	a0, 0x80001728 <.LBB1_62+0x248>
80001724: 13 74 f4 fe  	andi	s0, s0, -17
80001728: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000172c: 93 75 04 40  	andi	a1, s0, 1024
80001730: 93 d5 a5 00  	srli	a1, a1, 10
80001734: 33 75 b5 00  	and	a0, a0, a1
80001738: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000173c: 63 18 05 08  	bnez	a0, 0x800017cc <.LBB1_62+0x2ec>
80001740: 93 04 00 00  	mv	s1, zero
80001744: 13 75 04 02  	andi	a0, s0, 32
80001748: 13 45 15 06  	xori	a0, a0, 97
8000174c: 13 05 65 0f  	addi	a0, a0, 246
80001750: 23 2a a1 00  	sw	a0, 20(sp)
80001754: 6f 00 40 02  	j	0x80001778 <.LBB1_62+0x298>
80001758: 13 06 10 00  	addi	a2, zero, 1
8000175c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001760: 93 b6 f4 01  	sltiu	a3, s1, 31
80001764: 33 f6 c6 00  	and	a2, a3, a2
80001768: 93 84 07 00  	mv	s1, a5
8000176c: 13 09 05 00  	mv	s2, a0
80001770: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001774: 63 0c 06 04  	beqz	a2, 0x800017cc <.LBB1_62+0x2ec>
;       value /= base;
80001778: 13 05 09 00  	mv	a0, s2
8000177c: 93 85 09 00  	mv	a1, s3
80001780: 13 06 0c 00  	mv	a2, s8
80001784: 93 06 00 00  	mv	a3, zero
80001788: 97 f0 ff ff  	auipc	ra, 1048575
8000178c: e7 80 80 87  	jalr	-1928(ra)
80001790: 33 06 85 03  	mul	a2, a0, s8
80001794: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001798: 13 77 e6 0f  	andi	a4, a2, 254
8000179c: 93 06 00 03  	addi	a3, zero, 48
800017a0: 93 07 a0 00  	addi	a5, zero, 10
800017a4: 63 64 f7 00  	bltu	a4, a5, 0x800017ac <.LBB1_62+0x2cc>
800017a8: 83 26 41 01  	lw	a3, 20(sp)
800017ac: 33 86 c6 00  	add	a2, a3, a2
800017b0: 93 06 c1 01  	addi	a3, sp, 28
800017b4: b3 86 96 00  	add	a3, a3, s1
800017b8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800017bc: e3 9e 09 f8  	bnez	s3, 0x80001758 <.LBB1_62+0x278>
800017c0: 33 36 89 01  	sltu	a2, s2, s8
800017c4: 13 46 16 00  	xori	a2, a2, 1
800017c8: 6f f0 5f f9  	j	0x8000175c <.LBB1_62+0x27c>
800017cc: 03 25 81 00  	lw	a0, 8(sp)
800017d0: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800017d4: 13 07 c1 01  	addi	a4, sp, 28
800017d8: 03 29 c1 00  	lw	s2, 12(sp)
800017dc: 6f 00 40 40  	j	0x80001be0 <.LBB1_124+0x2d0>

800017e0 <.LBB1_108>:
800017e0: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800017e4: 13 79 24 00  	andi	s2, s0, 2
800017e8: 93 04 10 00  	addi	s1, zero, 1
800017ec: 63 1e 09 02  	bnez	s2, 0x80001828 <.LBB1_108+0x48>
800017f0: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800017f4: 63 6a 9b 02  	bltu	s6, s1, 0x80001828 <.LBB1_108+0x48>
800017f8: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800017fc: 13 0c fb ff  	addi	s8, s6, -1
80001800: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80001804: 33 86 8c 00  	add	a2, s9, s0
80001808: 13 05 00 02  	addi	a0, zero, 32
8000180c: 93 05 0a 00  	mv	a1, s4
80001810: 93 86 0a 00  	mv	a3, s5
80001814: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80001818: 13 04 14 00  	addi	s0, s0, 1
8000181c: e3 14 8c fe  	bne	s8, s0, 0x80001804 <.LBB1_108+0x24>
80001820: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001824: b3 8c 8c 00  	add	s9, s9, s0
80001828: 03 c5 09 00  	lbu	a0, 0(s3)
8000182c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001830: 93 89 49 00  	addi	s3, s3, 4
80001834: 13 8c 1c 00  	addi	s8, s9, 1
80001838: 93 05 0a 00  	mv	a1, s4
8000183c: 13 86 0c 00  	mv	a2, s9
80001840: 93 86 0a 00  	mv	a3, s5
80001844: 13 89 0b 00  	mv	s2, s7
80001848: e7 80 0b 00  	jalr	s7
8000184c: 33 b5 64 01  	sltu	a0, s1, s6
80001850: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001854: 33 65 a4 00  	or	a0, s0, a0
80001858: 63 1c 05 3a  	bnez	a0, 0x80001c10 <.LBB1_124+0x300>
;           while (l++ < width) {
8000185c: 33 04 9b 40  	sub	s0, s6, s1
80001860: 93 0b e0 02  	addi	s7, zero, 46
80001864: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001868: 13 0c 1c 00  	addi	s8, s8, 1
8000186c: 13 05 00 02  	addi	a0, zero, 32
80001870: 93 05 0a 00  	mv	a1, s4
80001874: 93 86 0a 00  	mv	a3, s5
80001878: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000187c: 13 04 f4 ff  	addi	s0, s0, -1
80001880: e3 12 04 fe  	bnez	s0, 0x80001864 <.LBB1_108+0x84>
80001884: 13 0b 50 02  	addi	s6, zero, 37
80001888: 13 04 1d 00  	addi	s0, s10, 1
8000188c: 6f f0 df 91  	j	0x800011a8 <.LBB1_183+0x30>

80001890 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001890: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001894: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80001898: 63 14 05 00  	bnez	a0, 0x800018a0 <.LBB1_117+0x10>
8000189c: 93 fe fe fe  	andi	t4, t4, -17
800018a0: 93 04 a0 00  	addi	s1, zero, 10
800018a4: 13 04 f0 00  	addi	s0, zero, 15
800018a8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800018ac: 13 f6 0e 40  	andi	a2, t4, 1024
800018b0: 13 56 a6 00  	srli	a2, a2, 10
800018b4: b3 f5 c5 00  	and	a1, a1, a2
800018b8: 93 07 00 00  	mv	a5, zero
800018bc: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800018c0: 63 98 05 10  	bnez	a1, 0x800019d0 <.LBB1_124+0xc0>
800018c4: 93 05 00 00  	mv	a1, zero
800018c8: 6f 00 40 03  	j	0x800018fc <.LBB1_117+0x6c>
800018cc: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018d0: 33 06 d6 00  	add	a2, a2, a3
800018d4: 93 87 15 00  	addi	a5, a1, 1
800018d8: 93 06 c1 01  	addi	a3, sp, 28
800018dc: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018e0: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800018e4: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018e8: 93 b5 f5 01  	sltiu	a1, a1, 31
800018ec: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018f0: 23 80 c6 00  	sb	a2, 0(a3)
800018f4: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018f8: 63 0c 07 0c  	beqz	a4, 0x800019d0 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018fc: 93 76 e5 00  	andi	a3, a0, 14
80001900: 13 06 00 03  	addi	a2, zero, 48
80001904: e3 e4 96 fc  	bltu	a3, s1, 0x800018cc <.LBB1_117+0x3c>
80001908: 13 06 70 03  	addi	a2, zero, 55
8000190c: 6f f0 1f fc  	j	0x800018cc <.LBB1_117+0x3c>

80001910 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001910: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80001914: 03 c5 07 00  	lbu	a0, 0(a5)
80001918: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
8000191c: 63 0c 05 02  	beqz	a0, 0x80001954 <.LBB1_124+0x44>
80001920: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80001924: 63 84 0b 00  	beqz	s7, 0x8000192c <.LBB1_124+0x1c>
80001928: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
8000192c: 93 85 f5 ff  	addi	a1, a1, -1
80001930: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001934: 03 c7 16 00  	lbu	a4, 1(a3)
80001938: 13 86 16 00  	addi	a2, a3, 1
8000193c: b3 36 e0 00  	snez	a3, a4
80001940: 33 37 b0 00  	snez	a4, a1
80001944: 33 77 d7 00  	and	a4, a4, a3
80001948: 93 85 f5 ff  	addi	a1, a1, -1
8000194c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001950: e3 12 07 fe  	bnez	a4, 0x80001934 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001954: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80001958: 93 75 04 40  	andi	a1, s0, 1024
8000195c: 93 b4 15 00  	seqz	s1, a1
80001960: 23 2a c1 00  	sw	a2, 20(sp)
80001964: b3 35 76 01  	sltu	a1, a2, s7
80001968: b3 e5 b4 00  	or	a1, s1, a1
8000196c: 63 94 05 00  	bnez	a1, 0x80001974 <.LBB1_124+0x64>
80001970: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001974: 93 75 24 00  	andi	a1, s0, 2
80001978: 23 26 b1 00  	sw	a1, 12(sp)
8000197c: 63 96 05 2a  	bnez	a1, 0x80001c28 <.LBB1_124+0x318>
80001980: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001984: 63 fe 65 29  	bgeu	a1, s6, 0x80001c20 <.LBB1_124+0x310>
80001988: 23 24 f1 00  	sw	a5, 8(sp)
8000198c: 13 04 00 00  	mv	s0, zero
80001990: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001994: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80001998: 33 86 8c 00  	add	a2, s9, s0
8000199c: 13 05 00 02  	addi	a0, zero, 32
800019a0: 93 05 0a 00  	mv	a1, s4
800019a4: 93 86 0a 00  	mv	a3, s5
800019a8: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
800019ac: 13 04 14 00  	addi	s0, s0, 1
800019b0: e3 14 89 fe  	bne	s2, s0, 0x80001998 <.LBB1_124+0x88>
800019b4: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800019b8: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
800019bc: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800019c0: 23 2a b1 00  	sw	a1, 20(sp)
800019c4: b3 8c 8c 00  	add	s9, s9, s0
800019c8: 13 09 0c 00  	mv	s2, s8
800019cc: 6f 00 c0 25  	j	0x80001c28 <.LBB1_124+0x318>
800019d0: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800019d4: 13 07 c1 01  	addi	a4, sp, 28
800019d8: 93 08 00 01  	addi	a7, zero, 16
800019dc: 13 0e 80 00  	addi	t3, zero, 8
800019e0: 13 05 09 00  	mv	a0, s2
800019e4: 93 05 0a 00  	mv	a1, s4
800019e8: 13 86 0c 00  	mv	a2, s9
800019ec: 93 86 0a 00  	mv	a3, s5
800019f0: 13 08 00 00  	mv	a6, zero
800019f4: 93 83 0b 00  	mv	t2, s7
800019f8: 97 10 00 00  	auipc	ra, 1
800019fc: e7 80 00 fa  	jalr	-96(ra)
80001a00: 13 0c 05 00  	mv	s8, a0
80001a04: 6f 00 00 21  	j	0x80001c14 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001a08: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80001a0c: 63 14 08 00  	bnez	a6, 0x80001a14 <.LBB1_124+0x104>
80001a10: 13 74 f4 fe  	andi	s0, s0, -17
80001a14: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001a18: 13 76 04 40  	andi	a2, s0, 1024
80001a1c: 13 56 a6 00  	srli	a2, a2, 10
80001a20: b3 f5 c5 00  	and	a1, a1, a2
80001a24: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001a28: 63 9c 05 06  	bnez	a1, 0x80001aa0 <.LBB1_124+0x190>
80001a2c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001a30: 13 56 f8 41  	srai	a2, a6, 31
80001a34: b3 06 c8 00  	add	a3, a6, a2
80001a38: b3 c6 c6 00  	xor	a3, a3, a2
80001a3c: 13 76 04 02  	andi	a2, s0, 32
80001a40: 13 46 16 06  	xori	a2, a2, 97
80001a44: 93 08 66 0f  	addi	a7, a2, 246
80001a48: 6f 00 40 03  	j	0x80001a7c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001a4c: 33 05 f6 00  	add	a0, a2, a5
80001a50: 93 87 15 00  	addi	a5, a1, 1
80001a54: 13 06 c1 01  	addi	a2, sp, 28
80001a58: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001a5c: b3 b6 86 01  	sltu	a3, a3, s8
80001a60: 93 c6 16 00  	xori	a3, a3, 1
80001a64: 93 b5 f5 01  	sltiu	a1, a1, 31
80001a68: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001a6c: 23 00 a6 00  	sb	a0, 0(a2)
80001a70: 93 85 07 00  	mv	a1, a5
80001a74: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001a78: 63 84 04 02  	beqz	s1, 0x80001aa0 <.LBB1_124+0x190>
;       value /= base;
80001a7c: 33 d7 86 03  	divu	a4, a3, s8
80001a80: 33 06 87 03  	mul	a2, a4, s8
80001a84: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001a88: 13 f5 e7 0f  	andi	a0, a5, 254
80001a8c: 13 06 00 03  	addi	a2, zero, 48
80001a90: 93 04 a0 00  	addi	s1, zero, 10
80001a94: e3 6c 95 fa  	bltu	a0, s1, 0x80001a4c <.LBB1_124+0x13c>
80001a98: 13 86 08 00  	mv	a2, a7
80001a9c: 6f f0 1f fb  	j	0x80001a4c <.LBB1_124+0x13c>
80001aa0: 93 89 49 00  	addi	s3, s3, 4
80001aa4: 13 58 f8 01  	srli	a6, a6, 31
80001aa8: 13 07 c1 01  	addi	a4, sp, 28
80001aac: 13 05 09 00  	mv	a0, s2
80001ab0: 93 05 0a 00  	mv	a1, s4
80001ab4: 13 86 0c 00  	mv	a2, s9
80001ab8: 93 86 0a 00  	mv	a3, s5
80001abc: 6f 00 80 13  	j	0x80001bf4 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001ac0: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001ac4: 63 14 05 00  	bnez	a0, 0x80001acc <.LBB1_124+0x1bc>
80001ac8: 13 74 f4 fe  	andi	s0, s0, -17
80001acc: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001ad0: 13 76 04 40  	andi	a2, s0, 1024
80001ad4: 13 56 a6 00  	srli	a2, a2, 10
80001ad8: b3 f5 c5 00  	and	a1, a1, a2
80001adc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001ae0: 63 9c 05 0e  	bnez	a1, 0x80001bd8 <.LBB1_124+0x2c8>
80001ae4: 13 06 00 00  	mv	a2, zero
80001ae8: 93 75 04 02  	andi	a1, s0, 32
80001aec: 93 c5 15 06  	xori	a1, a1, 97
80001af0: 13 88 65 0f  	addi	a6, a1, 246
80001af4: 6f 00 40 03  	j	0x80001b28 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001af8: 33 87 e7 00  	add	a4, a5, a4
80001afc: 93 07 16 00  	addi	a5, a2, 1
80001b00: 93 05 c1 01  	addi	a1, sp, 28
80001b04: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b08: 33 35 85 01  	sltu	a0, a0, s8
80001b0c: 13 45 15 00  	xori	a0, a0, 1
80001b10: 13 36 f6 01  	sltiu	a2, a2, 31
80001b14: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b18: 23 80 e4 00  	sb	a4, 0(s1)
80001b1c: 13 86 07 00  	mv	a2, a5
80001b20: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b24: 63 8a 05 0a  	beqz	a1, 0x80001bd8 <.LBB1_124+0x2c8>
;       value /= base;
80001b28: b3 56 85 03  	divu	a3, a0, s8
80001b2c: 33 87 86 03  	mul	a4, a3, s8
80001b30: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b34: 93 74 e7 0f  	andi	s1, a4, 254
80001b38: 93 07 00 03  	addi	a5, zero, 48
80001b3c: 93 05 a0 00  	addi	a1, zero, 10
80001b40: e3 ec b4 fa  	bltu	s1, a1, 0x80001af8 <.LBB1_124+0x1e8>
80001b44: 93 07 08 00  	mv	a5, a6
80001b48: 6f f0 1f fb  	j	0x80001af8 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001b4c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001b50: 63 14 05 00  	bnez	a0, 0x80001b58 <.LBB1_124+0x248>
80001b54: 13 74 f4 fe  	andi	s0, s0, -17
80001b58: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001b5c: 13 76 04 40  	andi	a2, s0, 1024
80001b60: 13 56 a6 00  	srli	a2, a2, 10
80001b64: b3 f5 c5 00  	and	a1, a1, a2
80001b68: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001b6c: 63 96 05 06  	bnez	a1, 0x80001bd8 <.LBB1_124+0x2c8>
80001b70: 13 06 00 00  	mv	a2, zero
80001b74: 93 75 04 02  	andi	a1, s0, 32
80001b78: 93 c5 15 06  	xori	a1, a1, 97
80001b7c: 13 88 65 0f  	addi	a6, a1, 246
80001b80: 6f 00 40 03  	j	0x80001bb4 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001b84: 33 87 e7 00  	add	a4, a5, a4
80001b88: 93 07 16 00  	addi	a5, a2, 1
80001b8c: 93 05 c1 01  	addi	a1, sp, 28
80001b90: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001b94: 33 35 85 01  	sltu	a0, a0, s8
80001b98: 13 45 15 00  	xori	a0, a0, 1
80001b9c: 13 36 f6 01  	sltiu	a2, a2, 31
80001ba0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001ba4: 23 80 e4 00  	sb	a4, 0(s1)
80001ba8: 13 86 07 00  	mv	a2, a5
80001bac: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001bb0: 63 84 05 02  	beqz	a1, 0x80001bd8 <.LBB1_124+0x2c8>
;       value /= base;
80001bb4: b3 56 85 03  	divu	a3, a0, s8
80001bb8: 33 87 86 03  	mul	a4, a3, s8
80001bbc: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001bc0: 93 74 e7 0f  	andi	s1, a4, 254
80001bc4: 93 07 00 03  	addi	a5, zero, 48
80001bc8: 93 05 a0 00  	addi	a1, zero, 10
80001bcc: e3 ec b4 fa  	bltu	s1, a1, 0x80001b84 <.LBB1_124+0x274>
80001bd0: 93 07 08 00  	mv	a5, a6
80001bd4: 6f f0 1f fb  	j	0x80001b84 <.LBB1_124+0x274>
80001bd8: 93 89 49 00  	addi	s3, s3, 4
80001bdc: 13 07 c1 01  	addi	a4, sp, 28
80001be0: 13 05 09 00  	mv	a0, s2
80001be4: 93 05 0a 00  	mv	a1, s4
80001be8: 13 86 0c 00  	mv	a2, s9
80001bec: 93 86 0a 00  	mv	a3, s5
80001bf0: 13 08 00 00  	mv	a6, zero
80001bf4: 93 08 0c 00  	mv	a7, s8
80001bf8: 93 83 0b 00  	mv	t2, s7
80001bfc: 13 0e 0b 00  	mv	t3, s6
80001c00: 93 0e 04 00  	mv	t4, s0
80001c04: 97 10 00 00  	auipc	ra, 1
80001c08: e7 80 40 d9  	jalr	-620(ra)
80001c0c: 13 0c 05 00  	mv	s8, a0
80001c10: 13 0b 50 02  	addi	s6, zero, 37
80001c14: 93 0b e0 02  	addi	s7, zero, 46
80001c18: 13 04 1d 00  	addi	s0, s10, 1
80001c1c: 6f f0 cf d8  	j	0x800011a8 <.LBB1_183+0x30>
80001c20: 93 85 15 00  	addi	a1, a1, 1
80001c24: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001c28: 63 00 05 04  	beqz	a0, 0x80001c68 <.LBB1_124+0x358>
80001c2c: 13 84 17 00  	addi	s0, a5, 1
80001c30: 6f 00 00 03  	j	0x80001c60 <.LBB1_124+0x350>
80001c34: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001c38: 13 8c 1c 00  	addi	s8, s9, 1
80001c3c: 13 75 f5 0f  	andi	a0, a0, 255
80001c40: 93 05 0a 00  	mv	a1, s4
80001c44: 13 86 0c 00  	mv	a2, s9
80001c48: 93 86 0a 00  	mv	a3, s5
80001c4c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001c50: 03 45 04 00  	lbu	a0, 0(s0)
80001c54: 13 04 14 00  	addi	s0, s0, 1
80001c58: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001c5c: 63 08 05 00  	beqz	a0, 0x80001c6c <.LBB1_124+0x35c>
80001c60: e3 9c 04 fc  	bnez	s1, 0x80001c38 <.LBB1_124+0x328>
80001c64: e3 98 0b fc  	bnez	s7, 0x80001c34 <.LBB1_124+0x324>
80001c68: 13 8c 0c 00  	mv	s8, s9
80001c6c: 03 25 c1 00  	lw	a0, 12(sp)
80001c70: 13 35 15 00  	seqz	a0, a0
80001c74: 03 26 41 01  	lw	a2, 20(sp)
80001c78: b3 35 66 01  	sltu	a1, a2, s6
80001c7c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001c80: 33 65 b5 00  	or	a0, a0, a1
80001c84: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001c88: e3 14 05 f8  	bnez	a0, 0x80001c10 <.LBB1_124+0x300>
;           while (l++ < width) {
80001c8c: 33 04 cb 40  	sub	s0, s6, a2
80001c90: 93 0b e0 02  	addi	s7, zero, 46
80001c94: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001c98: 13 0c 1c 00  	addi	s8, s8, 1
80001c9c: 13 05 00 02  	addi	a0, zero, 32
80001ca0: 93 05 0a 00  	mv	a1, s4
80001ca4: 93 86 0a 00  	mv	a3, s5
80001ca8: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001cac: 13 04 f4 ff  	addi	s0, s0, -1
80001cb0: e3 12 04 fe  	bnez	s0, 0x80001c94 <.LBB1_124+0x384>
80001cb4: 13 0b 50 02  	addi	s6, zero, 37
80001cb8: 13 04 1d 00  	addi	s0, s10, 1
80001cbc: 6f f0 cf ce  	j	0x800011a8 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001cc0: 13 86 0c 00  	mv	a2, s9
80001cc4: 63 e4 5c 01  	bltu	s9, s5, 0x80001ccc <.LBB1_124+0x3bc>
80001cc8: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001ccc: 13 05 00 00  	mv	a0, zero
80001cd0: 93 05 0a 00  	mv	a1, s4
80001cd4: 93 86 0a 00  	mv	a3, s5
80001cd8: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001cdc: 13 85 0c 00  	mv	a0, s9
80001ce0: 83 2d c1 03  	lw	s11, 60(sp)
80001ce4: 03 2d 01 04  	lw	s10, 64(sp)
80001ce8: 83 2c 41 04  	lw	s9, 68(sp)
80001cec: 03 2c 81 04  	lw	s8, 72(sp)
80001cf0: 83 2b c1 04  	lw	s7, 76(sp)
80001cf4: 03 2b 01 05  	lw	s6, 80(sp)
80001cf8: 83 2a 41 05  	lw	s5, 84(sp)
80001cfc: 03 2a 81 05  	lw	s4, 88(sp)
80001d00: 83 29 c1 05  	lw	s3, 92(sp)
80001d04: 03 29 01 06  	lw	s2, 96(sp)
80001d08: 83 24 41 06  	lw	s1, 100(sp)
80001d0c: 03 24 81 06  	lw	s0, 104(sp)
80001d10: 83 20 c1 06  	lw	ra, 108(sp)
80001d14: 13 01 01 07  	addi	sp, sp, 112
80001d18: 67 80 00 00  	ret

80001d1c <_out_char.llvm.11632292163828655644>:
;   if (character) {
80001d1c: 63 04 05 0a  	beqz	a0, 0x80001dc4 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001d20: f3 25 40 f1  	csrr	a1, mhartid
80001d24: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001d28: 33 86 c5 02  	mul	a2, a1, a2

80001d2c <.LBB2_6>:
80001d2c: 97 26 00 00  	auipc	a3, 2
80001d30: 93 86 86 a5  	addi	a3, a3, -1448
80001d34: b3 05 d6 00  	add	a1, a2, a3
80001d38: 03 a7 05 00  	lw	a4, 0(a1)
80001d3c: 93 07 17 00  	addi	a5, a4, 1
80001d40: 23 a0 f5 00  	sw	a5, 0(a1)
80001d44: 33 87 e5 00  	add	a4, a1, a4
80001d48: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001d4c: 03 a7 05 00  	lw	a4, 0(a1)
80001d50: 13 07 47 c0  	addi	a4, a4, -1020
80001d54: 33 37 e0 00  	snez	a4, a4
80001d58: 13 05 65 ff  	addi	a0, a0, -10
80001d5c: 33 35 a0 00  	snez	a0, a0
80001d60: 33 75 e5 00  	and	a0, a0, a4
80001d64: 63 10 05 06  	bnez	a0, 0x80001dc4 <.LBB2_8+0x18>
80001d68: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001d6c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001d70: 23 26 05 00  	sw	zero, 12(a0)
80001d74: 93 06 00 04  	addi	a3, zero, 64
80001d78: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001d7c: 23 2a 05 00  	sw	zero, 20(a0)
80001d80: 93 06 10 00  	addi	a3, zero, 1
80001d84: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001d88: 23 2e 05 00  	sw	zero, 28(a0)
80001d8c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001d90: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001d94: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001d98: 23 22 05 02  	sw	zero, 36(a0)
80001d9c: 23 20 c5 02  	sw	a2, 32(a0)

80001da0 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001da0: 17 25 00 00  	auipc	a0, 2
80001da4: 13 05 05 8a  	addi	a0, a0, -1888
80001da8: 23 20 d5 00  	sw	a3, 0(a0)

80001dac <.LBB2_8>:
80001dac: 17 25 00 00  	auipc	a0, 2
80001db0: 13 05 45 8d  	addi	a0, a0, -1836
;         while (fromhost == 0)
80001db4: 03 26 05 00  	lw	a2, 0(a0)
80001db8: e3 0e 06 fe  	beqz	a2, 0x80001db4 <.LBB2_8+0x8>
;         fromhost = 0;
80001dbc: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001dc0: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001dc4: 67 80 00 00  	ret

80001dc8 <_out_null>:
; }
80001dc8: 67 80 00 00  	ret

80001dcc <_ftoa>:
; {
80001dcc: 13 01 01 f9  	addi	sp, sp, -112
80001dd0: 23 26 11 06  	sw	ra, 108(sp)
80001dd4: 23 24 81 06  	sw	s0, 104(sp)
80001dd8: 23 22 91 06  	sw	s1, 100(sp)
80001ddc: 23 20 21 07  	sw	s2, 96(sp)
80001de0: 23 2e 31 05  	sw	s3, 92(sp)
80001de4: 23 2c 41 05  	sw	s4, 88(sp)
80001de8: 23 2a 51 05  	sw	s5, 84(sp)
80001dec: 23 28 61 05  	sw	s6, 80(sp)
80001df0: 23 26 71 05  	sw	s7, 76(sp)
80001df4: 23 24 81 05  	sw	s8, 72(sp)
80001df8: 23 22 91 05  	sw	s9, 68(sp)
80001dfc: 23 20 a1 05  	sw	s10, 64(sp)
80001e00: 27 3c 81 02  	fsd	fs0, 56(sp)
80001e04: 27 38 91 02  	fsd	fs1, 48(sp)
80001e08: 27 34 21 03  	fsd	fs2, 40(sp)

80001e0c <.LBB4_83>:
80001e0c: 97 24 00 00  	auipc	s1, 2
80001e10: 93 84 c4 8c  	addi	s1, s1, -1844
80001e14: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80001e18: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001e1c: 93 0a 08 00  	mv	s5, a6
80001e20: 13 89 07 00  	mv	s2, a5
80001e24: 93 89 06 00  	mv	s3, a3
80001e28: 13 0a 06 00  	mv	s4, a2
80001e2c: 13 8b 05 00  	mv	s6, a1
80001e30: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001e34: 63 98 04 0e  	bnez	s1, 0x80001f24 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001e38: 13 f5 2a 00  	andi	a0, s5, 2
80001e3c: 93 f5 3a 00  	andi	a1, s5, 3
80001e40: b3 35 b0 00  	snez	a1, a1
80001e44: 13 36 59 00  	sltiu	a2, s2, 5
80001e48: b3 65 b6 00  	or	a1, a2, a1
80001e4c: 93 5c 15 00  	srli	s9, a0, 1
80001e50: 13 04 0a 00  	mv	s0, s4
80001e54: 63 96 05 02  	bnez	a1, 0x80001e80 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80001e58: 93 04 c9 ff  	addi	s1, s2, -4
80001e5c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001e60: 13 04 16 00  	addi	s0, a2, 1
80001e64: 13 05 00 02  	addi	a0, zero, 32
80001e68: 93 05 0b 00  	mv	a1, s6
80001e6c: 93 86 09 00  	mv	a3, s3
80001e70: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001e74: 93 84 f4 ff  	addi	s1, s1, -1
80001e78: 13 06 04 00  	mv	a2, s0
80001e7c: e3 92 04 fe  	bnez	s1, 0x80001e60 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001e80: 93 04 14 00  	addi	s1, s0, 1
80001e84: 13 05 d0 02  	addi	a0, zero, 45
80001e88: 93 05 0b 00  	mv	a1, s6
80001e8c: 13 06 04 00  	mv	a2, s0
80001e90: 93 86 09 00  	mv	a3, s3
80001e94: e7 80 0b 00  	jalr	s7
80001e98: 93 0a 24 00  	addi	s5, s0, 2
80001e9c: 13 05 90 06  	addi	a0, zero, 105
80001ea0: 93 05 0b 00  	mv	a1, s6
80001ea4: 13 86 04 00  	mv	a2, s1
80001ea8: 93 86 09 00  	mv	a3, s3
80001eac: e7 80 0b 00  	jalr	s7
80001eb0: 13 0c 34 00  	addi	s8, s0, 3
80001eb4: 13 05 e0 06  	addi	a0, zero, 110
80001eb8: 93 05 0b 00  	mv	a1, s6
80001ebc: 13 86 0a 00  	mv	a2, s5
80001ec0: 93 86 09 00  	mv	a3, s3
80001ec4: e7 80 0b 00  	jalr	s7
80001ec8: 93 04 44 00  	addi	s1, s0, 4
80001ecc: 13 05 60 06  	addi	a0, zero, 102
80001ed0: 93 05 0b 00  	mv	a1, s6
80001ed4: 13 06 0c 00  	mv	a2, s8
80001ed8: 93 86 09 00  	mv	a3, s3
80001edc: e7 80 0b 00  	jalr	s7
80001ee0: 33 85 44 41  	sub	a0, s1, s4
80001ee4: 33 35 25 01  	sltu	a0, a0, s2
80001ee8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001eec: 93 c5 1c 00  	xori	a1, s9, 1
80001ef0: 33 e5 a5 00  	or	a0, a1, a0
80001ef4: 63 16 05 56  	bnez	a0, 0x80002460 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001ef8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001efc: 13 84 14 00  	addi	s0, s1, 1
80001f00: 13 05 00 02  	addi	a0, zero, 32
80001f04: 93 05 0b 00  	mv	a1, s6
80001f08: 13 86 04 00  	mv	a2, s1
80001f0c: 93 86 09 00  	mv	a3, s3
80001f10: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001f14: 33 05 8a 00  	add	a0, s4, s0
80001f18: 93 04 04 00  	mv	s1, s0
80001f1c: e3 60 25 ff  	bltu	a0, s2, 0x80001efc <.LBB4_83+0xf0>
80001f20: 6f 00 40 54  	j	0x80002464 <.LBB4_90+0x378>
80001f24: 53 04 a5 22  	fmv.d	fs0, fa0

80001f28 <.LBB4_84>:
80001f28: 17 15 00 00  	auipc	a0, 1
80001f2c: 13 05 85 7b  	addi	a0, a0, 1976
80001f30: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001f34: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001f38: 63 1e 05 00  	bnez	a0, 0x80001f54 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001f3c: 93 f5 4a 00  	andi	a1, s5, 4
80001f40: 13 b5 15 00  	seqz	a0, a1
80001f44: 63 82 05 06  	beqz	a1, 0x80001fa8 <.LBB4_88>

80001f48 <.LBB4_85>:
80001f48: 17 1c 00 00  	auipc	s8, 1
80001f4c: 13 0c 8c 4b  	addi	s8, s8, 1208
80001f50: 6f 00 00 06  	j	0x80001fb0 <.LBB4_88+0x8>

80001f54 <.LBB4_86>:
80001f54: 17 15 00 00  	auipc	a0, 1
80001f58: 13 05 45 79  	addi	a0, a0, 1940
80001f5c: 07 30 05 00  	fld	ft0, 0(a0)

80001f60 <.LBB4_87>:
80001f60: 17 15 00 00  	auipc	a0, 1
80001f64: 13 05 05 79  	addi	a0, a0, 1936
80001f68: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001f6c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001f70: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001f74: 33 75 b5 00  	and	a0, a0, a1
80001f78: 63 1e 05 0e  	bnez	a0, 0x80002074 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001f7c: 13 85 0b 00  	mv	a0, s7
80001f80: 93 05 0b 00  	mv	a1, s6
80001f84: 13 06 0a 00  	mv	a2, s4
80001f88: 93 86 09 00  	mv	a3, s3
80001f8c: 53 05 84 22  	fmv.d	fa0, fs0
80001f90: 93 07 09 00  	mv	a5, s2
80001f94: 13 88 0a 00  	mv	a6, s5
80001f98: 97 00 00 00  	auipc	ra, 0
80001f9c: e7 80 40 51  	jalr	1300(ra)
80001fa0: 13 04 05 00  	mv	s0, a0
80001fa4: 6f 00 00 4c  	j	0x80002464 <.LBB4_90+0x378>

80001fa8 <.LBB4_88>:
80001fa8: 17 1c 00 00  	auipc	s8, 1
80001fac: 13 0c 7c 47  	addi	s8, s8, 1143
80001fb0: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001fb4: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001fb8: 13 f5 3a 00  	andi	a0, s5, 3
80001fbc: 33 35 a0 00  	snez	a0, a0
80001fc0: b3 b5 2c 01  	sltu	a1, s9, s2
80001fc4: 93 c5 15 00  	xori	a1, a1, 1
80001fc8: 33 65 b5 00  	or	a0, a0, a1
80001fcc: 93 fa 2a 00  	andi	s5, s5, 2
80001fd0: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001fd4: 63 16 05 02  	bnez	a0, 0x80002000 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80001fd8: 33 04 99 41  	sub	s0, s2, s9
80001fdc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001fe0: 93 04 16 00  	addi	s1, a2, 1
80001fe4: 13 05 00 02  	addi	a0, zero, 32
80001fe8: 93 05 0b 00  	mv	a1, s6
80001fec: 93 86 09 00  	mv	a3, s3
80001ff0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001ff4: 13 04 f4 ff  	addi	s0, s0, -1
80001ff8: 13 86 04 00  	mv	a2, s1
80001ffc: e3 12 04 fe  	bnez	s0, 0x80001fe0 <.LBB4_88+0x38>
80002000: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002004: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002008: 33 05 9c 01  	add	a0, s8, s9
8000200c: 03 45 05 00  	lbu	a0, 0(a0)
80002010: 13 86 04 00  	mv	a2, s1
80002014: 13 84 fc ff  	addi	s0, s9, -1
80002018: 93 84 14 00  	addi	s1, s1, 1
8000201c: 93 05 0b 00  	mv	a1, s6
80002020: 93 86 09 00  	mv	a3, s3
80002024: e7 80 0b 00  	jalr	s7
80002028: 93 0c 04 00  	mv	s9, s0
;   while (len) {
8000202c: e3 1e 04 fc  	bnez	s0, 0x80002008 <.LBB4_88+0x60>
80002030: 33 85 44 41  	sub	a0, s1, s4
80002034: 33 35 25 01  	sltu	a0, a0, s2
80002038: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000203c: 93 c5 1a 00  	xori	a1, s5, 1
80002040: 33 e5 a5 00  	or	a0, a1, a0
80002044: 63 1e 05 40  	bnez	a0, 0x80002460 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002048: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000204c: 13 84 14 00  	addi	s0, s1, 1
80002050: 13 05 00 02  	addi	a0, zero, 32
80002054: 93 05 0b 00  	mv	a1, s6
80002058: 13 86 04 00  	mv	a2, s1
8000205c: 93 86 09 00  	mv	a3, s3
80002060: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002064: 33 05 8a 00  	add	a0, s4, s0
80002068: 93 04 04 00  	mv	s1, s0
8000206c: e3 60 25 ff  	bltu	a0, s2, 0x8000204c <.LBB4_88+0xa4>
80002070: 6f 00 40 3f  	j	0x80002464 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80002074: 13 f5 0a 40  	andi	a0, s5, 1024
80002078: 13 0c 60 00  	addi	s8, zero, 6
8000207c: 63 04 05 00  	beqz	a0, 0x80002084 <.LBB4_88+0xdc>
80002080: 13 0c 07 00  	mv	s8, a4
80002084: 13 05 a0 00  	addi	a0, zero, 10
80002088: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
8000208c: 63 6c ac 02  	bltu	s8, a0, 0x800020c4 <.LBB4_88+0x11c>
80002090: 93 04 6c ff  	addi	s1, s8, -10
80002094: 13 05 f0 01  	addi	a0, zero, 31
80002098: 63 e4 a4 00  	bltu	s1, a0, 0x800020a0 <.LBB4_88+0xf8>
8000209c: 93 04 f0 01  	addi	s1, zero, 31
800020a0: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
800020a4: 13 05 81 00  	addi	a0, sp, 8
800020a8: 93 05 00 03  	addi	a1, zero, 48
800020ac: 13 06 04 00  	mv	a2, s0
800020b0: 97 e0 ff ff  	auipc	ra, 1048574
800020b4: e7 80 80 4a  	jalr	1192(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800020b8: 13 c5 f4 ff  	not	a0, s1
800020bc: 33 0c ac 00  	add	s8, s8, a0
800020c0: 6f 00 80 00  	j	0x800020c8 <.LBB4_88+0x120>
800020c4: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
800020c8: 13 15 3c 00  	slli	a0, s8, 3

800020cc <.LBB4_89>:
800020cc: 97 15 00 00  	auipc	a1, 1
800020d0: 93 85 45 51  	addi	a1, a1, 1300
800020d4: 33 05 b5 00  	add	a0, a0, a1
800020d8: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
800020dc: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
800020e0: 53 80 04 d2  	fcvt.d.w	ft0, s1
800020e4: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
800020e8: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

800020ec <.LBB4_90>:
800020ec: 17 15 00 00  	auipc	a0, 1
800020f0: 13 05 c5 60  	addi	a0, a0, 1548
800020f4: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
800020f8: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
800020fc: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80002100: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002104: d3 05 01 a2  	fle.d	a1, ft2, ft0
80002108: 63 90 05 02  	bnez	a1, 0x80002128 <.LBB4_90+0x3c>
;     ++frac;
8000210c: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80002110: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80002114: d3 15 11 a2  	flt.d	a1, ft2, ft1
80002118: 63 94 05 02  	bnez	a1, 0x80002140 <.LBB4_90+0x54>
8000211c: 13 05 00 00  	mv	a0, zero
;       ++whole;
80002120: 93 84 14 00  	addi	s1, s1, 1
80002124: 6f 00 c0 01  	j	0x80002140 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80002128: d3 15 01 a2  	flt.d	a1, ft2, ft0
8000212c: 63 9a 05 00  	bnez	a1, 0x80002140 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80002130: 93 35 15 00  	seqz	a1, a0
80002134: 13 76 15 00  	andi	a2, a0, 1
80002138: b3 65 b6 00  	or	a1, a2, a1
8000213c: 33 85 a5 00  	add	a0, a1, a0
80002140: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80002144: 63 0c 0c 0c  	beqz	s8, 0x8000221c <.LBB4_90+0x130>
80002148: 13 06 00 00  	mv	a2, zero
8000214c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002150: 33 83 85 00  	add	t1, a1, s0
80002154: 93 02 00 02  	addi	t0, zero, 32
80002158: 33 87 82 40  	sub	a4, t0, s0
8000215c: b7 d5 cc cc  	lui	a1, 838861
80002160: 93 83 d5 cc  	addi	t2, a1, -819
80002164: 13 08 a0 00  	addi	a6, zero, 10
80002168: 93 08 90 00  	addi	a7, zero, 9
8000216c: 63 04 c7 0c  	beq	a4, a2, 0x80002234 <.LBB4_90+0x148>
80002170: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80002174: 33 35 75 02  	mulhu	a0, a0, t2
80002178: 13 55 35 00  	srli	a0, a0, 3
8000217c: b3 06 05 03  	mul	a3, a0, a6
80002180: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002184: 93 e6 06 03  	ori	a3, a3, 48
80002188: b3 07 c3 00  	add	a5, t1, a2
8000218c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80002190: 13 06 16 00  	addi	a2, a2, 1
80002194: e3 ec b8 fc  	bltu	a7, a1, 0x8000216c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002198: 33 05 c4 00  	add	a0, s0, a2
8000219c: 93 05 f5 ff  	addi	a1, a0, -1
800021a0: 93 06 e0 01  	addi	a3, zero, 30
800021a4: b3 b6 b6 00  	sltu	a3, a3, a1
800021a8: 33 47 cc 00  	xor	a4, s8, a2
800021ac: 13 37 17 00  	seqz	a4, a4
800021b0: b3 e6 e6 00  	or	a3, a3, a4
800021b4: 63 94 06 08  	bnez	a3, 0x8000223c <.LBB4_90+0x150>
800021b8: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800021bc: 33 05 85 00  	add	a0, a0, s0
800021c0: 93 45 f6 ff  	not	a1, a2
800021c4: 33 8c 85 01  	add	s8, a1, s8
800021c8: 33 04 c4 00  	add	s0, s0, a2
800021cc: 93 05 f0 01  	addi	a1, zero, 31
800021d0: b3 86 85 40  	sub	a3, a1, s0
800021d4: 33 05 c5 00  	add	a0, a0, a2
800021d8: 93 05 0c 00  	mv	a1, s8
800021dc: 63 64 dc 00  	bltu	s8, a3, 0x800021e4 <.LBB4_90+0xf8>
800021e0: 93 85 06 00  	mv	a1, a3
800021e4: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800021e8: 93 05 00 03  	addi	a1, zero, 48
800021ec: 97 e0 ff ff  	auipc	ra, 1048574
800021f0: e7 80 c0 36  	jalr	876(ra)
800021f4: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800021f8: b3 05 a4 00  	add	a1, s0, a0
800021fc: 93 b5 f5 01  	sltiu	a1, a1, 31
80002200: 33 46 ac 00  	xor	a2, s8, a0
80002204: 33 36 c0 00  	snez	a2, a2
80002208: 33 f6 c5 00  	and	a2, a1, a2
8000220c: 13 05 15 00  	addi	a0, a0, 1
80002210: e3 14 06 fe  	bnez	a2, 0x800021f8 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002214: 33 05 a4 00  	add	a0, s0, a0
80002218: 6f 00 80 02  	j	0x80002240 <.LBB4_90+0x154>
;     diff = value - (double)whole;
8000221c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002220: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002224: 53 05 10 a2  	fle.d	a0, ft0, ft1
80002228: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
8000222c: b3 84 a4 00  	add	s1, s1, a0
80002230: 6f 00 c0 03  	j	0x8000226c <.LBB4_90+0x180>
80002234: 13 04 00 02  	addi	s0, zero, 32
80002238: 6f 00 80 03  	j	0x80002270 <.LBB4_90+0x184>
8000223c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002240: 63 8e 05 00  	beqz	a1, 0x8000225c <.LBB4_90+0x170>
;       buf[len++] = '.';
80002244: 13 04 15 00  	addi	s0, a0, 1
80002248: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
8000224c: 33 85 a5 00  	add	a0, a1, a0
80002250: 93 05 e0 02  	addi	a1, zero, 46
80002254: 23 00 b5 00  	sb	a1, 0(a0)
80002258: 6f 00 80 00  	j	0x80002260 <.LBB4_90+0x174>
8000225c: 13 04 05 00  	mv	s0, a0
80002260: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002264: 93 02 04 00  	mv	t0, s0
80002268: 63 64 85 00  	bltu	a0, s0, 0x80002270 <.LBB4_90+0x184>
8000226c: 93 02 00 02  	addi	t0, zero, 32
80002270: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002274: 37 65 66 66  	lui	a0, 419430
80002278: 93 05 75 66  	addi	a1, a0, 1639
8000227c: 13 08 a0 00  	addi	a6, zero, 10
80002280: 93 06 81 00  	addi	a3, sp, 8
80002284: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002288: 63 80 82 04  	beq	t0, s0, 0x800022c8 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
8000228c: 33 95 b4 02  	mulh	a0, s1, a1
80002290: 93 57 f5 01  	srli	a5, a0, 31
80002294: 13 55 25 40  	srai	a0, a0, 2
80002298: 33 05 f5 00  	add	a0, a0, a5
8000229c: b3 07 05 03  	mul	a5, a0, a6
800022a0: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
800022a4: 93 87 07 03  	addi	a5, a5, 48
800022a8: 13 0c 14 00  	addi	s8, s0, 1
800022ac: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
800022b0: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
800022b4: 23 00 f4 00  	sb	a5, 0(s0)
800022b8: 13 04 0c 00  	mv	s0, s8
800022bc: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
800022c0: e3 64 c7 fc  	bltu	a4, a2, 0x80002288 <.LBB4_90+0x19c>
800022c4: 6f 00 80 00  	j	0x800022cc <.LBB4_90+0x1e0>
800022c8: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800022cc: 93 f4 3a 00  	andi	s1, s5, 3
800022d0: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800022d4: 63 96 a4 06  	bne	s1, a0, 0x80002340 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800022d8: 63 0c 09 00  	beqz	s2, 0x800022f0 <.LBB4_90+0x204>
800022dc: 13 f5 ca 00  	andi	a0, s5, 12
800022e0: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800022e4: 33 e5 ac 00  	or	a0, s9, a0
800022e8: 33 09 a9 40  	sub	s2, s2, a0
800022ec: 6f 00 80 00  	j	0x800022f4 <.LBB4_90+0x208>
800022f0: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800022f4: 33 35 2c 01  	sltu	a0, s8, s2
800022f8: 93 45 15 00  	xori	a1, a0, 1
800022fc: 13 05 f0 01  	addi	a0, zero, 31
80002300: 33 36 85 01  	sltu	a2, a0, s8
80002304: b3 65 b6 00  	or	a1, a2, a1
80002308: 63 9c 05 02  	bnez	a1, 0x80002340 <.LBB4_90+0x254>
8000230c: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002310: 93 45 fc ff  	not	a1, s8
80002314: b3 05 b9 00  	add	a1, s2, a1
80002318: 33 06 85 41  	sub	a2, a0, s8
8000231c: 33 85 86 01  	add	a0, a3, s8
80002320: 63 e4 c5 00  	bltu	a1, a2, 0x80002328 <.LBB4_90+0x23c>
80002324: 93 05 06 00  	mv	a1, a2
80002328: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
8000232c: 93 05 00 03  	addi	a1, zero, 48
80002330: 13 06 04 00  	mv	a2, s0
80002334: 97 e0 ff ff  	auipc	ra, 1048574
80002338: e7 80 40 22  	jalr	548(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000233c: 33 0c 84 01  	add	s8, s0, s8
80002340: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002344: 63 6a 85 05  	bltu	a0, s8, 0x80002398 <.LBB4_90+0x2ac>
;     if (negative) {
80002348: 63 8c 0c 00  	beqz	s9, 0x80002360 <.LBB4_90+0x274>
8000234c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002350: 33 05 85 01  	add	a0, a0, s8
80002354: 13 0c 1c 00  	addi	s8, s8, 1
80002358: 93 05 d0 02  	addi	a1, zero, 45
8000235c: 6f 00 80 03  	j	0x80002394 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002360: 13 f5 4a 00  	andi	a0, s5, 4
80002364: 63 10 05 02  	bnez	a0, 0x80002384 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002368: 13 f5 8a 00  	andi	a0, s5, 8
8000236c: 63 06 05 02  	beqz	a0, 0x80002398 <.LBB4_90+0x2ac>
80002370: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002374: 33 05 85 01  	add	a0, a0, s8
80002378: 13 0c 1c 00  	addi	s8, s8, 1
8000237c: 93 05 00 02  	addi	a1, zero, 32
80002380: 6f 00 40 01  	j	0x80002394 <.LBB4_90+0x2a8>
80002384: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002388: 33 05 85 01  	add	a0, a0, s8
8000238c: 13 0c 1c 00  	addi	s8, s8, 1
80002390: 93 05 b0 02  	addi	a1, zero, 43
80002394: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002398: 33 35 90 00  	snez	a0, s1
8000239c: b3 35 2c 01  	sltu	a1, s8, s2
800023a0: 93 c5 15 00  	xori	a1, a1, 1
800023a4: 33 65 b5 00  	or	a0, a0, a1
800023a8: 93 fa 2a 00  	andi	s5, s5, 2
800023ac: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800023b0: 63 16 05 02  	bnez	a0, 0x800023dc <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
800023b4: b3 04 89 41  	sub	s1, s2, s8
800023b8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800023bc: 13 04 16 00  	addi	s0, a2, 1
800023c0: 13 05 00 02  	addi	a0, zero, 32
800023c4: 93 05 0b 00  	mv	a1, s6
800023c8: 93 86 09 00  	mv	a3, s3
800023cc: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800023d0: 93 84 f4 ff  	addi	s1, s1, -1
800023d4: 13 06 04 00  	mv	a2, s0
800023d8: e3 92 04 fe  	bnez	s1, 0x800023bc <.LBB4_90+0x2d0>
800023dc: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800023e0: 63 0c 0c 02  	beqz	s8, 0x80002418 <.LBB4_90+0x32c>
800023e4: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800023e8: 33 85 8c 01  	add	a0, s9, s8
800023ec: 03 45 05 00  	lbu	a0, 0(a0)
800023f0: 13 0d fc ff  	addi	s10, s8, -1
800023f4: 93 04 14 00  	addi	s1, s0, 1
800023f8: 93 05 0b 00  	mv	a1, s6
800023fc: 13 06 04 00  	mv	a2, s0
80002400: 93 86 09 00  	mv	a3, s3
80002404: e7 80 0b 00  	jalr	s7
80002408: 13 84 04 00  	mv	s0, s1
8000240c: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002410: e3 1c 0d fc  	bnez	s10, 0x800023e8 <.LBB4_90+0x2fc>
80002414: 6f 00 80 00  	j	0x8000241c <.LBB4_90+0x330>
80002418: 93 04 04 00  	mv	s1, s0
8000241c: 33 85 44 41  	sub	a0, s1, s4
80002420: 33 35 25 01  	sltu	a0, a0, s2
80002424: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002428: 93 c5 1a 00  	xori	a1, s5, 1
8000242c: 33 e5 a5 00  	or	a0, a1, a0
80002430: 63 18 05 02  	bnez	a0, 0x80002460 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002434: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002438: 13 84 14 00  	addi	s0, s1, 1
8000243c: 13 05 00 02  	addi	a0, zero, 32
80002440: 93 05 0b 00  	mv	a1, s6
80002444: 13 86 04 00  	mv	a2, s1
80002448: 93 86 09 00  	mv	a3, s3
8000244c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002450: 33 05 8a 00  	add	a0, s4, s0
80002454: 93 04 04 00  	mv	s1, s0
80002458: e3 60 25 ff  	bltu	a0, s2, 0x80002438 <.LBB4_90+0x34c>
8000245c: 6f 00 80 00  	j	0x80002464 <.LBB4_90+0x378>
80002460: 13 84 04 00  	mv	s0, s1
; }
80002464: 13 05 04 00  	mv	a0, s0
80002468: 07 39 81 02  	fld	fs2, 40(sp)
8000246c: 87 34 01 03  	fld	fs1, 48(sp)
80002470: 07 34 81 03  	fld	fs0, 56(sp)
80002474: 03 2d 01 04  	lw	s10, 64(sp)
80002478: 83 2c 41 04  	lw	s9, 68(sp)
8000247c: 03 2c 81 04  	lw	s8, 72(sp)
80002480: 83 2b c1 04  	lw	s7, 76(sp)
80002484: 03 2b 01 05  	lw	s6, 80(sp)
80002488: 83 2a 41 05  	lw	s5, 84(sp)
8000248c: 03 2a 81 05  	lw	s4, 88(sp)
80002490: 83 29 c1 05  	lw	s3, 92(sp)
80002494: 03 29 01 06  	lw	s2, 96(sp)
80002498: 83 24 41 06  	lw	s1, 100(sp)
8000249c: 03 24 81 06  	lw	s0, 104(sp)
800024a0: 83 20 c1 06  	lw	ra, 108(sp)
800024a4: 13 01 01 07  	addi	sp, sp, 112
800024a8: 67 80 00 00  	ret

800024ac <_etoa>:
; {
800024ac: 13 01 01 f8  	addi	sp, sp, -128
800024b0: 23 2e 11 06  	sw	ra, 124(sp)
800024b4: 23 2c 81 06  	sw	s0, 120(sp)
800024b8: 23 2a 91 06  	sw	s1, 116(sp)
800024bc: 23 28 21 07  	sw	s2, 112(sp)
800024c0: 23 26 31 07  	sw	s3, 108(sp)
800024c4: 23 24 41 07  	sw	s4, 104(sp)
800024c8: 23 22 51 07  	sw	s5, 100(sp)
800024cc: 23 20 61 07  	sw	s6, 96(sp)
800024d0: 23 2e 71 05  	sw	s7, 92(sp)
800024d4: 23 2c 81 05  	sw	s8, 88(sp)
800024d8: 23 2a 91 05  	sw	s9, 84(sp)
800024dc: 23 28 a1 05  	sw	s10, 80(sp)
800024e0: 23 26 b1 05  	sw	s11, 76(sp)

800024e4 <.LBB5_43>:
800024e4: 97 14 00 00  	auipc	s1, 1
800024e8: 93 84 c4 21  	addi	s1, s1, 540
800024ec: 87 b0 04 00  	fld	ft1, 0(s1)

800024f0 <.LBB5_44>:
800024f0: 97 14 00 00  	auipc	s1, 1
800024f4: 93 84 84 21  	addi	s1, s1, 536
800024f8: 07 b1 04 00  	fld	ft2, 0(s1)
800024fc: 53 00 a5 22  	fmv.d	ft0, fa0
80002500: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002504: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002508: b3 f4 84 00  	and	s1, s1, s0
8000250c: 93 0a 08 00  	mv	s5, a6
80002510: 13 89 07 00  	mv	s2, a5
80002514: 93 07 07 00  	mv	a5, a4
80002518: 93 89 06 00  	mv	s3, a3
8000251c: 13 0a 06 00  	mv	s4, a2
80002520: 13 8b 05 00  	mv	s6, a1
80002524: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002528: 63 92 04 06  	bnez	s1, 0x8000258c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000252c: 13 85 0b 00  	mv	a0, s7
80002530: 93 05 0b 00  	mv	a1, s6
80002534: 13 06 0a 00  	mv	a2, s4
80002538: 93 86 09 00  	mv	a3, s3
8000253c: 53 05 00 22  	fmv.d	fa0, ft0
80002540: 13 87 07 00  	mv	a4, a5
80002544: 93 07 09 00  	mv	a5, s2
80002548: 13 88 0a 00  	mv	a6, s5
8000254c: 83 2d c1 04  	lw	s11, 76(sp)
80002550: 03 2d 01 05  	lw	s10, 80(sp)
80002554: 83 2c 41 05  	lw	s9, 84(sp)
80002558: 03 2c 81 05  	lw	s8, 88(sp)
8000255c: 83 2b c1 05  	lw	s7, 92(sp)
80002560: 03 2b 01 06  	lw	s6, 96(sp)
80002564: 83 2a 41 06  	lw	s5, 100(sp)
80002568: 03 2a 81 06  	lw	s4, 104(sp)
8000256c: 83 29 c1 06  	lw	s3, 108(sp)
80002570: 03 29 01 07  	lw	s2, 112(sp)
80002574: 83 24 41 07  	lw	s1, 116(sp)
80002578: 03 24 81 07  	lw	s0, 120(sp)
8000257c: 83 20 c1 07  	lw	ra, 124(sp)
80002580: 13 01 01 08  	addi	sp, sp, 128
80002584: 17 03 00 00  	auipc	t1, 0
80002588: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
8000258c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002590: 13 f5 0a 40  	andi	a0, s5, 1024
80002594: 13 07 60 00  	addi	a4, zero, 6
80002598: 63 04 05 00  	beqz	a0, 0x800025a0 <.LBB5_44+0xb0>
8000259c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
800025a0: 27 30 a1 02  	fsd	fa0, 32(sp)
800025a4: 83 25 41 02  	lw	a1, 36(sp)
800025a8: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800025ac: 93 d6 45 01  	srli	a3, a1, 20
800025b0: b7 07 10 00  	lui	a5, 256
800025b4: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800025b8: b3 f5 f5 00  	and	a1, a1, a5
800025bc: 23 2c c1 00  	sw	a2, 24(sp)
800025c0: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800025c4: b3 e5 c5 00  	or	a1, a1, a2
800025c8: 23 2e b1 00  	sw	a1, 28(sp)
800025cc: 87 30 81 01  	fld	ft1, 24(sp)

800025d0 <.LBB5_45>:
800025d0: 97 15 00 00  	auipc	a1, 1
800025d4: 93 85 05 14  	addi	a1, a1, 320
800025d8: 07 b1 05 00  	fld	ft2, 0(a1)

800025dc <.LBB5_46>:
800025dc: 97 15 00 00  	auipc	a1, 1
800025e0: 93 85 c5 13  	addi	a1, a1, 316
800025e4: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800025e8: 93 f5 f6 7f  	andi	a1, a3, 2047
800025ec: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800025f0: 53 82 05 d2  	fcvt.d.w	ft4, a1
800025f4: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800025f8 <.LBB5_47>:
800025f8: 97 15 00 00  	auipc	a1, 1
800025fc: 93 85 85 12  	addi	a1, a1, 296
80002600: 07 b1 05 00  	fld	ft2, 0(a1)

80002604 <.LBB5_48>:
80002604: 97 15 00 00  	auipc	a1, 1
80002608: 93 85 45 12  	addi	a1, a1, 292
8000260c: 87 b1 05 00  	fld	ft3, 0(a1)

80002610 <.LBB5_49>:
80002610: 97 15 00 00  	auipc	a1, 1
80002614: 93 85 05 12  	addi	a1, a1, 288
80002618: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000261c: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002620: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002624: d3 80 05 d2  	fcvt.d.w	ft1, a1
80002628: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

8000262c <.LBB5_50>:
8000262c: 17 16 00 00  	auipc	a2, 1
80002630: 13 06 c6 10  	addi	a2, a2, 268
80002634: 87 31 06 00  	fld	ft3, 0(a2)

80002638 <.LBB5_51>:
80002638: 17 16 00 00  	auipc	a2, 1
8000263c: 13 06 86 10  	addi	a2, a2, 264
80002640: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002644: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80002648: 53 01 06 d2  	fcvt.d.w	ft2, a2
8000264c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002650: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002654: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002658: 13 06 f6 3f  	addi	a2, a2, 1023
8000265c: 23 28 01 00  	sw	zero, 16(sp)
80002660: 13 16 46 01  	slli	a2, a2, 20
80002664: 23 2a c1 00  	sw	a2, 20(sp)

80002668 <.LBB5_52>:
80002668: 17 16 00 00  	auipc	a2, 1
8000266c: 13 06 86 0e  	addi	a2, a2, 232
80002670: 87 31 06 00  	fld	ft3, 0(a2)

80002674 <.LBB5_53>:
80002674: 17 16 00 00  	auipc	a2, 1
80002678: 13 06 46 0e  	addi	a2, a2, 228
8000267c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002680: 87 32 01 01  	fld	ft5, 16(sp)

80002684 <.LBB5_54>:
80002684: 17 16 00 00  	auipc	a2, 1
80002688: 13 06 46 0c  	addi	a2, a2, 196
8000268c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002690: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002694 <.LBB5_55>:
80002694: 17 16 00 00  	auipc	a2, 1
80002698: 13 06 c6 0c  	addi	a2, a2, 204
8000269c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800026a0: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
800026a4: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
800026a8: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
800026ac: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
800026b0: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
800026b4: 53 71 23 02  	fadd.d	ft2, ft6, ft2
800026b8: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
800026bc: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
800026c0: 53 16 15 a2  	flt.d	a2, fa0, ft1
800026c4: 63 0a 06 00  	beqz	a2, 0x800026d8 <.LBB5_56+0x10>

800026c8 <.LBB5_56>:
800026c8: 97 16 00 00  	auipc	a3, 1
800026cc: 93 86 06 0a  	addi	a3, a3, 160
800026d0: 07 b1 06 00  	fld	ft2, 0(a3)
800026d4: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800026d8: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800026dc: 93 05 34 06  	addi	a1, s0, 99
800026e0: 93 b5 75 0c  	sltiu	a1, a1, 199
800026e4: 13 06 50 00  	addi	a2, zero, 5
800026e8: b7 16 00 00  	lui	a3, 1
800026ec: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800026f0: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800026f4: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800026f8: 63 84 06 06  	beqz	a3, 0x80002760 <.LBB5_58+0x58>

800026fc <.LBB5_57>:
800026fc: 97 15 00 00  	auipc	a1, 1
80002700: 93 85 45 07  	addi	a1, a1, 116
80002704: 07 b1 05 00  	fld	ft2, 0(a1)

80002708 <.LBB5_58>:
80002708: 97 15 00 00  	auipc	a1, 1
8000270c: 93 85 05 07  	addi	a1, a1, 112
80002710: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80002714: d3 15 25 a2  	flt.d	a1, fa0, ft2
80002718: 53 86 a1 a2  	fle.d	a2, ft3, fa0
8000271c: b3 e5 c5 00  	or	a1, a1, a2
80002720: 63 98 05 00  	bnez	a1, 0x80002730 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002724: 63 40 e4 02  	blt	s0, a4, 0x80002744 <.LBB5_58+0x3c>
80002728: 13 07 00 00  	mv	a4, zero
8000272c: 6f 00 00 02  	j	0x8000274c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002730: 63 06 07 02  	beqz	a4, 0x8000275c <.LBB5_58+0x54>
80002734: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002738: 13 45 15 00  	xori	a0, a0, 1
8000273c: 33 07 a7 40  	sub	a4, a4, a0
80002740: 6f 00 00 02  	j	0x80002760 <.LBB5_58+0x58>
80002744: 13 45 f4 ff  	not	a0, s0
80002748: 33 07 a7 00  	add	a4, a4, a0
8000274c: 13 04 00 00  	mv	s0, zero
80002750: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80002754: 93 ea 0a 40  	ori	s5, s5, 1024
80002758: 6f 00 80 00  	j	0x80002760 <.LBB5_58+0x58>
8000275c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002760: b3 05 99 41  	sub	a1, s2, s9
80002764: 33 36 b9 00  	sltu	a2, s2, a1
80002768: 13 05 00 00  	mv	a0, zero
8000276c: 63 14 06 00  	bnez	a2, 0x80002774 <.LBB5_58+0x6c>
80002770: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002774: 93 07 00 00  	mv	a5, zero
80002778: 93 d5 1a 00  	srli	a1, s5, 1
8000277c: 93 f4 15 00  	andi	s1, a1, 1
80002780: b3 35 90 01  	snez	a1, s9
80002784: b3 f5 b4 00  	and	a1, s1, a1
80002788: 53 01 00 d2  	fcvt.d.w	ft2, zero
8000278c: 63 94 05 00  	bnez	a1, 0x80002794 <.LBB5_58+0x8c>
80002790: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002794: 93 35 14 00  	seqz	a1, s0
80002798: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
8000279c: 63 94 05 00  	bnez	a1, 0x800027a4 <.LBB5_58+0x9c>
800027a0: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
800027a4: 63 04 05 00  	beqz	a0, 0x800027ac <.LBB5_58+0xa4>
800027a8: 53 15 a5 22  	fneg.d	fa0, fa0
800027ac: 37 f5 ff ff  	lui	a0, 1048575
800027b0: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
800027b4: 33 f8 aa 00  	and	a6, s5, a0
800027b8: 13 85 0b 00  	mv	a0, s7
800027bc: 93 05 0b 00  	mv	a1, s6
800027c0: 13 06 0a 00  	mv	a2, s4
800027c4: 93 86 09 00  	mv	a3, s3
800027c8: 97 f0 ff ff  	auipc	ra, 1048575
800027cc: e7 80 40 60  	jalr	1540(ra)
800027d0: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800027d4: 63 82 0c 18  	beqz	s9, 0x80002958 <.LBB5_58+0x250>
800027d8: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800027dc: 13 f5 0a 02  	andi	a0, s5, 32
800027e0: 13 45 55 06  	xori	a0, a0, 101
800027e4: 93 05 0b 00  	mv	a1, s6
800027e8: 13 06 0d 00  	mv	a2, s10
800027ec: 93 86 09 00  	mv	a3, s3
800027f0: e7 80 0b 00  	jalr	s7
800027f4: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800027f8: 93 5a f4 01  	srli	s5, s0, 31
800027fc: 13 55 f4 41  	srai	a0, s0, 31
80002800: b3 05 a4 00  	add	a1, s0, a0
80002804: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80002808: 93 8d dc ff  	addi	s11, s9, -3
8000280c: 13 04 f0 01  	addi	s0, zero, 31
80002810: 37 d5 cc cc  	lui	a0, 838861
80002814: 13 05 d5 cc  	addi	a0, a0, -819
80002818: 13 08 a0 00  	addi	a6, zero, 10
8000281c: 93 08 c1 02  	addi	a7, sp, 44
80002820: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80002824: b3 37 a7 02  	mulhu	a5, a4, a0
80002828: 93 d5 37 00  	srli	a1, a5, 3
8000282c: b3 87 05 03  	mul	a5, a1, a6
80002830: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002834: 13 e6 07 03  	ori	a2, a5, 48
80002838: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000283c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002840: 13 0c 1c 00  	addi	s8, s8, 1
80002844: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002848: 33 b6 e2 00  	sltu	a2, t0, a4
8000284c: 33 f6 c7 00  	and	a2, a5, a2
80002850: 93 8d fd ff  	addi	s11, s11, -1
80002854: 13 04 f4 ff  	addi	s0, s0, -1
80002858: 13 87 05 00  	mv	a4, a1
8000285c: e3 14 06 fc  	bnez	a2, 0x80002824 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002860: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002864: 33 35 ac 00  	sltu	a0, s8, a0
80002868: 13 45 15 00  	xori	a0, a0, 1
8000286c: 93 c5 17 00  	xori	a1, a5, 1
80002870: 33 e5 a5 00  	or	a0, a1, a0
80002874: 63 12 05 04  	bnez	a0, 0x800028b8 <.LBB5_58+0x1b0>
80002878: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000287c: b3 85 8c 41  	sub	a1, s9, s8
80002880: 93 85 d5 ff  	addi	a1, a1, -3
80002884: 13 06 f0 01  	addi	a2, zero, 31
80002888: 33 06 86 41  	sub	a2, a2, s8
8000288c: 33 05 85 01  	add	a0, a0, s8
80002890: 63 e4 c5 00  	bltu	a1, a2, 0x80002898 <.LBB5_58+0x190>
80002894: 93 05 06 00  	mv	a1, a2
80002898: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000289c: 93 05 00 03  	addi	a1, zero, 48
800028a0: 97 e0 ff ff  	auipc	ra, 1048574
800028a4: e7 80 80 cb  	jalr	-840(ra)
;   if (flags & FLAGS_HASH) {
800028a8: 63 e4 8d 00  	bltu	s11, s0, 0x800028b0 <.LBB5_58+0x1a8>
800028ac: 93 0d 04 00  	mv	s11, s0
800028b0: 33 85 8d 01  	add	a0, s11, s8
800028b4: 13 0c 15 00  	addi	s8, a0, 1
800028b8: 83 2c c1 00  	lw	s9, 12(sp)
800028bc: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800028c0: 63 60 85 03  	bltu	a0, s8, 0x800028e0 <.LBB5_58+0x1d8>
800028c4: 13 05 c1 02  	addi	a0, sp, 44
800028c8: 33 05 85 01  	add	a0, a0, s8
800028cc: 93 05 d0 02  	addi	a1, zero, 45
800028d0: 63 94 0a 00  	bnez	s5, 0x800028d8 <.LBB5_58+0x1d0>
800028d4: 93 05 b0 02  	addi	a1, zero, 43
800028d8: 13 0c 1c 00  	addi	s8, s8, 1
800028dc: 23 00 b5 00  	sb	a1, 0(a0)
800028e0: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800028e4: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800028e8: 33 85 8a 01  	add	a0, s5, s8
800028ec: 03 45 05 00  	lbu	a0, 0(a0)
800028f0: 13 06 04 00  	mv	a2, s0
800028f4: 93 04 fc ff  	addi	s1, s8, -1
800028f8: 13 04 14 00  	addi	s0, s0, 1
800028fc: 93 05 0b 00  	mv	a1, s6
80002900: 93 86 09 00  	mv	a3, s3
80002904: e7 80 0b 00  	jalr	s7
80002908: 13 8c 04 00  	mv	s8, s1
;   while (len) {
8000290c: e3 9e 04 fc  	bnez	s1, 0x800028e8 <.LBB5_58+0x1e0>
80002910: 33 05 44 41  	sub	a0, s0, s4
80002914: 33 35 25 01  	sltu	a0, a0, s2
80002918: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
8000291c: 93 c5 1c 00  	xori	a1, s9, 1
80002920: 33 e5 a5 00  	or	a0, a1, a0
80002924: 63 18 05 02  	bnez	a0, 0x80002954 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80002928: b3 04 40 41  	neg	s1, s4
8000292c: 13 0d 14 00  	addi	s10, s0, 1
80002930: 13 05 00 02  	addi	a0, zero, 32
80002934: 93 05 0b 00  	mv	a1, s6
80002938: 13 06 04 00  	mv	a2, s0
8000293c: 93 86 09 00  	mv	a3, s3
80002940: e7 80 0b 00  	jalr	s7
80002944: 33 85 a4 01  	add	a0, s1, s10
80002948: 13 04 0d 00  	mv	s0, s10
8000294c: e3 60 25 ff  	bltu	a0, s2, 0x8000292c <.LBB5_58+0x224>
80002950: 6f 00 80 00  	j	0x80002958 <.LBB5_58+0x250>
80002954: 13 0d 04 00  	mv	s10, s0
; }
80002958: 13 05 0d 00  	mv	a0, s10
8000295c: 83 2d c1 04  	lw	s11, 76(sp)
80002960: 03 2d 01 05  	lw	s10, 80(sp)
80002964: 83 2c 41 05  	lw	s9, 84(sp)
80002968: 03 2c 81 05  	lw	s8, 88(sp)
8000296c: 83 2b c1 05  	lw	s7, 92(sp)
80002970: 03 2b 01 06  	lw	s6, 96(sp)
80002974: 83 2a 41 06  	lw	s5, 100(sp)
80002978: 03 2a 81 06  	lw	s4, 104(sp)
8000297c: 83 29 c1 06  	lw	s3, 108(sp)
80002980: 03 29 01 07  	lw	s2, 112(sp)
80002984: 83 24 41 07  	lw	s1, 116(sp)
80002988: 03 24 81 07  	lw	s0, 120(sp)
8000298c: 83 20 c1 07  	lw	ra, 124(sp)
80002990: 13 01 01 08  	addi	sp, sp, 128
80002994: 67 80 00 00  	ret

80002998 <_ntoa_format>:
; {
80002998: 13 01 01 fc  	addi	sp, sp, -64
8000299c: 23 2e 11 02  	sw	ra, 60(sp)
800029a0: 23 2c 81 02  	sw	s0, 56(sp)
800029a4: 23 2a 91 02  	sw	s1, 52(sp)
800029a8: 23 28 21 03  	sw	s2, 48(sp)
800029ac: 23 26 31 03  	sw	s3, 44(sp)
800029b0: 23 24 41 03  	sw	s4, 40(sp)
800029b4: 23 22 51 03  	sw	s5, 36(sp)
800029b8: 23 20 61 03  	sw	s6, 32(sp)
800029bc: 23 2e 71 01  	sw	s7, 28(sp)
800029c0: 23 2c 81 01  	sw	s8, 24(sp)
800029c4: 23 2a 91 01  	sw	s9, 20(sp)
800029c8: 23 28 a1 01  	sw	s10, 16(sp)
800029cc: 23 26 b1 01  	sw	s11, 12(sp)
800029d0: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800029d4: 93 fa 2e 00  	andi	s5, t4, 2
800029d8: 13 09 0e 00  	mv	s2, t3
800029dc: 13 8d 03 00  	mv	s10, t2
800029e0: 93 8c 08 00  	mv	s9, a7
800029e4: 13 8c 07 00  	mv	s8, a5
800029e8: 93 89 06 00  	mv	s3, a3
800029ec: 13 0a 06 00  	mv	s4, a2
800029f0: 13 8b 05 00  	mv	s6, a1
800029f4: 93 0d 05 00  	mv	s11, a0
800029f8: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800029fc: 63 9e 0a 0c  	bnez	s5, 0x80002ad8 <_ntoa_format+0x140>
80002a00: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002a04: 63 0e 09 00  	beqz	s2, 0x80002a20 <_ntoa_format+0x88>
80002a08: 63 0e 04 00  	beqz	s0, 0x80002a24 <_ntoa_format+0x8c>
80002a0c: 13 f5 cb 00  	andi	a0, s7, 12
80002a10: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002a14: 33 65 05 01  	or	a0, a0, a6
80002a18: 33 09 a9 40  	sub	s2, s2, a0
80002a1c: 6f 00 80 00  	j	0x80002a24 <_ntoa_format+0x8c>
80002a20: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002a24: 33 35 ac 01  	sltu	a0, s8, s10
80002a28: 93 45 15 00  	xori	a1, a0, 1
80002a2c: 13 05 f0 01  	addi	a0, zero, 31
80002a30: 33 36 85 01  	sltu	a2, a0, s8
80002a34: b3 65 b6 00  	or	a1, a2, a1
80002a38: 63 94 05 04  	bnez	a1, 0x80002a80 <_ntoa_format+0xe8>
80002a3c: 23 22 51 01  	sw	s5, 4(sp)
80002a40: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002a44: 93 45 fc ff  	not	a1, s8
80002a48: b3 85 a5 01  	add	a1, a1, s10
80002a4c: 33 06 85 41  	sub	a2, a0, s8
80002a50: 33 05 87 01  	add	a0, a4, s8
80002a54: 63 e4 c5 00  	bltu	a1, a2, 0x80002a5c <_ntoa_format+0xc4>
80002a58: 93 05 06 00  	mv	a1, a2
80002a5c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002a60: 93 05 00 03  	addi	a1, zero, 48
80002a64: 13 86 04 00  	mv	a2, s1
80002a68: 97 e0 ff ff  	auipc	ra, 1048574
80002a6c: e7 80 00 af  	jalr	-1296(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002a70: 33 8c 84 01  	add	s8, s1, s8
80002a74: 03 27 81 00  	lw	a4, 8(sp)
80002a78: 13 88 0a 00  	mv	a6, s5
80002a7c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002a80: 63 0c 04 04  	beqz	s0, 0x80002ad8 <_ntoa_format+0x140>
80002a84: 33 35 2c 01  	sltu	a0, s8, s2
80002a88: 93 45 15 00  	xori	a1, a0, 1
80002a8c: 13 05 f0 01  	addi	a0, zero, 31
80002a90: 33 36 85 01  	sltu	a2, a0, s8
80002a94: b3 e5 c5 00  	or	a1, a1, a2
80002a98: 63 90 05 04  	bnez	a1, 0x80002ad8 <_ntoa_format+0x140>
80002a9c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002aa0: 93 45 fc ff  	not	a1, s8
80002aa4: b3 05 b9 00  	add	a1, s2, a1
80002aa8: 33 06 85 41  	sub	a2, a0, s8
80002aac: 33 05 87 01  	add	a0, a4, s8
80002ab0: 63 e4 c5 00  	bltu	a1, a2, 0x80002ab8 <_ntoa_format+0x120>
80002ab4: 93 05 06 00  	mv	a1, a2
80002ab8: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002abc: 93 05 00 03  	addi	a1, zero, 48
80002ac0: 13 86 04 00  	mv	a2, s1
80002ac4: 97 e0 ff ff  	auipc	ra, 1048574
80002ac8: e7 80 40 a9  	jalr	-1388(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002acc: 33 8c 84 01  	add	s8, s1, s8
80002ad0: 03 27 81 00  	lw	a4, 8(sp)
80002ad4: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80002ad8: 13 f5 0b 01  	andi	a0, s7, 16
80002adc: 63 02 05 0e  	beqz	a0, 0x80002bc0 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002ae0: 13 f5 0b 40  	andi	a0, s7, 1024
80002ae4: 13 55 a5 00  	srli	a0, a0, 10
80002ae8: 93 35 1c 00  	seqz	a1, s8
80002aec: 33 65 b5 00  	or	a0, a0, a1
80002af0: 63 1e 05 02  	bnez	a0, 0x80002b2c <_ntoa_format+0x194>
80002af4: 33 45 ac 01  	xor	a0, s8, s10
80002af8: 33 35 a0 00  	snez	a0, a0
80002afc: b3 45 2c 01  	xor	a1, s8, s2
80002b00: b3 35 b0 00  	snez	a1, a1
80002b04: 33 75 b5 00  	and	a0, a0, a1
80002b08: 63 12 05 02  	bnez	a0, 0x80002b2c <_ntoa_format+0x194>
;       len--;
80002b0c: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002b10: b3 35 a0 00  	snez	a1, a0
80002b14: 13 86 0c ff  	addi	a2, s9, -16
80002b18: 13 36 16 00  	seqz	a2, a2
80002b1c: b3 75 b6 00  	and	a1, a2, a1
80002b20: 63 84 05 00  	beqz	a1, 0x80002b28 <_ntoa_format+0x190>
80002b24: 13 05 ec ff  	addi	a0, s8, -2
80002b28: 13 0c 05 00  	mv	s8, a0
80002b2c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002b30: 63 96 ac 02  	bne	s9, a0, 0x80002b5c <_ntoa_format+0x1c4>
80002b34: 13 f5 0b 02  	andi	a0, s7, 32
80002b38: 93 55 55 00  	srli	a1, a0, 5
80002b3c: 13 06 f0 01  	addi	a2, zero, 31
80002b40: 33 36 86 01  	sltu	a2, a2, s8
80002b44: b3 e5 c5 00  	or	a1, a1, a2
80002b48: 63 9e 05 02  	bnez	a1, 0x80002b84 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002b4c: 33 05 87 01  	add	a0, a4, s8
80002b50: 13 0c 1c 00  	addi	s8, s8, 1
80002b54: 93 05 80 07  	addi	a1, zero, 120
80002b58: 6f 00 c0 04  	j	0x80002ba4 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002b5c: 13 85 ec ff  	addi	a0, s9, -2
80002b60: 33 35 a0 00  	snez	a0, a0
80002b64: 93 05 f0 01  	addi	a1, zero, 31
80002b68: b3 b5 85 01  	sltu	a1, a1, s8
80002b6c: 33 65 b5 00  	or	a0, a0, a1
80002b70: 63 1c 05 02  	bnez	a0, 0x80002ba8 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002b74: 33 05 87 01  	add	a0, a4, s8
80002b78: 13 0c 1c 00  	addi	s8, s8, 1
80002b7c: 93 05 20 06  	addi	a1, zero, 98
80002b80: 6f 00 40 02  	j	0x80002ba4 <_ntoa_format+0x20c>
80002b84: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002b88: 13 35 15 00  	seqz	a0, a0
80002b8c: 93 c5 15 00  	xori	a1, a1, 1
80002b90: 33 65 b5 00  	or	a0, a0, a1
80002b94: 63 1a 05 00  	bnez	a0, 0x80002ba8 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80002b98: 33 05 87 01  	add	a0, a4, s8
80002b9c: 13 0c 1c 00  	addi	s8, s8, 1
80002ba0: 93 05 80 05  	addi	a1, zero, 88
80002ba4: 23 00 b5 00  	sb	a1, 0(a0)
80002ba8: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002bac: 63 60 85 07  	bltu	a0, s8, 0x80002c0c <_ntoa_format+0x274>
;       buf[len++] = '0';
80002bb0: 33 05 87 01  	add	a0, a4, s8
80002bb4: 13 0c 1c 00  	addi	s8, s8, 1
80002bb8: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80002bbc: 23 00 b5 00  	sb	a1, 0(a0)
80002bc0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002bc4: 63 64 85 05  	bltu	a0, s8, 0x80002c0c <_ntoa_format+0x274>
;     if (negative) {
80002bc8: 63 0a 08 00  	beqz	a6, 0x80002bdc <_ntoa_format+0x244>
;       buf[len++] = '-';
80002bcc: 33 05 87 01  	add	a0, a4, s8
80002bd0: 13 0c 1c 00  	addi	s8, s8, 1
80002bd4: 93 05 d0 02  	addi	a1, zero, 45
80002bd8: 6f 00 00 03  	j	0x80002c08 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80002bdc: 13 f5 4b 00  	andi	a0, s7, 4
80002be0: 63 1e 05 00  	bnez	a0, 0x80002bfc <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80002be4: 13 f5 8b 00  	andi	a0, s7, 8
80002be8: 63 02 05 02  	beqz	a0, 0x80002c0c <_ntoa_format+0x274>
;       buf[len++] = ' ';
80002bec: 33 05 87 01  	add	a0, a4, s8
80002bf0: 13 0c 1c 00  	addi	s8, s8, 1
80002bf4: 93 05 00 02  	addi	a1, zero, 32
80002bf8: 6f 00 00 01  	j	0x80002c08 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002bfc: 33 05 87 01  	add	a0, a4, s8
80002c00: 13 0c 1c 00  	addi	s8, s8, 1
80002c04: 93 05 b0 02  	addi	a1, zero, 43
80002c08: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002c0c: 13 f5 3b 00  	andi	a0, s7, 3
80002c10: 33 35 a0 00  	snez	a0, a0
80002c14: b3 35 2c 01  	sltu	a1, s8, s2
80002c18: 93 c5 15 00  	xori	a1, a1, 1
80002c1c: 33 65 b5 00  	or	a0, a0, a1
80002c20: 13 04 0a 00  	mv	s0, s4
80002c24: 63 16 05 02  	bnez	a0, 0x80002c50 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80002c28: b3 04 89 41  	sub	s1, s2, s8
80002c2c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002c30: 13 04 16 00  	addi	s0, a2, 1
80002c34: 13 05 00 02  	addi	a0, zero, 32
80002c38: 93 05 0b 00  	mv	a1, s6
80002c3c: 93 86 09 00  	mv	a3, s3
80002c40: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002c44: 93 84 f4 ff  	addi	s1, s1, -1
80002c48: 13 06 04 00  	mv	a2, s0
80002c4c: e3 92 04 fe  	bnez	s1, 0x80002c30 <_ntoa_format+0x298>
80002c50: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002c54: 63 0e 0c 02  	beqz	s8, 0x80002c90 <_ntoa_format+0x2f8>
80002c58: 03 25 81 00  	lw	a0, 8(sp)
80002c5c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002c60: 33 85 8b 01  	add	a0, s7, s8
80002c64: 03 45 05 00  	lbu	a0, 0(a0)
80002c68: 93 0c fc ff  	addi	s9, s8, -1
80002c6c: 93 04 14 00  	addi	s1, s0, 1
80002c70: 93 05 0b 00  	mv	a1, s6
80002c74: 13 06 04 00  	mv	a2, s0
80002c78: 93 86 09 00  	mv	a3, s3
80002c7c: e7 80 0d 00  	jalr	s11
80002c80: 13 84 04 00  	mv	s0, s1
80002c84: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002c88: e3 9c 0c fc  	bnez	s9, 0x80002c60 <_ntoa_format+0x2c8>
80002c8c: 6f 00 80 00  	j	0x80002c94 <_ntoa_format+0x2fc>
80002c90: 93 04 04 00  	mv	s1, s0
80002c94: 33 85 44 41  	sub	a0, s1, s4
80002c98: 33 35 25 01  	sltu	a0, a0, s2
80002c9c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002ca0: 93 c5 1a 00  	xori	a1, s5, 1
80002ca4: 33 e5 a5 00  	or	a0, a1, a0
80002ca8: 63 18 05 02  	bnez	a0, 0x80002cd8 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002cac: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002cb0: 13 84 14 00  	addi	s0, s1, 1
80002cb4: 13 05 00 02  	addi	a0, zero, 32
80002cb8: 93 05 0b 00  	mv	a1, s6
80002cbc: 13 86 04 00  	mv	a2, s1
80002cc0: 93 86 09 00  	mv	a3, s3
80002cc4: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002cc8: 33 05 8a 00  	add	a0, s4, s0
80002ccc: 93 04 04 00  	mv	s1, s0
80002cd0: e3 60 25 ff  	bltu	a0, s2, 0x80002cb0 <_ntoa_format+0x318>
80002cd4: 6f 00 80 00  	j	0x80002cdc <_ntoa_format+0x344>
80002cd8: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002cdc: 13 05 04 00  	mv	a0, s0
80002ce0: 83 2d c1 00  	lw	s11, 12(sp)
80002ce4: 03 2d 01 01  	lw	s10, 16(sp)
80002ce8: 83 2c 41 01  	lw	s9, 20(sp)
80002cec: 03 2c 81 01  	lw	s8, 24(sp)
80002cf0: 83 2b c1 01  	lw	s7, 28(sp)
80002cf4: 03 2b 01 02  	lw	s6, 32(sp)
80002cf8: 83 2a 41 02  	lw	s5, 36(sp)
80002cfc: 03 2a 81 02  	lw	s4, 40(sp)
80002d00: 83 29 c1 02  	lw	s3, 44(sp)
80002d04: 03 29 01 03  	lw	s2, 48(sp)
80002d08: 83 24 41 03  	lw	s1, 52(sp)
80002d0c: 03 24 81 03  	lw	s0, 56(sp)
80002d10: 83 20 c1 03  	lw	ra, 60(sp)
80002d14: 13 01 01 04  	addi	sp, sp, 64
80002d18: 67 80 00 00  	ret

80002d1c <_snrt_init_team>:
;     team->base.root = team;
80002d1c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002d20: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002d24: 03 23 87 00  	lw	t1, 8(a4)
80002d28: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002d2c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002d30: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002d34: 83 22 47 00  	lw	t0, 4(a4)
80002d38: 33 88 08 03  	mul	a6, a7, a6
80002d3c: 33 05 58 02  	mul	a0, a6, t0
80002d40: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002d44: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002d48: 33 85 68 40  	sub	a0, a7, t1
80002d4c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002d50: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002d54: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002d58: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002d5c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002d60: 03 25 87 01  	lw	a0, 24(a4)
80002d64: b7 05 00 10  	lui	a1, 65536
80002d68: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002d6c: 23 a2 07 02  	sw	zero, 36(a5)
80002d70: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002d74: 03 25 07 02  	lw	a0, 32(a4)
80002d78: 83 25 47 02  	lw	a1, 36(a4)
80002d7c: 23 a4 a7 02  	sw	a0, 40(a5)
80002d80: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002d84: 23 a8 c7 02  	sw	a2, 48(a5)
80002d88: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002d8c: 23 ac d7 02  	sw	a3, 56(a5)
80002d90: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002d94: 03 25 07 01  	lw	a0, 16(a4)
80002d98: 33 08 a6 00  	add	a6, a2, a0
80002d9c: 93 05 08 19  	addi	a1, a6, 400
80002da0: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002da4: b3 32 a8 00  	sltu	t0, a6, a0
80002da8: 93 55 15 00  	srli	a1, a0, 1
80002dac: 33 03 b8 00  	add	t1, a6, a1
80002db0: b3 35 03 01  	sltu	a1, t1, a6
80002db4: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80002db8: 23 a0 67 04  	sw	t1, 64(a5)
80002dbc: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002dc0: 13 15 15 00  	slli	a0, a0, 1
80002dc4: b3 05 c5 00  	add	a1, a0, a2
80002dc8: 33 b5 a5 00  	sltu	a0, a1, a0
80002dcc: 23 a4 b7 04  	sw	a1, 72(a5)
80002dd0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80002dd4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80002dd8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80002ddc: 37 05 00 00  	lui	a0, 0
80002de0: 33 05 45 00  	add	a0, a0, tp
80002de4: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002de8: 03 a5 07 00  	lw	a0, 0(a5)
80002dec: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002df0: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002df4: b3 85 b8 40  	sub	a1, a7, a1
80002df8: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80002dfc: b7 05 00 00  	lui	a1, 0
80002e00: b3 85 45 00  	add	a1, a1, tp
80002e04: 23 a2 a5 00  	sw	a0, 4(a1)
80002e08: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80002e0c: 33 85 a8 02  	mul	a0, a7, a0

80002e10 <.LBB0_1>:
80002e10: 97 15 00 00  	auipc	a1, 1
80002e14: 93 85 45 97  	addi	a1, a1, -1676
80002e18: 33 05 b5 00  	add	a0, a0, a1
80002e1c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80002e20: 83 28 07 03  	lw	a7, 48(a4)
80002e24: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80002e28: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80002e2c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002e30: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80002e34: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80002e38: 13 05 76 00  	addi	a0, a2, 7
80002e3c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002e40: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002e44: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80002e48: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80002e4c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002e50: 03 a5 05 00  	lw	a0, 0(a1)
80002e54: 13 05 f5 44  	addi	a0, a0, 1103
80002e58: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80002e5c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002e60: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002e64: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80002e68: 37 05 00 00  	lui	a0, 0
80002e6c: 33 05 45 00  	add	a0, a0, tp
80002e70: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002e74: 37 05 00 00  	lui	a0, 0
80002e78: 33 05 45 00  	add	a0, a0, tp
80002e7c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002e80: 67 80 00 00  	ret

80002e84 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002e84: 37 05 00 00  	lui	a0, 0
80002e88: 33 05 45 00  	add	a0, a0, tp
80002e8c: 03 25 05 00  	lw	a0, 0(a0)
80002e90: 03 25 05 00  	lw	a0, 0(a0)
80002e94: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002e98: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002e9c: 33 85 a5 40  	sub	a0, a1, a0
80002ea0: 67 80 00 00  	ret

80002ea4 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002ea4: 37 05 00 00  	lui	a0, 0
80002ea8: 33 05 45 00  	add	a0, a0, tp
80002eac: 03 25 05 00  	lw	a0, 0(a0)
80002eb0: 03 25 05 00  	lw	a0, 0(a0)
80002eb4: 03 25 05 07  	lw	a0, 112(a0)
80002eb8: 67 80 00 00  	ret

80002ebc <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80002ebc: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002ec0: 63 44 05 00  	bltz	a0, 0x80002ec8 <__snrt_isr+0xc>
;         while (1)
80002ec4: 6f 00 00 00  	j	0x80002ec4 <__snrt_isr+0x8>
80002ec8: b7 05 00 80  	lui	a1, 524288
80002ecc: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80002ed0: 33 75 b5 00  	and	a0, a0, a1
80002ed4: 13 05 d5 ff  	addi	a0, a0, -3
80002ed8: 93 55 25 00  	srli	a1, a0, 2
80002edc: 13 15 e5 01  	slli	a0, a0, 30
80002ee0: 33 65 b5 00  	or	a0, a0, a1
80002ee4: 93 05 40 00  	addi	a1, zero, 4
80002ee8: 63 0a b5 06  	beq	a0, a1, 0x80002f5c <.LBB1_7+0x58>
80002eec: 63 1a 05 08  	bnez	a0, 0x80002f80 <.LBB1_7+0x7c>
80002ef0: 37 05 00 00  	lui	a0, 0
80002ef4: 33 05 45 00  	add	a0, a0, tp
80002ef8: 03 25 05 00  	lw	a0, 0(a0)
80002efc: 03 25 05 00  	lw	a0, 0(a0)
80002f00: f3 25 40 f1  	csrr	a1, mhartid

80002f04 <.LBB1_7>:
;     asm volatile(
80002f04: 17 16 00 00  	auipc	a2, 1
80002f08: 13 06 c6 87  	addi	a2, a2, -1924
80002f0c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80002f10: 93 06 06 00  	mv	a3, a2
80002f14: 93 02 10 00  	addi	t0, zero, 1
80002f18: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80002f1c: e3 9e 02 fe  	bnez	t0, 0x80002f18 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002f20: b7 06 00 00  	lui	a3, 0
80002f24: b3 86 46 00  	add	a3, a3, tp
80002f28: 83 a6 86 00  	lw	a3, 8(a3)
80002f2c: 33 85 a5 40  	sub	a0, a1, a0
80002f30: 93 55 35 00  	srli	a1, a0, 3
80002f34: 93 f5 c5 ff  	andi	a1, a1, -4
80002f38: b3 85 b6 00  	add	a1, a3, a1
80002f3c: 83 a6 05 00  	lw	a3, 0(a1)
80002f40: 13 07 10 00  	addi	a4, zero, 1
80002f44: 33 15 a7 00  	sll	a0, a4, a0
80002f48: 13 45 f5 ff  	not	a0, a0
80002f4c: 33 f5 a6 00  	and	a0, a3, a0
80002f50: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002f54: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002f58: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002f5c: 37 05 00 00  	lui	a0, 0
80002f60: 33 05 45 00  	add	a0, a0, tp
80002f64: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002f68: b7 05 00 00  	lui	a1, 0
80002f6c: b3 85 45 00  	add	a1, a1, tp
80002f70: 83 a5 c5 00  	lw	a1, 12(a1)
80002f74: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002f78: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002f7c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002f80: 67 80 00 00  	ret

Disassembly of section .init:

80002f90 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80002f90: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80002f94: 93 81 81 ef  	addi	gp, gp, -264

80002f98 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80002f98: 97 00 00 00  	auipc	ra, 0
80002f9c: e7 80 40 3c  	jalr	964(ra)

80002fa0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002fa0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002fa4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002fa8: 97 00 00 00  	auipc	ra, 0
80002fac: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002fb0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002fb4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002fb8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002fbc: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002fc0: 63 92 02 02  	bnez	t0, 0x80002fe4 <snrt.crt0.init_registers>

80002fc4 <.Lpcrel_hi0>:
;     la        t0, _edata
80002fc4: 97 02 00 00  	auipc	t0, 0
80002fc8: 93 82 c2 7b  	addi	t0, t0, 1980

80002fcc <.Lpcrel_hi1>:
;     la        t1, _end
80002fcc: 17 03 00 00  	auipc	t1, 0
80002fd0: 13 03 83 7b  	addi	t1, t1, 1976
;     bge       t0, t1, 2f
80002fd4: 63 d8 62 00  	bge	t0, t1, 0x80002fe4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002fd8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002fdc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002fe0: e3 cc 62 fe  	blt	t0, t1, 0x80002fd8 <.Lpcrel_hi1+0xc>

80002fe4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002fe4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002fe8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002fec: 63 82 02 08  	beqz	t0, 0x80003070 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002ff0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002ff4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002ff8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002ffc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80003000: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80003004: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80003008: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000300c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80003010: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80003014: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80003018: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000301c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80003020: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80003024: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80003028: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000302c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80003030: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80003034: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80003038: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000303c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80003040: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80003044: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80003048: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000304c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80003050: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80003054: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80003058: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000305c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80003060: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80003064: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80003068: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000306c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80003070 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80003070: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80003074: 23 a0 06 00  	sw	zero, 0(a3)

80003078 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80003078: 97 02 00 00  	auipc	t0, 0
8000307c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003080: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003084: 93 87 06 00  	mv	a5, a3

80003088 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003088: 97 03 00 00  	auipc	t2, 0
8000308c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003090: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003094: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003098: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000309c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
800030a0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
800030a4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
800030a8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
800030ac: b3 86 66 40  	sub	a3, a3, t1

800030b0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800030b0: 97 02 00 00  	auipc	t0, 0
800030b4: 93 82 82 5d  	addi	t0, t0, 1496

800030b8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800030b8: 17 03 00 00  	auipc	t1, 0
800030bc: 13 03 03 5d  	addi	t1, t1, 1488

800030c0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800030c0: 97 03 00 00  	auipc	t2, 0
800030c4: 93 83 83 5c  	addi	t2, t2, 1480

800030c8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800030c8: 17 0e 00 00  	auipc	t3, 0
800030cc: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
800030d0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
800030d4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
800030d8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
800030dc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800030e0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800030e4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800030e8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800030ec: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800030f0: 63 dc 62 00  	bge	t0, t1, 0x80003108 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800030f4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800030f8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800030fc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003100: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80003104: e3 c8 62 fe  	blt	t0, t1, 0x800030f4 <.Lpcrel_hi7+0x2c>

80003108 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80003108: 97 02 00 00  	auipc	t0, 0
8000310c: 93 82 02 58  	addi	t0, t0, 1408

80003110 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80003110: 17 03 00 00  	auipc	t1, 0
80003114: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
80003118: 63 da 62 00  	bge	t0, t1, 0x8000312c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000311c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80003120: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003124: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80003128: e3 ca 72 fe  	blt	t0, t2, 0x8000311c <.Lpcrel_hi9+0xc>

8000312c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000312c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80003130: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80003134: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80003138: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000313c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80003140: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80003144: 97 00 00 00  	auipc	ra, 0
80003148: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
8000314c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80003150: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80003154: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80003158: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000315c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80003160: 13 01 41 01  	addi	sp, sp, 20

80003164 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80003164: 97 02 00 00  	auipc	t0, 0
80003168: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000316c: 73 90 52 30  	csrw	mtvec, t0

80003170 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80003170: 97 00 00 00  	auipc	ra, 0
80003174: e7 80 00 22  	jalr	544(ra)

80003178 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80003178: 97 d0 ff ff  	auipc	ra, 1048573
8000317c: e7 80 c0 4b  	jalr	1212(ra)
;     mv        s0, a0 # store return value in s0
80003180: 13 04 05 00  	mv	s0, a0

80003184 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003184: 97 00 00 00  	auipc	ra, 0
80003188: e7 80 c0 20  	jalr	524(ra)

8000318c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000318c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003190: 97 00 00 00  	auipc	ra, 0
80003194: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003198: 73 00 50 10  	wfi	
;     j       1b
8000319c: 6f f0 df ff  	j	0x80003198 <snrt.crt0.end+0xc>

800031a0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
800031a0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
800031a4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
800031a8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
800031ac: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800031b0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800031b4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800031b8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800031bc: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800031c0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800031c4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800031c8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800031cc: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800031d0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800031d4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800031d8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800031dc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800031e0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800031e4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800031e8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800031ec: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800031f0: 63 84 02 08  	beqz	t0, 0x80003278 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800031f4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800031f8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800031fc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003200: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003204: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003208: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000320c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003210: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003214: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003218: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000321c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80003220: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80003224: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80003228: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000322c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80003230: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80003234: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80003238: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000323c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80003240: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80003244: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80003248: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000324c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80003250: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80003254: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80003258: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000325c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003260: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003264: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003268: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000326c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003270: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003274: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003278: 97 00 00 00  	auipc	ra, 0
8000327c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80003280: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003284: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003288: 63 84 02 08  	beqz	t0, 0x80003310 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000328c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003290: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003294: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003298: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000329c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
800032a0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
800032a4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
800032a8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
800032ac: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
800032b0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
800032b4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
800032b8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
800032bc: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800032c0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800032c4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800032c8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800032cc: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800032d0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800032d4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800032d8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800032dc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800032e0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800032e4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800032e8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800032ec: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800032f0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800032f4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800032f8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800032fc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003300: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003304: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003308: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000330c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003310: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003314: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003318: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000331c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003320: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003324: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003328: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000332c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003330: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003334: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003338: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000333c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003340: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003344: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003348: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000334c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003350: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003354: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003358: 73 00 20 30  	mret	

8000335c <_snrt_init_core_info>:
;     mv        a4, a1
8000335c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003360: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003364: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003368: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000336c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003370: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003374: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003378: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000337c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003380: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003384: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003388: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000338c: 67 80 00 00  	ret

80003390 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003390: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003394: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003398: 97 00 00 00  	auipc	ra, 0
8000339c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
800033a0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
800033a4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
800033a8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
800033ac: 13 01 41 00  	addi	sp, sp, 4
;     ret
800033b0: 67 80 00 00  	ret

800033b4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
800033b4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
800033b8: 67 80 00 00  	ret

800033bc <_snrt_exit>:
;     addi      sp, sp, -8
800033bc: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800033c0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800033c4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800033c8: 97 00 00 00  	auipc	ra, 0
800033cc: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
800033d0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800033d4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800033d8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800033dc: 63 1c 05 00  	bnez	a0, 0x800033f4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800033e0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800033e4: 93 e2 12 00  	ori	t0, t0, 1

800033e8 <.Lpcrel_hi11>:
;     la        t1, tohost
800033e8: 17 03 00 00  	auipc	t1, 0
800033ec: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
800033f0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800033f4: 67 80 00 00  	ret
