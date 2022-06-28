
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET-IS_RESTRICTED-3mm-ssrfriendly-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00004e54 80000000 TEXT
  2 .init             00000468 80004e60 TEXT
  3 .rodata           00000238 800052c8 DATA
  4 .htif             00000048 80005500 DATA
  5 .tdata            00000000 80005548 DATA
  6 .tbss             00000010 80005548 BSS
  7 .tbssend          00000000 80005558 DATA
  8 .sdata            000000e8 80005558 DATA
  9 .data             00000000 80005640 DATA
 10 .sbss             00000004 80005640 BSS
 11 .bss              00000000 80005644 BSS
 12 .dram             00000000 80005644 DATA
 13 .debug_info       0000384e 00000000 
 14 .debug_abbrev     00000c09 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003606 00000000 
 17 .debug_loc        00004063 00000000 
 18 .debug_ranges     00000478 00000000 
 19 .debug_str        00000b0f 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c8 00000000 
 23 .symtab           000034d0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000095b 00000000 


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
800006b0: 6f 20 d0 07  	j	0x80002f2c <.LBB0_102+0x10>
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
800006e4: 13 07 00 00  	mv	a4, zero
800006e8: 6f 00 00 01  	j	0x800006f8 <main+0xc4>
;     void *ret = (void *)alloc->next;
800006ec: 13 87 07 00  	mv	a4, a5
;     alloc->next += size;
800006f0: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f4: 93 87 06 00  	mv	a5, a3
800006f8: b3 06 f6 00  	add	a3, a2, a5
800006fc: 93 86 06 10  	addi	a3, a3, 256
80000700: 63 f6 d5 00  	bgeu	a1, a3, 0x8000070c <main+0xd8>
80000704: 13 04 00 00  	mv	s0, zero
80000708: 6f 00 00 01  	j	0x80000718 <main+0xe4>
;     void *ret = (void *)alloc->next;
8000070c: 13 84 07 00  	mv	s0, a5
;     alloc->next += size;
80000710: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000714: 93 87 06 00  	mv	a5, a3
80000718: b3 06 f6 00  	add	a3, a2, a5
8000071c: 93 86 06 24  	addi	a3, a3, 576
80000720: 63 f6 d5 00  	bgeu	a1, a3, 0x8000072c <main+0xf8>
80000724: 93 0c 00 00  	mv	s9, zero
80000728: 6f 00 00 01  	j	0x80000738 <main+0x104>
;     void *ret = (void *)alloc->next;
8000072c: 93 8c 07 00  	mv	s9, a5
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
80000784: 13 0c 00 00  	mv	s8, zero
80000788: 6f 00 00 01  	j	0x80000798 <main+0x164>
;     void *ret = (void *)alloc->next;
8000078c: 13 8c 07 00  	mv	s8, a5
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
800007b0: 23 26 f1 02  	sw	a5, 44(sp)
;   for (i = 0; i < ni; i++)
800007b4: 13 55 44 01  	srli	a0, s0, 20
800007b8: 33 35 a0 00  	snez	a0, a0
800007bc: b7 f5 11 00  	lui	a1, 287
800007c0: 93 85 95 60  	addi	a1, a1, 1545
800007c4: b3 35 b4 00  	sltu	a1, s0, a1
800007c8: 33 75 b5 00  	and	a0, a0, a1

800007cc <.LBB0_93>:
800007cc: 97 55 00 00  	auipc	a1, 5
800007d0: 93 85 c5 d8  	addi	a1, a1, -628
800007d4: 23 2a a1 00  	sw	a0, 20(sp)
800007d8: 23 24 e1 02  	sw	a4, 40(sp)
800007dc: 23 22 91 02  	sw	s1, 36(sp)
800007e0: 23 2e 81 00  	sw	s0, 28(sp)
800007e4: 13 08 00 00  	mv	a6, zero
800007e8: 63 04 05 22  	beqz	a0, 0x80000a10 <.LBB0_93+0x244>
800007ec: 93 02 00 00  	mv	t0, zero
800007f0: 13 03 00 00  	mv	t1, zero
800007f4: 93 03 00 00  	mv	t2, zero
800007f8: 13 0e 00 00  	mv	t3, zero
800007fc: 93 0e 00 00  	mv	t4, zero
80000800: 13 0f 00 00  	mv	t5, zero
80000804: 93 0f 00 00  	mv	t6, zero
80000808: 13 05 80 00  	addi	a0, zero, 8
8000080c: 13 06 30 01  	addi	a2, zero, 19
;   for (i = 0; i < ni; i++)
80000810: 93 06 00 04  	addi	a3, zero, 64
80000814: 13 07 00 0c  	addi	a4, zero, 192
80000818: ab 20 d6 00  	scfgw	a2, a3
8000081c: ab 20 e5 00  	scfgw	a0, a4
80000820: 13 06 f0 00  	addi	a2, zero, 15
80000824: 93 06 00 06  	addi	a3, zero, 96
80000828: 13 07 00 0e  	addi	a4, zero, 224
8000082c: ab 20 d6 00  	scfgw	a2, a3
80000830: ab 20 e5 00  	scfgw	a0, a4
80000834: 13 05 00 02  	addi	a0, zero, 32
80000838: ab 20 a0 00  	scfgw	zero, a0
8000083c: 2b 20 04 3a  	scfgwi	s0, 928
80000840: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000844: 13 09 10 00  	addi	s2, zero, 1
80000848: 87 b1 05 00  	fld	ft3, 0(a1)
8000084c: 93 08 10 13  	addi	a7, zero, 305
80000850: 93 09 10 00  	addi	s3, zero, 1
80000854: 13 0a 10 00  	addi	s4, zero, 1
80000858: 93 06 10 00  	addi	a3, zero, 1
8000085c: 13 07 10 00  	addi	a4, zero, 1
80000860: 93 07 10 00  	addi	a5, zero, 1
80000864: 93 04 10 00  	addi	s1, zero, 1
80000868: 13 04 10 00  	addi	s0, zero, 1
8000086c: 13 05 10 00  	addi	a0, zero, 1
80000870: 93 05 10 00  	addi	a1, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000874: 53 80 31 22  	fmv.d	ft0, ft3
80000878: 13 76 f9 00  	andi	a2, s2, 15
8000087c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000880: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000884: 53 00 42 22  	fmv.d	ft0, ft4
80000888: 13 76 e8 00  	andi	a2, a6, 14
8000088c: 13 66 16 00  	ori	a2, a2, 1
80000890: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000894: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000898: 53 00 42 22  	fmv.d	ft0, ft4
8000089c: 13 f6 f9 00  	andi	a2, s3, 15
800008a0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008a4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008a8: 53 00 42 22  	fmv.d	ft0, ft4
800008ac: 13 f6 c2 00  	andi	a2, t0, 12
800008b0: 13 66 16 00  	ori	a2, a2, 1
800008b4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008b8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008bc: 53 00 42 22  	fmv.d	ft0, ft4
800008c0: 13 76 fa 00  	andi	a2, s4, 15
800008c4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008c8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008cc: 53 00 42 22  	fmv.d	ft0, ft4
800008d0: 13 76 e3 00  	andi	a2, t1, 14
800008d4: 13 66 16 00  	ori	a2, a2, 1
800008d8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008dc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008e0: 53 00 42 22  	fmv.d	ft0, ft4
800008e4: 13 f6 f6 00  	andi	a2, a3, 15
800008e8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008ec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008f0: 53 00 42 22  	fmv.d	ft0, ft4
800008f4: 13 f6 83 00  	andi	a2, t2, 8
800008f8: 13 66 16 00  	ori	a2, a2, 1
800008fc: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000900: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000904: 53 00 42 22  	fmv.d	ft0, ft4
80000908: 13 76 f7 00  	andi	a2, a4, 15
8000090c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000910: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000914: 53 00 42 22  	fmv.d	ft0, ft4
80000918: 13 76 ee 00  	andi	a2, t3, 14
8000091c: 13 66 16 00  	ori	a2, a2, 1
80000920: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000924: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000928: 53 00 42 22  	fmv.d	ft0, ft4
8000092c: 13 f6 f7 00  	andi	a2, a5, 15
80000930: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000934: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000938: 53 00 42 22  	fmv.d	ft0, ft4
8000093c: 13 f6 ce 00  	andi	a2, t4, 12
80000940: 13 66 16 00  	ori	a2, a2, 1
80000944: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000948: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000094c: 53 00 42 22  	fmv.d	ft0, ft4
80000950: 13 f6 f4 00  	andi	a2, s1, 15
80000954: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000958: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000095c: 53 00 42 22  	fmv.d	ft0, ft4
80000960: 13 76 ef 00  	andi	a2, t5, 14
80000964: 13 66 16 00  	ori	a2, a2, 1
80000968: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000096c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000970: 53 00 42 22  	fmv.d	ft0, ft4
80000974: 13 76 f4 00  	andi	a2, s0, 15
80000978: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000097c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000980: 53 00 42 22  	fmv.d	ft0, ft4
80000984: 53 80 31 22  	fmv.d	ft0, ft3
80000988: 13 76 f5 00  	andi	a2, a0, 15
8000098c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000990: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000994: 53 00 42 22  	fmv.d	ft0, ft4
80000998: 13 f6 ef 00  	andi	a2, t6, 14
8000099c: 13 66 16 00  	ori	a2, a2, 1
800009a0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009a4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009a8: 53 00 42 22  	fmv.d	ft0, ft4
800009ac: 13 f6 f5 00  	andi	a2, a1, 15
800009b0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009b4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009b8: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
800009bc: 93 85 35 01  	addi	a1, a1, 19
800009c0: 93 8f 2f 01  	addi	t6, t6, 18
800009c4: 13 05 15 01  	addi	a0, a0, 17
800009c8: 13 04 f4 00  	addi	s0, s0, 15
800009cc: 13 0f ef 00  	addi	t5, t5, 14
800009d0: 93 84 d4 00  	addi	s1, s1, 13
800009d4: 93 8e ce 00  	addi	t4, t4, 12
800009d8: 93 87 b7 00  	addi	a5, a5, 11
800009dc: 13 0e ae 00  	addi	t3, t3, 10
800009e0: 13 07 97 00  	addi	a4, a4, 9
800009e4: 93 83 83 00  	addi	t2, t2, 8
800009e8: 93 86 76 00  	addi	a3, a3, 7
800009ec: 13 03 63 00  	addi	t1, t1, 6
800009f0: 13 0a 5a 00  	addi	s4, s4, 5
800009f4: 93 82 42 00  	addi	t0, t0, 4
800009f8: 93 89 39 00  	addi	s3, s3, 3
800009fc: 13 08 28 00  	addi	a6, a6, 2
80000a00: 13 09 19 00  	addi	s2, s2, 1
80000a04: e3 98 15 e7  	bne	a1, a7, 0x80000874 <.LBB0_93+0xa8>
80000a08: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000a0c: 6f 00 40 20  	j	0x80000c10 <.LBB0_93+0x444>
80000a10: 93 08 00 00  	mv	a7, zero
80000a14: 13 0e 00 00  	mv	t3, zero
80000a18: 93 0e 00 00  	mv	t4, zero
80000a1c: 13 0f 00 00  	mv	t5, zero
80000a20: 93 0f 00 00  	mv	t6, zero
80000a24: 13 09 00 00  	mv	s2, zero
80000a28: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a2c: 13 05 04 05  	addi	a0, s0, 80
80000a30: 93 0a 10 00  	addi	s5, zero, 1
80000a34: 37 a6 89 3f  	lui	a2, 260250
80000a38: 93 02 96 99  	addi	t0, a2, -1639
80000a3c: 37 a6 99 99  	lui	a2, 629146
80000a40: 13 03 a6 99  	addi	t1, a2, -1638
80000a44: 87 b1 05 00  	fld	ft3, 0(a1)
80000a48: 93 03 10 13  	addi	t2, zero, 305
80000a4c: 13 0b 10 00  	addi	s6, zero, 1
80000a50: 93 0b 10 00  	addi	s7, zero, 1
80000a54: 13 0a 10 00  	addi	s4, zero, 1
80000a58: 93 07 10 00  	addi	a5, zero, 1
80000a5c: 93 04 10 00  	addi	s1, zero, 1
80000a60: 13 04 10 00  	addi	s0, zero, 1
80000a64: 93 05 10 00  	addi	a1, zero, 1
80000a68: 13 06 10 00  	addi	a2, zero, 1
80000a6c: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000a70: 23 2a 55 fa  	sw	t0, -76(a0)
80000a74: 23 28 65 fa  	sw	t1, -80(a0)
80000a78: 13 f7 f6 00  	andi	a4, a3, 15
80000a7c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a80: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a84: 27 3c 45 fa  	fsd	ft4, -72(a0)
80000a88: 13 77 e9 00  	andi	a4, s2, 14
80000a8c: 13 67 17 00  	ori	a4, a4, 1
80000a90: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a94: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a98: 27 30 45 fc  	fsd	ft4, -64(a0)
80000a9c: 13 77 f4 00  	andi	a4, s0, 15
80000aa0: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000aa4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000aa8: 27 34 45 fc  	fsd	ft4, -56(a0)
80000aac: 13 f7 cf 00  	andi	a4, t6, 12
80000ab0: 13 67 17 00  	ori	a4, a4, 1
80000ab4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ab8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000abc: 27 38 45 fc  	fsd	ft4, -48(a0)
80000ac0: 13 f7 f7 00  	andi	a4, a5, 15
80000ac4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ac8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000acc: 27 3c 45 fc  	fsd	ft4, -40(a0)
80000ad0: 13 f7 ee 00  	andi	a4, t4, 14
80000ad4: 13 67 17 00  	ori	a4, a4, 1
80000ad8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000adc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ae0: 27 30 45 fe  	fsd	ft4, -32(a0)
80000ae4: 13 f7 fb 00  	andi	a4, s7, 15
80000ae8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000aec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000af0: 27 34 45 fe  	fsd	ft4, -24(a0)
80000af4: 13 f7 88 00  	andi	a4, a7, 8
80000af8: 13 67 17 00  	ori	a4, a4, 1
80000afc: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b00: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b04: 27 38 45 fe  	fsd	ft4, -16(a0)
80000b08: 13 f7 fa 00  	andi	a4, s5, 15
80000b0c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b10: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b14: 27 3c 45 fe  	fsd	ft4, -8(a0)
80000b18: 13 77 e8 00  	andi	a4, a6, 14
80000b1c: 13 67 17 00  	ori	a4, a4, 1
80000b20: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b24: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b28: 27 30 45 00  	fsd	ft4, 0(a0)
80000b2c: 13 77 fb 00  	andi	a4, s6, 15
80000b30: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b34: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b38: 27 34 45 00  	fsd	ft4, 8(a0)
80000b3c: 13 77 ce 00  	andi	a4, t3, 12
80000b40: 13 67 17 00  	ori	a4, a4, 1
80000b44: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b48: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b4c: 27 38 45 00  	fsd	ft4, 16(a0)
80000b50: 13 77 fa 00  	andi	a4, s4, 15
80000b54: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b58: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b5c: 27 3c 45 00  	fsd	ft4, 24(a0)
80000b60: 13 77 ef 00  	andi	a4, t5, 14
80000b64: 13 67 17 00  	ori	a4, a4, 1
80000b68: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b6c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b70: 27 30 45 02  	fsd	ft4, 32(a0)
80000b74: 13 f7 f4 00  	andi	a4, s1, 15
80000b78: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b7c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b80: 27 34 45 02  	fsd	ft4, 40(a0)
80000b84: 23 2a 55 02  	sw	t0, 52(a0)
80000b88: 23 28 65 02  	sw	t1, 48(a0)
80000b8c: 13 f7 f5 00  	andi	a4, a1, 15
80000b90: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b94: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b98: 27 3c 45 02  	fsd	ft4, 56(a0)
80000b9c: 13 f7 e9 00  	andi	a4, s3, 14
80000ba0: 13 67 17 00  	ori	a4, a4, 1
80000ba4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ba8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bac: 27 30 45 04  	fsd	ft4, 64(a0)
80000bb0: 13 77 f6 00  	andi	a4, a2, 15
80000bb4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000bb8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bbc: 27 34 45 04  	fsd	ft4, 72(a0)
;   for (i = 0; i < ni; i++)
80000bc0: 93 86 16 00  	addi	a3, a3, 1
80000bc4: 13 06 36 01  	addi	a2, a2, 19
80000bc8: 93 89 29 01  	addi	s3, s3, 18
80000bcc: 13 09 29 00  	addi	s2, s2, 2
80000bd0: 93 85 15 01  	addi	a1, a1, 17
80000bd4: 13 04 34 00  	addi	s0, s0, 3
80000bd8: 93 8f 4f 00  	addi	t6, t6, 4
80000bdc: 93 84 f4 00  	addi	s1, s1, 15
80000be0: 93 87 57 00  	addi	a5, a5, 5
80000be4: 13 0f ef 00  	addi	t5, t5, 14
80000be8: 93 8e 6e 00  	addi	t4, t4, 6
80000bec: 13 0a da 00  	addi	s4, s4, 13
80000bf0: 93 8b 7b 00  	addi	s7, s7, 7
80000bf4: 13 0e ce 00  	addi	t3, t3, 12
80000bf8: 93 88 88 00  	addi	a7, a7, 8
80000bfc: 13 0b bb 00  	addi	s6, s6, 11
80000c00: 13 05 05 0a  	addi	a0, a0, 160
80000c04: 13 08 a8 00  	addi	a6, a6, 10
80000c08: 93 8a 9a 00  	addi	s5, s5, 9
80000c0c: e3 12 76 e6  	bne	a2, t2, 0x80000a70 <.LBB0_93+0x2a4>
80000c10: 23 28 81 03  	sw	s8, 48(sp)
;   for (i = 0; i < nk; i++)
80000c14: 13 d5 4c 01  	srli	a0, s9, 20
80000c18: 33 35 a0 00  	snez	a0, a0
80000c1c: b7 f5 11 00  	lui	a1, 287
80000c20: 93 85 95 4c  	addi	a1, a1, 1225
80000c24: b3 b5 bc 00  	sltu	a1, s9, a1
80000c28: b3 75 b5 00  	and	a1, a0, a1

80000c2c <.LBB0_94>:
80000c2c: 17 55 00 00  	auipc	a0, 5
80000c30: 13 05 45 93  	addi	a0, a0, -1740
80000c34: 23 28 b1 00  	sw	a1, 16(sp)
80000c38: 23 2c 91 01  	sw	s9, 24(sp)
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
80000c80: 2b a0 0c 3a  	scfgwi	s9, 928
80000c84: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000c88: 13 0f 20 00  	addi	t5, zero, 2
80000c8c: b7 95 e3 38  	lui	a1, 233017
80000c90: 13 87 95 e3  	addi	a4, a1, -455
80000c94: 93 07 20 01  	addi	a5, zero, 18
80000c98: 87 31 05 00  	fld	ft3, 0(a0)

