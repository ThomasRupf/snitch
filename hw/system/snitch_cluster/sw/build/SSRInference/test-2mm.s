
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-2mm:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             0000390c 80000000 TEXT
  2 .init             00000468 80003910 TEXT
  3 .rodata           00000238 80003d78 DATA
  4 .htif             00000048 80003fc0 DATA
  5 .tdata            00000000 80004008 DATA
  6 .tbss             00000010 80004008 BSS
  7 .tbssend          00000000 80004018 DATA
  8 .sdata            000000e8 80004018 DATA
  9 .data             00000000 80004100 DATA
 10 .sbss             00000004 80004100 BSS
 11 .bss              00000000 80004104 BSS
 12 .dram             00000000 80004104 DATA
 13 .debug_info       000036e7 00000000 
 14 .debug_abbrev     00000bef 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       0000312d 00000000 
 17 .debug_loc        000039b8 00000000 
 18 .debug_str        00000b05 00000000 
 19 .comment          00000029 00000000 
 20 .riscv.attributes 00000037 00000000 
 21 .debug_frame      000002b8 00000000 
 22 .debug_ranges     00000330 00000000 
 23 .symtab           000032c0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000094c 00000000 


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
8000067c: 37 05 00 00  	lui	a0, 0
80000680: 33 05 45 00  	add	a0, a0, tp
80000684: 83 25 45 00  	lw	a1, 4(a0)
80000688: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000068c: 63 84 05 00  	beqz	a1, 0x80000694 <main+0x60>
80000690: 6f 10 40 37  	j	0x80001a04 <.LBB0_45+0x10>
;     return _snrt_team_current->root;
80000694: 37 05 00 00  	lui	a0, 0
80000698: 33 05 45 00  	add	a0, a0, tp
8000069c: 03 25 05 00  	lw	a0, 0(a0)
800006a0: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006a4: 83 27 85 05  	lw	a5, 88(a0)
800006a8: 83 25 05 05  	lw	a1, 80(a0)
800006ac: 03 27 45 05  	lw	a4, 84(a0)
800006b0: 37 16 00 00  	lui	a2, 1
800006b4: 13 06 06 90  	addi	a2, a2, -1792
800006b8: b3 86 c7 00  	add	a3, a5, a2
800006bc: b3 05 b7 00  	add	a1, a4, a1
800006c0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006cc <main+0x98>
800006c4: 93 0c 00 00  	mv	s9, zero
800006c8: 6f 00 00 01  	j	0x800006d8 <main+0xa4>
;     alloc->next += size;
800006cc: 23 2c d5 04  	sw	a3, 88(a0)
800006d0: 93 8c 07 00  	mv	s9, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d4: 93 87 06 00  	mv	a5, a3
800006d8: b3 06 f6 00  	add	a3, a2, a5
800006dc: 93 86 06 20  	addi	a3, a3, 512
800006e0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006ec <main+0xb8>
800006e4: 23 22 01 02  	sw	zero, 36(sp)
800006e8: 6f 00 00 01  	j	0x800006f8 <main+0xc4>
;     alloc->next += size;
800006ec: 23 2c d5 04  	sw	a3, 88(a0)
800006f0: 23 22 f1 02  	sw	a5, 36(sp)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f4: 93 87 06 00  	mv	a5, a3
800006f8: b3 06 f6 00  	add	a3, a2, a5
800006fc: 93 86 06 36  	addi	a3, a3, 864
80000700: 63 f6 d5 00  	bgeu	a1, a3, 0x8000070c <main+0xd8>
80000704: 93 0d 00 00  	mv	s11, zero
80000708: 6f 00 00 01  	j	0x80000718 <main+0xe4>
;     alloc->next += size;
8000070c: 23 2c d5 04  	sw	a3, 88(a0)
80000710: 93 8d 07 00  	mv	s11, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000714: 93 87 06 00  	mv	a5, a3
80000718: b3 06 f6 00  	add	a3, a2, a5
8000071c: 93 86 06 48  	addi	a3, a3, 1152
80000720: 63 f6 d5 00  	bgeu	a1, a3, 0x8000072c <main+0xf8>
80000724: 13 0d 00 00  	mv	s10, zero
80000728: 6f 00 00 01  	j	0x80000738 <main+0x104>
;     alloc->next += size;
8000072c: 23 2c d5 04  	sw	a3, 88(a0)
80000730: 13 8d 07 00  	mv	s10, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000734: 93 87 06 00  	mv	a5, a3
80000738: 33 06 f6 00  	add	a2, a2, a5
8000073c: 13 06 06 30  	addi	a2, a2, 768
80000740: 63 f6 c5 00  	bgeu	a1, a2, 0x8000074c <main+0x118>
80000744: 23 28 01 00  	sw	zero, 16(sp)
80000748: 6f 00 c0 00  	j	0x80000754 <main+0x120>
8000074c: 23 28 f1 00  	sw	a5, 16(sp)
;     alloc->next += size;
80000750: 23 2c c5 04  	sw	a2, 88(a0)
80000754: 13 08 00 00  	mv	a6, zero
80000758: 93 08 00 00  	mv	a7, zero
8000075c: 93 02 00 00  	mv	t0, zero
80000760: 93 0e 00 00  	mv	t4, zero
80000764: 13 0f 00 00  	mv	t5, zero
80000768: 93 0f 00 00  	mv	t6, zero
8000076c: 13 09 00 00  	mv	s2, zero
80000770: 93 09 00 00  	mv	s3, zero
80000774: 13 0a 00 00  	mv	s4, zero
;   for (i = 0; i < ni; i++)
80000778: 03 25 41 02  	lw	a0, 36(sp)
8000077c: 93 05 85 05  	addi	a1, a0, 88
80000780: 93 0a 10 00  	addi	s5, zero, 1
80000784: b7 03 b0 3f  	lui	t2, 260864

80000788 <.LBB0_36>:
80000788: 17 45 00 00  	auipc	a0, 4
8000078c: 13 05 05 89  	addi	a0, a0, -1904
80000790: 07 30 05 00  	fld	ft0, 0(a0)
80000794: 13 0e 10 15  	addi	t3, zero, 337
80000798: 13 0b 10 00  	addi	s6, zero, 1
8000079c: 93 0b 10 00  	addi	s7, zero, 1
800007a0: 13 0c 10 00  	addi	s8, zero, 1
800007a4: 13 03 10 00  	addi	t1, zero, 1
800007a8: 13 04 10 00  	addi	s0, zero, 1
800007ac: 13 05 10 00  	addi	a0, zero, 1
800007b0: 13 06 10 00  	addi	a2, zero, 1
800007b4: 93 06 10 00  	addi	a3, zero, 1
800007b8: 13 07 10 00  	addi	a4, zero, 1
800007bc: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
800007c0: 23 a6 75 fa  	sw	t2, -84(a1)
800007c4: 23 a4 05 fa  	sw	zero, -88(a1)
800007c8: 93 f4 f7 00  	andi	s1, a5, 15
800007cc: d3 80 04 d2  	fcvt.d.w	ft1, s1
800007d0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800007d4: 27 b8 15 fa  	fsd	ft1, -80(a1)
800007d8: 93 f4 e9 00  	andi	s1, s3, 14
800007dc: 93 e4 14 00  	ori	s1, s1, 1
800007e0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800007e4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800007e8: 27 bc 15 fa  	fsd	ft1, -72(a1)
800007ec: 93 74 f6 00  	andi	s1, a2, 15
800007f0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800007f4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800007f8: 27 b0 15 fc  	fsd	ft1, -64(a1)
800007fc: 93 f4 cf 00  	andi	s1, t6, 12
80000800: 93 e4 14 00  	ori	s1, s1, 1
80000804: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000808: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000080c: 27 b4 15 fc  	fsd	ft1, -56(a1)
80000810: 93 74 f4 00  	andi	s1, s0, 15
80000814: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000818: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000081c: 27 b8 15 fc  	fsd	ft1, -48(a1)
80000820: 93 74 ef 00  	andi	s1, t5, 14
80000824: 93 e4 14 00  	ori	s1, s1, 1
80000828: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000082c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000830: 27 bc 15 fc  	fsd	ft1, -40(a1)
80000834: 93 74 fc 00  	andi	s1, s8, 15
80000838: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000083c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000840: 27 b0 15 fe  	fsd	ft1, -32(a1)
80000844: 93 f4 82 00  	andi	s1, t0, 8
80000848: 93 e4 14 00  	ori	s1, s1, 1
8000084c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000850: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000854: 27 b4 15 fe  	fsd	ft1, -24(a1)
80000858: 93 74 fb 00  	andi	s1, s6, 15
8000085c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000860: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000864: 27 b8 15 fe  	fsd	ft1, -16(a1)
80000868: 93 74 e8 00  	andi	s1, a6, 14
8000086c: 93 e4 14 00  	ori	s1, s1, 1
80000870: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000874: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000878: 27 bc 15 fe  	fsd	ft1, -8(a1)
8000087c: 93 f4 fa 00  	andi	s1, s5, 15
80000880: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000884: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000888: 27 b0 15 00  	fsd	ft1, 0(a1)
8000088c: 93 f4 c8 00  	andi	s1, a7, 12
80000890: 93 e4 14 00  	ori	s1, s1, 1
80000894: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000898: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000089c: 27 b4 15 00  	fsd	ft1, 8(a1)
800008a0: 93 f4 fb 00  	andi	s1, s7, 15
800008a4: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008a8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008ac: 27 b8 15 00  	fsd	ft1, 16(a1)
800008b0: 93 f4 ee 00  	andi	s1, t4, 14
800008b4: 93 e4 14 00  	ori	s1, s1, 1
800008b8: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008bc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008c0: 27 bc 15 00  	fsd	ft1, 24(a1)
800008c4: 93 74 f3 00  	andi	s1, t1, 15
800008c8: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008cc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008d0: 27 b0 15 02  	fsd	ft1, 32(a1)
800008d4: 23 a6 75 02  	sw	t2, 44(a1)
800008d8: 23 a4 05 02  	sw	zero, 40(a1)
800008dc: 93 74 f5 00  	andi	s1, a0, 15
800008e0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008e4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008e8: 27 b8 15 02  	fsd	ft1, 48(a1)
800008ec: 93 74 e9 00  	andi	s1, s2, 14
800008f0: 93 e4 14 00  	ori	s1, s1, 1
800008f4: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008f8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008fc: 27 bc 15 02  	fsd	ft1, 56(a1)
80000900: 93 f4 f6 00  	andi	s1, a3, 15
80000904: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000908: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000090c: 27 b0 15 04  	fsd	ft1, 64(a1)
80000910: 93 74 ca 00  	andi	s1, s4, 12
80000914: 93 e4 14 00  	ori	s1, s1, 1
80000918: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000091c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000920: 27 b4 15 04  	fsd	ft1, 72(a1)
80000924: 93 74 f7 00  	andi	s1, a4, 15
80000928: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000092c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000930: 27 b8 15 04  	fsd	ft1, 80(a1)
;   for (i = 0; i < ni; i++)
80000934: 93 87 17 00  	addi	a5, a5, 1
80000938: 13 07 57 01  	addi	a4, a4, 21
8000093c: 13 0a 4a 01  	addi	s4, s4, 20
80000940: 93 89 29 00  	addi	s3, s3, 2
80000944: 93 86 36 01  	addi	a3, a3, 19
80000948: 13 06 36 00  	addi	a2, a2, 3
8000094c: 13 09 29 01  	addi	s2, s2, 18
80000950: 93 8f 4f 00  	addi	t6, t6, 4
80000954: 13 05 15 01  	addi	a0, a0, 17
80000958: 13 04 54 00  	addi	s0, s0, 5
8000095c: 13 0f 6f 00  	addi	t5, t5, 6
80000960: 13 03 f3 00  	addi	t1, t1, 15
80000964: 13 0c 7c 00  	addi	s8, s8, 7
80000968: 93 8e ee 00  	addi	t4, t4, 14
8000096c: 93 82 82 00  	addi	t0, t0, 8
80000970: 93 8b db 00  	addi	s7, s7, 13
80000974: 13 0b 9b 00  	addi	s6, s6, 9
80000978: 93 88 c8 00  	addi	a7, a7, 12
8000097c: 93 85 05 0b  	addi	a1, a1, 176
80000980: 93 8a ba 00  	addi	s5, s5, 11
80000984: 13 08 a8 00  	addi	a6, a6, 10
80000988: e3 1c c7 e3  	bne	a4, t3, 0x800007c0 <.LBB0_36+0x38>
8000098c: 23 26 91 01  	sw	s9, 12(sp)
80000990: 13 08 00 00  	mv	a6, zero
80000994: 93 08 00 00  	mv	a7, zero
80000998: 93 02 00 00  	mv	t0, zero
8000099c: 93 03 00 00  	mv	t2, zero
800009a0: 13 0e 00 00  	mv	t3, zero
800009a4: 93 0e 00 00  	mv	t4, zero
800009a8: 13 0f 00 00  	mv	t5, zero
800009ac: 93 0f 00 00  	mv	t6, zero
800009b0: 13 09 00 00  	mv	s2, zero
800009b4: 93 09 00 00  	mv	s3, zero
800009b8: 13 0a 00 00  	mv	s4, zero
800009bc: 93 0a 00 00  	mv	s5, zero
800009c0: 13 03 00 00  	mv	t1, zero
800009c4: 93 07 00 00  	mv	a5, zero
800009c8: 93 04 00 00  	mv	s1, zero
800009cc: 13 04 00 00  	mv	s0, zero
800009d0: 13 05 00 00  	mv	a0, zero
800009d4: 23 2e b1 01  	sw	s11, 28(sp)
;   for (i = 0; i < nk; i++)
800009d8: 93 85 8d 04  	addi	a1, s11, 72
800009dc: 37 96 e3 38  	lui	a2, 233017
800009e0: 13 06 96 e3  	addi	a2, a2, -455
800009e4: 93 06 20 01  	addi	a3, zero, 18
800009e8: 13 0b e0 fe  	addi	s6, zero, -18
800009ec: 93 0b 60 17  	addi	s7, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
800009f0: 33 37 c5 02  	mulhu	a4, a0, a2
800009f4: 13 57 27 00  	srli	a4, a4, 2
800009f8: 33 07 d7 02  	mul	a4, a4, a3
800009fc: 33 07 e5 40  	sub	a4, a0, a4
80000a00: d3 00 07 d2  	fcvt.d.w	ft1, a4

80000a04 <.LBB0_37>:
80000a04: 17 37 00 00  	auipc	a4, 3
80000a08: 13 07 c7 61  	addi	a4, a4, 1564
80000a0c: 07 30 07 00  	fld	ft0, 0(a4)
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000a10: 33 b7 c4 02  	mulhu	a4, s1, a2
80000a14: 13 57 27 00  	srli	a4, a4, 2
80000a18: 33 07 d7 02  	mul	a4, a4, a3
80000a1c: 33 87 e4 40  	sub	a4, s1, a4
80000a20: 53 01 07 d2  	fcvt.d.w	ft2, a4
80000a24: 33 b7 c7 02  	mulhu	a4, a5, a2
80000a28: 13 57 27 00  	srli	a4, a4, 2
80000a2c: 33 07 d7 02  	mul	a4, a4, a3
80000a30: 33 87 e7 40  	sub	a4, a5, a4
80000a34: d3 01 07 d2  	fcvt.d.w	ft3, a4
80000a38: 33 b7 ca 02  	mulhu	a4, s5, a2
80000a3c: 13 57 27 00  	srli	a4, a4, 2
80000a40: 33 07 d7 02  	mul	a4, a4, a3
80000a44: 33 87 ea 40  	sub	a4, s5, a4
80000a48: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a4c: 33 b7 c9 02  	mulhu	a4, s3, a2
80000a50: 13 57 27 00  	srli	a4, a4, 2
80000a54: 33 07 d7 02  	mul	a4, a4, a3
80000a58: 33 87 e9 40  	sub	a4, s3, a4
80000a5c: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000a60: 33 b7 cf 02  	mulhu	a4, t6, a2
80000a64: 13 57 27 00  	srli	a4, a4, 2
80000a68: 33 07 d7 02  	mul	a4, a4, a3
80000a6c: 33 87 ef 40  	sub	a4, t6, a4
80000a70: 53 03 07 d2  	fcvt.d.w	ft6, a4
80000a74: 33 b7 ce 02  	mulhu	a4, t4, a2
80000a78: 13 57 27 00  	srli	a4, a4, 2
80000a7c: 33 07 d7 02  	mul	a4, a4, a3
80000a80: 33 87 ee 40  	sub	a4, t4, a4
80000a84: d3 03 07 d2  	fcvt.d.w	ft7, a4
80000a88: 33 b7 c3 02  	mulhu	a4, t2, a2
80000a8c: 13 57 27 00  	srli	a4, a4, 2
80000a90: 33 07 d7 02  	mul	a4, a4, a3
80000a94: 33 87 e3 40  	sub	a4, t2, a4
80000a98: 53 05 07 d2  	fcvt.d.w	fa0, a4
80000a9c: 33 37 c8 02  	mulhu	a4, a6, a2
80000aa0: 13 57 27 00  	srli	a4, a4, 2
80000aa4: 33 07 d7 02  	mul	a4, a4, a3
80000aa8: 33 07 e8 40  	sub	a4, a6, a4
80000aac: d3 05 07 d2  	fcvt.d.w	fa1, a4
80000ab0: 33 b7 c8 02  	mulhu	a4, a7, a2
80000ab4: 13 57 27 00  	srli	a4, a4, 2
80000ab8: 33 07 d7 02  	mul	a4, a4, a3
80000abc: 33 87 e8 40  	sub	a4, a7, a4
80000ac0: 53 06 07 d2  	fcvt.d.w	fa2, a4
80000ac4: 33 b7 c2 02  	mulhu	a4, t0, a2
80000ac8: 13 57 27 00  	srli	a4, a4, 2
80000acc: 33 07 d7 02  	mul	a4, a4, a3
80000ad0: 33 87 e2 40  	sub	a4, t0, a4
80000ad4: d3 06 07 d2  	fcvt.d.w	fa3, a4
80000ad8: 33 37 ce 02  	mulhu	a4, t3, a2
80000adc: 13 57 27 00  	srli	a4, a4, 2
80000ae0: 33 07 d7 02  	mul	a4, a4, a3
80000ae4: 33 07 ee 40  	sub	a4, t3, a4
80000ae8: 53 07 07 d2  	fcvt.d.w	fa4, a4
80000aec: 33 37 cf 02  	mulhu	a4, t5, a2
80000af0: 13 57 27 00  	srli	a4, a4, 2
80000af4: 33 07 d7 02  	mul	a4, a4, a3
80000af8: 33 07 ef 40  	sub	a4, t5, a4
80000afc: d3 07 07 d2  	fcvt.d.w	fa5, a4
80000b00: 33 37 c9 02  	mulhu	a4, s2, a2
80000b04: 13 57 27 00  	srli	a4, a4, 2
80000b08: 33 07 d7 02  	mul	a4, a4, a3
80000b0c: 33 07 e9 40  	sub	a4, s2, a4
80000b10: 53 08 07 d2  	fcvt.d.w	fa6, a4
80000b14: 33 37 ca 02  	mulhu	a4, s4, a2
80000b18: 13 57 27 00  	srli	a4, a4, 2
80000b1c: 33 07 d7 02  	mul	a4, a4, a3
80000b20: 33 07 ea 40  	sub	a4, s4, a4
80000b24: d3 08 07 d2  	fcvt.d.w	fa7, a4
80000b28: 33 37 c3 02  	mulhu	a4, t1, a2
80000b2c: 13 57 27 00  	srli	a4, a4, 2
80000b30: 33 07 d7 02  	mul	a4, a4, a3
80000b34: 33 07 e3 40  	sub	a4, t1, a4
80000b38: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80000b3c: 33 37 c4 02  	mulhu	a4, s0, a2
80000b40: 13 57 27 00  	srli	a4, a4, 2
80000b44: 33 07 67 03  	mul	a4, a4, s6
80000b48: 33 07 e4 00  	add	a4, s0, a4
80000b4c: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80000b50: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b54: 27 bc 15 fa  	fsd	ft1, -72(a1)
80000b58: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80000b5c: 27 b0 15 fc  	fsd	ft1, -64(a1)
80000b60: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80000b64: 27 b4 15 fc  	fsd	ft1, -56(a1)
80000b68: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80000b6c: 27 b8 15 fc  	fsd	ft1, -48(a1)
80000b70: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80000b74: 27 bc 15 fc  	fsd	ft1, -40(a1)
80000b78: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80000b7c: 27 b0 15 fe  	fsd	ft1, -32(a1)
80000b80: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80000b84: 27 b4 15 fe  	fsd	ft1, -24(a1)
80000b88: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80000b8c: 27 b8 15 fe  	fsd	ft1, -16(a1)
80000b90: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80000b94: 27 bc 15 fe  	fsd	ft1, -8(a1)
80000b98: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80000b9c: 27 b0 15 00  	fsd	ft1, 0(a1)
80000ba0: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80000ba4: 27 b4 15 00  	fsd	ft1, 8(a1)
80000ba8: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80000bac: 27 b8 15 00  	fsd	ft1, 16(a1)
80000bb0: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80000bb4: 27 bc 15 00  	fsd	ft1, 24(a1)
80000bb8: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80000bbc: 27 b0 15 02  	fsd	ft1, 32(a1)
80000bc0: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80000bc4: 27 b4 15 02  	fsd	ft1, 40(a1)
80000bc8: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80000bcc: 27 b8 15 02  	fsd	ft1, 48(a1)
80000bd0: 53 f0 0e 12  	fmul.d	ft0, ft9, ft0
80000bd4: 27 bc 05 02  	fsd	ft0, 56(a1)
80000bd8: 23 a2 05 04  	sw	zero, 68(a1)
80000bdc: 23 a0 05 04  	sw	zero, 64(a1)
;   for (i = 0; i < nk; i++)
80000be0: 13 05 15 00  	addi	a0, a0, 1
80000be4: 13 04 14 01  	addi	s0, s0, 17
80000be8: 93 84 24 00  	addi	s1, s1, 2
80000bec: 93 87 37 00  	addi	a5, a5, 3
80000bf0: 13 03 03 01  	addi	t1, t1, 16
80000bf4: 93 8a 4a 00  	addi	s5, s5, 4
80000bf8: 13 0a fa 00  	addi	s4, s4, 15
80000bfc: 93 89 59 00  	addi	s3, s3, 5
80000c00: 13 09 e9 00  	addi	s2, s2, 14
80000c04: 93 8f 6f 00  	addi	t6, t6, 6
80000c08: 13 0f df 00  	addi	t5, t5, 13
80000c0c: 93 8e 7e 00  	addi	t4, t4, 7
80000c10: 13 0e ce 00  	addi	t3, t3, 12
80000c14: 93 83 83 00  	addi	t2, t2, 8
80000c18: 93 82 b2 00  	addi	t0, t0, 11
80000c1c: 93 85 05 09  	addi	a1, a1, 144
80000c20: 93 88 a8 00  	addi	a7, a7, 10
80000c24: 13 08 98 00  	addi	a6, a6, 9
80000c28: e3 14 74 dd  	bne	s0, s7, 0x800009f0 <.LBB0_36+0x268>
80000c2c: 23 26 01 06  	sw	zero, 108(sp)
80000c30: 23 24 01 06  	sw	zero, 104(sp)
80000c34: 23 22 01 06  	sw	zero, 100(sp)
80000c38: 23 2e 01 06  	sw	zero, 124(sp)
80000c3c: 93 07 00 00  	mv	a5, zero
80000c40: 23 20 a1 03  	sw	s10, 32(sp)
;   for (i = 0; i < nj; i++)
80000c44: 93 05 0d 06  	addi	a1, s10, 96
80000c48: 13 06 10 00  	addi	a2, zero, 1
80000c4c: 37 b5 aa aa  	lui	a0, 699051
80000c50: 93 06 b5 aa  	addi	a3, a0, -1365
80000c54: 13 0d 80 01  	addi	s10, zero, 24
80000c58: 37 55 a5 3f  	lui	a0, 260693
80000c5c: 13 05 55 55  	addi	a0, a0, 1365
80000c60: 23 2c a1 00  	sw	a0, 24(sp)
80000c64: 37 55 55 55  	lui	a0, 349525
80000c68: 13 05 55 55  	addi	a0, a0, 1365
80000c6c: 23 2a a1 00  	sw	a0, 20(sp)
80000c70: 13 05 10 00  	addi	a0, zero, 1
80000c74: 13 07 10 00  	addi	a4, zero, 1
80000c78: 93 09 10 00  	addi	s3, zero, 1
80000c7c: 93 04 10 00  	addi	s1, zero, 1
80000c80: 23 20 91 06  	sw	s1, 96(sp)
80000c84: 93 04 10 00  	addi	s1, zero, 1
80000c88: 13 04 10 00  	addi	s0, zero, 1
80000c8c: 23 2e 81 04  	sw	s0, 92(sp)
80000c90: 13 04 10 00  	addi	s0, zero, 1
80000c94: 23 2c 81 04  	sw	s0, 88(sp)
80000c98: 13 04 10 00  	addi	s0, zero, 1
80000c9c: 23 2a 81 04  	sw	s0, 84(sp)
80000ca0: 13 04 10 00  	addi	s0, zero, 1
80000ca4: 23 28 81 04  	sw	s0, 80(sp)
80000ca8: 13 04 10 00  	addi	s0, zero, 1
80000cac: 23 26 81 04  	sw	s0, 76(sp)
80000cb0: 13 04 10 00  	addi	s0, zero, 1
80000cb4: 23 24 81 04  	sw	s0, 72(sp)
80000cb8: 13 04 10 00  	addi	s0, zero, 1
80000cbc: 23 22 81 04  	sw	s0, 68(sp)
80000cc0: 93 03 10 00  	addi	t2, zero, 1
80000cc4: 13 04 10 00  	addi	s0, zero, 1
80000cc8: 23 20 81 04  	sw	s0, 64(sp)
80000ccc: 13 04 10 00  	addi	s0, zero, 1
80000cd0: 23 2e 81 02  	sw	s0, 60(sp)
80000cd4: 13 04 10 00  	addi	s0, zero, 1
80000cd8: 23 2c 81 02  	sw	s0, 56(sp)
80000cdc: 13 04 10 00  	addi	s0, zero, 1
80000ce0: 23 2c 81 06  	sw	s0, 120(sp)
80000ce4: 13 04 10 00  	addi	s0, zero, 1
80000ce8: 23 2a 81 02  	sw	s0, 52(sp)
80000cec: 13 04 10 00  	addi	s0, zero, 1
80000cf0: 23 28 81 02  	sw	s0, 48(sp)
80000cf4: 13 04 10 00  	addi	s0, zero, 1
80000cf8: 23 2a 81 06  	sw	s0, 116(sp)
80000cfc: 93 0d 10 00  	addi	s11, zero, 1
80000d00: 13 04 10 00  	addi	s0, zero, 1
80000d04: 23 26 81 02  	sw	s0, 44(sp)
80000d08: 23 24 71 02  	sw	t2, 40(sp)
80000d0c: 23 28 f1 06  	sw	a5, 112(sp)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000d10: 83 27 01 07  	lw	a5, 112(sp)
80000d14: b3 b7 d7 02  	mulhu	a5, a5, a3
80000d18: 93 d7 47 00  	srli	a5, a5, 4
80000d1c: b3 87 a7 03  	mul	a5, a5, s10
80000d20: b3 87 fd 40  	sub	a5, s11, a5
80000d24: d3 80 07 d2  	fcvt.d.w	ft1, a5

