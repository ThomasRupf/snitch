
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-mat-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00003050 80000000 TEXT
  2 .init             00000468 80003050 TEXT
  3 .rodata           00000230 800034b8 DATA
  4 .htif             00000048 80003700 DATA
  5 .tdata            00000000 80003748 DATA
  6 .tbss             00000010 80003748 BSS
  7 .tbssend          00000000 80003758 DATA
  8 .sdata            00000158 80003758 DATA
  9 .data             00000000 800038b0 DATA
 10 .sbss             00000004 800038b0 BSS
 11 .bss              00000000 800038b4 BSS
 12 .dram             00000000 800038b4 DATA
 13 .debug_info       000033e9 00000000 
 14 .debug_abbrev     00000c0e 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002b89 00000000 
 17 .debug_loc        0000327b 00000000 
 18 .debug_ranges     000004b8 00000000 
 19 .debug_str        00000ace 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002b8 00000000 
 23 .symtab           00003440 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000a40 00000000 


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
;     if (snrt_cluster_compute_core_idx() != 0u) {
8000066c: e3 92 05 00  	bnez	a1, 0x80000e70 <.LBB0_45+0x10>
;     return _snrt_team_current->root;
80000670: 37 05 00 00  	lui	a0, 0
80000674: 33 05 45 00  	add	a0, a0, tp
80000678: 03 25 05 00  	lw	a0, 0(a0)
8000067c: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000680: 03 24 85 05  	lw	s0, 88(a0)
80000684: 83 25 05 05  	lw	a1, 80(a0)
80000688: 83 26 45 05  	lw	a3, 84(a0)
8000068c: 13 06 04 0f  	addi	a2, s0, 240
80000690: b3 85 b6 00  	add	a1, a3, a1
80000694: 63 f6 c5 02  	bgeu	a1, a2, 0x800006c0 <main+0x8c>
80000698: 13 09 00 00  	mv	s2, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
8000069c: 13 06 04 15  	addi	a2, s0, 336
800006a0: 63 ea c5 02  	bltu	a1, a2, 0x800006d4 <main+0xa0>
;     void *ret = (void *)alloc->next;
800006a4: 13 0b 04 00  	mv	s6, s0
;     alloc->next += size;
800006a8: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006ac: 13 04 06 00  	mv	s0, a2
800006b0: 13 06 84 11  	addi	a2, s0, 280
800006b4: 63 e6 c5 02  	bltu	a1, a2, 0x800006e0 <main+0xac>
;     alloc->next += size;
800006b8: 23 2c c5 04  	sw	a2, 88(a0)
800006bc: 6f 00 80 02  	j	0x800006e4 <main+0xb0>
;     void *ret = (void *)alloc->next;
800006c0: 13 09 04 00  	mv	s2, s0
;     alloc->next += size;
800006c4: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c8: 13 04 06 00  	mv	s0, a2
800006cc: 13 06 04 15  	addi	a2, s0, 336
800006d0: e3 fa c5 fc  	bgeu	a1, a2, 0x800006a4 <main+0x70>
800006d4: 13 0b 00 00  	mv	s6, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d8: 13 06 84 11  	addi	a2, s0, 280
800006dc: e3 fe c5 fc  	bgeu	a1, a2, 0x800006b8 <main+0x84>
800006e0: 13 04 00 00  	mv	s0, zero
;     for (uint32_t i = 0; i < n; i++){
800006e4: 13 05 89 0e  	addi	a0, s2, 232
800006e8: 93 55 49 01  	srli	a1, s2, 20
800006ec: b3 35 b0 00  	snez	a1, a1
800006f0: 37 06 12 00  	lui	a2, 288
800006f4: 13 06 16 00  	addi	a2, a2, 1
800006f8: 33 35 c5 00  	sltu	a0, a0, a2
800006fc: 33 f5 a5 00  	and	a0, a1, a0

80000700 <.LBB0_23>:
80000700: 17 38 00 00  	auipc	a6, 3
80000704: 13 08 88 05  	addi	a6, a6, 88
80000708: 63 0a 05 18  	beqz	a0, 0x8000089c <.LBB0_42+0x4c>
8000070c: 13 05 80 00  	addi	a0, zero, 8
80000710: 93 05 d0 01  	addi	a1, zero, 29
;     for (uint32_t i = 0; i < n; i++){
80000714: 13 06 00 04  	addi	a2, zero, 64
80000718: 93 06 00 0c  	addi	a3, zero, 192
8000071c: ab a0 c5 00  	scfgw	a1, a2
80000720: ab 20 d5 00  	scfgw	a0, a3
80000724: 13 05 00 02  	addi	a0, zero, 32
80000728: ab 20 a0 00  	scfgw	zero, a0
8000072c: 2b 20 09 38  	scfgwi	s2, 896
80000730: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000734: 87 31 08 00  	fld	ft3, 0(a6)

80000738 <.LBB0_24>:
80000738: 17 35 00 00  	auipc	a0, 3
8000073c: 13 05 85 02  	addi	a0, a0, 40
80000740: 07 32 05 00  	fld	ft4, 0(a0)

80000744 <.LBB0_25>:
80000744: 17 35 00 00  	auipc	a0, 3
80000748: 13 05 45 02  	addi	a0, a0, 36
8000074c: 87 32 05 00  	fld	ft5, 0(a0)

80000750 <.LBB0_26>:
80000750: 17 35 00 00  	auipc	a0, 3
80000754: 13 05 05 02  	addi	a0, a0, 32
80000758: 07 33 05 00  	fld	ft6, 0(a0)
;         p[i] = (double)(seed + i % 20) * 3.141;
8000075c: 53 80 31 22  	fmv.d	ft0, ft3
80000760: 53 00 42 22  	fmv.d	ft0, ft4
80000764: 53 80 52 22  	fmv.d	ft0, ft5
80000768: 53 00 63 22  	fmv.d	ft0, ft6

8000076c <.LBB0_27>:
8000076c: 17 35 00 00  	auipc	a0, 3
80000770: 13 05 c5 00  	addi	a0, a0, 12
80000774: 87 33 05 00  	fld	ft7, 0(a0)

80000778 <.LBB0_28>:
80000778: 17 35 00 00  	auipc	a0, 3
8000077c: 13 05 85 00  	addi	a0, a0, 8
80000780: 07 35 05 00  	fld	fa0, 0(a0)

80000784 <.LBB0_29>:
80000784: 17 35 00 00  	auipc	a0, 3
80000788: 13 05 45 00  	addi	a0, a0, 4
8000078c: 87 35 05 00  	fld	fa1, 0(a0)

80000790 <.LBB0_30>:
80000790: 17 35 00 00  	auipc	a0, 3
80000794: 13 05 05 00  	mv	a0, a0
80000798: 07 36 05 00  	fld	fa2, 0(a0)
;         p[i] = (double)(seed + i % 20) * 3.141;
8000079c: 53 80 73 22  	fmv.d	ft0, ft7
800007a0: 53 00 a5 22  	fmv.d	ft0, fa0
800007a4: 53 80 b5 22  	fmv.d	ft0, fa1
800007a8: 53 00 c6 22  	fmv.d	ft0, fa2

800007ac <.LBB0_31>:
800007ac: 17 35 00 00  	auipc	a0, 3
800007b0: 13 05 c5 fe  	addi	a0, a0, -20
800007b4: 87 36 05 00  	fld	fa3, 0(a0)

800007b8 <.LBB0_32>:
800007b8: 17 35 00 00  	auipc	a0, 3
800007bc: 13 05 85 fe  	addi	a0, a0, -24
800007c0: 07 37 05 00  	fld	fa4, 0(a0)

800007c4 <.LBB0_33>:
800007c4: 17 35 00 00  	auipc	a0, 3
800007c8: 13 05 45 fe  	addi	a0, a0, -28
800007cc: 87 37 05 00  	fld	fa5, 0(a0)

800007d0 <.LBB0_34>:
800007d0: 17 35 00 00  	auipc	a0, 3
800007d4: 13 05 05 fe  	addi	a0, a0, -32
800007d8: 07 38 05 00  	fld	fa6, 0(a0)
;         p[i] = (double)(seed + i % 20) * 3.141;
800007dc: 53 80 d6 22  	fmv.d	ft0, fa3
800007e0: 53 00 e7 22  	fmv.d	ft0, fa4
800007e4: 53 80 f7 22  	fmv.d	ft0, fa5
800007e8: 53 00 08 23  	fmv.d	ft0, fa6

800007ec <.LBB0_35>:
800007ec: 17 35 00 00  	auipc	a0, 3
800007f0: 13 05 c5 fc  	addi	a0, a0, -52
800007f4: 87 37 05 00  	fld	fa5, 0(a0)

800007f8 <.LBB0_36>:
800007f8: 17 35 00 00  	auipc	a0, 3
800007fc: 13 05 85 fc  	addi	a0, a0, -56
80000800: 07 38 05 00  	fld	fa6, 0(a0)

80000804 <.LBB0_37>:
80000804: 17 35 00 00  	auipc	a0, 3
80000808: 13 05 45 fc  	addi	a0, a0, -60
8000080c: 87 38 05 00  	fld	fa7, 0(a0)

80000810 <.LBB0_38>:
80000810: 17 35 00 00  	auipc	a0, 3
80000814: 13 05 05 fc  	addi	a0, a0, -64
80000818: 07 3e 05 00  	fld	ft8, 0(a0)
;         p[i] = (double)(seed + i % 20) * 3.141;
8000081c: 53 80 f7 22  	fmv.d	ft0, fa5
80000820: 53 00 08 23  	fmv.d	ft0, fa6
80000824: 53 80 18 23  	fmv.d	ft0, fa7
80000828: 53 00 ce 23  	fmv.d	ft0, ft8

8000082c <.LBB0_39>:
8000082c: 17 35 00 00  	auipc	a0, 3
80000830: 13 05 c5 fa  	addi	a0, a0, -84
80000834: 87 37 05 00  	fld	fa5, 0(a0)

80000838 <.LBB0_40>:
80000838: 17 35 00 00  	auipc	a0, 3
8000083c: 13 05 85 fa  	addi	a0, a0, -88
80000840: 07 38 05 00  	fld	fa6, 0(a0)

80000844 <.LBB0_41>:
80000844: 17 35 00 00  	auipc	a0, 3
80000848: 13 05 45 fa  	addi	a0, a0, -92
8000084c: 87 38 05 00  	fld	fa7, 0(a0)

80000850 <.LBB0_42>:
80000850: 17 35 00 00  	auipc	a0, 3
80000854: 13 05 05 fa  	addi	a0, a0, -96
80000858: 07 3e 05 00  	fld	ft8, 0(a0)
;         p[i] = (double)(seed + i % 20) * 3.141;
8000085c: 53 80 f7 22  	fmv.d	ft0, fa5
80000860: 53 00 08 23  	fmv.d	ft0, fa6
80000864: 53 80 18 23  	fmv.d	ft0, fa7
80000868: 53 00 ce 23  	fmv.d	ft0, ft8
8000086c: 53 80 31 22  	fmv.d	ft0, ft3
80000870: 53 00 42 22  	fmv.d	ft0, ft4
80000874: 53 80 52 22  	fmv.d	ft0, ft5
80000878: 53 00 63 22  	fmv.d	ft0, ft6
8000087c: 53 80 73 22  	fmv.d	ft0, ft7
80000880: 53 00 a5 22  	fmv.d	ft0, fa0
80000884: 53 80 b5 22  	fmv.d	ft0, fa1
80000888: 53 00 c6 22  	fmv.d	ft0, fa2
8000088c: 53 80 d6 22  	fmv.d	ft0, fa3
80000890: 53 00 e7 22  	fmv.d	ft0, fa4
80000894: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000898: 6f 00 40 05  	j	0x800008ec <.LBB0_42+0x9c>
8000089c: 93 05 00 00  	mv	a1, zero
800008a0: 13 06 00 00  	mv	a2, zero
800008a4: 93 06 10 00  	addi	a3, zero, 1
800008a8: 37 d5 cc cc  	lui	a0, 838861
800008ac: 87 31 08 00  	fld	ft3, 0(a6)
800008b0: 13 07 d5 cc  	addi	a4, a0, -819
800008b4: 93 07 40 01  	addi	a5, zero, 20
800008b8: 13 05 00 0f  	addi	a0, zero, 240
;         p[i] = (double)(seed + i % 20) * 3.141;
800008bc: b3 34 e6 02  	mulhu	s1, a2, a4
800008c0: 93 d4 44 00  	srli	s1, s1, 4
800008c4: b3 84 f4 02  	mul	s1, s1, a5
800008c8: b3 84 96 40  	sub	s1, a3, s1
800008cc: 53 82 14 d2  	fcvt.d.wu	ft4, s1
800008d0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008d4: b3 04 b9 00  	add	s1, s2, a1
800008d8: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (uint32_t i = 0; i < n; i++){
800008dc: 13 06 16 00  	addi	a2, a2, 1
800008e0: 93 85 85 00  	addi	a1, a1, 8
800008e4: 93 86 16 00  	addi	a3, a3, 1
800008e8: e3 9a a5 fc  	bne	a1, a0, 0x800008bc <.LBB0_42+0x6c>
800008ec: 13 05 8b 14  	addi	a0, s6, 328
800008f0: 93 55 4b 01  	srli	a1, s6, 20
800008f4: b3 35 b0 00  	snez	a1, a1
800008f8: 37 06 12 00  	lui	a2, 288
800008fc: 13 06 16 00  	addi	a2, a2, 1
80000900: 33 35 c5 00  	sltu	a0, a0, a2
80000904: 33 f5 a5 00  	and	a0, a1, a0
80000908: 63 0e 05 06  	beqz	a0, 0x80000984 <.LBB0_42+0x134>
8000090c: 93 05 00 00  	mv	a1, zero
80000910: 13 05 80 00  	addi	a0, zero, 8
80000914: 13 06 90 02  	addi	a2, zero, 41
;     for (uint32_t i = 0; i < n; i++){
80000918: 93 06 00 04  	addi	a3, zero, 64
8000091c: ab 20 d6 00  	scfgw	a2, a3
80000920: 13 06 00 0c  	addi	a2, zero, 192
80000924: ab 20 c5 00  	scfgw	a0, a2
80000928: 13 05 00 02  	addi	a0, zero, 32
8000092c: ab 20 a0 00  	scfgw	zero, a0
80000930: 2b 20 0b 38  	scfgwi	s6, 896
80000934: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000938: 13 06 a0 02  	addi	a2, zero, 42
8000093c: 93 06 10 00  	addi	a3, zero, 1
80000940: 87 31 08 00  	fld	ft3, 0(a6)
80000944: 37 d5 cc cc  	lui	a0, 838861
80000948: 13 05 d5 cc  	addi	a0, a0, -819
8000094c: 13 07 40 01  	addi	a4, zero, 20
;         p[i] = (double)(seed + i % 20) * 3.141;
80000950: b3 b7 a5 02  	mulhu	a5, a1, a0
80000954: 93 d7 47 00  	srli	a5, a5, 4
80000958: b3 87 e7 02  	mul	a5, a5, a4
8000095c: b3 87 f6 40  	sub	a5, a3, a5
80000960: 53 82 17 d2  	fcvt.d.wu	ft4, a5
80000964: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000968: 53 00 42 22  	fmv.d	ft0, ft4
;     for (uint32_t i = 0; i < n; i++){
8000096c: 93 85 15 00  	addi	a1, a1, 1
80000970: 13 06 f6 ff  	addi	a2, a2, -1
80000974: 93 86 16 00  	addi	a3, a3, 1
80000978: e3 1c 06 fc  	bnez	a2, 0x80000950 <.LBB0_42+0x100>
8000097c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000980: 6f 00 40 05  	j	0x800009d4 <.LBB0_42+0x184>
80000984: 13 05 00 00  	mv	a0, zero
80000988: 93 05 00 00  	mv	a1, zero
8000098c: 13 06 10 00  	addi	a2, zero, 1
80000990: b7 d6 cc cc  	lui	a3, 838861
80000994: 87 31 08 00  	fld	ft3, 0(a6)
80000998: 93 86 d6 cc  	addi	a3, a3, -819
8000099c: 13 07 40 01  	addi	a4, zero, 20
800009a0: 93 07 00 15  	addi	a5, zero, 336
;         p[i] = (double)(seed + i % 20) * 3.141;
800009a4: b3 b4 d5 02  	mulhu	s1, a1, a3
800009a8: 93 d4 44 00  	srli	s1, s1, 4
800009ac: b3 84 e4 02  	mul	s1, s1, a4
800009b0: b3 04 96 40  	sub	s1, a2, s1
800009b4: 53 82 14 d2  	fcvt.d.wu	ft4, s1
800009b8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009bc: b3 04 ab 00  	add	s1, s6, a0
800009c0: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (uint32_t i = 0; i < n; i++){
800009c4: 93 85 15 00  	addi	a1, a1, 1
800009c8: 13 05 85 00  	addi	a0, a0, 8
800009cc: 13 06 16 00  	addi	a2, a2, 1
800009d0: e3 1a f5 fc  	bne	a0, a5, 0x800009a4 <.LBB0_42+0x154>
;     matmul(c, a, b, n, p, m);
800009d4: 93 06 50 00  	addi	a3, zero, 5
800009d8: 13 07 60 00  	addi	a4, zero, 6
800009dc: 93 07 70 00  	addi	a5, zero, 7
800009e0: 93 09 60 00  	addi	s3, zero, 6
800009e4: 13 05 04 00  	mv	a0, s0
800009e8: 93 05 09 00  	mv	a1, s2
800009ec: 13 06 0b 00  	mv	a2, s6
800009f0: 97 20 00 00  	auipc	ra, 2
800009f4: e7 80 80 36  	jalr	872(ra)
;     matmul(c, a, b, n, p, 0); //does nothing
800009f8: 93 06 50 00  	addi	a3, zero, 5
800009fc: 13 07 60 00  	addi	a4, zero, 6
80000a00: 13 05 04 00  	mv	a0, s0
80000a04: 93 05 09 00  	mv	a1, s2
80000a08: 13 06 0b 00  	mv	a2, s6
80000a0c: 93 07 00 00  	mv	a5, zero
80000a10: 97 20 00 00  	auipc	ra, 2
80000a14: e7 80 80 34  	jalr	840(ra)
;     for (int i = 0; i < n; i++){
80000a18: 13 05 04 11  	addi	a0, s0, 272
80000a1c: 93 55 44 01  	srli	a1, s0, 20
80000a20: b3 35 b0 00  	snez	a1, a1
80000a24: 37 06 12 00  	lui	a2, 288
80000a28: 13 06 16 00  	addi	a2, a2, 1
80000a2c: 33 35 c5 00  	sltu	a0, a0, a2
80000a30: 33 f5 a5 00  	and	a0, a1, a0
80000a34: 63 08 05 1a  	beqz	a0, 0x80000be4 <.LBB0_42+0x394>
80000a38: 13 0a 80 00  	addi	s4, zero, 8
;     for (int i = 0; i < n; i++){
80000a3c: 13 05 00 04  	addi	a0, zero, 64
80000a40: 93 05 00 0c  	addi	a1, zero, 192
80000a44: ab a0 a9 00  	scfgw	s3, a0
80000a48: ab 20 ba 00  	scfgw	s4, a1
80000a4c: 93 0a 40 00  	addi	s5, zero, 4
80000a50: 13 05 00 06  	addi	a0, zero, 96
80000a54: 93 05 00 0e  	addi	a1, zero, 224
80000a58: ab a0 aa 00  	scfgw	s5, a0
80000a5c: ab 20 ba 00  	scfgw	s4, a1
80000a60: 13 05 00 02  	addi	a0, zero, 32
80000a64: ab 20 a0 00  	scfgw	zero, a0
80000a68: 2b 20 04 32  	scfgwi	s0, 800
80000a6c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             r += A[i * m + j];
80000a70: d3 01 00 22  	fmv.d	ft3, ft0
80000a74: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a78: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a7c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a80: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a84: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a88: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a8c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a90: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a94: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a98: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000a9c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000aa0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000aa4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000aa8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000aac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ab0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ab4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ab8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000abc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ac0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ac4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ac8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000acc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ad0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ad4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ad8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000adc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ae0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ae4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ae8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000aec: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000af0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000af4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000af8: 53 74 30 02  	fadd.d	fs0, ft0, ft3
80000afc: 73 f5 00 7c  	csrrci	a0, 1984, 1
;     matmul(c, a, b, n, 0, m); //0.0's matrix c
80000b00: 93 06 50 00  	addi	a3, zero, 5
80000b04: 93 07 70 00  	addi	a5, zero, 7
80000b08: 13 05 04 00  	mv	a0, s0
80000b0c: 93 05 09 00  	mv	a1, s2
80000b10: 13 06 0b 00  	mv	a2, s6
80000b14: 13 07 00 00  	mv	a4, zero
80000b18: 97 20 00 00  	auipc	ra, 2
80000b1c: e7 80 00 24  	jalr	576(ra)
;     for (int i = 0; i < n; i++){
80000b20: 13 05 00 04  	addi	a0, zero, 64
80000b24: 93 05 00 0c  	addi	a1, zero, 192
80000b28: ab a0 a9 00  	scfgw	s3, a0
80000b2c: ab 20 ba 00  	scfgw	s4, a1
80000b30: 13 05 00 06  	addi	a0, zero, 96
80000b34: 93 05 00 0e  	addi	a1, zero, 224
80000b38: ab a0 aa 00  	scfgw	s5, a0
80000b3c: ab 20 ba 00  	scfgw	s4, a1
80000b40: 13 05 00 02  	addi	a0, zero, 32
80000b44: ab 20 a0 00  	scfgw	zero, a0
80000b48: 2b 20 04 32  	scfgwi	s0, 800
80000b4c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             r += A[i * m + j];
80000b50: d3 01 00 22  	fmv.d	ft3, ft0
80000b54: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b58: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b5c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b60: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b64: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b68: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b6c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b70: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b74: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b78: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b7c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b80: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b84: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b88: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b8c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b90: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b94: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b98: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000b9c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ba0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ba4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000ba8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bb0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bb4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bb8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bbc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bc0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bc4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bc8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bcc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bd0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bd4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bd8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000bdc: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000be0: 6f 00 c0 24  	j	0x80000e2c <.LBB0_43>
;             r += A[i * m + j];
80000be4: 87 31 04 00  	fld	ft3, 0(s0)
80000be8: 07 32 84 00  	fld	ft4, 8(s0)
80000bec: 87 32 04 01  	fld	ft5, 16(s0)
80000bf0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000bf4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000bf8: 07 32 84 01  	fld	ft4, 24(s0)
80000bfc: 87 32 04 02  	fld	ft5, 32(s0)
80000c00: 07 33 84 02  	fld	ft6, 40(s0)
80000c04: 87 33 04 03  	fld	ft7, 48(s0)
80000c08: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000c0c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000c10: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000c14: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000c18: 07 32 84 03  	fld	ft4, 56(s0)
80000c1c: 87 32 04 04  	fld	ft5, 64(s0)
80000c20: 07 33 84 04  	fld	ft6, 72(s0)
80000c24: 87 33 04 05  	fld	ft7, 80(s0)
80000c28: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000c2c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000c30: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000c34: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000c38: 07 32 84 05  	fld	ft4, 88(s0)
80000c3c: 87 32 04 06  	fld	ft5, 96(s0)
80000c40: 07 33 84 06  	fld	ft6, 104(s0)
80000c44: 87 33 04 07  	fld	ft7, 112(s0)
80000c48: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000c4c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000c50: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000c54: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000c58: 07 32 84 07  	fld	ft4, 120(s0)
80000c5c: 87 32 04 08  	fld	ft5, 128(s0)
80000c60: 07 33 84 08  	fld	ft6, 136(s0)
80000c64: 87 33 04 09  	fld	ft7, 144(s0)
80000c68: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000c6c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000c70: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000c74: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000c78: 07 32 84 09  	fld	ft4, 152(s0)
80000c7c: 87 32 04 0a  	fld	ft5, 160(s0)
80000c80: 07 33 84 0a  	fld	ft6, 168(s0)
80000c84: 87 33 04 0b  	fld	ft7, 176(s0)
80000c88: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000c8c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000c90: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000c94: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000c98: 07 32 84 0b  	fld	ft4, 184(s0)
80000c9c: 87 32 04 0c  	fld	ft5, 192(s0)
80000ca0: 07 33 84 0c  	fld	ft6, 200(s0)
80000ca4: 87 33 04 0d  	fld	ft7, 208(s0)
80000ca8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000cac: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000cb0: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000cb4: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000cb8: 07 32 84 0d  	fld	ft4, 216(s0)
80000cbc: 87 32 04 0e  	fld	ft5, 224(s0)
80000cc0: 07 33 84 0e  	fld	ft6, 232(s0)
80000cc4: 87 33 04 0f  	fld	ft7, 240(s0)
80000cc8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000ccc: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000cd0: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000cd4: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000cd8: 07 32 84 0f  	fld	ft4, 248(s0)
80000cdc: 87 32 04 10  	fld	ft5, 256(s0)
80000ce0: 07 33 84 10  	fld	ft6, 264(s0)
80000ce4: 87 33 04 11  	fld	ft7, 272(s0)
80000ce8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000cec: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000cf0: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000cf4: 53 f4 33 02  	fadd.d	fs0, ft7, ft3
;     matmul(c, a, b, n, 0, m); //0.0's matrix c
80000cf8: 93 06 50 00  	addi	a3, zero, 5
80000cfc: 93 07 70 00  	addi	a5, zero, 7
80000d00: 13 05 04 00  	mv	a0, s0
80000d04: 93 05 09 00  	mv	a1, s2
80000d08: 13 06 0b 00  	mv	a2, s6
80000d0c: 13 07 00 00  	mv	a4, zero
80000d10: 97 20 00 00  	auipc	ra, 2
80000d14: e7 80 80 04  	jalr	72(ra)
;             r += A[i * m + j];
80000d18: 87 31 04 00  	fld	ft3, 0(s0)
80000d1c: 07 32 84 00  	fld	ft4, 8(s0)
80000d20: 87 32 04 01  	fld	ft5, 16(s0)
80000d24: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000d28: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000d2c: 07 32 84 01  	fld	ft4, 24(s0)
80000d30: 87 32 04 02  	fld	ft5, 32(s0)
80000d34: 07 33 84 02  	fld	ft6, 40(s0)
80000d38: 87 33 04 03  	fld	ft7, 48(s0)
80000d3c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000d40: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000d44: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000d48: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000d4c: 07 32 84 03  	fld	ft4, 56(s0)
80000d50: 87 32 04 04  	fld	ft5, 64(s0)
80000d54: 07 33 84 04  	fld	ft6, 72(s0)
80000d58: 87 33 04 05  	fld	ft7, 80(s0)
80000d5c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000d60: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000d64: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000d68: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000d6c: 07 32 84 05  	fld	ft4, 88(s0)
80000d70: 87 32 04 06  	fld	ft5, 96(s0)
80000d74: 07 33 84 06  	fld	ft6, 104(s0)
80000d78: 87 33 04 07  	fld	ft7, 112(s0)
80000d7c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000d80: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000d84: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000d88: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000d8c: 07 32 84 07  	fld	ft4, 120(s0)
80000d90: 87 32 04 08  	fld	ft5, 128(s0)
80000d94: 07 33 84 08  	fld	ft6, 136(s0)
80000d98: 87 33 04 09  	fld	ft7, 144(s0)
80000d9c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000da0: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000da4: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000da8: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000dac: 07 32 84 09  	fld	ft4, 152(s0)
80000db0: 87 32 04 0a  	fld	ft5, 160(s0)
80000db4: 07 33 84 0a  	fld	ft6, 168(s0)
80000db8: 87 33 04 0b  	fld	ft7, 176(s0)
80000dbc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000dc0: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000dc4: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000dc8: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000dcc: 07 32 84 0b  	fld	ft4, 184(s0)
80000dd0: 87 32 04 0c  	fld	ft5, 192(s0)
80000dd4: 07 33 84 0c  	fld	ft6, 200(s0)
80000dd8: 87 33 04 0d  	fld	ft7, 208(s0)
80000ddc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000de0: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000de4: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000de8: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000dec: 07 32 84 0d  	fld	ft4, 216(s0)
80000df0: 87 32 04 0e  	fld	ft5, 224(s0)
80000df4: 07 33 84 0e  	fld	ft6, 232(s0)
80000df8: 87 33 04 0f  	fld	ft7, 240(s0)
80000dfc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000e00: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000e04: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000e08: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80000e0c: 07 32 84 0f  	fld	ft4, 248(s0)
80000e10: 87 32 04 10  	fld	ft5, 256(s0)
80000e14: 07 33 84 10  	fld	ft6, 264(s0)
80000e18: 87 33 04 11  	fld	ft7, 272(s0)
80000e1c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000e20: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000e24: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80000e28: d3 f1 33 02  	fadd.d	ft3, ft7, ft3

80000e2c <.LBB0_43>:
80000e2c: 17 35 00 00  	auipc	a0, 3
80000e30: 13 05 c5 9c  	addi	a0, a0, -1588
80000e34: 07 32 05 00  	fld	ft4, 0(a0)
;     double error = r + r0 - r_true;
80000e38: 53 72 44 02  	fadd.d	ft4, fs0, ft4
80000e3c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;     error = error < 0.0 ? -error : error;
80000e40: 53 a4 31 22  	fabs.d	fs0, ft3
;     printf("error = %f\n", error);
80000e44: 27 30 81 00  	fsd	fs0, 0(sp)
80000e48: 03 26 01 00  	lw	a2, 0(sp)
80000e4c: 83 26 41 00  	lw	a3, 4(sp)

80000e50 <.LBB0_44>:
80000e50: 17 25 00 00  	auipc	a0, 2
80000e54: 13 05 55 67  	addi	a0, a0, 1653
80000e58: 97 00 00 00  	auipc	ra, 0
80000e5c: e7 80 40 04  	jalr	68(ra)

80000e60 <.LBB0_45>:
80000e60: 17 35 00 00  	auipc	a0, 3
80000e64: 13 05 05 9a  	addi	a0, a0, -1632
80000e68: 87 31 05 00  	fld	ft3, 0(a0)
;     return error > 0.0001;
80000e6c: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80000e70: 07 34 81 00  	fld	fs0, 8(sp)
80000e74: 03 2b 01 01  	lw	s6, 16(sp)
80000e78: 83 2a 41 01  	lw	s5, 20(sp)
80000e7c: 03 2a 81 01  	lw	s4, 24(sp)
80000e80: 83 29 c1 01  	lw	s3, 28(sp)
80000e84: 03 29 01 02  	lw	s2, 32(sp)
80000e88: 83 24 41 02  	lw	s1, 36(sp)
80000e8c: 03 24 81 02  	lw	s0, 40(sp)
80000e90: 83 20 c1 02  	lw	ra, 44(sp)
80000e94: 13 01 01 03  	addi	sp, sp, 48
80000e98: 67 80 00 00  	ret

80000e9c <printf_>:
; {
80000e9c: 13 01 01 fd  	addi	sp, sp, -48
80000ea0: 23 26 11 00  	sw	ra, 12(sp)
80000ea4: 93 02 05 00  	mv	t0, a0
80000ea8: 23 26 11 03  	sw	a7, 44(sp)
80000eac: 23 24 01 03  	sw	a6, 40(sp)
80000eb0: 23 22 f1 02  	sw	a5, 36(sp)
80000eb4: 23 20 e1 02  	sw	a4, 32(sp)
80000eb8: 23 2e d1 00  	sw	a3, 28(sp)
80000ebc: 23 2c c1 00  	sw	a2, 24(sp)
80000ec0: 23 2a b1 00  	sw	a1, 20(sp)
80000ec4: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80000ec8: 23 24 a1 00  	sw	a0, 8(sp)

80000ecc <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80000ecc: 17 15 00 00  	auipc	a0, 1
80000ed0: 13 05 45 c2  	addi	a0, a0, -988
80000ed4: 93 05 71 00  	addi	a1, sp, 7
80000ed8: 13 06 f0 ff  	addi	a2, zero, -1
80000edc: 13 07 41 01  	addi	a4, sp, 20
80000ee0: 93 86 02 00  	mv	a3, t0
80000ee4: 97 00 00 00  	auipc	ra, 0
80000ee8: e7 80 40 01  	jalr	20(ra)
;   return ret;
80000eec: 83 20 c1 00  	lw	ra, 12(sp)
80000ef0: 13 01 01 03  	addi	sp, sp, 48
80000ef4: 67 80 00 00  	ret

80000ef8 <_vsnprintf.llvm.11632292163828655644>:
; {
80000ef8: 13 01 01 f9  	addi	sp, sp, -112
80000efc: 23 26 11 06  	sw	ra, 108(sp)
80000f00: 23 24 81 06  	sw	s0, 104(sp)
80000f04: 23 22 91 06  	sw	s1, 100(sp)
80000f08: 23 20 21 07  	sw	s2, 96(sp)
80000f0c: 23 2e 31 05  	sw	s3, 92(sp)
80000f10: 23 2c 41 05  	sw	s4, 88(sp)
80000f14: 23 2a 51 05  	sw	s5, 84(sp)
80000f18: 23 28 61 05  	sw	s6, 80(sp)
80000f1c: 23 26 71 05  	sw	s7, 76(sp)
80000f20: 23 24 81 05  	sw	s8, 72(sp)
80000f24: 23 22 91 05  	sw	s9, 68(sp)
80000f28: 23 20 a1 05  	sw	s10, 64(sp)
80000f2c: 23 2e b1 03  	sw	s11, 60(sp)
80000f30: 93 09 07 00  	mv	s3, a4
80000f34: 13 84 06 00  	mv	s0, a3
80000f38: 93 0a 06 00  	mv	s5, a2
80000f3c: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80000f40: 63 86 05 00  	beqz	a1, 0x80000f4c <.LBB1_183>
80000f44: 13 09 05 00  	mv	s2, a0
80000f48: 6f 00 c0 00  	j	0x80000f54 <.LBB1_183+0x8>

80000f4c <.LBB1_183>:
80000f4c: 17 19 00 00  	auipc	s2, 1
80000f50: 13 09 09 c5  	addi	s2, s2, -944
80000f54: 13 0c 00 00  	mv	s8, zero
80000f58: 13 0b 50 02  	addi	s6, zero, 37
80000f5c: 93 0d 00 01  	addi	s11, zero, 16
80000f60: 93 0b e0 02  	addi	s7, zero, 46
80000f64: 37 15 00 00  	lui	a0, 1
80000f68: 13 05 05 80  	addi	a0, a0, -2048
80000f6c: 23 2c a1 00  	sw	a0, 24(sp)
80000f70: 37 05 01 00  	lui	a0, 16
80000f74: 13 05 f5 ff  	addi	a0, a0, -1
80000f78: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80000f7c: 13 0d 24 00  	addi	s10, s0, 2
80000f80: 93 0c 0c 00  	mv	s9, s8
80000f84: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80000f88: 03 45 04 00  	lbu	a0, 0(s0)
80000f8c: e3 04 05 30  	beqz	a0, 0x80001a94 <.LBB1_124+0x3b0>
80000f90: 63 08 65 03  	beq	a0, s6, 0x80000fc0 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80000f94: 93 84 1c 00  	addi	s1, s9, 1
80000f98: 93 05 0a 00  	mv	a1, s4
80000f9c: 13 86 0c 00  	mv	a2, s9
80000fa0: 93 86 0a 00  	mv	a3, s5
80000fa4: e7 00 09 00  	jalr	s2
;       format++;
80000fa8: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80000fac: 13 0d 1d 00  	addi	s10, s10, 1
80000fb0: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80000fb4: 03 45 04 00  	lbu	a0, 0(s0)
80000fb8: e3 1c 05 fc  	bnez	a0, 0x80000f90 <.LBB1_183+0x44>
80000fbc: 6f 00 90 2d  	j	0x80001a94 <.LBB1_124+0x3b0>
;     flags = 0U;
80000fc0: 13 04 00 00  	mv	s0, zero
80000fc4: 6f 00 00 01  	j	0x80000fd4 <.LBB1_9+0x8>

80000fc8 <.LBB1_8>:
80000fc8: 93 05 00 01  	addi	a1, zero, 16

80000fcc <.LBB1_9>:
80000fcc: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80000fd0: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80000fd4: 03 45 fd ff  	lbu	a0, -1(s10)
80000fd8: 93 05 05 fe  	addi	a1, a0, -32
80000fdc: 63 ec bd 02  	bltu	s11, a1, 0x80001014 <.LBB1_15>
80000fe0: 93 95 25 00  	slli	a1, a1, 2

80000fe4 <.LBB1_184>:
80000fe4: 17 26 00 00  	auipc	a2, 2
80000fe8: 13 06 46 4f  	addi	a2, a2, 1268
80000fec: b3 85 c5 00  	add	a1, a1, a2
80000ff0: 03 a6 05 00  	lw	a2, 0(a1)
80000ff4: 93 05 10 00  	addi	a1, zero, 1
80000ff8: 67 00 06 00  	jr	a2

80000ffc <.LBB1_12>:
80000ffc: 93 05 80 00  	addi	a1, zero, 8
80001000: 6f f0 df fc  	j	0x80000fcc <.LBB1_9>

80001004 <.LBB1_13>:
80001004: 93 05 40 00  	addi	a1, zero, 4
80001008: 6f f0 5f fc  	j	0x80000fcc <.LBB1_9>

8000100c <.LBB1_14>:
8000100c: 93 05 20 00  	addi	a1, zero, 2
80001010: 6f f0 df fb  	j	0x80000fcc <.LBB1_9>

80001014 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001014: 93 05 05 fd  	addi	a1, a0, -48
80001018: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
8000101c: 93 05 fd ff  	addi	a1, s10, -1
80001020: 93 06 90 00  	addi	a3, zero, 9
80001024: 63 ee c6 06  	bltu	a3, a2, 0x800010a0 <.LBB1_15+0x8c>
80001028: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000102c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001030: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001034: b3 06 8b 03  	mul	a3, s6, s8
80001038: 93 85 15 00  	addi	a1, a1, 1
8000103c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001040: 93 06 05 fd  	addi	a3, a0, -48
80001044: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001048: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
8000104c: e3 e0 86 ff  	bltu	a3, s8, 0x8000102c <.LBB1_15+0x18>
80001050: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001054: 63 16 75 0b  	bne	a0, s7, 0x80001100 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001058: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
8000105c: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001060: 93 05 05 fd  	addi	a1, a0, -48
80001064: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001068: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
8000106c: 93 06 90 00  	addi	a3, zero, 9
80001070: 63 e0 c6 06  	bltu	a3, a2, 0x800010d0 <.LBB1_15+0xbc>
80001074: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001078: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000107c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001080: b3 86 8b 03  	mul	a3, s7, s8
80001084: 93 85 15 00  	addi	a1, a1, 1
80001088: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000108c: 93 06 05 fd  	addi	a3, a0, -48
80001090: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001094: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001098: e3 e0 86 ff  	bltu	a3, s8, 0x80001078 <.LBB1_15+0x64>
8000109c: 6f 00 00 07  	j	0x8000110c <.LBB1_15+0xf8>
;     else if (*format == '*') {
800010a0: 13 06 a0 02  	addi	a2, zero, 42
800010a4: 63 18 c5 04  	bne	a0, a2, 0x800010f4 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800010a8: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800010ac: 63 d4 05 00  	bgez	a1, 0x800010b4 <.LBB1_15+0xa0>
800010b0: 13 64 24 00  	ori	s0, s0, 2
800010b4: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800010b8: 03 45 0d 00  	lbu	a0, 0(s10)
800010bc: 13 d6 f5 41  	srai	a2, a1, 31
800010c0: b3 85 c5 00  	add	a1, a1, a2
800010c4: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800010c8: e3 08 75 f9  	beq	a0, s7, 0x80001058 <.LBB1_15+0x44>
800010cc: 6f 00 40 03  	j	0x80001100 <.LBB1_15+0xec>
;       else if (*format == '*') {
800010d0: 13 06 a0 02  	addi	a2, zero, 42
800010d4: 63 1a c5 02  	bne	a0, a2, 0x80001108 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800010d8: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800010dc: 63 44 70 01  	bgtz	s7, 0x800010e4 <.LBB1_15+0xd0>
800010e0: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
800010e4: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800010e8: 13 0d 2d 00  	addi	s10, s10, 2
800010ec: 93 89 49 00  	addi	s3, s3, 4
800010f0: 6f 00 00 02  	j	0x80001110 <.LBB1_15+0xfc>
800010f4: 13 0b 00 00  	mv	s6, zero
800010f8: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800010fc: e3 0e 75 f5  	beq	a0, s7, 0x80001058 <.LBB1_15+0x44>
80001100: 93 0b 00 00  	mv	s7, zero
80001104: 6f 00 c0 00  	j	0x80001110 <.LBB1_15+0xfc>
80001108: 93 0b 00 00  	mv	s7, zero
8000110c: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80001110: 93 05 85 f9  	addi	a1, a0, -104
80001114: 13 d6 15 00  	srli	a2, a1, 1
80001118: 93 95 f5 01  	slli	a1, a1, 31
8000111c: b3 e5 c5 00  	or	a1, a1, a2
80001120: 13 06 90 00  	addi	a2, zero, 9
80001124: 63 62 b6 06  	bltu	a2, a1, 0x80001188 <.LBB1_42>
80001128: 93 95 25 00  	slli	a1, a1, 2

8000112c <.LBB1_185>:
8000112c: 17 26 00 00  	auipc	a2, 2
80001130: 13 06 06 3f  	addi	a2, a2, 1008
80001134: b3 85 c5 00  	add	a1, a1, a2
80001138: 83 a6 05 00  	lw	a3, 0(a1)
8000113c: 93 05 10 00  	addi	a1, zero, 1
80001140: 13 06 00 10  	addi	a2, zero, 256
80001144: 67 80 06 00  	jr	a3

80001148 <.LBB1_36>:
;         if (*format == 'h') {
80001148: 03 45 1d 00  	lbu	a0, 1(s10)
8000114c: 93 05 80 06  	addi	a1, zero, 104
80001150: 63 12 b5 12  	bne	a0, a1, 0x80001274 <.LBB1_53+0x48>
80001154: 93 05 20 00  	addi	a1, zero, 2
80001158: 13 06 00 0c  	addi	a2, zero, 192
8000115c: 6f 00 00 02  	j	0x8000117c <.LBB1_41>

80001160 <.LBB1_38>:
80001160: 13 06 00 20  	addi	a2, zero, 512
80001164: 6f 00 80 01  	j	0x8000117c <.LBB1_41>

80001168 <.LBB1_39>:
;         if (*format == 'l') {
80001168: 03 45 1d 00  	lbu	a0, 1(s10)
8000116c: 93 05 c0 06  	addi	a1, zero, 108
80001170: 63 18 b5 10  	bne	a0, a1, 0x80001280 <.LBB1_53+0x54>
80001174: 93 05 20 00  	addi	a1, zero, 2
80001178: 13 06 00 30  	addi	a2, zero, 768

8000117c <.LBB1_41>:
8000117c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001180: 03 45 0d 00  	lbu	a0, 0(s10)
80001184: 33 64 c4 00  	or	s0, s0, a2

80001188 <.LBB1_42>:
;     switch (*format) {
80001188: 93 05 b5 fd  	addi	a1, a0, -37
8000118c: 13 06 30 05  	addi	a2, zero, 83
80001190: 63 64 b6 10  	bltu	a2, a1, 0x80001298 <.LBB1_59>
80001194: 93 95 25 00  	slli	a1, a1, 2

80001198 <.LBB1_186>:
80001198: 17 26 00 00  	auipc	a2, 2
8000119c: 13 06 c6 3a  	addi	a2, a2, 940
800011a0: b3 85 c5 00  	add	a1, a1, a2
800011a4: 03 a6 05 00  	lw	a2, 0(a1)
800011a8: 93 05 80 00  	addi	a1, zero, 8
800011ac: 13 0c 00 01  	addi	s8, zero, 16
800011b0: 67 00 06 00  	jr	a2

800011b4 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800011b4: 13 74 f4 fe  	andi	s0, s0, -17
800011b8: 13 0c a0 00  	addi	s8, zero, 10

800011bc <.LBB1_45>:
;         if (*format == 'X') {
800011bc: 93 05 80 05  	addi	a1, zero, 88
800011c0: 63 14 b5 00  	bne	a0, a1, 0x800011c8 <.LBB1_45+0xc>
800011c4: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800011c8: 93 05 40 06  	addi	a1, zero, 100
800011cc: 63 08 b5 0e  	beq	a0, a1, 0x800012bc <.LBB1_62+0x8>
800011d0: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800011d4: 13 06 90 06  	addi	a2, zero, 105
800011d8: 63 02 c5 0e  	beq	a0, a2, 0x800012bc <.LBB1_62+0x8>
800011dc: 6f 00 80 0d  	j	0x800012b4 <.LBB1_62>

800011e0 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800011e0: 93 05 60 04  	addi	a1, zero, 70
800011e4: 63 14 b5 00  	bne	a0, a1, 0x800011ec <.LBB1_49+0xc>
800011e8: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800011ec: 13 85 79 00  	addi	a0, s3, 7
800011f0: 13 75 85 ff  	andi	a0, a0, -8
800011f4: 07 35 05 00  	fld	fa0, 0(a0)
800011f8: 93 09 85 00  	addi	s3, a0, 8
800011fc: 13 05 09 00  	mv	a0, s2
80001200: 93 05 0a 00  	mv	a1, s4
80001204: 13 86 0c 00  	mv	a2, s9
80001208: 93 86 0a 00  	mv	a3, s5
8000120c: 13 87 0b 00  	mv	a4, s7
80001210: 93 07 0b 00  	mv	a5, s6
80001214: 13 08 04 00  	mv	a6, s0
80001218: 97 10 00 00  	auipc	ra, 1
8000121c: e7 80 80 98  	jalr	-1656(ra)
80001220: 6f 00 00 7c  	j	0x800019e0 <.LBB1_124+0x2fc>

80001224 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001224: 83 25 81 01  	lw	a1, 24(sp)
80001228: 33 64 b4 00  	or	s0, s0, a1

8000122c <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
8000122c: 13 65 25 00  	ori	a0, a0, 2
80001230: 93 05 70 04  	addi	a1, zero, 71
80001234: 63 14 b5 00  	bne	a0, a1, 0x8000123c <.LBB1_53+0x10>
80001238: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
8000123c: 13 85 79 00  	addi	a0, s3, 7
80001240: 13 75 85 ff  	andi	a0, a0, -8
80001244: 07 35 05 00  	fld	fa0, 0(a0)
80001248: 93 09 85 00  	addi	s3, a0, 8
8000124c: 13 05 09 00  	mv	a0, s2
80001250: 93 05 0a 00  	mv	a1, s4
80001254: 13 86 0c 00  	mv	a2, s9
80001258: 93 86 0a 00  	mv	a3, s5
8000125c: 13 87 0b 00  	mv	a4, s7
80001260: 93 07 0b 00  	mv	a5, s6
80001264: 13 08 04 00  	mv	a6, s0
80001268: 97 10 00 00  	auipc	ra, 1
8000126c: e7 80 80 01  	jalr	24(ra)
80001270: 6f 00 00 77  	j	0x800019e0 <.LBB1_124+0x2fc>
80001274: 13 64 04 08  	ori	s0, s0, 128
80001278: 13 0d 1d 00  	addi	s10, s10, 1
8000127c: 6f f0 df f0  	j	0x80001188 <.LBB1_42>
80001280: 13 64 04 10  	ori	s0, s0, 256
80001284: 13 0d 1d 00  	addi	s10, s10, 1
80001288: 6f f0 1f f0  	j	0x80001188 <.LBB1_42>

8000128c <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
8000128c: 13 8c 1c 00  	addi	s8, s9, 1
80001290: 13 05 50 02  	addi	a0, zero, 37
80001294: 6f 00 80 00  	j	0x8000129c <.LBB1_59+0x4>

80001298 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001298: 13 8c 1c 00  	addi	s8, s9, 1
8000129c: 93 05 0a 00  	mv	a1, s4
800012a0: 13 86 0c 00  	mv	a2, s9
800012a4: 93 86 0a 00  	mv	a3, s5
800012a8: e7 00 09 00  	jalr	s2
800012ac: 6f 00 80 73  	j	0x800019e4 <.LBB1_124+0x300>

800012b0 <.LBB1_61>:
800012b0: 93 05 20 00  	addi	a1, zero, 2

800012b4 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800012b4: 13 74 34 ff  	andi	s0, s0, -13
800012b8: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800012bc: 93 75 04 40  	andi	a1, s0, 1024
800012c0: 63 84 05 00  	beqz	a1, 0x800012c8 <.LBB1_62+0x14>
800012c4: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800012c8: 93 05 90 06  	addi	a1, zero, 105
800012cc: 63 06 b5 00  	beq	a0, a1, 0x800012d8 <.LBB1_62+0x24>
800012d0: 93 05 40 06  	addi	a1, zero, 100
800012d4: 63 1c b5 12  	bne	a0, a1, 0x8000140c <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800012d8: 13 75 04 20  	andi	a0, s0, 512
800012dc: 63 16 05 02  	bnez	a0, 0x80001308 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800012e0: 13 75 04 10  	andi	a0, s0, 256
800012e4: 63 1c 05 14  	bnez	a0, 0x8000143c <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800012e8: 13 75 04 04  	andi	a0, s0, 64
800012ec: 63 18 05 4e  	bnez	a0, 0x800017dc <.LBB1_124+0xf8>
800012f0: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800012f4: 93 75 04 08  	andi	a1, s0, 128
800012f8: 63 84 05 4e  	beqz	a1, 0x800017e0 <.LBB1_124+0xfc>
800012fc: 13 15 08 01  	slli	a0, a6, 16
80001300: 13 58 05 41  	srai	a6, a0, 16
80001304: 6f 00 c0 4d  	j	0x800017e0 <.LBB1_124+0xfc>
80001308: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
8000130c: 13 85 79 00  	addi	a0, s3, 7
80001310: 13 75 85 ff  	andi	a0, a0, -8
80001314: 83 29 05 00  	lw	s3, 0(a0)
80001318: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
8000131c: 13 65 45 00  	ori	a0, a0, 4
80001320: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001324: 23 24 a1 00  	sw	a0, 8(sp)
80001328: 33 e5 a9 00  	or	a0, s3, a0
8000132c: 63 14 05 00  	bnez	a0, 0x80001334 <.LBB1_62+0x80>
80001330: 13 74 f4 fe  	andi	s0, s0, -17
80001334: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001338: 93 75 04 40  	andi	a1, s0, 1024
8000133c: 93 d5 a5 00  	srli	a1, a1, 10
80001340: 33 75 b5 00  	and	a0, a0, a1
80001344: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001348: 63 14 05 0a  	bnez	a0, 0x800013f0 <.LBB1_62+0x13c>
8000134c: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001350: 63 da 04 00  	bgez	s1, 0x80001364 <.LBB1_62+0xb0>
80001354: 33 35 30 01  	snez	a0, s3
80001358: b3 09 30 41  	neg	s3, s3
8000135c: 33 85 a4 00  	add	a0, s1, a0
80001360: b3 04 a0 40  	neg	s1, a0
80001364: 13 09 00 00  	mv	s2, zero
80001368: 13 75 04 02  	andi	a0, s0, 32
8000136c: 13 45 15 06  	xori	a0, a0, 97
80001370: 13 05 65 0f  	addi	a0, a0, 246
80001374: 23 2a a1 00  	sw	a0, 20(sp)
80001378: 6f 00 40 02  	j	0x8000139c <.LBB1_62+0xe8>
8000137c: 13 06 10 00  	addi	a2, zero, 1
80001380: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001384: 93 36 f9 01  	sltiu	a3, s2, 31
80001388: 33 f6 c6 00  	and	a2, a3, a2
8000138c: 13 89 07 00  	mv	s2, a5
80001390: 93 09 05 00  	mv	s3, a0
80001394: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001398: 63 0c 06 04  	beqz	a2, 0x800013f0 <.LBB1_62+0x13c>
;       value /= base;
8000139c: 13 85 09 00  	mv	a0, s3
800013a0: 93 85 04 00  	mv	a1, s1
800013a4: 13 06 0c 00  	mv	a2, s8
800013a8: 93 06 00 00  	mv	a3, zero
800013ac: 97 f0 ff ff  	auipc	ra, 1048575
800013b0: e7 80 40 c5  	jalr	-940(ra)
800013b4: 33 06 85 03  	mul	a2, a0, s8
800013b8: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013bc: 13 77 e6 0f  	andi	a4, a2, 254
800013c0: 93 06 00 03  	addi	a3, zero, 48
800013c4: 93 07 a0 00  	addi	a5, zero, 10
800013c8: 63 64 f7 00  	bltu	a4, a5, 0x800013d0 <.LBB1_62+0x11c>
800013cc: 83 26 41 01  	lw	a3, 20(sp)
800013d0: 33 86 c6 00  	add	a2, a3, a2
800013d4: 93 06 c1 01  	addi	a3, sp, 28
800013d8: b3 86 26 01  	add	a3, a3, s2
800013dc: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800013e0: e3 9e 04 f8  	bnez	s1, 0x8000137c <.LBB1_62+0xc8>
800013e4: 33 b6 89 01  	sltu	a2, s3, s8
800013e8: 13 46 16 00  	xori	a2, a2, 1
800013ec: 6f f0 5f f9  	j	0x80001380 <.LBB1_62+0xcc>
800013f0: 03 25 41 00  	lw	a0, 4(sp)
800013f4: 93 09 85 00  	addi	s3, a0, 8
800013f8: 03 25 81 00  	lw	a0, 8(sp)
800013fc: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001400: 13 07 c1 01  	addi	a4, sp, 28
80001404: 03 29 c1 00  	lw	s2, 12(sp)
80001408: 6f 00 80 47  	j	0x80001880 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
8000140c: 13 75 04 20  	andi	a0, s0, 512
80001410: 63 12 05 0c  	bnez	a0, 0x800014d4 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001414: 13 75 04 10  	andi	a0, s0, 256
80001418: 63 1e 05 46  	bnez	a0, 0x80001894 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
8000141c: 13 75 04 04  	andi	a0, s0, 64
80001420: 63 10 05 50  	bnez	a0, 0x80001920 <.LBB1_124+0x23c>
80001424: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001428: 93 75 04 08  	andi	a1, s0, 128
8000142c: 63 8c 05 4e  	beqz	a1, 0x80001924 <.LBB1_124+0x240>
80001430: 83 25 01 01  	lw	a1, 16(sp)
80001434: 33 75 b5 00  	and	a0, a0, a1
80001438: 6f 00 c0 4e  	j	0x80001924 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
8000143c: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001440: 63 14 08 00  	bnez	a6, 0x80001448 <.LBB1_62+0x194>
80001444: 13 74 f4 fe  	andi	s0, s0, -17
80001448: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
8000144c: 13 76 04 40  	andi	a2, s0, 1024
80001450: 13 56 a6 00  	srli	a2, a2, 10
80001454: b3 f5 c5 00  	and	a1, a1, a2
80001458: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000145c: 63 9c 05 40  	bnez	a1, 0x80001874 <.LBB1_124+0x190>
80001460: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001464: 13 56 f8 41  	srai	a2, a6, 31
80001468: b3 06 c8 00  	add	a3, a6, a2
8000146c: b3 c6 c6 00  	xor	a3, a3, a2
80001470: 13 76 04 02  	andi	a2, s0, 32
80001474: 13 46 16 06  	xori	a2, a2, 97
80001478: 93 08 66 0f  	addi	a7, a2, 246
8000147c: 6f 00 40 03  	j	0x800014b0 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001480: 33 05 f6 00  	add	a0, a2, a5
80001484: 93 87 15 00  	addi	a5, a1, 1
80001488: 13 06 c1 01  	addi	a2, sp, 28
8000148c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001490: b3 b6 86 01  	sltu	a3, a3, s8
80001494: 93 c6 16 00  	xori	a3, a3, 1
80001498: 93 b5 f5 01  	sltiu	a1, a1, 31
8000149c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800014a0: 23 00 a6 00  	sb	a0, 0(a2)
800014a4: 93 85 07 00  	mv	a1, a5
800014a8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800014ac: 63 84 04 3c  	beqz	s1, 0x80001874 <.LBB1_124+0x190>
;       value /= base;
800014b0: 33 d7 86 03  	divu	a4, a3, s8
800014b4: 33 06 87 03  	mul	a2, a4, s8
800014b8: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800014bc: 13 f5 e7 0f  	andi	a0, a5, 254
800014c0: 13 06 00 03  	addi	a2, zero, 48
800014c4: 93 04 a0 00  	addi	s1, zero, 10
800014c8: e3 6c 95 fa  	bltu	a0, s1, 0x80001480 <.LBB1_62+0x1cc>
800014cc: 13 86 08 00  	mv	a2, a7
800014d0: 6f f0 1f fb  	j	0x80001480 <.LBB1_62+0x1cc>
800014d4: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800014d8: 13 85 79 00  	addi	a0, s3, 7
800014dc: 93 75 85 ff  	andi	a1, a0, -8
800014e0: 03 a9 05 00  	lw	s2, 0(a1)
800014e4: 13 e5 45 00  	ori	a0, a1, 4
800014e8: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800014ec: 33 65 39 01  	or	a0, s2, s3
800014f0: 23 24 b1 00  	sw	a1, 8(sp)
800014f4: 63 14 05 00  	bnez	a0, 0x800014fc <.LBB1_62+0x248>
800014f8: 13 74 f4 fe  	andi	s0, s0, -17
800014fc: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001500: 93 75 04 40  	andi	a1, s0, 1024
80001504: 93 d5 a5 00  	srli	a1, a1, 10
80001508: 33 75 b5 00  	and	a0, a0, a1
8000150c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001510: 63 18 05 08  	bnez	a0, 0x800015a0 <.LBB1_62+0x2ec>
80001514: 93 04 00 00  	mv	s1, zero
80001518: 13 75 04 02  	andi	a0, s0, 32
8000151c: 13 45 15 06  	xori	a0, a0, 97
80001520: 13 05 65 0f  	addi	a0, a0, 246
80001524: 23 2a a1 00  	sw	a0, 20(sp)
80001528: 6f 00 40 02  	j	0x8000154c <.LBB1_62+0x298>
8000152c: 13 06 10 00  	addi	a2, zero, 1
80001530: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001534: 93 b6 f4 01  	sltiu	a3, s1, 31
80001538: 33 f6 c6 00  	and	a2, a3, a2
8000153c: 93 84 07 00  	mv	s1, a5
80001540: 13 09 05 00  	mv	s2, a0
80001544: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001548: 63 0c 06 04  	beqz	a2, 0x800015a0 <.LBB1_62+0x2ec>
;       value /= base;
8000154c: 13 05 09 00  	mv	a0, s2
80001550: 93 85 09 00  	mv	a1, s3
80001554: 13 06 0c 00  	mv	a2, s8
80001558: 93 06 00 00  	mv	a3, zero
8000155c: 97 f0 ff ff  	auipc	ra, 1048575
80001560: e7 80 40 aa  	jalr	-1372(ra)
80001564: 33 06 85 03  	mul	a2, a0, s8
80001568: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000156c: 13 77 e6 0f  	andi	a4, a2, 254
80001570: 93 06 00 03  	addi	a3, zero, 48
80001574: 93 07 a0 00  	addi	a5, zero, 10
80001578: 63 64 f7 00  	bltu	a4, a5, 0x80001580 <.LBB1_62+0x2cc>
8000157c: 83 26 41 01  	lw	a3, 20(sp)
80001580: 33 86 c6 00  	add	a2, a3, a2
80001584: 93 06 c1 01  	addi	a3, sp, 28
80001588: b3 86 96 00  	add	a3, a3, s1
8000158c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001590: e3 9e 09 f8  	bnez	s3, 0x8000152c <.LBB1_62+0x278>
80001594: 33 36 89 01  	sltu	a2, s2, s8
80001598: 13 46 16 00  	xori	a2, a2, 1
8000159c: 6f f0 5f f9  	j	0x80001530 <.LBB1_62+0x27c>
800015a0: 03 25 81 00  	lw	a0, 8(sp)
800015a4: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800015a8: 13 07 c1 01  	addi	a4, sp, 28
800015ac: 03 29 c1 00  	lw	s2, 12(sp)
800015b0: 6f 00 40 40  	j	0x800019b4 <.LBB1_124+0x2d0>

800015b4 <.LBB1_108>:
800015b4: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800015b8: 13 79 24 00  	andi	s2, s0, 2
800015bc: 93 04 10 00  	addi	s1, zero, 1
800015c0: 63 1e 09 02  	bnez	s2, 0x800015fc <.LBB1_108+0x48>
800015c4: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800015c8: 63 6a 9b 02  	bltu	s6, s1, 0x800015fc <.LBB1_108+0x48>
800015cc: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800015d0: 13 0c fb ff  	addi	s8, s6, -1
800015d4: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800015d8: 33 86 8c 00  	add	a2, s9, s0
800015dc: 13 05 00 02  	addi	a0, zero, 32
800015e0: 93 05 0a 00  	mv	a1, s4
800015e4: 93 86 0a 00  	mv	a3, s5
800015e8: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800015ec: 13 04 14 00  	addi	s0, s0, 1
800015f0: e3 14 8c fe  	bne	s8, s0, 0x800015d8 <.LBB1_108+0x24>
800015f4: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800015f8: b3 8c 8c 00  	add	s9, s9, s0
800015fc: 03 c5 09 00  	lbu	a0, 0(s3)
80001600: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001604: 93 89 49 00  	addi	s3, s3, 4
80001608: 13 8c 1c 00  	addi	s8, s9, 1
8000160c: 93 05 0a 00  	mv	a1, s4
80001610: 13 86 0c 00  	mv	a2, s9
80001614: 93 86 0a 00  	mv	a3, s5
80001618: 13 89 0b 00  	mv	s2, s7
8000161c: e7 80 0b 00  	jalr	s7
80001620: 33 b5 64 01  	sltu	a0, s1, s6
80001624: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001628: 33 65 a4 00  	or	a0, s0, a0
8000162c: 63 1c 05 3a  	bnez	a0, 0x800019e4 <.LBB1_124+0x300>
;           while (l++ < width) {
80001630: 33 04 9b 40  	sub	s0, s6, s1
80001634: 93 0b e0 02  	addi	s7, zero, 46
80001638: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000163c: 13 0c 1c 00  	addi	s8, s8, 1
80001640: 13 05 00 02  	addi	a0, zero, 32
80001644: 93 05 0a 00  	mv	a1, s4
80001648: 93 86 0a 00  	mv	a3, s5
8000164c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001650: 13 04 f4 ff  	addi	s0, s0, -1
80001654: e3 12 04 fe  	bnez	s0, 0x80001638 <.LBB1_108+0x84>
80001658: 13 0b 50 02  	addi	s6, zero, 37
8000165c: 13 04 1d 00  	addi	s0, s10, 1
80001660: 6f f0 df 91  	j	0x80000f7c <.LBB1_183+0x30>

80001664 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001664: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001668: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
8000166c: 63 14 05 00  	bnez	a0, 0x80001674 <.LBB1_117+0x10>
80001670: 93 fe fe fe  	andi	t4, t4, -17
80001674: 93 04 a0 00  	addi	s1, zero, 10
80001678: 13 04 f0 00  	addi	s0, zero, 15
8000167c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001680: 13 f6 0e 40  	andi	a2, t4, 1024
80001684: 13 56 a6 00  	srli	a2, a2, 10
80001688: b3 f5 c5 00  	and	a1, a1, a2
8000168c: 93 07 00 00  	mv	a5, zero
80001690: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001694: 63 98 05 10  	bnez	a1, 0x800017a4 <.LBB1_124+0xc0>
80001698: 93 05 00 00  	mv	a1, zero
8000169c: 6f 00 40 03  	j	0x800016d0 <.LBB1_117+0x6c>
800016a0: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016a4: 33 06 d6 00  	add	a2, a2, a3
800016a8: 93 87 15 00  	addi	a5, a1, 1
800016ac: 93 06 c1 01  	addi	a3, sp, 28
800016b0: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016b4: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800016b8: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016bc: 93 b5 f5 01  	sltiu	a1, a1, 31
800016c0: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016c4: 23 80 c6 00  	sb	a2, 0(a3)
800016c8: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016cc: 63 0c 07 0c  	beqz	a4, 0x800017a4 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016d0: 93 76 e5 00  	andi	a3, a0, 14
800016d4: 13 06 00 03  	addi	a2, zero, 48
800016d8: e3 e4 96 fc  	bltu	a3, s1, 0x800016a0 <.LBB1_117+0x3c>
800016dc: 13 06 70 03  	addi	a2, zero, 55
800016e0: 6f f0 1f fc  	j	0x800016a0 <.LBB1_117+0x3c>

800016e4 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800016e4: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800016e8: 03 c5 07 00  	lbu	a0, 0(a5)
800016ec: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800016f0: 63 0c 05 02  	beqz	a0, 0x80001728 <.LBB1_124+0x44>
800016f4: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800016f8: 63 84 0b 00  	beqz	s7, 0x80001700 <.LBB1_124+0x1c>
800016fc: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80001700: 93 85 f5 ff  	addi	a1, a1, -1
80001704: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001708: 03 c7 16 00  	lbu	a4, 1(a3)
8000170c: 13 86 16 00  	addi	a2, a3, 1
80001710: b3 36 e0 00  	snez	a3, a4
80001714: 33 37 b0 00  	snez	a4, a1
80001718: 33 77 d7 00  	and	a4, a4, a3
8000171c: 93 85 f5 ff  	addi	a1, a1, -1
80001720: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001724: e3 12 07 fe  	bnez	a4, 0x80001708 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001728: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
8000172c: 93 75 04 40  	andi	a1, s0, 1024
80001730: 93 b4 15 00  	seqz	s1, a1
80001734: 23 2a c1 00  	sw	a2, 20(sp)
80001738: b3 35 76 01  	sltu	a1, a2, s7
8000173c: b3 e5 b4 00  	or	a1, s1, a1
80001740: 63 94 05 00  	bnez	a1, 0x80001748 <.LBB1_124+0x64>
80001744: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001748: 93 75 24 00  	andi	a1, s0, 2
8000174c: 23 26 b1 00  	sw	a1, 12(sp)
80001750: 63 96 05 2a  	bnez	a1, 0x800019fc <.LBB1_124+0x318>
80001754: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001758: 63 fe 65 29  	bgeu	a1, s6, 0x800019f4 <.LBB1_124+0x310>
8000175c: 23 24 f1 00  	sw	a5, 8(sp)
80001760: 13 04 00 00  	mv	s0, zero
80001764: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001768: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
8000176c: 33 86 8c 00  	add	a2, s9, s0
80001770: 13 05 00 02  	addi	a0, zero, 32
80001774: 93 05 0a 00  	mv	a1, s4
80001778: 93 86 0a 00  	mv	a3, s5
8000177c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001780: 13 04 14 00  	addi	s0, s0, 1
80001784: e3 14 89 fe  	bne	s2, s0, 0x8000176c <.LBB1_124+0x88>
80001788: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000178c: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80001790: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001794: 23 2a b1 00  	sw	a1, 20(sp)
80001798: b3 8c 8c 00  	add	s9, s9, s0
8000179c: 13 09 0c 00  	mv	s2, s8
800017a0: 6f 00 c0 25  	j	0x800019fc <.LBB1_124+0x318>
800017a4: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800017a8: 13 07 c1 01  	addi	a4, sp, 28
800017ac: 93 08 00 01  	addi	a7, zero, 16
800017b0: 13 0e 80 00  	addi	t3, zero, 8
800017b4: 13 05 09 00  	mv	a0, s2
800017b8: 93 05 0a 00  	mv	a1, s4
800017bc: 13 86 0c 00  	mv	a2, s9
800017c0: 93 86 0a 00  	mv	a3, s5
800017c4: 13 08 00 00  	mv	a6, zero
800017c8: 93 83 0b 00  	mv	t2, s7
800017cc: 97 10 00 00  	auipc	ra, 1
800017d0: e7 80 00 fa  	jalr	-96(ra)
800017d4: 13 0c 05 00  	mv	s8, a0
800017d8: 6f 00 00 21  	j	0x800019e8 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800017dc: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800017e0: 63 14 08 00  	bnez	a6, 0x800017e8 <.LBB1_124+0x104>
800017e4: 13 74 f4 fe  	andi	s0, s0, -17
800017e8: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800017ec: 13 76 04 40  	andi	a2, s0, 1024
800017f0: 13 56 a6 00  	srli	a2, a2, 10
800017f4: b3 f5 c5 00  	and	a1, a1, a2
800017f8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800017fc: 63 9c 05 06  	bnez	a1, 0x80001874 <.LBB1_124+0x190>
80001800: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001804: 13 56 f8 41  	srai	a2, a6, 31
80001808: b3 06 c8 00  	add	a3, a6, a2
8000180c: b3 c6 c6 00  	xor	a3, a3, a2
80001810: 13 76 04 02  	andi	a2, s0, 32
80001814: 13 46 16 06  	xori	a2, a2, 97
80001818: 93 08 66 0f  	addi	a7, a2, 246
8000181c: 6f 00 40 03  	j	0x80001850 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001820: 33 05 f6 00  	add	a0, a2, a5
80001824: 93 87 15 00  	addi	a5, a1, 1
80001828: 13 06 c1 01  	addi	a2, sp, 28
8000182c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001830: b3 b6 86 01  	sltu	a3, a3, s8
80001834: 93 c6 16 00  	xori	a3, a3, 1
80001838: 93 b5 f5 01  	sltiu	a1, a1, 31
8000183c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001840: 23 00 a6 00  	sb	a0, 0(a2)
80001844: 93 85 07 00  	mv	a1, a5
80001848: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000184c: 63 84 04 02  	beqz	s1, 0x80001874 <.LBB1_124+0x190>
;       value /= base;
80001850: 33 d7 86 03  	divu	a4, a3, s8
80001854: 33 06 87 03  	mul	a2, a4, s8
80001858: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000185c: 13 f5 e7 0f  	andi	a0, a5, 254
80001860: 13 06 00 03  	addi	a2, zero, 48
80001864: 93 04 a0 00  	addi	s1, zero, 10
80001868: e3 6c 95 fa  	bltu	a0, s1, 0x80001820 <.LBB1_124+0x13c>
8000186c: 13 86 08 00  	mv	a2, a7
80001870: 6f f0 1f fb  	j	0x80001820 <.LBB1_124+0x13c>
80001874: 93 89 49 00  	addi	s3, s3, 4
80001878: 13 58 f8 01  	srli	a6, a6, 31
8000187c: 13 07 c1 01  	addi	a4, sp, 28
80001880: 13 05 09 00  	mv	a0, s2
80001884: 93 05 0a 00  	mv	a1, s4
80001888: 13 86 0c 00  	mv	a2, s9
8000188c: 93 86 0a 00  	mv	a3, s5
80001890: 6f 00 80 13  	j	0x800019c8 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001894: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001898: 63 14 05 00  	bnez	a0, 0x800018a0 <.LBB1_124+0x1bc>
8000189c: 13 74 f4 fe  	andi	s0, s0, -17
800018a0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800018a4: 13 76 04 40  	andi	a2, s0, 1024
800018a8: 13 56 a6 00  	srli	a2, a2, 10
800018ac: b3 f5 c5 00  	and	a1, a1, a2
800018b0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800018b4: 63 9c 05 0e  	bnez	a1, 0x800019ac <.LBB1_124+0x2c8>
800018b8: 13 06 00 00  	mv	a2, zero
800018bc: 93 75 04 02  	andi	a1, s0, 32
800018c0: 93 c5 15 06  	xori	a1, a1, 97
800018c4: 13 88 65 0f  	addi	a6, a1, 246
800018c8: 6f 00 40 03  	j	0x800018fc <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018cc: 33 87 e7 00  	add	a4, a5, a4
800018d0: 93 07 16 00  	addi	a5, a2, 1
800018d4: 93 05 c1 01  	addi	a1, sp, 28
800018d8: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018dc: 33 35 85 01  	sltu	a0, a0, s8
800018e0: 13 45 15 00  	xori	a0, a0, 1
800018e4: 13 36 f6 01  	sltiu	a2, a2, 31
800018e8: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018ec: 23 80 e4 00  	sb	a4, 0(s1)
800018f0: 13 86 07 00  	mv	a2, a5
800018f4: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018f8: 63 8a 05 0a  	beqz	a1, 0x800019ac <.LBB1_124+0x2c8>
;       value /= base;
800018fc: b3 56 85 03  	divu	a3, a0, s8
80001900: 33 87 86 03  	mul	a4, a3, s8
80001904: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001908: 93 74 e7 0f  	andi	s1, a4, 254
8000190c: 93 07 00 03  	addi	a5, zero, 48
80001910: 93 05 a0 00  	addi	a1, zero, 10
80001914: e3 ec b4 fa  	bltu	s1, a1, 0x800018cc <.LBB1_124+0x1e8>
80001918: 93 07 08 00  	mv	a5, a6
8000191c: 6f f0 1f fb  	j	0x800018cc <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001920: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001924: 63 14 05 00  	bnez	a0, 0x8000192c <.LBB1_124+0x248>
80001928: 13 74 f4 fe  	andi	s0, s0, -17
8000192c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001930: 13 76 04 40  	andi	a2, s0, 1024
80001934: 13 56 a6 00  	srli	a2, a2, 10
80001938: b3 f5 c5 00  	and	a1, a1, a2
8000193c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001940: 63 96 05 06  	bnez	a1, 0x800019ac <.LBB1_124+0x2c8>
80001944: 13 06 00 00  	mv	a2, zero
80001948: 93 75 04 02  	andi	a1, s0, 32
8000194c: 93 c5 15 06  	xori	a1, a1, 97
80001950: 13 88 65 0f  	addi	a6, a1, 246
80001954: 6f 00 40 03  	j	0x80001988 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001958: 33 87 e7 00  	add	a4, a5, a4
8000195c: 93 07 16 00  	addi	a5, a2, 1
80001960: 93 05 c1 01  	addi	a1, sp, 28
80001964: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001968: 33 35 85 01  	sltu	a0, a0, s8
8000196c: 13 45 15 00  	xori	a0, a0, 1
80001970: 13 36 f6 01  	sltiu	a2, a2, 31
80001974: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001978: 23 80 e4 00  	sb	a4, 0(s1)
8000197c: 13 86 07 00  	mv	a2, a5
80001980: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001984: 63 84 05 02  	beqz	a1, 0x800019ac <.LBB1_124+0x2c8>
;       value /= base;
80001988: b3 56 85 03  	divu	a3, a0, s8
8000198c: 33 87 86 03  	mul	a4, a3, s8
80001990: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001994: 93 74 e7 0f  	andi	s1, a4, 254
80001998: 93 07 00 03  	addi	a5, zero, 48
8000199c: 93 05 a0 00  	addi	a1, zero, 10
800019a0: e3 ec b4 fa  	bltu	s1, a1, 0x80001958 <.LBB1_124+0x274>
800019a4: 93 07 08 00  	mv	a5, a6
800019a8: 6f f0 1f fb  	j	0x80001958 <.LBB1_124+0x274>
800019ac: 93 89 49 00  	addi	s3, s3, 4
800019b0: 13 07 c1 01  	addi	a4, sp, 28
800019b4: 13 05 09 00  	mv	a0, s2
800019b8: 93 05 0a 00  	mv	a1, s4
800019bc: 13 86 0c 00  	mv	a2, s9
800019c0: 93 86 0a 00  	mv	a3, s5
800019c4: 13 08 00 00  	mv	a6, zero
800019c8: 93 08 0c 00  	mv	a7, s8
800019cc: 93 83 0b 00  	mv	t2, s7
800019d0: 13 0e 0b 00  	mv	t3, s6
800019d4: 93 0e 04 00  	mv	t4, s0
800019d8: 97 10 00 00  	auipc	ra, 1
800019dc: e7 80 40 d9  	jalr	-620(ra)
800019e0: 13 0c 05 00  	mv	s8, a0
800019e4: 13 0b 50 02  	addi	s6, zero, 37
800019e8: 93 0b e0 02  	addi	s7, zero, 46
800019ec: 13 04 1d 00  	addi	s0, s10, 1
800019f0: 6f f0 cf d8  	j	0x80000f7c <.LBB1_183+0x30>
800019f4: 93 85 15 00  	addi	a1, a1, 1
800019f8: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800019fc: 63 00 05 04  	beqz	a0, 0x80001a3c <.LBB1_124+0x358>
80001a00: 13 84 17 00  	addi	s0, a5, 1
80001a04: 6f 00 00 03  	j	0x80001a34 <.LBB1_124+0x350>
80001a08: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001a0c: 13 8c 1c 00  	addi	s8, s9, 1
80001a10: 13 75 f5 0f  	andi	a0, a0, 255
80001a14: 93 05 0a 00  	mv	a1, s4
80001a18: 13 86 0c 00  	mv	a2, s9
80001a1c: 93 86 0a 00  	mv	a3, s5
80001a20: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001a24: 03 45 04 00  	lbu	a0, 0(s0)
80001a28: 13 04 14 00  	addi	s0, s0, 1
80001a2c: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001a30: 63 08 05 00  	beqz	a0, 0x80001a40 <.LBB1_124+0x35c>
80001a34: e3 9c 04 fc  	bnez	s1, 0x80001a0c <.LBB1_124+0x328>
80001a38: e3 98 0b fc  	bnez	s7, 0x80001a08 <.LBB1_124+0x324>
80001a3c: 13 8c 0c 00  	mv	s8, s9
80001a40: 03 25 c1 00  	lw	a0, 12(sp)
80001a44: 13 35 15 00  	seqz	a0, a0
80001a48: 03 26 41 01  	lw	a2, 20(sp)
80001a4c: b3 35 66 01  	sltu	a1, a2, s6
80001a50: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001a54: 33 65 b5 00  	or	a0, a0, a1
80001a58: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001a5c: e3 14 05 f8  	bnez	a0, 0x800019e4 <.LBB1_124+0x300>
;           while (l++ < width) {
80001a60: 33 04 cb 40  	sub	s0, s6, a2
80001a64: 93 0b e0 02  	addi	s7, zero, 46
80001a68: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001a6c: 13 0c 1c 00  	addi	s8, s8, 1
80001a70: 13 05 00 02  	addi	a0, zero, 32
80001a74: 93 05 0a 00  	mv	a1, s4
80001a78: 93 86 0a 00  	mv	a3, s5
80001a7c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001a80: 13 04 f4 ff  	addi	s0, s0, -1
80001a84: e3 12 04 fe  	bnez	s0, 0x80001a68 <.LBB1_124+0x384>
80001a88: 13 0b 50 02  	addi	s6, zero, 37
80001a8c: 13 04 1d 00  	addi	s0, s10, 1
80001a90: 6f f0 cf ce  	j	0x80000f7c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001a94: 13 86 0c 00  	mv	a2, s9
80001a98: 63 e4 5c 01  	bltu	s9, s5, 0x80001aa0 <.LBB1_124+0x3bc>
80001a9c: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001aa0: 13 05 00 00  	mv	a0, zero
80001aa4: 93 05 0a 00  	mv	a1, s4
80001aa8: 93 86 0a 00  	mv	a3, s5
80001aac: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001ab0: 13 85 0c 00  	mv	a0, s9
80001ab4: 83 2d c1 03  	lw	s11, 60(sp)
80001ab8: 03 2d 01 04  	lw	s10, 64(sp)
80001abc: 83 2c 41 04  	lw	s9, 68(sp)
80001ac0: 03 2c 81 04  	lw	s8, 72(sp)
80001ac4: 83 2b c1 04  	lw	s7, 76(sp)
80001ac8: 03 2b 01 05  	lw	s6, 80(sp)
80001acc: 83 2a 41 05  	lw	s5, 84(sp)
80001ad0: 03 2a 81 05  	lw	s4, 88(sp)
80001ad4: 83 29 c1 05  	lw	s3, 92(sp)
80001ad8: 03 29 01 06  	lw	s2, 96(sp)
80001adc: 83 24 41 06  	lw	s1, 100(sp)
80001ae0: 03 24 81 06  	lw	s0, 104(sp)
80001ae4: 83 20 c1 06  	lw	ra, 108(sp)
80001ae8: 13 01 01 07  	addi	sp, sp, 112
80001aec: 67 80 00 00  	ret

80001af0 <_out_char.llvm.11632292163828655644>:
;   if (character) {
80001af0: 63 04 05 0a  	beqz	a0, 0x80001b98 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001af4: f3 25 40 f1  	csrr	a1, mhartid
80001af8: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001afc: 33 86 c5 02  	mul	a2, a1, a2

80001b00 <.LBB2_6>:
80001b00: 97 26 00 00  	auipc	a3, 2
80001b04: 93 86 46 db  	addi	a3, a3, -588
80001b08: b3 05 d6 00  	add	a1, a2, a3
80001b0c: 03 a7 05 00  	lw	a4, 0(a1)
80001b10: 93 07 17 00  	addi	a5, a4, 1
80001b14: 23 a0 f5 00  	sw	a5, 0(a1)
80001b18: 33 87 e5 00  	add	a4, a1, a4
80001b1c: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001b20: 03 a7 05 00  	lw	a4, 0(a1)
80001b24: 13 07 47 c0  	addi	a4, a4, -1020
80001b28: 33 37 e0 00  	snez	a4, a4
80001b2c: 13 05 65 ff  	addi	a0, a0, -10
80001b30: 33 35 a0 00  	snez	a0, a0
80001b34: 33 75 e5 00  	and	a0, a0, a4
80001b38: 63 10 05 06  	bnez	a0, 0x80001b98 <.LBB2_8+0x18>
80001b3c: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001b40: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001b44: 23 26 05 00  	sw	zero, 12(a0)
80001b48: 93 06 00 04  	addi	a3, zero, 64
80001b4c: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001b50: 23 2a 05 00  	sw	zero, 20(a0)
80001b54: 93 06 10 00  	addi	a3, zero, 1
80001b58: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001b5c: 23 2e 05 00  	sw	zero, 28(a0)
80001b60: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001b64: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001b68: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001b6c: 23 22 05 02  	sw	zero, 36(a0)
80001b70: 23 20 c5 02  	sw	a2, 32(a0)

80001b74 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001b74: 17 25 00 00  	auipc	a0, 2
80001b78: 13 05 c5 b8  	addi	a0, a0, -1140
80001b7c: 23 20 d5 00  	sw	a3, 0(a0)

80001b80 <.LBB2_8>:
80001b80: 17 25 00 00  	auipc	a0, 2
80001b84: 13 05 05 bc  	addi	a0, a0, -1088
;         while (fromhost == 0)
80001b88: 03 26 05 00  	lw	a2, 0(a0)
80001b8c: e3 0e 06 fe  	beqz	a2, 0x80001b88 <.LBB2_8+0x8>
;         fromhost = 0;
80001b90: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001b94: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001b98: 67 80 00 00  	ret

80001b9c <_out_null>:
; }
80001b9c: 67 80 00 00  	ret

80001ba0 <_ftoa>:
; {
80001ba0: 13 01 01 f9  	addi	sp, sp, -112
80001ba4: 23 26 11 06  	sw	ra, 108(sp)
80001ba8: 23 24 81 06  	sw	s0, 104(sp)
80001bac: 23 22 91 06  	sw	s1, 100(sp)
80001bb0: 23 20 21 07  	sw	s2, 96(sp)
80001bb4: 23 2e 31 05  	sw	s3, 92(sp)
80001bb8: 23 2c 41 05  	sw	s4, 88(sp)
80001bbc: 23 2a 51 05  	sw	s5, 84(sp)
80001bc0: 23 28 61 05  	sw	s6, 80(sp)
80001bc4: 23 26 71 05  	sw	s7, 76(sp)
80001bc8: 23 24 81 05  	sw	s8, 72(sp)
80001bcc: 23 22 91 05  	sw	s9, 68(sp)
80001bd0: 23 20 a1 05  	sw	s10, 64(sp)
80001bd4: 27 3c 81 02  	fsd	fs0, 56(sp)
80001bd8: 27 38 91 02  	fsd	fs1, 48(sp)
80001bdc: 27 34 21 03  	fsd	fs2, 40(sp)

80001be0 <.LBB4_83>:
80001be0: 97 24 00 00  	auipc	s1, 2
80001be4: 93 84 84 c2  	addi	s1, s1, -984
80001be8: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80001bec: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001bf0: 93 0a 08 00  	mv	s5, a6
80001bf4: 13 89 07 00  	mv	s2, a5
80001bf8: 93 89 06 00  	mv	s3, a3
80001bfc: 13 0a 06 00  	mv	s4, a2
80001c00: 13 8b 05 00  	mv	s6, a1
80001c04: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001c08: 63 98 04 0e  	bnez	s1, 0x80001cf8 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001c0c: 13 f5 2a 00  	andi	a0, s5, 2
80001c10: 93 f5 3a 00  	andi	a1, s5, 3
80001c14: b3 35 b0 00  	snez	a1, a1
80001c18: 13 36 59 00  	sltiu	a2, s2, 5
80001c1c: b3 65 b6 00  	or	a1, a2, a1
80001c20: 93 5c 15 00  	srli	s9, a0, 1
80001c24: 13 04 0a 00  	mv	s0, s4
80001c28: 63 96 05 02  	bnez	a1, 0x80001c54 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80001c2c: 93 04 c9 ff  	addi	s1, s2, -4
80001c30: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001c34: 13 04 16 00  	addi	s0, a2, 1
80001c38: 13 05 00 02  	addi	a0, zero, 32
80001c3c: 93 05 0b 00  	mv	a1, s6
80001c40: 93 86 09 00  	mv	a3, s3
80001c44: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001c48: 93 84 f4 ff  	addi	s1, s1, -1
80001c4c: 13 06 04 00  	mv	a2, s0
80001c50: e3 92 04 fe  	bnez	s1, 0x80001c34 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001c54: 93 04 14 00  	addi	s1, s0, 1
80001c58: 13 05 d0 02  	addi	a0, zero, 45
80001c5c: 93 05 0b 00  	mv	a1, s6
80001c60: 13 06 04 00  	mv	a2, s0
80001c64: 93 86 09 00  	mv	a3, s3
80001c68: e7 80 0b 00  	jalr	s7
80001c6c: 93 0a 24 00  	addi	s5, s0, 2
80001c70: 13 05 90 06  	addi	a0, zero, 105
80001c74: 93 05 0b 00  	mv	a1, s6
80001c78: 13 86 04 00  	mv	a2, s1
80001c7c: 93 86 09 00  	mv	a3, s3
80001c80: e7 80 0b 00  	jalr	s7
80001c84: 13 0c 34 00  	addi	s8, s0, 3
80001c88: 13 05 e0 06  	addi	a0, zero, 110
80001c8c: 93 05 0b 00  	mv	a1, s6
80001c90: 13 86 0a 00  	mv	a2, s5
80001c94: 93 86 09 00  	mv	a3, s3
80001c98: e7 80 0b 00  	jalr	s7
80001c9c: 93 04 44 00  	addi	s1, s0, 4
80001ca0: 13 05 60 06  	addi	a0, zero, 102
80001ca4: 93 05 0b 00  	mv	a1, s6
80001ca8: 13 06 0c 00  	mv	a2, s8
80001cac: 93 86 09 00  	mv	a3, s3
80001cb0: e7 80 0b 00  	jalr	s7
80001cb4: 33 85 44 41  	sub	a0, s1, s4
80001cb8: 33 35 25 01  	sltu	a0, a0, s2
80001cbc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001cc0: 93 c5 1c 00  	xori	a1, s9, 1
80001cc4: 33 e5 a5 00  	or	a0, a1, a0
80001cc8: 63 16 05 56  	bnez	a0, 0x80002234 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001ccc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001cd0: 13 84 14 00  	addi	s0, s1, 1
80001cd4: 13 05 00 02  	addi	a0, zero, 32
80001cd8: 93 05 0b 00  	mv	a1, s6
80001cdc: 13 86 04 00  	mv	a2, s1
80001ce0: 93 86 09 00  	mv	a3, s3
80001ce4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001ce8: 33 05 8a 00  	add	a0, s4, s0
80001cec: 93 04 04 00  	mv	s1, s0
80001cf0: e3 60 25 ff  	bltu	a0, s2, 0x80001cd0 <.LBB4_83+0xf0>
80001cf4: 6f 00 40 54  	j	0x80002238 <.LBB4_90+0x378>
80001cf8: 53 04 a5 22  	fmv.d	fs0, fa0

80001cfc <.LBB4_84>:
80001cfc: 17 25 00 00  	auipc	a0, 2
80001d00: 13 05 45 b1  	addi	a0, a0, -1260
80001d04: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001d08: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001d0c: 63 1e 05 00  	bnez	a0, 0x80001d28 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001d10: 93 f5 4a 00  	andi	a1, s5, 4
80001d14: 13 b5 15 00  	seqz	a0, a1
80001d18: 63 82 05 06  	beqz	a1, 0x80001d7c <.LBB4_88>

80001d1c <.LBB4_85>:
80001d1c: 17 1c 00 00  	auipc	s8, 1
80001d20: 13 0c 4c 7a  	addi	s8, s8, 1956
80001d24: 6f 00 00 06  	j	0x80001d84 <.LBB4_88+0x8>

80001d28 <.LBB4_86>:
80001d28: 17 25 00 00  	auipc	a0, 2
80001d2c: 13 05 05 af  	addi	a0, a0, -1296
80001d30: 07 30 05 00  	fld	ft0, 0(a0)

80001d34 <.LBB4_87>:
80001d34: 17 25 00 00  	auipc	a0, 2
80001d38: 13 05 c5 ae  	addi	a0, a0, -1300
80001d3c: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001d40: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001d44: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001d48: 33 75 b5 00  	and	a0, a0, a1
80001d4c: 63 1e 05 0e  	bnez	a0, 0x80001e48 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001d50: 13 85 0b 00  	mv	a0, s7
80001d54: 93 05 0b 00  	mv	a1, s6
80001d58: 13 06 0a 00  	mv	a2, s4
80001d5c: 93 86 09 00  	mv	a3, s3
80001d60: 53 05 84 22  	fmv.d	fa0, fs0
80001d64: 93 07 09 00  	mv	a5, s2
80001d68: 13 88 0a 00  	mv	a6, s5
80001d6c: 97 00 00 00  	auipc	ra, 0
80001d70: e7 80 40 51  	jalr	1300(ra)
80001d74: 13 04 05 00  	mv	s0, a0
80001d78: 6f 00 00 4c  	j	0x80002238 <.LBB4_90+0x378>

80001d7c <.LBB4_88>:
80001d7c: 17 1c 00 00  	auipc	s8, 1
80001d80: 13 0c 5c 75  	addi	s8, s8, 1877
80001d84: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001d88: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001d8c: 13 f5 3a 00  	andi	a0, s5, 3
80001d90: 33 35 a0 00  	snez	a0, a0
80001d94: b3 b5 2c 01  	sltu	a1, s9, s2
80001d98: 93 c5 15 00  	xori	a1, a1, 1
80001d9c: 33 65 b5 00  	or	a0, a0, a1
80001da0: 93 fa 2a 00  	andi	s5, s5, 2
80001da4: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001da8: 63 16 05 02  	bnez	a0, 0x80001dd4 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80001dac: 33 04 99 41  	sub	s0, s2, s9
80001db0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001db4: 93 04 16 00  	addi	s1, a2, 1
80001db8: 13 05 00 02  	addi	a0, zero, 32
80001dbc: 93 05 0b 00  	mv	a1, s6
80001dc0: 93 86 09 00  	mv	a3, s3
80001dc4: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001dc8: 13 04 f4 ff  	addi	s0, s0, -1
80001dcc: 13 86 04 00  	mv	a2, s1
80001dd0: e3 12 04 fe  	bnez	s0, 0x80001db4 <.LBB4_88+0x38>
80001dd4: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001dd8: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80001ddc: 33 05 9c 01  	add	a0, s8, s9
80001de0: 03 45 05 00  	lbu	a0, 0(a0)
80001de4: 13 86 04 00  	mv	a2, s1
80001de8: 13 84 fc ff  	addi	s0, s9, -1
80001dec: 93 84 14 00  	addi	s1, s1, 1
80001df0: 93 05 0b 00  	mv	a1, s6
80001df4: 93 86 09 00  	mv	a3, s3
80001df8: e7 80 0b 00  	jalr	s7
80001dfc: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80001e00: e3 1e 04 fc  	bnez	s0, 0x80001ddc <.LBB4_88+0x60>
80001e04: 33 85 44 41  	sub	a0, s1, s4
80001e08: 33 35 25 01  	sltu	a0, a0, s2
80001e0c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001e10: 93 c5 1a 00  	xori	a1, s5, 1
80001e14: 33 e5 a5 00  	or	a0, a1, a0
80001e18: 63 1e 05 40  	bnez	a0, 0x80002234 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001e1c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001e20: 13 84 14 00  	addi	s0, s1, 1
80001e24: 13 05 00 02  	addi	a0, zero, 32
80001e28: 93 05 0b 00  	mv	a1, s6
80001e2c: 13 86 04 00  	mv	a2, s1
80001e30: 93 86 09 00  	mv	a3, s3
80001e34: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001e38: 33 05 8a 00  	add	a0, s4, s0
80001e3c: 93 04 04 00  	mv	s1, s0
80001e40: e3 60 25 ff  	bltu	a0, s2, 0x80001e20 <.LBB4_88+0xa4>
80001e44: 6f 00 40 3f  	j	0x80002238 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001e48: 13 f5 0a 40  	andi	a0, s5, 1024
80001e4c: 13 0c 60 00  	addi	s8, zero, 6
80001e50: 63 04 05 00  	beqz	a0, 0x80001e58 <.LBB4_88+0xdc>
80001e54: 13 0c 07 00  	mv	s8, a4
80001e58: 13 05 a0 00  	addi	a0, zero, 10
80001e5c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001e60: 63 6c ac 02  	bltu	s8, a0, 0x80001e98 <.LBB4_88+0x11c>
80001e64: 93 04 6c ff  	addi	s1, s8, -10
80001e68: 13 05 f0 01  	addi	a0, zero, 31
80001e6c: 63 e4 a4 00  	bltu	s1, a0, 0x80001e74 <.LBB4_88+0xf8>
80001e70: 93 04 f0 01  	addi	s1, zero, 31
80001e74: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80001e78: 13 05 81 00  	addi	a0, sp, 8
80001e7c: 93 05 00 03  	addi	a1, zero, 48
80001e80: 13 06 04 00  	mv	a2, s0
80001e84: 97 e0 ff ff  	auipc	ra, 1048574
80001e88: e7 80 40 6d  	jalr	1748(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001e8c: 13 c5 f4 ff  	not	a0, s1
80001e90: 33 0c ac 00  	add	s8, s8, a0
80001e94: 6f 00 80 00  	j	0x80001e9c <.LBB4_88+0x120>
80001e98: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80001e9c: 13 15 3c 00  	slli	a0, s8, 3

80001ea0 <.LBB4_89>:
80001ea0: 97 15 00 00  	auipc	a1, 1
80001ea4: 93 85 85 7f  	addi	a1, a1, 2040
80001ea8: 33 05 b5 00  	add	a0, a0, a1
80001eac: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80001eb0: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80001eb4: 53 80 04 d2  	fcvt.d.w	ft0, s1
80001eb8: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80001ebc: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80001ec0 <.LBB4_90>:
80001ec0: 17 25 00 00  	auipc	a0, 2
80001ec4: 13 05 85 96  	addi	a0, a0, -1688
80001ec8: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80001ecc: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80001ed0: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80001ed4: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80001ed8: d3 05 01 a2  	fle.d	a1, ft2, ft0
80001edc: 63 90 05 02  	bnez	a1, 0x80001efc <.LBB4_90+0x3c>
;     ++frac;
80001ee0: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80001ee4: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80001ee8: d3 15 11 a2  	flt.d	a1, ft2, ft1
80001eec: 63 94 05 02  	bnez	a1, 0x80001f14 <.LBB4_90+0x54>
80001ef0: 13 05 00 00  	mv	a0, zero
;       ++whole;
80001ef4: 93 84 14 00  	addi	s1, s1, 1
80001ef8: 6f 00 c0 01  	j	0x80001f14 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80001efc: d3 15 01 a2  	flt.d	a1, ft2, ft0
80001f00: 63 9a 05 00  	bnez	a1, 0x80001f14 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001f04: 93 35 15 00  	seqz	a1, a0
80001f08: 13 76 15 00  	andi	a2, a0, 1
80001f0c: b3 65 b6 00  	or	a1, a2, a1
80001f10: 33 85 a5 00  	add	a0, a1, a0
80001f14: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001f18: 63 0c 0c 0c  	beqz	s8, 0x80001ff0 <.LBB4_90+0x130>
80001f1c: 13 06 00 00  	mv	a2, zero
80001f20: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001f24: 33 83 85 00  	add	t1, a1, s0
80001f28: 93 02 00 02  	addi	t0, zero, 32
80001f2c: 33 87 82 40  	sub	a4, t0, s0
80001f30: b7 d5 cc cc  	lui	a1, 838861
80001f34: 93 83 d5 cc  	addi	t2, a1, -819
80001f38: 13 08 a0 00  	addi	a6, zero, 10
80001f3c: 93 08 90 00  	addi	a7, zero, 9
80001f40: 63 04 c7 0c  	beq	a4, a2, 0x80002008 <.LBB4_90+0x148>
80001f44: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001f48: 33 35 75 02  	mulhu	a0, a0, t2
80001f4c: 13 55 35 00  	srli	a0, a0, 3
80001f50: b3 06 05 03  	mul	a3, a0, a6
80001f54: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80001f58: 93 e6 06 03  	ori	a3, a3, 48
80001f5c: b3 07 c3 00  	add	a5, t1, a2
80001f60: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80001f64: 13 06 16 00  	addi	a2, a2, 1
80001f68: e3 ec b8 fc  	bltu	a7, a1, 0x80001f40 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001f6c: 33 05 c4 00  	add	a0, s0, a2
80001f70: 93 05 f5 ff  	addi	a1, a0, -1
80001f74: 93 06 e0 01  	addi	a3, zero, 30
80001f78: b3 b6 b6 00  	sltu	a3, a3, a1
80001f7c: 33 47 cc 00  	xor	a4, s8, a2
80001f80: 13 37 17 00  	seqz	a4, a4
80001f84: b3 e6 e6 00  	or	a3, a3, a4
80001f88: 63 94 06 08  	bnez	a3, 0x80002010 <.LBB4_90+0x150>
80001f8c: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001f90: 33 05 85 00  	add	a0, a0, s0
80001f94: 93 45 f6 ff  	not	a1, a2
80001f98: 33 8c 85 01  	add	s8, a1, s8
80001f9c: 33 04 c4 00  	add	s0, s0, a2
80001fa0: 93 05 f0 01  	addi	a1, zero, 31
80001fa4: b3 86 85 40  	sub	a3, a1, s0
80001fa8: 33 05 c5 00  	add	a0, a0, a2
80001fac: 93 05 0c 00  	mv	a1, s8
80001fb0: 63 64 dc 00  	bltu	s8, a3, 0x80001fb8 <.LBB4_90+0xf8>
80001fb4: 93 85 06 00  	mv	a1, a3
80001fb8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001fbc: 93 05 00 03  	addi	a1, zero, 48
80001fc0: 97 e0 ff ff  	auipc	ra, 1048574
80001fc4: e7 80 80 59  	jalr	1432(ra)
80001fc8: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001fcc: b3 05 a4 00  	add	a1, s0, a0
80001fd0: 93 b5 f5 01  	sltiu	a1, a1, 31
80001fd4: 33 46 ac 00  	xor	a2, s8, a0
80001fd8: 33 36 c0 00  	snez	a2, a2
80001fdc: 33 f6 c5 00  	and	a2, a1, a2
80001fe0: 13 05 15 00  	addi	a0, a0, 1
80001fe4: e3 14 06 fe  	bnez	a2, 0x80001fcc <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001fe8: 33 05 a4 00  	add	a0, s0, a0
80001fec: 6f 00 80 02  	j	0x80002014 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80001ff0: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001ff4: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001ff8: 53 05 10 a2  	fle.d	a0, ft0, ft1
80001ffc: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002000: b3 84 a4 00  	add	s1, s1, a0
80002004: 6f 00 c0 03  	j	0x80002040 <.LBB4_90+0x180>
80002008: 13 04 00 02  	addi	s0, zero, 32
8000200c: 6f 00 80 03  	j	0x80002044 <.LBB4_90+0x184>
80002010: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002014: 63 8e 05 00  	beqz	a1, 0x80002030 <.LBB4_90+0x170>
;       buf[len++] = '.';
80002018: 13 04 15 00  	addi	s0, a0, 1
8000201c: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80002020: 33 85 a5 00  	add	a0, a1, a0
80002024: 93 05 e0 02  	addi	a1, zero, 46
80002028: 23 00 b5 00  	sb	a1, 0(a0)
8000202c: 6f 00 80 00  	j	0x80002034 <.LBB4_90+0x174>
80002030: 13 04 05 00  	mv	s0, a0
80002034: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002038: 93 02 04 00  	mv	t0, s0
8000203c: 63 64 85 00  	bltu	a0, s0, 0x80002044 <.LBB4_90+0x184>
80002040: 93 02 00 02  	addi	t0, zero, 32
80002044: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002048: 37 65 66 66  	lui	a0, 419430
8000204c: 93 05 75 66  	addi	a1, a0, 1639
80002050: 13 08 a0 00  	addi	a6, zero, 10
80002054: 93 06 81 00  	addi	a3, sp, 8
80002058: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
8000205c: 63 80 82 04  	beq	t0, s0, 0x8000209c <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002060: 33 95 b4 02  	mulh	a0, s1, a1
80002064: 93 57 f5 01  	srli	a5, a0, 31
80002068: 13 55 25 40  	srai	a0, a0, 2
8000206c: 33 05 f5 00  	add	a0, a0, a5
80002070: b3 07 05 03  	mul	a5, a0, a6
80002074: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002078: 93 87 07 03  	addi	a5, a5, 48
8000207c: 13 0c 14 00  	addi	s8, s0, 1
80002080: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002084: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002088: 23 00 f4 00  	sb	a5, 0(s0)
8000208c: 13 04 0c 00  	mv	s0, s8
80002090: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002094: e3 64 c7 fc  	bltu	a4, a2, 0x8000205c <.LBB4_90+0x19c>
80002098: 6f 00 80 00  	j	0x800020a0 <.LBB4_90+0x1e0>
8000209c: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800020a0: 93 f4 3a 00  	andi	s1, s5, 3
800020a4: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800020a8: 63 96 a4 06  	bne	s1, a0, 0x80002114 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800020ac: 63 0c 09 00  	beqz	s2, 0x800020c4 <.LBB4_90+0x204>
800020b0: 13 f5 ca 00  	andi	a0, s5, 12
800020b4: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800020b8: 33 e5 ac 00  	or	a0, s9, a0
800020bc: 33 09 a9 40  	sub	s2, s2, a0
800020c0: 6f 00 80 00  	j	0x800020c8 <.LBB4_90+0x208>
800020c4: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800020c8: 33 35 2c 01  	sltu	a0, s8, s2
800020cc: 93 45 15 00  	xori	a1, a0, 1
800020d0: 13 05 f0 01  	addi	a0, zero, 31
800020d4: 33 36 85 01  	sltu	a2, a0, s8
800020d8: b3 65 b6 00  	or	a1, a2, a1
800020dc: 63 9c 05 02  	bnez	a1, 0x80002114 <.LBB4_90+0x254>
800020e0: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800020e4: 93 45 fc ff  	not	a1, s8
800020e8: b3 05 b9 00  	add	a1, s2, a1
800020ec: 33 06 85 41  	sub	a2, a0, s8
800020f0: 33 85 86 01  	add	a0, a3, s8
800020f4: 63 e4 c5 00  	bltu	a1, a2, 0x800020fc <.LBB4_90+0x23c>
800020f8: 93 05 06 00  	mv	a1, a2
800020fc: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002100: 93 05 00 03  	addi	a1, zero, 48
80002104: 13 06 04 00  	mv	a2, s0
80002108: 97 e0 ff ff  	auipc	ra, 1048574
8000210c: e7 80 00 45  	jalr	1104(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002110: 33 0c 84 01  	add	s8, s0, s8
80002114: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002118: 63 6a 85 05  	bltu	a0, s8, 0x8000216c <.LBB4_90+0x2ac>
;     if (negative) {
8000211c: 63 8c 0c 00  	beqz	s9, 0x80002134 <.LBB4_90+0x274>
80002120: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002124: 33 05 85 01  	add	a0, a0, s8
80002128: 13 0c 1c 00  	addi	s8, s8, 1
8000212c: 93 05 d0 02  	addi	a1, zero, 45
80002130: 6f 00 80 03  	j	0x80002168 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002134: 13 f5 4a 00  	andi	a0, s5, 4
80002138: 63 10 05 02  	bnez	a0, 0x80002158 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
8000213c: 13 f5 8a 00  	andi	a0, s5, 8
80002140: 63 06 05 02  	beqz	a0, 0x8000216c <.LBB4_90+0x2ac>
80002144: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002148: 33 05 85 01  	add	a0, a0, s8
8000214c: 13 0c 1c 00  	addi	s8, s8, 1
80002150: 93 05 00 02  	addi	a1, zero, 32
80002154: 6f 00 40 01  	j	0x80002168 <.LBB4_90+0x2a8>
80002158: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000215c: 33 05 85 01  	add	a0, a0, s8
80002160: 13 0c 1c 00  	addi	s8, s8, 1
80002164: 93 05 b0 02  	addi	a1, zero, 43
80002168: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000216c: 33 35 90 00  	snez	a0, s1
80002170: b3 35 2c 01  	sltu	a1, s8, s2
80002174: 93 c5 15 00  	xori	a1, a1, 1
80002178: 33 65 b5 00  	or	a0, a0, a1
8000217c: 93 fa 2a 00  	andi	s5, s5, 2
80002180: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002184: 63 16 05 02  	bnez	a0, 0x800021b0 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002188: b3 04 89 41  	sub	s1, s2, s8
8000218c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002190: 13 04 16 00  	addi	s0, a2, 1
80002194: 13 05 00 02  	addi	a0, zero, 32
80002198: 93 05 0b 00  	mv	a1, s6
8000219c: 93 86 09 00  	mv	a3, s3
800021a0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800021a4: 93 84 f4 ff  	addi	s1, s1, -1
800021a8: 13 06 04 00  	mv	a2, s0
800021ac: e3 92 04 fe  	bnez	s1, 0x80002190 <.LBB4_90+0x2d0>
800021b0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800021b4: 63 0c 0c 02  	beqz	s8, 0x800021ec <.LBB4_90+0x32c>
800021b8: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800021bc: 33 85 8c 01  	add	a0, s9, s8
800021c0: 03 45 05 00  	lbu	a0, 0(a0)
800021c4: 13 0d fc ff  	addi	s10, s8, -1
800021c8: 93 04 14 00  	addi	s1, s0, 1
800021cc: 93 05 0b 00  	mv	a1, s6
800021d0: 13 06 04 00  	mv	a2, s0
800021d4: 93 86 09 00  	mv	a3, s3
800021d8: e7 80 0b 00  	jalr	s7
800021dc: 13 84 04 00  	mv	s0, s1
800021e0: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800021e4: e3 1c 0d fc  	bnez	s10, 0x800021bc <.LBB4_90+0x2fc>
800021e8: 6f 00 80 00  	j	0x800021f0 <.LBB4_90+0x330>
800021ec: 93 04 04 00  	mv	s1, s0
800021f0: 33 85 44 41  	sub	a0, s1, s4
800021f4: 33 35 25 01  	sltu	a0, a0, s2
800021f8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800021fc: 93 c5 1a 00  	xori	a1, s5, 1
80002200: 33 e5 a5 00  	or	a0, a1, a0
80002204: 63 18 05 02  	bnez	a0, 0x80002234 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002208: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000220c: 13 84 14 00  	addi	s0, s1, 1
80002210: 13 05 00 02  	addi	a0, zero, 32
80002214: 93 05 0b 00  	mv	a1, s6
80002218: 13 86 04 00  	mv	a2, s1
8000221c: 93 86 09 00  	mv	a3, s3
80002220: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002224: 33 05 8a 00  	add	a0, s4, s0
80002228: 93 04 04 00  	mv	s1, s0
8000222c: e3 60 25 ff  	bltu	a0, s2, 0x8000220c <.LBB4_90+0x34c>
80002230: 6f 00 80 00  	j	0x80002238 <.LBB4_90+0x378>
80002234: 13 84 04 00  	mv	s0, s1
; }
80002238: 13 05 04 00  	mv	a0, s0
8000223c: 07 39 81 02  	fld	fs2, 40(sp)
80002240: 87 34 01 03  	fld	fs1, 48(sp)
80002244: 07 34 81 03  	fld	fs0, 56(sp)
80002248: 03 2d 01 04  	lw	s10, 64(sp)
8000224c: 83 2c 41 04  	lw	s9, 68(sp)
80002250: 03 2c 81 04  	lw	s8, 72(sp)
80002254: 83 2b c1 04  	lw	s7, 76(sp)
80002258: 03 2b 01 05  	lw	s6, 80(sp)
8000225c: 83 2a 41 05  	lw	s5, 84(sp)
80002260: 03 2a 81 05  	lw	s4, 88(sp)
80002264: 83 29 c1 05  	lw	s3, 92(sp)
80002268: 03 29 01 06  	lw	s2, 96(sp)
8000226c: 83 24 41 06  	lw	s1, 100(sp)
80002270: 03 24 81 06  	lw	s0, 104(sp)
80002274: 83 20 c1 06  	lw	ra, 108(sp)
80002278: 13 01 01 07  	addi	sp, sp, 112
8000227c: 67 80 00 00  	ret

80002280 <_etoa>:
; {
80002280: 13 01 01 f8  	addi	sp, sp, -128
80002284: 23 2e 11 06  	sw	ra, 124(sp)
80002288: 23 2c 81 06  	sw	s0, 120(sp)
8000228c: 23 2a 91 06  	sw	s1, 116(sp)
80002290: 23 28 21 07  	sw	s2, 112(sp)
80002294: 23 26 31 07  	sw	s3, 108(sp)
80002298: 23 24 41 07  	sw	s4, 104(sp)
8000229c: 23 22 51 07  	sw	s5, 100(sp)
800022a0: 23 20 61 07  	sw	s6, 96(sp)
800022a4: 23 2e 71 05  	sw	s7, 92(sp)
800022a8: 23 2c 81 05  	sw	s8, 88(sp)
800022ac: 23 2a 91 05  	sw	s9, 84(sp)
800022b0: 23 28 a1 05  	sw	s10, 80(sp)
800022b4: 23 26 b1 05  	sw	s11, 76(sp)

800022b8 <.LBB5_43>:
800022b8: 97 14 00 00  	auipc	s1, 1
800022bc: 93 84 84 57  	addi	s1, s1, 1400
800022c0: 87 b0 04 00  	fld	ft1, 0(s1)

800022c4 <.LBB5_44>:
800022c4: 97 14 00 00  	auipc	s1, 1
800022c8: 93 84 44 57  	addi	s1, s1, 1396
800022cc: 07 b1 04 00  	fld	ft2, 0(s1)
800022d0: 53 00 a5 22  	fmv.d	ft0, fa0
800022d4: d3 04 15 a2  	fle.d	s1, fa0, ft1
800022d8: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800022dc: b3 f4 84 00  	and	s1, s1, s0
800022e0: 93 0a 08 00  	mv	s5, a6
800022e4: 13 89 07 00  	mv	s2, a5
800022e8: 93 07 07 00  	mv	a5, a4
800022ec: 93 89 06 00  	mv	s3, a3
800022f0: 13 0a 06 00  	mv	s4, a2
800022f4: 13 8b 05 00  	mv	s6, a1
800022f8: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800022fc: 63 92 04 06  	bnez	s1, 0x80002360 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002300: 13 85 0b 00  	mv	a0, s7
80002304: 93 05 0b 00  	mv	a1, s6
80002308: 13 06 0a 00  	mv	a2, s4
8000230c: 93 86 09 00  	mv	a3, s3
80002310: 53 05 00 22  	fmv.d	fa0, ft0
80002314: 13 87 07 00  	mv	a4, a5
80002318: 93 07 09 00  	mv	a5, s2
8000231c: 13 88 0a 00  	mv	a6, s5
80002320: 83 2d c1 04  	lw	s11, 76(sp)
80002324: 03 2d 01 05  	lw	s10, 80(sp)
80002328: 83 2c 41 05  	lw	s9, 84(sp)
8000232c: 03 2c 81 05  	lw	s8, 88(sp)
80002330: 83 2b c1 05  	lw	s7, 92(sp)
80002334: 03 2b 01 06  	lw	s6, 96(sp)
80002338: 83 2a 41 06  	lw	s5, 100(sp)
8000233c: 03 2a 81 06  	lw	s4, 104(sp)
80002340: 83 29 c1 06  	lw	s3, 108(sp)
80002344: 03 29 01 07  	lw	s2, 112(sp)
80002348: 83 24 41 07  	lw	s1, 116(sp)
8000234c: 03 24 81 07  	lw	s0, 120(sp)
80002350: 83 20 c1 07  	lw	ra, 124(sp)
80002354: 13 01 01 08  	addi	sp, sp, 128
80002358: 17 03 00 00  	auipc	t1, 0
8000235c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002360: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002364: 13 f5 0a 40  	andi	a0, s5, 1024
80002368: 13 07 60 00  	addi	a4, zero, 6
8000236c: 63 04 05 00  	beqz	a0, 0x80002374 <.LBB5_44+0xb0>
80002370: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002374: 27 30 a1 02  	fsd	fa0, 32(sp)
80002378: 83 25 41 02  	lw	a1, 36(sp)
8000237c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002380: 93 d6 45 01  	srli	a3, a1, 20
80002384: b7 07 10 00  	lui	a5, 256
80002388: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
8000238c: b3 f5 f5 00  	and	a1, a1, a5
80002390: 23 2c c1 00  	sw	a2, 24(sp)
80002394: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002398: b3 e5 c5 00  	or	a1, a1, a2
8000239c: 23 2e b1 00  	sw	a1, 28(sp)
800023a0: 87 30 81 01  	fld	ft1, 24(sp)

800023a4 <.LBB5_45>:
800023a4: 97 15 00 00  	auipc	a1, 1
800023a8: 93 85 c5 49  	addi	a1, a1, 1180
800023ac: 07 b1 05 00  	fld	ft2, 0(a1)

800023b0 <.LBB5_46>:
800023b0: 97 15 00 00  	auipc	a1, 1
800023b4: 93 85 85 49  	addi	a1, a1, 1176
800023b8: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800023bc: 93 f5 f6 7f  	andi	a1, a3, 2047
800023c0: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800023c4: 53 82 05 d2  	fcvt.d.w	ft4, a1
800023c8: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800023cc <.LBB5_47>:
800023cc: 97 15 00 00  	auipc	a1, 1
800023d0: 93 85 45 48  	addi	a1, a1, 1156
800023d4: 07 b1 05 00  	fld	ft2, 0(a1)

800023d8 <.LBB5_48>:
800023d8: 97 15 00 00  	auipc	a1, 1
800023dc: 93 85 05 48  	addi	a1, a1, 1152
800023e0: 87 b1 05 00  	fld	ft3, 0(a1)

800023e4 <.LBB5_49>:
800023e4: 97 15 00 00  	auipc	a1, 1
800023e8: 93 85 c5 47  	addi	a1, a1, 1148
800023ec: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800023f0: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800023f4: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800023f8: d3 80 05 d2  	fcvt.d.w	ft1, a1
800023fc: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002400 <.LBB5_50>:
80002400: 17 16 00 00  	auipc	a2, 1
80002404: 13 06 86 46  	addi	a2, a2, 1128
80002408: 87 31 06 00  	fld	ft3, 0(a2)

8000240c <.LBB5_51>:
8000240c: 17 16 00 00  	auipc	a2, 1
80002410: 13 06 46 46  	addi	a2, a2, 1124
80002414: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002418: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
8000241c: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002420: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002424: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002428: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
8000242c: 13 06 f6 3f  	addi	a2, a2, 1023
80002430: 23 28 01 00  	sw	zero, 16(sp)
80002434: 13 16 46 01  	slli	a2, a2, 20
80002438: 23 2a c1 00  	sw	a2, 20(sp)

8000243c <.LBB5_52>:
8000243c: 17 16 00 00  	auipc	a2, 1
80002440: 13 06 46 44  	addi	a2, a2, 1092
80002444: 87 31 06 00  	fld	ft3, 0(a2)

80002448 <.LBB5_53>:
80002448: 17 16 00 00  	auipc	a2, 1
8000244c: 13 06 06 44  	addi	a2, a2, 1088
80002450: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002454: 87 32 01 01  	fld	ft5, 16(sp)

80002458 <.LBB5_54>:
80002458: 17 16 00 00  	auipc	a2, 1
8000245c: 13 06 06 42  	addi	a2, a2, 1056
80002460: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002464: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002468 <.LBB5_55>:
80002468: 17 16 00 00  	auipc	a2, 1
8000246c: 13 06 86 42  	addi	a2, a2, 1064
80002470: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002474: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002478: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
8000247c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002480: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002484: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002488: 53 71 23 02  	fadd.d	ft2, ft6, ft2
8000248c: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002490: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002494: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002498: 63 0a 06 00  	beqz	a2, 0x800024ac <.LBB5_56+0x10>

8000249c <.LBB5_56>:
8000249c: 97 16 00 00  	auipc	a3, 1
800024a0: 93 86 c6 3f  	addi	a3, a3, 1020
800024a4: 07 b1 06 00  	fld	ft2, 0(a3)
800024a8: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800024ac: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800024b0: 93 05 34 06  	addi	a1, s0, 99
800024b4: 93 b5 75 0c  	sltiu	a1, a1, 199
800024b8: 13 06 50 00  	addi	a2, zero, 5
800024bc: b7 16 00 00  	lui	a3, 1
800024c0: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800024c4: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800024c8: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800024cc: 63 84 06 06  	beqz	a3, 0x80002534 <.LBB5_58+0x58>

800024d0 <.LBB5_57>:
800024d0: 97 15 00 00  	auipc	a1, 1
800024d4: 93 85 05 3d  	addi	a1, a1, 976
800024d8: 07 b1 05 00  	fld	ft2, 0(a1)

800024dc <.LBB5_58>:
800024dc: 97 15 00 00  	auipc	a1, 1
800024e0: 93 85 c5 3c  	addi	a1, a1, 972
800024e4: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800024e8: d3 15 25 a2  	flt.d	a1, fa0, ft2
800024ec: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800024f0: b3 e5 c5 00  	or	a1, a1, a2
800024f4: 63 98 05 00  	bnez	a1, 0x80002504 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800024f8: 63 40 e4 02  	blt	s0, a4, 0x80002518 <.LBB5_58+0x3c>
800024fc: 13 07 00 00  	mv	a4, zero
80002500: 6f 00 00 02  	j	0x80002520 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002504: 63 06 07 02  	beqz	a4, 0x80002530 <.LBB5_58+0x54>
80002508: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
8000250c: 13 45 15 00  	xori	a0, a0, 1
80002510: 33 07 a7 40  	sub	a4, a4, a0
80002514: 6f 00 00 02  	j	0x80002534 <.LBB5_58+0x58>
80002518: 13 45 f4 ff  	not	a0, s0
8000251c: 33 07 a7 00  	add	a4, a4, a0
80002520: 13 04 00 00  	mv	s0, zero
80002524: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80002528: 93 ea 0a 40  	ori	s5, s5, 1024
8000252c: 6f 00 80 00  	j	0x80002534 <.LBB5_58+0x58>
80002530: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002534: b3 05 99 41  	sub	a1, s2, s9
80002538: 33 36 b9 00  	sltu	a2, s2, a1
8000253c: 13 05 00 00  	mv	a0, zero
80002540: 63 14 06 00  	bnez	a2, 0x80002548 <.LBB5_58+0x6c>
80002544: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002548: 93 07 00 00  	mv	a5, zero
8000254c: 93 d5 1a 00  	srli	a1, s5, 1
80002550: 93 f4 15 00  	andi	s1, a1, 1
80002554: b3 35 90 01  	snez	a1, s9
80002558: b3 f5 b4 00  	and	a1, s1, a1
8000255c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002560: 63 94 05 00  	bnez	a1, 0x80002568 <.LBB5_58+0x8c>
80002564: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002568: 93 35 14 00  	seqz	a1, s0
8000256c: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002570: 63 94 05 00  	bnez	a1, 0x80002578 <.LBB5_58+0x9c>
80002574: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002578: 63 04 05 00  	beqz	a0, 0x80002580 <.LBB5_58+0xa4>
8000257c: 53 15 a5 22  	fneg.d	fa0, fa0
80002580: 37 f5 ff ff  	lui	a0, 1048575
80002584: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002588: 33 f8 aa 00  	and	a6, s5, a0
8000258c: 13 85 0b 00  	mv	a0, s7
80002590: 93 05 0b 00  	mv	a1, s6
80002594: 13 06 0a 00  	mv	a2, s4
80002598: 93 86 09 00  	mv	a3, s3
8000259c: 97 f0 ff ff  	auipc	ra, 1048575
800025a0: e7 80 40 60  	jalr	1540(ra)
800025a4: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800025a8: 63 82 0c 18  	beqz	s9, 0x8000272c <.LBB5_58+0x250>
800025ac: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800025b0: 13 f5 0a 02  	andi	a0, s5, 32
800025b4: 13 45 55 06  	xori	a0, a0, 101
800025b8: 93 05 0b 00  	mv	a1, s6
800025bc: 13 06 0d 00  	mv	a2, s10
800025c0: 93 86 09 00  	mv	a3, s3
800025c4: e7 80 0b 00  	jalr	s7
800025c8: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800025cc: 93 5a f4 01  	srli	s5, s0, 31
800025d0: 13 55 f4 41  	srai	a0, s0, 31
800025d4: b3 05 a4 00  	add	a1, s0, a0
800025d8: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800025dc: 93 8d dc ff  	addi	s11, s9, -3
800025e0: 13 04 f0 01  	addi	s0, zero, 31
800025e4: 37 d5 cc cc  	lui	a0, 838861
800025e8: 13 05 d5 cc  	addi	a0, a0, -819
800025ec: 13 08 a0 00  	addi	a6, zero, 10
800025f0: 93 08 c1 02  	addi	a7, sp, 44
800025f4: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800025f8: b3 37 a7 02  	mulhu	a5, a4, a0
800025fc: 93 d5 37 00  	srli	a1, a5, 3
80002600: b3 87 05 03  	mul	a5, a1, a6
80002604: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002608: 13 e6 07 03  	ori	a2, a5, 48
8000260c: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002610: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002614: 13 0c 1c 00  	addi	s8, s8, 1
80002618: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000261c: 33 b6 e2 00  	sltu	a2, t0, a4
80002620: 33 f6 c7 00  	and	a2, a5, a2
80002624: 93 8d fd ff  	addi	s11, s11, -1
80002628: 13 04 f4 ff  	addi	s0, s0, -1
8000262c: 13 87 05 00  	mv	a4, a1
80002630: e3 14 06 fc  	bnez	a2, 0x800025f8 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002634: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002638: 33 35 ac 00  	sltu	a0, s8, a0
8000263c: 13 45 15 00  	xori	a0, a0, 1
80002640: 93 c5 17 00  	xori	a1, a5, 1
80002644: 33 e5 a5 00  	or	a0, a1, a0
80002648: 63 12 05 04  	bnez	a0, 0x8000268c <.LBB5_58+0x1b0>
8000264c: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002650: b3 85 8c 41  	sub	a1, s9, s8
80002654: 93 85 d5 ff  	addi	a1, a1, -3
80002658: 13 06 f0 01  	addi	a2, zero, 31
8000265c: 33 06 86 41  	sub	a2, a2, s8
80002660: 33 05 85 01  	add	a0, a0, s8
80002664: 63 e4 c5 00  	bltu	a1, a2, 0x8000266c <.LBB5_58+0x190>
80002668: 93 05 06 00  	mv	a1, a2
8000266c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002670: 93 05 00 03  	addi	a1, zero, 48
80002674: 97 e0 ff ff  	auipc	ra, 1048574
80002678: e7 80 40 ee  	jalr	-284(ra)
;   if (flags & FLAGS_HASH) {
8000267c: 63 e4 8d 00  	bltu	s11, s0, 0x80002684 <.LBB5_58+0x1a8>
80002680: 93 0d 04 00  	mv	s11, s0
80002684: 33 85 8d 01  	add	a0, s11, s8
80002688: 13 0c 15 00  	addi	s8, a0, 1
8000268c: 83 2c c1 00  	lw	s9, 12(sp)
80002690: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002694: 63 60 85 03  	bltu	a0, s8, 0x800026b4 <.LBB5_58+0x1d8>
80002698: 13 05 c1 02  	addi	a0, sp, 44
8000269c: 33 05 85 01  	add	a0, a0, s8
800026a0: 93 05 d0 02  	addi	a1, zero, 45
800026a4: 63 94 0a 00  	bnez	s5, 0x800026ac <.LBB5_58+0x1d0>
800026a8: 93 05 b0 02  	addi	a1, zero, 43
800026ac: 13 0c 1c 00  	addi	s8, s8, 1
800026b0: 23 00 b5 00  	sb	a1, 0(a0)
800026b4: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800026b8: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800026bc: 33 85 8a 01  	add	a0, s5, s8
800026c0: 03 45 05 00  	lbu	a0, 0(a0)
800026c4: 13 06 04 00  	mv	a2, s0
800026c8: 93 04 fc ff  	addi	s1, s8, -1
800026cc: 13 04 14 00  	addi	s0, s0, 1
800026d0: 93 05 0b 00  	mv	a1, s6
800026d4: 93 86 09 00  	mv	a3, s3
800026d8: e7 80 0b 00  	jalr	s7
800026dc: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800026e0: e3 9e 04 fc  	bnez	s1, 0x800026bc <.LBB5_58+0x1e0>
800026e4: 33 05 44 41  	sub	a0, s0, s4
800026e8: 33 35 25 01  	sltu	a0, a0, s2
800026ec: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800026f0: 93 c5 1c 00  	xori	a1, s9, 1
800026f4: 33 e5 a5 00  	or	a0, a1, a0
800026f8: 63 18 05 02  	bnez	a0, 0x80002728 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800026fc: b3 04 40 41  	neg	s1, s4
80002700: 13 0d 14 00  	addi	s10, s0, 1
80002704: 13 05 00 02  	addi	a0, zero, 32
80002708: 93 05 0b 00  	mv	a1, s6
8000270c: 13 06 04 00  	mv	a2, s0
80002710: 93 86 09 00  	mv	a3, s3
80002714: e7 80 0b 00  	jalr	s7
80002718: 33 85 a4 01  	add	a0, s1, s10
8000271c: 13 04 0d 00  	mv	s0, s10
80002720: e3 60 25 ff  	bltu	a0, s2, 0x80002700 <.LBB5_58+0x224>
80002724: 6f 00 80 00  	j	0x8000272c <.LBB5_58+0x250>
80002728: 13 0d 04 00  	mv	s10, s0
; }
8000272c: 13 05 0d 00  	mv	a0, s10
80002730: 83 2d c1 04  	lw	s11, 76(sp)
80002734: 03 2d 01 05  	lw	s10, 80(sp)
80002738: 83 2c 41 05  	lw	s9, 84(sp)
8000273c: 03 2c 81 05  	lw	s8, 88(sp)
80002740: 83 2b c1 05  	lw	s7, 92(sp)
80002744: 03 2b 01 06  	lw	s6, 96(sp)
80002748: 83 2a 41 06  	lw	s5, 100(sp)
8000274c: 03 2a 81 06  	lw	s4, 104(sp)
80002750: 83 29 c1 06  	lw	s3, 108(sp)
80002754: 03 29 01 07  	lw	s2, 112(sp)
80002758: 83 24 41 07  	lw	s1, 116(sp)
8000275c: 03 24 81 07  	lw	s0, 120(sp)
80002760: 83 20 c1 07  	lw	ra, 124(sp)
80002764: 13 01 01 08  	addi	sp, sp, 128
80002768: 67 80 00 00  	ret

8000276c <_ntoa_format>:
; {
8000276c: 13 01 01 fc  	addi	sp, sp, -64
80002770: 23 2e 11 02  	sw	ra, 60(sp)
80002774: 23 2c 81 02  	sw	s0, 56(sp)
80002778: 23 2a 91 02  	sw	s1, 52(sp)
8000277c: 23 28 21 03  	sw	s2, 48(sp)
80002780: 23 26 31 03  	sw	s3, 44(sp)
80002784: 23 24 41 03  	sw	s4, 40(sp)
80002788: 23 22 51 03  	sw	s5, 36(sp)
8000278c: 23 20 61 03  	sw	s6, 32(sp)
80002790: 23 2e 71 01  	sw	s7, 28(sp)
80002794: 23 2c 81 01  	sw	s8, 24(sp)
80002798: 23 2a 91 01  	sw	s9, 20(sp)
8000279c: 23 28 a1 01  	sw	s10, 16(sp)
800027a0: 23 26 b1 01  	sw	s11, 12(sp)
800027a4: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800027a8: 93 fa 2e 00  	andi	s5, t4, 2
800027ac: 13 09 0e 00  	mv	s2, t3
800027b0: 13 8d 03 00  	mv	s10, t2
800027b4: 93 8c 08 00  	mv	s9, a7
800027b8: 13 8c 07 00  	mv	s8, a5
800027bc: 93 89 06 00  	mv	s3, a3
800027c0: 13 0a 06 00  	mv	s4, a2
800027c4: 13 8b 05 00  	mv	s6, a1
800027c8: 93 0d 05 00  	mv	s11, a0
800027cc: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800027d0: 63 9e 0a 0c  	bnez	s5, 0x800028ac <_ntoa_format+0x140>
800027d4: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800027d8: 63 0e 09 00  	beqz	s2, 0x800027f4 <_ntoa_format+0x88>
800027dc: 63 0e 04 00  	beqz	s0, 0x800027f8 <_ntoa_format+0x8c>
800027e0: 13 f5 cb 00  	andi	a0, s7, 12
800027e4: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800027e8: 33 65 05 01  	or	a0, a0, a6
800027ec: 33 09 a9 40  	sub	s2, s2, a0
800027f0: 6f 00 80 00  	j	0x800027f8 <_ntoa_format+0x8c>
800027f4: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800027f8: 33 35 ac 01  	sltu	a0, s8, s10
800027fc: 93 45 15 00  	xori	a1, a0, 1
80002800: 13 05 f0 01  	addi	a0, zero, 31
80002804: 33 36 85 01  	sltu	a2, a0, s8
80002808: b3 65 b6 00  	or	a1, a2, a1
8000280c: 63 94 05 04  	bnez	a1, 0x80002854 <_ntoa_format+0xe8>
80002810: 23 22 51 01  	sw	s5, 4(sp)
80002814: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002818: 93 45 fc ff  	not	a1, s8
8000281c: b3 85 a5 01  	add	a1, a1, s10
80002820: 33 06 85 41  	sub	a2, a0, s8
80002824: 33 05 87 01  	add	a0, a4, s8
80002828: 63 e4 c5 00  	bltu	a1, a2, 0x80002830 <_ntoa_format+0xc4>
8000282c: 93 05 06 00  	mv	a1, a2
80002830: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002834: 93 05 00 03  	addi	a1, zero, 48
80002838: 13 86 04 00  	mv	a2, s1
8000283c: 97 e0 ff ff  	auipc	ra, 1048574
80002840: e7 80 c0 d1  	jalr	-740(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002844: 33 8c 84 01  	add	s8, s1, s8
80002848: 03 27 81 00  	lw	a4, 8(sp)
8000284c: 13 88 0a 00  	mv	a6, s5
80002850: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002854: 63 0c 04 04  	beqz	s0, 0x800028ac <_ntoa_format+0x140>
80002858: 33 35 2c 01  	sltu	a0, s8, s2
8000285c: 93 45 15 00  	xori	a1, a0, 1
80002860: 13 05 f0 01  	addi	a0, zero, 31
80002864: 33 36 85 01  	sltu	a2, a0, s8
80002868: b3 e5 c5 00  	or	a1, a1, a2
8000286c: 63 90 05 04  	bnez	a1, 0x800028ac <_ntoa_format+0x140>
80002870: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002874: 93 45 fc ff  	not	a1, s8
80002878: b3 05 b9 00  	add	a1, s2, a1
8000287c: 33 06 85 41  	sub	a2, a0, s8
80002880: 33 05 87 01  	add	a0, a4, s8
80002884: 63 e4 c5 00  	bltu	a1, a2, 0x8000288c <_ntoa_format+0x120>
80002888: 93 05 06 00  	mv	a1, a2
8000288c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002890: 93 05 00 03  	addi	a1, zero, 48
80002894: 13 86 04 00  	mv	a2, s1
80002898: 97 e0 ff ff  	auipc	ra, 1048574
8000289c: e7 80 00 cc  	jalr	-832(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800028a0: 33 8c 84 01  	add	s8, s1, s8
800028a4: 03 27 81 00  	lw	a4, 8(sp)
800028a8: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800028ac: 13 f5 0b 01  	andi	a0, s7, 16
800028b0: 63 02 05 0e  	beqz	a0, 0x80002994 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800028b4: 13 f5 0b 40  	andi	a0, s7, 1024
800028b8: 13 55 a5 00  	srli	a0, a0, 10
800028bc: 93 35 1c 00  	seqz	a1, s8
800028c0: 33 65 b5 00  	or	a0, a0, a1
800028c4: 63 1e 05 02  	bnez	a0, 0x80002900 <_ntoa_format+0x194>
800028c8: 33 45 ac 01  	xor	a0, s8, s10
800028cc: 33 35 a0 00  	snez	a0, a0
800028d0: b3 45 2c 01  	xor	a1, s8, s2
800028d4: b3 35 b0 00  	snez	a1, a1
800028d8: 33 75 b5 00  	and	a0, a0, a1
800028dc: 63 12 05 02  	bnez	a0, 0x80002900 <_ntoa_format+0x194>
;       len--;
800028e0: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800028e4: b3 35 a0 00  	snez	a1, a0
800028e8: 13 86 0c ff  	addi	a2, s9, -16
800028ec: 13 36 16 00  	seqz	a2, a2
800028f0: b3 75 b6 00  	and	a1, a2, a1
800028f4: 63 84 05 00  	beqz	a1, 0x800028fc <_ntoa_format+0x190>
800028f8: 13 05 ec ff  	addi	a0, s8, -2
800028fc: 13 0c 05 00  	mv	s8, a0
80002900: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002904: 63 96 ac 02  	bne	s9, a0, 0x80002930 <_ntoa_format+0x1c4>
80002908: 13 f5 0b 02  	andi	a0, s7, 32
8000290c: 93 55 55 00  	srli	a1, a0, 5
80002910: 13 06 f0 01  	addi	a2, zero, 31
80002914: 33 36 86 01  	sltu	a2, a2, s8
80002918: b3 e5 c5 00  	or	a1, a1, a2
8000291c: 63 9e 05 02  	bnez	a1, 0x80002958 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002920: 33 05 87 01  	add	a0, a4, s8
80002924: 13 0c 1c 00  	addi	s8, s8, 1
80002928: 93 05 80 07  	addi	a1, zero, 120
8000292c: 6f 00 c0 04  	j	0x80002978 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002930: 13 85 ec ff  	addi	a0, s9, -2
80002934: 33 35 a0 00  	snez	a0, a0
80002938: 93 05 f0 01  	addi	a1, zero, 31
8000293c: b3 b5 85 01  	sltu	a1, a1, s8
80002940: 33 65 b5 00  	or	a0, a0, a1
80002944: 63 1c 05 02  	bnez	a0, 0x8000297c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002948: 33 05 87 01  	add	a0, a4, s8
8000294c: 13 0c 1c 00  	addi	s8, s8, 1
80002950: 93 05 20 06  	addi	a1, zero, 98
80002954: 6f 00 40 02  	j	0x80002978 <_ntoa_format+0x20c>
80002958: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000295c: 13 35 15 00  	seqz	a0, a0
80002960: 93 c5 15 00  	xori	a1, a1, 1
80002964: 33 65 b5 00  	or	a0, a0, a1
80002968: 63 1a 05 00  	bnez	a0, 0x8000297c <_ntoa_format+0x210>
;       buf[len++] = 'X';
8000296c: 33 05 87 01  	add	a0, a4, s8
80002970: 13 0c 1c 00  	addi	s8, s8, 1
80002974: 93 05 80 05  	addi	a1, zero, 88
80002978: 23 00 b5 00  	sb	a1, 0(a0)
8000297c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002980: 63 60 85 07  	bltu	a0, s8, 0x800029e0 <_ntoa_format+0x274>
;       buf[len++] = '0';
80002984: 33 05 87 01  	add	a0, a4, s8
80002988: 13 0c 1c 00  	addi	s8, s8, 1
8000298c: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80002990: 23 00 b5 00  	sb	a1, 0(a0)
80002994: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002998: 63 64 85 05  	bltu	a0, s8, 0x800029e0 <_ntoa_format+0x274>
;     if (negative) {
8000299c: 63 0a 08 00  	beqz	a6, 0x800029b0 <_ntoa_format+0x244>
;       buf[len++] = '-';
800029a0: 33 05 87 01  	add	a0, a4, s8
800029a4: 13 0c 1c 00  	addi	s8, s8, 1
800029a8: 93 05 d0 02  	addi	a1, zero, 45
800029ac: 6f 00 00 03  	j	0x800029dc <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800029b0: 13 f5 4b 00  	andi	a0, s7, 4
800029b4: 63 1e 05 00  	bnez	a0, 0x800029d0 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
800029b8: 13 f5 8b 00  	andi	a0, s7, 8
800029bc: 63 02 05 02  	beqz	a0, 0x800029e0 <_ntoa_format+0x274>
;       buf[len++] = ' ';
800029c0: 33 05 87 01  	add	a0, a4, s8
800029c4: 13 0c 1c 00  	addi	s8, s8, 1
800029c8: 93 05 00 02  	addi	a1, zero, 32
800029cc: 6f 00 00 01  	j	0x800029dc <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800029d0: 33 05 87 01  	add	a0, a4, s8
800029d4: 13 0c 1c 00  	addi	s8, s8, 1
800029d8: 93 05 b0 02  	addi	a1, zero, 43
800029dc: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800029e0: 13 f5 3b 00  	andi	a0, s7, 3
800029e4: 33 35 a0 00  	snez	a0, a0
800029e8: b3 35 2c 01  	sltu	a1, s8, s2
800029ec: 93 c5 15 00  	xori	a1, a1, 1
800029f0: 33 65 b5 00  	or	a0, a0, a1
800029f4: 13 04 0a 00  	mv	s0, s4
800029f8: 63 16 05 02  	bnez	a0, 0x80002a24 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800029fc: b3 04 89 41  	sub	s1, s2, s8
80002a00: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002a04: 13 04 16 00  	addi	s0, a2, 1
80002a08: 13 05 00 02  	addi	a0, zero, 32
80002a0c: 93 05 0b 00  	mv	a1, s6
80002a10: 93 86 09 00  	mv	a3, s3
80002a14: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002a18: 93 84 f4 ff  	addi	s1, s1, -1
80002a1c: 13 06 04 00  	mv	a2, s0
80002a20: e3 92 04 fe  	bnez	s1, 0x80002a04 <_ntoa_format+0x298>
80002a24: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002a28: 63 0e 0c 02  	beqz	s8, 0x80002a64 <_ntoa_format+0x2f8>
80002a2c: 03 25 81 00  	lw	a0, 8(sp)
80002a30: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002a34: 33 85 8b 01  	add	a0, s7, s8
80002a38: 03 45 05 00  	lbu	a0, 0(a0)
80002a3c: 93 0c fc ff  	addi	s9, s8, -1
80002a40: 93 04 14 00  	addi	s1, s0, 1
80002a44: 93 05 0b 00  	mv	a1, s6
80002a48: 13 06 04 00  	mv	a2, s0
80002a4c: 93 86 09 00  	mv	a3, s3
80002a50: e7 80 0d 00  	jalr	s11
80002a54: 13 84 04 00  	mv	s0, s1
80002a58: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002a5c: e3 9c 0c fc  	bnez	s9, 0x80002a34 <_ntoa_format+0x2c8>
80002a60: 6f 00 80 00  	j	0x80002a68 <_ntoa_format+0x2fc>
80002a64: 93 04 04 00  	mv	s1, s0
80002a68: 33 85 44 41  	sub	a0, s1, s4
80002a6c: 33 35 25 01  	sltu	a0, a0, s2
80002a70: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002a74: 93 c5 1a 00  	xori	a1, s5, 1
80002a78: 33 e5 a5 00  	or	a0, a1, a0
80002a7c: 63 18 05 02  	bnez	a0, 0x80002aac <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002a80: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002a84: 13 84 14 00  	addi	s0, s1, 1
80002a88: 13 05 00 02  	addi	a0, zero, 32
80002a8c: 93 05 0b 00  	mv	a1, s6
80002a90: 13 86 04 00  	mv	a2, s1
80002a94: 93 86 09 00  	mv	a3, s3
80002a98: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002a9c: 33 05 8a 00  	add	a0, s4, s0
80002aa0: 93 04 04 00  	mv	s1, s0
80002aa4: e3 60 25 ff  	bltu	a0, s2, 0x80002a84 <_ntoa_format+0x318>
80002aa8: 6f 00 80 00  	j	0x80002ab0 <_ntoa_format+0x344>
80002aac: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002ab0: 13 05 04 00  	mv	a0, s0
80002ab4: 83 2d c1 00  	lw	s11, 12(sp)
80002ab8: 03 2d 01 01  	lw	s10, 16(sp)
80002abc: 83 2c 41 01  	lw	s9, 20(sp)
80002ac0: 03 2c 81 01  	lw	s8, 24(sp)
80002ac4: 83 2b c1 01  	lw	s7, 28(sp)
80002ac8: 03 2b 01 02  	lw	s6, 32(sp)
80002acc: 83 2a 41 02  	lw	s5, 36(sp)
80002ad0: 03 2a 81 02  	lw	s4, 40(sp)
80002ad4: 83 29 c1 02  	lw	s3, 44(sp)
80002ad8: 03 29 01 03  	lw	s2, 48(sp)
80002adc: 83 24 41 03  	lw	s1, 52(sp)
80002ae0: 03 24 81 03  	lw	s0, 56(sp)
80002ae4: 83 20 c1 03  	lw	ra, 60(sp)
80002ae8: 13 01 01 04  	addi	sp, sp, 64
80002aec: 67 80 00 00  	ret

80002af0 <_snrt_init_team>:
;     team->base.root = team;
80002af0: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002af4: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002af8: 03 23 87 00  	lw	t1, 8(a4)
80002afc: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002b00: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002b04: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002b08: 83 22 47 00  	lw	t0, 4(a4)
80002b0c: 33 88 08 03  	mul	a6, a7, a6
80002b10: 33 05 58 02  	mul	a0, a6, t0
80002b14: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002b18: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002b1c: 33 85 68 40  	sub	a0, a7, t1
80002b20: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002b24: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002b28: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002b2c: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002b30: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002b34: 03 25 87 01  	lw	a0, 24(a4)
80002b38: b7 05 00 10  	lui	a1, 65536
80002b3c: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002b40: 23 a2 07 02  	sw	zero, 36(a5)
80002b44: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002b48: 03 25 07 02  	lw	a0, 32(a4)
80002b4c: 83 25 47 02  	lw	a1, 36(a4)
80002b50: 23 a4 a7 02  	sw	a0, 40(a5)
80002b54: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002b58: 23 a8 c7 02  	sw	a2, 48(a5)
80002b5c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002b60: 23 ac d7 02  	sw	a3, 56(a5)
80002b64: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002b68: 03 25 07 01  	lw	a0, 16(a4)
80002b6c: 33 08 a6 00  	add	a6, a2, a0
80002b70: 93 05 08 19  	addi	a1, a6, 400
80002b74: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002b78: b3 32 a8 00  	sltu	t0, a6, a0
80002b7c: 93 55 15 00  	srli	a1, a0, 1
80002b80: 33 03 b8 00  	add	t1, a6, a1
80002b84: b3 35 03 01  	sltu	a1, t1, a6
80002b88: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80002b8c: 23 a0 67 04  	sw	t1, 64(a5)
80002b90: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002b94: 13 15 15 00  	slli	a0, a0, 1
80002b98: b3 05 c5 00  	add	a1, a0, a2
80002b9c: 33 b5 a5 00  	sltu	a0, a1, a0
80002ba0: 23 a4 b7 04  	sw	a1, 72(a5)
80002ba4: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80002ba8: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80002bac: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80002bb0: 37 05 00 00  	lui	a0, 0
80002bb4: 33 05 45 00  	add	a0, a0, tp
80002bb8: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002bbc: 03 a5 07 00  	lw	a0, 0(a5)
80002bc0: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002bc4: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002bc8: b3 85 b8 40  	sub	a1, a7, a1
80002bcc: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80002bd0: b7 05 00 00  	lui	a1, 0
80002bd4: b3 85 45 00  	add	a1, a1, tp
80002bd8: 23 a2 a5 00  	sw	a0, 4(a1)
80002bdc: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80002be0: 33 85 a8 02  	mul	a0, a7, a0

80002be4 <.LBB0_1>:
80002be4: 97 15 00 00  	auipc	a1, 1
80002be8: 93 85 05 cd  	addi	a1, a1, -816
80002bec: 33 05 b5 00  	add	a0, a0, a1
80002bf0: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80002bf4: 83 28 07 03  	lw	a7, 48(a4)
80002bf8: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80002bfc: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80002c00: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002c04: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80002c08: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80002c0c: 13 05 76 00  	addi	a0, a2, 7
80002c10: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002c14: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002c18: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80002c1c: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80002c20: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002c24: 03 a5 05 00  	lw	a0, 0(a1)
80002c28: 13 05 f5 44  	addi	a0, a0, 1103
80002c2c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80002c30: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002c34: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002c38: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80002c3c: 37 05 00 00  	lui	a0, 0
80002c40: 33 05 45 00  	add	a0, a0, tp
80002c44: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002c48: 37 05 00 00  	lui	a0, 0
80002c4c: 33 05 45 00  	add	a0, a0, tp
80002c50: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002c54: 67 80 00 00  	ret

80002c58 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002c58: 37 05 00 00  	lui	a0, 0
80002c5c: 33 05 45 00  	add	a0, a0, tp
80002c60: 03 25 05 00  	lw	a0, 0(a0)
80002c64: 03 25 05 00  	lw	a0, 0(a0)
80002c68: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002c6c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002c70: 33 85 a5 40  	sub	a0, a1, a0
80002c74: 67 80 00 00  	ret

80002c78 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002c78: 37 05 00 00  	lui	a0, 0
80002c7c: 33 05 45 00  	add	a0, a0, tp
80002c80: 03 25 05 00  	lw	a0, 0(a0)
80002c84: 03 25 05 00  	lw	a0, 0(a0)
80002c88: 03 25 05 07  	lw	a0, 112(a0)
80002c8c: 67 80 00 00  	ret

80002c90 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80002c90: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002c94: 63 44 05 00  	bltz	a0, 0x80002c9c <__snrt_isr+0xc>
;         while (1)
80002c98: 6f 00 00 00  	j	0x80002c98 <__snrt_isr+0x8>
80002c9c: b7 05 00 80  	lui	a1, 524288
80002ca0: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80002ca4: 33 75 b5 00  	and	a0, a0, a1
80002ca8: 13 05 d5 ff  	addi	a0, a0, -3
80002cac: 93 55 25 00  	srli	a1, a0, 2
80002cb0: 13 15 e5 01  	slli	a0, a0, 30
80002cb4: 33 65 b5 00  	or	a0, a0, a1
80002cb8: 93 05 40 00  	addi	a1, zero, 4
80002cbc: 63 0a b5 06  	beq	a0, a1, 0x80002d30 <.LBB1_7+0x58>
80002cc0: 63 1a 05 08  	bnez	a0, 0x80002d54 <.LBB1_7+0x7c>
80002cc4: 37 05 00 00  	lui	a0, 0
80002cc8: 33 05 45 00  	add	a0, a0, tp
80002ccc: 03 25 05 00  	lw	a0, 0(a0)
80002cd0: 03 25 05 00  	lw	a0, 0(a0)
80002cd4: f3 25 40 f1  	csrr	a1, mhartid

80002cd8 <.LBB1_7>:
;     asm volatile(
80002cd8: 17 16 00 00  	auipc	a2, 1
80002cdc: 13 06 86 bd  	addi	a2, a2, -1064
80002ce0: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80002ce4: 93 06 06 00  	mv	a3, a2
80002ce8: 93 02 10 00  	addi	t0, zero, 1
80002cec: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80002cf0: e3 9e 02 fe  	bnez	t0, 0x80002cec <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002cf4: b7 06 00 00  	lui	a3, 0
80002cf8: b3 86 46 00  	add	a3, a3, tp
80002cfc: 83 a6 86 00  	lw	a3, 8(a3)
80002d00: 33 85 a5 40  	sub	a0, a1, a0
80002d04: 93 55 35 00  	srli	a1, a0, 3
80002d08: 93 f5 c5 ff  	andi	a1, a1, -4
80002d0c: b3 85 b6 00  	add	a1, a3, a1
80002d10: 83 a6 05 00  	lw	a3, 0(a1)
80002d14: 13 07 10 00  	addi	a4, zero, 1
80002d18: 33 15 a7 00  	sll	a0, a4, a0
80002d1c: 13 45 f5 ff  	not	a0, a0
80002d20: 33 f5 a6 00  	and	a0, a3, a0
80002d24: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002d28: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002d2c: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002d30: 37 05 00 00  	lui	a0, 0
80002d34: 33 05 45 00  	add	a0, a0, tp
80002d38: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002d3c: b7 05 00 00  	lui	a1, 0
80002d40: b3 85 45 00  	add	a1, a1, tp
80002d44: 83 a5 c5 00  	lw	a1, 12(a1)
80002d48: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002d4c: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002d50: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002d54: 67 80 00 00  	ret

80002d58 <matmul>:
; void matmul(double C[], double A[], double B[], int n, int p, int m){
80002d58: 13 01 01 fe  	addi	sp, sp, -32
80002d5c: 23 2e 11 00  	sw	ra, 28(sp)
80002d60: 23 2c 81 00  	sw	s0, 24(sp)
80002d64: 23 2a 91 00  	sw	s1, 20(sp)
80002d68: 23 28 21 01  	sw	s2, 16(sp)
80002d6c: 23 26 31 01  	sw	s3, 12(sp)
80002d70: 23 24 41 01  	sw	s4, 8(sp)
80002d74: 13 89 06 00  	mv	s2, a3
;     for (int i = 0; i < n; i++){
80002d78: 93 a6 16 00  	slti	a3, a3, 1
80002d7c: 93 a4 17 00  	slti	s1, a5, 1
80002d80: b3 e6 96 00  	or	a3, a3, s1
80002d84: 63 96 06 2a  	bnez	a3, 0x80003030 <matmul+0x2d8>
80002d88: 93 09 05 00  	mv	s3, a0
;     for (int i = 0; i < n; i++){
80002d8c: 13 88 f7 ff  	addi	a6, a5, -1
80002d90: 93 14 38 00  	slli	s1, a6, 3
80002d94: b3 86 a4 00  	add	a3, s1, a0
80002d98: 93 0e f9 ff  	addi	t4, s2, -1
80002d9c: 13 94 37 00  	slli	s0, a5, 3
80002da0: 33 05 d4 03  	mul	a0, s0, t4
80002da4: b3 86 a6 00  	add	a3, a3, a0
;             for (int k = 0; k < p; k++){
80002da8: 63 52 e0 18  	blez	a4, 0x80002f2c <matmul+0x1d4>
;     for (int i = 0; i < n; i++){
80002dac: 93 03 f7 ff  	addi	t2, a4, -1
80002db0: 13 93 33 00  	slli	t1, t2, 3
80002db4: b3 08 b3 00  	add	a7, t1, a1
80002db8: 13 1e 37 00  	slli	t3, a4, 3
80002dbc: 33 05 de 03  	mul	a0, t3, t4
80002dc0: b3 8f a8 00  	add	t6, a7, a0
80002dc4: b3 02 74 02  	mul	t0, s0, t2
80002dc8: b3 88 54 00  	add	a7, s1, t0
80002dcc: 33 8f c8 00  	add	t5, a7, a2
80002dd0: b3 b4 b6 00  	sltu	s1, a3, a1
80002dd4: 33 b5 3f 01  	sltu	a0, t6, s3
80002dd8: 33 6a 95 00  	or	s4, a0, s1
80002ddc: b3 b4 c6 00  	sltu	s1, a3, a2
80002de0: 33 35 3f 01  	sltu	a0, t5, s3
80002de4: 33 e5 a4 00  	or	a0, s1, a0
80002de8: 33 7a aa 00  	and	s4, s4, a0
80002dec: 93 d4 49 01  	srli	s1, s3, 20
80002df0: b3 34 90 00  	snez	s1, s1
80002df4: 37 05 12 00  	lui	a0, 288
80002df8: 13 05 15 00  	addi	a0, a0, 1
80002dfc: b3 b6 a6 00  	sltu	a3, a3, a0
80002e00: b3 f6 d4 00  	and	a3, s1, a3
80002e04: 33 fa 46 01  	and	s4, a3, s4
80002e08: 93 d4 45 01  	srli	s1, a1, 20
80002e0c: b3 34 90 00  	snez	s1, s1
80002e10: b3 b6 af 00  	sltu	a3, t6, a0
80002e14: b3 f6 d4 00  	and	a3, s1, a3
80002e18: b3 f6 46 01  	and	a3, a3, s4
80002e1c: 93 54 46 01  	srli	s1, a2, 20
80002e20: b3 34 90 00  	snez	s1, s1
80002e24: 33 35 af 00  	sltu	a0, t5, a0
80002e28: 33 f5 a4 00  	and	a0, s1, a0
80002e2c: 33 75 d5 00  	and	a0, a0, a3
80002e30: 63 0c 05 18  	beqz	a0, 0x80002fc8 <matmul+0x270>
80002e34: 93 06 00 00  	mv	a3, zero
80002e38: 13 0e 80 00  	addi	t3, zero, 8
;     for (int i = 0; i < n; i++){
80002e3c: 93 04 00 04  	addi	s1, zero, 64
80002e40: ab 20 98 00  	scfgw	a6, s1
80002e44: 93 04 00 0c  	addi	s1, zero, 192
80002e48: ab 20 9e 00  	scfgw	t3, s1
80002e4c: 93 04 00 06  	addi	s1, zero, 96
80002e50: ab a0 9e 00  	scfgw	t4, s1
80002e54: 93 04 00 0e  	addi	s1, zero, 224
80002e58: ab 20 9e 00  	scfgw	t3, s1
80002e5c: 93 04 00 02  	addi	s1, zero, 32
80002e60: ab 20 90 00  	scfgw	zero, s1
80002e64: 2b a0 09 3a  	scfgwi	s3, 928
80002e68: 93 04 10 00  	addi	s1, zero, 1
80002e6c: 13 85 04 04  	addi	a0, s1, 64
80002e70: ab a0 a3 00  	scfgw	t2, a0
80002e74: 13 85 04 0c  	addi	a0, s1, 192
80002e78: ab 20 ae 00  	scfgw	t3, a0
80002e7c: 33 03 60 40  	neg	t1, t1
80002e80: 13 85 04 06  	addi	a0, s1, 96
80002e84: ab 20 a8 00  	scfgw	a6, a0
80002e88: 13 85 04 0e  	addi	a0, s1, 224
80002e8c: ab 20 a3 00  	scfgw	t1, a0
80002e90: 13 85 04 08  	addi	a0, s1, 128
80002e94: 13 83 04 10  	addi	t1, s1, 256
80002e98: ab a0 ae 00  	scfgw	t4, a0
80002e9c: ab 20 6e 00  	scfgw	t3, t1
80002ea0: 13 85 04 02  	addi	a0, s1, 32
80002ea4: ab 20 a0 00  	scfgw	zero, a0
80002ea8: 2b a0 15 34  	scfgwi	a1, 833
80002eac: 13 05 20 00  	addi	a0, zero, 2
80002eb0: 93 05 05 04  	addi	a1, a0, 64
80002eb4: 93 04 05 0c  	addi	s1, a0, 192
80002eb8: ab a0 b3 00  	scfgw	t2, a1
80002ebc: ab 20 94 00  	scfgw	s0, s1
80002ec0: b3 05 5e 40  	sub	a1, t3, t0
80002ec4: 93 04 05 06  	addi	s1, a0, 96
80002ec8: 13 04 05 0e  	addi	s0, a0, 224
80002ecc: ab 20 98 00  	scfgw	a6, s1
80002ed0: ab a0 85 00  	scfgw	a1, s0
80002ed4: b3 05 10 41  	neg	a1, a7
80002ed8: 93 04 05 08  	addi	s1, a0, 128
80002edc: 13 04 05 10  	addi	s0, a0, 256
80002ee0: ab a0 9e 00  	scfgw	t4, s1
80002ee4: ab a0 85 00  	scfgw	a1, s0
80002ee8: 13 05 05 02  	addi	a0, a0, 32
80002eec: ab 20 a0 00  	scfgw	zero, a0
80002ef0: 2b 20 26 34  	scfgwi	a2, 834
80002ef4: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002ef8: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002efc: 13 05 00 00  	mv	a0, zero
80002f00: 93 05 07 00  	mv	a1, a4
80002f04: 53 82 31 22  	fmv.d	ft4, ft3
;             for (int k = 0; k < p; k++){
80002f08: 93 85 f5 ff  	addi	a1, a1, -1
;                 c += A[p*i + k] * B[k*m + j];
80002f0c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
;             for (int k = 0; k < p; k++){
80002f10: e3 9c 05 fe  	bnez	a1, 0x80002f08 <matmul+0x1b0>
;             C[m*i + j] = c;
80002f14: 53 00 42 22  	fmv.d	ft0, ft4
;         for (int j = 0; j < m; j++){
80002f18: 13 05 15 00  	addi	a0, a0, 1
80002f1c: e3 12 f5 fe  	bne	a0, a5, 0x80002f00 <matmul+0x1a8>
;     for (int i = 0; i < n; i++){
80002f20: 93 86 16 00  	addi	a3, a3, 1
80002f24: e3 9c 26 fd  	bne	a3, s2, 0x80002efc <matmul+0x1a4>
80002f28: 6f 00 40 07  	j	0x80002f9c <matmul+0x244>
;     for (int i = 0; i < n; i++){
80002f2c: 13 d5 49 01  	srli	a0, s3, 20
80002f30: 33 35 a0 00  	snez	a0, a0
80002f34: b7 05 12 00  	lui	a1, 288
80002f38: 93 85 15 00  	addi	a1, a1, 1
;     for (int i = 0; i < n; i++){
80002f3c: b3 b5 b6 00  	sltu	a1, a3, a1
80002f40: 33 75 b5 00  	and	a0, a0, a1
80002f44: 63 00 05 06  	beqz	a0, 0x80002fa4 <matmul+0x24c>
80002f48: 93 05 00 00  	mv	a1, zero
80002f4c: 13 05 80 00  	addi	a0, zero, 8
;     for (int i = 0; i < n; i++){
80002f50: 13 06 00 04  	addi	a2, zero, 64
80002f54: ab 20 c8 00  	scfgw	a6, a2
80002f58: 13 06 00 0c  	addi	a2, zero, 192
80002f5c: ab 20 c5 00  	scfgw	a0, a2
80002f60: 13 06 00 06  	addi	a2, zero, 96
80002f64: 93 06 00 0e  	addi	a3, zero, 224
80002f68: ab a0 ce 00  	scfgw	t4, a2
80002f6c: ab 20 d5 00  	scfgw	a0, a3
80002f70: 13 05 00 02  	addi	a0, zero, 32
80002f74: ab 20 a0 00  	scfgw	zero, a0
80002f78: 2b a0 09 3a  	scfgwi	s3, 928
80002f7c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002f80: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002f84: 13 85 07 00  	mv	a0, a5
;             C[m*i + j] = c;
80002f88: 53 80 31 22  	fmv.d	ft0, ft3
;         for (int j = 0; j < m; j++){
80002f8c: 13 05 f5 ff  	addi	a0, a0, -1
80002f90: e3 1c 05 fe  	bnez	a0, 0x80002f88 <matmul+0x230>
;     for (int i = 0; i < n; i++){
80002f94: 93 85 15 00  	addi	a1, a1, 1
80002f98: e3 96 25 ff  	bne	a1, s2, 0x80002f84 <matmul+0x22c>
80002f9c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002fa0: 6f 00 00 09  	j	0x80003030 <matmul+0x2d8>
;             C[m*i + j] = c;
80002fa4: 13 85 09 00  	mv	a0, s3
80002fa8: 93 05 00 00  	mv	a1, zero
80002fac: 13 06 04 00  	mv	a2, s0
80002fb0: 97 d0 ff ff  	auipc	ra, 1048573
80002fb4: e7 80 80 5a  	jalr	1448(ra)
;     for (int i = 0; i < n; i++){
80002fb8: 13 09 f9 ff  	addi	s2, s2, -1
80002fbc: b3 89 89 00  	add	s3, s3, s0
80002fc0: e3 12 09 fe  	bnez	s2, 0x80002fa4 <matmul+0x24c>
80002fc4: 6f 00 c0 06  	j	0x80003030 <matmul+0x2d8>
80002fc8: 13 08 00 00  	mv	a6, zero
80002fcc: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002fd0: 13 03 00 00  	mv	t1, zero
80002fd4: b3 08 f8 02  	mul	a7, a6, a5
80002fd8: 93 02 06 00  	mv	t0, a2
80002fdc: 13 85 05 00  	mv	a0, a1
80002fe0: 93 84 02 00  	mv	s1, t0
80002fe4: 93 06 07 00  	mv	a3, a4
80002fe8: 53 82 31 22  	fmv.d	ft4, ft3
;                 c += A[p*i + k] * B[k*m + j];
80002fec: 87 32 05 00  	fld	ft5, 0(a0)
80002ff0: 07 b3 04 00  	fld	ft6, 0(s1)
80002ff4: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;             for (int k = 0; k < p; k++){
80002ff8: 93 86 f6 ff  	addi	a3, a3, -1
80002ffc: b3 84 84 00  	add	s1, s1, s0
80003000: 13 05 85 00  	addi	a0, a0, 8
80003004: e3 94 06 fe  	bnez	a3, 0x80002fec <matmul+0x294>
;             C[m*i + j] = c;
80003008: 33 05 13 01  	add	a0, t1, a7
8000300c: 13 15 35 00  	slli	a0, a0, 3
80003010: 33 85 a9 00  	add	a0, s3, a0
80003014: 27 30 45 00  	fsd	ft4, 0(a0)
;         for (int j = 0; j < m; j++){
80003018: 13 03 13 00  	addi	t1, t1, 1
8000301c: 93 82 82 00  	addi	t0, t0, 8
80003020: e3 1e f3 fa  	bne	t1, a5, 0x80002fdc <matmul+0x284>
;     for (int i = 0; i < n; i++){
80003024: 13 08 18 00  	addi	a6, a6, 1
80003028: b3 85 c5 01  	add	a1, a1, t3
8000302c: e3 12 28 fb  	bne	a6, s2, 0x80002fd0 <matmul+0x278>
;     return;
80003030: 03 2a 81 00  	lw	s4, 8(sp)
80003034: 83 29 c1 00  	lw	s3, 12(sp)
80003038: 03 29 01 01  	lw	s2, 16(sp)
8000303c: 83 24 41 01  	lw	s1, 20(sp)
80003040: 03 24 81 01  	lw	s0, 24(sp)
80003044: 83 20 c1 01  	lw	ra, 28(sp)
80003048: 13 01 01 02  	addi	sp, sp, 32
8000304c: 67 80 00 00  	ret

Disassembly of section .init:

80003050 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80003050: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80003054: 93 81 81 ef  	addi	gp, gp, -264

80003058 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80003058: 97 00 00 00  	auipc	ra, 0
8000305c: e7 80 40 3c  	jalr	964(ra)

80003060 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80003060: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80003064: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80003068: 97 00 00 00  	auipc	ra, 0
8000306c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80003070: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80003074: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80003078: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000307c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80003080: 63 92 02 02  	bnez	t0, 0x800030a4 <snrt.crt0.init_registers>

80003084 <.Lpcrel_hi0>:
;     la        t0, _edata
80003084: 97 12 00 00  	auipc	t0, 1
80003088: 93 82 c2 82  	addi	t0, t0, -2004

8000308c <.Lpcrel_hi1>:
;     la        t1, _end
8000308c: 17 13 00 00  	auipc	t1, 1
80003090: 13 03 83 82  	addi	t1, t1, -2008
;     bge       t0, t1, 2f
80003094: 63 d8 62 00  	bge	t0, t1, 0x800030a4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80003098: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000309c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800030a0: e3 cc 62 fe  	blt	t0, t1, 0x80003098 <.Lpcrel_hi1+0xc>

800030a4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800030a4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800030a8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800030ac: 63 82 02 08  	beqz	t0, 0x80003130 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800030b0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800030b4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800030b8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800030bc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800030c0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800030c4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800030c8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800030cc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800030d0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800030d4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800030d8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800030dc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800030e0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800030e4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800030e8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800030ec: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800030f0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800030f4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800030f8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800030fc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80003100: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80003104: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80003108: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000310c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80003110: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80003114: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80003118: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000311c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80003120: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80003124: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80003128: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000312c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80003130 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80003130: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80003134: 23 a0 06 00  	sw	zero, 0(a3)

80003138 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80003138: 97 02 00 00  	auipc	t0, 0
8000313c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003140: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003144: 93 87 06 00  	mv	a5, a3

80003148 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003148: 97 03 00 00  	auipc	t2, 0
8000314c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003150: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003154: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003158: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000315c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003160: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003164: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003168: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000316c: b3 86 66 40  	sub	a3, a3, t1

80003170 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003170: 97 02 00 00  	auipc	t0, 0
80003174: 93 82 82 5d  	addi	t0, t0, 1496

80003178 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003178: 17 03 00 00  	auipc	t1, 0
8000317c: 13 03 03 5d  	addi	t1, t1, 1488

80003180 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80003180: 97 03 00 00  	auipc	t2, 0
80003184: 93 83 83 5c  	addi	t2, t2, 1480

80003188 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80003188: 17 0e 00 00  	auipc	t3, 0
8000318c: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003190: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003194: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003198: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000319c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800031a0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800031a4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800031a8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800031ac: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800031b0: 63 dc 62 00  	bge	t0, t1, 0x800031c8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800031b4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800031b8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800031bc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800031c0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800031c4: e3 c8 62 fe  	blt	t0, t1, 0x800031b4 <.Lpcrel_hi7+0x2c>

800031c8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800031c8: 97 02 00 00  	auipc	t0, 0
800031cc: 93 82 02 58  	addi	t0, t0, 1408

800031d0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
800031d0: 17 03 00 00  	auipc	t1, 0
800031d4: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
800031d8: 63 da 62 00  	bge	t0, t1, 0x800031ec <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
800031dc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800031e0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800031e4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800031e8: e3 ca 72 fe  	blt	t0, t2, 0x800031dc <.Lpcrel_hi9+0xc>

800031ec <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800031ec: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800031f0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800031f4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800031f8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800031fc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80003200: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80003204: 97 00 00 00  	auipc	ra, 0
80003208: e7 80 c0 8e  	jalr	-1812(ra)
;     lw        a0, 0(sp)
8000320c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80003210: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80003214: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80003218: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000321c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80003220: 13 01 41 01  	addi	sp, sp, 20

80003224 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80003224: 97 02 00 00  	auipc	t0, 0
80003228: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000322c: 73 90 52 30  	csrw	mtvec, t0

80003230 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80003230: 97 00 00 00  	auipc	ra, 0
80003234: e7 80 00 22  	jalr	544(ra)

80003238 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80003238: 97 d0 ff ff  	auipc	ra, 1048573
8000323c: e7 80 c0 3f  	jalr	1020(ra)
;     mv        s0, a0 # store return value in s0
80003240: 13 04 05 00  	mv	s0, a0

80003244 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003244: 97 00 00 00  	auipc	ra, 0
80003248: e7 80 c0 20  	jalr	524(ra)

8000324c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000324c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003250: 97 00 00 00  	auipc	ra, 0
80003254: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003258: 73 00 50 10  	wfi	
;     j       1b
8000325c: 6f f0 df ff  	j	0x80003258 <snrt.crt0.end+0xc>

80003260 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003260: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003264: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003268: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000326c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003270: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003274: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003278: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000327c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80003280: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80003284: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80003288: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000328c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003290: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003294: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003298: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000329c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800032a0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800032a4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800032a8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800032ac: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800032b0: 63 84 02 08  	beqz	t0, 0x80003338 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800032b4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800032b8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800032bc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800032c0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800032c4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800032c8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800032cc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800032d0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800032d4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800032d8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800032dc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800032e0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800032e4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800032e8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800032ec: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800032f0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800032f4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800032f8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800032fc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80003300: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80003304: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80003308: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000330c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80003310: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80003314: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80003318: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000331c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003320: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003324: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003328: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000332c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003330: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003334: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003338: 97 00 00 00  	auipc	ra, 0
8000333c: e7 80 80 95  	jalr	-1704(ra)
;     csrr    t0, misa
80003340: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003344: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003348: 63 84 02 08  	beqz	t0, 0x800033d0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000334c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003350: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003354: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003358: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000335c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003360: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003364: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003368: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000336c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003370: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003374: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003378: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000337c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003380: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003384: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003388: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000338c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003390: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003394: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003398: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000339c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800033a0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800033a4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800033a8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800033ac: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800033b0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800033b4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800033b8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800033bc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800033c0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800033c4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800033c8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800033cc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
800033d0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
800033d4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
800033d8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
800033dc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800033e0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800033e4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800033e8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800033ec: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800033f0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800033f4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800033f8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800033fc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003400: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003404: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003408: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000340c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003410: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003414: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003418: 73 00 20 30  	mret	

8000341c <_snrt_init_core_info>:
;     mv        a4, a1
8000341c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003420: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003424: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003428: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000342c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003430: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003434: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003438: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000343c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003440: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003444: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003448: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000344c: 67 80 00 00  	ret

80003450 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003450: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003454: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003458: 97 00 00 00  	auipc	ra, 0
8000345c: e7 80 00 82  	jalr	-2016(ra)
;     lw        a0, 0(a0)
80003460: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003464: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003468: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000346c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003470: 67 80 00 00  	ret

80003474 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003474: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003478: 67 80 00 00  	ret

8000347c <_snrt_exit>:
;     addi      sp, sp, -8
8000347c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003480: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003484: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003488: 97 f0 ff ff  	auipc	ra, 1048575
8000348c: e7 80 00 7d  	jalr	2000(ra)
;     lw        t0, 0(sp)
80003490: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003494: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003498: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000349c: 63 1c 05 00  	bnez	a0, 0x800034b4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800034a0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800034a4: 93 e2 12 00  	ori	t0, t0, 1

800034a8 <.Lpcrel_hi11>:
;     la        t1, tohost
800034a8: 17 03 00 00  	auipc	t1, 0
800034ac: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
800034b0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800034b4: 67 80 00 00  	ret