80000c9c <.LBB0_95>:
80000c9c: 17 55 00 00  	auipc	a0, 5
80000ca0: 13 05 c5 8c  	addi	a0, a0, -1844
80000ca4: 07 32 05 00  	fld	ft4, 0(a0)
80000ca8: 13 08 a0 02  	addi	a6, zero, 42
80000cac: 93 03 20 00  	addi	t2, zero, 2
80000cb0: 93 0f 20 00  	addi	t6, zero, 2
80000cb4: 13 09 20 00  	addi	s2, zero, 2
80000cb8: 13 0e 20 00  	addi	t3, zero, 2
80000cbc: 93 09 20 00  	addi	s3, zero, 2
80000cc0: 93 0a 20 00  	addi	s5, zero, 2
80000cc4: 93 0e 20 00  	addi	t4, zero, 2
80000cc8: 13 0b 20 00  	addi	s6, zero, 2
80000ccc: 93 0b 20 00  	addi	s7, zero, 2
80000cd0: 13 0c 20 00  	addi	s8, zero, 2
80000cd4: 13 0a 20 00  	addi	s4, zero, 2
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
80000d64: 33 b5 e9 02  	mulhu	a0, s3, a4
80000d68: 13 55 25 00  	srli	a0, a0, 2
80000d6c: 33 05 f5 02  	mul	a0, a0, a5
80000d70: 33 85 a9 40  	sub	a0, s3, a0
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
80000ddc: 33 35 ea 02  	mulhu	a0, s4, a4
80000de0: 13 55 25 00  	srli	a0, a0, 2
80000de4: 33 05 f5 02  	mul	a0, a0, a5
80000de8: 33 05 aa 40  	sub	a0, s4, a0
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
80000ee0: 13 0a da 00  	addi	s4, s4, 13
80000ee4: 13 0c cc 00  	addi	s8, s8, 12
80000ee8: 93 8b bb 00  	addi	s7, s7, 11
80000eec: 13 0b ab 00  	addi	s6, s6, 10
80000ef0: 93 8e 9e 00  	addi	t4, t4, 9
80000ef4: 13 03 93 00  	addi	t1, t1, 9
80000ef8: 93 8a 8a 00  	addi	s5, s5, 8
80000efc: 93 89 79 00  	addi	s3, s3, 7
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
80000f34: 93 86 8c 04  	addi	a3, s9, 72
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
80000f68: 93 09 20 00  	addi	s3, zero, 2
80000f6c: 93 0a 20 00  	addi	s5, zero, 2
80000f70: 13 0b 20 00  	addi	s6, zero, 2
80000f74: 93 0b 20 00  	addi	s7, zero, 2
80000f78: 13 0c 20 00  	addi	s8, zero, 2
80000f7c: 13 09 20 00  	addi	s2, zero, 2
80000f80: 13 0d 20 00  	addi	s10, zero, 2
80000f84: 93 0d 20 00  	addi	s11, zero, 2
80000f88: 13 0a 20 00  	addi	s4, zero, 2
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
8000107c: 33 b5 f9 02  	mulhu	a0, s3, a5
80001080: 13 55 25 00  	srli	a0, a0, 2
80001084: 33 05 95 02  	mul	a0, a0, s1
80001088: 33 85 a9 40  	sub	a0, s3, a0
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
800010cc: 33 35 fa 02  	mulhu	a0, s4, a5
800010d0: 13 55 25 00  	srli	a0, a0, 2
800010d4: 33 05 95 02  	mul	a0, a0, s1
800010d8: 33 05 aa 40  	sub	a0, s4, a0
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
8000119c: 13 0a 0a 01  	addi	s4, s4, 16
800011a0: 93 8d 5d 00  	addi	s11, s11, 5
800011a4: 13 0d fd 00  	addi	s10, s10, 15
800011a8: 13 09 69 00  	addi	s2, s2, 6
800011ac: 93 83 63 00  	addi	t2, t2, 6
800011b0: 13 0c ec 00  	addi	s8, s8, 14
800011b4: 93 8b 7b 00  	addi	s7, s7, 7
800011b8: 13 0b db 00  	addi	s6, s6, 13
800011bc: 93 8a 8a 00  	addi	s5, s5, 8
800011c0: 93 89 c9 00  	addi	s3, s3, 12
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
800011f4: 97 4f 00 00  	auipc	t6, 4
800011f8: 93 8f cf 37  	addi	t6, t6, 892
800011fc: 13 8a 00 00  	mv	s4, ra
80001200: 23 26 a1 00  	sw	a0, 12(sp)
80001204: 23 20 11 02  	sw	ra, 32(sp)
80001208: 63 04 05 3a  	beqz	a0, 0x800015b0 <.LBB0_96+0x3bc>
8000120c: 13 03 00 00  	mv	t1, zero
80001210: 93 03 00 00  	mv	t2, zero
80001214: 93 0a 00 00  	mv	s5, zero
80001218: 13 0b 00 00  	mv	s6, zero
8000121c: 93 0b 00 00  	mv	s7, zero
80001220: 13 0c 00 00  	mv	s8, zero
80001224: 93 0c 00 00  	mv	s9, zero
80001228: 13 0d 00 00  	mv	s10, zero
8000122c: 93 0d 00 00  	mv	s11, zero
80001230: 93 00 00 00  	mv	ra, zero
80001234: 93 09 00 00  	mv	s3, zero
80001238: 13 06 00 00  	mv	a2, zero
8000123c: 13 07 00 00  	mv	a4, zero
80001240: 93 05 00 00  	mv	a1, zero
80001244: 93 06 00 00  	mv	a3, zero
80001248: 93 07 00 00  	mv	a5, zero
8000124c: 93 04 00 00  	mv	s1, zero
80001250: 13 04 00 00  	mv	s0, zero
80001254: 13 08 00 00  	mv	a6, zero
80001258: 93 08 00 00  	mv	a7, zero
8000125c: 93 02 00 00  	mv	t0, zero
80001260: 13 09 00 00  	mv	s2, zero
80001264: 13 0e 00 00  	mv	t3, zero
80001268: 93 0e 80 00  	addi	t4, zero, 8
8000126c: 13 0f 70 01  	addi	t5, zero, 23
;   for (i = 0; i < nj; i++)
80001270: 13 05 00 04  	addi	a0, zero, 64
80001274: ab 20 af 00  	scfgw	t5, a0
80001278: 13 05 00 0c  	addi	a0, zero, 192
8000127c: ab a0 ae 00  	scfgw	t4, a0
80001280: 13 0f 10 01  	addi	t5, zero, 17
80001284: 13 05 00 06  	addi	a0, zero, 96
80001288: ab 20 af 00  	scfgw	t5, a0
8000128c: 13 05 00 0e  	addi	a0, zero, 224
80001290: ab a0 ae 00  	scfgw	t4, a0
80001294: 13 05 00 02  	addi	a0, zero, 32
80001298: ab 20 a0 00  	scfgw	zero, a0
8000129c: 2b 20 0a 3a  	scfgwi	s4, 928
800012a0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800012a4: 37 95 2e ba  	lui	a0, 762601
800012a8: 93 0e 35 ba  	addi	t4, a0, -1117
800012ac: 13 0a a0 fe  	addi	s4, zero, -22
800012b0: 87 b1 0f 00  	fld	ft3, 0(t6)
800012b4: 13 0f 60 01  	addi	t5, zero, 22
800012b8: 53 02 00 d2  	fcvt.d.w	ft4, zero
800012bc: 93 0f 40 1d  	addi	t6, zero, 468
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
800012c0: 33 35 d3 03  	mulhu	a0, t1, t4
800012c4: 13 55 45 00  	srli	a0, a0, 4
800012c8: 33 05 e5 03  	mul	a0, a0, t5
800012cc: 33 05 a3 40  	sub	a0, t1, a0
800012d0: d3 02 05 d2  	fcvt.d.w	ft5, a0
800012d4: 33 b5 d3 03  	mulhu	a0, t2, t4
800012d8: 13 55 45 00  	srli	a0, a0, 4
800012dc: 33 05 e5 03  	mul	a0, a0, t5
800012e0: 33 85 a3 40  	sub	a0, t2, a0
800012e4: 53 03 05 d2  	fcvt.d.w	ft6, a0
800012e8: 33 b5 da 03  	mulhu	a0, s5, t4
800012ec: 13 55 45 00  	srli	a0, a0, 4
800012f0: 33 05 e5 03  	mul	a0, a0, t5
800012f4: 33 85 aa 40  	sub	a0, s5, a0
800012f8: d3 03 05 d2  	fcvt.d.w	ft7, a0
800012fc: 33 35 db 03  	mulhu	a0, s6, t4
80001300: 13 55 45 00  	srli	a0, a0, 4
80001304: 33 05 e5 03  	mul	a0, a0, t5
80001308: 33 05 ab 40  	sub	a0, s6, a0
8000130c: 53 05 05 d2  	fcvt.d.w	fa0, a0
80001310: 33 b5 db 03  	mulhu	a0, s7, t4
80001314: 13 55 45 00  	srli	a0, a0, 4
80001318: 33 05 e5 03  	mul	a0, a0, t5
8000131c: 33 85 ab 40  	sub	a0, s7, a0
80001320: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001324: 33 35 dc 03  	mulhu	a0, s8, t4
80001328: 13 55 45 00  	srli	a0, a0, 4
8000132c: 33 05 e5 03  	mul	a0, a0, t5
80001330: 33 05 ac 40  	sub	a0, s8, a0
80001334: 53 06 05 d2  	fcvt.d.w	fa2, a0
80001338: 33 b5 dc 03  	mulhu	a0, s9, t4
8000133c: 13 55 45 00  	srli	a0, a0, 4
80001340: 33 05 e5 03  	mul	a0, a0, t5
80001344: 33 85 ac 40  	sub	a0, s9, a0
80001348: d3 06 05 d2  	fcvt.d.w	fa3, a0
8000134c: 33 35 dd 03  	mulhu	a0, s10, t4
80001350: 13 55 45 00  	srli	a0, a0, 4
80001354: 33 05 e5 03  	mul	a0, a0, t5
80001358: 33 05 ad 40  	sub	a0, s10, a0
8000135c: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001360: 33 b5 dd 03  	mulhu	a0, s11, t4
80001364: 13 55 45 00  	srli	a0, a0, 4
80001368: 33 05 e5 03  	mul	a0, a0, t5
8000136c: 33 85 ad 40  	sub	a0, s11, a0
80001370: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001374: 33 b5 d0 03  	mulhu	a0, ra, t4
80001378: 13 55 45 00  	srli	a0, a0, 4
8000137c: 33 05 e5 03  	mul	a0, a0, t5
80001380: 33 85 a0 40  	sub	a0, ra, a0
80001384: 53 08 05 d2  	fcvt.d.w	fa6, a0
80001388: 33 b5 d9 03  	mulhu	a0, s3, t4
8000138c: 13 55 45 00  	srli	a0, a0, 4
80001390: 33 05 e5 03  	mul	a0, a0, t5
80001394: 33 85 a9 40  	sub	a0, s3, a0
80001398: d3 08 05 d2  	fcvt.d.w	fa7, a0
8000139c: 33 35 d6 03  	mulhu	a0, a2, t4
800013a0: 13 55 45 00  	srli	a0, a0, 4
800013a4: 33 05 e5 03  	mul	a0, a0, t5
800013a8: 33 05 a6 40  	sub	a0, a2, a0
800013ac: 53 0e 05 d2  	fcvt.d.w	ft8, a0
800013b0: 33 35 d7 03  	mulhu	a0, a4, t4
800013b4: 13 55 45 00  	srli	a0, a0, 4
800013b8: 33 05 e5 03  	mul	a0, a0, t5
800013bc: 33 05 a7 40  	sub	a0, a4, a0
800013c0: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800013c4: 33 b5 d5 03  	mulhu	a0, a1, t4
800013c8: 13 55 45 00  	srli	a0, a0, 4
800013cc: 33 05 e5 03  	mul	a0, a0, t5
800013d0: 33 85 a5 40  	sub	a0, a1, a0
800013d4: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800013d8: 33 b5 d6 03  	mulhu	a0, a3, t4
800013dc: 13 55 45 00  	srli	a0, a0, 4
800013e0: 33 05 e5 03  	mul	a0, a0, t5
800013e4: 33 85 a6 40  	sub	a0, a3, a0
800013e8: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800013ec: 33 b5 d7 03  	mulhu	a0, a5, t4
800013f0: 13 55 45 00  	srli	a0, a0, 4
800013f4: 33 05 e5 03  	mul	a0, a0, t5
800013f8: 33 85 a7 40  	sub	a0, a5, a0
800013fc: 53 04 05 d2  	fcvt.d.w	fs0, a0
80001400: 33 b5 d4 03  	mulhu	a0, s1, t4
80001404: 13 55 45 00  	srli	a0, a0, 4
80001408: 33 05 e5 03  	mul	a0, a0, t5
8000140c: 33 85 a4 40  	sub	a0, s1, a0
80001410: d3 04 05 d2  	fcvt.d.w	fs1, a0
80001414: 33 35 d4 03  	mulhu	a0, s0, t4
80001418: 13 55 45 00  	srli	a0, a0, 4
8000141c: 33 05 e5 03  	mul	a0, a0, t5
80001420: 33 05 a4 40  	sub	a0, s0, a0
80001424: 53 09 05 d2  	fcvt.d.w	fs2, a0
80001428: 33 35 d8 03  	mulhu	a0, a6, t4
8000142c: 13 55 45 00  	srli	a0, a0, 4
80001430: 33 05 e5 03  	mul	a0, a0, t5
80001434: 33 05 a8 40  	sub	a0, a6, a0
80001438: d3 09 05 d2  	fcvt.d.w	fs3, a0
8000143c: 33 b5 d8 03  	mulhu	a0, a7, t4
80001440: 13 55 45 00  	srli	a0, a0, 4
80001444: 33 05 e5 03  	mul	a0, a0, t5
80001448: 33 85 a8 40  	sub	a0, a7, a0
8000144c: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80001450: 33 b5 d2 03  	mulhu	a0, t0, t4
80001454: 13 55 45 00  	srli	a0, a0, 4
80001458: 33 05 e5 03  	mul	a0, a0, t5
8000145c: 33 85 a2 40  	sub	a0, t0, a0
80001460: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80001464: 33 35 d9 03  	mulhu	a0, s2, t4
80001468: 13 55 45 00  	srli	a0, a0, 4
8000146c: 33 05 e5 03  	mul	a0, a0, t5
80001470: 33 05 a9 40  	sub	a0, s2, a0
80001474: 53 0b 05 d2  	fcvt.d.w	fs6, a0
80001478: 33 35 de 03  	mulhu	a0, t3, t4
8000147c: 13 55 45 00  	srli	a0, a0, 4
80001480: 33 05 45 03  	mul	a0, a0, s4
80001484: 33 05 ae 00  	add	a0, t3, a0
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
80001548: 13 0e ae 01  	addi	t3, t3, 26
8000154c: 13 09 99 01  	addi	s2, s2, 25
80001550: 93 82 82 01  	addi	t0, t0, 24
80001554: 93 88 78 01  	addi	a7, a7, 23
80001558: 13 08 58 01  	addi	a6, a6, 21
8000155c: 13 04 44 01  	addi	s0, s0, 20
80001560: 93 84 34 01  	addi	s1, s1, 19
80001564: 93 87 27 01  	addi	a5, a5, 18
80001568: 93 86 16 01  	addi	a3, a3, 17
8000156c: 93 85 05 01  	addi	a1, a1, 16
80001570: 13 07 f7 00  	addi	a4, a4, 15
80001574: 13 06 e6 00  	addi	a2, a2, 14
80001578: 93 89 d9 00  	addi	s3, s3, 13
8000157c: 93 80 c0 00  	addi	ra, ra, 12
80001580: 93 8d bd 00  	addi	s11, s11, 11
80001584: 13 0d ad 00  	addi	s10, s10, 10
80001588: 93 8c 9c 00  	addi	s9, s9, 9
8000158c: 13 0c 8c 00  	addi	s8, s8, 8
80001590: 93 8b 7b 00  	addi	s7, s7, 7
80001594: 13 0b 6b 00  	addi	s6, s6, 6
80001598: 93 8a 5a 00  	addi	s5, s5, 5
8000159c: 93 83 43 00  	addi	t2, t2, 4
800015a0: 13 03 33 00  	addi	t1, t1, 3
800015a4: e3 1e fe d1  	bne	t3, t6, 0x800012c0 <.LBB0_96+0xcc>
800015a8: 73 f5 00 7c  	csrrci	a0, 1984, 1
800015ac: 6f 00 c0 36  	j	0x80001918 <.LBB0_96+0x724>
800015b0: 13 08 00 00  	mv	a6, zero
800015b4: 93 08 00 00  	mv	a7, zero
800015b8: 93 02 00 00  	mv	t0, zero
800015bc: 13 03 00 00  	mv	t1, zero
800015c0: 93 03 00 00  	mv	t2, zero
800015c4: 13 0e 00 00  	mv	t3, zero
800015c8: 13 09 00 00  	mv	s2, zero
800015cc: 93 0a 00 00  	mv	s5, zero
800015d0: 13 0b 00 00  	mv	s6, zero
800015d4: 93 0b 00 00  	mv	s7, zero
800015d8: 13 0c 00 00  	mv	s8, zero
800015dc: 93 0e 00 00  	mv	t4, zero
800015e0: 13 0f 00 00  	mv	t5, zero
800015e4: 93 0c 00 00  	mv	s9, zero
800015e8: 13 0d 00 00  	mv	s10, zero
800015ec: 93 0d 00 00  	mv	s11, zero
800015f0: 93 00 00 00  	mv	ra, zero
800015f4: 93 09 00 00  	mv	s3, zero
800015f8: 13 06 00 00  	mv	a2, zero
800015fc: 93 06 00 00  	mv	a3, zero
80001600: 13 07 00 00  	mv	a4, zero
80001604: 93 07 00 00  	mv	a5, zero
80001608: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nj; i++)
8000160c: 13 04 0a 06  	addi	s0, s4, 96
80001610: 37 95 2e ba  	lui	a0, 762601
80001614: 13 05 35 ba  	addi	a0, a0, -1117
80001618: 87 b1 0f 00  	fld	ft3, 0(t6)
8000161c: 93 0f 60 01  	addi	t6, zero, 22
80001620: 13 0a a0 fe  	addi	s4, zero, -22
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80001624: b3 b5 a7 02  	mulhu	a1, a5, a0
80001628: 93 d5 45 00  	srli	a1, a1, 4
8000162c: b3 85 f5 03  	mul	a1, a1, t6
80001630: b3 85 b7 40  	sub	a1, a5, a1
80001634: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001638: b3 35 a7 02  	mulhu	a1, a4, a0
8000163c: 93 d5 45 00  	srli	a1, a1, 4
80001640: b3 85 f5 03  	mul	a1, a1, t6
80001644: b3 05 b7 40  	sub	a1, a4, a1
80001648: d3 82 05 d2  	fcvt.d.w	ft5, a1
8000164c: b3 35 a6 02  	mulhu	a1, a2, a0
80001650: 93 d5 45 00  	srli	a1, a1, 4
80001654: b3 85 f5 03  	mul	a1, a1, t6
80001658: b3 05 b6 40  	sub	a1, a2, a1
8000165c: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001660: b3 b5 a0 02  	mulhu	a1, ra, a0
80001664: 93 d5 45 00  	srli	a1, a1, 4
80001668: b3 85 f5 03  	mul	a1, a1, t6
8000166c: b3 85 b0 40  	sub	a1, ra, a1
80001670: d3 83 05 d2  	fcvt.d.w	ft7, a1
80001674: b3 35 ad 02  	mulhu	a1, s10, a0
80001678: 93 d5 45 00  	srli	a1, a1, 4
8000167c: b3 85 f5 03  	mul	a1, a1, t6
80001680: b3 05 bd 40  	sub	a1, s10, a1
80001684: 53 85 05 d2  	fcvt.d.w	fa0, a1
80001688: b3 b5 ac 02  	mulhu	a1, s9, a0
8000168c: 93 d5 45 00  	srli	a1, a1, 4
80001690: b3 85 f5 03  	mul	a1, a1, t6
80001694: b3 85 bc 40  	sub	a1, s9, a1
80001698: d3 85 05 d2  	fcvt.d.w	fa1, a1
8000169c: b3 b5 ae 02  	mulhu	a1, t4, a0
800016a0: 93 d5 45 00  	srli	a1, a1, 4
800016a4: b3 85 f5 03  	mul	a1, a1, t6
800016a8: b3 85 be 40  	sub	a1, t4, a1
800016ac: 53 86 05 d2  	fcvt.d.w	fa2, a1
800016b0: b3 b5 ab 02  	mulhu	a1, s7, a0
800016b4: 93 d5 45 00  	srli	a1, a1, 4
800016b8: b3 85 f5 03  	mul	a1, a1, t6
800016bc: b3 85 bb 40  	sub	a1, s7, a1
800016c0: d3 86 05 d2  	fcvt.d.w	fa3, a1
800016c4: b3 b5 aa 02  	mulhu	a1, s5, a0
800016c8: 93 d5 45 00  	srli	a1, a1, 4
800016cc: b3 85 f5 03  	mul	a1, a1, t6
800016d0: b3 85 ba 40  	sub	a1, s5, a1
800016d4: 53 87 05 d2  	fcvt.d.w	fa4, a1
800016d8: b3 35 ae 02  	mulhu	a1, t3, a0
800016dc: 93 d5 45 00  	srli	a1, a1, 4
800016e0: b3 85 f5 03  	mul	a1, a1, t6
800016e4: b3 05 be 40  	sub	a1, t3, a1
800016e8: d3 87 05 d2  	fcvt.d.w	fa5, a1
800016ec: b3 35 a3 02  	mulhu	a1, t1, a0
800016f0: 93 d5 45 00  	srli	a1, a1, 4
800016f4: b3 85 f5 03  	mul	a1, a1, t6
800016f8: b3 05 b3 40  	sub	a1, t1, a1
800016fc: 53 88 05 d2  	fcvt.d.w	fa6, a1
80001700: b3 35 a8 02  	mulhu	a1, a6, a0
80001704: 93 d5 45 00  	srli	a1, a1, 4
80001708: b3 85 f5 03  	mul	a1, a1, t6
8000170c: b3 05 b8 40  	sub	a1, a6, a1
80001710: d3 88 05 d2  	fcvt.d.w	fa7, a1
80001714: b3 b5 a8 02  	mulhu	a1, a7, a0
80001718: 93 d5 45 00  	srli	a1, a1, 4
8000171c: b3 85 f5 03  	mul	a1, a1, t6
80001720: b3 85 b8 40  	sub	a1, a7, a1
80001724: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80001728: b3 b5 a2 02  	mulhu	a1, t0, a0
8000172c: 93 d5 45 00  	srli	a1, a1, 4
80001730: b3 85 f5 03  	mul	a1, a1, t6
80001734: b3 85 b2 40  	sub	a1, t0, a1
80001738: d3 8e 05 d2  	fcvt.d.w	ft9, a1
8000173c: b3 b5 a3 02  	mulhu	a1, t2, a0
80001740: 93 d5 45 00  	srli	a1, a1, 4
80001744: b3 85 f5 03  	mul	a1, a1, t6
80001748: b3 85 b3 40  	sub	a1, t2, a1
8000174c: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001750: b3 35 a9 02  	mulhu	a1, s2, a0
80001754: 93 d5 45 00  	srli	a1, a1, 4
80001758: b3 85 f5 03  	mul	a1, a1, t6
8000175c: b3 05 b9 40  	sub	a1, s2, a1
80001760: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001764: b3 35 ab 02  	mulhu	a1, s6, a0
80001768: 93 d5 45 00  	srli	a1, a1, 4
8000176c: b3 85 f5 03  	mul	a1, a1, t6
80001770: b3 05 bb 40  	sub	a1, s6, a1
80001774: 53 84 05 d2  	fcvt.d.w	fs0, a1
80001778: b3 35 ac 02  	mulhu	a1, s8, a0
8000177c: 93 d5 45 00  	srli	a1, a1, 4
80001780: b3 85 f5 03  	mul	a1, a1, t6
80001784: b3 05 bc 40  	sub	a1, s8, a1
80001788: d3 84 05 d2  	fcvt.d.w	fs1, a1
8000178c: b3 35 af 02  	mulhu	a1, t5, a0
80001790: 93 d5 45 00  	srli	a1, a1, 4
80001794: b3 85 f5 03  	mul	a1, a1, t6
80001798: b3 05 bf 40  	sub	a1, t5, a1
8000179c: 53 89 05 d2  	fcvt.d.w	fs2, a1
800017a0: b3 b5 ad 02  	mulhu	a1, s11, a0
800017a4: 93 d5 45 00  	srli	a1, a1, 4
800017a8: b3 85 f5 03  	mul	a1, a1, t6
800017ac: b3 85 bd 40  	sub	a1, s11, a1
800017b0: d3 89 05 d2  	fcvt.d.w	fs3, a1
800017b4: b3 b5 a9 02  	mulhu	a1, s3, a0
800017b8: 93 d5 45 00  	srli	a1, a1, 4
800017bc: b3 85 f5 03  	mul	a1, a1, t6
800017c0: b3 85 b9 40  	sub	a1, s3, a1
800017c4: 53 8a 05 d2  	fcvt.d.w	fs4, a1
800017c8: b3 b5 a6 02  	mulhu	a1, a3, a0
800017cc: 93 d5 45 00  	srli	a1, a1, 4
800017d0: b3 85 f5 03  	mul	a1, a1, t6
800017d4: b3 85 b6 40  	sub	a1, a3, a1
800017d8: d3 8a 05 d2  	fcvt.d.w	fs5, a1
800017dc: b3 b5 a4 02  	mulhu	a1, s1, a0
800017e0: 93 d5 45 00  	srli	a1, a1, 4
800017e4: b3 85 45 03  	mul	a1, a1, s4
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
800018c4: 93 89 89 01  	addi	s3, s3, 24
800018c8: 93 80 60 00  	addi	ra, ra, 6
800018cc: 93 8d 7d 01  	addi	s11, s11, 23
800018d0: 13 0d 7d 00  	addi	s10, s10, 7
800018d4: 93 8c 8c 00  	addi	s9, s9, 8
800018d8: 13 0f 5f 01  	addi	t5, t5, 21
800018dc: 93 8e 9e 00  	addi	t4, t4, 9
800018e0: 13 0c 4c 01  	addi	s8, s8, 20
800018e4: 93 8b ab 00  	addi	s7, s7, 10
800018e8: 13 0b 3b 01  	addi	s6, s6, 19
800018ec: 93 8a ba 00  	addi	s5, s5, 11
800018f0: 13 09 29 01  	addi	s2, s2, 18
800018f4: 13 0e ce 00  	addi	t3, t3, 12
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
80001938: 13 05 45 c4  	addi	a0, a0, -956
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
8000198c: 93 0f 20 00  	addi	t6, zero, 2
80001990: b7 d5 cc cc  	lui	a1, 838861
80001994: 13 87 d5 cc  	addi	a4, a1, -819
80001998: 93 07 40 01  	addi	a5, zero, 20
8000199c: 87 31 05 00  	fld	ft3, 0(a0)

800019a0 <.LBB0_98>:
800019a0: 17 45 00 00  	auipc	a0, 4
800019a4: 13 05 05 be  	addi	a0, a0, -1056
800019a8: 07 32 05 00  	fld	ft4, 0(a0)
800019ac: 13 0a 20 03  	addi	s4, zero, 50
800019b0: 13 0e 20 00  	addi	t3, zero, 2
800019b4: 93 0e 20 00  	addi	t4, zero, 2
800019b8: 13 09 20 00  	addi	s2, zero, 2
800019bc: 93 0a 20 00  	addi	s5, zero, 2
800019c0: 13 0b 20 00  	addi	s6, zero, 2
800019c4: 93 0b 20 00  	addi	s7, zero, 2
800019c8: 13 0f 20 00  	addi	t5, zero, 2
800019cc: 13 0c 20 00  	addi	s8, zero, 2
800019d0: 93 0c 20 00  	addi	s9, zero, 2
800019d4: 13 0d 20 00  	addi	s10, zero, 2
800019d8: 93 0d 20 00  	addi	s11, zero, 2
800019dc: 93 00 20 00  	addi	ra, zero, 2
800019e0: 93 09 20 00  	addi	s3, zero, 2
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
80001a14: 33 b4 ef 02  	mulhu	s0, t6, a4
80001a18: 13 54 44 00  	srli	s0, s0, 4
80001a1c: 33 04 f4 02  	mul	s0, s0, a5
80001a20: 33 84 8f 40  	sub	s0, t6, s0
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
80001a50: 33 34 e9 02  	mulhu	s0, s2, a4
80001a54: 13 54 44 00  	srli	s0, s0, 4
80001a58: 33 04 f4 02  	mul	s0, s0, a5
80001a5c: 33 04 89 40  	sub	s0, s2, s0
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
80001b18: 33 b4 e9 02  	mulhu	s0, s3, a4
80001b1c: 13 54 44 00  	srli	s0, s0, 4
80001b20: 33 04 f4 02  	mul	s0, s0, a5
80001b24: 33 84 89 40  	sub	s0, s3, s0
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
80001c6c: 93 89 09 01  	addi	s3, s3, 16
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
80001c98: 13 09 69 00  	addi	s2, s2, 6
80001c9c: 93 8e 5e 00  	addi	t4, t4, 5
80001ca0: 93 82 52 00  	addi	t0, t0, 5
80001ca4: 13 0e 4e 00  	addi	t3, t3, 4
80001ca8: 93 88 48 00  	addi	a7, a7, 4
80001cac: 93 8f 3f 00  	addi	t6, t6, 3
80001cb0: e3 18 48 d5  	bne	a6, s4, 0x80001a00 <.LBB0_98+0x60>
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
80001cd8: 93 0f 40 01  	addi	t6, zero, 20
80001cdc: 87 31 05 00  	fld	ft3, 0(a0)
80001ce0: 37 85 94 3f  	lui	a0, 260424
80001ce4: 13 05 15 ae  	addi	a0, a0, -1311
80001ce8: 23 2c a1 02  	sw	a0, 56(sp)
80001cec: 37 15 ae 47  	lui	a0, 293601
80001cf0: 13 05 b5 47  	addi	a0, a0, 1147
80001cf4: 23 2a a1 02  	sw	a0, 52(sp)
80001cf8: 13 09 20 00  	addi	s2, zero, 2
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
80001d38: 13 0a 20 00  	addi	s4, zero, 2
80001d3c: 13 08 20 00  	addi	a6, zero, 2
80001d40: 93 02 20 00  	addi	t0, zero, 2
80001d44: 93 09 20 00  	addi	s3, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001d48: 23 2e 81 02  	sw	s0, 60(sp)
80001d4c: 33 b7 f9 02  	mulhu	a4, s3, a5
80001d50: 13 57 47 00  	srli	a4, a4, 4
80001d54: 13 04 06 00  	mv	s0, a2
80001d58: 13 06 05 00  	mv	a2, a0
80001d5c: 13 05 0a 00  	mv	a0, s4
80001d60: 33 0a f7 03  	mul	s4, a4, t6
80001d64: 33 87 49 41  	sub	a4, s3, s4
80001d68: 13 0a 05 00  	mv	s4, a0
80001d6c: 13 05 06 00  	mv	a0, a2
80001d70: 13 06 04 00  	mv	a2, s0
80001d74: 03 24 c1 03  	lw	s0, 60(sp)
80001d78: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001d7c: 33 b7 f2 02  	mulhu	a4, t0, a5
80001d80: 13 57 47 00  	srli	a4, a4, 4
80001d84: 33 07 f7 03  	mul	a4, a4, t6
80001d88: 33 87 e2 40  	sub	a4, t0, a4
80001d8c: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001d90: 33 b7 f4 02  	mulhu	a4, s1, a5
80001d94: 13 57 47 00  	srli	a4, a4, 4
80001d98: 33 07 f7 03  	mul	a4, a4, t6
80001d9c: 33 07 ea 40  	sub	a4, s4, a4
80001da0: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001da4: 33 37 f6 02  	mulhu	a4, a2, a5
80001da8: 13 57 47 00  	srli	a4, a4, 4
80001dac: 33 07 f7 03  	mul	a4, a4, t6
80001db0: 33 87 e5 40  	sub	a4, a1, a4
80001db4: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001db8: 33 37 f3 02  	mulhu	a4, t1, a5
80001dbc: 13 57 47 00  	srli	a4, a4, 4
80001dc0: 33 07 f7 03  	mul	a4, a4, t6
80001dc4: 33 07 e3 40  	sub	a4, t1, a4
80001dc8: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001dcc: 33 37 fe 02  	mulhu	a4, t3, a5
80001dd0: 13 57 47 00  	srli	a4, a4, 4
80001dd4: 33 07 f7 03  	mul	a4, a4, t6
80001dd8: 33 07 ee 40  	sub	a4, t3, a4
80001ddc: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001de0: 33 b7 f0 02  	mulhu	a4, ra, a5
80001de4: 13 57 47 00  	srli	a4, a4, 4
80001de8: 33 07 f7 03  	mul	a4, a4, t6
80001dec: 33 87 e0 40  	sub	a4, ra, a4
80001df0: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001df4: 33 37 fd 02  	mulhu	a4, s10, a5
80001df8: 13 57 47 00  	srli	a4, a4, 4
80001dfc: 33 07 f7 03  	mul	a4, a4, t6
80001e00: 33 07 ed 40  	sub	a4, s10, a4
80001e04: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001e08: 33 37 f4 02  	mulhu	a4, s0, a5
80001e0c: 13 57 47 00  	srli	a4, a4, 4
80001e10: 33 07 f7 03  	mul	a4, a4, t6
80001e14: 33 07 e5 40  	sub	a4, a0, a4
80001e18: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001e1c: 33 b7 fb 02  	mulhu	a4, s7, a5
80001e20: 13 57 47 00  	srli	a4, a4, 4
80001e24: 33 07 f7 03  	mul	a4, a4, t6
80001e28: 33 87 eb 40  	sub	a4, s7, a4
80001e2c: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001e30: 33 b7 fa 02  	mulhu	a4, s5, a5
80001e34: 13 57 47 00  	srli	a4, a4, 4
80001e38: 33 07 f7 03  	mul	a4, a4, t6
80001e3c: 33 87 ea 40  	sub	a4, s5, a4
80001e40: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001e44: 33 37 ff 02  	mulhu	a4, t5, a5
80001e48: 13 57 47 00  	srli	a4, a4, 4
80001e4c: 33 07 f7 03  	mul	a4, a4, t6
80001e50: 33 07 ef 40  	sub	a4, t5, a4
80001e54: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001e58: 33 37 f9 02  	mulhu	a4, s2, a5
80001e5c: 13 57 47 00  	srli	a4, a4, 4
80001e60: 33 07 f7 03  	mul	a4, a4, t6
80001e64: 33 07 e9 40  	sub	a4, s2, a4
80001e68: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001e6c: 33 37 fb 02  	mulhu	a4, s6, a5
80001e70: 13 57 47 00  	srli	a4, a4, 4
80001e74: 33 07 f7 03  	mul	a4, a4, t6
80001e78: 33 07 eb 40  	sub	a4, s6, a4
80001e7c: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001e80: 33 37 fc 02  	mulhu	a4, s8, a5
80001e84: 13 57 47 00  	srli	a4, a4, 4
80001e88: 33 07 f7 03  	mul	a4, a4, t6
80001e8c: 33 07 ec 40  	sub	a4, s8, a4
80001e90: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001e94: 33 b7 fc 02  	mulhu	a4, s9, a5
80001e98: 13 57 47 00  	srli	a4, a4, 4
80001e9c: 33 07 f7 03  	mul	a4, a4, t6
80001ea0: 33 87 ec 40  	sub	a4, s9, a4
80001ea4: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001ea8: 33 b7 fd 02  	mulhu	a4, s11, a5
80001eac: 13 57 47 00  	srli	a4, a4, 4
80001eb0: 33 07 f7 03  	mul	a4, a4, t6
80001eb4: 33 87 ed 40  	sub	a4, s11, a4
80001eb8: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001ebc: 33 b7 f3 02  	mulhu	a4, t2, a5
80001ec0: 13 57 47 00  	srli	a4, a4, 4
80001ec4: 33 07 f7 03  	mul	a4, a4, t6
80001ec8: 33 87 e3 40  	sub	a4, t2, a4
80001ecc: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001ed0: 33 b7 f8 02  	mulhu	a4, a7, a5
80001ed4: 13 57 47 00  	srli	a4, a4, 4
80001ed8: 33 07 f7 03  	mul	a4, a4, t6
80001edc: 33 87 e8 40  	sub	a4, a7, a4
80001ee0: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001ee4: 33 b7 fe 02  	mulhu	a4, t4, a5
80001ee8: 13 57 47 00  	srli	a4, a4, 4
80001eec: 33 07 f7 03  	mul	a4, a4, t6
80001ef0: 33 87 ee 40  	sub	a4, t4, a4
80001ef4: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001ef8: 33 37 f8 02  	mulhu	a4, a6, a5
80001efc: 13 57 47 00  	srli	a4, a4, 4
80001f00: 33 07 f7 03  	mul	a4, a4, t6
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
80001fc4: 93 89 29 00  	addi	s3, s3, 2
80001fc8: 93 82 32 00  	addi	t0, t0, 3
80001fcc: 13 08 78 01  	addi	a6, a6, 23
80001fd0: 13 0a 4a 00  	addi	s4, s4, 4
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
8000201c: 13 09 e9 00  	addi	s2, s2, 14
80002020: 93 86 06 0b  	addi	a3, a3, 176
80002024: 13 0f df 00  	addi	t5, t5, 13
80002028: 13 07 20 03  	addi	a4, zero, 50
8000202c: e3 9e e9 d0  	bne	s3, a4, 0x80001d48 <.LBB0_98+0x3a8>
80002030: 83 2a 81 02  	lw	s5, 40(sp)
;  for (i = 0; i < ni; i++)
80002034: 13 d5 4a 01  	srli	a0, s5, 20
80002038: 33 35 a0 00  	snez	a0, a0
8000203c: b7 f5 11 00  	lui	a1, 287
80002040: 93 85 95 70  	addi	a1, a1, 1801
80002044: b3 b5 ba 00  	sltu	a1, s5, a1
80002048: b3 73 b5 00  	and	t2, a0, a1
8000204c: 03 25 41 01  	lw	a0, 20(sp)
80002050: 33 f5 a3 00  	and	a0, t2, a0
80002054: 83 25 01 01  	lw	a1, 16(sp)
80002058: 33 75 b5 00  	and	a0, a0, a1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
8000205c: 73 28 00 b0  	csrr	a6, mcycle
80002060: 63 0a 05 50  	beqz	a0, 0x80002574 <.LBB0_99+0xc0>
80002064: 13 05 00 00  	mv	a0, zero
80002068: 93 05 80 00  	addi	a1, zero, 8
8000206c: 13 06 10 01  	addi	a2, zero, 17
;  for (i = 0; i < ni; i++)
80002070: 93 06 00 04  	addi	a3, zero, 64
80002074: 13 07 00 0c  	addi	a4, zero, 192
80002078: ab 20 d6 00  	scfgw	a2, a3
8000207c: ab a0 e5 00  	scfgw	a1, a4
80002080: 93 06 f0 00  	addi	a3, zero, 15
80002084: 13 07 00 06  	addi	a4, zero, 96
80002088: 93 07 00 0e  	addi	a5, zero, 224
8000208c: ab a0 e6 00  	scfgw	a3, a4
80002090: ab a0 f5 00  	scfgw	a1, a5
80002094: 13 07 00 02  	addi	a4, zero, 32
80002098: ab 20 e0 00  	scfgw	zero, a4
8000209c: 2b a0 0a 3a  	scfgwi	s5, 928
800020a0: 13 07 30 01  	addi	a4, zero, 19
800020a4: 93 07 10 00  	addi	a5, zero, 1
800020a8: 93 84 07 04  	addi	s1, a5, 64
800020ac: 13 84 07 0c  	addi	s0, a5, 192
800020b0: ab 20 97 00  	scfgw	a4, s1
800020b4: ab a0 85 00  	scfgw	a1, s0
800020b8: 93 04 80 f6  	addi	s1, zero, -152
800020bc: 13 84 07 06  	addi	s0, a5, 96
800020c0: ab 20 86 00  	scfgw	a2, s0
800020c4: 13 84 07 0e  	addi	s0, a5, 224
800020c8: ab a0 84 00  	scfgw	s1, s0
800020cc: 93 84 07 08  	addi	s1, a5, 128
800020d0: 13 84 07 10  	addi	s0, a5, 256
800020d4: ab a0 96 00  	scfgw	a3, s1
800020d8: ab a0 85 00  	scfgw	a1, s0
800020dc: 93 85 07 02  	addi	a1, a5, 32
800020e0: ab 20 b0 00  	scfgw	zero, a1
800020e4: 83 25 c1 01  	lw	a1, 28(sp)
800020e8: 2b a0 15 34  	scfgwi	a1, 833
800020ec: 93 05 00 09  	addi	a1, zero, 144
800020f0: 93 07 20 00  	addi	a5, zero, 2
800020f4: 93 84 07 04  	addi	s1, a5, 64
800020f8: 13 84 07 0c  	addi	s0, a5, 192
800020fc: ab 20 97 00  	scfgw	a4, s1
80002100: ab a0 85 00  	scfgw	a1, s0
80002104: b7 f5 ff ff  	lui	a1, 1048575
80002108: 13 87 85 55  	addi	a4, a1, 1368
8000210c: 93 84 07 06  	addi	s1, a5, 96
80002110: 13 84 07 0e  	addi	s0, a5, 224
80002114: ab 20 96 00  	scfgw	a2, s1
80002118: ab 20 87 00  	scfgw	a4, s0
8000211c: 93 85 85 4c  	addi	a1, a1, 1224
80002120: 13 86 07 08  	addi	a2, a5, 128
80002124: 13 87 07 10  	addi	a4, a5, 256
80002128: ab a0 c6 00  	scfgw	a3, a2
8000212c: ab a0 e5 00  	scfgw	a1, a4
80002130: 93 85 07 02  	addi	a1, a5, 32
80002134: ab 20 b0 00  	scfgw	zero, a1
80002138: 83 25 81 01  	lw	a1, 24(sp)
8000213c: 2b a0 25 34  	scfgwi	a1, 834
80002140: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80002144: 93 05 00 01  	addi	a1, zero, 16
80002148: 03 2b 41 02  	lw	s6, 36(sp)
8000214c: 83 2b 01 02  	lw	s7, 32(sp)
80002150: 03 2c 01 03  	lw	s8, 48(sp)
80002154: 13 06 20 01  	addi	a2, zero, 18
;         x += A[i][k] * B[k][j];
80002158: d3 71 11 12  	fmul.d	ft3, ft2, ft1
8000215c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002160: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002164: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002168: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000216c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002170: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002174: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002178: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000217c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002180: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002184: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002188: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000218c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002190: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002194: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002198: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000219c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021a0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021a4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       E[i][j] = x;
800021a8: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nj; j++)
800021ac: 13 06 f6 ff  	addi	a2, a2, -1
800021b0: e3 14 06 fa  	bnez	a2, 0x80002158 <.LBB0_98+0x7b8>
;  for (i = 0; i < ni; i++)
800021b4: 13 05 15 00  	addi	a0, a0, 1
800021b8: e3 1e b5 f8  	bne	a0, a1, 0x80002154 <.LBB0_98+0x7b4>
800021bc: 73 f5 00 7c  	csrrci	a0, 1984, 1
;   for (i = 0; i < nj; i++)
800021c0: 13 55 4b 01  	srli	a0, s6, 20
800021c4: 33 35 a0 00  	snez	a0, a0
800021c8: b7 f5 11 00  	lui	a1, 287
800021cc: 93 85 95 3a  	addi	a1, a1, 937
800021d0: b3 35 bb 00  	sltu	a1, s6, a1
800021d4: b3 78 b5 00  	and	a7, a0, a1
800021d8: 03 25 c1 00  	lw	a0, 12(sp)
800021dc: 33 f5 a8 00  	and	a0, a7, a0
800021e0: 83 25 81 00  	lw	a1, 8(sp)
800021e4: 33 75 b5 00  	and	a0, a0, a1
800021e8: 63 04 05 66  	beqz	a0, 0x80002850 <.LBB0_99+0x39c>
800021ec: 13 05 00 00  	mv	a0, zero
800021f0: 93 05 80 00  	addi	a1, zero, 8
800021f4: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < nj; i++)
800021f8: 93 06 00 04  	addi	a3, zero, 64
800021fc: 13 07 00 0c  	addi	a4, zero, 192
80002200: ab 20 d6 00  	scfgw	a2, a3
80002204: ab a0 e5 00  	scfgw	a1, a4
80002208: 93 06 10 01  	addi	a3, zero, 17
8000220c: 13 07 00 06  	addi	a4, zero, 96
80002210: 93 07 00 0e  	addi	a5, zero, 224
80002214: ab a0 e6 00  	scfgw	a3, a4
80002218: ab a0 f5 00  	scfgw	a1, a5
8000221c: 13 07 00 02  	addi	a4, zero, 32
80002220: ab 20 e0 00  	scfgw	zero, a4
80002224: 2b 20 0b 3a  	scfgwi	s6, 928
80002228: 13 07 70 01  	addi	a4, zero, 23
8000222c: 93 07 10 00  	addi	a5, zero, 1
80002230: 93 84 07 04  	addi	s1, a5, 64
80002234: 13 84 07 0c  	addi	s0, a5, 192
80002238: ab 20 97 00  	scfgw	a4, s1
8000223c: ab a0 85 00  	scfgw	a1, s0
80002240: 93 04 80 f4  	addi	s1, zero, -184
80002244: 13 84 07 06  	addi	s0, a5, 96
80002248: ab 20 86 00  	scfgw	a2, s0
8000224c: 13 84 07 0e  	addi	s0, a5, 224
80002250: ab a0 84 00  	scfgw	s1, s0
80002254: 93 84 07 08  	addi	s1, a5, 128
80002258: 13 84 07 10  	addi	s0, a5, 256
8000225c: ab a0 96 00  	scfgw	a3, s1
80002260: ab a0 85 00  	scfgw	a1, s0
80002264: 93 85 07 02  	addi	a1, a5, 32
80002268: ab 20 b0 00  	scfgw	zero, a1
8000226c: 2b a0 1b 34  	scfgwi	s7, 833
80002270: 93 05 00 0b  	addi	a1, zero, 176
80002274: 93 07 20 00  	addi	a5, zero, 2
80002278: 93 84 07 04  	addi	s1, a5, 64
8000227c: 13 84 07 0c  	addi	s0, a5, 192
80002280: ab 20 97 00  	scfgw	a4, s1
80002284: ab a0 85 00  	scfgw	a1, s0
80002288: b7 f5 ff ff  	lui	a1, 1048575
8000228c: 13 87 85 03  	addi	a4, a1, 56
80002290: 93 84 07 06  	addi	s1, a5, 96
80002294: 13 84 07 0e  	addi	s0, a5, 224
80002298: ab 20 96 00  	scfgw	a2, s1
8000229c: ab 20 87 00  	scfgw	a4, s0
800022a0: 93 85 85 f8  	addi	a1, a1, -120
800022a4: 13 86 07 08  	addi	a2, a5, 128
800022a8: 13 87 07 10  	addi	a4, a5, 256
800022ac: ab a0 c6 00  	scfgw	a3, a2
800022b0: ab a0 e5 00  	scfgw	a1, a4
800022b4: 93 85 07 02  	addi	a1, a5, 32
800022b8: ab 20 b0 00  	scfgw	zero, a1
800022bc: 2b 20 2c 34  	scfgwi	s8, 834
800022c0: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800022c4: 93 05 20 01  	addi	a1, zero, 18
800022c8: 13 06 60 01  	addi	a2, zero, 22
;         x += C[i][k] * D[k][j];
800022cc: d3 71 11 12  	fmul.d	ft3, ft2, ft1
800022d0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022d4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022d8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022dc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022e0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022e4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022e8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022ec: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022f0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022f4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022f8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800022fc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002300: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002304: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002308: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000230c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002310: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002314: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002318: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000231c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002320: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002324: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002328: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       F[i][j] = x;
8000232c: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nl; j++)
80002330: 13 06 f6 ff  	addi	a2, a2, -1
80002334: e3 1c 06 f8  	bnez	a2, 0x800022cc <.LBB0_98+0x92c>
;   for (i = 0; i < nj; i++)
80002338: 13 05 15 00  	addi	a0, a0, 1
8000233c: e3 16 b5 f8  	bne	a0, a1, 0x800022c8 <.LBB0_98+0x928>
80002340: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002344: 83 29 c1 02  	lw	s3, 44(sp)
;   for (i = 0; i < ni; i++)
80002348: 13 d5 49 01  	srli	a0, s3, 20
8000234c: 33 35 a0 00  	snez	a0, a0
80002350: b7 f5 11 00  	lui	a1, 287
80002354: 93 85 95 50  	addi	a1, a1, 1289
80002358: b3 b5 b9 00  	sltu	a1, s3, a1
8000235c: 33 79 b5 00  	and	s2, a0, a1
80002360: 33 f5 23 01  	and	a0, t2, s2
80002364: 33 f5 a8 00  	and	a0, a7, a0
80002368: e3 0a 05 00  	beqz	a0, 0x80002b7c <.LBB0_99+0x6c8>
8000236c: 13 05 00 00  	mv	a0, zero
80002370: 93 05 80 00  	addi	a1, zero, 8
80002374: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++)
80002378: 93 06 00 04  	addi	a3, zero, 64
8000237c: 13 07 00 0c  	addi	a4, zero, 192
80002380: ab 20 d6 00  	scfgw	a2, a3
80002384: ab a0 e5 00  	scfgw	a1, a4
80002388: 93 06 f0 00  	addi	a3, zero, 15
8000238c: 13 07 00 06  	addi	a4, zero, 96
80002390: 93 07 00 0e  	addi	a5, zero, 224
80002394: ab a0 e6 00  	scfgw	a3, a4
80002398: ab a0 f5 00  	scfgw	a1, a5
8000239c: 13 07 00 02  	addi	a4, zero, 32
800023a0: ab 20 e0 00  	scfgw	zero, a4
800023a4: 2b a0 09 3a  	scfgwi	s3, 928
800023a8: 13 07 10 01  	addi	a4, zero, 17
800023ac: 93 07 10 00  	addi	a5, zero, 1
800023b0: 93 84 07 04  	addi	s1, a5, 64
800023b4: 13 84 07 0c  	addi	s0, a5, 192
800023b8: ab 20 97 00  	scfgw	a4, s1
800023bc: ab a0 85 00  	scfgw	a1, s0
800023c0: 93 04 80 f7  	addi	s1, zero, -136
800023c4: 13 84 07 06  	addi	s0, a5, 96
800023c8: ab 20 86 00  	scfgw	a2, s0
800023cc: 13 84 07 0e  	addi	s0, a5, 224
800023d0: ab a0 84 00  	scfgw	s1, s0
800023d4: 93 84 07 08  	addi	s1, a5, 128
800023d8: 13 84 07 10  	addi	s0, a5, 256
800023dc: ab a0 96 00  	scfgw	a3, s1
800023e0: ab a0 85 00  	scfgw	a1, s0
800023e4: 93 85 07 02  	addi	a1, a5, 32
800023e8: ab 20 b0 00  	scfgw	zero, a1
800023ec: 2b a0 1a 34  	scfgwi	s5, 833
800023f0: 93 05 00 0b  	addi	a1, zero, 176
800023f4: 93 07 20 00  	addi	a5, zero, 2
800023f8: 93 84 07 04  	addi	s1, a5, 64
800023fc: 13 84 07 0c  	addi	s0, a5, 192
80002400: ab 20 97 00  	scfgw	a4, s1
80002404: ab a0 85 00  	scfgw	a1, s0
80002408: b7 f5 ff ff  	lui	a1, 1048575
8000240c: 13 87 85 45  	addi	a4, a1, 1112
80002410: 93 84 07 06  	addi	s1, a5, 96
80002414: 13 84 07 0e  	addi	s0, a5, 224
80002418: ab 20 96 00  	scfgw	a2, s1
8000241c: ab 20 87 00  	scfgw	a4, s0
80002420: 93 85 85 3a  	addi	a1, a1, 936
80002424: 13 86 07 08  	addi	a2, a5, 128
80002428: 13 87 07 10  	addi	a4, a5, 256
8000242c: ab a0 c6 00  	scfgw	a3, a2
80002430: ab a0 e5 00  	scfgw	a1, a4
80002434: 93 85 07 02  	addi	a1, a5, 32
80002438: ab 20 b0 00  	scfgw	zero, a1
8000243c: 2b 20 2b 34  	scfgwi	s6, 834
80002440: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80002444: 93 05 00 01  	addi	a1, zero, 16
80002448: 13 06 60 01  	addi	a2, zero, 22
;         x += E[i][k] * F[k][j];
8000244c: d3 71 11 12  	fmul.d	ft3, ft2, ft1
80002450: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002454: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002458: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000245c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002460: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002464: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002468: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000246c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002470: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002474: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002478: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000247c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002480: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002484: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002488: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000248c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002490: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       G[i][j] = x;
80002494: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nl; j++)
80002498: 13 06 f6 ff  	addi	a2, a2, -1
8000249c: e3 18 06 fa  	bnez	a2, 0x8000244c <.LBB0_98+0xaac>
;   for (i = 0; i < ni; i++)
800024a0: 13 05 15 00  	addi	a0, a0, 1
800024a4: e3 12 b5 fa  	bne	a0, a1, 0x80002448 <.LBB0_98+0xaa8>
800024a8: 73 f5 00 7c  	csrrci	a0, 1984, 1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800024ac: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
800024b0: b3 05 05 41  	sub	a1, a0, a6