80000d28 <.LBB0_38>:
80000d28: 97 37 00 00  	auipc	a5, 3
80000d2c: 93 87 07 30  	addi	a5, a5, 768
80000d30: 07 b0 07 00  	fld	ft0, 0(a5)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000d34: 83 27 c1 07  	lw	a5, 124(sp)
80000d38: b3 b7 d7 02  	mulhu	a5, a5, a3
80000d3c: 93 d7 47 00  	srli	a5, a5, 4
80000d40: b3 87 a7 03  	mul	a5, a5, s10
80000d44: 03 24 41 07  	lw	s0, 116(sp)
80000d48: b3 07 f4 40  	sub	a5, s0, a5
80000d4c: 53 81 07 d2  	fcvt.d.w	ft2, a5
80000d50: 83 2f 41 03  	lw	t6, 52(sp)
80000d54: b3 b7 df 02  	mulhu	a5, t6, a3
80000d58: 93 d7 47 00  	srli	a5, a5, 4
80000d5c: b3 87 a7 03  	mul	a5, a5, s10
80000d60: b3 87 ff 40  	sub	a5, t6, a5
80000d64: d3 81 07 d2  	fcvt.d.w	ft3, a5
80000d68: 83 2e 41 06  	lw	t4, 100(sp)
80000d6c: b3 b7 de 02  	mulhu	a5, t4, a3
80000d70: 93 d7 47 00  	srli	a5, a5, 4
80000d74: b3 87 a7 03  	mul	a5, a5, s10
80000d78: 03 24 81 07  	lw	s0, 120(sp)
80000d7c: b3 07 f4 40  	sub	a5, s0, a5
80000d80: 53 82 07 d2  	fcvt.d.w	ft4, a5
80000d84: 03 2e c1 03  	lw	t3, 60(sp)
80000d88: b3 37 de 02  	mulhu	a5, t3, a3
80000d8c: 93 d7 47 00  	srli	a5, a5, 4
80000d90: b3 87 a7 03  	mul	a5, a5, s10
80000d94: b3 07 fe 40  	sub	a5, t3, a5
80000d98: d3 82 07 d2  	fcvt.d.w	ft5, a5
80000d9c: 03 2b 81 06  	lw	s6, 104(sp)
80000da0: b3 37 db 02  	mulhu	a5, s6, a3
80000da4: 93 d7 47 00  	srli	a5, a5, 4
80000da8: b3 87 a7 03  	mul	a5, a5, s10
80000dac: b3 87 f3 40  	sub	a5, t2, a5
80000db0: 53 83 07 d2  	fcvt.d.w	ft6, a5
80000db4: 03 29 81 04  	lw	s2, 72(sp)
80000db8: b3 37 d9 02  	mulhu	a5, s2, a3
80000dbc: 93 d7 47 00  	srli	a5, a5, 4
80000dc0: b3 87 a7 03  	mul	a5, a5, s10
80000dc4: b3 07 f9 40  	sub	a5, s2, a5
80000dc8: d3 83 07 d2  	fcvt.d.w	ft7, a5
80000dcc: 83 2c 01 05  	lw	s9, 80(sp)
80000dd0: b3 b7 dc 02  	mulhu	a5, s9, a3
80000dd4: 93 d7 47 00  	srli	a5, a5, 4
80000dd8: b3 87 a7 03  	mul	a5, a5, s10
80000ddc: b3 87 fc 40  	sub	a5, s9, a5
80000de0: 53 85 07 d2  	fcvt.d.w	fa0, a5
80000de4: 83 22 81 05  	lw	t0, 88(sp)
80000de8: b3 b7 d2 02  	mulhu	a5, t0, a3
80000dec: 93 d7 47 00  	srli	a5, a5, 4
80000df0: b3 87 a7 03  	mul	a5, a5, s10
80000df4: b3 87 f2 40  	sub	a5, t0, a5
80000df8: d3 85 07 d2  	fcvt.d.w	fa1, a5
80000dfc: 83 2a c1 06  	lw	s5, 108(sp)
80000e00: b3 b7 da 02  	mulhu	a5, s5, a3
80000e04: 93 d7 47 00  	srli	a5, a5, 4
80000e08: b3 87 a7 03  	mul	a5, a5, s10
80000e0c: b3 87 f4 40  	sub	a5, s1, a5
80000e10: 53 86 07 d2  	fcvt.d.w	fa2, a5
80000e14: b3 b7 d9 02  	mulhu	a5, s3, a3
80000e18: 93 d7 47 00  	srli	a5, a5, 4
80000e1c: b3 87 a7 03  	mul	a5, a5, s10
80000e20: b3 87 f9 40  	sub	a5, s3, a5
80000e24: d3 86 07 d2  	fcvt.d.w	fa3, a5
80000e28: b3 37 d6 02  	mulhu	a5, a2, a3
80000e2c: 93 d7 47 00  	srli	a5, a5, 4
80000e30: b3 87 a7 03  	mul	a5, a5, s10
80000e34: b3 07 f6 40  	sub	a5, a2, a5
80000e38: 53 87 07 d2  	fcvt.d.w	fa4, a5
80000e3c: b3 37 d5 02  	mulhu	a5, a0, a3
80000e40: 93 d7 47 00  	srli	a5, a5, 4
80000e44: b3 87 a7 03  	mul	a5, a5, s10
80000e48: b3 07 f5 40  	sub	a5, a0, a5
80000e4c: d3 87 07 d2  	fcvt.d.w	fa5, a5
80000e50: b3 37 d7 02  	mulhu	a5, a4, a3
80000e54: 93 d7 47 00  	srli	a5, a5, 4
80000e58: b3 87 a7 03  	mul	a5, a5, s10
80000e5c: b3 07 f7 40  	sub	a5, a4, a5
80000e60: 53 88 07 d2  	fcvt.d.w	fa6, a5
80000e64: 83 20 01 06  	lw	ra, 96(sp)
80000e68: b3 b7 d0 02  	mulhu	a5, ra, a3
80000e6c: 93 d7 47 00  	srli	a5, a5, 4
80000e70: b3 87 a7 03  	mul	a5, a5, s10
80000e74: b3 87 f0 40  	sub	a5, ra, a5
80000e78: d3 88 07 d2  	fcvt.d.w	fa7, a5
80000e7c: 03 23 c1 05  	lw	t1, 92(sp)
80000e80: b3 37 d3 02  	mulhu	a5, t1, a3
80000e84: 93 d7 47 00  	srli	a5, a5, 4
80000e88: b3 87 a7 03  	mul	a5, a5, s10
80000e8c: b3 07 f3 40  	sub	a5, t1, a5
80000e90: 53 8e 07 d2  	fcvt.d.w	ft8, a5
80000e94: 83 2b 41 05  	lw	s7, 84(sp)
80000e98: b3 b7 db 02  	mulhu	a5, s7, a3
80000e9c: 93 d7 47 00  	srli	a5, a5, 4
80000ea0: b3 87 a7 03  	mul	a5, a5, s10
80000ea4: b3 87 fb 40  	sub	a5, s7, a5
80000ea8: d3 8e 07 d2  	fcvt.d.w	ft9, a5
80000eac: 03 2c c1 04  	lw	s8, 76(sp)
80000eb0: b3 37 dc 02  	mulhu	a5, s8, a3
80000eb4: 93 d7 47 00  	srli	a5, a5, 4
80000eb8: b3 87 a7 03  	mul	a5, a5, s10
80000ebc: b3 07 fc 40  	sub	a5, s8, a5
80000ec0: 53 8f 07 d2  	fcvt.d.w	ft10, a5
80000ec4: 83 28 41 04  	lw	a7, 68(sp)
80000ec8: b3 b7 d8 02  	mulhu	a5, a7, a3
80000ecc: 93 d7 47 00  	srli	a5, a5, 4
80000ed0: b3 87 a7 03  	mul	a5, a5, s10
80000ed4: b3 87 f8 40  	sub	a5, a7, a5
80000ed8: d3 8f 07 d2  	fcvt.d.w	ft11, a5
80000edc: 03 2f 01 04  	lw	t5, 64(sp)
80000ee0: b3 37 df 02  	mulhu	a5, t5, a3
80000ee4: 93 d7 47 00  	srli	a5, a5, 4
80000ee8: b3 87 a7 03  	mul	a5, a5, s10
80000eec: b3 07 ff 40  	sub	a5, t5, a5
80000ef0: 53 84 07 d2  	fcvt.d.w	fs0, a5
80000ef4: 83 23 81 03  	lw	t2, 56(sp)
80000ef8: b3 b7 d3 02  	mulhu	a5, t2, a3
80000efc: 93 d7 47 00  	srli	a5, a5, 4
80000f00: b3 87 a7 03  	mul	a5, a5, s10
80000f04: b3 87 f3 40  	sub	a5, t2, a5
80000f08: d3 84 07 d2  	fcvt.d.w	fs1, a5
80000f0c: 03 2a 01 03  	lw	s4, 48(sp)
80000f10: b3 37 da 02  	mulhu	a5, s4, a3
80000f14: 93 d7 47 00  	srli	a5, a5, 4
80000f18: b3 87 a7 03  	mul	a5, a5, s10
80000f1c: b3 07 fa 40  	sub	a5, s4, a5
80000f20: 53 89 07 d2  	fcvt.d.w	fs2, a5
80000f24: 03 28 c1 02  	lw	a6, 44(sp)
80000f28: b3 37 d8 02  	mulhu	a5, a6, a3
80000f2c: 93 d7 47 00  	srli	a5, a5, 4
80000f30: b3 87 a7 03  	mul	a5, a5, s10
80000f34: b3 07 f8 40  	sub	a5, a6, a5
80000f38: d3 89 07 d2  	fcvt.d.w	fs3, a5
80000f3c: 83 27 01 07  	lw	a5, 112(sp)
80000f40: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000f44: 27 b0 15 fa  	fsd	ft1, -96(a1)
80000f48: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80000f4c: 27 b4 15 fa  	fsd	ft1, -88(a1)
80000f50: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80000f54: 27 b8 15 fa  	fsd	ft1, -80(a1)
80000f58: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80000f5c: 27 bc 15 fa  	fsd	ft1, -72(a1)
80000f60: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80000f64: 27 b0 15 fc  	fsd	ft1, -64(a1)
80000f68: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80000f6c: 27 b4 15 fc  	fsd	ft1, -56(a1)
80000f70: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80000f74: 27 b8 15 fc  	fsd	ft1, -48(a1)
80000f78: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80000f7c: 27 bc 15 fc  	fsd	ft1, -40(a1)
80000f80: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80000f84: 27 b0 15 fe  	fsd	ft1, -32(a1)
80000f88: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80000f8c: 27 b4 15 fe  	fsd	ft1, -24(a1)
80000f90: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80000f94: 27 b8 15 fe  	fsd	ft1, -16(a1)
80000f98: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80000f9c: 27 bc 15 fe  	fsd	ft1, -8(a1)
80000fa0: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80000fa4: 27 b0 15 00  	fsd	ft1, 0(a1)
80000fa8: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80000fac: 27 b4 15 00  	fsd	ft1, 8(a1)
80000fb0: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80000fb4: 27 b8 15 00  	fsd	ft1, 16(a1)
80000fb8: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80000fbc: 27 bc 15 00  	fsd	ft1, 24(a1)
80000fc0: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80000fc4: 27 b0 15 02  	fsd	ft1, 32(a1)
80000fc8: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
80000fcc: 27 b4 15 02  	fsd	ft1, 40(a1)
80000fd0: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
80000fd4: 27 b8 15 02  	fsd	ft1, 48(a1)
80000fd8: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80000fdc: 27 bc 15 02  	fsd	ft1, 56(a1)
80000fe0: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
80000fe4: 27 b0 15 04  	fsd	ft1, 64(a1)
80000fe8: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80000fec: 27 b8 15 04  	fsd	ft1, 80(a1)
80000ff0: 13 84 09 00  	mv	s0, s3
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000ff4: 83 29 81 01  	lw	s3, 24(sp)
80000ff8: 23 a6 35 05  	sw	s3, 76(a1)
80000ffc: 93 09 04 00  	mv	s3, s0
80001000: 03 24 41 01  	lw	s0, 20(sp)
80001004: 23 a4 85 04  	sw	s0, 72(a1)
80001008: 53 f0 09 12  	fmul.d	ft0, fs3, ft0
8000100c: 27 bc 05 04  	fsd	ft0, 88(a1)
;   for (i = 0; i < nj; i++)
80001010: 13 08 a8 01  	addi	a6, a6, 26
80001014: 93 8d 3d 00  	addi	s11, s11, 3
80001018: 93 87 37 00  	addi	a5, a5, 3
8000101c: 03 24 41 07  	lw	s0, 116(sp)
80001020: 13 04 44 00  	addi	s0, s0, 4
80001024: 23 2a 81 06  	sw	s0, 116(sp)
80001028: 03 24 c1 07  	lw	s0, 124(sp)
8000102c: 13 04 44 00  	addi	s0, s0, 4
80001030: 23 2e 81 06  	sw	s0, 124(sp)
80001034: 13 0a 9a 01  	addi	s4, s4, 25
80001038: 23 28 41 03  	sw	s4, 48(sp)
8000103c: 93 8f 5f 00  	addi	t6, t6, 5
80001040: 23 2a f1 03  	sw	t6, 52(sp)
80001044: 03 24 81 07  	lw	s0, 120(sp)
80001048: 13 04 64 00  	addi	s0, s0, 6
8000104c: 23 2c 81 06  	sw	s0, 120(sp)
80001050: 93 8e 6e 00  	addi	t4, t4, 6
80001054: 23 22 d1 07  	sw	t4, 100(sp)
80001058: 93 83 73 01  	addi	t2, t2, 23
8000105c: 23 2c 71 02  	sw	t2, 56(sp)
80001060: 83 23 81 02  	lw	t2, 40(sp)
80001064: 13 0e 7e 00  	addi	t3, t3, 7
80001068: 23 2e c1 03  	sw	t3, 60(sp)
8000106c: 13 0f 6f 01  	addi	t5, t5, 22
80001070: 23 20 e1 05  	sw	t5, 64(sp)
80001074: 93 83 83 00  	addi	t2, t2, 8
80001078: 13 0b 8b 00  	addi	s6, s6, 8
8000107c: 23 24 61 07  	sw	s6, 104(sp)
80001080: 93 88 58 01  	addi	a7, a7, 21
80001084: 23 22 11 05  	sw	a7, 68(sp)
80001088: 13 09 99 00  	addi	s2, s2, 9
8000108c: 23 24 21 05  	sw	s2, 72(sp)
80001090: 13 0c 4c 01  	addi	s8, s8, 20
80001094: 23 26 81 05  	sw	s8, 76(sp)
80001098: 93 8c ac 00  	addi	s9, s9, 10
8000109c: 23 28 91 05  	sw	s9, 80(sp)
800010a0: 93 8b 3b 01  	addi	s7, s7, 19
800010a4: 23 2a 71 05  	sw	s7, 84(sp)
800010a8: 93 82 b2 00  	addi	t0, t0, 11
800010ac: 23 2c 51 04  	sw	t0, 88(sp)
800010b0: 13 03 23 01  	addi	t1, t1, 18
800010b4: 23 2e 61 04  	sw	t1, 92(sp)
800010b8: 93 84 c4 00  	addi	s1, s1, 12
800010bc: 93 8a ca 00  	addi	s5, s5, 12
800010c0: 23 26 51 07  	sw	s5, 108(sp)
800010c4: 93 80 10 01  	addi	ra, ra, 17
800010c8: 23 20 11 06  	sw	ra, 96(sp)
800010cc: 93 89 d9 00  	addi	s3, s3, 13
800010d0: 13 07 07 01  	addi	a4, a4, 16
800010d4: 93 85 05 0c  	addi	a1, a1, 192
800010d8: 13 05 f5 00  	addi	a0, a0, 15
800010dc: 13 06 e6 00  	addi	a2, a2, 14
800010e0: 13 04 50 1d  	addi	s0, zero, 469
800010e4: 23 26 01 03  	sw	a6, 44(sp)
800010e8: e3 10 88 c2  	bne	a6, s0, 0x80000d08 <.LBB0_37+0x304>
800010ec: 93 03 00 00  	mv	t2, zero
800010f0: 13 0e 00 00  	mv	t3, zero
800010f4: 93 0e 00 00  	mv	t4, zero
800010f8: 13 0f 00 00  	mv	t5, zero
800010fc: 93 0f 00 00  	mv	t6, zero
80001100: 93 09 00 00  	mv	s3, zero
80001104: 13 0a 00 00  	mv	s4, zero
80001108: 93 0a 00 00  	mv	s5, zero
8000110c: 13 0b 00 00  	mv	s6, zero
80001110: 13 08 00 00  	mv	a6, zero
80001114: 93 08 00 00  	mv	a7, zero
80001118: 13 09 00 00  	mv	s2, zero
8000111c: 93 0b 00 00  	mv	s7, zero
80001120: 93 02 00 00  	mv	t0, zero
80001124: 13 0c 00 00  	mv	s8, zero
80001128: 93 0c 00 00  	mv	s9, zero
8000112c: 13 0d 00 00  	mv	s10, zero
80001130: 93 0d 00 00  	mv	s11, zero
80001134: 13 03 00 00  	mv	t1, zero
80001138: 93 04 00 00  	mv	s1, zero
8000113c: 13 05 00 00  	mv	a0, zero
80001140: 13 06 00 00  	mv	a2, zero
80001144: 93 05 00 00  	mv	a1, zero
;   for (i = 0; i < ni; i++)
80001148: 83 26 01 01  	lw	a3, 16(sp)
8000114c: 93 86 06 06  	addi	a3, a3, 96
80001150: 37 97 2e ba  	lui	a4, 762601
80001154: 13 07 37 ba  	addi	a4, a4, -1117
80001158: 93 07 60 01  	addi	a5, zero, 22
8000115c: 93 00 a0 fe  	addi	ra, zero, -22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001160: 33 34 e6 02  	mulhu	s0, a2, a4
80001164: 13 54 44 00  	srli	s0, s0, 4
80001168: 33 04 f4 02  	mul	s0, s0, a5
8000116c: 33 04 86 40  	sub	s0, a2, s0
80001170: d3 00 04 d2  	fcvt.d.w	ft1, s0

