
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-small-restrict-3mm:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00003164 80000000 TEXT
  2 .init             00000468 80003170 TEXT
  3 .rodata           00000238 800035d8 DATA
  4 .htif             00000048 80003840 DATA
  5 .tdata            00000000 80003888 DATA
  6 .tbss             00000010 80003888 BSS
  7 .tbssend          00000000 80003898 DATA
  8 .sdata            000000d8 80003898 DATA
  9 .data             00000000 80003970 DATA
 10 .sbss             00000004 80003970 BSS
 11 .bss              00000000 80003974 BSS
 12 .dram             00000000 80003974 DATA
 13 .debug_info       000037ed 00000000 
 14 .debug_abbrev     00000c12 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002e1e 00000000 
 17 .debug_loc        0000370f 00000000 
 18 .debug_ranges     000003f0 00000000 
 19 .debug_str        00000b01 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002a8 00000000 
 23 .symtab           00003420 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000092e 00000000 


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
8000064c: 23 2c 41 01  	sw	s4, 24(sp)
80000650: 23 2a 51 01  	sw	s5, 20(sp)
80000654: 23 28 61 01  	sw	s6, 16(sp)
80000658: 27 34 81 00  	fsd	fs0, 8(sp)
8000065c: 37 05 00 00  	lui	a0, 0
80000660: 33 05 45 00  	add	a0, a0, tp
80000664: 83 25 45 00  	lw	a1, 4(a0)
80000668: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000066c: e3 98 05 40  	bnez	a1, 0x8000127c <.LBB0_120+0x10>
;     return _snrt_team_current->root;
80000670: 37 05 00 00  	lui	a0, 0
80000674: 33 05 45 00  	add	a0, a0, tp
80000678: 03 25 05 00  	lw	a0, 0(a0)
8000067c: 83 26 05 00  	lw	a3, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000680: 03 a9 86 05  	lw	s2, 88(a3)
80000684: 83 a5 06 05  	lw	a1, 80(a3)
80000688: 03 a6 46 05  	lw	a2, 84(a3)
8000068c: 37 45 00 00  	lui	a0, 4
80000690: 13 05 05 e8  	addi	a0, a0, -384
80000694: 33 05 a9 00  	add	a0, s2, a0
80000698: b3 07 b6 00  	add	a5, a2, a1
8000069c: 63 f6 a7 00  	bgeu	a5, a0, 0x800006a8 <main+0x74>
800006a0: 93 0a 00 00  	mv	s5, zero
800006a4: 6f 00 00 01  	j	0x800006b4 <main+0x80>
;     void *ret = (void *)alloc->next;
800006a8: 93 0a 09 00  	mv	s5, s2
;     alloc->next += size;
800006ac: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b0: 13 09 05 00  	mv	s2, a0
800006b4: b7 55 00 00  	lui	a1, 5
800006b8: 13 85 05 b0  	addi	a0, a1, -1280
;     if (alloc->next + size > alloc->base + alloc->size) {
800006bc: 33 05 a9 00  	add	a0, s2, a0
800006c0: 63 f6 a7 00  	bgeu	a5, a0, 0x800006cc <main+0x98>
800006c4: 13 07 00 00  	mv	a4, zero
800006c8: 6f 00 00 01  	j	0x800006d8 <main+0xa4>
;     void *ret = (void *)alloc->next;
800006cc: 13 07 09 00  	mv	a4, s2
;     alloc->next += size;
800006d0: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d4: 13 09 05 00  	mv	s2, a0
800006d8: 13 88 05 78  	addi	a6, a1, 1920
;     if (alloc->next + size > alloc->base + alloc->size) {
800006dc: 33 05 09 01  	add	a0, s2, a6
800006e0: 13 05 05 64  	addi	a0, a0, 1600
800006e4: 63 f6 a7 00  	bgeu	a5, a0, 0x800006f0 <main+0xbc>
800006e8: 13 0e 00 00  	mv	t3, zero
800006ec: 6f 00 00 01  	j	0x800006fc <main+0xc8>
;     void *ret = (void *)alloc->next;
800006f0: 13 0e 09 00  	mv	t3, s2
;     alloc->next += size;
800006f4: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f8: 13 09 05 00  	mv	s2, a0
800006fc: 37 75 00 00  	lui	a0, 7
80000700: 13 05 05 d6  	addi	a0, a0, -672
;     if (alloc->next + size > alloc->base + alloc->size) {
80000704: 33 05 a9 00  	add	a0, s2, a0
80000708: 63 f6 a7 00  	bgeu	a5, a0, 0x80000714 <main+0xe0>
8000070c: 93 0e 00 00  	mv	t4, zero
80000710: 6f 00 00 01  	j	0x80000720 <main+0xec>
;     void *ret = (void *)alloc->next;
80000714: 93 0e 09 00  	mv	t4, s2
;     alloc->next += size;
80000718: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
8000071c: 13 09 05 00  	mv	s2, a0
80000720: 37 85 00 00  	lui	a0, 8
80000724: 13 05 05 d0  	addi	a0, a0, -768
;     if (alloc->next + size > alloc->base + alloc->size) {
80000728: 33 05 a9 00  	add	a0, s2, a0
8000072c: 63 f6 a7 00  	bgeu	a5, a0, 0x80000738 <main+0x104>
80000730: 13 0b 00 00  	mv	s6, zero
80000734: 6f 00 00 01  	j	0x80000744 <main+0x110>
;     void *ret = (void *)alloc->next;
80000738: 13 0b 09 00  	mv	s6, s2
;     alloc->next += size;
8000073c: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000740: 13 09 05 00  	mv	s2, a0
80000744: 37 b5 00 00  	lui	a0, 11
80000748: 13 05 05 f0  	addi	a0, a0, -256
;     if (alloc->next + size > alloc->base + alloc->size) {
8000074c: 33 05 a9 00  	add	a0, s2, a0
80000750: 63 fc a7 00  	bgeu	a5, a0, 0x80000768 <main+0x134>
80000754: 93 03 00 00  	mv	t2, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
80000758: 33 05 09 01  	add	a0, s2, a6
8000075c: 63 e0 a7 02  	bltu	a5, a0, 0x8000077c <main+0x148>
;     alloc->next += size;
80000760: 23 ac a6 04  	sw	a0, 88(a3)
80000764: 6f 00 c0 01  	j	0x80000780 <main+0x14c>
;     void *ret = (void *)alloc->next;
80000768: 93 03 09 00  	mv	t2, s2
;     alloc->next += size;
8000076c: 23 ac a6 04  	sw	a0, 88(a3)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000770: 13 09 05 00  	mv	s2, a0
80000774: 33 05 09 01  	add	a0, s2, a6
80000778: e3 f4 a7 fe  	bgeu	a5, a0, 0x80000760 <main+0x12c>
8000077c: 13 09 00 00  	mv	s2, zero
;   for (i = 0; i < ni; i++)
80000780: 13 55 47 01  	srli	a0, a4, 20
80000784: 33 35 a0 00  	snez	a0, a0
80000788: b7 b5 11 00  	lui	a1, 283
8000078c: 93 85 95 50  	addi	a1, a1, 1289
80000790: b3 35 b7 00  	sltu	a1, a4, a1
80000794: 33 78 b5 00  	and	a6, a0, a1

80000798 <.LBB0_113>:
80000798: 97 36 00 00  	auipc	a3, 3
8000079c: 93 86 06 10  	addi	a3, a3, 256
800007a0: 63 0a 08 08  	beqz	a6, 0x80000834 <.LBB0_113+0x9c>
800007a4: 93 07 00 00  	mv	a5, zero
800007a8: 13 05 80 00  	addi	a0, zero, 8
800007ac: 93 05 b0 03  	addi	a1, zero, 59
;   for (i = 0; i < ni; i++)
800007b0: 93 04 00 04  	addi	s1, zero, 64
800007b4: ab a0 95 00  	scfgw	a1, s1
800007b8: 93 05 00 0c  	addi	a1, zero, 192
800007bc: ab 20 b5 00  	scfgw	a0, a1
800007c0: 93 05 70 02  	addi	a1, zero, 39
800007c4: 93 04 00 06  	addi	s1, zero, 96
800007c8: ab a0 95 00  	scfgw	a1, s1
800007cc: 93 05 00 0e  	addi	a1, zero, 224
800007d0: ab 20 b5 00  	scfgw	a0, a1
800007d4: 13 05 00 02  	addi	a0, zero, 32
800007d8: ab 20 a0 00  	scfgw	zero, a0
800007dc: 2b 20 07 3a  	scfgwi	a4, 928
800007e0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800007e4: 87 b1 06 00  	fld	ft3, 0(a3)
800007e8: 37 d5 cc cc  	lui	a0, 838861
800007ec: 93 05 d5 cc  	addi	a1, a0, -819
800007f0: 93 06 80 02  	addi	a3, zero, 40
800007f4: 93 04 c0 03  	addi	s1, zero, 60
800007f8: 13 04 10 00  	addi	s0, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
800007fc: 33 35 b4 02  	mulhu	a0, s0, a1
80000800: 13 55 55 00  	srli	a0, a0, 5
80000804: 33 05 d5 02  	mul	a0, a0, a3
80000808: 33 05 a4 40  	sub	a0, s0, a0
8000080c: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000810: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000814: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nk; j++)
80000818: 93 84 f4 ff  	addi	s1, s1, -1
8000081c: 33 04 f4 00  	add	s0, s0, a5
80000820: e3 9e 04 fc  	bnez	s1, 0x800007fc <.LBB0_113+0x64>
;   for (i = 0; i < ni; i++)
80000824: 93 87 17 00  	addi	a5, a5, 1
80000828: e3 96 d7 fc  	bne	a5, a3, 0x800007f4 <.LBB0_113+0x5c>
8000082c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000830: 6f 00 00 06  	j	0x80000890 <.LBB0_113+0xf8>
80000834: 93 05 00 00  	mv	a1, zero
80000838: 37 d5 cc cc  	lui	a0, 838861
8000083c: 87 b1 06 00  	fld	ft3, 0(a3)
80000840: 93 06 d5 cc  	addi	a3, a0, -819
80000844: 93 02 80 02  	addi	t0, zero, 40
80000848: 93 08 00 1e  	addi	a7, zero, 480
8000084c: 13 04 07 00  	mv	s0, a4
80000850: 93 04 00 00  	mv	s1, zero
80000854: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000858: 33 b5 d7 02  	mulhu	a0, a5, a3
8000085c: 13 55 55 00  	srli	a0, a0, 5
80000860: 33 05 55 02  	mul	a0, a0, t0
80000864: 33 85 a7 40  	sub	a0, a5, a0
80000868: 53 02 05 d2  	fcvt.d.w	ft4, a0
8000086c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000870: 33 05 94 00  	add	a0, s0, s1
80000874: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nk; j++)
80000878: 93 84 84 00  	addi	s1, s1, 8
8000087c: b3 87 b7 00  	add	a5, a5, a1
80000880: e3 9c 14 fd  	bne	s1, a7, 0x80000858 <.LBB0_113+0xc0>
;   for (i = 0; i < ni; i++)
80000884: 93 85 15 00  	addi	a1, a1, 1
80000888: 13 04 04 1e  	addi	s0, s0, 480
8000088c: e3 92 55 fc  	bne	a1, t0, 0x80000850 <.LBB0_113+0xb8>
;   for (i = 0; i < nk; i++)
80000890: 13 55 4e 01  	srli	a0, t3, 20
80000894: 33 35 a0 00  	snez	a0, a0
80000898: b7 a5 11 00  	lui	a1, 282
8000089c: 93 85 95 24  	addi	a1, a1, 585
800008a0: b3 35 be 00  	sltu	a1, t3, a1
800008a4: b3 72 b5 00  	and	t0, a0, a1

800008a8 <.LBB0_114>:
800008a8: 97 36 00 00  	auipc	a3, 3
800008ac: 93 86 86 ff  	addi	a3, a3, -8
800008b0: 63 80 02 0a  	beqz	t0, 0x80000950 <.LBB0_114+0xa8>
800008b4: 93 07 00 00  	mv	a5, zero
800008b8: 13 05 80 00  	addi	a0, zero, 8
800008bc: 93 05 10 03  	addi	a1, zero, 49
;   for (i = 0; i < nk; i++)
800008c0: 93 04 00 04  	addi	s1, zero, 64
800008c4: ab a0 95 00  	scfgw	a1, s1
800008c8: 93 05 00 0c  	addi	a1, zero, 192
800008cc: ab 20 b5 00  	scfgw	a0, a1
800008d0: 93 05 b0 03  	addi	a1, zero, 59
800008d4: 93 04 00 06  	addi	s1, zero, 96
800008d8: ab a0 95 00  	scfgw	a1, s1
800008dc: 93 05 00 0e  	addi	a1, zero, 224
800008e0: ab 20 b5 00  	scfgw	a0, a1
800008e4: 13 05 00 02  	addi	a0, zero, 32
800008e8: ab 20 a0 00  	scfgw	zero, a0
800008ec: 2b 20 0e 3a  	scfgwi	t3, 928
800008f0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800008f4: 13 03 20 00  	addi	t1, zero, 2
800008f8: 37 85 eb 51  	lui	a0, 335544
800008fc: 87 b1 06 00  	fld	ft3, 0(a3)
80000900: 93 06 f5 51  	addi	a3, a0, 1311
80000904: 93 04 20 03  	addi	s1, zero, 50
80000908: 93 08 c0 03  	addi	a7, zero, 60
8000090c: 93 05 03 00  	mv	a1, t1
80000910: 13 04 20 03  	addi	s0, zero, 50
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000914: 33 b5 d5 02  	mulhu	a0, a1, a3
80000918: 13 55 45 00  	srli	a0, a0, 4
8000091c: 33 05 95 02  	mul	a0, a0, s1
80000920: 33 85 a5 40  	sub	a0, a1, a0
80000924: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000928: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000092c: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nj; j++)
80000930: 13 04 f4 ff  	addi	s0, s0, -1
80000934: b3 85 f5 00  	add	a1, a1, a5
80000938: e3 1e 04 fc  	bnez	s0, 0x80000914 <.LBB0_114+0x6c>
;   for (i = 0; i < nk; i++)
8000093c: 93 87 17 00  	addi	a5, a5, 1
80000940: 13 03 13 00  	addi	t1, t1, 1
80000944: e3 94 17 fd  	bne	a5, a7, 0x8000090c <.LBB0_114+0x64>
80000948: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000094c: 6f 00 c0 06  	j	0x800009b8 <.LBB0_114+0x110>
80000950: 93 05 00 00  	mv	a1, zero
80000954: 13 03 20 00  	addi	t1, zero, 2
80000958: 37 85 eb 51  	lui	a0, 335544
8000095c: 93 04 f5 51  	addi	s1, a0, 1311
80000960: 87 b1 06 00  	fld	ft3, 0(a3)
80000964: 13 0f 20 03  	addi	t5, zero, 50
80000968: 93 0f 00 19  	addi	t6, zero, 400
8000096c: 93 08 c0 03  	addi	a7, zero, 60
80000970: 93 07 0e 00  	mv	a5, t3
80000974: 93 06 00 00  	mv	a3, zero
80000978: 13 04 03 00  	mv	s0, t1
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
8000097c: 33 35 94 02  	mulhu	a0, s0, s1
80000980: 13 55 45 00  	srli	a0, a0, 4
80000984: 33 05 e5 03  	mul	a0, a0, t5
80000988: 33 05 a4 40  	sub	a0, s0, a0
8000098c: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000990: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000994: 33 85 d7 00  	add	a0, a5, a3
80000998: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nj; j++)
8000099c: 93 86 86 00  	addi	a3, a3, 8
800009a0: 33 04 b4 00  	add	s0, s0, a1
800009a4: e3 9c f6 fd  	bne	a3, t6, 0x8000097c <.LBB0_114+0xd4>
;   for (i = 0; i < nk; i++)
800009a8: 93 85 15 00  	addi	a1, a1, 1
800009ac: 93 87 07 19  	addi	a5, a5, 400
800009b0: 13 03 13 00  	addi	t1, t1, 1
800009b4: e3 90 15 fd  	bne	a1, a7, 0x80000974 <.LBB0_114+0xcc>
;   for (i = 0; i < nj; i++)
800009b8: 13 55 4b 01  	srli	a0, s6, 20
800009bc: 33 35 a0 00  	snez	a0, a0
800009c0: b7 85 11 00  	lui	a1, 280
800009c4: 93 85 95 30  	addi	a1, a1, 777
800009c8: b3 35 bb 00  	sltu	a1, s6, a1
800009cc: b3 78 b5 00  	and	a7, a0, a1

800009d0 <.LBB0_115>:
800009d0: 97 36 00 00  	auipc	a3, 3
800009d4: 93 86 86 ed  	addi	a3, a3, -296
800009d8: 13 0f 00 00  	mv	t5, zero
800009dc: 93 04 00 00  	mv	s1, zero
800009e0: 63 8e 08 08  	beqz	a7, 0x80000a7c <.LBB0_115+0xac>
800009e4: 13 05 80 00  	addi	a0, zero, 8
800009e8: 93 05 f0 04  	addi	a1, zero, 79
;   for (i = 0; i < nj; i++)
800009ec: 93 07 00 04  	addi	a5, zero, 64
800009f0: ab a0 f5 00  	scfgw	a1, a5
800009f4: 93 05 00 0c  	addi	a1, zero, 192
800009f8: ab 20 b5 00  	scfgw	a0, a1
800009fc: 93 05 10 03  	addi	a1, zero, 49
80000a00: 93 07 00 06  	addi	a5, zero, 96
80000a04: ab a0 f5 00  	scfgw	a1, a5
80000a08: 93 05 00 0e  	addi	a1, zero, 224
80000a0c: ab 20 b5 00  	scfgw	a0, a1
80000a10: 13 05 00 02  	addi	a0, zero, 32
80000a14: ab 20 a0 00  	scfgw	zero, a0
80000a18: 2b 20 0b 3a  	scfgwi	s6, 928
80000a1c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000a20: 37 a5 0e ea  	lui	a0, 958698
80000a24: 87 b1 06 00  	fld	ft3, 0(a3)
80000a28: 93 05 b5 0e  	addi	a1, a0, 235
80000a2c: 93 06 60 04  	addi	a3, zero, 70
80000a30: 13 03 20 03  	addi	t1, zero, 50
80000a34: 13 04 00 05  	addi	s0, zero, 80
80000a38: 93 07 0f 00  	mv	a5, t5
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000a3c: 13 d5 17 00  	srli	a0, a5, 1
80000a40: 33 35 b5 02  	mulhu	a0, a0, a1
80000a44: 13 55 55 00  	srli	a0, a0, 5
80000a48: 33 05 d5 02  	mul	a0, a0, a3
80000a4c: 33 85 a7 40  	sub	a0, a5, a0
80000a50: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000a54: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a58: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nm; j++)
80000a5c: 13 04 f4 ff  	addi	s0, s0, -1
80000a60: b3 87 97 00  	add	a5, a5, s1
80000a64: e3 1c 04 fc  	bnez	s0, 0x80000a3c <.LBB0_115+0x6c>
;   for (i = 0; i < nj; i++)
80000a68: 93 84 14 00  	addi	s1, s1, 1
80000a6c: 13 0f 3f 00  	addi	t5, t5, 3
80000a70: e3 92 64 fc  	bne	s1, t1, 0x80000a34 <.LBB0_115+0x64>
80000a74: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000a78: 6f 00 80 06  	j	0x80000ae0 <.LBB0_115+0x110>
80000a7c: 37 a5 0e ea  	lui	a0, 958698
80000a80: 93 05 b5 0e  	addi	a1, a0, 235
80000a84: 87 b1 06 00  	fld	ft3, 0(a3)
80000a88: 93 0f 60 04  	addi	t6, zero, 70
80000a8c: 93 09 00 28  	addi	s3, zero, 640
80000a90: 13 03 20 03  	addi	t1, zero, 50
80000a94: 93 07 0b 00  	mv	a5, s6
80000a98: 93 06 00 00  	mv	a3, zero
80000a9c: 13 04 0f 00  	mv	s0, t5
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000aa0: 13 55 14 00  	srli	a0, s0, 1
80000aa4: 33 35 b5 02  	mulhu	a0, a0, a1
80000aa8: 13 55 55 00  	srli	a0, a0, 5
80000aac: 33 05 f5 03  	mul	a0, a0, t6
80000ab0: 33 05 a4 40  	sub	a0, s0, a0
80000ab4: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000ab8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000abc: 33 85 d7 00  	add	a0, a5, a3
80000ac0: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nm; j++)
80000ac4: 93 86 86 00  	addi	a3, a3, 8
80000ac8: 33 04 94 00  	add	s0, s0, s1
80000acc: e3 9a 36 fd  	bne	a3, s3, 0x80000aa0 <.LBB0_115+0xd0>
;   for (i = 0; i < nj; i++)
80000ad0: 93 84 14 00  	addi	s1, s1, 1
80000ad4: 93 87 07 28  	addi	a5, a5, 640
80000ad8: 13 0f 3f 00  	addi	t5, t5, 3
80000adc: e3 9e 64 fa  	bne	s1, t1, 0x80000a98 <.LBB0_115+0xc8>
;   for (i = 0; i < nm; i++)
80000ae0: 13 d5 43 01  	srli	a0, t2, 20
80000ae4: 33 35 a0 00  	snez	a0, a0
80000ae8: b7 55 11 00  	lui	a1, 277
80000aec: 93 85 95 10  	addi	a1, a1, 265
80000af0: b3 b5 b3 00  	sltu	a1, t2, a1
80000af4: 33 73 b5 00  	and	t1, a0, a1