800024b4 <.LBB0_99>:
800024b4: 17 35 00 00  	auipc	a0, 3
800024b8: 13 05 d5 e2  	addi	a0, a0, -467
800024bc: 97 10 00 00  	auipc	ra, 1
800024c0: e7 80 c0 ad  	jalr	-1316(ra)
800024c4: e3 00 09 16  	beqz	s2, 0x80002e24 <.LBB0_99+0x970>
800024c8: 13 05 80 00  	addi	a0, zero, 8
800024cc: 93 05 50 01  	addi	a1, zero, 21
;     for (int i = 0; i < n; i++){
800024d0: 13 06 00 04  	addi	a2, zero, 64
800024d4: 93 06 00 0c  	addi	a3, zero, 192
800024d8: ab a0 c5 00  	scfgw	a1, a2
800024dc: ab 20 d5 00  	scfgw	a0, a3
800024e0: 93 05 f0 00  	addi	a1, zero, 15
800024e4: 13 06 00 06  	addi	a2, zero, 96
800024e8: 93 06 00 0e  	addi	a3, zero, 224
800024ec: ab a0 c5 00  	scfgw	a1, a2
800024f0: ab 20 d5 00  	scfgw	a0, a3
800024f4: 13 05 00 02  	addi	a0, zero, 32
800024f8: ab 20 a0 00  	scfgw	zero, a0
800024fc: 2b a0 09 32  	scfgwi	s3, 800
80002500: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002504: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002508: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
8000250c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002510: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002514: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002518: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000251c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002520: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002524: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002528: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000252c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002530: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002534: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002538: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000253c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002540: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002544: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002548: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000254c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002550: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002554: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002558: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000255c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80002560: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80002564: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80002568: e3 12 05 fa  	bnez	a0, 0x8000250c <.LBB0_99+0x58>
8000256c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002570: 6f 00 d0 17  	j	0x80002eec <.LBB0_100>
80002574: 13 0a 00 00  	mv	s4, zero
80002578: 03 25 81 01  	lw	a0, 24(sp)
;  for (i = 0; i < ni; i++)
8000257c: 93 02 05 09  	addi	t0, a0, 144
80002580: 93 05 85 55  	addi	a1, a0, 1368
80002584: 13 83 85 55  	addi	t1, a1, 1368
80002588: 93 05 05 51  	addi	a1, a0, 1296
8000258c: 93 8e 05 51  	addi	t4, a1, 1296
80002590: 93 d5 42 01  	srli	a1, t0, 20
80002594: b3 35 b0 00  	snez	a1, a1
80002598: 37 06 12 00  	lui	a2, 288
8000259c: 13 06 96 f7  	addi	a2, a2, -135
800025a0: b3 b6 c2 00  	sltu	a3, t0, a2
800025a4: b3 f5 d5 00  	and	a1, a1, a3
800025a8: 93 56 43 01  	srli	a3, t1, 20
800025ac: b3 36 d0 00  	snez	a3, a3
800025b0: 33 37 c3 00  	sltu	a4, t1, a2
800025b4: b3 f6 e6 00  	and	a3, a3, a4
800025b8: b3 f5 d5 00  	and	a1, a1, a3
800025bc: 93 d6 4e 01  	srli	a3, t4, 20
800025c0: b3 36 d0 00  	snez	a3, a3
800025c4: 33 b6 ce 00  	sltu	a2, t4, a2
800025c8: 33 f6 c6 00  	and	a2, a3, a2
800025cc: 33 77 b6 00  	and	a4, a2, a1
800025d0: 93 08 00 0a  	addi	a7, zero, 160
800025d4: 13 0f 80 00  	addi	t5, zero, 8
800025d8: 93 0f 10 01  	addi	t6, zero, 17
800025dc: 13 09 10 00  	addi	s2, zero, 1
800025e0: 93 09 20 00  	addi	s3, zero, 2
800025e4: 13 06 00 09  	addi	a2, zero, 144
800025e8: 13 0e 00 01  	addi	t3, zero, 16
800025ec: 93 86 0a 00  	mv	a3, s5
800025f0: 03 2b 41 02  	lw	s6, 36(sp)
800025f4: 83 2b 01 02  	lw	s7, 32(sp)
800025f8: 03 2c 01 03  	lw	s8, 48(sp)
800025fc: 83 25 c1 01  	lw	a1, 28(sp)
80002600: 6f 00 00 01  	j	0x80002610 <.LBB0_99+0x15c>
80002604: 13 0a 1a 00  	addi	s4, s4, 1
80002608: 93 86 06 09  	addi	a3, a3, 144
8000260c: e3 0a ca bb  	beq	s4, t3, 0x800021c0 <.LBB0_98+0x820>
;         x += A[i][k] * B[k][j];
80002610: b3 04 1a 03  	mul	s1, s4, a7
80002614: b3 84 95 00  	add	s1, a1, s1
80002618: 87 b1 84 02  	fld	ft3, 40(s1)
8000261c: 07 b2 04 03  	fld	ft4, 48(s1)
80002620: 87 b2 84 03  	fld	ft5, 56(s1)
80002624: 07 b3 04 04  	fld	ft6, 64(s1)
80002628: 87 b3 84 04  	fld	ft7, 72(s1)
8000262c: 07 b5 04 05  	fld	fa0, 80(s1)
80002630: 87 b5 84 05  	fld	fa1, 88(s1)
80002634: 07 b6 04 06  	fld	fa2, 96(s1)
80002638: 87 b6 84 06  	fld	fa3, 104(s1)
8000263c: 07 b7 04 07  	fld	fa4, 112(s1)
80002640: 87 b7 84 07  	fld	fa5, 120(s1)
80002644: 07 b8 04 08  	fld	fa6, 128(s1)
80002648: 87 b8 84 08  	fld	fa7, 136(s1)
8000264c: 07 be 04 09  	fld	ft8, 144(s1)
80002650: 87 be 04 00  	fld	ft9, 0(s1)
80002654: 07 bf 84 00  	fld	ft10, 8(s1)
80002658: 87 bf 04 01  	fld	ft11, 16(s1)
8000265c: 07 b4 84 01  	fld	fs0, 24(s1)
80002660: 87 b4 04 02  	fld	fs1, 32(s1)
80002664: 07 b9 84 09  	fld	fs2, 152(s1)
80002668: 93 04 00 00  	mv	s1, zero
8000266c: 63 0c 07 10  	beqz	a4, 0x80002784 <.LBB0_99+0x2d0>
;     for (j = 0; j < nj; j++)
80002670: 13 04 00 04  	addi	s0, zero, 64
80002674: ab a0 8f 00  	scfgw	t6, s0
80002678: 13 04 00 0c  	addi	s0, zero, 192
8000267c: ab 20 8f 00  	scfgw	t5, s0
80002680: 13 04 00 02  	addi	s0, zero, 32
80002684: ab 20 80 00  	scfgw	zero, s0
80002688: 2b a0 02 30  	scfgwi	t0, 768
8000268c: 13 04 09 04  	addi	s0, s2, 64
80002690: ab a0 8f 00  	scfgw	t6, s0
80002694: 13 04 09 0c  	addi	s0, s2, 192
80002698: ab 20 8f 00  	scfgw	t5, s0
8000269c: 13 04 09 02  	addi	s0, s2, 32
800026a0: ab 20 80 00  	scfgw	zero, s0
800026a4: 2b 20 13 30  	scfgwi	t1, 769
800026a8: 13 84 09 04  	addi	s0, s3, 64
800026ac: ab a0 8f 00  	scfgw	t6, s0
800026b0: 13 84 09 0c  	addi	s0, s3, 192
800026b4: ab 20 8f 00  	scfgw	t5, s0
800026b8: 13 84 09 02  	addi	s0, s3, 32
800026bc: ab 20 80 00  	scfgw	zero, s0
800026c0: 2b a0 2e 30  	scfgwi	t4, 770
800026c4: 73 e4 00 7c  	csrrsi	s0, 1984, 1
;         x += A[i][k] * B[k][j];
800026c8: b3 07 95 00  	add	a5, a0, s1
800026cc: 87 b9 07 00  	fld	fs3, 0(a5)
800026d0: 87 ba 07 12  	fld	fs5, 288(a5)
800026d4: 07 bb 07 1b  	fld	fs6, 432(a5)
800026d8: d3 f9 d9 13  	fmul.d	fs3, fs3, ft9
800026dc: c3 79 e0 9b  	fmadd.d	fs3, ft0, ft10, fs3
800026e0: c3 f9 fa 9b  	fmadd.d	fs3, fs5, ft11, fs3
800026e4: c3 79 8b 9a  	fmadd.d	fs3, fs6, fs0, fs3
800026e8: 07 ba 07 24  	fld	fs4, 576(a5)
800026ec: 87 ba 07 2d  	fld	fs5, 720(a5)
800026f0: 07 bb 07 36  	fld	fs6, 864(a5)
800026f4: 87 bb 07 3f  	fld	fs7, 1008(a5)
800026f8: c3 79 9a 9a  	fmadd.d	fs3, fs4, fs1, fs3
800026fc: c3 f9 3a 9a  	fmadd.d	fs3, fs5, ft3, fs3
80002700: c3 79 4b 9a  	fmadd.d	fs3, fs6, ft4, fs3
80002704: c3 f9 5b 9a  	fmadd.d	fs3, fs7, ft5, fs3
80002708: 07 ba 07 48  	fld	fs4, 1152(a5)
8000270c: 87 ba 07 51  	fld	fs5, 1296(a5)
80002710: 07 bb 07 5a  	fld	fs6, 1440(a5)
80002714: 87 bb 07 63  	fld	fs7, 1584(a5)
80002718: c3 79 6a 9a  	fmadd.d	fs3, fs4, ft6, fs3
8000271c: c3 f9 7a 9a  	fmadd.d	fs3, fs5, ft7, fs3
80002720: c3 79 ab 9a  	fmadd.d	fs3, fs6, fa0, fs3
80002724: c3 f9 bb 9a  	fmadd.d	fs3, fs7, fa1, fs3
80002728: 07 ba 07 6c  	fld	fs4, 1728(a5)
8000272c: 87 ba 07 75  	fld	fs5, 1872(a5)
80002730: 07 bb 07 7e  	fld	fs6, 2016(a5)
80002734: 13 84 87 43  	addi	s0, a5, 1080
80002738: 87 3b 84 43  	fld	fs7, 1080(s0)
8000273c: c3 79 ca 9a  	fmadd.d	fs3, fs4, fa2, fs3
80002740: c3 f9 da 9a  	fmadd.d	fs3, fs5, fa3, fs3
80002744: c3 79 eb 9a  	fmadd.d	fs3, fs6, fa4, fs3
80002748: c3 f9 fb 9a  	fmadd.d	fs3, fs7, fa5, fs3
8000274c: 13 84 07 48  	addi	s0, a5, 1152
80002750: 07 3a 04 48  	fld	fs4, 1152(s0)
80002754: 93 87 87 4c  	addi	a5, a5, 1224
80002758: 87 ba 87 4c  	fld	fs5, 1224(a5)
8000275c: c3 79 0a 9b  	fmadd.d	fs3, fs4, fa6, fs3
80002760: c3 f9 1a 9b  	fmadd.d	fs3, fs5, fa7, fs3
80002764: c3 79 c1 9b  	fmadd.d	fs3, ft2, ft8, fs3
80002768: c3 f9 20 9b  	fmadd.d	fs3, ft1, fs2, fs3
;       E[i][j] = x;
8000276c: b3 87 96 00  	add	a5, a3, s1
;     for (j = 0; j < nj; j++)
80002770: 93 84 84 00  	addi	s1, s1, 8
;       E[i][j] = x;
80002774: 27 b0 37 01  	fsd	fs3, 0(a5)
;     for (j = 0; j < nj; j++)
80002778: e3 98 c4 f4  	bne	s1, a2, 0x800026c8 <.LBB0_99+0x214>
8000277c: f3 f7 00 7c  	csrrci	a5, 1984, 1
80002780: 6f f0 5f e8  	j	0x80002604 <.LBB0_99+0x150>
;         x += A[i][k] * B[k][j];
80002784: 33 04 95 00  	add	s0, a0, s1
80002788: 87 39 04 00  	fld	fs3, 0(s0)
8000278c: 07 3a 04 09  	fld	fs4, 144(s0)
80002790: 87 3a 04 12  	fld	fs5, 288(s0)
80002794: 07 3b 04 1b  	fld	fs6, 432(s0)
80002798: d3 f9 d9 13  	fmul.d	fs3, fs3, ft9
8000279c: c3 79 ea 9b  	fmadd.d	fs3, fs4, ft10, fs3
800027a0: c3 f9 fa 9b  	fmadd.d	fs3, fs5, ft11, fs3
800027a4: c3 79 8b 9a  	fmadd.d	fs3, fs6, fs0, fs3
800027a8: 07 3a 04 24  	fld	fs4, 576(s0)
800027ac: 87 3a 04 2d  	fld	fs5, 720(s0)
800027b0: 07 3b 04 36  	fld	fs6, 864(s0)
800027b4: 87 3b 04 3f  	fld	fs7, 1008(s0)
800027b8: c3 79 9a 9a  	fmadd.d	fs3, fs4, fs1, fs3
800027bc: c3 f9 3a 9a  	fmadd.d	fs3, fs5, ft3, fs3
800027c0: c3 79 4b 9a  	fmadd.d	fs3, fs6, ft4, fs3
800027c4: c3 f9 5b 9a  	fmadd.d	fs3, fs7, ft5, fs3
800027c8: 07 3a 04 48  	fld	fs4, 1152(s0)
800027cc: 87 3a 04 51  	fld	fs5, 1296(s0)
800027d0: 07 3b 04 5a  	fld	fs6, 1440(s0)
800027d4: 87 3b 04 63  	fld	fs7, 1584(s0)
800027d8: c3 79 6a 9a  	fmadd.d	fs3, fs4, ft6, fs3
800027dc: c3 f9 7a 9a  	fmadd.d	fs3, fs5, ft7, fs3
800027e0: c3 79 ab 9a  	fmadd.d	fs3, fs6, fa0, fs3
800027e4: c3 f9 bb 9a  	fmadd.d	fs3, fs7, fa1, fs3
800027e8: 07 3a 04 6c  	fld	fs4, 1728(s0)
800027ec: 87 3a 04 75  	fld	fs5, 1872(s0)
800027f0: 07 3b 04 7e  	fld	fs6, 2016(s0)
800027f4: 93 07 84 43  	addi	a5, s0, 1080
800027f8: 87 bb 87 43  	fld	fs7, 1080(a5)
800027fc: c3 79 ca 9a  	fmadd.d	fs3, fs4, fa2, fs3
80002800: c3 f9 da 9a  	fmadd.d	fs3, fs5, fa3, fs3
80002804: c3 79 eb 9a  	fmadd.d	fs3, fs6, fa4, fs3
80002808: c3 f9 fb 9a  	fmadd.d	fs3, fs7, fa5, fs3
8000280c: 93 07 04 48  	addi	a5, s0, 1152
80002810: 07 ba 07 48  	fld	fs4, 1152(a5)
80002814: 93 07 84 4c  	addi	a5, s0, 1224
80002818: 87 ba 87 4c  	fld	fs5, 1224(a5)
8000281c: 93 07 04 51  	addi	a5, s0, 1296
80002820: 07 bb 07 51  	fld	fs6, 1296(a5)
80002824: 93 07 84 55  	addi	a5, s0, 1368
80002828: 87 bb 87 55  	fld	fs7, 1368(a5)
8000282c: c3 79 0a 9b  	fmadd.d	fs3, fs4, fa6, fs3
80002830: c3 f9 1a 9b  	fmadd.d	fs3, fs5, fa7, fs3
80002834: c3 79 cb 9b  	fmadd.d	fs3, fs6, ft8, fs3
80002838: c3 f9 2b 9b  	fmadd.d	fs3, fs7, fs2, fs3
;       E[i][j] = x;
8000283c: b3 87 96 00  	add	a5, a3, s1
;     for (j = 0; j < nj; j++)
80002840: 93 84 84 00  	addi	s1, s1, 8
;       E[i][j] = x;
80002844: 27 b0 37 01  	fsd	fs3, 0(a5)
;     for (j = 0; j < nj; j++)
80002848: e3 9e c4 f2  	bne	s1, a2, 0x80002784 <.LBB0_99+0x2d0>
8000284c: 6f f0 9f db  	j	0x80002604 <.LBB0_99+0x150>
80002850: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nj; i++)
80002854: 13 03 0c 0b  	addi	t1, s8, 176
80002858: 93 05 8c 7e  	addi	a1, s8, 2024
8000285c: 13 8e 85 7e  	addi	t3, a1, 2024
80002860: 93 05 0c 79  	addi	a1, s8, 1936
80002864: 93 8e 05 79  	addi	t4, a1, 1936
80002868: 93 55 43 01  	srli	a1, t1, 20
8000286c: b3 35 b0 00  	snez	a1, a1
80002870: 37 06 12 00  	lui	a2, 288
80002874: 13 06 96 f5  	addi	a2, a2, -167
80002878: b3 36 c3 00  	sltu	a3, t1, a2
8000287c: b3 f5 d5 00  	and	a1, a1, a3
80002880: 93 56 4e 01  	srli	a3, t3, 20
80002884: b3 36 d0 00  	snez	a3, a3
80002888: 33 37 ce 00  	sltu	a4, t3, a2
8000288c: b3 f6 e6 00  	and	a3, a3, a4
80002890: b3 f5 d5 00  	and	a1, a1, a3
80002894: 93 d6 4e 01  	srli	a3, t4, 20
80002898: b3 36 d0 00  	snez	a3, a3
8000289c: 33 b6 ce 00  	sltu	a2, t4, a2
800028a0: 33 f6 c6 00  	and	a2, a3, a2
800028a4: b3 77 b6 00  	and	a5, a2, a1
800028a8: 93 05 0c 42  	addi	a1, s8, 1056
800028ac: 93 84 05 42  	addi	s1, a1, 1056
800028b0: 93 02 00 0c  	addi	t0, zero, 192
800028b4: 93 0f 80 00  	addi	t6, zero, 8
800028b8: 13 09 50 01  	addi	s2, zero, 21
800028bc: 93 09 10 00  	addi	s3, zero, 1
800028c0: 13 0a 20 00  	addi	s4, zero, 2
800028c4: 93 06 00 0b  	addi	a3, zero, 176
800028c8: 13 0f 20 01  	addi	t5, zero, 18
800028cc: 13 07 0b 00  	mv	a4, s6
800028d0: 6f 00 00 01  	j	0x800028e0 <.LBB0_99+0x42c>
800028d4: 13 05 15 00  	addi	a0, a0, 1
800028d8: 13 07 07 0b  	addi	a4, a4, 176
800028dc: e3 04 e5 a7  	beq	a0, t5, 0x80002344 <.LBB0_98+0x9a4>
;         x += C[i][k] * D[k][j];
800028e0: 33 04 55 02  	mul	s0, a0, t0
800028e4: 33 84 8b 00  	add	s0, s7, s0
800028e8: 87 31 84 04  	fld	ft3, 72(s0)
800028ec: 07 32 04 05  	fld	ft4, 80(s0)
800028f0: 87 32 84 05  	fld	ft5, 88(s0)
800028f4: 07 33 04 06  	fld	ft6, 96(s0)
800028f8: 87 33 84 06  	fld	ft7, 104(s0)
800028fc: 07 35 04 07  	fld	fa0, 112(s0)
80002900: 87 35 84 07  	fld	fa1, 120(s0)
80002904: 07 36 04 08  	fld	fa2, 128(s0)
80002908: 87 36 84 08  	fld	fa3, 136(s0)
8000290c: 07 37 04 09  	fld	fa4, 144(s0)
80002910: 87 37 04 00  	fld	fa5, 0(s0)
80002914: 07 38 84 00  	fld	fa6, 8(s0)
80002918: 87 38 04 01  	fld	fa7, 16(s0)
8000291c: 07 3e 84 01  	fld	ft8, 24(s0)
80002920: 87 3e 04 02  	fld	ft9, 32(s0)
80002924: 07 3f 84 02  	fld	ft10, 40(s0)
80002928: 87 3f 04 03  	fld	ft11, 48(s0)
8000292c: 07 34 84 03  	fld	fs0, 56(s0)
80002930: 87 34 04 04  	fld	fs1, 64(s0)
80002934: 07 39 84 09  	fld	fs2, 152(s0)
80002938: 87 39 04 0a  	fld	fs3, 160(s0)
8000293c: 07 3a 84 0a  	fld	fs4, 168(s0)
80002940: 87 3a 04 0b  	fld	fs5, 176(s0)
80002944: 07 3b 84 0b  	fld	fs6, 184(s0)
80002948: 13 04 00 00  	mv	s0, zero
8000294c: 63 8a 07 14  	beqz	a5, 0x80002aa0 <.LBB0_99+0x5ec>
;     for (j = 0; j < nl; j++)
80002950: 93 05 00 04  	addi	a1, zero, 64
80002954: ab 20 b9 00  	scfgw	s2, a1
80002958: 93 05 00 0c  	addi	a1, zero, 192
8000295c: ab a0 bf 00  	scfgw	t6, a1
80002960: 93 05 00 02  	addi	a1, zero, 32
80002964: ab 20 b0 00  	scfgw	zero, a1
80002968: 2b 20 03 30  	scfgwi	t1, 768
8000296c: 93 85 09 04  	addi	a1, s3, 64
80002970: ab 20 b9 00  	scfgw	s2, a1
80002974: 93 85 09 0c  	addi	a1, s3, 192
80002978: ab a0 bf 00  	scfgw	t6, a1
8000297c: 93 85 09 02  	addi	a1, s3, 32
80002980: ab 20 b0 00  	scfgw	zero, a1
80002984: 2b 20 1e 30  	scfgwi	t3, 769
80002988: 93 05 0a 04  	addi	a1, s4, 64
8000298c: ab 20 b9 00  	scfgw	s2, a1
80002990: 93 05 0a 0c  	addi	a1, s4, 192
80002994: ab a0 bf 00  	scfgw	t6, a1
80002998: 93 05 0a 02  	addi	a1, s4, 32
8000299c: ab 20 b0 00  	scfgw	zero, a1
800029a0: 2b a0 2e 30  	scfgwi	t4, 770
800029a4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
;         x += C[i][k] * D[k][j];
800029a8: b3 05 8c 00  	add	a1, s8, s0
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
800029f8: c3 7b 9c ba  	fmadd.d	fs7, fs8, fs1, fs7
800029fc: c3 fb 3c ba  	fmadd.d	fs7, fs9, ft3, fs7
80002a00: c3 7b 4d ba  	fmadd.d	fs7, fs10, ft4, fs7
80002a04: c3 fb 5d ba  	fmadd.d	fs7, fs11, ft5, fs7
80002a08: 13 86 05 42  	addi	a2, a1, 1056
80002a0c: 07 3c 06 42  	fld	fs8, 1056(a2)
80002a10: 13 86 85 47  	addi	a2, a1, 1144
80002a14: 87 3c 86 47  	fld	fs9, 1144(a2)
80002a18: 13 86 05 4d  	addi	a2, a1, 1232
80002a1c: 07 3d 06 4d  	fld	fs10, 1232(a2)
80002a20: 13 86 85 52  	addi	a2, a1, 1320
80002a24: 87 3d 86 52  	fld	fs11, 1320(a2)
80002a28: c3 7b 6c ba  	fmadd.d	fs7, fs8, ft6, fs7
80002a2c: c3 fb 7c ba  	fmadd.d	fs7, fs9, ft7, fs7
80002a30: c3 7b ad ba  	fmadd.d	fs7, fs10, fa0, fs7
80002a34: c3 fb bd ba  	fmadd.d	fs7, fs11, fa1, fs7
80002a38: 13 86 05 58  	addi	a2, a1, 1408
80002a3c: 07 3c 06 58  	fld	fs8, 1408(a2)
80002a40: 13 86 85 5d  	addi	a2, a1, 1496
80002a44: 87 3c 86 5d  	fld	fs9, 1496(a2)
80002a48: 13 86 05 63  	addi	a2, a1, 1584
80002a4c: 07 3d 06 63  	fld	fs10, 1584(a2)
80002a50: 13 86 85 68  	addi	a2, a1, 1672
80002a54: 87 3d 86 68  	fld	fs11, 1672(a2)
80002a58: c3 7b cc ba  	fmadd.d	fs7, fs8, fa2, fs7
80002a5c: c3 fb dc ba  	fmadd.d	fs7, fs9, fa3, fs7
80002a60: c3 7b ed ba  	fmadd.d	fs7, fs10, fa4, fs7
80002a64: c3 fb 2d bb  	fmadd.d	fs7, fs11, fs2, fs7
80002a68: 13 86 05 6e  	addi	a2, a1, 1760
80002a6c: 07 3c 06 6e  	fld	fs8, 1760(a2)
80002a70: 93 85 85 73  	addi	a1, a1, 1848
80002a74: 87 bc 85 73  	fld	fs9, 1848(a1)
80002a78: c3 7b 3c bb  	fmadd.d	fs7, fs8, fs3, fs7
80002a7c: c3 fb 4c bb  	fmadd.d	fs7, fs9, fs4, fs7
80002a80: c3 7b 51 bb  	fmadd.d	fs7, ft2, fs5, fs7
80002a84: c3 fb 60 bb  	fmadd.d	fs7, ft1, fs6, fs7
;       F[i][j] = x;
80002a88: b3 05 87 00  	add	a1, a4, s0
;     for (j = 0; j < nl; j++)
80002a8c: 13 04 84 00  	addi	s0, s0, 8
;       F[i][j] = x;
80002a90: 27 b0 75 01  	fsd	fs7, 0(a1)
;     for (j = 0; j < nl; j++)
80002a94: e3 1a d4 f0  	bne	s0, a3, 0x800029a8 <.LBB0_99+0x4f4>
80002a98: f3 f5 00 7c  	csrrci	a1, 1984, 1
80002a9c: 6f f0 9f e3  	j	0x800028d4 <.LBB0_99+0x420>
;         x += C[i][k] * D[k][j];
80002aa0: b3 05 8c 00  	add	a1, s8, s0
80002aa4: 87 bb 05 00  	fld	fs7, 0(a1)
80002aa8: 07 bc 05 0b  	fld	fs8, 176(a1)
80002aac: 87 bc 05 16  	fld	fs9, 352(a1)
80002ab0: 07 bd 05 21  	fld	fs10, 528(a1)
80002ab4: d3 fb fb 12  	fmul.d	fs7, fs7, fa5
80002ab8: c3 7b 0c bb  	fmadd.d	fs7, fs8, fa6, fs7
80002abc: c3 fb 1c bb  	fmadd.d	fs7, fs9, fa7, fs7
80002ac0: c3 7b cd bb  	fmadd.d	fs7, fs10, ft8, fs7
80002ac4: 07 bc 05 2c  	fld	fs8, 704(a1)
80002ac8: 87 bc 05 37  	fld	fs9, 880(a1)
80002acc: 07 bd 05 42  	fld	fs10, 1056(a1)
80002ad0: 87 bd 05 4d  	fld	fs11, 1232(a1)
80002ad4: c3 7b dc bb  	fmadd.d	fs7, fs8, ft9, fs7
80002ad8: c3 fb ec bb  	fmadd.d	fs7, fs9, ft10, fs7
80002adc: c3 7b fd bb  	fmadd.d	fs7, fs10, ft11, fs7
80002ae0: c3 fb 8d ba  	fmadd.d	fs7, fs11, fs0, fs7
80002ae4: 07 bc 05 58  	fld	fs8, 1408(a1)
80002ae8: 87 bc 05 63  	fld	fs9, 1584(a1)
80002aec: 07 bd 05 6e  	fld	fs10, 1760(a1)
80002af0: 87 bd 05 79  	fld	fs11, 1936(a1)
80002af4: c3 7b 9c ba  	fmadd.d	fs7, fs8, fs1, fs7
80002af8: c3 fb 3c ba  	fmadd.d	fs7, fs9, ft3, fs7
80002afc: c3 7b 4d ba  	fmadd.d	fs7, fs10, ft4, fs7
80002b00: c3 fb 5d ba  	fmadd.d	fs7, fs11, ft5, fs7
80002b04: b3 85 84 00  	add	a1, s1, s0
80002b08: 07 bc 05 00  	fld	fs8, 0(a1)
80002b0c: 87 bc 05 0b  	fld	fs9, 176(a1)
80002b10: 07 bd 05 16  	fld	fs10, 352(a1)
80002b14: 87 bd 05 21  	fld	fs11, 528(a1)
80002b18: c3 7b 6c ba  	fmadd.d	fs7, fs8, ft6, fs7
80002b1c: c3 fb 7c ba  	fmadd.d	fs7, fs9, ft7, fs7
80002b20: c3 7b ad ba  	fmadd.d	fs7, fs10, fa0, fs7
80002b24: c3 fb bd ba  	fmadd.d	fs7, fs11, fa1, fs7
80002b28: 07 bc 05 2c  	fld	fs8, 704(a1)
80002b2c: 87 bc 05 37  	fld	fs9, 880(a1)
80002b30: 07 bd 05 42  	fld	fs10, 1056(a1)
80002b34: 87 bd 05 4d  	fld	fs11, 1232(a1)
80002b38: c3 7b cc ba  	fmadd.d	fs7, fs8, fa2, fs7
80002b3c: c3 fb dc ba  	fmadd.d	fs7, fs9, fa3, fs7
80002b40: c3 7b ed ba  	fmadd.d	fs7, fs10, fa4, fs7
80002b44: c3 fb 2d bb  	fmadd.d	fs7, fs11, fs2, fs7
80002b48: 07 bc 05 58  	fld	fs8, 1408(a1)
80002b4c: 87 bc 05 63  	fld	fs9, 1584(a1)
80002b50: 07 bd 05 6e  	fld	fs10, 1760(a1)
80002b54: 87 bd 05 79  	fld	fs11, 1936(a1)
80002b58: c3 7b 3c bb  	fmadd.d	fs7, fs8, fs3, fs7
80002b5c: c3 fb 4c bb  	fmadd.d	fs7, fs9, fs4, fs7
80002b60: c3 7b 5d bb  	fmadd.d	fs7, fs10, fs5, fs7
80002b64: c3 fb 6d bb  	fmadd.d	fs7, fs11, fs6, fs7
;       F[i][j] = x;
80002b68: b3 05 87 00  	add	a1, a4, s0
;     for (j = 0; j < nl; j++)
80002b6c: 13 04 84 00  	addi	s0, s0, 8
;       F[i][j] = x;
80002b70: 27 b0 75 01  	fsd	fs7, 0(a1)
;     for (j = 0; j < nl; j++)
80002b74: e3 16 d4 f2  	bne	s0, a3, 0x80002aa0 <.LBB0_99+0x5ec>
80002b78: 6f f0 df d5  	j	0x800028d4 <.LBB0_99+0x420>
80002b7c: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < ni; i++)
80002b80: 93 02 0b 0b  	addi	t0, s6, 176
80002b84: 93 05 8b 5d  	addi	a1, s6, 1496
80002b88: 13 83 85 5d  	addi	t1, a1, 1496
80002b8c: 93 05 0b 58  	addi	a1, s6, 1408
80002b90: 13 8e 05 58  	addi	t3, a1, 1408
80002b94: 93 d5 42 01  	srli	a1, t0, 20
80002b98: b3 35 b0 00  	snez	a1, a1
80002b9c: 37 06 12 00  	lui	a2, 288
80002ba0: 13 06 96 f5  	addi	a2, a2, -167
80002ba4: b3 b6 c2 00  	sltu	a3, t0, a2
80002ba8: b3 f5 d5 00  	and	a1, a1, a3
80002bac: 93 56 43 01  	srli	a3, t1, 20
80002bb0: b3 36 d0 00  	snez	a3, a3
80002bb4: 33 37 c3 00  	sltu	a4, t1, a2
80002bb8: b3 f6 e6 00  	and	a3, a3, a4
80002bbc: b3 f5 d5 00  	and	a1, a1, a3
80002bc0: 93 56 4e 01  	srli	a3, t3, 20
80002bc4: b3 36 d0 00  	snez	a3, a3
80002bc8: 33 36 ce 00  	sltu	a2, t3, a2
80002bcc: 33 f6 c6 00  	and	a2, a3, a2
80002bd0: 33 77 b6 00  	and	a4, a2, a1
80002bd4: 93 08 00 09  	addi	a7, zero, 144
80002bd8: 93 0e 80 00  	addi	t4, zero, 8
80002bdc: 13 0f 50 01  	addi	t5, zero, 21
80002be0: 93 0f 10 00  	addi	t6, zero, 1
80002be4: 93 05 20 00  	addi	a1, zero, 2
80002be8: 13 06 00 0b  	addi	a2, zero, 176
80002bec: 93 03 00 01  	addi	t2, zero, 16
80002bf0: 93 86 09 00  	mv	a3, s3
80002bf4: 6f 00 00 01  	j	0x80002c04 <.LBB0_99+0x750>
80002bf8: 13 05 15 00  	addi	a0, a0, 1
80002bfc: 93 86 06 0b  	addi	a3, a3, 176
80002c00: e3 06 75 8a  	beq	a0, t2, 0x800024ac <.LBB0_98+0xb0c>
;         x += E[i][k] * F[k][j];
80002c04: 33 04 15 03  	mul	s0, a0, a7
80002c08: 33 84 8a 00  	add	s0, s5, s0
80002c0c: 87 31 84 01  	fld	ft3, 24(s0)
80002c10: 07 32 04 02  	fld	ft4, 32(s0)
80002c14: 87 32 84 02  	fld	ft5, 40(s0)
80002c18: 07 33 04 03  	fld	ft6, 48(s0)
80002c1c: 87 33 84 03  	fld	ft7, 56(s0)
80002c20: 07 35 04 04  	fld	fa0, 64(s0)
80002c24: 87 35 84 04  	fld	fa1, 72(s0)
80002c28: 07 36 04 05  	fld	fa2, 80(s0)
80002c2c: 87 36 84 05  	fld	fa3, 88(s0)
80002c30: 07 37 04 06  	fld	fa4, 96(s0)
80002c34: 87 37 84 06  	fld	fa5, 104(s0)
80002c38: 07 38 04 07  	fld	fa6, 112(s0)
80002c3c: 87 38 84 07  	fld	fa7, 120(s0)
80002c40: 07 3e 04 08  	fld	ft8, 128(s0)
80002c44: 87 3e 84 08  	fld	ft9, 136(s0)
80002c48: 07 3f 04 00  	fld	ft10, 0(s0)
80002c4c: 87 3f 84 00  	fld	ft11, 8(s0)
80002c50: 07 34 04 01  	fld	fs0, 16(s0)
80002c54: 13 04 00 00  	mv	s0, zero
80002c58: 63 06 07 10  	beqz	a4, 0x80002d64 <.LBB0_99+0x8b0>
;     for (j = 0; j < nl; j++)
80002c5c: 93 04 00 04  	addi	s1, zero, 64
80002c60: ab 20 9f 00  	scfgw	t5, s1
80002c64: 93 04 00 0c  	addi	s1, zero, 192
80002c68: ab a0 9e 00  	scfgw	t4, s1
80002c6c: 93 04 00 02  	addi	s1, zero, 32
80002c70: ab 20 90 00  	scfgw	zero, s1
80002c74: 2b a0 02 30  	scfgwi	t0, 768
80002c78: 93 84 0f 04  	addi	s1, t6, 64
80002c7c: ab 20 9f 00  	scfgw	t5, s1
80002c80: 93 84 0f 0c  	addi	s1, t6, 192
80002c84: ab a0 9e 00  	scfgw	t4, s1
80002c88: 93 84 0f 02  	addi	s1, t6, 32
80002c8c: ab 20 90 00  	scfgw	zero, s1
80002c90: 2b 20 13 30  	scfgwi	t1, 769
80002c94: 93 84 05 04  	addi	s1, a1, 64
80002c98: ab 20 9f 00  	scfgw	t5, s1
80002c9c: 93 84 05 0c  	addi	s1, a1, 192
80002ca0: ab a0 9e 00  	scfgw	t4, s1
80002ca4: 93 84 05 02  	addi	s1, a1, 32
80002ca8: ab 20 90 00  	scfgw	zero, s1
80002cac: 2b 20 2e 30  	scfgwi	t3, 770
80002cb0: f3 e4 00 7c  	csrrsi	s1, 1984, 1
;         x += E[i][k] * F[k][j];
80002cb4: b3 07 8b 00  	add	a5, s6, s0
80002cb8: 87 b4 07 00  	fld	fs1, 0(a5)
80002cbc: d3 f4 e4 13  	fmul.d	fs1, fs1, ft10
80002cc0: c3 74 f0 4b  	fmadd.d	fs1, ft0, ft11, fs1
80002cc4: 07 b9 07 16  	fld	fs2, 352(a5)
80002cc8: 87 b9 07 21  	fld	fs3, 528(a5)
80002ccc: 07 ba 07 2c  	fld	fs4, 704(a5)
80002cd0: 87 ba 07 37  	fld	fs5, 880(a5)
80002cd4: c3 74 89 4a  	fmadd.d	fs1, fs2, fs0, fs1
80002cd8: c3 f4 39 4a  	fmadd.d	fs1, fs3, ft3, fs1
80002cdc: c3 74 4a 4a  	fmadd.d	fs1, fs4, ft4, fs1
80002ce0: c3 f4 5a 4a  	fmadd.d	fs1, fs5, ft5, fs1
80002ce4: 07 b9 07 42  	fld	fs2, 1056(a5)
80002ce8: 87 b9 07 4d  	fld	fs3, 1232(a5)
80002cec: 07 ba 07 58  	fld	fs4, 1408(a5)
80002cf0: 87 ba 07 63  	fld	fs5, 1584(a5)
80002cf4: c3 74 69 4a  	fmadd.d	fs1, fs2, ft6, fs1
80002cf8: c3 f4 79 4a  	fmadd.d	fs1, fs3, ft7, fs1
80002cfc: c3 74 aa 4a  	fmadd.d	fs1, fs4, fa0, fs1
80002d00: c3 f4 ba 4a  	fmadd.d	fs1, fs5, fa1, fs1
80002d04: 07 b9 07 6e  	fld	fs2, 1760(a5)
80002d08: 87 b9 07 79  	fld	fs3, 1936(a5)
80002d0c: 93 84 07 42  	addi	s1, a5, 1056
80002d10: 07 ba 04 42  	fld	fs4, 1056(s1)
80002d14: 93 84 87 47  	addi	s1, a5, 1144
80002d18: 87 ba 84 47  	fld	fs5, 1144(s1)
80002d1c: c3 74 c9 4a  	fmadd.d	fs1, fs2, fa2, fs1
80002d20: c3 f4 d9 4a  	fmadd.d	fs1, fs3, fa3, fs1
80002d24: c3 74 ea 4a  	fmadd.d	fs1, fs4, fa4, fs1
80002d28: c3 f4 fa 4a  	fmadd.d	fs1, fs5, fa5, fs1
80002d2c: 93 84 07 4d  	addi	s1, a5, 1232
80002d30: 07 b9 04 4d  	fld	fs2, 1232(s1)
80002d34: 93 87 87 52  	addi	a5, a5, 1320
80002d38: 87 b9 87 52  	fld	fs3, 1320(a5)
80002d3c: c3 74 09 4b  	fmadd.d	fs1, fs2, fa6, fs1
80002d40: c3 f4 19 4b  	fmadd.d	fs1, fs3, fa7, fs1
80002d44: c3 74 c1 4b  	fmadd.d	fs1, ft2, ft8, fs1
80002d48: c3 f4 d0 4b  	fmadd.d	fs1, ft1, ft9, fs1
;       G[i][j] = x;
80002d4c: b3 87 86 00  	add	a5, a3, s0
;     for (j = 0; j < nl; j++)
80002d50: 13 04 84 00  	addi	s0, s0, 8
;       G[i][j] = x;
80002d54: 27 b0 97 00  	fsd	fs1, 0(a5)
;     for (j = 0; j < nl; j++)
80002d58: e3 1e c4 f4  	bne	s0, a2, 0x80002cb4 <.LBB0_99+0x800>
80002d5c: f3 f7 00 7c  	csrrci	a5, 1984, 1
80002d60: 6f f0 9f e9  	j	0x80002bf8 <.LBB0_99+0x744>
;         x += E[i][k] * F[k][j];
80002d64: b3 04 8b 00  	add	s1, s6, s0
80002d68: 87 b4 04 00  	fld	fs1, 0(s1)
80002d6c: 07 b9 04 0b  	fld	fs2, 176(s1)
80002d70: d3 f4 e4 13  	fmul.d	fs1, fs1, ft10
80002d74: c3 74 f9 4b  	fmadd.d	fs1, fs2, ft11, fs1
80002d78: 07 b9 04 16  	fld	fs2, 352(s1)
80002d7c: 87 b9 04 21  	fld	fs3, 528(s1)
80002d80: 07 ba 04 2c  	fld	fs4, 704(s1)
80002d84: 87 ba 04 37  	fld	fs5, 880(s1)
80002d88: c3 74 89 4a  	fmadd.d	fs1, fs2, fs0, fs1
80002d8c: c3 f4 39 4a  	fmadd.d	fs1, fs3, ft3, fs1
80002d90: c3 74 4a 4a  	fmadd.d	fs1, fs4, ft4, fs1
80002d94: c3 f4 5a 4a  	fmadd.d	fs1, fs5, ft5, fs1
80002d98: 07 b9 04 42  	fld	fs2, 1056(s1)
80002d9c: 87 b9 04 4d  	fld	fs3, 1232(s1)
80002da0: 07 ba 04 58  	fld	fs4, 1408(s1)
80002da4: 87 ba 04 63  	fld	fs5, 1584(s1)
80002da8: c3 74 69 4a  	fmadd.d	fs1, fs2, ft6, fs1
80002dac: c3 f4 79 4a  	fmadd.d	fs1, fs3, ft7, fs1
80002db0: c3 74 aa 4a  	fmadd.d	fs1, fs4, fa0, fs1
80002db4: c3 f4 ba 4a  	fmadd.d	fs1, fs5, fa1, fs1
80002db8: 07 b9 04 6e  	fld	fs2, 1760(s1)
80002dbc: 87 b9 04 79  	fld	fs3, 1936(s1)
80002dc0: 93 87 04 42  	addi	a5, s1, 1056
80002dc4: 07 ba 07 42  	fld	fs4, 1056(a5)
80002dc8: 93 87 84 47  	addi	a5, s1, 1144
80002dcc: 87 ba 87 47  	fld	fs5, 1144(a5)
80002dd0: c3 74 c9 4a  	fmadd.d	fs1, fs2, fa2, fs1
80002dd4: c3 f4 d9 4a  	fmadd.d	fs1, fs3, fa3, fs1
80002dd8: c3 74 ea 4a  	fmadd.d	fs1, fs4, fa4, fs1
80002ddc: c3 f4 fa 4a  	fmadd.d	fs1, fs5, fa5, fs1
80002de0: 93 87 04 4d  	addi	a5, s1, 1232
80002de4: 07 b9 07 4d  	fld	fs2, 1232(a5)
80002de8: 93 87 84 52  	addi	a5, s1, 1320
80002dec: 87 b9 87 52  	fld	fs3, 1320(a5)
80002df0: 93 87 04 58  	addi	a5, s1, 1408
80002df4: 07 ba 07 58  	fld	fs4, 1408(a5)
80002df8: 93 87 84 5d  	addi	a5, s1, 1496
80002dfc: 87 ba 87 5d  	fld	fs5, 1496(a5)
80002e00: c3 74 09 4b  	fmadd.d	fs1, fs2, fa6, fs1
80002e04: c3 f4 19 4b  	fmadd.d	fs1, fs3, fa7, fs1
80002e08: c3 74 ca 4b  	fmadd.d	fs1, fs4, ft8, fs1
80002e0c: c3 f4 da 4b  	fmadd.d	fs1, fs5, ft9, fs1
;       G[i][j] = x;
80002e10: b3 87 86 00  	add	a5, a3, s0
;     for (j = 0; j < nl; j++)
80002e14: 13 04 84 00  	addi	s0, s0, 8
;       G[i][j] = x;
80002e18: 27 b0 97 00  	fsd	fs1, 0(a5)
;     for (j = 0; j < nl; j++)
80002e1c: e3 14 c4 f4  	bne	s0, a2, 0x80002d64 <.LBB0_99+0x8b0>
80002e20: 6f f0 9f dd  	j	0x80002bf8 <.LBB0_99+0x744>
;     for (int i = 0; i < n; i++){
80002e24: 13 85 89 05  	addi	a0, s3, 88
80002e28: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002e2c: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80002e30: 07 32 85 fa  	fld	ft4, -88(a0)
80002e34: 87 32 05 fb  	fld	ft5, -80(a0)
80002e38: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e3c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e40: 07 32 85 fb  	fld	ft4, -72(a0)
80002e44: 87 32 05 fc  	fld	ft5, -64(a0)
80002e48: 07 33 85 fc  	fld	ft6, -56(a0)
80002e4c: 87 33 05 fd  	fld	ft7, -48(a0)
80002e50: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e54: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e58: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002e5c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002e60: 07 32 85 fd  	fld	ft4, -40(a0)
80002e64: 87 32 05 fe  	fld	ft5, -32(a0)
80002e68: 07 33 85 fe  	fld	ft6, -24(a0)
80002e6c: 87 33 05 ff  	fld	ft7, -16(a0)
80002e70: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e74: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e78: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002e7c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002e80: 07 32 85 ff  	fld	ft4, -8(a0)
80002e84: 87 32 05 00  	fld	ft5, 0(a0)
80002e88: 07 33 85 00  	fld	ft6, 8(a0)
80002e8c: 87 33 05 01  	fld	ft7, 16(a0)
80002e90: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e94: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002e98: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002e9c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002ea0: 07 32 85 01  	fld	ft4, 24(a0)
80002ea4: 87 32 05 02  	fld	ft5, 32(a0)
80002ea8: 07 33 85 02  	fld	ft6, 40(a0)
80002eac: 87 33 05 03  	fld	ft7, 48(a0)
80002eb0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002eb4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002eb8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002ebc: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002ec0: 07 32 85 03  	fld	ft4, 56(a0)
80002ec4: 87 32 05 04  	fld	ft5, 64(a0)
80002ec8: 07 33 85 04  	fld	ft6, 72(a0)
80002ecc: 87 33 05 05  	fld	ft7, 80(a0)
80002ed0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ed4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002ed8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002edc: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80002ee0: 93 85 f5 ff  	addi	a1, a1, -1
80002ee4: 13 05 05 0b  	addi	a0, a0, 176
80002ee8: e3 94 05 f4  	bnez	a1, 0x80002e30 <.LBB0_99+0x97c>

80002eec <.LBB0_100>:
80002eec: 17 25 00 00  	auipc	a0, 2
80002ef0: 13 05 c5 69  	addi	a0, a0, 1692
80002ef4: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80002ef8: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80002efc: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80002f00: 27 30 81 04  	fsd	fs0, 64(sp)
80002f04: 03 26 01 04  	lw	a2, 64(sp)
80002f08: 83 26 41 04  	lw	a3, 68(sp)

80002f0c <.LBB0_101>:
80002f0c: 17 25 00 00  	auipc	a0, 2
80002f10: 13 05 95 3c  	addi	a0, a0, 969
80002f14: 97 00 00 00  	auipc	ra, 0
80002f18: e7 80 40 08  	jalr	132(ra)

80002f1c <.LBB0_102>:
80002f1c: 17 25 00 00  	auipc	a0, 2
80002f20: 13 05 45 67  	addi	a0, a0, 1652
80002f24: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80002f28: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80002f2c: 87 3d 81 04  	fld	fs11, 72(sp)
80002f30: 07 3d 01 05  	fld	fs10, 80(sp)
80002f34: 87 3c 81 05  	fld	fs9, 88(sp)
80002f38: 07 3c 01 06  	fld	fs8, 96(sp)
80002f3c: 87 3b 81 06  	fld	fs7, 104(sp)
80002f40: 07 3b 01 07  	fld	fs6, 112(sp)
80002f44: 87 3a 81 07  	fld	fs5, 120(sp)
80002f48: 07 3a 01 08  	fld	fs4, 128(sp)
80002f4c: 87 39 81 08  	fld	fs3, 136(sp)
80002f50: 07 39 01 09  	fld	fs2, 144(sp)
80002f54: 87 34 81 09  	fld	fs1, 152(sp)
80002f58: 07 34 01 0a  	fld	fs0, 160(sp)
80002f5c: 83 2d c1 0a  	lw	s11, 172(sp)
80002f60: 03 2d 01 0b  	lw	s10, 176(sp)
80002f64: 83 2c 41 0b  	lw	s9, 180(sp)
80002f68: 03 2c 81 0b  	lw	s8, 184(sp)
80002f6c: 83 2b c1 0b  	lw	s7, 188(sp)
80002f70: 03 2b 01 0c  	lw	s6, 192(sp)
80002f74: 83 2a 41 0c  	lw	s5, 196(sp)
80002f78: 03 2a 81 0c  	lw	s4, 200(sp)
80002f7c: 83 29 c1 0c  	lw	s3, 204(sp)
80002f80: 03 29 01 0d  	lw	s2, 208(sp)
80002f84: 83 24 41 0d  	lw	s1, 212(sp)
80002f88: 03 24 81 0d  	lw	s0, 216(sp)
80002f8c: 83 20 c1 0d  	lw	ra, 220(sp)
80002f90: 13 01 01 0e  	addi	sp, sp, 224
80002f94: 67 80 00 00  	ret

80002f98 <printf_>:
; {
80002f98: 13 01 01 fd  	addi	sp, sp, -48
80002f9c: 23 26 11 00  	sw	ra, 12(sp)
80002fa0: 93 02 05 00  	mv	t0, a0
80002fa4: 23 26 11 03  	sw	a7, 44(sp)
80002fa8: 23 24 01 03  	sw	a6, 40(sp)
80002fac: 23 22 f1 02  	sw	a5, 36(sp)
80002fb0: 23 20 e1 02  	sw	a4, 32(sp)
80002fb4: 23 2e d1 00  	sw	a3, 28(sp)
80002fb8: 23 2c c1 00  	sw	a2, 24(sp)
80002fbc: 23 2a b1 00  	sw	a1, 20(sp)
80002fc0: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80002fc4: 23 24 a1 00  	sw	a0, 8(sp)

80002fc8 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80002fc8: 17 15 00 00  	auipc	a0, 1
80002fcc: 13 05 45 c2  	addi	a0, a0, -988
80002fd0: 93 05 71 00  	addi	a1, sp, 7
80002fd4: 13 06 f0 ff  	addi	a2, zero, -1
80002fd8: 13 07 41 01  	addi	a4, sp, 20
80002fdc: 93 86 02 00  	mv	a3, t0
80002fe0: 97 00 00 00  	auipc	ra, 0
80002fe4: e7 80 40 01  	jalr	20(ra)
;   return ret;
80002fe8: 83 20 c1 00  	lw	ra, 12(sp)
80002fec: 13 01 01 03  	addi	sp, sp, 48
80002ff0: 67 80 00 00  	ret

80002ff4 <_vsnprintf.llvm.17592004524093383706>:
; {
80002ff4: 13 01 01 f9  	addi	sp, sp, -112
80002ff8: 23 26 11 06  	sw	ra, 108(sp)
80002ffc: 23 24 81 06  	sw	s0, 104(sp)
80003000: 23 22 91 06  	sw	s1, 100(sp)
80003004: 23 20 21 07  	sw	s2, 96(sp)
80003008: 23 2e 31 05  	sw	s3, 92(sp)
8000300c: 23 2c 41 05  	sw	s4, 88(sp)
80003010: 23 2a 51 05  	sw	s5, 84(sp)
80003014: 23 28 61 05  	sw	s6, 80(sp)
80003018: 23 26 71 05  	sw	s7, 76(sp)
8000301c: 23 24 81 05  	sw	s8, 72(sp)
80003020: 23 22 91 05  	sw	s9, 68(sp)
80003024: 23 20 a1 05  	sw	s10, 64(sp)
80003028: 23 2e b1 03  	sw	s11, 60(sp)
8000302c: 93 09 07 00  	mv	s3, a4
80003030: 13 84 06 00  	mv	s0, a3
80003034: 93 0a 06 00  	mv	s5, a2
80003038: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
8000303c: 63 86 05 00  	beqz	a1, 0x80003048 <.LBB1_183>
80003040: 13 09 05 00  	mv	s2, a0
80003044: 6f 00 c0 00  	j	0x80003050 <.LBB1_183+0x8>

80003048 <.LBB1_183>:
80003048: 17 19 00 00  	auipc	s2, 1
8000304c: 13 09 09 c5  	addi	s2, s2, -944
80003050: 13 0c 00 00  	mv	s8, zero
80003054: 13 0b 50 02  	addi	s6, zero, 37
80003058: 93 0d 00 01  	addi	s11, zero, 16
8000305c: 93 0b e0 02  	addi	s7, zero, 46
80003060: 37 15 00 00  	lui	a0, 1
80003064: 13 05 05 80  	addi	a0, a0, -2048
80003068: 23 2c a1 00  	sw	a0, 24(sp)
8000306c: 37 05 01 00  	lui	a0, 16
80003070: 13 05 f5 ff  	addi	a0, a0, -1
80003074: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80003078: 13 0d 24 00  	addi	s10, s0, 2
8000307c: 93 0c 0c 00  	mv	s9, s8
80003080: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80003084: 03 45 04 00  	lbu	a0, 0(s0)
80003088: e3 04 05 30  	beqz	a0, 0x80003b90 <.LBB1_124+0x3b0>
8000308c: 63 08 65 03  	beq	a0, s6, 0x800030bc <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80003090: 93 84 1c 00  	addi	s1, s9, 1
80003094: 93 05 0a 00  	mv	a1, s4
80003098: 13 86 0c 00  	mv	a2, s9
8000309c: 93 86 0a 00  	mv	a3, s5
800030a0: e7 00 09 00  	jalr	s2
;       format++;
800030a4: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800030a8: 13 0d 1d 00  	addi	s10, s10, 1
800030ac: 93 8c 04 00  	mv	s9, s1
;   while (*format)
800030b0: 03 45 04 00  	lbu	a0, 0(s0)
800030b4: e3 1c 05 fc  	bnez	a0, 0x8000308c <.LBB1_183+0x44>
800030b8: 6f 00 90 2d  	j	0x80003b90 <.LBB1_124+0x3b0>
;     flags = 0U;
800030bc: 13 04 00 00  	mv	s0, zero
800030c0: 6f 00 00 01  	j	0x800030d0 <.LBB1_9+0x8>

800030c4 <.LBB1_8>:
800030c4: 93 05 00 01  	addi	a1, zero, 16

800030c8 <.LBB1_9>:
800030c8: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
800030cc: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
800030d0: 03 45 fd ff  	lbu	a0, -1(s10)
800030d4: 93 05 05 fe  	addi	a1, a0, -32
800030d8: 63 ec bd 02  	bltu	s11, a1, 0x80003110 <.LBB1_15>
800030dc: 93 95 25 00  	slli	a1, a1, 2

800030e0 <.LBB1_184>:
800030e0: 17 26 00 00  	auipc	a2, 2
800030e4: 13 06 46 21  	addi	a2, a2, 532
800030e8: b3 85 c5 00  	add	a1, a1, a2
800030ec: 03 a6 05 00  	lw	a2, 0(a1)
800030f0: 93 05 10 00  	addi	a1, zero, 1
800030f4: 67 00 06 00  	jr	a2

800030f8 <.LBB1_12>:
800030f8: 93 05 80 00  	addi	a1, zero, 8
800030fc: 6f f0 df fc  	j	0x800030c8 <.LBB1_9>

80003100 <.LBB1_13>:
80003100: 93 05 40 00  	addi	a1, zero, 4
80003104: 6f f0 5f fc  	j	0x800030c8 <.LBB1_9>

80003108 <.LBB1_14>:
80003108: 93 05 20 00  	addi	a1, zero, 2
8000310c: 6f f0 df fb  	j	0x800030c8 <.LBB1_9>

80003110 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80003110: 93 05 05 fd  	addi	a1, a0, -48
80003114: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80003118: 93 05 fd ff  	addi	a1, s10, -1
8000311c: 93 06 90 00  	addi	a3, zero, 9
80003120: 63 ee c6 06  	bltu	a3, a2, 0x8000319c <.LBB1_15+0x8c>
80003124: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003128: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000312c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003130: b3 06 8b 03  	mul	a3, s6, s8
80003134: 93 85 15 00  	addi	a1, a1, 1
80003138: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000313c: 93 06 05 fd  	addi	a3, a0, -48
80003140: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003144: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80003148: e3 e0 86 ff  	bltu	a3, s8, 0x80003128 <.LBB1_15+0x18>
8000314c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003150: 63 16 75 0b  	bne	a0, s7, 0x800031fc <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80003154: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80003158: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
8000315c: 93 05 05 fd  	addi	a1, a0, -48
80003160: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80003164: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80003168: 93 06 90 00  	addi	a3, zero, 9
8000316c: 63 e0 c6 06  	bltu	a3, a2, 0x800031cc <.LBB1_15+0xbc>
80003170: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003174: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003178: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000317c: b3 86 8b 03  	mul	a3, s7, s8
80003180: 93 85 15 00  	addi	a1, a1, 1
80003184: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003188: 93 06 05 fd  	addi	a3, a0, -48
8000318c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003190: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80003194: e3 e0 86 ff  	bltu	a3, s8, 0x80003174 <.LBB1_15+0x64>
80003198: 6f 00 00 07  	j	0x80003208 <.LBB1_15+0xf8>
;     else if (*format == '*') {
8000319c: 13 06 a0 02  	addi	a2, zero, 42
800031a0: 63 18 c5 04  	bne	a0, a2, 0x800031f0 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800031a4: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800031a8: 63 d4 05 00  	bgez	a1, 0x800031b0 <.LBB1_15+0xa0>
800031ac: 13 64 24 00  	ori	s0, s0, 2
800031b0: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800031b4: 03 45 0d 00  	lbu	a0, 0(s10)
800031b8: 13 d6 f5 41  	srai	a2, a1, 31
800031bc: b3 85 c5 00  	add	a1, a1, a2
800031c0: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800031c4: e3 08 75 f9  	beq	a0, s7, 0x80003154 <.LBB1_15+0x44>
800031c8: 6f 00 40 03  	j	0x800031fc <.LBB1_15+0xec>
;       else if (*format == '*') {
800031cc: 13 06 a0 02  	addi	a2, zero, 42
800031d0: 63 1a c5 02  	bne	a0, a2, 0x80003204 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800031d4: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800031d8: 63 44 70 01  	bgtz	s7, 0x800031e0 <.LBB1_15+0xd0>
800031dc: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
800031e0: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800031e4: 13 0d 2d 00  	addi	s10, s10, 2
800031e8: 93 89 49 00  	addi	s3, s3, 4
800031ec: 6f 00 00 02  	j	0x8000320c <.LBB1_15+0xfc>
800031f0: 13 0b 00 00  	mv	s6, zero
800031f4: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800031f8: e3 0e 75 f5  	beq	a0, s7, 0x80003154 <.LBB1_15+0x44>
800031fc: 93 0b 00 00  	mv	s7, zero
80003200: 6f 00 c0 00  	j	0x8000320c <.LBB1_15+0xfc>
80003204: 93 0b 00 00  	mv	s7, zero
80003208: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
8000320c: 93 05 85 f9  	addi	a1, a0, -104
80003210: 13 d6 15 00  	srli	a2, a1, 1
80003214: 93 95 f5 01  	slli	a1, a1, 31
80003218: b3 e5 c5 00  	or	a1, a1, a2
8000321c: 13 06 90 00  	addi	a2, zero, 9
80003220: 63 62 b6 06  	bltu	a2, a1, 0x80003284 <.LBB1_42>
80003224: 93 95 25 00  	slli	a1, a1, 2

80003228 <.LBB1_185>:
80003228: 17 26 00 00  	auipc	a2, 2
8000322c: 13 06 06 11  	addi	a2, a2, 272
80003230: b3 85 c5 00  	add	a1, a1, a2
80003234: 83 a6 05 00  	lw	a3, 0(a1)
80003238: 93 05 10 00  	addi	a1, zero, 1
8000323c: 13 06 00 10  	addi	a2, zero, 256
80003240: 67 80 06 00  	jr	a3

80003244 <.LBB1_36>:
;         if (*format == 'h') {
80003244: 03 45 1d 00  	lbu	a0, 1(s10)
80003248: 93 05 80 06  	addi	a1, zero, 104
8000324c: 63 12 b5 12  	bne	a0, a1, 0x80003370 <.LBB1_53+0x48>
80003250: 93 05 20 00  	addi	a1, zero, 2
80003254: 13 06 00 0c  	addi	a2, zero, 192
80003258: 6f 00 00 02  	j	0x80003278 <.LBB1_41>

8000325c <.LBB1_38>:
8000325c: 13 06 00 20  	addi	a2, zero, 512
80003260: 6f 00 80 01  	j	0x80003278 <.LBB1_41>

80003264 <.LBB1_39>:
;         if (*format == 'l') {
80003264: 03 45 1d 00  	lbu	a0, 1(s10)
80003268: 93 05 c0 06  	addi	a1, zero, 108
8000326c: 63 18 b5 10  	bne	a0, a1, 0x8000337c <.LBB1_53+0x54>
80003270: 93 05 20 00  	addi	a1, zero, 2
80003274: 13 06 00 30  	addi	a2, zero, 768

80003278 <.LBB1_41>:
80003278: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
8000327c: 03 45 0d 00  	lbu	a0, 0(s10)
80003280: 33 64 c4 00  	or	s0, s0, a2

80003284 <.LBB1_42>:
;     switch (*format) {
80003284: 93 05 b5 fd  	addi	a1, a0, -37
80003288: 13 06 30 05  	addi	a2, zero, 83
8000328c: 63 64 b6 10  	bltu	a2, a1, 0x80003394 <.LBB1_59>
80003290: 93 95 25 00  	slli	a1, a1, 2

80003294 <.LBB1_186>:
80003294: 17 26 00 00  	auipc	a2, 2
80003298: 13 06 c6 0c  	addi	a2, a2, 204
8000329c: b3 85 c5 00  	add	a1, a1, a2
800032a0: 03 a6 05 00  	lw	a2, 0(a1)
800032a4: 93 05 80 00  	addi	a1, zero, 8
800032a8: 13 0c 00 01  	addi	s8, zero, 16
800032ac: 67 00 06 00  	jr	a2

800032b0 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800032b0: 13 74 f4 fe  	andi	s0, s0, -17
800032b4: 13 0c a0 00  	addi	s8, zero, 10

800032b8 <.LBB1_45>:
;         if (*format == 'X') {
800032b8: 93 05 80 05  	addi	a1, zero, 88
800032bc: 63 14 b5 00  	bne	a0, a1, 0x800032c4 <.LBB1_45+0xc>
800032c0: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800032c4: 93 05 40 06  	addi	a1, zero, 100
800032c8: 63 08 b5 0e  	beq	a0, a1, 0x800033b8 <.LBB1_62+0x8>
800032cc: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800032d0: 13 06 90 06  	addi	a2, zero, 105
800032d4: 63 02 c5 0e  	beq	a0, a2, 0x800033b8 <.LBB1_62+0x8>
800032d8: 6f 00 80 0d  	j	0x800033b0 <.LBB1_62>

800032dc <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800032dc: 93 05 60 04  	addi	a1, zero, 70
800032e0: 63 14 b5 00  	bne	a0, a1, 0x800032e8 <.LBB1_49+0xc>
800032e4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800032e8: 13 85 79 00  	addi	a0, s3, 7
800032ec: 13 75 85 ff  	andi	a0, a0, -8
800032f0: 07 35 05 00  	fld	fa0, 0(a0)
800032f4: 93 09 85 00  	addi	s3, a0, 8
800032f8: 13 05 09 00  	mv	a0, s2
800032fc: 93 05 0a 00  	mv	a1, s4
80003300: 13 86 0c 00  	mv	a2, s9
80003304: 93 86 0a 00  	mv	a3, s5
80003308: 13 87 0b 00  	mv	a4, s7
8000330c: 93 07 0b 00  	mv	a5, s6
80003310: 13 08 04 00  	mv	a6, s0
80003314: 97 10 00 00  	auipc	ra, 1
80003318: e7 80 80 98  	jalr	-1656(ra)
8000331c: 6f 00 00 7c  	j	0x80003adc <.LBB1_124+0x2fc>

80003320 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80003320: 83 25 81 01  	lw	a1, 24(sp)
80003324: 33 64 b4 00  	or	s0, s0, a1

80003328 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80003328: 13 65 25 00  	ori	a0, a0, 2
8000332c: 93 05 70 04  	addi	a1, zero, 71
80003330: 63 14 b5 00  	bne	a0, a1, 0x80003338 <.LBB1_53+0x10>
80003334: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003338: 13 85 79 00  	addi	a0, s3, 7
8000333c: 13 75 85 ff  	andi	a0, a0, -8
80003340: 07 35 05 00  	fld	fa0, 0(a0)
80003344: 93 09 85 00  	addi	s3, a0, 8
80003348: 13 05 09 00  	mv	a0, s2
8000334c: 93 05 0a 00  	mv	a1, s4
80003350: 13 86 0c 00  	mv	a2, s9
80003354: 93 86 0a 00  	mv	a3, s5
80003358: 13 87 0b 00  	mv	a4, s7
8000335c: 93 07 0b 00  	mv	a5, s6
80003360: 13 08 04 00  	mv	a6, s0
80003364: 97 10 00 00  	auipc	ra, 1
80003368: e7 80 80 01  	jalr	24(ra)
8000336c: 6f 00 00 77  	j	0x80003adc <.LBB1_124+0x2fc>
80003370: 13 64 04 08  	ori	s0, s0, 128
80003374: 13 0d 1d 00  	addi	s10, s10, 1
80003378: 6f f0 df f0  	j	0x80003284 <.LBB1_42>
8000337c: 13 64 04 10  	ori	s0, s0, 256
80003380: 13 0d 1d 00  	addi	s10, s10, 1
80003384: 6f f0 1f f0  	j	0x80003284 <.LBB1_42>

80003388 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003388: 13 8c 1c 00  	addi	s8, s9, 1
8000338c: 13 05 50 02  	addi	a0, zero, 37
80003390: 6f 00 80 00  	j	0x80003398 <.LBB1_59+0x4>

80003394 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80003394: 13 8c 1c 00  	addi	s8, s9, 1
80003398: 93 05 0a 00  	mv	a1, s4
8000339c: 13 86 0c 00  	mv	a2, s9
800033a0: 93 86 0a 00  	mv	a3, s5
800033a4: e7 00 09 00  	jalr	s2
800033a8: 6f 00 80 73  	j	0x80003ae0 <.LBB1_124+0x300>

800033ac <.LBB1_61>:
800033ac: 93 05 20 00  	addi	a1, zero, 2

800033b0 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800033b0: 13 74 34 ff  	andi	s0, s0, -13
800033b4: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800033b8: 93 75 04 40  	andi	a1, s0, 1024
800033bc: 63 84 05 00  	beqz	a1, 0x800033c4 <.LBB1_62+0x14>
800033c0: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800033c4: 93 05 90 06  	addi	a1, zero, 105
800033c8: 63 06 b5 00  	beq	a0, a1, 0x800033d4 <.LBB1_62+0x24>
800033cc: 93 05 40 06  	addi	a1, zero, 100
800033d0: 63 1c b5 12  	bne	a0, a1, 0x80003508 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800033d4: 13 75 04 20  	andi	a0, s0, 512
800033d8: 63 16 05 02  	bnez	a0, 0x80003404 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800033dc: 13 75 04 10  	andi	a0, s0, 256
800033e0: 63 1c 05 14  	bnez	a0, 0x80003538 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800033e4: 13 75 04 04  	andi	a0, s0, 64
800033e8: 63 18 05 4e  	bnez	a0, 0x800038d8 <.LBB1_124+0xf8>
800033ec: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800033f0: 93 75 04 08  	andi	a1, s0, 128
800033f4: 63 84 05 4e  	beqz	a1, 0x800038dc <.LBB1_124+0xfc>
800033f8: 13 15 08 01  	slli	a0, a6, 16
800033fc: 13 58 05 41  	srai	a6, a0, 16
80003400: 6f 00 c0 4d  	j	0x800038dc <.LBB1_124+0xfc>
80003404: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003408: 13 85 79 00  	addi	a0, s3, 7
8000340c: 13 75 85 ff  	andi	a0, a0, -8
80003410: 83 29 05 00  	lw	s3, 0(a0)
80003414: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003418: 13 65 45 00  	ori	a0, a0, 4
8000341c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80003420: 23 24 a1 00  	sw	a0, 8(sp)
80003424: 33 e5 a9 00  	or	a0, s3, a0
80003428: 63 14 05 00  	bnez	a0, 0x80003430 <.LBB1_62+0x80>
8000342c: 13 74 f4 fe  	andi	s0, s0, -17
80003430: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003434: 93 75 04 40  	andi	a1, s0, 1024
80003438: 93 d5 a5 00  	srli	a1, a1, 10
8000343c: 33 75 b5 00  	and	a0, a0, a1
80003440: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003444: 63 14 05 0a  	bnez	a0, 0x800034ec <.LBB1_62+0x13c>
80003448: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000344c: 63 da 04 00  	bgez	s1, 0x80003460 <.LBB1_62+0xb0>
80003450: 33 35 30 01  	snez	a0, s3
80003454: b3 09 30 41  	neg	s3, s3
80003458: 33 85 a4 00  	add	a0, s1, a0
8000345c: b3 04 a0 40  	neg	s1, a0
80003460: 13 09 00 00  	mv	s2, zero
80003464: 13 75 04 02  	andi	a0, s0, 32
80003468: 13 45 15 06  	xori	a0, a0, 97
8000346c: 13 05 65 0f  	addi	a0, a0, 246
80003470: 23 2a a1 00  	sw	a0, 20(sp)
80003474: 6f 00 40 02  	j	0x80003498 <.LBB1_62+0xe8>
80003478: 13 06 10 00  	addi	a2, zero, 1
8000347c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003480: 93 36 f9 01  	sltiu	a3, s2, 31
80003484: 33 f6 c6 00  	and	a2, a3, a2
80003488: 13 89 07 00  	mv	s2, a5
8000348c: 93 09 05 00  	mv	s3, a0
80003490: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003494: 63 0c 06 04  	beqz	a2, 0x800034ec <.LBB1_62+0x13c>
;       value /= base;
80003498: 13 85 09 00  	mv	a0, s3
8000349c: 93 85 04 00  	mv	a1, s1
800034a0: 13 06 0c 00  	mv	a2, s8
800034a4: 93 06 00 00  	mv	a3, zero
800034a8: 97 d0 ff ff  	auipc	ra, 1048573
800034ac: e7 80 80 b5  	jalr	-1192(ra)
800034b0: 33 06 85 03  	mul	a2, a0, s8
800034b4: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800034b8: 13 77 e6 0f  	andi	a4, a2, 254
800034bc: 93 06 00 03  	addi	a3, zero, 48
800034c0: 93 07 a0 00  	addi	a5, zero, 10
800034c4: 63 64 f7 00  	bltu	a4, a5, 0x800034cc <.LBB1_62+0x11c>
800034c8: 83 26 41 01  	lw	a3, 20(sp)
800034cc: 33 86 c6 00  	add	a2, a3, a2
800034d0: 93 06 c1 01  	addi	a3, sp, 28
800034d4: b3 86 26 01  	add	a3, a3, s2
800034d8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034dc: e3 9e 04 f8  	bnez	s1, 0x80003478 <.LBB1_62+0xc8>
800034e0: 33 b6 89 01  	sltu	a2, s3, s8
800034e4: 13 46 16 00  	xori	a2, a2, 1
800034e8: 6f f0 5f f9  	j	0x8000347c <.LBB1_62+0xcc>
800034ec: 03 25 41 00  	lw	a0, 4(sp)
800034f0: 93 09 85 00  	addi	s3, a0, 8
800034f4: 03 25 81 00  	lw	a0, 8(sp)
800034f8: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800034fc: 13 07 c1 01  	addi	a4, sp, 28
80003500: 03 29 c1 00  	lw	s2, 12(sp)
80003504: 6f 00 80 47  	j	0x8000397c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003508: 13 75 04 20  	andi	a0, s0, 512
8000350c: 63 12 05 0c  	bnez	a0, 0x800035d0 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80003510: 13 75 04 10  	andi	a0, s0, 256
80003514: 63 1e 05 46  	bnez	a0, 0x80003990 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003518: 13 75 04 04  	andi	a0, s0, 64
8000351c: 63 10 05 50  	bnez	a0, 0x80003a1c <.LBB1_124+0x23c>
80003520: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003524: 93 75 04 08  	andi	a1, s0, 128
80003528: 63 8c 05 4e  	beqz	a1, 0x80003a20 <.LBB1_124+0x240>
8000352c: 83 25 01 01  	lw	a1, 16(sp)
80003530: 33 75 b5 00  	and	a0, a0, a1
80003534: 6f 00 c0 4e  	j	0x80003a20 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003538: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
8000353c: 63 14 08 00  	bnez	a6, 0x80003544 <.LBB1_62+0x194>
80003540: 13 74 f4 fe  	andi	s0, s0, -17
80003544: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003548: 13 76 04 40  	andi	a2, s0, 1024
8000354c: 13 56 a6 00  	srli	a2, a2, 10
80003550: b3 f5 c5 00  	and	a1, a1, a2
80003554: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003558: 63 9c 05 40  	bnez	a1, 0x80003970 <.LBB1_124+0x190>
8000355c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003560: 13 56 f8 41  	srai	a2, a6, 31
80003564: b3 06 c8 00  	add	a3, a6, a2
80003568: b3 c6 c6 00  	xor	a3, a3, a2
8000356c: 13 76 04 02  	andi	a2, s0, 32
80003570: 13 46 16 06  	xori	a2, a2, 97
80003574: 93 08 66 0f  	addi	a7, a2, 246
80003578: 6f 00 40 03  	j	0x800035ac <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000357c: 33 05 f6 00  	add	a0, a2, a5
80003580: 93 87 15 00  	addi	a5, a1, 1
80003584: 13 06 c1 01  	addi	a2, sp, 28
80003588: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000358c: b3 b6 86 01  	sltu	a3, a3, s8
80003590: 93 c6 16 00  	xori	a3, a3, 1
80003594: 93 b5 f5 01  	sltiu	a1, a1, 31
80003598: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000359c: 23 00 a6 00  	sb	a0, 0(a2)
800035a0: 93 85 07 00  	mv	a1, a5
800035a4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800035a8: 63 84 04 3c  	beqz	s1, 0x80003970 <.LBB1_124+0x190>
;       value /= base;
800035ac: 33 d7 86 03  	divu	a4, a3, s8
800035b0: 33 06 87 03  	mul	a2, a4, s8
800035b4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800035b8: 13 f5 e7 0f  	andi	a0, a5, 254
800035bc: 13 06 00 03  	addi	a2, zero, 48
800035c0: 93 04 a0 00  	addi	s1, zero, 10
800035c4: e3 6c 95 fa  	bltu	a0, s1, 0x8000357c <.LBB1_62+0x1cc>
800035c8: 13 86 08 00  	mv	a2, a7
800035cc: 6f f0 1f fb  	j	0x8000357c <.LBB1_62+0x1cc>
800035d0: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800035d4: 13 85 79 00  	addi	a0, s3, 7
800035d8: 93 75 85 ff  	andi	a1, a0, -8
800035dc: 03 a9 05 00  	lw	s2, 0(a1)
800035e0: 13 e5 45 00  	ori	a0, a1, 4
800035e4: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800035e8: 33 65 39 01  	or	a0, s2, s3
800035ec: 23 24 b1 00  	sw	a1, 8(sp)
800035f0: 63 14 05 00  	bnez	a0, 0x800035f8 <.LBB1_62+0x248>
800035f4: 13 74 f4 fe  	andi	s0, s0, -17
800035f8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800035fc: 93 75 04 40  	andi	a1, s0, 1024
80003600: 93 d5 a5 00  	srli	a1, a1, 10
80003604: 33 75 b5 00  	and	a0, a0, a1
80003608: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000360c: 63 18 05 08  	bnez	a0, 0x8000369c <.LBB1_62+0x2ec>
80003610: 93 04 00 00  	mv	s1, zero
80003614: 13 75 04 02  	andi	a0, s0, 32
80003618: 13 45 15 06  	xori	a0, a0, 97
8000361c: 13 05 65 0f  	addi	a0, a0, 246
80003620: 23 2a a1 00  	sw	a0, 20(sp)
80003624: 6f 00 40 02  	j	0x80003648 <.LBB1_62+0x298>
80003628: 13 06 10 00  	addi	a2, zero, 1
8000362c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003630: 93 b6 f4 01  	sltiu	a3, s1, 31
80003634: 33 f6 c6 00  	and	a2, a3, a2
80003638: 93 84 07 00  	mv	s1, a5
8000363c: 13 09 05 00  	mv	s2, a0
80003640: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003644: 63 0c 06 04  	beqz	a2, 0x8000369c <.LBB1_62+0x2ec>
;       value /= base;
80003648: 13 05 09 00  	mv	a0, s2
8000364c: 93 85 09 00  	mv	a1, s3
80003650: 13 06 0c 00  	mv	a2, s8
80003654: 93 06 00 00  	mv	a3, zero
80003658: 97 d0 ff ff  	auipc	ra, 1048573
8000365c: e7 80 80 9a  	jalr	-1624(ra)
80003660: 33 06 85 03  	mul	a2, a0, s8
80003664: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003668: 13 77 e6 0f  	andi	a4, a2, 254
8000366c: 93 06 00 03  	addi	a3, zero, 48
80003670: 93 07 a0 00  	addi	a5, zero, 10
80003674: 63 64 f7 00  	bltu	a4, a5, 0x8000367c <.LBB1_62+0x2cc>
80003678: 83 26 41 01  	lw	a3, 20(sp)
8000367c: 33 86 c6 00  	add	a2, a3, a2
80003680: 93 06 c1 01  	addi	a3, sp, 28
80003684: b3 86 96 00  	add	a3, a3, s1
80003688: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000368c: e3 9e 09 f8  	bnez	s3, 0x80003628 <.LBB1_62+0x278>
80003690: 33 36 89 01  	sltu	a2, s2, s8
80003694: 13 46 16 00  	xori	a2, a2, 1
80003698: 6f f0 5f f9  	j	0x8000362c <.LBB1_62+0x27c>
8000369c: 03 25 81 00  	lw	a0, 8(sp)
800036a0: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800036a4: 13 07 c1 01  	addi	a4, sp, 28
800036a8: 03 29 c1 00  	lw	s2, 12(sp)
800036ac: 6f 00 40 40  	j	0x80003ab0 <.LBB1_124+0x2d0>

800036b0 <.LBB1_108>:
800036b0: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800036b4: 13 79 24 00  	andi	s2, s0, 2
800036b8: 93 04 10 00  	addi	s1, zero, 1
800036bc: 63 1e 09 02  	bnez	s2, 0x800036f8 <.LBB1_108+0x48>
800036c0: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800036c4: 63 6a 9b 02  	bltu	s6, s1, 0x800036f8 <.LBB1_108+0x48>
800036c8: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800036cc: 13 0c fb ff  	addi	s8, s6, -1
800036d0: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800036d4: 33 86 8c 00  	add	a2, s9, s0
800036d8: 13 05 00 02  	addi	a0, zero, 32
800036dc: 93 05 0a 00  	mv	a1, s4
800036e0: 93 86 0a 00  	mv	a3, s5
800036e4: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800036e8: 13 04 14 00  	addi	s0, s0, 1
800036ec: e3 14 8c fe  	bne	s8, s0, 0x800036d4 <.LBB1_108+0x24>
800036f0: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800036f4: b3 8c 8c 00  	add	s9, s9, s0
800036f8: 03 c5 09 00  	lbu	a0, 0(s3)
800036fc: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003700: 93 89 49 00  	addi	s3, s3, 4
80003704: 13 8c 1c 00  	addi	s8, s9, 1
80003708: 93 05 0a 00  	mv	a1, s4
8000370c: 13 86 0c 00  	mv	a2, s9
80003710: 93 86 0a 00  	mv	a3, s5
80003714: 13 89 0b 00  	mv	s2, s7
80003718: e7 80 0b 00  	jalr	s7
8000371c: 33 b5 64 01  	sltu	a0, s1, s6
80003720: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003724: 33 65 a4 00  	or	a0, s0, a0
80003728: 63 1c 05 3a  	bnez	a0, 0x80003ae0 <.LBB1_124+0x300>
;           while (l++ < width) {
8000372c: 33 04 9b 40  	sub	s0, s6, s1
80003730: 93 0b e0 02  	addi	s7, zero, 46
80003734: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003738: 13 0c 1c 00  	addi	s8, s8, 1
8000373c: 13 05 00 02  	addi	a0, zero, 32
80003740: 93 05 0a 00  	mv	a1, s4
80003744: 93 86 0a 00  	mv	a3, s5
80003748: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000374c: 13 04 f4 ff  	addi	s0, s0, -1
80003750: e3 12 04 fe  	bnez	s0, 0x80003734 <.LBB1_108+0x84>
80003754: 13 0b 50 02  	addi	s6, zero, 37
80003758: 13 04 1d 00  	addi	s0, s10, 1
8000375c: 6f f0 df 91  	j	0x80003078 <.LBB1_183+0x30>

80003760 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003760: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003764: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003768: 63 14 05 00  	bnez	a0, 0x80003770 <.LBB1_117+0x10>
8000376c: 93 fe fe fe  	andi	t4, t4, -17
80003770: 93 04 a0 00  	addi	s1, zero, 10
80003774: 13 04 f0 00  	addi	s0, zero, 15
80003778: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000377c: 13 f6 0e 40  	andi	a2, t4, 1024
80003780: 13 56 a6 00  	srli	a2, a2, 10
80003784: b3 f5 c5 00  	and	a1, a1, a2
80003788: 93 07 00 00  	mv	a5, zero
8000378c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80003790: 63 98 05 10  	bnez	a1, 0x800038a0 <.LBB1_124+0xc0>
80003794: 93 05 00 00  	mv	a1, zero
80003798: 6f 00 40 03  	j	0x800037cc <.LBB1_117+0x6c>
8000379c: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037a0: 33 06 d6 00  	add	a2, a2, a3
800037a4: 93 87 15 00  	addi	a5, a1, 1
800037a8: 93 06 c1 01  	addi	a3, sp, 28
800037ac: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037b0: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800037b4: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037b8: 93 b5 f5 01  	sltiu	a1, a1, 31
800037bc: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037c0: 23 80 c6 00  	sb	a2, 0(a3)
800037c4: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037c8: 63 0c 07 0c  	beqz	a4, 0x800038a0 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037cc: 93 76 e5 00  	andi	a3, a0, 14
800037d0: 13 06 00 03  	addi	a2, zero, 48
800037d4: e3 e4 96 fc  	bltu	a3, s1, 0x8000379c <.LBB1_117+0x3c>
800037d8: 13 06 70 03  	addi	a2, zero, 55
800037dc: 6f f0 1f fc  	j	0x8000379c <.LBB1_117+0x3c>

800037e0 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800037e0: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800037e4: 03 c5 07 00  	lbu	a0, 0(a5)
800037e8: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800037ec: 63 0c 05 02  	beqz	a0, 0x80003824 <.LBB1_124+0x44>
800037f0: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800037f4: 63 84 0b 00  	beqz	s7, 0x800037fc <.LBB1_124+0x1c>
800037f8: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800037fc: 93 85 f5 ff  	addi	a1, a1, -1
80003800: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003804: 03 c7 16 00  	lbu	a4, 1(a3)
80003808: 13 86 16 00  	addi	a2, a3, 1
8000380c: b3 36 e0 00  	snez	a3, a4
80003810: 33 37 b0 00  	snez	a4, a1
80003814: 33 77 d7 00  	and	a4, a4, a3
80003818: 93 85 f5 ff  	addi	a1, a1, -1
8000381c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003820: e3 12 07 fe  	bnez	a4, 0x80003804 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003824: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003828: 93 75 04 40  	andi	a1, s0, 1024
8000382c: 93 b4 15 00  	seqz	s1, a1
80003830: 23 2a c1 00  	sw	a2, 20(sp)
80003834: b3 35 76 01  	sltu	a1, a2, s7
80003838: b3 e5 b4 00  	or	a1, s1, a1
8000383c: 63 94 05 00  	bnez	a1, 0x80003844 <.LBB1_124+0x64>
80003840: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003844: 93 75 24 00  	andi	a1, s0, 2
80003848: 23 26 b1 00  	sw	a1, 12(sp)
8000384c: 63 96 05 2a  	bnez	a1, 0x80003af8 <.LBB1_124+0x318>
80003850: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003854: 63 fe 65 29  	bgeu	a1, s6, 0x80003af0 <.LBB1_124+0x310>
80003858: 23 24 f1 00  	sw	a5, 8(sp)
8000385c: 13 04 00 00  	mv	s0, zero
80003860: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003864: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003868: 33 86 8c 00  	add	a2, s9, s0
8000386c: 13 05 00 02  	addi	a0, zero, 32
80003870: 93 05 0a 00  	mv	a1, s4
80003874: 93 86 0a 00  	mv	a3, s5
80003878: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
8000387c: 13 04 14 00  	addi	s0, s0, 1
80003880: e3 14 89 fe  	bne	s2, s0, 0x80003868 <.LBB1_124+0x88>
80003884: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003888: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
8000388c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003890: 23 2a b1 00  	sw	a1, 20(sp)
80003894: b3 8c 8c 00  	add	s9, s9, s0
80003898: 13 09 0c 00  	mv	s2, s8
8000389c: 6f 00 c0 25  	j	0x80003af8 <.LBB1_124+0x318>
800038a0: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800038a4: 13 07 c1 01  	addi	a4, sp, 28
800038a8: 93 08 00 01  	addi	a7, zero, 16
800038ac: 13 0e 80 00  	addi	t3, zero, 8
800038b0: 13 05 09 00  	mv	a0, s2
800038b4: 93 05 0a 00  	mv	a1, s4
800038b8: 13 86 0c 00  	mv	a2, s9
800038bc: 93 86 0a 00  	mv	a3, s5
800038c0: 13 08 00 00  	mv	a6, zero
800038c4: 93 83 0b 00  	mv	t2, s7
800038c8: 97 10 00 00  	auipc	ra, 1
800038cc: e7 80 00 fa  	jalr	-96(ra)
800038d0: 13 0c 05 00  	mv	s8, a0
800038d4: 6f 00 00 21  	j	0x80003ae4 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800038d8: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800038dc: 63 14 08 00  	bnez	a6, 0x800038e4 <.LBB1_124+0x104>
800038e0: 13 74 f4 fe  	andi	s0, s0, -17
800038e4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800038e8: 13 76 04 40  	andi	a2, s0, 1024
800038ec: 13 56 a6 00  	srli	a2, a2, 10
800038f0: b3 f5 c5 00  	and	a1, a1, a2
800038f4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800038f8: 63 9c 05 06  	bnez	a1, 0x80003970 <.LBB1_124+0x190>
800038fc: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003900: 13 56 f8 41  	srai	a2, a6, 31
80003904: b3 06 c8 00  	add	a3, a6, a2
80003908: b3 c6 c6 00  	xor	a3, a3, a2
8000390c: 13 76 04 02  	andi	a2, s0, 32
80003910: 13 46 16 06  	xori	a2, a2, 97
80003914: 93 08 66 0f  	addi	a7, a2, 246
80003918: 6f 00 40 03  	j	0x8000394c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000391c: 33 05 f6 00  	add	a0, a2, a5
80003920: 93 87 15 00  	addi	a5, a1, 1
80003924: 13 06 c1 01  	addi	a2, sp, 28
80003928: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000392c: b3 b6 86 01  	sltu	a3, a3, s8
80003930: 93 c6 16 00  	xori	a3, a3, 1
80003934: 93 b5 f5 01  	sltiu	a1, a1, 31
80003938: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000393c: 23 00 a6 00  	sb	a0, 0(a2)
80003940: 93 85 07 00  	mv	a1, a5
80003944: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003948: 63 84 04 02  	beqz	s1, 0x80003970 <.LBB1_124+0x190>
;       value /= base;
8000394c: 33 d7 86 03  	divu	a4, a3, s8
80003950: 33 06 87 03  	mul	a2, a4, s8
80003954: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003958: 13 f5 e7 0f  	andi	a0, a5, 254
8000395c: 13 06 00 03  	addi	a2, zero, 48
80003960: 93 04 a0 00  	addi	s1, zero, 10
80003964: e3 6c 95 fa  	bltu	a0, s1, 0x8000391c <.LBB1_124+0x13c>
80003968: 13 86 08 00  	mv	a2, a7
8000396c: 6f f0 1f fb  	j	0x8000391c <.LBB1_124+0x13c>
80003970: 93 89 49 00  	addi	s3, s3, 4
80003974: 13 58 f8 01  	srli	a6, a6, 31
80003978: 13 07 c1 01  	addi	a4, sp, 28
8000397c: 13 05 09 00  	mv	a0, s2
80003980: 93 05 0a 00  	mv	a1, s4
80003984: 13 86 0c 00  	mv	a2, s9
80003988: 93 86 0a 00  	mv	a3, s5
8000398c: 6f 00 80 13  	j	0x80003ac4 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80003990: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003994: 63 14 05 00  	bnez	a0, 0x8000399c <.LBB1_124+0x1bc>
80003998: 13 74 f4 fe  	andi	s0, s0, -17
8000399c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800039a0: 13 76 04 40  	andi	a2, s0, 1024
800039a4: 13 56 a6 00  	srli	a2, a2, 10
800039a8: b3 f5 c5 00  	and	a1, a1, a2
800039ac: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800039b0: 63 9c 05 0e  	bnez	a1, 0x80003aa8 <.LBB1_124+0x2c8>
800039b4: 13 06 00 00  	mv	a2, zero
800039b8: 93 75 04 02  	andi	a1, s0, 32
800039bc: 93 c5 15 06  	xori	a1, a1, 97
800039c0: 13 88 65 0f  	addi	a6, a1, 246
800039c4: 6f 00 40 03  	j	0x800039f8 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039c8: 33 87 e7 00  	add	a4, a5, a4
800039cc: 93 07 16 00  	addi	a5, a2, 1
800039d0: 93 05 c1 01  	addi	a1, sp, 28
800039d4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039d8: 33 35 85 01  	sltu	a0, a0, s8
800039dc: 13 45 15 00  	xori	a0, a0, 1
800039e0: 13 36 f6 01  	sltiu	a2, a2, 31
800039e4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039e8: 23 80 e4 00  	sb	a4, 0(s1)
800039ec: 13 86 07 00  	mv	a2, a5
800039f0: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039f4: 63 8a 05 0a  	beqz	a1, 0x80003aa8 <.LBB1_124+0x2c8>
;       value /= base;
800039f8: b3 56 85 03  	divu	a3, a0, s8
800039fc: 33 87 86 03  	mul	a4, a3, s8
80003a00: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a04: 93 74 e7 0f  	andi	s1, a4, 254
80003a08: 93 07 00 03  	addi	a5, zero, 48
80003a0c: 93 05 a0 00  	addi	a1, zero, 10
80003a10: e3 ec b4 fa  	bltu	s1, a1, 0x800039c8 <.LBB1_124+0x1e8>
80003a14: 93 07 08 00  	mv	a5, a6
80003a18: 6f f0 1f fb  	j	0x800039c8 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003a1c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80003a20: 63 14 05 00  	bnez	a0, 0x80003a28 <.LBB1_124+0x248>
80003a24: 13 74 f4 fe  	andi	s0, s0, -17
80003a28: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a2c: 13 76 04 40  	andi	a2, s0, 1024
80003a30: 13 56 a6 00  	srli	a2, a2, 10
80003a34: b3 f5 c5 00  	and	a1, a1, a2
80003a38: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a3c: 63 96 05 06  	bnez	a1, 0x80003aa8 <.LBB1_124+0x2c8>
80003a40: 13 06 00 00  	mv	a2, zero
80003a44: 93 75 04 02  	andi	a1, s0, 32
80003a48: 93 c5 15 06  	xori	a1, a1, 97
80003a4c: 13 88 65 0f  	addi	a6, a1, 246
80003a50: 6f 00 40 03  	j	0x80003a84 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a54: 33 87 e7 00  	add	a4, a5, a4
80003a58: 93 07 16 00  	addi	a5, a2, 1
80003a5c: 93 05 c1 01  	addi	a1, sp, 28
80003a60: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a64: 33 35 85 01  	sltu	a0, a0, s8
80003a68: 13 45 15 00  	xori	a0, a0, 1
80003a6c: 13 36 f6 01  	sltiu	a2, a2, 31
80003a70: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a74: 23 80 e4 00  	sb	a4, 0(s1)
80003a78: 13 86 07 00  	mv	a2, a5
80003a7c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a80: 63 84 05 02  	beqz	a1, 0x80003aa8 <.LBB1_124+0x2c8>
;       value /= base;
80003a84: b3 56 85 03  	divu	a3, a0, s8
80003a88: 33 87 86 03  	mul	a4, a3, s8
80003a8c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a90: 93 74 e7 0f  	andi	s1, a4, 254
80003a94: 93 07 00 03  	addi	a5, zero, 48
80003a98: 93 05 a0 00  	addi	a1, zero, 10
80003a9c: e3 ec b4 fa  	bltu	s1, a1, 0x80003a54 <.LBB1_124+0x274>
80003aa0: 93 07 08 00  	mv	a5, a6
80003aa4: 6f f0 1f fb  	j	0x80003a54 <.LBB1_124+0x274>
80003aa8: 93 89 49 00  	addi	s3, s3, 4
80003aac: 13 07 c1 01  	addi	a4, sp, 28
80003ab0: 13 05 09 00  	mv	a0, s2
80003ab4: 93 05 0a 00  	mv	a1, s4
80003ab8: 13 86 0c 00  	mv	a2, s9
80003abc: 93 86 0a 00  	mv	a3, s5
80003ac0: 13 08 00 00  	mv	a6, zero
80003ac4: 93 08 0c 00  	mv	a7, s8
80003ac8: 93 83 0b 00  	mv	t2, s7
80003acc: 13 0e 0b 00  	mv	t3, s6
80003ad0: 93 0e 04 00  	mv	t4, s0
80003ad4: 97 10 00 00  	auipc	ra, 1
80003ad8: e7 80 40 d9  	jalr	-620(ra)
80003adc: 13 0c 05 00  	mv	s8, a0
80003ae0: 13 0b 50 02  	addi	s6, zero, 37
80003ae4: 93 0b e0 02  	addi	s7, zero, 46
80003ae8: 13 04 1d 00  	addi	s0, s10, 1
80003aec: 6f f0 cf d8  	j	0x80003078 <.LBB1_183+0x30>
80003af0: 93 85 15 00  	addi	a1, a1, 1
80003af4: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003af8: 63 00 05 04  	beqz	a0, 0x80003b38 <.LBB1_124+0x358>
80003afc: 13 84 17 00  	addi	s0, a5, 1
80003b00: 6f 00 00 03  	j	0x80003b30 <.LBB1_124+0x350>
80003b04: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80003b08: 13 8c 1c 00  	addi	s8, s9, 1
80003b0c: 13 75 f5 0f  	andi	a0, a0, 255
80003b10: 93 05 0a 00  	mv	a1, s4
80003b14: 13 86 0c 00  	mv	a2, s9
80003b18: 93 86 0a 00  	mv	a3, s5
80003b1c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003b20: 03 45 04 00  	lbu	a0, 0(s0)
80003b24: 13 04 14 00  	addi	s0, s0, 1
80003b28: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003b2c: 63 08 05 00  	beqz	a0, 0x80003b3c <.LBB1_124+0x35c>
80003b30: e3 9c 04 fc  	bnez	s1, 0x80003b08 <.LBB1_124+0x328>
80003b34: e3 98 0b fc  	bnez	s7, 0x80003b04 <.LBB1_124+0x324>
80003b38: 13 8c 0c 00  	mv	s8, s9
80003b3c: 03 25 c1 00  	lw	a0, 12(sp)
80003b40: 13 35 15 00  	seqz	a0, a0
80003b44: 03 26 41 01  	lw	a2, 20(sp)
80003b48: b3 35 66 01  	sltu	a1, a2, s6
80003b4c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80003b50: 33 65 b5 00  	or	a0, a0, a1
80003b54: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80003b58: e3 14 05 f8  	bnez	a0, 0x80003ae0 <.LBB1_124+0x300>
;           while (l++ < width) {
80003b5c: 33 04 cb 40  	sub	s0, s6, a2
80003b60: 93 0b e0 02  	addi	s7, zero, 46
80003b64: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003b68: 13 0c 1c 00  	addi	s8, s8, 1
80003b6c: 13 05 00 02  	addi	a0, zero, 32
80003b70: 93 05 0a 00  	mv	a1, s4
80003b74: 93 86 0a 00  	mv	a3, s5
80003b78: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003b7c: 13 04 f4 ff  	addi	s0, s0, -1
80003b80: e3 12 04 fe  	bnez	s0, 0x80003b64 <.LBB1_124+0x384>
80003b84: 13 0b 50 02  	addi	s6, zero, 37
80003b88: 13 04 1d 00  	addi	s0, s10, 1
80003b8c: 6f f0 cf ce  	j	0x80003078 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003b90: 13 86 0c 00  	mv	a2, s9
80003b94: 63 e4 5c 01  	bltu	s9, s5, 0x80003b9c <.LBB1_124+0x3bc>
80003b98: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003b9c: 13 05 00 00  	mv	a0, zero
80003ba0: 93 05 0a 00  	mv	a1, s4
80003ba4: 93 86 0a 00  	mv	a3, s5
80003ba8: e7 00 09 00  	jalr	s2
;   return (int)idx;
80003bac: 13 85 0c 00  	mv	a0, s9
80003bb0: 83 2d c1 03  	lw	s11, 60(sp)
80003bb4: 03 2d 01 04  	lw	s10, 64(sp)
80003bb8: 83 2c 41 04  	lw	s9, 68(sp)
80003bbc: 03 2c 81 04  	lw	s8, 72(sp)
80003bc0: 83 2b c1 04  	lw	s7, 76(sp)
80003bc4: 03 2b 01 05  	lw	s6, 80(sp)
80003bc8: 83 2a 41 05  	lw	s5, 84(sp)
80003bcc: 03 2a 81 05  	lw	s4, 88(sp)
80003bd0: 83 29 c1 05  	lw	s3, 92(sp)
80003bd4: 03 29 01 06  	lw	s2, 96(sp)
80003bd8: 83 24 41 06  	lw	s1, 100(sp)
80003bdc: 03 24 81 06  	lw	s0, 104(sp)
80003be0: 83 20 c1 06  	lw	ra, 108(sp)
80003be4: 13 01 01 07  	addi	sp, sp, 112
80003be8: 67 80 00 00  	ret

80003bec <_out_char.llvm.17592004524093383706>:
;   if (character) {
80003bec: 63 04 05 0a  	beqz	a0, 0x80003c94 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003bf0: f3 25 40 f1  	csrr	a1, mhartid
80003bf4: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80003bf8: 33 86 c5 02  	mul	a2, a1, a2

80003bfc <.LBB2_6>:
80003bfc: 97 26 00 00  	auipc	a3, 2
80003c00: 93 86 86 a4  	addi	a3, a3, -1464
80003c04: b3 05 d6 00  	add	a1, a2, a3
80003c08: 03 a7 05 00  	lw	a4, 0(a1)
80003c0c: 93 07 17 00  	addi	a5, a4, 1
80003c10: 23 a0 f5 00  	sw	a5, 0(a1)
80003c14: 33 87 e5 00  	add	a4, a1, a4
80003c18: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80003c1c: 03 a7 05 00  	lw	a4, 0(a1)
80003c20: 13 07 47 c0  	addi	a4, a4, -1020
80003c24: 33 37 e0 00  	snez	a4, a4
80003c28: 13 05 65 ff  	addi	a0, a0, -10
80003c2c: 33 35 a0 00  	snez	a0, a0
80003c30: 33 75 e5 00  	and	a0, a0, a4
80003c34: 63 10 05 06  	bnez	a0, 0x80003c94 <.LBB2_8+0x18>
80003c38: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80003c3c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003c40: 23 26 05 00  	sw	zero, 12(a0)
80003c44: 93 06 00 04  	addi	a3, zero, 64
80003c48: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80003c4c: 23 2a 05 00  	sw	zero, 20(a0)
80003c50: 93 06 10 00  	addi	a3, zero, 1
80003c54: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80003c58: 23 2e 05 00  	sw	zero, 28(a0)
80003c5c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003c60: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003c64: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003c68: 23 22 05 02  	sw	zero, 36(a0)
80003c6c: 23 20 c5 02  	sw	a2, 32(a0)

80003c70 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80003c70: 17 25 00 00  	auipc	a0, 2
80003c74: 13 05 05 89  	addi	a0, a0, -1904
80003c78: 23 20 d5 00  	sw	a3, 0(a0)

80003c7c <.LBB2_8>:
80003c7c: 17 25 00 00  	auipc	a0, 2
80003c80: 13 05 45 8c  	addi	a0, a0, -1852
;         while (fromhost == 0)
80003c84: 03 26 05 00  	lw	a2, 0(a0)
80003c88: e3 0e 06 fe  	beqz	a2, 0x80003c84 <.LBB2_8+0x8>
;         fromhost = 0;
80003c8c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80003c90: 23 a0 05 00  	sw	zero, 0(a1)
; }
80003c94: 67 80 00 00  	ret

80003c98 <_out_null>:
; }
80003c98: 67 80 00 00  	ret

80003c9c <_ftoa>:
; {
80003c9c: 13 01 01 f9  	addi	sp, sp, -112
80003ca0: 23 26 11 06  	sw	ra, 108(sp)
80003ca4: 23 24 81 06  	sw	s0, 104(sp)
80003ca8: 23 22 91 06  	sw	s1, 100(sp)
80003cac: 23 20 21 07  	sw	s2, 96(sp)
80003cb0: 23 2e 31 05  	sw	s3, 92(sp)
80003cb4: 23 2c 41 05  	sw	s4, 88(sp)
80003cb8: 23 2a 51 05  	sw	s5, 84(sp)
80003cbc: 23 28 61 05  	sw	s6, 80(sp)
80003cc0: 23 26 71 05  	sw	s7, 76(sp)
80003cc4: 23 24 81 05  	sw	s8, 72(sp)
80003cc8: 23 22 91 05  	sw	s9, 68(sp)
80003ccc: 23 20 a1 05  	sw	s10, 64(sp)
80003cd0: 27 3c 81 02  	fsd	fs0, 56(sp)
80003cd4: 27 38 91 02  	fsd	fs1, 48(sp)
80003cd8: 27 34 21 03  	fsd	fs2, 40(sp)

80003cdc <.LBB4_83>:
80003cdc: 97 24 00 00  	auipc	s1, 2
80003ce0: 93 84 c4 8b  	addi	s1, s1, -1860
80003ce4: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80003ce8: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80003cec: 93 0a 08 00  	mv	s5, a6
80003cf0: 13 89 07 00  	mv	s2, a5
80003cf4: 93 89 06 00  	mv	s3, a3
80003cf8: 13 0a 06 00  	mv	s4, a2
80003cfc: 13 8b 05 00  	mv	s6, a1
80003d00: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80003d04: 63 98 04 0e  	bnez	s1, 0x80003df4 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003d08: 13 f5 2a 00  	andi	a0, s5, 2
80003d0c: 93 f5 3a 00  	andi	a1, s5, 3
80003d10: b3 35 b0 00  	snez	a1, a1
80003d14: 13 36 59 00  	sltiu	a2, s2, 5
80003d18: b3 65 b6 00  	or	a1, a2, a1
80003d1c: 93 5c 15 00  	srli	s9, a0, 1
80003d20: 13 04 0a 00  	mv	s0, s4
80003d24: 63 96 05 02  	bnez	a1, 0x80003d50 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80003d28: 93 04 c9 ff  	addi	s1, s2, -4
80003d2c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003d30: 13 04 16 00  	addi	s0, a2, 1
80003d34: 13 05 00 02  	addi	a0, zero, 32
80003d38: 93 05 0b 00  	mv	a1, s6
80003d3c: 93 86 09 00  	mv	a3, s3
80003d40: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003d44: 93 84 f4 ff  	addi	s1, s1, -1
80003d48: 13 06 04 00  	mv	a2, s0
80003d4c: e3 92 04 fe  	bnez	s1, 0x80003d30 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80003d50: 93 04 14 00  	addi	s1, s0, 1
80003d54: 13 05 d0 02  	addi	a0, zero, 45
80003d58: 93 05 0b 00  	mv	a1, s6
80003d5c: 13 06 04 00  	mv	a2, s0
80003d60: 93 86 09 00  	mv	a3, s3
80003d64: e7 80 0b 00  	jalr	s7
80003d68: 93 0a 24 00  	addi	s5, s0, 2
80003d6c: 13 05 90 06  	addi	a0, zero, 105
80003d70: 93 05 0b 00  	mv	a1, s6
80003d74: 13 86 04 00  	mv	a2, s1
80003d78: 93 86 09 00  	mv	a3, s3
80003d7c: e7 80 0b 00  	jalr	s7
80003d80: 13 0c 34 00  	addi	s8, s0, 3
80003d84: 13 05 e0 06  	addi	a0, zero, 110
80003d88: 93 05 0b 00  	mv	a1, s6
80003d8c: 13 86 0a 00  	mv	a2, s5
80003d90: 93 86 09 00  	mv	a3, s3
80003d94: e7 80 0b 00  	jalr	s7
80003d98: 93 04 44 00  	addi	s1, s0, 4
80003d9c: 13 05 60 06  	addi	a0, zero, 102
80003da0: 93 05 0b 00  	mv	a1, s6
80003da4: 13 06 0c 00  	mv	a2, s8
80003da8: 93 86 09 00  	mv	a3, s3
80003dac: e7 80 0b 00  	jalr	s7
80003db0: 33 85 44 41  	sub	a0, s1, s4
80003db4: 33 35 25 01  	sltu	a0, a0, s2
80003db8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003dbc: 93 c5 1c 00  	xori	a1, s9, 1
80003dc0: 33 e5 a5 00  	or	a0, a1, a0
80003dc4: 63 16 05 56  	bnez	a0, 0x80004330 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003dc8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003dcc: 13 84 14 00  	addi	s0, s1, 1
80003dd0: 13 05 00 02  	addi	a0, zero, 32
80003dd4: 93 05 0b 00  	mv	a1, s6
80003dd8: 13 86 04 00  	mv	a2, s1
80003ddc: 93 86 09 00  	mv	a3, s3
80003de0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003de4: 33 05 8a 00  	add	a0, s4, s0
80003de8: 93 04 04 00  	mv	s1, s0
80003dec: e3 60 25 ff  	bltu	a0, s2, 0x80003dcc <.LBB4_83+0xf0>
80003df0: 6f 00 40 54  	j	0x80004334 <.LBB4_90+0x378>
80003df4: 53 04 a5 22  	fmv.d	fs0, fa0

80003df8 <.LBB4_84>:
80003df8: 17 15 00 00  	auipc	a0, 1
80003dfc: 13 05 85 7a  	addi	a0, a0, 1960
80003e00: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80003e04: 53 05 05 a2  	fle.d	a0, fa0, ft0
80003e08: 63 1e 05 00  	bnez	a0, 0x80003e24 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003e0c: 93 f5 4a 00  	andi	a1, s5, 4
80003e10: 13 b5 15 00  	seqz	a0, a1
80003e14: 63 82 05 06  	beqz	a1, 0x80003e78 <.LBB4_88>

80003e18 <.LBB4_85>:
80003e18: 17 1c 00 00  	auipc	s8, 1
80003e1c: 13 0c 8c 4b  	addi	s8, s8, 1208
80003e20: 6f 00 00 06  	j	0x80003e80 <.LBB4_88+0x8>

80003e24 <.LBB4_86>:
80003e24: 17 15 00 00  	auipc	a0, 1
80003e28: 13 05 45 78  	addi	a0, a0, 1924
80003e2c: 07 30 05 00  	fld	ft0, 0(a0)

80003e30 <.LBB4_87>:
80003e30: 17 15 00 00  	auipc	a0, 1
80003e34: 13 05 05 78  	addi	a0, a0, 1920
80003e38: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80003e3c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80003e40: d3 85 80 a2  	fle.d	a1, ft1, fs0
80003e44: 33 75 b5 00  	and	a0, a0, a1
80003e48: 63 1e 05 0e  	bnez	a0, 0x80003f44 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80003e4c: 13 85 0b 00  	mv	a0, s7
80003e50: 93 05 0b 00  	mv	a1, s6
80003e54: 13 06 0a 00  	mv	a2, s4
80003e58: 93 86 09 00  	mv	a3, s3
80003e5c: 53 05 84 22  	fmv.d	fa0, fs0
80003e60: 93 07 09 00  	mv	a5, s2
80003e64: 13 88 0a 00  	mv	a6, s5
80003e68: 97 00 00 00  	auipc	ra, 0
80003e6c: e7 80 40 51  	jalr	1300(ra)
80003e70: 13 04 05 00  	mv	s0, a0
80003e74: 6f 00 00 4c  	j	0x80004334 <.LBB4_90+0x378>

80003e78 <.LBB4_88>:
80003e78: 17 1c 00 00  	auipc	s8, 1
80003e7c: 13 0c 7c 47  	addi	s8, s8, 1143
80003e80: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003e84: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003e88: 13 f5 3a 00  	andi	a0, s5, 3
80003e8c: 33 35 a0 00  	snez	a0, a0
80003e90: b3 b5 2c 01  	sltu	a1, s9, s2
80003e94: 93 c5 15 00  	xori	a1, a1, 1
80003e98: 33 65 b5 00  	or	a0, a0, a1
80003e9c: 93 fa 2a 00  	andi	s5, s5, 2
80003ea0: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003ea4: 63 16 05 02  	bnez	a0, 0x80003ed0 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80003ea8: 33 04 99 41  	sub	s0, s2, s9
80003eac: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003eb0: 93 04 16 00  	addi	s1, a2, 1
80003eb4: 13 05 00 02  	addi	a0, zero, 32
80003eb8: 93 05 0b 00  	mv	a1, s6
80003ebc: 93 86 09 00  	mv	a3, s3
80003ec0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003ec4: 13 04 f4 ff  	addi	s0, s0, -1
80003ec8: 13 86 04 00  	mv	a2, s1
80003ecc: e3 12 04 fe  	bnez	s0, 0x80003eb0 <.LBB4_88+0x38>
80003ed0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003ed4: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003ed8: 33 05 9c 01  	add	a0, s8, s9
80003edc: 03 45 05 00  	lbu	a0, 0(a0)
80003ee0: 13 86 04 00  	mv	a2, s1
80003ee4: 13 84 fc ff  	addi	s0, s9, -1
80003ee8: 93 84 14 00  	addi	s1, s1, 1
80003eec: 93 05 0b 00  	mv	a1, s6
80003ef0: 93 86 09 00  	mv	a3, s3
80003ef4: e7 80 0b 00  	jalr	s7
80003ef8: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80003efc: e3 1e 04 fc  	bnez	s0, 0x80003ed8 <.LBB4_88+0x60>
80003f00: 33 85 44 41  	sub	a0, s1, s4
80003f04: 33 35 25 01  	sltu	a0, a0, s2
80003f08: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003f0c: 93 c5 1a 00  	xori	a1, s5, 1
80003f10: 33 e5 a5 00  	or	a0, a1, a0
80003f14: 63 1e 05 40  	bnez	a0, 0x80004330 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003f18: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003f1c: 13 84 14 00  	addi	s0, s1, 1
80003f20: 13 05 00 02  	addi	a0, zero, 32
80003f24: 93 05 0b 00  	mv	a1, s6
80003f28: 13 86 04 00  	mv	a2, s1
80003f2c: 93 86 09 00  	mv	a3, s3
80003f30: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003f34: 33 05 8a 00  	add	a0, s4, s0
80003f38: 93 04 04 00  	mv	s1, s0
80003f3c: e3 60 25 ff  	bltu	a0, s2, 0x80003f1c <.LBB4_88+0xa4>
80003f40: 6f 00 40 3f  	j	0x80004334 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80003f44: 13 f5 0a 40  	andi	a0, s5, 1024
80003f48: 13 0c 60 00  	addi	s8, zero, 6
80003f4c: 63 04 05 00  	beqz	a0, 0x80003f54 <.LBB4_88+0xdc>
80003f50: 13 0c 07 00  	mv	s8, a4
80003f54: 13 05 a0 00  	addi	a0, zero, 10
80003f58: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003f5c: 63 6c ac 02  	bltu	s8, a0, 0x80003f94 <.LBB4_88+0x11c>
80003f60: 93 04 6c ff  	addi	s1, s8, -10
80003f64: 13 05 f0 01  	addi	a0, zero, 31
80003f68: 63 e4 a4 00  	bltu	s1, a0, 0x80003f70 <.LBB4_88+0xf8>
80003f6c: 93 04 f0 01  	addi	s1, zero, 31
80003f70: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80003f74: 13 05 81 00  	addi	a0, sp, 8
80003f78: 93 05 00 03  	addi	a1, zero, 48
80003f7c: 13 06 04 00  	mv	a2, s0
80003f80: 97 c0 ff ff  	auipc	ra, 1048572
80003f84: e7 80 80 5d  	jalr	1496(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003f88: 13 c5 f4 ff  	not	a0, s1
80003f8c: 33 0c ac 00  	add	s8, s8, a0
80003f90: 6f 00 80 00  	j	0x80003f98 <.LBB4_88+0x120>
80003f94: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80003f98: 13 15 3c 00  	slli	a0, s8, 3

80003f9c <.LBB4_89>:
80003f9c: 97 15 00 00  	auipc	a1, 1
80003fa0: 93 85 45 51  	addi	a1, a1, 1300
80003fa4: 33 05 b5 00  	add	a0, a0, a1
80003fa8: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80003fac: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80003fb0: 53 80 04 d2  	fcvt.d.w	ft0, s1
80003fb4: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80003fb8: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80003fbc <.LBB4_90>:
80003fbc: 17 15 00 00  	auipc	a0, 1
80003fc0: 13 05 c5 5f  	addi	a0, a0, 1532
80003fc4: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80003fc8: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80003fcc: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80003fd0: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80003fd4: d3 05 01 a2  	fle.d	a1, ft2, ft0
80003fd8: 63 90 05 02  	bnez	a1, 0x80003ff8 <.LBB4_90+0x3c>
;     ++frac;
80003fdc: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80003fe0: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80003fe4: d3 15 11 a2  	flt.d	a1, ft2, ft1
80003fe8: 63 94 05 02  	bnez	a1, 0x80004010 <.LBB4_90+0x54>
80003fec: 13 05 00 00  	mv	a0, zero
;       ++whole;
80003ff0: 93 84 14 00  	addi	s1, s1, 1
80003ff4: 6f 00 c0 01  	j	0x80004010 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80003ff8: d3 15 01 a2  	flt.d	a1, ft2, ft0
80003ffc: 63 9a 05 00  	bnez	a1, 0x80004010 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80004000: 93 35 15 00  	seqz	a1, a0
80004004: 13 76 15 00  	andi	a2, a0, 1
80004008: b3 65 b6 00  	or	a1, a2, a1
8000400c: 33 85 a5 00  	add	a0, a1, a0
80004010: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80004014: 63 0c 0c 0c  	beqz	s8, 0x800040ec <.LBB4_90+0x130>
80004018: 13 06 00 00  	mv	a2, zero
8000401c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004020: 33 83 85 00  	add	t1, a1, s0
80004024: 93 02 00 02  	addi	t0, zero, 32
80004028: 33 87 82 40  	sub	a4, t0, s0
8000402c: b7 d5 cc cc  	lui	a1, 838861
80004030: 93 83 d5 cc  	addi	t2, a1, -819
80004034: 13 08 a0 00  	addi	a6, zero, 10
80004038: 93 08 90 00  	addi	a7, zero, 9
8000403c: 63 04 c7 0c  	beq	a4, a2, 0x80004104 <.LBB4_90+0x148>
80004040: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80004044: 33 35 75 02  	mulhu	a0, a0, t2
80004048: 13 55 35 00  	srli	a0, a0, 3
8000404c: b3 06 05 03  	mul	a3, a0, a6
80004050: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80004054: 93 e6 06 03  	ori	a3, a3, 48
80004058: b3 07 c3 00  	add	a5, t1, a2
8000405c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80004060: 13 06 16 00  	addi	a2, a2, 1
80004064: e3 ec b8 fc  	bltu	a7, a1, 0x8000403c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004068: 33 05 c4 00  	add	a0, s0, a2
8000406c: 93 05 f5 ff  	addi	a1, a0, -1
80004070: 93 06 e0 01  	addi	a3, zero, 30
80004074: b3 b6 b6 00  	sltu	a3, a3, a1
80004078: 33 47 cc 00  	xor	a4, s8, a2
8000407c: 13 37 17 00  	seqz	a4, a4
80004080: b3 e6 e6 00  	or	a3, a3, a4
80004084: 63 94 06 08  	bnez	a3, 0x8000410c <.LBB4_90+0x150>
80004088: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000408c: 33 05 85 00  	add	a0, a0, s0
80004090: 93 45 f6 ff  	not	a1, a2
80004094: 33 8c 85 01  	add	s8, a1, s8
80004098: 33 04 c4 00  	add	s0, s0, a2
8000409c: 93 05 f0 01  	addi	a1, zero, 31
800040a0: b3 86 85 40  	sub	a3, a1, s0
800040a4: 33 05 c5 00  	add	a0, a0, a2
800040a8: 93 05 0c 00  	mv	a1, s8
800040ac: 63 64 dc 00  	bltu	s8, a3, 0x800040b4 <.LBB4_90+0xf8>
800040b0: 93 85 06 00  	mv	a1, a3
800040b4: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800040b8: 93 05 00 03  	addi	a1, zero, 48
800040bc: 97 c0 ff ff  	auipc	ra, 1048572
800040c0: e7 80 c0 49  	jalr	1180(ra)
800040c4: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800040c8: b3 05 a4 00  	add	a1, s0, a0
800040cc: 93 b5 f5 01  	sltiu	a1, a1, 31
800040d0: 33 46 ac 00  	xor	a2, s8, a0
800040d4: 33 36 c0 00  	snez	a2, a2
800040d8: 33 f6 c5 00  	and	a2, a1, a2
800040dc: 13 05 15 00  	addi	a0, a0, 1
800040e0: e3 14 06 fe  	bnez	a2, 0x800040c8 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800040e4: 33 05 a4 00  	add	a0, s0, a0
800040e8: 6f 00 80 02  	j	0x80004110 <.LBB4_90+0x154>
;     diff = value - (double)whole;
800040ec: d3 80 04 d2  	fcvt.d.w	ft1, s1
800040f0: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800040f4: 53 05 10 a2  	fle.d	a0, ft0, ft1
800040f8: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800040fc: b3 84 a4 00  	add	s1, s1, a0
80004100: 6f 00 c0 03  	j	0x8000413c <.LBB4_90+0x180>
80004104: 13 04 00 02  	addi	s0, zero, 32
80004108: 6f 00 80 03  	j	0x80004140 <.LBB4_90+0x184>
8000410c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004110: 63 8e 05 00  	beqz	a1, 0x8000412c <.LBB4_90+0x170>
;       buf[len++] = '.';
80004114: 13 04 15 00  	addi	s0, a0, 1
80004118: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
8000411c: 33 85 a5 00  	add	a0, a1, a0
80004120: 93 05 e0 02  	addi	a1, zero, 46
80004124: 23 00 b5 00  	sb	a1, 0(a0)
80004128: 6f 00 80 00  	j	0x80004130 <.LBB4_90+0x174>
8000412c: 13 04 05 00  	mv	s0, a0
80004130: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004134: 93 02 04 00  	mv	t0, s0
80004138: 63 64 85 00  	bltu	a0, s0, 0x80004140 <.LBB4_90+0x184>
8000413c: 93 02 00 02  	addi	t0, zero, 32
80004140: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80004144: 37 65 66 66  	lui	a0, 419430
80004148: 93 05 75 66  	addi	a1, a0, 1639
8000414c: 13 08 a0 00  	addi	a6, zero, 10
80004150: 93 06 81 00  	addi	a3, sp, 8
80004154: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004158: 63 80 82 04  	beq	t0, s0, 0x80004198 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
8000415c: 33 95 b4 02  	mulh	a0, s1, a1
80004160: 93 57 f5 01  	srli	a5, a0, 31
80004164: 13 55 25 40  	srai	a0, a0, 2
80004168: 33 05 f5 00  	add	a0, a0, a5
8000416c: b3 07 05 03  	mul	a5, a0, a6
80004170: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004174: 93 87 07 03  	addi	a5, a5, 48
80004178: 13 0c 14 00  	addi	s8, s0, 1
8000417c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80004180: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80004184: 23 00 f4 00  	sb	a5, 0(s0)
80004188: 13 04 0c 00  	mv	s0, s8
8000418c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80004190: e3 64 c7 fc  	bltu	a4, a2, 0x80004158 <.LBB4_90+0x19c>
80004194: 6f 00 80 00  	j	0x8000419c <.LBB4_90+0x1e0>
80004198: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
8000419c: 93 f4 3a 00  	andi	s1, s5, 3
800041a0: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800041a4: 63 96 a4 06  	bne	s1, a0, 0x80004210 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800041a8: 63 0c 09 00  	beqz	s2, 0x800041c0 <.LBB4_90+0x204>
800041ac: 13 f5 ca 00  	andi	a0, s5, 12
800041b0: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800041b4: 33 e5 ac 00  	or	a0, s9, a0
800041b8: 33 09 a9 40  	sub	s2, s2, a0
800041bc: 6f 00 80 00  	j	0x800041c4 <.LBB4_90+0x208>
800041c0: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800041c4: 33 35 2c 01  	sltu	a0, s8, s2
800041c8: 93 45 15 00  	xori	a1, a0, 1
800041cc: 13 05 f0 01  	addi	a0, zero, 31
800041d0: 33 36 85 01  	sltu	a2, a0, s8
800041d4: b3 65 b6 00  	or	a1, a2, a1
800041d8: 63 9c 05 02  	bnez	a1, 0x80004210 <.LBB4_90+0x254>
800041dc: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800041e0: 93 45 fc ff  	not	a1, s8
800041e4: b3 05 b9 00  	add	a1, s2, a1
800041e8: 33 06 85 41  	sub	a2, a0, s8
800041ec: 33 85 86 01  	add	a0, a3, s8
800041f0: 63 e4 c5 00  	bltu	a1, a2, 0x800041f8 <.LBB4_90+0x23c>
800041f4: 93 05 06 00  	mv	a1, a2
800041f8: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800041fc: 93 05 00 03  	addi	a1, zero, 48
80004200: 13 06 04 00  	mv	a2, s0
80004204: 97 c0 ff ff  	auipc	ra, 1048572
80004208: e7 80 40 35  	jalr	852(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000420c: 33 0c 84 01  	add	s8, s0, s8
80004210: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004214: 63 6a 85 05  	bltu	a0, s8, 0x80004268 <.LBB4_90+0x2ac>
;     if (negative) {
80004218: 63 8c 0c 00  	beqz	s9, 0x80004230 <.LBB4_90+0x274>
8000421c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80004220: 33 05 85 01  	add	a0, a0, s8
80004224: 13 0c 1c 00  	addi	s8, s8, 1
80004228: 93 05 d0 02  	addi	a1, zero, 45
8000422c: 6f 00 80 03  	j	0x80004264 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80004230: 13 f5 4a 00  	andi	a0, s5, 4
80004234: 63 10 05 02  	bnez	a0, 0x80004254 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80004238: 13 f5 8a 00  	andi	a0, s5, 8
8000423c: 63 06 05 02  	beqz	a0, 0x80004268 <.LBB4_90+0x2ac>
80004240: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80004244: 33 05 85 01  	add	a0, a0, s8
80004248: 13 0c 1c 00  	addi	s8, s8, 1
8000424c: 93 05 00 02  	addi	a1, zero, 32
80004250: 6f 00 40 01  	j	0x80004264 <.LBB4_90+0x2a8>
80004254: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004258: 33 05 85 01  	add	a0, a0, s8
8000425c: 13 0c 1c 00  	addi	s8, s8, 1
80004260: 93 05 b0 02  	addi	a1, zero, 43
80004264: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004268: 33 35 90 00  	snez	a0, s1
8000426c: b3 35 2c 01  	sltu	a1, s8, s2
80004270: 93 c5 15 00  	xori	a1, a1, 1
80004274: 33 65 b5 00  	or	a0, a0, a1
80004278: 93 fa 2a 00  	andi	s5, s5, 2
8000427c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004280: 63 16 05 02  	bnez	a0, 0x800042ac <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004284: b3 04 89 41  	sub	s1, s2, s8
80004288: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000428c: 13 04 16 00  	addi	s0, a2, 1
80004290: 13 05 00 02  	addi	a0, zero, 32
80004294: 93 05 0b 00  	mv	a1, s6
80004298: 93 86 09 00  	mv	a3, s3
8000429c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800042a0: 93 84 f4 ff  	addi	s1, s1, -1
800042a4: 13 06 04 00  	mv	a2, s0
800042a8: e3 92 04 fe  	bnez	s1, 0x8000428c <.LBB4_90+0x2d0>
800042ac: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800042b0: 63 0c 0c 02  	beqz	s8, 0x800042e8 <.LBB4_90+0x32c>
800042b4: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800042b8: 33 85 8c 01  	add	a0, s9, s8
800042bc: 03 45 05 00  	lbu	a0, 0(a0)
800042c0: 13 0d fc ff  	addi	s10, s8, -1
800042c4: 93 04 14 00  	addi	s1, s0, 1
800042c8: 93 05 0b 00  	mv	a1, s6
800042cc: 13 06 04 00  	mv	a2, s0
800042d0: 93 86 09 00  	mv	a3, s3
800042d4: e7 80 0b 00  	jalr	s7
800042d8: 13 84 04 00  	mv	s0, s1
800042dc: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800042e0: e3 1c 0d fc  	bnez	s10, 0x800042b8 <.LBB4_90+0x2fc>
800042e4: 6f 00 80 00  	j	0x800042ec <.LBB4_90+0x330>
800042e8: 93 04 04 00  	mv	s1, s0
800042ec: 33 85 44 41  	sub	a0, s1, s4
800042f0: 33 35 25 01  	sltu	a0, a0, s2
800042f4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800042f8: 93 c5 1a 00  	xori	a1, s5, 1
800042fc: 33 e5 a5 00  	or	a0, a1, a0
80004300: 63 18 05 02  	bnez	a0, 0x80004330 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004304: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004308: 13 84 14 00  	addi	s0, s1, 1
8000430c: 13 05 00 02  	addi	a0, zero, 32
80004310: 93 05 0b 00  	mv	a1, s6
80004314: 13 86 04 00  	mv	a2, s1
80004318: 93 86 09 00  	mv	a3, s3
8000431c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004320: 33 05 8a 00  	add	a0, s4, s0
80004324: 93 04 04 00  	mv	s1, s0
80004328: e3 60 25 ff  	bltu	a0, s2, 0x80004308 <.LBB4_90+0x34c>
8000432c: 6f 00 80 00  	j	0x80004334 <.LBB4_90+0x378>
80004330: 13 84 04 00  	mv	s0, s1
; }
80004334: 13 05 04 00  	mv	a0, s0
80004338: 07 39 81 02  	fld	fs2, 40(sp)
8000433c: 87 34 01 03  	fld	fs1, 48(sp)
80004340: 07 34 81 03  	fld	fs0, 56(sp)
80004344: 03 2d 01 04  	lw	s10, 64(sp)
80004348: 83 2c 41 04  	lw	s9, 68(sp)
8000434c: 03 2c 81 04  	lw	s8, 72(sp)
80004350: 83 2b c1 04  	lw	s7, 76(sp)
80004354: 03 2b 01 05  	lw	s6, 80(sp)
80004358: 83 2a 41 05  	lw	s5, 84(sp)
8000435c: 03 2a 81 05  	lw	s4, 88(sp)
80004360: 83 29 c1 05  	lw	s3, 92(sp)
80004364: 03 29 01 06  	lw	s2, 96(sp)
80004368: 83 24 41 06  	lw	s1, 100(sp)
8000436c: 03 24 81 06  	lw	s0, 104(sp)
80004370: 83 20 c1 06  	lw	ra, 108(sp)
80004374: 13 01 01 07  	addi	sp, sp, 112
80004378: 67 80 00 00  	ret

8000437c <_etoa>:
; {
8000437c: 13 01 01 f8  	addi	sp, sp, -128
80004380: 23 2e 11 06  	sw	ra, 124(sp)
80004384: 23 2c 81 06  	sw	s0, 120(sp)
80004388: 23 2a 91 06  	sw	s1, 116(sp)
8000438c: 23 28 21 07  	sw	s2, 112(sp)
80004390: 23 26 31 07  	sw	s3, 108(sp)
80004394: 23 24 41 07  	sw	s4, 104(sp)
80004398: 23 22 51 07  	sw	s5, 100(sp)
8000439c: 23 20 61 07  	sw	s6, 96(sp)
800043a0: 23 2e 71 05  	sw	s7, 92(sp)
800043a4: 23 2c 81 05  	sw	s8, 88(sp)
800043a8: 23 2a 91 05  	sw	s9, 84(sp)
800043ac: 23 28 a1 05  	sw	s10, 80(sp)
800043b0: 23 26 b1 05  	sw	s11, 76(sp)

800043b4 <.LBB5_43>:
800043b4: 97 14 00 00  	auipc	s1, 1
800043b8: 93 84 c4 20  	addi	s1, s1, 524
800043bc: 87 b0 04 00  	fld	ft1, 0(s1)

800043c0 <.LBB5_44>:
800043c0: 97 14 00 00  	auipc	s1, 1
800043c4: 93 84 84 20  	addi	s1, s1, 520
800043c8: 07 b1 04 00  	fld	ft2, 0(s1)
800043cc: 53 00 a5 22  	fmv.d	ft0, fa0
800043d0: d3 04 15 a2  	fle.d	s1, fa0, ft1
800043d4: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800043d8: b3 f4 84 00  	and	s1, s1, s0
800043dc: 93 0a 08 00  	mv	s5, a6
800043e0: 13 89 07 00  	mv	s2, a5
800043e4: 93 07 07 00  	mv	a5, a4
800043e8: 93 89 06 00  	mv	s3, a3
800043ec: 13 0a 06 00  	mv	s4, a2
800043f0: 13 8b 05 00  	mv	s6, a1
800043f4: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800043f8: 63 92 04 06  	bnez	s1, 0x8000445c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800043fc: 13 85 0b 00  	mv	a0, s7
80004400: 93 05 0b 00  	mv	a1, s6
80004404: 13 06 0a 00  	mv	a2, s4
80004408: 93 86 09 00  	mv	a3, s3
8000440c: 53 05 00 22  	fmv.d	fa0, ft0
80004410: 13 87 07 00  	mv	a4, a5
80004414: 93 07 09 00  	mv	a5, s2
80004418: 13 88 0a 00  	mv	a6, s5
8000441c: 83 2d c1 04  	lw	s11, 76(sp)
80004420: 03 2d 01 05  	lw	s10, 80(sp)
80004424: 83 2c 41 05  	lw	s9, 84(sp)
80004428: 03 2c 81 05  	lw	s8, 88(sp)
8000442c: 83 2b c1 05  	lw	s7, 92(sp)
80004430: 03 2b 01 06  	lw	s6, 96(sp)
80004434: 83 2a 41 06  	lw	s5, 100(sp)
80004438: 03 2a 81 06  	lw	s4, 104(sp)
8000443c: 83 29 c1 06  	lw	s3, 108(sp)
80004440: 03 29 01 07  	lw	s2, 112(sp)
80004444: 83 24 41 07  	lw	s1, 116(sp)
80004448: 03 24 81 07  	lw	s0, 120(sp)
8000444c: 83 20 c1 07  	lw	ra, 124(sp)
80004450: 13 01 01 08  	addi	sp, sp, 128
80004454: 17 03 00 00  	auipc	t1, 0
80004458: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
8000445c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80004460: 13 f5 0a 40  	andi	a0, s5, 1024
80004464: 13 07 60 00  	addi	a4, zero, 6
80004468: 63 04 05 00  	beqz	a0, 0x80004470 <.LBB5_44+0xb0>
8000446c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004470: 27 30 a1 02  	fsd	fa0, 32(sp)
80004474: 83 25 41 02  	lw	a1, 36(sp)
80004478: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000447c: 93 d6 45 01  	srli	a3, a1, 20
80004480: b7 07 10 00  	lui	a5, 256
80004484: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004488: b3 f5 f5 00  	and	a1, a1, a5
8000448c: 23 2c c1 00  	sw	a2, 24(sp)
80004490: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004494: b3 e5 c5 00  	or	a1, a1, a2
80004498: 23 2e b1 00  	sw	a1, 28(sp)
8000449c: 87 30 81 01  	fld	ft1, 24(sp)

800044a0 <.LBB5_45>:
800044a0: 97 15 00 00  	auipc	a1, 1
800044a4: 93 85 05 13  	addi	a1, a1, 304
800044a8: 07 b1 05 00  	fld	ft2, 0(a1)

800044ac <.LBB5_46>:
800044ac: 97 15 00 00  	auipc	a1, 1
800044b0: 93 85 c5 12  	addi	a1, a1, 300
800044b4: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800044b8: 93 f5 f6 7f  	andi	a1, a3, 2047
800044bc: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800044c0: 53 82 05 d2  	fcvt.d.w	ft4, a1
800044c4: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800044c8 <.LBB5_47>:
800044c8: 97 15 00 00  	auipc	a1, 1
800044cc: 93 85 85 11  	addi	a1, a1, 280
800044d0: 07 b1 05 00  	fld	ft2, 0(a1)

800044d4 <.LBB5_48>:
800044d4: 97 15 00 00  	auipc	a1, 1
800044d8: 93 85 45 11  	addi	a1, a1, 276
800044dc: 87 b1 05 00  	fld	ft3, 0(a1)

800044e0 <.LBB5_49>:
800044e0: 97 15 00 00  	auipc	a1, 1
800044e4: 93 85 05 11  	addi	a1, a1, 272
800044e8: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800044ec: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800044f0: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800044f4: d3 80 05 d2  	fcvt.d.w	ft1, a1
800044f8: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

800044fc <.LBB5_50>:
800044fc: 17 16 00 00  	auipc	a2, 1
80004500: 13 06 c6 0f  	addi	a2, a2, 252
80004504: 87 31 06 00  	fld	ft3, 0(a2)

80004508 <.LBB5_51>:
80004508: 17 16 00 00  	auipc	a2, 1
8000450c: 13 06 86 0f  	addi	a2, a2, 248
80004510: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004514: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004518: 53 01 06 d2  	fcvt.d.w	ft2, a2
8000451c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80004520: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004524: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004528: 13 06 f6 3f  	addi	a2, a2, 1023
8000452c: 23 28 01 00  	sw	zero, 16(sp)
80004530: 13 16 46 01  	slli	a2, a2, 20
80004534: 23 2a c1 00  	sw	a2, 20(sp)

80004538 <.LBB5_52>:
80004538: 17 16 00 00  	auipc	a2, 1
8000453c: 13 06 86 0d  	addi	a2, a2, 216
80004540: 87 31 06 00  	fld	ft3, 0(a2)

80004544 <.LBB5_53>:
80004544: 17 16 00 00  	auipc	a2, 1
80004548: 13 06 46 0d  	addi	a2, a2, 212
8000454c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004550: 87 32 01 01  	fld	ft5, 16(sp)

80004554 <.LBB5_54>:
80004554: 17 16 00 00  	auipc	a2, 1
80004558: 13 06 46 0b  	addi	a2, a2, 180
8000455c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004560: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004564 <.LBB5_55>:
80004564: 17 16 00 00  	auipc	a2, 1
80004568: 13 06 c6 0b  	addi	a2, a2, 188
8000456c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004570: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004574: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004578: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
8000457c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004580: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004584: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004588: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
8000458c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80004590: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004594: 63 0a 06 00  	beqz	a2, 0x800045a8 <.LBB5_56+0x10>

80004598 <.LBB5_56>:
80004598: 97 16 00 00  	auipc	a3, 1
8000459c: 93 86 06 09  	addi	a3, a3, 144
800045a0: 07 b1 06 00  	fld	ft2, 0(a3)
800045a4: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800045a8: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800045ac: 93 05 34 06  	addi	a1, s0, 99
800045b0: 93 b5 75 0c  	sltiu	a1, a1, 199
800045b4: 13 06 50 00  	addi	a2, zero, 5
800045b8: b7 16 00 00  	lui	a3, 1
800045bc: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800045c0: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800045c4: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800045c8: 63 84 06 06  	beqz	a3, 0x80004630 <.LBB5_58+0x58>

800045cc <.LBB5_57>:
800045cc: 97 15 00 00  	auipc	a1, 1
800045d0: 93 85 45 06  	addi	a1, a1, 100
800045d4: 07 b1 05 00  	fld	ft2, 0(a1)

800045d8 <.LBB5_58>:
800045d8: 97 15 00 00  	auipc	a1, 1
800045dc: 93 85 05 06  	addi	a1, a1, 96
800045e0: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800045e4: d3 15 25 a2  	flt.d	a1, fa0, ft2
800045e8: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800045ec: b3 e5 c5 00  	or	a1, a1, a2
800045f0: 63 98 05 00  	bnez	a1, 0x80004600 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800045f4: 63 40 e4 02  	blt	s0, a4, 0x80004614 <.LBB5_58+0x3c>
800045f8: 13 07 00 00  	mv	a4, zero
800045fc: 6f 00 00 02  	j	0x8000461c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004600: 63 06 07 02  	beqz	a4, 0x8000462c <.LBB5_58+0x54>
80004604: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004608: 13 45 15 00  	xori	a0, a0, 1
8000460c: 33 07 a7 40  	sub	a4, a4, a0
80004610: 6f 00 00 02  	j	0x80004630 <.LBB5_58+0x58>
80004614: 13 45 f4 ff  	not	a0, s0
80004618: 33 07 a7 00  	add	a4, a4, a0
8000461c: 13 04 00 00  	mv	s0, zero
80004620: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004624: 93 ea 0a 40  	ori	s5, s5, 1024
80004628: 6f 00 80 00  	j	0x80004630 <.LBB5_58+0x58>
8000462c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80004630: b3 05 99 41  	sub	a1, s2, s9
80004634: 33 36 b9 00  	sltu	a2, s2, a1
80004638: 13 05 00 00  	mv	a0, zero
8000463c: 63 14 06 00  	bnez	a2, 0x80004644 <.LBB5_58+0x6c>
80004640: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004644: 93 07 00 00  	mv	a5, zero
80004648: 93 d5 1a 00  	srli	a1, s5, 1
8000464c: 93 f4 15 00  	andi	s1, a1, 1
80004650: b3 35 90 01  	snez	a1, s9
80004654: b3 f5 b4 00  	and	a1, s1, a1
80004658: 53 01 00 d2  	fcvt.d.w	ft2, zero
8000465c: 63 94 05 00  	bnez	a1, 0x80004664 <.LBB5_58+0x8c>
80004660: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004664: 93 35 14 00  	seqz	a1, s0
80004668: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
8000466c: 63 94 05 00  	bnez	a1, 0x80004674 <.LBB5_58+0x9c>
80004670: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004674: 63 04 05 00  	beqz	a0, 0x8000467c <.LBB5_58+0xa4>
80004678: 53 15 a5 22  	fneg.d	fa0, fa0
8000467c: 37 f5 ff ff  	lui	a0, 1048575
80004680: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004684: 33 f8 aa 00  	and	a6, s5, a0
80004688: 13 85 0b 00  	mv	a0, s7
8000468c: 93 05 0b 00  	mv	a1, s6
80004690: 13 06 0a 00  	mv	a2, s4
80004694: 93 86 09 00  	mv	a3, s3
80004698: 97 f0 ff ff  	auipc	ra, 1048575
8000469c: e7 80 40 60  	jalr	1540(ra)
800046a0: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800046a4: 63 82 0c 18  	beqz	s9, 0x80004828 <.LBB5_58+0x250>
800046a8: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800046ac: 13 f5 0a 02  	andi	a0, s5, 32
800046b0: 13 45 55 06  	xori	a0, a0, 101
800046b4: 93 05 0b 00  	mv	a1, s6
800046b8: 13 06 0d 00  	mv	a2, s10
800046bc: 93 86 09 00  	mv	a3, s3
800046c0: e7 80 0b 00  	jalr	s7
800046c4: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800046c8: 93 5a f4 01  	srli	s5, s0, 31
800046cc: 13 55 f4 41  	srai	a0, s0, 31
800046d0: b3 05 a4 00  	add	a1, s0, a0
800046d4: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800046d8: 93 8d dc ff  	addi	s11, s9, -3
800046dc: 13 04 f0 01  	addi	s0, zero, 31
800046e0: 37 d5 cc cc  	lui	a0, 838861
800046e4: 13 05 d5 cc  	addi	a0, a0, -819
800046e8: 13 08 a0 00  	addi	a6, zero, 10
800046ec: 93 08 c1 02  	addi	a7, sp, 44
800046f0: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800046f4: b3 37 a7 02  	mulhu	a5, a4, a0
800046f8: 93 d5 37 00  	srli	a1, a5, 3
800046fc: b3 87 05 03  	mul	a5, a1, a6
80004700: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004704: 13 e6 07 03  	ori	a2, a5, 48
80004708: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000470c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004710: 13 0c 1c 00  	addi	s8, s8, 1
80004714: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004718: 33 b6 e2 00  	sltu	a2, t0, a4
8000471c: 33 f6 c7 00  	and	a2, a5, a2
80004720: 93 8d fd ff  	addi	s11, s11, -1
80004724: 13 04 f4 ff  	addi	s0, s0, -1
80004728: 13 87 05 00  	mv	a4, a1
8000472c: e3 14 06 fc  	bnez	a2, 0x800046f4 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004730: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004734: 33 35 ac 00  	sltu	a0, s8, a0
80004738: 13 45 15 00  	xori	a0, a0, 1
8000473c: 93 c5 17 00  	xori	a1, a5, 1
80004740: 33 e5 a5 00  	or	a0, a1, a0
80004744: 63 12 05 04  	bnez	a0, 0x80004788 <.LBB5_58+0x1b0>
80004748: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000474c: b3 85 8c 41  	sub	a1, s9, s8
80004750: 93 85 d5 ff  	addi	a1, a1, -3
80004754: 13 06 f0 01  	addi	a2, zero, 31
80004758: 33 06 86 41  	sub	a2, a2, s8
8000475c: 33 05 85 01  	add	a0, a0, s8
80004760: 63 e4 c5 00  	bltu	a1, a2, 0x80004768 <.LBB5_58+0x190>
80004764: 93 05 06 00  	mv	a1, a2
80004768: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000476c: 93 05 00 03  	addi	a1, zero, 48
80004770: 97 c0 ff ff  	auipc	ra, 1048572
80004774: e7 80 80 de  	jalr	-536(ra)
;   if (flags & FLAGS_HASH) {
80004778: 63 e4 8d 00  	bltu	s11, s0, 0x80004780 <.LBB5_58+0x1a8>
8000477c: 93 0d 04 00  	mv	s11, s0
80004780: 33 85 8d 01  	add	a0, s11, s8
80004784: 13 0c 15 00  	addi	s8, a0, 1
80004788: 83 2c c1 00  	lw	s9, 12(sp)
8000478c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004790: 63 60 85 03  	bltu	a0, s8, 0x800047b0 <.LBB5_58+0x1d8>
80004794: 13 05 c1 02  	addi	a0, sp, 44
80004798: 33 05 85 01  	add	a0, a0, s8
8000479c: 93 05 d0 02  	addi	a1, zero, 45
800047a0: 63 94 0a 00  	bnez	s5, 0x800047a8 <.LBB5_58+0x1d0>
800047a4: 93 05 b0 02  	addi	a1, zero, 43
800047a8: 13 0c 1c 00  	addi	s8, s8, 1
800047ac: 23 00 b5 00  	sb	a1, 0(a0)
800047b0: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800047b4: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800047b8: 33 85 8a 01  	add	a0, s5, s8
800047bc: 03 45 05 00  	lbu	a0, 0(a0)
800047c0: 13 06 04 00  	mv	a2, s0
800047c4: 93 04 fc ff  	addi	s1, s8, -1
800047c8: 13 04 14 00  	addi	s0, s0, 1
800047cc: 93 05 0b 00  	mv	a1, s6
800047d0: 93 86 09 00  	mv	a3, s3
800047d4: e7 80 0b 00  	jalr	s7
800047d8: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800047dc: e3 9e 04 fc  	bnez	s1, 0x800047b8 <.LBB5_58+0x1e0>
800047e0: 33 05 44 41  	sub	a0, s0, s4
800047e4: 33 35 25 01  	sltu	a0, a0, s2
800047e8: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800047ec: 93 c5 1c 00  	xori	a1, s9, 1
800047f0: 33 e5 a5 00  	or	a0, a1, a0
800047f4: 63 18 05 02  	bnez	a0, 0x80004824 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800047f8: b3 04 40 41  	neg	s1, s4
800047fc: 13 0d 14 00  	addi	s10, s0, 1
80004800: 13 05 00 02  	addi	a0, zero, 32
80004804: 93 05 0b 00  	mv	a1, s6
80004808: 13 06 04 00  	mv	a2, s0
8000480c: 93 86 09 00  	mv	a3, s3
80004810: e7 80 0b 00  	jalr	s7
80004814: 33 85 a4 01  	add	a0, s1, s10
80004818: 13 04 0d 00  	mv	s0, s10
8000481c: e3 60 25 ff  	bltu	a0, s2, 0x800047fc <.LBB5_58+0x224>
80004820: 6f 00 80 00  	j	0x80004828 <.LBB5_58+0x250>
80004824: 13 0d 04 00  	mv	s10, s0
; }
80004828: 13 05 0d 00  	mv	a0, s10
8000482c: 83 2d c1 04  	lw	s11, 76(sp)
80004830: 03 2d 01 05  	lw	s10, 80(sp)
80004834: 83 2c 41 05  	lw	s9, 84(sp)
80004838: 03 2c 81 05  	lw	s8, 88(sp)
8000483c: 83 2b c1 05  	lw	s7, 92(sp)
80004840: 03 2b 01 06  	lw	s6, 96(sp)
80004844: 83 2a 41 06  	lw	s5, 100(sp)
80004848: 03 2a 81 06  	lw	s4, 104(sp)
8000484c: 83 29 c1 06  	lw	s3, 108(sp)
80004850: 03 29 01 07  	lw	s2, 112(sp)
80004854: 83 24 41 07  	lw	s1, 116(sp)
80004858: 03 24 81 07  	lw	s0, 120(sp)
8000485c: 83 20 c1 07  	lw	ra, 124(sp)
80004860: 13 01 01 08  	addi	sp, sp, 128
80004864: 67 80 00 00  	ret

80004868 <_ntoa_format>:
; {
80004868: 13 01 01 fc  	addi	sp, sp, -64
8000486c: 23 2e 11 02  	sw	ra, 60(sp)
80004870: 23 2c 81 02  	sw	s0, 56(sp)
80004874: 23 2a 91 02  	sw	s1, 52(sp)
80004878: 23 28 21 03  	sw	s2, 48(sp)
8000487c: 23 26 31 03  	sw	s3, 44(sp)
80004880: 23 24 41 03  	sw	s4, 40(sp)
80004884: 23 22 51 03  	sw	s5, 36(sp)
80004888: 23 20 61 03  	sw	s6, 32(sp)
8000488c: 23 2e 71 01  	sw	s7, 28(sp)
80004890: 23 2c 81 01  	sw	s8, 24(sp)
80004894: 23 2a 91 01  	sw	s9, 20(sp)
80004898: 23 28 a1 01  	sw	s10, 16(sp)
8000489c: 23 26 b1 01  	sw	s11, 12(sp)
800048a0: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800048a4: 93 fa 2e 00  	andi	s5, t4, 2
800048a8: 13 09 0e 00  	mv	s2, t3
800048ac: 13 8d 03 00  	mv	s10, t2
800048b0: 93 8c 08 00  	mv	s9, a7
800048b4: 13 8c 07 00  	mv	s8, a5
800048b8: 93 89 06 00  	mv	s3, a3
800048bc: 13 0a 06 00  	mv	s4, a2
800048c0: 13 8b 05 00  	mv	s6, a1
800048c4: 93 0d 05 00  	mv	s11, a0
800048c8: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800048cc: 63 9e 0a 0c  	bnez	s5, 0x800049a8 <_ntoa_format+0x140>
800048d0: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800048d4: 63 0e 09 00  	beqz	s2, 0x800048f0 <_ntoa_format+0x88>
800048d8: 63 0e 04 00  	beqz	s0, 0x800048f4 <_ntoa_format+0x8c>
800048dc: 13 f5 cb 00  	andi	a0, s7, 12
800048e0: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800048e4: 33 65 05 01  	or	a0, a0, a6
800048e8: 33 09 a9 40  	sub	s2, s2, a0
800048ec: 6f 00 80 00  	j	0x800048f4 <_ntoa_format+0x8c>
800048f0: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800048f4: 33 35 ac 01  	sltu	a0, s8, s10
800048f8: 93 45 15 00  	xori	a1, a0, 1
800048fc: 13 05 f0 01  	addi	a0, zero, 31
80004900: 33 36 85 01  	sltu	a2, a0, s8
80004904: b3 65 b6 00  	or	a1, a2, a1
80004908: 63 94 05 04  	bnez	a1, 0x80004950 <_ntoa_format+0xe8>
8000490c: 23 22 51 01  	sw	s5, 4(sp)
80004910: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004914: 93 45 fc ff  	not	a1, s8
80004918: b3 85 a5 01  	add	a1, a1, s10
8000491c: 33 06 85 41  	sub	a2, a0, s8
80004920: 33 05 87 01  	add	a0, a4, s8
80004924: 63 e4 c5 00  	bltu	a1, a2, 0x8000492c <_ntoa_format+0xc4>
80004928: 93 05 06 00  	mv	a1, a2
8000492c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004930: 93 05 00 03  	addi	a1, zero, 48
80004934: 13 86 04 00  	mv	a2, s1
80004938: 97 c0 ff ff  	auipc	ra, 1048572
8000493c: e7 80 00 c2  	jalr	-992(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004940: 33 8c 84 01  	add	s8, s1, s8
80004944: 03 27 81 00  	lw	a4, 8(sp)
80004948: 13 88 0a 00  	mv	a6, s5
8000494c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004950: 63 0c 04 04  	beqz	s0, 0x800049a8 <_ntoa_format+0x140>
80004954: 33 35 2c 01  	sltu	a0, s8, s2
80004958: 93 45 15 00  	xori	a1, a0, 1
8000495c: 13 05 f0 01  	addi	a0, zero, 31
80004960: 33 36 85 01  	sltu	a2, a0, s8
80004964: b3 e5 c5 00  	or	a1, a1, a2
80004968: 63 90 05 04  	bnez	a1, 0x800049a8 <_ntoa_format+0x140>
8000496c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004970: 93 45 fc ff  	not	a1, s8
80004974: b3 05 b9 00  	add	a1, s2, a1
80004978: 33 06 85 41  	sub	a2, a0, s8
8000497c: 33 05 87 01  	add	a0, a4, s8
80004980: 63 e4 c5 00  	bltu	a1, a2, 0x80004988 <_ntoa_format+0x120>
80004984: 93 05 06 00  	mv	a1, a2
80004988: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000498c: 93 05 00 03  	addi	a1, zero, 48
80004990: 13 86 04 00  	mv	a2, s1
80004994: 97 c0 ff ff  	auipc	ra, 1048572
80004998: e7 80 40 bc  	jalr	-1084(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000499c: 33 8c 84 01  	add	s8, s1, s8
800049a0: 03 27 81 00  	lw	a4, 8(sp)
800049a4: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800049a8: 13 f5 0b 01  	andi	a0, s7, 16
800049ac: 63 02 05 0e  	beqz	a0, 0x80004a90 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800049b0: 13 f5 0b 40  	andi	a0, s7, 1024
800049b4: 13 55 a5 00  	srli	a0, a0, 10
800049b8: 93 35 1c 00  	seqz	a1, s8
800049bc: 33 65 b5 00  	or	a0, a0, a1
800049c0: 63 1e 05 02  	bnez	a0, 0x800049fc <_ntoa_format+0x194>
800049c4: 33 45 ac 01  	xor	a0, s8, s10
800049c8: 33 35 a0 00  	snez	a0, a0
800049cc: b3 45 2c 01  	xor	a1, s8, s2
800049d0: b3 35 b0 00  	snez	a1, a1
800049d4: 33 75 b5 00  	and	a0, a0, a1
800049d8: 63 12 05 02  	bnez	a0, 0x800049fc <_ntoa_format+0x194>
;       len--;
800049dc: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800049e0: b3 35 a0 00  	snez	a1, a0
800049e4: 13 86 0c ff  	addi	a2, s9, -16
800049e8: 13 36 16 00  	seqz	a2, a2
800049ec: b3 75 b6 00  	and	a1, a2, a1
800049f0: 63 84 05 00  	beqz	a1, 0x800049f8 <_ntoa_format+0x190>
800049f4: 13 05 ec ff  	addi	a0, s8, -2
800049f8: 13 0c 05 00  	mv	s8, a0
800049fc: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004a00: 63 96 ac 02  	bne	s9, a0, 0x80004a2c <_ntoa_format+0x1c4>
80004a04: 13 f5 0b 02  	andi	a0, s7, 32
80004a08: 93 55 55 00  	srli	a1, a0, 5
80004a0c: 13 06 f0 01  	addi	a2, zero, 31
80004a10: 33 36 86 01  	sltu	a2, a2, s8
80004a14: b3 e5 c5 00  	or	a1, a1, a2
80004a18: 63 9e 05 02  	bnez	a1, 0x80004a54 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004a1c: 33 05 87 01  	add	a0, a4, s8
80004a20: 13 0c 1c 00  	addi	s8, s8, 1
80004a24: 93 05 80 07  	addi	a1, zero, 120
80004a28: 6f 00 c0 04  	j	0x80004a74 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004a2c: 13 85 ec ff  	addi	a0, s9, -2
80004a30: 33 35 a0 00  	snez	a0, a0
80004a34: 93 05 f0 01  	addi	a1, zero, 31
80004a38: b3 b5 85 01  	sltu	a1, a1, s8
80004a3c: 33 65 b5 00  	or	a0, a0, a1
80004a40: 63 1c 05 02  	bnez	a0, 0x80004a78 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004a44: 33 05 87 01  	add	a0, a4, s8
80004a48: 13 0c 1c 00  	addi	s8, s8, 1
80004a4c: 93 05 20 06  	addi	a1, zero, 98
80004a50: 6f 00 40 02  	j	0x80004a74 <_ntoa_format+0x20c>
80004a54: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004a58: 13 35 15 00  	seqz	a0, a0
80004a5c: 93 c5 15 00  	xori	a1, a1, 1
80004a60: 33 65 b5 00  	or	a0, a0, a1
80004a64: 63 1a 05 00  	bnez	a0, 0x80004a78 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004a68: 33 05 87 01  	add	a0, a4, s8
80004a6c: 13 0c 1c 00  	addi	s8, s8, 1
80004a70: 93 05 80 05  	addi	a1, zero, 88
80004a74: 23 00 b5 00  	sb	a1, 0(a0)
80004a78: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004a7c: 63 60 85 07  	bltu	a0, s8, 0x80004adc <_ntoa_format+0x274>
;       buf[len++] = '0';
80004a80: 33 05 87 01  	add	a0, a4, s8
80004a84: 13 0c 1c 00  	addi	s8, s8, 1
80004a88: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80004a8c: 23 00 b5 00  	sb	a1, 0(a0)
80004a90: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004a94: 63 64 85 05  	bltu	a0, s8, 0x80004adc <_ntoa_format+0x274>
;     if (negative) {
80004a98: 63 0a 08 00  	beqz	a6, 0x80004aac <_ntoa_format+0x244>
;       buf[len++] = '-';
80004a9c: 33 05 87 01  	add	a0, a4, s8
80004aa0: 13 0c 1c 00  	addi	s8, s8, 1
80004aa4: 93 05 d0 02  	addi	a1, zero, 45
80004aa8: 6f 00 00 03  	j	0x80004ad8 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80004aac: 13 f5 4b 00  	andi	a0, s7, 4
80004ab0: 63 1e 05 00  	bnez	a0, 0x80004acc <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80004ab4: 13 f5 8b 00  	andi	a0, s7, 8
80004ab8: 63 02 05 02  	beqz	a0, 0x80004adc <_ntoa_format+0x274>
;       buf[len++] = ' ';
80004abc: 33 05 87 01  	add	a0, a4, s8
80004ac0: 13 0c 1c 00  	addi	s8, s8, 1
80004ac4: 93 05 00 02  	addi	a1, zero, 32
80004ac8: 6f 00 00 01  	j	0x80004ad8 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004acc: 33 05 87 01  	add	a0, a4, s8
80004ad0: 13 0c 1c 00  	addi	s8, s8, 1
80004ad4: 93 05 b0 02  	addi	a1, zero, 43
80004ad8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004adc: 13 f5 3b 00  	andi	a0, s7, 3
80004ae0: 33 35 a0 00  	snez	a0, a0
80004ae4: b3 35 2c 01  	sltu	a1, s8, s2
80004ae8: 93 c5 15 00  	xori	a1, a1, 1
80004aec: 33 65 b5 00  	or	a0, a0, a1
80004af0: 13 04 0a 00  	mv	s0, s4
80004af4: 63 16 05 02  	bnez	a0, 0x80004b20 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80004af8: b3 04 89 41  	sub	s1, s2, s8
80004afc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004b00: 13 04 16 00  	addi	s0, a2, 1
80004b04: 13 05 00 02  	addi	a0, zero, 32
80004b08: 93 05 0b 00  	mv	a1, s6
80004b0c: 93 86 09 00  	mv	a3, s3
80004b10: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80004b14: 93 84 f4 ff  	addi	s1, s1, -1
80004b18: 13 06 04 00  	mv	a2, s0
80004b1c: e3 92 04 fe  	bnez	s1, 0x80004b00 <_ntoa_format+0x298>
80004b20: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80004b24: 63 0e 0c 02  	beqz	s8, 0x80004b60 <_ntoa_format+0x2f8>
80004b28: 03 25 81 00  	lw	a0, 8(sp)
80004b2c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004b30: 33 85 8b 01  	add	a0, s7, s8
80004b34: 03 45 05 00  	lbu	a0, 0(a0)
80004b38: 93 0c fc ff  	addi	s9, s8, -1
80004b3c: 93 04 14 00  	addi	s1, s0, 1
80004b40: 93 05 0b 00  	mv	a1, s6
80004b44: 13 06 04 00  	mv	a2, s0
80004b48: 93 86 09 00  	mv	a3, s3
80004b4c: e7 80 0d 00  	jalr	s11
80004b50: 13 84 04 00  	mv	s0, s1
80004b54: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80004b58: e3 9c 0c fc  	bnez	s9, 0x80004b30 <_ntoa_format+0x2c8>
80004b5c: 6f 00 80 00  	j	0x80004b64 <_ntoa_format+0x2fc>
80004b60: 93 04 04 00  	mv	s1, s0
80004b64: 33 85 44 41  	sub	a0, s1, s4
80004b68: 33 35 25 01  	sltu	a0, a0, s2
80004b6c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004b70: 93 c5 1a 00  	xori	a1, s5, 1
80004b74: 33 e5 a5 00  	or	a0, a1, a0
80004b78: 63 18 05 02  	bnez	a0, 0x80004ba8 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80004b7c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004b80: 13 84 14 00  	addi	s0, s1, 1
80004b84: 13 05 00 02  	addi	a0, zero, 32
80004b88: 93 05 0b 00  	mv	a1, s6
80004b8c: 13 86 04 00  	mv	a2, s1
80004b90: 93 86 09 00  	mv	a3, s3
80004b94: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80004b98: 33 05 8a 00  	add	a0, s4, s0
80004b9c: 93 04 04 00  	mv	s1, s0
80004ba0: e3 60 25 ff  	bltu	a0, s2, 0x80004b80 <_ntoa_format+0x318>
80004ba4: 6f 00 80 00  	j	0x80004bac <_ntoa_format+0x344>
80004ba8: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80004bac: 13 05 04 00  	mv	a0, s0
80004bb0: 83 2d c1 00  	lw	s11, 12(sp)
80004bb4: 03 2d 01 01  	lw	s10, 16(sp)
80004bb8: 83 2c 41 01  	lw	s9, 20(sp)
80004bbc: 03 2c 81 01  	lw	s8, 24(sp)
80004bc0: 83 2b c1 01  	lw	s7, 28(sp)
80004bc4: 03 2b 01 02  	lw	s6, 32(sp)
80004bc8: 83 2a 41 02  	lw	s5, 36(sp)
80004bcc: 03 2a 81 02  	lw	s4, 40(sp)
80004bd0: 83 29 c1 02  	lw	s3, 44(sp)
80004bd4: 03 29 01 03  	lw	s2, 48(sp)
80004bd8: 83 24 41 03  	lw	s1, 52(sp)
80004bdc: 03 24 81 03  	lw	s0, 56(sp)
80004be0: 83 20 c1 03  	lw	ra, 60(sp)
80004be4: 13 01 01 04  	addi	sp, sp, 64
80004be8: 67 80 00 00  	ret

80004bec <_snrt_init_team>:
;     team->base.root = team;
80004bec: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80004bf0: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004bf4: 03 23 87 00  	lw	t1, 8(a4)
80004bf8: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004bfc: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80004c00: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004c04: 83 22 47 00  	lw	t0, 4(a4)
80004c08: 33 88 08 03  	mul	a6, a7, a6
80004c0c: 33 05 58 02  	mul	a0, a6, t0
80004c10: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004c14: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80004c18: 33 85 68 40  	sub	a0, a7, t1
80004c1c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80004c20: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80004c24: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80004c28: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80004c2c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80004c30: 03 25 87 01  	lw	a0, 24(a4)
80004c34: b7 05 00 10  	lui	a1, 65536
80004c38: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80004c3c: 23 a2 07 02  	sw	zero, 36(a5)
80004c40: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80004c44: 03 25 07 02  	lw	a0, 32(a4)
80004c48: 83 25 47 02  	lw	a1, 36(a4)
80004c4c: 23 a4 a7 02  	sw	a0, 40(a5)
80004c50: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80004c54: 23 a8 c7 02  	sw	a2, 48(a5)
80004c58: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80004c5c: 23 ac d7 02  	sw	a3, 56(a5)
80004c60: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80004c64: 03 25 07 01  	lw	a0, 16(a4)
80004c68: 33 08 a6 00  	add	a6, a2, a0
80004c6c: 93 05 08 19  	addi	a1, a6, 400
80004c70: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80004c74: b3 32 a8 00  	sltu	t0, a6, a0
80004c78: 93 55 15 00  	srli	a1, a0, 1
80004c7c: 33 03 b8 00  	add	t1, a6, a1
80004c80: b3 35 03 01  	sltu	a1, t1, a6
80004c84: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80004c88: 23 a0 67 04  	sw	t1, 64(a5)
80004c8c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80004c90: 13 15 15 00  	slli	a0, a0, 1
80004c94: b3 05 c5 00  	add	a1, a0, a2
80004c98: 33 b5 a5 00  	sltu	a0, a1, a0
80004c9c: 23 a4 b7 04  	sw	a1, 72(a5)
80004ca0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80004ca4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80004ca8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80004cac: 37 05 00 00  	lui	a0, 0
80004cb0: 33 05 45 00  	add	a0, a0, tp
80004cb4: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004cb8: 03 a5 07 00  	lw	a0, 0(a5)
80004cbc: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80004cc0: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004cc4: b3 85 b8 40  	sub	a1, a7, a1
80004cc8: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80004ccc: b7 05 00 00  	lui	a1, 0
80004cd0: b3 85 45 00  	add	a1, a1, tp
80004cd4: 23 a2 a5 00  	sw	a0, 4(a1)
80004cd8: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80004cdc: 33 85 a8 02  	mul	a0, a7, a0

80004ce0 <.LBB0_1>:
80004ce0: 97 15 00 00  	auipc	a1, 1
80004ce4: 93 85 45 96  	addi	a1, a1, -1692
80004ce8: 33 05 b5 00  	add	a0, a0, a1
80004cec: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80004cf0: 83 28 07 03  	lw	a7, 48(a4)
80004cf4: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80004cf8: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80004cfc: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80004d00: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80004d04: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80004d08: 13 05 76 00  	addi	a0, a2, 7
80004d0c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80004d10: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80004d14: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80004d18: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80004d1c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80004d20: 03 a5 05 00  	lw	a0, 0(a1)
80004d24: 13 05 f5 44  	addi	a0, a0, 1103
80004d28: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80004d2c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80004d30: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80004d34: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80004d38: 37 05 00 00  	lui	a0, 0
80004d3c: 33 05 45 00  	add	a0, a0, tp
80004d40: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80004d44: 37 05 00 00  	lui	a0, 0
80004d48: 33 05 45 00  	add	a0, a0, tp
80004d4c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80004d50: 67 80 00 00  	ret

80004d54 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004d54: 37 05 00 00  	lui	a0, 0
80004d58: 33 05 45 00  	add	a0, a0, tp
80004d5c: 03 25 05 00  	lw	a0, 0(a0)
80004d60: 03 25 05 00  	lw	a0, 0(a0)
80004d64: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004d68: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004d6c: 33 85 a5 40  	sub	a0, a1, a0
80004d70: 67 80 00 00  	ret

80004d74 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80004d74: 37 05 00 00  	lui	a0, 0
80004d78: 33 05 45 00  	add	a0, a0, tp
80004d7c: 03 25 05 00  	lw	a0, 0(a0)
80004d80: 03 25 05 00  	lw	a0, 0(a0)
80004d84: 03 25 05 07  	lw	a0, 112(a0)
80004d88: 67 80 00 00  	ret

80004d8c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80004d8c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80004d90: 63 44 05 00  	bltz	a0, 0x80004d98 <__snrt_isr+0xc>
;         while (1)
80004d94: 6f 00 00 00  	j	0x80004d94 <__snrt_isr+0x8>
80004d98: b7 05 00 80  	lui	a1, 524288
80004d9c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80004da0: 33 75 b5 00  	and	a0, a0, a1
80004da4: 13 05 d5 ff  	addi	a0, a0, -3
80004da8: 93 55 25 00  	srli	a1, a0, 2
80004dac: 13 15 e5 01  	slli	a0, a0, 30
80004db0: 33 65 b5 00  	or	a0, a0, a1
80004db4: 93 05 40 00  	addi	a1, zero, 4
80004db8: 63 0a b5 06  	beq	a0, a1, 0x80004e2c <.LBB1_7+0x58>
80004dbc: 63 1a 05 08  	bnez	a0, 0x80004e50 <.LBB1_7+0x7c>
80004dc0: 37 05 00 00  	lui	a0, 0
80004dc4: 33 05 45 00  	add	a0, a0, tp
80004dc8: 03 25 05 00  	lw	a0, 0(a0)
80004dcc: 03 25 05 00  	lw	a0, 0(a0)
80004dd0: f3 25 40 f1  	csrr	a1, mhartid

80004dd4 <.LBB1_7>:
;     asm volatile(
80004dd4: 17 16 00 00  	auipc	a2, 1
80004dd8: 13 06 c6 86  	addi	a2, a2, -1940
80004ddc: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80004de0: 93 06 06 00  	mv	a3, a2
80004de4: 93 02 10 00  	addi	t0, zero, 1
80004de8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80004dec: e3 9e 02 fe  	bnez	t0, 0x80004de8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80004df0: b7 06 00 00  	lui	a3, 0
80004df4: b3 86 46 00  	add	a3, a3, tp
80004df8: 83 a6 86 00  	lw	a3, 8(a3)
80004dfc: 33 85 a5 40  	sub	a0, a1, a0
80004e00: 93 55 35 00  	srli	a1, a0, 3
80004e04: 93 f5 c5 ff  	andi	a1, a1, -4
80004e08: b3 85 b6 00  	add	a1, a3, a1
80004e0c: 83 a6 05 00  	lw	a3, 0(a1)
80004e10: 13 07 10 00  	addi	a4, zero, 1
80004e14: 33 15 a7 00  	sll	a0, a4, a0
80004e18: 13 45 f5 ff  	not	a0, a0
80004e1c: 33 f5 a6 00  	and	a0, a3, a0
80004e20: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80004e24: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80004e28: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80004e2c: 37 05 00 00  	lui	a0, 0
80004e30: 33 05 45 00  	add	a0, a0, tp
80004e34: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004e38: b7 05 00 00  	lui	a1, 0
80004e3c: b3 85 45 00  	add	a1, a1, tp
80004e40: 83 a5 c5 00  	lw	a1, 12(a1)
80004e44: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80004e48: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004e4c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80004e50: 67 80 00 00  	ret

Disassembly of section .init:

80004e60 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80004e60: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80004e64: 93 81 81 ee  	addi	gp, gp, -280

80004e68 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80004e68: 97 00 00 00  	auipc	ra, 0
80004e6c: e7 80 40 3c  	jalr	964(ra)

80004e70 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80004e70: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80004e74: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80004e78: 97 00 00 00  	auipc	ra, 0
80004e7c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80004e80: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80004e84: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80004e88: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80004e8c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80004e90: 63 92 02 02  	bnez	t0, 0x80004eb4 <snrt.crt0.init_registers>

80004e94 <.Lpcrel_hi0>:
;     la        t0, _edata
80004e94: 97 02 00 00  	auipc	t0, 0
80004e98: 93 82 c2 7a  	addi	t0, t0, 1964

80004e9c <.Lpcrel_hi1>:
;     la        t1, _end
80004e9c: 17 03 00 00  	auipc	t1, 0
80004ea0: 13 03 83 7a  	addi	t1, t1, 1960
;     bge       t0, t1, 2f
80004ea4: 63 d8 62 00  	bge	t0, t1, 0x80004eb4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80004ea8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80004eac: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80004eb0: e3 cc 62 fe  	blt	t0, t1, 0x80004ea8 <.Lpcrel_hi1+0xc>

80004eb4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80004eb4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80004eb8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80004ebc: 63 82 02 08  	beqz	t0, 0x80004f40 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80004ec0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80004ec4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80004ec8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80004ecc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80004ed0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80004ed4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80004ed8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80004edc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80004ee0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80004ee4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80004ee8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80004eec: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80004ef0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80004ef4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80004ef8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80004efc: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80004f00: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80004f04: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80004f08: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80004f0c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80004f10: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80004f14: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80004f18: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80004f1c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80004f20: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80004f24: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80004f28: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80004f2c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80004f30: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80004f34: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80004f38: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80004f3c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80004f40 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80004f40: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80004f44: 23 a0 06 00  	sw	zero, 0(a3)

80004f48 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80004f48: 97 02 00 00  	auipc	t0, 0
80004f4c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80004f50: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80004f54: 93 87 06 00  	mv	a5, a3

80004f58 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80004f58: 97 03 00 00  	auipc	t2, 0
80004f5c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80004f60: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80004f64: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80004f68: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80004f6c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80004f70: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80004f74: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80004f78: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80004f7c: b3 86 66 40  	sub	a3, a3, t1

80004f80 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80004f80: 97 02 00 00  	auipc	t0, 0
80004f84: 93 82 82 5c  	addi	t0, t0, 1480

80004f88 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80004f88: 17 03 00 00  	auipc	t1, 0
80004f8c: 13 03 03 5c  	addi	t1, t1, 1472

80004f90 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80004f90: 97 03 00 00  	auipc	t2, 0
80004f94: 93 83 83 5b  	addi	t2, t2, 1464

80004f98 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80004f98: 17 0e 00 00  	auipc	t3, 0
80004f9c: 13 0e 0e 5c  	addi	t3, t3, 1472
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80004fa0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80004fa4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80004fa8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80004fac: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80004fb0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80004fb4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80004fb8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80004fbc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80004fc0: 63 dc 62 00  	bge	t0, t1, 0x80004fd8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80004fc4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80004fc8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80004fcc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004fd0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80004fd4: e3 c8 62 fe  	blt	t0, t1, 0x80004fc4 <.Lpcrel_hi7+0x2c>

80004fd8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80004fd8: 97 02 00 00  	auipc	t0, 0
80004fdc: 93 82 02 57  	addi	t0, t0, 1392

80004fe0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80004fe0: 17 03 00 00  	auipc	t1, 0
80004fe4: 13 03 83 57  	addi	t1, t1, 1400
;     bge       t0, t1, 2f
80004fe8: 63 da 62 00  	bge	t0, t1, 0x80004ffc <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80004fec: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80004ff0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004ff4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80004ff8: e3 ca 72 fe  	blt	t0, t2, 0x80004fec <.Lpcrel_hi9+0xc>

80004ffc <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80004ffc: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80005000: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80005004: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80005008: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000500c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80005010: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80005014: 97 00 00 00  	auipc	ra, 0
80005018: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
8000501c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80005020: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80005024: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80005028: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000502c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80005030: 13 01 41 01  	addi	sp, sp, 20

80005034 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80005034: 97 02 00 00  	auipc	t0, 0
80005038: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000503c: 73 90 52 30  	csrw	mtvec, t0

80005040 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80005040: 97 00 00 00  	auipc	ra, 0
80005044: e7 80 00 22  	jalr	544(ra)

80005048 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80005048: 97 b0 ff ff  	auipc	ra, 1048571
8000504c: e7 80 c0 5e  	jalr	1516(ra)
;     mv        s0, a0 # store return value in s0
80005050: 13 04 05 00  	mv	s0, a0

80005054 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80005054: 97 00 00 00  	auipc	ra, 0
80005058: e7 80 c0 20  	jalr	524(ra)

8000505c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000505c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80005060: 97 00 00 00  	auipc	ra, 0
80005064: e7 80 c0 22  	jalr	556(ra)
;     wfi
80005068: 73 00 50 10  	wfi	
;     j       1b
8000506c: 6f f0 df ff  	j	0x80005068 <snrt.crt0.end+0xc>

80005070 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005070: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005074: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005078: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000507c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80005080: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80005084: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80005088: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000508c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80005090: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80005094: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80005098: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000509c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800050a0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800050a4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800050a8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800050ac: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800050b0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800050b4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800050b8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800050bc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800050c0: 63 84 02 08  	beqz	t0, 0x80005148 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800050c4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800050c8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800050cc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800050d0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800050d4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800050d8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800050dc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800050e0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800050e4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800050e8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800050ec: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800050f0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800050f4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800050f8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800050fc: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80005100: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80005104: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80005108: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000510c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80005110: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80005114: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80005118: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000511c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80005120: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80005124: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80005128: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000512c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80005130: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80005134: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80005138: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000513c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80005140: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80005144: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80005148: 97 00 00 00  	auipc	ra, 0
8000514c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80005150: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80005154: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005158: 63 84 02 08  	beqz	t0, 0x800051e0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000515c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80005160: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80005164: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80005168: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000516c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005170: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005174: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005178: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000517c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005180: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005184: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005188: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000518c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80005190: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80005194: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80005198: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000519c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800051a0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800051a4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800051a8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800051ac: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800051b0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800051b4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800051b8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800051bc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800051c0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800051c4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800051c8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800051cc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800051d0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800051d4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800051d8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800051dc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
800051e0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
800051e4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
800051e8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
800051ec: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800051f0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800051f4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800051f8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800051fc: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80005200: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80005204: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80005208: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000520c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80005210: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80005214: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80005218: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000521c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80005220: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80005224: 13 01 01 05  	addi	sp, sp, 80
;     mret
80005228: 73 00 20 30  	mret	

8000522c <_snrt_init_core_info>:
;     mv        a4, a1
8000522c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80005230: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80005234: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80005238: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000523c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80005240: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80005244: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80005248: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000524c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80005250: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80005254: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80005258: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000525c: 67 80 00 00  	ret

80005260 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80005260: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80005264: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80005268: 97 00 00 00  	auipc	ra, 0
8000526c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80005270: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005274: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005278: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000527c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005280: 67 80 00 00  	ret

80005284 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005284: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005288: 67 80 00 00  	ret

8000528c <_snrt_exit>:
;     addi      sp, sp, -8
8000528c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005290: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005294: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005298: 97 00 00 00  	auipc	ra, 0
8000529c: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
800052a0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800052a4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800052a8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800052ac: 63 1c 05 00  	bnez	a0, 0x800052c4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800052b0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800052b4: 93 e2 12 00  	ori	t0, t0, 1

800052b8 <.Lpcrel_hi11>:
;     la        t1, tohost
800052b8: 17 03 00 00  	auipc	t1, 0
800052bc: 13 03 83 24  	addi	t1, t1, 584
;     sw        t0, 0(t1)
800052c0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800052c4: 67 80 00 00  	ret
