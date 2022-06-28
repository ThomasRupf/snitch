
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET-IS_RESTRICTED-2mm:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000037a8 80000000 TEXT
  2 .init             00000468 800037b0 TEXT
  3 .rodata           00000238 80003c18 DATA
  4 .htif             00000048 80003e80 DATA
  5 .tdata            00000000 80003ec8 DATA
  6 .tbss             00000010 80003ec8 BSS
  7 .tbssend          00000000 80003ed8 DATA
  8 .sdata            000000e8 80003ed8 DATA
  9 .data             00000000 80003fc0 DATA
 10 .sbss             00000004 80003fc0 BSS
 11 .bss              00000000 80003fc4 BSS
 12 .dram             00000000 80003fc4 DATA
 13 .debug_info       000036fd 00000000 
 14 .debug_abbrev     00000bff 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002feb 00000000 
 17 .debug_loc        00003958 00000000 
 18 .debug_str        00000b05 00000000 
 19 .comment          00000029 00000000 
 20 .riscv.attributes 00000037 00000000 
 21 .debug_frame      000002c0 00000000 
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
80000634: 13 01 01 f1  	addi	sp, sp, -240
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 0e  	sw	ra, 236(sp)
8000063c: 23 24 81 0e  	sw	s0, 232(sp)
80000640: 23 22 91 0e  	sw	s1, 228(sp)
80000644: 23 20 21 0f  	sw	s2, 224(sp)
80000648: 23 2e 31 0d  	sw	s3, 220(sp)
8000064c: 23 2c 41 0d  	sw	s4, 216(sp)
80000650: 23 2a 51 0d  	sw	s5, 212(sp)
80000654: 23 28 61 0d  	sw	s6, 208(sp)
80000658: 23 26 71 0d  	sw	s7, 204(sp)
8000065c: 23 24 81 0d  	sw	s8, 200(sp)
80000660: 23 22 91 0d  	sw	s9, 196(sp)
80000664: 23 20 a1 0d  	sw	s10, 192(sp)
80000668: 23 2e b1 0b  	sw	s11, 188(sp)
8000066c: 27 38 81 0a  	fsd	fs0, 176(sp)
80000670: 27 34 91 0a  	fsd	fs1, 168(sp)
80000674: 27 30 21 0b  	fsd	fs2, 160(sp)
80000678: 27 3c 31 09  	fsd	fs3, 152(sp)
8000067c: 27 38 41 09  	fsd	fs4, 144(sp)
80000680: 27 34 51 09  	fsd	fs5, 136(sp)
80000684: 27 30 61 09  	fsd	fs6, 128(sp)
80000688: 37 05 00 00  	lui	a0, 0
8000068c: 33 05 45 00  	add	a0, a0, tp
80000690: 83 25 45 00  	lw	a1, 4(a0)
80000694: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
80000698: 63 84 05 00  	beqz	a1, 0x800006a0 <main+0x6c>
8000069c: 6f 10 80 1f  	j	0x80001894 <.LBB0_45+0x10>
;     return _snrt_team_current->root;
800006a0: 37 05 00 00  	lui	a0, 0
800006a4: 33 05 45 00  	add	a0, a0, tp
800006a8: 03 25 05 00  	lw	a0, 0(a0)
800006ac: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b0: 83 27 85 05  	lw	a5, 88(a0)
800006b4: 83 25 05 05  	lw	a1, 80(a0)
800006b8: 03 27 45 05  	lw	a4, 84(a0)
800006bc: 37 16 00 00  	lui	a2, 1
800006c0: 13 06 06 90  	addi	a2, a2, -1792
800006c4: b3 86 c7 00  	add	a3, a5, a2
800006c8: b3 05 b7 00  	add	a1, a4, a1
800006cc: 63 f6 d5 00  	bgeu	a1, a3, 0x800006d8 <main+0xa4>
800006d0: 13 07 00 00  	mv	a4, zero
800006d4: 6f 00 00 01  	j	0x800006e4 <main+0xb0>
;     alloc->next += size;
800006d8: 23 2c d5 04  	sw	a3, 88(a0)
800006dc: 13 87 07 00  	mv	a4, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e0: 93 87 06 00  	mv	a5, a3
800006e4: b3 06 f6 00  	add	a3, a2, a5
800006e8: 93 86 06 20  	addi	a3, a3, 512
800006ec: 63 f6 d5 00  	bgeu	a1, a3, 0x800006f8 <main+0xc4>
800006f0: 93 04 00 00  	mv	s1, zero
800006f4: 6f 00 00 01  	j	0x80000704 <main+0xd0>
;     alloc->next += size;
800006f8: 23 2c d5 04  	sw	a3, 88(a0)
800006fc: 93 84 07 00  	mv	s1, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000700: 93 87 06 00  	mv	a5, a3
80000704: b3 06 f6 00  	add	a3, a2, a5
80000708: 93 86 06 36  	addi	a3, a3, 864
8000070c: 63 f6 d5 00  	bgeu	a1, a3, 0x80000718 <main+0xe4>
80000710: 93 0a 00 00  	mv	s5, zero
80000714: 6f 00 00 01  	j	0x80000724 <main+0xf0>
;     alloc->next += size;
80000718: 23 2c d5 04  	sw	a3, 88(a0)
8000071c: 93 8a 07 00  	mv	s5, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000720: 93 87 06 00  	mv	a5, a3
80000724: b3 06 f6 00  	add	a3, a2, a5
80000728: 93 86 06 48  	addi	a3, a3, 1152
8000072c: 63 f6 d5 00  	bgeu	a1, a3, 0x80000738 <main+0x104>
80000730: 13 0d 00 00  	mv	s10, zero
80000734: 6f 00 00 01  	j	0x80000744 <main+0x110>
;     alloc->next += size;
80000738: 23 2c d5 04  	sw	a3, 88(a0)
8000073c: 13 8d 07 00  	mv	s10, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000740: 93 87 06 00  	mv	a5, a3
80000744: 33 06 f6 00  	add	a2, a2, a5
80000748: 13 06 06 30  	addi	a2, a2, 768
8000074c: 23 26 e1 00  	sw	a4, 12(sp)
80000750: 63 f6 c5 00  	bgeu	a1, a2, 0x8000075c <main+0x128>
80000754: 23 28 01 00  	sw	zero, 16(sp)
80000758: 6f 00 c0 00  	j	0x80000764 <main+0x130>
8000075c: 23 28 f1 00  	sw	a5, 16(sp)
;     alloc->next += size;
80000760: 23 2c c5 04  	sw	a2, 88(a0)
80000764: 13 08 00 00  	mv	a6, zero
80000768: 93 08 00 00  	mv	a7, zero
8000076c: 13 03 00 00  	mv	t1, zero
80000770: 93 0e 00 00  	mv	t4, zero
80000774: 13 0f 00 00  	mv	t5, zero
80000778: 93 0f 00 00  	mv	t6, zero
8000077c: 13 09 00 00  	mv	s2, zero
80000780: 93 09 00 00  	mv	s3, zero
80000784: 13 0a 00 00  	mv	s4, zero
80000788: 23 22 91 00  	sw	s1, 4(sp)
;   for (i = 0; i < ni; i++)
8000078c: 93 85 84 05  	addi	a1, s1, 88
80000790: 13 0b 10 00  	addi	s6, zero, 1
80000794: b7 03 b0 3f  	lui	t2, 260864

80000798 <.LBB0_36>:
80000798: 17 35 00 00  	auipc	a0, 3
8000079c: 13 05 05 74  	addi	a0, a0, 1856
800007a0: 07 30 05 00  	fld	ft0, 0(a0)
800007a4: 13 0e 10 15  	addi	t3, zero, 337
800007a8: 93 0b 10 00  	addi	s7, zero, 1
800007ac: 13 0c 10 00  	addi	s8, zero, 1
800007b0: 93 0c 10 00  	addi	s9, zero, 1
800007b4: 93 02 10 00  	addi	t0, zero, 1
800007b8: 13 04 10 00  	addi	s0, zero, 1
800007bc: 13 05 10 00  	addi	a0, zero, 1
800007c0: 13 06 10 00  	addi	a2, zero, 1
800007c4: 93 06 10 00  	addi	a3, zero, 1
800007c8: 13 07 10 00  	addi	a4, zero, 1
800007cc: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
800007d0: 23 a6 75 fa  	sw	t2, -84(a1)
800007d4: 23 a4 05 fa  	sw	zero, -88(a1)
800007d8: 93 f4 f7 00  	andi	s1, a5, 15
800007dc: d3 80 04 d2  	fcvt.d.w	ft1, s1
800007e0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800007e4: 27 b8 15 fa  	fsd	ft1, -80(a1)
800007e8: 93 f4 e9 00  	andi	s1, s3, 14
800007ec: 93 e4 14 00  	ori	s1, s1, 1
800007f0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800007f4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800007f8: 27 bc 15 fa  	fsd	ft1, -72(a1)
800007fc: 93 74 f6 00  	andi	s1, a2, 15
80000800: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000804: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000808: 27 b0 15 fc  	fsd	ft1, -64(a1)
8000080c: 93 f4 cf 00  	andi	s1, t6, 12
80000810: 93 e4 14 00  	ori	s1, s1, 1
80000814: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000818: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000081c: 27 b4 15 fc  	fsd	ft1, -56(a1)
80000820: 93 74 f4 00  	andi	s1, s0, 15
80000824: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000828: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000082c: 27 b8 15 fc  	fsd	ft1, -48(a1)
80000830: 93 74 ef 00  	andi	s1, t5, 14
80000834: 93 e4 14 00  	ori	s1, s1, 1
80000838: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000083c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000840: 27 bc 15 fc  	fsd	ft1, -40(a1)
80000844: 93 f4 fc 00  	andi	s1, s9, 15
80000848: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000084c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000850: 27 b0 15 fe  	fsd	ft1, -32(a1)
80000854: 93 74 83 00  	andi	s1, t1, 8
80000858: 93 e4 14 00  	ori	s1, s1, 1
8000085c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000860: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000864: 27 b4 15 fe  	fsd	ft1, -24(a1)
80000868: 93 f4 fb 00  	andi	s1, s7, 15
8000086c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000870: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000874: 27 b8 15 fe  	fsd	ft1, -16(a1)
80000878: 93 74 e8 00  	andi	s1, a6, 14
8000087c: 93 e4 14 00  	ori	s1, s1, 1
80000880: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000884: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000888: 27 bc 15 fe  	fsd	ft1, -8(a1)
8000088c: 93 74 fb 00  	andi	s1, s6, 15
80000890: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000894: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000898: 27 b0 15 00  	fsd	ft1, 0(a1)
8000089c: 93 f4 c8 00  	andi	s1, a7, 12
800008a0: 93 e4 14 00  	ori	s1, s1, 1
800008a4: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008a8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008ac: 27 b4 15 00  	fsd	ft1, 8(a1)
800008b0: 93 74 fc 00  	andi	s1, s8, 15
800008b4: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008b8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008bc: 27 b8 15 00  	fsd	ft1, 16(a1)
800008c0: 93 f4 ee 00  	andi	s1, t4, 14
800008c4: 93 e4 14 00  	ori	s1, s1, 1
800008c8: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008cc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008d0: 27 bc 15 00  	fsd	ft1, 24(a1)
800008d4: 93 f4 f2 00  	andi	s1, t0, 15
800008d8: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008dc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008e0: 27 b0 15 02  	fsd	ft1, 32(a1)
800008e4: 23 a6 75 02  	sw	t2, 44(a1)
800008e8: 23 a4 05 02  	sw	zero, 40(a1)
800008ec: 93 74 f5 00  	andi	s1, a0, 15
800008f0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008f4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008f8: 27 b8 15 02  	fsd	ft1, 48(a1)
800008fc: 93 74 e9 00  	andi	s1, s2, 14
80000900: 93 e4 14 00  	ori	s1, s1, 1
80000904: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000908: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000090c: 27 bc 15 02  	fsd	ft1, 56(a1)
80000910: 93 f4 f6 00  	andi	s1, a3, 15
80000914: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000918: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000091c: 27 b0 15 04  	fsd	ft1, 64(a1)
80000920: 93 74 ca 00  	andi	s1, s4, 12
80000924: 93 e4 14 00  	ori	s1, s1, 1
80000928: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000092c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000930: 27 b4 15 04  	fsd	ft1, 72(a1)
80000934: 93 74 f7 00  	andi	s1, a4, 15
80000938: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000093c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000940: 27 b8 15 04  	fsd	ft1, 80(a1)
;   for (i = 0; i < ni; i++)
80000944: 93 87 17 00  	addi	a5, a5, 1
80000948: 13 07 57 01  	addi	a4, a4, 21
8000094c: 13 0a 4a 01  	addi	s4, s4, 20
80000950: 93 89 29 00  	addi	s3, s3, 2
80000954: 93 86 36 01  	addi	a3, a3, 19
80000958: 13 06 36 00  	addi	a2, a2, 3
8000095c: 13 09 29 01  	addi	s2, s2, 18
80000960: 93 8f 4f 00  	addi	t6, t6, 4
80000964: 13 05 15 01  	addi	a0, a0, 17
80000968: 13 04 54 00  	addi	s0, s0, 5
8000096c: 13 0f 6f 00  	addi	t5, t5, 6
80000970: 93 82 f2 00  	addi	t0, t0, 15
80000974: 93 8c 7c 00  	addi	s9, s9, 7
80000978: 93 8e ee 00  	addi	t4, t4, 14
8000097c: 13 03 83 00  	addi	t1, t1, 8
80000980: 13 0c dc 00  	addi	s8, s8, 13
80000984: 93 8b 9b 00  	addi	s7, s7, 9
80000988: 93 88 c8 00  	addi	a7, a7, 12
8000098c: 93 85 05 0b  	addi	a1, a1, 176
80000990: 13 0b bb 00  	addi	s6, s6, 11
80000994: 13 08 a8 00  	addi	a6, a6, 10
80000998: e3 1c c7 e3  	bne	a4, t3, 0x800007d0 <.LBB0_36+0x38>
8000099c: 13 08 00 00  	mv	a6, zero
800009a0: 93 08 00 00  	mv	a7, zero
800009a4: 13 03 00 00  	mv	t1, zero
800009a8: 93 03 00 00  	mv	t2, zero
800009ac: 13 0e 00 00  	mv	t3, zero
800009b0: 93 0e 00 00  	mv	t4, zero
800009b4: 13 0f 00 00  	mv	t5, zero
800009b8: 93 0f 00 00  	mv	t6, zero
800009bc: 13 09 00 00  	mv	s2, zero
800009c0: 93 09 00 00  	mv	s3, zero
800009c4: 13 0a 00 00  	mv	s4, zero
800009c8: 13 0b 00 00  	mv	s6, zero
800009cc: 93 02 00 00  	mv	t0, zero
800009d0: 93 07 00 00  	mv	a5, zero
800009d4: 93 04 00 00  	mv	s1, zero
800009d8: 13 04 00 00  	mv	s0, zero
800009dc: 13 05 00 00  	mv	a0, zero
800009e0: 23 20 51 01  	sw	s5, 0(sp)
;   for (i = 0; i < nk; i++)
800009e4: 93 85 8a 04  	addi	a1, s5, 72
800009e8: 37 96 e3 38  	lui	a2, 233017
800009ec: 13 06 96 e3  	addi	a2, a2, -455
800009f0: 93 06 20 01  	addi	a3, zero, 18
800009f4: 93 0b e0 fe  	addi	s7, zero, -18
800009f8: 13 0c 60 17  	addi	s8, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
800009fc: 33 37 c5 02  	mulhu	a4, a0, a2
80000a00: 13 57 27 00  	srli	a4, a4, 2
80000a04: 33 07 d7 02  	mul	a4, a4, a3
80000a08: 33 07 e5 40  	sub	a4, a0, a4
80000a0c: d3 00 07 d2  	fcvt.d.w	ft1, a4

80000a10 <.LBB0_37>:
80000a10: 17 37 00 00  	auipc	a4, 3
80000a14: 13 07 07 4d  	addi	a4, a4, 1232
80000a18: 07 30 07 00  	fld	ft0, 0(a4)
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000a1c: 33 b7 c4 02  	mulhu	a4, s1, a2
80000a20: 13 57 27 00  	srli	a4, a4, 2
80000a24: 33 07 d7 02  	mul	a4, a4, a3
80000a28: 33 87 e4 40  	sub	a4, s1, a4
80000a2c: 53 01 07 d2  	fcvt.d.w	ft2, a4
80000a30: 33 b7 c7 02  	mulhu	a4, a5, a2
80000a34: 13 57 27 00  	srli	a4, a4, 2
80000a38: 33 07 d7 02  	mul	a4, a4, a3
80000a3c: 33 87 e7 40  	sub	a4, a5, a4
80000a40: d3 01 07 d2  	fcvt.d.w	ft3, a4
80000a44: 33 37 cb 02  	mulhu	a4, s6, a2
80000a48: 13 57 27 00  	srli	a4, a4, 2
80000a4c: 33 07 d7 02  	mul	a4, a4, a3
80000a50: 33 07 eb 40  	sub	a4, s6, a4
80000a54: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a58: 33 b7 c9 02  	mulhu	a4, s3, a2
80000a5c: 13 57 27 00  	srli	a4, a4, 2
80000a60: 33 07 d7 02  	mul	a4, a4, a3
80000a64: 33 87 e9 40  	sub	a4, s3, a4
80000a68: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000a6c: 33 b7 cf 02  	mulhu	a4, t6, a2
80000a70: 13 57 27 00  	srli	a4, a4, 2
80000a74: 33 07 d7 02  	mul	a4, a4, a3
80000a78: 33 87 ef 40  	sub	a4, t6, a4
80000a7c: 53 03 07 d2  	fcvt.d.w	ft6, a4
80000a80: 33 b7 ce 02  	mulhu	a4, t4, a2
80000a84: 13 57 27 00  	srli	a4, a4, 2
80000a88: 33 07 d7 02  	mul	a4, a4, a3
80000a8c: 33 87 ee 40  	sub	a4, t4, a4
80000a90: d3 03 07 d2  	fcvt.d.w	ft7, a4
80000a94: 33 b7 c3 02  	mulhu	a4, t2, a2
80000a98: 13 57 27 00  	srli	a4, a4, 2
80000a9c: 33 07 d7 02  	mul	a4, a4, a3
80000aa0: 33 87 e3 40  	sub	a4, t2, a4
80000aa4: 53 05 07 d2  	fcvt.d.w	fa0, a4
80000aa8: 33 37 c8 02  	mulhu	a4, a6, a2
80000aac: 13 57 27 00  	srli	a4, a4, 2
80000ab0: 33 07 d7 02  	mul	a4, a4, a3
80000ab4: 33 07 e8 40  	sub	a4, a6, a4
80000ab8: d3 05 07 d2  	fcvt.d.w	fa1, a4
80000abc: 33 b7 c8 02  	mulhu	a4, a7, a2
80000ac0: 13 57 27 00  	srli	a4, a4, 2
80000ac4: 33 07 d7 02  	mul	a4, a4, a3
80000ac8: 33 87 e8 40  	sub	a4, a7, a4
80000acc: 53 06 07 d2  	fcvt.d.w	fa2, a4
80000ad0: 33 37 c3 02  	mulhu	a4, t1, a2
80000ad4: 13 57 27 00  	srli	a4, a4, 2
80000ad8: 33 07 d7 02  	mul	a4, a4, a3
80000adc: 33 07 e3 40  	sub	a4, t1, a4
80000ae0: d3 06 07 d2  	fcvt.d.w	fa3, a4
80000ae4: 33 37 ce 02  	mulhu	a4, t3, a2
80000ae8: 13 57 27 00  	srli	a4, a4, 2
80000aec: 33 07 d7 02  	mul	a4, a4, a3
80000af0: 33 07 ee 40  	sub	a4, t3, a4
80000af4: 53 07 07 d2  	fcvt.d.w	fa4, a4
80000af8: 33 37 cf 02  	mulhu	a4, t5, a2
80000afc: 13 57 27 00  	srli	a4, a4, 2
80000b00: 33 07 d7 02  	mul	a4, a4, a3
80000b04: 33 07 ef 40  	sub	a4, t5, a4
80000b08: d3 07 07 d2  	fcvt.d.w	fa5, a4
80000b0c: 33 37 c9 02  	mulhu	a4, s2, a2
80000b10: 13 57 27 00  	srli	a4, a4, 2
80000b14: 33 07 d7 02  	mul	a4, a4, a3
80000b18: 33 07 e9 40  	sub	a4, s2, a4
80000b1c: 53 08 07 d2  	fcvt.d.w	fa6, a4
80000b20: 33 37 ca 02  	mulhu	a4, s4, a2
80000b24: 13 57 27 00  	srli	a4, a4, 2
80000b28: 33 07 d7 02  	mul	a4, a4, a3
80000b2c: 33 07 ea 40  	sub	a4, s4, a4
80000b30: d3 08 07 d2  	fcvt.d.w	fa7, a4
80000b34: 33 b7 c2 02  	mulhu	a4, t0, a2
80000b38: 13 57 27 00  	srli	a4, a4, 2
80000b3c: 33 07 d7 02  	mul	a4, a4, a3
80000b40: 33 87 e2 40  	sub	a4, t0, a4
80000b44: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80000b48: 33 37 c4 02  	mulhu	a4, s0, a2
80000b4c: 13 57 27 00  	srli	a4, a4, 2
80000b50: 33 07 77 03  	mul	a4, a4, s7
80000b54: 33 07 e4 00  	add	a4, s0, a4
80000b58: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80000b5c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b60: 27 bc 15 fa  	fsd	ft1, -72(a1)
80000b64: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80000b68: 27 b0 15 fc  	fsd	ft1, -64(a1)
80000b6c: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80000b70: 27 b4 15 fc  	fsd	ft1, -56(a1)
80000b74: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80000b78: 27 b8 15 fc  	fsd	ft1, -48(a1)
80000b7c: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80000b80: 27 bc 15 fc  	fsd	ft1, -40(a1)
80000b84: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80000b88: 27 b0 15 fe  	fsd	ft1, -32(a1)
80000b8c: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80000b90: 27 b4 15 fe  	fsd	ft1, -24(a1)
80000b94: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80000b98: 27 b8 15 fe  	fsd	ft1, -16(a1)
80000b9c: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80000ba0: 27 bc 15 fe  	fsd	ft1, -8(a1)
80000ba4: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80000ba8: 27 b0 15 00  	fsd	ft1, 0(a1)
80000bac: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80000bb0: 27 b4 15 00  	fsd	ft1, 8(a1)
80000bb4: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80000bb8: 27 b8 15 00  	fsd	ft1, 16(a1)
80000bbc: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80000bc0: 27 bc 15 00  	fsd	ft1, 24(a1)
80000bc4: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80000bc8: 27 b0 15 02  	fsd	ft1, 32(a1)
80000bcc: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80000bd0: 27 b4 15 02  	fsd	ft1, 40(a1)
80000bd4: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80000bd8: 27 b8 15 02  	fsd	ft1, 48(a1)
80000bdc: 53 f0 0e 12  	fmul.d	ft0, ft9, ft0
80000be0: 27 bc 05 02  	fsd	ft0, 56(a1)
80000be4: 23 a2 05 04  	sw	zero, 68(a1)
80000be8: 23 a0 05 04  	sw	zero, 64(a1)
;   for (i = 0; i < nk; i++)
80000bec: 13 05 15 00  	addi	a0, a0, 1
80000bf0: 13 04 14 01  	addi	s0, s0, 17
80000bf4: 93 84 24 00  	addi	s1, s1, 2
80000bf8: 93 87 37 00  	addi	a5, a5, 3
80000bfc: 93 82 02 01  	addi	t0, t0, 16
80000c00: 13 0b 4b 00  	addi	s6, s6, 4
80000c04: 13 0a fa 00  	addi	s4, s4, 15
80000c08: 93 89 59 00  	addi	s3, s3, 5
80000c0c: 13 09 e9 00  	addi	s2, s2, 14
80000c10: 93 8f 6f 00  	addi	t6, t6, 6
80000c14: 13 0f df 00  	addi	t5, t5, 13
80000c18: 93 8e 7e 00  	addi	t4, t4, 7
80000c1c: 13 0e ce 00  	addi	t3, t3, 12
80000c20: 93 83 83 00  	addi	t2, t2, 8
80000c24: 13 03 b3 00  	addi	t1, t1, 11
80000c28: 93 85 05 09  	addi	a1, a1, 144
80000c2c: 93 88 a8 00  	addi	a7, a7, 10
80000c30: 13 08 98 00  	addi	a6, a6, 9
80000c34: e3 14 84 dd  	bne	s0, s8, 0x800009fc <.LBB0_36+0x264>
80000c38: 93 04 00 00  	mv	s1, zero
80000c3c: 93 06 00 00  	mv	a3, zero
80000c40: 13 06 00 00  	mv	a2, zero
80000c44: 93 07 00 00  	mv	a5, zero
80000c48: 13 04 00 00  	mv	s0, zero
80000c4c: 23 24 a1 01  	sw	s10, 8(sp)
;   for (i = 0; i < nj; i++)
80000c50: 13 0e 0d 06  	addi	t3, s10, 96
80000c54: 13 05 10 00  	addi	a0, zero, 1
80000c58: 23 24 a1 06  	sw	a0, 104(sp)
80000c5c: 37 b5 aa aa  	lui	a0, 699051
80000c60: 93 03 b5 aa  	addi	t2, a0, -1365
80000c64: 37 55 a5 3f  	lui	a0, 260693
80000c68: 13 05 55 55  	addi	a0, a0, 1365
80000c6c: 23 2c a1 00  	sw	a0, 24(sp)
80000c70: 37 55 55 55  	lui	a0, 349525
80000c74: 13 05 55 55  	addi	a0, a0, 1365
80000c78: 23 2a a1 00  	sw	a0, 20(sp)
80000c7c: 13 05 10 00  	addi	a0, zero, 1
80000c80: 23 22 a1 06  	sw	a0, 100(sp)
80000c84: 13 05 10 00  	addi	a0, zero, 1
80000c88: 23 20 a1 06  	sw	a0, 96(sp)
80000c8c: 13 05 10 00  	addi	a0, zero, 1
80000c90: 23 2e a1 04  	sw	a0, 92(sp)
80000c94: 13 05 10 00  	addi	a0, zero, 1
80000c98: 23 2c a1 04  	sw	a0, 88(sp)
80000c9c: 13 0b 10 00  	addi	s6, zero, 1
80000ca0: 13 05 10 00  	addi	a0, zero, 1
80000ca4: 23 2a a1 04  	sw	a0, 84(sp)
80000ca8: 13 05 10 00  	addi	a0, zero, 1
80000cac: 23 28 a1 04  	sw	a0, 80(sp)
80000cb0: 13 05 10 00  	addi	a0, zero, 1
80000cb4: 23 26 a1 04  	sw	a0, 76(sp)
80000cb8: 13 05 10 00  	addi	a0, zero, 1
80000cbc: 23 24 a1 04  	sw	a0, 72(sp)
80000cc0: 13 05 10 00  	addi	a0, zero, 1
80000cc4: 23 22 a1 04  	sw	a0, 68(sp)
80000cc8: 13 05 10 00  	addi	a0, zero, 1
80000ccc: 23 20 a1 04  	sw	a0, 64(sp)
80000cd0: 13 05 10 00  	addi	a0, zero, 1
80000cd4: 23 2e a1 02  	sw	a0, 60(sp)
80000cd8: 13 05 10 00  	addi	a0, zero, 1
80000cdc: 23 2a a1 06  	sw	a0, 116(sp)
80000ce0: 13 05 10 00  	addi	a0, zero, 1
80000ce4: 23 2c a1 02  	sw	a0, 56(sp)
80000ce8: 13 05 10 00  	addi	a0, zero, 1
80000cec: 23 2a a1 02  	sw	a0, 52(sp)
80000cf0: 13 05 10 00  	addi	a0, zero, 1
80000cf4: 23 28 a1 02  	sw	a0, 48(sp)
80000cf8: 13 0a 10 00  	addi	s4, zero, 1
80000cfc: 13 05 10 00  	addi	a0, zero, 1
80000d00: 23 26 a1 02  	sw	a0, 44(sp)
80000d04: 13 05 10 00  	addi	a0, zero, 1
80000d08: 23 24 a1 02  	sw	a0, 40(sp)
80000d0c: 13 05 10 00  	addi	a0, zero, 1
80000d10: 23 28 a1 06  	sw	a0, 112(sp)
80000d14: 93 05 10 00  	addi	a1, zero, 1
80000d18: 13 05 10 00  	addi	a0, zero, 1
80000d1c: 23 22 a1 02  	sw	a0, 36(sp)
80000d20: 23 20 41 03  	sw	s4, 32(sp)
80000d24: 23 26 81 06  	sw	s0, 108(sp)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000d28: 03 24 c1 06  	lw	s0, 108(sp)
80000d2c: 33 34 74 02  	mulhu	s0, s0, t2
80000d30: 13 54 44 00  	srli	s0, s0, 4
80000d34: 13 05 80 01  	addi	a0, zero, 24
80000d38: 33 04 a4 02  	mul	s0, s0, a0
80000d3c: 13 08 0b 00  	mv	a6, s6
80000d40: 23 2e b1 00  	sw	a1, 28(sp)
80000d44: 33 8b 85 40  	sub	s6, a1, s0
80000d48: d3 00 0b d2  	fcvt.d.w	ft1, s6
80000d4c: 13 0b 08 00  	mv	s6, a6