80000af8 <.LBB0_116>:
80000af8: 97 36 00 00  	auipc	a3, 3
80000afc: 93 86 86 db  	addi	a3, a3, -584
80000b00: 63 00 03 0a  	beqz	t1, 0x80000ba0 <.LBB0_116+0xa8>
80000b04: 93 07 00 00  	mv	a5, zero
80000b08: 13 05 80 00  	addi	a0, zero, 8
80000b0c: 93 05 50 04  	addi	a1, zero, 69
;   for (i = 0; i < nm; i++)
80000b10: 93 04 00 04  	addi	s1, zero, 64
80000b14: ab a0 95 00  	scfgw	a1, s1
80000b18: 93 05 00 0c  	addi	a1, zero, 192
80000b1c: ab 20 b5 00  	scfgw	a0, a1
80000b20: 93 05 f0 04  	addi	a1, zero, 79
80000b24: 93 04 00 06  	addi	s1, zero, 96
80000b28: ab a0 95 00  	scfgw	a1, s1
80000b2c: 93 05 00 0e  	addi	a1, zero, 224
80000b30: ab 20 b5 00  	scfgw	a0, a1
80000b34: 13 05 00 02  	addi	a0, zero, 32
80000b38: ab 20 a0 00  	scfgw	zero, a0
80000b3c: 2b a0 03 3a  	scfgwi	t2, 928
80000b40: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000b44: 93 0f 20 00  	addi	t6, zero, 2
80000b48: 37 95 88 88  	lui	a0, 559241
80000b4c: 87 b1 06 00  	fld	ft3, 0(a3)
80000b50: 93 06 95 88  	addi	a3, a0, -1911
80000b54: 93 04 c0 03  	addi	s1, zero, 60
80000b58: 13 0f 00 05  	addi	t5, zero, 80
80000b5c: 13 04 60 04  	addi	s0, zero, 70
80000b60: 93 85 0f 00  	mv	a1, t6
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80000b64: 33 b5 d5 02  	mulhu	a0, a1, a3
80000b68: 13 55 55 00  	srli	a0, a0, 5
80000b6c: 33 05 95 02  	mul	a0, a0, s1
80000b70: 33 85 a5 40  	sub	a0, a1, a0
80000b74: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000b78: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b7c: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nl; j++)
80000b80: 13 04 f4 ff  	addi	s0, s0, -1
80000b84: b3 85 f5 00  	add	a1, a1, a5
80000b88: e3 1e 04 fc  	bnez	s0, 0x80000b64 <.LBB0_116+0x6c>
;   for (i = 0; i < nm; i++)
80000b8c: 93 87 17 00  	addi	a5, a5, 1
80000b90: 93 8f 2f 00  	addi	t6, t6, 2
80000b94: e3 94 e7 fd  	bne	a5, t5, 0x80000b5c <.LBB0_116+0x64>
80000b98: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000b9c: 6f 00 c0 06  	j	0x80000c08 <.LBB0_116+0x110>
80000ba0: 93 05 00 00  	mv	a1, zero
80000ba4: 93 0f 20 00  	addi	t6, zero, 2
80000ba8: 37 95 88 88  	lui	a0, 559241
80000bac: 93 04 95 88  	addi	s1, a0, -1911
80000bb0: 87 b1 06 00  	fld	ft3, 0(a3)
80000bb4: 93 09 c0 03  	addi	s3, zero, 60
80000bb8: 13 0a 00 23  	addi	s4, zero, 560
80000bbc: 13 0f 00 05  	addi	t5, zero, 80
80000bc0: 93 87 03 00  	mv	a5, t2
80000bc4: 93 06 00 00  	mv	a3, zero
80000bc8: 13 84 0f 00  	mv	s0, t6
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80000bcc: 33 35 94 02  	mulhu	a0, s0, s1
80000bd0: 13 55 55 00  	srli	a0, a0, 5
80000bd4: 33 05 35 03  	mul	a0, a0, s3
80000bd8: 33 05 a4 40  	sub	a0, s0, a0
80000bdc: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000be0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000be4: 33 85 d7 00  	add	a0, a5, a3
80000be8: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nl; j++)
80000bec: 93 86 86 00  	addi	a3, a3, 8
80000bf0: 33 04 b4 00  	add	s0, s0, a1
80000bf4: e3 9c 46 fd  	bne	a3, s4, 0x80000bcc <.LBB0_116+0xd4>
;   for (i = 0; i < nm; i++)
80000bf8: 93 85 15 00  	addi	a1, a1, 1
80000bfc: 93 87 07 23  	addi	a5, a5, 560
80000c00: 93 8f 2f 00  	addi	t6, t6, 2
80000c04: e3 90 e5 fd  	bne	a1, t5, 0x80000bc4 <.LBB0_116+0xcc>
;  for (i = 0; i < ni; i++)
80000c08: 33 75 58 00  	and	a0, a6, t0
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80000c0c: 73 28 00 b0  	csrr	a6, mcycle
80000c10: 63 02 05 10  	beqz	a0, 0x80000d14 <.LBB0_116+0x21c>
80000c14: 93 06 00 00  	mv	a3, zero
80000c18: 13 05 80 00  	addi	a0, zero, 8
80000c1c: 13 0f b0 03  	addi	t5, zero, 59
;  for (i = 0; i < ni; i++)
80000c20: 93 07 00 04  	addi	a5, zero, 64
80000c24: 93 04 00 0c  	addi	s1, zero, 192
80000c28: ab 20 ff 00  	scfgw	t5, a5
80000c2c: ab 20 95 00  	scfgw	a0, s1
80000c30: 93 02 80 e2  	addi	t0, zero, -472
80000c34: 93 04 10 03  	addi	s1, zero, 49
80000c38: 13 04 00 06  	addi	s0, zero, 96
80000c3c: 93 07 00 0e  	addi	a5, zero, 224
80000c40: ab a0 84 00  	scfgw	s1, s0
80000c44: ab a0 f2 00  	scfgw	t0, a5
80000c48: 93 0f 70 02  	addi	t6, zero, 39
80000c4c: 13 04 00 08  	addi	s0, zero, 128
80000c50: 93 02 00 10  	addi	t0, zero, 256
80000c54: ab a0 8f 00  	scfgw	t6, s0
80000c58: ab 20 55 00  	scfgw	a0, t0
80000c5c: 13 05 00 02  	addi	a0, zero, 32
80000c60: ab 20 a0 00  	scfgw	zero, a0
80000c64: 2b 20 07 34  	scfgwi	a4, 832
80000c68: 13 07 00 19  	addi	a4, zero, 400
80000c6c: 13 05 10 00  	addi	a0, zero, 1
;  for (i = 0; i < ni; i++)
80000c70: 13 04 05 04  	addi	s0, a0, 64
80000c74: 93 05 05 0c  	addi	a1, a0, 192
80000c78: ab 20 8f 00  	scfgw	t5, s0
80000c7c: ab 20 b7 00  	scfgw	a4, a1
80000c80: b7 a5 ff ff  	lui	a1, 1048570
80000c84: 13 84 85 3d  	addi	s0, a1, 984
80000c88: 93 07 05 06  	addi	a5, a0, 96
80000c8c: ab a0 f4 00  	scfgw	s1, a5
80000c90: 93 07 05 0e  	addi	a5, a0, 224
80000c94: ab 20 f4 00  	scfgw	s0, a5
80000c98: 93 85 85 24  	addi	a1, a1, 584
80000c9c: 93 07 05 08  	addi	a5, a0, 128
80000ca0: 93 04 05 10  	addi	s1, a0, 256
80000ca4: ab a0 ff 00  	scfgw	t6, a5
80000ca8: ab a0 95 00  	scfgw	a1, s1
80000cac: 13 05 05 02  	addi	a0, a0, 32
80000cb0: ab 20 a0 00  	scfgw	zero, a0
80000cb4: 2b 20 1e 34  	scfgwi	t3, 833
80000cb8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000cbc: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000cc0: 93 05 20 03  	addi	a1, zero, 50
80000cc4: 93 02 80 02  	addi	t0, zero, 40
80000cc8: 93 04 00 00  	mv	s1, zero
;  E[i][j] = 0.0;
80000ccc: 33 85 e6 02  	mul	a0, a3, a4
80000cd0: 33 85 aa 00  	add	a0, s5, a0
80000cd4: 93 97 34 00  	slli	a5, s1, 3
80000cd8: 33 04 f5 00  	add	s0, a0, a5
80000cdc: 23 22 04 00  	sw	zero, 4(s0)
80000ce0: 23 20 04 00  	sw	zero, 0(s0)
80000ce4: 93 07 c0 03  	addi	a5, zero, 60
80000ce8: 53 82 31 22  	fmv.d	ft4, ft3
;  for (k = 0; k < nk; ++k)
80000cec: 93 87 f7 ff  	addi	a5, a5, -1
;    E[i][j] += A[i][k] * B[k][j];
80000cf0: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
;  for (k = 0; k < nk; ++k)
80000cf4: e3 9c 07 fe  	bnez	a5, 0x80000cec <.LBB0_116+0x1f4>
;     for (j = 0; j < nj; j++)
80000cf8: 93 84 14 00  	addi	s1, s1, 1
;    E[i][j] += A[i][k] * B[k][j];
80000cfc: 27 30 44 00  	fsd	ft4, 0(s0)
;     for (j = 0; j < nj; j++)
80000d00: e3 96 b4 fc  	bne	s1, a1, 0x80000ccc <.LBB0_116+0x1d4>
;  for (i = 0; i < ni; i++)
80000d04: 93 86 16 00  	addi	a3, a3, 1
80000d08: e3 90 56 fc  	bne	a3, t0, 0x80000cc8 <.LBB0_116+0x1d0>
80000d0c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000d10: 6f 00 00 08  	j	0x80000d90 <.LBB0_116+0x298>
80000d14: 93 09 00 00  	mv	s3, zero
80000d18: 13 0f 00 19  	addi	t5, zero, 400
80000d1c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000d20: 13 04 00 1e  	addi	s0, zero, 480
80000d24: 93 0f 20 03  	addi	t6, zero, 50
80000d28: 93 02 80 02  	addi	t0, zero, 40
80000d2c: 93 05 00 00  	mv	a1, zero
80000d30: 13 05 0e 00  	mv	a0, t3
80000d34: 93 04 00 00  	mv	s1, zero
;  E[i][j] = 0.0;
80000d38: b3 86 e9 03  	mul	a3, s3, t5
80000d3c: b3 86 da 00  	add	a3, s5, a3
80000d40: 93 97 35 00  	slli	a5, a1, 3
80000d44: b3 86 f6 00  	add	a3, a3, a5
80000d48: 23 a2 06 00  	sw	zero, 4(a3)
80000d4c: 23 a0 06 00  	sw	zero, 0(a3)
80000d50: 93 07 05 00  	mv	a5, a0
80000d54: 53 82 31 22  	fmv.d	ft4, ft3
;    E[i][j] += A[i][k] * B[k][j];
80000d58: 33 06 97 00  	add	a2, a4, s1
80000d5c: 87 32 06 00  	fld	ft5, 0(a2)
80000d60: 07 b3 07 00  	fld	ft6, 0(a5)
80000d64: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;  for (k = 0; k < nk; ++k)
80000d68: 93 84 84 00  	addi	s1, s1, 8
80000d6c: 93 87 07 19  	addi	a5, a5, 400
80000d70: e3 94 84 fe  	bne	s1, s0, 0x80000d58 <.LBB0_116+0x260>
;    E[i][j] += A[i][k] * B[k][j];
80000d74: 27 b0 46 00  	fsd	ft4, 0(a3)
;     for (j = 0; j < nj; j++)
80000d78: 93 85 15 00  	addi	a1, a1, 1
80000d7c: 13 05 85 00  	addi	a0, a0, 8
80000d80: e3 9a f5 fb  	bne	a1, t6, 0x80000d34 <.LBB0_116+0x23c>
;  for (i = 0; i < ni; i++)
80000d84: 93 89 19 00  	addi	s3, s3, 1
80000d88: 13 07 07 1e  	addi	a4, a4, 480
80000d8c: e3 90 59 fa  	bne	s3, t0, 0x80000d2c <.LBB0_116+0x234>
80000d90: 93 06 00 00  	mv	a3, zero
;   for (i = 0; i < nj; i++)
80000d94: 33 f5 68 00  	and	a0, a7, t1
80000d98: 63 00 05 10  	beqz	a0, 0x80000e98 <.LBB0_116+0x3a0>
80000d9c: 13 05 80 00  	addi	a0, zero, 8
80000da0: 93 05 f0 04  	addi	a1, zero, 79
;   for (i = 0; i < nj; i++)
80000da4: 13 06 00 04  	addi	a2, zero, 64
80000da8: 13 07 00 0c  	addi	a4, zero, 192
80000dac: ab a0 c5 00  	scfgw	a1, a2
80000db0: ab 20 e5 00  	scfgw	a0, a4
80000db4: 13 06 80 d8  	addi	a2, zero, -632
80000db8: 13 07 50 04  	addi	a4, zero, 69
80000dbc: 93 07 00 06  	addi	a5, zero, 96
80000dc0: 93 04 00 0e  	addi	s1, zero, 224
80000dc4: ab 20 f7 00  	scfgw	a4, a5
80000dc8: ab 20 96 00  	scfgw	a2, s1
80000dcc: 93 07 10 03  	addi	a5, zero, 49
80000dd0: 13 06 00 08  	addi	a2, zero, 128
80000dd4: 93 04 00 10  	addi	s1, zero, 256
80000dd8: ab a0 c7 00  	scfgw	a5, a2
80000ddc: ab 20 95 00  	scfgw	a0, s1
80000de0: 13 05 00 02  	addi	a0, zero, 32
80000de4: ab 20 a0 00  	scfgw	zero, a0
80000de8: 2b 20 0b 34  	scfgwi	s6, 832
80000dec: 13 06 00 23  	addi	a2, zero, 560
80000df0: 13 05 10 00  	addi	a0, zero, 1
80000df4: 93 04 05 04  	addi	s1, a0, 64
80000df8: 13 04 05 0c  	addi	s0, a0, 192
80000dfc: ab a0 95 00  	scfgw	a1, s1
80000e00: ab 20 86 00  	scfgw	a2, s0
80000e04: b7 55 ff ff  	lui	a1, 1048565
80000e08: 93 84 85 33  	addi	s1, a1, 824
80000e0c: 13 04 05 06  	addi	s0, a0, 96
80000e10: ab 20 87 00  	scfgw	a4, s0
80000e14: 13 07 05 0e  	addi	a4, a0, 224
80000e18: ab a0 e4 00  	scfgw	s1, a4
80000e1c: 93 85 85 10  	addi	a1, a1, 264
80000e20: 13 07 05 08  	addi	a4, a0, 128
80000e24: 93 04 05 10  	addi	s1, a0, 256
80000e28: ab a0 e7 00  	scfgw	a5, a4
80000e2c: ab a0 95 00  	scfgw	a1, s1
80000e30: 13 05 05 02  	addi	a0, a0, 32
80000e34: ab 20 a0 00  	scfgw	zero, a0
80000e38: 2b a0 13 34  	scfgwi	t2, 833
80000e3c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000e40: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000e44: 93 05 60 04  	addi	a1, zero, 70
80000e48: 13 07 20 03  	addi	a4, zero, 50
80000e4c: 93 07 00 00  	mv	a5, zero
;  F[i][j] = 0.0;
80000e50: 33 85 c6 02  	mul	a0, a3, a2
80000e54: 33 85 ae 00  	add	a0, t4, a0
80000e58: 93 94 37 00  	slli	s1, a5, 3
80000e5c: b3 04 95 00  	add	s1, a0, s1
80000e60: 23 a2 04 00  	sw	zero, 4(s1)
80000e64: 23 a0 04 00  	sw	zero, 0(s1)
80000e68: 13 04 00 05  	addi	s0, zero, 80
80000e6c: 53 82 31 22  	fmv.d	ft4, ft3
;  for (k = 0; k < nm; ++k)
80000e70: 13 04 f4 ff  	addi	s0, s0, -1
;    F[i][j] += C[i][k] * D[k][j];
80000e74: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
;  for (k = 0; k < nm; ++k)
80000e78: e3 1c 04 fe  	bnez	s0, 0x80000e70 <.LBB0_116+0x378>
;     for (j = 0; j < nl; j++)
80000e7c: 93 87 17 00  	addi	a5, a5, 1
;    F[i][j] += C[i][k] * D[k][j];
80000e80: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (j = 0; j < nl; j++)
80000e84: e3 96 b7 fc  	bne	a5, a1, 0x80000e50 <.LBB0_116+0x358>
;   for (i = 0; i < nj; i++)
80000e88: 93 86 16 00  	addi	a3, a3, 1
80000e8c: e3 90 e6 fc  	bne	a3, a4, 0x80000e4c <.LBB0_116+0x354>
80000e90: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000e94: 6f 00 c0 07  	j	0x80000f10 <.LBB0_116+0x418>
80000e98: 93 02 00 23  	addi	t0, zero, 560
80000e9c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000ea0: 93 07 00 28  	addi	a5, zero, 640
80000ea4: 13 03 60 04  	addi	t1, zero, 70
80000ea8: 93 08 20 03  	addi	a7, zero, 50
80000eac: 93 05 00 00  	mv	a1, zero
80000eb0: 13 84 03 00  	mv	s0, t2
80000eb4: 13 07 00 00  	mv	a4, zero
;  F[i][j] = 0.0;
80000eb8: 33 85 56 02  	mul	a0, a3, t0
80000ebc: 33 85 ae 00  	add	a0, t4, a0
80000ec0: 13 96 35 00  	slli	a2, a1, 3
80000ec4: b3 04 c5 00  	add	s1, a0, a2
80000ec8: 23 a2 04 00  	sw	zero, 4(s1)
80000ecc: 23 a0 04 00  	sw	zero, 0(s1)
80000ed0: 13 05 04 00  	mv	a0, s0
80000ed4: 53 82 31 22  	fmv.d	ft4, ft3
;    F[i][j] += C[i][k] * D[k][j];
80000ed8: 33 06 eb 00  	add	a2, s6, a4
80000edc: 87 32 06 00  	fld	ft5, 0(a2)
80000ee0: 07 33 05 00  	fld	ft6, 0(a0)
80000ee4: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;  for (k = 0; k < nm; ++k)
80000ee8: 13 07 87 00  	addi	a4, a4, 8
80000eec: 13 05 05 23  	addi	a0, a0, 560
80000ef0: e3 14 f7 fe  	bne	a4, a5, 0x80000ed8 <.LBB0_116+0x3e0>
;    F[i][j] += C[i][k] * D[k][j];
80000ef4: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (j = 0; j < nl; j++)
80000ef8: 93 85 15 00  	addi	a1, a1, 1
80000efc: 13 04 84 00  	addi	s0, s0, 8
80000f00: e3 9a 65 fa  	bne	a1, t1, 0x80000eb4 <.LBB0_116+0x3bc>
;   for (i = 0; i < nj; i++)
80000f04: 93 86 16 00  	addi	a3, a3, 1
80000f08: 13 0b 0b 28  	addi	s6, s6, 640
80000f0c: e3 90 16 fb  	bne	a3, a7, 0x80000eac <.LBB0_116+0x3b4>
;   for (i = 0; i < ni; i++)
80000f10: 13 d5 4a 01  	srli	a0, s5, 20
80000f14: 33 35 a0 00  	snez	a0, a0
80000f18: b7 c5 11 00  	lui	a1, 284
80000f1c: 93 85 95 18  	addi	a1, a1, 393
80000f20: b3 b5 ba 00  	sltu	a1, s5, a1
80000f24: 33 75 b5 00  	and	a0, a0, a1
80000f28: 93 d5 4e 01  	srli	a1, t4, 20
80000f2c: b3 35 b0 00  	snez	a1, a1
80000f30: 37 96 11 00  	lui	a2, 281
80000f34: 13 06 96 2a  	addi	a2, a2, 681
80000f38: 33 b6 ce 00  	sltu	a2, t4, a2
80000f3c: b3 f5 c5 00  	and	a1, a1, a2
80000f40: 13 06 00 00  	mv	a2, zero
80000f44: 33 75 b5 00  	and	a0, a0, a1
80000f48: 63 06 05 1a  	beqz	a0, 0x800010f4 <.LBB0_116+0x5fc>
80000f4c: 13 05 80 00  	addi	a0, zero, 8
80000f50: 93 05 10 03  	addi	a1, zero, 49
;   for (i = 0; i < ni; i++)
80000f54: 93 06 00 04  	addi	a3, zero, 64
80000f58: 13 07 00 0c  	addi	a4, zero, 192
80000f5c: ab a0 d5 00  	scfgw	a1, a3
80000f60: ab 20 e5 00  	scfgw	a0, a4
80000f64: 93 06 80 e7  	addi	a3, zero, -392
80000f68: 13 07 50 04  	addi	a4, zero, 69
80000f6c: 93 07 00 06  	addi	a5, zero, 96
80000f70: 93 04 00 0e  	addi	s1, zero, 224
80000f74: ab 20 f7 00  	scfgw	a4, a5
80000f78: ab a0 96 00  	scfgw	a3, s1
80000f7c: 93 06 70 02  	addi	a3, zero, 39
80000f80: 93 07 00 08  	addi	a5, zero, 128
80000f84: 93 04 00 10  	addi	s1, zero, 256
80000f88: ab a0 f6 00  	scfgw	a3, a5
80000f8c: ab 20 95 00  	scfgw	a0, s1
80000f90: 13 05 00 02  	addi	a0, zero, 32
80000f94: ab 20 a0 00  	scfgw	zero, a0
80000f98: 2b a0 0a 34  	scfgwi	s5, 832
80000f9c: 13 05 00 23  	addi	a0, zero, 560
80000fa0: 93 07 10 00  	addi	a5, zero, 1
80000fa4: 93 84 07 04  	addi	s1, a5, 64
80000fa8: 13 84 07 0c  	addi	s0, a5, 192
80000fac: ab a0 95 00  	scfgw	a1, s1
80000fb0: ab 20 85 00  	scfgw	a0, s0
80000fb4: b7 95 ff ff  	lui	a1, 1048569
80000fb8: 93 84 85 4d  	addi	s1, a1, 1240
80000fbc: 13 84 07 06  	addi	s0, a5, 96
80000fc0: ab 20 87 00  	scfgw	a4, s0
80000fc4: 13 87 07 0e  	addi	a4, a5, 224
80000fc8: ab a0 e4 00  	scfgw	s1, a4
80000fcc: 93 85 85 2a  	addi	a1, a1, 680
80000fd0: 13 87 07 08  	addi	a4, a5, 128
80000fd4: 93 84 07 10  	addi	s1, a5, 256
80000fd8: ab a0 e6 00  	scfgw	a3, a4
80000fdc: ab a0 95 00  	scfgw	a1, s1
80000fe0: 93 85 07 02  	addi	a1, a5, 32
80000fe4: ab 20 b0 00  	scfgw	zero, a1
80000fe8: 2b a0 1e 34  	scfgwi	t4, 833
80000fec: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000ff0: 93 05 80 02  	addi	a1, zero, 40
80000ff4: 93 06 09 00  	mv	a3, s2
80000ff8: 13 07 00 00  	mv	a4, zero
;  G[i][j] = 0.0;
80000ffc: b3 87 e6 00  	add	a5, a3, a4
80001000: 23 a2 07 00  	sw	zero, 4(a5)
80001004: 23 a0 07 00  	sw	zero, 0(a5)
;    G[i][j] += E[i][k] * F[k][j];
80001008: d3 01 00 22  	fmv.d	ft3, ft0
8000100c: d3 f1 30 12  	fmul.d	ft3, ft1, ft3
80001010: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001014: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001018: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000101c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001020: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001024: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001028: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000102c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001030: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001034: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001038: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000103c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001040: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001044: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001048: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000104c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001050: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001054: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001058: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000105c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001060: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001064: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001068: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000106c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001070: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001074: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001078: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000107c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001080: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001084: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001088: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000108c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001090: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001094: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
80001098: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
8000109c: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010a0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010a4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010a8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010ac: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010b0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010b4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010b8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010bc: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010c0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010c4: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010c8: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010cc: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
800010d0: c3 f1 00 1a  	fmadd.d	ft3, ft1, ft0, ft3
;     for (j = 0; j < nl; j++)
800010d4: 13 07 87 00  	addi	a4, a4, 8
;    G[i][j] += E[i][k] * F[k][j];
800010d8: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nl; j++)
800010dc: e3 10 a7 f2  	bne	a4, a0, 0x80000ffc <.LBB0_116+0x504>
;   for (i = 0; i < ni; i++)
800010e0: 13 06 16 00  	addi	a2, a2, 1
800010e4: 93 86 06 23  	addi	a3, a3, 560
800010e8: e3 18 b6 f0  	bne	a2, a1, 0x80000ff8 <.LBB0_116+0x500>
800010ec: 73 f5 00 7c  	csrrci	a0, 1984, 1
800010f0: 6f 00 c0 07  	j	0x8000116c <.LBB0_116+0x674>
800010f4: 93 02 00 23  	addi	t0, zero, 560
800010f8: d3 01 00 d2  	fcvt.d.w	ft3, zero
800010fc: 13 07 00 19  	addi	a4, zero, 400
80001100: 13 03 60 04  	addi	t1, zero, 70
80001104: 93 08 80 02  	addi	a7, zero, 40
80001108: 93 04 00 00  	mv	s1, zero
8000110c: 93 87 0e 00  	mv	a5, t4
80001110: 13 04 00 00  	mv	s0, zero
;  G[i][j] = 0.0;
80001114: 33 05 56 02  	mul	a0, a2, t0
80001118: 33 05 a9 00  	add	a0, s2, a0
8000111c: 93 95 34 00  	slli	a1, s1, 3
80001120: b3 06 b5 00  	add	a3, a0, a1
80001124: 23 a2 06 00  	sw	zero, 4(a3)
80001128: 23 a0 06 00  	sw	zero, 0(a3)
8000112c: 93 85 07 00  	mv	a1, a5
80001130: 53 82 31 22  	fmv.d	ft4, ft3
;    G[i][j] += E[i][k] * F[k][j];
80001134: 33 85 8a 00  	add	a0, s5, s0
80001138: 87 32 05 00  	fld	ft5, 0(a0)
8000113c: 07 b3 05 00  	fld	ft6, 0(a1)
80001140: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;  for (k = 0; k < nj; ++k)
80001144: 13 04 84 00  	addi	s0, s0, 8
80001148: 93 85 05 23  	addi	a1, a1, 560
8000114c: e3 14 e4 fe  	bne	s0, a4, 0x80001134 <.LBB0_116+0x63c>
;    G[i][j] += E[i][k] * F[k][j];
80001150: 27 b0 46 00  	fsd	ft4, 0(a3)
;     for (j = 0; j < nl; j++)
80001154: 93 84 14 00  	addi	s1, s1, 1
80001158: 93 87 87 00  	addi	a5, a5, 8
8000115c: e3 9a 64 fa  	bne	s1, t1, 0x80001110 <.LBB0_116+0x618>
;   for (i = 0; i < ni; i++)
80001160: 13 06 16 00  	addi	a2, a2, 1
80001164: 93 8a 0a 19  	addi	s5, s5, 400
80001168: e3 10 16 fb  	bne	a2, a7, 0x80001108 <.LBB0_116+0x610>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
8000116c: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80001170: b3 05 05 41  	sub	a1, a0, a6

