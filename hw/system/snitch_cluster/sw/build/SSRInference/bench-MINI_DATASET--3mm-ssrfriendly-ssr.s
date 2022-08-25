
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET--3mm-ssrfriendly-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000053cc 80000000 TEXT
  2 .init             00000468 800053d0 TEXT
  3 .rodata           00000238 80005838 DATA
  4 .htif             00000048 80005a80 DATA
  5 .tdata            00000000 80005ac8 DATA
  6 .tbss             00000010 80005ac8 BSS
  7 .tbssend          00000000 80005ad8 DATA
  8 .sdata            000000e8 80005ad8 DATA
  9 .data             00000000 80005bc0 DATA
 10 .sbss             00000004 80005bc0 BSS
 11 .bss              00000000 80005bc4 BSS
 12 .dram             00000000 80005bc4 DATA
 13 .debug_info       0000383b 00000000 
 14 .debug_abbrev     00000c05 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       0000388d 00000000 
 17 .debug_loc        00004092 00000000 
 18 .debug_ranges     00000428 00000000 
 19 .debug_str        00000b0f 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           00003490 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000961 00000000 


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
80000634: 13 01 01 f3  	addi	sp, sp, -208
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 0c  	sw	ra, 204(sp)
8000063c: 23 24 81 0c  	sw	s0, 200(sp)
80000640: 23 22 91 0c  	sw	s1, 196(sp)
80000644: 23 20 21 0d  	sw	s2, 192(sp)
80000648: 23 2e 31 0b  	sw	s3, 188(sp)
8000064c: 23 2c 41 0b  	sw	s4, 184(sp)
80000650: 23 2a 51 0b  	sw	s5, 180(sp)
80000654: 23 28 61 0b  	sw	s6, 176(sp)
80000658: 23 26 71 0b  	sw	s7, 172(sp)
8000065c: 23 24 81 0b  	sw	s8, 168(sp)
80000660: 23 22 91 0b  	sw	s9, 164(sp)
80000664: 23 20 a1 0b  	sw	s10, 160(sp)
80000668: 23 2e b1 09  	sw	s11, 156(sp)
8000066c: 27 38 81 08  	fsd	fs0, 144(sp)
80000670: 27 34 91 08  	fsd	fs1, 136(sp)
80000674: 27 30 21 09  	fsd	fs2, 128(sp)
80000678: 27 3c 31 07  	fsd	fs3, 120(sp)
8000067c: 27 38 41 07  	fsd	fs4, 112(sp)
80000680: 27 34 51 07  	fsd	fs5, 104(sp)
80000684: 27 30 61 07  	fsd	fs6, 96(sp)
80000688: 27 3c 71 05  	fsd	fs7, 88(sp)
8000068c: 37 05 00 00  	lui	a0, 0
80000690: 33 05 45 00  	add	a0, a0, tp
80000694: 83 25 45 00  	lw	a1, 4(a0)
80000698: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000069c: 63 84 05 00  	beqz	a1, 0x800006a4 <main+0x70>
800006a0: 6f 20 50 61  	j	0x800034b4 <.LBB0_108+0x10>
;     return _snrt_team_current->root;
800006a4: 37 05 00 00  	lui	a0, 0
800006a8: 33 05 45 00  	add	a0, a0, tp
800006ac: 03 25 05 00  	lw	a0, 0(a0)
800006b0: 03 25 05 00  	lw	a0, 0(a0)
800006b4: b7 15 00 00  	lui	a1, 1
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b8: 83 27 85 05  	lw	a5, 88(a0)
800006bc: 83 26 05 05  	lw	a3, 80(a0)
800006c0: 03 27 45 05  	lw	a4, 84(a0)
800006c4: 93 8c 05 96  	addi	s9, a1, -1696
800006c8: b3 85 97 01  	add	a1, a5, s9
800006cc: 13 86 05 fa  	addi	a2, a1, -96
800006d0: b3 05 d7 00  	add	a1, a4, a3
800006d4: 63 f6 c5 00  	bgeu	a1, a2, 0x800006e0 <main+0xac>
800006d8: 93 00 00 00  	mv	ra, zero
800006dc: 6f 00 00 01  	j	0x800006ec <main+0xb8>
;     void *ret = (void *)alloc->next;
800006e0: 93 80 07 00  	mv	ra, a5
;     alloc->next += size;
800006e4: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e8: 93 07 06 00  	mv	a5, a2
800006ec: 33 86 fc 00  	add	a2, s9, a5
800006f0: 13 06 06 0a  	addi	a2, a2, 160
800006f4: 63 f6 c5 00  	bgeu	a1, a2, 0x80000700 <main+0xcc>
800006f8: 13 0d 00 00  	mv	s10, zero
800006fc: 6f 00 00 01  	j	0x8000070c <main+0xd8>
;     void *ret = (void *)alloc->next;
80000700: 13 8d 07 00  	mv	s10, a5
;     alloc->next += size;
80000704: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000708: 93 07 06 00  	mv	a5, a2
8000070c: 33 86 fc 00  	add	a2, s9, a5
80000710: 13 06 06 1e  	addi	a2, a2, 480
80000714: 63 f6 c5 00  	bgeu	a1, a2, 0x80000720 <main+0xec>
80000718: 23 2c 01 02  	sw	zero, 56(sp)
8000071c: 6f 00 00 01  	j	0x8000072c <main+0xf8>
;     void *ret = (void *)alloc->next;
80000720: 23 2c f1 02  	sw	a5, 56(sp)
;     alloc->next += size;
80000724: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000728: 93 07 06 00  	mv	a5, a2
8000072c: 33 86 fc 00  	add	a2, s9, a5
80000730: 13 06 06 30  	addi	a2, a2, 768
80000734: 63 f6 c5 00  	bgeu	a1, a2, 0x80000740 <main+0x10c>
80000738: 13 0c 00 00  	mv	s8, zero
8000073c: 6f 00 00 01  	j	0x8000074c <main+0x118>
;     void *ret = (void *)alloc->next;
80000740: 13 8c 07 00  	mv	s8, a5
;     alloc->next += size;
80000744: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000748: 93 07 06 00  	mv	a5, a2
8000074c: 33 86 fc 00  	add	a2, s9, a5
80000750: 13 06 06 42  	addi	a2, a2, 1056
80000754: 63 f6 c5 00  	bgeu	a1, a2, 0x80000760 <main+0x12c>
80000758: 23 2e 01 02  	sw	zero, 60(sp)
8000075c: 6f 00 00 01  	j	0x8000076c <main+0x138>
;     void *ret = (void *)alloc->next;
80000760: 23 2e f1 02  	sw	a5, 60(sp)
;     alloc->next += size;
80000764: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000768: 93 07 06 00  	mv	a5, a2
8000076c: 37 16 00 00  	lui	a2, 1
80000770: 13 06 86 07  	addi	a2, a2, 120
80000774: 23 24 c1 04  	sw	a2, 72(sp)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000778: 33 86 c7 00  	add	a2, a5, a2
8000077c: 13 06 86 00  	addi	a2, a2, 8
80000780: 63 f6 c5 00  	bgeu	a1, a2, 0x8000078c <main+0x158>
80000784: 93 06 00 00  	mv	a3, zero
80000788: 6f 00 00 01  	j	0x80000798 <main+0x164>
;     void *ret = (void *)alloc->next;
8000078c: 93 86 07 00  	mv	a3, a5
;     alloc->next += size;
80000790: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000794: 93 07 06 00  	mv	a5, a2
80000798: 33 86 fc 00  	add	a2, s9, a5
8000079c: 13 06 06 1a  	addi	a2, a2, 416
800007a0: 63 f6 c5 00  	bgeu	a1, a2, 0x800007ac <main+0x178>
800007a4: 93 07 00 00  	mv	a5, zero
800007a8: 6f 00 80 00  	j	0x800007b0 <main+0x17c>
;     alloc->next += size;
800007ac: 23 2c c5 04  	sw	a2, 88(a0)
800007b0: 23 26 d1 04  	sw	a3, 76(sp)
800007b4: 23 24 f1 02  	sw	a5, 40(sp)
;   for (i = 0; i < ni; i++)
800007b8: 33 85 ac 01  	add	a0, s9, s10
800007bc: 13 06 85 09  	addi	a2, a0, 152
800007c0: 13 55 4d 01  	srli	a0, s10, 20
800007c4: 33 35 a0 00  	snez	a0, a0
800007c8: b7 05 12 00  	lui	a1, 288
800007cc: 93 85 15 00  	addi	a1, a1, 1
800007d0: 23 2e c1 00  	sw	a2, 28(sp)
800007d4: b3 35 b6 00  	sltu	a1, a2, a1
800007d8: 33 75 b5 00  	and	a0, a0, a1

800007dc <.LBB0_99>:
800007dc: 97 55 00 00  	auipc	a1, 5
800007e0: 93 85 c5 2f  	addi	a1, a1, 764
800007e4: 23 20 a1 02  	sw	a0, 32(sp)
800007e8: 13 08 00 00  	mv	a6, zero
800007ec: 63 04 05 22  	beqz	a0, 0x80000a14 <.LBB0_99+0x238>
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
80000818: 13 07 00 0c  	addi	a4, zero, 192
8000081c: ab 20 d6 00  	scfgw	a2, a3
80000820: ab 20 e5 00  	scfgw	a0, a4
80000824: 13 06 f0 00  	addi	a2, zero, 15
80000828: 93 06 00 06  	addi	a3, zero, 96
8000082c: 13 07 00 0e  	addi	a4, zero, 224
80000830: ab 20 d6 00  	scfgw	a2, a3
80000834: ab 20 e5 00  	scfgw	a0, a4
80000838: 13 05 00 02  	addi	a0, zero, 32
8000083c: ab 20 a0 00  	scfgw	zero, a0
80000840: 2b 20 0d 3a  	scfgwi	s10, 928
80000844: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000848: 13 09 10 00  	addi	s2, zero, 1
8000084c: 87 b1 05 00  	fld	ft3, 0(a1)
80000850: 93 08 10 13  	addi	a7, zero, 305
80000854: 93 09 10 00  	addi	s3, zero, 1
80000858: 13 0a 10 00  	addi	s4, zero, 1
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
800008a0: 13 f6 f9 00  	andi	a2, s3, 15
800008a4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008a8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008ac: 53 00 42 22  	fmv.d	ft0, ft4
800008b0: 13 f6 c2 00  	andi	a2, t0, 12
800008b4: 13 66 16 00  	ori	a2, a2, 1
800008b8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008bc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008c0: 53 00 42 22  	fmv.d	ft0, ft4
800008c4: 13 76 fa 00  	andi	a2, s4, 15
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
800009f4: 13 0a 5a 00  	addi	s4, s4, 5
800009f8: 93 82 42 00  	addi	t0, t0, 4
800009fc: 93 89 39 00  	addi	s3, s3, 3
80000a00: 13 08 28 00  	addi	a6, a6, 2
80000a04: 13 09 19 00  	addi	s2, s2, 1
80000a08: e3 98 15 e7  	bne	a1, a7, 0x80000878 <.LBB0_99+0x9c>
80000a0c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000a10: 6f 00 40 20  	j	0x80000c14 <.LBB0_99+0x438>
80000a14: 93 08 00 00  	mv	a7, zero
80000a18: 13 0e 00 00  	mv	t3, zero
80000a1c: 93 0e 00 00  	mv	t4, zero
80000a20: 13 0f 00 00  	mv	t5, zero
80000a24: 93 0f 00 00  	mv	t6, zero
80000a28: 13 09 00 00  	mv	s2, zero
80000a2c: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a30: 13 05 0d 05  	addi	a0, s10, 80
80000a34: 13 0a 10 00  	addi	s4, zero, 1
80000a38: 37 a6 89 3f  	lui	a2, 260250
80000a3c: 93 02 96 99  	addi	t0, a2, -1639
80000a40: 37 a6 99 99  	lui	a2, 629146
80000a44: 13 03 a6 99  	addi	t1, a2, -1638
80000a48: 87 b1 05 00  	fld	ft3, 0(a1)
80000a4c: 93 03 10 13  	addi	t2, zero, 305
80000a50: 93 0a 10 00  	addi	s5, zero, 1
80000a54: 13 0b 10 00  	addi	s6, zero, 1
80000a58: 93 0b 10 00  	addi	s7, zero, 1
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
80000ae8: 13 77 fb 00  	andi	a4, s6, 15
80000aec: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000af0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000af4: 27 34 45 fe  	fsd	ft4, -24(a0)
80000af8: 13 f7 88 00  	andi	a4, a7, 8
80000afc: 13 67 17 00  	ori	a4, a4, 1
80000b00: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b04: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b08: 27 38 45 fe  	fsd	ft4, -16(a0)
80000b0c: 13 77 fa 00  	andi	a4, s4, 15
80000b10: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b14: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b18: 27 3c 45 fe  	fsd	ft4, -8(a0)
80000b1c: 13 77 e8 00  	andi	a4, a6, 14
80000b20: 13 67 17 00  	ori	a4, a4, 1
80000b24: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b28: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b2c: 27 30 45 00  	fsd	ft4, 0(a0)
80000b30: 13 f7 fa 00  	andi	a4, s5, 15
80000b34: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b38: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b3c: 27 34 45 00  	fsd	ft4, 8(a0)
80000b40: 13 77 ce 00  	andi	a4, t3, 12
80000b44: 13 67 17 00  	ori	a4, a4, 1
80000b48: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b4c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b50: 27 38 45 00  	fsd	ft4, 16(a0)
80000b54: 13 f7 fb 00  	andi	a4, s7, 15
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
80000ba0: 13 f7 e9 00  	andi	a4, s3, 14
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
80000bcc: 93 89 29 01  	addi	s3, s3, 18
80000bd0: 13 09 29 00  	addi	s2, s2, 2
80000bd4: 93 85 15 01  	addi	a1, a1, 17
80000bd8: 13 04 34 00  	addi	s0, s0, 3
80000bdc: 93 8f 4f 00  	addi	t6, t6, 4
80000be0: 93 84 f4 00  	addi	s1, s1, 15
80000be4: 93 87 57 00  	addi	a5, a5, 5
80000be8: 13 0f ef 00  	addi	t5, t5, 14
80000bec: 93 8e 6e 00  	addi	t4, t4, 6
80000bf0: 93 8b db 00  	addi	s7, s7, 13
80000bf4: 13 0b 7b 00  	addi	s6, s6, 7
80000bf8: 13 0e ce 00  	addi	t3, t3, 12
80000bfc: 93 88 88 00  	addi	a7, a7, 8
80000c00: 93 8a ba 00  	addi	s5, s5, 11
80000c04: 13 05 05 0a  	addi	a0, a0, 160
80000c08: 13 08 a8 00  	addi	a6, a6, 10
80000c0c: 13 0a 9a 00  	addi	s4, s4, 9
80000c10: e3 12 76 e6  	bne	a2, t2, 0x80000a74 <.LBB0_99+0x298>
80000c14: 83 27 81 03  	lw	a5, 56(sp)
;   for (i = 0; i < nk; i++)
80000c18: 33 85 fc 00  	add	a0, s9, a5
80000c1c: 13 06 85 1d  	addi	a2, a0, 472
80000c20: 13 d5 47 01  	srli	a0, a5, 20
80000c24: 33 35 a0 00  	snez	a0, a0
80000c28: b7 05 12 00  	lui	a1, 288
80000c2c: 93 85 15 00  	addi	a1, a1, 1
80000c30: 23 26 c1 00  	sw	a2, 12(sp)
80000c34: b3 35 b6 00  	sltu	a1, a2, a1
80000c38: b3 75 b5 00  	and	a1, a0, a1

80000c3c <.LBB0_100>:
80000c3c: 17 55 00 00  	auipc	a0, 5
80000c40: 13 05 45 ea  	addi	a0, a0, -348
80000c44: 23 2a 81 03  	sw	s8, 52(sp)
80000c48: 23 26 91 03  	sw	s9, 44(sp)
80000c4c: 23 28 a1 03  	sw	s10, 48(sp)
80000c50: 23 2a b1 00  	sw	a1, 20(sp)
80000c54: 63 86 05 2e  	beqz	a1, 0x80000f40 <.LBB0_101+0x28c>
80000c58: 93 08 00 00  	mv	a7, zero
80000c5c: 93 02 00 00  	mv	t0, zero
80000c60: 13 03 00 00  	mv	t1, zero
80000c64: 93 05 80 00  	addi	a1, zero, 8
80000c68: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < nk; i++)
80000c6c: 93 06 00 04  	addi	a3, zero, 64
80000c70: 13 07 00 0c  	addi	a4, zero, 192
80000c74: ab 20 d6 00  	scfgw	a2, a3
80000c78: ab a0 e5 00  	scfgw	a1, a4
80000c7c: 13 06 30 01  	addi	a2, zero, 19
80000c80: 93 06 00 06  	addi	a3, zero, 96
80000c84: 13 07 00 0e  	addi	a4, zero, 224
80000c88: ab 20 d6 00  	scfgw	a2, a3
80000c8c: ab a0 e5 00  	scfgw	a1, a4
80000c90: 93 05 00 02  	addi	a1, zero, 32
80000c94: ab 20 b0 00  	scfgw	zero, a1
80000c98: 2b a0 07 3a  	scfgwi	a5, 928
80000c9c: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000ca0: 13 0f 20 00  	addi	t5, zero, 2
80000ca4: b7 95 e3 38  	lui	a1, 233017
80000ca8: 13 87 95 e3  	addi	a4, a1, -455
80000cac: 93 07 20 01  	addi	a5, zero, 18
80000cb0: 87 31 05 00  	fld	ft3, 0(a0)

80000cb4 <.LBB0_101>:
80000cb4: 17 55 00 00  	auipc	a0, 5
80000cb8: 13 05 45 e3  	addi	a0, a0, -460
80000cbc: 07 32 05 00  	fld	ft4, 0(a0)
80000cc0: 13 08 a0 02  	addi	a6, zero, 42
80000cc4: 93 03 20 00  	addi	t2, zero, 2
80000cc8: 93 0f 20 00  	addi	t6, zero, 2
80000ccc: 13 09 20 00  	addi	s2, zero, 2
80000cd0: 13 0e 20 00  	addi	t3, zero, 2
80000cd4: 93 09 20 00  	addi	s3, zero, 2
80000cd8: 13 0a 20 00  	addi	s4, zero, 2
80000cdc: 93 0e 20 00  	addi	t4, zero, 2
80000ce0: 93 0a 20 00  	addi	s5, zero, 2
80000ce4: 13 0b 20 00  	addi	s6, zero, 2
80000ce8: 93 0b 20 00  	addi	s7, zero, 2
80000cec: 13 0c 20 00  	addi	s8, zero, 2
80000cf0: 13 06 20 00  	addi	a2, zero, 2
80000cf4: 13 04 20 00  	addi	s0, zero, 2
80000cf8: 93 05 20 00  	addi	a1, zero, 2
80000cfc: 93 06 20 00  	addi	a3, zero, 2
80000d00: 93 04 20 00  	addi	s1, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000d04: 33 35 ef 02  	mulhu	a0, t5, a4
80000d08: 13 55 25 00  	srli	a0, a0, 2
80000d0c: 33 05 f5 02  	mul	a0, a0, a5
80000d10: 33 05 af 40  	sub	a0, t5, a0
80000d14: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000d18: 33 b5 e4 02  	mulhu	a0, s1, a4
80000d1c: 13 55 25 00  	srli	a0, a0, 2
80000d20: 33 05 f5 02  	mul	a0, a0, a5
80000d24: 33 85 a4 40  	sub	a0, s1, a0
80000d28: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000d2c: 33 b5 e8 02  	mulhu	a0, a7, a4
80000d30: 13 55 25 00  	srli	a0, a0, 2
80000d34: 33 05 f5 02  	mul	a0, a0, a5
80000d38: 33 85 a3 40  	sub	a0, t2, a0
80000d3c: d3 03 05 d2  	fcvt.d.w	ft7, a0
80000d40: 33 b5 ef 02  	mulhu	a0, t6, a4
80000d44: 13 55 25 00  	srli	a0, a0, 2
80000d48: 33 05 f5 02  	mul	a0, a0, a5
80000d4c: 33 85 af 40  	sub	a0, t6, a0
80000d50: 53 05 05 d2  	fcvt.d.w	fa0, a0
80000d54: 33 35 e9 02  	mulhu	a0, s2, a4
80000d58: 13 55 25 00  	srli	a0, a0, 2
80000d5c: 33 05 f5 02  	mul	a0, a0, a5
80000d60: 33 05 a9 40  	sub	a0, s2, a0
80000d64: d3 05 05 d2  	fcvt.d.w	fa1, a0
80000d68: 33 b5 e2 02  	mulhu	a0, t0, a4
80000d6c: 13 55 25 00  	srli	a0, a0, 2
80000d70: 33 05 f5 02  	mul	a0, a0, a5
80000d74: 33 05 ae 40  	sub	a0, t3, a0
80000d78: 53 06 05 d2  	fcvt.d.w	fa2, a0
80000d7c: 33 b5 e9 02  	mulhu	a0, s3, a4
80000d80: 13 55 25 00  	srli	a0, a0, 2
80000d84: 33 05 f5 02  	mul	a0, a0, a5
80000d88: 33 85 a9 40  	sub	a0, s3, a0
80000d8c: d3 06 05 d2  	fcvt.d.w	fa3, a0
80000d90: 33 35 ea 02  	mulhu	a0, s4, a4
80000d94: 13 55 25 00  	srli	a0, a0, 2
80000d98: 33 05 f5 02  	mul	a0, a0, a5
80000d9c: 33 05 aa 40  	sub	a0, s4, a0
80000da0: 53 07 05 d2  	fcvt.d.w	fa4, a0
80000da4: 33 35 e3 02  	mulhu	a0, t1, a4
80000da8: 13 55 25 00  	srli	a0, a0, 2
80000dac: 33 05 f5 02  	mul	a0, a0, a5
80000db0: 33 85 ae 40  	sub	a0, t4, a0
80000db4: d3 07 05 d2  	fcvt.d.w	fa5, a0
80000db8: 33 b5 ea 02  	mulhu	a0, s5, a4
80000dbc: 13 55 25 00  	srli	a0, a0, 2
80000dc0: 33 05 f5 02  	mul	a0, a0, a5
80000dc4: 33 85 aa 40  	sub	a0, s5, a0
80000dc8: 53 08 05 d2  	fcvt.d.w	fa6, a0
80000dcc: 33 35 eb 02  	mulhu	a0, s6, a4
80000dd0: 13 55 25 00  	srli	a0, a0, 2
80000dd4: 33 05 f5 02  	mul	a0, a0, a5
80000dd8: 33 05 ab 40  	sub	a0, s6, a0
80000ddc: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000de0: 33 b5 eb 02  	mulhu	a0, s7, a4
80000de4: 13 55 25 00  	srli	a0, a0, 2
80000de8: 33 05 f5 02  	mul	a0, a0, a5
80000dec: 33 85 ab 40  	sub	a0, s7, a0
80000df0: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000df4: 33 35 ec 02  	mulhu	a0, s8, a4
80000df8: 13 55 25 00  	srli	a0, a0, 2
80000dfc: 33 05 f5 02  	mul	a0, a0, a5
80000e00: 33 05 ac 40  	sub	a0, s8, a0
80000e04: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000e08: 33 35 e6 02  	mulhu	a0, a2, a4
80000e0c: 13 55 25 00  	srli	a0, a0, 2
80000e10: 33 05 f5 02  	mul	a0, a0, a5
80000e14: 33 05 a6 40  	sub	a0, a2, a0
80000e18: 53 0f 05 d2  	fcvt.d.w	ft10, a0
80000e1c: 33 35 e4 02  	mulhu	a0, s0, a4
80000e20: 13 55 25 00  	srli	a0, a0, 2
80000e24: 33 05 f5 02  	mul	a0, a0, a5
80000e28: 33 05 a4 40  	sub	a0, s0, a0
80000e2c: d3 0f 05 d2  	fcvt.d.w	ft11, a0
80000e30: 33 b5 e5 02  	mulhu	a0, a1, a4
80000e34: 13 55 25 00  	srli	a0, a0, 2
80000e38: 33 05 f5 02  	mul	a0, a0, a5
80000e3c: 33 85 a5 40  	sub	a0, a1, a0
80000e40: 53 04 05 d2  	fcvt.d.w	fs0, a0
80000e44: 33 b5 e6 02  	mulhu	a0, a3, a4
80000e48: 13 55 25 00  	srli	a0, a0, 2
80000e4c: 33 05 f5 02  	mul	a0, a0, a5
80000e50: 33 85 a6 40  	sub	a0, a3, a0
80000e54: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000e58: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e5c: 53 80 52 22  	fmv.d	ft0, ft5
80000e60: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e64: 53 80 52 22  	fmv.d	ft0, ft5
80000e68: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e6c: 53 80 52 22  	fmv.d	ft0, ft5
80000e70: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e74: 53 80 52 22  	fmv.d	ft0, ft5
80000e78: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e7c: 53 80 52 22  	fmv.d	ft0, ft5
80000e80: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e84: 53 80 52 22  	fmv.d	ft0, ft5
80000e88: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e8c: 53 80 52 22  	fmv.d	ft0, ft5
80000e90: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e94: 53 80 52 22  	fmv.d	ft0, ft5
80000e98: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e9c: 53 80 52 22  	fmv.d	ft0, ft5
80000ea0: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000ea4: 53 80 52 22  	fmv.d	ft0, ft5
80000ea8: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000eac: 53 80 52 22  	fmv.d	ft0, ft5
80000eb0: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000eb4: 53 80 52 22  	fmv.d	ft0, ft5
80000eb8: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000ebc: 53 80 52 22  	fmv.d	ft0, ft5
80000ec0: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000ec4: 53 80 52 22  	fmv.d	ft0, ft5
80000ec8: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000ecc: 53 80 52 22  	fmv.d	ft0, ft5
80000ed0: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000ed4: 53 80 52 22  	fmv.d	ft0, ft5
80000ed8: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000edc: 53 80 52 22  	fmv.d	ft0, ft5
80000ee0: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000ee4: 93 84 24 00  	addi	s1, s1, 2
80000ee8: 93 86 16 01  	addi	a3, a3, 17
80000eec: 93 85 05 01  	addi	a1, a1, 16
80000ef0: 13 04 f4 00  	addi	s0, s0, 15
80000ef4: 13 06 e6 00  	addi	a2, a2, 14
80000ef8: 13 0c dc 00  	addi	s8, s8, 13
80000efc: 93 8b cb 00  	addi	s7, s7, 12
80000f00: 13 0b bb 00  	addi	s6, s6, 11
80000f04: 93 8a aa 00  	addi	s5, s5, 10
80000f08: 93 8e 9e 00  	addi	t4, t4, 9
80000f0c: 13 03 93 00  	addi	t1, t1, 9
80000f10: 13 0a 8a 00  	addi	s4, s4, 8
80000f14: 93 89 79 00  	addi	s3, s3, 7
80000f18: 13 0e 6e 00  	addi	t3, t3, 6
80000f1c: 93 82 62 00  	addi	t0, t0, 6
80000f20: 13 09 59 00  	addi	s2, s2, 5
80000f24: 93 8f 4f 00  	addi	t6, t6, 4
80000f28: 93 83 33 00  	addi	t2, t2, 3
80000f2c: 93 88 38 00  	addi	a7, a7, 3
80000f30: 13 0f 1f 00  	addi	t5, t5, 1
80000f34: e3 98 04 dd  	bne	s1, a6, 0x80000d04 <.LBB0_101+0x50>
80000f38: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f3c: 6f 00 80 2b  	j	0x800011f4 <.LBB0_101+0x540>
80000f40: 13 03 00 00  	mv	t1, zero
80000f44: 93 03 00 00  	mv	t2, zero
80000f48: 13 0e 00 00  	mv	t3, zero
;   for (i = 0; i < nk; i++)
80000f4c: 93 86 87 04  	addi	a3, a5, 72
80000f50: 13 0f 20 00  	addi	t5, zero, 2
80000f54: b7 95 e3 38  	lui	a1, 233017
80000f58: 93 87 95 e3  	addi	a5, a1, -455
80000f5c: 93 04 20 01  	addi	s1, zero, 18
80000f60: 87 31 05 00  	fld	ft3, 0(a0)
80000f64: 37 c5 96 3f  	lui	a0, 260460
80000f68: 13 08 c5 16  	addi	a6, a0, 364
80000f6c: 37 75 c1 16  	lui	a0, 93207
80000f70: 93 02 75 c1  	addi	t0, a0, -1001
80000f74: 93 08 a0 02  	addi	a7, zero, 42
80000f78: 93 0f 20 00  	addi	t6, zero, 2
80000f7c: 93 0e 20 00  	addi	t4, zero, 2
80000f80: 93 09 20 00  	addi	s3, zero, 2
80000f84: 13 0a 20 00  	addi	s4, zero, 2
80000f88: 93 0a 20 00  	addi	s5, zero, 2
80000f8c: 13 0b 20 00  	addi	s6, zero, 2
80000f90: 93 0b 20 00  	addi	s7, zero, 2
80000f94: 13 09 20 00  	addi	s2, zero, 2
80000f98: 13 0d 20 00  	addi	s10, zero, 2
80000f9c: 93 0d 20 00  	addi	s11, zero, 2
80000fa0: 13 0c 20 00  	addi	s8, zero, 2
80000fa4: 13 07 20 00  	addi	a4, zero, 2
80000fa8: 13 04 20 00  	addi	s0, zero, 2
80000fac: 93 0c 20 00  	addi	s9, zero, 2
80000fb0: 93 05 20 00  	addi	a1, zero, 2
80000fb4: 13 06 20 00  	addi	a2, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000fb8: 33 b5 f5 02  	mulhu	a0, a1, a5
80000fbc: 13 55 25 00  	srli	a0, a0, 2
80000fc0: 33 05 95 02  	mul	a0, a0, s1
80000fc4: 33 85 a5 40  	sub	a0, a1, a0
80000fc8: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000fcc: 33 35 f6 02  	mulhu	a0, a2, a5
80000fd0: 13 55 25 00  	srli	a0, a0, 2
80000fd4: 33 05 95 02  	mul	a0, a0, s1
80000fd8: 33 05 a6 40  	sub	a0, a2, a0
80000fdc: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000fe0: 33 35 fe 02  	mulhu	a0, t3, a5
80000fe4: 13 55 25 00  	srli	a0, a0, 2
80000fe8: 33 05 95 02  	mul	a0, a0, s1
80000fec: 33 85 ac 40  	sub	a0, s9, a0
80000ff0: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000ff4: 33 35 f7 02  	mulhu	a0, a4, a5
80000ff8: 13 55 25 00  	srli	a0, a0, 2
80000ffc: 33 05 95 02  	mul	a0, a0, s1
80001000: 33 05 a7 40  	sub	a0, a4, a0
80001004: d3 03 05 d2  	fcvt.d.w	ft7, a0
80001008: 33 b5 fd 02  	mulhu	a0, s11, a5
8000100c: 13 55 25 00  	srli	a0, a0, 2
80001010: 33 05 95 02  	mul	a0, a0, s1
80001014: 33 85 ad 40  	sub	a0, s11, a0
80001018: 53 05 05 d2  	fcvt.d.w	fa0, a0
8000101c: 33 b5 f3 02  	mulhu	a0, t2, a5
80001020: 13 55 25 00  	srli	a0, a0, 2
80001024: 33 05 95 02  	mul	a0, a0, s1
80001028: 33 05 a9 40  	sub	a0, s2, a0
8000102c: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001030: 33 35 fb 02  	mulhu	a0, s6, a5
80001034: 13 55 25 00  	srli	a0, a0, 2
80001038: 33 05 95 02  	mul	a0, a0, s1
8000103c: 33 05 ab 40  	sub	a0, s6, a0
80001040: 53 06 05 d2  	fcvt.d.w	fa2, a0
80001044: 33 35 fa 02  	mulhu	a0, s4, a5
80001048: 13 55 25 00  	srli	a0, a0, 2
8000104c: 33 05 95 02  	mul	a0, a0, s1
80001050: 33 05 aa 40  	sub	a0, s4, a0
80001054: d3 06 05 d2  	fcvt.d.w	fa3, a0
80001058: 33 35 f3 02  	mulhu	a0, t1, a5
8000105c: 13 55 25 00  	srli	a0, a0, 2
80001060: 33 05 95 02  	mul	a0, a0, s1
80001064: 33 85 ae 40  	sub	a0, t4, a0
80001068: 53 07 05 d2  	fcvt.d.w	fa4, a0
8000106c: 33 35 ff 02  	mulhu	a0, t5, a5
80001070: 13 55 25 00  	srli	a0, a0, 2
80001074: 33 05 95 02  	mul	a0, a0, s1
80001078: 33 05 af 40  	sub	a0, t5, a0
8000107c: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001080: 33 b5 ff 02  	mulhu	a0, t6, a5
80001084: 13 55 25 00  	srli	a0, a0, 2
80001088: 33 05 95 02  	mul	a0, a0, s1
8000108c: 33 85 af 40  	sub	a0, t6, a0
80001090: 53 08 05 d2  	fcvt.d.w	fa6, a0
80001094: 33 b5 f9 02  	mulhu	a0, s3, a5
80001098: 13 55 25 00  	srli	a0, a0, 2
8000109c: 33 05 95 02  	mul	a0, a0, s1
800010a0: 33 85 a9 40  	sub	a0, s3, a0
800010a4: d3 08 05 d2  	fcvt.d.w	fa7, a0
800010a8: 33 b5 fa 02  	mulhu	a0, s5, a5
800010ac: 13 55 25 00  	srli	a0, a0, 2
800010b0: 33 05 95 02  	mul	a0, a0, s1
800010b4: 33 85 aa 40  	sub	a0, s5, a0
800010b8: 53 0e 05 d2  	fcvt.d.w	ft8, a0
800010bc: 33 b5 fb 02  	mulhu	a0, s7, a5
800010c0: 13 55 25 00  	srli	a0, a0, 2
800010c4: 33 05 95 02  	mul	a0, a0, s1
800010c8: 33 85 ab 40  	sub	a0, s7, a0
800010cc: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800010d0: 33 35 fd 02  	mulhu	a0, s10, a5
800010d4: 13 55 25 00  	srli	a0, a0, 2
800010d8: 33 05 95 02  	mul	a0, a0, s1
800010dc: 33 05 ad 40  	sub	a0, s10, a0
800010e0: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800010e4: 33 35 fc 02  	mulhu	a0, s8, a5
800010e8: 13 55 25 00  	srli	a0, a0, 2
800010ec: 33 05 95 02  	mul	a0, a0, s1
800010f0: 33 05 ac 40  	sub	a0, s8, a0
800010f4: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800010f8: 33 35 f4 02  	mulhu	a0, s0, a5
800010fc: 13 55 25 00  	srli	a0, a0, 2
80001100: 33 05 95 02  	mul	a0, a0, s1
80001104: 33 05 a4 40  	sub	a0, s0, a0
80001108: 53 04 05 d2  	fcvt.d.w	fs0, a0
8000110c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001110: 27 bc 46 fa  	fsd	ft4, -72(a3)
80001114: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001118: 27 b0 46 fc  	fsd	ft4, -64(a3)
8000111c: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001120: 27 b4 46 fc  	fsd	ft4, -56(a3)
80001124: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001128: 27 b8 46 fc  	fsd	ft4, -48(a3)
8000112c: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001130: 27 bc 46 fc  	fsd	ft4, -40(a3)
80001134: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001138: 27 b0 46 fe  	fsd	ft4, -32(a3)
8000113c: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001140: 27 b4 46 fe  	fsd	ft4, -24(a3)
80001144: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001148: 27 b8 46 fe  	fsd	ft4, -16(a3)
8000114c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001150: 27 bc 46 fe  	fsd	ft4, -8(a3)
80001154: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001158: 27 b0 46 00  	fsd	ft4, 0(a3)
8000115c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001160: 27 b4 46 00  	fsd	ft4, 8(a3)
80001164: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001168: 27 b8 46 00  	fsd	ft4, 16(a3)
8000116c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001170: 27 bc 46 00  	fsd	ft4, 24(a3)
80001174: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001178: 27 b0 46 02  	fsd	ft4, 32(a3)
8000117c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001180: 27 b4 46 02  	fsd	ft4, 40(a3)
80001184: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001188: 27 b8 46 02  	fsd	ft4, 48(a3)
8000118c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001190: 27 bc 46 02  	fsd	ft4, 56(a3)
80001194: 23 a2 06 05  	sw	a6, 68(a3)
80001198: 23 a0 56 04  	sw	t0, 64(a3)
;   for (i = 0; i < nk; i++)
8000119c: 13 06 26 00  	addi	a2, a2, 2
800011a0: 93 85 15 00  	addi	a1, a1, 1
800011a4: 93 8c 3c 00  	addi	s9, s9, 3
800011a8: 13 0e 3e 00  	addi	t3, t3, 3
800011ac: 13 04 14 01  	addi	s0, s0, 17
800011b0: 13 07 47 00  	addi	a4, a4, 4
800011b4: 13 0c 0c 01  	addi	s8, s8, 16
800011b8: 93 8d 5d 00  	addi	s11, s11, 5
800011bc: 13 0d fd 00  	addi	s10, s10, 15
800011c0: 13 09 69 00  	addi	s2, s2, 6
800011c4: 93 83 63 00  	addi	t2, t2, 6
800011c8: 93 8b eb 00  	addi	s7, s7, 14
800011cc: 13 0b 7b 00  	addi	s6, s6, 7
800011d0: 93 8a da 00  	addi	s5, s5, 13
800011d4: 13 0a 8a 00  	addi	s4, s4, 8
800011d8: 93 89 c9 00  	addi	s3, s3, 12
800011dc: 93 8e 9e 00  	addi	t4, t4, 9
800011e0: 13 03 93 00  	addi	t1, t1, 9
800011e4: 93 8f bf 00  	addi	t6, t6, 11
800011e8: 93 86 06 09  	addi	a3, a3, 144
800011ec: 13 0f af 00  	addi	t5, t5, 10
800011f0: e3 14 16 dd  	bne	a2, a7, 0x80000fb8 <.LBB0_101+0x304>
800011f4: 23 22 11 02  	sw	ra, 36(sp)
;   for (i = 0; i < nj; i++)
800011f8: 03 25 c1 02  	lw	a0, 44(sp)
800011fc: 03 2c c1 03  	lw	s8, 60(sp)
80001200: 33 05 85 01  	add	a0, a0, s8
80001204: 13 06 85 41  	addi	a2, a0, 1048
80001208: 13 55 4c 01  	srli	a0, s8, 20
8000120c: 33 35 a0 00  	snez	a0, a0
80001210: b7 05 12 00  	lui	a1, 288
80001214: 93 85 15 00  	addi	a1, a1, 1
80001218: 23 28 c1 00  	sw	a2, 16(sp)
8000121c: b3 35 b6 00  	sltu	a1, a2, a1
80001220: 33 75 b5 00  	and	a0, a0, a1