80000d50 <.LBB0_38>:
80000d50: 17 34 00 00  	auipc	s0, 3
80000d54: 13 04 84 19  	addi	s0, s0, 408
80000d58: 07 30 04 00  	fld	ft0, 0(s0)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000d5c: 33 b4 77 02  	mulhu	s0, a5, t2
80000d60: 13 54 44 00  	srli	s0, s0, 4
80000d64: 33 04 a4 02  	mul	s0, s0, a0
80000d68: 03 27 01 07  	lw	a4, 112(sp)
80000d6c: 33 04 87 40  	sub	s0, a4, s0
80000d70: 53 01 04 d2  	fcvt.d.w	ft2, s0
80000d74: 83 2b c1 02  	lw	s7, 44(sp)
80000d78: 33 b4 7b 02  	mulhu	s0, s7, t2
80000d7c: 13 54 44 00  	srli	s0, s0, 4
80000d80: 33 04 a4 02  	mul	s0, s0, a0
80000d84: 33 84 8b 40  	sub	s0, s7, s0
80000d88: d3 01 04 d2  	fcvt.d.w	ft3, s0
80000d8c: 33 34 76 02  	mulhu	s0, a2, t2
80000d90: 13 54 44 00  	srli	s0, s0, 4
80000d94: 33 04 a4 02  	mul	s0, s0, a0
80000d98: 33 04 8a 40  	sub	s0, s4, s0
80000d9c: 53 02 04 d2  	fcvt.d.w	ft4, s0
80000da0: 03 27 41 03  	lw	a4, 52(sp)
80000da4: 33 34 77 02  	mulhu	s0, a4, t2
80000da8: 13 54 44 00  	srli	s0, s0, 4
80000dac: 33 04 a4 02  	mul	s0, s0, a0
80000db0: 33 04 87 40  	sub	s0, a4, s0
80000db4: d3 02 04 d2  	fcvt.d.w	ft5, s0
80000db8: 33 b4 76 02  	mulhu	s0, a3, t2
80000dbc: 13 54 44 00  	srli	s0, s0, 4
80000dc0: 33 04 a4 02  	mul	s0, s0, a0
80000dc4: 83 25 41 07  	lw	a1, 116(sp)
80000dc8: 33 84 85 40  	sub	s0, a1, s0
80000dcc: 53 03 04 d2  	fcvt.d.w	ft6, s0
80000dd0: 03 29 01 04  	lw	s2, 64(sp)
80000dd4: 33 34 79 02  	mulhu	s0, s2, t2
80000dd8: 13 54 44 00  	srli	s0, s0, 4
80000ddc: 33 04 a4 02  	mul	s0, s0, a0
80000de0: 33 04 89 40  	sub	s0, s2, s0
80000de4: d3 03 04 d2  	fcvt.d.w	ft7, s0
80000de8: 83 2e 81 04  	lw	t4, 72(sp)
80000dec: 33 b4 7e 02  	mulhu	s0, t4, t2
80000df0: 13 54 44 00  	srli	s0, s0, 4
80000df4: 33 04 a4 02  	mul	s0, s0, a0
80000df8: 33 84 8e 40  	sub	s0, t4, s0
80000dfc: 53 05 04 d2  	fcvt.d.w	fa0, s0
80000e00: 03 28 01 05  	lw	a6, 80(sp)
80000e04: 33 34 78 02  	mulhu	s0, a6, t2
80000e08: 13 54 44 00  	srli	s0, s0, 4
80000e0c: 33 04 a4 02  	mul	s0, s0, a0
80000e10: 33 04 88 40  	sub	s0, a6, s0
80000e14: d3 05 04 d2  	fcvt.d.w	fa1, s0
80000e18: 33 b4 74 02  	mulhu	s0, s1, t2
80000e1c: 13 54 44 00  	srli	s0, s0, 4
80000e20: 33 04 a4 02  	mul	s0, s0, a0
80000e24: 33 04 8b 40  	sub	s0, s6, s0
80000e28: 53 06 04 d2  	fcvt.d.w	fa2, s0
80000e2c: 83 2d c1 05  	lw	s11, 92(sp)
80000e30: 33 b4 7d 02  	mulhu	s0, s11, t2
80000e34: 13 54 44 00  	srli	s0, s0, 4
80000e38: 33 04 a4 02  	mul	s0, s0, a0
80000e3c: 33 84 8d 40  	sub	s0, s11, s0
80000e40: d3 06 04 d2  	fcvt.d.w	fa3, s0
80000e44: 03 2c 81 06  	lw	s8, 104(sp)
80000e48: 33 34 7c 02  	mulhu	s0, s8, t2
80000e4c: 13 54 44 00  	srli	s0, s0, 4
80000e50: 33 04 a4 02  	mul	s0, s0, a0
80000e54: 33 04 8c 40  	sub	s0, s8, s0
80000e58: 53 07 04 d2  	fcvt.d.w	fa4, s0
80000e5c: 83 2c 41 06  	lw	s9, 100(sp)
80000e60: 33 b4 7c 02  	mulhu	s0, s9, t2
80000e64: 13 54 44 00  	srli	s0, s0, 4
80000e68: 33 04 a4 02  	mul	s0, s0, a0
80000e6c: 33 84 8c 40  	sub	s0, s9, s0
80000e70: d3 07 04 d2  	fcvt.d.w	fa5, s0
80000e74: 03 2d 01 06  	lw	s10, 96(sp)
80000e78: 33 34 7d 02  	mulhu	s0, s10, t2
80000e7c: 13 54 44 00  	srli	s0, s0, 4
80000e80: 33 04 a4 02  	mul	s0, s0, a0
80000e84: 33 04 8d 40  	sub	s0, s10, s0
80000e88: 53 08 04 d2  	fcvt.d.w	fa6, s0
80000e8c: 83 20 81 05  	lw	ra, 88(sp)
80000e90: 33 b4 70 02  	mulhu	s0, ra, t2
80000e94: 13 54 44 00  	srli	s0, s0, 4
80000e98: 33 04 a4 02  	mul	s0, s0, a0
80000e9c: 33 84 80 40  	sub	s0, ra, s0
80000ea0: d3 08 04 d2  	fcvt.d.w	fa7, s0
80000ea4: 83 22 41 05  	lw	t0, 84(sp)
80000ea8: 33 b4 72 02  	mulhu	s0, t0, t2
80000eac: 13 54 44 00  	srli	s0, s0, 4
80000eb0: 33 04 a4 02  	mul	s0, s0, a0
80000eb4: 33 84 82 40  	sub	s0, t0, s0
80000eb8: 53 0e 04 d2  	fcvt.d.w	ft8, s0
80000ebc: 83 2a c1 04  	lw	s5, 76(sp)
80000ec0: 33 b4 7a 02  	mulhu	s0, s5, t2
80000ec4: 13 54 44 00  	srli	s0, s0, 4
80000ec8: 33 04 a4 02  	mul	s0, s0, a0
80000ecc: 33 84 8a 40  	sub	s0, s5, s0
80000ed0: d3 0e 04 d2  	fcvt.d.w	ft9, s0
80000ed4: 83 2f 41 04  	lw	t6, 68(sp)
80000ed8: 33 b4 7f 02  	mulhu	s0, t6, t2
80000edc: 13 54 44 00  	srli	s0, s0, 4
80000ee0: 33 04 a4 02  	mul	s0, s0, a0
80000ee4: 33 84 8f 40  	sub	s0, t6, s0
80000ee8: 53 0f 04 d2  	fcvt.d.w	ft10, s0
80000eec: 83 28 c1 03  	lw	a7, 60(sp)
80000ef0: 33 b4 78 02  	mulhu	s0, a7, t2
80000ef4: 13 54 44 00  	srli	s0, s0, 4
80000ef8: 33 04 a4 02  	mul	s0, s0, a0
80000efc: 33 84 88 40  	sub	s0, a7, s0
80000f00: d3 0f 04 d2  	fcvt.d.w	ft11, s0
80000f04: 03 2f 81 03  	lw	t5, 56(sp)
80000f08: 33 34 7f 02  	mulhu	s0, t5, t2
80000f0c: 13 54 44 00  	srli	s0, s0, 4
80000f10: 33 04 a4 02  	mul	s0, s0, a0
80000f14: 33 04 8f 40  	sub	s0, t5, s0
80000f18: 53 04 04 d2  	fcvt.d.w	fs0, s0
80000f1c: 03 23 01 03  	lw	t1, 48(sp)
80000f20: 33 34 73 02  	mulhu	s0, t1, t2
80000f24: 13 54 44 00  	srli	s0, s0, 4
80000f28: 33 04 a4 02  	mul	s0, s0, a0
80000f2c: 33 04 83 40  	sub	s0, t1, s0
80000f30: d3 04 04 d2  	fcvt.d.w	fs1, s0
80000f34: 03 2a 81 02  	lw	s4, 40(sp)
80000f38: 33 34 7a 02  	mulhu	s0, s4, t2
80000f3c: 13 54 44 00  	srli	s0, s0, 4
80000f40: 33 04 a4 02  	mul	s0, s0, a0
80000f44: 33 04 8a 40  	sub	s0, s4, s0
80000f48: 53 09 04 d2  	fcvt.d.w	fs2, s0
80000f4c: 83 29 41 02  	lw	s3, 36(sp)
80000f50: 33 b4 79 02  	mulhu	s0, s3, t2
80000f54: 13 54 44 00  	srli	s0, s0, 4
80000f58: 33 04 a4 02  	mul	s0, s0, a0
80000f5c: 33 84 89 40  	sub	s0, s3, s0
80000f60: d3 09 04 d2  	fcvt.d.w	fs3, s0
80000f64: 03 24 c1 06  	lw	s0, 108(sp)
80000f68: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000f6c: 27 30 1e fa  	fsd	ft1, -96(t3)
80000f70: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80000f74: 27 34 1e fa  	fsd	ft1, -88(t3)
80000f78: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80000f7c: 27 38 1e fa  	fsd	ft1, -80(t3)
80000f80: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80000f84: 27 3c 1e fa  	fsd	ft1, -72(t3)
80000f88: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80000f8c: 27 30 1e fc  	fsd	ft1, -64(t3)
80000f90: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80000f94: 27 34 1e fc  	fsd	ft1, -56(t3)
80000f98: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80000f9c: 27 38 1e fc  	fsd	ft1, -48(t3)
80000fa0: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80000fa4: 27 3c 1e fc  	fsd	ft1, -40(t3)
80000fa8: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80000fac: 27 30 1e fe  	fsd	ft1, -32(t3)
80000fb0: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80000fb4: 27 34 1e fe  	fsd	ft1, -24(t3)
80000fb8: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80000fbc: 27 38 1e fe  	fsd	ft1, -16(t3)
80000fc0: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80000fc4: 27 3c 1e fe  	fsd	ft1, -8(t3)
80000fc8: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80000fcc: 27 30 1e 00  	fsd	ft1, 0(t3)
80000fd0: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80000fd4: 27 34 1e 00  	fsd	ft1, 8(t3)
80000fd8: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80000fdc: 27 38 1e 00  	fsd	ft1, 16(t3)
80000fe0: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80000fe4: 27 3c 1e 00  	fsd	ft1, 24(t3)
80000fe8: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80000fec: 27 30 1e 02  	fsd	ft1, 32(t3)
80000ff0: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
80000ff4: 27 34 1e 02  	fsd	ft1, 40(t3)
80000ff8: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
80000ffc: 27 38 1e 02  	fsd	ft1, 48(t3)
80001000: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80001004: 27 3c 1e 02  	fsd	ft1, 56(t3)
80001008: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
8000100c: 27 30 1e 04  	fsd	ft1, 64(t3)
80001010: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80001014: 27 38 1e 04  	fsd	ft1, 80(t3)
80001018: 03 25 81 01  	lw	a0, 24(sp)
8000101c: 23 26 ae 04  	sw	a0, 76(t3)
80001020: 03 25 41 01  	lw	a0, 20(sp)
80001024: 23 24 ae 04  	sw	a0, 72(t3)
80001028: 53 f0 09 12  	fmul.d	ft0, fs3, ft0
8000102c: 27 3c 0e 04  	fsd	ft0, 88(t3)
;   for (i = 0; i < nj; i++)
80001030: 93 89 a9 01  	addi	s3, s3, 26
80001034: 83 25 c1 01  	lw	a1, 28(sp)
80001038: 93 85 35 00  	addi	a1, a1, 3
8000103c: 13 04 34 00  	addi	s0, s0, 3
80001040: 03 25 01 07  	lw	a0, 112(sp)
80001044: 13 05 45 00  	addi	a0, a0, 4
80001048: 23 28 a1 06  	sw	a0, 112(sp)
8000104c: 93 87 47 00  	addi	a5, a5, 4
80001050: 13 0a 9a 01  	addi	s4, s4, 25
80001054: 23 24 41 03  	sw	s4, 40(sp)
80001058: 03 2a 01 02  	lw	s4, 32(sp)
8000105c: 93 8b 5b 00  	addi	s7, s7, 5
80001060: 23 26 71 03  	sw	s7, 44(sp)
80001064: 13 0a 6a 00  	addi	s4, s4, 6
80001068: 13 06 66 00  	addi	a2, a2, 6
8000106c: 13 03 73 01  	addi	t1, t1, 23
80001070: 23 28 61 02  	sw	t1, 48(sp)
80001074: 13 07 77 00  	addi	a4, a4, 7
80001078: 23 2a e1 02  	sw	a4, 52(sp)
8000107c: 13 0f 6f 01  	addi	t5, t5, 22
80001080: 23 2c e1 03  	sw	t5, 56(sp)
80001084: 03 25 41 07  	lw	a0, 116(sp)
80001088: 13 05 85 00  	addi	a0, a0, 8
8000108c: 23 2a a1 06  	sw	a0, 116(sp)
80001090: 93 86 86 00  	addi	a3, a3, 8
80001094: 93 88 58 01  	addi	a7, a7, 21
80001098: 23 2e 11 03  	sw	a7, 60(sp)
8000109c: 13 09 99 00  	addi	s2, s2, 9
800010a0: 23 20 21 05  	sw	s2, 64(sp)
800010a4: 93 8f 4f 01  	addi	t6, t6, 20
800010a8: 23 22 f1 05  	sw	t6, 68(sp)
800010ac: 93 8e ae 00  	addi	t4, t4, 10
800010b0: 23 24 d1 05  	sw	t4, 72(sp)
800010b4: 93 8a 3a 01  	addi	s5, s5, 19
800010b8: 23 26 51 05  	sw	s5, 76(sp)
800010bc: 13 08 b8 00  	addi	a6, a6, 11
800010c0: 23 28 01 05  	sw	a6, 80(sp)
800010c4: 93 82 22 01  	addi	t0, t0, 18
800010c8: 23 2a 51 04  	sw	t0, 84(sp)
800010cc: 13 0b cb 00  	addi	s6, s6, 12
800010d0: 93 84 c4 00  	addi	s1, s1, 12
800010d4: 93 80 10 01  	addi	ra, ra, 17
800010d8: 23 2c 11 04  	sw	ra, 88(sp)
800010dc: 93 8d dd 00  	addi	s11, s11, 13
800010e0: 23 2e b1 05  	sw	s11, 92(sp)
800010e4: 13 0d 0d 01  	addi	s10, s10, 16
800010e8: 23 20 a1 07  	sw	s10, 96(sp)
800010ec: 13 0e 0e 0c  	addi	t3, t3, 192
800010f0: 93 8c fc 00  	addi	s9, s9, 15
800010f4: 23 22 91 07  	sw	s9, 100(sp)
800010f8: 13 0c ec 00  	addi	s8, s8, 14
800010fc: 23 24 81 07  	sw	s8, 104(sp)
80001100: 13 05 50 1d  	addi	a0, zero, 469
80001104: 23 22 31 03  	sw	s3, 36(sp)
80001108: e3 9c a9 c0  	bne	s3, a0, 0x80000d20 <.LBB0_37+0x310>
8000110c: 13 05 00 00  	mv	a0, zero
80001110: 13 06 00 00  	mv	a2, zero
80001114: 93 06 00 00  	mv	a3, zero
80001118: 93 05 00 00  	mv	a1, zero
8000111c: 13 04 00 00  	mv	s0, zero
80001120: 93 02 00 00  	mv	t0, zero
80001124: 93 09 00 00  	mv	s3, zero
80001128: 13 0a 00 00  	mv	s4, zero
8000112c: 13 0b 00 00  	mv	s6, zero
80001130: 13 08 00 00  	mv	a6, zero
80001134: 93 08 00 00  	mv	a7, zero
80001138: 13 09 00 00  	mv	s2, zero
8000113c: 93 0b 00 00  	mv	s7, zero
80001140: 13 0c 00 00  	mv	s8, zero
80001144: 93 0c 00 00  	mv	s9, zero
80001148: 13 0d 00 00  	mv	s10, zero
8000114c: 93 0d 00 00  	mv	s11, zero
80001150: 93 00 00 00  	mv	ra, zero
80001154: 13 03 00 00  	mv	t1, zero
80001158: 93 03 00 00  	mv	t2, zero
8000115c: 13 0e 00 00  	mv	t3, zero
80001160: 93 0e 00 00  	mv	t4, zero
80001164: 13 0f 00 00  	mv	t5, zero
;   for (i = 0; i < ni; i++)
80001168: 03 27 01 01  	lw	a4, 16(sp)
8000116c: 13 07 07 06  	addi	a4, a4, 96
80001170: b7 97 2e ba  	lui	a5, 762601
80001174: 93 87 37 ba  	addi	a5, a5, -1117
80001178: 93 0f 60 01  	addi	t6, zero, 22
8000117c: 93 0a a0 fe  	addi	s5, zero, -22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001180: 23 2a a1 06  	sw	a0, 116(sp)
80001184: b3 b4 fe 02  	mulhu	s1, t4, a5
80001188: 93 d4 44 00  	srli	s1, s1, 4
8000118c: b3 84 f4 03  	mul	s1, s1, t6
80001190: 13 85 02 00  	mv	a0, t0
80001194: b3 82 9e 40  	sub	t0, t4, s1
80001198: d3 80 02 d2  	fcvt.d.w	ft1, t0
8000119c: 93 02 05 00  	mv	t0, a0
800011a0: 03 25 41 07  	lw	a0, 116(sp)