80001174 <.LBB0_117>:
80001174: 17 25 00 00  	auipc	a0, 2
80001178: 13 05 d5 47  	addi	a0, a0, 1149
8000117c: 97 00 00 00  	auipc	ra, 0
80001180: e7 80 c0 12  	jalr	300(ra)
;     for (int i = 0; i < n; i++){
80001184: 13 55 49 01  	srli	a0, s2, 20
80001188: 33 35 a0 00  	snez	a0, a0
8000118c: b7 b5 11 00  	lui	a1, 283
80001190: 93 85 95 88  	addi	a1, a1, -1911
80001194: b3 35 b9 00  	sltu	a1, s2, a1
80001198: 33 75 b5 00  	and	a0, a0, a1
8000119c: 63 06 05 06  	beqz	a0, 0x80001208 <.LBB0_117+0x94>
800011a0: 13 05 00 00  	mv	a0, zero
800011a4: 93 05 80 00  	addi	a1, zero, 8
800011a8: 13 06 50 04  	addi	a2, zero, 69
;     for (int i = 0; i < n; i++){
800011ac: 93 06 00 04  	addi	a3, zero, 64
800011b0: ab 20 d6 00  	scfgw	a2, a3
800011b4: 13 06 00 0c  	addi	a2, zero, 192
800011b8: ab a0 c5 00  	scfgw	a1, a2
800011bc: 13 06 70 02  	addi	a2, zero, 39
800011c0: 93 06 00 06  	addi	a3, zero, 96
800011c4: ab 20 d6 00  	scfgw	a2, a3
800011c8: 13 06 00 0e  	addi	a2, zero, 224
800011cc: ab a0 c5 00  	scfgw	a1, a2
800011d0: 93 05 00 02  	addi	a1, zero, 32
800011d4: ab 20 b0 00  	scfgw	zero, a1
800011d8: 2b 20 09 32  	scfgwi	s2, 800
800011dc: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800011e0: d3 01 00 d2  	fcvt.d.w	ft3, zero
800011e4: 93 05 80 02  	addi	a1, zero, 40
800011e8: 13 06 60 04  	addi	a2, zero, 70
;         for (int j = 0; j < m; j++){
800011ec: 13 06 f6 ff  	addi	a2, a2, -1
;             r += A[i * m + j];
800011f0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;         for (int j = 0; j < m; j++){
800011f4: e3 1c 06 fe  	bnez	a2, 0x800011ec <.LBB0_117+0x78>
;     for (int i = 0; i < n; i++){
800011f8: 13 05 15 00  	addi	a0, a0, 1
800011fc: e3 16 b5 fe  	bne	a0, a1, 0x800011e8 <.LBB0_117+0x74>
80001200: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001204: 6f 00 80 03  	j	0x8000123c <.LBB0_118>
80001208: 13 05 00 00  	mv	a0, zero
8000120c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80001210: 93 05 00 23  	addi	a1, zero, 560
80001214: 13 06 80 02  	addi	a2, zero, 40
80001218: 93 06 00 00  	mv	a3, zero
;             r += A[i * m + j];
8000121c: 33 07 d9 00  	add	a4, s2, a3
80001220: 07 32 07 00  	fld	ft4, 0(a4)
;         for (int j = 0; j < m; j++){
80001224: 93 86 86 00  	addi	a3, a3, 8
;             r += A[i * m + j];
80001228: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;         for (int j = 0; j < m; j++){
8000122c: e3 98 b6 fe  	bne	a3, a1, 0x8000121c <.LBB0_117+0xa8>
;     for (int i = 0; i < n; i++){
80001230: 13 05 15 00  	addi	a0, a0, 1
80001234: 13 09 09 23  	addi	s2, s2, 560
80001238: e3 10 c5 fe  	bne	a0, a2, 0x80001218 <.LBB0_117+0xa4>

8000123c <.LBB0_118>:
8000123c: 17 25 00 00  	auipc	a0, 2
80001240: 13 05 c5 67  	addi	a0, a0, 1660
80001244: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80001248: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
8000124c: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80001250: 27 30 81 00  	fsd	fs0, 0(sp)
80001254: 03 26 01 00  	lw	a2, 0(sp)
80001258: 83 26 41 00  	lw	a3, 4(sp)

8000125c <.LBB0_119>:
8000125c: 17 25 00 00  	auipc	a0, 2
80001260: 13 05 95 38  	addi	a0, a0, 905
80001264: 97 00 00 00  	auipc	ra, 0
80001268: e7 80 40 04  	jalr	68(ra)

8000126c <.LBB0_120>:
8000126c: 17 25 00 00  	auipc	a0, 2
80001270: 13 05 45 65  	addi	a0, a0, 1620
80001274: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80001278: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
8000127c: 07 34 81 00  	fld	fs0, 8(sp)
80001280: 03 2b 01 01  	lw	s6, 16(sp)
80001284: 83 2a 41 01  	lw	s5, 20(sp)
80001288: 03 2a 81 01  	lw	s4, 24(sp)
8000128c: 83 29 c1 01  	lw	s3, 28(sp)
80001290: 03 29 01 02  	lw	s2, 32(sp)
80001294: 83 24 41 02  	lw	s1, 36(sp)
80001298: 03 24 81 02  	lw	s0, 40(sp)
8000129c: 83 20 c1 02  	lw	ra, 44(sp)
800012a0: 13 01 01 03  	addi	sp, sp, 48
800012a4: 67 80 00 00  	ret

800012a8 <printf_>:
; {
800012a8: 13 01 01 fd  	addi	sp, sp, -48
800012ac: 23 26 11 00  	sw	ra, 12(sp)
800012b0: 93 02 05 00  	mv	t0, a0
800012b4: 23 26 11 03  	sw	a7, 44(sp)
800012b8: 23 24 01 03  	sw	a6, 40(sp)
800012bc: 23 22 f1 02  	sw	a5, 36(sp)
800012c0: 23 20 e1 02  	sw	a4, 32(sp)
800012c4: 23 2e d1 00  	sw	a3, 28(sp)
800012c8: 23 2c c1 00  	sw	a2, 24(sp)
800012cc: 23 2a b1 00  	sw	a1, 20(sp)
800012d0: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
800012d4: 23 24 a1 00  	sw	a0, 8(sp)

800012d8 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
800012d8: 17 15 00 00  	auipc	a0, 1
800012dc: 13 05 45 c2  	addi	a0, a0, -988
800012e0: 93 05 71 00  	addi	a1, sp, 7
800012e4: 13 06 f0 ff  	addi	a2, zero, -1
800012e8: 13 07 41 01  	addi	a4, sp, 20
800012ec: 93 86 02 00  	mv	a3, t0
800012f0: 97 00 00 00  	auipc	ra, 0
800012f4: e7 80 40 01  	jalr	20(ra)
;   return ret;
800012f8: 83 20 c1 00  	lw	ra, 12(sp)
800012fc: 13 01 01 03  	addi	sp, sp, 48
80001300: 67 80 00 00  	ret

80001304 <_vsnprintf.llvm.1805434900161566649>:
; {
80001304: 13 01 01 f9  	addi	sp, sp, -112
80001308: 23 26 11 06  	sw	ra, 108(sp)
8000130c: 23 24 81 06  	sw	s0, 104(sp)
80001310: 23 22 91 06  	sw	s1, 100(sp)
80001314: 23 20 21 07  	sw	s2, 96(sp)
80001318: 23 2e 31 05  	sw	s3, 92(sp)
8000131c: 23 2c 41 05  	sw	s4, 88(sp)
80001320: 23 2a 51 05  	sw	s5, 84(sp)
80001324: 23 28 61 05  	sw	s6, 80(sp)
80001328: 23 26 71 05  	sw	s7, 76(sp)
8000132c: 23 24 81 05  	sw	s8, 72(sp)
80001330: 23 22 91 05  	sw	s9, 68(sp)
80001334: 23 20 a1 05  	sw	s10, 64(sp)
80001338: 23 2e b1 03  	sw	s11, 60(sp)
8000133c: 93 09 07 00  	mv	s3, a4
80001340: 13 84 06 00  	mv	s0, a3
80001344: 93 0a 06 00  	mv	s5, a2
80001348: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
8000134c: 63 86 05 00  	beqz	a1, 0x80001358 <.LBB1_183>
80001350: 13 09 05 00  	mv	s2, a0
80001354: 6f 00 c0 00  	j	0x80001360 <.LBB1_183+0x8>

80001358 <.LBB1_183>:
80001358: 17 19 00 00  	auipc	s2, 1
8000135c: 13 09 09 c5  	addi	s2, s2, -944
80001360: 13 0c 00 00  	mv	s8, zero
80001364: 13 0b 50 02  	addi	s6, zero, 37
80001368: 93 0d 00 01  	addi	s11, zero, 16
8000136c: 93 0b e0 02  	addi	s7, zero, 46
80001370: 37 15 00 00  	lui	a0, 1
80001374: 13 05 05 80  	addi	a0, a0, -2048
80001378: 23 2c a1 00  	sw	a0, 24(sp)
8000137c: 37 05 01 00  	lui	a0, 16
80001380: 13 05 f5 ff  	addi	a0, a0, -1
80001384: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80001388: 13 0d 24 00  	addi	s10, s0, 2
8000138c: 93 0c 0c 00  	mv	s9, s8
80001390: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001394: 03 45 04 00  	lbu	a0, 0(s0)
80001398: e3 04 05 30  	beqz	a0, 0x80001ea0 <.LBB1_124+0x3b0>
8000139c: 63 08 65 03  	beq	a0, s6, 0x800013cc <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
800013a0: 93 84 1c 00  	addi	s1, s9, 1
800013a4: 93 05 0a 00  	mv	a1, s4
800013a8: 13 86 0c 00  	mv	a2, s9
800013ac: 93 86 0a 00  	mv	a3, s5
800013b0: e7 00 09 00  	jalr	s2
;       format++;
800013b4: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800013b8: 13 0d 1d 00  	addi	s10, s10, 1
800013bc: 93 8c 04 00  	mv	s9, s1
;   while (*format)
800013c0: 03 45 04 00  	lbu	a0, 0(s0)
800013c4: e3 1c 05 fc  	bnez	a0, 0x8000139c <.LBB1_183+0x44>
800013c8: 6f 00 90 2d  	j	0x80001ea0 <.LBB1_124+0x3b0>
;     flags = 0U;
800013cc: 13 04 00 00  	mv	s0, zero
800013d0: 6f 00 00 01  	j	0x800013e0 <.LBB1_9+0x8>

800013d4 <.LBB1_8>:
800013d4: 93 05 00 01  	addi	a1, zero, 16

800013d8 <.LBB1_9>:
800013d8: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
800013dc: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
800013e0: 03 45 fd ff  	lbu	a0, -1(s10)
800013e4: 93 05 05 fe  	addi	a1, a0, -32
800013e8: 63 ec bd 02  	bltu	s11, a1, 0x80001420 <.LBB1_15>
800013ec: 93 95 25 00  	slli	a1, a1, 2

800013f0 <.LBB1_184>:
800013f0: 17 26 00 00  	auipc	a2, 2
800013f4: 13 06 46 21  	addi	a2, a2, 532
800013f8: b3 85 c5 00  	add	a1, a1, a2
800013fc: 03 a6 05 00  	lw	a2, 0(a1)
80001400: 93 05 10 00  	addi	a1, zero, 1
80001404: 67 00 06 00  	jr	a2

80001408 <.LBB1_12>:
80001408: 93 05 80 00  	addi	a1, zero, 8
8000140c: 6f f0 df fc  	j	0x800013d8 <.LBB1_9>

80001410 <.LBB1_13>:
80001410: 93 05 40 00  	addi	a1, zero, 4
80001414: 6f f0 5f fc  	j	0x800013d8 <.LBB1_9>

80001418 <.LBB1_14>:
80001418: 93 05 20 00  	addi	a1, zero, 2
8000141c: 6f f0 df fb  	j	0x800013d8 <.LBB1_9>

80001420 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001420: 93 05 05 fd  	addi	a1, a0, -48
80001424: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80001428: 93 05 fd ff  	addi	a1, s10, -1
8000142c: 93 06 90 00  	addi	a3, zero, 9
80001430: 63 ee c6 06  	bltu	a3, a2, 0x800014ac <.LBB1_15+0x8c>
80001434: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001438: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000143c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001440: b3 06 8b 03  	mul	a3, s6, s8
80001444: 93 85 15 00  	addi	a1, a1, 1
80001448: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000144c: 93 06 05 fd  	addi	a3, a0, -48
80001450: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001454: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001458: e3 e0 86 ff  	bltu	a3, s8, 0x80001438 <.LBB1_15+0x18>
8000145c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001460: 63 16 75 0b  	bne	a0, s7, 0x8000150c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001464: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001468: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
8000146c: 93 05 05 fd  	addi	a1, a0, -48
80001470: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001474: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001478: 93 06 90 00  	addi	a3, zero, 9
8000147c: 63 e0 c6 06  	bltu	a3, a2, 0x800014dc <.LBB1_15+0xbc>
80001480: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001484: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001488: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000148c: b3 86 8b 03  	mul	a3, s7, s8
80001490: 93 85 15 00  	addi	a1, a1, 1
80001494: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001498: 93 06 05 fd  	addi	a3, a0, -48
8000149c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800014a0: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
800014a4: e3 e0 86 ff  	bltu	a3, s8, 0x80001484 <.LBB1_15+0x64>
800014a8: 6f 00 00 07  	j	0x80001518 <.LBB1_15+0xf8>
;     else if (*format == '*') {
800014ac: 13 06 a0 02  	addi	a2, zero, 42
800014b0: 63 18 c5 04  	bne	a0, a2, 0x80001500 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800014b4: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800014b8: 63 d4 05 00  	bgez	a1, 0x800014c0 <.LBB1_15+0xa0>
800014bc: 13 64 24 00  	ori	s0, s0, 2
800014c0: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800014c4: 03 45 0d 00  	lbu	a0, 0(s10)
800014c8: 13 d6 f5 41  	srai	a2, a1, 31
800014cc: b3 85 c5 00  	add	a1, a1, a2
800014d0: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800014d4: e3 08 75 f9  	beq	a0, s7, 0x80001464 <.LBB1_15+0x44>
800014d8: 6f 00 40 03  	j	0x8000150c <.LBB1_15+0xec>
;       else if (*format == '*') {
800014dc: 13 06 a0 02  	addi	a2, zero, 42
800014e0: 63 1a c5 02  	bne	a0, a2, 0x80001514 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800014e4: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800014e8: 63 44 70 01  	bgtz	s7, 0x800014f0 <.LBB1_15+0xd0>
800014ec: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
800014f0: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800014f4: 13 0d 2d 00  	addi	s10, s10, 2
800014f8: 93 89 49 00  	addi	s3, s3, 4
800014fc: 6f 00 00 02  	j	0x8000151c <.LBB1_15+0xfc>
80001500: 13 0b 00 00  	mv	s6, zero
80001504: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001508: e3 0e 75 f5  	beq	a0, s7, 0x80001464 <.LBB1_15+0x44>
8000150c: 93 0b 00 00  	mv	s7, zero
80001510: 6f 00 c0 00  	j	0x8000151c <.LBB1_15+0xfc>
80001514: 93 0b 00 00  	mv	s7, zero
80001518: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
8000151c: 93 05 85 f9  	addi	a1, a0, -104
80001520: 13 d6 15 00  	srli	a2, a1, 1
80001524: 93 95 f5 01  	slli	a1, a1, 31
80001528: b3 e5 c5 00  	or	a1, a1, a2
8000152c: 13 06 90 00  	addi	a2, zero, 9
80001530: 63 62 b6 06  	bltu	a2, a1, 0x80001594 <.LBB1_42>
80001534: 93 95 25 00  	slli	a1, a1, 2

80001538 <.LBB1_185>:
80001538: 17 26 00 00  	auipc	a2, 2
8000153c: 13 06 06 11  	addi	a2, a2, 272
80001540: b3 85 c5 00  	add	a1, a1, a2
80001544: 83 a6 05 00  	lw	a3, 0(a1)
80001548: 93 05 10 00  	addi	a1, zero, 1
8000154c: 13 06 00 10  	addi	a2, zero, 256
80001550: 67 80 06 00  	jr	a3

80001554 <.LBB1_36>:
;         if (*format == 'h') {
80001554: 03 45 1d 00  	lbu	a0, 1(s10)
80001558: 93 05 80 06  	addi	a1, zero, 104
8000155c: 63 12 b5 12  	bne	a0, a1, 0x80001680 <.LBB1_53+0x48>
80001560: 93 05 20 00  	addi	a1, zero, 2
80001564: 13 06 00 0c  	addi	a2, zero, 192
80001568: 6f 00 00 02  	j	0x80001588 <.LBB1_41>

8000156c <.LBB1_38>:
8000156c: 13 06 00 20  	addi	a2, zero, 512
80001570: 6f 00 80 01  	j	0x80001588 <.LBB1_41>

80001574 <.LBB1_39>:
;         if (*format == 'l') {
80001574: 03 45 1d 00  	lbu	a0, 1(s10)
80001578: 93 05 c0 06  	addi	a1, zero, 108
8000157c: 63 18 b5 10  	bne	a0, a1, 0x8000168c <.LBB1_53+0x54>
80001580: 93 05 20 00  	addi	a1, zero, 2
80001584: 13 06 00 30  	addi	a2, zero, 768

80001588 <.LBB1_41>:
80001588: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
8000158c: 03 45 0d 00  	lbu	a0, 0(s10)
80001590: 33 64 c4 00  	or	s0, s0, a2

80001594 <.LBB1_42>:
;     switch (*format) {
80001594: 93 05 b5 fd  	addi	a1, a0, -37
80001598: 13 06 30 05  	addi	a2, zero, 83
8000159c: 63 64 b6 10  	bltu	a2, a1, 0x800016a4 <.LBB1_59>
800015a0: 93 95 25 00  	slli	a1, a1, 2

800015a4 <.LBB1_186>:
800015a4: 17 26 00 00  	auipc	a2, 2
800015a8: 13 06 c6 0c  	addi	a2, a2, 204
800015ac: b3 85 c5 00  	add	a1, a1, a2
800015b0: 03 a6 05 00  	lw	a2, 0(a1)
800015b4: 93 05 80 00  	addi	a1, zero, 8
800015b8: 13 0c 00 01  	addi	s8, zero, 16
800015bc: 67 00 06 00  	jr	a2

800015c0 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800015c0: 13 74 f4 fe  	andi	s0, s0, -17
800015c4: 13 0c a0 00  	addi	s8, zero, 10

800015c8 <.LBB1_45>:
;         if (*format == 'X') {
800015c8: 93 05 80 05  	addi	a1, zero, 88
800015cc: 63 14 b5 00  	bne	a0, a1, 0x800015d4 <.LBB1_45+0xc>
800015d0: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800015d4: 93 05 40 06  	addi	a1, zero, 100
800015d8: 63 08 b5 0e  	beq	a0, a1, 0x800016c8 <.LBB1_62+0x8>
800015dc: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800015e0: 13 06 90 06  	addi	a2, zero, 105
800015e4: 63 02 c5 0e  	beq	a0, a2, 0x800016c8 <.LBB1_62+0x8>
800015e8: 6f 00 80 0d  	j	0x800016c0 <.LBB1_62>

800015ec <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800015ec: 93 05 60 04  	addi	a1, zero, 70
800015f0: 63 14 b5 00  	bne	a0, a1, 0x800015f8 <.LBB1_49+0xc>
800015f4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800015f8: 13 85 79 00  	addi	a0, s3, 7
800015fc: 13 75 85 ff  	andi	a0, a0, -8
80001600: 07 35 05 00  	fld	fa0, 0(a0)
80001604: 93 09 85 00  	addi	s3, a0, 8
80001608: 13 05 09 00  	mv	a0, s2
8000160c: 93 05 0a 00  	mv	a1, s4
80001610: 13 86 0c 00  	mv	a2, s9
80001614: 93 86 0a 00  	mv	a3, s5
80001618: 13 87 0b 00  	mv	a4, s7
8000161c: 93 07 0b 00  	mv	a5, s6
80001620: 13 08 04 00  	mv	a6, s0
80001624: 97 10 00 00  	auipc	ra, 1
80001628: e7 80 80 98  	jalr	-1656(ra)
8000162c: 6f 00 00 7c  	j	0x80001dec <.LBB1_124+0x2fc>

80001630 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001630: 83 25 81 01  	lw	a1, 24(sp)
80001634: 33 64 b4 00  	or	s0, s0, a1

80001638 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001638: 13 65 25 00  	ori	a0, a0, 2
8000163c: 93 05 70 04  	addi	a1, zero, 71
80001640: 63 14 b5 00  	bne	a0, a1, 0x80001648 <.LBB1_53+0x10>
80001644: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001648: 13 85 79 00  	addi	a0, s3, 7
8000164c: 13 75 85 ff  	andi	a0, a0, -8
80001650: 07 35 05 00  	fld	fa0, 0(a0)
80001654: 93 09 85 00  	addi	s3, a0, 8
80001658: 13 05 09 00  	mv	a0, s2
8000165c: 93 05 0a 00  	mv	a1, s4
80001660: 13 86 0c 00  	mv	a2, s9
80001664: 93 86 0a 00  	mv	a3, s5
80001668: 13 87 0b 00  	mv	a4, s7
8000166c: 93 07 0b 00  	mv	a5, s6
80001670: 13 08 04 00  	mv	a6, s0
80001674: 97 10 00 00  	auipc	ra, 1
80001678: e7 80 80 01  	jalr	24(ra)
8000167c: 6f 00 00 77  	j	0x80001dec <.LBB1_124+0x2fc>
80001680: 13 64 04 08  	ori	s0, s0, 128
80001684: 13 0d 1d 00  	addi	s10, s10, 1
80001688: 6f f0 df f0  	j	0x80001594 <.LBB1_42>
8000168c: 13 64 04 10  	ori	s0, s0, 256
80001690: 13 0d 1d 00  	addi	s10, s10, 1
80001694: 6f f0 1f f0  	j	0x80001594 <.LBB1_42>

80001698 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001698: 13 8c 1c 00  	addi	s8, s9, 1
8000169c: 13 05 50 02  	addi	a0, zero, 37
800016a0: 6f 00 80 00  	j	0x800016a8 <.LBB1_59+0x4>

800016a4 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
800016a4: 13 8c 1c 00  	addi	s8, s9, 1
800016a8: 93 05 0a 00  	mv	a1, s4
800016ac: 13 86 0c 00  	mv	a2, s9
800016b0: 93 86 0a 00  	mv	a3, s5
800016b4: e7 00 09 00  	jalr	s2
800016b8: 6f 00 80 73  	j	0x80001df0 <.LBB1_124+0x300>

800016bc <.LBB1_61>:
800016bc: 93 05 20 00  	addi	a1, zero, 2

800016c0 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800016c0: 13 74 34 ff  	andi	s0, s0, -13
800016c4: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800016c8: 93 75 04 40  	andi	a1, s0, 1024
800016cc: 63 84 05 00  	beqz	a1, 0x800016d4 <.LBB1_62+0x14>
800016d0: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800016d4: 93 05 90 06  	addi	a1, zero, 105
800016d8: 63 06 b5 00  	beq	a0, a1, 0x800016e4 <.LBB1_62+0x24>
800016dc: 93 05 40 06  	addi	a1, zero, 100
800016e0: 63 1c b5 12  	bne	a0, a1, 0x80001818 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800016e4: 13 75 04 20  	andi	a0, s0, 512
800016e8: 63 16 05 02  	bnez	a0, 0x80001714 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800016ec: 13 75 04 10  	andi	a0, s0, 256
800016f0: 63 1c 05 14  	bnez	a0, 0x80001848 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800016f4: 13 75 04 04  	andi	a0, s0, 64
800016f8: 63 18 05 4e  	bnez	a0, 0x80001be8 <.LBB1_124+0xf8>
800016fc: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001700: 93 75 04 08  	andi	a1, s0, 128
80001704: 63 84 05 4e  	beqz	a1, 0x80001bec <.LBB1_124+0xfc>
80001708: 13 15 08 01  	slli	a0, a6, 16
8000170c: 13 58 05 41  	srai	a6, a0, 16
80001710: 6f 00 c0 4d  	j	0x80001bec <.LBB1_124+0xfc>
80001714: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80001718: 13 85 79 00  	addi	a0, s3, 7
8000171c: 13 75 85 ff  	andi	a0, a0, -8
80001720: 83 29 05 00  	lw	s3, 0(a0)
80001724: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80001728: 13 65 45 00  	ori	a0, a0, 4
8000172c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001730: 23 24 a1 00  	sw	a0, 8(sp)
80001734: 33 e5 a9 00  	or	a0, s3, a0
80001738: 63 14 05 00  	bnez	a0, 0x80001740 <.LBB1_62+0x80>
8000173c: 13 74 f4 fe  	andi	s0, s0, -17
80001740: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001744: 93 75 04 40  	andi	a1, s0, 1024
80001748: 93 d5 a5 00  	srli	a1, a1, 10
8000174c: 33 75 b5 00  	and	a0, a0, a1
80001750: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001754: 63 14 05 0a  	bnez	a0, 0x800017fc <.LBB1_62+0x13c>
80001758: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000175c: 63 da 04 00  	bgez	s1, 0x80001770 <.LBB1_62+0xb0>
80001760: 33 35 30 01  	snez	a0, s3
80001764: b3 09 30 41  	neg	s3, s3
80001768: 33 85 a4 00  	add	a0, s1, a0
8000176c: b3 04 a0 40  	neg	s1, a0
80001770: 13 09 00 00  	mv	s2, zero
80001774: 13 75 04 02  	andi	a0, s0, 32
80001778: 13 45 15 06  	xori	a0, a0, 97
8000177c: 13 05 65 0f  	addi	a0, a0, 246
80001780: 23 2a a1 00  	sw	a0, 20(sp)
80001784: 6f 00 40 02  	j	0x800017a8 <.LBB1_62+0xe8>
80001788: 13 06 10 00  	addi	a2, zero, 1
8000178c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001790: 93 36 f9 01  	sltiu	a3, s2, 31
80001794: 33 f6 c6 00  	and	a2, a3, a2
80001798: 13 89 07 00  	mv	s2, a5
8000179c: 93 09 05 00  	mv	s3, a0
800017a0: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800017a4: 63 0c 06 04  	beqz	a2, 0x800017fc <.LBB1_62+0x13c>
;       value /= base;
800017a8: 13 85 09 00  	mv	a0, s3
800017ac: 93 85 04 00  	mv	a1, s1
800017b0: 13 06 0c 00  	mv	a2, s8
800017b4: 93 06 00 00  	mv	a3, zero
800017b8: 97 f0 ff ff  	auipc	ra, 1048575
800017bc: e7 80 80 84  	jalr	-1976(ra)
800017c0: 33 06 85 03  	mul	a2, a0, s8
800017c4: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800017c8: 13 77 e6 0f  	andi	a4, a2, 254
800017cc: 93 06 00 03  	addi	a3, zero, 48
800017d0: 93 07 a0 00  	addi	a5, zero, 10
800017d4: 63 64 f7 00  	bltu	a4, a5, 0x800017dc <.LBB1_62+0x11c>
800017d8: 83 26 41 01  	lw	a3, 20(sp)
800017dc: 33 86 c6 00  	add	a2, a3, a2
800017e0: 93 06 c1 01  	addi	a3, sp, 28
800017e4: b3 86 26 01  	add	a3, a3, s2
800017e8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800017ec: e3 9e 04 f8  	bnez	s1, 0x80001788 <.LBB1_62+0xc8>
800017f0: 33 b6 89 01  	sltu	a2, s3, s8
800017f4: 13 46 16 00  	xori	a2, a2, 1
800017f8: 6f f0 5f f9  	j	0x8000178c <.LBB1_62+0xcc>
800017fc: 03 25 41 00  	lw	a0, 4(sp)
80001800: 93 09 85 00  	addi	s3, a0, 8
80001804: 03 25 81 00  	lw	a0, 8(sp)
80001808: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000180c: 13 07 c1 01  	addi	a4, sp, 28
80001810: 03 29 c1 00  	lw	s2, 12(sp)
80001814: 6f 00 80 47  	j	0x80001c8c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80001818: 13 75 04 20  	andi	a0, s0, 512
8000181c: 63 12 05 0c  	bnez	a0, 0x800018e0 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001820: 13 75 04 10  	andi	a0, s0, 256
80001824: 63 1e 05 46  	bnez	a0, 0x80001ca0 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001828: 13 75 04 04  	andi	a0, s0, 64
8000182c: 63 10 05 50  	bnez	a0, 0x80001d2c <.LBB1_124+0x23c>
80001830: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001834: 93 75 04 08  	andi	a1, s0, 128
80001838: 63 8c 05 4e  	beqz	a1, 0x80001d30 <.LBB1_124+0x240>
8000183c: 83 25 01 01  	lw	a1, 16(sp)
80001840: 33 75 b5 00  	and	a0, a0, a1
80001844: 6f 00 c0 4e  	j	0x80001d30 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80001848: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
8000184c: 63 14 08 00  	bnez	a6, 0x80001854 <.LBB1_62+0x194>
80001850: 13 74 f4 fe  	andi	s0, s0, -17
80001854: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001858: 13 76 04 40  	andi	a2, s0, 1024
8000185c: 13 56 a6 00  	srli	a2, a2, 10
80001860: b3 f5 c5 00  	and	a1, a1, a2
80001864: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001868: 63 9c 05 40  	bnez	a1, 0x80001c80 <.LBB1_124+0x190>
8000186c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001870: 13 56 f8 41  	srai	a2, a6, 31
80001874: b3 06 c8 00  	add	a3, a6, a2
80001878: b3 c6 c6 00  	xor	a3, a3, a2
8000187c: 13 76 04 02  	andi	a2, s0, 32
80001880: 13 46 16 06  	xori	a2, a2, 97
80001884: 93 08 66 0f  	addi	a7, a2, 246
80001888: 6f 00 40 03  	j	0x800018bc <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000188c: 33 05 f6 00  	add	a0, a2, a5
80001890: 93 87 15 00  	addi	a5, a1, 1
80001894: 13 06 c1 01  	addi	a2, sp, 28
80001898: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000189c: b3 b6 86 01  	sltu	a3, a3, s8
800018a0: 93 c6 16 00  	xori	a3, a3, 1
800018a4: 93 b5 f5 01  	sltiu	a1, a1, 31
800018a8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018ac: 23 00 a6 00  	sb	a0, 0(a2)
800018b0: 93 85 07 00  	mv	a1, a5
800018b4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018b8: 63 84 04 3c  	beqz	s1, 0x80001c80 <.LBB1_124+0x190>
;       value /= base;
800018bc: 33 d7 86 03  	divu	a4, a3, s8
800018c0: 33 06 87 03  	mul	a2, a4, s8
800018c4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018c8: 13 f5 e7 0f  	andi	a0, a5, 254
800018cc: 13 06 00 03  	addi	a2, zero, 48
800018d0: 93 04 a0 00  	addi	s1, zero, 10
800018d4: e3 6c 95 fa  	bltu	a0, s1, 0x8000188c <.LBB1_62+0x1cc>
800018d8: 13 86 08 00  	mv	a2, a7
800018dc: 6f f0 1f fb  	j	0x8000188c <.LBB1_62+0x1cc>
800018e0: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800018e4: 13 85 79 00  	addi	a0, s3, 7
800018e8: 93 75 85 ff  	andi	a1, a0, -8
800018ec: 03 a9 05 00  	lw	s2, 0(a1)
800018f0: 13 e5 45 00  	ori	a0, a1, 4
800018f4: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800018f8: 33 65 39 01  	or	a0, s2, s3
800018fc: 23 24 b1 00  	sw	a1, 8(sp)
80001900: 63 14 05 00  	bnez	a0, 0x80001908 <.LBB1_62+0x248>
80001904: 13 74 f4 fe  	andi	s0, s0, -17
80001908: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000190c: 93 75 04 40  	andi	a1, s0, 1024
80001910: 93 d5 a5 00  	srli	a1, a1, 10
80001914: 33 75 b5 00  	and	a0, a0, a1
80001918: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000191c: 63 18 05 08  	bnez	a0, 0x800019ac <.LBB1_62+0x2ec>
80001920: 93 04 00 00  	mv	s1, zero
80001924: 13 75 04 02  	andi	a0, s0, 32
80001928: 13 45 15 06  	xori	a0, a0, 97
8000192c: 13 05 65 0f  	addi	a0, a0, 246
80001930: 23 2a a1 00  	sw	a0, 20(sp)
80001934: 6f 00 40 02  	j	0x80001958 <.LBB1_62+0x298>
80001938: 13 06 10 00  	addi	a2, zero, 1
8000193c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001940: 93 b6 f4 01  	sltiu	a3, s1, 31
80001944: 33 f6 c6 00  	and	a2, a3, a2
80001948: 93 84 07 00  	mv	s1, a5
8000194c: 13 09 05 00  	mv	s2, a0
80001950: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001954: 63 0c 06 04  	beqz	a2, 0x800019ac <.LBB1_62+0x2ec>
;       value /= base;
80001958: 13 05 09 00  	mv	a0, s2
8000195c: 93 85 09 00  	mv	a1, s3
80001960: 13 06 0c 00  	mv	a2, s8
80001964: 93 06 00 00  	mv	a3, zero
80001968: 97 e0 ff ff  	auipc	ra, 1048574
8000196c: e7 80 80 69  	jalr	1688(ra)
80001970: 33 06 85 03  	mul	a2, a0, s8
80001974: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001978: 13 77 e6 0f  	andi	a4, a2, 254
8000197c: 93 06 00 03  	addi	a3, zero, 48
80001980: 93 07 a0 00  	addi	a5, zero, 10
80001984: 63 64 f7 00  	bltu	a4, a5, 0x8000198c <.LBB1_62+0x2cc>
80001988: 83 26 41 01  	lw	a3, 20(sp)
8000198c: 33 86 c6 00  	add	a2, a3, a2
80001990: 93 06 c1 01  	addi	a3, sp, 28
80001994: b3 86 96 00  	add	a3, a3, s1
80001998: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000199c: e3 9e 09 f8  	bnez	s3, 0x80001938 <.LBB1_62+0x278>
800019a0: 33 36 89 01  	sltu	a2, s2, s8
800019a4: 13 46 16 00  	xori	a2, a2, 1
800019a8: 6f f0 5f f9  	j	0x8000193c <.LBB1_62+0x27c>
800019ac: 03 25 81 00  	lw	a0, 8(sp)
800019b0: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800019b4: 13 07 c1 01  	addi	a4, sp, 28
800019b8: 03 29 c1 00  	lw	s2, 12(sp)
800019bc: 6f 00 40 40  	j	0x80001dc0 <.LBB1_124+0x2d0>

800019c0 <.LBB1_108>:
800019c0: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800019c4: 13 79 24 00  	andi	s2, s0, 2
800019c8: 93 04 10 00  	addi	s1, zero, 1
800019cc: 63 1e 09 02  	bnez	s2, 0x80001a08 <.LBB1_108+0x48>
800019d0: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800019d4: 63 6a 9b 02  	bltu	s6, s1, 0x80001a08 <.LBB1_108+0x48>
800019d8: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800019dc: 13 0c fb ff  	addi	s8, s6, -1
800019e0: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800019e4: 33 86 8c 00  	add	a2, s9, s0
800019e8: 13 05 00 02  	addi	a0, zero, 32
800019ec: 93 05 0a 00  	mv	a1, s4
800019f0: 93 86 0a 00  	mv	a3, s5
800019f4: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800019f8: 13 04 14 00  	addi	s0, s0, 1
800019fc: e3 14 8c fe  	bne	s8, s0, 0x800019e4 <.LBB1_108+0x24>
80001a00: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001a04: b3 8c 8c 00  	add	s9, s9, s0
80001a08: 03 c5 09 00  	lbu	a0, 0(s3)
80001a0c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001a10: 93 89 49 00  	addi	s3, s3, 4
80001a14: 13 8c 1c 00  	addi	s8, s9, 1
80001a18: 93 05 0a 00  	mv	a1, s4
80001a1c: 13 86 0c 00  	mv	a2, s9
80001a20: 93 86 0a 00  	mv	a3, s5
80001a24: 13 89 0b 00  	mv	s2, s7
80001a28: e7 80 0b 00  	jalr	s7
80001a2c: 33 b5 64 01  	sltu	a0, s1, s6
80001a30: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001a34: 33 65 a4 00  	or	a0, s0, a0
80001a38: 63 1c 05 3a  	bnez	a0, 0x80001df0 <.LBB1_124+0x300>
;           while (l++ < width) {
80001a3c: 33 04 9b 40  	sub	s0, s6, s1
80001a40: 93 0b e0 02  	addi	s7, zero, 46
80001a44: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001a48: 13 0c 1c 00  	addi	s8, s8, 1
80001a4c: 13 05 00 02  	addi	a0, zero, 32
80001a50: 93 05 0a 00  	mv	a1, s4
80001a54: 93 86 0a 00  	mv	a3, s5
80001a58: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001a5c: 13 04 f4 ff  	addi	s0, s0, -1
80001a60: e3 12 04 fe  	bnez	s0, 0x80001a44 <.LBB1_108+0x84>
80001a64: 13 0b 50 02  	addi	s6, zero, 37
80001a68: 13 04 1d 00  	addi	s0, s10, 1
80001a6c: 6f f0 df 91  	j	0x80001388 <.LBB1_183+0x30>

80001a70 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001a70: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001a74: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80001a78: 63 14 05 00  	bnez	a0, 0x80001a80 <.LBB1_117+0x10>
80001a7c: 93 fe fe fe  	andi	t4, t4, -17
80001a80: 93 04 a0 00  	addi	s1, zero, 10
80001a84: 13 04 f0 00  	addi	s0, zero, 15
80001a88: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001a8c: 13 f6 0e 40  	andi	a2, t4, 1024
80001a90: 13 56 a6 00  	srli	a2, a2, 10
80001a94: b3 f5 c5 00  	and	a1, a1, a2
80001a98: 93 07 00 00  	mv	a5, zero
80001a9c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001aa0: 63 98 05 10  	bnez	a1, 0x80001bb0 <.LBB1_124+0xc0>
80001aa4: 93 05 00 00  	mv	a1, zero
80001aa8: 6f 00 40 03  	j	0x80001adc <.LBB1_117+0x6c>
80001aac: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001ab0: 33 06 d6 00  	add	a2, a2, a3
80001ab4: 93 87 15 00  	addi	a5, a1, 1
80001ab8: 93 06 c1 01  	addi	a3, sp, 28
80001abc: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001ac0: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80001ac4: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001ac8: 93 b5 f5 01  	sltiu	a1, a1, 31
80001acc: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001ad0: 23 80 c6 00  	sb	a2, 0(a3)
80001ad4: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001ad8: 63 0c 07 0c  	beqz	a4, 0x80001bb0 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001adc: 93 76 e5 00  	andi	a3, a0, 14
80001ae0: 13 06 00 03  	addi	a2, zero, 48
80001ae4: e3 e4 96 fc  	bltu	a3, s1, 0x80001aac <.LBB1_117+0x3c>
80001ae8: 13 06 70 03  	addi	a2, zero, 55
80001aec: 6f f0 1f fc  	j	0x80001aac <.LBB1_117+0x3c>

80001af0 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001af0: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80001af4: 03 c5 07 00  	lbu	a0, 0(a5)
80001af8: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80001afc: 63 0c 05 02  	beqz	a0, 0x80001b34 <.LBB1_124+0x44>
80001b00: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80001b04: 63 84 0b 00  	beqz	s7, 0x80001b0c <.LBB1_124+0x1c>
80001b08: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80001b0c: 93 85 f5 ff  	addi	a1, a1, -1
80001b10: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001b14: 03 c7 16 00  	lbu	a4, 1(a3)
80001b18: 13 86 16 00  	addi	a2, a3, 1
80001b1c: b3 36 e0 00  	snez	a3, a4
80001b20: 33 37 b0 00  	snez	a4, a1
80001b24: 33 77 d7 00  	and	a4, a4, a3
80001b28: 93 85 f5 ff  	addi	a1, a1, -1
80001b2c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001b30: e3 12 07 fe  	bnez	a4, 0x80001b14 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001b34: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80001b38: 93 75 04 40  	andi	a1, s0, 1024
80001b3c: 93 b4 15 00  	seqz	s1, a1
80001b40: 23 2a c1 00  	sw	a2, 20(sp)
80001b44: b3 35 76 01  	sltu	a1, a2, s7
80001b48: b3 e5 b4 00  	or	a1, s1, a1
80001b4c: 63 94 05 00  	bnez	a1, 0x80001b54 <.LBB1_124+0x64>
80001b50: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001b54: 93 75 24 00  	andi	a1, s0, 2
80001b58: 23 26 b1 00  	sw	a1, 12(sp)
80001b5c: 63 96 05 2a  	bnez	a1, 0x80001e08 <.LBB1_124+0x318>
80001b60: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001b64: 63 fe 65 29  	bgeu	a1, s6, 0x80001e00 <.LBB1_124+0x310>
80001b68: 23 24 f1 00  	sw	a5, 8(sp)
80001b6c: 13 04 00 00  	mv	s0, zero
80001b70: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001b74: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80001b78: 33 86 8c 00  	add	a2, s9, s0
80001b7c: 13 05 00 02  	addi	a0, zero, 32
80001b80: 93 05 0a 00  	mv	a1, s4
80001b84: 93 86 0a 00  	mv	a3, s5
80001b88: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001b8c: 13 04 14 00  	addi	s0, s0, 1
80001b90: e3 14 89 fe  	bne	s2, s0, 0x80001b78 <.LBB1_124+0x88>
80001b94: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001b98: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80001b9c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001ba0: 23 2a b1 00  	sw	a1, 20(sp)
80001ba4: b3 8c 8c 00  	add	s9, s9, s0
80001ba8: 13 09 0c 00  	mv	s2, s8
80001bac: 6f 00 c0 25  	j	0x80001e08 <.LBB1_124+0x318>
80001bb0: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001bb4: 13 07 c1 01  	addi	a4, sp, 28
80001bb8: 93 08 00 01  	addi	a7, zero, 16
80001bbc: 13 0e 80 00  	addi	t3, zero, 8
80001bc0: 13 05 09 00  	mv	a0, s2
80001bc4: 93 05 0a 00  	mv	a1, s4
80001bc8: 13 86 0c 00  	mv	a2, s9
80001bcc: 93 86 0a 00  	mv	a3, s5
80001bd0: 13 08 00 00  	mv	a6, zero
80001bd4: 93 83 0b 00  	mv	t2, s7
80001bd8: 97 10 00 00  	auipc	ra, 1
80001bdc: e7 80 00 fa  	jalr	-96(ra)
80001be0: 13 0c 05 00  	mv	s8, a0
80001be4: 6f 00 00 21  	j	0x80001df4 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001be8: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80001bec: 63 14 08 00  	bnez	a6, 0x80001bf4 <.LBB1_124+0x104>
80001bf0: 13 74 f4 fe  	andi	s0, s0, -17
80001bf4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001bf8: 13 76 04 40  	andi	a2, s0, 1024
80001bfc: 13 56 a6 00  	srli	a2, a2, 10
80001c00: b3 f5 c5 00  	and	a1, a1, a2
80001c04: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001c08: 63 9c 05 06  	bnez	a1, 0x80001c80 <.LBB1_124+0x190>
80001c0c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001c10: 13 56 f8 41  	srai	a2, a6, 31
80001c14: b3 06 c8 00  	add	a3, a6, a2
80001c18: b3 c6 c6 00  	xor	a3, a3, a2
80001c1c: 13 76 04 02  	andi	a2, s0, 32
80001c20: 13 46 16 06  	xori	a2, a2, 97
80001c24: 93 08 66 0f  	addi	a7, a2, 246
80001c28: 6f 00 40 03  	j	0x80001c5c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001c2c: 33 05 f6 00  	add	a0, a2, a5
80001c30: 93 87 15 00  	addi	a5, a1, 1
80001c34: 13 06 c1 01  	addi	a2, sp, 28
80001c38: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001c3c: b3 b6 86 01  	sltu	a3, a3, s8
80001c40: 93 c6 16 00  	xori	a3, a3, 1
80001c44: 93 b5 f5 01  	sltiu	a1, a1, 31
80001c48: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001c4c: 23 00 a6 00  	sb	a0, 0(a2)
80001c50: 93 85 07 00  	mv	a1, a5
80001c54: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001c58: 63 84 04 02  	beqz	s1, 0x80001c80 <.LBB1_124+0x190>
;       value /= base;
80001c5c: 33 d7 86 03  	divu	a4, a3, s8
80001c60: 33 06 87 03  	mul	a2, a4, s8
80001c64: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001c68: 13 f5 e7 0f  	andi	a0, a5, 254
80001c6c: 13 06 00 03  	addi	a2, zero, 48
80001c70: 93 04 a0 00  	addi	s1, zero, 10
80001c74: e3 6c 95 fa  	bltu	a0, s1, 0x80001c2c <.LBB1_124+0x13c>
80001c78: 13 86 08 00  	mv	a2, a7
80001c7c: 6f f0 1f fb  	j	0x80001c2c <.LBB1_124+0x13c>
80001c80: 93 89 49 00  	addi	s3, s3, 4
80001c84: 13 58 f8 01  	srli	a6, a6, 31
80001c88: 13 07 c1 01  	addi	a4, sp, 28
80001c8c: 13 05 09 00  	mv	a0, s2
80001c90: 93 05 0a 00  	mv	a1, s4
80001c94: 13 86 0c 00  	mv	a2, s9
80001c98: 93 86 0a 00  	mv	a3, s5
80001c9c: 6f 00 80 13  	j	0x80001dd4 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001ca0: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001ca4: 63 14 05 00  	bnez	a0, 0x80001cac <.LBB1_124+0x1bc>
80001ca8: 13 74 f4 fe  	andi	s0, s0, -17
80001cac: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001cb0: 13 76 04 40  	andi	a2, s0, 1024
80001cb4: 13 56 a6 00  	srli	a2, a2, 10
80001cb8: b3 f5 c5 00  	and	a1, a1, a2
80001cbc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001cc0: 63 9c 05 0e  	bnez	a1, 0x80001db8 <.LBB1_124+0x2c8>
80001cc4: 13 06 00 00  	mv	a2, zero
80001cc8: 93 75 04 02  	andi	a1, s0, 32
80001ccc: 93 c5 15 06  	xori	a1, a1, 97
80001cd0: 13 88 65 0f  	addi	a6, a1, 246
80001cd4: 6f 00 40 03  	j	0x80001d08 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001cd8: 33 87 e7 00  	add	a4, a5, a4
80001cdc: 93 07 16 00  	addi	a5, a2, 1
80001ce0: 93 05 c1 01  	addi	a1, sp, 28
80001ce4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001ce8: 33 35 85 01  	sltu	a0, a0, s8
80001cec: 13 45 15 00  	xori	a0, a0, 1
80001cf0: 13 36 f6 01  	sltiu	a2, a2, 31
80001cf4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001cf8: 23 80 e4 00  	sb	a4, 0(s1)
80001cfc: 13 86 07 00  	mv	a2, a5
80001d00: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d04: 63 8a 05 0a  	beqz	a1, 0x80001db8 <.LBB1_124+0x2c8>
;       value /= base;
80001d08: b3 56 85 03  	divu	a3, a0, s8
80001d0c: 33 87 86 03  	mul	a4, a3, s8
80001d10: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d14: 93 74 e7 0f  	andi	s1, a4, 254
80001d18: 93 07 00 03  	addi	a5, zero, 48
80001d1c: 93 05 a0 00  	addi	a1, zero, 10
80001d20: e3 ec b4 fa  	bltu	s1, a1, 0x80001cd8 <.LBB1_124+0x1e8>
80001d24: 93 07 08 00  	mv	a5, a6
80001d28: 6f f0 1f fb  	j	0x80001cd8 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001d2c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001d30: 63 14 05 00  	bnez	a0, 0x80001d38 <.LBB1_124+0x248>
80001d34: 13 74 f4 fe  	andi	s0, s0, -17
80001d38: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d3c: 13 76 04 40  	andi	a2, s0, 1024
80001d40: 13 56 a6 00  	srli	a2, a2, 10
80001d44: b3 f5 c5 00  	and	a1, a1, a2
80001d48: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d4c: 63 96 05 06  	bnez	a1, 0x80001db8 <.LBB1_124+0x2c8>
80001d50: 13 06 00 00  	mv	a2, zero
80001d54: 93 75 04 02  	andi	a1, s0, 32
80001d58: 93 c5 15 06  	xori	a1, a1, 97
80001d5c: 13 88 65 0f  	addi	a6, a1, 246
80001d60: 6f 00 40 03  	j	0x80001d94 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d64: 33 87 e7 00  	add	a4, a5, a4
80001d68: 93 07 16 00  	addi	a5, a2, 1
80001d6c: 93 05 c1 01  	addi	a1, sp, 28
80001d70: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d74: 33 35 85 01  	sltu	a0, a0, s8
80001d78: 13 45 15 00  	xori	a0, a0, 1
80001d7c: 13 36 f6 01  	sltiu	a2, a2, 31
80001d80: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d84: 23 80 e4 00  	sb	a4, 0(s1)
80001d88: 13 86 07 00  	mv	a2, a5
80001d8c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d90: 63 84 05 02  	beqz	a1, 0x80001db8 <.LBB1_124+0x2c8>
;       value /= base;
80001d94: b3 56 85 03  	divu	a3, a0, s8
80001d98: 33 87 86 03  	mul	a4, a3, s8
80001d9c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001da0: 93 74 e7 0f  	andi	s1, a4, 254
80001da4: 93 07 00 03  	addi	a5, zero, 48
80001da8: 93 05 a0 00  	addi	a1, zero, 10
80001dac: e3 ec b4 fa  	bltu	s1, a1, 0x80001d64 <.LBB1_124+0x274>
80001db0: 93 07 08 00  	mv	a5, a6
80001db4: 6f f0 1f fb  	j	0x80001d64 <.LBB1_124+0x274>
80001db8: 93 89 49 00  	addi	s3, s3, 4
80001dbc: 13 07 c1 01  	addi	a4, sp, 28
80001dc0: 13 05 09 00  	mv	a0, s2
80001dc4: 93 05 0a 00  	mv	a1, s4
80001dc8: 13 86 0c 00  	mv	a2, s9
80001dcc: 93 86 0a 00  	mv	a3, s5
80001dd0: 13 08 00 00  	mv	a6, zero
80001dd4: 93 08 0c 00  	mv	a7, s8
80001dd8: 93 83 0b 00  	mv	t2, s7
80001ddc: 13 0e 0b 00  	mv	t3, s6
80001de0: 93 0e 04 00  	mv	t4, s0
80001de4: 97 10 00 00  	auipc	ra, 1
80001de8: e7 80 40 d9  	jalr	-620(ra)
80001dec: 13 0c 05 00  	mv	s8, a0
80001df0: 13 0b 50 02  	addi	s6, zero, 37
80001df4: 93 0b e0 02  	addi	s7, zero, 46
80001df8: 13 04 1d 00  	addi	s0, s10, 1
80001dfc: 6f f0 cf d8  	j	0x80001388 <.LBB1_183+0x30>
80001e00: 93 85 15 00  	addi	a1, a1, 1
80001e04: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001e08: 63 00 05 04  	beqz	a0, 0x80001e48 <.LBB1_124+0x358>
80001e0c: 13 84 17 00  	addi	s0, a5, 1
80001e10: 6f 00 00 03  	j	0x80001e40 <.LBB1_124+0x350>
80001e14: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001e18: 13 8c 1c 00  	addi	s8, s9, 1
80001e1c: 13 75 f5 0f  	andi	a0, a0, 255
80001e20: 93 05 0a 00  	mv	a1, s4
80001e24: 13 86 0c 00  	mv	a2, s9
80001e28: 93 86 0a 00  	mv	a3, s5
80001e2c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001e30: 03 45 04 00  	lbu	a0, 0(s0)
80001e34: 13 04 14 00  	addi	s0, s0, 1
80001e38: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001e3c: 63 08 05 00  	beqz	a0, 0x80001e4c <.LBB1_124+0x35c>
80001e40: e3 9c 04 fc  	bnez	s1, 0x80001e18 <.LBB1_124+0x328>
80001e44: e3 98 0b fc  	bnez	s7, 0x80001e14 <.LBB1_124+0x324>
80001e48: 13 8c 0c 00  	mv	s8, s9
80001e4c: 03 25 c1 00  	lw	a0, 12(sp)
80001e50: 13 35 15 00  	seqz	a0, a0
80001e54: 03 26 41 01  	lw	a2, 20(sp)
80001e58: b3 35 66 01  	sltu	a1, a2, s6
80001e5c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001e60: 33 65 b5 00  	or	a0, a0, a1
80001e64: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001e68: e3 14 05 f8  	bnez	a0, 0x80001df0 <.LBB1_124+0x300>
;           while (l++ < width) {
80001e6c: 33 04 cb 40  	sub	s0, s6, a2
80001e70: 93 0b e0 02  	addi	s7, zero, 46
80001e74: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001e78: 13 0c 1c 00  	addi	s8, s8, 1
80001e7c: 13 05 00 02  	addi	a0, zero, 32
80001e80: 93 05 0a 00  	mv	a1, s4
80001e84: 93 86 0a 00  	mv	a3, s5
80001e88: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001e8c: 13 04 f4 ff  	addi	s0, s0, -1
80001e90: e3 12 04 fe  	bnez	s0, 0x80001e74 <.LBB1_124+0x384>
80001e94: 13 0b 50 02  	addi	s6, zero, 37
80001e98: 13 04 1d 00  	addi	s0, s10, 1
80001e9c: 6f f0 cf ce  	j	0x80001388 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001ea0: 13 86 0c 00  	mv	a2, s9
80001ea4: 63 e4 5c 01  	bltu	s9, s5, 0x80001eac <.LBB1_124+0x3bc>
80001ea8: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001eac: 13 05 00 00  	mv	a0, zero
80001eb0: 93 05 0a 00  	mv	a1, s4
80001eb4: 93 86 0a 00  	mv	a3, s5
80001eb8: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001ebc: 13 85 0c 00  	mv	a0, s9
80001ec0: 83 2d c1 03  	lw	s11, 60(sp)
80001ec4: 03 2d 01 04  	lw	s10, 64(sp)
80001ec8: 83 2c 41 04  	lw	s9, 68(sp)
80001ecc: 03 2c 81 04  	lw	s8, 72(sp)
80001ed0: 83 2b c1 04  	lw	s7, 76(sp)
80001ed4: 03 2b 01 05  	lw	s6, 80(sp)
80001ed8: 83 2a 41 05  	lw	s5, 84(sp)
80001edc: 03 2a 81 05  	lw	s4, 88(sp)
80001ee0: 83 29 c1 05  	lw	s3, 92(sp)
80001ee4: 03 29 01 06  	lw	s2, 96(sp)
80001ee8: 83 24 41 06  	lw	s1, 100(sp)
80001eec: 03 24 81 06  	lw	s0, 104(sp)
80001ef0: 83 20 c1 06  	lw	ra, 108(sp)
80001ef4: 13 01 01 07  	addi	sp, sp, 112
80001ef8: 67 80 00 00  	ret

80001efc <_out_char.llvm.1805434900161566649>:
;   if (character) {
80001efc: 63 04 05 0a  	beqz	a0, 0x80001fa4 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001f00: f3 25 40 f1  	csrr	a1, mhartid
80001f04: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001f08: 33 86 c5 02  	mul	a2, a1, a2

80001f0c <.LBB2_6>:
80001f0c: 97 26 00 00  	auipc	a3, 2
80001f10: 93 86 86 a6  	addi	a3, a3, -1432
80001f14: b3 05 d6 00  	add	a1, a2, a3
80001f18: 03 a7 05 00  	lw	a4, 0(a1)
80001f1c: 93 07 17 00  	addi	a5, a4, 1
80001f20: 23 a0 f5 00  	sw	a5, 0(a1)
80001f24: 33 87 e5 00  	add	a4, a1, a4
80001f28: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001f2c: 03 a7 05 00  	lw	a4, 0(a1)
80001f30: 13 07 47 c0  	addi	a4, a4, -1020
80001f34: 33 37 e0 00  	snez	a4, a4
80001f38: 13 05 65 ff  	addi	a0, a0, -10
80001f3c: 33 35 a0 00  	snez	a0, a0
80001f40: 33 75 e5 00  	and	a0, a0, a4
80001f44: 63 10 05 06  	bnez	a0, 0x80001fa4 <.LBB2_8+0x18>
80001f48: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001f4c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001f50: 23 26 05 00  	sw	zero, 12(a0)
80001f54: 93 06 00 04  	addi	a3, zero, 64
80001f58: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001f5c: 23 2a 05 00  	sw	zero, 20(a0)
80001f60: 93 06 10 00  	addi	a3, zero, 1
80001f64: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001f68: 23 2e 05 00  	sw	zero, 28(a0)
80001f6c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001f70: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001f74: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001f78: 23 22 05 02  	sw	zero, 36(a0)
80001f7c: 23 20 c5 02  	sw	a2, 32(a0)

80001f80 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001f80: 17 25 00 00  	auipc	a0, 2
80001f84: 13 05 05 8c  	addi	a0, a0, -1856
80001f88: 23 20 d5 00  	sw	a3, 0(a0)

80001f8c <.LBB2_8>:
80001f8c: 17 25 00 00  	auipc	a0, 2
80001f90: 13 05 45 8f  	addi	a0, a0, -1804
;         while (fromhost == 0)
80001f94: 03 26 05 00  	lw	a2, 0(a0)
80001f98: e3 0e 06 fe  	beqz	a2, 0x80001f94 <.LBB2_8+0x8>
;         fromhost = 0;
80001f9c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001fa0: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001fa4: 67 80 00 00  	ret

80001fa8 <_out_null>:
; }
80001fa8: 67 80 00 00  	ret

80001fac <_ftoa>:
; {
80001fac: 13 01 01 f9  	addi	sp, sp, -112
80001fb0: 23 26 11 06  	sw	ra, 108(sp)
80001fb4: 23 24 81 06  	sw	s0, 104(sp)
80001fb8: 23 22 91 06  	sw	s1, 100(sp)
80001fbc: 23 20 21 07  	sw	s2, 96(sp)
80001fc0: 23 2e 31 05  	sw	s3, 92(sp)
80001fc4: 23 2c 41 05  	sw	s4, 88(sp)
80001fc8: 23 2a 51 05  	sw	s5, 84(sp)
80001fcc: 23 28 61 05  	sw	s6, 80(sp)
80001fd0: 23 26 71 05  	sw	s7, 76(sp)
80001fd4: 23 24 81 05  	sw	s8, 72(sp)
80001fd8: 23 22 91 05  	sw	s9, 68(sp)
80001fdc: 23 20 a1 05  	sw	s10, 64(sp)
80001fe0: 27 3c 81 02  	fsd	fs0, 56(sp)
80001fe4: 27 38 91 02  	fsd	fs1, 48(sp)
80001fe8: 27 34 21 03  	fsd	fs2, 40(sp)

80001fec <.LBB4_83>:
80001fec: 97 24 00 00  	auipc	s1, 2
80001ff0: 93 84 c4 8d  	addi	s1, s1, -1828
80001ff4: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80001ff8: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001ffc: 93 0a 08 00  	mv	s5, a6
80002000: 13 89 07 00  	mv	s2, a5
80002004: 93 89 06 00  	mv	s3, a3
80002008: 13 0a 06 00  	mv	s4, a2
8000200c: 13 8b 05 00  	mv	s6, a1
80002010: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80002014: 63 98 04 0e  	bnez	s1, 0x80002104 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002018: 13 f5 2a 00  	andi	a0, s5, 2
8000201c: 93 f5 3a 00  	andi	a1, s5, 3
80002020: b3 35 b0 00  	snez	a1, a1
80002024: 13 36 59 00  	sltiu	a2, s2, 5
80002028: b3 65 b6 00  	or	a1, a2, a1
8000202c: 93 5c 15 00  	srli	s9, a0, 1
80002030: 13 04 0a 00  	mv	s0, s4
80002034: 63 96 05 02  	bnez	a1, 0x80002060 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80002038: 93 04 c9 ff  	addi	s1, s2, -4
8000203c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002040: 13 04 16 00  	addi	s0, a2, 1
80002044: 13 05 00 02  	addi	a0, zero, 32
80002048: 93 05 0b 00  	mv	a1, s6
8000204c: 93 86 09 00  	mv	a3, s3
80002050: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002054: 93 84 f4 ff  	addi	s1, s1, -1
80002058: 13 06 04 00  	mv	a2, s0
8000205c: e3 92 04 fe  	bnez	s1, 0x80002040 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80002060: 93 04 14 00  	addi	s1, s0, 1
80002064: 13 05 d0 02  	addi	a0, zero, 45
80002068: 93 05 0b 00  	mv	a1, s6
8000206c: 13 06 04 00  	mv	a2, s0
80002070: 93 86 09 00  	mv	a3, s3
80002074: e7 80 0b 00  	jalr	s7
80002078: 93 0a 24 00  	addi	s5, s0, 2
8000207c: 13 05 90 06  	addi	a0, zero, 105
80002080: 93 05 0b 00  	mv	a1, s6
80002084: 13 86 04 00  	mv	a2, s1
80002088: 93 86 09 00  	mv	a3, s3
8000208c: e7 80 0b 00  	jalr	s7
80002090: 13 0c 34 00  	addi	s8, s0, 3
80002094: 13 05 e0 06  	addi	a0, zero, 110
80002098: 93 05 0b 00  	mv	a1, s6
8000209c: 13 86 0a 00  	mv	a2, s5
800020a0: 93 86 09 00  	mv	a3, s3
800020a4: e7 80 0b 00  	jalr	s7
800020a8: 93 04 44 00  	addi	s1, s0, 4
800020ac: 13 05 60 06  	addi	a0, zero, 102
800020b0: 93 05 0b 00  	mv	a1, s6
800020b4: 13 06 0c 00  	mv	a2, s8
800020b8: 93 86 09 00  	mv	a3, s3
800020bc: e7 80 0b 00  	jalr	s7
800020c0: 33 85 44 41  	sub	a0, s1, s4
800020c4: 33 35 25 01  	sltu	a0, a0, s2
800020c8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800020cc: 93 c5 1c 00  	xori	a1, s9, 1
800020d0: 33 e5 a5 00  	or	a0, a1, a0
800020d4: 63 16 05 56  	bnez	a0, 0x80002640 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800020d8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800020dc: 13 84 14 00  	addi	s0, s1, 1
800020e0: 13 05 00 02  	addi	a0, zero, 32
800020e4: 93 05 0b 00  	mv	a1, s6
800020e8: 13 86 04 00  	mv	a2, s1
800020ec: 93 86 09 00  	mv	a3, s3
800020f0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800020f4: 33 05 8a 00  	add	a0, s4, s0
800020f8: 93 04 04 00  	mv	s1, s0
800020fc: e3 60 25 ff  	bltu	a0, s2, 0x800020dc <.LBB4_83+0xf0>
80002100: 6f 00 40 54  	j	0x80002644 <.LBB4_90+0x378>
80002104: 53 04 a5 22  	fmv.d	fs0, fa0

80002108 <.LBB4_84>:
80002108: 17 15 00 00  	auipc	a0, 1
8000210c: 13 05 85 7c  	addi	a0, a0, 1992
80002110: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80002114: 53 05 05 a2  	fle.d	a0, fa0, ft0
80002118: 63 1e 05 00  	bnez	a0, 0x80002134 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
8000211c: 93 f5 4a 00  	andi	a1, s5, 4
80002120: 13 b5 15 00  	seqz	a0, a1
80002124: 63 82 05 06  	beqz	a1, 0x80002188 <.LBB4_88>

80002128 <.LBB4_85>:
80002128: 17 1c 00 00  	auipc	s8, 1
8000212c: 13 0c 8c 4b  	addi	s8, s8, 1208
80002130: 6f 00 00 06  	j	0x80002190 <.LBB4_88+0x8>

80002134 <.LBB4_86>:
80002134: 17 15 00 00  	auipc	a0, 1
80002138: 13 05 45 7a  	addi	a0, a0, 1956
8000213c: 07 30 05 00  	fld	ft0, 0(a0)

80002140 <.LBB4_87>:
80002140: 17 15 00 00  	auipc	a0, 1
80002144: 13 05 05 7a  	addi	a0, a0, 1952
80002148: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
8000214c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80002150: d3 85 80 a2  	fle.d	a1, ft1, fs0
80002154: 33 75 b5 00  	and	a0, a0, a1
80002158: 63 1e 05 0e  	bnez	a0, 0x80002254 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000215c: 13 85 0b 00  	mv	a0, s7
80002160: 93 05 0b 00  	mv	a1, s6
80002164: 13 06 0a 00  	mv	a2, s4
80002168: 93 86 09 00  	mv	a3, s3
8000216c: 53 05 84 22  	fmv.d	fa0, fs0
80002170: 93 07 09 00  	mv	a5, s2
80002174: 13 88 0a 00  	mv	a6, s5
80002178: 97 00 00 00  	auipc	ra, 0
8000217c: e7 80 40 51  	jalr	1300(ra)
80002180: 13 04 05 00  	mv	s0, a0
80002184: 6f 00 00 4c  	j	0x80002644 <.LBB4_90+0x378>

80002188 <.LBB4_88>:
80002188: 17 1c 00 00  	auipc	s8, 1
8000218c: 13 0c 7c 47  	addi	s8, s8, 1143
80002190: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002194: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002198: 13 f5 3a 00  	andi	a0, s5, 3
8000219c: 33 35 a0 00  	snez	a0, a0
800021a0: b3 b5 2c 01  	sltu	a1, s9, s2
800021a4: 93 c5 15 00  	xori	a1, a1, 1
800021a8: 33 65 b5 00  	or	a0, a0, a1
800021ac: 93 fa 2a 00  	andi	s5, s5, 2
800021b0: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800021b4: 63 16 05 02  	bnez	a0, 0x800021e0 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800021b8: 33 04 99 41  	sub	s0, s2, s9
800021bc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800021c0: 93 04 16 00  	addi	s1, a2, 1
800021c4: 13 05 00 02  	addi	a0, zero, 32
800021c8: 93 05 0b 00  	mv	a1, s6
800021cc: 93 86 09 00  	mv	a3, s3
800021d0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800021d4: 13 04 f4 ff  	addi	s0, s0, -1
800021d8: 13 86 04 00  	mv	a2, s1
800021dc: e3 12 04 fe  	bnez	s0, 0x800021c0 <.LBB4_88+0x38>
800021e0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800021e4: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800021e8: 33 05 9c 01  	add	a0, s8, s9
800021ec: 03 45 05 00  	lbu	a0, 0(a0)
800021f0: 13 86 04 00  	mv	a2, s1
800021f4: 13 84 fc ff  	addi	s0, s9, -1
800021f8: 93 84 14 00  	addi	s1, s1, 1
800021fc: 93 05 0b 00  	mv	a1, s6
80002200: 93 86 09 00  	mv	a3, s3
80002204: e7 80 0b 00  	jalr	s7
80002208: 93 0c 04 00  	mv	s9, s0
;   while (len) {
8000220c: e3 1e 04 fc  	bnez	s0, 0x800021e8 <.LBB4_88+0x60>
80002210: 33 85 44 41  	sub	a0, s1, s4
80002214: 33 35 25 01  	sltu	a0, a0, s2
80002218: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000221c: 93 c5 1a 00  	xori	a1, s5, 1
80002220: 33 e5 a5 00  	or	a0, a1, a0
80002224: 63 1e 05 40  	bnez	a0, 0x80002640 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002228: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000222c: 13 84 14 00  	addi	s0, s1, 1
80002230: 13 05 00 02  	addi	a0, zero, 32
80002234: 93 05 0b 00  	mv	a1, s6
80002238: 13 86 04 00  	mv	a2, s1
8000223c: 93 86 09 00  	mv	a3, s3
80002240: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002244: 33 05 8a 00  	add	a0, s4, s0
80002248: 93 04 04 00  	mv	s1, s0
8000224c: e3 60 25 ff  	bltu	a0, s2, 0x8000222c <.LBB4_88+0xa4>
80002250: 6f 00 40 3f  	j	0x80002644 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80002254: 13 f5 0a 40  	andi	a0, s5, 1024
80002258: 13 0c 60 00  	addi	s8, zero, 6
8000225c: 63 04 05 00  	beqz	a0, 0x80002264 <.LBB4_88+0xdc>
80002260: 13 0c 07 00  	mv	s8, a4
80002264: 13 05 a0 00  	addi	a0, zero, 10
80002268: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
8000226c: 63 6c ac 02  	bltu	s8, a0, 0x800022a4 <.LBB4_88+0x11c>
80002270: 93 04 6c ff  	addi	s1, s8, -10
80002274: 13 05 f0 01  	addi	a0, zero, 31
80002278: 63 e4 a4 00  	bltu	s1, a0, 0x80002280 <.LBB4_88+0xf8>
8000227c: 93 04 f0 01  	addi	s1, zero, 31
80002280: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002284: 13 05 81 00  	addi	a0, sp, 8
80002288: 93 05 00 03  	addi	a1, zero, 48
8000228c: 13 06 04 00  	mv	a2, s0
80002290: 97 e0 ff ff  	auipc	ra, 1048574
80002294: e7 80 80 2c  	jalr	712(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002298: 13 c5 f4 ff  	not	a0, s1
8000229c: 33 0c ac 00  	add	s8, s8, a0
800022a0: 6f 00 80 00  	j	0x800022a8 <.LBB4_88+0x120>
800022a4: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
800022a8: 13 15 3c 00  	slli	a0, s8, 3

800022ac <.LBB4_89>:
800022ac: 97 15 00 00  	auipc	a1, 1
800022b0: 93 85 45 51  	addi	a1, a1, 1300
800022b4: 33 05 b5 00  	add	a0, a0, a1
800022b8: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
800022bc: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
800022c0: 53 80 04 d2  	fcvt.d.w	ft0, s1
800022c4: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
800022c8: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

800022cc <.LBB4_90>:
800022cc: 17 15 00 00  	auipc	a0, 1
800022d0: 13 05 c5 61  	addi	a0, a0, 1564
800022d4: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
800022d8: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
800022dc: d3 01 15 d2  	fcvt.d.wu	ft3, a0
800022e0: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
800022e4: d3 05 01 a2  	fle.d	a1, ft2, ft0
800022e8: 63 90 05 02  	bnez	a1, 0x80002308 <.LBB4_90+0x3c>
;     ++frac;
800022ec: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
800022f0: 53 01 15 d2  	fcvt.d.wu	ft2, a0
800022f4: d3 15 11 a2  	flt.d	a1, ft2, ft1
800022f8: 63 94 05 02  	bnez	a1, 0x80002320 <.LBB4_90+0x54>
800022fc: 13 05 00 00  	mv	a0, zero
;       ++whole;
80002300: 93 84 14 00  	addi	s1, s1, 1
80002304: 6f 00 c0 01  	j	0x80002320 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80002308: d3 15 01 a2  	flt.d	a1, ft2, ft0
8000230c: 63 9a 05 00  	bnez	a1, 0x80002320 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80002310: 93 35 15 00  	seqz	a1, a0
80002314: 13 76 15 00  	andi	a2, a0, 1
80002318: b3 65 b6 00  	or	a1, a2, a1
8000231c: 33 85 a5 00  	add	a0, a1, a0
80002320: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80002324: 63 0c 0c 0c  	beqz	s8, 0x800023fc <.LBB4_90+0x130>
80002328: 13 06 00 00  	mv	a2, zero
8000232c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002330: 33 83 85 00  	add	t1, a1, s0
80002334: 93 02 00 02  	addi	t0, zero, 32
80002338: 33 87 82 40  	sub	a4, t0, s0
8000233c: b7 d5 cc cc  	lui	a1, 838861
80002340: 93 83 d5 cc  	addi	t2, a1, -819
80002344: 13 08 a0 00  	addi	a6, zero, 10
80002348: 93 08 90 00  	addi	a7, zero, 9
8000234c: 63 04 c7 0c  	beq	a4, a2, 0x80002414 <.LBB4_90+0x148>
80002350: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80002354: 33 35 75 02  	mulhu	a0, a0, t2
80002358: 13 55 35 00  	srli	a0, a0, 3
8000235c: b3 06 05 03  	mul	a3, a0, a6
80002360: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002364: 93 e6 06 03  	ori	a3, a3, 48
80002368: b3 07 c3 00  	add	a5, t1, a2
8000236c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80002370: 13 06 16 00  	addi	a2, a2, 1
80002374: e3 ec b8 fc  	bltu	a7, a1, 0x8000234c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002378: 33 05 c4 00  	add	a0, s0, a2
8000237c: 93 05 f5 ff  	addi	a1, a0, -1
80002380: 93 06 e0 01  	addi	a3, zero, 30
80002384: b3 b6 b6 00  	sltu	a3, a3, a1
80002388: 33 47 cc 00  	xor	a4, s8, a2
8000238c: 13 37 17 00  	seqz	a4, a4
80002390: b3 e6 e6 00  	or	a3, a3, a4
80002394: 63 94 06 08  	bnez	a3, 0x8000241c <.LBB4_90+0x150>
80002398: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000239c: 33 05 85 00  	add	a0, a0, s0
800023a0: 93 45 f6 ff  	not	a1, a2
800023a4: 33 8c 85 01  	add	s8, a1, s8
800023a8: 33 04 c4 00  	add	s0, s0, a2
800023ac: 93 05 f0 01  	addi	a1, zero, 31
800023b0: b3 86 85 40  	sub	a3, a1, s0
800023b4: 33 05 c5 00  	add	a0, a0, a2
800023b8: 93 05 0c 00  	mv	a1, s8
800023bc: 63 64 dc 00  	bltu	s8, a3, 0x800023c4 <.LBB4_90+0xf8>
800023c0: 93 85 06 00  	mv	a1, a3
800023c4: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800023c8: 93 05 00 03  	addi	a1, zero, 48
800023cc: 97 e0 ff ff  	auipc	ra, 1048574
800023d0: e7 80 c0 18  	jalr	396(ra)
800023d4: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800023d8: b3 05 a4 00  	add	a1, s0, a0
800023dc: 93 b5 f5 01  	sltiu	a1, a1, 31
800023e0: 33 46 ac 00  	xor	a2, s8, a0
800023e4: 33 36 c0 00  	snez	a2, a2
800023e8: 33 f6 c5 00  	and	a2, a1, a2
800023ec: 13 05 15 00  	addi	a0, a0, 1
800023f0: e3 14 06 fe  	bnez	a2, 0x800023d8 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800023f4: 33 05 a4 00  	add	a0, s0, a0
800023f8: 6f 00 80 02  	j	0x80002420 <.LBB4_90+0x154>
;     diff = value - (double)whole;
800023fc: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002400: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002404: 53 05 10 a2  	fle.d	a0, ft0, ft1
80002408: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
8000240c: b3 84 a4 00  	add	s1, s1, a0
80002410: 6f 00 c0 03  	j	0x8000244c <.LBB4_90+0x180>
80002414: 13 04 00 02  	addi	s0, zero, 32
80002418: 6f 00 80 03  	j	0x80002450 <.LBB4_90+0x184>
8000241c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002420: 63 8e 05 00  	beqz	a1, 0x8000243c <.LBB4_90+0x170>
;       buf[len++] = '.';
80002424: 13 04 15 00  	addi	s0, a0, 1
80002428: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
8000242c: 33 85 a5 00  	add	a0, a1, a0
80002430: 93 05 e0 02  	addi	a1, zero, 46
80002434: 23 00 b5 00  	sb	a1, 0(a0)
80002438: 6f 00 80 00  	j	0x80002440 <.LBB4_90+0x174>
8000243c: 13 04 05 00  	mv	s0, a0
80002440: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002444: 93 02 04 00  	mv	t0, s0
80002448: 63 64 85 00  	bltu	a0, s0, 0x80002450 <.LBB4_90+0x184>
8000244c: 93 02 00 02  	addi	t0, zero, 32
80002450: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002454: 37 65 66 66  	lui	a0, 419430
80002458: 93 05 75 66  	addi	a1, a0, 1639
8000245c: 13 08 a0 00  	addi	a6, zero, 10
80002460: 93 06 81 00  	addi	a3, sp, 8
80002464: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002468: 63 80 82 04  	beq	t0, s0, 0x800024a8 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
8000246c: 33 95 b4 02  	mulh	a0, s1, a1
80002470: 93 57 f5 01  	srli	a5, a0, 31
80002474: 13 55 25 40  	srai	a0, a0, 2
80002478: 33 05 f5 00  	add	a0, a0, a5
8000247c: b3 07 05 03  	mul	a5, a0, a6
80002480: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002484: 93 87 07 03  	addi	a5, a5, 48
80002488: 13 0c 14 00  	addi	s8, s0, 1
8000248c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002490: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002494: 23 00 f4 00  	sb	a5, 0(s0)
80002498: 13 04 0c 00  	mv	s0, s8
8000249c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
800024a0: e3 64 c7 fc  	bltu	a4, a2, 0x80002468 <.LBB4_90+0x19c>
800024a4: 6f 00 80 00  	j	0x800024ac <.LBB4_90+0x1e0>
800024a8: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800024ac: 93 f4 3a 00  	andi	s1, s5, 3
800024b0: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800024b4: 63 96 a4 06  	bne	s1, a0, 0x80002520 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800024b8: 63 0c 09 00  	beqz	s2, 0x800024d0 <.LBB4_90+0x204>
800024bc: 13 f5 ca 00  	andi	a0, s5, 12
800024c0: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800024c4: 33 e5 ac 00  	or	a0, s9, a0
800024c8: 33 09 a9 40  	sub	s2, s2, a0
800024cc: 6f 00 80 00  	j	0x800024d4 <.LBB4_90+0x208>
800024d0: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800024d4: 33 35 2c 01  	sltu	a0, s8, s2
800024d8: 93 45 15 00  	xori	a1, a0, 1
800024dc: 13 05 f0 01  	addi	a0, zero, 31
800024e0: 33 36 85 01  	sltu	a2, a0, s8
800024e4: b3 65 b6 00  	or	a1, a2, a1
800024e8: 63 9c 05 02  	bnez	a1, 0x80002520 <.LBB4_90+0x254>
800024ec: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800024f0: 93 45 fc ff  	not	a1, s8
800024f4: b3 05 b9 00  	add	a1, s2, a1
800024f8: 33 06 85 41  	sub	a2, a0, s8
800024fc: 33 85 86 01  	add	a0, a3, s8
80002500: 63 e4 c5 00  	bltu	a1, a2, 0x80002508 <.LBB4_90+0x23c>
80002504: 93 05 06 00  	mv	a1, a2
80002508: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
8000250c: 93 05 00 03  	addi	a1, zero, 48
80002510: 13 06 04 00  	mv	a2, s0
80002514: 97 e0 ff ff  	auipc	ra, 1048574
80002518: e7 80 40 04  	jalr	68(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000251c: 33 0c 84 01  	add	s8, s0, s8
80002520: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002524: 63 6a 85 05  	bltu	a0, s8, 0x80002578 <.LBB4_90+0x2ac>
;     if (negative) {
80002528: 63 8c 0c 00  	beqz	s9, 0x80002540 <.LBB4_90+0x274>
8000252c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002530: 33 05 85 01  	add	a0, a0, s8
80002534: 13 0c 1c 00  	addi	s8, s8, 1
80002538: 93 05 d0 02  	addi	a1, zero, 45
8000253c: 6f 00 80 03  	j	0x80002574 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002540: 13 f5 4a 00  	andi	a0, s5, 4
80002544: 63 10 05 02  	bnez	a0, 0x80002564 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002548: 13 f5 8a 00  	andi	a0, s5, 8
8000254c: 63 06 05 02  	beqz	a0, 0x80002578 <.LBB4_90+0x2ac>
80002550: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002554: 33 05 85 01  	add	a0, a0, s8
80002558: 13 0c 1c 00  	addi	s8, s8, 1
8000255c: 93 05 00 02  	addi	a1, zero, 32
80002560: 6f 00 40 01  	j	0x80002574 <.LBB4_90+0x2a8>
80002564: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002568: 33 05 85 01  	add	a0, a0, s8
8000256c: 13 0c 1c 00  	addi	s8, s8, 1
80002570: 93 05 b0 02  	addi	a1, zero, 43
80002574: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002578: 33 35 90 00  	snez	a0, s1
8000257c: b3 35 2c 01  	sltu	a1, s8, s2
80002580: 93 c5 15 00  	xori	a1, a1, 1
80002584: 33 65 b5 00  	or	a0, a0, a1
80002588: 93 fa 2a 00  	andi	s5, s5, 2
8000258c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002590: 63 16 05 02  	bnez	a0, 0x800025bc <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002594: b3 04 89 41  	sub	s1, s2, s8
80002598: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000259c: 13 04 16 00  	addi	s0, a2, 1
800025a0: 13 05 00 02  	addi	a0, zero, 32
800025a4: 93 05 0b 00  	mv	a1, s6
800025a8: 93 86 09 00  	mv	a3, s3
800025ac: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800025b0: 93 84 f4 ff  	addi	s1, s1, -1
800025b4: 13 06 04 00  	mv	a2, s0
800025b8: e3 92 04 fe  	bnez	s1, 0x8000259c <.LBB4_90+0x2d0>
800025bc: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800025c0: 63 0c 0c 02  	beqz	s8, 0x800025f8 <.LBB4_90+0x32c>
800025c4: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800025c8: 33 85 8c 01  	add	a0, s9, s8
800025cc: 03 45 05 00  	lbu	a0, 0(a0)
800025d0: 13 0d fc ff  	addi	s10, s8, -1
800025d4: 93 04 14 00  	addi	s1, s0, 1
800025d8: 93 05 0b 00  	mv	a1, s6
800025dc: 13 06 04 00  	mv	a2, s0
800025e0: 93 86 09 00  	mv	a3, s3
800025e4: e7 80 0b 00  	jalr	s7
800025e8: 13 84 04 00  	mv	s0, s1
800025ec: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800025f0: e3 1c 0d fc  	bnez	s10, 0x800025c8 <.LBB4_90+0x2fc>
800025f4: 6f 00 80 00  	j	0x800025fc <.LBB4_90+0x330>
800025f8: 93 04 04 00  	mv	s1, s0
800025fc: 33 85 44 41  	sub	a0, s1, s4
80002600: 33 35 25 01  	sltu	a0, a0, s2
80002604: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002608: 93 c5 1a 00  	xori	a1, s5, 1
8000260c: 33 e5 a5 00  	or	a0, a1, a0
80002610: 63 18 05 02  	bnez	a0, 0x80002640 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002614: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002618: 13 84 14 00  	addi	s0, s1, 1
8000261c: 13 05 00 02  	addi	a0, zero, 32
80002620: 93 05 0b 00  	mv	a1, s6
80002624: 13 86 04 00  	mv	a2, s1
80002628: 93 86 09 00  	mv	a3, s3
8000262c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002630: 33 05 8a 00  	add	a0, s4, s0
80002634: 93 04 04 00  	mv	s1, s0
80002638: e3 60 25 ff  	bltu	a0, s2, 0x80002618 <.LBB4_90+0x34c>
8000263c: 6f 00 80 00  	j	0x80002644 <.LBB4_90+0x378>
80002640: 13 84 04 00  	mv	s0, s1
; }
80002644: 13 05 04 00  	mv	a0, s0
80002648: 07 39 81 02  	fld	fs2, 40(sp)
8000264c: 87 34 01 03  	fld	fs1, 48(sp)
80002650: 07 34 81 03  	fld	fs0, 56(sp)
80002654: 03 2d 01 04  	lw	s10, 64(sp)
80002658: 83 2c 41 04  	lw	s9, 68(sp)
8000265c: 03 2c 81 04  	lw	s8, 72(sp)
80002660: 83 2b c1 04  	lw	s7, 76(sp)
80002664: 03 2b 01 05  	lw	s6, 80(sp)
80002668: 83 2a 41 05  	lw	s5, 84(sp)
8000266c: 03 2a 81 05  	lw	s4, 88(sp)
80002670: 83 29 c1 05  	lw	s3, 92(sp)
80002674: 03 29 01 06  	lw	s2, 96(sp)
80002678: 83 24 41 06  	lw	s1, 100(sp)
8000267c: 03 24 81 06  	lw	s0, 104(sp)
80002680: 83 20 c1 06  	lw	ra, 108(sp)
80002684: 13 01 01 07  	addi	sp, sp, 112
80002688: 67 80 00 00  	ret

8000268c <_etoa>:
; {
8000268c: 13 01 01 f8  	addi	sp, sp, -128
80002690: 23 2e 11 06  	sw	ra, 124(sp)
80002694: 23 2c 81 06  	sw	s0, 120(sp)
80002698: 23 2a 91 06  	sw	s1, 116(sp)
8000269c: 23 28 21 07  	sw	s2, 112(sp)
800026a0: 23 26 31 07  	sw	s3, 108(sp)
800026a4: 23 24 41 07  	sw	s4, 104(sp)
800026a8: 23 22 51 07  	sw	s5, 100(sp)
800026ac: 23 20 61 07  	sw	s6, 96(sp)
800026b0: 23 2e 71 05  	sw	s7, 92(sp)
800026b4: 23 2c 81 05  	sw	s8, 88(sp)
800026b8: 23 2a 91 05  	sw	s9, 84(sp)
800026bc: 23 28 a1 05  	sw	s10, 80(sp)
800026c0: 23 26 b1 05  	sw	s11, 76(sp)

800026c4 <.LBB5_43>:
800026c4: 97 14 00 00  	auipc	s1, 1
800026c8: 93 84 c4 22  	addi	s1, s1, 556
800026cc: 87 b0 04 00  	fld	ft1, 0(s1)

800026d0 <.LBB5_44>:
800026d0: 97 14 00 00  	auipc	s1, 1
800026d4: 93 84 84 22  	addi	s1, s1, 552
800026d8: 07 b1 04 00  	fld	ft2, 0(s1)
800026dc: 53 00 a5 22  	fmv.d	ft0, fa0
800026e0: d3 04 15 a2  	fle.d	s1, fa0, ft1
800026e4: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800026e8: b3 f4 84 00  	and	s1, s1, s0
800026ec: 93 0a 08 00  	mv	s5, a6
800026f0: 13 89 07 00  	mv	s2, a5
800026f4: 93 07 07 00  	mv	a5, a4
800026f8: 93 89 06 00  	mv	s3, a3
800026fc: 13 0a 06 00  	mv	s4, a2
80002700: 13 8b 05 00  	mv	s6, a1
80002704: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002708: 63 92 04 06  	bnez	s1, 0x8000276c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000270c: 13 85 0b 00  	mv	a0, s7
80002710: 93 05 0b 00  	mv	a1, s6
80002714: 13 06 0a 00  	mv	a2, s4
80002718: 93 86 09 00  	mv	a3, s3
8000271c: 53 05 00 22  	fmv.d	fa0, ft0
80002720: 13 87 07 00  	mv	a4, a5
80002724: 93 07 09 00  	mv	a5, s2
80002728: 13 88 0a 00  	mv	a6, s5
8000272c: 83 2d c1 04  	lw	s11, 76(sp)
80002730: 03 2d 01 05  	lw	s10, 80(sp)
80002734: 83 2c 41 05  	lw	s9, 84(sp)
80002738: 03 2c 81 05  	lw	s8, 88(sp)
8000273c: 83 2b c1 05  	lw	s7, 92(sp)
80002740: 03 2b 01 06  	lw	s6, 96(sp)
80002744: 83 2a 41 06  	lw	s5, 100(sp)
80002748: 03 2a 81 06  	lw	s4, 104(sp)
8000274c: 83 29 c1 06  	lw	s3, 108(sp)
80002750: 03 29 01 07  	lw	s2, 112(sp)
80002754: 83 24 41 07  	lw	s1, 116(sp)
80002758: 03 24 81 07  	lw	s0, 120(sp)
8000275c: 83 20 c1 07  	lw	ra, 124(sp)
80002760: 13 01 01 08  	addi	sp, sp, 128
80002764: 17 03 00 00  	auipc	t1, 0
80002768: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
8000276c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002770: 13 f5 0a 40  	andi	a0, s5, 1024
80002774: 13 07 60 00  	addi	a4, zero, 6
80002778: 63 04 05 00  	beqz	a0, 0x80002780 <.LBB5_44+0xb0>
8000277c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002780: 27 30 a1 02  	fsd	fa0, 32(sp)
80002784: 83 25 41 02  	lw	a1, 36(sp)
80002788: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000278c: 93 d6 45 01  	srli	a3, a1, 20
80002790: b7 07 10 00  	lui	a5, 256
80002794: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002798: b3 f5 f5 00  	and	a1, a1, a5
8000279c: 23 2c c1 00  	sw	a2, 24(sp)
800027a0: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800027a4: b3 e5 c5 00  	or	a1, a1, a2
800027a8: 23 2e b1 00  	sw	a1, 28(sp)
800027ac: 87 30 81 01  	fld	ft1, 24(sp)

800027b0 <.LBB5_45>:
800027b0: 97 15 00 00  	auipc	a1, 1
800027b4: 93 85 05 15  	addi	a1, a1, 336
800027b8: 07 b1 05 00  	fld	ft2, 0(a1)

800027bc <.LBB5_46>:
800027bc: 97 15 00 00  	auipc	a1, 1
800027c0: 93 85 c5 14  	addi	a1, a1, 332
800027c4: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800027c8: 93 f5 f6 7f  	andi	a1, a3, 2047
800027cc: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800027d0: 53 82 05 d2  	fcvt.d.w	ft4, a1
800027d4: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800027d8 <.LBB5_47>:
800027d8: 97 15 00 00  	auipc	a1, 1
800027dc: 93 85 85 13  	addi	a1, a1, 312
800027e0: 07 b1 05 00  	fld	ft2, 0(a1)

800027e4 <.LBB5_48>:
800027e4: 97 15 00 00  	auipc	a1, 1
800027e8: 93 85 45 13  	addi	a1, a1, 308
800027ec: 87 b1 05 00  	fld	ft3, 0(a1)

800027f0 <.LBB5_49>:
800027f0: 97 15 00 00  	auipc	a1, 1
800027f4: 93 85 05 13  	addi	a1, a1, 304
800027f8: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800027fc: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002800: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002804: d3 80 05 d2  	fcvt.d.w	ft1, a1
80002808: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

8000280c <.LBB5_50>:
8000280c: 17 16 00 00  	auipc	a2, 1
80002810: 13 06 c6 11  	addi	a2, a2, 284
80002814: 87 31 06 00  	fld	ft3, 0(a2)

80002818 <.LBB5_51>:
80002818: 17 16 00 00  	auipc	a2, 1
8000281c: 13 06 86 11  	addi	a2, a2, 280
80002820: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002824: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80002828: 53 01 06 d2  	fcvt.d.w	ft2, a2
8000282c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002830: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002834: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002838: 13 06 f6 3f  	addi	a2, a2, 1023
8000283c: 23 28 01 00  	sw	zero, 16(sp)
80002840: 13 16 46 01  	slli	a2, a2, 20
80002844: 23 2a c1 00  	sw	a2, 20(sp)

80002848 <.LBB5_52>:
80002848: 17 16 00 00  	auipc	a2, 1
8000284c: 13 06 86 0f  	addi	a2, a2, 248
80002850: 87 31 06 00  	fld	ft3, 0(a2)

80002854 <.LBB5_53>:
80002854: 17 16 00 00  	auipc	a2, 1
80002858: 13 06 46 0f  	addi	a2, a2, 244
8000285c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002860: 87 32 01 01  	fld	ft5, 16(sp)

80002864 <.LBB5_54>:
80002864: 17 16 00 00  	auipc	a2, 1
80002868: 13 06 46 0d  	addi	a2, a2, 212
8000286c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002870: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002874 <.LBB5_55>:
80002874: 17 16 00 00  	auipc	a2, 1
80002878: 13 06 c6 0d  	addi	a2, a2, 220
8000287c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002880: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002884: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80002888: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
8000288c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002890: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002894: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002898: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
8000289c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
800028a0: 53 16 15 a2  	flt.d	a2, fa0, ft1
800028a4: 63 0a 06 00  	beqz	a2, 0x800028b8 <.LBB5_56+0x10>

800028a8 <.LBB5_56>:
800028a8: 97 16 00 00  	auipc	a3, 1
800028ac: 93 86 06 0b  	addi	a3, a3, 176
800028b0: 07 b1 06 00  	fld	ft2, 0(a3)
800028b4: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800028b8: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800028bc: 93 05 34 06  	addi	a1, s0, 99
800028c0: 93 b5 75 0c  	sltiu	a1, a1, 199
800028c4: 13 06 50 00  	addi	a2, zero, 5
800028c8: b7 16 00 00  	lui	a3, 1
800028cc: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800028d0: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800028d4: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800028d8: 63 84 06 06  	beqz	a3, 0x80002940 <.LBB5_58+0x58>

800028dc <.LBB5_57>:
800028dc: 97 15 00 00  	auipc	a1, 1
800028e0: 93 85 45 08  	addi	a1, a1, 132
800028e4: 07 b1 05 00  	fld	ft2, 0(a1)

800028e8 <.LBB5_58>:
800028e8: 97 15 00 00  	auipc	a1, 1
800028ec: 93 85 05 08  	addi	a1, a1, 128
800028f0: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800028f4: d3 15 25 a2  	flt.d	a1, fa0, ft2
800028f8: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800028fc: b3 e5 c5 00  	or	a1, a1, a2
80002900: 63 98 05 00  	bnez	a1, 0x80002910 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002904: 63 40 e4 02  	blt	s0, a4, 0x80002924 <.LBB5_58+0x3c>
80002908: 13 07 00 00  	mv	a4, zero
8000290c: 6f 00 00 02  	j	0x8000292c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002910: 63 06 07 02  	beqz	a4, 0x8000293c <.LBB5_58+0x54>
80002914: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002918: 13 45 15 00  	xori	a0, a0, 1
8000291c: 33 07 a7 40  	sub	a4, a4, a0
80002920: 6f 00 00 02  	j	0x80002940 <.LBB5_58+0x58>
80002924: 13 45 f4 ff  	not	a0, s0
80002928: 33 07 a7 00  	add	a4, a4, a0
8000292c: 13 04 00 00  	mv	s0, zero
80002930: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80002934: 93 ea 0a 40  	ori	s5, s5, 1024
80002938: 6f 00 80 00  	j	0x80002940 <.LBB5_58+0x58>
8000293c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002940: b3 05 99 41  	sub	a1, s2, s9
80002944: 33 36 b9 00  	sltu	a2, s2, a1
80002948: 13 05 00 00  	mv	a0, zero
8000294c: 63 14 06 00  	bnez	a2, 0x80002954 <.LBB5_58+0x6c>
80002950: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002954: 93 07 00 00  	mv	a5, zero
80002958: 93 d5 1a 00  	srli	a1, s5, 1
8000295c: 93 f4 15 00  	andi	s1, a1, 1
80002960: b3 35 90 01  	snez	a1, s9
80002964: b3 f5 b4 00  	and	a1, s1, a1
80002968: 53 01 00 d2  	fcvt.d.w	ft2, zero
8000296c: 63 94 05 00  	bnez	a1, 0x80002974 <.LBB5_58+0x8c>
80002970: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002974: 93 35 14 00  	seqz	a1, s0
80002978: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
8000297c: 63 94 05 00  	bnez	a1, 0x80002984 <.LBB5_58+0x9c>
80002980: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002984: 63 04 05 00  	beqz	a0, 0x8000298c <.LBB5_58+0xa4>
80002988: 53 15 a5 22  	fneg.d	fa0, fa0
8000298c: 37 f5 ff ff  	lui	a0, 1048575
80002990: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002994: 33 f8 aa 00  	and	a6, s5, a0
80002998: 13 85 0b 00  	mv	a0, s7
8000299c: 93 05 0b 00  	mv	a1, s6
800029a0: 13 06 0a 00  	mv	a2, s4
800029a4: 93 86 09 00  	mv	a3, s3
800029a8: 97 f0 ff ff  	auipc	ra, 1048575
800029ac: e7 80 40 60  	jalr	1540(ra)
800029b0: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800029b4: 63 82 0c 18  	beqz	s9, 0x80002b38 <.LBB5_58+0x250>
800029b8: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800029bc: 13 f5 0a 02  	andi	a0, s5, 32
800029c0: 13 45 55 06  	xori	a0, a0, 101
800029c4: 93 05 0b 00  	mv	a1, s6
800029c8: 13 06 0d 00  	mv	a2, s10
800029cc: 93 86 09 00  	mv	a3, s3
800029d0: e7 80 0b 00  	jalr	s7
800029d4: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800029d8: 93 5a f4 01  	srli	s5, s0, 31
800029dc: 13 55 f4 41  	srai	a0, s0, 31
800029e0: b3 05 a4 00  	add	a1, s0, a0
800029e4: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800029e8: 93 8d dc ff  	addi	s11, s9, -3
800029ec: 13 04 f0 01  	addi	s0, zero, 31
800029f0: 37 d5 cc cc  	lui	a0, 838861
800029f4: 13 05 d5 cc  	addi	a0, a0, -819
800029f8: 13 08 a0 00  	addi	a6, zero, 10
800029fc: 93 08 c1 02  	addi	a7, sp, 44
80002a00: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80002a04: b3 37 a7 02  	mulhu	a5, a4, a0
80002a08: 93 d5 37 00  	srli	a1, a5, 3
80002a0c: b3 87 05 03  	mul	a5, a1, a6
80002a10: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002a14: 13 e6 07 03  	ori	a2, a5, 48
80002a18: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002a1c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002a20: 13 0c 1c 00  	addi	s8, s8, 1
80002a24: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002a28: 33 b6 e2 00  	sltu	a2, t0, a4
80002a2c: 33 f6 c7 00  	and	a2, a5, a2
80002a30: 93 8d fd ff  	addi	s11, s11, -1
80002a34: 13 04 f4 ff  	addi	s0, s0, -1
80002a38: 13 87 05 00  	mv	a4, a1
80002a3c: e3 14 06 fc  	bnez	a2, 0x80002a04 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002a40: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002a44: 33 35 ac 00  	sltu	a0, s8, a0
80002a48: 13 45 15 00  	xori	a0, a0, 1
80002a4c: 93 c5 17 00  	xori	a1, a5, 1
80002a50: 33 e5 a5 00  	or	a0, a1, a0
80002a54: 63 12 05 04  	bnez	a0, 0x80002a98 <.LBB5_58+0x1b0>
80002a58: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002a5c: b3 85 8c 41  	sub	a1, s9, s8
80002a60: 93 85 d5 ff  	addi	a1, a1, -3
80002a64: 13 06 f0 01  	addi	a2, zero, 31
80002a68: 33 06 86 41  	sub	a2, a2, s8
80002a6c: 33 05 85 01  	add	a0, a0, s8
80002a70: 63 e4 c5 00  	bltu	a1, a2, 0x80002a78 <.LBB5_58+0x190>
80002a74: 93 05 06 00  	mv	a1, a2
80002a78: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002a7c: 93 05 00 03  	addi	a1, zero, 48
80002a80: 97 e0 ff ff  	auipc	ra, 1048574
80002a84: e7 80 80 ad  	jalr	-1320(ra)
;   if (flags & FLAGS_HASH) {
80002a88: 63 e4 8d 00  	bltu	s11, s0, 0x80002a90 <.LBB5_58+0x1a8>
80002a8c: 93 0d 04 00  	mv	s11, s0
80002a90: 33 85 8d 01  	add	a0, s11, s8
80002a94: 13 0c 15 00  	addi	s8, a0, 1
80002a98: 83 2c c1 00  	lw	s9, 12(sp)
80002a9c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002aa0: 63 60 85 03  	bltu	a0, s8, 0x80002ac0 <.LBB5_58+0x1d8>
80002aa4: 13 05 c1 02  	addi	a0, sp, 44
80002aa8: 33 05 85 01  	add	a0, a0, s8
80002aac: 93 05 d0 02  	addi	a1, zero, 45
80002ab0: 63 94 0a 00  	bnez	s5, 0x80002ab8 <.LBB5_58+0x1d0>
80002ab4: 93 05 b0 02  	addi	a1, zero, 43
80002ab8: 13 0c 1c 00  	addi	s8, s8, 1
80002abc: 23 00 b5 00  	sb	a1, 0(a0)
80002ac0: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80002ac4: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80002ac8: 33 85 8a 01  	add	a0, s5, s8
80002acc: 03 45 05 00  	lbu	a0, 0(a0)
80002ad0: 13 06 04 00  	mv	a2, s0
80002ad4: 93 04 fc ff  	addi	s1, s8, -1
80002ad8: 13 04 14 00  	addi	s0, s0, 1
80002adc: 93 05 0b 00  	mv	a1, s6
80002ae0: 93 86 09 00  	mv	a3, s3
80002ae4: e7 80 0b 00  	jalr	s7
80002ae8: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80002aec: e3 9e 04 fc  	bnez	s1, 0x80002ac8 <.LBB5_58+0x1e0>
80002af0: 33 05 44 41  	sub	a0, s0, s4
80002af4: 33 35 25 01  	sltu	a0, a0, s2
80002af8: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80002afc: 93 c5 1c 00  	xori	a1, s9, 1
80002b00: 33 e5 a5 00  	or	a0, a1, a0
80002b04: 63 18 05 02  	bnez	a0, 0x80002b34 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80002b08: b3 04 40 41  	neg	s1, s4
80002b0c: 13 0d 14 00  	addi	s10, s0, 1
80002b10: 13 05 00 02  	addi	a0, zero, 32
80002b14: 93 05 0b 00  	mv	a1, s6
80002b18: 13 06 04 00  	mv	a2, s0
80002b1c: 93 86 09 00  	mv	a3, s3
80002b20: e7 80 0b 00  	jalr	s7
80002b24: 33 85 a4 01  	add	a0, s1, s10
80002b28: 13 04 0d 00  	mv	s0, s10
80002b2c: e3 60 25 ff  	bltu	a0, s2, 0x80002b0c <.LBB5_58+0x224>
80002b30: 6f 00 80 00  	j	0x80002b38 <.LBB5_58+0x250>
80002b34: 13 0d 04 00  	mv	s10, s0
; }
80002b38: 13 05 0d 00  	mv	a0, s10
80002b3c: 83 2d c1 04  	lw	s11, 76(sp)
80002b40: 03 2d 01 05  	lw	s10, 80(sp)
80002b44: 83 2c 41 05  	lw	s9, 84(sp)
80002b48: 03 2c 81 05  	lw	s8, 88(sp)
80002b4c: 83 2b c1 05  	lw	s7, 92(sp)
80002b50: 03 2b 01 06  	lw	s6, 96(sp)
80002b54: 83 2a 41 06  	lw	s5, 100(sp)
80002b58: 03 2a 81 06  	lw	s4, 104(sp)
80002b5c: 83 29 c1 06  	lw	s3, 108(sp)
80002b60: 03 29 01 07  	lw	s2, 112(sp)
80002b64: 83 24 41 07  	lw	s1, 116(sp)
80002b68: 03 24 81 07  	lw	s0, 120(sp)
80002b6c: 83 20 c1 07  	lw	ra, 124(sp)
80002b70: 13 01 01 08  	addi	sp, sp, 128
80002b74: 67 80 00 00  	ret

80002b78 <_ntoa_format>:
; {
80002b78: 13 01 01 fc  	addi	sp, sp, -64
80002b7c: 23 2e 11 02  	sw	ra, 60(sp)
80002b80: 23 2c 81 02  	sw	s0, 56(sp)
80002b84: 23 2a 91 02  	sw	s1, 52(sp)
80002b88: 23 28 21 03  	sw	s2, 48(sp)
80002b8c: 23 26 31 03  	sw	s3, 44(sp)
80002b90: 23 24 41 03  	sw	s4, 40(sp)
80002b94: 23 22 51 03  	sw	s5, 36(sp)
80002b98: 23 20 61 03  	sw	s6, 32(sp)
80002b9c: 23 2e 71 01  	sw	s7, 28(sp)
80002ba0: 23 2c 81 01  	sw	s8, 24(sp)
80002ba4: 23 2a 91 01  	sw	s9, 20(sp)
80002ba8: 23 28 a1 01  	sw	s10, 16(sp)
80002bac: 23 26 b1 01  	sw	s11, 12(sp)
80002bb0: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80002bb4: 93 fa 2e 00  	andi	s5, t4, 2
80002bb8: 13 09 0e 00  	mv	s2, t3
80002bbc: 13 8d 03 00  	mv	s10, t2
80002bc0: 93 8c 08 00  	mv	s9, a7
80002bc4: 13 8c 07 00  	mv	s8, a5
80002bc8: 93 89 06 00  	mv	s3, a3
80002bcc: 13 0a 06 00  	mv	s4, a2
80002bd0: 13 8b 05 00  	mv	s6, a1
80002bd4: 93 0d 05 00  	mv	s11, a0
80002bd8: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80002bdc: 63 9e 0a 0c  	bnez	s5, 0x80002cb8 <_ntoa_format+0x140>
80002be0: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002be4: 63 0e 09 00  	beqz	s2, 0x80002c00 <_ntoa_format+0x88>
80002be8: 63 0e 04 00  	beqz	s0, 0x80002c04 <_ntoa_format+0x8c>
80002bec: 13 f5 cb 00  	andi	a0, s7, 12
80002bf0: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002bf4: 33 65 05 01  	or	a0, a0, a6
80002bf8: 33 09 a9 40  	sub	s2, s2, a0
80002bfc: 6f 00 80 00  	j	0x80002c04 <_ntoa_format+0x8c>
80002c00: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002c04: 33 35 ac 01  	sltu	a0, s8, s10
80002c08: 93 45 15 00  	xori	a1, a0, 1
80002c0c: 13 05 f0 01  	addi	a0, zero, 31
80002c10: 33 36 85 01  	sltu	a2, a0, s8
80002c14: b3 65 b6 00  	or	a1, a2, a1
80002c18: 63 94 05 04  	bnez	a1, 0x80002c60 <_ntoa_format+0xe8>
80002c1c: 23 22 51 01  	sw	s5, 4(sp)
80002c20: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002c24: 93 45 fc ff  	not	a1, s8
80002c28: b3 85 a5 01  	add	a1, a1, s10
80002c2c: 33 06 85 41  	sub	a2, a0, s8
80002c30: 33 05 87 01  	add	a0, a4, s8
80002c34: 63 e4 c5 00  	bltu	a1, a2, 0x80002c3c <_ntoa_format+0xc4>
80002c38: 93 05 06 00  	mv	a1, a2
80002c3c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002c40: 93 05 00 03  	addi	a1, zero, 48
80002c44: 13 86 04 00  	mv	a2, s1
80002c48: 97 e0 ff ff  	auipc	ra, 1048574
80002c4c: e7 80 00 91  	jalr	-1776(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002c50: 33 8c 84 01  	add	s8, s1, s8
80002c54: 03 27 81 00  	lw	a4, 8(sp)
80002c58: 13 88 0a 00  	mv	a6, s5
80002c5c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002c60: 63 0c 04 04  	beqz	s0, 0x80002cb8 <_ntoa_format+0x140>
80002c64: 33 35 2c 01  	sltu	a0, s8, s2
80002c68: 93 45 15 00  	xori	a1, a0, 1
80002c6c: 13 05 f0 01  	addi	a0, zero, 31
80002c70: 33 36 85 01  	sltu	a2, a0, s8
80002c74: b3 e5 c5 00  	or	a1, a1, a2
80002c78: 63 90 05 04  	bnez	a1, 0x80002cb8 <_ntoa_format+0x140>
80002c7c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002c80: 93 45 fc ff  	not	a1, s8
80002c84: b3 05 b9 00  	add	a1, s2, a1
80002c88: 33 06 85 41  	sub	a2, a0, s8
80002c8c: 33 05 87 01  	add	a0, a4, s8
80002c90: 63 e4 c5 00  	bltu	a1, a2, 0x80002c98 <_ntoa_format+0x120>
80002c94: 93 05 06 00  	mv	a1, a2
80002c98: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002c9c: 93 05 00 03  	addi	a1, zero, 48
80002ca0: 13 86 04 00  	mv	a2, s1
80002ca4: 97 e0 ff ff  	auipc	ra, 1048574
80002ca8: e7 80 40 8b  	jalr	-1868(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002cac: 33 8c 84 01  	add	s8, s1, s8
80002cb0: 03 27 81 00  	lw	a4, 8(sp)
80002cb4: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80002cb8: 13 f5 0b 01  	andi	a0, s7, 16
80002cbc: 63 02 05 0e  	beqz	a0, 0x80002da0 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002cc0: 13 f5 0b 40  	andi	a0, s7, 1024
80002cc4: 13 55 a5 00  	srli	a0, a0, 10
80002cc8: 93 35 1c 00  	seqz	a1, s8
80002ccc: 33 65 b5 00  	or	a0, a0, a1
80002cd0: 63 1e 05 02  	bnez	a0, 0x80002d0c <_ntoa_format+0x194>
80002cd4: 33 45 ac 01  	xor	a0, s8, s10
80002cd8: 33 35 a0 00  	snez	a0, a0
80002cdc: b3 45 2c 01  	xor	a1, s8, s2
80002ce0: b3 35 b0 00  	snez	a1, a1
80002ce4: 33 75 b5 00  	and	a0, a0, a1
80002ce8: 63 12 05 02  	bnez	a0, 0x80002d0c <_ntoa_format+0x194>
;       len--;
80002cec: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002cf0: b3 35 a0 00  	snez	a1, a0
80002cf4: 13 86 0c ff  	addi	a2, s9, -16
80002cf8: 13 36 16 00  	seqz	a2, a2
80002cfc: b3 75 b6 00  	and	a1, a2, a1
80002d00: 63 84 05 00  	beqz	a1, 0x80002d08 <_ntoa_format+0x190>
80002d04: 13 05 ec ff  	addi	a0, s8, -2
80002d08: 13 0c 05 00  	mv	s8, a0
80002d0c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d10: 63 96 ac 02  	bne	s9, a0, 0x80002d3c <_ntoa_format+0x1c4>
80002d14: 13 f5 0b 02  	andi	a0, s7, 32
80002d18: 93 55 55 00  	srli	a1, a0, 5
80002d1c: 13 06 f0 01  	addi	a2, zero, 31
80002d20: 33 36 86 01  	sltu	a2, a2, s8
80002d24: b3 e5 c5 00  	or	a1, a1, a2
80002d28: 63 9e 05 02  	bnez	a1, 0x80002d64 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002d2c: 33 05 87 01  	add	a0, a4, s8
80002d30: 13 0c 1c 00  	addi	s8, s8, 1
80002d34: 93 05 80 07  	addi	a1, zero, 120
80002d38: 6f 00 c0 04  	j	0x80002d84 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d3c: 13 85 ec ff  	addi	a0, s9, -2
80002d40: 33 35 a0 00  	snez	a0, a0
80002d44: 93 05 f0 01  	addi	a1, zero, 31
80002d48: b3 b5 85 01  	sltu	a1, a1, s8
80002d4c: 33 65 b5 00  	or	a0, a0, a1
80002d50: 63 1c 05 02  	bnez	a0, 0x80002d88 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002d54: 33 05 87 01  	add	a0, a4, s8
80002d58: 13 0c 1c 00  	addi	s8, s8, 1
80002d5c: 93 05 20 06  	addi	a1, zero, 98
80002d60: 6f 00 40 02  	j	0x80002d84 <_ntoa_format+0x20c>
80002d64: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002d68: 13 35 15 00  	seqz	a0, a0
80002d6c: 93 c5 15 00  	xori	a1, a1, 1
80002d70: 33 65 b5 00  	or	a0, a0, a1
80002d74: 63 1a 05 00  	bnez	a0, 0x80002d88 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80002d78: 33 05 87 01  	add	a0, a4, s8
80002d7c: 13 0c 1c 00  	addi	s8, s8, 1
80002d80: 93 05 80 05  	addi	a1, zero, 88
80002d84: 23 00 b5 00  	sb	a1, 0(a0)
80002d88: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002d8c: 63 60 85 07  	bltu	a0, s8, 0x80002dec <_ntoa_format+0x274>
;       buf[len++] = '0';
80002d90: 33 05 87 01  	add	a0, a4, s8
80002d94: 13 0c 1c 00  	addi	s8, s8, 1
80002d98: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80002d9c: 23 00 b5 00  	sb	a1, 0(a0)
80002da0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002da4: 63 64 85 05  	bltu	a0, s8, 0x80002dec <_ntoa_format+0x274>
;     if (negative) {
80002da8: 63 0a 08 00  	beqz	a6, 0x80002dbc <_ntoa_format+0x244>
;       buf[len++] = '-';
80002dac: 33 05 87 01  	add	a0, a4, s8
80002db0: 13 0c 1c 00  	addi	s8, s8, 1
80002db4: 93 05 d0 02  	addi	a1, zero, 45
80002db8: 6f 00 00 03  	j	0x80002de8 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80002dbc: 13 f5 4b 00  	andi	a0, s7, 4
80002dc0: 63 1e 05 00  	bnez	a0, 0x80002ddc <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80002dc4: 13 f5 8b 00  	andi	a0, s7, 8
80002dc8: 63 02 05 02  	beqz	a0, 0x80002dec <_ntoa_format+0x274>
;       buf[len++] = ' ';
80002dcc: 33 05 87 01  	add	a0, a4, s8
80002dd0: 13 0c 1c 00  	addi	s8, s8, 1
80002dd4: 93 05 00 02  	addi	a1, zero, 32
80002dd8: 6f 00 00 01  	j	0x80002de8 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002ddc: 33 05 87 01  	add	a0, a4, s8
80002de0: 13 0c 1c 00  	addi	s8, s8, 1
80002de4: 93 05 b0 02  	addi	a1, zero, 43
80002de8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002dec: 13 f5 3b 00  	andi	a0, s7, 3
80002df0: 33 35 a0 00  	snez	a0, a0
80002df4: b3 35 2c 01  	sltu	a1, s8, s2
80002df8: 93 c5 15 00  	xori	a1, a1, 1
80002dfc: 33 65 b5 00  	or	a0, a0, a1
80002e00: 13 04 0a 00  	mv	s0, s4
80002e04: 63 16 05 02  	bnez	a0, 0x80002e30 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80002e08: b3 04 89 41  	sub	s1, s2, s8
80002e0c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002e10: 13 04 16 00  	addi	s0, a2, 1
80002e14: 13 05 00 02  	addi	a0, zero, 32
80002e18: 93 05 0b 00  	mv	a1, s6
80002e1c: 93 86 09 00  	mv	a3, s3
80002e20: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002e24: 93 84 f4 ff  	addi	s1, s1, -1
80002e28: 13 06 04 00  	mv	a2, s0
80002e2c: e3 92 04 fe  	bnez	s1, 0x80002e10 <_ntoa_format+0x298>
80002e30: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002e34: 63 0e 0c 02  	beqz	s8, 0x80002e70 <_ntoa_format+0x2f8>
80002e38: 03 25 81 00  	lw	a0, 8(sp)
80002e3c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002e40: 33 85 8b 01  	add	a0, s7, s8
80002e44: 03 45 05 00  	lbu	a0, 0(a0)
80002e48: 93 0c fc ff  	addi	s9, s8, -1
80002e4c: 93 04 14 00  	addi	s1, s0, 1
80002e50: 93 05 0b 00  	mv	a1, s6
80002e54: 13 06 04 00  	mv	a2, s0
80002e58: 93 86 09 00  	mv	a3, s3
80002e5c: e7 80 0d 00  	jalr	s11
80002e60: 13 84 04 00  	mv	s0, s1
80002e64: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002e68: e3 9c 0c fc  	bnez	s9, 0x80002e40 <_ntoa_format+0x2c8>
80002e6c: 6f 00 80 00  	j	0x80002e74 <_ntoa_format+0x2fc>
80002e70: 93 04 04 00  	mv	s1, s0
80002e74: 33 85 44 41  	sub	a0, s1, s4
80002e78: 33 35 25 01  	sltu	a0, a0, s2
80002e7c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002e80: 93 c5 1a 00  	xori	a1, s5, 1
80002e84: 33 e5 a5 00  	or	a0, a1, a0
80002e88: 63 18 05 02  	bnez	a0, 0x80002eb8 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002e8c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002e90: 13 84 14 00  	addi	s0, s1, 1
80002e94: 13 05 00 02  	addi	a0, zero, 32
80002e98: 93 05 0b 00  	mv	a1, s6
80002e9c: 13 86 04 00  	mv	a2, s1
80002ea0: 93 86 09 00  	mv	a3, s3
80002ea4: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002ea8: 33 05 8a 00  	add	a0, s4, s0
80002eac: 93 04 04 00  	mv	s1, s0
80002eb0: e3 60 25 ff  	bltu	a0, s2, 0x80002e90 <_ntoa_format+0x318>
80002eb4: 6f 00 80 00  	j	0x80002ebc <_ntoa_format+0x344>
80002eb8: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002ebc: 13 05 04 00  	mv	a0, s0
80002ec0: 83 2d c1 00  	lw	s11, 12(sp)
80002ec4: 03 2d 01 01  	lw	s10, 16(sp)
80002ec8: 83 2c 41 01  	lw	s9, 20(sp)
80002ecc: 03 2c 81 01  	lw	s8, 24(sp)
80002ed0: 83 2b c1 01  	lw	s7, 28(sp)
80002ed4: 03 2b 01 02  	lw	s6, 32(sp)
80002ed8: 83 2a 41 02  	lw	s5, 36(sp)
80002edc: 03 2a 81 02  	lw	s4, 40(sp)
80002ee0: 83 29 c1 02  	lw	s3, 44(sp)
80002ee4: 03 29 01 03  	lw	s2, 48(sp)
80002ee8: 83 24 41 03  	lw	s1, 52(sp)
80002eec: 03 24 81 03  	lw	s0, 56(sp)
80002ef0: 83 20 c1 03  	lw	ra, 60(sp)
80002ef4: 13 01 01 04  	addi	sp, sp, 64
80002ef8: 67 80 00 00  	ret

80002efc <_snrt_init_team>:
;     team->base.root = team;
80002efc: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002f00: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002f04: 03 23 87 00  	lw	t1, 8(a4)
80002f08: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002f0c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002f10: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002f14: 83 22 47 00  	lw	t0, 4(a4)
80002f18: 33 88 08 03  	mul	a6, a7, a6
80002f1c: 33 05 58 02  	mul	a0, a6, t0
80002f20: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002f24: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002f28: 33 85 68 40  	sub	a0, a7, t1
80002f2c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002f30: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002f34: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002f38: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002f3c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002f40: 03 25 87 01  	lw	a0, 24(a4)
80002f44: b7 05 00 10  	lui	a1, 65536
80002f48: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002f4c: 23 a2 07 02  	sw	zero, 36(a5)
80002f50: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002f54: 03 25 07 02  	lw	a0, 32(a4)
80002f58: 83 25 47 02  	lw	a1, 36(a4)
80002f5c: 23 a4 a7 02  	sw	a0, 40(a5)
80002f60: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002f64: 23 a8 c7 02  	sw	a2, 48(a5)
80002f68: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002f6c: 23 ac d7 02  	sw	a3, 56(a5)
80002f70: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002f74: 03 25 07 01  	lw	a0, 16(a4)
80002f78: 33 08 a6 00  	add	a6, a2, a0
80002f7c: 93 05 08 19  	addi	a1, a6, 400
80002f80: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002f84: b3 32 a8 00  	sltu	t0, a6, a0
80002f88: 93 55 15 00  	srli	a1, a0, 1
80002f8c: 33 03 b8 00  	add	t1, a6, a1
80002f90: b3 35 03 01  	sltu	a1, t1, a6
80002f94: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80002f98: 23 a0 67 04  	sw	t1, 64(a5)
80002f9c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002fa0: 13 15 15 00  	slli	a0, a0, 1
80002fa4: b3 05 c5 00  	add	a1, a0, a2
80002fa8: 33 b5 a5 00  	sltu	a0, a1, a0
80002fac: 23 a4 b7 04  	sw	a1, 72(a5)
80002fb0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80002fb4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80002fb8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80002fbc: 37 05 00 00  	lui	a0, 0
80002fc0: 33 05 45 00  	add	a0, a0, tp
80002fc4: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002fc8: 03 a5 07 00  	lw	a0, 0(a5)
80002fcc: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002fd0: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002fd4: b3 85 b8 40  	sub	a1, a7, a1
80002fd8: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80002fdc: b7 05 00 00  	lui	a1, 0
80002fe0: b3 85 45 00  	add	a1, a1, tp
80002fe4: 23 a2 a5 00  	sw	a0, 4(a1)
80002fe8: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80002fec: 33 85 a8 02  	mul	a0, a7, a0

80002ff0 <.LBB0_1>:
80002ff0: 97 15 00 00  	auipc	a1, 1
80002ff4: 93 85 45 98  	addi	a1, a1, -1660
80002ff8: 33 05 b5 00  	add	a0, a0, a1
80002ffc: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80003000: 83 28 07 03  	lw	a7, 48(a4)
80003004: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80003008: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000300c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80003010: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80003014: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80003018: 13 05 76 00  	addi	a0, a2, 7
8000301c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80003020: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80003024: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80003028: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
8000302c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80003030: 03 a5 05 00  	lw	a0, 0(a1)
80003034: 13 05 f5 44  	addi	a0, a0, 1103
80003038: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
8000303c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80003040: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80003044: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80003048: 37 05 00 00  	lui	a0, 0
8000304c: 33 05 45 00  	add	a0, a0, tp
80003050: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80003054: 37 05 00 00  	lui	a0, 0
80003058: 33 05 45 00  	add	a0, a0, tp
8000305c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80003060: 67 80 00 00  	ret

80003064 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003064: 37 05 00 00  	lui	a0, 0
80003068: 33 05 45 00  	add	a0, a0, tp
8000306c: 03 25 05 00  	lw	a0, 0(a0)
80003070: 03 25 05 00  	lw	a0, 0(a0)
80003074: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003078: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000307c: 33 85 a5 40  	sub	a0, a1, a0
80003080: 67 80 00 00  	ret

80003084 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80003084: 37 05 00 00  	lui	a0, 0
80003088: 33 05 45 00  	add	a0, a0, tp
8000308c: 03 25 05 00  	lw	a0, 0(a0)
80003090: 03 25 05 00  	lw	a0, 0(a0)
80003094: 03 25 05 07  	lw	a0, 112(a0)
80003098: 67 80 00 00  	ret

8000309c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
8000309c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800030a0: 63 44 05 00  	bltz	a0, 0x800030a8 <__snrt_isr+0xc>
;         while (1)
800030a4: 6f 00 00 00  	j	0x800030a4 <__snrt_isr+0x8>
800030a8: b7 05 00 80  	lui	a1, 524288
800030ac: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800030b0: 33 75 b5 00  	and	a0, a0, a1
800030b4: 13 05 d5 ff  	addi	a0, a0, -3
800030b8: 93 55 25 00  	srli	a1, a0, 2
800030bc: 13 15 e5 01  	slli	a0, a0, 30
800030c0: 33 65 b5 00  	or	a0, a0, a1
800030c4: 93 05 40 00  	addi	a1, zero, 4
800030c8: 63 0a b5 06  	beq	a0, a1, 0x8000313c <.LBB1_7+0x58>
800030cc: 63 1a 05 08  	bnez	a0, 0x80003160 <.LBB1_7+0x7c>
800030d0: 37 05 00 00  	lui	a0, 0
800030d4: 33 05 45 00  	add	a0, a0, tp
800030d8: 03 25 05 00  	lw	a0, 0(a0)
800030dc: 03 25 05 00  	lw	a0, 0(a0)
800030e0: f3 25 40 f1  	csrr	a1, mhartid

800030e4 <.LBB1_7>:
;     asm volatile(
800030e4: 17 16 00 00  	auipc	a2, 1
800030e8: 13 06 c6 88  	addi	a2, a2, -1908
800030ec: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800030f0: 93 06 06 00  	mv	a3, a2
800030f4: 93 02 10 00  	addi	t0, zero, 1
800030f8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800030fc: e3 9e 02 fe  	bnez	t0, 0x800030f8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80003100: b7 06 00 00  	lui	a3, 0
80003104: b3 86 46 00  	add	a3, a3, tp
80003108: 83 a6 86 00  	lw	a3, 8(a3)
8000310c: 33 85 a5 40  	sub	a0, a1, a0
80003110: 93 55 35 00  	srli	a1, a0, 3
80003114: 93 f5 c5 ff  	andi	a1, a1, -4
80003118: b3 85 b6 00  	add	a1, a3, a1
8000311c: 83 a6 05 00  	lw	a3, 0(a1)
80003120: 13 07 10 00  	addi	a4, zero, 1
80003124: 33 15 a7 00  	sll	a0, a4, a0
80003128: 13 45 f5 ff  	not	a0, a0
8000312c: 33 f5 a6 00  	and	a0, a3, a0
80003130: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80003134: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80003138: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000313c: 37 05 00 00  	lui	a0, 0
80003140: 33 05 45 00  	add	a0, a0, tp
80003144: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80003148: b7 05 00 00  	lui	a1, 0
8000314c: b3 85 45 00  	add	a1, a1, tp
80003150: 83 a5 c5 00  	lw	a1, 12(a1)
80003154: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80003158: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000315c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80003160: 67 80 00 00  	ret

Disassembly of section .init:

80003170 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80003170: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80003174: 93 81 81 f1  	addi	gp, gp, -232

80003178 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80003178: 97 00 00 00  	auipc	ra, 0
8000317c: e7 80 40 3c  	jalr	964(ra)

80003180 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80003180: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80003184: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80003188: 97 00 00 00  	auipc	ra, 0
8000318c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80003190: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80003194: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80003198: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000319c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800031a0: 63 92 02 02  	bnez	t0, 0x800031c4 <snrt.crt0.init_registers>

800031a4 <.Lpcrel_hi0>:
;     la        t0, _edata
800031a4: 97 02 00 00  	auipc	t0, 0
800031a8: 93 82 c2 7c  	addi	t0, t0, 1996

800031ac <.Lpcrel_hi1>:
;     la        t1, _end
800031ac: 17 03 00 00  	auipc	t1, 0
800031b0: 13 03 83 7c  	addi	t1, t1, 1992
;     bge       t0, t1, 2f
800031b4: 63 d8 62 00  	bge	t0, t1, 0x800031c4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
800031b8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
800031bc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800031c0: e3 cc 62 fe  	blt	t0, t1, 0x800031b8 <.Lpcrel_hi1+0xc>

800031c4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800031c4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800031c8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800031cc: 63 82 02 08  	beqz	t0, 0x80003250 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800031d0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800031d4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800031d8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800031dc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800031e0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800031e4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800031e8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800031ec: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800031f0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800031f4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800031f8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800031fc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80003200: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80003204: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80003208: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000320c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80003210: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80003214: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80003218: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000321c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80003220: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80003224: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80003228: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000322c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80003230: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80003234: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80003238: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000323c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80003240: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80003244: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80003248: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000324c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80003250 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80003250: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80003254: 23 a0 06 00  	sw	zero, 0(a3)

80003258 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80003258: 97 02 00 00  	auipc	t0, 0
8000325c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003260: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003264: 93 87 06 00  	mv	a5, a3

80003268 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003268: 97 03 00 00  	auipc	t2, 0
8000326c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003270: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003274: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003278: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000327c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003280: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003284: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003288: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000328c: b3 86 66 40  	sub	a3, a3, t1

80003290 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003290: 97 02 00 00  	auipc	t0, 0
80003294: 93 82 82 5f  	addi	t0, t0, 1528

80003298 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003298: 17 03 00 00  	auipc	t1, 0
8000329c: 13 03 03 5f  	addi	t1, t1, 1520

800032a0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800032a0: 97 03 00 00  	auipc	t2, 0
800032a4: 93 83 83 5e  	addi	t2, t2, 1512

800032a8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800032a8: 17 0e 00 00  	auipc	t3, 0
800032ac: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
800032b0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
800032b4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
800032b8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
800032bc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800032c0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800032c4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800032c8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800032cc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800032d0: 63 dc 62 00  	bge	t0, t1, 0x800032e8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800032d4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800032d8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800032dc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800032e0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800032e4: e3 c8 62 fe  	blt	t0, t1, 0x800032d4 <.Lpcrel_hi7+0x2c>

800032e8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800032e8: 97 02 00 00  	auipc	t0, 0
800032ec: 93 82 02 5a  	addi	t0, t0, 1440

800032f0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
800032f0: 17 03 00 00  	auipc	t1, 0
800032f4: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
800032f8: 63 da 62 00  	bge	t0, t1, 0x8000330c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
800032fc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80003300: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003304: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80003308: e3 ca 72 fe  	blt	t0, t2, 0x800032fc <.Lpcrel_hi9+0xc>

8000330c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000330c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80003310: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80003314: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80003318: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000331c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80003320: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80003324: 97 00 00 00  	auipc	ra, 0
80003328: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
8000332c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80003330: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80003334: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80003338: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000333c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80003340: 13 01 41 01  	addi	sp, sp, 20

80003344 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80003344: 97 02 00 00  	auipc	t0, 0
80003348: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000334c: 73 90 52 30  	csrw	mtvec, t0

80003350 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80003350: 97 00 00 00  	auipc	ra, 0
80003354: e7 80 00 22  	jalr	544(ra)

80003358 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80003358: 97 d0 ff ff  	auipc	ra, 1048573
8000335c: e7 80 c0 2d  	jalr	732(ra)
;     mv        s0, a0 # store return value in s0
80003360: 13 04 05 00  	mv	s0, a0

80003364 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003364: 97 00 00 00  	auipc	ra, 0
80003368: e7 80 c0 20  	jalr	524(ra)

8000336c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000336c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003370: 97 00 00 00  	auipc	ra, 0
80003374: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003378: 73 00 50 10  	wfi	
;     j       1b
8000337c: 6f f0 df ff  	j	0x80003378 <snrt.crt0.end+0xc>

80003380 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003380: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003384: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003388: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000338c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003390: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003394: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003398: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000339c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800033a0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800033a4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800033a8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800033ac: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800033b0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800033b4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800033b8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800033bc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800033c0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800033c4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800033c8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800033cc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800033d0: 63 84 02 08  	beqz	t0, 0x80003458 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800033d4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800033d8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800033dc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800033e0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800033e4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800033e8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800033ec: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800033f0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800033f4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800033f8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800033fc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80003400: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80003404: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80003408: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000340c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80003410: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80003414: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80003418: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000341c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80003420: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80003424: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80003428: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000342c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80003430: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80003434: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80003438: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000343c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003440: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003444: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003448: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000344c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003450: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003454: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003458: 97 00 00 00  	auipc	ra, 0
8000345c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80003460: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003464: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003468: 63 84 02 08  	beqz	t0, 0x800034f0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000346c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003470: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003474: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003478: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000347c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003480: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003484: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003488: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000348c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003490: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003494: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003498: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000349c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800034a0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800034a4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800034a8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800034ac: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800034b0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800034b4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800034b8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800034bc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800034c0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800034c4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800034c8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800034cc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800034d0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800034d4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800034d8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800034dc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800034e0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800034e4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800034e8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800034ec: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
800034f0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
800034f4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
800034f8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
800034fc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003500: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003504: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003508: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000350c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003510: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003514: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003518: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000351c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003520: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003524: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003528: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000352c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003530: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003534: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003538: 73 00 20 30  	mret	

8000353c <_snrt_init_core_info>:
;     mv        a4, a1
8000353c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003540: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003544: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003548: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000354c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003550: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003554: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003558: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000355c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003560: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003564: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003568: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000356c: 67 80 00 00  	ret

80003570 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003570: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003574: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003578: 97 00 00 00  	auipc	ra, 0
8000357c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80003580: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003584: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003588: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000358c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003590: 67 80 00 00  	ret

80003594 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003594: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003598: 67 80 00 00  	ret

8000359c <_snrt_exit>:
;     addi      sp, sp, -8
8000359c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800035a0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800035a4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800035a8: 97 00 00 00  	auipc	ra, 0
800035ac: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
800035b0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800035b4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800035b8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800035bc: 63 1c 05 00  	bnez	a0, 0x800035d4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800035c0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800035c4: 93 e2 12 00  	ori	t0, t0, 1

800035c8 <.Lpcrel_hi11>:
;     la        t1, tohost
800035c8: 17 03 00 00  	auipc	t1, 0
800035cc: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
800035d0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800035d4: 67 80 00 00  	ret