80001174 <.LBB0_39>:
80001174: 17 34 00 00  	auipc	s0, 3
80001178: 13 04 c4 eb  	addi	s0, s0, -324
8000117c: 07 30 04 00  	fld	ft0, 0(s0)
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001180: 33 34 e5 02  	mulhu	s0, a0, a4
80001184: 13 54 44 00  	srli	s0, s0, 4
80001188: 33 04 f4 02  	mul	s0, s0, a5
8000118c: 33 04 85 40  	sub	s0, a0, s0
80001190: 53 01 04 d2  	fcvt.d.w	ft2, s0
80001194: 33 34 e3 02  	mulhu	s0, t1, a4
80001198: 13 54 44 00  	srli	s0, s0, 4
8000119c: 33 04 f4 02  	mul	s0, s0, a5
800011a0: 33 04 83 40  	sub	s0, t1, s0
800011a4: d3 01 04 d2  	fcvt.d.w	ft3, s0
800011a8: 33 34 ed 02  	mulhu	s0, s10, a4
800011ac: 13 54 44 00  	srli	s0, s0, 4
800011b0: 33 04 f4 02  	mul	s0, s0, a5
800011b4: 33 04 8d 40  	sub	s0, s10, s0
800011b8: 53 02 04 d2  	fcvt.d.w	ft4, s0
800011bc: 33 b4 ec 02  	mulhu	s0, s9, a4
800011c0: 13 54 44 00  	srli	s0, s0, 4
800011c4: 33 04 f4 02  	mul	s0, s0, a5
800011c8: 33 84 8c 40  	sub	s0, s9, s0
800011cc: d3 02 04 d2  	fcvt.d.w	ft5, s0
800011d0: 33 b4 e2 02  	mulhu	s0, t0, a4
800011d4: 13 54 44 00  	srli	s0, s0, 4
800011d8: 33 04 f4 02  	mul	s0, s0, a5
800011dc: 33 84 82 40  	sub	s0, t0, s0
800011e0: 53 03 04 d2  	fcvt.d.w	ft6, s0
800011e4: 33 34 e9 02  	mulhu	s0, s2, a4
800011e8: 13 54 44 00  	srli	s0, s0, 4
800011ec: 33 04 f4 02  	mul	s0, s0, a5
800011f0: 33 04 89 40  	sub	s0, s2, s0
800011f4: d3 03 04 d2  	fcvt.d.w	ft7, s0
800011f8: 33 34 e8 02  	mulhu	s0, a6, a4
800011fc: 13 54 44 00  	srli	s0, s0, 4
80001200: 33 04 f4 02  	mul	s0, s0, a5
80001204: 33 04 88 40  	sub	s0, a6, s0
80001208: 53 05 04 d2  	fcvt.d.w	fa0, s0
8000120c: 33 b4 ea 02  	mulhu	s0, s5, a4
80001210: 13 54 44 00  	srli	s0, s0, 4
80001214: 33 04 f4 02  	mul	s0, s0, a5
80001218: 33 84 8a 40  	sub	s0, s5, s0
8000121c: d3 05 04 d2  	fcvt.d.w	fa1, s0
80001220: 33 b4 e9 02  	mulhu	s0, s3, a4
80001224: 13 54 44 00  	srli	s0, s0, 4
80001228: 33 04 f4 02  	mul	s0, s0, a5
8000122c: 33 84 89 40  	sub	s0, s3, s0
80001230: 53 06 04 d2  	fcvt.d.w	fa2, s0
80001234: 33 34 ef 02  	mulhu	s0, t5, a4
80001238: 13 54 44 00  	srli	s0, s0, 4
8000123c: 33 04 f4 02  	mul	s0, s0, a5
80001240: 33 04 8f 40  	sub	s0, t5, s0
80001244: d3 06 04 d2  	fcvt.d.w	fa3, s0
80001248: 33 b4 e3 02  	mulhu	s0, t2, a4
8000124c: 13 54 44 00  	srli	s0, s0, 4
80001250: 33 04 f4 02  	mul	s0, s0, a5
80001254: 33 84 83 40  	sub	s0, t2, s0
80001258: 53 07 04 d2  	fcvt.d.w	fa4, s0
8000125c: 33 34 ee 02  	mulhu	s0, t3, a4
80001260: 13 54 44 00  	srli	s0, s0, 4
80001264: 33 04 f4 02  	mul	s0, s0, a5
80001268: 33 04 8e 40  	sub	s0, t3, s0
8000126c: d3 07 04 d2  	fcvt.d.w	fa5, s0
80001270: 33 b4 ee 02  	mulhu	s0, t4, a4
80001274: 13 54 44 00  	srli	s0, s0, 4
80001278: 33 04 f4 02  	mul	s0, s0, a5
8000127c: 33 84 8e 40  	sub	s0, t4, s0
80001280: 53 08 04 d2  	fcvt.d.w	fa6, s0
80001284: 33 b4 ef 02  	mulhu	s0, t6, a4
80001288: 13 54 44 00  	srli	s0, s0, 4
8000128c: 33 04 f4 02  	mul	s0, s0, a5
80001290: 33 84 8f 40  	sub	s0, t6, s0
80001294: d3 08 04 d2  	fcvt.d.w	fa7, s0
80001298: 33 34 ea 02  	mulhu	s0, s4, a4
8000129c: 13 54 44 00  	srli	s0, s0, 4
800012a0: 33 04 f4 02  	mul	s0, s0, a5
800012a4: 33 04 8a 40  	sub	s0, s4, s0
800012a8: 53 0e 04 d2  	fcvt.d.w	ft8, s0
800012ac: 33 34 eb 02  	mulhu	s0, s6, a4
800012b0: 13 54 44 00  	srli	s0, s0, 4
800012b4: 33 04 f4 02  	mul	s0, s0, a5
800012b8: 33 04 8b 40  	sub	s0, s6, s0
800012bc: d3 0e 04 d2  	fcvt.d.w	ft9, s0
800012c0: 33 b4 e8 02  	mulhu	s0, a7, a4
800012c4: 13 54 44 00  	srli	s0, s0, 4
800012c8: 33 04 f4 02  	mul	s0, s0, a5
800012cc: 33 84 88 40  	sub	s0, a7, s0
800012d0: 53 0f 04 d2  	fcvt.d.w	ft10, s0
800012d4: 33 b4 eb 02  	mulhu	s0, s7, a4
800012d8: 13 54 44 00  	srli	s0, s0, 4
800012dc: 33 04 f4 02  	mul	s0, s0, a5
800012e0: 33 84 8b 40  	sub	s0, s7, s0
800012e4: d3 0f 04 d2  	fcvt.d.w	ft11, s0
800012e8: 33 34 ec 02  	mulhu	s0, s8, a4
800012ec: 13 54 44 00  	srli	s0, s0, 4
800012f0: 33 04 f4 02  	mul	s0, s0, a5
800012f4: 33 04 8c 40  	sub	s0, s8, s0
800012f8: 53 04 04 d2  	fcvt.d.w	fs0, s0
800012fc: 33 b4 ed 02  	mulhu	s0, s11, a4
80001300: 13 54 44 00  	srli	s0, s0, 4
80001304: 33 04 f4 02  	mul	s0, s0, a5
80001308: 33 84 8d 40  	sub	s0, s11, s0
8000130c: d3 04 04 d2  	fcvt.d.w	fs1, s0
80001310: 33 b4 e4 02  	mulhu	s0, s1, a4
80001314: 13 54 44 00  	srli	s0, s0, 4
80001318: 33 04 f4 02  	mul	s0, s0, a5
8000131c: 33 84 84 40  	sub	s0, s1, s0
80001320: 53 09 04 d2  	fcvt.d.w	fs2, s0
80001324: 33 b4 e5 02  	mulhu	s0, a1, a4
80001328: 13 54 44 00  	srli	s0, s0, 4
8000132c: 33 04 14 02  	mul	s0, s0, ra
80001330: 33 84 85 00  	add	s0, a1, s0
80001334: d3 09 04 d2  	fcvt.d.w	fs3, s0
80001338: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000133c: 27 b0 16 fa  	fsd	ft1, -96(a3)
80001340: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80001344: 27 b4 16 fa  	fsd	ft1, -88(a3)
80001348: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
8000134c: 27 b8 16 fa  	fsd	ft1, -80(a3)
80001350: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80001354: 27 bc 16 fa  	fsd	ft1, -72(a3)
80001358: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
8000135c: 27 b0 16 fc  	fsd	ft1, -64(a3)
80001360: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80001364: 27 b4 16 fc  	fsd	ft1, -56(a3)
80001368: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
8000136c: 27 b8 16 fc  	fsd	ft1, -48(a3)
80001370: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80001374: 27 bc 16 fc  	fsd	ft1, -40(a3)
80001378: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
8000137c: 27 b0 16 fe  	fsd	ft1, -32(a3)
80001380: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80001384: 27 b4 16 fe  	fsd	ft1, -24(a3)
80001388: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
8000138c: 27 b8 16 fe  	fsd	ft1, -16(a3)
80001390: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80001394: 27 bc 16 fe  	fsd	ft1, -8(a3)
80001398: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
8000139c: 27 b0 16 00  	fsd	ft1, 0(a3)
800013a0: d3 70 08 12  	fmul.d	ft1, fa6, ft0
800013a4: 27 b4 16 00  	fsd	ft1, 8(a3)
800013a8: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
800013ac: 27 b8 16 00  	fsd	ft1, 16(a3)
800013b0: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
800013b4: 27 bc 16 00  	fsd	ft1, 24(a3)
800013b8: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
800013bc: 27 b0 16 02  	fsd	ft1, 32(a3)
800013c0: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
800013c4: 27 b4 16 02  	fsd	ft1, 40(a3)
800013c8: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
800013cc: 27 b8 16 02  	fsd	ft1, 48(a3)
800013d0: d3 70 04 12  	fmul.d	ft1, fs0, ft0
800013d4: 27 bc 16 02  	fsd	ft1, 56(a3)
800013d8: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
800013dc: 27 b4 16 04  	fsd	ft1, 72(a3)
800013e0: d3 70 09 12  	fmul.d	ft1, fs2, ft0
800013e4: 27 b8 16 04  	fsd	ft1, 80(a3)
800013e8: 23 a2 06 04  	sw	zero, 68(a3)
800013ec: 23 a0 06 04  	sw	zero, 64(a3)
800013f0: 53 f0 09 12  	fmul.d	ft0, fs3, ft0
800013f4: 27 bc 06 04  	fsd	ft0, 88(a3)
;   for (i = 0; i < ni; i++)
800013f8: 93 85 95 01  	addi	a1, a1, 25
800013fc: 13 06 26 00  	addi	a2, a2, 2
80001400: 13 05 35 00  	addi	a0, a0, 3
80001404: 93 84 84 01  	addi	s1, s1, 24
80001408: 13 03 43 00  	addi	t1, t1, 4
8000140c: 93 8d 7d 01  	addi	s11, s11, 23
80001410: 13 0d 5d 00  	addi	s10, s10, 5
80001414: 93 8c 6c 00  	addi	s9, s9, 6
80001418: 13 0c 5c 01  	addi	s8, s8, 21
8000141c: 93 82 72 00  	addi	t0, t0, 7
80001420: 93 8b 4b 01  	addi	s7, s7, 20
80001424: 13 09 89 00  	addi	s2, s2, 8
80001428: 93 88 38 01  	addi	a7, a7, 19
8000142c: 13 08 98 00  	addi	a6, a6, 9
80001430: 13 0b 2b 01  	addi	s6, s6, 18
80001434: 93 8a aa 00  	addi	s5, s5, 10
80001438: 13 0a 1a 01  	addi	s4, s4, 17
8000143c: 93 89 b9 00  	addi	s3, s3, 11
80001440: 93 8f 0f 01  	addi	t6, t6, 16
80001444: 13 0f cf 00  	addi	t5, t5, 12
80001448: 93 8e fe 00  	addi	t4, t4, 15
8000144c: 93 86 06 0c  	addi	a3, a3, 192
80001450: 13 0e ee 00  	addi	t3, t3, 14
80001454: 93 83 d3 00  	addi	t2, t2, 13
80001458: 13 04 00 19  	addi	s0, zero, 400
8000145c: e3 92 85 d0  	bne	a1, s0, 0x80001160 <.LBB0_38+0x438>
80001460: 93 05 00 00  	mv	a1, zero
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001464: 73 25 00 b0  	csrr	a0, mcycle
80001468: 23 2c a1 06  	sw	a0, 120(sp)
8000146c: 83 2e c1 00  	lw	t4, 12(sp)
80001470: 03 2e c1 01  	lw	t3, 28(sp)
80001474: 93 04 00 00  	mv	s1, zero
80001478: 23 2e b1 06  	sw	a1, 124(sp)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
8000147c: 13 05 00 0b  	addi	a0, zero, 176
80001480: 33 85 a5 02  	mul	a0, a1, a0
80001484: 83 25 41 02  	lw	a1, 36(sp)
80001488: 33 84 a5 00  	add	s0, a1, a0
8000148c: 13 0f 84 00  	addi	t5, s0, 8
80001490: 93 0f 04 01  	addi	t6, s0, 16
80001494: 13 09 84 01  	addi	s2, s0, 24
80001498: 93 09 04 02  	addi	s3, s0, 32
8000149c: 13 0a 84 02  	addi	s4, s0, 40
800014a0: 93 0a 04 03  	addi	s5, s0, 48
800014a4: 13 0b 84 03  	addi	s6, s0, 56
800014a8: 93 0b 04 04  	addi	s7, s0, 64
800014ac: 13 0c 84 04  	addi	s8, s0, 72
800014b0: 93 0c 04 05  	addi	s9, s0, 80
800014b4: 13 0d 84 05  	addi	s10, s0, 88
800014b8: 93 0d 04 06  	addi	s11, s0, 96
800014bc: 93 00 84 06  	addi	ra, s0, 104
800014c0: 93 03 04 07  	addi	t2, s0, 112
800014c4: 93 06 84 07  	addi	a3, s0, 120
800014c8: 13 05 04 08  	addi	a0, s0, 128
800014cc: 13 06 84 08  	addi	a2, s0, 136
800014d0: 93 07 04 09  	addi	a5, s0, 144
800014d4: 13 07 84 09  	addi	a4, s0, 152
800014d8: 13 08 04 0a  	addi	a6, s0, 160
800014dc: 93 08 84 0a  	addi	a7, s0, 168
;       tmp[i][j] = 0.0;
800014e0: b3 82 9e 00  	add	t0, t4, s1
800014e4: 23 a2 02 00  	sw	zero, 4(t0)
800014e8: 23 a0 02 00  	sw	zero, 0(t0)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800014ec: 87 30 04 00  	fld	ft1, 0(s0)