800011a4 <.LBB0_39>:
800011a4: 97 34 00 00  	auipc	s1, 3
800011a8: 93 84 c4 d4  	addi	s1, s1, -692
800011ac: 07 b0 04 00  	fld	ft0, 0(s1)
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
800011b0: b3 34 fe 02  	mulhu	s1, t3, a5
800011b4: 93 d4 44 00  	srli	s1, s1, 4
800011b8: b3 84 f4 03  	mul	s1, s1, t6
800011bc: b3 04 9e 40  	sub	s1, t3, s1
800011c0: 53 81 04 d2  	fcvt.d.w	ft2, s1
800011c4: b3 34 f3 02  	mulhu	s1, t1, a5
800011c8: 93 d4 44 00  	srli	s1, s1, 4
800011cc: b3 84 f4 03  	mul	s1, s1, t6
800011d0: b3 04 93 40  	sub	s1, t1, s1
800011d4: d3 81 04 d2  	fcvt.d.w	ft3, s1
800011d8: b3 b4 fd 02  	mulhu	s1, s11, a5
800011dc: 93 d4 44 00  	srli	s1, s1, 4
800011e0: b3 84 f4 03  	mul	s1, s1, t6
800011e4: b3 84 9d 40  	sub	s1, s11, s1
800011e8: 53 82 04 d2  	fcvt.d.w	ft4, s1
800011ec: b3 34 fd 02  	mulhu	s1, s10, a5
800011f0: 93 d4 44 00  	srli	s1, s1, 4
800011f4: b3 84 f4 03  	mul	s1, s1, t6
800011f8: b3 04 9d 40  	sub	s1, s10, s1
800011fc: d3 82 04 d2  	fcvt.d.w	ft5, s1
80001200: b3 34 fc 02  	mulhu	s1, s8, a5
80001204: 93 d4 44 00  	srli	s1, s1, 4
80001208: b3 84 f4 03  	mul	s1, s1, t6
8000120c: b3 04 9c 40  	sub	s1, s8, s1
80001210: 53 83 04 d2  	fcvt.d.w	ft6, s1
80001214: b3 34 f9 02  	mulhu	s1, s2, a5
80001218: 93 d4 44 00  	srli	s1, s1, 4
8000121c: b3 84 f4 03  	mul	s1, s1, t6
80001220: b3 04 99 40  	sub	s1, s2, s1
80001224: d3 83 04 d2  	fcvt.d.w	ft7, s1
80001228: b3 34 f8 02  	mulhu	s1, a6, a5
8000122c: 93 d4 44 00  	srli	s1, s1, 4
80001230: b3 84 f4 03  	mul	s1, s1, t6
80001234: b3 04 98 40  	sub	s1, a6, s1
80001238: 53 85 04 d2  	fcvt.d.w	fa0, s1
8000123c: b3 34 fa 02  	mulhu	s1, s4, a5
80001240: 93 d4 44 00  	srli	s1, s1, 4
80001244: b3 84 f4 03  	mul	s1, s1, t6
80001248: b3 04 9a 40  	sub	s1, s4, s1
8000124c: d3 85 04 d2  	fcvt.d.w	fa1, s1
80001250: b3 b4 f2 02  	mulhu	s1, t0, a5
80001254: 93 d4 44 00  	srli	s1, s1, 4
80001258: b3 84 f4 03  	mul	s1, s1, t6
8000125c: b3 84 92 40  	sub	s1, t0, s1
80001260: 53 86 04 d2  	fcvt.d.w	fa2, s1
80001264: b3 b4 f5 02  	mulhu	s1, a1, a5
80001268: 93 d4 44 00  	srli	s1, s1, 4
8000126c: b3 84 f4 03  	mul	s1, s1, t6
80001270: b3 84 95 40  	sub	s1, a1, s1
80001274: d3 86 04 d2  	fcvt.d.w	fa3, s1
80001278: b3 34 f5 02  	mulhu	s1, a0, a5
8000127c: 93 d4 44 00  	srli	s1, s1, 4
80001280: b3 84 f4 03  	mul	s1, s1, t6
80001284: b3 04 95 40  	sub	s1, a0, s1
80001288: 53 87 04 d2  	fcvt.d.w	fa4, s1
8000128c: b3 34 f6 02  	mulhu	s1, a2, a5
80001290: 93 d4 44 00  	srli	s1, s1, 4
80001294: b3 84 f4 03  	mul	s1, s1, t6
80001298: b3 04 96 40  	sub	s1, a2, s1
8000129c: d3 87 04 d2  	fcvt.d.w	fa5, s1
800012a0: b3 b4 f6 02  	mulhu	s1, a3, a5
800012a4: 93 d4 44 00  	srli	s1, s1, 4
800012a8: b3 84 f4 03  	mul	s1, s1, t6
800012ac: b3 84 96 40  	sub	s1, a3, s1
800012b0: 53 88 04 d2  	fcvt.d.w	fa6, s1
800012b4: b3 34 f4 02  	mulhu	s1, s0, a5
800012b8: 93 d4 44 00  	srli	s1, s1, 4
800012bc: b3 84 f4 03  	mul	s1, s1, t6
800012c0: b3 04 94 40  	sub	s1, s0, s1
800012c4: d3 88 04 d2  	fcvt.d.w	fa7, s1
800012c8: b3 b4 f9 02  	mulhu	s1, s3, a5
800012cc: 93 d4 44 00  	srli	s1, s1, 4
800012d0: b3 84 f4 03  	mul	s1, s1, t6
800012d4: b3 84 99 40  	sub	s1, s3, s1
800012d8: 53 8e 04 d2  	fcvt.d.w	ft8, s1
800012dc: b3 34 fb 02  	mulhu	s1, s6, a5
800012e0: 93 d4 44 00  	srli	s1, s1, 4
800012e4: b3 84 f4 03  	mul	s1, s1, t6
800012e8: b3 04 9b 40  	sub	s1, s6, s1
800012ec: d3 8e 04 d2  	fcvt.d.w	ft9, s1
800012f0: b3 b4 f8 02  	mulhu	s1, a7, a5
800012f4: 93 d4 44 00  	srli	s1, s1, 4
800012f8: b3 84 f4 03  	mul	s1, s1, t6
800012fc: b3 84 98 40  	sub	s1, a7, s1
80001300: 53 8f 04 d2  	fcvt.d.w	ft10, s1
80001304: b3 b4 fb 02  	mulhu	s1, s7, a5
80001308: 93 d4 44 00  	srli	s1, s1, 4
8000130c: b3 84 f4 03  	mul	s1, s1, t6
80001310: b3 84 9b 40  	sub	s1, s7, s1
80001314: d3 8f 04 d2  	fcvt.d.w	ft11, s1
80001318: b3 b4 fc 02  	mulhu	s1, s9, a5
8000131c: 93 d4 44 00  	srli	s1, s1, 4
80001320: b3 84 f4 03  	mul	s1, s1, t6
80001324: b3 84 9c 40  	sub	s1, s9, s1
80001328: 53 84 04 d2  	fcvt.d.w	fs0, s1
8000132c: b3 b4 f0 02  	mulhu	s1, ra, a5
80001330: 93 d4 44 00  	srli	s1, s1, 4
80001334: b3 84 f4 03  	mul	s1, s1, t6
80001338: b3 84 90 40  	sub	s1, ra, s1
8000133c: d3 84 04 d2  	fcvt.d.w	fs1, s1
80001340: b3 b4 f3 02  	mulhu	s1, t2, a5
80001344: 93 d4 44 00  	srli	s1, s1, 4
80001348: b3 84 f4 03  	mul	s1, s1, t6
8000134c: b3 84 93 40  	sub	s1, t2, s1
80001350: 53 89 04 d2  	fcvt.d.w	fs2, s1
80001354: b3 34 ff 02  	mulhu	s1, t5, a5
80001358: 93 d4 44 00  	srli	s1, s1, 4
8000135c: b3 84 54 03  	mul	s1, s1, s5
80001360: b3 04 9f 00  	add	s1, t5, s1
80001364: d3 89 04 d2  	fcvt.d.w	fs3, s1
80001368: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000136c: 27 30 17 fa  	fsd	ft1, -96(a4)
80001370: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80001374: 27 34 17 fa  	fsd	ft1, -88(a4)
80001378: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
8000137c: 27 38 17 fa  	fsd	ft1, -80(a4)
80001380: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80001384: 27 3c 17 fa  	fsd	ft1, -72(a4)
80001388: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
8000138c: 27 30 17 fc  	fsd	ft1, -64(a4)
80001390: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80001394: 27 34 17 fc  	fsd	ft1, -56(a4)
80001398: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
8000139c: 27 38 17 fc  	fsd	ft1, -48(a4)
800013a0: d3 70 05 12  	fmul.d	ft1, fa0, ft0
800013a4: 27 3c 17 fc  	fsd	ft1, -40(a4)
800013a8: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
800013ac: 27 30 17 fe  	fsd	ft1, -32(a4)
800013b0: d3 70 06 12  	fmul.d	ft1, fa2, ft0
800013b4: 27 34 17 fe  	fsd	ft1, -24(a4)
800013b8: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
800013bc: 27 38 17 fe  	fsd	ft1, -16(a4)
800013c0: d3 70 07 12  	fmul.d	ft1, fa4, ft0
800013c4: 27 3c 17 fe  	fsd	ft1, -8(a4)
800013c8: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
800013cc: 27 30 17 00  	fsd	ft1, 0(a4)
800013d0: d3 70 08 12  	fmul.d	ft1, fa6, ft0
800013d4: 27 34 17 00  	fsd	ft1, 8(a4)
800013d8: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
800013dc: 27 38 17 00  	fsd	ft1, 16(a4)
800013e0: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
800013e4: 27 3c 17 00  	fsd	ft1, 24(a4)
800013e8: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
800013ec: 27 30 17 02  	fsd	ft1, 32(a4)
800013f0: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
800013f4: 27 34 17 02  	fsd	ft1, 40(a4)
800013f8: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
800013fc: 27 38 17 02  	fsd	ft1, 48(a4)
80001400: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80001404: 27 3c 17 02  	fsd	ft1, 56(a4)
80001408: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
8000140c: 27 34 17 04  	fsd	ft1, 72(a4)
80001410: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80001414: 27 38 17 04  	fsd	ft1, 80(a4)
80001418: 23 22 07 04  	sw	zero, 68(a4)
8000141c: 23 20 07 04  	sw	zero, 64(a4)
80001420: 53 f0 09 12  	fmul.d	ft0, fs3, ft0
80001424: 27 3c 07 04  	fsd	ft0, 88(a4)
;   for (i = 0; i < ni; i++)
80001428: 13 0f 9f 01  	addi	t5, t5, 25
8000142c: 93 8e 2e 00  	addi	t4, t4, 2
80001430: 13 0e 3e 00  	addi	t3, t3, 3
80001434: 93 83 83 01  	addi	t2, t2, 24
80001438: 13 03 43 00  	addi	t1, t1, 4
8000143c: 93 80 70 01  	addi	ra, ra, 23
80001440: 93 8d 5d 00  	addi	s11, s11, 5
80001444: 13 0d 6d 00  	addi	s10, s10, 6
80001448: 93 8c 5c 01  	addi	s9, s9, 21
8000144c: 13 0c 7c 00  	addi	s8, s8, 7
80001450: 93 8b 4b 01  	addi	s7, s7, 20
80001454: 13 09 89 00  	addi	s2, s2, 8
80001458: 93 88 38 01  	addi	a7, a7, 19
8000145c: 13 08 98 00  	addi	a6, a6, 9
80001460: 13 0b 2b 01  	addi	s6, s6, 18
80001464: 13 0a aa 00  	addi	s4, s4, 10
80001468: 93 89 19 01  	addi	s3, s3, 17
8000146c: 93 82 b2 00  	addi	t0, t0, 11
80001470: 13 04 04 01  	addi	s0, s0, 16
80001474: 93 85 c5 00  	addi	a1, a1, 12
80001478: 93 86 f6 00  	addi	a3, a3, 15
8000147c: 13 07 07 0c  	addi	a4, a4, 192
80001480: 13 06 e6 00  	addi	a2, a2, 14
80001484: 13 05 d5 00  	addi	a0, a0, 13
80001488: 93 04 00 19  	addi	s1, zero, 400
8000148c: e3 1a 9f ce  	bne	t5, s1, 0x80001180 <.LBB0_38+0x430>
80001490: 93 05 00 00  	mv	a1, zero
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001494: 73 28 00 b0  	csrr	a6, mcycle
80001498: 93 08 00 0b  	addi	a7, zero, 176
8000149c: 93 06 00 09  	addi	a3, zero, 144
800014a0: 93 02 00 01  	addi	t0, zero, 16
800014a4: 03 23 c1 00  	lw	t1, 12(sp)
800014a8: 93 07 03 00  	mv	a5, t1
800014ac: 03 29 01 01  	lw	s2, 16(sp)
800014b0: 03 27 81 00  	lw	a4, 8(sp)
800014b4: 83 23 41 00  	lw	t2, 4(sp)
800014b8: 03 26 01 00  	lw	a2, 0(sp)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800014bc: b3 84 15 03  	mul	s1, a1, a7
800014c0: b3 84 93 00  	add	s1, t2, s1
800014c4: 07 b0 84 04  	fld	ft0, 72(s1)
800014c8: 87 b0 04 05  	fld	ft1, 80(s1)
800014cc: 07 b1 84 05  	fld	ft2, 88(s1)
800014d0: 87 b1 04 06  	fld	ft3, 96(s1)
800014d4: 07 b2 84 06  	fld	ft4, 104(s1)
800014d8: 87 b2 04 07  	fld	ft5, 112(s1)
800014dc: 07 b3 04 00  	fld	ft6, 0(s1)
800014e0: 87 b3 84 00  	fld	ft7, 8(s1)
800014e4: 07 b5 04 01  	fld	fa0, 16(s1)
800014e8: 87 b5 84 01  	fld	fa1, 24(s1)
800014ec: 07 b6 04 02  	fld	fa2, 32(s1)
800014f0: 87 b6 84 02  	fld	fa3, 40(s1)
800014f4: 07 b7 04 03  	fld	fa4, 48(s1)
800014f8: 87 b7 84 03  	fld	fa5, 56(s1)
800014fc: 07 b8 04 04  	fld	fa6, 64(s1)
80001500: 87 b8 84 07  	fld	fa7, 120(s1)
80001504: 07 be 04 08  	fld	ft8, 128(s1)
80001508: 87 be 84 08  	fld	ft9, 136(s1)
8000150c: 07 bf 04 09  	fld	ft10, 144(s1)
80001510: 87 bf 84 09  	fld	ft11, 152(s1)
80001514: 07 b4 04 0a  	fld	fs0, 160(s1)
80001518: 87 b4 84 0a  	fld	fs1, 168(s1)
8000151c: 93 04 00 00  	mv	s1, zero
80001520: 33 04 96 00  	add	s0, a2, s1
80001524: 07 39 04 00  	fld	fs2, 0(s0)
80001528: 53 79 69 12  	fmul.d	fs2, fs2, ft6
8000152c: 87 39 04 09  	fld	fs3, 144(s0)
80001530: 07 3a 04 12  	fld	fs4, 288(s0)
80001534: 87 3a 04 1b  	fld	fs5, 432(s0)
80001538: 07 3b 04 24  	fld	fs6, 576(s0)
8000153c: 43 f9 79 92  	fmadd.d	fs2, fs3, ft7, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001540: 87 39 04 2d  	fld	fs3, 720(s0)
80001544: 43 79 aa 92  	fmadd.d	fs2, fs4, fa0, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001548: 07 3a 04 36  	fld	fs4, 864(s0)
8000154c: 43 f9 ba 92  	fmadd.d	fs2, fs5, fa1, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001550: 87 3a 04 3f  	fld	fs5, 1008(s0)
80001554: 43 79 cb 92  	fmadd.d	fs2, fs6, fa2, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001558: 07 3b 04 48  	fld	fs6, 1152(s0)
8000155c: 43 f9 d9 92  	fmadd.d	fs2, fs3, fa3, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001560: 87 39 04 51  	fld	fs3, 1296(s0)
80001564: 43 79 ea 92  	fmadd.d	fs2, fs4, fa4, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001568: 07 3a 04 5a  	fld	fs4, 1440(s0)
8000156c: 43 f9 fa 92  	fmadd.d	fs2, fs5, fa5, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001570: 87 3a 04 63  	fld	fs5, 1584(s0)
80001574: 43 79 0b 93  	fmadd.d	fs2, fs6, fa6, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001578: 07 3b 04 6c  	fld	fs6, 1728(s0)
8000157c: 43 f9 09 92  	fmadd.d	fs2, fs3, ft0, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001580: 87 39 04 75  	fld	fs3, 1872(s0)
80001584: 43 79 1a 92  	fmadd.d	fs2, fs4, ft1, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001588: 07 3a 04 7e  	fld	fs4, 2016(s0)
8000158c: 13 05 84 43  	addi	a0, s0, 1080
80001590: 43 f9 2a 92  	fmadd.d	fs2, fs5, ft2, fs2
80001594: 87 3a 85 43  	fld	fs5, 1080(a0)
80001598: 13 05 04 48  	addi	a0, s0, 1152
8000159c: 43 79 3b 92  	fmadd.d	fs2, fs6, ft3, fs2
800015a0: 07 3b 05 48  	fld	fs6, 1152(a0)
800015a4: 13 05 84 4c  	addi	a0, s0, 1224
800015a8: 43 f9 49 92  	fmadd.d	fs2, fs3, ft4, fs2
800015ac: 87 39 85 4c  	fld	fs3, 1224(a0)
800015b0: 13 05 04 51  	addi	a0, s0, 1296
800015b4: 43 79 5a 92  	fmadd.d	fs2, fs4, ft5, fs2
800015b8: 07 3a 05 51  	fld	fs4, 1296(a0)
800015bc: 13 05 84 55  	addi	a0, s0, 1368
800015c0: 43 f9 1a 93  	fmadd.d	fs2, fs5, fa7, fs2
800015c4: 87 3a 85 55  	fld	fs5, 1368(a0)
800015c8: 13 05 04 5a  	addi	a0, s0, 1440
800015cc: 43 79 cb 93  	fmadd.d	fs2, fs6, ft8, fs2
800015d0: 07 3b 05 5a  	fld	fs6, 1440(a0)
800015d4: 13 05 84 5e  	addi	a0, s0, 1512
800015d8: 43 f9 d9 93  	fmadd.d	fs2, fs3, ft9, fs2
800015dc: 87 39 85 5e  	fld	fs3, 1512(a0)
800015e0: 43 79 ea 93  	fmadd.d	fs2, fs4, ft10, fs2