80001224 <.LBB0_102>:
80001224: 17 5b 00 00  	auipc	s6, 5
80001228: 13 0b cb 8c  	addi	s6, s6, -1844
8000122c: 23 2c a1 00  	sw	a0, 24(sp)
80001230: 63 04 05 3a  	beqz	a0, 0x800015d8 <.LBB0_102+0x3b4>
80001234: 13 0f 00 00  	mv	t5, zero
80001238: 93 0c 00 00  	mv	s9, zero
8000123c: 13 0d 00 00  	mv	s10, zero
80001240: 93 0d 00 00  	mv	s11, zero
80001244: 93 00 00 00  	mv	ra, zero
80001248: 93 0b 00 00  	mv	s7, zero
8000124c: 13 07 00 00  	mv	a4, zero
80001250: 13 04 00 00  	mv	s0, zero
80001254: 13 06 00 00  	mv	a2, zero
80001258: 93 04 00 00  	mv	s1, zero
8000125c: 13 05 00 00  	mv	a0, zero
80001260: 93 06 00 00  	mv	a3, zero
80001264: 93 07 00 00  	mv	a5, zero
80001268: 13 08 00 00  	mv	a6, zero
8000126c: 93 08 00 00  	mv	a7, zero
80001270: 93 02 00 00  	mv	t0, zero
80001274: 13 03 00 00  	mv	t1, zero
80001278: 93 03 00 00  	mv	t2, zero
8000127c: 13 0e 00 00  	mv	t3, zero
80001280: 93 0e 00 00  	mv	t4, zero
80001284: 93 0f 00 00  	mv	t6, zero
80001288: 13 09 00 00  	mv	s2, zero
8000128c: 93 09 00 00  	mv	s3, zero
80001290: 13 0a 80 00  	addi	s4, zero, 8
80001294: 93 0a 70 01  	addi	s5, zero, 23
;   for (i = 0; i < nj; i++)
80001298: 93 05 00 04  	addi	a1, zero, 64
8000129c: ab a0 ba 00  	scfgw	s5, a1
800012a0: 93 05 00 0c  	addi	a1, zero, 192
800012a4: ab 20 ba 00  	scfgw	s4, a1
800012a8: 93 0a 10 01  	addi	s5, zero, 17
800012ac: 93 05 00 06  	addi	a1, zero, 96
800012b0: ab a0 ba 00  	scfgw	s5, a1
800012b4: 93 05 00 0e  	addi	a1, zero, 224
800012b8: ab 20 ba 00  	scfgw	s4, a1
800012bc: 93 05 00 02  	addi	a1, zero, 32
800012c0: ab 20 b0 00  	scfgw	zero, a1
800012c4: 2b 20 0c 3a  	scfgwi	s8, 928
800012c8: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800012cc: b7 95 2e ba  	lui	a1, 762601
800012d0: 13 8a 35 ba  	addi	s4, a1, -1117
800012d4: 13 0c a0 fe  	addi	s8, zero, -22
800012d8: 87 31 0b 00  	fld	ft3, 0(s6)
800012dc: 93 0a 60 01  	addi	s5, zero, 22
800012e0: 53 02 00 d2  	fcvt.d.w	ft4, zero
800012e4: 13 0b 40 1d  	addi	s6, zero, 468
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
800012e8: b3 35 4f 03  	mulhu	a1, t5, s4
800012ec: 93 d5 45 00  	srli	a1, a1, 4
800012f0: b3 85 55 03  	mul	a1, a1, s5
800012f4: b3 05 bf 40  	sub	a1, t5, a1
800012f8: d3 82 05 d2  	fcvt.d.w	ft5, a1
800012fc: b3 b5 4c 03  	mulhu	a1, s9, s4
80001300: 93 d5 45 00  	srli	a1, a1, 4
80001304: b3 85 55 03  	mul	a1, a1, s5
80001308: b3 85 bc 40  	sub	a1, s9, a1
8000130c: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001310: b3 35 4d 03  	mulhu	a1, s10, s4
80001314: 93 d5 45 00  	srli	a1, a1, 4
80001318: b3 85 55 03  	mul	a1, a1, s5
8000131c: b3 05 bd 40  	sub	a1, s10, a1
80001320: d3 83 05 d2  	fcvt.d.w	ft7, a1
80001324: b3 b5 4d 03  	mulhu	a1, s11, s4
80001328: 93 d5 45 00  	srli	a1, a1, 4
8000132c: b3 85 55 03  	mul	a1, a1, s5
80001330: b3 85 bd 40  	sub	a1, s11, a1
80001334: 53 85 05 d2  	fcvt.d.w	fa0, a1
80001338: b3 b5 40 03  	mulhu	a1, ra, s4
8000133c: 93 d5 45 00  	srli	a1, a1, 4
80001340: b3 85 55 03  	mul	a1, a1, s5
80001344: b3 85 b0 40  	sub	a1, ra, a1
80001348: d3 85 05 d2  	fcvt.d.w	fa1, a1
8000134c: b3 b5 4b 03  	mulhu	a1, s7, s4
80001350: 93 d5 45 00  	srli	a1, a1, 4
80001354: b3 85 55 03  	mul	a1, a1, s5
80001358: b3 85 bb 40  	sub	a1, s7, a1
8000135c: 53 86 05 d2  	fcvt.d.w	fa2, a1
80001360: b3 35 47 03  	mulhu	a1, a4, s4
80001364: 93 d5 45 00  	srli	a1, a1, 4
80001368: b3 85 55 03  	mul	a1, a1, s5
8000136c: b3 05 b7 40  	sub	a1, a4, a1
80001370: d3 86 05 d2  	fcvt.d.w	fa3, a1
80001374: b3 35 44 03  	mulhu	a1, s0, s4
80001378: 93 d5 45 00  	srli	a1, a1, 4
8000137c: b3 85 55 03  	mul	a1, a1, s5
80001380: b3 05 b4 40  	sub	a1, s0, a1
80001384: 53 87 05 d2  	fcvt.d.w	fa4, a1
80001388: b3 35 46 03  	mulhu	a1, a2, s4
8000138c: 93 d5 45 00  	srli	a1, a1, 4
80001390: b3 85 55 03  	mul	a1, a1, s5
80001394: b3 05 b6 40  	sub	a1, a2, a1
80001398: d3 87 05 d2  	fcvt.d.w	fa5, a1
8000139c: b3 b5 44 03  	mulhu	a1, s1, s4
800013a0: 93 d5 45 00  	srli	a1, a1, 4
800013a4: b3 85 55 03  	mul	a1, a1, s5
800013a8: b3 85 b4 40  	sub	a1, s1, a1
800013ac: 53 88 05 d2  	fcvt.d.w	fa6, a1
800013b0: b3 35 45 03  	mulhu	a1, a0, s4
800013b4: 93 d5 45 00  	srli	a1, a1, 4
800013b8: b3 85 55 03  	mul	a1, a1, s5
800013bc: b3 05 b5 40  	sub	a1, a0, a1
800013c0: d3 88 05 d2  	fcvt.d.w	fa7, a1
800013c4: b3 b5 46 03  	mulhu	a1, a3, s4
800013c8: 93 d5 45 00  	srli	a1, a1, 4
800013cc: b3 85 55 03  	mul	a1, a1, s5
800013d0: b3 85 b6 40  	sub	a1, a3, a1
800013d4: 53 8e 05 d2  	fcvt.d.w	ft8, a1
800013d8: b3 b5 47 03  	mulhu	a1, a5, s4
800013dc: 93 d5 45 00  	srli	a1, a1, 4
800013e0: b3 85 55 03  	mul	a1, a1, s5
800013e4: b3 85 b7 40  	sub	a1, a5, a1
800013e8: d3 8e 05 d2  	fcvt.d.w	ft9, a1
800013ec: b3 35 48 03  	mulhu	a1, a6, s4
800013f0: 93 d5 45 00  	srli	a1, a1, 4
800013f4: b3 85 55 03  	mul	a1, a1, s5
800013f8: b3 05 b8 40  	sub	a1, a6, a1
800013fc: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001400: b3 b5 48 03  	mulhu	a1, a7, s4
80001404: 93 d5 45 00  	srli	a1, a1, 4
80001408: b3 85 55 03  	mul	a1, a1, s5
8000140c: b3 85 b8 40  	sub	a1, a7, a1
80001410: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001414: b3 b5 42 03  	mulhu	a1, t0, s4
80001418: 93 d5 45 00  	srli	a1, a1, 4
8000141c: b3 85 55 03  	mul	a1, a1, s5
80001420: b3 85 b2 40  	sub	a1, t0, a1
80001424: 53 84 05 d2  	fcvt.d.w	fs0, a1
80001428: b3 35 43 03  	mulhu	a1, t1, s4
8000142c: 93 d5 45 00  	srli	a1, a1, 4
80001430: b3 85 55 03  	mul	a1, a1, s5
80001434: b3 05 b3 40  	sub	a1, t1, a1
80001438: d3 84 05 d2  	fcvt.d.w	fs1, a1
8000143c: b3 b5 43 03  	mulhu	a1, t2, s4
80001440: 93 d5 45 00  	srli	a1, a1, 4
80001444: b3 85 55 03  	mul	a1, a1, s5
80001448: b3 85 b3 40  	sub	a1, t2, a1
8000144c: 53 89 05 d2  	fcvt.d.w	fs2, a1
80001450: b3 35 4e 03  	mulhu	a1, t3, s4
80001454: 93 d5 45 00  	srli	a1, a1, 4
80001458: b3 85 55 03  	mul	a1, a1, s5
8000145c: b3 05 be 40  	sub	a1, t3, a1
80001460: d3 89 05 d2  	fcvt.d.w	fs3, a1
80001464: b3 b5 4e 03  	mulhu	a1, t4, s4
80001468: 93 d5 45 00  	srli	a1, a1, 4
8000146c: b3 85 55 03  	mul	a1, a1, s5
80001470: b3 85 be 40  	sub	a1, t4, a1
80001474: 53 8a 05 d2  	fcvt.d.w	fs4, a1
80001478: b3 b5 4f 03  	mulhu	a1, t6, s4
8000147c: 93 d5 45 00  	srli	a1, a1, 4
80001480: b3 85 55 03  	mul	a1, a1, s5
80001484: b3 85 bf 40  	sub	a1, t6, a1
80001488: d3 8a 05 d2  	fcvt.d.w	fs5, a1
8000148c: b3 35 49 03  	mulhu	a1, s2, s4
80001490: 93 d5 45 00  	srli	a1, a1, 4
80001494: b3 85 55 03  	mul	a1, a1, s5
80001498: b3 05 b9 40  	sub	a1, s2, a1
8000149c: 53 8b 05 d2  	fcvt.d.w	fs6, a1
800014a0: b3 b5 49 03  	mulhu	a1, s3, s4
800014a4: 93 d5 45 00  	srli	a1, a1, 4
800014a8: b3 85 85 03  	mul	a1, a1, s8
800014ac: b3 85 b9 00  	add	a1, s3, a1
800014b0: d3 8b 05 d2  	fcvt.d.w	fs7, a1
800014b4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800014b8: 53 80 52 22  	fmv.d	ft0, ft5
800014bc: d3 72 33 12  	fmul.d	ft5, ft6, ft3
800014c0: 53 80 52 22  	fmv.d	ft0, ft5
800014c4: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
800014c8: 53 80 52 22  	fmv.d	ft0, ft5
800014cc: d3 72 35 12  	fmul.d	ft5, fa0, ft3
800014d0: 53 80 52 22  	fmv.d	ft0, ft5
800014d4: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
800014d8: 53 80 52 22  	fmv.d	ft0, ft5
800014dc: d3 72 36 12  	fmul.d	ft5, fa2, ft3
800014e0: 53 80 52 22  	fmv.d	ft0, ft5
800014e4: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
800014e8: 53 80 52 22  	fmv.d	ft0, ft5
800014ec: d3 72 37 12  	fmul.d	ft5, fa4, ft3
800014f0: 53 80 52 22  	fmv.d	ft0, ft5
800014f4: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
800014f8: 53 80 52 22  	fmv.d	ft0, ft5
800014fc: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001500: 53 80 52 22  	fmv.d	ft0, ft5
80001504: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001508: 53 80 52 22  	fmv.d	ft0, ft5
8000150c: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001510: 53 80 52 22  	fmv.d	ft0, ft5
80001514: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001518: 53 80 52 22  	fmv.d	ft0, ft5
8000151c: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001520: 53 80 52 22  	fmv.d	ft0, ft5
80001524: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001528: 53 80 52 22  	fmv.d	ft0, ft5
8000152c: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001530: 53 80 52 22  	fmv.d	ft0, ft5
80001534: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001538: 53 80 52 22  	fmv.d	ft0, ft5
8000153c: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001540: 53 80 52 22  	fmv.d	ft0, ft5
80001544: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001548: 53 80 52 22  	fmv.d	ft0, ft5
8000154c: 53 00 42 22  	fmv.d	ft0, ft4
80001550: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001554: 53 80 52 22  	fmv.d	ft0, ft5
80001558: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
8000155c: 53 80 52 22  	fmv.d	ft0, ft5
80001560: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80001564: 53 80 52 22  	fmv.d	ft0, ft5
80001568: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
8000156c: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < nj; i++)
80001570: 93 89 a9 01  	addi	s3, s3, 26
80001574: 13 09 99 01  	addi	s2, s2, 25
80001578: 93 8f 8f 01  	addi	t6, t6, 24
8000157c: 93 8e 7e 01  	addi	t4, t4, 23
80001580: 13 0e 5e 01  	addi	t3, t3, 21
80001584: 93 83 43 01  	addi	t2, t2, 20
80001588: 13 03 33 01  	addi	t1, t1, 19
8000158c: 93 82 22 01  	addi	t0, t0, 18
80001590: 93 88 18 01  	addi	a7, a7, 17
80001594: 13 08 08 01  	addi	a6, a6, 16
80001598: 93 87 f7 00  	addi	a5, a5, 15
8000159c: 93 86 e6 00  	addi	a3, a3, 14
800015a0: 13 05 d5 00  	addi	a0, a0, 13
800015a4: 93 84 c4 00  	addi	s1, s1, 12
800015a8: 13 06 b6 00  	addi	a2, a2, 11
800015ac: 13 04 a4 00  	addi	s0, s0, 10
800015b0: 13 07 97 00  	addi	a4, a4, 9
800015b4: 93 8b 8b 00  	addi	s7, s7, 8
800015b8: 93 80 70 00  	addi	ra, ra, 7
800015bc: 93 8d 6d 00  	addi	s11, s11, 6
800015c0: 13 0d 5d 00  	addi	s10, s10, 5
800015c4: 93 8c 4c 00  	addi	s9, s9, 4
800015c8: 13 0f 3f 00  	addi	t5, t5, 3
800015cc: e3 9e 69 d1  	bne	s3, s6, 0x800012e8 <.LBB0_102+0xc4>
800015d0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800015d4: 6f 00 c0 36  	j	0x80001940 <.LBB0_102+0x71c>
800015d8: 13 08 00 00  	mv	a6, zero
800015dc: 93 08 00 00  	mv	a7, zero
800015e0: 93 02 00 00  	mv	t0, zero
800015e4: 13 03 00 00  	mv	t1, zero
800015e8: 93 03 00 00  	mv	t2, zero
800015ec: 13 0e 00 00  	mv	t3, zero
800015f0: 93 0e 00 00  	mv	t4, zero
800015f4: 13 0f 00 00  	mv	t5, zero
800015f8: 93 0f 00 00  	mv	t6, zero
800015fc: 13 09 00 00  	mv	s2, zero
80001600: 93 09 00 00  	mv	s3, zero
80001604: 13 0a 00 00  	mv	s4, zero
80001608: 93 0a 00 00  	mv	s5, zero
8000160c: 93 0c 00 00  	mv	s9, zero
80001610: 13 0d 00 00  	mv	s10, zero
80001614: 93 0d 00 00  	mv	s11, zero
80001618: 93 00 00 00  	mv	ra, zero
8000161c: 93 0b 00 00  	mv	s7, zero
80001620: 13 06 00 00  	mv	a2, zero
80001624: 93 06 00 00  	mv	a3, zero
80001628: 13 07 00 00  	mv	a4, zero
8000162c: 93 07 00 00  	mv	a5, zero
80001630: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nj; i++)
80001634: 13 04 0c 06  	addi	s0, s8, 96
80001638: 37 95 2e ba  	lui	a0, 762601
8000163c: 13 05 35 ba  	addi	a0, a0, -1117
80001640: 87 31 0b 00  	fld	ft3, 0(s6)
80001644: 13 0b 60 01  	addi	s6, zero, 22
80001648: 13 0c a0 fe  	addi	s8, zero, -22
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
8000164c: b3 b5 a7 02  	mulhu	a1, a5, a0
80001650: 93 d5 45 00  	srli	a1, a1, 4
80001654: b3 85 65 03  	mul	a1, a1, s6
80001658: b3 85 b7 40  	sub	a1, a5, a1
8000165c: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001660: b3 35 a7 02  	mulhu	a1, a4, a0
80001664: 93 d5 45 00  	srli	a1, a1, 4
80001668: b3 85 65 03  	mul	a1, a1, s6
8000166c: b3 05 b7 40  	sub	a1, a4, a1
80001670: d3 82 05 d2  	fcvt.d.w	ft5, a1
80001674: b3 35 a6 02  	mulhu	a1, a2, a0
80001678: 93 d5 45 00  	srli	a1, a1, 4
8000167c: b3 85 65 03  	mul	a1, a1, s6
80001680: b3 05 b6 40  	sub	a1, a2, a1
80001684: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001688: b3 b5 a0 02  	mulhu	a1, ra, a0
8000168c: 93 d5 45 00  	srli	a1, a1, 4
80001690: b3 85 65 03  	mul	a1, a1, s6
80001694: b3 85 b0 40  	sub	a1, ra, a1
80001698: d3 83 05 d2  	fcvt.d.w	ft7, a1
8000169c: b3 35 ad 02  	mulhu	a1, s10, a0
800016a0: 93 d5 45 00  	srli	a1, a1, 4
800016a4: b3 85 65 03  	mul	a1, a1, s6
800016a8: b3 05 bd 40  	sub	a1, s10, a1
800016ac: 53 85 05 d2  	fcvt.d.w	fa0, a1
800016b0: b3 b5 ac 02  	mulhu	a1, s9, a0
800016b4: 93 d5 45 00  	srli	a1, a1, 4
800016b8: b3 85 65 03  	mul	a1, a1, s6
800016bc: b3 85 bc 40  	sub	a1, s9, a1
800016c0: d3 85 05 d2  	fcvt.d.w	fa1, a1
800016c4: b3 35 aa 02  	mulhu	a1, s4, a0
800016c8: 93 d5 45 00  	srli	a1, a1, 4
800016cc: b3 85 65 03  	mul	a1, a1, s6
800016d0: b3 05 ba 40  	sub	a1, s4, a1
800016d4: 53 86 05 d2  	fcvt.d.w	fa2, a1
800016d8: b3 35 a9 02  	mulhu	a1, s2, a0
800016dc: 93 d5 45 00  	srli	a1, a1, 4
800016e0: b3 85 65 03  	mul	a1, a1, s6
800016e4: b3 05 b9 40  	sub	a1, s2, a1
800016e8: d3 86 05 d2  	fcvt.d.w	fa3, a1
800016ec: b3 35 af 02  	mulhu	a1, t5, a0
800016f0: 93 d5 45 00  	srli	a1, a1, 4
800016f4: b3 85 65 03  	mul	a1, a1, s6
800016f8: b3 05 bf 40  	sub	a1, t5, a1
800016fc: 53 87 05 d2  	fcvt.d.w	fa4, a1
80001700: b3 35 ae 02  	mulhu	a1, t3, a0
80001704: 93 d5 45 00  	srli	a1, a1, 4
80001708: b3 85 65 03  	mul	a1, a1, s6
8000170c: b3 05 be 40  	sub	a1, t3, a1
80001710: d3 87 05 d2  	fcvt.d.w	fa5, a1
80001714: b3 35 a3 02  	mulhu	a1, t1, a0
80001718: 93 d5 45 00  	srli	a1, a1, 4
8000171c: b3 85 65 03  	mul	a1, a1, s6
80001720: b3 05 b3 40  	sub	a1, t1, a1
80001724: 53 88 05 d2  	fcvt.d.w	fa6, a1
80001728: b3 35 a8 02  	mulhu	a1, a6, a0
8000172c: 93 d5 45 00  	srli	a1, a1, 4
80001730: b3 85 65 03  	mul	a1, a1, s6
80001734: b3 05 b8 40  	sub	a1, a6, a1
80001738: d3 88 05 d2  	fcvt.d.w	fa7, a1
8000173c: b3 b5 a8 02  	mulhu	a1, a7, a0
80001740: 93 d5 45 00  	srli	a1, a1, 4
80001744: b3 85 65 03  	mul	a1, a1, s6
80001748: b3 85 b8 40  	sub	a1, a7, a1
8000174c: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80001750: b3 b5 a2 02  	mulhu	a1, t0, a0
80001754: 93 d5 45 00  	srli	a1, a1, 4
80001758: b3 85 65 03  	mul	a1, a1, s6
8000175c: b3 85 b2 40  	sub	a1, t0, a1
80001760: d3 8e 05 d2  	fcvt.d.w	ft9, a1
80001764: b3 b5 a3 02  	mulhu	a1, t2, a0
80001768: 93 d5 45 00  	srli	a1, a1, 4
8000176c: b3 85 65 03  	mul	a1, a1, s6
80001770: b3 85 b3 40  	sub	a1, t2, a1
80001774: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001778: b3 b5 ae 02  	mulhu	a1, t4, a0
8000177c: 93 d5 45 00  	srli	a1, a1, 4
80001780: b3 85 65 03  	mul	a1, a1, s6
80001784: b3 85 be 40  	sub	a1, t4, a1
80001788: d3 8f 05 d2  	fcvt.d.w	ft11, a1
8000178c: b3 b5 af 02  	mulhu	a1, t6, a0
80001790: 93 d5 45 00  	srli	a1, a1, 4
80001794: b3 85 65 03  	mul	a1, a1, s6
80001798: b3 85 bf 40  	sub	a1, t6, a1
8000179c: 53 84 05 d2  	fcvt.d.w	fs0, a1
800017a0: b3 b5 a9 02  	mulhu	a1, s3, a0
800017a4: 93 d5 45 00  	srli	a1, a1, 4
800017a8: b3 85 65 03  	mul	a1, a1, s6
800017ac: b3 85 b9 40  	sub	a1, s3, a1
800017b0: d3 84 05 d2  	fcvt.d.w	fs1, a1
800017b4: b3 b5 aa 02  	mulhu	a1, s5, a0
800017b8: 93 d5 45 00  	srli	a1, a1, 4
800017bc: b3 85 65 03  	mul	a1, a1, s6
800017c0: b3 85 ba 40  	sub	a1, s5, a1
800017c4: 53 89 05 d2  	fcvt.d.w	fs2, a1
800017c8: b3 b5 ad 02  	mulhu	a1, s11, a0
800017cc: 93 d5 45 00  	srli	a1, a1, 4
800017d0: b3 85 65 03  	mul	a1, a1, s6
800017d4: b3 85 bd 40  	sub	a1, s11, a1
800017d8: d3 89 05 d2  	fcvt.d.w	fs3, a1
800017dc: b3 b5 ab 02  	mulhu	a1, s7, a0
800017e0: 93 d5 45 00  	srli	a1, a1, 4
800017e4: b3 85 65 03  	mul	a1, a1, s6
800017e8: b3 85 bb 40  	sub	a1, s7, a1
800017ec: 53 8a 05 d2  	fcvt.d.w	fs4, a1
800017f0: b3 b5 a6 02  	mulhu	a1, a3, a0
800017f4: 93 d5 45 00  	srli	a1, a1, 4
800017f8: b3 85 65 03  	mul	a1, a1, s6
800017fc: b3 85 b6 40  	sub	a1, a3, a1
80001800: d3 8a 05 d2  	fcvt.d.w	fs5, a1
80001804: b3 b5 a4 02  	mulhu	a1, s1, a0
80001808: 93 d5 45 00  	srli	a1, a1, 4
8000180c: b3 85 85 03  	mul	a1, a1, s8
80001810: b3 85 b4 00  	add	a1, s1, a1
80001814: 53 8b 05 d2  	fcvt.d.w	fs6, a1
80001818: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000181c: 27 30 44 fa  	fsd	ft4, -96(s0)
80001820: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001824: 27 34 44 fa  	fsd	ft4, -88(s0)
80001828: 53 72 33 12  	fmul.d	ft4, ft6, ft3
8000182c: 27 38 44 fa  	fsd	ft4, -80(s0)
80001830: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001834: 27 3c 44 fa  	fsd	ft4, -72(s0)
80001838: 53 72 35 12  	fmul.d	ft4, fa0, ft3
8000183c: 27 30 44 fc  	fsd	ft4, -64(s0)
80001840: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001844: 27 34 44 fc  	fsd	ft4, -56(s0)
80001848: 53 72 36 12  	fmul.d	ft4, fa2, ft3
8000184c: 27 38 44 fc  	fsd	ft4, -48(s0)
80001850: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001854: 27 3c 44 fc  	fsd	ft4, -40(s0)
80001858: 53 72 37 12  	fmul.d	ft4, fa4, ft3
8000185c: 27 30 44 fe  	fsd	ft4, -32(s0)
80001860: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001864: 27 34 44 fe  	fsd	ft4, -24(s0)
80001868: 53 72 38 12  	fmul.d	ft4, fa6, ft3
8000186c: 27 38 44 fe  	fsd	ft4, -16(s0)
80001870: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001874: 27 3c 44 fe  	fsd	ft4, -8(s0)
80001878: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
8000187c: 27 30 44 00  	fsd	ft4, 0(s0)
80001880: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001884: 27 34 44 00  	fsd	ft4, 8(s0)
80001888: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
8000188c: 27 38 44 00  	fsd	ft4, 16(s0)
80001890: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001894: 27 3c 44 00  	fsd	ft4, 24(s0)
80001898: 53 72 34 12  	fmul.d	ft4, fs0, ft3
8000189c: 27 30 44 02  	fsd	ft4, 32(s0)
800018a0: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
800018a4: 27 34 44 02  	fsd	ft4, 40(s0)
800018a8: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800018ac: 27 38 44 02  	fsd	ft4, 48(s0)
800018b0: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
800018b4: 27 30 44 04  	fsd	ft4, 64(s0)
800018b8: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
800018bc: 27 34 44 04  	fsd	ft4, 72(s0)
800018c0: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
800018c4: 27 38 44 04  	fsd	ft4, 80(s0)
800018c8: 23 2e 04 02  	sw	zero, 60(s0)
800018cc: 23 2c 04 02  	sw	zero, 56(s0)
800018d0: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
800018d4: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < nj; i++)
800018d8: 93 84 a4 01  	addi	s1, s1, 26
800018dc: 93 87 37 00  	addi	a5, a5, 3
800018e0: 13 07 47 00  	addi	a4, a4, 4
800018e4: 93 86 96 01  	addi	a3, a3, 25
800018e8: 13 06 56 00  	addi	a2, a2, 5
800018ec: 93 8b 8b 01  	addi	s7, s7, 24
800018f0: 93 80 60 00  	addi	ra, ra, 6
800018f4: 93 8d 7d 01  	addi	s11, s11, 23
800018f8: 13 0d 7d 00  	addi	s10, s10, 7
800018fc: 93 8c 8c 00  	addi	s9, s9, 8
80001900: 93 8a 5a 01  	addi	s5, s5, 21
80001904: 13 0a 9a 00  	addi	s4, s4, 9
80001908: 93 89 49 01  	addi	s3, s3, 20
8000190c: 13 09 a9 00  	addi	s2, s2, 10
80001910: 93 8f 3f 01  	addi	t6, t6, 19
80001914: 13 0f bf 00  	addi	t5, t5, 11
80001918: 93 8e 2e 01  	addi	t4, t4, 18
8000191c: 13 0e ce 00  	addi	t3, t3, 12
80001920: 93 83 13 01  	addi	t2, t2, 17
80001924: 13 03 d3 00  	addi	t1, t1, 13
80001928: 93 82 02 01  	addi	t0, t0, 16
8000192c: 13 04 04 0c  	addi	s0, s0, 192
80001930: 93 88 f8 00  	addi	a7, a7, 15
80001934: 13 08 e8 00  	addi	a6, a6, 14
80001938: 93 05 40 1d  	addi	a1, zero, 468
8000193c: e3 98 b4 d0  	bne	s1, a1, 0x8000164c <.LBB0_102+0x428>
80001940: 83 27 c1 04  	lw	a5, 76(sp)
;   for (i = 0; i < nm; i++)
80001944: 03 25 81 04  	lw	a0, 72(sp)
80001948: 33 86 a7 00  	add	a2, a5, a0
8000194c: 13 d5 47 01  	srli	a0, a5, 20
80001950: 33 35 a0 00  	snez	a0, a0
80001954: b7 05 12 00  	lui	a1, 288
80001958: 93 85 15 00  	addi	a1, a1, 1
8000195c: 23 22 c1 00  	sw	a2, 4(sp)
80001960: b3 35 b6 00  	sltu	a1, a2, a1
80001964: b3 75 b5 00  	and	a1, a0, a1

80001968 <.LBB0_103>:
80001968: 17 45 00 00  	auipc	a0, 4
8000196c: 13 05 05 19  	addi	a0, a0, 400
80001970: 23 24 b1 00  	sw	a1, 8(sp)
80001974: 63 8e 05 36  	beqz	a1, 0x80001cf0 <.LBB0_104+0x31c>
80001978: 93 08 00 00  	mv	a7, zero
8000197c: 93 02 00 00  	mv	t0, zero
80001980: 13 03 00 00  	mv	t1, zero
80001984: 93 05 80 00  	addi	a1, zero, 8
80001988: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < nm; i++)
8000198c: 93 06 00 04  	addi	a3, zero, 64
80001990: 13 07 00 0c  	addi	a4, zero, 192
80001994: ab 20 d6 00  	scfgw	a2, a3
80001998: ab a0 e5 00  	scfgw	a1, a4
8000199c: 13 06 70 01  	addi	a2, zero, 23
800019a0: 93 06 00 06  	addi	a3, zero, 96
800019a4: 13 07 00 0e  	addi	a4, zero, 224
800019a8: ab 20 d6 00  	scfgw	a2, a3
800019ac: ab a0 e5 00  	scfgw	a1, a4
800019b0: 93 05 00 02  	addi	a1, zero, 32
800019b4: ab 20 b0 00  	scfgw	zero, a1
800019b8: 2b a0 07 3a  	scfgwi	a5, 928
800019bc: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800019c0: 13 09 20 00  	addi	s2, zero, 2
800019c4: b7 d5 cc cc  	lui	a1, 838861
800019c8: 13 87 d5 cc  	addi	a4, a1, -819
800019cc: 93 07 40 01  	addi	a5, zero, 20
800019d0: 87 31 05 00  	fld	ft3, 0(a0)