800014f0 <.LBB0_40>:
800014f0: 97 35 00 00  	auipc	a1, 3
800014f4: 93 85 85 b4  	addi	a1, a1, -1208
800014f8: 07 b0 05 00  	fld	ft0, 0(a1)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800014fc: 33 03 9e 00  	add	t1, t3, s1
80001500: 07 31 03 00  	fld	ft2, 0(t1)
80001504: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001508: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
8000150c: 27 b0 12 00  	fsd	ft1, 0(t0)
80001510: 07 31 0f 00  	fld	ft2, 0(t5)
80001514: 87 31 03 09  	fld	ft3, 144(t1)
80001518: 53 71 01 12  	fmul.d	ft2, ft2, ft0
8000151c: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001520: 27 b0 12 00  	fsd	ft1, 0(t0)
80001524: 07 b1 0f 00  	fld	ft2, 0(t6)
80001528: 87 31 03 12  	fld	ft3, 288(t1)
8000152c: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001530: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001534: 27 b0 12 00  	fsd	ft1, 0(t0)
80001538: 07 31 09 00  	fld	ft2, 0(s2)
8000153c: 87 31 03 1b  	fld	ft3, 432(t1)
80001540: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001544: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001548: 27 b0 12 00  	fsd	ft1, 0(t0)
8000154c: 07 b1 09 00  	fld	ft2, 0(s3)
80001550: 87 31 03 24  	fld	ft3, 576(t1)
80001554: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001558: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
8000155c: 27 b0 12 00  	fsd	ft1, 0(t0)
80001560: 07 31 0a 00  	fld	ft2, 0(s4)
80001564: 87 31 03 2d  	fld	ft3, 720(t1)
80001568: 53 71 01 12  	fmul.d	ft2, ft2, ft0
8000156c: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001570: 27 b0 12 00  	fsd	ft1, 0(t0)
80001574: 07 b1 0a 00  	fld	ft2, 0(s5)
80001578: 87 31 03 36  	fld	ft3, 864(t1)
8000157c: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001580: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001584: 27 b0 12 00  	fsd	ft1, 0(t0)
80001588: 07 31 0b 00  	fld	ft2, 0(s6)
8000158c: 87 31 03 3f  	fld	ft3, 1008(t1)
80001590: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001594: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001598: 27 b0 12 00  	fsd	ft1, 0(t0)
8000159c: 07 b1 0b 00  	fld	ft2, 0(s7)
800015a0: 87 31 03 48  	fld	ft3, 1152(t1)
800015a4: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800015a8: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800015ac: 27 b0 12 00  	fsd	ft1, 0(t0)
800015b0: 07 31 0c 00  	fld	ft2, 0(s8)
800015b4: 87 31 03 51  	fld	ft3, 1296(t1)
800015b8: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800015bc: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800015c0: 27 b0 12 00  	fsd	ft1, 0(t0)
800015c4: 07 b1 0c 00  	fld	ft2, 0(s9)
800015c8: 87 31 03 5a  	fld	ft3, 1440(t1)
800015cc: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800015d0: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800015d4: 27 b0 12 00  	fsd	ft1, 0(t0)
800015d8: 07 31 0d 00  	fld	ft2, 0(s10)
800015dc: 87 31 03 63  	fld	ft3, 1584(t1)
800015e0: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800015e4: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800015e8: 27 b0 12 00  	fsd	ft1, 0(t0)
800015ec: 07 b1 0d 00  	fld	ft2, 0(s11)
800015f0: 87 31 03 6c  	fld	ft3, 1728(t1)
800015f4: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800015f8: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800015fc: 27 b0 12 00  	fsd	ft1, 0(t0)
80001600: 07 b1 00 00  	fld	ft2, 0(ra)
80001604: 87 31 03 75  	fld	ft3, 1872(t1)
80001608: 53 71 01 12  	fmul.d	ft2, ft2, ft0
8000160c: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001610: 27 b0 12 00  	fsd	ft1, 0(t0)
80001614: 07 b1 03 00  	fld	ft2, 0(t2)
80001618: 87 31 03 7e  	fld	ft3, 2016(t1)
8000161c: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001620: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001624: 27 b0 12 00  	fsd	ft1, 0(t0)
80001628: 07 b1 06 00  	fld	ft2, 0(a3)
8000162c: 93 05 83 43  	addi	a1, t1, 1080
80001630: 87 b1 85 43  	fld	ft3, 1080(a1)
80001634: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001638: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
8000163c: 27 b0 12 00  	fsd	ft1, 0(t0)
80001640: 07 31 05 00  	fld	ft2, 0(a0)
80001644: 93 05 03 48  	addi	a1, t1, 1152
80001648: 87 b1 05 48  	fld	ft3, 1152(a1)
8000164c: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001650: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001654: 27 b0 12 00  	fsd	ft1, 0(t0)
80001658: 07 31 06 00  	fld	ft2, 0(a2)
8000165c: 93 05 83 4c  	addi	a1, t1, 1224
80001660: 87 b1 85 4c  	fld	ft3, 1224(a1)
80001664: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001668: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
8000166c: 27 b0 12 00  	fsd	ft1, 0(t0)
80001670: 07 b1 07 00  	fld	ft2, 0(a5)
80001674: 93 05 03 51  	addi	a1, t1, 1296
80001678: 87 b1 05 51  	fld	ft3, 1296(a1)
8000167c: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001680: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80001684: 27 b0 12 00  	fsd	ft1, 0(t0)
80001688: 07 31 07 00  	fld	ft2, 0(a4)
8000168c: 93 05 83 55  	addi	a1, t1, 1368
80001690: 87 b1 85 55  	fld	ft3, 1368(a1)
80001694: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80001698: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
8000169c: 27 b0 12 00  	fsd	ft1, 0(t0)
800016a0: 07 31 08 00  	fld	ft2, 0(a6)
800016a4: 93 05 03 5a  	addi	a1, t1, 1440
800016a8: 87 b1 05 5a  	fld	ft3, 1440(a1)
800016ac: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800016b0: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800016b4: 27 b0 12 00  	fsd	ft1, 0(t0)
800016b8: 07 b1 08 00  	fld	ft2, 0(a7)
800016bc: 93 05 83 5e  	addi	a1, t1, 1512
800016c0: 87 b1 85 5e  	fld	ft3, 1512(a1)
800016c4: 53 70 01 12  	fmul.d	ft0, ft2, ft0
800016c8: 43 70 30 0a  	fmadd.d	ft0, ft0, ft3, ft1
;     for (j = 0; j < nj; j++) {
800016cc: 93 84 84 00  	addi	s1, s1, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800016d0: 27 b0 02 00  	fsd	ft0, 0(t0)
800016d4: 93 05 00 09  	addi	a1, zero, 144
;     for (j = 0; j < nj; j++) {
800016d8: e3 94 b4 e0  	bne	s1, a1, 0x800014e0 <.LBB0_39+0x36c>
800016dc: 83 25 c1 07  	lw	a1, 124(sp)
;   for (i = 0; i < ni; i++) {
800016e0: 93 85 15 00  	addi	a1, a1, 1
800016e4: 93 8e 0e 09  	addi	t4, t4, 144
800016e8: 13 05 00 01  	addi	a0, zero, 16
800016ec: e3 94 a5 d8  	bne	a1, a0, 0x80001474 <.LBB0_39+0x300>
800016f0: 93 02 00 00  	mv	t0, zero

800016f4 <.LBB0_41>:
800016f4: 17 35 00 00  	auipc	a0, 3
800016f8: 13 05 c5 94  	addi	a0, a0, -1716
800016fc: 07 30 05 00  	fld	ft0, 0(a0)
80001700: 13 03 00 0c  	addi	t1, zero, 192
80001704: 93 08 00 01  	addi	a7, zero, 16
80001708: 83 23 01 01  	lw	t2, 16(sp)
8000170c: 83 20 c1 00  	lw	ra, 12(sp)
80001710: 03 28 01 02  	lw	a6, 32(sp)
80001714: 93 07 00 00  	mv	a5, zero
;         D[i][j] += tmp[i][k] * C[k][j];
80001718: 13 05 00 09  	addi	a0, zero, 144
8000171c: 33 85 a2 02  	mul	a0, t0, a0
80001720: b3 84 a0 00  	add	s1, ra, a0
80001724: 13 8e 84 00  	addi	t3, s1, 8
80001728: 93 8e 04 01  	addi	t4, s1, 16
8000172c: 13 8f 84 01  	addi	t5, s1, 24
80001730: 93 8f 04 02  	addi	t6, s1, 32
80001734: 13 89 84 02  	addi	s2, s1, 40
80001738: 93 89 04 03  	addi	s3, s1, 48
8000173c: 13 8a 84 03  	addi	s4, s1, 56
80001740: 93 8a 04 04  	addi	s5, s1, 64
80001744: 13 8b 84 04  	addi	s6, s1, 72
80001748: 93 8b 04 05  	addi	s7, s1, 80
8000174c: 13 8c 84 05  	addi	s8, s1, 88
80001750: 93 8c 04 06  	addi	s9, s1, 96
80001754: 13 8d 84 06  	addi	s10, s1, 104
80001758: 93 8d 04 07  	addi	s11, s1, 112
8000175c: 93 86 84 07  	addi	a3, s1, 120
80001760: 13 85 04 08  	addi	a0, s1, 128
80001764: 13 86 84 08  	addi	a2, s1, 136
;       D[i][j] *= beta;
80001768: 33 87 f3 00  	add	a4, t2, a5
8000176c: 87 30 07 00  	fld	ft1, 0(a4)
80001770: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001774: 27 30 17 00  	fsd	ft1, 0(a4)
;         D[i][j] += tmp[i][k] * C[k][j];
80001778: 07 b1 04 00  	fld	ft2, 0(s1)
8000177c: 33 04 f8 00  	add	s0, a6, a5
80001780: 87 31 04 00  	fld	ft3, 0(s0)
80001784: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001788: 27 30 17 00  	fsd	ft1, 0(a4)
8000178c: 07 31 0e 00  	fld	ft2, 0(t3)
80001790: 87 31 04 0c  	fld	ft3, 192(s0)
80001794: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001798: 27 30 17 00  	fsd	ft1, 0(a4)
8000179c: 07 b1 0e 00  	fld	ft2, 0(t4)
800017a0: 87 31 04 18  	fld	ft3, 384(s0)
800017a4: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
800017a8: 27 30 17 00  	fsd	ft1, 0(a4)
800017ac: 07 31 0f 00  	fld	ft2, 0(t5)
800017b0: 87 31 04 24  	fld	ft3, 576(s0)
800017b4: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
800017b8: 27 30 17 00  	fsd	ft1, 0(a4)
800017bc: 07 b1 0f 00  	fld	ft2, 0(t6)
800017c0: 87 31 04 30  	fld	ft3, 768(s0)
800017c4: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
800017c8: 27 30 17 00  	fsd	ft1, 0(a4)
800017cc: 07 31 09 00  	fld	ft2, 0(s2)
800017d0: 87 31 04 3c  	fld	ft3, 960(s0)
800017d4: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
800017d8: 27 30 17 00  	fsd	ft1, 0(a4)
800017dc: 07 b1 09 00  	fld	ft2, 0(s3)
800017e0: 87 31 04 48  	fld	ft3, 1152(s0)
800017e4: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
800017e8: 27 30 17 00  	fsd	ft1, 0(a4)
800017ec: 07 31 0a 00  	fld	ft2, 0(s4)
800017f0: 87 31 04 54  	fld	ft3, 1344(s0)
800017f4: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
800017f8: 27 30 17 00  	fsd	ft1, 0(a4)
800017fc: 07 b1 0a 00  	fld	ft2, 0(s5)
80001800: 87 31 04 60  	fld	ft3, 1536(s0)
80001804: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001808: 27 30 17 00  	fsd	ft1, 0(a4)
8000180c: 07 31 0b 00  	fld	ft2, 0(s6)
80001810: 87 31 04 6c  	fld	ft3, 1728(s0)
80001814: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001818: 27 30 17 00  	fsd	ft1, 0(a4)
8000181c: 07 b1 0b 00  	fld	ft2, 0(s7)
80001820: 87 31 04 78  	fld	ft3, 1920(s0)
80001824: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001828: 27 30 17 00  	fsd	ft1, 0(a4)
8000182c: 07 31 0c 00  	fld	ft2, 0(s8)
80001830: 93 05 04 42  	addi	a1, s0, 1056
80001834: 87 b1 05 42  	fld	ft3, 1056(a1)
80001838: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
8000183c: 27 30 17 00  	fsd	ft1, 0(a4)
80001840: 07 b1 0c 00  	fld	ft2, 0(s9)
80001844: 93 05 04 48  	addi	a1, s0, 1152
80001848: 87 b1 05 48  	fld	ft3, 1152(a1)
8000184c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001850: 27 30 17 00  	fsd	ft1, 0(a4)
80001854: 07 31 0d 00  	fld	ft2, 0(s10)
80001858: 93 05 04 4e  	addi	a1, s0, 1248
8000185c: 87 b1 05 4e  	fld	ft3, 1248(a1)
80001860: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001864: 27 30 17 00  	fsd	ft1, 0(a4)
80001868: 07 b1 0d 00  	fld	ft2, 0(s11)
8000186c: 93 05 04 54  	addi	a1, s0, 1344
80001870: 87 b1 05 54  	fld	ft3, 1344(a1)
80001874: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001878: 27 30 17 00  	fsd	ft1, 0(a4)
8000187c: 07 b1 06 00  	fld	ft2, 0(a3)
80001880: 93 05 04 5a  	addi	a1, s0, 1440
80001884: 87 b1 05 5a  	fld	ft3, 1440(a1)
80001888: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
8000188c: 27 30 17 00  	fsd	ft1, 0(a4)
80001890: 07 31 05 00  	fld	ft2, 0(a0)
80001894: 93 05 04 60  	addi	a1, s0, 1536
80001898: 87 b1 05 60  	fld	ft3, 1536(a1)
8000189c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
800018a0: 27 30 17 00  	fsd	ft1, 0(a4)
800018a4: 07 31 06 00  	fld	ft2, 0(a2)
800018a8: 93 05 04 66  	addi	a1, s0, 1632
800018ac: 87 b1 05 66  	fld	ft3, 1632(a1)
800018b0: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
;     for (j = 0; j < nl; j++) {
800018b4: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
800018b8: 27 30 17 00  	fsd	ft1, 0(a4)
;     for (j = 0; j < nl; j++) {
800018bc: e3 96 67 ea  	bne	a5, t1, 0x80001768 <.LBB0_41+0x74>
;   for (i = 0; i < ni; i++) {
800018c0: 93 82 12 00  	addi	t0, t0, 1
800018c4: 93 83 03 0c  	addi	t2, t2, 192
800018c8: e3 96 12 e5  	bne	t0, a7, 0x80001714 <.LBB0_41+0x20>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800018cc: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
800018d0: 83 25 81 07  	lw	a1, 120(sp)
800018d4: b3 05 b5 40  	sub	a1, a0, a1

800018d8 <.LBB0_42>:
800018d8: 17 25 00 00  	auipc	a0, 2
800018dc: 13 05 95 4b  	addi	a0, a0, 1209
800018e0: 97 00 00 00  	auipc	ra, 0
800018e4: e7 80 00 17  	jalr	368(ra)
800018e8: 03 25 01 01  	lw	a0, 16(sp)
800018ec: 13 05 05 06  	addi	a0, a0, 96
800018f0: 53 00 00 d2  	fcvt.d.w	ft0, zero
800018f4: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
800018f8: 87 30 05 fa  	fld	ft1, -96(a0)
800018fc: 07 31 85 fa  	fld	ft2, -88(a0)
80001900: 87 31 05 fb  	fld	ft3, -80(a0)
80001904: 07 32 85 fb  	fld	ft4, -72(a0)
80001908: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000190c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001910: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001914: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001918: 87 30 05 fc  	fld	ft1, -64(a0)
8000191c: 07 31 85 fc  	fld	ft2, -56(a0)
80001920: 87 31 05 fd  	fld	ft3, -48(a0)
80001924: 07 32 85 fd  	fld	ft4, -40(a0)
80001928: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000192c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001930: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001934: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001938: 87 30 05 fe  	fld	ft1, -32(a0)
8000193c: 07 31 85 fe  	fld	ft2, -24(a0)
80001940: 87 31 05 ff  	fld	ft3, -16(a0)
80001944: 07 32 85 ff  	fld	ft4, -8(a0)
80001948: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000194c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001950: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001954: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001958: 87 30 05 00  	fld	ft1, 0(a0)
8000195c: 07 31 85 00  	fld	ft2, 8(a0)
80001960: 87 31 05 01  	fld	ft3, 16(a0)
80001964: 07 32 85 01  	fld	ft4, 24(a0)
80001968: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000196c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001970: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001974: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001978: 87 30 05 02  	fld	ft1, 32(a0)
8000197c: 07 31 85 02  	fld	ft2, 40(a0)
80001980: 87 31 05 03  	fld	ft3, 48(a0)
80001984: 07 32 85 03  	fld	ft4, 56(a0)
80001988: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000198c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001990: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001994: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001998: 87 30 05 04  	fld	ft1, 64(a0)
8000199c: 07 31 85 04  	fld	ft2, 72(a0)
800019a0: 87 31 05 05  	fld	ft3, 80(a0)
800019a4: 07 32 85 05  	fld	ft4, 88(a0)
800019a8: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800019ac: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800019b0: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800019b4: 53 70 02 02  	fadd.d	ft0, ft4, ft0
;     for (int i = 0; i < n; i++){
800019b8: 93 85 f5 ff  	addi	a1, a1, -1
800019bc: 13 05 05 0c  	addi	a0, a0, 192
800019c0: e3 9c 05 f2  	bnez	a1, 0x800018f8 <.LBB0_42+0x20>

800019c4 <.LBB0_43>:
800019c4: 17 25 00 00  	auipc	a0, 2
800019c8: 13 05 45 68  	addi	a0, a0, 1668
800019cc: 87 30 05 00  	fld	ft1, 0(a0)
;   double error = r - r_true;
800019d0: 53 70 10 02  	fadd.d	ft0, ft0, ft1
;   error = error < 0.0 ? -error : error;
800019d4: 53 24 00 22  	fabs.d	fs0, ft0
;   printf("error = %f\n", error);
800019d8: 27 30 81 08  	fsd	fs0, 128(sp)
800019dc: 03 26 01 08  	lw	a2, 128(sp)
800019e0: 83 26 41 08  	lw	a3, 132(sp)

800019e4 <.LBB0_44>:
800019e4: 17 25 00 00  	auipc	a0, 2
800019e8: 13 05 15 3a  	addi	a0, a0, 929
800019ec: 97 00 00 00  	auipc	ra, 0
800019f0: e7 80 40 06  	jalr	100(ra)

800019f4 <.LBB0_45>:
800019f4: 17 25 00 00  	auipc	a0, 2
800019f8: 13 05 c5 65  	addi	a0, a0, 1628
800019fc: 07 30 05 00  	fld	ft0, 0(a0)
;   return error > 0.0001;
80001a00: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80001a04: 87 39 81 08  	fld	fs3, 136(sp)
80001a08: 07 39 01 09  	fld	fs2, 144(sp)
80001a0c: 87 34 81 09  	fld	fs1, 152(sp)
80001a10: 07 34 01 0a  	fld	fs0, 160(sp)
80001a14: 83 2d c1 0a  	lw	s11, 172(sp)
80001a18: 03 2d 01 0b  	lw	s10, 176(sp)
80001a1c: 83 2c 41 0b  	lw	s9, 180(sp)
80001a20: 03 2c 81 0b  	lw	s8, 184(sp)
80001a24: 83 2b c1 0b  	lw	s7, 188(sp)
80001a28: 03 2b 01 0c  	lw	s6, 192(sp)
80001a2c: 83 2a 41 0c  	lw	s5, 196(sp)
80001a30: 03 2a 81 0c  	lw	s4, 200(sp)
80001a34: 83 29 c1 0c  	lw	s3, 204(sp)
80001a38: 03 29 01 0d  	lw	s2, 208(sp)
80001a3c: 83 24 41 0d  	lw	s1, 212(sp)
80001a40: 03 24 81 0d  	lw	s0, 216(sp)
80001a44: 83 20 c1 0d  	lw	ra, 220(sp)
80001a48: 13 01 01 0e  	addi	sp, sp, 224
80001a4c: 67 80 00 00  	ret

80001a50 <printf_>:
; {
80001a50: 13 01 01 fd  	addi	sp, sp, -48
80001a54: 23 26 11 00  	sw	ra, 12(sp)
80001a58: 93 02 05 00  	mv	t0, a0
80001a5c: 23 26 11 03  	sw	a7, 44(sp)
80001a60: 23 24 01 03  	sw	a6, 40(sp)
80001a64: 23 22 f1 02  	sw	a5, 36(sp)
80001a68: 23 20 e1 02  	sw	a4, 32(sp)
80001a6c: 23 2e d1 00  	sw	a3, 28(sp)
80001a70: 23 2c c1 00  	sw	a2, 24(sp)
80001a74: 23 2a b1 00  	sw	a1, 20(sp)
80001a78: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001a7c: 23 24 a1 00  	sw	a0, 8(sp)

80001a80 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80001a80: 17 15 00 00  	auipc	a0, 1
80001a84: 13 05 45 c2  	addi	a0, a0, -988
80001a88: 93 05 71 00  	addi	a1, sp, 7
80001a8c: 13 06 f0 ff  	addi	a2, zero, -1
80001a90: 13 07 41 01  	addi	a4, sp, 20
80001a94: 93 86 02 00  	mv	a3, t0
80001a98: 97 00 00 00  	auipc	ra, 0
80001a9c: e7 80 40 01  	jalr	20(ra)
;   return ret;
80001aa0: 83 20 c1 00  	lw	ra, 12(sp)
80001aa4: 13 01 01 03  	addi	sp, sp, 48
80001aa8: 67 80 00 00  	ret

80001aac <_vsnprintf.llvm.11632292163828655644>:
; {
80001aac: 13 01 01 f9  	addi	sp, sp, -112
80001ab0: 23 26 11 06  	sw	ra, 108(sp)
80001ab4: 23 24 81 06  	sw	s0, 104(sp)
80001ab8: 23 22 91 06  	sw	s1, 100(sp)
80001abc: 23 20 21 07  	sw	s2, 96(sp)
80001ac0: 23 2e 31 05  	sw	s3, 92(sp)
80001ac4: 23 2c 41 05  	sw	s4, 88(sp)
80001ac8: 23 2a 51 05  	sw	s5, 84(sp)
80001acc: 23 28 61 05  	sw	s6, 80(sp)
80001ad0: 23 26 71 05  	sw	s7, 76(sp)
80001ad4: 23 24 81 05  	sw	s8, 72(sp)
80001ad8: 23 22 91 05  	sw	s9, 68(sp)
80001adc: 23 20 a1 05  	sw	s10, 64(sp)
80001ae0: 23 2e b1 03  	sw	s11, 60(sp)
80001ae4: 93 09 07 00  	mv	s3, a4
80001ae8: 13 84 06 00  	mv	s0, a3
80001aec: 93 0a 06 00  	mv	s5, a2
80001af0: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80001af4: 63 86 05 00  	beqz	a1, 0x80001b00 <.LBB1_183>
80001af8: 13 09 05 00  	mv	s2, a0
80001afc: 6f 00 c0 00  	j	0x80001b08 <.LBB1_183+0x8>

80001b00 <.LBB1_183>:
80001b00: 17 19 00 00  	auipc	s2, 1
80001b04: 13 09 09 c5  	addi	s2, s2, -944
80001b08: 13 0c 00 00  	mv	s8, zero
80001b0c: 13 0b 50 02  	addi	s6, zero, 37
80001b10: 93 0d 00 01  	addi	s11, zero, 16
80001b14: 93 0b e0 02  	addi	s7, zero, 46
80001b18: 37 15 00 00  	lui	a0, 1
80001b1c: 13 05 05 80  	addi	a0, a0, -2048
80001b20: 23 2c a1 00  	sw	a0, 24(sp)
80001b24: 37 05 01 00  	lui	a0, 16
80001b28: 13 05 f5 ff  	addi	a0, a0, -1
80001b2c: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80001b30: 13 0d 24 00  	addi	s10, s0, 2
80001b34: 93 0c 0c 00  	mv	s9, s8
80001b38: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001b3c: 03 45 04 00  	lbu	a0, 0(s0)
80001b40: e3 04 05 30  	beqz	a0, 0x80002648 <.LBB1_124+0x3b0>
80001b44: 63 08 65 03  	beq	a0, s6, 0x80001b74 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80001b48: 93 84 1c 00  	addi	s1, s9, 1
80001b4c: 93 05 0a 00  	mv	a1, s4
80001b50: 13 86 0c 00  	mv	a2, s9
80001b54: 93 86 0a 00  	mv	a3, s5
80001b58: e7 00 09 00  	jalr	s2
;       format++;
80001b5c: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80001b60: 13 0d 1d 00  	addi	s10, s10, 1
80001b64: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001b68: 03 45 04 00  	lbu	a0, 0(s0)
80001b6c: e3 1c 05 fc  	bnez	a0, 0x80001b44 <.LBB1_183+0x44>
80001b70: 6f 00 90 2d  	j	0x80002648 <.LBB1_124+0x3b0>
;     flags = 0U;
80001b74: 13 04 00 00  	mv	s0, zero
80001b78: 6f 00 00 01  	j	0x80001b88 <.LBB1_9+0x8>

80001b7c <.LBB1_8>:
80001b7c: 93 05 00 01  	addi	a1, zero, 16

80001b80 <.LBB1_9>:
80001b80: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001b84: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001b88: 03 45 fd ff  	lbu	a0, -1(s10)
80001b8c: 93 05 05 fe  	addi	a1, a0, -32
80001b90: 63 ec bd 02  	bltu	s11, a1, 0x80001bc8 <.LBB1_15>
80001b94: 93 95 25 00  	slli	a1, a1, 2

80001b98 <.LBB1_184>:
80001b98: 17 26 00 00  	auipc	a2, 2
80001b9c: 13 06 c6 20  	addi	a2, a2, 524
80001ba0: b3 85 c5 00  	add	a1, a1, a2
80001ba4: 03 a6 05 00  	lw	a2, 0(a1)
80001ba8: 93 05 10 00  	addi	a1, zero, 1
80001bac: 67 00 06 00  	jr	a2

80001bb0 <.LBB1_12>:
80001bb0: 93 05 80 00  	addi	a1, zero, 8
80001bb4: 6f f0 df fc  	j	0x80001b80 <.LBB1_9>

80001bb8 <.LBB1_13>:
80001bb8: 93 05 40 00  	addi	a1, zero, 4
80001bbc: 6f f0 5f fc  	j	0x80001b80 <.LBB1_9>

80001bc0 <.LBB1_14>:
80001bc0: 93 05 20 00  	addi	a1, zero, 2
80001bc4: 6f f0 df fb  	j	0x80001b80 <.LBB1_9>

80001bc8 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001bc8: 93 05 05 fd  	addi	a1, a0, -48
80001bcc: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80001bd0: 93 05 fd ff  	addi	a1, s10, -1
80001bd4: 93 06 90 00  	addi	a3, zero, 9
80001bd8: 63 ee c6 06  	bltu	a3, a2, 0x80001c54 <.LBB1_15+0x8c>
80001bdc: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001be0: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001be4: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001be8: b3 06 8b 03  	mul	a3, s6, s8
80001bec: 93 85 15 00  	addi	a1, a1, 1
80001bf0: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001bf4: 93 06 05 fd  	addi	a3, a0, -48
80001bf8: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001bfc: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001c00: e3 e0 86 ff  	bltu	a3, s8, 0x80001be0 <.LBB1_15+0x18>
80001c04: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001c08: 63 16 75 0b  	bne	a0, s7, 0x80001cb4 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001c0c: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001c10: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001c14: 93 05 05 fd  	addi	a1, a0, -48
80001c18: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001c1c: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001c20: 93 06 90 00  	addi	a3, zero, 9
80001c24: 63 e0 c6 06  	bltu	a3, a2, 0x80001c84 <.LBB1_15+0xbc>
80001c28: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001c2c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001c30: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001c34: b3 86 8b 03  	mul	a3, s7, s8
80001c38: 93 85 15 00  	addi	a1, a1, 1
80001c3c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001c40: 93 06 05 fd  	addi	a3, a0, -48
80001c44: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001c48: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001c4c: e3 e0 86 ff  	bltu	a3, s8, 0x80001c2c <.LBB1_15+0x64>
80001c50: 6f 00 00 07  	j	0x80001cc0 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001c54: 13 06 a0 02  	addi	a2, zero, 42
80001c58: 63 18 c5 04  	bne	a0, a2, 0x80001ca8 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001c5c: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001c60: 63 d4 05 00  	bgez	a1, 0x80001c68 <.LBB1_15+0xa0>
80001c64: 13 64 24 00  	ori	s0, s0, 2
80001c68: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001c6c: 03 45 0d 00  	lbu	a0, 0(s10)
80001c70: 13 d6 f5 41  	srai	a2, a1, 31
80001c74: b3 85 c5 00  	add	a1, a1, a2
80001c78: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001c7c: e3 08 75 f9  	beq	a0, s7, 0x80001c0c <.LBB1_15+0x44>
80001c80: 6f 00 40 03  	j	0x80001cb4 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001c84: 13 06 a0 02  	addi	a2, zero, 42
80001c88: 63 1a c5 02  	bne	a0, a2, 0x80001cbc <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001c8c: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001c90: 63 44 70 01  	bgtz	s7, 0x80001c98 <.LBB1_15+0xd0>
80001c94: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001c98: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001c9c: 13 0d 2d 00  	addi	s10, s10, 2
80001ca0: 93 89 49 00  	addi	s3, s3, 4
80001ca4: 6f 00 00 02  	j	0x80001cc4 <.LBB1_15+0xfc>
80001ca8: 13 0b 00 00  	mv	s6, zero
80001cac: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001cb0: e3 0e 75 f5  	beq	a0, s7, 0x80001c0c <.LBB1_15+0x44>
80001cb4: 93 0b 00 00  	mv	s7, zero
80001cb8: 6f 00 c0 00  	j	0x80001cc4 <.LBB1_15+0xfc>
80001cbc: 93 0b 00 00  	mv	s7, zero
80001cc0: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80001cc4: 93 05 85 f9  	addi	a1, a0, -104
80001cc8: 13 d6 15 00  	srli	a2, a1, 1
80001ccc: 93 95 f5 01  	slli	a1, a1, 31
80001cd0: b3 e5 c5 00  	or	a1, a1, a2
80001cd4: 13 06 90 00  	addi	a2, zero, 9
80001cd8: 63 62 b6 06  	bltu	a2, a1, 0x80001d3c <.LBB1_42>
80001cdc: 93 95 25 00  	slli	a1, a1, 2

80001ce0 <.LBB1_185>:
80001ce0: 17 26 00 00  	auipc	a2, 2
80001ce4: 13 06 86 10  	addi	a2, a2, 264
80001ce8: b3 85 c5 00  	add	a1, a1, a2
80001cec: 83 a6 05 00  	lw	a3, 0(a1)
80001cf0: 93 05 10 00  	addi	a1, zero, 1
80001cf4: 13 06 00 10  	addi	a2, zero, 256
80001cf8: 67 80 06 00  	jr	a3

80001cfc <.LBB1_36>:
;         if (*format == 'h') {
80001cfc: 03 45 1d 00  	lbu	a0, 1(s10)
80001d00: 93 05 80 06  	addi	a1, zero, 104
80001d04: 63 12 b5 12  	bne	a0, a1, 0x80001e28 <.LBB1_53+0x48>
80001d08: 93 05 20 00  	addi	a1, zero, 2
80001d0c: 13 06 00 0c  	addi	a2, zero, 192
80001d10: 6f 00 00 02  	j	0x80001d30 <.LBB1_41>

80001d14 <.LBB1_38>:
80001d14: 13 06 00 20  	addi	a2, zero, 512
80001d18: 6f 00 80 01  	j	0x80001d30 <.LBB1_41>

80001d1c <.LBB1_39>:
;         if (*format == 'l') {
80001d1c: 03 45 1d 00  	lbu	a0, 1(s10)
80001d20: 93 05 c0 06  	addi	a1, zero, 108
80001d24: 63 18 b5 10  	bne	a0, a1, 0x80001e34 <.LBB1_53+0x54>
80001d28: 93 05 20 00  	addi	a1, zero, 2
80001d2c: 13 06 00 30  	addi	a2, zero, 768

80001d30 <.LBB1_41>:
80001d30: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001d34: 03 45 0d 00  	lbu	a0, 0(s10)
80001d38: 33 64 c4 00  	or	s0, s0, a2

80001d3c <.LBB1_42>:
;     switch (*format) {
80001d3c: 93 05 b5 fd  	addi	a1, a0, -37
80001d40: 13 06 30 05  	addi	a2, zero, 83
80001d44: 63 64 b6 10  	bltu	a2, a1, 0x80001e4c <.LBB1_59>
80001d48: 93 95 25 00  	slli	a1, a1, 2

80001d4c <.LBB1_186>:
80001d4c: 17 26 00 00  	auipc	a2, 2
80001d50: 13 06 46 0c  	addi	a2, a2, 196
80001d54: b3 85 c5 00  	add	a1, a1, a2
80001d58: 03 a6 05 00  	lw	a2, 0(a1)
80001d5c: 93 05 80 00  	addi	a1, zero, 8
80001d60: 13 0c 00 01  	addi	s8, zero, 16
80001d64: 67 00 06 00  	jr	a2

80001d68 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001d68: 13 74 f4 fe  	andi	s0, s0, -17
80001d6c: 13 0c a0 00  	addi	s8, zero, 10

80001d70 <.LBB1_45>:
;         if (*format == 'X') {
80001d70: 93 05 80 05  	addi	a1, zero, 88
80001d74: 63 14 b5 00  	bne	a0, a1, 0x80001d7c <.LBB1_45+0xc>
80001d78: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001d7c: 93 05 40 06  	addi	a1, zero, 100
80001d80: 63 08 b5 0e  	beq	a0, a1, 0x80001e70 <.LBB1_62+0x8>
80001d84: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001d88: 13 06 90 06  	addi	a2, zero, 105
80001d8c: 63 02 c5 0e  	beq	a0, a2, 0x80001e70 <.LBB1_62+0x8>
80001d90: 6f 00 80 0d  	j	0x80001e68 <.LBB1_62>

80001d94 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001d94: 93 05 60 04  	addi	a1, zero, 70
80001d98: 63 14 b5 00  	bne	a0, a1, 0x80001da0 <.LBB1_49+0xc>
80001d9c: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001da0: 13 85 79 00  	addi	a0, s3, 7
80001da4: 13 75 85 ff  	andi	a0, a0, -8
80001da8: 07 35 05 00  	fld	fa0, 0(a0)
80001dac: 93 09 85 00  	addi	s3, a0, 8
80001db0: 13 05 09 00  	mv	a0, s2
80001db4: 93 05 0a 00  	mv	a1, s4
80001db8: 13 86 0c 00  	mv	a2, s9
80001dbc: 93 86 0a 00  	mv	a3, s5
80001dc0: 13 87 0b 00  	mv	a4, s7
80001dc4: 93 07 0b 00  	mv	a5, s6
80001dc8: 13 08 04 00  	mv	a6, s0
80001dcc: 97 10 00 00  	auipc	ra, 1
80001dd0: e7 80 80 98  	jalr	-1656(ra)
80001dd4: 6f 00 00 7c  	j	0x80002594 <.LBB1_124+0x2fc>

80001dd8 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001dd8: 83 25 81 01  	lw	a1, 24(sp)
80001ddc: 33 64 b4 00  	or	s0, s0, a1

80001de0 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001de0: 13 65 25 00  	ori	a0, a0, 2
80001de4: 93 05 70 04  	addi	a1, zero, 71
80001de8: 63 14 b5 00  	bne	a0, a1, 0x80001df0 <.LBB1_53+0x10>
80001dec: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001df0: 13 85 79 00  	addi	a0, s3, 7
80001df4: 13 75 85 ff  	andi	a0, a0, -8
80001df8: 07 35 05 00  	fld	fa0, 0(a0)
80001dfc: 93 09 85 00  	addi	s3, a0, 8
80001e00: 13 05 09 00  	mv	a0, s2
80001e04: 93 05 0a 00  	mv	a1, s4
80001e08: 13 86 0c 00  	mv	a2, s9
80001e0c: 93 86 0a 00  	mv	a3, s5
80001e10: 13 87 0b 00  	mv	a4, s7
80001e14: 93 07 0b 00  	mv	a5, s6
80001e18: 13 08 04 00  	mv	a6, s0
80001e1c: 97 10 00 00  	auipc	ra, 1
80001e20: e7 80 80 01  	jalr	24(ra)
80001e24: 6f 00 00 77  	j	0x80002594 <.LBB1_124+0x2fc>
80001e28: 13 64 04 08  	ori	s0, s0, 128
80001e2c: 13 0d 1d 00  	addi	s10, s10, 1
80001e30: 6f f0 df f0  	j	0x80001d3c <.LBB1_42>
80001e34: 13 64 04 10  	ori	s0, s0, 256
80001e38: 13 0d 1d 00  	addi	s10, s10, 1
80001e3c: 6f f0 1f f0  	j	0x80001d3c <.LBB1_42>

80001e40 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001e40: 13 8c 1c 00  	addi	s8, s9, 1
80001e44: 13 05 50 02  	addi	a0, zero, 37
80001e48: 6f 00 80 00  	j	0x80001e50 <.LBB1_59+0x4>

80001e4c <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001e4c: 13 8c 1c 00  	addi	s8, s9, 1
80001e50: 93 05 0a 00  	mv	a1, s4
80001e54: 13 86 0c 00  	mv	a2, s9
80001e58: 93 86 0a 00  	mv	a3, s5
80001e5c: e7 00 09 00  	jalr	s2
80001e60: 6f 00 80 73  	j	0x80002598 <.LBB1_124+0x300>

80001e64 <.LBB1_61>:
80001e64: 93 05 20 00  	addi	a1, zero, 2

80001e68 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001e68: 13 74 34 ff  	andi	s0, s0, -13
80001e6c: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001e70: 93 75 04 40  	andi	a1, s0, 1024
80001e74: 63 84 05 00  	beqz	a1, 0x80001e7c <.LBB1_62+0x14>
80001e78: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001e7c: 93 05 90 06  	addi	a1, zero, 105
80001e80: 63 06 b5 00  	beq	a0, a1, 0x80001e8c <.LBB1_62+0x24>
80001e84: 93 05 40 06  	addi	a1, zero, 100
80001e88: 63 1c b5 12  	bne	a0, a1, 0x80001fc0 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001e8c: 13 75 04 20  	andi	a0, s0, 512
80001e90: 63 16 05 02  	bnez	a0, 0x80001ebc <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001e94: 13 75 04 10  	andi	a0, s0, 256
80001e98: 63 1c 05 14  	bnez	a0, 0x80001ff0 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001e9c: 13 75 04 04  	andi	a0, s0, 64
80001ea0: 63 18 05 4e  	bnez	a0, 0x80002390 <.LBB1_124+0xf8>
80001ea4: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001ea8: 93 75 04 08  	andi	a1, s0, 128
80001eac: 63 84 05 4e  	beqz	a1, 0x80002394 <.LBB1_124+0xfc>
80001eb0: 13 15 08 01  	slli	a0, a6, 16
80001eb4: 13 58 05 41  	srai	a6, a0, 16
80001eb8: 6f 00 c0 4d  	j	0x80002394 <.LBB1_124+0xfc>
80001ebc: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80001ec0: 13 85 79 00  	addi	a0, s3, 7
80001ec4: 13 75 85 ff  	andi	a0, a0, -8
80001ec8: 83 29 05 00  	lw	s3, 0(a0)
80001ecc: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80001ed0: 13 65 45 00  	ori	a0, a0, 4
80001ed4: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001ed8: 23 24 a1 00  	sw	a0, 8(sp)
80001edc: 33 e5 a9 00  	or	a0, s3, a0
80001ee0: 63 14 05 00  	bnez	a0, 0x80001ee8 <.LBB1_62+0x80>
80001ee4: 13 74 f4 fe  	andi	s0, s0, -17
80001ee8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001eec: 93 75 04 40  	andi	a1, s0, 1024
80001ef0: 93 d5 a5 00  	srli	a1, a1, 10
80001ef4: 33 75 b5 00  	and	a0, a0, a1
80001ef8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001efc: 63 14 05 0a  	bnez	a0, 0x80001fa4 <.LBB1_62+0x13c>
80001f00: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001f04: 63 da 04 00  	bgez	s1, 0x80001f18 <.LBB1_62+0xb0>
80001f08: 33 35 30 01  	snez	a0, s3
80001f0c: b3 09 30 41  	neg	s3, s3
80001f10: 33 85 a4 00  	add	a0, s1, a0
80001f14: b3 04 a0 40  	neg	s1, a0
80001f18: 13 09 00 00  	mv	s2, zero
80001f1c: 13 75 04 02  	andi	a0, s0, 32
80001f20: 13 45 15 06  	xori	a0, a0, 97
80001f24: 13 05 65 0f  	addi	a0, a0, 246
80001f28: 23 2a a1 00  	sw	a0, 20(sp)
80001f2c: 6f 00 40 02  	j	0x80001f50 <.LBB1_62+0xe8>
80001f30: 13 06 10 00  	addi	a2, zero, 1
80001f34: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f38: 93 36 f9 01  	sltiu	a3, s2, 31
80001f3c: 33 f6 c6 00  	and	a2, a3, a2
80001f40: 13 89 07 00  	mv	s2, a5
80001f44: 93 09 05 00  	mv	s3, a0
80001f48: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f4c: 63 0c 06 04  	beqz	a2, 0x80001fa4 <.LBB1_62+0x13c>
;       value /= base;
80001f50: 13 85 09 00  	mv	a0, s3
80001f54: 93 85 04 00  	mv	a1, s1
80001f58: 13 06 0c 00  	mv	a2, s8
80001f5c: 93 06 00 00  	mv	a3, zero
80001f60: 97 e0 ff ff  	auipc	ra, 1048574
80001f64: e7 80 00 0a  	jalr	160(ra)
80001f68: 33 06 85 03  	mul	a2, a0, s8
80001f6c: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f70: 13 77 e6 0f  	andi	a4, a2, 254
80001f74: 93 06 00 03  	addi	a3, zero, 48
80001f78: 93 07 a0 00  	addi	a5, zero, 10
80001f7c: 63 64 f7 00  	bltu	a4, a5, 0x80001f84 <.LBB1_62+0x11c>
80001f80: 83 26 41 01  	lw	a3, 20(sp)
80001f84: 33 86 c6 00  	add	a2, a3, a2
80001f88: 93 06 c1 01  	addi	a3, sp, 28
80001f8c: b3 86 26 01  	add	a3, a3, s2
80001f90: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f94: e3 9e 04 f8  	bnez	s1, 0x80001f30 <.LBB1_62+0xc8>
80001f98: 33 b6 89 01  	sltu	a2, s3, s8
80001f9c: 13 46 16 00  	xori	a2, a2, 1
80001fa0: 6f f0 5f f9  	j	0x80001f34 <.LBB1_62+0xcc>
80001fa4: 03 25 41 00  	lw	a0, 4(sp)
80001fa8: 93 09 85 00  	addi	s3, a0, 8
80001fac: 03 25 81 00  	lw	a0, 8(sp)
80001fb0: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001fb4: 13 07 c1 01  	addi	a4, sp, 28
80001fb8: 03 29 c1 00  	lw	s2, 12(sp)
80001fbc: 6f 00 80 47  	j	0x80002434 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80001fc0: 13 75 04 20  	andi	a0, s0, 512
80001fc4: 63 12 05 0c  	bnez	a0, 0x80002088 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001fc8: 13 75 04 10  	andi	a0, s0, 256
80001fcc: 63 1e 05 46  	bnez	a0, 0x80002448 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001fd0: 13 75 04 04  	andi	a0, s0, 64
80001fd4: 63 10 05 50  	bnez	a0, 0x800024d4 <.LBB1_124+0x23c>
80001fd8: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001fdc: 93 75 04 08  	andi	a1, s0, 128
80001fe0: 63 8c 05 4e  	beqz	a1, 0x800024d8 <.LBB1_124+0x240>
80001fe4: 83 25 01 01  	lw	a1, 16(sp)
80001fe8: 33 75 b5 00  	and	a0, a0, a1
80001fec: 6f 00 c0 4e  	j	0x800024d8 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80001ff0: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001ff4: 63 14 08 00  	bnez	a6, 0x80001ffc <.LBB1_62+0x194>
80001ff8: 13 74 f4 fe  	andi	s0, s0, -17
80001ffc: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80002000: 13 76 04 40  	andi	a2, s0, 1024
80002004: 13 56 a6 00  	srli	a2, a2, 10
80002008: b3 f5 c5 00  	and	a1, a1, a2
8000200c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002010: 63 9c 05 40  	bnez	a1, 0x80002428 <.LBB1_124+0x190>
80002014: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80002018: 13 56 f8 41  	srai	a2, a6, 31
8000201c: b3 06 c8 00  	add	a3, a6, a2
80002020: b3 c6 c6 00  	xor	a3, a3, a2
80002024: 13 76 04 02  	andi	a2, s0, 32
80002028: 13 46 16 06  	xori	a2, a2, 97
8000202c: 93 08 66 0f  	addi	a7, a2, 246
80002030: 6f 00 40 03  	j	0x80002064 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002034: 33 05 f6 00  	add	a0, a2, a5
80002038: 93 87 15 00  	addi	a5, a1, 1
8000203c: 13 06 c1 01  	addi	a2, sp, 28
80002040: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002044: b3 b6 86 01  	sltu	a3, a3, s8
80002048: 93 c6 16 00  	xori	a3, a3, 1
8000204c: 93 b5 f5 01  	sltiu	a1, a1, 31
80002050: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002054: 23 00 a6 00  	sb	a0, 0(a2)
80002058: 93 85 07 00  	mv	a1, a5
8000205c: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002060: 63 84 04 3c  	beqz	s1, 0x80002428 <.LBB1_124+0x190>
;       value /= base;
80002064: 33 d7 86 03  	divu	a4, a3, s8
80002068: 33 06 87 03  	mul	a2, a4, s8
8000206c: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002070: 13 f5 e7 0f  	andi	a0, a5, 254
80002074: 13 06 00 03  	addi	a2, zero, 48
80002078: 93 04 a0 00  	addi	s1, zero, 10
8000207c: e3 6c 95 fa  	bltu	a0, s1, 0x80002034 <.LBB1_62+0x1cc>
80002080: 13 86 08 00  	mv	a2, a7
80002084: 6f f0 1f fb  	j	0x80002034 <.LBB1_62+0x1cc>
80002088: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
8000208c: 13 85 79 00  	addi	a0, s3, 7
80002090: 93 75 85 ff  	andi	a1, a0, -8
80002094: 03 a9 05 00  	lw	s2, 0(a1)
80002098: 13 e5 45 00  	ori	a0, a1, 4
8000209c: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800020a0: 33 65 39 01  	or	a0, s2, s3
800020a4: 23 24 b1 00  	sw	a1, 8(sp)
800020a8: 63 14 05 00  	bnez	a0, 0x800020b0 <.LBB1_62+0x248>
800020ac: 13 74 f4 fe  	andi	s0, s0, -17
800020b0: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800020b4: 93 75 04 40  	andi	a1, s0, 1024
800020b8: 93 d5 a5 00  	srli	a1, a1, 10
800020bc: 33 75 b5 00  	and	a0, a0, a1
800020c0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800020c4: 63 18 05 08  	bnez	a0, 0x80002154 <.LBB1_62+0x2ec>
800020c8: 93 04 00 00  	mv	s1, zero
800020cc: 13 75 04 02  	andi	a0, s0, 32
800020d0: 13 45 15 06  	xori	a0, a0, 97
800020d4: 13 05 65 0f  	addi	a0, a0, 246
800020d8: 23 2a a1 00  	sw	a0, 20(sp)
800020dc: 6f 00 40 02  	j	0x80002100 <.LBB1_62+0x298>
800020e0: 13 06 10 00  	addi	a2, zero, 1
800020e4: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800020e8: 93 b6 f4 01  	sltiu	a3, s1, 31
800020ec: 33 f6 c6 00  	and	a2, a3, a2
800020f0: 93 84 07 00  	mv	s1, a5
800020f4: 13 09 05 00  	mv	s2, a0
800020f8: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800020fc: 63 0c 06 04  	beqz	a2, 0x80002154 <.LBB1_62+0x2ec>
;       value /= base;
80002100: 13 05 09 00  	mv	a0, s2
80002104: 93 85 09 00  	mv	a1, s3
80002108: 13 06 0c 00  	mv	a2, s8
8000210c: 93 06 00 00  	mv	a3, zero
80002110: 97 e0 ff ff  	auipc	ra, 1048574
80002114: e7 80 00 ef  	jalr	-272(ra)
80002118: 33 06 85 03  	mul	a2, a0, s8
8000211c: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002120: 13 77 e6 0f  	andi	a4, a2, 254
80002124: 93 06 00 03  	addi	a3, zero, 48
80002128: 93 07 a0 00  	addi	a5, zero, 10
8000212c: 63 64 f7 00  	bltu	a4, a5, 0x80002134 <.LBB1_62+0x2cc>
80002130: 83 26 41 01  	lw	a3, 20(sp)
80002134: 33 86 c6 00  	add	a2, a3, a2
80002138: 93 06 c1 01  	addi	a3, sp, 28
8000213c: b3 86 96 00  	add	a3, a3, s1
80002140: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002144: e3 9e 09 f8  	bnez	s3, 0x800020e0 <.LBB1_62+0x278>
80002148: 33 36 89 01  	sltu	a2, s2, s8
8000214c: 13 46 16 00  	xori	a2, a2, 1
80002150: 6f f0 5f f9  	j	0x800020e4 <.LBB1_62+0x27c>
80002154: 03 25 81 00  	lw	a0, 8(sp)
80002158: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000215c: 13 07 c1 01  	addi	a4, sp, 28
80002160: 03 29 c1 00  	lw	s2, 12(sp)
80002164: 6f 00 40 40  	j	0x80002568 <.LBB1_124+0x2d0>

80002168 <.LBB1_108>:
80002168: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
8000216c: 13 79 24 00  	andi	s2, s0, 2
80002170: 93 04 10 00  	addi	s1, zero, 1
80002174: 63 1e 09 02  	bnez	s2, 0x800021b0 <.LBB1_108+0x48>
80002178: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
8000217c: 63 6a 9b 02  	bltu	s6, s1, 0x800021b0 <.LBB1_108+0x48>
80002180: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80002184: 13 0c fb ff  	addi	s8, s6, -1
80002188: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
8000218c: 33 86 8c 00  	add	a2, s9, s0
80002190: 13 05 00 02  	addi	a0, zero, 32
80002194: 93 05 0a 00  	mv	a1, s4
80002198: 93 86 0a 00  	mv	a3, s5
8000219c: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800021a0: 13 04 14 00  	addi	s0, s0, 1
800021a4: e3 14 8c fe  	bne	s8, s0, 0x8000218c <.LBB1_108+0x24>
800021a8: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800021ac: b3 8c 8c 00  	add	s9, s9, s0
800021b0: 03 c5 09 00  	lbu	a0, 0(s3)
800021b4: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800021b8: 93 89 49 00  	addi	s3, s3, 4
800021bc: 13 8c 1c 00  	addi	s8, s9, 1
800021c0: 93 05 0a 00  	mv	a1, s4
800021c4: 13 86 0c 00  	mv	a2, s9
800021c8: 93 86 0a 00  	mv	a3, s5
800021cc: 13 89 0b 00  	mv	s2, s7
800021d0: e7 80 0b 00  	jalr	s7
800021d4: 33 b5 64 01  	sltu	a0, s1, s6
800021d8: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800021dc: 33 65 a4 00  	or	a0, s0, a0
800021e0: 63 1c 05 3a  	bnez	a0, 0x80002598 <.LBB1_124+0x300>
;           while (l++ < width) {
800021e4: 33 04 9b 40  	sub	s0, s6, s1
800021e8: 93 0b e0 02  	addi	s7, zero, 46
800021ec: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800021f0: 13 0c 1c 00  	addi	s8, s8, 1
800021f4: 13 05 00 02  	addi	a0, zero, 32
800021f8: 93 05 0a 00  	mv	a1, s4
800021fc: 93 86 0a 00  	mv	a3, s5
80002200: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80002204: 13 04 f4 ff  	addi	s0, s0, -1
80002208: e3 12 04 fe  	bnez	s0, 0x800021ec <.LBB1_108+0x84>
8000220c: 13 0b 50 02  	addi	s6, zero, 37
80002210: 13 04 1d 00  	addi	s0, s10, 1
80002214: 6f f0 df 91  	j	0x80001b30 <.LBB1_183+0x30>

80002218 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80002218: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
8000221c: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80002220: 63 14 05 00  	bnez	a0, 0x80002228 <.LBB1_117+0x10>
80002224: 93 fe fe fe  	andi	t4, t4, -17
80002228: 93 04 a0 00  	addi	s1, zero, 10
8000222c: 13 04 f0 00  	addi	s0, zero, 15
80002230: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80002234: 13 f6 0e 40  	andi	a2, t4, 1024
80002238: 13 56 a6 00  	srli	a2, a2, 10
8000223c: b3 f5 c5 00  	and	a1, a1, a2
80002240: 93 07 00 00  	mv	a5, zero
80002244: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80002248: 63 98 05 10  	bnez	a1, 0x80002358 <.LBB1_124+0xc0>
8000224c: 93 05 00 00  	mv	a1, zero
80002250: 6f 00 40 03  	j	0x80002284 <.LBB1_117+0x6c>
80002254: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002258: 33 06 d6 00  	add	a2, a2, a3
8000225c: 93 87 15 00  	addi	a5, a1, 1
80002260: 93 06 c1 01  	addi	a3, sp, 28
80002264: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002268: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
8000226c: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002270: 93 b5 f5 01  	sltiu	a1, a1, 31
80002274: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002278: 23 80 c6 00  	sb	a2, 0(a3)
8000227c: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002280: 63 0c 07 0c  	beqz	a4, 0x80002358 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002284: 93 76 e5 00  	andi	a3, a0, 14
80002288: 13 06 00 03  	addi	a2, zero, 48
8000228c: e3 e4 96 fc  	bltu	a3, s1, 0x80002254 <.LBB1_117+0x3c>
80002290: 13 06 70 03  	addi	a2, zero, 55
80002294: 6f f0 1f fc  	j	0x80002254 <.LBB1_117+0x3c>

80002298 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80002298: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
8000229c: 03 c5 07 00  	lbu	a0, 0(a5)
800022a0: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800022a4: 63 0c 05 02  	beqz	a0, 0x800022dc <.LBB1_124+0x44>
800022a8: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800022ac: 63 84 0b 00  	beqz	s7, 0x800022b4 <.LBB1_124+0x1c>
800022b0: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800022b4: 93 85 f5 ff  	addi	a1, a1, -1
800022b8: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800022bc: 03 c7 16 00  	lbu	a4, 1(a3)
800022c0: 13 86 16 00  	addi	a2, a3, 1
800022c4: b3 36 e0 00  	snez	a3, a4
800022c8: 33 37 b0 00  	snez	a4, a1
800022cc: 33 77 d7 00  	and	a4, a4, a3
800022d0: 93 85 f5 ff  	addi	a1, a1, -1
800022d4: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800022d8: e3 12 07 fe  	bnez	a4, 0x800022bc <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800022dc: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800022e0: 93 75 04 40  	andi	a1, s0, 1024
800022e4: 93 b4 15 00  	seqz	s1, a1
800022e8: 23 2a c1 00  	sw	a2, 20(sp)
800022ec: b3 35 76 01  	sltu	a1, a2, s7
800022f0: b3 e5 b4 00  	or	a1, s1, a1
800022f4: 63 94 05 00  	bnez	a1, 0x800022fc <.LBB1_124+0x64>
800022f8: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
800022fc: 93 75 24 00  	andi	a1, s0, 2
80002300: 23 26 b1 00  	sw	a1, 12(sp)
80002304: 63 96 05 2a  	bnez	a1, 0x800025b0 <.LBB1_124+0x318>
80002308: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
8000230c: 63 fe 65 29  	bgeu	a1, s6, 0x800025a8 <.LBB1_124+0x310>
80002310: 23 24 f1 00  	sw	a5, 8(sp)
80002314: 13 04 00 00  	mv	s0, zero
80002318: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
8000231c: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80002320: 33 86 8c 00  	add	a2, s9, s0
80002324: 13 05 00 02  	addi	a0, zero, 32
80002328: 93 05 0a 00  	mv	a1, s4
8000232c: 93 86 0a 00  	mv	a3, s5
80002330: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80002334: 13 04 14 00  	addi	s0, s0, 1
80002338: e3 14 89 fe  	bne	s2, s0, 0x80002320 <.LBB1_124+0x88>
8000233c: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002340: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80002344: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002348: 23 2a b1 00  	sw	a1, 20(sp)
8000234c: b3 8c 8c 00  	add	s9, s9, s0
80002350: 13 09 0c 00  	mv	s2, s8
80002354: 6f 00 c0 25  	j	0x800025b0 <.LBB1_124+0x318>
80002358: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000235c: 13 07 c1 01  	addi	a4, sp, 28
80002360: 93 08 00 01  	addi	a7, zero, 16
80002364: 13 0e 80 00  	addi	t3, zero, 8
80002368: 13 05 09 00  	mv	a0, s2
8000236c: 93 05 0a 00  	mv	a1, s4
80002370: 13 86 0c 00  	mv	a2, s9
80002374: 93 86 0a 00  	mv	a3, s5
80002378: 13 08 00 00  	mv	a6, zero
8000237c: 93 83 0b 00  	mv	t2, s7
80002380: 97 10 00 00  	auipc	ra, 1
80002384: e7 80 00 fa  	jalr	-96(ra)
80002388: 13 0c 05 00  	mv	s8, a0
8000238c: 6f 00 00 21  	j	0x8000259c <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80002390: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80002394: 63 14 08 00  	bnez	a6, 0x8000239c <.LBB1_124+0x104>
80002398: 13 74 f4 fe  	andi	s0, s0, -17
8000239c: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800023a0: 13 76 04 40  	andi	a2, s0, 1024
800023a4: 13 56 a6 00  	srli	a2, a2, 10
800023a8: b3 f5 c5 00  	and	a1, a1, a2
800023ac: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800023b0: 63 9c 05 06  	bnez	a1, 0x80002428 <.LBB1_124+0x190>
800023b4: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800023b8: 13 56 f8 41  	srai	a2, a6, 31
800023bc: b3 06 c8 00  	add	a3, a6, a2
800023c0: b3 c6 c6 00  	xor	a3, a3, a2
800023c4: 13 76 04 02  	andi	a2, s0, 32
800023c8: 13 46 16 06  	xori	a2, a2, 97
800023cc: 93 08 66 0f  	addi	a7, a2, 246
800023d0: 6f 00 40 03  	j	0x80002404 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023d4: 33 05 f6 00  	add	a0, a2, a5
800023d8: 93 87 15 00  	addi	a5, a1, 1
800023dc: 13 06 c1 01  	addi	a2, sp, 28
800023e0: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800023e4: b3 b6 86 01  	sltu	a3, a3, s8
800023e8: 93 c6 16 00  	xori	a3, a3, 1
800023ec: 93 b5 f5 01  	sltiu	a1, a1, 31
800023f0: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023f4: 23 00 a6 00  	sb	a0, 0(a2)
800023f8: 93 85 07 00  	mv	a1, a5
800023fc: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002400: 63 84 04 02  	beqz	s1, 0x80002428 <.LBB1_124+0x190>
;       value /= base;
80002404: 33 d7 86 03  	divu	a4, a3, s8
80002408: 33 06 87 03  	mul	a2, a4, s8
8000240c: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002410: 13 f5 e7 0f  	andi	a0, a5, 254
80002414: 13 06 00 03  	addi	a2, zero, 48
80002418: 93 04 a0 00  	addi	s1, zero, 10
8000241c: e3 6c 95 fa  	bltu	a0, s1, 0x800023d4 <.LBB1_124+0x13c>
80002420: 13 86 08 00  	mv	a2, a7
80002424: 6f f0 1f fb  	j	0x800023d4 <.LBB1_124+0x13c>
80002428: 93 89 49 00  	addi	s3, s3, 4
8000242c: 13 58 f8 01  	srli	a6, a6, 31
80002430: 13 07 c1 01  	addi	a4, sp, 28
80002434: 13 05 09 00  	mv	a0, s2
80002438: 93 05 0a 00  	mv	a1, s4
8000243c: 13 86 0c 00  	mv	a2, s9
80002440: 93 86 0a 00  	mv	a3, s5
80002444: 6f 00 80 13  	j	0x8000257c <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80002448: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
8000244c: 63 14 05 00  	bnez	a0, 0x80002454 <.LBB1_124+0x1bc>
80002450: 13 74 f4 fe  	andi	s0, s0, -17
80002454: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80002458: 13 76 04 40  	andi	a2, s0, 1024
8000245c: 13 56 a6 00  	srli	a2, a2, 10
80002460: b3 f5 c5 00  	and	a1, a1, a2
80002464: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002468: 63 9c 05 0e  	bnez	a1, 0x80002560 <.LBB1_124+0x2c8>
8000246c: 13 06 00 00  	mv	a2, zero
80002470: 93 75 04 02  	andi	a1, s0, 32
80002474: 93 c5 15 06  	xori	a1, a1, 97
80002478: 13 88 65 0f  	addi	a6, a1, 246
8000247c: 6f 00 40 03  	j	0x800024b0 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002480: 33 87 e7 00  	add	a4, a5, a4
80002484: 93 07 16 00  	addi	a5, a2, 1
80002488: 93 05 c1 01  	addi	a1, sp, 28
8000248c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002490: 33 35 85 01  	sltu	a0, a0, s8
80002494: 13 45 15 00  	xori	a0, a0, 1
80002498: 13 36 f6 01  	sltiu	a2, a2, 31
8000249c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800024a0: 23 80 e4 00  	sb	a4, 0(s1)
800024a4: 13 86 07 00  	mv	a2, a5
800024a8: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800024ac: 63 8a 05 0a  	beqz	a1, 0x80002560 <.LBB1_124+0x2c8>
;       value /= base;
800024b0: b3 56 85 03  	divu	a3, a0, s8
800024b4: 33 87 86 03  	mul	a4, a3, s8
800024b8: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800024bc: 93 74 e7 0f  	andi	s1, a4, 254
800024c0: 93 07 00 03  	addi	a5, zero, 48
800024c4: 93 05 a0 00  	addi	a1, zero, 10
800024c8: e3 ec b4 fa  	bltu	s1, a1, 0x80002480 <.LBB1_124+0x1e8>
800024cc: 93 07 08 00  	mv	a5, a6
800024d0: 6f f0 1f fb  	j	0x80002480 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800024d4: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800024d8: 63 14 05 00  	bnez	a0, 0x800024e0 <.LBB1_124+0x248>
800024dc: 13 74 f4 fe  	andi	s0, s0, -17
800024e0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800024e4: 13 76 04 40  	andi	a2, s0, 1024
800024e8: 13 56 a6 00  	srli	a2, a2, 10
800024ec: b3 f5 c5 00  	and	a1, a1, a2
800024f0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800024f4: 63 96 05 06  	bnez	a1, 0x80002560 <.LBB1_124+0x2c8>
800024f8: 13 06 00 00  	mv	a2, zero
800024fc: 93 75 04 02  	andi	a1, s0, 32
80002500: 93 c5 15 06  	xori	a1, a1, 97
80002504: 13 88 65 0f  	addi	a6, a1, 246
80002508: 6f 00 40 03  	j	0x8000253c <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000250c: 33 87 e7 00  	add	a4, a5, a4
80002510: 93 07 16 00  	addi	a5, a2, 1
80002514: 93 05 c1 01  	addi	a1, sp, 28
80002518: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000251c: 33 35 85 01  	sltu	a0, a0, s8
80002520: 13 45 15 00  	xori	a0, a0, 1
80002524: 13 36 f6 01  	sltiu	a2, a2, 31
80002528: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000252c: 23 80 e4 00  	sb	a4, 0(s1)
80002530: 13 86 07 00  	mv	a2, a5
80002534: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002538: 63 84 05 02  	beqz	a1, 0x80002560 <.LBB1_124+0x2c8>
;       value /= base;
8000253c: b3 56 85 03  	divu	a3, a0, s8
80002540: 33 87 86 03  	mul	a4, a3, s8
80002544: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002548: 93 74 e7 0f  	andi	s1, a4, 254
8000254c: 93 07 00 03  	addi	a5, zero, 48
80002550: 93 05 a0 00  	addi	a1, zero, 10
80002554: e3 ec b4 fa  	bltu	s1, a1, 0x8000250c <.LBB1_124+0x274>
80002558: 93 07 08 00  	mv	a5, a6
8000255c: 6f f0 1f fb  	j	0x8000250c <.LBB1_124+0x274>
80002560: 93 89 49 00  	addi	s3, s3, 4
80002564: 13 07 c1 01  	addi	a4, sp, 28
80002568: 13 05 09 00  	mv	a0, s2
8000256c: 93 05 0a 00  	mv	a1, s4
80002570: 13 86 0c 00  	mv	a2, s9
80002574: 93 86 0a 00  	mv	a3, s5
80002578: 13 08 00 00  	mv	a6, zero
8000257c: 93 08 0c 00  	mv	a7, s8
80002580: 93 83 0b 00  	mv	t2, s7
80002584: 13 0e 0b 00  	mv	t3, s6
80002588: 93 0e 04 00  	mv	t4, s0
8000258c: 97 10 00 00  	auipc	ra, 1
80002590: e7 80 40 d9  	jalr	-620(ra)
80002594: 13 0c 05 00  	mv	s8, a0
80002598: 13 0b 50 02  	addi	s6, zero, 37
8000259c: 93 0b e0 02  	addi	s7, zero, 46
800025a0: 13 04 1d 00  	addi	s0, s10, 1
800025a4: 6f f0 cf d8  	j	0x80001b30 <.LBB1_183+0x30>
800025a8: 93 85 15 00  	addi	a1, a1, 1
800025ac: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800025b0: 63 00 05 04  	beqz	a0, 0x800025f0 <.LBB1_124+0x358>
800025b4: 13 84 17 00  	addi	s0, a5, 1
800025b8: 6f 00 00 03  	j	0x800025e8 <.LBB1_124+0x350>
800025bc: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800025c0: 13 8c 1c 00  	addi	s8, s9, 1
800025c4: 13 75 f5 0f  	andi	a0, a0, 255
800025c8: 93 05 0a 00  	mv	a1, s4
800025cc: 13 86 0c 00  	mv	a2, s9
800025d0: 93 86 0a 00  	mv	a3, s5
800025d4: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800025d8: 03 45 04 00  	lbu	a0, 0(s0)
800025dc: 13 04 14 00  	addi	s0, s0, 1
800025e0: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800025e4: 63 08 05 00  	beqz	a0, 0x800025f4 <.LBB1_124+0x35c>
800025e8: e3 9c 04 fc  	bnez	s1, 0x800025c0 <.LBB1_124+0x328>
800025ec: e3 98 0b fc  	bnez	s7, 0x800025bc <.LBB1_124+0x324>
800025f0: 13 8c 0c 00  	mv	s8, s9
800025f4: 03 25 c1 00  	lw	a0, 12(sp)
800025f8: 13 35 15 00  	seqz	a0, a0
800025fc: 03 26 41 01  	lw	a2, 20(sp)
80002600: b3 35 66 01  	sltu	a1, a2, s6
80002604: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80002608: 33 65 b5 00  	or	a0, a0, a1
8000260c: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80002610: e3 14 05 f8  	bnez	a0, 0x80002598 <.LBB1_124+0x300>
;           while (l++ < width) {
80002614: 33 04 cb 40  	sub	s0, s6, a2
80002618: 93 0b e0 02  	addi	s7, zero, 46
8000261c: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80002620: 13 0c 1c 00  	addi	s8, s8, 1
80002624: 13 05 00 02  	addi	a0, zero, 32
80002628: 93 05 0a 00  	mv	a1, s4
8000262c: 93 86 0a 00  	mv	a3, s5
80002630: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80002634: 13 04 f4 ff  	addi	s0, s0, -1
80002638: e3 12 04 fe  	bnez	s0, 0x8000261c <.LBB1_124+0x384>
8000263c: 13 0b 50 02  	addi	s6, zero, 37
80002640: 13 04 1d 00  	addi	s0, s10, 1
80002644: 6f f0 cf ce  	j	0x80001b30 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80002648: 13 86 0c 00  	mv	a2, s9
8000264c: 63 e4 5c 01  	bltu	s9, s5, 0x80002654 <.LBB1_124+0x3bc>
80002650: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80002654: 13 05 00 00  	mv	a0, zero
80002658: 93 05 0a 00  	mv	a1, s4
8000265c: 93 86 0a 00  	mv	a3, s5
80002660: e7 00 09 00  	jalr	s2
;   return (int)idx;
80002664: 13 85 0c 00  	mv	a0, s9
80002668: 83 2d c1 03  	lw	s11, 60(sp)
8000266c: 03 2d 01 04  	lw	s10, 64(sp)
80002670: 83 2c 41 04  	lw	s9, 68(sp)
80002674: 03 2c 81 04  	lw	s8, 72(sp)
80002678: 83 2b c1 04  	lw	s7, 76(sp)
8000267c: 03 2b 01 05  	lw	s6, 80(sp)
80002680: 83 2a 41 05  	lw	s5, 84(sp)
80002684: 03 2a 81 05  	lw	s4, 88(sp)
80002688: 83 29 c1 05  	lw	s3, 92(sp)
8000268c: 03 29 01 06  	lw	s2, 96(sp)
80002690: 83 24 41 06  	lw	s1, 100(sp)
80002694: 03 24 81 06  	lw	s0, 104(sp)
80002698: 83 20 c1 06  	lw	ra, 108(sp)
8000269c: 13 01 01 07  	addi	sp, sp, 112
800026a0: 67 80 00 00  	ret

800026a4 <_out_char.llvm.11632292163828655644>:
;   if (character) {
800026a4: 63 04 05 0a  	beqz	a0, 0x8000274c <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800026a8: f3 25 40 f1  	csrr	a1, mhartid
800026ac: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800026b0: 33 86 c5 02  	mul	a2, a1, a2

800026b4 <.LBB2_6>:
800026b4: 97 26 00 00  	auipc	a3, 2
800026b8: 93 86 06 a5  	addi	a3, a3, -1456
800026bc: b3 05 d6 00  	add	a1, a2, a3
800026c0: 03 a7 05 00  	lw	a4, 0(a1)
800026c4: 93 07 17 00  	addi	a5, a4, 1
800026c8: 23 a0 f5 00  	sw	a5, 0(a1)
800026cc: 33 87 e5 00  	add	a4, a1, a4
800026d0: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800026d4: 03 a7 05 00  	lw	a4, 0(a1)
800026d8: 13 07 47 c0  	addi	a4, a4, -1020
800026dc: 33 37 e0 00  	snez	a4, a4
800026e0: 13 05 65 ff  	addi	a0, a0, -10
800026e4: 33 35 a0 00  	snez	a0, a0
800026e8: 33 75 e5 00  	and	a0, a0, a4
800026ec: 63 10 05 06  	bnez	a0, 0x8000274c <.LBB2_8+0x18>
800026f0: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
800026f4: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800026f8: 23 26 05 00  	sw	zero, 12(a0)
800026fc: 93 06 00 04  	addi	a3, zero, 64
80002700: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80002704: 23 2a 05 00  	sw	zero, 20(a0)
80002708: 93 06 10 00  	addi	a3, zero, 1
8000270c: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80002710: 23 2e 05 00  	sw	zero, 28(a0)
80002714: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80002718: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
8000271c: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80002720: 23 22 05 02  	sw	zero, 36(a0)
80002724: 23 20 c5 02  	sw	a2, 32(a0)

80002728 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80002728: 17 25 00 00  	auipc	a0, 2
8000272c: 13 05 85 89  	addi	a0, a0, -1896
80002730: 23 20 d5 00  	sw	a3, 0(a0)

80002734 <.LBB2_8>:
80002734: 17 25 00 00  	auipc	a0, 2
80002738: 13 05 c5 8c  	addi	a0, a0, -1844
;         while (fromhost == 0)
8000273c: 03 26 05 00  	lw	a2, 0(a0)
80002740: e3 0e 06 fe  	beqz	a2, 0x8000273c <.LBB2_8+0x8>
;         fromhost = 0;
80002744: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80002748: 23 a0 05 00  	sw	zero, 0(a1)
; }
8000274c: 67 80 00 00  	ret

80002750 <_out_null>:
; }
80002750: 67 80 00 00  	ret

80002754 <_ftoa>:
; {
80002754: 13 01 01 f9  	addi	sp, sp, -112
80002758: 23 26 11 06  	sw	ra, 108(sp)
8000275c: 23 24 81 06  	sw	s0, 104(sp)
80002760: 23 22 91 06  	sw	s1, 100(sp)
80002764: 23 20 21 07  	sw	s2, 96(sp)
80002768: 23 2e 31 05  	sw	s3, 92(sp)
8000276c: 23 2c 41 05  	sw	s4, 88(sp)
80002770: 23 2a 51 05  	sw	s5, 84(sp)
80002774: 23 28 61 05  	sw	s6, 80(sp)
80002778: 23 26 71 05  	sw	s7, 76(sp)
8000277c: 23 24 81 05  	sw	s8, 72(sp)
80002780: 23 22 91 05  	sw	s9, 68(sp)
80002784: 23 20 a1 05  	sw	s10, 64(sp)
80002788: 27 3c 81 02  	fsd	fs0, 56(sp)
8000278c: 27 38 91 02  	fsd	fs1, 48(sp)
80002790: 27 34 21 03  	fsd	fs2, 40(sp)

80002794 <.LBB4_83>:
80002794: 97 24 00 00  	auipc	s1, 2
80002798: 93 84 44 8c  	addi	s1, s1, -1852
8000279c: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800027a0: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800027a4: 93 0a 08 00  	mv	s5, a6
800027a8: 13 89 07 00  	mv	s2, a5
800027ac: 93 89 06 00  	mv	s3, a3
800027b0: 13 0a 06 00  	mv	s4, a2
800027b4: 13 8b 05 00  	mv	s6, a1
800027b8: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800027bc: 63 98 04 0e  	bnez	s1, 0x800028ac <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800027c0: 13 f5 2a 00  	andi	a0, s5, 2
800027c4: 93 f5 3a 00  	andi	a1, s5, 3
800027c8: b3 35 b0 00  	snez	a1, a1
800027cc: 13 36 59 00  	sltiu	a2, s2, 5
800027d0: b3 65 b6 00  	or	a1, a2, a1
800027d4: 93 5c 15 00  	srli	s9, a0, 1
800027d8: 13 04 0a 00  	mv	s0, s4
800027dc: 63 96 05 02  	bnez	a1, 0x80002808 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800027e0: 93 04 c9 ff  	addi	s1, s2, -4
800027e4: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800027e8: 13 04 16 00  	addi	s0, a2, 1
800027ec: 13 05 00 02  	addi	a0, zero, 32
800027f0: 93 05 0b 00  	mv	a1, s6
800027f4: 93 86 09 00  	mv	a3, s3
800027f8: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800027fc: 93 84 f4 ff  	addi	s1, s1, -1
80002800: 13 06 04 00  	mv	a2, s0
80002804: e3 92 04 fe  	bnez	s1, 0x800027e8 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80002808: 93 04 14 00  	addi	s1, s0, 1
8000280c: 13 05 d0 02  	addi	a0, zero, 45
80002810: 93 05 0b 00  	mv	a1, s6
80002814: 13 06 04 00  	mv	a2, s0
80002818: 93 86 09 00  	mv	a3, s3
8000281c: e7 80 0b 00  	jalr	s7
80002820: 93 0a 24 00  	addi	s5, s0, 2
80002824: 13 05 90 06  	addi	a0, zero, 105
80002828: 93 05 0b 00  	mv	a1, s6
8000282c: 13 86 04 00  	mv	a2, s1
80002830: 93 86 09 00  	mv	a3, s3
80002834: e7 80 0b 00  	jalr	s7
80002838: 13 0c 34 00  	addi	s8, s0, 3
8000283c: 13 05 e0 06  	addi	a0, zero, 110
80002840: 93 05 0b 00  	mv	a1, s6
80002844: 13 86 0a 00  	mv	a2, s5
80002848: 93 86 09 00  	mv	a3, s3
8000284c: e7 80 0b 00  	jalr	s7
80002850: 93 04 44 00  	addi	s1, s0, 4
80002854: 13 05 60 06  	addi	a0, zero, 102
80002858: 93 05 0b 00  	mv	a1, s6
8000285c: 13 06 0c 00  	mv	a2, s8
80002860: 93 86 09 00  	mv	a3, s3
80002864: e7 80 0b 00  	jalr	s7
80002868: 33 85 44 41  	sub	a0, s1, s4
8000286c: 33 35 25 01  	sltu	a0, a0, s2
80002870: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002874: 93 c5 1c 00  	xori	a1, s9, 1
80002878: 33 e5 a5 00  	or	a0, a1, a0
8000287c: 63 16 05 56  	bnez	a0, 0x80002de8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002880: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002884: 13 84 14 00  	addi	s0, s1, 1
80002888: 13 05 00 02  	addi	a0, zero, 32
8000288c: 93 05 0b 00  	mv	a1, s6
80002890: 13 86 04 00  	mv	a2, s1
80002894: 93 86 09 00  	mv	a3, s3
80002898: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
8000289c: 33 05 8a 00  	add	a0, s4, s0
800028a0: 93 04 04 00  	mv	s1, s0
800028a4: e3 60 25 ff  	bltu	a0, s2, 0x80002884 <.LBB4_83+0xf0>
800028a8: 6f 00 40 54  	j	0x80002dec <.LBB4_90+0x378>
800028ac: 53 04 a5 22  	fmv.d	fs0, fa0

800028b0 <.LBB4_84>:
800028b0: 17 15 00 00  	auipc	a0, 1
800028b4: 13 05 05 7b  	addi	a0, a0, 1968
800028b8: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
800028bc: 53 05 05 a2  	fle.d	a0, fa0, ft0
800028c0: 63 1e 05 00  	bnez	a0, 0x800028dc <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800028c4: 93 f5 4a 00  	andi	a1, s5, 4
800028c8: 13 b5 15 00  	seqz	a0, a1
800028cc: 63 82 05 06  	beqz	a1, 0x80002930 <.LBB4_88>

800028d0 <.LBB4_85>:
800028d0: 17 1c 00 00  	auipc	s8, 1
800028d4: 13 0c 0c 4b  	addi	s8, s8, 1200
800028d8: 6f 00 00 06  	j	0x80002938 <.LBB4_88+0x8>

800028dc <.LBB4_86>:
800028dc: 17 15 00 00  	auipc	a0, 1
800028e0: 13 05 c5 78  	addi	a0, a0, 1932
800028e4: 07 30 05 00  	fld	ft0, 0(a0)

800028e8 <.LBB4_87>:
800028e8: 17 15 00 00  	auipc	a0, 1
800028ec: 13 05 85 78  	addi	a0, a0, 1928
800028f0: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
800028f4: 53 05 04 a2  	fle.d	a0, fs0, ft0
800028f8: d3 85 80 a2  	fle.d	a1, ft1, fs0
800028fc: 33 75 b5 00  	and	a0, a0, a1
80002900: 63 1e 05 0e  	bnez	a0, 0x800029fc <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002904: 13 85 0b 00  	mv	a0, s7
80002908: 93 05 0b 00  	mv	a1, s6
8000290c: 13 06 0a 00  	mv	a2, s4
80002910: 93 86 09 00  	mv	a3, s3
80002914: 53 05 84 22  	fmv.d	fa0, fs0
80002918: 93 07 09 00  	mv	a5, s2
8000291c: 13 88 0a 00  	mv	a6, s5
80002920: 97 00 00 00  	auipc	ra, 0
80002924: e7 80 40 51  	jalr	1300(ra)
80002928: 13 04 05 00  	mv	s0, a0
8000292c: 6f 00 00 4c  	j	0x80002dec <.LBB4_90+0x378>

80002930 <.LBB4_88>:
80002930: 17 1c 00 00  	auipc	s8, 1
80002934: 13 0c fc 46  	addi	s8, s8, 1135
80002938: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
8000293c: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002940: 13 f5 3a 00  	andi	a0, s5, 3
80002944: 33 35 a0 00  	snez	a0, a0
80002948: b3 b5 2c 01  	sltu	a1, s9, s2
8000294c: 93 c5 15 00  	xori	a1, a1, 1
80002950: 33 65 b5 00  	or	a0, a0, a1
80002954: 93 fa 2a 00  	andi	s5, s5, 2
80002958: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000295c: 63 16 05 02  	bnez	a0, 0x80002988 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80002960: 33 04 99 41  	sub	s0, s2, s9
80002964: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002968: 93 04 16 00  	addi	s1, a2, 1
8000296c: 13 05 00 02  	addi	a0, zero, 32
80002970: 93 05 0b 00  	mv	a1, s6
80002974: 93 86 09 00  	mv	a3, s3
80002978: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
8000297c: 13 04 f4 ff  	addi	s0, s0, -1
80002980: 13 86 04 00  	mv	a2, s1
80002984: e3 12 04 fe  	bnez	s0, 0x80002968 <.LBB4_88+0x38>
80002988: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
8000298c: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002990: 33 05 9c 01  	add	a0, s8, s9
80002994: 03 45 05 00  	lbu	a0, 0(a0)
80002998: 13 86 04 00  	mv	a2, s1
8000299c: 13 84 fc ff  	addi	s0, s9, -1
800029a0: 93 84 14 00  	addi	s1, s1, 1
800029a4: 93 05 0b 00  	mv	a1, s6
800029a8: 93 86 09 00  	mv	a3, s3
800029ac: e7 80 0b 00  	jalr	s7
800029b0: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800029b4: e3 1e 04 fc  	bnez	s0, 0x80002990 <.LBB4_88+0x60>
800029b8: 33 85 44 41  	sub	a0, s1, s4
800029bc: 33 35 25 01  	sltu	a0, a0, s2
800029c0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800029c4: 93 c5 1a 00  	xori	a1, s5, 1
800029c8: 33 e5 a5 00  	or	a0, a1, a0
800029cc: 63 1e 05 40  	bnez	a0, 0x80002de8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800029d0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800029d4: 13 84 14 00  	addi	s0, s1, 1
800029d8: 13 05 00 02  	addi	a0, zero, 32
800029dc: 93 05 0b 00  	mv	a1, s6
800029e0: 13 86 04 00  	mv	a2, s1
800029e4: 93 86 09 00  	mv	a3, s3
800029e8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800029ec: 33 05 8a 00  	add	a0, s4, s0
800029f0: 93 04 04 00  	mv	s1, s0
800029f4: e3 60 25 ff  	bltu	a0, s2, 0x800029d4 <.LBB4_88+0xa4>
800029f8: 6f 00 40 3f  	j	0x80002dec <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
800029fc: 13 f5 0a 40  	andi	a0, s5, 1024
80002a00: 13 0c 60 00  	addi	s8, zero, 6
80002a04: 63 04 05 00  	beqz	a0, 0x80002a0c <.LBB4_88+0xdc>
80002a08: 13 0c 07 00  	mv	s8, a4
80002a0c: 13 05 a0 00  	addi	a0, zero, 10
80002a10: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002a14: 63 6c ac 02  	bltu	s8, a0, 0x80002a4c <.LBB4_88+0x11c>
80002a18: 93 04 6c ff  	addi	s1, s8, -10
80002a1c: 13 05 f0 01  	addi	a0, zero, 31
80002a20: 63 e4 a4 00  	bltu	s1, a0, 0x80002a28 <.LBB4_88+0xf8>
80002a24: 93 04 f0 01  	addi	s1, zero, 31
80002a28: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002a2c: 13 05 81 00  	addi	a0, sp, 8
80002a30: 93 05 00 03  	addi	a1, zero, 48
80002a34: 13 06 04 00  	mv	a2, s0
80002a38: 97 e0 ff ff  	auipc	ra, 1048574
80002a3c: e7 80 00 b2  	jalr	-1248(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002a40: 13 c5 f4 ff  	not	a0, s1
80002a44: 33 0c ac 00  	add	s8, s8, a0
80002a48: 6f 00 80 00  	j	0x80002a50 <.LBB4_88+0x120>
80002a4c: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80002a50: 13 15 3c 00  	slli	a0, s8, 3

80002a54 <.LBB4_89>:
80002a54: 97 15 00 00  	auipc	a1, 1
80002a58: 93 85 c5 50  	addi	a1, a1, 1292
80002a5c: 33 05 b5 00  	add	a0, a0, a1
80002a60: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002a64: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80002a68: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002a6c: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80002a70: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002a74 <.LBB4_90>:
80002a74: 17 15 00 00  	auipc	a0, 1
80002a78: 13 05 45 60  	addi	a0, a0, 1540
80002a7c: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80002a80: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80002a84: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80002a88: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002a8c: d3 05 01 a2  	fle.d	a1, ft2, ft0
80002a90: 63 90 05 02  	bnez	a1, 0x80002ab0 <.LBB4_90+0x3c>
;     ++frac;
80002a94: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80002a98: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80002a9c: d3 15 11 a2  	flt.d	a1, ft2, ft1
80002aa0: 63 94 05 02  	bnez	a1, 0x80002ac8 <.LBB4_90+0x54>
80002aa4: 13 05 00 00  	mv	a0, zero
;       ++whole;
80002aa8: 93 84 14 00  	addi	s1, s1, 1
80002aac: 6f 00 c0 01  	j	0x80002ac8 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80002ab0: d3 15 01 a2  	flt.d	a1, ft2, ft0
80002ab4: 63 9a 05 00  	bnez	a1, 0x80002ac8 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80002ab8: 93 35 15 00  	seqz	a1, a0
80002abc: 13 76 15 00  	andi	a2, a0, 1
80002ac0: b3 65 b6 00  	or	a1, a2, a1
80002ac4: 33 85 a5 00  	add	a0, a1, a0
80002ac8: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80002acc: 63 0c 0c 0c  	beqz	s8, 0x80002ba4 <.LBB4_90+0x130>
80002ad0: 13 06 00 00  	mv	a2, zero
80002ad4: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002ad8: 33 83 85 00  	add	t1, a1, s0
80002adc: 93 02 00 02  	addi	t0, zero, 32
80002ae0: 33 87 82 40  	sub	a4, t0, s0
80002ae4: b7 d5 cc cc  	lui	a1, 838861
80002ae8: 93 83 d5 cc  	addi	t2, a1, -819
80002aec: 13 08 a0 00  	addi	a6, zero, 10
80002af0: 93 08 90 00  	addi	a7, zero, 9
80002af4: 63 04 c7 0c  	beq	a4, a2, 0x80002bbc <.LBB4_90+0x148>
80002af8: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80002afc: 33 35 75 02  	mulhu	a0, a0, t2
80002b00: 13 55 35 00  	srli	a0, a0, 3
80002b04: b3 06 05 03  	mul	a3, a0, a6
80002b08: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002b0c: 93 e6 06 03  	ori	a3, a3, 48
80002b10: b3 07 c3 00  	add	a5, t1, a2
80002b14: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80002b18: 13 06 16 00  	addi	a2, a2, 1
80002b1c: e3 ec b8 fc  	bltu	a7, a1, 0x80002af4 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002b20: 33 05 c4 00  	add	a0, s0, a2
80002b24: 93 05 f5 ff  	addi	a1, a0, -1
80002b28: 93 06 e0 01  	addi	a3, zero, 30
80002b2c: b3 b6 b6 00  	sltu	a3, a3, a1
80002b30: 33 47 cc 00  	xor	a4, s8, a2
80002b34: 13 37 17 00  	seqz	a4, a4
80002b38: b3 e6 e6 00  	or	a3, a3, a4
80002b3c: 63 94 06 08  	bnez	a3, 0x80002bc4 <.LBB4_90+0x150>
80002b40: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002b44: 33 05 85 00  	add	a0, a0, s0
80002b48: 93 45 f6 ff  	not	a1, a2
80002b4c: 33 8c 85 01  	add	s8, a1, s8
80002b50: 33 04 c4 00  	add	s0, s0, a2
80002b54: 93 05 f0 01  	addi	a1, zero, 31
80002b58: b3 86 85 40  	sub	a3, a1, s0
80002b5c: 33 05 c5 00  	add	a0, a0, a2
80002b60: 93 05 0c 00  	mv	a1, s8
80002b64: 63 64 dc 00  	bltu	s8, a3, 0x80002b6c <.LBB4_90+0xf8>
80002b68: 93 85 06 00  	mv	a1, a3
80002b6c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002b70: 93 05 00 03  	addi	a1, zero, 48
80002b74: 97 e0 ff ff  	auipc	ra, 1048574
80002b78: e7 80 40 9e  	jalr	-1564(ra)
80002b7c: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002b80: b3 05 a4 00  	add	a1, s0, a0
80002b84: 93 b5 f5 01  	sltiu	a1, a1, 31
80002b88: 33 46 ac 00  	xor	a2, s8, a0
80002b8c: 33 36 c0 00  	snez	a2, a2
80002b90: 33 f6 c5 00  	and	a2, a1, a2
80002b94: 13 05 15 00  	addi	a0, a0, 1
80002b98: e3 14 06 fe  	bnez	a2, 0x80002b80 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002b9c: 33 05 a4 00  	add	a0, s0, a0
80002ba0: 6f 00 80 02  	j	0x80002bc8 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80002ba4: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002ba8: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002bac: 53 05 10 a2  	fle.d	a0, ft0, ft1
80002bb0: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002bb4: b3 84 a4 00  	add	s1, s1, a0
80002bb8: 6f 00 c0 03  	j	0x80002bf4 <.LBB4_90+0x180>
80002bbc: 13 04 00 02  	addi	s0, zero, 32
80002bc0: 6f 00 80 03  	j	0x80002bf8 <.LBB4_90+0x184>
80002bc4: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002bc8: 63 8e 05 00  	beqz	a1, 0x80002be4 <.LBB4_90+0x170>
;       buf[len++] = '.';
80002bcc: 13 04 15 00  	addi	s0, a0, 1
80002bd0: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80002bd4: 33 85 a5 00  	add	a0, a1, a0
80002bd8: 93 05 e0 02  	addi	a1, zero, 46
80002bdc: 23 00 b5 00  	sb	a1, 0(a0)
80002be0: 6f 00 80 00  	j	0x80002be8 <.LBB4_90+0x174>
80002be4: 13 04 05 00  	mv	s0, a0
80002be8: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002bec: 93 02 04 00  	mv	t0, s0
80002bf0: 63 64 85 00  	bltu	a0, s0, 0x80002bf8 <.LBB4_90+0x184>
80002bf4: 93 02 00 02  	addi	t0, zero, 32
80002bf8: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002bfc: 37 65 66 66  	lui	a0, 419430
80002c00: 93 05 75 66  	addi	a1, a0, 1639
80002c04: 13 08 a0 00  	addi	a6, zero, 10
80002c08: 93 06 81 00  	addi	a3, sp, 8
80002c0c: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002c10: 63 80 82 04  	beq	t0, s0, 0x80002c50 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002c14: 33 95 b4 02  	mulh	a0, s1, a1
80002c18: 93 57 f5 01  	srli	a5, a0, 31
80002c1c: 13 55 25 40  	srai	a0, a0, 2
80002c20: 33 05 f5 00  	add	a0, a0, a5
80002c24: b3 07 05 03  	mul	a5, a0, a6
80002c28: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002c2c: 93 87 07 03  	addi	a5, a5, 48
80002c30: 13 0c 14 00  	addi	s8, s0, 1
80002c34: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002c38: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002c3c: 23 00 f4 00  	sb	a5, 0(s0)
80002c40: 13 04 0c 00  	mv	s0, s8
80002c44: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002c48: e3 64 c7 fc  	bltu	a4, a2, 0x80002c10 <.LBB4_90+0x19c>
80002c4c: 6f 00 80 00  	j	0x80002c54 <.LBB4_90+0x1e0>
80002c50: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002c54: 93 f4 3a 00  	andi	s1, s5, 3
80002c58: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002c5c: 63 96 a4 06  	bne	s1, a0, 0x80002cc8 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002c60: 63 0c 09 00  	beqz	s2, 0x80002c78 <.LBB4_90+0x204>
80002c64: 13 f5 ca 00  	andi	a0, s5, 12
80002c68: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002c6c: 33 e5 ac 00  	or	a0, s9, a0
80002c70: 33 09 a9 40  	sub	s2, s2, a0
80002c74: 6f 00 80 00  	j	0x80002c7c <.LBB4_90+0x208>
80002c78: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002c7c: 33 35 2c 01  	sltu	a0, s8, s2
80002c80: 93 45 15 00  	xori	a1, a0, 1
80002c84: 13 05 f0 01  	addi	a0, zero, 31
80002c88: 33 36 85 01  	sltu	a2, a0, s8
80002c8c: b3 65 b6 00  	or	a1, a2, a1
80002c90: 63 9c 05 02  	bnez	a1, 0x80002cc8 <.LBB4_90+0x254>
80002c94: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002c98: 93 45 fc ff  	not	a1, s8
80002c9c: b3 05 b9 00  	add	a1, s2, a1
80002ca0: 33 06 85 41  	sub	a2, a0, s8
80002ca4: 33 85 86 01  	add	a0, a3, s8
80002ca8: 63 e4 c5 00  	bltu	a1, a2, 0x80002cb0 <.LBB4_90+0x23c>
80002cac: 93 05 06 00  	mv	a1, a2
80002cb0: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002cb4: 93 05 00 03  	addi	a1, zero, 48
80002cb8: 13 06 04 00  	mv	a2, s0
80002cbc: 97 e0 ff ff  	auipc	ra, 1048574
80002cc0: e7 80 c0 89  	jalr	-1892(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002cc4: 33 0c 84 01  	add	s8, s0, s8
80002cc8: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002ccc: 63 6a 85 05  	bltu	a0, s8, 0x80002d20 <.LBB4_90+0x2ac>
;     if (negative) {
80002cd0: 63 8c 0c 00  	beqz	s9, 0x80002ce8 <.LBB4_90+0x274>
80002cd4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002cd8: 33 05 85 01  	add	a0, a0, s8
80002cdc: 13 0c 1c 00  	addi	s8, s8, 1
80002ce0: 93 05 d0 02  	addi	a1, zero, 45
80002ce4: 6f 00 80 03  	j	0x80002d1c <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002ce8: 13 f5 4a 00  	andi	a0, s5, 4
80002cec: 63 10 05 02  	bnez	a0, 0x80002d0c <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002cf0: 13 f5 8a 00  	andi	a0, s5, 8
80002cf4: 63 06 05 02  	beqz	a0, 0x80002d20 <.LBB4_90+0x2ac>
80002cf8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002cfc: 33 05 85 01  	add	a0, a0, s8
80002d00: 13 0c 1c 00  	addi	s8, s8, 1
80002d04: 93 05 00 02  	addi	a1, zero, 32
80002d08: 6f 00 40 01  	j	0x80002d1c <.LBB4_90+0x2a8>
80002d0c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002d10: 33 05 85 01  	add	a0, a0, s8
80002d14: 13 0c 1c 00  	addi	s8, s8, 1
80002d18: 93 05 b0 02  	addi	a1, zero, 43
80002d1c: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002d20: 33 35 90 00  	snez	a0, s1
80002d24: b3 35 2c 01  	sltu	a1, s8, s2
80002d28: 93 c5 15 00  	xori	a1, a1, 1
80002d2c: 33 65 b5 00  	or	a0, a0, a1
80002d30: 93 fa 2a 00  	andi	s5, s5, 2
80002d34: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002d38: 63 16 05 02  	bnez	a0, 0x80002d64 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002d3c: b3 04 89 41  	sub	s1, s2, s8
80002d40: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002d44: 13 04 16 00  	addi	s0, a2, 1
80002d48: 13 05 00 02  	addi	a0, zero, 32
80002d4c: 93 05 0b 00  	mv	a1, s6
80002d50: 93 86 09 00  	mv	a3, s3
80002d54: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002d58: 93 84 f4 ff  	addi	s1, s1, -1
80002d5c: 13 06 04 00  	mv	a2, s0
80002d60: e3 92 04 fe  	bnez	s1, 0x80002d44 <.LBB4_90+0x2d0>
80002d64: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002d68: 63 0c 0c 02  	beqz	s8, 0x80002da0 <.LBB4_90+0x32c>
80002d6c: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002d70: 33 85 8c 01  	add	a0, s9, s8
80002d74: 03 45 05 00  	lbu	a0, 0(a0)
80002d78: 13 0d fc ff  	addi	s10, s8, -1
80002d7c: 93 04 14 00  	addi	s1, s0, 1
80002d80: 93 05 0b 00  	mv	a1, s6
80002d84: 13 06 04 00  	mv	a2, s0
80002d88: 93 86 09 00  	mv	a3, s3
80002d8c: e7 80 0b 00  	jalr	s7
80002d90: 13 84 04 00  	mv	s0, s1
80002d94: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002d98: e3 1c 0d fc  	bnez	s10, 0x80002d70 <.LBB4_90+0x2fc>
80002d9c: 6f 00 80 00  	j	0x80002da4 <.LBB4_90+0x330>
80002da0: 93 04 04 00  	mv	s1, s0
80002da4: 33 85 44 41  	sub	a0, s1, s4
80002da8: 33 35 25 01  	sltu	a0, a0, s2
80002dac: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002db0: 93 c5 1a 00  	xori	a1, s5, 1
80002db4: 33 e5 a5 00  	or	a0, a1, a0
80002db8: 63 18 05 02  	bnez	a0, 0x80002de8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002dbc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002dc0: 13 84 14 00  	addi	s0, s1, 1
80002dc4: 13 05 00 02  	addi	a0, zero, 32
80002dc8: 93 05 0b 00  	mv	a1, s6
80002dcc: 13 86 04 00  	mv	a2, s1
80002dd0: 93 86 09 00  	mv	a3, s3
80002dd4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002dd8: 33 05 8a 00  	add	a0, s4, s0
80002ddc: 93 04 04 00  	mv	s1, s0
80002de0: e3 60 25 ff  	bltu	a0, s2, 0x80002dc0 <.LBB4_90+0x34c>
80002de4: 6f 00 80 00  	j	0x80002dec <.LBB4_90+0x378>
80002de8: 13 84 04 00  	mv	s0, s1
; }
80002dec: 13 05 04 00  	mv	a0, s0
80002df0: 07 39 81 02  	fld	fs2, 40(sp)
80002df4: 87 34 01 03  	fld	fs1, 48(sp)
80002df8: 07 34 81 03  	fld	fs0, 56(sp)
80002dfc: 03 2d 01 04  	lw	s10, 64(sp)
80002e00: 83 2c 41 04  	lw	s9, 68(sp)
80002e04: 03 2c 81 04  	lw	s8, 72(sp)
80002e08: 83 2b c1 04  	lw	s7, 76(sp)
80002e0c: 03 2b 01 05  	lw	s6, 80(sp)
80002e10: 83 2a 41 05  	lw	s5, 84(sp)
80002e14: 03 2a 81 05  	lw	s4, 88(sp)
80002e18: 83 29 c1 05  	lw	s3, 92(sp)
80002e1c: 03 29 01 06  	lw	s2, 96(sp)
80002e20: 83 24 41 06  	lw	s1, 100(sp)
80002e24: 03 24 81 06  	lw	s0, 104(sp)
80002e28: 83 20 c1 06  	lw	ra, 108(sp)
80002e2c: 13 01 01 07  	addi	sp, sp, 112
80002e30: 67 80 00 00  	ret

80002e34 <_etoa>:
; {
80002e34: 13 01 01 f8  	addi	sp, sp, -128
80002e38: 23 2e 11 06  	sw	ra, 124(sp)
80002e3c: 23 2c 81 06  	sw	s0, 120(sp)
80002e40: 23 2a 91 06  	sw	s1, 116(sp)
80002e44: 23 28 21 07  	sw	s2, 112(sp)
80002e48: 23 26 31 07  	sw	s3, 108(sp)
80002e4c: 23 24 41 07  	sw	s4, 104(sp)
80002e50: 23 22 51 07  	sw	s5, 100(sp)
80002e54: 23 20 61 07  	sw	s6, 96(sp)
80002e58: 23 2e 71 05  	sw	s7, 92(sp)
80002e5c: 23 2c 81 05  	sw	s8, 88(sp)
80002e60: 23 2a 91 05  	sw	s9, 84(sp)
80002e64: 23 28 a1 05  	sw	s10, 80(sp)
80002e68: 23 26 b1 05  	sw	s11, 76(sp)

80002e6c <.LBB5_43>:
80002e6c: 97 14 00 00  	auipc	s1, 1
80002e70: 93 84 44 21  	addi	s1, s1, 532
80002e74: 87 b0 04 00  	fld	ft1, 0(s1)

80002e78 <.LBB5_44>:
80002e78: 97 14 00 00  	auipc	s1, 1
80002e7c: 93 84 04 21  	addi	s1, s1, 528
80002e80: 07 b1 04 00  	fld	ft2, 0(s1)
80002e84: 53 00 a5 22  	fmv.d	ft0, fa0
80002e88: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002e8c: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002e90: b3 f4 84 00  	and	s1, s1, s0
80002e94: 93 0a 08 00  	mv	s5, a6
80002e98: 13 89 07 00  	mv	s2, a5
80002e9c: 93 07 07 00  	mv	a5, a4
80002ea0: 93 89 06 00  	mv	s3, a3
80002ea4: 13 0a 06 00  	mv	s4, a2
80002ea8: 13 8b 05 00  	mv	s6, a1
80002eac: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002eb0: 63 92 04 06  	bnez	s1, 0x80002f14 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002eb4: 13 85 0b 00  	mv	a0, s7
80002eb8: 93 05 0b 00  	mv	a1, s6
80002ebc: 13 06 0a 00  	mv	a2, s4
80002ec0: 93 86 09 00  	mv	a3, s3
80002ec4: 53 05 00 22  	fmv.d	fa0, ft0
80002ec8: 13 87 07 00  	mv	a4, a5
80002ecc: 93 07 09 00  	mv	a5, s2
80002ed0: 13 88 0a 00  	mv	a6, s5
80002ed4: 83 2d c1 04  	lw	s11, 76(sp)
80002ed8: 03 2d 01 05  	lw	s10, 80(sp)
80002edc: 83 2c 41 05  	lw	s9, 84(sp)
80002ee0: 03 2c 81 05  	lw	s8, 88(sp)
80002ee4: 83 2b c1 05  	lw	s7, 92(sp)
80002ee8: 03 2b 01 06  	lw	s6, 96(sp)
80002eec: 83 2a 41 06  	lw	s5, 100(sp)
80002ef0: 03 2a 81 06  	lw	s4, 104(sp)
80002ef4: 83 29 c1 06  	lw	s3, 108(sp)
80002ef8: 03 29 01 07  	lw	s2, 112(sp)
80002efc: 83 24 41 07  	lw	s1, 116(sp)
80002f00: 03 24 81 07  	lw	s0, 120(sp)
80002f04: 83 20 c1 07  	lw	ra, 124(sp)
80002f08: 13 01 01 08  	addi	sp, sp, 128
80002f0c: 17 03 00 00  	auipc	t1, 0
80002f10: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002f14: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002f18: 13 f5 0a 40  	andi	a0, s5, 1024
80002f1c: 13 07 60 00  	addi	a4, zero, 6
80002f20: 63 04 05 00  	beqz	a0, 0x80002f28 <.LBB5_44+0xb0>
80002f24: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002f28: 27 30 a1 02  	fsd	fa0, 32(sp)
80002f2c: 83 25 41 02  	lw	a1, 36(sp)
80002f30: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002f34: 93 d6 45 01  	srli	a3, a1, 20
80002f38: b7 07 10 00  	lui	a5, 256
80002f3c: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002f40: b3 f5 f5 00  	and	a1, a1, a5
80002f44: 23 2c c1 00  	sw	a2, 24(sp)
80002f48: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002f4c: b3 e5 c5 00  	or	a1, a1, a2
80002f50: 23 2e b1 00  	sw	a1, 28(sp)
80002f54: 87 30 81 01  	fld	ft1, 24(sp)

80002f58 <.LBB5_45>:
80002f58: 97 15 00 00  	auipc	a1, 1
80002f5c: 93 85 85 13  	addi	a1, a1, 312
80002f60: 07 b1 05 00  	fld	ft2, 0(a1)

80002f64 <.LBB5_46>:
80002f64: 97 15 00 00  	auipc	a1, 1
80002f68: 93 85 45 13  	addi	a1, a1, 308
80002f6c: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002f70: 93 f5 f6 7f  	andi	a1, a3, 2047
80002f74: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002f78: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002f7c: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80002f80 <.LBB5_47>:
80002f80: 97 15 00 00  	auipc	a1, 1
80002f84: 93 85 05 12  	addi	a1, a1, 288
80002f88: 07 b1 05 00  	fld	ft2, 0(a1)

80002f8c <.LBB5_48>:
80002f8c: 97 15 00 00  	auipc	a1, 1
80002f90: 93 85 c5 11  	addi	a1, a1, 284
80002f94: 87 b1 05 00  	fld	ft3, 0(a1)

80002f98 <.LBB5_49>:
80002f98: 97 15 00 00  	auipc	a1, 1
80002f9c: 93 85 85 11  	addi	a1, a1, 280
80002fa0: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002fa4: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002fa8: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002fac: d3 80 05 d2  	fcvt.d.w	ft1, a1
80002fb0: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002fb4 <.LBB5_50>:
80002fb4: 17 16 00 00  	auipc	a2, 1
80002fb8: 13 06 46 10  	addi	a2, a2, 260
80002fbc: 87 31 06 00  	fld	ft3, 0(a2)

80002fc0 <.LBB5_51>:
80002fc0: 17 16 00 00  	auipc	a2, 1
80002fc4: 13 06 06 10  	addi	a2, a2, 256
80002fc8: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002fcc: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80002fd0: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002fd4: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002fd8: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002fdc: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002fe0: 13 06 f6 3f  	addi	a2, a2, 1023
80002fe4: 23 28 01 00  	sw	zero, 16(sp)
80002fe8: 13 16 46 01  	slli	a2, a2, 20
80002fec: 23 2a c1 00  	sw	a2, 20(sp)

80002ff0 <.LBB5_52>:
80002ff0: 17 16 00 00  	auipc	a2, 1
80002ff4: 13 06 06 0e  	addi	a2, a2, 224
80002ff8: 87 31 06 00  	fld	ft3, 0(a2)

80002ffc <.LBB5_53>:
80002ffc: 17 16 00 00  	auipc	a2, 1
80003000: 13 06 c6 0d  	addi	a2, a2, 220
80003004: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80003008: 87 32 01 01  	fld	ft5, 16(sp)

8000300c <.LBB5_54>:
8000300c: 17 16 00 00  	auipc	a2, 1
80003010: 13 06 c6 0b  	addi	a2, a2, 188
80003014: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80003018: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

8000301c <.LBB5_55>:
8000301c: 17 16 00 00  	auipc	a2, 1
80003020: 13 06 46 0c  	addi	a2, a2, 196
80003024: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80003028: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
8000302c: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80003030: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80003034: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80003038: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
8000303c: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80003040: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80003044: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80003048: 53 16 15 a2  	flt.d	a2, fa0, ft1
8000304c: 63 0a 06 00  	beqz	a2, 0x80003060 <.LBB5_56+0x10>

80003050 <.LBB5_56>:
80003050: 97 16 00 00  	auipc	a3, 1
80003054: 93 86 86 09  	addi	a3, a3, 152
80003058: 07 b1 06 00  	fld	ft2, 0(a3)
8000305c: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80003060: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80003064: 93 05 34 06  	addi	a1, s0, 99
80003068: 93 b5 75 0c  	sltiu	a1, a1, 199
8000306c: 13 06 50 00  	addi	a2, zero, 5
80003070: b7 16 00 00  	lui	a3, 1
80003074: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80003078: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
8000307c: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80003080: 63 84 06 06  	beqz	a3, 0x800030e8 <.LBB5_58+0x58>

80003084 <.LBB5_57>:
80003084: 97 15 00 00  	auipc	a1, 1
80003088: 93 85 c5 06  	addi	a1, a1, 108
8000308c: 07 b1 05 00  	fld	ft2, 0(a1)

80003090 <.LBB5_58>:
80003090: 97 15 00 00  	auipc	a1, 1
80003094: 93 85 85 06  	addi	a1, a1, 104
80003098: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
8000309c: d3 15 25 a2  	flt.d	a1, fa0, ft2
800030a0: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800030a4: b3 e5 c5 00  	or	a1, a1, a2
800030a8: 63 98 05 00  	bnez	a1, 0x800030b8 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800030ac: 63 40 e4 02  	blt	s0, a4, 0x800030cc <.LBB5_58+0x3c>
800030b0: 13 07 00 00  	mv	a4, zero
800030b4: 6f 00 00 02  	j	0x800030d4 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800030b8: 63 06 07 02  	beqz	a4, 0x800030e4 <.LBB5_58+0x54>
800030bc: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800030c0: 13 45 15 00  	xori	a0, a0, 1
800030c4: 33 07 a7 40  	sub	a4, a4, a0
800030c8: 6f 00 00 02  	j	0x800030e8 <.LBB5_58+0x58>
800030cc: 13 45 f4 ff  	not	a0, s0
800030d0: 33 07 a7 00  	add	a4, a4, a0
800030d4: 13 04 00 00  	mv	s0, zero
800030d8: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800030dc: 93 ea 0a 40  	ori	s5, s5, 1024
800030e0: 6f 00 80 00  	j	0x800030e8 <.LBB5_58+0x58>
800030e4: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800030e8: b3 05 99 41  	sub	a1, s2, s9
800030ec: 33 36 b9 00  	sltu	a2, s2, a1
800030f0: 13 05 00 00  	mv	a0, zero
800030f4: 63 14 06 00  	bnez	a2, 0x800030fc <.LBB5_58+0x6c>
800030f8: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800030fc: 93 07 00 00  	mv	a5, zero
80003100: 93 d5 1a 00  	srli	a1, s5, 1
80003104: 93 f4 15 00  	andi	s1, a1, 1
80003108: b3 35 90 01  	snez	a1, s9
8000310c: b3 f5 b4 00  	and	a1, s1, a1
80003110: 53 01 00 d2  	fcvt.d.w	ft2, zero
80003114: 63 94 05 00  	bnez	a1, 0x8000311c <.LBB5_58+0x8c>
80003118: 93 07 05 00  	mv	a5, a0
;   if (expval) {
8000311c: 93 35 14 00  	seqz	a1, s0
80003120: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80003124: 63 94 05 00  	bnez	a1, 0x8000312c <.LBB5_58+0x9c>
80003128: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
8000312c: 63 04 05 00  	beqz	a0, 0x80003134 <.LBB5_58+0xa4>
80003130: 53 15 a5 22  	fneg.d	fa0, fa0
80003134: 37 f5 ff ff  	lui	a0, 1048575
80003138: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
8000313c: 33 f8 aa 00  	and	a6, s5, a0
80003140: 13 85 0b 00  	mv	a0, s7
80003144: 93 05 0b 00  	mv	a1, s6
80003148: 13 06 0a 00  	mv	a2, s4
8000314c: 93 86 09 00  	mv	a3, s3
80003150: 97 f0 ff ff  	auipc	ra, 1048575
80003154: e7 80 40 60  	jalr	1540(ra)
80003158: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
8000315c: 63 82 0c 18  	beqz	s9, 0x800032e0 <.LBB5_58+0x250>
80003160: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80003164: 13 f5 0a 02  	andi	a0, s5, 32
80003168: 13 45 55 06  	xori	a0, a0, 101
8000316c: 93 05 0b 00  	mv	a1, s6
80003170: 13 06 0d 00  	mv	a2, s10
80003174: 93 86 09 00  	mv	a3, s3
80003178: e7 80 0b 00  	jalr	s7
8000317c: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80003180: 93 5a f4 01  	srli	s5, s0, 31
80003184: 13 55 f4 41  	srai	a0, s0, 31
80003188: b3 05 a4 00  	add	a1, s0, a0
8000318c: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80003190: 93 8d dc ff  	addi	s11, s9, -3
80003194: 13 04 f0 01  	addi	s0, zero, 31
80003198: 37 d5 cc cc  	lui	a0, 838861
8000319c: 13 05 d5 cc  	addi	a0, a0, -819
800031a0: 13 08 a0 00  	addi	a6, zero, 10
800031a4: 93 08 c1 02  	addi	a7, sp, 44
800031a8: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800031ac: b3 37 a7 02  	mulhu	a5, a4, a0
800031b0: 93 d5 37 00  	srli	a1, a5, 3
800031b4: b3 87 05 03  	mul	a5, a1, a6
800031b8: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800031bc: 13 e6 07 03  	ori	a2, a5, 48
800031c0: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800031c4: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800031c8: 13 0c 1c 00  	addi	s8, s8, 1
800031cc: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800031d0: 33 b6 e2 00  	sltu	a2, t0, a4
800031d4: 33 f6 c7 00  	and	a2, a5, a2
800031d8: 93 8d fd ff  	addi	s11, s11, -1
800031dc: 13 04 f4 ff  	addi	s0, s0, -1
800031e0: 13 87 05 00  	mv	a4, a1
800031e4: e3 14 06 fc  	bnez	a2, 0x800031ac <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800031e8: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800031ec: 33 35 ac 00  	sltu	a0, s8, a0
800031f0: 13 45 15 00  	xori	a0, a0, 1
800031f4: 93 c5 17 00  	xori	a1, a5, 1
800031f8: 33 e5 a5 00  	or	a0, a1, a0
800031fc: 63 12 05 04  	bnez	a0, 0x80003240 <.LBB5_58+0x1b0>
80003200: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003204: b3 85 8c 41  	sub	a1, s9, s8
80003208: 93 85 d5 ff  	addi	a1, a1, -3
8000320c: 13 06 f0 01  	addi	a2, zero, 31
80003210: 33 06 86 41  	sub	a2, a2, s8
80003214: 33 05 85 01  	add	a0, a0, s8
80003218: 63 e4 c5 00  	bltu	a1, a2, 0x80003220 <.LBB5_58+0x190>
8000321c: 93 05 06 00  	mv	a1, a2
80003220: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80003224: 93 05 00 03  	addi	a1, zero, 48
80003228: 97 d0 ff ff  	auipc	ra, 1048573
8000322c: e7 80 00 33  	jalr	816(ra)
;   if (flags & FLAGS_HASH) {
80003230: 63 e4 8d 00  	bltu	s11, s0, 0x80003238 <.LBB5_58+0x1a8>
80003234: 93 0d 04 00  	mv	s11, s0
80003238: 33 85 8d 01  	add	a0, s11, s8
8000323c: 13 0c 15 00  	addi	s8, a0, 1
80003240: 83 2c c1 00  	lw	s9, 12(sp)
80003244: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003248: 63 60 85 03  	bltu	a0, s8, 0x80003268 <.LBB5_58+0x1d8>
8000324c: 13 05 c1 02  	addi	a0, sp, 44
80003250: 33 05 85 01  	add	a0, a0, s8
80003254: 93 05 d0 02  	addi	a1, zero, 45
80003258: 63 94 0a 00  	bnez	s5, 0x80003260 <.LBB5_58+0x1d0>
8000325c: 93 05 b0 02  	addi	a1, zero, 43
80003260: 13 0c 1c 00  	addi	s8, s8, 1
80003264: 23 00 b5 00  	sb	a1, 0(a0)
80003268: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
8000326c: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80003270: 33 85 8a 01  	add	a0, s5, s8
80003274: 03 45 05 00  	lbu	a0, 0(a0)
80003278: 13 06 04 00  	mv	a2, s0
8000327c: 93 04 fc ff  	addi	s1, s8, -1
80003280: 13 04 14 00  	addi	s0, s0, 1
80003284: 93 05 0b 00  	mv	a1, s6
80003288: 93 86 09 00  	mv	a3, s3
8000328c: e7 80 0b 00  	jalr	s7
80003290: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80003294: e3 9e 04 fc  	bnez	s1, 0x80003270 <.LBB5_58+0x1e0>
80003298: 33 05 44 41  	sub	a0, s0, s4
8000329c: 33 35 25 01  	sltu	a0, a0, s2
800032a0: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800032a4: 93 c5 1c 00  	xori	a1, s9, 1
800032a8: 33 e5 a5 00  	or	a0, a1, a0
800032ac: 63 18 05 02  	bnez	a0, 0x800032dc <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800032b0: b3 04 40 41  	neg	s1, s4
800032b4: 13 0d 14 00  	addi	s10, s0, 1
800032b8: 13 05 00 02  	addi	a0, zero, 32
800032bc: 93 05 0b 00  	mv	a1, s6
800032c0: 13 06 04 00  	mv	a2, s0
800032c4: 93 86 09 00  	mv	a3, s3
800032c8: e7 80 0b 00  	jalr	s7
800032cc: 33 85 a4 01  	add	a0, s1, s10
800032d0: 13 04 0d 00  	mv	s0, s10
800032d4: e3 60 25 ff  	bltu	a0, s2, 0x800032b4 <.LBB5_58+0x224>
800032d8: 6f 00 80 00  	j	0x800032e0 <.LBB5_58+0x250>
800032dc: 13 0d 04 00  	mv	s10, s0
; }
800032e0: 13 05 0d 00  	mv	a0, s10
800032e4: 83 2d c1 04  	lw	s11, 76(sp)
800032e8: 03 2d 01 05  	lw	s10, 80(sp)
800032ec: 83 2c 41 05  	lw	s9, 84(sp)
800032f0: 03 2c 81 05  	lw	s8, 88(sp)
800032f4: 83 2b c1 05  	lw	s7, 92(sp)
800032f8: 03 2b 01 06  	lw	s6, 96(sp)
800032fc: 83 2a 41 06  	lw	s5, 100(sp)
80003300: 03 2a 81 06  	lw	s4, 104(sp)
80003304: 83 29 c1 06  	lw	s3, 108(sp)
80003308: 03 29 01 07  	lw	s2, 112(sp)
8000330c: 83 24 41 07  	lw	s1, 116(sp)
80003310: 03 24 81 07  	lw	s0, 120(sp)
80003314: 83 20 c1 07  	lw	ra, 124(sp)
80003318: 13 01 01 08  	addi	sp, sp, 128
8000331c: 67 80 00 00  	ret

80003320 <_ntoa_format>:
; {
80003320: 13 01 01 fc  	addi	sp, sp, -64
80003324: 23 2e 11 02  	sw	ra, 60(sp)
80003328: 23 2c 81 02  	sw	s0, 56(sp)
8000332c: 23 2a 91 02  	sw	s1, 52(sp)
80003330: 23 28 21 03  	sw	s2, 48(sp)
80003334: 23 26 31 03  	sw	s3, 44(sp)
80003338: 23 24 41 03  	sw	s4, 40(sp)
8000333c: 23 22 51 03  	sw	s5, 36(sp)
80003340: 23 20 61 03  	sw	s6, 32(sp)
80003344: 23 2e 71 01  	sw	s7, 28(sp)
80003348: 23 2c 81 01  	sw	s8, 24(sp)
8000334c: 23 2a 91 01  	sw	s9, 20(sp)
80003350: 23 28 a1 01  	sw	s10, 16(sp)
80003354: 23 26 b1 01  	sw	s11, 12(sp)
80003358: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
8000335c: 93 fa 2e 00  	andi	s5, t4, 2
80003360: 13 09 0e 00  	mv	s2, t3
80003364: 13 8d 03 00  	mv	s10, t2
80003368: 93 8c 08 00  	mv	s9, a7
8000336c: 13 8c 07 00  	mv	s8, a5
80003370: 93 89 06 00  	mv	s3, a3
80003374: 13 0a 06 00  	mv	s4, a2
80003378: 13 8b 05 00  	mv	s6, a1
8000337c: 93 0d 05 00  	mv	s11, a0
80003380: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80003384: 63 9e 0a 0c  	bnez	s5, 0x80003460 <_ntoa_format+0x140>
80003388: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000338c: 63 0e 09 00  	beqz	s2, 0x800033a8 <_ntoa_format+0x88>
80003390: 63 0e 04 00  	beqz	s0, 0x800033ac <_ntoa_format+0x8c>
80003394: 13 f5 cb 00  	andi	a0, s7, 12
80003398: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000339c: 33 65 05 01  	or	a0, a0, a6
800033a0: 33 09 a9 40  	sub	s2, s2, a0
800033a4: 6f 00 80 00  	j	0x800033ac <_ntoa_format+0x8c>
800033a8: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800033ac: 33 35 ac 01  	sltu	a0, s8, s10
800033b0: 93 45 15 00  	xori	a1, a0, 1
800033b4: 13 05 f0 01  	addi	a0, zero, 31
800033b8: 33 36 85 01  	sltu	a2, a0, s8
800033bc: b3 65 b6 00  	or	a1, a2, a1
800033c0: 63 94 05 04  	bnez	a1, 0x80003408 <_ntoa_format+0xe8>
800033c4: 23 22 51 01  	sw	s5, 4(sp)
800033c8: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800033cc: 93 45 fc ff  	not	a1, s8
800033d0: b3 85 a5 01  	add	a1, a1, s10
800033d4: 33 06 85 41  	sub	a2, a0, s8
800033d8: 33 05 87 01  	add	a0, a4, s8
800033dc: 63 e4 c5 00  	bltu	a1, a2, 0x800033e4 <_ntoa_format+0xc4>
800033e0: 93 05 06 00  	mv	a1, a2
800033e4: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800033e8: 93 05 00 03  	addi	a1, zero, 48
800033ec: 13 86 04 00  	mv	a2, s1
800033f0: 97 d0 ff ff  	auipc	ra, 1048573
800033f4: e7 80 80 16  	jalr	360(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800033f8: 33 8c 84 01  	add	s8, s1, s8
800033fc: 03 27 81 00  	lw	a4, 8(sp)
80003400: 13 88 0a 00  	mv	a6, s5
80003404: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003408: 63 0c 04 04  	beqz	s0, 0x80003460 <_ntoa_format+0x140>
8000340c: 33 35 2c 01  	sltu	a0, s8, s2
80003410: 93 45 15 00  	xori	a1, a0, 1
80003414: 13 05 f0 01  	addi	a0, zero, 31
80003418: 33 36 85 01  	sltu	a2, a0, s8
8000341c: b3 e5 c5 00  	or	a1, a1, a2
80003420: 63 90 05 04  	bnez	a1, 0x80003460 <_ntoa_format+0x140>
80003424: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003428: 93 45 fc ff  	not	a1, s8
8000342c: b3 05 b9 00  	add	a1, s2, a1
80003430: 33 06 85 41  	sub	a2, a0, s8
80003434: 33 05 87 01  	add	a0, a4, s8
80003438: 63 e4 c5 00  	bltu	a1, a2, 0x80003440 <_ntoa_format+0x120>
8000343c: 93 05 06 00  	mv	a1, a2
80003440: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80003444: 93 05 00 03  	addi	a1, zero, 48
80003448: 13 86 04 00  	mv	a2, s1
8000344c: 97 d0 ff ff  	auipc	ra, 1048573
80003450: e7 80 c0 10  	jalr	268(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003454: 33 8c 84 01  	add	s8, s1, s8
80003458: 03 27 81 00  	lw	a4, 8(sp)
8000345c: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80003460: 13 f5 0b 01  	andi	a0, s7, 16
80003464: 63 02 05 0e  	beqz	a0, 0x80003548 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80003468: 13 f5 0b 40  	andi	a0, s7, 1024
8000346c: 13 55 a5 00  	srli	a0, a0, 10
80003470: 93 35 1c 00  	seqz	a1, s8
80003474: 33 65 b5 00  	or	a0, a0, a1
80003478: 63 1e 05 02  	bnez	a0, 0x800034b4 <_ntoa_format+0x194>
8000347c: 33 45 ac 01  	xor	a0, s8, s10
80003480: 33 35 a0 00  	snez	a0, a0
80003484: b3 45 2c 01  	xor	a1, s8, s2
80003488: b3 35 b0 00  	snez	a1, a1
8000348c: 33 75 b5 00  	and	a0, a0, a1
80003490: 63 12 05 02  	bnez	a0, 0x800034b4 <_ntoa_format+0x194>
;       len--;
80003494: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80003498: b3 35 a0 00  	snez	a1, a0
8000349c: 13 86 0c ff  	addi	a2, s9, -16
800034a0: 13 36 16 00  	seqz	a2, a2
800034a4: b3 75 b6 00  	and	a1, a2, a1
800034a8: 63 84 05 00  	beqz	a1, 0x800034b0 <_ntoa_format+0x190>
800034ac: 13 05 ec ff  	addi	a0, s8, -2
800034b0: 13 0c 05 00  	mv	s8, a0
800034b4: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800034b8: 63 96 ac 02  	bne	s9, a0, 0x800034e4 <_ntoa_format+0x1c4>
800034bc: 13 f5 0b 02  	andi	a0, s7, 32
800034c0: 93 55 55 00  	srli	a1, a0, 5
800034c4: 13 06 f0 01  	addi	a2, zero, 31
800034c8: 33 36 86 01  	sltu	a2, a2, s8
800034cc: b3 e5 c5 00  	or	a1, a1, a2
800034d0: 63 9e 05 02  	bnez	a1, 0x8000350c <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800034d4: 33 05 87 01  	add	a0, a4, s8
800034d8: 13 0c 1c 00  	addi	s8, s8, 1
800034dc: 93 05 80 07  	addi	a1, zero, 120
800034e0: 6f 00 c0 04  	j	0x8000352c <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800034e4: 13 85 ec ff  	addi	a0, s9, -2
800034e8: 33 35 a0 00  	snez	a0, a0
800034ec: 93 05 f0 01  	addi	a1, zero, 31
800034f0: b3 b5 85 01  	sltu	a1, a1, s8
800034f4: 33 65 b5 00  	or	a0, a0, a1
800034f8: 63 1c 05 02  	bnez	a0, 0x80003530 <_ntoa_format+0x210>
;       buf[len++] = 'b';
800034fc: 33 05 87 01  	add	a0, a4, s8
80003500: 13 0c 1c 00  	addi	s8, s8, 1
80003504: 93 05 20 06  	addi	a1, zero, 98
80003508: 6f 00 40 02  	j	0x8000352c <_ntoa_format+0x20c>
8000350c: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003510: 13 35 15 00  	seqz	a0, a0
80003514: 93 c5 15 00  	xori	a1, a1, 1
80003518: 33 65 b5 00  	or	a0, a0, a1
8000351c: 63 1a 05 00  	bnez	a0, 0x80003530 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80003520: 33 05 87 01  	add	a0, a4, s8
80003524: 13 0c 1c 00  	addi	s8, s8, 1
80003528: 93 05 80 05  	addi	a1, zero, 88
8000352c: 23 00 b5 00  	sb	a1, 0(a0)
80003530: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003534: 63 60 85 07  	bltu	a0, s8, 0x80003594 <_ntoa_format+0x274>
;       buf[len++] = '0';
80003538: 33 05 87 01  	add	a0, a4, s8
8000353c: 13 0c 1c 00  	addi	s8, s8, 1
80003540: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80003544: 23 00 b5 00  	sb	a1, 0(a0)
80003548: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000354c: 63 64 85 05  	bltu	a0, s8, 0x80003594 <_ntoa_format+0x274>
;     if (negative) {
80003550: 63 0a 08 00  	beqz	a6, 0x80003564 <_ntoa_format+0x244>
;       buf[len++] = '-';
80003554: 33 05 87 01  	add	a0, a4, s8
80003558: 13 0c 1c 00  	addi	s8, s8, 1
8000355c: 93 05 d0 02  	addi	a1, zero, 45
80003560: 6f 00 00 03  	j	0x80003590 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80003564: 13 f5 4b 00  	andi	a0, s7, 4
80003568: 63 1e 05 00  	bnez	a0, 0x80003584 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
8000356c: 13 f5 8b 00  	andi	a0, s7, 8
80003570: 63 02 05 02  	beqz	a0, 0x80003594 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80003574: 33 05 87 01  	add	a0, a4, s8
80003578: 13 0c 1c 00  	addi	s8, s8, 1
8000357c: 93 05 00 02  	addi	a1, zero, 32
80003580: 6f 00 00 01  	j	0x80003590 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80003584: 33 05 87 01  	add	a0, a4, s8
80003588: 13 0c 1c 00  	addi	s8, s8, 1
8000358c: 93 05 b0 02  	addi	a1, zero, 43
80003590: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003594: 13 f5 3b 00  	andi	a0, s7, 3
80003598: 33 35 a0 00  	snez	a0, a0
8000359c: b3 35 2c 01  	sltu	a1, s8, s2
800035a0: 93 c5 15 00  	xori	a1, a1, 1
800035a4: 33 65 b5 00  	or	a0, a0, a1
800035a8: 13 04 0a 00  	mv	s0, s4
800035ac: 63 16 05 02  	bnez	a0, 0x800035d8 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800035b0: b3 04 89 41  	sub	s1, s2, s8
800035b4: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800035b8: 13 04 16 00  	addi	s0, a2, 1
800035bc: 13 05 00 02  	addi	a0, zero, 32
800035c0: 93 05 0b 00  	mv	a1, s6
800035c4: 93 86 09 00  	mv	a3, s3
800035c8: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800035cc: 93 84 f4 ff  	addi	s1, s1, -1
800035d0: 13 06 04 00  	mv	a2, s0
800035d4: e3 92 04 fe  	bnez	s1, 0x800035b8 <_ntoa_format+0x298>
800035d8: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800035dc: 63 0e 0c 02  	beqz	s8, 0x80003618 <_ntoa_format+0x2f8>
800035e0: 03 25 81 00  	lw	a0, 8(sp)
800035e4: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800035e8: 33 85 8b 01  	add	a0, s7, s8
800035ec: 03 45 05 00  	lbu	a0, 0(a0)
800035f0: 93 0c fc ff  	addi	s9, s8, -1
800035f4: 93 04 14 00  	addi	s1, s0, 1
800035f8: 93 05 0b 00  	mv	a1, s6
800035fc: 13 06 04 00  	mv	a2, s0
80003600: 93 86 09 00  	mv	a3, s3
80003604: e7 80 0d 00  	jalr	s11
80003608: 13 84 04 00  	mv	s0, s1
8000360c: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80003610: e3 9c 0c fc  	bnez	s9, 0x800035e8 <_ntoa_format+0x2c8>
80003614: 6f 00 80 00  	j	0x8000361c <_ntoa_format+0x2fc>
80003618: 93 04 04 00  	mv	s1, s0
8000361c: 33 85 44 41  	sub	a0, s1, s4
80003620: 33 35 25 01  	sltu	a0, a0, s2
80003624: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003628: 93 c5 1a 00  	xori	a1, s5, 1
8000362c: 33 e5 a5 00  	or	a0, a1, a0
80003630: 63 18 05 02  	bnez	a0, 0x80003660 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80003634: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003638: 13 84 14 00  	addi	s0, s1, 1
8000363c: 13 05 00 02  	addi	a0, zero, 32
80003640: 93 05 0b 00  	mv	a1, s6
80003644: 13 86 04 00  	mv	a2, s1
80003648: 93 86 09 00  	mv	a3, s3
8000364c: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80003650: 33 05 8a 00  	add	a0, s4, s0
80003654: 93 04 04 00  	mv	s1, s0
80003658: e3 60 25 ff  	bltu	a0, s2, 0x80003638 <_ntoa_format+0x318>
8000365c: 6f 00 80 00  	j	0x80003664 <_ntoa_format+0x344>
80003660: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80003664: 13 05 04 00  	mv	a0, s0
80003668: 83 2d c1 00  	lw	s11, 12(sp)
8000366c: 03 2d 01 01  	lw	s10, 16(sp)
80003670: 83 2c 41 01  	lw	s9, 20(sp)
80003674: 03 2c 81 01  	lw	s8, 24(sp)
80003678: 83 2b c1 01  	lw	s7, 28(sp)
8000367c: 03 2b 01 02  	lw	s6, 32(sp)
80003680: 83 2a 41 02  	lw	s5, 36(sp)
80003684: 03 2a 81 02  	lw	s4, 40(sp)
80003688: 83 29 c1 02  	lw	s3, 44(sp)
8000368c: 03 29 01 03  	lw	s2, 48(sp)
80003690: 83 24 41 03  	lw	s1, 52(sp)
80003694: 03 24 81 03  	lw	s0, 56(sp)
80003698: 83 20 c1 03  	lw	ra, 60(sp)
8000369c: 13 01 01 04  	addi	sp, sp, 64
800036a0: 67 80 00 00  	ret

800036a4 <_snrt_init_team>:
;     team->base.root = team;
800036a4: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800036a8: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800036ac: 03 23 87 00  	lw	t1, 8(a4)
800036b0: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800036b4: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800036b8: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800036bc: 83 22 47 00  	lw	t0, 4(a4)
800036c0: 33 88 08 03  	mul	a6, a7, a6
800036c4: 33 05 58 02  	mul	a0, a6, t0
800036c8: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800036cc: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800036d0: 33 85 68 40  	sub	a0, a7, t1
800036d4: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800036d8: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800036dc: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800036e0: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800036e4: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800036e8: 03 25 87 01  	lw	a0, 24(a4)
800036ec: b7 05 00 10  	lui	a1, 65536
800036f0: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800036f4: 23 a2 07 02  	sw	zero, 36(a5)
800036f8: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800036fc: 03 25 07 02  	lw	a0, 32(a4)
80003700: 83 25 47 02  	lw	a1, 36(a4)
80003704: 23 a4 a7 02  	sw	a0, 40(a5)
80003708: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
8000370c: 23 a8 c7 02  	sw	a2, 48(a5)
80003710: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80003714: 23 ac d7 02  	sw	a3, 56(a5)
80003718: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
8000371c: 03 25 07 01  	lw	a0, 16(a4)
80003720: 33 08 a6 00  	add	a6, a2, a0
80003724: 93 05 08 19  	addi	a1, a6, 400
80003728: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
8000372c: b3 32 a8 00  	sltu	t0, a6, a0
80003730: 93 55 15 00  	srli	a1, a0, 1
80003734: 33 03 b8 00  	add	t1, a6, a1
80003738: b3 35 03 01  	sltu	a1, t1, a6
8000373c: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80003740: 23 a0 67 04  	sw	t1, 64(a5)
80003744: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80003748: 13 15 15 00  	slli	a0, a0, 1
8000374c: b3 05 c5 00  	add	a1, a0, a2
80003750: 33 b5 a5 00  	sltu	a0, a1, a0
80003754: 23 a4 b7 04  	sw	a1, 72(a5)
80003758: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
8000375c: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80003760: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80003764: 37 05 00 00  	lui	a0, 0
80003768: 33 05 45 00  	add	a0, a0, tp
8000376c: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003770: 03 a5 07 00  	lw	a0, 0(a5)
80003774: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80003778: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000377c: b3 85 b8 40  	sub	a1, a7, a1
80003780: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80003784: b7 05 00 00  	lui	a1, 0
80003788: b3 85 45 00  	add	a1, a1, tp
8000378c: 23 a2 a5 00  	sw	a0, 4(a1)
80003790: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80003794: 33 85 a8 02  	mul	a0, a7, a0

80003798 <.LBB0_1>:
80003798: 97 15 00 00  	auipc	a1, 1
8000379c: 93 85 c5 96  	addi	a1, a1, -1684
800037a0: 33 05 b5 00  	add	a0, a0, a1
800037a4: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800037a8: 83 28 07 03  	lw	a7, 48(a4)
800037ac: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800037b0: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800037b4: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800037b8: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800037bc: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800037c0: 13 05 76 00  	addi	a0, a2, 7
800037c4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800037c8: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800037cc: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800037d0: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800037d4: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800037d8: 03 a5 05 00  	lw	a0, 0(a1)
800037dc: 13 05 f5 44  	addi	a0, a0, 1103
800037e0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800037e4: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800037e8: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800037ec: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800037f0: 37 05 00 00  	lui	a0, 0
800037f4: 33 05 45 00  	add	a0, a0, tp
800037f8: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800037fc: 37 05 00 00  	lui	a0, 0
80003800: 33 05 45 00  	add	a0, a0, tp
80003804: 23 26 e5 00  	sw	a4, 12(a0)
; }
80003808: 67 80 00 00  	ret

8000380c <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000380c: 37 05 00 00  	lui	a0, 0
80003810: 33 05 45 00  	add	a0, a0, tp
80003814: 03 25 05 00  	lw	a0, 0(a0)
80003818: 03 25 05 00  	lw	a0, 0(a0)
8000381c: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003820: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003824: 33 85 a5 40  	sub	a0, a1, a0
80003828: 67 80 00 00  	ret

8000382c <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
8000382c: 37 05 00 00  	lui	a0, 0
80003830: 33 05 45 00  	add	a0, a0, tp
80003834: 03 25 05 00  	lw	a0, 0(a0)
80003838: 03 25 05 00  	lw	a0, 0(a0)
8000383c: 03 25 05 07  	lw	a0, 112(a0)
80003840: 67 80 00 00  	ret

80003844 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80003844: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80003848: 63 44 05 00  	bltz	a0, 0x80003850 <__snrt_isr+0xc>
;         while (1)
8000384c: 6f 00 00 00  	j	0x8000384c <__snrt_isr+0x8>
80003850: b7 05 00 80  	lui	a1, 524288
80003854: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80003858: 33 75 b5 00  	and	a0, a0, a1
8000385c: 13 05 d5 ff  	addi	a0, a0, -3
80003860: 93 55 25 00  	srli	a1, a0, 2
80003864: 13 15 e5 01  	slli	a0, a0, 30
80003868: 33 65 b5 00  	or	a0, a0, a1
8000386c: 93 05 40 00  	addi	a1, zero, 4
80003870: 63 0a b5 06  	beq	a0, a1, 0x800038e4 <.LBB1_7+0x58>
80003874: 63 1a 05 08  	bnez	a0, 0x80003908 <.LBB1_7+0x7c>
80003878: 37 05 00 00  	lui	a0, 0
8000387c: 33 05 45 00  	add	a0, a0, tp
80003880: 03 25 05 00  	lw	a0, 0(a0)
80003884: 03 25 05 00  	lw	a0, 0(a0)
80003888: f3 25 40 f1  	csrr	a1, mhartid

8000388c <.LBB1_7>:
;     asm volatile(
8000388c: 17 16 00 00  	auipc	a2, 1
80003890: 13 06 46 87  	addi	a2, a2, -1932
80003894: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80003898: 93 06 06 00  	mv	a3, a2
8000389c: 93 02 10 00  	addi	t0, zero, 1
800038a0: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800038a4: e3 9e 02 fe  	bnez	t0, 0x800038a0 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800038a8: b7 06 00 00  	lui	a3, 0
800038ac: b3 86 46 00  	add	a3, a3, tp
800038b0: 83 a6 86 00  	lw	a3, 8(a3)
800038b4: 33 85 a5 40  	sub	a0, a1, a0
800038b8: 93 55 35 00  	srli	a1, a0, 3
800038bc: 93 f5 c5 ff  	andi	a1, a1, -4
800038c0: b3 85 b6 00  	add	a1, a3, a1
800038c4: 83 a6 05 00  	lw	a3, 0(a1)
800038c8: 13 07 10 00  	addi	a4, zero, 1
800038cc: 33 15 a7 00  	sll	a0, a4, a0
800038d0: 13 45 f5 ff  	not	a0, a0
800038d4: 33 f5 a6 00  	and	a0, a3, a0
800038d8: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800038dc: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800038e0: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800038e4: 37 05 00 00  	lui	a0, 0
800038e8: 33 05 45 00  	add	a0, a0, tp
800038ec: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800038f0: b7 05 00 00  	lui	a1, 0
800038f4: b3 85 45 00  	add	a1, a1, tp
800038f8: 83 a5 c5 00  	lw	a1, 12(a1)
800038fc: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80003900: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80003904: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80003908: 67 80 00 00  	ret

Disassembly of section .init:

80003910 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80003910: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80003914: 93 81 81 ef  	addi	gp, gp, -264

80003918 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80003918: 97 00 00 00  	auipc	ra, 0
8000391c: e7 80 40 3c  	jalr	964(ra)

80003920 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80003920: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80003924: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80003928: 97 00 00 00  	auipc	ra, 0
8000392c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80003930: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80003934: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80003938: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000393c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80003940: 63 92 02 02  	bnez	t0, 0x80003964 <snrt.crt0.init_registers>

80003944 <.Lpcrel_hi0>:
;     la        t0, _edata
80003944: 97 02 00 00  	auipc	t0, 0
80003948: 93 82 c2 7b  	addi	t0, t0, 1980

8000394c <.Lpcrel_hi1>:
;     la        t1, _end
8000394c: 17 03 00 00  	auipc	t1, 0
80003950: 13 03 83 7b  	addi	t1, t1, 1976
;     bge       t0, t1, 2f
80003954: 63 d8 62 00  	bge	t0, t1, 0x80003964 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80003958: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000395c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80003960: e3 cc 62 fe  	blt	t0, t1, 0x80003958 <.Lpcrel_hi1+0xc>

80003964 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80003964: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80003968: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000396c: 63 82 02 08  	beqz	t0, 0x800039f0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80003970: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80003974: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80003978: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000397c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80003980: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80003984: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80003988: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000398c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80003990: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80003994: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80003998: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000399c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800039a0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800039a4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800039a8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800039ac: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800039b0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800039b4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800039b8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800039bc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800039c0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800039c4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800039c8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800039cc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800039d0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800039d4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800039d8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800039dc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800039e0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800039e4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800039e8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800039ec: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800039f0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800039f0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800039f4: 23 a0 06 00  	sw	zero, 0(a3)

800039f8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800039f8: 97 02 00 00  	auipc	t0, 0
800039fc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003a00: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003a04: 93 87 06 00  	mv	a5, a3

80003a08 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003a08: 97 03 00 00  	auipc	t2, 0
80003a0c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003a10: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003a14: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003a18: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80003a1c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003a20: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003a24: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003a28: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80003a2c: b3 86 66 40  	sub	a3, a3, t1

80003a30 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003a30: 97 02 00 00  	auipc	t0, 0
80003a34: 93 82 82 5d  	addi	t0, t0, 1496

80003a38 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003a38: 17 03 00 00  	auipc	t1, 0
80003a3c: 13 03 03 5d  	addi	t1, t1, 1488

80003a40 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80003a40: 97 03 00 00  	auipc	t2, 0
80003a44: 93 83 83 5c  	addi	t2, t2, 1480

80003a48 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80003a48: 17 0e 00 00  	auipc	t3, 0
80003a4c: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003a50: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003a54: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003a58: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80003a5c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003a60: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003a64: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003a68: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80003a6c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003a70: 63 dc 62 00  	bge	t0, t1, 0x80003a88 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003a74: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003a78: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80003a7c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003a80: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80003a84: e3 c8 62 fe  	blt	t0, t1, 0x80003a74 <.Lpcrel_hi7+0x2c>

80003a88 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80003a88: 97 02 00 00  	auipc	t0, 0
80003a8c: 93 82 02 58  	addi	t0, t0, 1408

80003a90 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80003a90: 17 03 00 00  	auipc	t1, 0
80003a94: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
80003a98: 63 da 62 00  	bge	t0, t1, 0x80003aac <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80003a9c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80003aa0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003aa4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80003aa8: e3 ca 72 fe  	blt	t0, t2, 0x80003a9c <.Lpcrel_hi9+0xc>

80003aac <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80003aac: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80003ab0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80003ab4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80003ab8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80003abc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80003ac0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80003ac4: 97 00 00 00  	auipc	ra, 0
80003ac8: e7 80 00 be  	jalr	-1056(ra)
;     lw        a0, 0(sp)
80003acc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80003ad0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80003ad4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80003ad8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80003adc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80003ae0: 13 01 41 01  	addi	sp, sp, 20

80003ae4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80003ae4: 97 02 00 00  	auipc	t0, 0
80003ae8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80003aec: 73 90 52 30  	csrw	mtvec, t0

80003af0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80003af0: 97 00 00 00  	auipc	ra, 0
80003af4: e7 80 00 22  	jalr	544(ra)

80003af8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80003af8: 97 d0 ff ff  	auipc	ra, 1048573
80003afc: e7 80 c0 b3  	jalr	-1220(ra)
;     mv        s0, a0 # store return value in s0
80003b00: 13 04 05 00  	mv	s0, a0

80003b04 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003b04: 97 00 00 00  	auipc	ra, 0
80003b08: e7 80 c0 20  	jalr	524(ra)

80003b0c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80003b0c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003b10: 97 00 00 00  	auipc	ra, 0
80003b14: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003b18: 73 00 50 10  	wfi	
;     j       1b
80003b1c: 6f f0 df ff  	j	0x80003b18 <snrt.crt0.end+0xc>

80003b20 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003b20: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003b24: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003b28: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80003b2c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003b30: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003b34: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003b38: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80003b3c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80003b40: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80003b44: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80003b48: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80003b4c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003b50: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003b54: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003b58: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80003b5c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003b60: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003b64: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003b68: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003b6c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003b70: 63 84 02 08  	beqz	t0, 0x80003bf8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003b74: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003b78: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80003b7c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003b80: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003b84: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003b88: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80003b8c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003b90: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003b94: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003b98: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80003b9c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80003ba0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80003ba4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80003ba8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80003bac: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80003bb0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80003bb4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80003bb8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80003bbc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80003bc0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80003bc4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80003bc8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80003bcc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80003bd0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80003bd4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80003bd8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80003bdc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003be0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003be4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003be8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80003bec: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003bf0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003bf4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003bf8: 97 00 00 00  	auipc	ra, 0
80003bfc: e7 80 c0 c4  	jalr	-948(ra)
;     csrr    t0, misa
80003c00: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003c04: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003c08: 63 84 02 08  	beqz	t0, 0x80003c90 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80003c0c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003c10: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003c14: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003c18: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80003c1c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003c20: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003c24: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003c28: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80003c2c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003c30: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003c34: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003c38: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80003c3c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003c40: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003c44: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003c48: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80003c4c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003c50: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003c54: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003c58: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80003c5c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003c60: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003c64: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003c68: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80003c6c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003c70: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003c74: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003c78: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80003c7c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003c80: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003c84: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003c88: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80003c8c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003c90: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003c94: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003c98: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80003c9c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003ca0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003ca4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003ca8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80003cac: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003cb0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003cb4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003cb8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80003cbc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003cc0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003cc4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003cc8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80003ccc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003cd0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003cd4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003cd8: 73 00 20 30  	mret	

80003cdc <_snrt_init_core_info>:
;     mv        a4, a1
80003cdc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003ce0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003ce4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003ce8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80003cec: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003cf0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003cf4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003cf8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80003cfc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003d00: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003d04: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003d08: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80003d0c: 67 80 00 00  	ret

80003d10 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003d10: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003d14: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003d18: 97 00 00 00  	auipc	ra, 0
80003d1c: e7 80 40 b1  	jalr	-1260(ra)
;     lw        a0, 0(a0)
80003d20: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003d24: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003d28: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80003d2c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003d30: 67 80 00 00  	ret

80003d34 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003d34: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003d38: 67 80 00 00  	ret

80003d3c <_snrt_exit>:
;     addi      sp, sp, -8
80003d3c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003d40: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003d44: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003d48: 97 00 00 00  	auipc	ra, 0
80003d4c: e7 80 40 ac  	jalr	-1340(ra)
;     lw        t0, 0(sp)
80003d50: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003d54: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003d58: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80003d5c: 63 1c 05 00  	bnez	a0, 0x80003d74 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003d60: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003d64: 93 e2 12 00  	ori	t0, t0, 1

80003d68 <.Lpcrel_hi11>:
;     la        t1, tohost
80003d68: 17 03 00 00  	auipc	t1, 0
80003d6c: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
80003d70: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003d74: 67 80 00 00  	ret