800015e4 <.LBB0_40>:
800015e4: 17 35 00 00  	auipc	a0, 3
800015e8: 13 05 45 91  	addi	a0, a0, -1772
800015ec: 07 3a 05 00  	fld	fs4, 0(a0)
800015f0: 43 f9 fa 93  	fmadd.d	fs2, fs5, ft11, fs2
800015f4: 43 79 8b 92  	fmadd.d	fs2, fs6, fs0, fs2
800015f8: 43 f9 99 92  	fmadd.d	fs2, fs3, fs1, fs2
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800015fc: 53 79 49 13  	fmul.d	fs2, fs2, fs4
80001600: 33 85 97 00  	add	a0, a5, s1
;     for (j = 0; j < nj; j++) {
80001604: 93 84 84 00  	addi	s1, s1, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80001608: 27 30 25 01  	fsd	fs2, 0(a0)
;     for (j = 0; j < nj; j++) {
8000160c: e3 9a d4 f0  	bne	s1, a3, 0x80001520 <.LBB0_39+0x37c>
;   for (i = 0; i < ni; i++) {
80001610: 93 85 15 00  	addi	a1, a1, 1
80001614: 93 87 07 09  	addi	a5, a5, 144
80001618: e3 92 55 ea  	bne	a1, t0, 0x800014bc <.LBB0_39+0x318>
8000161c: 93 05 00 00  	mv	a1, zero

80001620 <.LBB0_41>:
80001620: 17 35 00 00  	auipc	a0, 3
80001624: 13 05 05 8e  	addi	a0, a0, -1824
80001628: 07 30 05 00  	fld	ft0, 0(a0)
8000162c: 93 08 00 09  	addi	a7, zero, 144
80001630: 93 06 00 0c  	addi	a3, zero, 192
80001634: 93 02 00 01  	addi	t0, zero, 16
80001638: 93 07 09 00  	mv	a5, s2
;         D[i][j] += tmp[i][k] * C[k][j];
8000163c: 33 85 15 03  	mul	a0, a1, a7
80001640: 33 05 a3 00  	add	a0, t1, a0
80001644: 87 30 05 01  	fld	ft1, 16(a0)
80001648: 07 31 85 01  	fld	ft2, 24(a0)
8000164c: 87 31 05 02  	fld	ft3, 32(a0)
80001650: 07 32 85 02  	fld	ft4, 40(a0)
80001654: 87 32 05 03  	fld	ft5, 48(a0)
80001658: 07 33 85 03  	fld	ft6, 56(a0)
8000165c: 87 33 05 04  	fld	ft7, 64(a0)
80001660: 07 35 85 04  	fld	fa0, 72(a0)
80001664: 87 35 05 05  	fld	fa1, 80(a0)
80001668: 07 36 85 05  	fld	fa2, 88(a0)
8000166c: 87 36 05 06  	fld	fa3, 96(a0)
80001670: 07 37 85 06  	fld	fa4, 104(a0)
80001674: 87 37 05 07  	fld	fa5, 112(a0)
80001678: 07 38 85 07  	fld	fa6, 120(a0)
8000167c: 87 38 05 08  	fld	fa7, 128(a0)
80001680: 07 3e 85 08  	fld	ft8, 136(a0)
80001684: 87 3e 05 00  	fld	ft9, 0(a0)
80001688: 07 3f 85 00  	fld	ft10, 8(a0)
8000168c: 93 04 00 00  	mv	s1, zero
;       D[i][j] *= beta;
80001690: 33 85 97 00  	add	a0, a5, s1
80001694: 87 3f 05 00  	fld	ft11, 0(a0)
;         D[i][j] += tmp[i][k] * C[k][j];
80001698: 33 04 97 00  	add	s0, a4, s1
8000169c: 07 34 04 00  	fld	fs0, 0(s0)
800016a0: 87 34 04 0c  	fld	fs1, 192(s0)
;       D[i][j] *= beta;
800016a4: d3 ff 0f 12  	fmul.d	ft11, ft11, ft0
;         D[i][j] += tmp[i][k] * C[k][j];
800016a8: c3 7f d4 fb  	fmadd.d	ft11, fs0, ft9, ft11
800016ac: c3 ff e4 fb  	fmadd.d	ft11, fs1, ft10, ft11
800016b0: 07 34 04 18  	fld	fs0, 384(s0)
800016b4: 87 34 04 24  	fld	fs1, 576(s0)
800016b8: 07 39 04 30  	fld	fs2, 768(s0)
800016bc: 87 39 04 3c  	fld	fs3, 960(s0)
800016c0: c3 7f 14 fa  	fmadd.d	ft11, fs0, ft1, ft11
800016c4: c3 ff 24 fa  	fmadd.d	ft11, fs1, ft2, ft11
800016c8: c3 7f 39 fa  	fmadd.d	ft11, fs2, ft3, ft11
800016cc: c3 ff 49 fa  	fmadd.d	ft11, fs3, ft4, ft11
800016d0: 07 34 04 48  	fld	fs0, 1152(s0)
800016d4: 87 34 04 54  	fld	fs1, 1344(s0)
800016d8: 07 39 04 60  	fld	fs2, 1536(s0)
800016dc: 87 39 04 6c  	fld	fs3, 1728(s0)
800016e0: c3 7f 54 fa  	fmadd.d	ft11, fs0, ft5, ft11
800016e4: c3 ff 64 fa  	fmadd.d	ft11, fs1, ft6, ft11
800016e8: c3 7f 79 fa  	fmadd.d	ft11, fs2, ft7, ft11
800016ec: c3 ff a9 fa  	fmadd.d	ft11, fs3, fa0, ft11
800016f0: 07 34 04 78  	fld	fs0, 1920(s0)
800016f4: 13 06 04 42  	addi	a2, s0, 1056
800016f8: 87 34 06 42  	fld	fs1, 1056(a2)
800016fc: 13 06 04 48  	addi	a2, s0, 1152
80001700: 07 39 06 48  	fld	fs2, 1152(a2)
80001704: 13 06 04 4e  	addi	a2, s0, 1248
80001708: 87 39 06 4e  	fld	fs3, 1248(a2)
8000170c: c3 7f b4 fa  	fmadd.d	ft11, fs0, fa1, ft11
80001710: c3 ff c4 fa  	fmadd.d	ft11, fs1, fa2, ft11
80001714: c3 7f d9 fa  	fmadd.d	ft11, fs2, fa3, ft11
80001718: c3 ff e9 fa  	fmadd.d	ft11, fs3, fa4, ft11
8000171c: 13 06 04 54  	addi	a2, s0, 1344
80001720: 07 34 06 54  	fld	fs0, 1344(a2)
80001724: 13 06 04 5a  	addi	a2, s0, 1440
80001728: 87 34 06 5a  	fld	fs1, 1440(a2)
8000172c: 13 06 04 60  	addi	a2, s0, 1536
80001730: 07 39 06 60  	fld	fs2, 1536(a2)
80001734: 13 06 04 66  	addi	a2, s0, 1632
80001738: 87 39 06 66  	fld	fs3, 1632(a2)
8000173c: c3 7f f4 fa  	fmadd.d	ft11, fs0, fa5, ft11
80001740: c3 ff 04 fb  	fmadd.d	ft11, fs1, fa6, ft11
80001744: c3 7f 19 fb  	fmadd.d	ft11, fs2, fa7, ft11
80001748: c3 ff c9 fb  	fmadd.d	ft11, fs3, ft8, ft11
;     for (j = 0; j < nl; j++) {
8000174c: 93 84 84 00  	addi	s1, s1, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80001750: 27 30 f5 01  	fsd	ft11, 0(a0)
;     for (j = 0; j < nl; j++) {
80001754: e3 9e d4 f2  	bne	s1, a3, 0x80001690 <.LBB0_41+0x70>
;   for (i = 0; i < ni; i++) {
80001758: 93 85 15 00  	addi	a1, a1, 1
8000175c: 93 87 07 0c  	addi	a5, a5, 192
80001760: e3 9e 55 ec  	bne	a1, t0, 0x8000163c <.LBB0_41+0x1c>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001764: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80001768: b3 05 05 41  	sub	a1, a0, a6

8000176c <.LBB0_42>:
8000176c: 17 25 00 00  	auipc	a0, 2
80001770: 13 05 55 4c  	addi	a0, a0, 1221
80001774: 97 00 00 00  	auipc	ra, 0
80001778: e7 80 80 17  	jalr	376(ra)
8000177c: 13 05 09 06  	addi	a0, s2, 96
80001780: 53 00 00 d2  	fcvt.d.w	ft0, zero
80001784: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80001788: 87 30 05 fa  	fld	ft1, -96(a0)
8000178c: 07 31 85 fa  	fld	ft2, -88(a0)
80001790: 87 31 05 fb  	fld	ft3, -80(a0)
80001794: 07 32 85 fb  	fld	ft4, -72(a0)
80001798: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000179c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800017a0: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800017a4: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800017a8: 87 30 05 fc  	fld	ft1, -64(a0)
800017ac: 07 31 85 fc  	fld	ft2, -56(a0)
800017b0: 87 31 05 fd  	fld	ft3, -48(a0)
800017b4: 07 32 85 fd  	fld	ft4, -40(a0)
800017b8: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800017bc: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800017c0: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800017c4: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800017c8: 87 30 05 fe  	fld	ft1, -32(a0)
800017cc: 07 31 85 fe  	fld	ft2, -24(a0)
800017d0: 87 31 05 ff  	fld	ft3, -16(a0)
800017d4: 07 32 85 ff  	fld	ft4, -8(a0)
800017d8: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800017dc: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800017e0: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800017e4: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800017e8: 87 30 05 00  	fld	ft1, 0(a0)
800017ec: 07 31 85 00  	fld	ft2, 8(a0)
800017f0: 87 31 05 01  	fld	ft3, 16(a0)
800017f4: 07 32 85 01  	fld	ft4, 24(a0)
800017f8: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800017fc: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001800: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001804: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001808: 87 30 05 02  	fld	ft1, 32(a0)
8000180c: 07 31 85 02  	fld	ft2, 40(a0)
80001810: 87 31 05 03  	fld	ft3, 48(a0)
80001814: 07 32 85 03  	fld	ft4, 56(a0)
80001818: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000181c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001820: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001824: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001828: 87 30 05 04  	fld	ft1, 64(a0)
8000182c: 07 31 85 04  	fld	ft2, 72(a0)
80001830: 87 31 05 05  	fld	ft3, 80(a0)
80001834: 07 32 85 05  	fld	ft4, 88(a0)
80001838: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000183c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001840: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001844: 53 70 02 02  	fadd.d	ft0, ft4, ft0
;     for (int i = 0; i < n; i++){
80001848: 93 85 f5 ff  	addi	a1, a1, -1
8000184c: 13 05 05 0c  	addi	a0, a0, 192
80001850: e3 9c 05 f2  	bnez	a1, 0x80001788 <.LBB0_42+0x1c>

80001854 <.LBB0_43>:
80001854: 17 25 00 00  	auipc	a0, 2
80001858: 13 05 45 6b  	addi	a0, a0, 1716
8000185c: 87 30 05 00  	fld	ft1, 0(a0)
;   double error = r - r_true;
80001860: 53 70 10 02  	fadd.d	ft0, ft0, ft1
;   error = error < 0.0 ? -error : error;
80001864: 53 24 00 22  	fabs.d	fs0, ft0
;   printf("error = %f\n", error);
80001868: 27 3c 81 06  	fsd	fs0, 120(sp)
8000186c: 03 26 81 07  	lw	a2, 120(sp)
80001870: 83 26 c1 07  	lw	a3, 124(sp)

80001874 <.LBB0_44>:
80001874: 17 25 00 00  	auipc	a0, 2
80001878: 13 05 15 3b  	addi	a0, a0, 945
8000187c: 97 00 00 00  	auipc	ra, 0
80001880: e7 80 00 07  	jalr	112(ra)

80001884 <.LBB0_45>:
80001884: 17 25 00 00  	auipc	a0, 2
80001888: 13 05 c5 68  	addi	a0, a0, 1676
8000188c: 07 30 05 00  	fld	ft0, 0(a0)
;   return error > 0.0001;
80001890: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80001894: 07 3b 01 08  	fld	fs6, 128(sp)
80001898: 87 3a 81 08  	fld	fs5, 136(sp)
8000189c: 07 3a 01 09  	fld	fs4, 144(sp)
800018a0: 87 39 81 09  	fld	fs3, 152(sp)
800018a4: 07 39 01 0a  	fld	fs2, 160(sp)
800018a8: 87 34 81 0a  	fld	fs1, 168(sp)
800018ac: 07 34 01 0b  	fld	fs0, 176(sp)
800018b0: 83 2d c1 0b  	lw	s11, 188(sp)
800018b4: 03 2d 01 0c  	lw	s10, 192(sp)
800018b8: 83 2c 41 0c  	lw	s9, 196(sp)
800018bc: 03 2c 81 0c  	lw	s8, 200(sp)
800018c0: 83 2b c1 0c  	lw	s7, 204(sp)
800018c4: 03 2b 01 0d  	lw	s6, 208(sp)
800018c8: 83 2a 41 0d  	lw	s5, 212(sp)
800018cc: 03 2a 81 0d  	lw	s4, 216(sp)
800018d0: 83 29 c1 0d  	lw	s3, 220(sp)
800018d4: 03 29 01 0e  	lw	s2, 224(sp)
800018d8: 83 24 41 0e  	lw	s1, 228(sp)
800018dc: 03 24 81 0e  	lw	s0, 232(sp)
800018e0: 83 20 c1 0e  	lw	ra, 236(sp)
800018e4: 13 01 01 0f  	addi	sp, sp, 240
800018e8: 67 80 00 00  	ret

800018ec <printf_>:
; {
800018ec: 13 01 01 fd  	addi	sp, sp, -48
800018f0: 23 26 11 00  	sw	ra, 12(sp)
800018f4: 93 02 05 00  	mv	t0, a0
800018f8: 23 26 11 03  	sw	a7, 44(sp)
800018fc: 23 24 01 03  	sw	a6, 40(sp)
80001900: 23 22 f1 02  	sw	a5, 36(sp)
80001904: 23 20 e1 02  	sw	a4, 32(sp)
80001908: 23 2e d1 00  	sw	a3, 28(sp)
8000190c: 23 2c c1 00  	sw	a2, 24(sp)
80001910: 23 2a b1 00  	sw	a1, 20(sp)
80001914: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001918: 23 24 a1 00  	sw	a0, 8(sp)

8000191c <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
8000191c: 17 15 00 00  	auipc	a0, 1
80001920: 13 05 45 c2  	addi	a0, a0, -988
80001924: 93 05 71 00  	addi	a1, sp, 7
80001928: 13 06 f0 ff  	addi	a2, zero, -1
8000192c: 13 07 41 01  	addi	a4, sp, 20
80001930: 93 86 02 00  	mv	a3, t0
80001934: 97 00 00 00  	auipc	ra, 0
80001938: e7 80 40 01  	jalr	20(ra)
;   return ret;
8000193c: 83 20 c1 00  	lw	ra, 12(sp)
80001940: 13 01 01 03  	addi	sp, sp, 48
80001944: 67 80 00 00  	ret

80001948 <_vsnprintf.llvm.17592004524093383706>:
; {
80001948: 13 01 01 f9  	addi	sp, sp, -112
8000194c: 23 26 11 06  	sw	ra, 108(sp)
80001950: 23 24 81 06  	sw	s0, 104(sp)
80001954: 23 22 91 06  	sw	s1, 100(sp)
80001958: 23 20 21 07  	sw	s2, 96(sp)
8000195c: 23 2e 31 05  	sw	s3, 92(sp)
80001960: 23 2c 41 05  	sw	s4, 88(sp)
80001964: 23 2a 51 05  	sw	s5, 84(sp)
80001968: 23 28 61 05  	sw	s6, 80(sp)
8000196c: 23 26 71 05  	sw	s7, 76(sp)
80001970: 23 24 81 05  	sw	s8, 72(sp)
80001974: 23 22 91 05  	sw	s9, 68(sp)
80001978: 23 20 a1 05  	sw	s10, 64(sp)
8000197c: 23 2e b1 03  	sw	s11, 60(sp)
80001980: 93 09 07 00  	mv	s3, a4
80001984: 13 84 06 00  	mv	s0, a3
80001988: 93 0a 06 00  	mv	s5, a2
8000198c: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80001990: 63 86 05 00  	beqz	a1, 0x8000199c <.LBB1_183>
80001994: 13 09 05 00  	mv	s2, a0
80001998: 6f 00 c0 00  	j	0x800019a4 <.LBB1_183+0x8>

8000199c <.LBB1_183>:
8000199c: 17 19 00 00  	auipc	s2, 1
800019a0: 13 09 09 c5  	addi	s2, s2, -944
800019a4: 13 0c 00 00  	mv	s8, zero
800019a8: 13 0b 50 02  	addi	s6, zero, 37
800019ac: 93 0d 00 01  	addi	s11, zero, 16
800019b0: 93 0b e0 02  	addi	s7, zero, 46
800019b4: 37 15 00 00  	lui	a0, 1
800019b8: 13 05 05 80  	addi	a0, a0, -2048
800019bc: 23 2c a1 00  	sw	a0, 24(sp)
800019c0: 37 05 01 00  	lui	a0, 16
800019c4: 13 05 f5 ff  	addi	a0, a0, -1
800019c8: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
800019cc: 13 0d 24 00  	addi	s10, s0, 2
800019d0: 93 0c 0c 00  	mv	s9, s8
800019d4: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
800019d8: 03 45 04 00  	lbu	a0, 0(s0)
800019dc: e3 04 05 30  	beqz	a0, 0x800024e4 <.LBB1_124+0x3b0>
800019e0: 63 08 65 03  	beq	a0, s6, 0x80001a10 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
800019e4: 93 84 1c 00  	addi	s1, s9, 1
800019e8: 93 05 0a 00  	mv	a1, s4
800019ec: 13 86 0c 00  	mv	a2, s9
800019f0: 93 86 0a 00  	mv	a3, s5
800019f4: e7 00 09 00  	jalr	s2
;       format++;
800019f8: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800019fc: 13 0d 1d 00  	addi	s10, s10, 1
80001a00: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001a04: 03 45 04 00  	lbu	a0, 0(s0)
80001a08: e3 1c 05 fc  	bnez	a0, 0x800019e0 <.LBB1_183+0x44>
80001a0c: 6f 00 90 2d  	j	0x800024e4 <.LBB1_124+0x3b0>
;     flags = 0U;
80001a10: 13 04 00 00  	mv	s0, zero
80001a14: 6f 00 00 01  	j	0x80001a24 <.LBB1_9+0x8>

80001a18 <.LBB1_8>:
80001a18: 93 05 00 01  	addi	a1, zero, 16

80001a1c <.LBB1_9>:
80001a1c: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001a20: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001a24: 03 45 fd ff  	lbu	a0, -1(s10)
80001a28: 93 05 05 fe  	addi	a1, a0, -32
80001a2c: 63 ec bd 02  	bltu	s11, a1, 0x80001a64 <.LBB1_15>
80001a30: 93 95 25 00  	slli	a1, a1, 2

80001a34 <.LBB1_184>:
80001a34: 17 26 00 00  	auipc	a2, 2
80001a38: 13 06 06 21  	addi	a2, a2, 528
80001a3c: b3 85 c5 00  	add	a1, a1, a2
80001a40: 03 a6 05 00  	lw	a2, 0(a1)
80001a44: 93 05 10 00  	addi	a1, zero, 1
80001a48: 67 00 06 00  	jr	a2

80001a4c <.LBB1_12>:
80001a4c: 93 05 80 00  	addi	a1, zero, 8
80001a50: 6f f0 df fc  	j	0x80001a1c <.LBB1_9>

80001a54 <.LBB1_13>:
80001a54: 93 05 40 00  	addi	a1, zero, 4
80001a58: 6f f0 5f fc  	j	0x80001a1c <.LBB1_9>

80001a5c <.LBB1_14>:
80001a5c: 93 05 20 00  	addi	a1, zero, 2
80001a60: 6f f0 df fb  	j	0x80001a1c <.LBB1_9>

80001a64 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001a64: 93 05 05 fd  	addi	a1, a0, -48
80001a68: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80001a6c: 93 05 fd ff  	addi	a1, s10, -1
80001a70: 93 06 90 00  	addi	a3, zero, 9
80001a74: 63 ee c6 06  	bltu	a3, a2, 0x80001af0 <.LBB1_15+0x8c>
80001a78: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001a7c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001a80: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001a84: b3 06 8b 03  	mul	a3, s6, s8
80001a88: 93 85 15 00  	addi	a1, a1, 1
80001a8c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001a90: 93 06 05 fd  	addi	a3, a0, -48
80001a94: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001a98: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001a9c: e3 e0 86 ff  	bltu	a3, s8, 0x80001a7c <.LBB1_15+0x18>
80001aa0: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001aa4: 63 16 75 0b  	bne	a0, s7, 0x80001b50 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001aa8: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001aac: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001ab0: 93 05 05 fd  	addi	a1, a0, -48
80001ab4: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001ab8: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001abc: 93 06 90 00  	addi	a3, zero, 9
80001ac0: 63 e0 c6 06  	bltu	a3, a2, 0x80001b20 <.LBB1_15+0xbc>
80001ac4: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001ac8: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001acc: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001ad0: b3 86 8b 03  	mul	a3, s7, s8
80001ad4: 93 85 15 00  	addi	a1, a1, 1
80001ad8: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001adc: 93 06 05 fd  	addi	a3, a0, -48
80001ae0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001ae4: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001ae8: e3 e0 86 ff  	bltu	a3, s8, 0x80001ac8 <.LBB1_15+0x64>
80001aec: 6f 00 00 07  	j	0x80001b5c <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001af0: 13 06 a0 02  	addi	a2, zero, 42
80001af4: 63 18 c5 04  	bne	a0, a2, 0x80001b44 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001af8: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001afc: 63 d4 05 00  	bgez	a1, 0x80001b04 <.LBB1_15+0xa0>
80001b00: 13 64 24 00  	ori	s0, s0, 2
80001b04: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001b08: 03 45 0d 00  	lbu	a0, 0(s10)
80001b0c: 13 d6 f5 41  	srai	a2, a1, 31
80001b10: b3 85 c5 00  	add	a1, a1, a2
80001b14: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001b18: e3 08 75 f9  	beq	a0, s7, 0x80001aa8 <.LBB1_15+0x44>
80001b1c: 6f 00 40 03  	j	0x80001b50 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001b20: 13 06 a0 02  	addi	a2, zero, 42
80001b24: 63 1a c5 02  	bne	a0, a2, 0x80001b58 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001b28: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001b2c: 63 44 70 01  	bgtz	s7, 0x80001b34 <.LBB1_15+0xd0>
80001b30: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001b34: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001b38: 13 0d 2d 00  	addi	s10, s10, 2
80001b3c: 93 89 49 00  	addi	s3, s3, 4
80001b40: 6f 00 00 02  	j	0x80001b60 <.LBB1_15+0xfc>
80001b44: 13 0b 00 00  	mv	s6, zero
80001b48: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001b4c: e3 0e 75 f5  	beq	a0, s7, 0x80001aa8 <.LBB1_15+0x44>
80001b50: 93 0b 00 00  	mv	s7, zero
80001b54: 6f 00 c0 00  	j	0x80001b60 <.LBB1_15+0xfc>
80001b58: 93 0b 00 00  	mv	s7, zero
80001b5c: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80001b60: 93 05 85 f9  	addi	a1, a0, -104
80001b64: 13 d6 15 00  	srli	a2, a1, 1
80001b68: 93 95 f5 01  	slli	a1, a1, 31
80001b6c: b3 e5 c5 00  	or	a1, a1, a2
80001b70: 13 06 90 00  	addi	a2, zero, 9
80001b74: 63 62 b6 06  	bltu	a2, a1, 0x80001bd8 <.LBB1_42>
80001b78: 93 95 25 00  	slli	a1, a1, 2

80001b7c <.LBB1_185>:
80001b7c: 17 26 00 00  	auipc	a2, 2
80001b80: 13 06 c6 10  	addi	a2, a2, 268
80001b84: b3 85 c5 00  	add	a1, a1, a2
80001b88: 83 a6 05 00  	lw	a3, 0(a1)
80001b8c: 93 05 10 00  	addi	a1, zero, 1
80001b90: 13 06 00 10  	addi	a2, zero, 256
80001b94: 67 80 06 00  	jr	a3

80001b98 <.LBB1_36>:
;         if (*format == 'h') {
80001b98: 03 45 1d 00  	lbu	a0, 1(s10)
80001b9c: 93 05 80 06  	addi	a1, zero, 104
80001ba0: 63 12 b5 12  	bne	a0, a1, 0x80001cc4 <.LBB1_53+0x48>
80001ba4: 93 05 20 00  	addi	a1, zero, 2
80001ba8: 13 06 00 0c  	addi	a2, zero, 192
80001bac: 6f 00 00 02  	j	0x80001bcc <.LBB1_41>

80001bb0 <.LBB1_38>:
80001bb0: 13 06 00 20  	addi	a2, zero, 512
80001bb4: 6f 00 80 01  	j	0x80001bcc <.LBB1_41>

80001bb8 <.LBB1_39>:
;         if (*format == 'l') {
80001bb8: 03 45 1d 00  	lbu	a0, 1(s10)
80001bbc: 93 05 c0 06  	addi	a1, zero, 108
80001bc0: 63 18 b5 10  	bne	a0, a1, 0x80001cd0 <.LBB1_53+0x54>
80001bc4: 93 05 20 00  	addi	a1, zero, 2
80001bc8: 13 06 00 30  	addi	a2, zero, 768

80001bcc <.LBB1_41>:
80001bcc: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001bd0: 03 45 0d 00  	lbu	a0, 0(s10)
80001bd4: 33 64 c4 00  	or	s0, s0, a2

80001bd8 <.LBB1_42>:
;     switch (*format) {
80001bd8: 93 05 b5 fd  	addi	a1, a0, -37
80001bdc: 13 06 30 05  	addi	a2, zero, 83
80001be0: 63 64 b6 10  	bltu	a2, a1, 0x80001ce8 <.LBB1_59>
80001be4: 93 95 25 00  	slli	a1, a1, 2

80001be8 <.LBB1_186>:
80001be8: 17 26 00 00  	auipc	a2, 2
80001bec: 13 06 86 0c  	addi	a2, a2, 200
80001bf0: b3 85 c5 00  	add	a1, a1, a2
80001bf4: 03 a6 05 00  	lw	a2, 0(a1)
80001bf8: 93 05 80 00  	addi	a1, zero, 8
80001bfc: 13 0c 00 01  	addi	s8, zero, 16
80001c00: 67 00 06 00  	jr	a2

80001c04 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001c04: 13 74 f4 fe  	andi	s0, s0, -17
80001c08: 13 0c a0 00  	addi	s8, zero, 10

80001c0c <.LBB1_45>:
;         if (*format == 'X') {
80001c0c: 93 05 80 05  	addi	a1, zero, 88
80001c10: 63 14 b5 00  	bne	a0, a1, 0x80001c18 <.LBB1_45+0xc>
80001c14: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001c18: 93 05 40 06  	addi	a1, zero, 100
80001c1c: 63 08 b5 0e  	beq	a0, a1, 0x80001d0c <.LBB1_62+0x8>
80001c20: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001c24: 13 06 90 06  	addi	a2, zero, 105
80001c28: 63 02 c5 0e  	beq	a0, a2, 0x80001d0c <.LBB1_62+0x8>
80001c2c: 6f 00 80 0d  	j	0x80001d04 <.LBB1_62>

80001c30 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001c30: 93 05 60 04  	addi	a1, zero, 70
80001c34: 63 14 b5 00  	bne	a0, a1, 0x80001c3c <.LBB1_49+0xc>
80001c38: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001c3c: 13 85 79 00  	addi	a0, s3, 7
80001c40: 13 75 85 ff  	andi	a0, a0, -8
80001c44: 07 35 05 00  	fld	fa0, 0(a0)
80001c48: 93 09 85 00  	addi	s3, a0, 8
80001c4c: 13 05 09 00  	mv	a0, s2
80001c50: 93 05 0a 00  	mv	a1, s4
80001c54: 13 86 0c 00  	mv	a2, s9
80001c58: 93 86 0a 00  	mv	a3, s5
80001c5c: 13 87 0b 00  	mv	a4, s7
80001c60: 93 07 0b 00  	mv	a5, s6
80001c64: 13 08 04 00  	mv	a6, s0
80001c68: 97 10 00 00  	auipc	ra, 1
80001c6c: e7 80 80 98  	jalr	-1656(ra)
80001c70: 6f 00 00 7c  	j	0x80002430 <.LBB1_124+0x2fc>

80001c74 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001c74: 83 25 81 01  	lw	a1, 24(sp)
80001c78: 33 64 b4 00  	or	s0, s0, a1

80001c7c <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001c7c: 13 65 25 00  	ori	a0, a0, 2
80001c80: 93 05 70 04  	addi	a1, zero, 71
80001c84: 63 14 b5 00  	bne	a0, a1, 0x80001c8c <.LBB1_53+0x10>
80001c88: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001c8c: 13 85 79 00  	addi	a0, s3, 7
80001c90: 13 75 85 ff  	andi	a0, a0, -8
80001c94: 07 35 05 00  	fld	fa0, 0(a0)
80001c98: 93 09 85 00  	addi	s3, a0, 8
80001c9c: 13 05 09 00  	mv	a0, s2
80001ca0: 93 05 0a 00  	mv	a1, s4
80001ca4: 13 86 0c 00  	mv	a2, s9
80001ca8: 93 86 0a 00  	mv	a3, s5
80001cac: 13 87 0b 00  	mv	a4, s7
80001cb0: 93 07 0b 00  	mv	a5, s6
80001cb4: 13 08 04 00  	mv	a6, s0
80001cb8: 97 10 00 00  	auipc	ra, 1
80001cbc: e7 80 80 01  	jalr	24(ra)
80001cc0: 6f 00 00 77  	j	0x80002430 <.LBB1_124+0x2fc>
80001cc4: 13 64 04 08  	ori	s0, s0, 128
80001cc8: 13 0d 1d 00  	addi	s10, s10, 1
80001ccc: 6f f0 df f0  	j	0x80001bd8 <.LBB1_42>
80001cd0: 13 64 04 10  	ori	s0, s0, 256
80001cd4: 13 0d 1d 00  	addi	s10, s10, 1
80001cd8: 6f f0 1f f0  	j	0x80001bd8 <.LBB1_42>

80001cdc <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001cdc: 13 8c 1c 00  	addi	s8, s9, 1
80001ce0: 13 05 50 02  	addi	a0, zero, 37
80001ce4: 6f 00 80 00  	j	0x80001cec <.LBB1_59+0x4>

80001ce8 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001ce8: 13 8c 1c 00  	addi	s8, s9, 1
80001cec: 93 05 0a 00  	mv	a1, s4
80001cf0: 13 86 0c 00  	mv	a2, s9
80001cf4: 93 86 0a 00  	mv	a3, s5
80001cf8: e7 00 09 00  	jalr	s2
80001cfc: 6f 00 80 73  	j	0x80002434 <.LBB1_124+0x300>

80001d00 <.LBB1_61>:
80001d00: 93 05 20 00  	addi	a1, zero, 2

80001d04 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001d04: 13 74 34 ff  	andi	s0, s0, -13
80001d08: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001d0c: 93 75 04 40  	andi	a1, s0, 1024
80001d10: 63 84 05 00  	beqz	a1, 0x80001d18 <.LBB1_62+0x14>
80001d14: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001d18: 93 05 90 06  	addi	a1, zero, 105
80001d1c: 63 06 b5 00  	beq	a0, a1, 0x80001d28 <.LBB1_62+0x24>
80001d20: 93 05 40 06  	addi	a1, zero, 100
80001d24: 63 1c b5 12  	bne	a0, a1, 0x80001e5c <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001d28: 13 75 04 20  	andi	a0, s0, 512
80001d2c: 63 16 05 02  	bnez	a0, 0x80001d58 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001d30: 13 75 04 10  	andi	a0, s0, 256
80001d34: 63 1c 05 14  	bnez	a0, 0x80001e8c <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001d38: 13 75 04 04  	andi	a0, s0, 64
80001d3c: 63 18 05 4e  	bnez	a0, 0x8000222c <.LBB1_124+0xf8>
80001d40: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001d44: 93 75 04 08  	andi	a1, s0, 128
80001d48: 63 84 05 4e  	beqz	a1, 0x80002230 <.LBB1_124+0xfc>
80001d4c: 13 15 08 01  	slli	a0, a6, 16
80001d50: 13 58 05 41  	srai	a6, a0, 16
80001d54: 6f 00 c0 4d  	j	0x80002230 <.LBB1_124+0xfc>
80001d58: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80001d5c: 13 85 79 00  	addi	a0, s3, 7
80001d60: 13 75 85 ff  	andi	a0, a0, -8
80001d64: 83 29 05 00  	lw	s3, 0(a0)
80001d68: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80001d6c: 13 65 45 00  	ori	a0, a0, 4
80001d70: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001d74: 23 24 a1 00  	sw	a0, 8(sp)
80001d78: 33 e5 a9 00  	or	a0, s3, a0
80001d7c: 63 14 05 00  	bnez	a0, 0x80001d84 <.LBB1_62+0x80>
80001d80: 13 74 f4 fe  	andi	s0, s0, -17
80001d84: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d88: 93 75 04 40  	andi	a1, s0, 1024
80001d8c: 93 d5 a5 00  	srli	a1, a1, 10
80001d90: 33 75 b5 00  	and	a0, a0, a1
80001d94: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d98: 63 14 05 0a  	bnez	a0, 0x80001e40 <.LBB1_62+0x13c>
80001d9c: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001da0: 63 da 04 00  	bgez	s1, 0x80001db4 <.LBB1_62+0xb0>
80001da4: 33 35 30 01  	snez	a0, s3
80001da8: b3 09 30 41  	neg	s3, s3
80001dac: 33 85 a4 00  	add	a0, s1, a0
80001db0: b3 04 a0 40  	neg	s1, a0
80001db4: 13 09 00 00  	mv	s2, zero
80001db8: 13 75 04 02  	andi	a0, s0, 32
80001dbc: 13 45 15 06  	xori	a0, a0, 97
80001dc0: 13 05 65 0f  	addi	a0, a0, 246
80001dc4: 23 2a a1 00  	sw	a0, 20(sp)
80001dc8: 6f 00 40 02  	j	0x80001dec <.LBB1_62+0xe8>
80001dcc: 13 06 10 00  	addi	a2, zero, 1
80001dd0: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001dd4: 93 36 f9 01  	sltiu	a3, s2, 31
80001dd8: 33 f6 c6 00  	and	a2, a3, a2
80001ddc: 13 89 07 00  	mv	s2, a5
80001de0: 93 09 05 00  	mv	s3, a0
80001de4: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001de8: 63 0c 06 04  	beqz	a2, 0x80001e40 <.LBB1_62+0x13c>
;       value /= base;
80001dec: 13 85 09 00  	mv	a0, s3
80001df0: 93 85 04 00  	mv	a1, s1
80001df4: 13 06 0c 00  	mv	a2, s8
80001df8: 93 06 00 00  	mv	a3, zero
80001dfc: 97 e0 ff ff  	auipc	ra, 1048574
80001e00: e7 80 40 20  	jalr	516(ra)
80001e04: 33 06 85 03  	mul	a2, a0, s8
80001e08: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e0c: 13 77 e6 0f  	andi	a4, a2, 254
80001e10: 93 06 00 03  	addi	a3, zero, 48
80001e14: 93 07 a0 00  	addi	a5, zero, 10
80001e18: 63 64 f7 00  	bltu	a4, a5, 0x80001e20 <.LBB1_62+0x11c>
80001e1c: 83 26 41 01  	lw	a3, 20(sp)
80001e20: 33 86 c6 00  	add	a2, a3, a2
80001e24: 93 06 c1 01  	addi	a3, sp, 28
80001e28: b3 86 26 01  	add	a3, a3, s2
80001e2c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e30: e3 9e 04 f8  	bnez	s1, 0x80001dcc <.LBB1_62+0xc8>
80001e34: 33 b6 89 01  	sltu	a2, s3, s8
80001e38: 13 46 16 00  	xori	a2, a2, 1
80001e3c: 6f f0 5f f9  	j	0x80001dd0 <.LBB1_62+0xcc>
80001e40: 03 25 41 00  	lw	a0, 4(sp)
80001e44: 93 09 85 00  	addi	s3, a0, 8
80001e48: 03 25 81 00  	lw	a0, 8(sp)
80001e4c: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001e50: 13 07 c1 01  	addi	a4, sp, 28
80001e54: 03 29 c1 00  	lw	s2, 12(sp)
80001e58: 6f 00 80 47  	j	0x800022d0 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80001e5c: 13 75 04 20  	andi	a0, s0, 512
80001e60: 63 12 05 0c  	bnez	a0, 0x80001f24 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001e64: 13 75 04 10  	andi	a0, s0, 256
80001e68: 63 1e 05 46  	bnez	a0, 0x800022e4 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001e6c: 13 75 04 04  	andi	a0, s0, 64
80001e70: 63 10 05 50  	bnez	a0, 0x80002370 <.LBB1_124+0x23c>
80001e74: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001e78: 93 75 04 08  	andi	a1, s0, 128
80001e7c: 63 8c 05 4e  	beqz	a1, 0x80002374 <.LBB1_124+0x240>
80001e80: 83 25 01 01  	lw	a1, 16(sp)
80001e84: 33 75 b5 00  	and	a0, a0, a1
80001e88: 6f 00 c0 4e  	j	0x80002374 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80001e8c: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001e90: 63 14 08 00  	bnez	a6, 0x80001e98 <.LBB1_62+0x194>
80001e94: 13 74 f4 fe  	andi	s0, s0, -17
80001e98: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001e9c: 13 76 04 40  	andi	a2, s0, 1024
80001ea0: 13 56 a6 00  	srli	a2, a2, 10
80001ea4: b3 f5 c5 00  	and	a1, a1, a2
80001ea8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001eac: 63 9c 05 40  	bnez	a1, 0x800022c4 <.LBB1_124+0x190>
80001eb0: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001eb4: 13 56 f8 41  	srai	a2, a6, 31
80001eb8: b3 06 c8 00  	add	a3, a6, a2
80001ebc: b3 c6 c6 00  	xor	a3, a3, a2
80001ec0: 13 76 04 02  	andi	a2, s0, 32
80001ec4: 13 46 16 06  	xori	a2, a2, 97
80001ec8: 93 08 66 0f  	addi	a7, a2, 246
80001ecc: 6f 00 40 03  	j	0x80001f00 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001ed0: 33 05 f6 00  	add	a0, a2, a5
80001ed4: 93 87 15 00  	addi	a5, a1, 1
80001ed8: 13 06 c1 01  	addi	a2, sp, 28
80001edc: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001ee0: b3 b6 86 01  	sltu	a3, a3, s8
80001ee4: 93 c6 16 00  	xori	a3, a3, 1
80001ee8: 93 b5 f5 01  	sltiu	a1, a1, 31
80001eec: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001ef0: 23 00 a6 00  	sb	a0, 0(a2)
80001ef4: 93 85 07 00  	mv	a1, a5
80001ef8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001efc: 63 84 04 3c  	beqz	s1, 0x800022c4 <.LBB1_124+0x190>
;       value /= base;
80001f00: 33 d7 86 03  	divu	a4, a3, s8
80001f04: 33 06 87 03  	mul	a2, a4, s8
80001f08: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f0c: 13 f5 e7 0f  	andi	a0, a5, 254
80001f10: 13 06 00 03  	addi	a2, zero, 48
80001f14: 93 04 a0 00  	addi	s1, zero, 10
80001f18: e3 6c 95 fa  	bltu	a0, s1, 0x80001ed0 <.LBB1_62+0x1cc>
80001f1c: 13 86 08 00  	mv	a2, a7
80001f20: 6f f0 1f fb  	j	0x80001ed0 <.LBB1_62+0x1cc>
80001f24: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001f28: 13 85 79 00  	addi	a0, s3, 7
80001f2c: 93 75 85 ff  	andi	a1, a0, -8
80001f30: 03 a9 05 00  	lw	s2, 0(a1)
80001f34: 13 e5 45 00  	ori	a0, a1, 4
80001f38: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80001f3c: 33 65 39 01  	or	a0, s2, s3
80001f40: 23 24 b1 00  	sw	a1, 8(sp)
80001f44: 63 14 05 00  	bnez	a0, 0x80001f4c <.LBB1_62+0x248>
80001f48: 13 74 f4 fe  	andi	s0, s0, -17
80001f4c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f50: 93 75 04 40  	andi	a1, s0, 1024
80001f54: 93 d5 a5 00  	srli	a1, a1, 10
80001f58: 33 75 b5 00  	and	a0, a0, a1
80001f5c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f60: 63 18 05 08  	bnez	a0, 0x80001ff0 <.LBB1_62+0x2ec>
80001f64: 93 04 00 00  	mv	s1, zero
80001f68: 13 75 04 02  	andi	a0, s0, 32
80001f6c: 13 45 15 06  	xori	a0, a0, 97
80001f70: 13 05 65 0f  	addi	a0, a0, 246
80001f74: 23 2a a1 00  	sw	a0, 20(sp)
80001f78: 6f 00 40 02  	j	0x80001f9c <.LBB1_62+0x298>
80001f7c: 13 06 10 00  	addi	a2, zero, 1
80001f80: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f84: 93 b6 f4 01  	sltiu	a3, s1, 31
80001f88: 33 f6 c6 00  	and	a2, a3, a2
80001f8c: 93 84 07 00  	mv	s1, a5
80001f90: 13 09 05 00  	mv	s2, a0
80001f94: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f98: 63 0c 06 04  	beqz	a2, 0x80001ff0 <.LBB1_62+0x2ec>
;       value /= base;
80001f9c: 13 05 09 00  	mv	a0, s2
80001fa0: 93 85 09 00  	mv	a1, s3
80001fa4: 13 06 0c 00  	mv	a2, s8
80001fa8: 93 06 00 00  	mv	a3, zero
80001fac: 97 e0 ff ff  	auipc	ra, 1048574
80001fb0: e7 80 40 05  	jalr	84(ra)
80001fb4: 33 06 85 03  	mul	a2, a0, s8
80001fb8: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001fbc: 13 77 e6 0f  	andi	a4, a2, 254
80001fc0: 93 06 00 03  	addi	a3, zero, 48
80001fc4: 93 07 a0 00  	addi	a5, zero, 10
80001fc8: 63 64 f7 00  	bltu	a4, a5, 0x80001fd0 <.LBB1_62+0x2cc>
80001fcc: 83 26 41 01  	lw	a3, 20(sp)
80001fd0: 33 86 c6 00  	add	a2, a3, a2
80001fd4: 93 06 c1 01  	addi	a3, sp, 28
80001fd8: b3 86 96 00  	add	a3, a3, s1
80001fdc: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001fe0: e3 9e 09 f8  	bnez	s3, 0x80001f7c <.LBB1_62+0x278>
80001fe4: 33 36 89 01  	sltu	a2, s2, s8
80001fe8: 13 46 16 00  	xori	a2, a2, 1
80001fec: 6f f0 5f f9  	j	0x80001f80 <.LBB1_62+0x27c>
80001ff0: 03 25 81 00  	lw	a0, 8(sp)
80001ff4: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001ff8: 13 07 c1 01  	addi	a4, sp, 28
80001ffc: 03 29 c1 00  	lw	s2, 12(sp)
80002000: 6f 00 40 40  	j	0x80002404 <.LBB1_124+0x2d0>

80002004 <.LBB1_108>:
80002004: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80002008: 13 79 24 00  	andi	s2, s0, 2
8000200c: 93 04 10 00  	addi	s1, zero, 1
80002010: 63 1e 09 02  	bnez	s2, 0x8000204c <.LBB1_108+0x48>
80002014: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80002018: 63 6a 9b 02  	bltu	s6, s1, 0x8000204c <.LBB1_108+0x48>
8000201c: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80002020: 13 0c fb ff  	addi	s8, s6, -1
80002024: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80002028: 33 86 8c 00  	add	a2, s9, s0
8000202c: 13 05 00 02  	addi	a0, zero, 32
80002030: 93 05 0a 00  	mv	a1, s4
80002034: 93 86 0a 00  	mv	a3, s5
80002038: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
8000203c: 13 04 14 00  	addi	s0, s0, 1
80002040: e3 14 8c fe  	bne	s8, s0, 0x80002028 <.LBB1_108+0x24>
80002044: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80002048: b3 8c 8c 00  	add	s9, s9, s0
8000204c: 03 c5 09 00  	lbu	a0, 0(s3)
80002050: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80002054: 93 89 49 00  	addi	s3, s3, 4
80002058: 13 8c 1c 00  	addi	s8, s9, 1
8000205c: 93 05 0a 00  	mv	a1, s4
80002060: 13 86 0c 00  	mv	a2, s9
80002064: 93 86 0a 00  	mv	a3, s5
80002068: 13 89 0b 00  	mv	s2, s7
8000206c: e7 80 0b 00  	jalr	s7
80002070: 33 b5 64 01  	sltu	a0, s1, s6
80002074: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80002078: 33 65 a4 00  	or	a0, s0, a0
8000207c: 63 1c 05 3a  	bnez	a0, 0x80002434 <.LBB1_124+0x300>
;           while (l++ < width) {
80002080: 33 04 9b 40  	sub	s0, s6, s1
80002084: 93 0b e0 02  	addi	s7, zero, 46
80002088: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000208c: 13 0c 1c 00  	addi	s8, s8, 1
80002090: 13 05 00 02  	addi	a0, zero, 32
80002094: 93 05 0a 00  	mv	a1, s4
80002098: 93 86 0a 00  	mv	a3, s5
8000209c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800020a0: 13 04 f4 ff  	addi	s0, s0, -1
800020a4: e3 12 04 fe  	bnez	s0, 0x80002088 <.LBB1_108+0x84>
800020a8: 13 0b 50 02  	addi	s6, zero, 37
800020ac: 13 04 1d 00  	addi	s0, s10, 1
800020b0: 6f f0 df 91  	j	0x800019cc <.LBB1_183+0x30>

800020b4 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
800020b4: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
800020b8: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
800020bc: 63 14 05 00  	bnez	a0, 0x800020c4 <.LBB1_117+0x10>
800020c0: 93 fe fe fe  	andi	t4, t4, -17
800020c4: 93 04 a0 00  	addi	s1, zero, 10
800020c8: 13 04 f0 00  	addi	s0, zero, 15
800020cc: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800020d0: 13 f6 0e 40  	andi	a2, t4, 1024
800020d4: 13 56 a6 00  	srli	a2, a2, 10
800020d8: b3 f5 c5 00  	and	a1, a1, a2
800020dc: 93 07 00 00  	mv	a5, zero
800020e0: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800020e4: 63 98 05 10  	bnez	a1, 0x800021f4 <.LBB1_124+0xc0>
800020e8: 93 05 00 00  	mv	a1, zero
800020ec: 6f 00 40 03  	j	0x80002120 <.LBB1_117+0x6c>
800020f0: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800020f4: 33 06 d6 00  	add	a2, a2, a3
800020f8: 93 87 15 00  	addi	a5, a1, 1
800020fc: 93 06 c1 01  	addi	a3, sp, 28
80002100: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002104: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80002108: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000210c: 93 b5 f5 01  	sltiu	a1, a1, 31
80002110: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002114: 23 80 c6 00  	sb	a2, 0(a3)
80002118: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000211c: 63 0c 07 0c  	beqz	a4, 0x800021f4 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002120: 93 76 e5 00  	andi	a3, a0, 14
80002124: 13 06 00 03  	addi	a2, zero, 48
80002128: e3 e4 96 fc  	bltu	a3, s1, 0x800020f0 <.LBB1_117+0x3c>
8000212c: 13 06 70 03  	addi	a2, zero, 55
80002130: 6f f0 1f fc  	j	0x800020f0 <.LBB1_117+0x3c>

80002134 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80002134: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80002138: 03 c5 07 00  	lbu	a0, 0(a5)
8000213c: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80002140: 63 0c 05 02  	beqz	a0, 0x80002178 <.LBB1_124+0x44>
80002144: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80002148: 63 84 0b 00  	beqz	s7, 0x80002150 <.LBB1_124+0x1c>
8000214c: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80002150: 93 85 f5 ff  	addi	a1, a1, -1
80002154: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80002158: 03 c7 16 00  	lbu	a4, 1(a3)
8000215c: 13 86 16 00  	addi	a2, a3, 1
80002160: b3 36 e0 00  	snez	a3, a4
80002164: 33 37 b0 00  	snez	a4, a1
80002168: 33 77 d7 00  	and	a4, a4, a3
8000216c: 93 85 f5 ff  	addi	a1, a1, -1
80002170: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80002174: e3 12 07 fe  	bnez	a4, 0x80002158 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80002178: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
8000217c: 93 75 04 40  	andi	a1, s0, 1024
80002180: 93 b4 15 00  	seqz	s1, a1
80002184: 23 2a c1 00  	sw	a2, 20(sp)
80002188: b3 35 76 01  	sltu	a1, a2, s7
8000218c: b3 e5 b4 00  	or	a1, s1, a1
80002190: 63 94 05 00  	bnez	a1, 0x80002198 <.LBB1_124+0x64>
80002194: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80002198: 93 75 24 00  	andi	a1, s0, 2
8000219c: 23 26 b1 00  	sw	a1, 12(sp)
800021a0: 63 96 05 2a  	bnez	a1, 0x8000244c <.LBB1_124+0x318>
800021a4: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
800021a8: 63 fe 65 29  	bgeu	a1, s6, 0x80002444 <.LBB1_124+0x310>
800021ac: 23 24 f1 00  	sw	a5, 8(sp)
800021b0: 13 04 00 00  	mv	s0, zero
800021b4: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
800021b8: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
800021bc: 33 86 8c 00  	add	a2, s9, s0
800021c0: 13 05 00 02  	addi	a0, zero, 32
800021c4: 93 05 0a 00  	mv	a1, s4
800021c8: 93 86 0a 00  	mv	a3, s5
800021cc: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
800021d0: 13 04 14 00  	addi	s0, s0, 1
800021d4: e3 14 89 fe  	bne	s2, s0, 0x800021bc <.LBB1_124+0x88>
800021d8: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800021dc: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
800021e0: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800021e4: 23 2a b1 00  	sw	a1, 20(sp)
800021e8: b3 8c 8c 00  	add	s9, s9, s0
800021ec: 13 09 0c 00  	mv	s2, s8
800021f0: 6f 00 c0 25  	j	0x8000244c <.LBB1_124+0x318>
800021f4: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800021f8: 13 07 c1 01  	addi	a4, sp, 28
800021fc: 93 08 00 01  	addi	a7, zero, 16
80002200: 13 0e 80 00  	addi	t3, zero, 8
80002204: 13 05 09 00  	mv	a0, s2
80002208: 93 05 0a 00  	mv	a1, s4
8000220c: 13 86 0c 00  	mv	a2, s9
80002210: 93 86 0a 00  	mv	a3, s5
80002214: 13 08 00 00  	mv	a6, zero
80002218: 93 83 0b 00  	mv	t2, s7
8000221c: 97 10 00 00  	auipc	ra, 1
80002220: e7 80 00 fa  	jalr	-96(ra)
80002224: 13 0c 05 00  	mv	s8, a0
80002228: 6f 00 00 21  	j	0x80002438 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
8000222c: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80002230: 63 14 08 00  	bnez	a6, 0x80002238 <.LBB1_124+0x104>
80002234: 13 74 f4 fe  	andi	s0, s0, -17
80002238: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
8000223c: 13 76 04 40  	andi	a2, s0, 1024
80002240: 13 56 a6 00  	srli	a2, a2, 10
80002244: b3 f5 c5 00  	and	a1, a1, a2
80002248: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000224c: 63 9c 05 06  	bnez	a1, 0x800022c4 <.LBB1_124+0x190>
80002250: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80002254: 13 56 f8 41  	srai	a2, a6, 31
80002258: b3 06 c8 00  	add	a3, a6, a2
8000225c: b3 c6 c6 00  	xor	a3, a3, a2
80002260: 13 76 04 02  	andi	a2, s0, 32
80002264: 13 46 16 06  	xori	a2, a2, 97
80002268: 93 08 66 0f  	addi	a7, a2, 246
8000226c: 6f 00 40 03  	j	0x800022a0 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002270: 33 05 f6 00  	add	a0, a2, a5
80002274: 93 87 15 00  	addi	a5, a1, 1
80002278: 13 06 c1 01  	addi	a2, sp, 28
8000227c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002280: b3 b6 86 01  	sltu	a3, a3, s8
80002284: 93 c6 16 00  	xori	a3, a3, 1
80002288: 93 b5 f5 01  	sltiu	a1, a1, 31
8000228c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002290: 23 00 a6 00  	sb	a0, 0(a2)
80002294: 93 85 07 00  	mv	a1, a5
80002298: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000229c: 63 84 04 02  	beqz	s1, 0x800022c4 <.LBB1_124+0x190>
;       value /= base;
800022a0: 33 d7 86 03  	divu	a4, a3, s8
800022a4: 33 06 87 03  	mul	a2, a4, s8
800022a8: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800022ac: 13 f5 e7 0f  	andi	a0, a5, 254
800022b0: 13 06 00 03  	addi	a2, zero, 48
800022b4: 93 04 a0 00  	addi	s1, zero, 10
800022b8: e3 6c 95 fa  	bltu	a0, s1, 0x80002270 <.LBB1_124+0x13c>
800022bc: 13 86 08 00  	mv	a2, a7
800022c0: 6f f0 1f fb  	j	0x80002270 <.LBB1_124+0x13c>
800022c4: 93 89 49 00  	addi	s3, s3, 4
800022c8: 13 58 f8 01  	srli	a6, a6, 31
800022cc: 13 07 c1 01  	addi	a4, sp, 28
800022d0: 13 05 09 00  	mv	a0, s2
800022d4: 93 05 0a 00  	mv	a1, s4
800022d8: 13 86 0c 00  	mv	a2, s9
800022dc: 93 86 0a 00  	mv	a3, s5
800022e0: 6f 00 80 13  	j	0x80002418 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800022e4: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800022e8: 63 14 05 00  	bnez	a0, 0x800022f0 <.LBB1_124+0x1bc>
800022ec: 13 74 f4 fe  	andi	s0, s0, -17
800022f0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800022f4: 13 76 04 40  	andi	a2, s0, 1024
800022f8: 13 56 a6 00  	srli	a2, a2, 10
800022fc: b3 f5 c5 00  	and	a1, a1, a2
80002300: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002304: 63 9c 05 0e  	bnez	a1, 0x800023fc <.LBB1_124+0x2c8>
80002308: 13 06 00 00  	mv	a2, zero
8000230c: 93 75 04 02  	andi	a1, s0, 32
80002310: 93 c5 15 06  	xori	a1, a1, 97
80002314: 13 88 65 0f  	addi	a6, a1, 246
80002318: 6f 00 40 03  	j	0x8000234c <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000231c: 33 87 e7 00  	add	a4, a5, a4
80002320: 93 07 16 00  	addi	a5, a2, 1
80002324: 93 05 c1 01  	addi	a1, sp, 28
80002328: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000232c: 33 35 85 01  	sltu	a0, a0, s8
80002330: 13 45 15 00  	xori	a0, a0, 1
80002334: 13 36 f6 01  	sltiu	a2, a2, 31
80002338: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000233c: 23 80 e4 00  	sb	a4, 0(s1)
80002340: 13 86 07 00  	mv	a2, a5
80002344: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002348: 63 8a 05 0a  	beqz	a1, 0x800023fc <.LBB1_124+0x2c8>
;       value /= base;
8000234c: b3 56 85 03  	divu	a3, a0, s8
80002350: 33 87 86 03  	mul	a4, a3, s8
80002354: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002358: 93 74 e7 0f  	andi	s1, a4, 254
8000235c: 93 07 00 03  	addi	a5, zero, 48
80002360: 93 05 a0 00  	addi	a1, zero, 10
80002364: e3 ec b4 fa  	bltu	s1, a1, 0x8000231c <.LBB1_124+0x1e8>
80002368: 93 07 08 00  	mv	a5, a6
8000236c: 6f f0 1f fb  	j	0x8000231c <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80002370: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80002374: 63 14 05 00  	bnez	a0, 0x8000237c <.LBB1_124+0x248>
80002378: 13 74 f4 fe  	andi	s0, s0, -17
8000237c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80002380: 13 76 04 40  	andi	a2, s0, 1024
80002384: 13 56 a6 00  	srli	a2, a2, 10
80002388: b3 f5 c5 00  	and	a1, a1, a2
8000238c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002390: 63 96 05 06  	bnez	a1, 0x800023fc <.LBB1_124+0x2c8>
80002394: 13 06 00 00  	mv	a2, zero
80002398: 93 75 04 02  	andi	a1, s0, 32
8000239c: 93 c5 15 06  	xori	a1, a1, 97
800023a0: 13 88 65 0f  	addi	a6, a1, 246
800023a4: 6f 00 40 03  	j	0x800023d8 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023a8: 33 87 e7 00  	add	a4, a5, a4
800023ac: 93 07 16 00  	addi	a5, a2, 1
800023b0: 93 05 c1 01  	addi	a1, sp, 28
800023b4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800023b8: 33 35 85 01  	sltu	a0, a0, s8
800023bc: 13 45 15 00  	xori	a0, a0, 1
800023c0: 13 36 f6 01  	sltiu	a2, a2, 31
800023c4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023c8: 23 80 e4 00  	sb	a4, 0(s1)
800023cc: 13 86 07 00  	mv	a2, a5
800023d0: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800023d4: 63 84 05 02  	beqz	a1, 0x800023fc <.LBB1_124+0x2c8>
;       value /= base;
800023d8: b3 56 85 03  	divu	a3, a0, s8
800023dc: 33 87 86 03  	mul	a4, a3, s8
800023e0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023e4: 93 74 e7 0f  	andi	s1, a4, 254
800023e8: 93 07 00 03  	addi	a5, zero, 48
800023ec: 93 05 a0 00  	addi	a1, zero, 10
800023f0: e3 ec b4 fa  	bltu	s1, a1, 0x800023a8 <.LBB1_124+0x274>
800023f4: 93 07 08 00  	mv	a5, a6
800023f8: 6f f0 1f fb  	j	0x800023a8 <.LBB1_124+0x274>
800023fc: 93 89 49 00  	addi	s3, s3, 4
80002400: 13 07 c1 01  	addi	a4, sp, 28
80002404: 13 05 09 00  	mv	a0, s2
80002408: 93 05 0a 00  	mv	a1, s4
8000240c: 13 86 0c 00  	mv	a2, s9
80002410: 93 86 0a 00  	mv	a3, s5
80002414: 13 08 00 00  	mv	a6, zero
80002418: 93 08 0c 00  	mv	a7, s8
8000241c: 93 83 0b 00  	mv	t2, s7
80002420: 13 0e 0b 00  	mv	t3, s6
80002424: 93 0e 04 00  	mv	t4, s0
80002428: 97 10 00 00  	auipc	ra, 1
8000242c: e7 80 40 d9  	jalr	-620(ra)
80002430: 13 0c 05 00  	mv	s8, a0
80002434: 13 0b 50 02  	addi	s6, zero, 37
80002438: 93 0b e0 02  	addi	s7, zero, 46
8000243c: 13 04 1d 00  	addi	s0, s10, 1
80002440: 6f f0 cf d8  	j	0x800019cc <.LBB1_183+0x30>
80002444: 93 85 15 00  	addi	a1, a1, 1
80002448: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000244c: 63 00 05 04  	beqz	a0, 0x8000248c <.LBB1_124+0x358>
80002450: 13 84 17 00  	addi	s0, a5, 1
80002454: 6f 00 00 03  	j	0x80002484 <.LBB1_124+0x350>
80002458: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
8000245c: 13 8c 1c 00  	addi	s8, s9, 1
80002460: 13 75 f5 0f  	andi	a0, a0, 255
80002464: 93 05 0a 00  	mv	a1, s4
80002468: 13 86 0c 00  	mv	a2, s9
8000246c: 93 86 0a 00  	mv	a3, s5
80002470: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002474: 03 45 04 00  	lbu	a0, 0(s0)
80002478: 13 04 14 00  	addi	s0, s0, 1
8000247c: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002480: 63 08 05 00  	beqz	a0, 0x80002490 <.LBB1_124+0x35c>
80002484: e3 9c 04 fc  	bnez	s1, 0x8000245c <.LBB1_124+0x328>
80002488: e3 98 0b fc  	bnez	s7, 0x80002458 <.LBB1_124+0x324>
8000248c: 13 8c 0c 00  	mv	s8, s9
80002490: 03 25 c1 00  	lw	a0, 12(sp)
80002494: 13 35 15 00  	seqz	a0, a0
80002498: 03 26 41 01  	lw	a2, 20(sp)
8000249c: b3 35 66 01  	sltu	a1, a2, s6
800024a0: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800024a4: 33 65 b5 00  	or	a0, a0, a1
800024a8: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
800024ac: e3 14 05 f8  	bnez	a0, 0x80002434 <.LBB1_124+0x300>
;           while (l++ < width) {
800024b0: 33 04 cb 40  	sub	s0, s6, a2
800024b4: 93 0b e0 02  	addi	s7, zero, 46
800024b8: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800024bc: 13 0c 1c 00  	addi	s8, s8, 1
800024c0: 13 05 00 02  	addi	a0, zero, 32
800024c4: 93 05 0a 00  	mv	a1, s4
800024c8: 93 86 0a 00  	mv	a3, s5
800024cc: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800024d0: 13 04 f4 ff  	addi	s0, s0, -1
800024d4: e3 12 04 fe  	bnez	s0, 0x800024b8 <.LBB1_124+0x384>
800024d8: 13 0b 50 02  	addi	s6, zero, 37
800024dc: 13 04 1d 00  	addi	s0, s10, 1
800024e0: 6f f0 cf ce  	j	0x800019cc <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800024e4: 13 86 0c 00  	mv	a2, s9
800024e8: 63 e4 5c 01  	bltu	s9, s5, 0x800024f0 <.LBB1_124+0x3bc>
800024ec: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800024f0: 13 05 00 00  	mv	a0, zero
800024f4: 93 05 0a 00  	mv	a1, s4
800024f8: 93 86 0a 00  	mv	a3, s5
800024fc: e7 00 09 00  	jalr	s2
;   return (int)idx;
80002500: 13 85 0c 00  	mv	a0, s9
80002504: 83 2d c1 03  	lw	s11, 60(sp)
80002508: 03 2d 01 04  	lw	s10, 64(sp)
8000250c: 83 2c 41 04  	lw	s9, 68(sp)
80002510: 03 2c 81 04  	lw	s8, 72(sp)
80002514: 83 2b c1 04  	lw	s7, 76(sp)
80002518: 03 2b 01 05  	lw	s6, 80(sp)
8000251c: 83 2a 41 05  	lw	s5, 84(sp)
80002520: 03 2a 81 05  	lw	s4, 88(sp)
80002524: 83 29 c1 05  	lw	s3, 92(sp)
80002528: 03 29 01 06  	lw	s2, 96(sp)
8000252c: 83 24 41 06  	lw	s1, 100(sp)
80002530: 03 24 81 06  	lw	s0, 104(sp)
80002534: 83 20 c1 06  	lw	ra, 108(sp)
80002538: 13 01 01 07  	addi	sp, sp, 112
8000253c: 67 80 00 00  	ret

80002540 <_out_char.llvm.17592004524093383706>:
;   if (character) {
80002540: 63 04 05 0a  	beqz	a0, 0x800025e8 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002544: f3 25 40 f1  	csrr	a1, mhartid
80002548: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
8000254c: 33 86 c5 02  	mul	a2, a1, a2

80002550 <.LBB2_6>:
80002550: 97 26 00 00  	auipc	a3, 2
80002554: 93 86 46 a7  	addi	a3, a3, -1420
80002558: b3 05 d6 00  	add	a1, a2, a3
8000255c: 03 a7 05 00  	lw	a4, 0(a1)
80002560: 93 07 17 00  	addi	a5, a4, 1
80002564: 23 a0 f5 00  	sw	a5, 0(a1)
80002568: 33 87 e5 00  	add	a4, a1, a4
8000256c: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80002570: 03 a7 05 00  	lw	a4, 0(a1)
80002574: 13 07 47 c0  	addi	a4, a4, -1020
80002578: 33 37 e0 00  	snez	a4, a4
8000257c: 13 05 65 ff  	addi	a0, a0, -10
80002580: 33 35 a0 00  	snez	a0, a0
80002584: 33 75 e5 00  	and	a0, a0, a4
80002588: 63 10 05 06  	bnez	a0, 0x800025e8 <.LBB2_8+0x18>
8000258c: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80002590: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80002594: 23 26 05 00  	sw	zero, 12(a0)
80002598: 93 06 00 04  	addi	a3, zero, 64
8000259c: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
800025a0: 23 2a 05 00  	sw	zero, 20(a0)
800025a4: 93 06 10 00  	addi	a3, zero, 1
800025a8: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
800025ac: 23 2e 05 00  	sw	zero, 28(a0)
800025b0: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800025b4: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800025b8: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800025bc: 23 22 05 02  	sw	zero, 36(a0)
800025c0: 23 20 c5 02  	sw	a2, 32(a0)

800025c4 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
800025c4: 17 25 00 00  	auipc	a0, 2
800025c8: 13 05 c5 8b  	addi	a0, a0, -1860
800025cc: 23 20 d5 00  	sw	a3, 0(a0)

800025d0 <.LBB2_8>:
800025d0: 17 25 00 00  	auipc	a0, 2
800025d4: 13 05 05 8f  	addi	a0, a0, -1808
;         while (fromhost == 0)
800025d8: 03 26 05 00  	lw	a2, 0(a0)
800025dc: e3 0e 06 fe  	beqz	a2, 0x800025d8 <.LBB2_8+0x8>
;         fromhost = 0;
800025e0: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
800025e4: 23 a0 05 00  	sw	zero, 0(a1)
; }
800025e8: 67 80 00 00  	ret

800025ec <_out_null>:
; }
800025ec: 67 80 00 00  	ret

800025f0 <_ftoa>:
; {
800025f0: 13 01 01 f9  	addi	sp, sp, -112
800025f4: 23 26 11 06  	sw	ra, 108(sp)
800025f8: 23 24 81 06  	sw	s0, 104(sp)
800025fc: 23 22 91 06  	sw	s1, 100(sp)
80002600: 23 20 21 07  	sw	s2, 96(sp)
80002604: 23 2e 31 05  	sw	s3, 92(sp)
80002608: 23 2c 41 05  	sw	s4, 88(sp)
8000260c: 23 2a 51 05  	sw	s5, 84(sp)
80002610: 23 28 61 05  	sw	s6, 80(sp)
80002614: 23 26 71 05  	sw	s7, 76(sp)
80002618: 23 24 81 05  	sw	s8, 72(sp)
8000261c: 23 22 91 05  	sw	s9, 68(sp)
80002620: 23 20 a1 05  	sw	s10, 64(sp)
80002624: 27 3c 81 02  	fsd	fs0, 56(sp)
80002628: 27 38 91 02  	fsd	fs1, 48(sp)
8000262c: 27 34 21 03  	fsd	fs2, 40(sp)

80002630 <.LBB4_83>:
80002630: 97 24 00 00  	auipc	s1, 2
80002634: 93 84 84 8e  	addi	s1, s1, -1816
80002638: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
8000263c: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80002640: 93 0a 08 00  	mv	s5, a6
80002644: 13 89 07 00  	mv	s2, a5
80002648: 93 89 06 00  	mv	s3, a3
8000264c: 13 0a 06 00  	mv	s4, a2
80002650: 13 8b 05 00  	mv	s6, a1
80002654: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80002658: 63 98 04 0e  	bnez	s1, 0x80002748 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000265c: 13 f5 2a 00  	andi	a0, s5, 2
80002660: 93 f5 3a 00  	andi	a1, s5, 3
80002664: b3 35 b0 00  	snez	a1, a1
80002668: 13 36 59 00  	sltiu	a2, s2, 5
8000266c: b3 65 b6 00  	or	a1, a2, a1
80002670: 93 5c 15 00  	srli	s9, a0, 1
80002674: 13 04 0a 00  	mv	s0, s4
80002678: 63 96 05 02  	bnez	a1, 0x800026a4 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
8000267c: 93 04 c9 ff  	addi	s1, s2, -4
80002680: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002684: 13 04 16 00  	addi	s0, a2, 1
80002688: 13 05 00 02  	addi	a0, zero, 32
8000268c: 93 05 0b 00  	mv	a1, s6
80002690: 93 86 09 00  	mv	a3, s3
80002694: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002698: 93 84 f4 ff  	addi	s1, s1, -1
8000269c: 13 06 04 00  	mv	a2, s0
800026a0: e3 92 04 fe  	bnez	s1, 0x80002684 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
800026a4: 93 04 14 00  	addi	s1, s0, 1
800026a8: 13 05 d0 02  	addi	a0, zero, 45
800026ac: 93 05 0b 00  	mv	a1, s6
800026b0: 13 06 04 00  	mv	a2, s0
800026b4: 93 86 09 00  	mv	a3, s3
800026b8: e7 80 0b 00  	jalr	s7
800026bc: 93 0a 24 00  	addi	s5, s0, 2
800026c0: 13 05 90 06  	addi	a0, zero, 105
800026c4: 93 05 0b 00  	mv	a1, s6
800026c8: 13 86 04 00  	mv	a2, s1
800026cc: 93 86 09 00  	mv	a3, s3
800026d0: e7 80 0b 00  	jalr	s7
800026d4: 13 0c 34 00  	addi	s8, s0, 3
800026d8: 13 05 e0 06  	addi	a0, zero, 110
800026dc: 93 05 0b 00  	mv	a1, s6
800026e0: 13 86 0a 00  	mv	a2, s5
800026e4: 93 86 09 00  	mv	a3, s3
800026e8: e7 80 0b 00  	jalr	s7
800026ec: 93 04 44 00  	addi	s1, s0, 4
800026f0: 13 05 60 06  	addi	a0, zero, 102
800026f4: 93 05 0b 00  	mv	a1, s6
800026f8: 13 06 0c 00  	mv	a2, s8
800026fc: 93 86 09 00  	mv	a3, s3
80002700: e7 80 0b 00  	jalr	s7
80002704: 33 85 44 41  	sub	a0, s1, s4
80002708: 33 35 25 01  	sltu	a0, a0, s2
8000270c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002710: 93 c5 1c 00  	xori	a1, s9, 1
80002714: 33 e5 a5 00  	or	a0, a1, a0
80002718: 63 16 05 56  	bnez	a0, 0x80002c84 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000271c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002720: 13 84 14 00  	addi	s0, s1, 1
80002724: 13 05 00 02  	addi	a0, zero, 32
80002728: 93 05 0b 00  	mv	a1, s6
8000272c: 13 86 04 00  	mv	a2, s1
80002730: 93 86 09 00  	mv	a3, s3
80002734: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002738: 33 05 8a 00  	add	a0, s4, s0
8000273c: 93 04 04 00  	mv	s1, s0
80002740: e3 60 25 ff  	bltu	a0, s2, 0x80002720 <.LBB4_83+0xf0>
80002744: 6f 00 40 54  	j	0x80002c88 <.LBB4_90+0x378>
80002748: 53 04 a5 22  	fmv.d	fs0, fa0

8000274c <.LBB4_84>:
8000274c: 17 15 00 00  	auipc	a0, 1
80002750: 13 05 45 7d  	addi	a0, a0, 2004
80002754: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80002758: 53 05 05 a2  	fle.d	a0, fa0, ft0
8000275c: 63 1e 05 00  	bnez	a0, 0x80002778 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002760: 93 f5 4a 00  	andi	a1, s5, 4
80002764: 13 b5 15 00  	seqz	a0, a1
80002768: 63 82 05 06  	beqz	a1, 0x800027cc <.LBB4_88>

8000276c <.LBB4_85>:
8000276c: 17 1c 00 00  	auipc	s8, 1
80002770: 13 0c 4c 4b  	addi	s8, s8, 1204
80002774: 6f 00 00 06  	j	0x800027d4 <.LBB4_88+0x8>

80002778 <.LBB4_86>:
80002778: 17 15 00 00  	auipc	a0, 1
8000277c: 13 05 05 7b  	addi	a0, a0, 1968
80002780: 07 30 05 00  	fld	ft0, 0(a0)

80002784 <.LBB4_87>:
80002784: 17 15 00 00  	auipc	a0, 1
80002788: 13 05 c5 7a  	addi	a0, a0, 1964
8000278c: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80002790: 53 05 04 a2  	fle.d	a0, fs0, ft0
80002794: d3 85 80 a2  	fle.d	a1, ft1, fs0
80002798: 33 75 b5 00  	and	a0, a0, a1
8000279c: 63 1e 05 0e  	bnez	a0, 0x80002898 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
800027a0: 13 85 0b 00  	mv	a0, s7
800027a4: 93 05 0b 00  	mv	a1, s6
800027a8: 13 06 0a 00  	mv	a2, s4
800027ac: 93 86 09 00  	mv	a3, s3
800027b0: 53 05 84 22  	fmv.d	fa0, fs0
800027b4: 93 07 09 00  	mv	a5, s2
800027b8: 13 88 0a 00  	mv	a6, s5
800027bc: 97 00 00 00  	auipc	ra, 0
800027c0: e7 80 40 51  	jalr	1300(ra)
800027c4: 13 04 05 00  	mv	s0, a0
800027c8: 6f 00 00 4c  	j	0x80002c88 <.LBB4_90+0x378>

800027cc <.LBB4_88>:
800027cc: 17 1c 00 00  	auipc	s8, 1
800027d0: 13 0c 3c 47  	addi	s8, s8, 1139
800027d4: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800027d8: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800027dc: 13 f5 3a 00  	andi	a0, s5, 3
800027e0: 33 35 a0 00  	snez	a0, a0
800027e4: b3 b5 2c 01  	sltu	a1, s9, s2
800027e8: 93 c5 15 00  	xori	a1, a1, 1
800027ec: 33 65 b5 00  	or	a0, a0, a1
800027f0: 93 fa 2a 00  	andi	s5, s5, 2
800027f4: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800027f8: 63 16 05 02  	bnez	a0, 0x80002824 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800027fc: 33 04 99 41  	sub	s0, s2, s9
80002800: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002804: 93 04 16 00  	addi	s1, a2, 1
80002808: 13 05 00 02  	addi	a0, zero, 32
8000280c: 93 05 0b 00  	mv	a1, s6
80002810: 93 86 09 00  	mv	a3, s3
80002814: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002818: 13 04 f4 ff  	addi	s0, s0, -1
8000281c: 13 86 04 00  	mv	a2, s1
80002820: e3 12 04 fe  	bnez	s0, 0x80002804 <.LBB4_88+0x38>
80002824: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002828: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
8000282c: 33 05 9c 01  	add	a0, s8, s9
80002830: 03 45 05 00  	lbu	a0, 0(a0)
80002834: 13 86 04 00  	mv	a2, s1
80002838: 13 84 fc ff  	addi	s0, s9, -1
8000283c: 93 84 14 00  	addi	s1, s1, 1
80002840: 93 05 0b 00  	mv	a1, s6
80002844: 93 86 09 00  	mv	a3, s3
80002848: e7 80 0b 00  	jalr	s7
8000284c: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80002850: e3 1e 04 fc  	bnez	s0, 0x8000282c <.LBB4_88+0x60>
80002854: 33 85 44 41  	sub	a0, s1, s4
80002858: 33 35 25 01  	sltu	a0, a0, s2
8000285c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002860: 93 c5 1a 00  	xori	a1, s5, 1
80002864: 33 e5 a5 00  	or	a0, a1, a0
80002868: 63 1e 05 40  	bnez	a0, 0x80002c84 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000286c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002870: 13 84 14 00  	addi	s0, s1, 1
80002874: 13 05 00 02  	addi	a0, zero, 32
80002878: 93 05 0b 00  	mv	a1, s6
8000287c: 13 86 04 00  	mv	a2, s1
80002880: 93 86 09 00  	mv	a3, s3
80002884: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002888: 33 05 8a 00  	add	a0, s4, s0
8000288c: 93 04 04 00  	mv	s1, s0
80002890: e3 60 25 ff  	bltu	a0, s2, 0x80002870 <.LBB4_88+0xa4>
80002894: 6f 00 40 3f  	j	0x80002c88 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80002898: 13 f5 0a 40  	andi	a0, s5, 1024
8000289c: 13 0c 60 00  	addi	s8, zero, 6
800028a0: 63 04 05 00  	beqz	a0, 0x800028a8 <.LBB4_88+0xdc>
800028a4: 13 0c 07 00  	mv	s8, a4
800028a8: 13 05 a0 00  	addi	a0, zero, 10
800028ac: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800028b0: 63 6c ac 02  	bltu	s8, a0, 0x800028e8 <.LBB4_88+0x11c>
800028b4: 93 04 6c ff  	addi	s1, s8, -10
800028b8: 13 05 f0 01  	addi	a0, zero, 31
800028bc: 63 e4 a4 00  	bltu	s1, a0, 0x800028c4 <.LBB4_88+0xf8>
800028c0: 93 04 f0 01  	addi	s1, zero, 31
800028c4: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
800028c8: 13 05 81 00  	addi	a0, sp, 8
800028cc: 93 05 00 03  	addi	a1, zero, 48
800028d0: 13 06 04 00  	mv	a2, s0
800028d4: 97 e0 ff ff  	auipc	ra, 1048574
800028d8: e7 80 40 c8  	jalr	-892(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800028dc: 13 c5 f4 ff  	not	a0, s1
800028e0: 33 0c ac 00  	add	s8, s8, a0
800028e4: 6f 00 80 00  	j	0x800028ec <.LBB4_88+0x120>
800028e8: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
800028ec: 13 15 3c 00  	slli	a0, s8, 3

800028f0 <.LBB4_89>:
800028f0: 97 15 00 00  	auipc	a1, 1
800028f4: 93 85 05 51  	addi	a1, a1, 1296
800028f8: 33 05 b5 00  	add	a0, a0, a1
800028fc: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002900: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80002904: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002908: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
8000290c: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002910 <.LBB4_90>:
80002910: 17 15 00 00  	auipc	a0, 1
80002914: 13 05 85 62  	addi	a0, a0, 1576
80002918: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
8000291c: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80002920: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80002924: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002928: d3 05 01 a2  	fle.d	a1, ft2, ft0
8000292c: 63 90 05 02  	bnez	a1, 0x8000294c <.LBB4_90+0x3c>
;     ++frac;
80002930: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80002934: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80002938: d3 15 11 a2  	flt.d	a1, ft2, ft1
8000293c: 63 94 05 02  	bnez	a1, 0x80002964 <.LBB4_90+0x54>
80002940: 13 05 00 00  	mv	a0, zero
;       ++whole;
80002944: 93 84 14 00  	addi	s1, s1, 1
80002948: 6f 00 c0 01  	j	0x80002964 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
8000294c: d3 15 01 a2  	flt.d	a1, ft2, ft0
80002950: 63 9a 05 00  	bnez	a1, 0x80002964 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80002954: 93 35 15 00  	seqz	a1, a0
80002958: 13 76 15 00  	andi	a2, a0, 1
8000295c: b3 65 b6 00  	or	a1, a2, a1
80002960: 33 85 a5 00  	add	a0, a1, a0
80002964: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80002968: 63 0c 0c 0c  	beqz	s8, 0x80002a40 <.LBB4_90+0x130>
8000296c: 13 06 00 00  	mv	a2, zero
80002970: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002974: 33 83 85 00  	add	t1, a1, s0
80002978: 93 02 00 02  	addi	t0, zero, 32
8000297c: 33 87 82 40  	sub	a4, t0, s0
80002980: b7 d5 cc cc  	lui	a1, 838861
80002984: 93 83 d5 cc  	addi	t2, a1, -819
80002988: 13 08 a0 00  	addi	a6, zero, 10
8000298c: 93 08 90 00  	addi	a7, zero, 9
80002990: 63 04 c7 0c  	beq	a4, a2, 0x80002a58 <.LBB4_90+0x148>
80002994: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80002998: 33 35 75 02  	mulhu	a0, a0, t2
8000299c: 13 55 35 00  	srli	a0, a0, 3
800029a0: b3 06 05 03  	mul	a3, a0, a6
800029a4: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
800029a8: 93 e6 06 03  	ori	a3, a3, 48
800029ac: b3 07 c3 00  	add	a5, t1, a2
800029b0: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
800029b4: 13 06 16 00  	addi	a2, a2, 1
800029b8: e3 ec b8 fc  	bltu	a7, a1, 0x80002990 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800029bc: 33 05 c4 00  	add	a0, s0, a2
800029c0: 93 05 f5 ff  	addi	a1, a0, -1
800029c4: 93 06 e0 01  	addi	a3, zero, 30
800029c8: b3 b6 b6 00  	sltu	a3, a3, a1
800029cc: 33 47 cc 00  	xor	a4, s8, a2
800029d0: 13 37 17 00  	seqz	a4, a4
800029d4: b3 e6 e6 00  	or	a3, a3, a4
800029d8: 63 94 06 08  	bnez	a3, 0x80002a60 <.LBB4_90+0x150>
800029dc: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800029e0: 33 05 85 00  	add	a0, a0, s0
800029e4: 93 45 f6 ff  	not	a1, a2
800029e8: 33 8c 85 01  	add	s8, a1, s8
800029ec: 33 04 c4 00  	add	s0, s0, a2
800029f0: 93 05 f0 01  	addi	a1, zero, 31
800029f4: b3 86 85 40  	sub	a3, a1, s0
800029f8: 33 05 c5 00  	add	a0, a0, a2
800029fc: 93 05 0c 00  	mv	a1, s8
80002a00: 63 64 dc 00  	bltu	s8, a3, 0x80002a08 <.LBB4_90+0xf8>
80002a04: 93 85 06 00  	mv	a1, a3
80002a08: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002a0c: 93 05 00 03  	addi	a1, zero, 48
80002a10: 97 e0 ff ff  	auipc	ra, 1048574
80002a14: e7 80 80 b4  	jalr	-1208(ra)
80002a18: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002a1c: b3 05 a4 00  	add	a1, s0, a0
80002a20: 93 b5 f5 01  	sltiu	a1, a1, 31
80002a24: 33 46 ac 00  	xor	a2, s8, a0
80002a28: 33 36 c0 00  	snez	a2, a2
80002a2c: 33 f6 c5 00  	and	a2, a1, a2
80002a30: 13 05 15 00  	addi	a0, a0, 1
80002a34: e3 14 06 fe  	bnez	a2, 0x80002a1c <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002a38: 33 05 a4 00  	add	a0, s0, a0
80002a3c: 6f 00 80 02  	j	0x80002a64 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80002a40: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002a44: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002a48: 53 05 10 a2  	fle.d	a0, ft0, ft1
80002a4c: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002a50: b3 84 a4 00  	add	s1, s1, a0
80002a54: 6f 00 c0 03  	j	0x80002a90 <.LBB4_90+0x180>
80002a58: 13 04 00 02  	addi	s0, zero, 32
80002a5c: 6f 00 80 03  	j	0x80002a94 <.LBB4_90+0x184>
80002a60: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002a64: 63 8e 05 00  	beqz	a1, 0x80002a80 <.LBB4_90+0x170>
;       buf[len++] = '.';
80002a68: 13 04 15 00  	addi	s0, a0, 1
80002a6c: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80002a70: 33 85 a5 00  	add	a0, a1, a0
80002a74: 93 05 e0 02  	addi	a1, zero, 46
80002a78: 23 00 b5 00  	sb	a1, 0(a0)
80002a7c: 6f 00 80 00  	j	0x80002a84 <.LBB4_90+0x174>
80002a80: 13 04 05 00  	mv	s0, a0
80002a84: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002a88: 93 02 04 00  	mv	t0, s0
80002a8c: 63 64 85 00  	bltu	a0, s0, 0x80002a94 <.LBB4_90+0x184>
80002a90: 93 02 00 02  	addi	t0, zero, 32
80002a94: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002a98: 37 65 66 66  	lui	a0, 419430
80002a9c: 93 05 75 66  	addi	a1, a0, 1639
80002aa0: 13 08 a0 00  	addi	a6, zero, 10
80002aa4: 93 06 81 00  	addi	a3, sp, 8
80002aa8: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002aac: 63 80 82 04  	beq	t0, s0, 0x80002aec <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002ab0: 33 95 b4 02  	mulh	a0, s1, a1
80002ab4: 93 57 f5 01  	srli	a5, a0, 31
80002ab8: 13 55 25 40  	srai	a0, a0, 2
80002abc: 33 05 f5 00  	add	a0, a0, a5
80002ac0: b3 07 05 03  	mul	a5, a0, a6
80002ac4: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002ac8: 93 87 07 03  	addi	a5, a5, 48
80002acc: 13 0c 14 00  	addi	s8, s0, 1
80002ad0: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002ad4: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002ad8: 23 00 f4 00  	sb	a5, 0(s0)
80002adc: 13 04 0c 00  	mv	s0, s8
80002ae0: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002ae4: e3 64 c7 fc  	bltu	a4, a2, 0x80002aac <.LBB4_90+0x19c>
80002ae8: 6f 00 80 00  	j	0x80002af0 <.LBB4_90+0x1e0>
80002aec: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002af0: 93 f4 3a 00  	andi	s1, s5, 3
80002af4: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002af8: 63 96 a4 06  	bne	s1, a0, 0x80002b64 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002afc: 63 0c 09 00  	beqz	s2, 0x80002b14 <.LBB4_90+0x204>
80002b00: 13 f5 ca 00  	andi	a0, s5, 12
80002b04: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002b08: 33 e5 ac 00  	or	a0, s9, a0
80002b0c: 33 09 a9 40  	sub	s2, s2, a0
80002b10: 6f 00 80 00  	j	0x80002b18 <.LBB4_90+0x208>
80002b14: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002b18: 33 35 2c 01  	sltu	a0, s8, s2
80002b1c: 93 45 15 00  	xori	a1, a0, 1
80002b20: 13 05 f0 01  	addi	a0, zero, 31
80002b24: 33 36 85 01  	sltu	a2, a0, s8
80002b28: b3 65 b6 00  	or	a1, a2, a1
80002b2c: 63 9c 05 02  	bnez	a1, 0x80002b64 <.LBB4_90+0x254>
80002b30: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002b34: 93 45 fc ff  	not	a1, s8
80002b38: b3 05 b9 00  	add	a1, s2, a1
80002b3c: 33 06 85 41  	sub	a2, a0, s8
80002b40: 33 85 86 01  	add	a0, a3, s8
80002b44: 63 e4 c5 00  	bltu	a1, a2, 0x80002b4c <.LBB4_90+0x23c>
80002b48: 93 05 06 00  	mv	a1, a2
80002b4c: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002b50: 93 05 00 03  	addi	a1, zero, 48
80002b54: 13 06 04 00  	mv	a2, s0
80002b58: 97 e0 ff ff  	auipc	ra, 1048574
80002b5c: e7 80 00 a0  	jalr	-1536(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002b60: 33 0c 84 01  	add	s8, s0, s8
80002b64: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002b68: 63 6a 85 05  	bltu	a0, s8, 0x80002bbc <.LBB4_90+0x2ac>
;     if (negative) {
80002b6c: 63 8c 0c 00  	beqz	s9, 0x80002b84 <.LBB4_90+0x274>
80002b70: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002b74: 33 05 85 01  	add	a0, a0, s8
80002b78: 13 0c 1c 00  	addi	s8, s8, 1
80002b7c: 93 05 d0 02  	addi	a1, zero, 45
80002b80: 6f 00 80 03  	j	0x80002bb8 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002b84: 13 f5 4a 00  	andi	a0, s5, 4
80002b88: 63 10 05 02  	bnez	a0, 0x80002ba8 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002b8c: 13 f5 8a 00  	andi	a0, s5, 8
80002b90: 63 06 05 02  	beqz	a0, 0x80002bbc <.LBB4_90+0x2ac>
80002b94: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002b98: 33 05 85 01  	add	a0, a0, s8
80002b9c: 13 0c 1c 00  	addi	s8, s8, 1
80002ba0: 93 05 00 02  	addi	a1, zero, 32
80002ba4: 6f 00 40 01  	j	0x80002bb8 <.LBB4_90+0x2a8>
80002ba8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002bac: 33 05 85 01  	add	a0, a0, s8
80002bb0: 13 0c 1c 00  	addi	s8, s8, 1
80002bb4: 93 05 b0 02  	addi	a1, zero, 43
80002bb8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002bbc: 33 35 90 00  	snez	a0, s1
80002bc0: b3 35 2c 01  	sltu	a1, s8, s2
80002bc4: 93 c5 15 00  	xori	a1, a1, 1
80002bc8: 33 65 b5 00  	or	a0, a0, a1
80002bcc: 93 fa 2a 00  	andi	s5, s5, 2
80002bd0: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002bd4: 63 16 05 02  	bnez	a0, 0x80002c00 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002bd8: b3 04 89 41  	sub	s1, s2, s8
80002bdc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002be0: 13 04 16 00  	addi	s0, a2, 1
80002be4: 13 05 00 02  	addi	a0, zero, 32
80002be8: 93 05 0b 00  	mv	a1, s6
80002bec: 93 86 09 00  	mv	a3, s3
80002bf0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002bf4: 93 84 f4 ff  	addi	s1, s1, -1
80002bf8: 13 06 04 00  	mv	a2, s0
80002bfc: e3 92 04 fe  	bnez	s1, 0x80002be0 <.LBB4_90+0x2d0>
80002c00: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002c04: 63 0c 0c 02  	beqz	s8, 0x80002c3c <.LBB4_90+0x32c>
80002c08: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002c0c: 33 85 8c 01  	add	a0, s9, s8
80002c10: 03 45 05 00  	lbu	a0, 0(a0)
80002c14: 13 0d fc ff  	addi	s10, s8, -1
80002c18: 93 04 14 00  	addi	s1, s0, 1
80002c1c: 93 05 0b 00  	mv	a1, s6
80002c20: 13 06 04 00  	mv	a2, s0
80002c24: 93 86 09 00  	mv	a3, s3
80002c28: e7 80 0b 00  	jalr	s7
80002c2c: 13 84 04 00  	mv	s0, s1
80002c30: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002c34: e3 1c 0d fc  	bnez	s10, 0x80002c0c <.LBB4_90+0x2fc>
80002c38: 6f 00 80 00  	j	0x80002c40 <.LBB4_90+0x330>
80002c3c: 93 04 04 00  	mv	s1, s0
80002c40: 33 85 44 41  	sub	a0, s1, s4
80002c44: 33 35 25 01  	sltu	a0, a0, s2
80002c48: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002c4c: 93 c5 1a 00  	xori	a1, s5, 1
80002c50: 33 e5 a5 00  	or	a0, a1, a0
80002c54: 63 18 05 02  	bnez	a0, 0x80002c84 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002c58: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002c5c: 13 84 14 00  	addi	s0, s1, 1
80002c60: 13 05 00 02  	addi	a0, zero, 32
80002c64: 93 05 0b 00  	mv	a1, s6
80002c68: 13 86 04 00  	mv	a2, s1
80002c6c: 93 86 09 00  	mv	a3, s3
80002c70: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002c74: 33 05 8a 00  	add	a0, s4, s0
80002c78: 93 04 04 00  	mv	s1, s0
80002c7c: e3 60 25 ff  	bltu	a0, s2, 0x80002c5c <.LBB4_90+0x34c>
80002c80: 6f 00 80 00  	j	0x80002c88 <.LBB4_90+0x378>
80002c84: 13 84 04 00  	mv	s0, s1
; }
80002c88: 13 05 04 00  	mv	a0, s0
80002c8c: 07 39 81 02  	fld	fs2, 40(sp)
80002c90: 87 34 01 03  	fld	fs1, 48(sp)
80002c94: 07 34 81 03  	fld	fs0, 56(sp)
80002c98: 03 2d 01 04  	lw	s10, 64(sp)
80002c9c: 83 2c 41 04  	lw	s9, 68(sp)
80002ca0: 03 2c 81 04  	lw	s8, 72(sp)
80002ca4: 83 2b c1 04  	lw	s7, 76(sp)
80002ca8: 03 2b 01 05  	lw	s6, 80(sp)
80002cac: 83 2a 41 05  	lw	s5, 84(sp)
80002cb0: 03 2a 81 05  	lw	s4, 88(sp)
80002cb4: 83 29 c1 05  	lw	s3, 92(sp)
80002cb8: 03 29 01 06  	lw	s2, 96(sp)
80002cbc: 83 24 41 06  	lw	s1, 100(sp)
80002cc0: 03 24 81 06  	lw	s0, 104(sp)
80002cc4: 83 20 c1 06  	lw	ra, 108(sp)
80002cc8: 13 01 01 07  	addi	sp, sp, 112
80002ccc: 67 80 00 00  	ret

80002cd0 <_etoa>:
; {
80002cd0: 13 01 01 f8  	addi	sp, sp, -128
80002cd4: 23 2e 11 06  	sw	ra, 124(sp)
80002cd8: 23 2c 81 06  	sw	s0, 120(sp)
80002cdc: 23 2a 91 06  	sw	s1, 116(sp)
80002ce0: 23 28 21 07  	sw	s2, 112(sp)
80002ce4: 23 26 31 07  	sw	s3, 108(sp)
80002ce8: 23 24 41 07  	sw	s4, 104(sp)
80002cec: 23 22 51 07  	sw	s5, 100(sp)
80002cf0: 23 20 61 07  	sw	s6, 96(sp)
80002cf4: 23 2e 71 05  	sw	s7, 92(sp)
80002cf8: 23 2c 81 05  	sw	s8, 88(sp)
80002cfc: 23 2a 91 05  	sw	s9, 84(sp)
80002d00: 23 28 a1 05  	sw	s10, 80(sp)
80002d04: 23 26 b1 05  	sw	s11, 76(sp)

80002d08 <.LBB5_43>:
80002d08: 97 14 00 00  	auipc	s1, 1
80002d0c: 93 84 84 23  	addi	s1, s1, 568
80002d10: 87 b0 04 00  	fld	ft1, 0(s1)

80002d14 <.LBB5_44>:
80002d14: 97 14 00 00  	auipc	s1, 1
80002d18: 93 84 44 23  	addi	s1, s1, 564
80002d1c: 07 b1 04 00  	fld	ft2, 0(s1)
80002d20: 53 00 a5 22  	fmv.d	ft0, fa0
80002d24: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002d28: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002d2c: b3 f4 84 00  	and	s1, s1, s0
80002d30: 93 0a 08 00  	mv	s5, a6
80002d34: 13 89 07 00  	mv	s2, a5
80002d38: 93 07 07 00  	mv	a5, a4
80002d3c: 93 89 06 00  	mv	s3, a3
80002d40: 13 0a 06 00  	mv	s4, a2
80002d44: 13 8b 05 00  	mv	s6, a1
80002d48: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002d4c: 63 92 04 06  	bnez	s1, 0x80002db0 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002d50: 13 85 0b 00  	mv	a0, s7
80002d54: 93 05 0b 00  	mv	a1, s6
80002d58: 13 06 0a 00  	mv	a2, s4
80002d5c: 93 86 09 00  	mv	a3, s3
80002d60: 53 05 00 22  	fmv.d	fa0, ft0
80002d64: 13 87 07 00  	mv	a4, a5
80002d68: 93 07 09 00  	mv	a5, s2
80002d6c: 13 88 0a 00  	mv	a6, s5
80002d70: 83 2d c1 04  	lw	s11, 76(sp)
80002d74: 03 2d 01 05  	lw	s10, 80(sp)
80002d78: 83 2c 41 05  	lw	s9, 84(sp)
80002d7c: 03 2c 81 05  	lw	s8, 88(sp)
80002d80: 83 2b c1 05  	lw	s7, 92(sp)
80002d84: 03 2b 01 06  	lw	s6, 96(sp)
80002d88: 83 2a 41 06  	lw	s5, 100(sp)
80002d8c: 03 2a 81 06  	lw	s4, 104(sp)
80002d90: 83 29 c1 06  	lw	s3, 108(sp)
80002d94: 03 29 01 07  	lw	s2, 112(sp)
80002d98: 83 24 41 07  	lw	s1, 116(sp)
80002d9c: 03 24 81 07  	lw	s0, 120(sp)
80002da0: 83 20 c1 07  	lw	ra, 124(sp)
80002da4: 13 01 01 08  	addi	sp, sp, 128
80002da8: 17 03 00 00  	auipc	t1, 0
80002dac: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002db0: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002db4: 13 f5 0a 40  	andi	a0, s5, 1024
80002db8: 13 07 60 00  	addi	a4, zero, 6
80002dbc: 63 04 05 00  	beqz	a0, 0x80002dc4 <.LBB5_44+0xb0>
80002dc0: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002dc4: 27 30 a1 02  	fsd	fa0, 32(sp)
80002dc8: 83 25 41 02  	lw	a1, 36(sp)
80002dcc: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002dd0: 93 d6 45 01  	srli	a3, a1, 20
80002dd4: b7 07 10 00  	lui	a5, 256
80002dd8: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002ddc: b3 f5 f5 00  	and	a1, a1, a5
80002de0: 23 2c c1 00  	sw	a2, 24(sp)
80002de4: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002de8: b3 e5 c5 00  	or	a1, a1, a2
80002dec: 23 2e b1 00  	sw	a1, 28(sp)
80002df0: 87 30 81 01  	fld	ft1, 24(sp)

80002df4 <.LBB5_45>:
80002df4: 97 15 00 00  	auipc	a1, 1
80002df8: 93 85 c5 15  	addi	a1, a1, 348
80002dfc: 07 b1 05 00  	fld	ft2, 0(a1)

80002e00 <.LBB5_46>:
80002e00: 97 15 00 00  	auipc	a1, 1
80002e04: 93 85 85 15  	addi	a1, a1, 344
80002e08: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002e0c: 93 f5 f6 7f  	andi	a1, a3, 2047
80002e10: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002e14: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002e18: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80002e1c <.LBB5_47>:
80002e1c: 97 15 00 00  	auipc	a1, 1
80002e20: 93 85 45 14  	addi	a1, a1, 324
80002e24: 07 b1 05 00  	fld	ft2, 0(a1)

80002e28 <.LBB5_48>:
80002e28: 97 15 00 00  	auipc	a1, 1
80002e2c: 93 85 05 14  	addi	a1, a1, 320
80002e30: 87 b1 05 00  	fld	ft3, 0(a1)

80002e34 <.LBB5_49>:
80002e34: 97 15 00 00  	auipc	a1, 1
80002e38: 93 85 c5 13  	addi	a1, a1, 316
80002e3c: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002e40: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002e44: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002e48: d3 80 05 d2  	fcvt.d.w	ft1, a1
80002e4c: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002e50 <.LBB5_50>:
80002e50: 17 16 00 00  	auipc	a2, 1
80002e54: 13 06 86 12  	addi	a2, a2, 296
80002e58: 87 31 06 00  	fld	ft3, 0(a2)

80002e5c <.LBB5_51>:
80002e5c: 17 16 00 00  	auipc	a2, 1
80002e60: 13 06 46 12  	addi	a2, a2, 292
80002e64: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002e68: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80002e6c: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002e70: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002e74: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002e78: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002e7c: 13 06 f6 3f  	addi	a2, a2, 1023
80002e80: 23 28 01 00  	sw	zero, 16(sp)
80002e84: 13 16 46 01  	slli	a2, a2, 20
80002e88: 23 2a c1 00  	sw	a2, 20(sp)

80002e8c <.LBB5_52>:
80002e8c: 17 16 00 00  	auipc	a2, 1
80002e90: 13 06 46 10  	addi	a2, a2, 260
80002e94: 87 31 06 00  	fld	ft3, 0(a2)

80002e98 <.LBB5_53>:
80002e98: 17 16 00 00  	auipc	a2, 1
80002e9c: 13 06 06 10  	addi	a2, a2, 256
80002ea0: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002ea4: 87 32 01 01  	fld	ft5, 16(sp)

80002ea8 <.LBB5_54>:
80002ea8: 17 16 00 00  	auipc	a2, 1
80002eac: 13 06 06 0e  	addi	a2, a2, 224
80002eb0: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002eb4: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002eb8 <.LBB5_55>:
80002eb8: 17 16 00 00  	auipc	a2, 1
80002ebc: 13 06 86 0e  	addi	a2, a2, 232
80002ec0: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002ec4: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002ec8: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80002ecc: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002ed0: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002ed4: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002ed8: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002edc: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002ee0: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002ee4: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002ee8: 63 0a 06 00  	beqz	a2, 0x80002efc <.LBB5_56+0x10>

80002eec <.LBB5_56>:
80002eec: 97 16 00 00  	auipc	a3, 1
80002ef0: 93 86 c6 0b  	addi	a3, a3, 188
80002ef4: 07 b1 06 00  	fld	ft2, 0(a3)
80002ef8: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80002efc: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002f00: 93 05 34 06  	addi	a1, s0, 99
80002f04: 93 b5 75 0c  	sltiu	a1, a1, 199
80002f08: 13 06 50 00  	addi	a2, zero, 5
80002f0c: b7 16 00 00  	lui	a3, 1
80002f10: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002f14: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002f18: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80002f1c: 63 84 06 06  	beqz	a3, 0x80002f84 <.LBB5_58+0x58>

80002f20 <.LBB5_57>:
80002f20: 97 15 00 00  	auipc	a1, 1
80002f24: 93 85 05 09  	addi	a1, a1, 144
80002f28: 07 b1 05 00  	fld	ft2, 0(a1)

80002f2c <.LBB5_58>:
80002f2c: 97 15 00 00  	auipc	a1, 1
80002f30: 93 85 c5 08  	addi	a1, a1, 140
80002f34: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80002f38: d3 15 25 a2  	flt.d	a1, fa0, ft2
80002f3c: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80002f40: b3 e5 c5 00  	or	a1, a1, a2
80002f44: 63 98 05 00  	bnez	a1, 0x80002f54 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002f48: 63 40 e4 02  	blt	s0, a4, 0x80002f68 <.LBB5_58+0x3c>
80002f4c: 13 07 00 00  	mv	a4, zero
80002f50: 6f 00 00 02  	j	0x80002f70 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002f54: 63 06 07 02  	beqz	a4, 0x80002f80 <.LBB5_58+0x54>
80002f58: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002f5c: 13 45 15 00  	xori	a0, a0, 1
80002f60: 33 07 a7 40  	sub	a4, a4, a0
80002f64: 6f 00 00 02  	j	0x80002f84 <.LBB5_58+0x58>
80002f68: 13 45 f4 ff  	not	a0, s0
80002f6c: 33 07 a7 00  	add	a4, a4, a0
80002f70: 13 04 00 00  	mv	s0, zero
80002f74: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80002f78: 93 ea 0a 40  	ori	s5, s5, 1024
80002f7c: 6f 00 80 00  	j	0x80002f84 <.LBB5_58+0x58>
80002f80: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002f84: b3 05 99 41  	sub	a1, s2, s9
80002f88: 33 36 b9 00  	sltu	a2, s2, a1
80002f8c: 13 05 00 00  	mv	a0, zero
80002f90: 63 14 06 00  	bnez	a2, 0x80002f98 <.LBB5_58+0x6c>
80002f94: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002f98: 93 07 00 00  	mv	a5, zero
80002f9c: 93 d5 1a 00  	srli	a1, s5, 1
80002fa0: 93 f4 15 00  	andi	s1, a1, 1
80002fa4: b3 35 90 01  	snez	a1, s9
80002fa8: b3 f5 b4 00  	and	a1, s1, a1
80002fac: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002fb0: 63 94 05 00  	bnez	a1, 0x80002fb8 <.LBB5_58+0x8c>
80002fb4: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002fb8: 93 35 14 00  	seqz	a1, s0
80002fbc: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002fc0: 63 94 05 00  	bnez	a1, 0x80002fc8 <.LBB5_58+0x9c>
80002fc4: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002fc8: 63 04 05 00  	beqz	a0, 0x80002fd0 <.LBB5_58+0xa4>
80002fcc: 53 15 a5 22  	fneg.d	fa0, fa0
80002fd0: 37 f5 ff ff  	lui	a0, 1048575
80002fd4: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002fd8: 33 f8 aa 00  	and	a6, s5, a0
80002fdc: 13 85 0b 00  	mv	a0, s7
80002fe0: 93 05 0b 00  	mv	a1, s6
80002fe4: 13 06 0a 00  	mv	a2, s4
80002fe8: 93 86 09 00  	mv	a3, s3
80002fec: 97 f0 ff ff  	auipc	ra, 1048575
80002ff0: e7 80 40 60  	jalr	1540(ra)
80002ff4: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80002ff8: 63 82 0c 18  	beqz	s9, 0x8000317c <.LBB5_58+0x250>
80002ffc: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80003000: 13 f5 0a 02  	andi	a0, s5, 32
80003004: 13 45 55 06  	xori	a0, a0, 101
80003008: 93 05 0b 00  	mv	a1, s6
8000300c: 13 06 0d 00  	mv	a2, s10
80003010: 93 86 09 00  	mv	a3, s3
80003014: e7 80 0b 00  	jalr	s7
80003018: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
8000301c: 93 5a f4 01  	srli	s5, s0, 31
80003020: 13 55 f4 41  	srai	a0, s0, 31
80003024: b3 05 a4 00  	add	a1, s0, a0
80003028: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
8000302c: 93 8d dc ff  	addi	s11, s9, -3
80003030: 13 04 f0 01  	addi	s0, zero, 31
80003034: 37 d5 cc cc  	lui	a0, 838861
80003038: 13 05 d5 cc  	addi	a0, a0, -819
8000303c: 13 08 a0 00  	addi	a6, zero, 10
80003040: 93 08 c1 02  	addi	a7, sp, 44
80003044: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80003048: b3 37 a7 02  	mulhu	a5, a4, a0
8000304c: 93 d5 37 00  	srli	a1, a5, 3
80003050: b3 87 05 03  	mul	a5, a1, a6
80003054: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003058: 13 e6 07 03  	ori	a2, a5, 48
8000305c: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003060: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003064: 13 0c 1c 00  	addi	s8, s8, 1
80003068: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000306c: 33 b6 e2 00  	sltu	a2, t0, a4
80003070: 33 f6 c7 00  	and	a2, a5, a2
80003074: 93 8d fd ff  	addi	s11, s11, -1
80003078: 13 04 f4 ff  	addi	s0, s0, -1
8000307c: 13 87 05 00  	mv	a4, a1
80003080: e3 14 06 fc  	bnez	a2, 0x80003048 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003084: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003088: 33 35 ac 00  	sltu	a0, s8, a0
8000308c: 13 45 15 00  	xori	a0, a0, 1
80003090: 93 c5 17 00  	xori	a1, a5, 1
80003094: 33 e5 a5 00  	or	a0, a1, a0
80003098: 63 12 05 04  	bnez	a0, 0x800030dc <.LBB5_58+0x1b0>
8000309c: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800030a0: b3 85 8c 41  	sub	a1, s9, s8
800030a4: 93 85 d5 ff  	addi	a1, a1, -3
800030a8: 13 06 f0 01  	addi	a2, zero, 31
800030ac: 33 06 86 41  	sub	a2, a2, s8
800030b0: 33 05 85 01  	add	a0, a0, s8
800030b4: 63 e4 c5 00  	bltu	a1, a2, 0x800030bc <.LBB5_58+0x190>
800030b8: 93 05 06 00  	mv	a1, a2
800030bc: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800030c0: 93 05 00 03  	addi	a1, zero, 48
800030c4: 97 d0 ff ff  	auipc	ra, 1048573
800030c8: e7 80 40 49  	jalr	1172(ra)
;   if (flags & FLAGS_HASH) {
800030cc: 63 e4 8d 00  	bltu	s11, s0, 0x800030d4 <.LBB5_58+0x1a8>
800030d0: 93 0d 04 00  	mv	s11, s0
800030d4: 33 85 8d 01  	add	a0, s11, s8
800030d8: 13 0c 15 00  	addi	s8, a0, 1
800030dc: 83 2c c1 00  	lw	s9, 12(sp)
800030e0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800030e4: 63 60 85 03  	bltu	a0, s8, 0x80003104 <.LBB5_58+0x1d8>
800030e8: 13 05 c1 02  	addi	a0, sp, 44
800030ec: 33 05 85 01  	add	a0, a0, s8
800030f0: 93 05 d0 02  	addi	a1, zero, 45
800030f4: 63 94 0a 00  	bnez	s5, 0x800030fc <.LBB5_58+0x1d0>
800030f8: 93 05 b0 02  	addi	a1, zero, 43
800030fc: 13 0c 1c 00  	addi	s8, s8, 1
80003100: 23 00 b5 00  	sb	a1, 0(a0)
80003104: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80003108: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
8000310c: 33 85 8a 01  	add	a0, s5, s8
80003110: 03 45 05 00  	lbu	a0, 0(a0)
80003114: 13 06 04 00  	mv	a2, s0
80003118: 93 04 fc ff  	addi	s1, s8, -1
8000311c: 13 04 14 00  	addi	s0, s0, 1
80003120: 93 05 0b 00  	mv	a1, s6
80003124: 93 86 09 00  	mv	a3, s3
80003128: e7 80 0b 00  	jalr	s7
8000312c: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80003130: e3 9e 04 fc  	bnez	s1, 0x8000310c <.LBB5_58+0x1e0>
80003134: 33 05 44 41  	sub	a0, s0, s4
80003138: 33 35 25 01  	sltu	a0, a0, s2
8000313c: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80003140: 93 c5 1c 00  	xori	a1, s9, 1
80003144: 33 e5 a5 00  	or	a0, a1, a0
80003148: 63 18 05 02  	bnez	a0, 0x80003178 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
8000314c: b3 04 40 41  	neg	s1, s4
80003150: 13 0d 14 00  	addi	s10, s0, 1
80003154: 13 05 00 02  	addi	a0, zero, 32
80003158: 93 05 0b 00  	mv	a1, s6
8000315c: 13 06 04 00  	mv	a2, s0
80003160: 93 86 09 00  	mv	a3, s3
80003164: e7 80 0b 00  	jalr	s7
80003168: 33 85 a4 01  	add	a0, s1, s10
8000316c: 13 04 0d 00  	mv	s0, s10
80003170: e3 60 25 ff  	bltu	a0, s2, 0x80003150 <.LBB5_58+0x224>
80003174: 6f 00 80 00  	j	0x8000317c <.LBB5_58+0x250>
80003178: 13 0d 04 00  	mv	s10, s0
; }
8000317c: 13 05 0d 00  	mv	a0, s10
80003180: 83 2d c1 04  	lw	s11, 76(sp)
80003184: 03 2d 01 05  	lw	s10, 80(sp)
80003188: 83 2c 41 05  	lw	s9, 84(sp)
8000318c: 03 2c 81 05  	lw	s8, 88(sp)
80003190: 83 2b c1 05  	lw	s7, 92(sp)
80003194: 03 2b 01 06  	lw	s6, 96(sp)
80003198: 83 2a 41 06  	lw	s5, 100(sp)
8000319c: 03 2a 81 06  	lw	s4, 104(sp)
800031a0: 83 29 c1 06  	lw	s3, 108(sp)
800031a4: 03 29 01 07  	lw	s2, 112(sp)
800031a8: 83 24 41 07  	lw	s1, 116(sp)
800031ac: 03 24 81 07  	lw	s0, 120(sp)
800031b0: 83 20 c1 07  	lw	ra, 124(sp)
800031b4: 13 01 01 08  	addi	sp, sp, 128
800031b8: 67 80 00 00  	ret

800031bc <_ntoa_format>:
; {
800031bc: 13 01 01 fc  	addi	sp, sp, -64
800031c0: 23 2e 11 02  	sw	ra, 60(sp)
800031c4: 23 2c 81 02  	sw	s0, 56(sp)
800031c8: 23 2a 91 02  	sw	s1, 52(sp)
800031cc: 23 28 21 03  	sw	s2, 48(sp)
800031d0: 23 26 31 03  	sw	s3, 44(sp)
800031d4: 23 24 41 03  	sw	s4, 40(sp)
800031d8: 23 22 51 03  	sw	s5, 36(sp)
800031dc: 23 20 61 03  	sw	s6, 32(sp)
800031e0: 23 2e 71 01  	sw	s7, 28(sp)
800031e4: 23 2c 81 01  	sw	s8, 24(sp)
800031e8: 23 2a 91 01  	sw	s9, 20(sp)
800031ec: 23 28 a1 01  	sw	s10, 16(sp)
800031f0: 23 26 b1 01  	sw	s11, 12(sp)
800031f4: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800031f8: 93 fa 2e 00  	andi	s5, t4, 2
800031fc: 13 09 0e 00  	mv	s2, t3
80003200: 13 8d 03 00  	mv	s10, t2
80003204: 93 8c 08 00  	mv	s9, a7
80003208: 13 8c 07 00  	mv	s8, a5
8000320c: 93 89 06 00  	mv	s3, a3
80003210: 13 0a 06 00  	mv	s4, a2
80003214: 13 8b 05 00  	mv	s6, a1
80003218: 93 0d 05 00  	mv	s11, a0
8000321c: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80003220: 63 9e 0a 0c  	bnez	s5, 0x800032fc <_ntoa_format+0x140>
80003224: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003228: 63 0e 09 00  	beqz	s2, 0x80003244 <_ntoa_format+0x88>
8000322c: 63 0e 04 00  	beqz	s0, 0x80003248 <_ntoa_format+0x8c>
80003230: 13 f5 cb 00  	andi	a0, s7, 12
80003234: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003238: 33 65 05 01  	or	a0, a0, a6
8000323c: 33 09 a9 40  	sub	s2, s2, a0
80003240: 6f 00 80 00  	j	0x80003248 <_ntoa_format+0x8c>
80003244: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003248: 33 35 ac 01  	sltu	a0, s8, s10
8000324c: 93 45 15 00  	xori	a1, a0, 1
80003250: 13 05 f0 01  	addi	a0, zero, 31
80003254: 33 36 85 01  	sltu	a2, a0, s8
80003258: b3 65 b6 00  	or	a1, a2, a1
8000325c: 63 94 05 04  	bnez	a1, 0x800032a4 <_ntoa_format+0xe8>
80003260: 23 22 51 01  	sw	s5, 4(sp)
80003264: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003268: 93 45 fc ff  	not	a1, s8
8000326c: b3 85 a5 01  	add	a1, a1, s10
80003270: 33 06 85 41  	sub	a2, a0, s8
80003274: 33 05 87 01  	add	a0, a4, s8
80003278: 63 e4 c5 00  	bltu	a1, a2, 0x80003280 <_ntoa_format+0xc4>
8000327c: 93 05 06 00  	mv	a1, a2
80003280: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80003284: 93 05 00 03  	addi	a1, zero, 48
80003288: 13 86 04 00  	mv	a2, s1
8000328c: 97 d0 ff ff  	auipc	ra, 1048573
80003290: e7 80 c0 2c  	jalr	716(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003294: 33 8c 84 01  	add	s8, s1, s8
80003298: 03 27 81 00  	lw	a4, 8(sp)
8000329c: 13 88 0a 00  	mv	a6, s5
800032a0: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800032a4: 63 0c 04 04  	beqz	s0, 0x800032fc <_ntoa_format+0x140>
800032a8: 33 35 2c 01  	sltu	a0, s8, s2
800032ac: 93 45 15 00  	xori	a1, a0, 1
800032b0: 13 05 f0 01  	addi	a0, zero, 31
800032b4: 33 36 85 01  	sltu	a2, a0, s8
800032b8: b3 e5 c5 00  	or	a1, a1, a2
800032bc: 63 90 05 04  	bnez	a1, 0x800032fc <_ntoa_format+0x140>
800032c0: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800032c4: 93 45 fc ff  	not	a1, s8
800032c8: b3 05 b9 00  	add	a1, s2, a1
800032cc: 33 06 85 41  	sub	a2, a0, s8
800032d0: 33 05 87 01  	add	a0, a4, s8
800032d4: 63 e4 c5 00  	bltu	a1, a2, 0x800032dc <_ntoa_format+0x120>
800032d8: 93 05 06 00  	mv	a1, a2
800032dc: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800032e0: 93 05 00 03  	addi	a1, zero, 48
800032e4: 13 86 04 00  	mv	a2, s1
800032e8: 97 d0 ff ff  	auipc	ra, 1048573
800032ec: e7 80 00 27  	jalr	624(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800032f0: 33 8c 84 01  	add	s8, s1, s8
800032f4: 03 27 81 00  	lw	a4, 8(sp)
800032f8: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800032fc: 13 f5 0b 01  	andi	a0, s7, 16
80003300: 63 02 05 0e  	beqz	a0, 0x800033e4 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80003304: 13 f5 0b 40  	andi	a0, s7, 1024
80003308: 13 55 a5 00  	srli	a0, a0, 10
8000330c: 93 35 1c 00  	seqz	a1, s8
80003310: 33 65 b5 00  	or	a0, a0, a1
80003314: 63 1e 05 02  	bnez	a0, 0x80003350 <_ntoa_format+0x194>
80003318: 33 45 ac 01  	xor	a0, s8, s10
8000331c: 33 35 a0 00  	snez	a0, a0
80003320: b3 45 2c 01  	xor	a1, s8, s2
80003324: b3 35 b0 00  	snez	a1, a1
80003328: 33 75 b5 00  	and	a0, a0, a1
8000332c: 63 12 05 02  	bnez	a0, 0x80003350 <_ntoa_format+0x194>
;       len--;
80003330: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80003334: b3 35 a0 00  	snez	a1, a0
80003338: 13 86 0c ff  	addi	a2, s9, -16
8000333c: 13 36 16 00  	seqz	a2, a2
80003340: b3 75 b6 00  	and	a1, a2, a1
80003344: 63 84 05 00  	beqz	a1, 0x8000334c <_ntoa_format+0x190>
80003348: 13 05 ec ff  	addi	a0, s8, -2
8000334c: 13 0c 05 00  	mv	s8, a0
80003350: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003354: 63 96 ac 02  	bne	s9, a0, 0x80003380 <_ntoa_format+0x1c4>
80003358: 13 f5 0b 02  	andi	a0, s7, 32
8000335c: 93 55 55 00  	srli	a1, a0, 5
80003360: 13 06 f0 01  	addi	a2, zero, 31
80003364: 33 36 86 01  	sltu	a2, a2, s8
80003368: b3 e5 c5 00  	or	a1, a1, a2
8000336c: 63 9e 05 02  	bnez	a1, 0x800033a8 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80003370: 33 05 87 01  	add	a0, a4, s8
80003374: 13 0c 1c 00  	addi	s8, s8, 1
80003378: 93 05 80 07  	addi	a1, zero, 120
8000337c: 6f 00 c0 04  	j	0x800033c8 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003380: 13 85 ec ff  	addi	a0, s9, -2
80003384: 33 35 a0 00  	snez	a0, a0
80003388: 93 05 f0 01  	addi	a1, zero, 31
8000338c: b3 b5 85 01  	sltu	a1, a1, s8
80003390: 33 65 b5 00  	or	a0, a0, a1
80003394: 63 1c 05 02  	bnez	a0, 0x800033cc <_ntoa_format+0x210>
;       buf[len++] = 'b';
80003398: 33 05 87 01  	add	a0, a4, s8
8000339c: 13 0c 1c 00  	addi	s8, s8, 1
800033a0: 93 05 20 06  	addi	a1, zero, 98
800033a4: 6f 00 40 02  	j	0x800033c8 <_ntoa_format+0x20c>
800033a8: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800033ac: 13 35 15 00  	seqz	a0, a0
800033b0: 93 c5 15 00  	xori	a1, a1, 1
800033b4: 33 65 b5 00  	or	a0, a0, a1
800033b8: 63 1a 05 00  	bnez	a0, 0x800033cc <_ntoa_format+0x210>
;       buf[len++] = 'X';
800033bc: 33 05 87 01  	add	a0, a4, s8
800033c0: 13 0c 1c 00  	addi	s8, s8, 1
800033c4: 93 05 80 05  	addi	a1, zero, 88
800033c8: 23 00 b5 00  	sb	a1, 0(a0)
800033cc: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
800033d0: 63 60 85 07  	bltu	a0, s8, 0x80003430 <_ntoa_format+0x274>
;       buf[len++] = '0';
800033d4: 33 05 87 01  	add	a0, a4, s8
800033d8: 13 0c 1c 00  	addi	s8, s8, 1
800033dc: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
800033e0: 23 00 b5 00  	sb	a1, 0(a0)
800033e4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800033e8: 63 64 85 05  	bltu	a0, s8, 0x80003430 <_ntoa_format+0x274>
;     if (negative) {
800033ec: 63 0a 08 00  	beqz	a6, 0x80003400 <_ntoa_format+0x244>
;       buf[len++] = '-';
800033f0: 33 05 87 01  	add	a0, a4, s8
800033f4: 13 0c 1c 00  	addi	s8, s8, 1
800033f8: 93 05 d0 02  	addi	a1, zero, 45
800033fc: 6f 00 00 03  	j	0x8000342c <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80003400: 13 f5 4b 00  	andi	a0, s7, 4
80003404: 63 1e 05 00  	bnez	a0, 0x80003420 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80003408: 13 f5 8b 00  	andi	a0, s7, 8
8000340c: 63 02 05 02  	beqz	a0, 0x80003430 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80003410: 33 05 87 01  	add	a0, a4, s8
80003414: 13 0c 1c 00  	addi	s8, s8, 1
80003418: 93 05 00 02  	addi	a1, zero, 32
8000341c: 6f 00 00 01  	j	0x8000342c <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80003420: 33 05 87 01  	add	a0, a4, s8
80003424: 13 0c 1c 00  	addi	s8, s8, 1
80003428: 93 05 b0 02  	addi	a1, zero, 43
8000342c: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003430: 13 f5 3b 00  	andi	a0, s7, 3
80003434: 33 35 a0 00  	snez	a0, a0
80003438: b3 35 2c 01  	sltu	a1, s8, s2
8000343c: 93 c5 15 00  	xori	a1, a1, 1
80003440: 33 65 b5 00  	or	a0, a0, a1
80003444: 13 04 0a 00  	mv	s0, s4
80003448: 63 16 05 02  	bnez	a0, 0x80003474 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
8000344c: b3 04 89 41  	sub	s1, s2, s8
80003450: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003454: 13 04 16 00  	addi	s0, a2, 1
80003458: 13 05 00 02  	addi	a0, zero, 32
8000345c: 93 05 0b 00  	mv	a1, s6
80003460: 93 86 09 00  	mv	a3, s3
80003464: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80003468: 93 84 f4 ff  	addi	s1, s1, -1
8000346c: 13 06 04 00  	mv	a2, s0
80003470: e3 92 04 fe  	bnez	s1, 0x80003454 <_ntoa_format+0x298>
80003474: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80003478: 63 0e 0c 02  	beqz	s8, 0x800034b4 <_ntoa_format+0x2f8>
8000347c: 03 25 81 00  	lw	a0, 8(sp)
80003480: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003484: 33 85 8b 01  	add	a0, s7, s8
80003488: 03 45 05 00  	lbu	a0, 0(a0)
8000348c: 93 0c fc ff  	addi	s9, s8, -1
80003490: 93 04 14 00  	addi	s1, s0, 1
80003494: 93 05 0b 00  	mv	a1, s6
80003498: 13 06 04 00  	mv	a2, s0
8000349c: 93 86 09 00  	mv	a3, s3
800034a0: e7 80 0d 00  	jalr	s11
800034a4: 13 84 04 00  	mv	s0, s1
800034a8: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800034ac: e3 9c 0c fc  	bnez	s9, 0x80003484 <_ntoa_format+0x2c8>
800034b0: 6f 00 80 00  	j	0x800034b8 <_ntoa_format+0x2fc>
800034b4: 93 04 04 00  	mv	s1, s0
800034b8: 33 85 44 41  	sub	a0, s1, s4
800034bc: 33 35 25 01  	sltu	a0, a0, s2
800034c0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800034c4: 93 c5 1a 00  	xori	a1, s5, 1
800034c8: 33 e5 a5 00  	or	a0, a1, a0
800034cc: 63 18 05 02  	bnez	a0, 0x800034fc <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
800034d0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800034d4: 13 84 14 00  	addi	s0, s1, 1
800034d8: 13 05 00 02  	addi	a0, zero, 32
800034dc: 93 05 0b 00  	mv	a1, s6
800034e0: 13 86 04 00  	mv	a2, s1
800034e4: 93 86 09 00  	mv	a3, s3
800034e8: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800034ec: 33 05 8a 00  	add	a0, s4, s0
800034f0: 93 04 04 00  	mv	s1, s0
800034f4: e3 60 25 ff  	bltu	a0, s2, 0x800034d4 <_ntoa_format+0x318>
800034f8: 6f 00 80 00  	j	0x80003500 <_ntoa_format+0x344>
800034fc: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80003500: 13 05 04 00  	mv	a0, s0
80003504: 83 2d c1 00  	lw	s11, 12(sp)
80003508: 03 2d 01 01  	lw	s10, 16(sp)
8000350c: 83 2c 41 01  	lw	s9, 20(sp)
80003510: 03 2c 81 01  	lw	s8, 24(sp)
80003514: 83 2b c1 01  	lw	s7, 28(sp)
80003518: 03 2b 01 02  	lw	s6, 32(sp)
8000351c: 83 2a 41 02  	lw	s5, 36(sp)
80003520: 03 2a 81 02  	lw	s4, 40(sp)
80003524: 83 29 c1 02  	lw	s3, 44(sp)
80003528: 03 29 01 03  	lw	s2, 48(sp)
8000352c: 83 24 41 03  	lw	s1, 52(sp)
80003530: 03 24 81 03  	lw	s0, 56(sp)
80003534: 83 20 c1 03  	lw	ra, 60(sp)
80003538: 13 01 01 04  	addi	sp, sp, 64
8000353c: 67 80 00 00  	ret

80003540 <_snrt_init_team>:
;     team->base.root = team;
80003540: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80003544: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80003548: 03 23 87 00  	lw	t1, 8(a4)
8000354c: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80003550: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80003554: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80003558: 83 22 47 00  	lw	t0, 4(a4)
8000355c: 33 88 08 03  	mul	a6, a7, a6
80003560: 33 05 58 02  	mul	a0, a6, t0
80003564: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003568: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
8000356c: 33 85 68 40  	sub	a0, a7, t1
80003570: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80003574: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80003578: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
8000357c: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80003580: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80003584: 03 25 87 01  	lw	a0, 24(a4)
80003588: b7 05 00 10  	lui	a1, 65536
8000358c: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80003590: 23 a2 07 02  	sw	zero, 36(a5)
80003594: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80003598: 03 25 07 02  	lw	a0, 32(a4)
8000359c: 83 25 47 02  	lw	a1, 36(a4)
800035a0: 23 a4 a7 02  	sw	a0, 40(a5)
800035a4: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800035a8: 23 a8 c7 02  	sw	a2, 48(a5)
800035ac: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800035b0: 23 ac d7 02  	sw	a3, 56(a5)
800035b4: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800035b8: 03 25 07 01  	lw	a0, 16(a4)
800035bc: 33 08 a6 00  	add	a6, a2, a0
800035c0: 93 05 08 19  	addi	a1, a6, 400
800035c4: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
800035c8: b3 32 a8 00  	sltu	t0, a6, a0
800035cc: 93 55 15 00  	srli	a1, a0, 1
800035d0: 33 03 b8 00  	add	t1, a6, a1
800035d4: b3 35 03 01  	sltu	a1, t1, a6
800035d8: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800035dc: 23 a0 67 04  	sw	t1, 64(a5)
800035e0: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800035e4: 13 15 15 00  	slli	a0, a0, 1
800035e8: b3 05 c5 00  	add	a1, a0, a2
800035ec: 33 b5 a5 00  	sltu	a0, a1, a0
800035f0: 23 a4 b7 04  	sw	a1, 72(a5)
800035f4: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800035f8: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800035fc: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80003600: 37 05 00 00  	lui	a0, 0
80003604: 33 05 45 00  	add	a0, a0, tp
80003608: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000360c: 03 a5 07 00  	lw	a0, 0(a5)
80003610: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80003614: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003618: b3 85 b8 40  	sub	a1, a7, a1
8000361c: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80003620: b7 05 00 00  	lui	a1, 0
80003624: b3 85 45 00  	add	a1, a1, tp
80003628: 23 a2 a5 00  	sw	a0, 4(a1)
8000362c: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80003630: 33 85 a8 02  	mul	a0, a7, a0

80003634 <.LBB0_1>:
80003634: 97 15 00 00  	auipc	a1, 1
80003638: 93 85 05 99  	addi	a1, a1, -1648
8000363c: 33 05 b5 00  	add	a0, a0, a1
80003640: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80003644: 83 28 07 03  	lw	a7, 48(a4)
80003648: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
8000364c: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80003650: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80003654: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80003658: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
8000365c: 13 05 76 00  	addi	a0, a2, 7
80003660: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80003664: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80003668: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
8000366c: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80003670: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80003674: 03 a5 05 00  	lw	a0, 0(a1)
80003678: 13 05 f5 44  	addi	a0, a0, 1103
8000367c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80003680: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80003684: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80003688: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
8000368c: 37 05 00 00  	lui	a0, 0
80003690: 33 05 45 00  	add	a0, a0, tp
80003694: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80003698: 37 05 00 00  	lui	a0, 0
8000369c: 33 05 45 00  	add	a0, a0, tp
800036a0: 23 26 e5 00  	sw	a4, 12(a0)
; }
800036a4: 67 80 00 00  	ret

800036a8 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800036a8: 37 05 00 00  	lui	a0, 0
800036ac: 33 05 45 00  	add	a0, a0, tp
800036b0: 03 25 05 00  	lw	a0, 0(a0)
800036b4: 03 25 05 00  	lw	a0, 0(a0)
800036b8: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800036bc: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800036c0: 33 85 a5 40  	sub	a0, a1, a0
800036c4: 67 80 00 00  	ret

800036c8 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
800036c8: 37 05 00 00  	lui	a0, 0
800036cc: 33 05 45 00  	add	a0, a0, tp
800036d0: 03 25 05 00  	lw	a0, 0(a0)
800036d4: 03 25 05 00  	lw	a0, 0(a0)
800036d8: 03 25 05 07  	lw	a0, 112(a0)
800036dc: 67 80 00 00  	ret

800036e0 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800036e0: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800036e4: 63 44 05 00  	bltz	a0, 0x800036ec <__snrt_isr+0xc>
;         while (1)
800036e8: 6f 00 00 00  	j	0x800036e8 <__snrt_isr+0x8>
800036ec: b7 05 00 80  	lui	a1, 524288
800036f0: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800036f4: 33 75 b5 00  	and	a0, a0, a1
800036f8: 13 05 d5 ff  	addi	a0, a0, -3
800036fc: 93 55 25 00  	srli	a1, a0, 2
80003700: 13 15 e5 01  	slli	a0, a0, 30
80003704: 33 65 b5 00  	or	a0, a0, a1
80003708: 93 05 40 00  	addi	a1, zero, 4
8000370c: 63 0a b5 06  	beq	a0, a1, 0x80003780 <.LBB1_7+0x58>
80003710: 63 1a 05 08  	bnez	a0, 0x800037a4 <.LBB1_7+0x7c>
80003714: 37 05 00 00  	lui	a0, 0
80003718: 33 05 45 00  	add	a0, a0, tp
8000371c: 03 25 05 00  	lw	a0, 0(a0)
80003720: 03 25 05 00  	lw	a0, 0(a0)
80003724: f3 25 40 f1  	csrr	a1, mhartid

80003728 <.LBB1_7>:
;     asm volatile(
80003728: 17 16 00 00  	auipc	a2, 1
8000372c: 13 06 86 89  	addi	a2, a2, -1896
80003730: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80003734: 93 06 06 00  	mv	a3, a2
80003738: 93 02 10 00  	addi	t0, zero, 1
8000373c: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80003740: e3 9e 02 fe  	bnez	t0, 0x8000373c <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80003744: b7 06 00 00  	lui	a3, 0
80003748: b3 86 46 00  	add	a3, a3, tp
8000374c: 83 a6 86 00  	lw	a3, 8(a3)
80003750: 33 85 a5 40  	sub	a0, a1, a0
80003754: 93 55 35 00  	srli	a1, a0, 3
80003758: 93 f5 c5 ff  	andi	a1, a1, -4
8000375c: b3 85 b6 00  	add	a1, a3, a1
80003760: 83 a6 05 00  	lw	a3, 0(a1)
80003764: 13 07 10 00  	addi	a4, zero, 1
80003768: 33 15 a7 00  	sll	a0, a4, a0
8000376c: 13 45 f5 ff  	not	a0, a0
80003770: 33 f5 a6 00  	and	a0, a3, a0
80003774: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80003778: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
8000377c: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80003780: 37 05 00 00  	lui	a0, 0
80003784: 33 05 45 00  	add	a0, a0, tp
80003788: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000378c: b7 05 00 00  	lui	a1, 0
80003790: b3 85 45 00  	add	a1, a1, tp
80003794: 83 a5 c5 00  	lw	a1, 12(a1)
80003798: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
8000379c: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800037a0: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800037a4: 67 80 00 00  	ret

Disassembly of section .init:

800037b0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800037b0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800037b4: 93 81 81 f1  	addi	gp, gp, -232

800037b8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800037b8: 97 00 00 00  	auipc	ra, 0
800037bc: e7 80 40 3c  	jalr	964(ra)

800037c0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
800037c0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
800037c4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
800037c8: 97 00 00 00  	auipc	ra, 0
800037cc: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800037d0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800037d4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800037d8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800037dc: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800037e0: 63 92 02 02  	bnez	t0, 0x80003804 <snrt.crt0.init_registers>

800037e4 <.Lpcrel_hi0>:
;     la        t0, _edata
800037e4: 97 02 00 00  	auipc	t0, 0
800037e8: 93 82 c2 7d  	addi	t0, t0, 2012

800037ec <.Lpcrel_hi1>:
;     la        t1, _end
800037ec: 17 03 00 00  	auipc	t1, 0
800037f0: 13 03 83 7d  	addi	t1, t1, 2008
;     bge       t0, t1, 2f
800037f4: 63 d8 62 00  	bge	t0, t1, 0x80003804 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
800037f8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
800037fc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80003800: e3 cc 62 fe  	blt	t0, t1, 0x800037f8 <.Lpcrel_hi1+0xc>

80003804 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80003804: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80003808: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000380c: 63 82 02 08  	beqz	t0, 0x80003890 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80003810: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80003814: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80003818: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000381c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80003820: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80003824: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80003828: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000382c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80003830: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80003834: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80003838: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000383c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80003840: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80003844: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80003848: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000384c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80003850: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80003854: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80003858: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000385c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80003860: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80003864: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80003868: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000386c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80003870: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80003874: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80003878: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000387c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80003880: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80003884: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80003888: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000388c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80003890 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80003890: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80003894: 23 a0 06 00  	sw	zero, 0(a3)

80003898 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80003898: 97 02 00 00  	auipc	t0, 0
8000389c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
800038a0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800038a4: 93 87 06 00  	mv	a5, a3

800038a8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800038a8: 97 03 00 00  	auipc	t2, 0
800038ac: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
800038b0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
800038b4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
800038b8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
800038bc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
800038c0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
800038c4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
800038c8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
800038cc: b3 86 66 40  	sub	a3, a3, t1

800038d0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800038d0: 97 02 00 00  	auipc	t0, 0
800038d4: 93 82 82 5f  	addi	t0, t0, 1528

800038d8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800038d8: 17 03 00 00  	auipc	t1, 0
800038dc: 13 03 03 5f  	addi	t1, t1, 1520

800038e0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800038e0: 97 03 00 00  	auipc	t2, 0
800038e4: 93 83 83 5e  	addi	t2, t2, 1512

800038e8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800038e8: 17 0e 00 00  	auipc	t3, 0
800038ec: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
800038f0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
800038f4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
800038f8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
800038fc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003900: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003904: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003908: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000390c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003910: 63 dc 62 00  	bge	t0, t1, 0x80003928 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003914: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003918: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000391c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003920: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80003924: e3 c8 62 fe  	blt	t0, t1, 0x80003914 <.Lpcrel_hi7+0x2c>

80003928 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80003928: 97 02 00 00  	auipc	t0, 0
8000392c: 93 82 02 5a  	addi	t0, t0, 1440

80003930 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80003930: 17 03 00 00  	auipc	t1, 0
80003934: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80003938: 63 da 62 00  	bge	t0, t1, 0x8000394c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000393c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80003940: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003944: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80003948: e3 ca 72 fe  	blt	t0, t2, 0x8000393c <.Lpcrel_hi9+0xc>

8000394c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000394c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80003950: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80003954: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80003958: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000395c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80003960: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80003964: 97 00 00 00  	auipc	ra, 0
80003968: e7 80 c0 bd  	jalr	-1060(ra)
;     lw        a0, 0(sp)
8000396c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80003970: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80003974: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80003978: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000397c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80003980: 13 01 41 01  	addi	sp, sp, 20

80003984 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80003984: 97 02 00 00  	auipc	t0, 0
80003988: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000398c: 73 90 52 30  	csrw	mtvec, t0

80003990 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80003990: 97 00 00 00  	auipc	ra, 0
80003994: e7 80 00 22  	jalr	544(ra)

80003998 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80003998: 97 d0 ff ff  	auipc	ra, 1048573
8000399c: e7 80 c0 c9  	jalr	-868(ra)
;     mv        s0, a0 # store return value in s0
800039a0: 13 04 05 00  	mv	s0, a0

800039a4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800039a4: 97 00 00 00  	auipc	ra, 0
800039a8: e7 80 c0 20  	jalr	524(ra)

800039ac <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800039ac: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
800039b0: 97 00 00 00  	auipc	ra, 0
800039b4: e7 80 c0 22  	jalr	556(ra)
;     wfi
800039b8: 73 00 50 10  	wfi	
;     j       1b
800039bc: 6f f0 df ff  	j	0x800039b8 <snrt.crt0.end+0xc>

800039c0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
800039c0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
800039c4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
800039c8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
800039cc: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800039d0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800039d4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800039d8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800039dc: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800039e0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800039e4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800039e8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800039ec: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800039f0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800039f4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800039f8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800039fc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003a00: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003a04: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003a08: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003a0c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003a10: 63 84 02 08  	beqz	t0, 0x80003a98 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003a14: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003a18: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80003a1c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003a20: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003a24: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003a28: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80003a2c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003a30: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003a34: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003a38: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80003a3c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80003a40: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80003a44: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80003a48: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80003a4c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80003a50: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80003a54: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80003a58: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80003a5c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80003a60: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80003a64: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80003a68: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80003a6c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80003a70: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80003a74: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80003a78: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80003a7c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003a80: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003a84: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003a88: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80003a8c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003a90: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003a94: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003a98: 97 00 00 00  	auipc	ra, 0
80003a9c: e7 80 80 c4  	jalr	-952(ra)
;     csrr    t0, misa
80003aa0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003aa4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003aa8: 63 84 02 08  	beqz	t0, 0x80003b30 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80003aac: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003ab0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003ab4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003ab8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80003abc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003ac0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003ac4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003ac8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80003acc: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003ad0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003ad4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003ad8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80003adc: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003ae0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003ae4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003ae8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80003aec: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003af0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003af4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003af8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80003afc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003b00: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003b04: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003b08: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80003b0c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003b10: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003b14: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003b18: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80003b1c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003b20: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003b24: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003b28: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80003b2c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003b30: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003b34: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003b38: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80003b3c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003b40: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003b44: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003b48: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80003b4c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003b50: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003b54: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003b58: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80003b5c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003b60: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003b64: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003b68: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80003b6c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003b70: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003b74: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003b78: 73 00 20 30  	mret	

80003b7c <_snrt_init_core_info>:
;     mv        a4, a1
80003b7c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003b80: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003b84: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003b88: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80003b8c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003b90: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003b94: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003b98: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80003b9c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003ba0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003ba4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003ba8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80003bac: 67 80 00 00  	ret

80003bb0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003bb0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003bb4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003bb8: 97 00 00 00  	auipc	ra, 0
80003bbc: e7 80 00 b1  	jalr	-1264(ra)
;     lw        a0, 0(a0)
80003bc0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003bc4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003bc8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80003bcc: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003bd0: 67 80 00 00  	ret

80003bd4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003bd4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003bd8: 67 80 00 00  	ret

80003bdc <_snrt_exit>:
;     addi      sp, sp, -8
80003bdc: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003be0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003be4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003be8: 97 00 00 00  	auipc	ra, 0
80003bec: e7 80 00 ac  	jalr	-1344(ra)
;     lw        t0, 0(sp)
80003bf0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003bf4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003bf8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80003bfc: 63 1c 05 00  	bnez	a0, 0x80003c14 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003c00: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003c04: 93 e2 12 00  	ori	t0, t0, 1

80003c08 <.Lpcrel_hi11>:
;     la        t1, tohost
80003c08: 17 03 00 00  	auipc	t1, 0
80003c0c: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80003c10: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003c14: 67 80 00 00  	ret