800019d4 <.LBB0_104>:
800019d4: 17 45 00 00  	auipc	a0, 4
800019d8: 13 05 c5 12  	addi	a0, a0, 300
800019dc: 07 32 05 00  	fld	ft4, 0(a0)
800019e0: 13 0c 20 03  	addi	s8, zero, 50
800019e4: 93 03 20 00  	addi	t2, zero, 2
800019e8: 13 0e 20 00  	addi	t3, zero, 2
800019ec: 93 09 20 00  	addi	s3, zero, 2
800019f0: 13 0a 20 00  	addi	s4, zero, 2
800019f4: 93 0a 20 00  	addi	s5, zero, 2
800019f8: 13 0b 20 00  	addi	s6, zero, 2
800019fc: 93 0f 20 00  	addi	t6, zero, 2
80001a00: 93 0c 20 00  	addi	s9, zero, 2
80001a04: 13 0d 20 00  	addi	s10, zero, 2
80001a08: 93 0d 20 00  	addi	s11, zero, 2
80001a0c: 93 00 20 00  	addi	ra, zero, 2
80001a10: 93 0b 20 00  	addi	s7, zero, 2
80001a14: 13 04 20 00  	addi	s0, zero, 2
80001a18: 93 04 20 00  	addi	s1, zero, 2
80001a1c: 93 06 20 00  	addi	a3, zero, 2
80001a20: 13 05 20 00  	addi	a0, zero, 2
80001a24: 93 05 20 00  	addi	a1, zero, 2
80001a28: 93 0e 20 00  	addi	t4, zero, 2
80001a2c: 13 0f 20 00  	addi	t5, zero, 2
80001a30: 13 08 20 00  	addi	a6, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001a34: 33 36 e8 02  	mulhu	a2, a6, a4
80001a38: 13 56 46 00  	srli	a2, a2, 4
80001a3c: 33 06 f6 02  	mul	a2, a2, a5
80001a40: 33 06 c8 40  	sub	a2, a6, a2
80001a44: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001a48: 33 36 e9 02  	mulhu	a2, s2, a4
80001a4c: 13 56 46 00  	srli	a2, a2, 4
80001a50: 33 06 f6 02  	mul	a2, a2, a5
80001a54: 33 06 c9 40  	sub	a2, s2, a2
80001a58: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001a5c: 33 b6 e8 02  	mulhu	a2, a7, a4
80001a60: 13 56 46 00  	srli	a2, a2, 4
80001a64: 33 06 f6 02  	mul	a2, a2, a5
80001a68: 33 86 c3 40  	sub	a2, t2, a2
80001a6c: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001a70: 33 b6 e2 02  	mulhu	a2, t0, a4
80001a74: 13 56 46 00  	srli	a2, a2, 4
80001a78: 33 06 f6 02  	mul	a2, a2, a5
80001a7c: 33 06 ce 40  	sub	a2, t3, a2
80001a80: 53 05 06 d2  	fcvt.d.w	fa0, a2
80001a84: 33 b6 e9 02  	mulhu	a2, s3, a4
80001a88: 13 56 46 00  	srli	a2, a2, 4
80001a8c: 33 06 f6 02  	mul	a2, a2, a5
80001a90: 33 86 c9 40  	sub	a2, s3, a2
80001a94: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001a98: 33 36 ea 02  	mulhu	a2, s4, a4
80001a9c: 13 56 46 00  	srli	a2, a2, 4
80001aa0: 33 06 f6 02  	mul	a2, a2, a5
80001aa4: 33 06 ca 40  	sub	a2, s4, a2
80001aa8: 53 06 06 d2  	fcvt.d.w	fa2, a2
80001aac: 33 b6 ea 02  	mulhu	a2, s5, a4
80001ab0: 13 56 46 00  	srli	a2, a2, 4
80001ab4: 33 06 f6 02  	mul	a2, a2, a5
80001ab8: 33 86 ca 40  	sub	a2, s5, a2
80001abc: d3 06 06 d2  	fcvt.d.w	fa3, a2
80001ac0: 33 36 eb 02  	mulhu	a2, s6, a4
80001ac4: 13 56 46 00  	srli	a2, a2, 4
80001ac8: 33 06 f6 02  	mul	a2, a2, a5
80001acc: 33 06 cb 40  	sub	a2, s6, a2
80001ad0: 53 07 06 d2  	fcvt.d.w	fa4, a2
80001ad4: 33 36 e3 02  	mulhu	a2, t1, a4
80001ad8: 13 56 46 00  	srli	a2, a2, 4
80001adc: 33 06 f6 02  	mul	a2, a2, a5
80001ae0: 33 86 cf 40  	sub	a2, t6, a2
80001ae4: d3 07 06 d2  	fcvt.d.w	fa5, a2
80001ae8: 33 b6 ec 02  	mulhu	a2, s9, a4
80001aec: 13 56 46 00  	srli	a2, a2, 4
80001af0: 33 06 f6 02  	mul	a2, a2, a5
80001af4: 33 86 cc 40  	sub	a2, s9, a2
80001af8: 53 08 06 d2  	fcvt.d.w	fa6, a2
80001afc: 33 36 ed 02  	mulhu	a2, s10, a4
80001b00: 13 56 46 00  	srli	a2, a2, 4
80001b04: 33 06 f6 02  	mul	a2, a2, a5
80001b08: 33 06 cd 40  	sub	a2, s10, a2
80001b0c: d3 08 06 d2  	fcvt.d.w	fa7, a2
80001b10: 33 b6 ed 02  	mulhu	a2, s11, a4
80001b14: 13 56 46 00  	srli	a2, a2, 4
80001b18: 33 06 f6 02  	mul	a2, a2, a5
80001b1c: 33 86 cd 40  	sub	a2, s11, a2
80001b20: 53 0e 06 d2  	fcvt.d.w	ft8, a2
80001b24: 33 b6 e0 02  	mulhu	a2, ra, a4
80001b28: 13 56 46 00  	srli	a2, a2, 4
80001b2c: 33 06 f6 02  	mul	a2, a2, a5
80001b30: 33 86 c0 40  	sub	a2, ra, a2
80001b34: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80001b38: 33 b6 eb 02  	mulhu	a2, s7, a4
80001b3c: 13 56 46 00  	srli	a2, a2, 4
80001b40: 33 06 f6 02  	mul	a2, a2, a5
80001b44: 33 86 cb 40  	sub	a2, s7, a2
80001b48: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80001b4c: 33 36 e4 02  	mulhu	a2, s0, a4
80001b50: 13 56 46 00  	srli	a2, a2, 4
80001b54: 33 06 f6 02  	mul	a2, a2, a5
80001b58: 33 06 c4 40  	sub	a2, s0, a2
80001b5c: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80001b60: 33 b6 e4 02  	mulhu	a2, s1, a4
80001b64: 13 56 46 00  	srli	a2, a2, 4
80001b68: 33 06 f6 02  	mul	a2, a2, a5
80001b6c: 33 86 c4 40  	sub	a2, s1, a2
80001b70: 53 04 06 d2  	fcvt.d.w	fs0, a2
80001b74: 33 b6 e6 02  	mulhu	a2, a3, a4
80001b78: 13 56 46 00  	srli	a2, a2, 4
80001b7c: 33 06 f6 02  	mul	a2, a2, a5
80001b80: 33 86 c6 40  	sub	a2, a3, a2
80001b84: d3 04 06 d2  	fcvt.d.w	fs1, a2
80001b88: 33 36 e5 02  	mulhu	a2, a0, a4
80001b8c: 13 56 46 00  	srli	a2, a2, 4
80001b90: 33 06 f6 02  	mul	a2, a2, a5
80001b94: 33 06 c5 40  	sub	a2, a0, a2
80001b98: 53 09 06 d2  	fcvt.d.w	fs2, a2
80001b9c: 33 b6 e5 02  	mulhu	a2, a1, a4
80001ba0: 13 56 46 00  	srli	a2, a2, 4
80001ba4: 33 06 f6 02  	mul	a2, a2, a5
80001ba8: 33 86 c5 40  	sub	a2, a1, a2
80001bac: d3 09 06 d2  	fcvt.d.w	fs3, a2
80001bb0: 33 b6 ee 02  	mulhu	a2, t4, a4
80001bb4: 13 56 46 00  	srli	a2, a2, 4
80001bb8: 33 06 f6 02  	mul	a2, a2, a5
80001bbc: 33 86 ce 40  	sub	a2, t4, a2
80001bc0: 53 0a 06 d2  	fcvt.d.w	fs4, a2
80001bc4: 33 36 ef 02  	mulhu	a2, t5, a4
80001bc8: 13 56 46 00  	srli	a2, a2, 4
80001bcc: 33 06 f6 02  	mul	a2, a2, a5
80001bd0: 33 06 cf 40  	sub	a2, t5, a2
80001bd4: d3 0a 06 d2  	fcvt.d.w	fs5, a2
80001bd8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001bdc: 53 80 52 22  	fmv.d	ft0, ft5
80001be0: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001be4: 53 80 52 22  	fmv.d	ft0, ft5
80001be8: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001bec: 53 80 52 22  	fmv.d	ft0, ft5
80001bf0: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001bf4: 53 80 52 22  	fmv.d	ft0, ft5
80001bf8: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001bfc: 53 80 52 22  	fmv.d	ft0, ft5
80001c00: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001c04: 53 80 52 22  	fmv.d	ft0, ft5
80001c08: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001c0c: 53 80 52 22  	fmv.d	ft0, ft5
80001c10: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001c14: 53 80 52 22  	fmv.d	ft0, ft5
80001c18: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001c1c: 53 80 52 22  	fmv.d	ft0, ft5
80001c20: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001c24: 53 80 52 22  	fmv.d	ft0, ft5
80001c28: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001c2c: 53 80 52 22  	fmv.d	ft0, ft5
80001c30: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001c34: 53 80 52 22  	fmv.d	ft0, ft5
80001c38: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001c3c: 53 80 52 22  	fmv.d	ft0, ft5
80001c40: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001c44: 53 80 52 22  	fmv.d	ft0, ft5
80001c48: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001c4c: 53 80 52 22  	fmv.d	ft0, ft5
80001c50: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001c54: 53 80 52 22  	fmv.d	ft0, ft5
80001c58: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001c5c: 53 80 52 22  	fmv.d	ft0, ft5
80001c60: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001c64: 53 80 52 22  	fmv.d	ft0, ft5
80001c68: 53 00 42 22  	fmv.d	ft0, ft4
80001c6c: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001c70: 53 80 52 22  	fmv.d	ft0, ft5
80001c74: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001c78: 53 80 52 22  	fmv.d	ft0, ft5
80001c7c: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001c80: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < nm; i++)
80001c84: 13 08 28 00  	addi	a6, a6, 2
80001c88: 13 0f 7f 01  	addi	t5, t5, 23
80001c8c: 93 8e 6e 01  	addi	t4, t4, 22
80001c90: 93 85 55 01  	addi	a1, a1, 21
80001c94: 13 05 35 01  	addi	a0, a0, 19
80001c98: 93 86 26 01  	addi	a3, a3, 18
80001c9c: 93 84 14 01  	addi	s1, s1, 17
80001ca0: 13 04 04 01  	addi	s0, s0, 16
80001ca4: 93 8b fb 00  	addi	s7, s7, 15
80001ca8: 93 80 e0 00  	addi	ra, ra, 14
80001cac: 93 8d dd 00  	addi	s11, s11, 13
80001cb0: 13 0d cd 00  	addi	s10, s10, 12
80001cb4: 93 8c bc 00  	addi	s9, s9, 11
80001cb8: 93 8f af 00  	addi	t6, t6, 10
80001cbc: 13 03 a3 00  	addi	t1, t1, 10
80001cc0: 13 0b 9b 00  	addi	s6, s6, 9
80001cc4: 93 8a 8a 00  	addi	s5, s5, 8
80001cc8: 13 0a 7a 00  	addi	s4, s4, 7
80001ccc: 93 89 69 00  	addi	s3, s3, 6
80001cd0: 13 0e 5e 00  	addi	t3, t3, 5
80001cd4: 93 82 52 00  	addi	t0, t0, 5
80001cd8: 93 83 43 00  	addi	t2, t2, 4
80001cdc: 93 88 48 00  	addi	a7, a7, 4
80001ce0: 13 09 39 00  	addi	s2, s2, 3
80001ce4: e3 18 88 d5  	bne	a6, s8, 0x80001a34 <.LBB0_104+0x60>
80001ce8: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001cec: 6f 00 80 37  	j	0x80002064 <.LBB0_104+0x690>
80001cf0: 13 04 00 00  	mv	s0, zero
80001cf4: 13 06 00 00  	mv	a2, zero
80001cf8: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nm; i++)
80001cfc: 93 86 87 05  	addi	a3, a5, 88
80001d00: 93 0f 20 00  	addi	t6, zero, 2
80001d04: b7 d5 cc cc  	lui	a1, 838861
80001d08: 93 87 d5 cc  	addi	a5, a1, -819
80001d0c: 13 09 40 01  	addi	s2, zero, 20
80001d10: 87 31 05 00  	fld	ft3, 0(a0)
80001d14: 37 85 94 3f  	lui	a0, 260424
80001d18: 13 05 15 ae  	addi	a0, a0, -1311
80001d1c: 23 22 a1 04  	sw	a0, 68(sp)
80001d20: 37 15 ae 47  	lui	a0, 293601
80001d24: 13 05 b5 47  	addi	a0, a0, 1147
80001d28: 23 20 a1 04  	sw	a0, 64(sp)
80001d2c: 93 09 20 00  	addi	s3, zero, 2
80001d30: 13 0a 20 00  	addi	s4, zero, 2
80001d34: 93 0a 20 00  	addi	s5, zero, 2
80001d38: 13 0b 20 00  	addi	s6, zero, 2
80001d3c: 93 0c 20 00  	addi	s9, zero, 2
80001d40: 13 05 20 00  	addi	a0, zero, 2
80001d44: 13 0d 20 00  	addi	s10, zero, 2
80001d48: 93 0d 20 00  	addi	s11, zero, 2
80001d4c: 93 0e 20 00  	addi	t4, zero, 2
80001d50: 93 00 20 00  	addi	ra, zero, 2
80001d54: 13 03 20 00  	addi	t1, zero, 2
80001d58: 93 03 20 00  	addi	t2, zero, 2
80001d5c: 13 0f 20 00  	addi	t5, zero, 2
80001d60: 93 08 20 00  	addi	a7, zero, 2
80001d64: 93 05 20 00  	addi	a1, zero, 2
80001d68: 13 0e 20 00  	addi	t3, zero, 2
80001d6c: 13 0c 20 00  	addi	s8, zero, 2
80001d70: 13 08 20 00  	addi	a6, zero, 2
80001d74: 93 02 20 00  	addi	t0, zero, 2
80001d78: 93 0b 20 00  	addi	s7, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001d7c: 23 24 81 04  	sw	s0, 72(sp)
80001d80: 33 b7 fb 02  	mulhu	a4, s7, a5
80001d84: 13 57 47 00  	srli	a4, a4, 4
80001d88: 13 04 06 00  	mv	s0, a2
80001d8c: 13 06 05 00  	mv	a2, a0
80001d90: 13 05 0c 00  	mv	a0, s8
80001d94: 33 0c 27 03  	mul	s8, a4, s2
80001d98: 33 87 8b 41  	sub	a4, s7, s8
80001d9c: 13 0c 05 00  	mv	s8, a0
80001da0: 13 05 06 00  	mv	a0, a2
80001da4: 13 06 04 00  	mv	a2, s0
80001da8: 03 24 81 04  	lw	s0, 72(sp)
80001dac: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001db0: 33 b7 f2 02  	mulhu	a4, t0, a5
80001db4: 13 57 47 00  	srli	a4, a4, 4
80001db8: 33 07 27 03  	mul	a4, a4, s2
80001dbc: 33 87 e2 40  	sub	a4, t0, a4
80001dc0: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001dc4: 33 b7 f4 02  	mulhu	a4, s1, a5
80001dc8: 13 57 47 00  	srli	a4, a4, 4
80001dcc: 33 07 27 03  	mul	a4, a4, s2
80001dd0: 33 07 ec 40  	sub	a4, s8, a4
80001dd4: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001dd8: 33 37 f6 02  	mulhu	a4, a2, a5
80001ddc: 13 57 47 00  	srli	a4, a4, 4
80001de0: 33 07 27 03  	mul	a4, a4, s2
80001de4: 33 87 e5 40  	sub	a4, a1, a4
80001de8: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001dec: 33 37 ff 02  	mulhu	a4, t5, a5
80001df0: 13 57 47 00  	srli	a4, a4, 4
80001df4: 33 07 27 03  	mul	a4, a4, s2
80001df8: 33 07 ef 40  	sub	a4, t5, a4
80001dfc: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001e00: 33 b7 f3 02  	mulhu	a4, t2, a5
80001e04: 13 57 47 00  	srli	a4, a4, 4
80001e08: 33 07 27 03  	mul	a4, a4, s2
80001e0c: 33 87 e3 40  	sub	a4, t2, a4
80001e10: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001e14: 33 b7 f0 02  	mulhu	a4, ra, a5
80001e18: 13 57 47 00  	srli	a4, a4, 4
80001e1c: 33 07 27 03  	mul	a4, a4, s2
80001e20: 33 87 e0 40  	sub	a4, ra, a4
80001e24: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001e28: 33 b7 fd 02  	mulhu	a4, s11, a5
80001e2c: 13 57 47 00  	srli	a4, a4, 4
80001e30: 33 07 27 03  	mul	a4, a4, s2
80001e34: 33 87 ed 40  	sub	a4, s11, a4
80001e38: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001e3c: 33 37 f4 02  	mulhu	a4, s0, a5
80001e40: 13 57 47 00  	srli	a4, a4, 4
80001e44: 33 07 27 03  	mul	a4, a4, s2
80001e48: 33 07 e5 40  	sub	a4, a0, a4
80001e4c: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001e50: 33 37 fb 02  	mulhu	a4, s6, a5
80001e54: 13 57 47 00  	srli	a4, a4, 4
80001e58: 33 07 27 03  	mul	a4, a4, s2
80001e5c: 33 07 eb 40  	sub	a4, s6, a4
80001e60: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001e64: 33 37 fa 02  	mulhu	a4, s4, a5
80001e68: 13 57 47 00  	srli	a4, a4, 4
80001e6c: 33 07 27 03  	mul	a4, a4, s2
80001e70: 33 07 ea 40  	sub	a4, s4, a4
80001e74: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001e78: 33 b7 ff 02  	mulhu	a4, t6, a5
80001e7c: 13 57 47 00  	srli	a4, a4, 4
80001e80: 33 07 27 03  	mul	a4, a4, s2
80001e84: 33 87 ef 40  	sub	a4, t6, a4
80001e88: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001e8c: 33 b7 f9 02  	mulhu	a4, s3, a5
80001e90: 13 57 47 00  	srli	a4, a4, 4
80001e94: 33 07 27 03  	mul	a4, a4, s2
80001e98: 33 87 e9 40  	sub	a4, s3, a4
80001e9c: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001ea0: 33 b7 fa 02  	mulhu	a4, s5, a5
80001ea4: 13 57 47 00  	srli	a4, a4, 4
80001ea8: 33 07 27 03  	mul	a4, a4, s2
80001eac: 33 87 ea 40  	sub	a4, s5, a4
80001eb0: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001eb4: 33 b7 fc 02  	mulhu	a4, s9, a5
80001eb8: 13 57 47 00  	srli	a4, a4, 4
80001ebc: 33 07 27 03  	mul	a4, a4, s2
80001ec0: 33 87 ec 40  	sub	a4, s9, a4
80001ec4: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001ec8: 33 37 fd 02  	mulhu	a4, s10, a5
80001ecc: 13 57 47 00  	srli	a4, a4, 4
80001ed0: 33 07 27 03  	mul	a4, a4, s2
80001ed4: 33 07 ed 40  	sub	a4, s10, a4
80001ed8: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001edc: 33 b7 fe 02  	mulhu	a4, t4, a5
80001ee0: 13 57 47 00  	srli	a4, a4, 4
80001ee4: 33 07 27 03  	mul	a4, a4, s2
80001ee8: 33 87 ee 40  	sub	a4, t4, a4
80001eec: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001ef0: 33 37 f3 02  	mulhu	a4, t1, a5
80001ef4: 13 57 47 00  	srli	a4, a4, 4
80001ef8: 33 07 27 03  	mul	a4, a4, s2
80001efc: 33 07 e3 40  	sub	a4, t1, a4
80001f00: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001f04: 33 b7 f8 02  	mulhu	a4, a7, a5
80001f08: 13 57 47 00  	srli	a4, a4, 4
80001f0c: 33 07 27 03  	mul	a4, a4, s2
80001f10: 33 87 e8 40  	sub	a4, a7, a4
80001f14: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001f18: 33 37 fe 02  	mulhu	a4, t3, a5
80001f1c: 13 57 47 00  	srli	a4, a4, 4
80001f20: 33 07 27 03  	mul	a4, a4, s2
80001f24: 33 07 ee 40  	sub	a4, t3, a4
80001f28: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001f2c: 33 37 f8 02  	mulhu	a4, a6, a5
80001f30: 13 57 47 00  	srli	a4, a4, 4
80001f34: 33 07 27 03  	mul	a4, a4, s2
80001f38: 33 07 e8 40  	sub	a4, a6, a4
80001f3c: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001f40: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001f44: 27 b4 46 fa  	fsd	ft4, -88(a3)
80001f48: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001f4c: 27 b8 46 fa  	fsd	ft4, -80(a3)
80001f50: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001f54: 27 bc 46 fa  	fsd	ft4, -72(a3)
80001f58: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001f5c: 27 b0 46 fc  	fsd	ft4, -64(a3)
80001f60: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001f64: 27 b4 46 fc  	fsd	ft4, -56(a3)
80001f68: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001f6c: 27 b8 46 fc  	fsd	ft4, -48(a3)
80001f70: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001f74: 27 bc 46 fc  	fsd	ft4, -40(a3)
80001f78: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001f7c: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001f80: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001f84: 27 b4 46 fe  	fsd	ft4, -24(a3)
80001f88: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001f8c: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001f90: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001f94: 27 bc 46 fe  	fsd	ft4, -8(a3)
80001f98: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001f9c: 27 b0 46 00  	fsd	ft4, 0(a3)
80001fa0: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001fa4: 27 b4 46 00  	fsd	ft4, 8(a3)
80001fa8: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001fac: 27 b8 46 00  	fsd	ft4, 16(a3)
80001fb0: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001fb4: 27 bc 46 00  	fsd	ft4, 24(a3)
80001fb8: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001fbc: 27 b0 46 02  	fsd	ft4, 32(a3)
80001fc0: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001fc4: 27 b4 46 02  	fsd	ft4, 40(a3)
80001fc8: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001fcc: 27 b8 46 02  	fsd	ft4, 48(a3)
80001fd0: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001fd4: 27 b0 46 04  	fsd	ft4, 64(a3)
80001fd8: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001fdc: 27 b4 46 04  	fsd	ft4, 72(a3)
80001fe0: 03 27 41 04  	lw	a4, 68(sp)
80001fe4: 23 ae e6 02  	sw	a4, 60(a3)
80001fe8: 03 27 01 04  	lw	a4, 64(sp)
80001fec: 23 ac e6 02  	sw	a4, 56(a3)
80001ff0: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001ff4: 27 b8 46 04  	fsd	ft4, 80(a3)
;   for (i = 0; i < nm; i++)
80001ff8: 93 8b 2b 00  	addi	s7, s7, 2
80001ffc: 93 82 32 00  	addi	t0, t0, 3
80002000: 13 08 78 01  	addi	a6, a6, 23
80002004: 13 0c 4c 00  	addi	s8, s8, 4
80002008: 93 84 44 00  	addi	s1, s1, 4
8000200c: 13 0e 6e 01  	addi	t3, t3, 22
80002010: 93 85 55 00  	addi	a1, a1, 5
80002014: 13 06 56 00  	addi	a2, a2, 5
80002018: 93 88 58 01  	addi	a7, a7, 21
8000201c: 13 0f 6f 00  	addi	t5, t5, 6
80002020: 93 83 73 00  	addi	t2, t2, 7
80002024: 13 03 33 01  	addi	t1, t1, 19
80002028: 93 80 80 00  	addi	ra, ra, 8
8000202c: 93 8e 2e 01  	addi	t4, t4, 18
80002030: 93 8d 9d 00  	addi	s11, s11, 9
80002034: 13 0d 1d 01  	addi	s10, s10, 17
80002038: 13 05 a5 00  	addi	a0, a0, 10
8000203c: 13 04 a4 00  	addi	s0, s0, 10
80002040: 93 8c 0c 01  	addi	s9, s9, 16
80002044: 13 0b bb 00  	addi	s6, s6, 11
80002048: 93 8a fa 00  	addi	s5, s5, 15
8000204c: 13 0a ca 00  	addi	s4, s4, 12
80002050: 93 89 e9 00  	addi	s3, s3, 14
80002054: 93 86 06 0b  	addi	a3, a3, 176
80002058: 93 8f df 00  	addi	t6, t6, 13
8000205c: 13 07 20 03  	addi	a4, zero, 50
80002060: e3 9e eb d0  	bne	s7, a4, 0x80001d7c <.LBB0_104+0x3a8>
80002064: 83 24 41 02  	lw	s1, 36(sp)
80002068: 03 27 c1 02  	lw	a4, 44(sp)
;  for (i = 0; i < ni; i++)
8000206c: 33 05 97 00  	add	a0, a4, s1
80002070: 93 02 85 f9  	addi	t0, a0, -104
80002074: 83 20 81 03  	lw	ra, 56(sp)
80002078: 33 b5 12 00  	sltu	a0, t0, ra
8000207c: 83 25 c1 00  	lw	a1, 12(sp)
80002080: b3 b5 95 00  	sltu	a1, a1, s1
80002084: 33 65 b5 00  	or	a0, a0, a1
80002088: 83 2d 01 03  	lw	s11, 48(sp)
8000208c: b3 b5 b2 01  	sltu	a1, t0, s11
80002090: 03 26 c1 01  	lw	a2, 28(sp)
80002094: 33 36 96 00  	sltu	a2, a2, s1
80002098: b3 e5 c5 00  	or	a1, a1, a2
8000209c: b3 f5 a5 00  	and	a1, a1, a0
800020a0: 13 d5 44 01  	srli	a0, s1, 20
800020a4: 33 36 a0 00  	snez	a2, a0
800020a8: 37 05 12 00  	lui	a0, 288
800020ac: 13 05 15 00  	addi	a0, a0, 1
800020b0: b3 b6 a2 00  	sltu	a3, t0, a0
800020b4: 33 76 d6 00  	and	a2, a2, a3
800020b8: 23 2e c1 00  	sw	a2, 28(sp)
800020bc: b3 75 b6 00  	and	a1, a2, a1
800020c0: 03 26 01 02  	lw	a2, 32(sp)
800020c4: b3 75 b6 00  	and	a1, a2, a1
800020c8: 03 26 41 01  	lw	a2, 20(sp)
800020cc: b3 75 b6 00  	and	a1, a2, a1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800020d0: 73 26 00 b0  	csrr	a2, mcycle
800020d4: 23 20 c1 02  	sw	a2, 32(sp)
800020d8: 23 20 51 00  	sw	t0, 0(sp)
800020dc: 63 86 05 14  	beqz	a1, 0x80002228 <.LBB0_104+0x854>
800020e0: 13 05 00 00  	mv	a0, zero
800020e4: 93 05 80 00  	addi	a1, zero, 8
800020e8: 13 06 10 01  	addi	a2, zero, 17
;  for (i = 0; i < ni; i++)
800020ec: 93 06 00 04  	addi	a3, zero, 64
800020f0: 13 07 00 0c  	addi	a4, zero, 192
800020f4: ab 20 d6 00  	scfgw	a2, a3
800020f8: ab a0 e5 00  	scfgw	a1, a4
800020fc: 93 06 f0 00  	addi	a3, zero, 15
80002100: 13 07 00 06  	addi	a4, zero, 96
80002104: 93 07 00 0e  	addi	a5, zero, 224
80002108: ab a0 e6 00  	scfgw	a3, a4
8000210c: ab a0 f5 00  	scfgw	a1, a5
80002110: 13 07 00 02  	addi	a4, zero, 32
80002114: ab 20 e0 00  	scfgw	zero, a4
80002118: 2b a0 04 3a  	scfgwi	s1, 928
8000211c: 13 07 30 01  	addi	a4, zero, 19
80002120: 93 07 10 00  	addi	a5, zero, 1
80002124: 93 84 07 04  	addi	s1, a5, 64
80002128: 13 84 07 0c  	addi	s0, a5, 192
8000212c: ab 20 97 00  	scfgw	a4, s1
80002130: ab a0 85 00  	scfgw	a1, s0
80002134: 93 04 80 f6  	addi	s1, zero, -152
80002138: 13 84 07 06  	addi	s0, a5, 96
8000213c: ab 20 86 00  	scfgw	a2, s0
80002140: 13 84 07 0e  	addi	s0, a5, 224
80002144: ab a0 84 00  	scfgw	s1, s0
80002148: 93 84 07 08  	addi	s1, a5, 128
8000214c: 13 84 07 10  	addi	s0, a5, 256
80002150: ab a0 96 00  	scfgw	a3, s1
80002154: ab a0 85 00  	scfgw	a1, s0
80002158: 93 85 07 02  	addi	a1, a5, 32
8000215c: ab 20 b0 00  	scfgw	zero, a1
80002160: 2b a0 1d 34  	scfgwi	s11, 833
80002164: 93 05 00 09  	addi	a1, zero, 144
80002168: 93 07 20 00  	addi	a5, zero, 2
8000216c: 93 84 07 04  	addi	s1, a5, 64
80002170: 13 84 07 0c  	addi	s0, a5, 192
80002174: ab 20 97 00  	scfgw	a4, s1
80002178: ab a0 85 00  	scfgw	a1, s0
8000217c: b7 f5 ff ff  	lui	a1, 1048575
80002180: 13 87 85 55  	addi	a4, a1, 1368
80002184: 93 84 07 06  	addi	s1, a5, 96
80002188: 13 84 07 0e  	addi	s0, a5, 224
8000218c: ab 20 96 00  	scfgw	a2, s1
80002190: ab 20 87 00  	scfgw	a4, s0
80002194: 93 85 85 4c  	addi	a1, a1, 1224
80002198: 13 86 07 08  	addi	a2, a5, 128
8000219c: 13 87 07 10  	addi	a4, a5, 256
800021a0: ab a0 c6 00  	scfgw	a3, a2
800021a4: ab a0 e5 00  	scfgw	a1, a4
800021a8: 93 85 07 02  	addi	a1, a5, 32
800021ac: ab 20 b0 00  	scfgw	zero, a1
800021b0: 2b a0 20 34  	scfgwi	ra, 834
800021b4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800021b8: 93 05 00 01  	addi	a1, zero, 16
800021bc: 13 06 20 01  	addi	a2, zero, 18
;         x += A[i][k] * B[k][j];
800021c0: d3 71 11 12  	fmul.d	ft3, ft2, ft1
800021c4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021c8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021cc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021d0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021d4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021d8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021dc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021e0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021e4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021e8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021ec: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021f0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021f4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021f8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021fc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002200: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002204: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002208: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000220c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       E[i][j] = x;
80002210: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nj; j++)
80002214: 13 06 f6 ff  	addi	a2, a2, -1
80002218: e3 14 06 fa  	bnez	a2, 0x800021c0 <.LBB0_104+0x7ec>
;  for (i = 0; i < ni; i++)
8000221c: 13 05 15 00  	addi	a0, a0, 1
80002220: e3 1e b5 f8  	bne	a0, a1, 0x800021bc <.LBB0_104+0x7e8>
80002224: 6f 00 40 2a  	j	0x800024c8 <.LBB0_104+0xaf4>
80002228: 93 83 8d 07  	addi	t2, s11, 120
8000222c: b3 85 e3 00  	add	a1, t2, a4
80002230: 93 88 00 5a  	addi	a7, ra, 1440
80002234: 93 87 80 62  	addi	a5, ra, 1576
80002238: 13 83 8d 05  	addi	t1, s11, 88
8000223c: 33 08 e3 00  	add	a6, t1, a4
80002240: 33 b4 95 00  	sltu	s0, a1, s1
80002244: 33 b6 72 00  	sltu	a2, t0, t2
80002248: 33 66 86 00  	or	a2, a2, s0
8000224c: 33 b4 97 00  	sltu	s0, a5, s1
80002250: b3 b6 12 01  	sltu	a3, t0, a7
80002254: b3 e6 86 00  	or	a3, a3, s0
80002258: 33 34 98 00  	sltu	s0, a6, s1
8000225c: 33 b7 62 00  	sltu	a4, t0, t1
80002260: 33 67 87 00  	or	a4, a4, s0
80002264: 33 76 d6 00  	and	a2, a2, a3
80002268: 33 76 c7 00  	and	a2, a4, a2
8000226c: 93 d6 43 01  	srli	a3, t2, 20
80002270: b3 36 d0 00  	snez	a3, a3
80002274: b3 b5 a5 00  	sltu	a1, a1, a0
80002278: b3 f5 b6 00  	and	a1, a3, a1
8000227c: b3 f5 c5 00  	and	a1, a1, a2
80002280: 13 d6 48 01  	srli	a2, a7, 20
80002284: 33 36 c0 00  	snez	a2, a2
80002288: b3 b6 a7 00  	sltu	a3, a5, a0
8000228c: 33 76 d6 00  	and	a2, a2, a3
80002290: b3 75 b6 00  	and	a1, a2, a1
80002294: 13 56 43 01  	srli	a2, t1, 20
80002298: 33 36 c0 00  	snez	a2, a2
8000229c: 33 35 a8 00  	sltu	a0, a6, a0
800022a0: 33 75 a6 00  	and	a0, a2, a0
800022a4: 93 02 00 00  	mv	t0, zero
800022a8: 33 75 b5 00  	and	a0, a0, a1
800022ac: 63 02 05 22  	beqz	a0, 0x800024d0 <.LBB0_104+0xafc>
800022b0: 13 05 10 01  	addi	a0, zero, 17
;  for (i = 0; i < ni; i++)
800022b4: 93 05 00 04  	addi	a1, zero, 64
800022b8: 13 06 00 0c  	addi	a2, zero, 192
800022bc: ab 20 b5 00  	scfgw	a0, a1
800022c0: ab 20 c0 00  	scfgw	zero, a2
800022c4: 13 08 00 0a  	addi	a6, zero, 160
800022c8: 93 05 f0 00  	addi	a1, zero, 15
800022cc: 13 06 00 06  	addi	a2, zero, 96
800022d0: 93 06 00 0e  	addi	a3, zero, 224
800022d4: ab a0 c5 00  	scfgw	a1, a2
800022d8: ab 20 d8 00  	scfgw	a6, a3
800022dc: 13 06 00 02  	addi	a2, zero, 32
800022e0: ab 20 c0 00  	scfgw	zero, a2
800022e4: 2b a0 03 32  	scfgwi	t2, 800
800022e8: 13 06 80 00  	addi	a2, zero, 8
800022ec: 93 06 10 00  	addi	a3, zero, 1
800022f0: 13 87 06 04  	addi	a4, a3, 64
800022f4: ab 20 e5 00  	scfgw	a0, a4
800022f8: 13 87 06 0c  	addi	a4, a3, 192
800022fc: ab 20 e6 00  	scfgw	a2, a4
80002300: 13 06 80 f7  	addi	a2, zero, -136
80002304: 13 87 06 06  	addi	a4, a3, 96
80002308: ab a0 e5 00  	scfgw	a1, a4
8000230c: 13 87 06 0e  	addi	a4, a3, 224
80002310: ab 20 e6 00  	scfgw	a2, a4
80002314: 13 86 06 02  	addi	a2, a3, 32
80002318: ab 20 c0 00  	scfgw	zero, a2
8000231c: 2b a0 18 32  	scfgwi	a7, 801
80002320: 13 06 20 00  	addi	a2, zero, 2
80002324: 93 06 06 04  	addi	a3, a2, 64
80002328: 13 07 06 0c  	addi	a4, a2, 192
8000232c: ab 20 d5 00  	scfgw	a0, a3
80002330: ab 20 e0 00  	scfgw	zero, a4
80002334: 13 05 06 06  	addi	a0, a2, 96
80002338: 93 06 06 0e  	addi	a3, a2, 224
8000233c: ab a0 a5 00  	scfgw	a1, a0
80002340: ab 20 d8 00  	scfgw	a6, a3
80002344: 13 05 06 02  	addi	a0, a2, 32
80002348: ab 20 a0 00  	scfgw	zero, a0
8000234c: 2b 20 23 32  	scfgwi	t1, 802
80002350: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002354: 13 03 00 09  	addi	t1, zero, 144
80002358: 93 08 00 01  	addi	a7, zero, 16
8000235c: 93 83 04 00  	mv	t2, s1
80002360: 13 06 00 00  	mv	a2, zero
;         x += A[i][k] * B[k][j];
80002364: 33 85 02 03  	mul	a0, t0, a6
80002368: b3 84 ad 00  	add	s1, s11, a0
8000236c: 13 8e 84 00  	addi	t3, s1, 8
80002370: 93 8e 04 01  	addi	t4, s1, 16
80002374: 13 8f 84 01  	addi	t5, s1, 24
80002378: 93 8f 04 02  	addi	t6, s1, 32
8000237c: 13 89 84 02  	addi	s2, s1, 40
80002380: 93 89 04 03  	addi	s3, s1, 48
80002384: 13 8a 84 03  	addi	s4, s1, 56
80002388: 93 8a 04 04  	addi	s5, s1, 64
8000238c: 13 8b 84 04  	addi	s6, s1, 72
80002390: 93 8b 04 05  	addi	s7, s1, 80
80002394: 13 8c 04 06  	addi	s8, s1, 96
80002398: 93 8c 84 06  	addi	s9, s1, 104
8000239c: 13 8d 04 07  	addi	s10, s1, 112
800023a0: 93 85 04 08  	addi	a1, s1, 128
800023a4: 13 87 84 08  	addi	a4, s1, 136
800023a8: 13 85 04 09  	addi	a0, s1, 144
800023ac: 93 86 84 09  	addi	a3, s1, 152
800023b0: 87 b1 04 00  	fld	ft3, 0(s1)
800023b4: b3 87 c0 00  	add	a5, ra, a2
800023b8: 07 b2 07 00  	fld	ft4, 0(a5)
800023bc: 87 32 0e 00  	fld	ft5, 0(t3)
800023c0: 07 b3 07 09  	fld	ft6, 144(a5)
800023c4: 87 b3 0e 00  	fld	ft7, 0(t4)
800023c8: 07 b5 07 12  	fld	fa0, 288(a5)
800023cc: 87 35 0f 00  	fld	fa1, 0(t5)
800023d0: 07 b6 07 1b  	fld	fa2, 432(a5)
800023d4: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800023d8: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
800023dc: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
800023e0: c3 71 b6 1a  	fmadd.d	ft3, fa2, fa1, ft3
800023e4: 07 b2 0f 00  	fld	ft4, 0(t6)
800023e8: 87 b2 07 24  	fld	ft5, 576(a5)
800023ec: 07 33 09 00  	fld	ft6, 0(s2)
800023f0: 87 b3 07 2d  	fld	ft7, 720(a5)
800023f4: 07 b5 09 00  	fld	fa0, 0(s3)
800023f8: 87 b5 07 36  	fld	fa1, 864(a5)
800023fc: 07 36 0a 00  	fld	fa2, 0(s4)
80002400: 87 b6 07 3f  	fld	fa3, 1008(a5)
80002404: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002408: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
8000240c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002410: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002414: 07 b2 0a 00  	fld	ft4, 0(s5)
80002418: 87 b2 07 48  	fld	ft5, 1152(a5)
8000241c: 07 33 0b 00  	fld	ft6, 0(s6)
80002420: 87 b3 07 51  	fld	ft7, 1296(a5)
80002424: 07 b5 0b 00  	fld	fa0, 0(s7)
80002428: 87 b6 07 63  	fld	fa3, 1584(a5)
8000242c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002430: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002434: c3 f1 a0 1a  	fmadd.d	ft3, ft1, fa0, ft3
80002438: c3 f1 26 1a  	fmadd.d	ft3, fa3, ft2, ft3
8000243c: 07 32 0c 00  	fld	ft4, 0(s8)
80002440: 87 b2 07 6c  	fld	ft5, 1728(a5)
80002444: 07 b3 0c 00  	fld	ft6, 0(s9)
80002448: 87 b3 07 75  	fld	ft7, 1872(a5)
8000244c: 07 35 0d 00  	fld	fa0, 0(s10)
80002450: 87 b5 07 7e  	fld	fa1, 2016(a5)
80002454: 13 84 87 43  	addi	s0, a5, 1080
80002458: 87 36 84 43  	fld	fa3, 1080(s0)
8000245c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002460: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002464: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002468: c3 f1 06 1a  	fmadd.d	ft3, fa3, ft0, ft3
8000246c: 07 b2 05 00  	fld	ft4, 0(a1)
80002470: 13 84 07 48  	addi	s0, a5, 1152
80002474: 87 32 04 48  	fld	ft5, 1152(s0)
80002478: 07 33 07 00  	fld	ft6, 0(a4)
8000247c: 13 84 87 4c  	addi	s0, a5, 1224
80002480: 87 33 84 4c  	fld	ft7, 1224(s0)
80002484: 07 35 05 00  	fld	fa0, 0(a0)
80002488: 13 84 07 51  	addi	s0, a5, 1296
8000248c: 87 35 04 51  	fld	fa1, 1296(s0)
80002490: 07 b6 06 00  	fld	fa2, 0(a3)
80002494: 93 87 87 55  	addi	a5, a5, 1368
80002498: 87 b6 87 55  	fld	fa3, 1368(a5)
8000249c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024a0: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800024a4: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800024a8: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       E[i][j] = x;
800024ac: b3 87 c3 00  	add	a5, t2, a2
;     for (j = 0; j < nj; j++)
800024b0: 13 06 86 00  	addi	a2, a2, 8
;       E[i][j] = x;
800024b4: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nj; j++)
800024b8: e3 1c 66 ee  	bne	a2, t1, 0x800023b0 <.LBB0_104+0x9dc>
;  for (i = 0; i < ni; i++)
800024bc: 93 82 12 00  	addi	t0, t0, 1
800024c0: 93 83 03 09  	addi	t2, t2, 144
800024c4: e3 9e 12 e9  	bne	t0, a7, 0x80002360 <.LBB0_104+0x98c>
800024c8: 73 f5 00 7c  	csrrci	a0, 1984, 1
800024cc: 6f 00 80 19  	j	0x80002664 <.LBB0_104+0xc90>
800024d0: 13 03 00 09  	addi	t1, zero, 144
800024d4: 93 08 00 01  	addi	a7, zero, 16
800024d8: 93 83 04 00  	mv	t2, s1
800024dc: 03 28 81 03  	lw	a6, 56(sp)
800024e0: 93 07 00 00  	mv	a5, zero
;         x += A[i][k] * B[k][j];
800024e4: 13 05 00 0a  	addi	a0, zero, 160
800024e8: 33 85 a2 02  	mul	a0, t0, a0
800024ec: b3 84 ad 00  	add	s1, s11, a0
800024f0: 13 8e 84 00  	addi	t3, s1, 8
800024f4: 93 8e 04 01  	addi	t4, s1, 16
800024f8: 13 8f 84 01  	addi	t5, s1, 24
800024fc: 93 8f 04 02  	addi	t6, s1, 32
80002500: 13 89 84 02  	addi	s2, s1, 40
80002504: 93 89 04 03  	addi	s3, s1, 48
80002508: 13 8a 84 03  	addi	s4, s1, 56
8000250c: 93 8a 04 04  	addi	s5, s1, 64
80002510: 13 8b 84 04  	addi	s6, s1, 72
80002514: 93 8b 04 05  	addi	s7, s1, 80
80002518: 13 8c 84 05  	addi	s8, s1, 88
8000251c: 93 8c 04 06  	addi	s9, s1, 96
80002520: 13 8d 84 06  	addi	s10, s1, 104
80002524: 93 8d 04 07  	addi	s11, s1, 112
80002528: 93 80 84 07  	addi	ra, s1, 120
8000252c: 13 85 04 08  	addi	a0, s1, 128
80002530: 13 86 84 08  	addi	a2, s1, 136
80002534: 13 87 04 09  	addi	a4, s1, 144
80002538: 13 84 84 09  	addi	s0, s1, 152
8000253c: 87 b1 04 00  	fld	ft3, 0(s1)
80002540: b3 05 f8 00  	add	a1, a6, a5
80002544: 07 b2 05 00  	fld	ft4, 0(a1)
80002548: 87 32 0e 00  	fld	ft5, 0(t3)
8000254c: 07 b3 05 09  	fld	ft6, 144(a1)
80002550: 87 b3 0e 00  	fld	ft7, 0(t4)
80002554: 07 b5 05 12  	fld	fa0, 288(a1)
80002558: 87 35 0f 00  	fld	fa1, 0(t5)
8000255c: 07 b6 05 1b  	fld	fa2, 432(a1)
80002560: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80002564: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002568: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
8000256c: c3 71 b6 1a  	fmadd.d	ft3, fa2, fa1, ft3
80002570: 07 b2 0f 00  	fld	ft4, 0(t6)
80002574: 87 b2 05 24  	fld	ft5, 576(a1)
80002578: 07 33 09 00  	fld	ft6, 0(s2)
8000257c: 87 b3 05 2d  	fld	ft7, 720(a1)
80002580: 07 b5 09 00  	fld	fa0, 0(s3)
80002584: 87 b5 05 36  	fld	fa1, 864(a1)
80002588: 07 36 0a 00  	fld	fa2, 0(s4)
8000258c: 87 b6 05 3f  	fld	fa3, 1008(a1)
80002590: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002594: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002598: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
8000259c: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
800025a0: 07 b2 0a 00  	fld	ft4, 0(s5)
800025a4: 87 b2 05 48  	fld	ft5, 1152(a1)
800025a8: 07 33 0b 00  	fld	ft6, 0(s6)
800025ac: 87 b3 05 51  	fld	ft7, 1296(a1)
800025b0: 07 b5 0b 00  	fld	fa0, 0(s7)
800025b4: 87 b5 05 5a  	fld	fa1, 1440(a1)
800025b8: 07 36 0c 00  	fld	fa2, 0(s8)
800025bc: 87 b6 05 63  	fld	fa3, 1584(a1)
800025c0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800025c4: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800025c8: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800025cc: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
800025d0: 07 b2 0c 00  	fld	ft4, 0(s9)
800025d4: 87 b2 05 6c  	fld	ft5, 1728(a1)
800025d8: 07 33 0d 00  	fld	ft6, 0(s10)
800025dc: 87 b3 05 75  	fld	ft7, 1872(a1)
800025e0: 07 b5 0d 00  	fld	fa0, 0(s11)
800025e4: 87 b5 05 7e  	fld	fa1, 2016(a1)
800025e8: 07 b6 00 00  	fld	fa2, 0(ra)
800025ec: 93 86 85 43  	addi	a3, a1, 1080
800025f0: 87 b6 86 43  	fld	fa3, 1080(a3)
800025f4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800025f8: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800025fc: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002600: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002604: 07 32 05 00  	fld	ft4, 0(a0)
80002608: 93 86 05 48  	addi	a3, a1, 1152
8000260c: 87 b2 06 48  	fld	ft5, 1152(a3)
80002610: 07 33 06 00  	fld	ft6, 0(a2)
80002614: 93 86 85 4c  	addi	a3, a1, 1224
80002618: 87 b3 86 4c  	fld	ft7, 1224(a3)
8000261c: 07 35 07 00  	fld	fa0, 0(a4)
80002620: 93 86 05 51  	addi	a3, a1, 1296
80002624: 87 b5 06 51  	fld	fa1, 1296(a3)
80002628: 07 36 04 00  	fld	fa2, 0(s0)
8000262c: 93 85 85 55  	addi	a1, a1, 1368
80002630: 87 b6 85 55  	fld	fa3, 1368(a1)
80002634: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002638: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
8000263c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002640: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       E[i][j] = x;
80002644: b3 85 f3 00  	add	a1, t2, a5
;     for (j = 0; j < nj; j++)
80002648: 93 87 87 00  	addi	a5, a5, 8
;       E[i][j] = x;
8000264c: 27 b0 35 00  	fsd	ft3, 0(a1)
;     for (j = 0; j < nj; j++)
80002650: e3 96 67 ee  	bne	a5, t1, 0x8000253c <.LBB0_104+0xb68>
;  for (i = 0; i < ni; i++)
80002654: 93 82 12 00  	addi	t0, t0, 1
80002658: 93 83 03 09  	addi	t2, t2, 144
8000265c: 83 2d 01 03  	lw	s11, 48(sp)
80002660: e3 90 12 e9  	bne	t0, a7, 0x800024e0 <.LBB0_104+0xb0c>
80002664: 03 2e 41 03  	lw	t3, 52(sp)
80002668: 03 27 c1 02  	lw	a4, 44(sp)
;   for (i = 0; i < nj; i++)
8000266c: 33 05 c7 01  	add	a0, a4, t3
80002670: 93 03 85 2f  	addi	t2, a0, 760
80002674: 03 23 c1 04  	lw	t1, 76(sp)
80002678: 33 b5 63 00  	sltu	a0, t2, t1
8000267c: 83 25 41 00  	lw	a1, 4(sp)
80002680: b3 b5 c5 01  	sltu	a1, a1, t3
80002684: 33 65 b5 00  	or	a0, a0, a1
80002688: 03 2f c1 03  	lw	t5, 60(sp)
8000268c: b3 b5 e3 01  	sltu	a1, t2, t5
80002690: 03 26 01 01  	lw	a2, 16(sp)
80002694: 33 36 c6 01  	sltu	a2, a2, t3
80002698: b3 e5 c5 00  	or	a1, a1, a2
8000269c: b3 f5 a5 00  	and	a1, a1, a0
800026a0: 13 55 4e 01  	srli	a0, t3, 20
800026a4: 33 36 a0 00  	snez	a2, a0
800026a8: 37 05 12 00  	lui	a0, 288
800026ac: 13 05 15 00  	addi	a0, a0, 1
800026b0: b3 b6 a3 00  	sltu	a3, t2, a0
800026b4: 33 76 d6 00  	and	a2, a2, a3
800026b8: 23 2a c1 00  	sw	a2, 20(sp)
800026bc: b3 75 b6 00  	and	a1, a2, a1
800026c0: 03 26 81 01  	lw	a2, 24(sp)
800026c4: b3 75 b6 00  	and	a1, a2, a1
800026c8: 03 26 81 00  	lw	a2, 8(sp)
800026cc: b3 75 b6 00  	and	a1, a2, a1
800026d0: 23 26 71 00  	sw	t2, 12(sp)
800026d4: 63 8e 05 14  	beqz	a1, 0x80002830 <.LBB0_104+0xe5c>
800026d8: 13 05 00 00  	mv	a0, zero
800026dc: 93 05 80 00  	addi	a1, zero, 8
800026e0: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < nj; i++)
800026e4: 93 06 00 04  	addi	a3, zero, 64
800026e8: 13 07 00 0c  	addi	a4, zero, 192
800026ec: ab 20 d6 00  	scfgw	a2, a3
800026f0: ab a0 e5 00  	scfgw	a1, a4
800026f4: 93 06 10 01  	addi	a3, zero, 17
800026f8: 13 07 00 06  	addi	a4, zero, 96
800026fc: 93 07 00 0e  	addi	a5, zero, 224
80002700: ab a0 e6 00  	scfgw	a3, a4
80002704: ab a0 f5 00  	scfgw	a1, a5
80002708: 13 07 00 02  	addi	a4, zero, 32
8000270c: ab 20 e0 00  	scfgw	zero, a4
80002710: 2b 20 0e 3a  	scfgwi	t3, 928
80002714: 13 08 70 01  	addi	a6, zero, 23
80002718: 93 07 10 00  	addi	a5, zero, 1
8000271c: 13 87 07 04  	addi	a4, a5, 64
80002720: 13 84 07 0c  	addi	s0, a5, 192
80002724: ab 20 e8 00  	scfgw	a6, a4
80002728: ab a0 85 00  	scfgw	a1, s0
8000272c: 13 07 80 f4  	addi	a4, zero, -184
80002730: 13 84 07 06  	addi	s0, a5, 96
80002734: ab 20 86 00  	scfgw	a2, s0
80002738: 13 84 07 0e  	addi	s0, a5, 224
8000273c: ab 20 87 00  	scfgw	a4, s0
80002740: 13 87 07 08  	addi	a4, a5, 128
80002744: 13 84 07 10  	addi	s0, a5, 256
80002748: ab a0 e6 00  	scfgw	a3, a4
8000274c: ab a0 85 00  	scfgw	a1, s0
80002750: 93 85 07 02  	addi	a1, a5, 32
80002754: ab 20 b0 00  	scfgw	zero, a1
80002758: 2b 20 1f 34  	scfgwi	t5, 833
8000275c: 93 05 00 0b  	addi	a1, zero, 176
80002760: 93 07 20 00  	addi	a5, zero, 2
80002764: 93 84 07 04  	addi	s1, a5, 64
80002768: 13 84 07 0c  	addi	s0, a5, 192
8000276c: ab 20 98 00  	scfgw	a6, s1
80002770: ab a0 85 00  	scfgw	a1, s0
80002774: b7 f5 ff ff  	lui	a1, 1048575
80002778: 13 87 85 03  	addi	a4, a1, 56
8000277c: 93 84 07 06  	addi	s1, a5, 96
80002780: 13 84 07 0e  	addi	s0, a5, 224
80002784: ab 20 96 00  	scfgw	a2, s1
80002788: ab 20 87 00  	scfgw	a4, s0
8000278c: 93 85 85 f8  	addi	a1, a1, -120
80002790: 13 86 07 08  	addi	a2, a5, 128
80002794: 13 87 07 10  	addi	a4, a5, 256
80002798: ab a0 c6 00  	scfgw	a3, a2
8000279c: ab a0 e5 00  	scfgw	a1, a4
800027a0: 93 85 07 02  	addi	a1, a5, 32
800027a4: ab 20 b0 00  	scfgw	zero, a1
800027a8: 2b 20 23 34  	scfgwi	t1, 834
800027ac: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800027b0: 93 05 20 01  	addi	a1, zero, 18
800027b4: 13 06 60 01  	addi	a2, zero, 22
;         x += C[i][k] * D[k][j];
800027b8: d3 71 11 12  	fmul.d	ft3, ft2, ft1
800027bc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027c0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027c4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027c8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027cc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027d0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027d4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027d8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027dc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027e0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027e4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027e8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027ec: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027f0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027f4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027f8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800027fc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002800: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002804: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002808: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000280c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002810: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002814: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       F[i][j] = x;
80002818: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nl; j++)
8000281c: 13 06 f6 ff  	addi	a2, a2, -1
80002820: e3 1c 06 f8  	bnez	a2, 0x800027b8 <.LBB0_104+0xde4>
;   for (i = 0; i < nj; i++)
80002824: 13 05 15 00  	addi	a0, a0, 1
80002828: e3 16 b5 f8  	bne	a0, a1, 0x800027b4 <.LBB0_104+0xde0>
8000282c: 6f 00 c0 2f  	j	0x80002b28 <.LBB0_104+0x1154>
80002830: 93 08 0f 09  	addi	a7, t5, 144
80002834: 93 05 07 36  	addi	a1, a4, 864
80002838: b3 86 b8 00  	add	a3, a7, a1
8000283c: 13 07 03 42  	addi	a4, t1, 1056
80002840: 93 0e 07 42  	addi	t4, a4, 1056
80002844: 13 07 43 47  	addi	a4, t1, 1140
80002848: 93 07 47 47  	addi	a5, a4, 1140
8000284c: 13 08 8f 06  	addi	a6, t5, 104
80002850: b3 02 b8 00  	add	t0, a6, a1
80002854: 33 b6 c6 01  	sltu	a2, a3, t3
80002858: 33 b4 13 01  	sltu	s0, t2, a7
8000285c: b3 65 c4 00  	or	a1, s0, a2
80002860: 33 b4 c7 01  	sltu	s0, a5, t3
80002864: 33 b7 d3 01  	sltu	a4, t2, t4
80002868: 33 67 87 00  	or	a4, a4, s0
8000286c: 33 b4 c2 01  	sltu	s0, t0, t3
80002870: 33 b6 03 01  	sltu	a2, t2, a6
80002874: 33 66 86 00  	or	a2, a2, s0
80002878: 33 f7 e5 00  	and	a4, a1, a4
8000287c: 33 76 e6 00  	and	a2, a2, a4
80002880: 13 d7 48 01  	srli	a4, a7, 20
80002884: 33 37 e0 00  	snez	a4, a4
80002888: b3 b6 a6 00  	sltu	a3, a3, a0
8000288c: b3 76 d7 00  	and	a3, a4, a3
80002890: 33 f6 c6 00  	and	a2, a3, a2
80002894: 93 d6 4e 01  	srli	a3, t4, 20
80002898: b3 36 d0 00  	snez	a3, a3
8000289c: 33 b7 a7 00  	sltu	a4, a5, a0
800028a0: b3 f6 e6 00  	and	a3, a3, a4
800028a4: 33 f6 c6 00  	and	a2, a3, a2
800028a8: 93 56 48 01  	srli	a3, a6, 20
800028ac: b3 36 d0 00  	snez	a3, a3
800028b0: 33 b5 a2 00  	sltu	a0, t0, a0
800028b4: 33 f5 a6 00  	and	a0, a3, a0
800028b8: 33 75 c5 00  	and	a0, a0, a2
800028bc: 63 0a 05 26  	beqz	a0, 0x80002b30 <.LBB0_104+0x115c>
800028c0: 93 07 00 00  	mv	a5, zero
800028c4: 13 05 50 01  	addi	a0, zero, 21
;   for (i = 0; i < nj; i++)
800028c8: 93 05 00 04  	addi	a1, zero, 64
800028cc: 13 06 00 0c  	addi	a2, zero, 192
800028d0: ab 20 b5 00  	scfgw	a0, a1
800028d4: ab 20 c0 00  	scfgw	zero, a2
800028d8: 13 04 00 0c  	addi	s0, zero, 192
800028dc: 93 05 10 01  	addi	a1, zero, 17
800028e0: 13 06 00 06  	addi	a2, zero, 96
800028e4: 93 06 00 0e  	addi	a3, zero, 224
800028e8: ab a0 c5 00  	scfgw	a1, a2
800028ec: ab 20 d4 00  	scfgw	s0, a3
800028f0: 13 06 00 02  	addi	a2, zero, 32
800028f4: ab 20 c0 00  	scfgw	zero, a2
800028f8: 2b a0 08 32  	scfgwi	a7, 800
800028fc: 13 06 80 00  	addi	a2, zero, 8
80002900: 93 06 10 00  	addi	a3, zero, 1
80002904: 13 87 06 04  	addi	a4, a3, 64
80002908: ab 20 e5 00  	scfgw	a0, a4
8000290c: 13 87 06 0c  	addi	a4, a3, 192
80002910: ab 20 e6 00  	scfgw	a2, a4
80002914: 13 06 80 f5  	addi	a2, zero, -168
80002918: 13 87 06 06  	addi	a4, a3, 96
8000291c: ab a0 e5 00  	scfgw	a1, a4
80002920: 13 87 06 0e  	addi	a4, a3, 224
80002924: ab 20 e6 00  	scfgw	a2, a4
80002928: 13 86 06 02  	addi	a2, a3, 32
8000292c: ab 20 c0 00  	scfgw	zero, a2
80002930: 2b a0 1e 32  	scfgwi	t4, 801
80002934: 13 06 20 00  	addi	a2, zero, 2
80002938: 93 06 06 04  	addi	a3, a2, 64
8000293c: 13 07 06 0c  	addi	a4, a2, 192
80002940: ab 20 d5 00  	scfgw	a0, a3
80002944: ab 20 e0 00  	scfgw	zero, a4
80002948: 13 05 06 06  	addi	a0, a2, 96
8000294c: 93 06 06 0e  	addi	a3, a2, 224
80002950: ab a0 a5 00  	scfgw	a1, a0
80002954: ab 20 d4 00  	scfgw	s0, a3
80002958: 13 05 06 02  	addi	a0, a2, 32
8000295c: ab 20 a0 00  	scfgw	zero, a0
80002960: 2b 20 28 32  	scfgwi	a6, 802
80002964: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002968: 13 05 83 47  	addi	a0, t1, 1144
8000296c: 13 09 85 47  	addi	s2, a0, 1144
80002970: 93 0f 00 0b  	addi	t6, zero, 176
80002974: 93 09 0e 00  	mv	s3, t3
80002978: 13 06 00 00  	mv	a2, zero
8000297c: 23 24 f1 04  	sw	a5, 72(sp)
;         x += C[i][k] * D[k][j];
80002980: 13 05 00 0c  	addi	a0, zero, 192
80002984: 33 85 a7 02  	mul	a0, a5, a0
80002988: 33 04 af 00  	add	s0, t5, a0
8000298c: 13 0a 84 00  	addi	s4, s0, 8
80002990: 93 0a 04 01  	addi	s5, s0, 16
80002994: 13 0b 84 01  	addi	s6, s0, 24
80002998: 93 0b 04 02  	addi	s7, s0, 32
8000299c: 13 0c 84 02  	addi	s8, s0, 40
800029a0: 93 0c 04 03  	addi	s9, s0, 48
800029a4: 13 0d 84 03  	addi	s10, s0, 56
800029a8: 93 0d 04 04  	addi	s11, s0, 64
800029ac: 93 00 84 04  	addi	ra, s0, 72
800029b0: 13 0f 04 05  	addi	t5, s0, 80
800029b4: 13 05 84 05  	addi	a0, s0, 88
800029b8: 93 07 04 06  	addi	a5, s0, 96
800029bc: 93 06 04 07  	addi	a3, s0, 112
800029c0: 93 04 84 07  	addi	s1, s0, 120
800029c4: 93 05 04 08  	addi	a1, s0, 128
800029c8: 13 08 84 08  	addi	a6, s0, 136
800029cc: 93 08 84 09  	addi	a7, s0, 152
800029d0: 93 02 04 0a  	addi	t0, s0, 160
800029d4: 13 03 84 0a  	addi	t1, s0, 168
800029d8: 93 03 04 0b  	addi	t2, s0, 176
800029dc: 13 0e 84 0b  	addi	t3, s0, 184
800029e0: 87 31 04 00  	fld	ft3, 0(s0)
800029e4: 03 27 c1 04  	lw	a4, 76(sp)
800029e8: b3 0e c7 00  	add	t4, a4, a2
800029ec: 07 b2 0e 00  	fld	ft4, 0(t4)
800029f0: 87 32 0a 00  	fld	ft5, 0(s4)
800029f4: 07 b3 0e 0b  	fld	ft6, 176(t4)
800029f8: 87 b3 0a 00  	fld	ft7, 0(s5)
800029fc: 07 b5 0e 16  	fld	fa0, 352(t4)
80002a00: 87 35 0b 00  	fld	fa1, 0(s6)
80002a04: 07 b6 0e 21  	fld	fa2, 528(t4)
80002a08: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80002a0c: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002a10: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002a14: c3 71 b6 1a  	fmadd.d	ft3, fa2, fa1, ft3
80002a18: 07 b2 0b 00  	fld	ft4, 0(s7)
80002a1c: 87 b2 0e 2c  	fld	ft5, 704(t4)
80002a20: 07 33 0c 00  	fld	ft6, 0(s8)
80002a24: 87 b3 0e 37  	fld	ft7, 880(t4)
80002a28: 07 b5 0c 00  	fld	fa0, 0(s9)
80002a2c: 87 b5 0e 42  	fld	fa1, 1056(t4)
80002a30: 07 36 0d 00  	fld	fa2, 0(s10)
80002a34: 87 b6 0e 4d  	fld	fa3, 1232(t4)
80002a38: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002a3c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002a40: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002a44: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002a48: 07 b2 0d 00  	fld	ft4, 0(s11)
80002a4c: 87 b2 0e 58  	fld	ft5, 1408(t4)
80002a50: 07 b3 00 00  	fld	ft6, 0(ra)
80002a54: 87 b3 0e 63  	fld	ft7, 1584(t4)
80002a58: 07 35 0f 00  	fld	fa0, 0(t5)
80002a5c: 87 b5 0e 6e  	fld	fa1, 1760(t4)
80002a60: 07 36 05 00  	fld	fa2, 0(a0)
80002a64: 87 b6 0e 79  	fld	fa3, 1936(t4)
80002a68: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002a6c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002a70: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002a74: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002a78: 07 b2 07 00  	fld	ft4, 0(a5)
80002a7c: 33 07 c9 00  	add	a4, s2, a2
80002a80: 87 33 07 00  	fld	ft7, 0(a4)
80002a84: 07 b5 06 00  	fld	fa0, 0(a3)
80002a88: 87 35 07 0b  	fld	fa1, 176(a4)
80002a8c: 07 b6 04 00  	fld	fa2, 0(s1)
80002a90: 87 36 07 16  	fld	fa3, 352(a4)
80002a94: c3 f1 40 1a  	fmadd.d	ft3, ft1, ft4, ft3
80002a98: c3 f1 23 1a  	fmadd.d	ft3, ft7, ft2, ft3
80002a9c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002aa0: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002aa4: 07 b2 05 00  	fld	ft4, 0(a1)
80002aa8: 87 32 07 21  	fld	ft5, 528(a4)
80002aac: 07 33 08 00  	fld	ft6, 0(a6)
80002ab0: 87 33 07 2c  	fld	ft7, 704(a4)
80002ab4: 87 35 07 37  	fld	fa1, 880(a4)
80002ab8: 07 b6 08 00  	fld	fa2, 0(a7)
80002abc: 87 36 07 42  	fld	fa3, 1056(a4)
80002ac0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002ac4: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002ac8: c3 f1 05 1a  	fmadd.d	ft3, fa1, ft0, ft3
80002acc: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002ad0: 07 b2 02 00  	fld	ft4, 0(t0)
80002ad4: 87 32 07 4d  	fld	ft5, 1232(a4)
80002ad8: 07 33 03 00  	fld	ft6, 0(t1)
80002adc: 87 33 07 58  	fld	ft7, 1408(a4)
80002ae0: 07 b5 03 00  	fld	fa0, 0(t2)
80002ae4: 87 35 07 63  	fld	fa1, 1584(a4)
80002ae8: 07 36 0e 00  	fld	fa2, 0(t3)
80002aec: 87 36 07 6e  	fld	fa3, 1760(a4)
80002af0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002af4: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002af8: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002afc: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       F[i][j] = x;
80002b00: 33 87 c9 00  	add	a4, s3, a2
;     for (j = 0; j < nl; j++)
80002b04: 13 06 86 00  	addi	a2, a2, 8
;       F[i][j] = x;
80002b08: 27 30 37 00  	fsd	ft3, 0(a4)
;     for (j = 0; j < nl; j++)
80002b0c: e3 1a f6 ed  	bne	a2, t6, 0x800029e0 <.LBB0_104+0x100c>
80002b10: 83 27 81 04  	lw	a5, 72(sp)
;   for (i = 0; i < nj; i++)
80002b14: 93 87 17 00  	addi	a5, a5, 1
80002b18: 93 89 09 0b  	addi	s3, s3, 176
80002b1c: 03 2f c1 03  	lw	t5, 60(sp)
80002b20: 13 05 20 01  	addi	a0, zero, 18
80002b24: e3 9a a7 e4  	bne	a5, a0, 0x80002978 <.LBB0_104+0xfa4>
80002b28: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002b2c: 6f 00 40 1f  	j	0x80002d20 <.LBB0_104+0x134c>
80002b30: 23 28 d1 03  	sw	t4, 48(sp)
80002b34: 13 05 00 00  	mv	a0, zero
80002b38: 93 04 0e 00  	mv	s1, t3
80002b3c: 03 2e c1 04  	lw	t3, 76(sp)
80002b40: 83 2e 01 03  	lw	t4, 48(sp)
80002b44: 13 07 00 0b  	addi	a4, zero, 176
80002b48: 13 06 00 00  	mv	a2, zero
80002b4c: 23 2c a1 02  	sw	a0, 56(sp)
;         x += C[i][k] * D[k][j];
80002b50: 93 05 00 0c  	addi	a1, zero, 192
80002b54: 33 05 b5 02  	mul	a0, a0, a1
80002b58: 33 04 af 00  	add	s0, t5, a0
80002b5c: 13 05 84 00  	addi	a0, s0, 8
80002b60: 23 24 a1 04  	sw	a0, 72(sp)
80002b64: 13 05 04 01  	addi	a0, s0, 16
80002b68: 23 22 a1 04  	sw	a0, 68(sp)
80002b6c: 13 05 84 01  	addi	a0, s0, 24
80002b70: 23 20 a1 04  	sw	a0, 64(sp)
80002b74: 13 09 04 02  	addi	s2, s0, 32
80002b78: 93 09 84 02  	addi	s3, s0, 40
80002b7c: 13 0a 04 03  	addi	s4, s0, 48
80002b80: 93 0a 84 03  	addi	s5, s0, 56
80002b84: 13 0b 04 04  	addi	s6, s0, 64
80002b88: 93 0b 84 04  	addi	s7, s0, 72
80002b8c: 13 0c 04 05  	addi	s8, s0, 80
80002b90: 93 0c 84 05  	addi	s9, s0, 88
80002b94: 13 0d 04 06  	addi	s10, s0, 96
80002b98: 93 0d 84 06  	addi	s11, s0, 104
80002b9c: 93 00 04 07  	addi	ra, s0, 112
80002ba0: 93 03 84 07  	addi	t2, s0, 120
80002ba4: 13 0f 04 08  	addi	t5, s0, 128
80002ba8: 13 05 84 08  	addi	a0, s0, 136
80002bac: 93 0f 04 09  	addi	t6, s0, 144
80002bb0: 93 06 84 09  	addi	a3, s0, 152
80002bb4: 93 07 04 0a  	addi	a5, s0, 160
80002bb8: 13 08 84 0a  	addi	a6, s0, 168
80002bbc: 93 08 04 0b  	addi	a7, s0, 176
80002bc0: 93 02 84 0b  	addi	t0, s0, 184
80002bc4: 87 31 04 00  	fld	ft3, 0(s0)
80002bc8: 33 03 ce 00  	add	t1, t3, a2
80002bcc: 07 32 03 00  	fld	ft4, 0(t1)
80002bd0: 83 25 81 04  	lw	a1, 72(sp)
80002bd4: 87 b2 05 00  	fld	ft5, 0(a1)
80002bd8: 07 33 03 0b  	fld	ft6, 176(t1)
80002bdc: 83 25 41 04  	lw	a1, 68(sp)
80002be0: 87 b3 05 00  	fld	ft7, 0(a1)
80002be4: 07 35 03 16  	fld	fa0, 352(t1)
80002be8: 83 25 01 04  	lw	a1, 64(sp)
80002bec: 87 b5 05 00  	fld	fa1, 0(a1)
80002bf0: 07 36 03 21  	fld	fa2, 528(t1)
80002bf4: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80002bf8: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002bfc: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002c00: c3 71 b6 1a  	fmadd.d	ft3, fa2, fa1, ft3
80002c04: 07 32 09 00  	fld	ft4, 0(s2)
80002c08: 87 32 03 2c  	fld	ft5, 704(t1)
80002c0c: 07 b3 09 00  	fld	ft6, 0(s3)
80002c10: 87 33 03 37  	fld	ft7, 880(t1)
80002c14: 07 35 0a 00  	fld	fa0, 0(s4)
80002c18: 87 35 03 42  	fld	fa1, 1056(t1)
80002c1c: 07 b6 0a 00  	fld	fa2, 0(s5)
80002c20: 87 36 03 4d  	fld	fa3, 1232(t1)
80002c24: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002c28: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002c2c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002c30: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002c34: 07 32 0b 00  	fld	ft4, 0(s6)
80002c38: 87 32 03 58  	fld	ft5, 1408(t1)
80002c3c: 07 b3 0b 00  	fld	ft6, 0(s7)
80002c40: 87 33 03 63  	fld	ft7, 1584(t1)
80002c44: 07 35 0c 00  	fld	fa0, 0(s8)
80002c48: 87 35 03 6e  	fld	fa1, 1760(t1)
80002c4c: 07 b6 0c 00  	fld	fa2, 0(s9)
80002c50: 87 36 03 79  	fld	fa3, 1936(t1)
80002c54: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002c58: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002c5c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002c60: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002c64: 07 32 0d 00  	fld	ft4, 0(s10)
80002c68: b3 85 ce 00  	add	a1, t4, a2
80002c6c: 87 b2 05 00  	fld	ft5, 0(a1)
80002c70: 07 b3 0d 00  	fld	ft6, 0(s11)
80002c74: 87 b3 05 0b  	fld	ft7, 176(a1)
80002c78: 07 b5 00 00  	fld	fa0, 0(ra)
80002c7c: 87 b5 05 16  	fld	fa1, 352(a1)
80002c80: 07 b6 03 00  	fld	fa2, 0(t2)
80002c84: 87 b6 05 21  	fld	fa3, 528(a1)
80002c88: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002c8c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002c90: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002c94: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002c98: 07 32 0f 00  	fld	ft4, 0(t5)
80002c9c: 87 b2 05 2c  	fld	ft5, 704(a1)
80002ca0: 07 33 05 00  	fld	ft6, 0(a0)
80002ca4: 87 b3 05 37  	fld	ft7, 880(a1)
80002ca8: 07 b5 0f 00  	fld	fa0, 0(t6)
80002cac: 87 b5 05 42  	fld	fa1, 1056(a1)
80002cb0: 07 b6 06 00  	fld	fa2, 0(a3)
80002cb4: 87 b6 05 4d  	fld	fa3, 1232(a1)
80002cb8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002cbc: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002cc0: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002cc4: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002cc8: 07 b2 07 00  	fld	ft4, 0(a5)
80002ccc: 87 b2 05 58  	fld	ft5, 1408(a1)
80002cd0: 07 33 08 00  	fld	ft6, 0(a6)
80002cd4: 87 b3 05 63  	fld	ft7, 1584(a1)
80002cd8: 07 b5 08 00  	fld	fa0, 0(a7)
80002cdc: 87 b5 05 6e  	fld	fa1, 1760(a1)
80002ce0: 07 b6 02 00  	fld	fa2, 0(t0)
80002ce4: 87 b6 05 79  	fld	fa3, 1936(a1)
80002ce8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002cec: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002cf0: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002cf4: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       F[i][j] = x;
80002cf8: b3 85 c4 00  	add	a1, s1, a2
;     for (j = 0; j < nl; j++)
80002cfc: 13 06 86 00  	addi	a2, a2, 8
;       F[i][j] = x;
80002d00: 27 b0 35 00  	fsd	ft3, 0(a1)
;     for (j = 0; j < nl; j++)
80002d04: e3 10 e6 ec  	bne	a2, a4, 0x80002bc4 <.LBB0_104+0x11f0>
80002d08: 03 25 81 03  	lw	a0, 56(sp)
;   for (i = 0; i < nj; i++)
80002d0c: 13 05 15 00  	addi	a0, a0, 1
80002d10: 93 84 04 0b  	addi	s1, s1, 176
80002d14: 03 2f c1 03  	lw	t5, 60(sp)
80002d18: 93 05 20 01  	addi	a1, zero, 18
80002d1c: e3 16 b5 e2  	bne	a0, a1, 0x80002b48 <.LBB0_104+0x1174>
80002d20: 83 23 81 02  	lw	t2, 40(sp)
80002d24: 03 24 c1 02  	lw	s0, 44(sp)
;   for (i = 0; i < ni; i++)
80002d28: 33 05 74 00  	add	a0, s0, t2
80002d2c: 13 07 85 19  	addi	a4, a0, 408
80002d30: 83 2d 41 03  	lw	s11, 52(sp)
80002d34: 33 35 b7 01  	sltu	a0, a4, s11
80002d38: 83 25 c1 00  	lw	a1, 12(sp)
80002d3c: b3 b5 75 00  	sltu	a1, a1, t2
80002d40: 33 e5 a5 00  	or	a0, a1, a0
80002d44: 83 20 41 02  	lw	ra, 36(sp)
80002d48: b3 35 17 00  	sltu	a1, a4, ra
80002d4c: 03 26 01 00  	lw	a2, 0(sp)
80002d50: 33 36 76 00  	sltu	a2, a2, t2
80002d54: b3 65 b6 00  	or	a1, a2, a1
80002d58: b3 75 b5 00  	and	a1, a0, a1
80002d5c: 13 d5 43 01  	srli	a0, t2, 20
80002d60: 33 36 a0 00  	snez	a2, a0
80002d64: 37 05 12 00  	lui	a0, 288
80002d68: 13 05 15 00  	addi	a0, a0, 1
80002d6c: b3 36 a7 00  	sltu	a3, a4, a0
80002d70: 33 76 d6 00  	and	a2, a2, a3
80002d74: 23 26 c1 04  	sw	a2, 76(sp)
80002d78: b3 75 b6 00  	and	a1, a2, a1
80002d7c: 03 26 c1 01  	lw	a2, 28(sp)
80002d80: b3 75 b6 00  	and	a1, a2, a1
80002d84: 03 26 41 01  	lw	a2, 20(sp)
80002d88: b3 75 b6 00  	and	a1, a2, a1
80002d8c: 63 82 05 14  	beqz	a1, 0x80002ed0 <.LBB0_104+0x14fc>
80002d90: 13 05 00 00  	mv	a0, zero
80002d94: 93 05 80 00  	addi	a1, zero, 8
80002d98: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++)
80002d9c: 93 06 00 04  	addi	a3, zero, 64
80002da0: 13 07 00 0c  	addi	a4, zero, 192
80002da4: ab 20 d6 00  	scfgw	a2, a3
80002da8: ab a0 e5 00  	scfgw	a1, a4
80002dac: 93 06 f0 00  	addi	a3, zero, 15
80002db0: 13 07 00 06  	addi	a4, zero, 96
80002db4: 93 07 00 0e  	addi	a5, zero, 224
80002db8: ab a0 e6 00  	scfgw	a3, a4
80002dbc: ab a0 f5 00  	scfgw	a1, a5
80002dc0: 13 07 00 02  	addi	a4, zero, 32
80002dc4: ab 20 e0 00  	scfgw	zero, a4
80002dc8: 2b a0 03 3a  	scfgwi	t2, 928
80002dcc: 13 07 10 01  	addi	a4, zero, 17
80002dd0: 93 07 10 00  	addi	a5, zero, 1
80002dd4: 93 84 07 04  	addi	s1, a5, 64
80002dd8: 13 84 07 0c  	addi	s0, a5, 192
80002ddc: ab 20 97 00  	scfgw	a4, s1
80002de0: ab a0 85 00  	scfgw	a1, s0
80002de4: 93 04 80 f7  	addi	s1, zero, -136
80002de8: 13 84 07 06  	addi	s0, a5, 96
80002dec: ab 20 86 00  	scfgw	a2, s0
80002df0: 13 84 07 0e  	addi	s0, a5, 224
80002df4: ab a0 84 00  	scfgw	s1, s0
80002df8: 93 84 07 08  	addi	s1, a5, 128
80002dfc: 13 84 07 10  	addi	s0, a5, 256
80002e00: ab a0 96 00  	scfgw	a3, s1
80002e04: ab a0 85 00  	scfgw	a1, s0
80002e08: 93 85 07 02  	addi	a1, a5, 32
80002e0c: ab 20 b0 00  	scfgw	zero, a1
80002e10: 2b a0 10 34  	scfgwi	ra, 833
80002e14: 93 05 00 0b  	addi	a1, zero, 176
80002e18: 93 07 20 00  	addi	a5, zero, 2
80002e1c: 93 84 07 04  	addi	s1, a5, 64
80002e20: 13 84 07 0c  	addi	s0, a5, 192
80002e24: ab 20 97 00  	scfgw	a4, s1
80002e28: ab a0 85 00  	scfgw	a1, s0
80002e2c: b7 f5 ff ff  	lui	a1, 1048575
80002e30: 13 87 85 45  	addi	a4, a1, 1112
80002e34: 93 84 07 06  	addi	s1, a5, 96
80002e38: 13 84 07 0e  	addi	s0, a5, 224
80002e3c: ab 20 96 00  	scfgw	a2, s1
80002e40: ab 20 87 00  	scfgw	a4, s0
80002e44: 93 85 85 3a  	addi	a1, a1, 936
80002e48: 13 86 07 08  	addi	a2, a5, 128
80002e4c: 13 87 07 10  	addi	a4, a5, 256
80002e50: ab a0 c6 00  	scfgw	a3, a2
80002e54: ab a0 e5 00  	scfgw	a1, a4
80002e58: 93 85 07 02  	addi	a1, a5, 32
80002e5c: ab 20 b0 00  	scfgw	zero, a1
80002e60: 2b a0 2d 34  	scfgwi	s11, 834
80002e64: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80002e68: 93 05 00 01  	addi	a1, zero, 16
80002e6c: 13 06 60 01  	addi	a2, zero, 22
;         x += E[i][k] * F[k][j];
80002e70: d3 71 11 12  	fmul.d	ft3, ft2, ft1
80002e74: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e78: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e7c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e80: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e84: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e88: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e8c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e90: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e94: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e98: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002e9c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002ea0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002ea4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002ea8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002eac: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002eb0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002eb4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       G[i][j] = x;
80002eb8: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nl; j++)
80002ebc: 13 06 f6 ff  	addi	a2, a2, -1
80002ec0: e3 18 06 fa  	bnez	a2, 0x80002e70 <.LBB0_104+0x149c>
;   for (i = 0; i < ni; i++)
80002ec4: 13 05 15 00  	addi	a0, a0, 1
80002ec8: e3 12 b5 fa  	bne	a0, a1, 0x80002e6c <.LBB0_104+0x1498>
80002ecc: 6f 00 00 29  	j	0x8000315c <.LBB0_104+0x1788>
80002ed0: 93 85 8d 47  	addi	a1, s11, 1144
80002ed4: 93 88 85 47  	addi	a7, a1, 1144
80002ed8: 93 85 cd 4c  	addi	a1, s11, 1228
80002edc: 93 87 c5 4c  	addi	a5, a1, 1228
80002ee0: 13 88 0d 63  	addi	a6, s11, 1584
80002ee4: 93 84 8d 6d  	addi	s1, s11, 1752
80002ee8: 13 83 00 05  	addi	t1, ra, 80
80002eec: 33 04 64 00  	add	s0, s0, t1
80002ef0: 13 04 04 f1  	addi	s0, s0, -240
80002ef4: b3 b5 77 00  	sltu	a1, a5, t2
80002ef8: b3 36 17 01  	sltu	a3, a4, a7
80002efc: b3 e5 d5 00  	or	a1, a1, a3
80002f00: b3 b6 74 00  	sltu	a3, s1, t2
80002f04: 33 36 07 01  	sltu	a2, a4, a6
80002f08: 33 e6 c6 00  	or	a2, a3, a2
80002f0c: b3 36 74 00  	sltu	a3, s0, t2
80002f10: 33 37 67 00  	sltu	a4, a4, t1
80002f14: b3 e6 e6 00  	or	a3, a3, a4
80002f18: b3 f5 c5 00  	and	a1, a1, a2
80002f1c: b3 f5 b6 00  	and	a1, a3, a1
80002f20: 13 d6 48 01  	srli	a2, a7, 20
80002f24: 33 36 c0 00  	snez	a2, a2
80002f28: b3 b6 a7 00  	sltu	a3, a5, a0
80002f2c: 33 76 d6 00  	and	a2, a2, a3
80002f30: b3 75 b6 00  	and	a1, a2, a1
80002f34: 13 56 48 01  	srli	a2, a6, 20
80002f38: 33 36 c0 00  	snez	a2, a2
80002f3c: b3 b6 a4 00  	sltu	a3, s1, a0
80002f40: 33 76 d6 00  	and	a2, a2, a3
80002f44: b3 75 b6 00  	and	a1, a2, a1
80002f48: 13 56 43 01  	srli	a2, t1, 20
80002f4c: 33 36 c0 00  	snez	a2, a2
80002f50: 33 35 a4 00  	sltu	a0, s0, a0
80002f54: 33 75 a6 00  	and	a0, a2, a0
80002f58: 93 02 00 00  	mv	t0, zero
80002f5c: 33 75 b5 00  	and	a0, a0, a1
80002f60: 63 02 05 20  	beqz	a0, 0x80003164 <.LBB0_104+0x1790>
80002f64: 13 05 80 00  	addi	a0, zero, 8
80002f68: 93 05 50 01  	addi	a1, zero, 21
;   for (i = 0; i < ni; i++)
80002f6c: 13 06 00 04  	addi	a2, zero, 64
80002f70: 93 06 00 0c  	addi	a3, zero, 192
80002f74: ab a0 c5 00  	scfgw	a1, a2
80002f78: ab 20 d5 00  	scfgw	a0, a3
80002f7c: 13 06 80 f5  	addi	a2, zero, -168
80002f80: 93 06 f0 00  	addi	a3, zero, 15
80002f84: 13 07 00 06  	addi	a4, zero, 96
80002f88: ab a0 e6 00  	scfgw	a3, a4
80002f8c: 13 07 00 0e  	addi	a4, zero, 224
80002f90: ab 20 e6 00  	scfgw	a2, a4
80002f94: 13 07 00 02  	addi	a4, zero, 32
80002f98: ab 20 e0 00  	scfgw	zero, a4
80002f9c: 2b a0 08 32  	scfgwi	a7, 800
80002fa0: 13 07 10 00  	addi	a4, zero, 1
80002fa4: 93 07 07 04  	addi	a5, a4, 64
80002fa8: ab a0 f5 00  	scfgw	a1, a5
80002fac: 93 07 07 0c  	addi	a5, a4, 192
80002fb0: ab 20 f5 00  	scfgw	a0, a5
80002fb4: 13 05 07 06  	addi	a0, a4, 96
80002fb8: 93 07 07 0e  	addi	a5, a4, 224
80002fbc: ab a0 a6 00  	scfgw	a3, a0
80002fc0: ab 20 f6 00  	scfgw	a2, a5
80002fc4: 13 05 07 02  	addi	a0, a4, 32
80002fc8: ab 20 a0 00  	scfgw	zero, a0
80002fcc: 2b 20 18 32  	scfgwi	a6, 801
80002fd0: 13 05 20 00  	addi	a0, zero, 2
80002fd4: 13 06 05 04  	addi	a2, a0, 64
80002fd8: 13 07 05 0c  	addi	a4, a0, 192
80002fdc: ab a0 c5 00  	scfgw	a1, a2
80002fe0: ab 20 e0 00  	scfgw	zero, a4
80002fe4: 13 08 00 09  	addi	a6, zero, 144
80002fe8: 93 05 05 06  	addi	a1, a0, 96
80002fec: 13 06 05 0e  	addi	a2, a0, 224
80002ff0: ab a0 b6 00  	scfgw	a3, a1
80002ff4: ab 20 c8 00  	scfgw	a6, a2
80002ff8: 13 05 05 02  	addi	a0, a0, 32
80002ffc: ab 20 a0 00  	scfgw	zero, a0
80003000: 2b 20 23 32  	scfgwi	t1, 802
80003004: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80003008: 13 03 00 0b  	addi	t1, zero, 176
8000300c: 93 08 00 01  	addi	a7, zero, 16
80003010: 93 07 00 00  	mv	a5, zero
;         x += E[i][k] * F[k][j];
80003014: 33 85 02 03  	mul	a0, t0, a6
80003018: b3 84 a0 00  	add	s1, ra, a0
8000301c: 13 8e 84 00  	addi	t3, s1, 8
80003020: 93 8e 04 01  	addi	t4, s1, 16
80003024: 13 8f 84 01  	addi	t5, s1, 24
80003028: 93 8f 04 02  	addi	t6, s1, 32
8000302c: 93 89 84 02  	addi	s3, s1, 40
80003030: 13 8a 04 03  	addi	s4, s1, 48
80003034: 93 8a 84 03  	addi	s5, s1, 56
80003038: 13 8b 04 04  	addi	s6, s1, 64
8000303c: 93 8b 84 04  	addi	s7, s1, 72
80003040: 13 8c 84 05  	addi	s8, s1, 88
80003044: 93 8c 04 06  	addi	s9, s1, 96
80003048: 13 8d 84 06  	addi	s10, s1, 104
8000304c: 13 84 04 07  	addi	s0, s1, 112
80003050: 93 85 84 07  	addi	a1, s1, 120
80003054: 93 86 04 08  	addi	a3, s1, 128
80003058: 13 85 84 08  	addi	a0, s1, 136
8000305c: 87 b1 04 00  	fld	ft3, 0(s1)
80003060: 33 86 fd 00  	add	a2, s11, a5
80003064: 07 32 06 00  	fld	ft4, 0(a2)
80003068: 87 32 0e 00  	fld	ft5, 0(t3)
8000306c: 07 33 06 0b  	fld	ft6, 176(a2)
80003070: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80003074: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80003078: 07 b2 0e 00  	fld	ft4, 0(t4)
8000307c: 87 32 06 16  	fld	ft5, 352(a2)
80003080: 07 33 0f 00  	fld	ft6, 0(t5)
80003084: 87 33 06 21  	fld	ft7, 528(a2)
80003088: 07 b5 0f 00  	fld	fa0, 0(t6)
8000308c: 87 35 06 2c  	fld	fa1, 704(a2)
80003090: 07 b6 09 00  	fld	fa2, 0(s3)
80003094: 87 36 06 37  	fld	fa3, 880(a2)
80003098: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000309c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800030a0: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800030a4: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
800030a8: 07 32 0a 00  	fld	ft4, 0(s4)
800030ac: 87 32 06 42  	fld	ft5, 1056(a2)
800030b0: 07 b3 0a 00  	fld	ft6, 0(s5)
800030b4: 87 33 06 4d  	fld	ft7, 1232(a2)
800030b8: 07 35 0b 00  	fld	fa0, 0(s6)
800030bc: 87 35 06 58  	fld	fa1, 1408(a2)
800030c0: 07 b6 0b 00  	fld	fa2, 0(s7)
800030c4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030c8: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800030cc: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800030d0: c3 f1 c0 1a  	fmadd.d	ft3, ft1, fa2, ft3
800030d4: 87 32 06 6e  	fld	ft5, 1760(a2)
800030d8: 07 33 0c 00  	fld	ft6, 0(s8)
800030dc: 87 33 06 79  	fld	ft7, 1936(a2)
800030e0: 07 b5 0c 00  	fld	fa0, 0(s9)
800030e4: 13 07 06 42  	addi	a4, a2, 1056
800030e8: 87 35 07 42  	fld	fa1, 1056(a4)
800030ec: 07 36 0d 00  	fld	fa2, 0(s10)
800030f0: c3 f1 22 1a  	fmadd.d	ft3, ft5, ft2, ft3
800030f4: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800030f8: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800030fc: c3 71 c0 1a  	fmadd.d	ft3, ft0, fa2, ft3
80003100: 07 32 04 00  	fld	ft4, 0(s0)
80003104: 13 07 06 4d  	addi	a4, a2, 1232
80003108: 87 32 07 4d  	fld	ft5, 1232(a4)
8000310c: 07 b3 05 00  	fld	ft6, 0(a1)
80003110: 13 07 86 52  	addi	a4, a2, 1320
80003114: 87 33 87 52  	fld	ft7, 1320(a4)
80003118: 07 b5 06 00  	fld	fa0, 0(a3)
8000311c: 13 07 06 58  	addi	a4, a2, 1408
80003120: 87 35 07 58  	fld	fa1, 1408(a4)
80003124: 07 36 05 00  	fld	fa2, 0(a0)
80003128: 13 06 86 5d  	addi	a2, a2, 1496
8000312c: 87 36 86 5d  	fld	fa3, 1496(a2)
80003130: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003134: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80003138: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
8000313c: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       G[i][j] = x;
80003140: 33 86 f3 00  	add	a2, t2, a5
;     for (j = 0; j < nl; j++)
80003144: 93 87 87 00  	addi	a5, a5, 8
;       G[i][j] = x;
80003148: 27 30 36 00  	fsd	ft3, 0(a2)
;     for (j = 0; j < nl; j++)
8000314c: e3 98 67 f0  	bne	a5, t1, 0x8000305c <.LBB0_104+0x1688>
;   for (i = 0; i < ni; i++)
80003150: 93 82 12 00  	addi	t0, t0, 1
80003154: 93 83 03 0b  	addi	t2, t2, 176
80003158: e3 9c 12 eb  	bne	t0, a7, 0x80003010 <.LBB0_104+0x163c>
8000315c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003160: 6f 00 40 17  	j	0x800032d4 <.LBB0_104+0x1900>
80003164: 13 08 00 09  	addi	a6, zero, 144
80003168: 13 03 00 0b  	addi	t1, zero, 176
8000316c: 93 08 00 01  	addi	a7, zero, 16
80003170: 03 29 41 03  	lw	s2, 52(sp)
80003174: 93 07 00 00  	mv	a5, zero
;         x += E[i][k] * F[k][j];
80003178: 33 85 02 03  	mul	a0, t0, a6
8000317c: b3 84 a0 00  	add	s1, ra, a0
80003180: 13 8e 84 00  	addi	t3, s1, 8
80003184: 93 8e 04 01  	addi	t4, s1, 16
80003188: 13 8f 84 01  	addi	t5, s1, 24
8000318c: 93 8f 04 02  	addi	t6, s1, 32
80003190: 93 89 84 02  	addi	s3, s1, 40
80003194: 13 8a 04 03  	addi	s4, s1, 48
80003198: 93 8a 84 03  	addi	s5, s1, 56
8000319c: 13 8b 04 04  	addi	s6, s1, 64
800031a0: 93 8b 84 04  	addi	s7, s1, 72
800031a4: 13 8c 04 05  	addi	s8, s1, 80
800031a8: 93 8c 84 05  	addi	s9, s1, 88
800031ac: 13 8d 04 06  	addi	s10, s1, 96
800031b0: 93 8d 84 06  	addi	s11, s1, 104
800031b4: 93 85 04 07  	addi	a1, s1, 112
800031b8: 93 86 84 07  	addi	a3, s1, 120
800031bc: 13 85 04 08  	addi	a0, s1, 128
800031c0: 13 86 84 08  	addi	a2, s1, 136
800031c4: 87 b1 04 00  	fld	ft3, 0(s1)
800031c8: 33 07 f9 00  	add	a4, s2, a5
800031cc: 07 32 07 00  	fld	ft4, 0(a4)
800031d0: 87 32 0e 00  	fld	ft5, 0(t3)
800031d4: 07 33 07 0b  	fld	ft6, 176(a4)
800031d8: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800031dc: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
800031e0: 07 b2 0e 00  	fld	ft4, 0(t4)
800031e4: 87 32 07 16  	fld	ft5, 352(a4)
800031e8: 07 33 0f 00  	fld	ft6, 0(t5)
800031ec: 87 33 07 21  	fld	ft7, 528(a4)
800031f0: 07 b5 0f 00  	fld	fa0, 0(t6)
800031f4: 87 35 07 2c  	fld	fa1, 704(a4)
800031f8: 07 b6 09 00  	fld	fa2, 0(s3)
800031fc: 87 36 07 37  	fld	fa3, 880(a4)
80003200: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003204: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80003208: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
8000320c: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80003210: 07 32 0a 00  	fld	ft4, 0(s4)
80003214: 87 32 07 42  	fld	ft5, 1056(a4)
80003218: 07 b3 0a 00  	fld	ft6, 0(s5)
8000321c: 87 33 07 4d  	fld	ft7, 1232(a4)
80003220: 07 35 0b 00  	fld	fa0, 0(s6)
80003224: 87 35 07 58  	fld	fa1, 1408(a4)
80003228: 07 b6 0b 00  	fld	fa2, 0(s7)
8000322c: 87 36 07 63  	fld	fa3, 1584(a4)
80003230: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003234: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80003238: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
8000323c: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80003240: 07 32 0c 00  	fld	ft4, 0(s8)
80003244: 87 32 07 6e  	fld	ft5, 1760(a4)
80003248: 07 b3 0c 00  	fld	ft6, 0(s9)
8000324c: 87 33 07 79  	fld	ft7, 1936(a4)
80003250: 07 35 0d 00  	fld	fa0, 0(s10)
80003254: 13 04 07 42  	addi	s0, a4, 1056
80003258: 87 35 04 42  	fld	fa1, 1056(s0)
8000325c: 07 b6 0d 00  	fld	fa2, 0(s11)
80003260: 13 04 87 47  	addi	s0, a4, 1144
80003264: 87 36 84 47  	fld	fa3, 1144(s0)
80003268: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000326c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80003270: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80003274: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80003278: 07 b2 05 00  	fld	ft4, 0(a1)
8000327c: 13 04 07 4d  	addi	s0, a4, 1232
80003280: 87 32 04 4d  	fld	ft5, 1232(s0)
80003284: 07 b3 06 00  	fld	ft6, 0(a3)
80003288: 13 04 87 52  	addi	s0, a4, 1320
8000328c: 87 33 84 52  	fld	ft7, 1320(s0)
80003290: 07 35 05 00  	fld	fa0, 0(a0)
80003294: 13 04 07 58  	addi	s0, a4, 1408
80003298: 87 35 04 58  	fld	fa1, 1408(s0)
8000329c: 07 36 06 00  	fld	fa2, 0(a2)
800032a0: 13 07 87 5d  	addi	a4, a4, 1496
800032a4: 87 36 87 5d  	fld	fa3, 1496(a4)
800032a8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800032ac: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800032b0: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800032b4: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       G[i][j] = x;
800032b8: 33 87 f3 00  	add	a4, t2, a5
;     for (j = 0; j < nl; j++)
800032bc: 93 87 87 00  	addi	a5, a5, 8
;       G[i][j] = x;
800032c0: 27 30 37 00  	fsd	ft3, 0(a4)
;     for (j = 0; j < nl; j++)
800032c4: e3 90 67 f0  	bne	a5, t1, 0x800031c4 <.LBB0_104+0x17f0>
;   for (i = 0; i < ni; i++)
800032c8: 93 82 12 00  	addi	t0, t0, 1
800032cc: 93 83 03 0b  	addi	t2, t2, 176
800032d0: e3 92 12 eb  	bne	t0, a7, 0x80003174 <.LBB0_104+0x17a0>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800032d4: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
800032d8: 83 25 01 02  	lw	a1, 32(sp)
800032dc: b3 05 b5 40  	sub	a1, a0, a1

800032e0 <.LBB0_105>:
800032e0: 17 25 00 00  	auipc	a0, 2
800032e4: 13 05 15 57  	addi	a0, a0, 1393
800032e8: 97 00 00 00  	auipc	ra, 0
800032ec: e7 80 80 22  	jalr	552(ra)
800032f0: 03 25 c1 04  	lw	a0, 76(sp)
800032f4: 63 0a 05 0a  	beqz	a0, 0x800033a8 <.LBB0_105+0xc8>
800032f8: 13 05 80 00  	addi	a0, zero, 8
800032fc: 93 05 50 01  	addi	a1, zero, 21
;     for (int i = 0; i < n; i++){
80003300: 13 06 00 04  	addi	a2, zero, 64
80003304: 93 06 00 0c  	addi	a3, zero, 192
80003308: ab a0 c5 00  	scfgw	a1, a2
8000330c: ab 20 d5 00  	scfgw	a0, a3
80003310: 93 05 f0 00  	addi	a1, zero, 15
80003314: 13 06 00 06  	addi	a2, zero, 96
80003318: 93 06 00 0e  	addi	a3, zero, 224
8000331c: ab a0 c5 00  	scfgw	a1, a2
80003320: ab 20 d5 00  	scfgw	a0, a3
80003324: 13 05 00 02  	addi	a0, zero, 32
80003328: ab 20 a0 00  	scfgw	zero, a0
8000332c: 03 25 81 02  	lw	a0, 40(sp)
80003330: 2b 20 05 32  	scfgwi	a0, 800
80003334: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80003338: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000333c: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
80003340: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003344: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003348: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000334c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003350: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003354: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003358: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000335c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003360: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003364: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003368: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000336c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003370: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003374: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003378: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000337c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003380: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003384: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003388: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000338c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003390: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80003394: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80003398: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
8000339c: e3 12 05 fa  	bnez	a0, 0x80003340 <.LBB0_105+0x60>
800033a0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800033a4: 6f 00 00 0d  	j	0x80003474 <.LBB0_106>
;     for (int i = 0; i < n; i++){
800033a8: 03 25 81 02  	lw	a0, 40(sp)
800033ac: 13 05 85 05  	addi	a0, a0, 88
800033b0: d3 01 00 d2  	fcvt.d.w	ft3, zero
800033b4: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
800033b8: 07 32 85 fa  	fld	ft4, -88(a0)
800033bc: 87 32 05 fb  	fld	ft5, -80(a0)
800033c0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800033c4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800033c8: 07 32 85 fb  	fld	ft4, -72(a0)
800033cc: 87 32 05 fc  	fld	ft5, -64(a0)
800033d0: 07 33 85 fc  	fld	ft6, -56(a0)
800033d4: 87 33 05 fd  	fld	ft7, -48(a0)
800033d8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800033dc: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800033e0: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800033e4: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800033e8: 07 32 85 fd  	fld	ft4, -40(a0)
800033ec: 87 32 05 fe  	fld	ft5, -32(a0)
800033f0: 07 33 85 fe  	fld	ft6, -24(a0)
800033f4: 87 33 05 ff  	fld	ft7, -16(a0)
800033f8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800033fc: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003400: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003404: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003408: 07 32 85 ff  	fld	ft4, -8(a0)
8000340c: 87 32 05 00  	fld	ft5, 0(a0)
80003410: 07 33 85 00  	fld	ft6, 8(a0)
80003414: 87 33 05 01  	fld	ft7, 16(a0)
80003418: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000341c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003420: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003424: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003428: 07 32 85 01  	fld	ft4, 24(a0)
8000342c: 87 32 05 02  	fld	ft5, 32(a0)
80003430: 07 33 85 02  	fld	ft6, 40(a0)
80003434: 87 33 05 03  	fld	ft7, 48(a0)
80003438: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000343c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003440: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003444: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003448: 07 32 85 03  	fld	ft4, 56(a0)
8000344c: 87 32 05 04  	fld	ft5, 64(a0)
80003450: 07 33 85 04  	fld	ft6, 72(a0)
80003454: 87 33 05 05  	fld	ft7, 80(a0)
80003458: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000345c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003460: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003464: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80003468: 93 85 f5 ff  	addi	a1, a1, -1
8000346c: 13 05 05 0b  	addi	a0, a0, 176
80003470: e3 94 05 f4  	bnez	a1, 0x800033b8 <.LBB0_105+0xd8>

80003474 <.LBB0_106>:
80003474: 17 25 00 00  	auipc	a0, 2
80003478: 13 05 45 69  	addi	a0, a0, 1684
8000347c: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80003480: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80003484: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80003488: 27 38 81 04  	fsd	fs0, 80(sp)
8000348c: 03 26 01 05  	lw	a2, 80(sp)
80003490: 83 26 41 05  	lw	a3, 84(sp)

80003494 <.LBB0_107>:
80003494: 17 25 00 00  	auipc	a0, 2
80003498: 13 05 15 3b  	addi	a0, a0, 945
8000349c: 97 00 00 00  	auipc	ra, 0
800034a0: e7 80 40 07  	jalr	116(ra)

800034a4 <.LBB0_108>:
800034a4: 17 25 00 00  	auipc	a0, 2
800034a8: 13 05 c5 66  	addi	a0, a0, 1644
800034ac: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
800034b0: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
800034b4: 87 3b 81 05  	fld	fs7, 88(sp)
800034b8: 07 3b 01 06  	fld	fs6, 96(sp)
800034bc: 87 3a 81 06  	fld	fs5, 104(sp)
800034c0: 07 3a 01 07  	fld	fs4, 112(sp)
800034c4: 87 39 81 07  	fld	fs3, 120(sp)
800034c8: 07 39 01 08  	fld	fs2, 128(sp)
800034cc: 87 34 81 08  	fld	fs1, 136(sp)
800034d0: 07 34 01 09  	fld	fs0, 144(sp)
800034d4: 83 2d c1 09  	lw	s11, 156(sp)
800034d8: 03 2d 01 0a  	lw	s10, 160(sp)
800034dc: 83 2c 41 0a  	lw	s9, 164(sp)
800034e0: 03 2c 81 0a  	lw	s8, 168(sp)
800034e4: 83 2b c1 0a  	lw	s7, 172(sp)
800034e8: 03 2b 01 0b  	lw	s6, 176(sp)
800034ec: 83 2a 41 0b  	lw	s5, 180(sp)
800034f0: 03 2a 81 0b  	lw	s4, 184(sp)
800034f4: 83 29 c1 0b  	lw	s3, 188(sp)
800034f8: 03 29 01 0c  	lw	s2, 192(sp)
800034fc: 83 24 41 0c  	lw	s1, 196(sp)
80003500: 03 24 81 0c  	lw	s0, 200(sp)
80003504: 83 20 c1 0c  	lw	ra, 204(sp)
80003508: 13 01 01 0d  	addi	sp, sp, 208
8000350c: 67 80 00 00  	ret

80003510 <printf_>:
; {
80003510: 13 01 01 fd  	addi	sp, sp, -48
80003514: 23 26 11 00  	sw	ra, 12(sp)
80003518: 93 02 05 00  	mv	t0, a0
8000351c: 23 26 11 03  	sw	a7, 44(sp)
80003520: 23 24 01 03  	sw	a6, 40(sp)
80003524: 23 22 f1 02  	sw	a5, 36(sp)
80003528: 23 20 e1 02  	sw	a4, 32(sp)
8000352c: 23 2e d1 00  	sw	a3, 28(sp)
80003530: 23 2c c1 00  	sw	a2, 24(sp)
80003534: 23 2a b1 00  	sw	a1, 20(sp)
80003538: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
8000353c: 23 24 a1 00  	sw	a0, 8(sp)

80003540 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80003540: 17 15 00 00  	auipc	a0, 1
80003544: 13 05 45 c2  	addi	a0, a0, -988
80003548: 93 05 71 00  	addi	a1, sp, 7
8000354c: 13 06 f0 ff  	addi	a2, zero, -1
80003550: 13 07 41 01  	addi	a4, sp, 20
80003554: 93 86 02 00  	mv	a3, t0
80003558: 97 00 00 00  	auipc	ra, 0
8000355c: e7 80 40 01  	jalr	20(ra)
;   return ret;
80003560: 83 20 c1 00  	lw	ra, 12(sp)
80003564: 13 01 01 03  	addi	sp, sp, 48
80003568: 67 80 00 00  	ret

8000356c <_vsnprintf.llvm.11632292163828655644>:
; {
8000356c: 13 01 01 f9  	addi	sp, sp, -112
80003570: 23 26 11 06  	sw	ra, 108(sp)
80003574: 23 24 81 06  	sw	s0, 104(sp)
80003578: 23 22 91 06  	sw	s1, 100(sp)
8000357c: 23 20 21 07  	sw	s2, 96(sp)
80003580: 23 2e 31 05  	sw	s3, 92(sp)
80003584: 23 2c 41 05  	sw	s4, 88(sp)
80003588: 23 2a 51 05  	sw	s5, 84(sp)
8000358c: 23 28 61 05  	sw	s6, 80(sp)
80003590: 23 26 71 05  	sw	s7, 76(sp)
80003594: 23 24 81 05  	sw	s8, 72(sp)
80003598: 23 22 91 05  	sw	s9, 68(sp)
8000359c: 23 20 a1 05  	sw	s10, 64(sp)
800035a0: 23 2e b1 03  	sw	s11, 60(sp)
800035a4: 93 09 07 00  	mv	s3, a4
800035a8: 13 84 06 00  	mv	s0, a3
800035ac: 93 0a 06 00  	mv	s5, a2
800035b0: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800035b4: 63 86 05 00  	beqz	a1, 0x800035c0 <.LBB1_183>
800035b8: 13 09 05 00  	mv	s2, a0
800035bc: 6f 00 c0 00  	j	0x800035c8 <.LBB1_183+0x8>

800035c0 <.LBB1_183>:
800035c0: 17 19 00 00  	auipc	s2, 1
800035c4: 13 09 09 c5  	addi	s2, s2, -944
800035c8: 13 0c 00 00  	mv	s8, zero
800035cc: 13 0b 50 02  	addi	s6, zero, 37
800035d0: 93 0d 00 01  	addi	s11, zero, 16
800035d4: 93 0b e0 02  	addi	s7, zero, 46
800035d8: 37 15 00 00  	lui	a0, 1
800035dc: 13 05 05 80  	addi	a0, a0, -2048
800035e0: 23 2c a1 00  	sw	a0, 24(sp)
800035e4: 37 05 01 00  	lui	a0, 16
800035e8: 13 05 f5 ff  	addi	a0, a0, -1
800035ec: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
800035f0: 13 0d 24 00  	addi	s10, s0, 2
800035f4: 93 0c 0c 00  	mv	s9, s8
800035f8: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
800035fc: 03 45 04 00  	lbu	a0, 0(s0)
80003600: e3 04 05 30  	beqz	a0, 0x80004108 <.LBB1_124+0x3b0>
80003604: 63 08 65 03  	beq	a0, s6, 0x80003634 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80003608: 93 84 1c 00  	addi	s1, s9, 1
8000360c: 93 05 0a 00  	mv	a1, s4
80003610: 13 86 0c 00  	mv	a2, s9
80003614: 93 86 0a 00  	mv	a3, s5
80003618: e7 00 09 00  	jalr	s2
;       format++;
8000361c: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80003620: 13 0d 1d 00  	addi	s10, s10, 1
80003624: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80003628: 03 45 04 00  	lbu	a0, 0(s0)
8000362c: e3 1c 05 fc  	bnez	a0, 0x80003604 <.LBB1_183+0x44>
80003630: 6f 00 90 2d  	j	0x80004108 <.LBB1_124+0x3b0>
;     flags = 0U;
80003634: 13 04 00 00  	mv	s0, zero
80003638: 6f 00 00 01  	j	0x80003648 <.LBB1_9+0x8>

8000363c <.LBB1_8>:
8000363c: 93 05 00 01  	addi	a1, zero, 16

80003640 <.LBB1_9>:
80003640: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80003644: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80003648: 03 45 fd ff  	lbu	a0, -1(s10)
8000364c: 93 05 05 fe  	addi	a1, a0, -32
80003650: 63 ec bd 02  	bltu	s11, a1, 0x80003688 <.LBB1_15>
80003654: 93 95 25 00  	slli	a1, a1, 2

80003658 <.LBB1_184>:
80003658: 17 26 00 00  	auipc	a2, 2
8000365c: 13 06 c6 20  	addi	a2, a2, 524
80003660: b3 85 c5 00  	add	a1, a1, a2
80003664: 03 a6 05 00  	lw	a2, 0(a1)
80003668: 93 05 10 00  	addi	a1, zero, 1
8000366c: 67 00 06 00  	jr	a2

80003670 <.LBB1_12>:
80003670: 93 05 80 00  	addi	a1, zero, 8
80003674: 6f f0 df fc  	j	0x80003640 <.LBB1_9>

80003678 <.LBB1_13>:
80003678: 93 05 40 00  	addi	a1, zero, 4
8000367c: 6f f0 5f fc  	j	0x80003640 <.LBB1_9>

80003680 <.LBB1_14>:
80003680: 93 05 20 00  	addi	a1, zero, 2
80003684: 6f f0 df fb  	j	0x80003640 <.LBB1_9>

80003688 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80003688: 93 05 05 fd  	addi	a1, a0, -48
8000368c: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80003690: 93 05 fd ff  	addi	a1, s10, -1
80003694: 93 06 90 00  	addi	a3, zero, 9
80003698: 63 ee c6 06  	bltu	a3, a2, 0x80003714 <.LBB1_15+0x8c>
8000369c: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800036a0: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800036a4: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800036a8: b3 06 8b 03  	mul	a3, s6, s8
800036ac: 93 85 15 00  	addi	a1, a1, 1
800036b0: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800036b4: 93 06 05 fd  	addi	a3, a0, -48
800036b8: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800036bc: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800036c0: e3 e0 86 ff  	bltu	a3, s8, 0x800036a0 <.LBB1_15+0x18>
800036c4: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800036c8: 63 16 75 0b  	bne	a0, s7, 0x80003774 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
800036cc: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
800036d0: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
800036d4: 93 05 05 fd  	addi	a1, a0, -48
800036d8: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
800036dc: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
800036e0: 93 06 90 00  	addi	a3, zero, 9
800036e4: 63 e0 c6 06  	bltu	a3, a2, 0x80003744 <.LBB1_15+0xbc>
800036e8: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800036ec: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800036f0: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800036f4: b3 86 8b 03  	mul	a3, s7, s8
800036f8: 93 85 15 00  	addi	a1, a1, 1
800036fc: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003700: 93 06 05 fd  	addi	a3, a0, -48
80003704: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003708: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
8000370c: e3 e0 86 ff  	bltu	a3, s8, 0x800036ec <.LBB1_15+0x64>
80003710: 6f 00 00 07  	j	0x80003780 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80003714: 13 06 a0 02  	addi	a2, zero, 42
80003718: 63 18 c5 04  	bne	a0, a2, 0x80003768 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
8000371c: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80003720: 63 d4 05 00  	bgez	a1, 0x80003728 <.LBB1_15+0xa0>
80003724: 13 64 24 00  	ori	s0, s0, 2
80003728: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
8000372c: 03 45 0d 00  	lbu	a0, 0(s10)
80003730: 13 d6 f5 41  	srai	a2, a1, 31
80003734: b3 85 c5 00  	add	a1, a1, a2
80003738: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
8000373c: e3 08 75 f9  	beq	a0, s7, 0x800036cc <.LBB1_15+0x44>
80003740: 6f 00 40 03  	j	0x80003774 <.LBB1_15+0xec>
;       else if (*format == '*') {
80003744: 13 06 a0 02  	addi	a2, zero, 42
80003748: 63 1a c5 02  	bne	a0, a2, 0x8000377c <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
8000374c: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80003750: 63 44 70 01  	bgtz	s7, 0x80003758 <.LBB1_15+0xd0>
80003754: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80003758: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
8000375c: 13 0d 2d 00  	addi	s10, s10, 2
80003760: 93 89 49 00  	addi	s3, s3, 4
80003764: 6f 00 00 02  	j	0x80003784 <.LBB1_15+0xfc>
80003768: 13 0b 00 00  	mv	s6, zero
8000376c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003770: e3 0e 75 f5  	beq	a0, s7, 0x800036cc <.LBB1_15+0x44>
80003774: 93 0b 00 00  	mv	s7, zero
80003778: 6f 00 c0 00  	j	0x80003784 <.LBB1_15+0xfc>
8000377c: 93 0b 00 00  	mv	s7, zero
80003780: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80003784: 93 05 85 f9  	addi	a1, a0, -104
80003788: 13 d6 15 00  	srli	a2, a1, 1
8000378c: 93 95 f5 01  	slli	a1, a1, 31
80003790: b3 e5 c5 00  	or	a1, a1, a2
80003794: 13 06 90 00  	addi	a2, zero, 9
80003798: 63 62 b6 06  	bltu	a2, a1, 0x800037fc <.LBB1_42>
8000379c: 93 95 25 00  	slli	a1, a1, 2

800037a0 <.LBB1_185>:
800037a0: 17 26 00 00  	auipc	a2, 2
800037a4: 13 06 86 10  	addi	a2, a2, 264
800037a8: b3 85 c5 00  	add	a1, a1, a2
800037ac: 83 a6 05 00  	lw	a3, 0(a1)
800037b0: 93 05 10 00  	addi	a1, zero, 1
800037b4: 13 06 00 10  	addi	a2, zero, 256
800037b8: 67 80 06 00  	jr	a3

800037bc <.LBB1_36>:
;         if (*format == 'h') {
800037bc: 03 45 1d 00  	lbu	a0, 1(s10)
800037c0: 93 05 80 06  	addi	a1, zero, 104
800037c4: 63 12 b5 12  	bne	a0, a1, 0x800038e8 <.LBB1_53+0x48>
800037c8: 93 05 20 00  	addi	a1, zero, 2
800037cc: 13 06 00 0c  	addi	a2, zero, 192
800037d0: 6f 00 00 02  	j	0x800037f0 <.LBB1_41>

800037d4 <.LBB1_38>:
800037d4: 13 06 00 20  	addi	a2, zero, 512
800037d8: 6f 00 80 01  	j	0x800037f0 <.LBB1_41>

800037dc <.LBB1_39>:
;         if (*format == 'l') {
800037dc: 03 45 1d 00  	lbu	a0, 1(s10)
800037e0: 93 05 c0 06  	addi	a1, zero, 108
800037e4: 63 18 b5 10  	bne	a0, a1, 0x800038f4 <.LBB1_53+0x54>
800037e8: 93 05 20 00  	addi	a1, zero, 2
800037ec: 13 06 00 30  	addi	a2, zero, 768

800037f0 <.LBB1_41>:
800037f0: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
800037f4: 03 45 0d 00  	lbu	a0, 0(s10)
800037f8: 33 64 c4 00  	or	s0, s0, a2

800037fc <.LBB1_42>:
;     switch (*format) {
800037fc: 93 05 b5 fd  	addi	a1, a0, -37
80003800: 13 06 30 05  	addi	a2, zero, 83
80003804: 63 64 b6 10  	bltu	a2, a1, 0x8000390c <.LBB1_59>
80003808: 93 95 25 00  	slli	a1, a1, 2

8000380c <.LBB1_186>:
8000380c: 17 26 00 00  	auipc	a2, 2
80003810: 13 06 46 0c  	addi	a2, a2, 196
80003814: b3 85 c5 00  	add	a1, a1, a2
80003818: 03 a6 05 00  	lw	a2, 0(a1)
8000381c: 93 05 80 00  	addi	a1, zero, 8
80003820: 13 0c 00 01  	addi	s8, zero, 16
80003824: 67 00 06 00  	jr	a2

80003828 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80003828: 13 74 f4 fe  	andi	s0, s0, -17
8000382c: 13 0c a0 00  	addi	s8, zero, 10

80003830 <.LBB1_45>:
;         if (*format == 'X') {
80003830: 93 05 80 05  	addi	a1, zero, 88
80003834: 63 14 b5 00  	bne	a0, a1, 0x8000383c <.LBB1_45+0xc>
80003838: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
8000383c: 93 05 40 06  	addi	a1, zero, 100
80003840: 63 08 b5 0e  	beq	a0, a1, 0x80003930 <.LBB1_62+0x8>
80003844: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80003848: 13 06 90 06  	addi	a2, zero, 105
8000384c: 63 02 c5 0e  	beq	a0, a2, 0x80003930 <.LBB1_62+0x8>
80003850: 6f 00 80 0d  	j	0x80003928 <.LBB1_62>

80003854 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80003854: 93 05 60 04  	addi	a1, zero, 70
80003858: 63 14 b5 00  	bne	a0, a1, 0x80003860 <.LBB1_49+0xc>
8000385c: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003860: 13 85 79 00  	addi	a0, s3, 7
80003864: 13 75 85 ff  	andi	a0, a0, -8
80003868: 07 35 05 00  	fld	fa0, 0(a0)
8000386c: 93 09 85 00  	addi	s3, a0, 8
80003870: 13 05 09 00  	mv	a0, s2
80003874: 93 05 0a 00  	mv	a1, s4
80003878: 13 86 0c 00  	mv	a2, s9
8000387c: 93 86 0a 00  	mv	a3, s5
80003880: 13 87 0b 00  	mv	a4, s7
80003884: 93 07 0b 00  	mv	a5, s6
80003888: 13 08 04 00  	mv	a6, s0
8000388c: 97 10 00 00  	auipc	ra, 1
80003890: e7 80 80 98  	jalr	-1656(ra)
80003894: 6f 00 00 7c  	j	0x80004054 <.LBB1_124+0x2fc>

80003898 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80003898: 83 25 81 01  	lw	a1, 24(sp)
8000389c: 33 64 b4 00  	or	s0, s0, a1

800038a0 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800038a0: 13 65 25 00  	ori	a0, a0, 2
800038a4: 93 05 70 04  	addi	a1, zero, 71
800038a8: 63 14 b5 00  	bne	a0, a1, 0x800038b0 <.LBB1_53+0x10>
800038ac: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800038b0: 13 85 79 00  	addi	a0, s3, 7
800038b4: 13 75 85 ff  	andi	a0, a0, -8
800038b8: 07 35 05 00  	fld	fa0, 0(a0)
800038bc: 93 09 85 00  	addi	s3, a0, 8
800038c0: 13 05 09 00  	mv	a0, s2
800038c4: 93 05 0a 00  	mv	a1, s4
800038c8: 13 86 0c 00  	mv	a2, s9
800038cc: 93 86 0a 00  	mv	a3, s5
800038d0: 13 87 0b 00  	mv	a4, s7
800038d4: 93 07 0b 00  	mv	a5, s6
800038d8: 13 08 04 00  	mv	a6, s0
800038dc: 97 10 00 00  	auipc	ra, 1
800038e0: e7 80 80 01  	jalr	24(ra)
800038e4: 6f 00 00 77  	j	0x80004054 <.LBB1_124+0x2fc>
800038e8: 13 64 04 08  	ori	s0, s0, 128
800038ec: 13 0d 1d 00  	addi	s10, s10, 1
800038f0: 6f f0 df f0  	j	0x800037fc <.LBB1_42>
800038f4: 13 64 04 10  	ori	s0, s0, 256
800038f8: 13 0d 1d 00  	addi	s10, s10, 1
800038fc: 6f f0 1f f0  	j	0x800037fc <.LBB1_42>

80003900 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003900: 13 8c 1c 00  	addi	s8, s9, 1
80003904: 13 05 50 02  	addi	a0, zero, 37
80003908: 6f 00 80 00  	j	0x80003910 <.LBB1_59+0x4>

8000390c <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
8000390c: 13 8c 1c 00  	addi	s8, s9, 1
80003910: 93 05 0a 00  	mv	a1, s4
80003914: 13 86 0c 00  	mv	a2, s9
80003918: 93 86 0a 00  	mv	a3, s5
8000391c: e7 00 09 00  	jalr	s2
80003920: 6f 00 80 73  	j	0x80004058 <.LBB1_124+0x300>

80003924 <.LBB1_61>:
80003924: 93 05 20 00  	addi	a1, zero, 2

80003928 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80003928: 13 74 34 ff  	andi	s0, s0, -13
8000392c: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80003930: 93 75 04 40  	andi	a1, s0, 1024
80003934: 63 84 05 00  	beqz	a1, 0x8000393c <.LBB1_62+0x14>
80003938: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
8000393c: 93 05 90 06  	addi	a1, zero, 105
80003940: 63 06 b5 00  	beq	a0, a1, 0x8000394c <.LBB1_62+0x24>
80003944: 93 05 40 06  	addi	a1, zero, 100
80003948: 63 1c b5 12  	bne	a0, a1, 0x80003a80 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
8000394c: 13 75 04 20  	andi	a0, s0, 512
80003950: 63 16 05 02  	bnez	a0, 0x8000397c <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80003954: 13 75 04 10  	andi	a0, s0, 256
80003958: 63 1c 05 14  	bnez	a0, 0x80003ab0 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
8000395c: 13 75 04 04  	andi	a0, s0, 64
80003960: 63 18 05 4e  	bnez	a0, 0x80003e50 <.LBB1_124+0xf8>
80003964: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003968: 93 75 04 08  	andi	a1, s0, 128
8000396c: 63 84 05 4e  	beqz	a1, 0x80003e54 <.LBB1_124+0xfc>
80003970: 13 15 08 01  	slli	a0, a6, 16
80003974: 13 58 05 41  	srai	a6, a0, 16
80003978: 6f 00 c0 4d  	j	0x80003e54 <.LBB1_124+0xfc>
8000397c: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003980: 13 85 79 00  	addi	a0, s3, 7
80003984: 13 75 85 ff  	andi	a0, a0, -8
80003988: 83 29 05 00  	lw	s3, 0(a0)
8000398c: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003990: 13 65 45 00  	ori	a0, a0, 4
80003994: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80003998: 23 24 a1 00  	sw	a0, 8(sp)
8000399c: 33 e5 a9 00  	or	a0, s3, a0
800039a0: 63 14 05 00  	bnez	a0, 0x800039a8 <.LBB1_62+0x80>
800039a4: 13 74 f4 fe  	andi	s0, s0, -17
800039a8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800039ac: 93 75 04 40  	andi	a1, s0, 1024
800039b0: 93 d5 a5 00  	srli	a1, a1, 10
800039b4: 33 75 b5 00  	and	a0, a0, a1
800039b8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800039bc: 63 14 05 0a  	bnez	a0, 0x80003a64 <.LBB1_62+0x13c>
800039c0: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800039c4: 63 da 04 00  	bgez	s1, 0x800039d8 <.LBB1_62+0xb0>
800039c8: 33 35 30 01  	snez	a0, s3
800039cc: b3 09 30 41  	neg	s3, s3
800039d0: 33 85 a4 00  	add	a0, s1, a0
800039d4: b3 04 a0 40  	neg	s1, a0
800039d8: 13 09 00 00  	mv	s2, zero
800039dc: 13 75 04 02  	andi	a0, s0, 32
800039e0: 13 45 15 06  	xori	a0, a0, 97
800039e4: 13 05 65 0f  	addi	a0, a0, 246
800039e8: 23 2a a1 00  	sw	a0, 20(sp)
800039ec: 6f 00 40 02  	j	0x80003a10 <.LBB1_62+0xe8>
800039f0: 13 06 10 00  	addi	a2, zero, 1
800039f4: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039f8: 93 36 f9 01  	sltiu	a3, s2, 31
800039fc: 33 f6 c6 00  	and	a2, a3, a2
80003a00: 13 89 07 00  	mv	s2, a5
80003a04: 93 09 05 00  	mv	s3, a0
80003a08: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a0c: 63 0c 06 04  	beqz	a2, 0x80003a64 <.LBB1_62+0x13c>
;       value /= base;
80003a10: 13 85 09 00  	mv	a0, s3
80003a14: 93 85 04 00  	mv	a1, s1
80003a18: 13 06 0c 00  	mv	a2, s8
80003a1c: 93 06 00 00  	mv	a3, zero
80003a20: 97 c0 ff ff  	auipc	ra, 1048572
80003a24: e7 80 00 5e  	jalr	1504(ra)
80003a28: 33 06 85 03  	mul	a2, a0, s8
80003a2c: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a30: 13 77 e6 0f  	andi	a4, a2, 254
80003a34: 93 06 00 03  	addi	a3, zero, 48
80003a38: 93 07 a0 00  	addi	a5, zero, 10
80003a3c: 63 64 f7 00  	bltu	a4, a5, 0x80003a44 <.LBB1_62+0x11c>
80003a40: 83 26 41 01  	lw	a3, 20(sp)
80003a44: 33 86 c6 00  	add	a2, a3, a2
80003a48: 93 06 c1 01  	addi	a3, sp, 28
80003a4c: b3 86 26 01  	add	a3, a3, s2
80003a50: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a54: e3 9e 04 f8  	bnez	s1, 0x800039f0 <.LBB1_62+0xc8>
80003a58: 33 b6 89 01  	sltu	a2, s3, s8
80003a5c: 13 46 16 00  	xori	a2, a2, 1
80003a60: 6f f0 5f f9  	j	0x800039f4 <.LBB1_62+0xcc>
80003a64: 03 25 41 00  	lw	a0, 4(sp)
80003a68: 93 09 85 00  	addi	s3, a0, 8
80003a6c: 03 25 81 00  	lw	a0, 8(sp)
80003a70: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003a74: 13 07 c1 01  	addi	a4, sp, 28
80003a78: 03 29 c1 00  	lw	s2, 12(sp)
80003a7c: 6f 00 80 47  	j	0x80003ef4 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003a80: 13 75 04 20  	andi	a0, s0, 512
80003a84: 63 12 05 0c  	bnez	a0, 0x80003b48 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80003a88: 13 75 04 10  	andi	a0, s0, 256
80003a8c: 63 1e 05 46  	bnez	a0, 0x80003f08 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003a90: 13 75 04 04  	andi	a0, s0, 64
80003a94: 63 10 05 50  	bnez	a0, 0x80003f94 <.LBB1_124+0x23c>
80003a98: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003a9c: 93 75 04 08  	andi	a1, s0, 128
80003aa0: 63 8c 05 4e  	beqz	a1, 0x80003f98 <.LBB1_124+0x240>
80003aa4: 83 25 01 01  	lw	a1, 16(sp)
80003aa8: 33 75 b5 00  	and	a0, a0, a1
80003aac: 6f 00 c0 4e  	j	0x80003f98 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003ab0: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80003ab4: 63 14 08 00  	bnez	a6, 0x80003abc <.LBB1_62+0x194>
80003ab8: 13 74 f4 fe  	andi	s0, s0, -17
80003abc: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003ac0: 13 76 04 40  	andi	a2, s0, 1024
80003ac4: 13 56 a6 00  	srli	a2, a2, 10
80003ac8: b3 f5 c5 00  	and	a1, a1, a2
80003acc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003ad0: 63 9c 05 40  	bnez	a1, 0x80003ee8 <.LBB1_124+0x190>
80003ad4: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003ad8: 13 56 f8 41  	srai	a2, a6, 31
80003adc: b3 06 c8 00  	add	a3, a6, a2
80003ae0: b3 c6 c6 00  	xor	a3, a3, a2
80003ae4: 13 76 04 02  	andi	a2, s0, 32
80003ae8: 13 46 16 06  	xori	a2, a2, 97
80003aec: 93 08 66 0f  	addi	a7, a2, 246
80003af0: 6f 00 40 03  	j	0x80003b24 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003af4: 33 05 f6 00  	add	a0, a2, a5
80003af8: 93 87 15 00  	addi	a5, a1, 1
80003afc: 13 06 c1 01  	addi	a2, sp, 28
80003b00: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b04: b3 b6 86 01  	sltu	a3, a3, s8
80003b08: 93 c6 16 00  	xori	a3, a3, 1
80003b0c: 93 b5 f5 01  	sltiu	a1, a1, 31
80003b10: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b14: 23 00 a6 00  	sb	a0, 0(a2)
80003b18: 93 85 07 00  	mv	a1, a5
80003b1c: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b20: 63 84 04 3c  	beqz	s1, 0x80003ee8 <.LBB1_124+0x190>
;       value /= base;
80003b24: 33 d7 86 03  	divu	a4, a3, s8
80003b28: 33 06 87 03  	mul	a2, a4, s8
80003b2c: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b30: 13 f5 e7 0f  	andi	a0, a5, 254
80003b34: 13 06 00 03  	addi	a2, zero, 48
80003b38: 93 04 a0 00  	addi	s1, zero, 10
80003b3c: e3 6c 95 fa  	bltu	a0, s1, 0x80003af4 <.LBB1_62+0x1cc>
80003b40: 13 86 08 00  	mv	a2, a7
80003b44: 6f f0 1f fb  	j	0x80003af4 <.LBB1_62+0x1cc>
80003b48: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003b4c: 13 85 79 00  	addi	a0, s3, 7
80003b50: 93 75 85 ff  	andi	a1, a0, -8
80003b54: 03 a9 05 00  	lw	s2, 0(a1)
80003b58: 13 e5 45 00  	ori	a0, a1, 4
80003b5c: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80003b60: 33 65 39 01  	or	a0, s2, s3
80003b64: 23 24 b1 00  	sw	a1, 8(sp)
80003b68: 63 14 05 00  	bnez	a0, 0x80003b70 <.LBB1_62+0x248>
80003b6c: 13 74 f4 fe  	andi	s0, s0, -17
80003b70: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b74: 93 75 04 40  	andi	a1, s0, 1024
80003b78: 93 d5 a5 00  	srli	a1, a1, 10
80003b7c: 33 75 b5 00  	and	a0, a0, a1
80003b80: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b84: 63 18 05 08  	bnez	a0, 0x80003c14 <.LBB1_62+0x2ec>
80003b88: 93 04 00 00  	mv	s1, zero
80003b8c: 13 75 04 02  	andi	a0, s0, 32
80003b90: 13 45 15 06  	xori	a0, a0, 97
80003b94: 13 05 65 0f  	addi	a0, a0, 246
80003b98: 23 2a a1 00  	sw	a0, 20(sp)
80003b9c: 6f 00 40 02  	j	0x80003bc0 <.LBB1_62+0x298>
80003ba0: 13 06 10 00  	addi	a2, zero, 1
80003ba4: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ba8: 93 b6 f4 01  	sltiu	a3, s1, 31
80003bac: 33 f6 c6 00  	and	a2, a3, a2
80003bb0: 93 84 07 00  	mv	s1, a5
80003bb4: 13 09 05 00  	mv	s2, a0
80003bb8: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003bbc: 63 0c 06 04  	beqz	a2, 0x80003c14 <.LBB1_62+0x2ec>
;       value /= base;
80003bc0: 13 05 09 00  	mv	a0, s2
80003bc4: 93 85 09 00  	mv	a1, s3
80003bc8: 13 06 0c 00  	mv	a2, s8
80003bcc: 93 06 00 00  	mv	a3, zero
80003bd0: 97 c0 ff ff  	auipc	ra, 1048572
80003bd4: e7 80 00 43  	jalr	1072(ra)
80003bd8: 33 06 85 03  	mul	a2, a0, s8
80003bdc: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003be0: 13 77 e6 0f  	andi	a4, a2, 254
80003be4: 93 06 00 03  	addi	a3, zero, 48
80003be8: 93 07 a0 00  	addi	a5, zero, 10
80003bec: 63 64 f7 00  	bltu	a4, a5, 0x80003bf4 <.LBB1_62+0x2cc>
80003bf0: 83 26 41 01  	lw	a3, 20(sp)
80003bf4: 33 86 c6 00  	add	a2, a3, a2
80003bf8: 93 06 c1 01  	addi	a3, sp, 28
80003bfc: b3 86 96 00  	add	a3, a3, s1
80003c00: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003c04: e3 9e 09 f8  	bnez	s3, 0x80003ba0 <.LBB1_62+0x278>
80003c08: 33 36 89 01  	sltu	a2, s2, s8
80003c0c: 13 46 16 00  	xori	a2, a2, 1
80003c10: 6f f0 5f f9  	j	0x80003ba4 <.LBB1_62+0x27c>
80003c14: 03 25 81 00  	lw	a0, 8(sp)
80003c18: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003c1c: 13 07 c1 01  	addi	a4, sp, 28
80003c20: 03 29 c1 00  	lw	s2, 12(sp)
80003c24: 6f 00 40 40  	j	0x80004028 <.LBB1_124+0x2d0>

80003c28 <.LBB1_108>:
80003c28: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003c2c: 13 79 24 00  	andi	s2, s0, 2
80003c30: 93 04 10 00  	addi	s1, zero, 1
80003c34: 63 1e 09 02  	bnez	s2, 0x80003c70 <.LBB1_108+0x48>
80003c38: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003c3c: 63 6a 9b 02  	bltu	s6, s1, 0x80003c70 <.LBB1_108+0x48>
80003c40: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80003c44: 13 0c fb ff  	addi	s8, s6, -1
80003c48: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003c4c: 33 86 8c 00  	add	a2, s9, s0
80003c50: 13 05 00 02  	addi	a0, zero, 32
80003c54: 93 05 0a 00  	mv	a1, s4
80003c58: 93 86 0a 00  	mv	a3, s5
80003c5c: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003c60: 13 04 14 00  	addi	s0, s0, 1
80003c64: e3 14 8c fe  	bne	s8, s0, 0x80003c4c <.LBB1_108+0x24>
80003c68: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003c6c: b3 8c 8c 00  	add	s9, s9, s0
80003c70: 03 c5 09 00  	lbu	a0, 0(s3)
80003c74: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003c78: 93 89 49 00  	addi	s3, s3, 4
80003c7c: 13 8c 1c 00  	addi	s8, s9, 1
80003c80: 93 05 0a 00  	mv	a1, s4
80003c84: 13 86 0c 00  	mv	a2, s9
80003c88: 93 86 0a 00  	mv	a3, s5
80003c8c: 13 89 0b 00  	mv	s2, s7
80003c90: e7 80 0b 00  	jalr	s7
80003c94: 33 b5 64 01  	sltu	a0, s1, s6
80003c98: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003c9c: 33 65 a4 00  	or	a0, s0, a0
80003ca0: 63 1c 05 3a  	bnez	a0, 0x80004058 <.LBB1_124+0x300>
;           while (l++ < width) {
80003ca4: 33 04 9b 40  	sub	s0, s6, s1
80003ca8: 93 0b e0 02  	addi	s7, zero, 46
80003cac: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003cb0: 13 0c 1c 00  	addi	s8, s8, 1
80003cb4: 13 05 00 02  	addi	a0, zero, 32
80003cb8: 93 05 0a 00  	mv	a1, s4
80003cbc: 93 86 0a 00  	mv	a3, s5
80003cc0: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003cc4: 13 04 f4 ff  	addi	s0, s0, -1
80003cc8: e3 12 04 fe  	bnez	s0, 0x80003cac <.LBB1_108+0x84>
80003ccc: 13 0b 50 02  	addi	s6, zero, 37
80003cd0: 13 04 1d 00  	addi	s0, s10, 1
80003cd4: 6f f0 df 91  	j	0x800035f0 <.LBB1_183+0x30>

80003cd8 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003cd8: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003cdc: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003ce0: 63 14 05 00  	bnez	a0, 0x80003ce8 <.LBB1_117+0x10>
80003ce4: 93 fe fe fe  	andi	t4, t4, -17
80003ce8: 93 04 a0 00  	addi	s1, zero, 10
80003cec: 13 04 f0 00  	addi	s0, zero, 15
80003cf0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003cf4: 13 f6 0e 40  	andi	a2, t4, 1024
80003cf8: 13 56 a6 00  	srli	a2, a2, 10
80003cfc: b3 f5 c5 00  	and	a1, a1, a2
80003d00: 93 07 00 00  	mv	a5, zero
80003d04: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80003d08: 63 98 05 10  	bnez	a1, 0x80003e18 <.LBB1_124+0xc0>
80003d0c: 93 05 00 00  	mv	a1, zero
80003d10: 6f 00 40 03  	j	0x80003d44 <.LBB1_117+0x6c>
80003d14: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d18: 33 06 d6 00  	add	a2, a2, a3
80003d1c: 93 87 15 00  	addi	a5, a1, 1
80003d20: 93 06 c1 01  	addi	a3, sp, 28
80003d24: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003d28: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003d2c: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003d30: 93 b5 f5 01  	sltiu	a1, a1, 31
80003d34: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d38: 23 80 c6 00  	sb	a2, 0(a3)
80003d3c: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003d40: 63 0c 07 0c  	beqz	a4, 0x80003e18 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d44: 93 76 e5 00  	andi	a3, a0, 14
80003d48: 13 06 00 03  	addi	a2, zero, 48
80003d4c: e3 e4 96 fc  	bltu	a3, s1, 0x80003d14 <.LBB1_117+0x3c>
80003d50: 13 06 70 03  	addi	a2, zero, 55
80003d54: 6f f0 1f fc  	j	0x80003d14 <.LBB1_117+0x3c>

80003d58 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80003d58: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003d5c: 03 c5 07 00  	lbu	a0, 0(a5)
80003d60: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80003d64: 63 0c 05 02  	beqz	a0, 0x80003d9c <.LBB1_124+0x44>
80003d68: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003d6c: 63 84 0b 00  	beqz	s7, 0x80003d74 <.LBB1_124+0x1c>
80003d70: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80003d74: 93 85 f5 ff  	addi	a1, a1, -1
80003d78: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003d7c: 03 c7 16 00  	lbu	a4, 1(a3)
80003d80: 13 86 16 00  	addi	a2, a3, 1
80003d84: b3 36 e0 00  	snez	a3, a4
80003d88: 33 37 b0 00  	snez	a4, a1
80003d8c: 33 77 d7 00  	and	a4, a4, a3
80003d90: 93 85 f5 ff  	addi	a1, a1, -1
80003d94: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003d98: e3 12 07 fe  	bnez	a4, 0x80003d7c <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003d9c: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003da0: 93 75 04 40  	andi	a1, s0, 1024
80003da4: 93 b4 15 00  	seqz	s1, a1
80003da8: 23 2a c1 00  	sw	a2, 20(sp)
80003dac: b3 35 76 01  	sltu	a1, a2, s7
80003db0: b3 e5 b4 00  	or	a1, s1, a1
80003db4: 63 94 05 00  	bnez	a1, 0x80003dbc <.LBB1_124+0x64>
80003db8: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003dbc: 93 75 24 00  	andi	a1, s0, 2
80003dc0: 23 26 b1 00  	sw	a1, 12(sp)
80003dc4: 63 96 05 2a  	bnez	a1, 0x80004070 <.LBB1_124+0x318>
80003dc8: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003dcc: 63 fe 65 29  	bgeu	a1, s6, 0x80004068 <.LBB1_124+0x310>
80003dd0: 23 24 f1 00  	sw	a5, 8(sp)
80003dd4: 13 04 00 00  	mv	s0, zero
80003dd8: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003ddc: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003de0: 33 86 8c 00  	add	a2, s9, s0
80003de4: 13 05 00 02  	addi	a0, zero, 32
80003de8: 93 05 0a 00  	mv	a1, s4
80003dec: 93 86 0a 00  	mv	a3, s5
80003df0: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80003df4: 13 04 14 00  	addi	s0, s0, 1
80003df8: e3 14 89 fe  	bne	s2, s0, 0x80003de0 <.LBB1_124+0x88>
80003dfc: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003e00: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80003e04: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003e08: 23 2a b1 00  	sw	a1, 20(sp)
80003e0c: b3 8c 8c 00  	add	s9, s9, s0
80003e10: 13 09 0c 00  	mv	s2, s8
80003e14: 6f 00 c0 25  	j	0x80004070 <.LBB1_124+0x318>
80003e18: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003e1c: 13 07 c1 01  	addi	a4, sp, 28
80003e20: 93 08 00 01  	addi	a7, zero, 16
80003e24: 13 0e 80 00  	addi	t3, zero, 8
80003e28: 13 05 09 00  	mv	a0, s2
80003e2c: 93 05 0a 00  	mv	a1, s4
80003e30: 13 86 0c 00  	mv	a2, s9
80003e34: 93 86 0a 00  	mv	a3, s5
80003e38: 13 08 00 00  	mv	a6, zero
80003e3c: 93 83 0b 00  	mv	t2, s7
80003e40: 97 10 00 00  	auipc	ra, 1
80003e44: e7 80 00 fa  	jalr	-96(ra)
80003e48: 13 0c 05 00  	mv	s8, a0
80003e4c: 6f 00 00 21  	j	0x8000405c <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003e50: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80003e54: 63 14 08 00  	bnez	a6, 0x80003e5c <.LBB1_124+0x104>
80003e58: 13 74 f4 fe  	andi	s0, s0, -17
80003e5c: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003e60: 13 76 04 40  	andi	a2, s0, 1024
80003e64: 13 56 a6 00  	srli	a2, a2, 10
80003e68: b3 f5 c5 00  	and	a1, a1, a2
80003e6c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003e70: 63 9c 05 06  	bnez	a1, 0x80003ee8 <.LBB1_124+0x190>
80003e74: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003e78: 13 56 f8 41  	srai	a2, a6, 31
80003e7c: b3 06 c8 00  	add	a3, a6, a2
80003e80: b3 c6 c6 00  	xor	a3, a3, a2
80003e84: 13 76 04 02  	andi	a2, s0, 32
80003e88: 13 46 16 06  	xori	a2, a2, 97
80003e8c: 93 08 66 0f  	addi	a7, a2, 246
80003e90: 6f 00 40 03  	j	0x80003ec4 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003e94: 33 05 f6 00  	add	a0, a2, a5
80003e98: 93 87 15 00  	addi	a5, a1, 1
80003e9c: 13 06 c1 01  	addi	a2, sp, 28
80003ea0: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ea4: b3 b6 86 01  	sltu	a3, a3, s8
80003ea8: 93 c6 16 00  	xori	a3, a3, 1
80003eac: 93 b5 f5 01  	sltiu	a1, a1, 31
80003eb0: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003eb4: 23 00 a6 00  	sb	a0, 0(a2)
80003eb8: 93 85 07 00  	mv	a1, a5
80003ebc: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ec0: 63 84 04 02  	beqz	s1, 0x80003ee8 <.LBB1_124+0x190>
;       value /= base;
80003ec4: 33 d7 86 03  	divu	a4, a3, s8
80003ec8: 33 06 87 03  	mul	a2, a4, s8
80003ecc: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003ed0: 13 f5 e7 0f  	andi	a0, a5, 254
80003ed4: 13 06 00 03  	addi	a2, zero, 48
80003ed8: 93 04 a0 00  	addi	s1, zero, 10
80003edc: e3 6c 95 fa  	bltu	a0, s1, 0x80003e94 <.LBB1_124+0x13c>
80003ee0: 13 86 08 00  	mv	a2, a7
80003ee4: 6f f0 1f fb  	j	0x80003e94 <.LBB1_124+0x13c>
80003ee8: 93 89 49 00  	addi	s3, s3, 4
80003eec: 13 58 f8 01  	srli	a6, a6, 31
80003ef0: 13 07 c1 01  	addi	a4, sp, 28
80003ef4: 13 05 09 00  	mv	a0, s2
80003ef8: 93 05 0a 00  	mv	a1, s4
80003efc: 13 86 0c 00  	mv	a2, s9
80003f00: 93 86 0a 00  	mv	a3, s5
80003f04: 6f 00 80 13  	j	0x8000403c <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80003f08: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003f0c: 63 14 05 00  	bnez	a0, 0x80003f14 <.LBB1_124+0x1bc>
80003f10: 13 74 f4 fe  	andi	s0, s0, -17
80003f14: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f18: 13 76 04 40  	andi	a2, s0, 1024
80003f1c: 13 56 a6 00  	srli	a2, a2, 10
80003f20: b3 f5 c5 00  	and	a1, a1, a2
80003f24: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f28: 63 9c 05 0e  	bnez	a1, 0x80004020 <.LBB1_124+0x2c8>
80003f2c: 13 06 00 00  	mv	a2, zero
80003f30: 93 75 04 02  	andi	a1, s0, 32
80003f34: 93 c5 15 06  	xori	a1, a1, 97
80003f38: 13 88 65 0f  	addi	a6, a1, 246
80003f3c: 6f 00 40 03  	j	0x80003f70 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f40: 33 87 e7 00  	add	a4, a5, a4
80003f44: 93 07 16 00  	addi	a5, a2, 1
80003f48: 93 05 c1 01  	addi	a1, sp, 28
80003f4c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f50: 33 35 85 01  	sltu	a0, a0, s8
80003f54: 13 45 15 00  	xori	a0, a0, 1
80003f58: 13 36 f6 01  	sltiu	a2, a2, 31
80003f5c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f60: 23 80 e4 00  	sb	a4, 0(s1)
80003f64: 13 86 07 00  	mv	a2, a5
80003f68: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f6c: 63 8a 05 0a  	beqz	a1, 0x80004020 <.LBB1_124+0x2c8>
;       value /= base;
80003f70: b3 56 85 03  	divu	a3, a0, s8
80003f74: 33 87 86 03  	mul	a4, a3, s8
80003f78: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f7c: 93 74 e7 0f  	andi	s1, a4, 254
80003f80: 93 07 00 03  	addi	a5, zero, 48
80003f84: 93 05 a0 00  	addi	a1, zero, 10
80003f88: e3 ec b4 fa  	bltu	s1, a1, 0x80003f40 <.LBB1_124+0x1e8>
80003f8c: 93 07 08 00  	mv	a5, a6
80003f90: 6f f0 1f fb  	j	0x80003f40 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003f94: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80003f98: 63 14 05 00  	bnez	a0, 0x80003fa0 <.LBB1_124+0x248>
80003f9c: 13 74 f4 fe  	andi	s0, s0, -17
80003fa0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003fa4: 13 76 04 40  	andi	a2, s0, 1024
80003fa8: 13 56 a6 00  	srli	a2, a2, 10
80003fac: b3 f5 c5 00  	and	a1, a1, a2
80003fb0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003fb4: 63 96 05 06  	bnez	a1, 0x80004020 <.LBB1_124+0x2c8>
80003fb8: 13 06 00 00  	mv	a2, zero
80003fbc: 93 75 04 02  	andi	a1, s0, 32
80003fc0: 93 c5 15 06  	xori	a1, a1, 97
80003fc4: 13 88 65 0f  	addi	a6, a1, 246
80003fc8: 6f 00 40 03  	j	0x80003ffc <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003fcc: 33 87 e7 00  	add	a4, a5, a4
80003fd0: 93 07 16 00  	addi	a5, a2, 1
80003fd4: 93 05 c1 01  	addi	a1, sp, 28
80003fd8: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003fdc: 33 35 85 01  	sltu	a0, a0, s8
80003fe0: 13 45 15 00  	xori	a0, a0, 1
80003fe4: 13 36 f6 01  	sltiu	a2, a2, 31
80003fe8: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003fec: 23 80 e4 00  	sb	a4, 0(s1)
80003ff0: 13 86 07 00  	mv	a2, a5
80003ff4: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ff8: 63 84 05 02  	beqz	a1, 0x80004020 <.LBB1_124+0x2c8>
;       value /= base;
80003ffc: b3 56 85 03  	divu	a3, a0, s8
80004000: 33 87 86 03  	mul	a4, a3, s8
80004004: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004008: 93 74 e7 0f  	andi	s1, a4, 254
8000400c: 93 07 00 03  	addi	a5, zero, 48
80004010: 93 05 a0 00  	addi	a1, zero, 10
80004014: e3 ec b4 fa  	bltu	s1, a1, 0x80003fcc <.LBB1_124+0x274>
80004018: 93 07 08 00  	mv	a5, a6
8000401c: 6f f0 1f fb  	j	0x80003fcc <.LBB1_124+0x274>
80004020: 93 89 49 00  	addi	s3, s3, 4
80004024: 13 07 c1 01  	addi	a4, sp, 28
80004028: 13 05 09 00  	mv	a0, s2
8000402c: 93 05 0a 00  	mv	a1, s4
80004030: 13 86 0c 00  	mv	a2, s9
80004034: 93 86 0a 00  	mv	a3, s5
80004038: 13 08 00 00  	mv	a6, zero
8000403c: 93 08 0c 00  	mv	a7, s8
80004040: 93 83 0b 00  	mv	t2, s7
80004044: 13 0e 0b 00  	mv	t3, s6
80004048: 93 0e 04 00  	mv	t4, s0
8000404c: 97 10 00 00  	auipc	ra, 1
80004050: e7 80 40 d9  	jalr	-620(ra)
80004054: 13 0c 05 00  	mv	s8, a0
80004058: 13 0b 50 02  	addi	s6, zero, 37
8000405c: 93 0b e0 02  	addi	s7, zero, 46
80004060: 13 04 1d 00  	addi	s0, s10, 1
80004064: 6f f0 cf d8  	j	0x800035f0 <.LBB1_183+0x30>
80004068: 93 85 15 00  	addi	a1, a1, 1
8000406c: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004070: 63 00 05 04  	beqz	a0, 0x800040b0 <.LBB1_124+0x358>
80004074: 13 84 17 00  	addi	s0, a5, 1
80004078: 6f 00 00 03  	j	0x800040a8 <.LBB1_124+0x350>
8000407c: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80004080: 13 8c 1c 00  	addi	s8, s9, 1
80004084: 13 75 f5 0f  	andi	a0, a0, 255
80004088: 93 05 0a 00  	mv	a1, s4
8000408c: 13 86 0c 00  	mv	a2, s9
80004090: 93 86 0a 00  	mv	a3, s5
80004094: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004098: 03 45 04 00  	lbu	a0, 0(s0)
8000409c: 13 04 14 00  	addi	s0, s0, 1
800040a0: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800040a4: 63 08 05 00  	beqz	a0, 0x800040b4 <.LBB1_124+0x35c>
800040a8: e3 9c 04 fc  	bnez	s1, 0x80004080 <.LBB1_124+0x328>
800040ac: e3 98 0b fc  	bnez	s7, 0x8000407c <.LBB1_124+0x324>
800040b0: 13 8c 0c 00  	mv	s8, s9
800040b4: 03 25 c1 00  	lw	a0, 12(sp)
800040b8: 13 35 15 00  	seqz	a0, a0
800040bc: 03 26 41 01  	lw	a2, 20(sp)
800040c0: b3 35 66 01  	sltu	a1, a2, s6
800040c4: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800040c8: 33 65 b5 00  	or	a0, a0, a1
800040cc: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
800040d0: e3 14 05 f8  	bnez	a0, 0x80004058 <.LBB1_124+0x300>
;           while (l++ < width) {
800040d4: 33 04 cb 40  	sub	s0, s6, a2
800040d8: 93 0b e0 02  	addi	s7, zero, 46
800040dc: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800040e0: 13 0c 1c 00  	addi	s8, s8, 1
800040e4: 13 05 00 02  	addi	a0, zero, 32
800040e8: 93 05 0a 00  	mv	a1, s4
800040ec: 93 86 0a 00  	mv	a3, s5
800040f0: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800040f4: 13 04 f4 ff  	addi	s0, s0, -1
800040f8: e3 12 04 fe  	bnez	s0, 0x800040dc <.LBB1_124+0x384>
800040fc: 13 0b 50 02  	addi	s6, zero, 37
80004100: 13 04 1d 00  	addi	s0, s10, 1
80004104: 6f f0 cf ce  	j	0x800035f0 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80004108: 13 86 0c 00  	mv	a2, s9
8000410c: 63 e4 5c 01  	bltu	s9, s5, 0x80004114 <.LBB1_124+0x3bc>
80004110: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80004114: 13 05 00 00  	mv	a0, zero
80004118: 93 05 0a 00  	mv	a1, s4
8000411c: 93 86 0a 00  	mv	a3, s5
80004120: e7 00 09 00  	jalr	s2
;   return (int)idx;
80004124: 13 85 0c 00  	mv	a0, s9
80004128: 83 2d c1 03  	lw	s11, 60(sp)
8000412c: 03 2d 01 04  	lw	s10, 64(sp)
80004130: 83 2c 41 04  	lw	s9, 68(sp)
80004134: 03 2c 81 04  	lw	s8, 72(sp)
80004138: 83 2b c1 04  	lw	s7, 76(sp)
8000413c: 03 2b 01 05  	lw	s6, 80(sp)
80004140: 83 2a 41 05  	lw	s5, 84(sp)
80004144: 03 2a 81 05  	lw	s4, 88(sp)
80004148: 83 29 c1 05  	lw	s3, 92(sp)
8000414c: 03 29 01 06  	lw	s2, 96(sp)
80004150: 83 24 41 06  	lw	s1, 100(sp)
80004154: 03 24 81 06  	lw	s0, 104(sp)
80004158: 83 20 c1 06  	lw	ra, 108(sp)
8000415c: 13 01 01 07  	addi	sp, sp, 112
80004160: 67 80 00 00  	ret

80004164 <_out_char.llvm.11632292163828655644>:
;   if (character) {
80004164: 63 04 05 0a  	beqz	a0, 0x8000420c <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004168: f3 25 40 f1  	csrr	a1, mhartid
8000416c: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80004170: 33 86 c5 02  	mul	a2, a1, a2

80004174 <.LBB2_6>:
80004174: 97 26 00 00  	auipc	a3, 2
80004178: 93 86 06 a5  	addi	a3, a3, -1456
8000417c: b3 05 d6 00  	add	a1, a2, a3
80004180: 03 a7 05 00  	lw	a4, 0(a1)
80004184: 93 07 17 00  	addi	a5, a4, 1
80004188: 23 a0 f5 00  	sw	a5, 0(a1)
8000418c: 33 87 e5 00  	add	a4, a1, a4
80004190: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80004194: 03 a7 05 00  	lw	a4, 0(a1)
80004198: 13 07 47 c0  	addi	a4, a4, -1020
8000419c: 33 37 e0 00  	snez	a4, a4
800041a0: 13 05 65 ff  	addi	a0, a0, -10
800041a4: 33 35 a0 00  	snez	a0, a0
800041a8: 33 75 e5 00  	and	a0, a0, a4
800041ac: 63 10 05 06  	bnez	a0, 0x8000420c <.LBB2_8+0x18>
800041b0: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
800041b4: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800041b8: 23 26 05 00  	sw	zero, 12(a0)
800041bc: 93 06 00 04  	addi	a3, zero, 64
800041c0: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
800041c4: 23 2a 05 00  	sw	zero, 20(a0)
800041c8: 93 06 10 00  	addi	a3, zero, 1
800041cc: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
800041d0: 23 2e 05 00  	sw	zero, 28(a0)
800041d4: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800041d8: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800041dc: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800041e0: 23 22 05 02  	sw	zero, 36(a0)
800041e4: 23 20 c5 02  	sw	a2, 32(a0)

800041e8 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
800041e8: 17 25 00 00  	auipc	a0, 2
800041ec: 13 05 85 89  	addi	a0, a0, -1896
800041f0: 23 20 d5 00  	sw	a3, 0(a0)

800041f4 <.LBB2_8>:
800041f4: 17 25 00 00  	auipc	a0, 2
800041f8: 13 05 c5 8c  	addi	a0, a0, -1844
;         while (fromhost == 0)
800041fc: 03 26 05 00  	lw	a2, 0(a0)
80004200: e3 0e 06 fe  	beqz	a2, 0x800041fc <.LBB2_8+0x8>
;         fromhost = 0;
80004204: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80004208: 23 a0 05 00  	sw	zero, 0(a1)
; }
8000420c: 67 80 00 00  	ret

80004210 <_out_null>:
; }
80004210: 67 80 00 00  	ret

80004214 <_ftoa>:
; {
80004214: 13 01 01 f9  	addi	sp, sp, -112
80004218: 23 26 11 06  	sw	ra, 108(sp)
8000421c: 23 24 81 06  	sw	s0, 104(sp)
80004220: 23 22 91 06  	sw	s1, 100(sp)
80004224: 23 20 21 07  	sw	s2, 96(sp)
80004228: 23 2e 31 05  	sw	s3, 92(sp)
8000422c: 23 2c 41 05  	sw	s4, 88(sp)
80004230: 23 2a 51 05  	sw	s5, 84(sp)
80004234: 23 28 61 05  	sw	s6, 80(sp)
80004238: 23 26 71 05  	sw	s7, 76(sp)
8000423c: 23 24 81 05  	sw	s8, 72(sp)
80004240: 23 22 91 05  	sw	s9, 68(sp)
80004244: 23 20 a1 05  	sw	s10, 64(sp)
80004248: 27 3c 81 02  	fsd	fs0, 56(sp)
8000424c: 27 38 91 02  	fsd	fs1, 48(sp)
80004250: 27 34 21 03  	fsd	fs2, 40(sp)

80004254 <.LBB4_83>:
80004254: 97 24 00 00  	auipc	s1, 2
80004258: 93 84 44 8c  	addi	s1, s1, -1852
8000425c: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80004260: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80004264: 93 0a 08 00  	mv	s5, a6
80004268: 13 89 07 00  	mv	s2, a5
8000426c: 93 89 06 00  	mv	s3, a3
80004270: 13 0a 06 00  	mv	s4, a2
80004274: 13 8b 05 00  	mv	s6, a1
80004278: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
8000427c: 63 98 04 0e  	bnez	s1, 0x8000436c <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004280: 13 f5 2a 00  	andi	a0, s5, 2
80004284: 93 f5 3a 00  	andi	a1, s5, 3
80004288: b3 35 b0 00  	snez	a1, a1
8000428c: 13 36 59 00  	sltiu	a2, s2, 5
80004290: b3 65 b6 00  	or	a1, a2, a1
80004294: 93 5c 15 00  	srli	s9, a0, 1
80004298: 13 04 0a 00  	mv	s0, s4
8000429c: 63 96 05 02  	bnez	a1, 0x800042c8 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800042a0: 93 04 c9 ff  	addi	s1, s2, -4
800042a4: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800042a8: 13 04 16 00  	addi	s0, a2, 1
800042ac: 13 05 00 02  	addi	a0, zero, 32
800042b0: 93 05 0b 00  	mv	a1, s6
800042b4: 93 86 09 00  	mv	a3, s3
800042b8: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800042bc: 93 84 f4 ff  	addi	s1, s1, -1
800042c0: 13 06 04 00  	mv	a2, s0
800042c4: e3 92 04 fe  	bnez	s1, 0x800042a8 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
800042c8: 93 04 14 00  	addi	s1, s0, 1
800042cc: 13 05 d0 02  	addi	a0, zero, 45
800042d0: 93 05 0b 00  	mv	a1, s6
800042d4: 13 06 04 00  	mv	a2, s0
800042d8: 93 86 09 00  	mv	a3, s3
800042dc: e7 80 0b 00  	jalr	s7
800042e0: 93 0a 24 00  	addi	s5, s0, 2
800042e4: 13 05 90 06  	addi	a0, zero, 105
800042e8: 93 05 0b 00  	mv	a1, s6
800042ec: 13 86 04 00  	mv	a2, s1
800042f0: 93 86 09 00  	mv	a3, s3
800042f4: e7 80 0b 00  	jalr	s7
800042f8: 13 0c 34 00  	addi	s8, s0, 3
800042fc: 13 05 e0 06  	addi	a0, zero, 110
80004300: 93 05 0b 00  	mv	a1, s6
80004304: 13 86 0a 00  	mv	a2, s5
80004308: 93 86 09 00  	mv	a3, s3
8000430c: e7 80 0b 00  	jalr	s7
80004310: 93 04 44 00  	addi	s1, s0, 4
80004314: 13 05 60 06  	addi	a0, zero, 102
80004318: 93 05 0b 00  	mv	a1, s6
8000431c: 13 06 0c 00  	mv	a2, s8
80004320: 93 86 09 00  	mv	a3, s3
80004324: e7 80 0b 00  	jalr	s7
80004328: 33 85 44 41  	sub	a0, s1, s4
8000432c: 33 35 25 01  	sltu	a0, a0, s2
80004330: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004334: 93 c5 1c 00  	xori	a1, s9, 1
80004338: 33 e5 a5 00  	or	a0, a1, a0
8000433c: 63 16 05 56  	bnez	a0, 0x800048a8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004340: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004344: 13 84 14 00  	addi	s0, s1, 1
80004348: 13 05 00 02  	addi	a0, zero, 32
8000434c: 93 05 0b 00  	mv	a1, s6
80004350: 13 86 04 00  	mv	a2, s1
80004354: 93 86 09 00  	mv	a3, s3
80004358: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
8000435c: 33 05 8a 00  	add	a0, s4, s0
80004360: 93 04 04 00  	mv	s1, s0
80004364: e3 60 25 ff  	bltu	a0, s2, 0x80004344 <.LBB4_83+0xf0>
80004368: 6f 00 40 54  	j	0x800048ac <.LBB4_90+0x378>
8000436c: 53 04 a5 22  	fmv.d	fs0, fa0

80004370 <.LBB4_84>:
80004370: 17 15 00 00  	auipc	a0, 1
80004374: 13 05 05 7b  	addi	a0, a0, 1968
80004378: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
8000437c: 53 05 05 a2  	fle.d	a0, fa0, ft0
80004380: 63 1e 05 00  	bnez	a0, 0x8000439c <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80004384: 93 f5 4a 00  	andi	a1, s5, 4
80004388: 13 b5 15 00  	seqz	a0, a1
8000438c: 63 82 05 06  	beqz	a1, 0x800043f0 <.LBB4_88>

80004390 <.LBB4_85>:
80004390: 17 1c 00 00  	auipc	s8, 1
80004394: 13 0c 0c 4b  	addi	s8, s8, 1200
80004398: 6f 00 00 06  	j	0x800043f8 <.LBB4_88+0x8>

8000439c <.LBB4_86>:
8000439c: 17 15 00 00  	auipc	a0, 1
800043a0: 13 05 c5 78  	addi	a0, a0, 1932
800043a4: 07 30 05 00  	fld	ft0, 0(a0)

800043a8 <.LBB4_87>:
800043a8: 17 15 00 00  	auipc	a0, 1
800043ac: 13 05 85 78  	addi	a0, a0, 1928
800043b0: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
800043b4: 53 05 04 a2  	fle.d	a0, fs0, ft0
800043b8: d3 85 80 a2  	fle.d	a1, ft1, fs0
800043bc: 33 75 b5 00  	and	a0, a0, a1
800043c0: 63 1e 05 0e  	bnez	a0, 0x800044bc <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
800043c4: 13 85 0b 00  	mv	a0, s7
800043c8: 93 05 0b 00  	mv	a1, s6
800043cc: 13 06 0a 00  	mv	a2, s4
800043d0: 93 86 09 00  	mv	a3, s3
800043d4: 53 05 84 22  	fmv.d	fa0, fs0
800043d8: 93 07 09 00  	mv	a5, s2
800043dc: 13 88 0a 00  	mv	a6, s5
800043e0: 97 00 00 00  	auipc	ra, 0
800043e4: e7 80 40 51  	jalr	1300(ra)
800043e8: 13 04 05 00  	mv	s0, a0
800043ec: 6f 00 00 4c  	j	0x800048ac <.LBB4_90+0x378>

800043f0 <.LBB4_88>:
800043f0: 17 1c 00 00  	auipc	s8, 1
800043f4: 13 0c fc 46  	addi	s8, s8, 1135
800043f8: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800043fc: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004400: 13 f5 3a 00  	andi	a0, s5, 3
80004404: 33 35 a0 00  	snez	a0, a0
80004408: b3 b5 2c 01  	sltu	a1, s9, s2
8000440c: 93 c5 15 00  	xori	a1, a1, 1
80004410: 33 65 b5 00  	or	a0, a0, a1
80004414: 93 fa 2a 00  	andi	s5, s5, 2
80004418: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000441c: 63 16 05 02  	bnez	a0, 0x80004448 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80004420: 33 04 99 41  	sub	s0, s2, s9
80004424: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004428: 93 04 16 00  	addi	s1, a2, 1
8000442c: 13 05 00 02  	addi	a0, zero, 32
80004430: 93 05 0b 00  	mv	a1, s6
80004434: 93 86 09 00  	mv	a3, s3
80004438: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
8000443c: 13 04 f4 ff  	addi	s0, s0, -1
80004440: 13 86 04 00  	mv	a2, s1
80004444: e3 12 04 fe  	bnez	s0, 0x80004428 <.LBB4_88+0x38>
80004448: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
8000444c: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004450: 33 05 9c 01  	add	a0, s8, s9
80004454: 03 45 05 00  	lbu	a0, 0(a0)
80004458: 13 86 04 00  	mv	a2, s1
8000445c: 13 84 fc ff  	addi	s0, s9, -1
80004460: 93 84 14 00  	addi	s1, s1, 1
80004464: 93 05 0b 00  	mv	a1, s6
80004468: 93 86 09 00  	mv	a3, s3
8000446c: e7 80 0b 00  	jalr	s7
80004470: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80004474: e3 1e 04 fc  	bnez	s0, 0x80004450 <.LBB4_88+0x60>
80004478: 33 85 44 41  	sub	a0, s1, s4
8000447c: 33 35 25 01  	sltu	a0, a0, s2
80004480: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004484: 93 c5 1a 00  	xori	a1, s5, 1
80004488: 33 e5 a5 00  	or	a0, a1, a0
8000448c: 63 1e 05 40  	bnez	a0, 0x800048a8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004490: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004494: 13 84 14 00  	addi	s0, s1, 1
80004498: 13 05 00 02  	addi	a0, zero, 32
8000449c: 93 05 0b 00  	mv	a1, s6
800044a0: 13 86 04 00  	mv	a2, s1
800044a4: 93 86 09 00  	mv	a3, s3
800044a8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800044ac: 33 05 8a 00  	add	a0, s4, s0
800044b0: 93 04 04 00  	mv	s1, s0
800044b4: e3 60 25 ff  	bltu	a0, s2, 0x80004494 <.LBB4_88+0xa4>
800044b8: 6f 00 40 3f  	j	0x800048ac <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
800044bc: 13 f5 0a 40  	andi	a0, s5, 1024
800044c0: 13 0c 60 00  	addi	s8, zero, 6
800044c4: 63 04 05 00  	beqz	a0, 0x800044cc <.LBB4_88+0xdc>
800044c8: 13 0c 07 00  	mv	s8, a4
800044cc: 13 05 a0 00  	addi	a0, zero, 10
800044d0: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800044d4: 63 6c ac 02  	bltu	s8, a0, 0x8000450c <.LBB4_88+0x11c>
800044d8: 93 04 6c ff  	addi	s1, s8, -10
800044dc: 13 05 f0 01  	addi	a0, zero, 31
800044e0: 63 e4 a4 00  	bltu	s1, a0, 0x800044e8 <.LBB4_88+0xf8>
800044e4: 93 04 f0 01  	addi	s1, zero, 31
800044e8: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
800044ec: 13 05 81 00  	addi	a0, sp, 8
800044f0: 93 05 00 03  	addi	a1, zero, 48
800044f4: 13 06 04 00  	mv	a2, s0
800044f8: 97 c0 ff ff  	auipc	ra, 1048572
800044fc: e7 80 00 06  	jalr	96(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004500: 13 c5 f4 ff  	not	a0, s1
80004504: 33 0c ac 00  	add	s8, s8, a0
80004508: 6f 00 80 00  	j	0x80004510 <.LBB4_88+0x120>
8000450c: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80004510: 13 15 3c 00  	slli	a0, s8, 3

80004514 <.LBB4_89>:
80004514: 97 15 00 00  	auipc	a1, 1
80004518: 93 85 c5 50  	addi	a1, a1, 1292
8000451c: 33 05 b5 00  	add	a0, a0, a1
80004520: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80004524: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80004528: 53 80 04 d2  	fcvt.d.w	ft0, s1
8000452c: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80004530: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80004534 <.LBB4_90>:
80004534: 17 15 00 00  	auipc	a0, 1
80004538: 13 05 45 60  	addi	a0, a0, 1540
8000453c: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80004540: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80004544: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80004548: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
8000454c: d3 05 01 a2  	fle.d	a1, ft2, ft0
80004550: 63 90 05 02  	bnez	a1, 0x80004570 <.LBB4_90+0x3c>
;     ++frac;
80004554: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80004558: 53 01 15 d2  	fcvt.d.wu	ft2, a0
8000455c: d3 15 11 a2  	flt.d	a1, ft2, ft1
80004560: 63 94 05 02  	bnez	a1, 0x80004588 <.LBB4_90+0x54>
80004564: 13 05 00 00  	mv	a0, zero
;       ++whole;
80004568: 93 84 14 00  	addi	s1, s1, 1
8000456c: 6f 00 c0 01  	j	0x80004588 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80004570: d3 15 01 a2  	flt.d	a1, ft2, ft0
80004574: 63 9a 05 00  	bnez	a1, 0x80004588 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80004578: 93 35 15 00  	seqz	a1, a0
8000457c: 13 76 15 00  	andi	a2, a0, 1
80004580: b3 65 b6 00  	or	a1, a2, a1
80004584: 33 85 a5 00  	add	a0, a1, a0
80004588: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
8000458c: 63 0c 0c 0c  	beqz	s8, 0x80004664 <.LBB4_90+0x130>
80004590: 13 06 00 00  	mv	a2, zero
80004594: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004598: 33 83 85 00  	add	t1, a1, s0
8000459c: 93 02 00 02  	addi	t0, zero, 32
800045a0: 33 87 82 40  	sub	a4, t0, s0
800045a4: b7 d5 cc cc  	lui	a1, 838861
800045a8: 93 83 d5 cc  	addi	t2, a1, -819
800045ac: 13 08 a0 00  	addi	a6, zero, 10
800045b0: 93 08 90 00  	addi	a7, zero, 9
800045b4: 63 04 c7 0c  	beq	a4, a2, 0x8000467c <.LBB4_90+0x148>
800045b8: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
800045bc: 33 35 75 02  	mulhu	a0, a0, t2
800045c0: 13 55 35 00  	srli	a0, a0, 3
800045c4: b3 06 05 03  	mul	a3, a0, a6
800045c8: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
800045cc: 93 e6 06 03  	ori	a3, a3, 48
800045d0: b3 07 c3 00  	add	a5, t1, a2
800045d4: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
800045d8: 13 06 16 00  	addi	a2, a2, 1
800045dc: e3 ec b8 fc  	bltu	a7, a1, 0x800045b4 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800045e0: 33 05 c4 00  	add	a0, s0, a2
800045e4: 93 05 f5 ff  	addi	a1, a0, -1
800045e8: 93 06 e0 01  	addi	a3, zero, 30
800045ec: b3 b6 b6 00  	sltu	a3, a3, a1
800045f0: 33 47 cc 00  	xor	a4, s8, a2
800045f4: 13 37 17 00  	seqz	a4, a4
800045f8: b3 e6 e6 00  	or	a3, a3, a4
800045fc: 63 94 06 08  	bnez	a3, 0x80004684 <.LBB4_90+0x150>
80004600: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004604: 33 05 85 00  	add	a0, a0, s0
80004608: 93 45 f6 ff  	not	a1, a2
8000460c: 33 8c 85 01  	add	s8, a1, s8
80004610: 33 04 c4 00  	add	s0, s0, a2
80004614: 93 05 f0 01  	addi	a1, zero, 31
80004618: b3 86 85 40  	sub	a3, a1, s0
8000461c: 33 05 c5 00  	add	a0, a0, a2
80004620: 93 05 0c 00  	mv	a1, s8
80004624: 63 64 dc 00  	bltu	s8, a3, 0x8000462c <.LBB4_90+0xf8>
80004628: 93 85 06 00  	mv	a1, a3
8000462c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004630: 93 05 00 03  	addi	a1, zero, 48
80004634: 97 c0 ff ff  	auipc	ra, 1048572
80004638: e7 80 40 f2  	jalr	-220(ra)
8000463c: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004640: b3 05 a4 00  	add	a1, s0, a0
80004644: 93 b5 f5 01  	sltiu	a1, a1, 31
80004648: 33 46 ac 00  	xor	a2, s8, a0
8000464c: 33 36 c0 00  	snez	a2, a2
80004650: 33 f6 c5 00  	and	a2, a1, a2
80004654: 13 05 15 00  	addi	a0, a0, 1
80004658: e3 14 06 fe  	bnez	a2, 0x80004640 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
8000465c: 33 05 a4 00  	add	a0, s0, a0
80004660: 6f 00 80 02  	j	0x80004688 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80004664: d3 80 04 d2  	fcvt.d.w	ft1, s1
80004668: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
8000466c: 53 05 10 a2  	fle.d	a0, ft0, ft1
80004670: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004674: b3 84 a4 00  	add	s1, s1, a0
80004678: 6f 00 c0 03  	j	0x800046b4 <.LBB4_90+0x180>
8000467c: 13 04 00 02  	addi	s0, zero, 32
80004680: 6f 00 80 03  	j	0x800046b8 <.LBB4_90+0x184>
80004684: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004688: 63 8e 05 00  	beqz	a1, 0x800046a4 <.LBB4_90+0x170>
;       buf[len++] = '.';
8000468c: 13 04 15 00  	addi	s0, a0, 1
80004690: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80004694: 33 85 a5 00  	add	a0, a1, a0
80004698: 93 05 e0 02  	addi	a1, zero, 46
8000469c: 23 00 b5 00  	sb	a1, 0(a0)
800046a0: 6f 00 80 00  	j	0x800046a8 <.LBB4_90+0x174>
800046a4: 13 04 05 00  	mv	s0, a0
800046a8: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800046ac: 93 02 04 00  	mv	t0, s0
800046b0: 63 64 85 00  	bltu	a0, s0, 0x800046b8 <.LBB4_90+0x184>
800046b4: 93 02 00 02  	addi	t0, zero, 32
800046b8: d3 1c 94 a2  	flt.d	s9, fs0, fs1
800046bc: 37 65 66 66  	lui	a0, 419430
800046c0: 93 05 75 66  	addi	a1, a0, 1639
800046c4: 13 08 a0 00  	addi	a6, zero, 10
800046c8: 93 06 81 00  	addi	a3, sp, 8
800046cc: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800046d0: 63 80 82 04  	beq	t0, s0, 0x80004710 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
800046d4: 33 95 b4 02  	mulh	a0, s1, a1
800046d8: 93 57 f5 01  	srli	a5, a0, 31
800046dc: 13 55 25 40  	srai	a0, a0, 2
800046e0: 33 05 f5 00  	add	a0, a0, a5
800046e4: b3 07 05 03  	mul	a5, a0, a6
800046e8: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
800046ec: 93 87 07 03  	addi	a5, a5, 48
800046f0: 13 0c 14 00  	addi	s8, s0, 1
800046f4: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
800046f8: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
800046fc: 23 00 f4 00  	sb	a5, 0(s0)
80004700: 13 04 0c 00  	mv	s0, s8
80004704: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80004708: e3 64 c7 fc  	bltu	a4, a2, 0x800046d0 <.LBB4_90+0x19c>
8000470c: 6f 00 80 00  	j	0x80004714 <.LBB4_90+0x1e0>
80004710: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004714: 93 f4 3a 00  	andi	s1, s5, 3
80004718: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
8000471c: 63 96 a4 06  	bne	s1, a0, 0x80004788 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004720: 63 0c 09 00  	beqz	s2, 0x80004738 <.LBB4_90+0x204>
80004724: 13 f5 ca 00  	andi	a0, s5, 12
80004728: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000472c: 33 e5 ac 00  	or	a0, s9, a0
80004730: 33 09 a9 40  	sub	s2, s2, a0
80004734: 6f 00 80 00  	j	0x8000473c <.LBB4_90+0x208>
80004738: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000473c: 33 35 2c 01  	sltu	a0, s8, s2
80004740: 93 45 15 00  	xori	a1, a0, 1
80004744: 13 05 f0 01  	addi	a0, zero, 31
80004748: 33 36 85 01  	sltu	a2, a0, s8
8000474c: b3 65 b6 00  	or	a1, a2, a1
80004750: 63 9c 05 02  	bnez	a1, 0x80004788 <.LBB4_90+0x254>
80004754: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004758: 93 45 fc ff  	not	a1, s8
8000475c: b3 05 b9 00  	add	a1, s2, a1
80004760: 33 06 85 41  	sub	a2, a0, s8
80004764: 33 85 86 01  	add	a0, a3, s8
80004768: 63 e4 c5 00  	bltu	a1, a2, 0x80004770 <.LBB4_90+0x23c>
8000476c: 93 05 06 00  	mv	a1, a2
80004770: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80004774: 93 05 00 03  	addi	a1, zero, 48
80004778: 13 06 04 00  	mv	a2, s0
8000477c: 97 c0 ff ff  	auipc	ra, 1048572
80004780: e7 80 c0 dd  	jalr	-548(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004784: 33 0c 84 01  	add	s8, s0, s8
80004788: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
8000478c: 63 6a 85 05  	bltu	a0, s8, 0x800047e0 <.LBB4_90+0x2ac>
;     if (negative) {
80004790: 63 8c 0c 00  	beqz	s9, 0x800047a8 <.LBB4_90+0x274>
80004794: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80004798: 33 05 85 01  	add	a0, a0, s8
8000479c: 13 0c 1c 00  	addi	s8, s8, 1
800047a0: 93 05 d0 02  	addi	a1, zero, 45
800047a4: 6f 00 80 03  	j	0x800047dc <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800047a8: 13 f5 4a 00  	andi	a0, s5, 4
800047ac: 63 10 05 02  	bnez	a0, 0x800047cc <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800047b0: 13 f5 8a 00  	andi	a0, s5, 8
800047b4: 63 06 05 02  	beqz	a0, 0x800047e0 <.LBB4_90+0x2ac>
800047b8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800047bc: 33 05 85 01  	add	a0, a0, s8
800047c0: 13 0c 1c 00  	addi	s8, s8, 1
800047c4: 93 05 00 02  	addi	a1, zero, 32
800047c8: 6f 00 40 01  	j	0x800047dc <.LBB4_90+0x2a8>
800047cc: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
800047d0: 33 05 85 01  	add	a0, a0, s8
800047d4: 13 0c 1c 00  	addi	s8, s8, 1
800047d8: 93 05 b0 02  	addi	a1, zero, 43
800047dc: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800047e0: 33 35 90 00  	snez	a0, s1
800047e4: b3 35 2c 01  	sltu	a1, s8, s2
800047e8: 93 c5 15 00  	xori	a1, a1, 1
800047ec: 33 65 b5 00  	or	a0, a0, a1
800047f0: 93 fa 2a 00  	andi	s5, s5, 2
800047f4: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800047f8: 63 16 05 02  	bnez	a0, 0x80004824 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
800047fc: b3 04 89 41  	sub	s1, s2, s8
80004800: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004804: 13 04 16 00  	addi	s0, a2, 1
80004808: 13 05 00 02  	addi	a0, zero, 32
8000480c: 93 05 0b 00  	mv	a1, s6
80004810: 93 86 09 00  	mv	a3, s3
80004814: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004818: 93 84 f4 ff  	addi	s1, s1, -1
8000481c: 13 06 04 00  	mv	a2, s0
80004820: e3 92 04 fe  	bnez	s1, 0x80004804 <.LBB4_90+0x2d0>
80004824: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004828: 63 0c 0c 02  	beqz	s8, 0x80004860 <.LBB4_90+0x32c>
8000482c: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80004830: 33 85 8c 01  	add	a0, s9, s8
80004834: 03 45 05 00  	lbu	a0, 0(a0)
80004838: 13 0d fc ff  	addi	s10, s8, -1
8000483c: 93 04 14 00  	addi	s1, s0, 1
80004840: 93 05 0b 00  	mv	a1, s6
80004844: 13 06 04 00  	mv	a2, s0
80004848: 93 86 09 00  	mv	a3, s3
8000484c: e7 80 0b 00  	jalr	s7
80004850: 13 84 04 00  	mv	s0, s1
80004854: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80004858: e3 1c 0d fc  	bnez	s10, 0x80004830 <.LBB4_90+0x2fc>
8000485c: 6f 00 80 00  	j	0x80004864 <.LBB4_90+0x330>
80004860: 93 04 04 00  	mv	s1, s0
80004864: 33 85 44 41  	sub	a0, s1, s4
80004868: 33 35 25 01  	sltu	a0, a0, s2
8000486c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004870: 93 c5 1a 00  	xori	a1, s5, 1
80004874: 33 e5 a5 00  	or	a0, a1, a0
80004878: 63 18 05 02  	bnez	a0, 0x800048a8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000487c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004880: 13 84 14 00  	addi	s0, s1, 1
80004884: 13 05 00 02  	addi	a0, zero, 32
80004888: 93 05 0b 00  	mv	a1, s6
8000488c: 13 86 04 00  	mv	a2, s1
80004890: 93 86 09 00  	mv	a3, s3
80004894: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004898: 33 05 8a 00  	add	a0, s4, s0
8000489c: 93 04 04 00  	mv	s1, s0
800048a0: e3 60 25 ff  	bltu	a0, s2, 0x80004880 <.LBB4_90+0x34c>
800048a4: 6f 00 80 00  	j	0x800048ac <.LBB4_90+0x378>
800048a8: 13 84 04 00  	mv	s0, s1
; }
800048ac: 13 05 04 00  	mv	a0, s0
800048b0: 07 39 81 02  	fld	fs2, 40(sp)
800048b4: 87 34 01 03  	fld	fs1, 48(sp)
800048b8: 07 34 81 03  	fld	fs0, 56(sp)
800048bc: 03 2d 01 04  	lw	s10, 64(sp)
800048c0: 83 2c 41 04  	lw	s9, 68(sp)
800048c4: 03 2c 81 04  	lw	s8, 72(sp)
800048c8: 83 2b c1 04  	lw	s7, 76(sp)
800048cc: 03 2b 01 05  	lw	s6, 80(sp)
800048d0: 83 2a 41 05  	lw	s5, 84(sp)
800048d4: 03 2a 81 05  	lw	s4, 88(sp)
800048d8: 83 29 c1 05  	lw	s3, 92(sp)
800048dc: 03 29 01 06  	lw	s2, 96(sp)
800048e0: 83 24 41 06  	lw	s1, 100(sp)
800048e4: 03 24 81 06  	lw	s0, 104(sp)
800048e8: 83 20 c1 06  	lw	ra, 108(sp)
800048ec: 13 01 01 07  	addi	sp, sp, 112
800048f0: 67 80 00 00  	ret

800048f4 <_etoa>:
; {
800048f4: 13 01 01 f8  	addi	sp, sp, -128
800048f8: 23 2e 11 06  	sw	ra, 124(sp)
800048fc: 23 2c 81 06  	sw	s0, 120(sp)
80004900: 23 2a 91 06  	sw	s1, 116(sp)
80004904: 23 28 21 07  	sw	s2, 112(sp)
80004908: 23 26 31 07  	sw	s3, 108(sp)
8000490c: 23 24 41 07  	sw	s4, 104(sp)
80004910: 23 22 51 07  	sw	s5, 100(sp)
80004914: 23 20 61 07  	sw	s6, 96(sp)
80004918: 23 2e 71 05  	sw	s7, 92(sp)
8000491c: 23 2c 81 05  	sw	s8, 88(sp)
80004920: 23 2a 91 05  	sw	s9, 84(sp)
80004924: 23 28 a1 05  	sw	s10, 80(sp)
80004928: 23 26 b1 05  	sw	s11, 76(sp)

8000492c <.LBB5_43>:
8000492c: 97 14 00 00  	auipc	s1, 1
80004930: 93 84 44 21  	addi	s1, s1, 532
80004934: 87 b0 04 00  	fld	ft1, 0(s1)

80004938 <.LBB5_44>:
80004938: 97 14 00 00  	auipc	s1, 1
8000493c: 93 84 04 21  	addi	s1, s1, 528
80004940: 07 b1 04 00  	fld	ft2, 0(s1)
80004944: 53 00 a5 22  	fmv.d	ft0, fa0
80004948: d3 04 15 a2  	fle.d	s1, fa0, ft1
8000494c: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004950: b3 f4 84 00  	and	s1, s1, s0
80004954: 93 0a 08 00  	mv	s5, a6
80004958: 13 89 07 00  	mv	s2, a5
8000495c: 93 07 07 00  	mv	a5, a4
80004960: 93 89 06 00  	mv	s3, a3
80004964: 13 0a 06 00  	mv	s4, a2
80004968: 13 8b 05 00  	mv	s6, a1
8000496c: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004970: 63 92 04 06  	bnez	s1, 0x800049d4 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004974: 13 85 0b 00  	mv	a0, s7
80004978: 93 05 0b 00  	mv	a1, s6
8000497c: 13 06 0a 00  	mv	a2, s4
80004980: 93 86 09 00  	mv	a3, s3
80004984: 53 05 00 22  	fmv.d	fa0, ft0
80004988: 13 87 07 00  	mv	a4, a5
8000498c: 93 07 09 00  	mv	a5, s2
80004990: 13 88 0a 00  	mv	a6, s5
80004994: 83 2d c1 04  	lw	s11, 76(sp)
80004998: 03 2d 01 05  	lw	s10, 80(sp)
8000499c: 83 2c 41 05  	lw	s9, 84(sp)
800049a0: 03 2c 81 05  	lw	s8, 88(sp)
800049a4: 83 2b c1 05  	lw	s7, 92(sp)
800049a8: 03 2b 01 06  	lw	s6, 96(sp)
800049ac: 83 2a 41 06  	lw	s5, 100(sp)
800049b0: 03 2a 81 06  	lw	s4, 104(sp)
800049b4: 83 29 c1 06  	lw	s3, 108(sp)
800049b8: 03 29 01 07  	lw	s2, 112(sp)
800049bc: 83 24 41 07  	lw	s1, 116(sp)
800049c0: 03 24 81 07  	lw	s0, 120(sp)
800049c4: 83 20 c1 07  	lw	ra, 124(sp)
800049c8: 13 01 01 08  	addi	sp, sp, 128
800049cc: 17 03 00 00  	auipc	t1, 0
800049d0: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
800049d4: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
800049d8: 13 f5 0a 40  	andi	a0, s5, 1024
800049dc: 13 07 60 00  	addi	a4, zero, 6
800049e0: 63 04 05 00  	beqz	a0, 0x800049e8 <.LBB5_44+0xb0>
800049e4: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
800049e8: 27 30 a1 02  	fsd	fa0, 32(sp)
800049ec: 83 25 41 02  	lw	a1, 36(sp)
800049f0: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800049f4: 93 d6 45 01  	srli	a3, a1, 20
800049f8: b7 07 10 00  	lui	a5, 256
800049fc: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004a00: b3 f5 f5 00  	and	a1, a1, a5
80004a04: 23 2c c1 00  	sw	a2, 24(sp)
80004a08: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004a0c: b3 e5 c5 00  	or	a1, a1, a2
80004a10: 23 2e b1 00  	sw	a1, 28(sp)
80004a14: 87 30 81 01  	fld	ft1, 24(sp)

80004a18 <.LBB5_45>:
80004a18: 97 15 00 00  	auipc	a1, 1
80004a1c: 93 85 85 13  	addi	a1, a1, 312
80004a20: 07 b1 05 00  	fld	ft2, 0(a1)

80004a24 <.LBB5_46>:
80004a24: 97 15 00 00  	auipc	a1, 1
80004a28: 93 85 45 13  	addi	a1, a1, 308
80004a2c: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004a30: 93 f5 f6 7f  	andi	a1, a3, 2047
80004a34: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004a38: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004a3c: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80004a40 <.LBB5_47>:
80004a40: 97 15 00 00  	auipc	a1, 1
80004a44: 93 85 05 12  	addi	a1, a1, 288
80004a48: 07 b1 05 00  	fld	ft2, 0(a1)

80004a4c <.LBB5_48>:
80004a4c: 97 15 00 00  	auipc	a1, 1
80004a50: 93 85 c5 11  	addi	a1, a1, 284
80004a54: 87 b1 05 00  	fld	ft3, 0(a1)

80004a58 <.LBB5_49>:
80004a58: 97 15 00 00  	auipc	a1, 1
80004a5c: 93 85 85 11  	addi	a1, a1, 280
80004a60: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004a64: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004a68: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004a6c: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004a70: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80004a74 <.LBB5_50>:
80004a74: 17 16 00 00  	auipc	a2, 1
80004a78: 13 06 46 10  	addi	a2, a2, 260
80004a7c: 87 31 06 00  	fld	ft3, 0(a2)

80004a80 <.LBB5_51>:
80004a80: 17 16 00 00  	auipc	a2, 1
80004a84: 13 06 06 10  	addi	a2, a2, 256
80004a88: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004a8c: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004a90: 53 01 06 d2  	fcvt.d.w	ft2, a2
80004a94: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80004a98: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004a9c: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004aa0: 13 06 f6 3f  	addi	a2, a2, 1023
80004aa4: 23 28 01 00  	sw	zero, 16(sp)
80004aa8: 13 16 46 01  	slli	a2, a2, 20
80004aac: 23 2a c1 00  	sw	a2, 20(sp)

80004ab0 <.LBB5_52>:
80004ab0: 17 16 00 00  	auipc	a2, 1
80004ab4: 13 06 06 0e  	addi	a2, a2, 224
80004ab8: 87 31 06 00  	fld	ft3, 0(a2)

80004abc <.LBB5_53>:
80004abc: 17 16 00 00  	auipc	a2, 1
80004ac0: 13 06 c6 0d  	addi	a2, a2, 220
80004ac4: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004ac8: 87 32 01 01  	fld	ft5, 16(sp)

80004acc <.LBB5_54>:
80004acc: 17 16 00 00  	auipc	a2, 1
80004ad0: 13 06 c6 0b  	addi	a2, a2, 188
80004ad4: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004ad8: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004adc <.LBB5_55>:
80004adc: 17 16 00 00  	auipc	a2, 1
80004ae0: 13 06 46 0c  	addi	a2, a2, 196
80004ae4: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004ae8: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004aec: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004af0: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004af4: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004af8: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004afc: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004b00: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80004b04: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80004b08: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004b0c: 63 0a 06 00  	beqz	a2, 0x80004b20 <.LBB5_56+0x10>

80004b10 <.LBB5_56>:
80004b10: 97 16 00 00  	auipc	a3, 1
80004b14: 93 86 86 09  	addi	a3, a3, 152
80004b18: 07 b1 06 00  	fld	ft2, 0(a3)
80004b1c: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80004b20: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004b24: 93 05 34 06  	addi	a1, s0, 99
80004b28: 93 b5 75 0c  	sltiu	a1, a1, 199
80004b2c: 13 06 50 00  	addi	a2, zero, 5
80004b30: b7 16 00 00  	lui	a3, 1
80004b34: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80004b38: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004b3c: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80004b40: 63 84 06 06  	beqz	a3, 0x80004ba8 <.LBB5_58+0x58>

80004b44 <.LBB5_57>:
80004b44: 97 15 00 00  	auipc	a1, 1
80004b48: 93 85 c5 06  	addi	a1, a1, 108
80004b4c: 07 b1 05 00  	fld	ft2, 0(a1)

80004b50 <.LBB5_58>:
80004b50: 97 15 00 00  	auipc	a1, 1
80004b54: 93 85 85 06  	addi	a1, a1, 104
80004b58: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004b5c: d3 15 25 a2  	flt.d	a1, fa0, ft2
80004b60: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80004b64: b3 e5 c5 00  	or	a1, a1, a2
80004b68: 63 98 05 00  	bnez	a1, 0x80004b78 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004b6c: 63 40 e4 02  	blt	s0, a4, 0x80004b8c <.LBB5_58+0x3c>
80004b70: 13 07 00 00  	mv	a4, zero
80004b74: 6f 00 00 02  	j	0x80004b94 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004b78: 63 06 07 02  	beqz	a4, 0x80004ba4 <.LBB5_58+0x54>
80004b7c: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004b80: 13 45 15 00  	xori	a0, a0, 1
80004b84: 33 07 a7 40  	sub	a4, a4, a0
80004b88: 6f 00 00 02  	j	0x80004ba8 <.LBB5_58+0x58>
80004b8c: 13 45 f4 ff  	not	a0, s0
80004b90: 33 07 a7 00  	add	a4, a4, a0
80004b94: 13 04 00 00  	mv	s0, zero
80004b98: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004b9c: 93 ea 0a 40  	ori	s5, s5, 1024
80004ba0: 6f 00 80 00  	j	0x80004ba8 <.LBB5_58+0x58>
80004ba4: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80004ba8: b3 05 99 41  	sub	a1, s2, s9
80004bac: 33 36 b9 00  	sltu	a2, s2, a1
80004bb0: 13 05 00 00  	mv	a0, zero
80004bb4: 63 14 06 00  	bnez	a2, 0x80004bbc <.LBB5_58+0x6c>
80004bb8: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004bbc: 93 07 00 00  	mv	a5, zero
80004bc0: 93 d5 1a 00  	srli	a1, s5, 1
80004bc4: 93 f4 15 00  	andi	s1, a1, 1
80004bc8: b3 35 90 01  	snez	a1, s9
80004bcc: b3 f5 b4 00  	and	a1, s1, a1
80004bd0: 53 01 00 d2  	fcvt.d.w	ft2, zero
80004bd4: 63 94 05 00  	bnez	a1, 0x80004bdc <.LBB5_58+0x8c>
80004bd8: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004bdc: 93 35 14 00  	seqz	a1, s0
80004be0: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004be4: 63 94 05 00  	bnez	a1, 0x80004bec <.LBB5_58+0x9c>
80004be8: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004bec: 63 04 05 00  	beqz	a0, 0x80004bf4 <.LBB5_58+0xa4>
80004bf0: 53 15 a5 22  	fneg.d	fa0, fa0
80004bf4: 37 f5 ff ff  	lui	a0, 1048575
80004bf8: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004bfc: 33 f8 aa 00  	and	a6, s5, a0
80004c00: 13 85 0b 00  	mv	a0, s7
80004c04: 93 05 0b 00  	mv	a1, s6
80004c08: 13 06 0a 00  	mv	a2, s4
80004c0c: 93 86 09 00  	mv	a3, s3
80004c10: 97 f0 ff ff  	auipc	ra, 1048575
80004c14: e7 80 40 60  	jalr	1540(ra)
80004c18: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004c1c: 63 82 0c 18  	beqz	s9, 0x80004da0 <.LBB5_58+0x250>
80004c20: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80004c24: 13 f5 0a 02  	andi	a0, s5, 32
80004c28: 13 45 55 06  	xori	a0, a0, 101
80004c2c: 93 05 0b 00  	mv	a1, s6
80004c30: 13 06 0d 00  	mv	a2, s10
80004c34: 93 86 09 00  	mv	a3, s3
80004c38: e7 80 0b 00  	jalr	s7
80004c3c: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004c40: 93 5a f4 01  	srli	s5, s0, 31
80004c44: 13 55 f4 41  	srai	a0, s0, 31
80004c48: b3 05 a4 00  	add	a1, s0, a0
80004c4c: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004c50: 93 8d dc ff  	addi	s11, s9, -3
80004c54: 13 04 f0 01  	addi	s0, zero, 31
80004c58: 37 d5 cc cc  	lui	a0, 838861
80004c5c: 13 05 d5 cc  	addi	a0, a0, -819
80004c60: 13 08 a0 00  	addi	a6, zero, 10
80004c64: 93 08 c1 02  	addi	a7, sp, 44
80004c68: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004c6c: b3 37 a7 02  	mulhu	a5, a4, a0
80004c70: 93 d5 37 00  	srli	a1, a5, 3
80004c74: b3 87 05 03  	mul	a5, a1, a6
80004c78: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004c7c: 13 e6 07 03  	ori	a2, a5, 48
80004c80: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004c84: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004c88: 13 0c 1c 00  	addi	s8, s8, 1
80004c8c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004c90: 33 b6 e2 00  	sltu	a2, t0, a4
80004c94: 33 f6 c7 00  	and	a2, a5, a2
80004c98: 93 8d fd ff  	addi	s11, s11, -1
80004c9c: 13 04 f4 ff  	addi	s0, s0, -1
80004ca0: 13 87 05 00  	mv	a4, a1
80004ca4: e3 14 06 fc  	bnez	a2, 0x80004c6c <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004ca8: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004cac: 33 35 ac 00  	sltu	a0, s8, a0
80004cb0: 13 45 15 00  	xori	a0, a0, 1
80004cb4: 93 c5 17 00  	xori	a1, a5, 1
80004cb8: 33 e5 a5 00  	or	a0, a1, a0
80004cbc: 63 12 05 04  	bnez	a0, 0x80004d00 <.LBB5_58+0x1b0>
80004cc0: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004cc4: b3 85 8c 41  	sub	a1, s9, s8
80004cc8: 93 85 d5 ff  	addi	a1, a1, -3
80004ccc: 13 06 f0 01  	addi	a2, zero, 31
80004cd0: 33 06 86 41  	sub	a2, a2, s8
80004cd4: 33 05 85 01  	add	a0, a0, s8
80004cd8: 63 e4 c5 00  	bltu	a1, a2, 0x80004ce0 <.LBB5_58+0x190>
80004cdc: 93 05 06 00  	mv	a1, a2
80004ce0: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004ce4: 93 05 00 03  	addi	a1, zero, 48
80004ce8: 97 c0 ff ff  	auipc	ra, 1048572
80004cec: e7 80 00 87  	jalr	-1936(ra)
;   if (flags & FLAGS_HASH) {
80004cf0: 63 e4 8d 00  	bltu	s11, s0, 0x80004cf8 <.LBB5_58+0x1a8>
80004cf4: 93 0d 04 00  	mv	s11, s0
80004cf8: 33 85 8d 01  	add	a0, s11, s8
80004cfc: 13 0c 15 00  	addi	s8, a0, 1
80004d00: 83 2c c1 00  	lw	s9, 12(sp)
80004d04: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004d08: 63 60 85 03  	bltu	a0, s8, 0x80004d28 <.LBB5_58+0x1d8>
80004d0c: 13 05 c1 02  	addi	a0, sp, 44
80004d10: 33 05 85 01  	add	a0, a0, s8
80004d14: 93 05 d0 02  	addi	a1, zero, 45
80004d18: 63 94 0a 00  	bnez	s5, 0x80004d20 <.LBB5_58+0x1d0>
80004d1c: 93 05 b0 02  	addi	a1, zero, 43
80004d20: 13 0c 1c 00  	addi	s8, s8, 1
80004d24: 23 00 b5 00  	sb	a1, 0(a0)
80004d28: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004d2c: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004d30: 33 85 8a 01  	add	a0, s5, s8
80004d34: 03 45 05 00  	lbu	a0, 0(a0)
80004d38: 13 06 04 00  	mv	a2, s0
80004d3c: 93 04 fc ff  	addi	s1, s8, -1
80004d40: 13 04 14 00  	addi	s0, s0, 1
80004d44: 93 05 0b 00  	mv	a1, s6
80004d48: 93 86 09 00  	mv	a3, s3
80004d4c: e7 80 0b 00  	jalr	s7
80004d50: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80004d54: e3 9e 04 fc  	bnez	s1, 0x80004d30 <.LBB5_58+0x1e0>
80004d58: 33 05 44 41  	sub	a0, s0, s4
80004d5c: 33 35 25 01  	sltu	a0, a0, s2
80004d60: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80004d64: 93 c5 1c 00  	xori	a1, s9, 1
80004d68: 33 e5 a5 00  	or	a0, a1, a0
80004d6c: 63 18 05 02  	bnez	a0, 0x80004d9c <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004d70: b3 04 40 41  	neg	s1, s4
80004d74: 13 0d 14 00  	addi	s10, s0, 1
80004d78: 13 05 00 02  	addi	a0, zero, 32
80004d7c: 93 05 0b 00  	mv	a1, s6
80004d80: 13 06 04 00  	mv	a2, s0
80004d84: 93 86 09 00  	mv	a3, s3
80004d88: e7 80 0b 00  	jalr	s7
80004d8c: 33 85 a4 01  	add	a0, s1, s10
80004d90: 13 04 0d 00  	mv	s0, s10
80004d94: e3 60 25 ff  	bltu	a0, s2, 0x80004d74 <.LBB5_58+0x224>
80004d98: 6f 00 80 00  	j	0x80004da0 <.LBB5_58+0x250>
80004d9c: 13 0d 04 00  	mv	s10, s0
; }
80004da0: 13 05 0d 00  	mv	a0, s10
80004da4: 83 2d c1 04  	lw	s11, 76(sp)
80004da8: 03 2d 01 05  	lw	s10, 80(sp)
80004dac: 83 2c 41 05  	lw	s9, 84(sp)
80004db0: 03 2c 81 05  	lw	s8, 88(sp)
80004db4: 83 2b c1 05  	lw	s7, 92(sp)
80004db8: 03 2b 01 06  	lw	s6, 96(sp)
80004dbc: 83 2a 41 06  	lw	s5, 100(sp)
80004dc0: 03 2a 81 06  	lw	s4, 104(sp)
80004dc4: 83 29 c1 06  	lw	s3, 108(sp)
80004dc8: 03 29 01 07  	lw	s2, 112(sp)
80004dcc: 83 24 41 07  	lw	s1, 116(sp)
80004dd0: 03 24 81 07  	lw	s0, 120(sp)
80004dd4: 83 20 c1 07  	lw	ra, 124(sp)
80004dd8: 13 01 01 08  	addi	sp, sp, 128
80004ddc: 67 80 00 00  	ret

80004de0 <_ntoa_format>:
; {
80004de0: 13 01 01 fc  	addi	sp, sp, -64
80004de4: 23 2e 11 02  	sw	ra, 60(sp)
80004de8: 23 2c 81 02  	sw	s0, 56(sp)
80004dec: 23 2a 91 02  	sw	s1, 52(sp)
80004df0: 23 28 21 03  	sw	s2, 48(sp)
80004df4: 23 26 31 03  	sw	s3, 44(sp)
80004df8: 23 24 41 03  	sw	s4, 40(sp)
80004dfc: 23 22 51 03  	sw	s5, 36(sp)
80004e00: 23 20 61 03  	sw	s6, 32(sp)
80004e04: 23 2e 71 01  	sw	s7, 28(sp)
80004e08: 23 2c 81 01  	sw	s8, 24(sp)
80004e0c: 23 2a 91 01  	sw	s9, 20(sp)
80004e10: 23 28 a1 01  	sw	s10, 16(sp)
80004e14: 23 26 b1 01  	sw	s11, 12(sp)
80004e18: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004e1c: 93 fa 2e 00  	andi	s5, t4, 2
80004e20: 13 09 0e 00  	mv	s2, t3
80004e24: 13 8d 03 00  	mv	s10, t2
80004e28: 93 8c 08 00  	mv	s9, a7
80004e2c: 13 8c 07 00  	mv	s8, a5
80004e30: 93 89 06 00  	mv	s3, a3
80004e34: 13 0a 06 00  	mv	s4, a2
80004e38: 13 8b 05 00  	mv	s6, a1
80004e3c: 93 0d 05 00  	mv	s11, a0
80004e40: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80004e44: 63 9e 0a 0c  	bnez	s5, 0x80004f20 <_ntoa_format+0x140>
80004e48: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004e4c: 63 0e 09 00  	beqz	s2, 0x80004e68 <_ntoa_format+0x88>
80004e50: 63 0e 04 00  	beqz	s0, 0x80004e6c <_ntoa_format+0x8c>
80004e54: 13 f5 cb 00  	andi	a0, s7, 12
80004e58: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004e5c: 33 65 05 01  	or	a0, a0, a6
80004e60: 33 09 a9 40  	sub	s2, s2, a0
80004e64: 6f 00 80 00  	j	0x80004e6c <_ntoa_format+0x8c>
80004e68: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004e6c: 33 35 ac 01  	sltu	a0, s8, s10
80004e70: 93 45 15 00  	xori	a1, a0, 1
80004e74: 13 05 f0 01  	addi	a0, zero, 31
80004e78: 33 36 85 01  	sltu	a2, a0, s8
80004e7c: b3 65 b6 00  	or	a1, a2, a1
80004e80: 63 94 05 04  	bnez	a1, 0x80004ec8 <_ntoa_format+0xe8>
80004e84: 23 22 51 01  	sw	s5, 4(sp)
80004e88: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004e8c: 93 45 fc ff  	not	a1, s8
80004e90: b3 85 a5 01  	add	a1, a1, s10
80004e94: 33 06 85 41  	sub	a2, a0, s8
80004e98: 33 05 87 01  	add	a0, a4, s8
80004e9c: 63 e4 c5 00  	bltu	a1, a2, 0x80004ea4 <_ntoa_format+0xc4>
80004ea0: 93 05 06 00  	mv	a1, a2
80004ea4: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004ea8: 93 05 00 03  	addi	a1, zero, 48
80004eac: 13 86 04 00  	mv	a2, s1
80004eb0: 97 b0 ff ff  	auipc	ra, 1048571
80004eb4: e7 80 80 6a  	jalr	1704(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004eb8: 33 8c 84 01  	add	s8, s1, s8
80004ebc: 03 27 81 00  	lw	a4, 8(sp)
80004ec0: 13 88 0a 00  	mv	a6, s5
80004ec4: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004ec8: 63 0c 04 04  	beqz	s0, 0x80004f20 <_ntoa_format+0x140>
80004ecc: 33 35 2c 01  	sltu	a0, s8, s2
80004ed0: 93 45 15 00  	xori	a1, a0, 1
80004ed4: 13 05 f0 01  	addi	a0, zero, 31
80004ed8: 33 36 85 01  	sltu	a2, a0, s8
80004edc: b3 e5 c5 00  	or	a1, a1, a2
80004ee0: 63 90 05 04  	bnez	a1, 0x80004f20 <_ntoa_format+0x140>
80004ee4: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004ee8: 93 45 fc ff  	not	a1, s8
80004eec: b3 05 b9 00  	add	a1, s2, a1
80004ef0: 33 06 85 41  	sub	a2, a0, s8
80004ef4: 33 05 87 01  	add	a0, a4, s8
80004ef8: 63 e4 c5 00  	bltu	a1, a2, 0x80004f00 <_ntoa_format+0x120>
80004efc: 93 05 06 00  	mv	a1, a2
80004f00: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004f04: 93 05 00 03  	addi	a1, zero, 48
80004f08: 13 86 04 00  	mv	a2, s1
80004f0c: 97 b0 ff ff  	auipc	ra, 1048571
80004f10: e7 80 c0 64  	jalr	1612(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f14: 33 8c 84 01  	add	s8, s1, s8
80004f18: 03 27 81 00  	lw	a4, 8(sp)
80004f1c: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004f20: 13 f5 0b 01  	andi	a0, s7, 16
80004f24: 63 02 05 0e  	beqz	a0, 0x80005008 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80004f28: 13 f5 0b 40  	andi	a0, s7, 1024
80004f2c: 13 55 a5 00  	srli	a0, a0, 10
80004f30: 93 35 1c 00  	seqz	a1, s8
80004f34: 33 65 b5 00  	or	a0, a0, a1
80004f38: 63 1e 05 02  	bnez	a0, 0x80004f74 <_ntoa_format+0x194>
80004f3c: 33 45 ac 01  	xor	a0, s8, s10
80004f40: 33 35 a0 00  	snez	a0, a0
80004f44: b3 45 2c 01  	xor	a1, s8, s2
80004f48: b3 35 b0 00  	snez	a1, a1
80004f4c: 33 75 b5 00  	and	a0, a0, a1
80004f50: 63 12 05 02  	bnez	a0, 0x80004f74 <_ntoa_format+0x194>
;       len--;
80004f54: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80004f58: b3 35 a0 00  	snez	a1, a0
80004f5c: 13 86 0c ff  	addi	a2, s9, -16
80004f60: 13 36 16 00  	seqz	a2, a2
80004f64: b3 75 b6 00  	and	a1, a2, a1
80004f68: 63 84 05 00  	beqz	a1, 0x80004f70 <_ntoa_format+0x190>
80004f6c: 13 05 ec ff  	addi	a0, s8, -2
80004f70: 13 0c 05 00  	mv	s8, a0
80004f74: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f78: 63 96 ac 02  	bne	s9, a0, 0x80004fa4 <_ntoa_format+0x1c4>
80004f7c: 13 f5 0b 02  	andi	a0, s7, 32
80004f80: 93 55 55 00  	srli	a1, a0, 5
80004f84: 13 06 f0 01  	addi	a2, zero, 31
80004f88: 33 36 86 01  	sltu	a2, a2, s8
80004f8c: b3 e5 c5 00  	or	a1, a1, a2
80004f90: 63 9e 05 02  	bnez	a1, 0x80004fcc <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004f94: 33 05 87 01  	add	a0, a4, s8
80004f98: 13 0c 1c 00  	addi	s8, s8, 1
80004f9c: 93 05 80 07  	addi	a1, zero, 120
80004fa0: 6f 00 c0 04  	j	0x80004fec <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004fa4: 13 85 ec ff  	addi	a0, s9, -2
80004fa8: 33 35 a0 00  	snez	a0, a0
80004fac: 93 05 f0 01  	addi	a1, zero, 31
80004fb0: b3 b5 85 01  	sltu	a1, a1, s8
80004fb4: 33 65 b5 00  	or	a0, a0, a1
80004fb8: 63 1c 05 02  	bnez	a0, 0x80004ff0 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004fbc: 33 05 87 01  	add	a0, a4, s8
80004fc0: 13 0c 1c 00  	addi	s8, s8, 1
80004fc4: 93 05 20 06  	addi	a1, zero, 98
80004fc8: 6f 00 40 02  	j	0x80004fec <_ntoa_format+0x20c>
80004fcc: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004fd0: 13 35 15 00  	seqz	a0, a0
80004fd4: 93 c5 15 00  	xori	a1, a1, 1
80004fd8: 33 65 b5 00  	or	a0, a0, a1
80004fdc: 63 1a 05 00  	bnez	a0, 0x80004ff0 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004fe0: 33 05 87 01  	add	a0, a4, s8
80004fe4: 13 0c 1c 00  	addi	s8, s8, 1
80004fe8: 93 05 80 05  	addi	a1, zero, 88
80004fec: 23 00 b5 00  	sb	a1, 0(a0)
80004ff0: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004ff4: 63 60 85 07  	bltu	a0, s8, 0x80005054 <_ntoa_format+0x274>
;       buf[len++] = '0';
80004ff8: 33 05 87 01  	add	a0, a4, s8
80004ffc: 13 0c 1c 00  	addi	s8, s8, 1
80005000: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80005004: 23 00 b5 00  	sb	a1, 0(a0)
80005008: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000500c: 63 64 85 05  	bltu	a0, s8, 0x80005054 <_ntoa_format+0x274>
;     if (negative) {
80005010: 63 0a 08 00  	beqz	a6, 0x80005024 <_ntoa_format+0x244>
;       buf[len++] = '-';
80005014: 33 05 87 01  	add	a0, a4, s8
80005018: 13 0c 1c 00  	addi	s8, s8, 1
8000501c: 93 05 d0 02  	addi	a1, zero, 45
80005020: 6f 00 00 03  	j	0x80005050 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80005024: 13 f5 4b 00  	andi	a0, s7, 4
80005028: 63 1e 05 00  	bnez	a0, 0x80005044 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
8000502c: 13 f5 8b 00  	andi	a0, s7, 8
80005030: 63 02 05 02  	beqz	a0, 0x80005054 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80005034: 33 05 87 01  	add	a0, a4, s8
80005038: 13 0c 1c 00  	addi	s8, s8, 1
8000503c: 93 05 00 02  	addi	a1, zero, 32
80005040: 6f 00 00 01  	j	0x80005050 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80005044: 33 05 87 01  	add	a0, a4, s8
80005048: 13 0c 1c 00  	addi	s8, s8, 1
8000504c: 93 05 b0 02  	addi	a1, zero, 43
80005050: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005054: 13 f5 3b 00  	andi	a0, s7, 3
80005058: 33 35 a0 00  	snez	a0, a0
8000505c: b3 35 2c 01  	sltu	a1, s8, s2
80005060: 93 c5 15 00  	xori	a1, a1, 1
80005064: 33 65 b5 00  	or	a0, a0, a1
80005068: 13 04 0a 00  	mv	s0, s4
8000506c: 63 16 05 02  	bnez	a0, 0x80005098 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80005070: b3 04 89 41  	sub	s1, s2, s8
80005074: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005078: 13 04 16 00  	addi	s0, a2, 1
8000507c: 13 05 00 02  	addi	a0, zero, 32
80005080: 93 05 0b 00  	mv	a1, s6
80005084: 93 86 09 00  	mv	a3, s3
80005088: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
8000508c: 93 84 f4 ff  	addi	s1, s1, -1
80005090: 13 06 04 00  	mv	a2, s0
80005094: e3 92 04 fe  	bnez	s1, 0x80005078 <_ntoa_format+0x298>
80005098: b3 3a 50 01  	snez	s5, s5
;   while (len) {
8000509c: 63 0e 0c 02  	beqz	s8, 0x800050d8 <_ntoa_format+0x2f8>
800050a0: 03 25 81 00  	lw	a0, 8(sp)
800050a4: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800050a8: 33 85 8b 01  	add	a0, s7, s8
800050ac: 03 45 05 00  	lbu	a0, 0(a0)
800050b0: 93 0c fc ff  	addi	s9, s8, -1
800050b4: 93 04 14 00  	addi	s1, s0, 1
800050b8: 93 05 0b 00  	mv	a1, s6
800050bc: 13 06 04 00  	mv	a2, s0
800050c0: 93 86 09 00  	mv	a3, s3
800050c4: e7 80 0d 00  	jalr	s11
800050c8: 13 84 04 00  	mv	s0, s1
800050cc: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800050d0: e3 9c 0c fc  	bnez	s9, 0x800050a8 <_ntoa_format+0x2c8>
800050d4: 6f 00 80 00  	j	0x800050dc <_ntoa_format+0x2fc>
800050d8: 93 04 04 00  	mv	s1, s0
800050dc: 33 85 44 41  	sub	a0, s1, s4
800050e0: 33 35 25 01  	sltu	a0, a0, s2
800050e4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800050e8: 93 c5 1a 00  	xori	a1, s5, 1
800050ec: 33 e5 a5 00  	or	a0, a1, a0
800050f0: 63 18 05 02  	bnez	a0, 0x80005120 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
800050f4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800050f8: 13 84 14 00  	addi	s0, s1, 1
800050fc: 13 05 00 02  	addi	a0, zero, 32
80005100: 93 05 0b 00  	mv	a1, s6
80005104: 13 86 04 00  	mv	a2, s1
80005108: 93 86 09 00  	mv	a3, s3
8000510c: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80005110: 33 05 8a 00  	add	a0, s4, s0
80005114: 93 04 04 00  	mv	s1, s0
80005118: e3 60 25 ff  	bltu	a0, s2, 0x800050f8 <_ntoa_format+0x318>
8000511c: 6f 00 80 00  	j	0x80005124 <_ntoa_format+0x344>
80005120: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80005124: 13 05 04 00  	mv	a0, s0
80005128: 83 2d c1 00  	lw	s11, 12(sp)
8000512c: 03 2d 01 01  	lw	s10, 16(sp)
80005130: 83 2c 41 01  	lw	s9, 20(sp)
80005134: 03 2c 81 01  	lw	s8, 24(sp)
80005138: 83 2b c1 01  	lw	s7, 28(sp)
8000513c: 03 2b 01 02  	lw	s6, 32(sp)
80005140: 83 2a 41 02  	lw	s5, 36(sp)
80005144: 03 2a 81 02  	lw	s4, 40(sp)
80005148: 83 29 c1 02  	lw	s3, 44(sp)
8000514c: 03 29 01 03  	lw	s2, 48(sp)
80005150: 83 24 41 03  	lw	s1, 52(sp)
80005154: 03 24 81 03  	lw	s0, 56(sp)
80005158: 83 20 c1 03  	lw	ra, 60(sp)
8000515c: 13 01 01 04  	addi	sp, sp, 64
80005160: 67 80 00 00  	ret

80005164 <_snrt_init_team>:
;     team->base.root = team;
80005164: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80005168: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
8000516c: 03 23 87 00  	lw	t1, 8(a4)
80005170: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80005174: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80005178: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000517c: 83 22 47 00  	lw	t0, 4(a4)
80005180: 33 88 08 03  	mul	a6, a7, a6
80005184: 33 05 58 02  	mul	a0, a6, t0
80005188: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000518c: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80005190: 33 85 68 40  	sub	a0, a7, t1
80005194: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80005198: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
8000519c: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800051a0: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800051a4: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800051a8: 03 25 87 01  	lw	a0, 24(a4)
800051ac: b7 05 00 10  	lui	a1, 65536
800051b0: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800051b4: 23 a2 07 02  	sw	zero, 36(a5)
800051b8: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800051bc: 03 25 07 02  	lw	a0, 32(a4)
800051c0: 83 25 47 02  	lw	a1, 36(a4)
800051c4: 23 a4 a7 02  	sw	a0, 40(a5)
800051c8: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800051cc: 23 a8 c7 02  	sw	a2, 48(a5)
800051d0: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800051d4: 23 ac d7 02  	sw	a3, 56(a5)
800051d8: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800051dc: 03 25 07 01  	lw	a0, 16(a4)
800051e0: 33 08 a6 00  	add	a6, a2, a0
800051e4: 93 05 08 19  	addi	a1, a6, 400
800051e8: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
800051ec: b3 32 a8 00  	sltu	t0, a6, a0
800051f0: 93 55 15 00  	srli	a1, a0, 1
800051f4: 33 03 b8 00  	add	t1, a6, a1
800051f8: b3 35 03 01  	sltu	a1, t1, a6
800051fc: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80005200: 23 a0 67 04  	sw	t1, 64(a5)
80005204: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80005208: 13 15 15 00  	slli	a0, a0, 1
8000520c: b3 05 c5 00  	add	a1, a0, a2
80005210: 33 b5 a5 00  	sltu	a0, a1, a0
80005214: 23 a4 b7 04  	sw	a1, 72(a5)
80005218: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
8000521c: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80005220: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80005224: 37 05 00 00  	lui	a0, 0
80005228: 33 05 45 00  	add	a0, a0, tp
8000522c: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80005230: 03 a5 07 00  	lw	a0, 0(a5)
80005234: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80005238: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000523c: b3 85 b8 40  	sub	a1, a7, a1
80005240: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80005244: b7 05 00 00  	lui	a1, 0
80005248: b3 85 45 00  	add	a1, a1, tp
8000524c: 23 a2 a5 00  	sw	a0, 4(a1)
80005250: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80005254: 33 85 a8 02  	mul	a0, a7, a0

80005258 <.LBB0_1>:
80005258: 97 15 00 00  	auipc	a1, 1
8000525c: 93 85 c5 96  	addi	a1, a1, -1684
80005260: 33 05 b5 00  	add	a0, a0, a1
80005264: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80005268: 83 28 07 03  	lw	a7, 48(a4)
8000526c: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80005270: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80005274: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80005278: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
8000527c: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80005280: 13 05 76 00  	addi	a0, a2, 7
80005284: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80005288: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
8000528c: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80005290: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80005294: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80005298: 03 a5 05 00  	lw	a0, 0(a1)
8000529c: 13 05 f5 44  	addi	a0, a0, 1103
800052a0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800052a4: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800052a8: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800052ac: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800052b0: 37 05 00 00  	lui	a0, 0
800052b4: 33 05 45 00  	add	a0, a0, tp
800052b8: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800052bc: 37 05 00 00  	lui	a0, 0
800052c0: 33 05 45 00  	add	a0, a0, tp
800052c4: 23 26 e5 00  	sw	a4, 12(a0)
; }
800052c8: 67 80 00 00  	ret

800052cc <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800052cc: 37 05 00 00  	lui	a0, 0
800052d0: 33 05 45 00  	add	a0, a0, tp
800052d4: 03 25 05 00  	lw	a0, 0(a0)
800052d8: 03 25 05 00  	lw	a0, 0(a0)
800052dc: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800052e0: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800052e4: 33 85 a5 40  	sub	a0, a1, a0
800052e8: 67 80 00 00  	ret

800052ec <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
800052ec: 37 05 00 00  	lui	a0, 0
800052f0: 33 05 45 00  	add	a0, a0, tp
800052f4: 03 25 05 00  	lw	a0, 0(a0)
800052f8: 03 25 05 00  	lw	a0, 0(a0)
800052fc: 03 25 05 07  	lw	a0, 112(a0)
80005300: 67 80 00 00  	ret

80005304 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80005304: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80005308: 63 44 05 00  	bltz	a0, 0x80005310 <__snrt_isr+0xc>
;         while (1)
8000530c: 6f 00 00 00  	j	0x8000530c <__snrt_isr+0x8>
80005310: b7 05 00 80  	lui	a1, 524288
80005314: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80005318: 33 75 b5 00  	and	a0, a0, a1
8000531c: 13 05 d5 ff  	addi	a0, a0, -3
80005320: 93 55 25 00  	srli	a1, a0, 2
80005324: 13 15 e5 01  	slli	a0, a0, 30
80005328: 33 65 b5 00  	or	a0, a0, a1
8000532c: 93 05 40 00  	addi	a1, zero, 4
80005330: 63 0a b5 06  	beq	a0, a1, 0x800053a4 <.LBB1_7+0x58>
80005334: 63 1a 05 08  	bnez	a0, 0x800053c8 <.LBB1_7+0x7c>
80005338: 37 05 00 00  	lui	a0, 0
8000533c: 33 05 45 00  	add	a0, a0, tp
80005340: 03 25 05 00  	lw	a0, 0(a0)
80005344: 03 25 05 00  	lw	a0, 0(a0)
80005348: f3 25 40 f1  	csrr	a1, mhartid

8000534c <.LBB1_7>:
;     asm volatile(
8000534c: 17 16 00 00  	auipc	a2, 1
80005350: 13 06 46 87  	addi	a2, a2, -1932
80005354: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80005358: 93 06 06 00  	mv	a3, a2
8000535c: 93 02 10 00  	addi	t0, zero, 1
80005360: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80005364: e3 9e 02 fe  	bnez	t0, 0x80005360 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80005368: b7 06 00 00  	lui	a3, 0
8000536c: b3 86 46 00  	add	a3, a3, tp
80005370: 83 a6 86 00  	lw	a3, 8(a3)
80005374: 33 85 a5 40  	sub	a0, a1, a0
80005378: 93 55 35 00  	srli	a1, a0, 3
8000537c: 93 f5 c5 ff  	andi	a1, a1, -4
80005380: b3 85 b6 00  	add	a1, a3, a1
80005384: 83 a6 05 00  	lw	a3, 0(a1)
80005388: 13 07 10 00  	addi	a4, zero, 1
8000538c: 33 15 a7 00  	sll	a0, a4, a0
80005390: 13 45 f5 ff  	not	a0, a0
80005394: 33 f5 a6 00  	and	a0, a3, a0
80005398: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000539c: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800053a0: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800053a4: 37 05 00 00  	lui	a0, 0
800053a8: 33 05 45 00  	add	a0, a0, tp
800053ac: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800053b0: b7 05 00 00  	lui	a1, 0
800053b4: b3 85 45 00  	add	a1, a1, tp
800053b8: 83 a5 c5 00  	lw	a1, 12(a1)
800053bc: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800053c0: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800053c4: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800053c8: 67 80 00 00  	ret

Disassembly of section .init:

800053d0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800053d0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800053d4: 93 81 81 ef  	addi	gp, gp, -264

800053d8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800053d8: 97 00 00 00  	auipc	ra, 0
800053dc: e7 80 40 3c  	jalr	964(ra)

800053e0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
800053e0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
800053e4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
800053e8: 97 00 00 00  	auipc	ra, 0
800053ec: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800053f0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800053f4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800053f8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800053fc: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80005400: 63 92 02 02  	bnez	t0, 0x80005424 <snrt.crt0.init_registers>

80005404 <.Lpcrel_hi0>:
;     la        t0, _edata
80005404: 97 02 00 00  	auipc	t0, 0
80005408: 93 82 c2 7b  	addi	t0, t0, 1980

8000540c <.Lpcrel_hi1>:
;     la        t1, _end
8000540c: 17 03 00 00  	auipc	t1, 0
80005410: 13 03 83 7b  	addi	t1, t1, 1976
;     bge       t0, t1, 2f
80005414: 63 d8 62 00  	bge	t0, t1, 0x80005424 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80005418: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000541c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80005420: e3 cc 62 fe  	blt	t0, t1, 0x80005418 <.Lpcrel_hi1+0xc>

80005424 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80005424: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80005428: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000542c: 63 82 02 08  	beqz	t0, 0x800054b0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80005430: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80005434: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80005438: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000543c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80005440: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80005444: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80005448: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000544c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80005450: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80005454: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80005458: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000545c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80005460: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80005464: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80005468: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000546c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80005470: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80005474: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80005478: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000547c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80005480: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80005484: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80005488: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000548c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80005490: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80005494: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80005498: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000549c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800054a0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800054a4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800054a8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800054ac: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800054b0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800054b0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800054b4: 23 a0 06 00  	sw	zero, 0(a3)

800054b8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800054b8: 97 02 00 00  	auipc	t0, 0
800054bc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
800054c0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800054c4: 93 87 06 00  	mv	a5, a3

800054c8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800054c8: 97 03 00 00  	auipc	t2, 0
800054cc: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
800054d0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
800054d4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
800054d8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
800054dc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
800054e0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
800054e4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
800054e8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
800054ec: b3 86 66 40  	sub	a3, a3, t1

800054f0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800054f0: 97 02 00 00  	auipc	t0, 0
800054f4: 93 82 82 5d  	addi	t0, t0, 1496

800054f8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800054f8: 17 03 00 00  	auipc	t1, 0
800054fc: 13 03 03 5d  	addi	t1, t1, 1488

80005500 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80005500: 97 03 00 00  	auipc	t2, 0
80005504: 93 83 83 5c  	addi	t2, t2, 1480

80005508 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80005508: 17 0e 00 00  	auipc	t3, 0
8000550c: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80005510: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80005514: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80005518: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000551c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80005520: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80005524: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80005528: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000552c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80005530: 63 dc 62 00  	bge	t0, t1, 0x80005548 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80005534: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80005538: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000553c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005540: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80005544: e3 c8 62 fe  	blt	t0, t1, 0x80005534 <.Lpcrel_hi7+0x2c>

80005548 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80005548: 97 02 00 00  	auipc	t0, 0
8000554c: 93 82 02 58  	addi	t0, t0, 1408

80005550 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80005550: 17 03 00 00  	auipc	t1, 0
80005554: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
80005558: 63 da 62 00  	bge	t0, t1, 0x8000556c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000555c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80005560: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005564: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80005568: e3 ca 72 fe  	blt	t0, t2, 0x8000555c <.Lpcrel_hi9+0xc>

8000556c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000556c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80005570: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80005574: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80005578: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000557c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80005580: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80005584: 97 00 00 00  	auipc	ra, 0
80005588: e7 80 00 be  	jalr	-1056(ra)
;     lw        a0, 0(sp)
8000558c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80005590: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80005594: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80005598: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000559c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800055a0: 13 01 41 01  	addi	sp, sp, 20

800055a4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800055a4: 97 02 00 00  	auipc	t0, 0
800055a8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800055ac: 73 90 52 30  	csrw	mtvec, t0

800055b0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800055b0: 97 00 00 00  	auipc	ra, 0
800055b4: e7 80 00 22  	jalr	544(ra)

800055b8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800055b8: 97 b0 ff ff  	auipc	ra, 1048571
800055bc: e7 80 c0 07  	jalr	124(ra)
;     mv        s0, a0 # store return value in s0
800055c0: 13 04 05 00  	mv	s0, a0

800055c4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800055c4: 97 00 00 00  	auipc	ra, 0
800055c8: e7 80 c0 20  	jalr	524(ra)

800055cc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800055cc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
800055d0: 97 00 00 00  	auipc	ra, 0
800055d4: e7 80 c0 22  	jalr	556(ra)
;     wfi
800055d8: 73 00 50 10  	wfi	
;     j       1b
800055dc: 6f f0 df ff  	j	0x800055d8 <snrt.crt0.end+0xc>

800055e0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
800055e0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
800055e4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
800055e8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
800055ec: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800055f0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800055f4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800055f8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800055fc: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80005600: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80005604: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80005608: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000560c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80005610: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80005614: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80005618: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000561c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80005620: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80005624: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80005628: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000562c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005630: 63 84 02 08  	beqz	t0, 0x800056b8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80005634: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80005638: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000563c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80005640: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80005644: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80005648: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000564c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80005650: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80005654: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80005658: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000565c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80005660: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80005664: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80005668: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000566c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80005670: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80005674: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80005678: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000567c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80005680: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80005684: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80005688: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000568c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80005690: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80005694: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80005698: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000569c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800056a0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800056a4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800056a8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800056ac: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800056b0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800056b4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800056b8: 97 00 00 00  	auipc	ra, 0
800056bc: e7 80 c0 c4  	jalr	-948(ra)
;     csrr    t0, misa
800056c0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800056c4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800056c8: 63 84 02 08  	beqz	t0, 0x80005750 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
800056cc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
800056d0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
800056d4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
800056d8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
800056dc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
800056e0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
800056e4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
800056e8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
800056ec: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
800056f0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
800056f4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
800056f8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
800056fc: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80005700: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80005704: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80005708: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000570c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80005710: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80005714: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80005718: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000571c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80005720: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80005724: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80005728: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000572c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80005730: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80005734: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80005738: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000573c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80005740: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80005744: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80005748: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000574c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80005750: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80005754: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80005758: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000575c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005760: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005764: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005768: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000576c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80005770: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80005774: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80005778: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000577c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80005780: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80005784: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80005788: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000578c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80005790: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80005794: 13 01 01 05  	addi	sp, sp, 80
;     mret
80005798: 73 00 20 30  	mret	

8000579c <_snrt_init_core_info>:
;     mv        a4, a1
8000579c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800057a0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800057a4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800057a8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800057ac: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800057b0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800057b4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800057b8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800057bc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
800057c0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
800057c4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
800057c8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
800057cc: 67 80 00 00  	ret

800057d0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
800057d0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
800057d4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
800057d8: 97 00 00 00  	auipc	ra, 0
800057dc: e7 80 40 b1  	jalr	-1260(ra)
;     lw        a0, 0(a0)
800057e0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
800057e4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
800057e8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
800057ec: 13 01 41 00  	addi	sp, sp, 4
;     ret
800057f0: 67 80 00 00  	ret

800057f4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
800057f4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
800057f8: 67 80 00 00  	ret

800057fc <_snrt_exit>:
;     addi      sp, sp, -8
800057fc: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005800: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005804: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005808: 97 00 00 00  	auipc	ra, 0
8000580c: e7 80 40 ac  	jalr	-1340(ra)
;     lw        t0, 0(sp)
80005810: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005814: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005818: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000581c: 63 1c 05 00  	bnez	a0, 0x80005834 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80005820: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80005824: 93 e2 12 00  	ori	t0, t0, 1

80005828 <.Lpcrel_hi11>:
;     la        t1, tohost
80005828: 17 03 00 00  	auipc	t1, 0
8000582c: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
80005830: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80005834: 67 80 00 00  	ret
