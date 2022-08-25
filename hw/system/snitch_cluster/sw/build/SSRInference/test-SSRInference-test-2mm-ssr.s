
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-SSRInference-test-2mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000053e4 80000000 TEXT
  2 .init             00000468 800053f0 TEXT
  3 .rodata           00000238 80005858 DATA
  4 .htif             00000048 80005ac0 DATA
  5 .tdata            00000000 80005b08 DATA
  6 .tbss             00000010 80005b08 BSS
  7 .tbssend          00000000 80005b18 DATA
  8 .sdata            000000e8 80005b18 DATA
  9 .data             00000000 80005c00 DATA
 10 .sbss             00000004 80005c00 BSS
 11 .bss              00000000 80005c04 BSS
 12 .dram             00000000 80005c04 DATA
 13 .debug_info       000036f3 00000000 
 14 .debug_abbrev     00000c05 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       000038e0 00000000 
 17 .debug_loc        00004189 00000000 
 18 .debug_ranges     00000398 00000000 
 19 .debug_str        00000b05 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           00003380 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000970 00000000 


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
80000634: 13 01 01 ee  	addi	sp, sp, -288
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 10  	sw	ra, 284(sp)
8000063c: 23 2c 81 10  	sw	s0, 280(sp)
80000640: 23 2a 91 10  	sw	s1, 276(sp)
80000644: 23 28 21 11  	sw	s2, 272(sp)
80000648: 23 26 31 11  	sw	s3, 268(sp)
8000064c: 23 24 41 11  	sw	s4, 264(sp)
80000650: 23 22 51 11  	sw	s5, 260(sp)
80000654: 23 20 61 11  	sw	s6, 256(sp)
80000658: 23 2e 71 0f  	sw	s7, 252(sp)
8000065c: 23 2c 81 0f  	sw	s8, 248(sp)
80000660: 23 2a 91 0f  	sw	s9, 244(sp)
80000664: 23 28 a1 0f  	sw	s10, 240(sp)
80000668: 23 26 b1 0f  	sw	s11, 236(sp)
8000066c: 27 30 81 0e  	fsd	fs0, 224(sp)
80000670: 27 3c 91 0c  	fsd	fs1, 216(sp)
80000674: 27 38 21 0d  	fsd	fs2, 208(sp)
80000678: 27 34 31 0d  	fsd	fs3, 200(sp)
8000067c: 27 30 41 0d  	fsd	fs4, 192(sp)
80000680: 27 3c 51 0b  	fsd	fs5, 184(sp)
80000684: 27 38 61 0b  	fsd	fs6, 176(sp)
80000688: 27 34 71 0b  	fsd	fs7, 168(sp)
8000068c: 37 05 00 00  	lui	a0, 0
80000690: 33 05 45 00  	add	a0, a0, tp
80000694: 83 25 45 00  	lw	a1, 4(a0)
80000698: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000069c: 63 84 05 00  	beqz	a1, 0x800006a4 <main+0x70>
800006a0: 6f 20 d0 62  	j	0x800034cc <.LBB0_91+0x10>
;     return _snrt_team_current->root;
800006a4: 37 05 00 00  	lui	a0, 0
800006a8: 33 05 45 00  	add	a0, a0, tp
800006ac: 03 25 05 00  	lw	a0, 0(a0)
800006b0: 03 25 05 00  	lw	a0, 0(a0)
800006b4: b7 15 00 00  	lui	a1, 1
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b8: 83 2c 85 05  	lw	s9, 88(a0)
800006bc: 83 26 05 05  	lw	a3, 80(a0)
800006c0: 03 27 45 05  	lw	a4, 84(a0)
800006c4: 93 80 05 87  	addi	ra, a1, -1936
800006c8: b3 85 1c 00  	add	a1, s9, ra
800006cc: 13 86 05 09  	addi	a2, a1, 144
800006d0: b3 05 d7 00  	add	a1, a4, a3
800006d4: 63 f6 c5 00  	bgeu	a1, a2, 0x800006e0 <main+0xac>
800006d8: 93 0d 00 00  	mv	s11, zero
800006dc: 6f 00 00 01  	j	0x800006ec <main+0xb8>
;     void *ret = (void *)alloc->next;
800006e0: 93 8d 0c 00  	mv	s11, s9
;     alloc->next += size;
800006e4: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e8: 93 0c 06 00  	mv	s9, a2
800006ec: 33 86 90 01  	add	a2, ra, s9
800006f0: 13 06 06 29  	addi	a2, a2, 656
800006f4: 63 f6 c5 00  	bgeu	a1, a2, 0x80000700 <main+0xcc>
800006f8: 93 07 00 00  	mv	a5, zero
800006fc: 6f 00 00 01  	j	0x8000070c <main+0xd8>
;     void *ret = (void *)alloc->next;
80000700: 93 87 0c 00  	mv	a5, s9
;     alloc->next += size;
80000704: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000708: 93 0c 06 00  	mv	s9, a2
8000070c: 33 86 90 01  	add	a2, ra, s9
80000710: 13 06 06 3f  	addi	a2, a2, 1008
80000714: 63 f6 c5 00  	bgeu	a1, a2, 0x80000720 <main+0xec>
80000718: 93 06 00 00  	mv	a3, zero
8000071c: 6f 00 00 01  	j	0x8000072c <main+0xf8>
;     void *ret = (void *)alloc->next;
80000720: 93 86 0c 00  	mv	a3, s9
;     alloc->next += size;
80000724: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000728: 93 0c 06 00  	mv	s9, a2
8000072c: 33 86 90 01  	add	a2, ra, s9
80000730: 13 06 06 51  	addi	a2, a2, 1296
80000734: 63 f6 c5 00  	bgeu	a1, a2, 0x80000740 <main+0x10c>
80000738: 13 0d 00 00  	mv	s10, zero
8000073c: 6f 00 00 01  	j	0x8000074c <main+0x118>
;     void *ret = (void *)alloc->next;
80000740: 13 8d 0c 00  	mv	s10, s9
;     alloc->next += size;
80000744: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000748: 93 0c 06 00  	mv	s9, a2
8000074c: 33 86 90 01  	add	a2, ra, s9
80000750: 13 06 06 39  	addi	a2, a2, 912
80000754: 63 f6 c5 00  	bgeu	a1, a2, 0x80000760 <main+0x12c>
80000758: 93 0c 00 00  	mv	s9, zero
8000075c: 6f 00 80 00  	j	0x80000764 <main+0x130>
;     alloc->next += size;
80000760: 23 2c c5 04  	sw	a2, 88(a0)
80000764: 23 2c d1 02  	sw	a3, 56(sp)
;   for (i = 0; i < ni; i++)
80000768: 33 85 f0 00  	add	a0, ra, a5
8000076c: 13 06 85 28  	addi	a2, a0, 648
80000770: 13 d5 47 01  	srli	a0, a5, 20
80000774: 33 35 a0 00  	snez	a0, a0
80000778: b7 05 12 00  	lui	a1, 288
8000077c: 93 85 15 00  	addi	a1, a1, 1
80000780: 23 2a c1 00  	sw	a2, 20(sp)
80000784: b3 35 b6 00  	sltu	a1, a2, a1
80000788: b3 75 b5 00  	and	a1, a0, a1

8000078c <.LBB0_78>:
8000078c: 17 55 00 00  	auipc	a0, 5
80000790: 13 05 c5 38  	addi	a0, a0, 908
80000794: 23 2a f1 02  	sw	a5, 52(sp)
80000798: 23 2c b1 00  	sw	a1, 24(sp)
8000079c: 13 08 00 00  	mv	a6, zero
800007a0: 93 08 00 00  	mv	a7, zero
800007a4: 63 8c 05 24  	beqz	a1, 0x800009fc <.LBB0_78+0x270>
800007a8: 13 03 00 00  	mv	t1, zero
800007ac: 93 03 00 00  	mv	t2, zero
800007b0: 13 0e 00 00  	mv	t3, zero
800007b4: 93 0e 00 00  	mv	t4, zero
800007b8: 13 0f 00 00  	mv	t5, zero
800007bc: 93 0f 00 00  	mv	t6, zero
800007c0: 13 09 00 00  	mv	s2, zero
800007c4: 93 05 80 00  	addi	a1, zero, 8
800007c8: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++)
800007cc: 93 06 00 04  	addi	a3, zero, 64
800007d0: 13 07 00 0c  	addi	a4, zero, 192
800007d4: ab 20 d6 00  	scfgw	a2, a3
800007d8: ab a0 e5 00  	scfgw	a1, a4
800007dc: 13 06 f0 00  	addi	a2, zero, 15
800007e0: 93 06 00 06  	addi	a3, zero, 96
800007e4: 13 07 00 0e  	addi	a4, zero, 224
800007e8: ab 20 d6 00  	scfgw	a2, a3
800007ec: ab a0 e5 00  	scfgw	a1, a4
800007f0: 93 05 00 02  	addi	a1, zero, 32
800007f4: ab 20 b0 00  	scfgw	zero, a1
800007f8: 2b a0 07 3a  	scfgwi	a5, 928
800007fc: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000800: 93 09 10 00  	addi	s3, zero, 1
80000804: 87 31 05 00  	fld	ft3, 0(a0)
80000808: 93 02 10 15  	addi	t0, zero, 337
8000080c: 13 0a 10 00  	addi	s4, zero, 1
80000810: 93 0a 10 00  	addi	s5, zero, 1
80000814: 13 0b 10 00  	addi	s6, zero, 1
80000818: 93 07 10 00  	addi	a5, zero, 1
8000081c: 93 04 10 00  	addi	s1, zero, 1
80000820: 13 04 10 00  	addi	s0, zero, 1
80000824: 13 05 10 00  	addi	a0, zero, 1
80000828: 93 05 10 00  	addi	a1, zero, 1
8000082c: 13 06 10 00  	addi	a2, zero, 1
80000830: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000834: 53 80 31 22  	fmv.d	ft0, ft3
80000838: 13 f7 f9 00  	andi	a4, s3, 15
8000083c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000840: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000844: 53 00 42 22  	fmv.d	ft0, ft4
80000848: 13 77 e8 00  	andi	a4, a6, 14
8000084c: 13 67 17 00  	ori	a4, a4, 1
80000850: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000854: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000858: 53 00 42 22  	fmv.d	ft0, ft4
8000085c: 13 77 fa 00  	andi	a4, s4, 15
80000860: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000864: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000868: 53 00 42 22  	fmv.d	ft0, ft4
8000086c: 13 f7 c8 00  	andi	a4, a7, 12
80000870: 13 67 17 00  	ori	a4, a4, 1
80000874: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000878: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000087c: 53 00 42 22  	fmv.d	ft0, ft4
80000880: 13 f7 fa 00  	andi	a4, s5, 15
80000884: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000888: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000088c: 53 00 42 22  	fmv.d	ft0, ft4
80000890: 13 77 e3 00  	andi	a4, t1, 14
80000894: 13 67 17 00  	ori	a4, a4, 1
80000898: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000089c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008a0: 53 00 42 22  	fmv.d	ft0, ft4
800008a4: 13 77 fb 00  	andi	a4, s6, 15
800008a8: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008ac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008b0: 53 00 42 22  	fmv.d	ft0, ft4
800008b4: 13 f7 83 00  	andi	a4, t2, 8
800008b8: 13 67 17 00  	ori	a4, a4, 1
800008bc: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008c0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008c4: 53 00 42 22  	fmv.d	ft0, ft4
800008c8: 13 f7 f7 00  	andi	a4, a5, 15
800008cc: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008d0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008d4: 53 00 42 22  	fmv.d	ft0, ft4
800008d8: 13 77 ee 00  	andi	a4, t3, 14
800008dc: 13 67 17 00  	ori	a4, a4, 1
800008e0: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008e4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008e8: 53 00 42 22  	fmv.d	ft0, ft4
800008ec: 13 f7 f4 00  	andi	a4, s1, 15
800008f0: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008f4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008f8: 53 00 42 22  	fmv.d	ft0, ft4
800008fc: 13 f7 ce 00  	andi	a4, t4, 12
80000900: 13 67 17 00  	ori	a4, a4, 1
80000904: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000908: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000090c: 53 00 42 22  	fmv.d	ft0, ft4
80000910: 13 77 f4 00  	andi	a4, s0, 15
80000914: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000918: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000091c: 53 00 42 22  	fmv.d	ft0, ft4
80000920: 13 77 ef 00  	andi	a4, t5, 14
80000924: 13 67 17 00  	ori	a4, a4, 1
80000928: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000092c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000930: 53 00 42 22  	fmv.d	ft0, ft4
80000934: 13 77 f5 00  	andi	a4, a0, 15
80000938: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000093c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000940: 53 00 42 22  	fmv.d	ft0, ft4
80000944: 53 80 31 22  	fmv.d	ft0, ft3
80000948: 13 f7 f5 00  	andi	a4, a1, 15
8000094c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000950: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000954: 53 00 42 22  	fmv.d	ft0, ft4
80000958: 13 f7 ef 00  	andi	a4, t6, 14
8000095c: 13 67 17 00  	ori	a4, a4, 1
80000960: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000964: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000968: 53 00 42 22  	fmv.d	ft0, ft4
8000096c: 13 77 f6 00  	andi	a4, a2, 15
80000970: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000974: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000978: 53 00 42 22  	fmv.d	ft0, ft4
8000097c: 13 77 c9 00  	andi	a4, s2, 12
80000980: 13 67 17 00  	ori	a4, a4, 1
80000984: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000988: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000098c: 53 00 42 22  	fmv.d	ft0, ft4
80000990: 13 f7 f6 00  	andi	a4, a3, 15
80000994: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000998: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000099c: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
800009a0: 93 86 56 01  	addi	a3, a3, 21
800009a4: 13 09 49 01  	addi	s2, s2, 20
800009a8: 13 06 36 01  	addi	a2, a2, 19
800009ac: 93 8f 2f 01  	addi	t6, t6, 18
800009b0: 93 85 15 01  	addi	a1, a1, 17
800009b4: 13 05 f5 00  	addi	a0, a0, 15
800009b8: 13 0f ef 00  	addi	t5, t5, 14
800009bc: 13 04 d4 00  	addi	s0, s0, 13
800009c0: 93 8e ce 00  	addi	t4, t4, 12
800009c4: 93 84 b4 00  	addi	s1, s1, 11
800009c8: 13 0e ae 00  	addi	t3, t3, 10
800009cc: 93 87 97 00  	addi	a5, a5, 9
800009d0: 93 83 83 00  	addi	t2, t2, 8
800009d4: 13 0b 7b 00  	addi	s6, s6, 7
800009d8: 13 03 63 00  	addi	t1, t1, 6
800009dc: 93 8a 5a 00  	addi	s5, s5, 5
800009e0: 93 88 48 00  	addi	a7, a7, 4
800009e4: 13 0a 3a 00  	addi	s4, s4, 3
800009e8: 13 08 28 00  	addi	a6, a6, 2
800009ec: 93 89 19 00  	addi	s3, s3, 1
800009f0: e3 92 56 e4  	bne	a3, t0, 0x80000834 <.LBB0_78+0xa8>
800009f4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800009f8: 6f 00 80 22  	j	0x80000c20 <.LBB0_78+0x494>
800009fc: 93 02 00 00  	mv	t0, zero
80000a00: 13 0e 00 00  	mv	t3, zero
80000a04: 93 0e 00 00  	mv	t4, zero
80000a08: 13 0f 00 00  	mv	t5, zero
80000a0c: 93 0f 00 00  	mv	t6, zero
80000a10: 13 09 00 00  	mv	s2, zero
80000a14: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a18: 93 85 87 05  	addi	a1, a5, 88
80000a1c: 13 0a 10 00  	addi	s4, zero, 1
80000a20: 37 03 b0 3f  	lui	t1, 260864
80000a24: 87 31 05 00  	fld	ft3, 0(a0)
80000a28: 93 03 10 15  	addi	t2, zero, 337
80000a2c: 93 0a 10 00  	addi	s5, zero, 1
80000a30: 13 0b 10 00  	addi	s6, zero, 1
80000a34: 93 0b 10 00  	addi	s7, zero, 1
80000a38: 13 0c 10 00  	addi	s8, zero, 1
80000a3c: 13 04 10 00  	addi	s0, zero, 1
80000a40: 13 05 10 00  	addi	a0, zero, 1
80000a44: 13 06 10 00  	addi	a2, zero, 1
80000a48: 93 06 10 00  	addi	a3, zero, 1
80000a4c: 13 07 10 00  	addi	a4, zero, 1
80000a50: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000a54: 23 a6 65 fa  	sw	t1, -84(a1)
80000a58: 23 a4 05 fa  	sw	zero, -88(a1)
80000a5c: 93 f4 f7 00  	andi	s1, a5, 15
80000a60: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a64: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a68: 27 b8 45 fa  	fsd	ft4, -80(a1)
80000a6c: 93 74 e9 00  	andi	s1, s2, 14
80000a70: 93 e4 14 00  	ori	s1, s1, 1
80000a74: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a78: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a7c: 27 bc 45 fa  	fsd	ft4, -72(a1)
80000a80: 93 74 f6 00  	andi	s1, a2, 15
80000a84: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a88: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a8c: 27 b0 45 fc  	fsd	ft4, -64(a1)
80000a90: 93 74 cf 00  	andi	s1, t5, 12
80000a94: 93 e4 14 00  	ori	s1, s1, 1
80000a98: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a9c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000aa0: 27 b4 45 fc  	fsd	ft4, -56(a1)
80000aa4: 93 74 f4 00  	andi	s1, s0, 15
80000aa8: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000aac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ab0: 27 b8 45 fc  	fsd	ft4, -48(a1)
80000ab4: 93 f4 ee 00  	andi	s1, t4, 14
80000ab8: 93 e4 14 00  	ori	s1, s1, 1
80000abc: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ac0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ac4: 27 bc 45 fc  	fsd	ft4, -40(a1)
80000ac8: 93 f4 fb 00  	andi	s1, s7, 15
80000acc: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ad0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ad4: 27 b0 45 fe  	fsd	ft4, -32(a1)
80000ad8: 93 f4 82 00  	andi	s1, t0, 8
80000adc: 93 e4 14 00  	ori	s1, s1, 1
80000ae0: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ae4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ae8: 27 b4 45 fe  	fsd	ft4, -24(a1)
80000aec: 93 f4 fa 00  	andi	s1, s5, 15
80000af0: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000af4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000af8: 27 b8 45 fe  	fsd	ft4, -16(a1)
80000afc: 93 74 e8 00  	andi	s1, a6, 14
80000b00: 93 e4 14 00  	ori	s1, s1, 1
80000b04: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b08: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b0c: 27 bc 45 fe  	fsd	ft4, -8(a1)
80000b10: 93 74 fa 00  	andi	s1, s4, 15
80000b14: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b18: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b1c: 27 b0 45 00  	fsd	ft4, 0(a1)
80000b20: 93 f4 c8 00  	andi	s1, a7, 12
80000b24: 93 e4 14 00  	ori	s1, s1, 1
80000b28: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b2c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b30: 27 b4 45 00  	fsd	ft4, 8(a1)
80000b34: 93 74 fb 00  	andi	s1, s6, 15
80000b38: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b3c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b40: 27 b8 45 00  	fsd	ft4, 16(a1)
80000b44: 93 74 ee 00  	andi	s1, t3, 14
80000b48: 93 e4 14 00  	ori	s1, s1, 1
80000b4c: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b50: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b54: 27 bc 45 00  	fsd	ft4, 24(a1)
80000b58: 93 74 fc 00  	andi	s1, s8, 15
80000b5c: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b60: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b64: 27 b0 45 02  	fsd	ft4, 32(a1)
80000b68: 23 a6 65 02  	sw	t1, 44(a1)
80000b6c: 23 a4 05 02  	sw	zero, 40(a1)
80000b70: 93 74 f5 00  	andi	s1, a0, 15
80000b74: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b78: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b7c: 27 b8 45 02  	fsd	ft4, 48(a1)
80000b80: 93 f4 ef 00  	andi	s1, t6, 14
80000b84: 93 e4 14 00  	ori	s1, s1, 1
80000b88: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b8c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b90: 27 bc 45 02  	fsd	ft4, 56(a1)
80000b94: 93 f4 f6 00  	andi	s1, a3, 15
80000b98: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b9c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ba0: 27 b0 45 04  	fsd	ft4, 64(a1)
80000ba4: 93 f4 c9 00  	andi	s1, s3, 12
80000ba8: 93 e4 14 00  	ori	s1, s1, 1
80000bac: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000bb0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bb4: 27 b4 45 04  	fsd	ft4, 72(a1)
80000bb8: 93 74 f7 00  	andi	s1, a4, 15
80000bbc: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000bc0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bc4: 27 b8 45 04  	fsd	ft4, 80(a1)
;   for (i = 0; i < ni; i++)
80000bc8: 93 87 17 00  	addi	a5, a5, 1
80000bcc: 13 07 57 01  	addi	a4, a4, 21
80000bd0: 93 89 49 01  	addi	s3, s3, 20
80000bd4: 13 09 29 00  	addi	s2, s2, 2
80000bd8: 93 86 36 01  	addi	a3, a3, 19
80000bdc: 13 06 36 00  	addi	a2, a2, 3
80000be0: 93 8f 2f 01  	addi	t6, t6, 18
80000be4: 13 0f 4f 00  	addi	t5, t5, 4
80000be8: 13 05 15 01  	addi	a0, a0, 17
80000bec: 13 04 54 00  	addi	s0, s0, 5
80000bf0: 93 8e 6e 00  	addi	t4, t4, 6
80000bf4: 13 0c fc 00  	addi	s8, s8, 15
80000bf8: 93 8b 7b 00  	addi	s7, s7, 7
80000bfc: 13 0e ee 00  	addi	t3, t3, 14
80000c00: 93 82 82 00  	addi	t0, t0, 8
80000c04: 13 0b db 00  	addi	s6, s6, 13
80000c08: 93 8a 9a 00  	addi	s5, s5, 9
80000c0c: 93 88 c8 00  	addi	a7, a7, 12
80000c10: 93 85 05 0b  	addi	a1, a1, 176
80000c14: 13 0a ba 00  	addi	s4, s4, 11
80000c18: 13 08 a8 00  	addi	a6, a6, 10
80000c1c: e3 1c 77 e2  	bne	a4, t2, 0x80000a54 <.LBB0_78+0x2c8>
80000c20: 83 26 81 03  	lw	a3, 56(sp)
;   for (i = 0; i < nk; i++)
80000c24: 33 85 d0 00  	add	a0, ra, a3
80000c28: 13 06 85 3e  	addi	a2, a0, 1000
80000c2c: 13 d5 46 01  	srli	a0, a3, 20
80000c30: 33 35 a0 00  	snez	a0, a0
80000c34: b7 05 12 00  	lui	a1, 288
80000c38: 93 85 15 00  	addi	a1, a1, 1
80000c3c: 23 24 c1 00  	sw	a2, 8(sp)
80000c40: b3 35 b6 00  	sltu	a1, a2, a1
80000c44: 33 75 b5 00  	and	a0, a0, a1

80000c48 <.LBB0_79>:
80000c48: 97 5a 00 00  	auipc	s5, 5
80000c4c: 93 8a 8a ed  	addi	s5, s5, -296
80000c50: 23 22 91 03  	sw	s9, 36(sp)
80000c54: 23 22 a1 00  	sw	a0, 4(sp)
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
80000c80: 63 04 05 2a  	beqz	a0, 0x80000f28 <.LBB0_79+0x2e0>
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
80000cd4: 2b a0 06 3a  	scfgwi	a3, 928
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
80000f1c: e3 1e 54 dd  	bne	s0, s5, 0x80000cf8 <.LBB0_79+0xb0>
80000f20: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f24: 6f 00 c0 26  	j	0x80001190 <.LBB0_79+0x548>
80000f28: 93 09 00 00  	mv	s3, zero
80000f2c: 13 0a 00 00  	mv	s4, zero
80000f30: 93 0b 00 00  	mv	s7, zero
80000f34: 93 07 00 00  	mv	a5, zero
80000f38: 93 04 00 00  	mv	s1, zero
80000f3c: 13 04 00 00  	mv	s0, zero
80000f40: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nk; i++)
80000f44: 93 85 86 04  	addi	a1, a3, 72
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
8000118c: e3 1a 64 dd  	bne	s0, s6, 0x80000f60 <.LBB0_79+0x318>
80001190: 23 2e b1 01  	sw	s11, 28(sp)
80001194: 23 20 11 02  	sw	ra, 32(sp)
;   for (i = 0; i < nj; i++)
80001198: 33 85 a0 01  	add	a0, ra, s10
8000119c: 13 06 85 50  	addi	a2, a0, 1288
800011a0: 13 55 4d 01  	srli	a0, s10, 20
800011a4: 33 35 a0 00  	snez	a0, a0
800011a8: b7 05 12 00  	lui	a1, 288
800011ac: 93 85 15 00  	addi	a1, a1, 1
800011b0: 23 26 c1 00  	sw	a2, 12(sp)
800011b4: b3 35 b6 00  	sltu	a1, a2, a1
800011b8: b3 75 b5 00  	and	a1, a0, a1

800011bc <.LBB0_80>:
800011bc: 17 53 00 00  	auipc	t1, 5
800011c0: 13 03 c3 96  	addi	t1, t1, -1684
800011c4: 23 24 a1 03  	sw	s10, 40(sp)
800011c8: 23 28 b1 00  	sw	a1, 16(sp)
800011cc: 63 8a 05 4c  	beqz	a1, 0x800016a0 <.LBB0_80+0x4e4>
800011d0: 13 05 00 00  	mv	a0, zero
800011d4: 93 00 00 00  	mv	ra, zero
800011d8: 13 08 00 00  	mv	a6, zero
800011dc: 93 06 00 00  	mv	a3, zero
800011e0: 93 07 00 00  	mv	a5, zero
800011e4: 93 05 80 00  	addi	a1, zero, 8
800011e8: 93 04 70 01  	addi	s1, zero, 23
;   for (i = 0; i < nj; i++)
800011ec: 13 06 00 04  	addi	a2, zero, 64
800011f0: 13 07 00 0c  	addi	a4, zero, 192
800011f4: ab a0 c4 00  	scfgw	s1, a2
800011f8: ab a0 e5 00  	scfgw	a1, a4
800011fc: 93 04 10 01  	addi	s1, zero, 17
80001200: 13 06 00 06  	addi	a2, zero, 96
80001204: 13 07 00 0e  	addi	a4, zero, 224
80001208: ab a0 c4 00  	scfgw	s1, a2
8000120c: ab a0 e5 00  	scfgw	a1, a4
80001210: 93 05 00 02  	addi	a1, zero, 32
80001214: ab 20 b0 00  	scfgw	zero, a1
80001218: 2b 20 0d 3a  	scfgwi	s10, 928
8000121c: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80001220: 13 07 10 00  	addi	a4, zero, 1
80001224: b7 b5 aa aa  	lui	a1, 699051
80001228: 93 85 b5 aa  	addi	a1, a1, -1365
8000122c: 87 31 03 00  	fld	ft3, 0(t1)
80001230: 13 0c 10 00  	addi	s8, zero, 1
80001234: 93 04 10 00  	addi	s1, zero, 1
80001238: 13 06 10 00  	addi	a2, zero, 1
8000123c: 23 2e c1 08  	sw	a2, 156(sp)
80001240: 13 04 10 00  	addi	s0, zero, 1
80001244: 13 06 10 00  	addi	a2, zero, 1
80001248: 23 2c c1 08  	sw	a2, 152(sp)
8000124c: 13 06 10 00  	addi	a2, zero, 1
80001250: 23 2a c1 08  	sw	a2, 148(sp)
80001254: 13 06 10 00  	addi	a2, zero, 1
80001258: 23 28 c1 08  	sw	a2, 144(sp)
8000125c: 13 06 10 00  	addi	a2, zero, 1
80001260: 23 26 c1 08  	sw	a2, 140(sp)
80001264: 13 03 10 00  	addi	t1, zero, 1
80001268: 13 06 10 00  	addi	a2, zero, 1
8000126c: 23 24 c1 08  	sw	a2, 136(sp)
80001270: 13 06 10 00  	addi	a2, zero, 1
80001274: 23 22 c1 08  	sw	a2, 132(sp)
80001278: 13 06 10 00  	addi	a2, zero, 1
8000127c: 23 20 c1 08  	sw	a2, 128(sp)
80001280: 13 06 10 00  	addi	a2, zero, 1
80001284: 23 2e c1 06  	sw	a2, 124(sp)
80001288: 13 06 10 00  	addi	a2, zero, 1
8000128c: 23 2c c1 06  	sw	a2, 120(sp)
80001290: 13 06 10 00  	addi	a2, zero, 1
80001294: 23 2a c1 06  	sw	a2, 116(sp)
80001298: 13 06 10 00  	addi	a2, zero, 1
8000129c: 23 28 c1 06  	sw	a2, 112(sp)
800012a0: 13 06 10 00  	addi	a2, zero, 1
800012a4: 23 26 c1 06  	sw	a2, 108(sp)
800012a8: 13 06 10 00  	addi	a2, zero, 1
800012ac: 23 24 c1 06  	sw	a2, 104(sp)
800012b0: 13 06 10 00  	addi	a2, zero, 1
800012b4: 23 22 c1 06  	sw	a2, 100(sp)
800012b8: 13 06 10 00  	addi	a2, zero, 1
800012bc: 23 20 c1 06  	sw	a2, 96(sp)
800012c0: 13 06 10 00  	addi	a2, zero, 1
800012c4: 23 2e c1 04  	sw	a2, 92(sp)
800012c8: 13 06 10 00  	addi	a2, zero, 1
800012cc: 23 2c c1 04  	sw	a2, 88(sp)
800012d0: 93 0c 80 01  	addi	s9, zero, 24
800012d4: 23 26 81 04  	sw	s0, 76(sp)
800012d8: 23 28 91 04  	sw	s1, 80(sp)
800012dc: 23 2a 11 04  	sw	ra, 84(sp)
800012e0: 93 88 06 00  	mv	a7, a3
800012e4: 93 06 0c 00  	mv	a3, s8
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
800012e8: 33 3c b5 02  	mulhu	s8, a0, a1
800012ec: 13 56 4c 00  	srli	a2, s8, 4
800012f0: 13 8c 06 00  	mv	s8, a3
800012f4: 93 86 08 00  	mv	a3, a7
800012f8: 83 20 41 05  	lw	ra, 84(sp)
800012fc: 33 06 96 03  	mul	a2, a2, s9
80001300: 33 06 c7 40  	sub	a2, a4, a2
80001304: 53 02 06 d2  	fcvt.d.w	ft4, a2
80001308: 33 b6 b0 02  	mulhu	a2, ra, a1
8000130c: 13 56 46 00  	srli	a2, a2, 4
80001310: 33 06 96 03  	mul	a2, a2, s9
80001314: 33 06 cc 40  	sub	a2, s8, a2
80001318: d3 02 06 d2  	fcvt.d.w	ft5, a2
8000131c: 33 b6 b4 02  	mulhu	a2, s1, a1
80001320: 13 56 46 00  	srli	a2, a2, 4
80001324: 33 06 96 03  	mul	a2, a2, s9
80001328: 33 86 c4 40  	sub	a2, s1, a2
8000132c: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001330: 33 36 b8 02  	mulhu	a2, a6, a1
80001334: 13 56 46 00  	srli	a2, a2, 4
80001338: 33 06 96 03  	mul	a2, a2, s9
8000133c: 83 24 c1 09  	lw	s1, 156(sp)
80001340: 33 86 c4 40  	sub	a2, s1, a2
80001344: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001348: 33 36 b4 02  	mulhu	a2, s0, a1
8000134c: 13 56 46 00  	srli	a2, a2, 4
80001350: 33 06 96 03  	mul	a2, a2, s9
80001354: 33 06 c4 40  	sub	a2, s0, a2
80001358: 53 05 06 d2  	fcvt.d.w	fa0, a2
8000135c: 33 b6 b8 02  	mulhu	a2, a7, a1
80001360: 13 56 46 00  	srli	a2, a2, 4
80001364: 33 06 96 03  	mul	a2, a2, s9
80001368: 83 24 81 09  	lw	s1, 152(sp)
8000136c: 33 86 c4 40  	sub	a2, s1, a2
80001370: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001374: 03 2d 41 09  	lw	s10, 148(sp)
80001378: 33 36 bd 02  	mulhu	a2, s10, a1
8000137c: 13 56 46 00  	srli	a2, a2, 4
80001380: 33 06 96 03  	mul	a2, a2, s9
80001384: 33 06 cd 40  	sub	a2, s10, a2
80001388: 53 06 06 d2  	fcvt.d.w	fa2, a2
8000138c: 83 2d 01 09  	lw	s11, 144(sp)
80001390: 33 b6 bd 02  	mulhu	a2, s11, a1
80001394: 13 56 46 00  	srli	a2, a2, 4
80001398: 33 06 96 03  	mul	a2, a2, s9
8000139c: 33 86 cd 40  	sub	a2, s11, a2
800013a0: d3 06 06 d2  	fcvt.d.w	fa3, a2
800013a4: 83 22 c1 08  	lw	t0, 140(sp)
800013a8: 33 b6 b2 02  	mulhu	a2, t0, a1
800013ac: 13 56 46 00  	srli	a2, a2, 4
800013b0: 33 06 96 03  	mul	a2, a2, s9
800013b4: 33 86 c2 40  	sub	a2, t0, a2
800013b8: 53 07 06 d2  	fcvt.d.w	fa4, a2
800013bc: 33 b6 b7 02  	mulhu	a2, a5, a1
800013c0: 13 56 46 00  	srli	a2, a2, 4
800013c4: 33 06 96 03  	mul	a2, a2, s9
800013c8: 33 06 c3 40  	sub	a2, t1, a2
800013cc: d3 07 06 d2  	fcvt.d.w	fa5, a2
800013d0: 13 04 03 00  	mv	s0, t1
800013d4: 03 23 81 08  	lw	t1, 136(sp)
800013d8: 33 36 b3 02  	mulhu	a2, t1, a1
800013dc: 13 56 46 00  	srli	a2, a2, 4
800013e0: 33 06 96 03  	mul	a2, a2, s9
800013e4: 33 06 c3 40  	sub	a2, t1, a2
800013e8: 53 08 06 d2  	fcvt.d.w	fa6, a2
800013ec: 83 23 41 08  	lw	t2, 132(sp)
800013f0: 33 b6 b3 02  	mulhu	a2, t2, a1
800013f4: 13 56 46 00  	srli	a2, a2, 4
800013f8: 33 06 96 03  	mul	a2, a2, s9
800013fc: 33 86 c3 40  	sub	a2, t2, a2
80001400: d3 08 06 d2  	fcvt.d.w	fa7, a2
80001404: 03 2e 01 08  	lw	t3, 128(sp)
80001408: 33 36 be 02  	mulhu	a2, t3, a1
8000140c: 13 56 46 00  	srli	a2, a2, 4
80001410: 33 06 96 03  	mul	a2, a2, s9
80001414: 33 06 ce 40  	sub	a2, t3, a2
80001418: 53 0e 06 d2  	fcvt.d.w	ft8, a2
8000141c: 83 2e c1 07  	lw	t4, 124(sp)
80001420: 33 b6 be 02  	mulhu	a2, t4, a1
80001424: 13 56 46 00  	srli	a2, a2, 4
80001428: 33 06 96 03  	mul	a2, a2, s9
8000142c: 33 86 ce 40  	sub	a2, t4, a2
80001430: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80001434: 83 29 81 07  	lw	s3, 120(sp)
80001438: 33 b6 b9 02  	mulhu	a2, s3, a1
8000143c: 13 56 46 00  	srli	a2, a2, 4
80001440: 33 06 96 03  	mul	a2, a2, s9
80001444: 33 86 c9 40  	sub	a2, s3, a2
80001448: 53 0f 06 d2  	fcvt.d.w	ft10, a2
8000144c: 03 2f 41 07  	lw	t5, 116(sp)
80001450: 33 36 bf 02  	mulhu	a2, t5, a1
80001454: 13 56 46 00  	srli	a2, a2, 4
80001458: 33 06 96 03  	mul	a2, a2, s9
8000145c: 33 06 cf 40  	sub	a2, t5, a2
80001460: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80001464: 83 2f 01 07  	lw	t6, 112(sp)
80001468: 33 b6 bf 02  	mulhu	a2, t6, a1
8000146c: 13 56 46 00  	srli	a2, a2, 4
80001470: 33 06 96 03  	mul	a2, a2, s9
80001474: 33 86 cf 40  	sub	a2, t6, a2
80001478: 53 04 06 d2  	fcvt.d.w	fs0, a2
8000147c: 03 29 c1 06  	lw	s2, 108(sp)
80001480: 33 36 b9 02  	mulhu	a2, s2, a1
80001484: 13 56 46 00  	srli	a2, a2, 4
80001488: 33 06 96 03  	mul	a2, a2, s9
8000148c: 33 06 c9 40  	sub	a2, s2, a2
80001490: d3 04 06 d2  	fcvt.d.w	fs1, a2
80001494: 03 2a 81 06  	lw	s4, 104(sp)
80001498: 33 36 ba 02  	mulhu	a2, s4, a1
8000149c: 13 56 46 00  	srli	a2, a2, 4
800014a0: 33 06 96 03  	mul	a2, a2, s9
800014a4: 33 06 ca 40  	sub	a2, s4, a2
800014a8: 53 09 06 d2  	fcvt.d.w	fs2, a2
800014ac: 83 2a 41 06  	lw	s5, 100(sp)
800014b0: 33 b6 ba 02  	mulhu	a2, s5, a1
800014b4: 13 56 46 00  	srli	a2, a2, 4
800014b8: 33 06 96 03  	mul	a2, a2, s9
800014bc: 33 86 ca 40  	sub	a2, s5, a2
800014c0: d3 09 06 d2  	fcvt.d.w	fs3, a2
800014c4: 03 2b 01 06  	lw	s6, 96(sp)
800014c8: 33 36 bb 02  	mulhu	a2, s6, a1
800014cc: 13 56 46 00  	srli	a2, a2, 4
800014d0: 33 06 96 03  	mul	a2, a2, s9
800014d4: 33 06 cb 40  	sub	a2, s6, a2
800014d8: 53 0a 06 d2  	fcvt.d.w	fs4, a2
800014dc: 83 2b c1 05  	lw	s7, 92(sp)
800014e0: 33 b6 bb 02  	mulhu	a2, s7, a1
800014e4: 13 56 46 00  	srli	a2, a2, 4
800014e8: 33 06 96 03  	mul	a2, a2, s9
800014ec: 33 86 cb 40  	sub	a2, s7, a2
800014f0: d3 0a 06 d2  	fcvt.d.w	fs5, a2
800014f4: 83 28 81 05  	lw	a7, 88(sp)
800014f8: 33 b6 b8 02  	mulhu	a2, a7, a1
800014fc: 13 56 46 00  	srli	a2, a2, 4
80001500: 33 06 96 03  	mul	a2, a2, s9
80001504: 33 86 c8 40  	sub	a2, a7, a2
80001508: 53 0b 06 d2  	fcvt.d.w	fs6, a2
8000150c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001510: 53 00 42 22  	fmv.d	ft0, ft4
80001514: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001518: 53 00 42 22  	fmv.d	ft0, ft4
8000151c: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001520: 53 00 42 22  	fmv.d	ft0, ft4
80001524: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001528: 53 00 42 22  	fmv.d	ft0, ft4
8000152c: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001530: 53 00 42 22  	fmv.d	ft0, ft4
80001534: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001538: 53 00 42 22  	fmv.d	ft0, ft4
8000153c: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001540: 53 00 42 22  	fmv.d	ft0, ft4
80001544: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001548: 53 00 42 22  	fmv.d	ft0, ft4
8000154c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001550: 53 00 42 22  	fmv.d	ft0, ft4
80001554: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001558: 53 00 42 22  	fmv.d	ft0, ft4
8000155c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001560: 53 00 42 22  	fmv.d	ft0, ft4
80001564: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001568: 53 00 42 22  	fmv.d	ft0, ft4
8000156c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001570: 53 00 42 22  	fmv.d	ft0, ft4
80001574: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001578: 53 00 42 22  	fmv.d	ft0, ft4
8000157c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001580: 53 00 42 22  	fmv.d	ft0, ft4
80001584: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001588: 53 00 42 22  	fmv.d	ft0, ft4
8000158c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001590: 53 00 42 22  	fmv.d	ft0, ft4
80001594: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001598: 53 00 42 22  	fmv.d	ft0, ft4
8000159c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800015a0: 53 00 42 22  	fmv.d	ft0, ft4
800015a4: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
800015a8: 53 00 42 22  	fmv.d	ft0, ft4
800015ac: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
800015b0: 53 00 42 22  	fmv.d	ft0, ft4
800015b4: 53 80 31 22  	fmv.d	ft0, ft3
800015b8: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
800015bc: 53 00 42 22  	fmv.d	ft0, ft4
800015c0: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
800015c4: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nj; i++)
800015c8: 93 88 a8 01  	addi	a7, a7, 26
800015cc: 93 8b 9b 01  	addi	s7, s7, 25
800015d0: 23 2e 71 05  	sw	s7, 92(sp)
800015d4: 13 0b 7b 01  	addi	s6, s6, 23
800015d8: 23 20 61 07  	sw	s6, 96(sp)
800015dc: 93 8a 6a 01  	addi	s5, s5, 22
800015e0: 23 22 51 07  	sw	s5, 100(sp)
800015e4: 13 0a 5a 01  	addi	s4, s4, 21
800015e8: 23 24 41 07  	sw	s4, 104(sp)
800015ec: 13 09 49 01  	addi	s2, s2, 20
800015f0: 23 26 21 07  	sw	s2, 108(sp)
800015f4: 93 8f 3f 01  	addi	t6, t6, 19
800015f8: 23 28 f1 07  	sw	t6, 112(sp)
800015fc: 13 0f 2f 01  	addi	t5, t5, 18
80001600: 23 2a e1 07  	sw	t5, 116(sp)
80001604: 93 89 19 01  	addi	s3, s3, 17
80001608: 23 2c 31 07  	sw	s3, 120(sp)
8000160c: 93 8e 0e 01  	addi	t4, t4, 16
80001610: 23 2e d1 07  	sw	t4, 124(sp)
80001614: 13 0e fe 00  	addi	t3, t3, 15
80001618: 23 20 c1 09  	sw	t3, 128(sp)
8000161c: 93 83 e3 00  	addi	t2, t2, 14
80001620: 23 22 71 08  	sw	t2, 132(sp)
80001624: 13 03 d3 00  	addi	t1, t1, 13
80001628: 23 24 61 08  	sw	t1, 136(sp)
8000162c: 13 03 04 00  	mv	t1, s0
80001630: 13 03 c4 00  	addi	t1, s0, 12
80001634: 93 87 c7 00  	addi	a5, a5, 12
80001638: 93 82 b2 00  	addi	t0, t0, 11
8000163c: 23 26 51 08  	sw	t0, 140(sp)
80001640: 03 24 c1 04  	lw	s0, 76(sp)
80001644: 93 8d ad 00  	addi	s11, s11, 10
80001648: 23 28 b1 09  	sw	s11, 144(sp)
8000164c: 13 0d 9d 00  	addi	s10, s10, 9
80001650: 23 2a a1 09  	sw	s10, 148(sp)
80001654: 93 84 84 00  	addi	s1, s1, 8
80001658: 23 2c 91 08  	sw	s1, 152(sp)
8000165c: 93 86 86 00  	addi	a3, a3, 8
80001660: 13 04 74 00  	addi	s0, s0, 7
80001664: 03 26 c1 09  	lw	a2, 156(sp)
80001668: 13 06 66 00  	addi	a2, a2, 6
8000166c: 23 2e c1 08  	sw	a2, 156(sp)
80001670: 83 24 01 05  	lw	s1, 80(sp)
80001674: 13 08 68 00  	addi	a6, a6, 6
80001678: 93 84 54 00  	addi	s1, s1, 5
8000167c: 13 0c 4c 00  	addi	s8, s8, 4
80001680: 93 80 40 00  	addi	ra, ra, 4
80001684: 13 07 37 00  	addi	a4, a4, 3
80001688: 13 05 35 00  	addi	a0, a0, 3
8000168c: 13 06 50 1d  	addi	a2, zero, 469
80001690: 23 2c 11 05  	sw	a7, 88(sp)
80001694: e3 90 c8 c4  	bne	a7, a2, 0x800012d4 <.LBB0_80+0x118>
80001698: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000169c: 6f 00 80 4d  	j	0x80001b74 <.LBB0_80+0x9b8>
800016a0: 23 26 01 08  	sw	zero, 140(sp)
800016a4: 23 24 01 08  	sw	zero, 136(sp)
800016a8: 23 2e 01 08  	sw	zero, 156(sp)
800016ac: 23 2c 01 08  	sw	zero, 152(sp)
800016b0: 23 28 01 08  	sw	zero, 144(sp)
;   for (i = 0; i < nj; i++)
800016b4: 93 06 0d 06  	addi	a3, s10, 96
800016b8: 13 05 10 00  	addi	a0, zero, 1
800016bc: 23 20 a1 08  	sw	a0, 128(sp)
800016c0: b7 b5 aa aa  	lui	a1, 699051
800016c4: 13 87 b5 aa  	addi	a4, a1, -1365
800016c8: 87 31 03 00  	fld	ft3, 0(t1)
800016cc: 37 55 a5 3f  	lui	a0, 260693
800016d0: 13 05 55 55  	addi	a0, a0, 1365
800016d4: 23 28 a1 02  	sw	a0, 48(sp)
800016d8: 37 55 55 55  	lui	a0, 349525
800016dc: 13 05 55 55  	addi	a0, a0, 1365
800016e0: 23 26 a1 02  	sw	a0, 44(sp)
800016e4: 13 05 10 00  	addi	a0, zero, 1
800016e8: 23 2e a1 06  	sw	a0, 124(sp)
800016ec: 13 05 10 00  	addi	a0, zero, 1
800016f0: 23 2c a1 06  	sw	a0, 120(sp)
800016f4: 13 05 10 00  	addi	a0, zero, 1
800016f8: 23 2a a1 06  	sw	a0, 116(sp)
800016fc: 13 05 10 00  	addi	a0, zero, 1
80001700: 23 28 a1 06  	sw	a0, 112(sp)
80001704: 13 05 10 00  	addi	a0, zero, 1
80001708: 23 22 a1 08  	sw	a0, 132(sp)
8000170c: 13 05 10 00  	addi	a0, zero, 1
80001710: 23 26 a1 06  	sw	a0, 108(sp)
80001714: 13 05 10 00  	addi	a0, zero, 1
80001718: 23 24 a1 06  	sw	a0, 104(sp)
8000171c: 13 05 10 00  	addi	a0, zero, 1
80001720: 23 22 a1 06  	sw	a0, 100(sp)
80001724: 13 05 10 00  	addi	a0, zero, 1
80001728: 23 20 a1 06  	sw	a0, 96(sp)
8000172c: 13 05 10 00  	addi	a0, zero, 1
80001730: 23 2e a1 04  	sw	a0, 92(sp)
80001734: 13 05 10 00  	addi	a0, zero, 1
80001738: 23 2c a1 04  	sw	a0, 88(sp)
8000173c: 13 05 10 00  	addi	a0, zero, 1
80001740: 23 2a a1 04  	sw	a0, 84(sp)
80001744: 13 04 10 00  	addi	s0, zero, 1
80001748: 13 05 10 00  	addi	a0, zero, 1
8000174c: 23 28 a1 04  	sw	a0, 80(sp)
80001750: 13 05 10 00  	addi	a0, zero, 1
80001754: 23 26 a1 04  	sw	a0, 76(sp)
80001758: 13 05 10 00  	addi	a0, zero, 1
8000175c: 23 24 a1 04  	sw	a0, 72(sp)
80001760: 93 04 10 00  	addi	s1, zero, 1
80001764: 13 05 10 00  	addi	a0, zero, 1
80001768: 23 22 a1 04  	sw	a0, 68(sp)
8000176c: 13 05 10 00  	addi	a0, zero, 1
80001770: 23 20 a1 04  	sw	a0, 64(sp)
80001774: 13 05 10 00  	addi	a0, zero, 1
80001778: 23 2a a1 08  	sw	a0, 148(sp)
8000177c: 93 02 10 00  	addi	t0, zero, 1
80001780: 13 05 10 00  	addi	a0, zero, 1
80001784: 23 2e a1 02  	sw	a0, 60(sp)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80001788: 03 25 01 09  	lw	a0, 144(sp)
8000178c: b3 35 e5 02  	mulhu	a1, a0, a4
80001790: 93 d5 45 00  	srli	a1, a1, 4
80001794: 13 05 80 01  	addi	a0, zero, 24
80001798: b3 85 a5 02  	mul	a1, a1, a0
8000179c: b3 8d b2 40  	sub	s11, t0, a1
800017a0: 53 82 0d d2  	fcvt.d.w	ft4, s11
800017a4: 83 25 81 09  	lw	a1, 152(sp)
800017a8: b3 b5 e5 02  	mulhu	a1, a1, a4
800017ac: 93 d5 45 00  	srli	a1, a1, 4
800017b0: b3 85 a5 02  	mul	a1, a1, a0
800017b4: 03 26 41 09  	lw	a2, 148(sp)
800017b8: b3 05 b6 40  	sub	a1, a2, a1
800017bc: d3 82 05 d2  	fcvt.d.w	ft5, a1
800017c0: 83 2b 41 04  	lw	s7, 68(sp)
800017c4: b3 b5 eb 02  	mulhu	a1, s7, a4
800017c8: 93 d5 45 00  	srli	a1, a1, 4
800017cc: b3 85 a5 02  	mul	a1, a1, a0
800017d0: b3 85 bb 40  	sub	a1, s7, a1
800017d4: 53 83 05 d2  	fcvt.d.w	ft6, a1
800017d8: 83 25 c1 09  	lw	a1, 156(sp)
800017dc: b3 b5 e5 02  	mulhu	a1, a1, a4
800017e0: 93 d5 45 00  	srli	a1, a1, 4
800017e4: b3 85 a5 02  	mul	a1, a1, a0
800017e8: b3 85 b4 40  	sub	a1, s1, a1
800017ec: d3 83 05 d2  	fcvt.d.w	ft7, a1
800017f0: 03 29 c1 04  	lw	s2, 76(sp)
800017f4: b3 35 e9 02  	mulhu	a1, s2, a4
800017f8: 93 d5 45 00  	srli	a1, a1, 4
800017fc: b3 85 a5 02  	mul	a1, a1, a0
80001800: b3 05 b9 40  	sub	a1, s2, a1
80001804: 53 85 05 d2  	fcvt.d.w	fa0, a1
80001808: 83 2d 81 08  	lw	s11, 136(sp)
8000180c: b3 b5 ed 02  	mulhu	a1, s11, a4
80001810: 93 d5 45 00  	srli	a1, a1, 4
80001814: b3 85 a5 02  	mul	a1, a1, a0
80001818: b3 05 b4 40  	sub	a1, s0, a1
8000181c: d3 85 05 d2  	fcvt.d.w	fa1, a1
80001820: 83 28 81 05  	lw	a7, 88(sp)
80001824: b3 b5 e8 02  	mulhu	a1, a7, a4
80001828: 93 d5 45 00  	srli	a1, a1, 4
8000182c: b3 85 a5 02  	mul	a1, a1, a0
80001830: b3 85 b8 40  	sub	a1, a7, a1
80001834: 53 86 05 d2  	fcvt.d.w	fa2, a1
80001838: 83 2a 01 06  	lw	s5, 96(sp)
8000183c: b3 b5 ea 02  	mulhu	a1, s5, a4
80001840: 93 d5 45 00  	srli	a1, a1, 4
80001844: b3 85 a5 02  	mul	a1, a1, a0
80001848: b3 85 ba 40  	sub	a1, s5, a1
8000184c: d3 86 05 d2  	fcvt.d.w	fa3, a1
80001850: 83 20 81 06  	lw	ra, 104(sp)
80001854: b3 b5 e0 02  	mulhu	a1, ra, a4
80001858: 93 d5 45 00  	srli	a1, a1, 4
8000185c: b3 85 a5 02  	mul	a1, a1, a0
80001860: b3 85 b0 40  	sub	a1, ra, a1
80001864: 53 87 05 d2  	fcvt.d.w	fa4, a1
80001868: 03 26 c1 08  	lw	a2, 140(sp)
8000186c: b3 35 e6 02  	mulhu	a1, a2, a4
80001870: 93 d5 45 00  	srli	a1, a1, 4
80001874: b3 85 a5 02  	mul	a1, a1, a0
80001878: 83 2c 41 08  	lw	s9, 132(sp)
8000187c: b3 85 bc 40  	sub	a1, s9, a1
80001880: d3 87 05 d2  	fcvt.d.w	fa5, a1
80001884: 83 2e 41 07  	lw	t4, 116(sp)
80001888: b3 b5 ee 02  	mulhu	a1, t4, a4
8000188c: 93 d5 45 00  	srli	a1, a1, 4
80001890: b3 85 a5 02  	mul	a1, a1, a0
80001894: b3 85 be 40  	sub	a1, t4, a1
80001898: 53 88 05 d2  	fcvt.d.w	fa6, a1
8000189c: 03 23 01 08  	lw	t1, 128(sp)
800018a0: b3 35 e3 02  	mulhu	a1, t1, a4
800018a4: 93 d5 45 00  	srli	a1, a1, 4
800018a8: b3 85 a5 02  	mul	a1, a1, a0
800018ac: b3 05 b3 40  	sub	a1, t1, a1
800018b0: d3 88 05 d2  	fcvt.d.w	fa7, a1
800018b4: 83 23 c1 07  	lw	t2, 124(sp)
800018b8: b3 b5 e3 02  	mulhu	a1, t2, a4
800018bc: 93 d5 45 00  	srli	a1, a1, 4
800018c0: b3 85 a5 02  	mul	a1, a1, a0
800018c4: b3 85 b3 40  	sub	a1, t2, a1
800018c8: 53 8e 05 d2  	fcvt.d.w	ft8, a1
800018cc: 03 2e 81 07  	lw	t3, 120(sp)
800018d0: b3 35 ee 02  	mulhu	a1, t3, a4
800018d4: 93 d5 45 00  	srli	a1, a1, 4
800018d8: b3 85 a5 02  	mul	a1, a1, a0
800018dc: b3 05 be 40  	sub	a1, t3, a1
800018e0: d3 8e 05 d2  	fcvt.d.w	ft9, a1
800018e4: 83 29 01 07  	lw	s3, 112(sp)
800018e8: b3 b5 e9 02  	mulhu	a1, s3, a4
800018ec: 93 d5 45 00  	srli	a1, a1, 4
800018f0: b3 85 a5 02  	mul	a1, a1, a0
800018f4: b3 85 b9 40  	sub	a1, s3, a1
800018f8: 53 8f 05 d2  	fcvt.d.w	ft10, a1
800018fc: 03 2f c1 06  	lw	t5, 108(sp)
80001900: b3 35 ef 02  	mulhu	a1, t5, a4
80001904: 93 d5 45 00  	srli	a1, a1, 4
80001908: b3 85 a5 02  	mul	a1, a1, a0
8000190c: b3 05 bf 40  	sub	a1, t5, a1
80001910: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001914: 03 2a 41 06  	lw	s4, 100(sp)
80001918: b3 35 ea 02  	mulhu	a1, s4, a4
8000191c: 93 d5 45 00  	srli	a1, a1, 4
80001920: b3 85 a5 02  	mul	a1, a1, a0
80001924: b3 05 ba 40  	sub	a1, s4, a1
80001928: 53 84 05 d2  	fcvt.d.w	fs0, a1
8000192c: 03 28 c1 05  	lw	a6, 92(sp)
80001930: b3 35 e8 02  	mulhu	a1, a6, a4
80001934: 93 d5 45 00  	srli	a1, a1, 4
80001938: b3 85 a5 02  	mul	a1, a1, a0
8000193c: b3 05 b8 40  	sub	a1, a6, a1
80001940: d3 84 05 d2  	fcvt.d.w	fs1, a1
80001944: 83 2f 41 05  	lw	t6, 84(sp)
80001948: b3 b5 ef 02  	mulhu	a1, t6, a4
8000194c: 93 d5 45 00  	srli	a1, a1, 4
80001950: b3 85 a5 02  	mul	a1, a1, a0
80001954: b3 85 bf 40  	sub	a1, t6, a1
80001958: 53 89 05 d2  	fcvt.d.w	fs2, a1
8000195c: 03 2c 01 05  	lw	s8, 80(sp)
80001960: b3 35 ec 02  	mulhu	a1, s8, a4
80001964: 93 d5 45 00  	srli	a1, a1, 4
80001968: b3 85 a5 02  	mul	a1, a1, a0
8000196c: b3 05 bc 40  	sub	a1, s8, a1
80001970: d3 89 05 d2  	fcvt.d.w	fs3, a1
80001974: 03 2b 81 04  	lw	s6, 72(sp)
80001978: b3 35 eb 02  	mulhu	a1, s6, a4
8000197c: 93 d5 45 00  	srli	a1, a1, 4
80001980: b3 85 a5 02  	mul	a1, a1, a0
80001984: b3 05 bb 40  	sub	a1, s6, a1
80001988: 53 8a 05 d2  	fcvt.d.w	fs4, a1
8000198c: 03 2d 01 04  	lw	s10, 64(sp)
80001990: b3 35 ed 02  	mulhu	a1, s10, a4
80001994: 93 d5 45 00  	srli	a1, a1, 4
80001998: b3 85 a5 02  	mul	a1, a1, a0
8000199c: b3 05 bd 40  	sub	a1, s10, a1
800019a0: d3 8a 05 d2  	fcvt.d.w	fs5, a1
800019a4: 83 27 c1 03  	lw	a5, 60(sp)
800019a8: b3 b5 e7 02  	mulhu	a1, a5, a4
800019ac: 93 d5 45 00  	srli	a1, a1, 4
800019b0: b3 85 a5 02  	mul	a1, a1, a0
800019b4: b3 85 b7 40  	sub	a1, a5, a1
800019b8: 53 8b 05 d2  	fcvt.d.w	fs6, a1
800019bc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800019c0: 27 b0 46 fa  	fsd	ft4, -96(a3)
800019c4: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800019c8: 27 b4 46 fa  	fsd	ft4, -88(a3)
800019cc: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800019d0: 27 b8 46 fa  	fsd	ft4, -80(a3)
800019d4: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800019d8: 27 bc 46 fa  	fsd	ft4, -72(a3)
800019dc: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800019e0: 27 b0 46 fc  	fsd	ft4, -64(a3)
800019e4: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800019e8: 27 b4 46 fc  	fsd	ft4, -56(a3)
800019ec: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800019f0: 27 b8 46 fc  	fsd	ft4, -48(a3)
800019f4: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800019f8: 27 bc 46 fc  	fsd	ft4, -40(a3)
800019fc: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001a00: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001a04: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001a08: 27 b4 46 fe  	fsd	ft4, -24(a3)
80001a0c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001a10: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001a14: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001a18: 27 bc 46 fe  	fsd	ft4, -8(a3)
80001a1c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001a20: 27 b0 46 00  	fsd	ft4, 0(a3)
80001a24: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001a28: 27 b4 46 00  	fsd	ft4, 8(a3)
80001a2c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001a30: 27 b8 46 00  	fsd	ft4, 16(a3)
80001a34: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001a38: 27 bc 46 00  	fsd	ft4, 24(a3)
80001a3c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001a40: 27 b0 46 02  	fsd	ft4, 32(a3)
80001a44: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001a48: 27 b4 46 02  	fsd	ft4, 40(a3)
80001a4c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001a50: 27 b8 46 02  	fsd	ft4, 48(a3)
80001a54: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001a58: 27 bc 46 02  	fsd	ft4, 56(a3)
80001a5c: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001a60: 27 b0 46 04  	fsd	ft4, 64(a3)
80001a64: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80001a68: 27 b8 46 04  	fsd	ft4, 80(a3)
80001a6c: 83 25 01 03  	lw	a1, 48(sp)
80001a70: 23 a6 b6 04  	sw	a1, 76(a3)
80001a74: 83 25 c1 02  	lw	a1, 44(sp)
80001a78: 23 a4 b6 04  	sw	a1, 72(a3)
80001a7c: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80001a80: 27 bc 46 04  	fsd	ft4, 88(a3)
;   for (i = 0; i < nj; i++)
80001a84: 93 87 a7 01  	addi	a5, a5, 26
80001a88: 93 82 32 00  	addi	t0, t0, 3
80001a8c: 03 25 01 09  	lw	a0, 144(sp)
80001a90: 13 05 35 00  	addi	a0, a0, 3
80001a94: 23 28 a1 08  	sw	a0, 144(sp)
80001a98: 03 25 41 09  	lw	a0, 148(sp)
80001a9c: 13 05 45 00  	addi	a0, a0, 4
80001aa0: 23 2a a1 08  	sw	a0, 148(sp)
80001aa4: 03 25 81 09  	lw	a0, 152(sp)
80001aa8: 13 05 45 00  	addi	a0, a0, 4
80001aac: 23 2c a1 08  	sw	a0, 152(sp)
80001ab0: 13 0d 9d 01  	addi	s10, s10, 25
80001ab4: 23 20 a1 05  	sw	s10, 64(sp)
80001ab8: 93 8b 5b 00  	addi	s7, s7, 5
80001abc: 23 22 71 05  	sw	s7, 68(sp)
80001ac0: 93 84 64 00  	addi	s1, s1, 6
80001ac4: 03 25 c1 09  	lw	a0, 156(sp)
80001ac8: 13 05 65 00  	addi	a0, a0, 6
80001acc: 23 2e a1 08  	sw	a0, 156(sp)
80001ad0: 13 0b 7b 01  	addi	s6, s6, 23
80001ad4: 23 24 61 05  	sw	s6, 72(sp)
80001ad8: 13 09 79 00  	addi	s2, s2, 7
80001adc: 23 26 21 05  	sw	s2, 76(sp)
80001ae0: 13 0c 6c 01  	addi	s8, s8, 22
80001ae4: 23 28 81 05  	sw	s8, 80(sp)
80001ae8: 13 04 84 00  	addi	s0, s0, 8
80001aec: 93 8d 8d 00  	addi	s11, s11, 8
80001af0: 23 24 b1 09  	sw	s11, 136(sp)
80001af4: 93 8f 5f 01  	addi	t6, t6, 21
80001af8: 23 2a f1 05  	sw	t6, 84(sp)
80001afc: 93 88 98 00  	addi	a7, a7, 9
80001b00: 23 2c 11 05  	sw	a7, 88(sp)
80001b04: 13 08 48 01  	addi	a6, a6, 20
80001b08: 23 2e 01 05  	sw	a6, 92(sp)
80001b0c: 93 8a aa 00  	addi	s5, s5, 10
80001b10: 23 20 51 07  	sw	s5, 96(sp)
80001b14: 13 0a 3a 01  	addi	s4, s4, 19
80001b18: 23 22 41 07  	sw	s4, 100(sp)
80001b1c: 93 80 b0 00  	addi	ra, ra, 11
80001b20: 23 24 11 06  	sw	ra, 104(sp)
80001b24: 13 0f 2f 01  	addi	t5, t5, 18
80001b28: 23 26 e1 07  	sw	t5, 108(sp)
80001b2c: 93 8c cc 00  	addi	s9, s9, 12
80001b30: 23 22 91 09  	sw	s9, 132(sp)
80001b34: 13 06 c6 00  	addi	a2, a2, 12
80001b38: 23 26 c1 08  	sw	a2, 140(sp)
80001b3c: 93 89 19 01  	addi	s3, s3, 17
80001b40: 23 28 31 07  	sw	s3, 112(sp)
80001b44: 93 8e de 00  	addi	t4, t4, 13
80001b48: 23 2a d1 07  	sw	t4, 116(sp)
80001b4c: 13 0e 0e 01  	addi	t3, t3, 16
80001b50: 23 2c c1 07  	sw	t3, 120(sp)
80001b54: 93 86 06 0c  	addi	a3, a3, 192
80001b58: 93 83 f3 00  	addi	t2, t2, 15
80001b5c: 23 2e 71 06  	sw	t2, 124(sp)
80001b60: 13 03 e3 00  	addi	t1, t1, 14
80001b64: 23 20 61 08  	sw	t1, 128(sp)
80001b68: 13 05 50 1d  	addi	a0, zero, 469
80001b6c: 23 2e f1 02  	sw	a5, 60(sp)
80001b70: e3 9c a7 c0  	bne	a5, a0, 0x80001788 <.LBB0_80+0x5cc>
80001b74: 03 26 41 02  	lw	a2, 36(sp)
;   for (i = 0; i < ni; i++)
80001b78: 03 25 01 02  	lw	a0, 32(sp)
80001b7c: 33 05 c5 00  	add	a0, a0, a2
80001b80: 93 06 85 38  	addi	a3, a0, 904
80001b84: 13 55 46 01  	srli	a0, a2, 20
80001b88: 33 35 a0 00  	snez	a0, a0
80001b8c: b7 05 12 00  	lui	a1, 288
80001b90: 93 85 15 00  	addi	a1, a1, 1
80001b94: 23 2a d1 08  	sw	a3, 148(sp)
80001b98: b3 b5 b6 00  	sltu	a1, a3, a1
80001b9c: 33 75 b5 00  	and	a0, a0, a1

80001ba0 <.LBB0_81>:
80001ba0: 97 43 00 00  	auipc	t2, 4
80001ba4: 93 83 03 f9  	addi	t2, t2, -112
80001ba8: 23 2c a1 08  	sw	a0, 152(sp)
80001bac: 63 06 05 3a  	beqz	a0, 0x80001f58 <.LBB0_81+0x3b8>
80001bb0: 93 0b 00 00  	mv	s7, zero
80001bb4: 13 0c 00 00  	mv	s8, zero
80001bb8: 93 0c 00 00  	mv	s9, zero
80001bbc: 13 08 00 00  	mv	a6, zero
80001bc0: 93 08 00 00  	mv	a7, zero
80001bc4: 93 02 00 00  	mv	t0, zero
80001bc8: 13 03 00 00  	mv	t1, zero
80001bcc: 13 89 03 00  	mv	s2, t2
80001bd0: 93 03 00 00  	mv	t2, zero
80001bd4: 13 0e 00 00  	mv	t3, zero
80001bd8: 93 0e 00 00  	mv	t4, zero
80001bdc: 13 0f 00 00  	mv	t5, zero
80001be0: 93 0f 00 00  	mv	t6, zero
80001be4: 93 09 00 00  	mv	s3, zero
80001be8: 13 0a 00 00  	mv	s4, zero
80001bec: 93 0a 00 00  	mv	s5, zero
80001bf0: 13 0d 00 00  	mv	s10, zero
80001bf4: 93 00 00 00  	mv	ra, zero
80001bf8: 13 0b 00 00  	mv	s6, zero
80001bfc: 93 04 00 00  	mv	s1, zero
80001c00: 13 04 00 00  	mv	s0, zero
80001c04: 93 06 00 00  	mv	a3, zero
80001c08: 93 05 00 00  	mv	a1, zero
80001c0c: 13 07 00 00  	mv	a4, zero
80001c10: 13 05 80 00  	addi	a0, zero, 8
80001c14: 93 0d 70 01  	addi	s11, zero, 23
;   for (i = 0; i < ni; i++)
80001c18: 93 07 00 04  	addi	a5, zero, 64
80001c1c: ab a0 fd 00  	scfgw	s11, a5
80001c20: 93 07 00 0c  	addi	a5, zero, 192
80001c24: ab 20 f5 00  	scfgw	a0, a5
80001c28: 93 0d f0 00  	addi	s11, zero, 15
80001c2c: 93 07 00 06  	addi	a5, zero, 96
80001c30: ab a0 fd 00  	scfgw	s11, a5
80001c34: 93 07 00 0e  	addi	a5, zero, 224
80001c38: ab 20 f5 00  	scfgw	a0, a5
80001c3c: 13 05 00 02  	addi	a0, zero, 32
80001c40: ab 20 a0 00  	scfgw	zero, a0
80001c44: 2b 20 06 3a  	scfgwi	a2, 928
80001c48: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80001c4c: 37 95 2e ba  	lui	a0, 762601
80001c50: 93 07 35 ba  	addi	a5, a0, -1117
80001c54: 93 0d a0 fe  	addi	s11, zero, -22
80001c58: 87 31 09 00  	fld	ft3, 0(s2)
80001c5c: 13 05 60 01  	addi	a0, zero, 22
80001c60: 53 02 00 d2  	fcvt.d.w	ft4, zero
80001c64: 13 09 00 19  	addi	s2, zero, 400
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001c68: 33 b6 fb 02  	mulhu	a2, s7, a5
80001c6c: 13 56 46 00  	srli	a2, a2, 4
80001c70: 33 06 a6 02  	mul	a2, a2, a0
80001c74: 33 86 cb 40  	sub	a2, s7, a2
80001c78: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001c7c: 33 36 fc 02  	mulhu	a2, s8, a5
80001c80: 13 56 46 00  	srli	a2, a2, 4
80001c84: 33 06 a6 02  	mul	a2, a2, a0
80001c88: 33 06 cc 40  	sub	a2, s8, a2
80001c8c: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001c90: 33 b6 fc 02  	mulhu	a2, s9, a5
80001c94: 13 56 46 00  	srli	a2, a2, 4
80001c98: 33 06 a6 02  	mul	a2, a2, a0
80001c9c: 33 86 cc 40  	sub	a2, s9, a2
80001ca0: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001ca4: 33 36 f8 02  	mulhu	a2, a6, a5
80001ca8: 13 56 46 00  	srli	a2, a2, 4
80001cac: 33 06 a6 02  	mul	a2, a2, a0
80001cb0: 33 06 c8 40  	sub	a2, a6, a2
80001cb4: 53 05 06 d2  	fcvt.d.w	fa0, a2
80001cb8: 33 b6 f8 02  	mulhu	a2, a7, a5
80001cbc: 13 56 46 00  	srli	a2, a2, 4
80001cc0: 33 06 a6 02  	mul	a2, a2, a0
80001cc4: 33 86 c8 40  	sub	a2, a7, a2
80001cc8: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001ccc: 33 b6 f2 02  	mulhu	a2, t0, a5
80001cd0: 13 56 46 00  	srli	a2, a2, 4
80001cd4: 33 06 a6 02  	mul	a2, a2, a0
80001cd8: 33 86 c2 40  	sub	a2, t0, a2
80001cdc: 53 06 06 d2  	fcvt.d.w	fa2, a2
80001ce0: 33 36 f3 02  	mulhu	a2, t1, a5
80001ce4: 13 56 46 00  	srli	a2, a2, 4
80001ce8: 33 06 a6 02  	mul	a2, a2, a0
80001cec: 33 06 c3 40  	sub	a2, t1, a2
80001cf0: d3 06 06 d2  	fcvt.d.w	fa3, a2
80001cf4: 33 b6 f3 02  	mulhu	a2, t2, a5
80001cf8: 13 56 46 00  	srli	a2, a2, 4
80001cfc: 33 06 a6 02  	mul	a2, a2, a0
80001d00: 33 86 c3 40  	sub	a2, t2, a2
80001d04: 53 07 06 d2  	fcvt.d.w	fa4, a2
80001d08: 33 36 fe 02  	mulhu	a2, t3, a5
80001d0c: 13 56 46 00  	srli	a2, a2, 4
80001d10: 33 06 a6 02  	mul	a2, a2, a0
80001d14: 33 06 ce 40  	sub	a2, t3, a2
80001d18: d3 07 06 d2  	fcvt.d.w	fa5, a2
80001d1c: 33 b6 fe 02  	mulhu	a2, t4, a5
80001d20: 13 56 46 00  	srli	a2, a2, 4
80001d24: 33 06 a6 02  	mul	a2, a2, a0
80001d28: 33 86 ce 40  	sub	a2, t4, a2
80001d2c: 53 08 06 d2  	fcvt.d.w	fa6, a2
80001d30: 33 36 ff 02  	mulhu	a2, t5, a5
80001d34: 13 56 46 00  	srli	a2, a2, 4
80001d38: 33 06 a6 02  	mul	a2, a2, a0
80001d3c: 33 06 cf 40  	sub	a2, t5, a2
80001d40: d3 08 06 d2  	fcvt.d.w	fa7, a2
80001d44: 33 b6 ff 02  	mulhu	a2, t6, a5
80001d48: 13 56 46 00  	srli	a2, a2, 4
80001d4c: 33 06 a6 02  	mul	a2, a2, a0
80001d50: 33 86 cf 40  	sub	a2, t6, a2
80001d54: 53 0e 06 d2  	fcvt.d.w	ft8, a2
80001d58: 33 b6 f9 02  	mulhu	a2, s3, a5
80001d5c: 13 56 46 00  	srli	a2, a2, 4
80001d60: 33 06 a6 02  	mul	a2, a2, a0
80001d64: 33 86 c9 40  	sub	a2, s3, a2
80001d68: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80001d6c: 33 36 fa 02  	mulhu	a2, s4, a5
80001d70: 13 56 46 00  	srli	a2, a2, 4
80001d74: 33 06 a6 02  	mul	a2, a2, a0
80001d78: 33 06 ca 40  	sub	a2, s4, a2
80001d7c: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80001d80: 33 b6 fa 02  	mulhu	a2, s5, a5
80001d84: 13 56 46 00  	srli	a2, a2, 4
80001d88: 33 06 a6 02  	mul	a2, a2, a0
80001d8c: 33 86 ca 40  	sub	a2, s5, a2
80001d90: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80001d94: 33 36 fd 02  	mulhu	a2, s10, a5
80001d98: 13 56 46 00  	srli	a2, a2, 4
80001d9c: 33 06 a6 02  	mul	a2, a2, a0
80001da0: 33 06 cd 40  	sub	a2, s10, a2
80001da4: 53 04 06 d2  	fcvt.d.w	fs0, a2
80001da8: 33 b6 f0 02  	mulhu	a2, ra, a5
80001dac: 13 56 46 00  	srli	a2, a2, 4
80001db0: 33 06 a6 02  	mul	a2, a2, a0
80001db4: 33 86 c0 40  	sub	a2, ra, a2
80001db8: d3 04 06 d2  	fcvt.d.w	fs1, a2
80001dbc: 33 36 fb 02  	mulhu	a2, s6, a5
80001dc0: 13 56 46 00  	srli	a2, a2, 4
80001dc4: 33 06 a6 02  	mul	a2, a2, a0
80001dc8: 33 06 cb 40  	sub	a2, s6, a2
80001dcc: 53 09 06 d2  	fcvt.d.w	fs2, a2
80001dd0: 33 b6 f4 02  	mulhu	a2, s1, a5
80001dd4: 13 56 46 00  	srli	a2, a2, 4
80001dd8: 33 06 a6 02  	mul	a2, a2, a0
80001ddc: 33 86 c4 40  	sub	a2, s1, a2
80001de0: d3 09 06 d2  	fcvt.d.w	fs3, a2
80001de4: 33 36 f4 02  	mulhu	a2, s0, a5
80001de8: 13 56 46 00  	srli	a2, a2, 4
80001dec: 33 06 a6 02  	mul	a2, a2, a0
80001df0: 33 06 c4 40  	sub	a2, s0, a2
80001df4: 53 0a 06 d2  	fcvt.d.w	fs4, a2
80001df8: 33 b6 f6 02  	mulhu	a2, a3, a5
80001dfc: 13 56 46 00  	srli	a2, a2, 4
80001e00: 33 06 a6 02  	mul	a2, a2, a0
80001e04: 33 86 c6 40  	sub	a2, a3, a2
80001e08: d3 0a 06 d2  	fcvt.d.w	fs5, a2
80001e0c: 33 b6 f5 02  	mulhu	a2, a1, a5
80001e10: 13 56 46 00  	srli	a2, a2, 4
80001e14: 33 06 a6 02  	mul	a2, a2, a0
80001e18: 33 86 c5 40  	sub	a2, a1, a2
80001e1c: 53 0b 06 d2  	fcvt.d.w	fs6, a2
80001e20: 33 36 f7 02  	mulhu	a2, a4, a5
80001e24: 13 56 46 00  	srli	a2, a2, 4
80001e28: 33 06 b6 03  	mul	a2, a2, s11
80001e2c: 33 06 c7 00  	add	a2, a4, a2
80001e30: d3 0b 06 d2  	fcvt.d.w	fs7, a2
80001e34: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001e38: 53 80 52 22  	fmv.d	ft0, ft5
80001e3c: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001e40: 53 80 52 22  	fmv.d	ft0, ft5
80001e44: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001e48: 53 80 52 22  	fmv.d	ft0, ft5
80001e4c: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001e50: 53 80 52 22  	fmv.d	ft0, ft5
80001e54: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001e58: 53 80 52 22  	fmv.d	ft0, ft5
80001e5c: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001e60: 53 80 52 22  	fmv.d	ft0, ft5
80001e64: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001e68: 53 80 52 22  	fmv.d	ft0, ft5
80001e6c: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001e70: 53 80 52 22  	fmv.d	ft0, ft5
80001e74: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001e78: 53 80 52 22  	fmv.d	ft0, ft5
80001e7c: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001e80: 53 80 52 22  	fmv.d	ft0, ft5
80001e84: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001e88: 53 80 52 22  	fmv.d	ft0, ft5
80001e8c: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001e90: 53 80 52 22  	fmv.d	ft0, ft5
80001e94: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001e98: 53 80 52 22  	fmv.d	ft0, ft5
80001e9c: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001ea0: 53 80 52 22  	fmv.d	ft0, ft5
80001ea4: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001ea8: 53 80 52 22  	fmv.d	ft0, ft5
80001eac: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001eb0: 53 80 52 22  	fmv.d	ft0, ft5
80001eb4: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001eb8: 53 80 52 22  	fmv.d	ft0, ft5
80001ebc: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001ec0: 53 80 52 22  	fmv.d	ft0, ft5
80001ec4: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001ec8: 53 80 52 22  	fmv.d	ft0, ft5
80001ecc: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001ed0: 53 80 52 22  	fmv.d	ft0, ft5
80001ed4: 53 00 42 22  	fmv.d	ft0, ft4
80001ed8: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001edc: 53 80 52 22  	fmv.d	ft0, ft5
80001ee0: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80001ee4: 53 80 52 22  	fmv.d	ft0, ft5
80001ee8: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80001eec: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < ni; i++)
80001ef0: 13 07 97 01  	addi	a4, a4, 25
80001ef4: 93 85 85 01  	addi	a1, a1, 24
80001ef8: 93 86 76 01  	addi	a3, a3, 23
80001efc: 13 04 54 01  	addi	s0, s0, 21
80001f00: 93 84 44 01  	addi	s1, s1, 20
80001f04: 13 0b 3b 01  	addi	s6, s6, 19
80001f08: 93 80 20 01  	addi	ra, ra, 18
80001f0c: 13 0d 1d 01  	addi	s10, s10, 17
80001f10: 93 8a 0a 01  	addi	s5, s5, 16
80001f14: 13 0a fa 00  	addi	s4, s4, 15
80001f18: 93 89 e9 00  	addi	s3, s3, 14
80001f1c: 93 8f df 00  	addi	t6, t6, 13
80001f20: 13 0f cf 00  	addi	t5, t5, 12
80001f24: 93 8e be 00  	addi	t4, t4, 11
80001f28: 13 0e ae 00  	addi	t3, t3, 10
80001f2c: 93 83 93 00  	addi	t2, t2, 9
80001f30: 13 03 83 00  	addi	t1, t1, 8
80001f34: 93 82 72 00  	addi	t0, t0, 7
80001f38: 93 88 68 00  	addi	a7, a7, 6
80001f3c: 13 08 58 00  	addi	a6, a6, 5
80001f40: 93 8c 4c 00  	addi	s9, s9, 4
80001f44: 13 0c 3c 00  	addi	s8, s8, 3
80001f48: 93 8b 2b 00  	addi	s7, s7, 2
80001f4c: e3 1e 27 d1  	bne	a4, s2, 0x80001c68 <.LBB0_81+0xc8>
80001f50: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001f54: 6f 00 40 39  	j	0x800022e8 <.LBB0_81+0x748>
80001f58: 93 06 00 00  	mv	a3, zero
80001f5c: 13 07 00 00  	mv	a4, zero
80001f60: 93 07 00 00  	mv	a5, zero
80001f64: 93 04 00 00  	mv	s1, zero
80001f68: 93 05 00 00  	mv	a1, zero
80001f6c: 13 0e 00 00  	mv	t3, zero
80001f70: 93 0e 00 00  	mv	t4, zero
80001f74: 13 0f 00 00  	mv	t5, zero
80001f78: 93 0f 00 00  	mv	t6, zero
80001f7c: 93 09 00 00  	mv	s3, zero
80001f80: 13 0a 00 00  	mv	s4, zero
80001f84: 93 0a 00 00  	mv	s5, zero
80001f88: 93 0b 00 00  	mv	s7, zero
80001f8c: 13 09 00 00  	mv	s2, zero
80001f90: 13 0c 00 00  	mv	s8, zero
80001f94: 93 0c 00 00  	mv	s9, zero
80001f98: 13 0d 00 00  	mv	s10, zero
80001f9c: 93 0d 00 00  	mv	s11, zero
80001fa0: 13 0b 00 00  	mv	s6, zero
80001fa4: 13 08 00 00  	mv	a6, zero
80001fa8: 93 08 00 00  	mv	a7, zero
80001fac: 93 02 00 00  	mv	t0, zero
80001fb0: 13 03 00 00  	mv	t1, zero
;   for (i = 0; i < ni; i++)
80001fb4: 13 04 06 06  	addi	s0, a2, 96
80001fb8: 37 95 2e ba  	lui	a0, 762601
80001fbc: 13 05 35 ba  	addi	a0, a0, -1117
80001fc0: 87 b1 03 00  	fld	ft3, 0(t2)
80001fc4: 93 03 60 01  	addi	t2, zero, 22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001fc8: 33 b6 a2 02  	mulhu	a2, t0, a0
80001fcc: 13 56 46 00  	srli	a2, a2, 4
80001fd0: 33 06 76 02  	mul	a2, a2, t2
80001fd4: b3 80 c2 40  	sub	ra, t0, a2
80001fd8: 53 82 00 d2  	fcvt.d.w	ft4, ra
80001fdc: 33 b6 a8 02  	mulhu	a2, a7, a0
80001fe0: 13 56 46 00  	srli	a2, a2, 4
80001fe4: 33 06 76 02  	mul	a2, a2, t2
80001fe8: 33 86 c8 40  	sub	a2, a7, a2
80001fec: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001ff0: 33 36 ab 02  	mulhu	a2, s6, a0
80001ff4: 13 56 46 00  	srli	a2, a2, 4
80001ff8: 33 06 76 02  	mul	a2, a2, t2
80001ffc: 33 06 cb 40  	sub	a2, s6, a2
80002000: 53 03 06 d2  	fcvt.d.w	ft6, a2
80002004: 33 36 ad 02  	mulhu	a2, s10, a0
80002008: 13 56 46 00  	srli	a2, a2, 4
8000200c: 33 06 76 02  	mul	a2, a2, t2
80002010: 33 06 cd 40  	sub	a2, s10, a2
80002014: d3 03 06 d2  	fcvt.d.w	ft7, a2
80002018: 33 b6 ac 02  	mulhu	a2, s9, a0
8000201c: 13 56 46 00  	srli	a2, a2, 4
80002020: 33 06 76 02  	mul	a2, a2, t2
80002024: 33 86 cc 40  	sub	a2, s9, a2
80002028: 53 05 06 d2  	fcvt.d.w	fa0, a2
8000202c: 33 36 a9 02  	mulhu	a2, s2, a0
80002030: 13 56 46 00  	srli	a2, a2, 4
80002034: 33 06 76 02  	mul	a2, a2, t2
80002038: 33 06 c9 40  	sub	a2, s2, a2
8000203c: d3 05 06 d2  	fcvt.d.w	fa1, a2
80002040: 33 b6 aa 02  	mulhu	a2, s5, a0
80002044: 13 56 46 00  	srli	a2, a2, 4
80002048: 33 06 76 02  	mul	a2, a2, t2
8000204c: 33 86 ca 40  	sub	a2, s5, a2
80002050: 53 06 06 d2  	fcvt.d.w	fa2, a2
80002054: 33 b6 a9 02  	mulhu	a2, s3, a0
80002058: 13 56 46 00  	srli	a2, a2, 4
8000205c: 33 06 76 02  	mul	a2, a2, t2
80002060: 33 86 c9 40  	sub	a2, s3, a2
80002064: d3 06 06 d2  	fcvt.d.w	fa3, a2
80002068: 33 36 af 02  	mulhu	a2, t5, a0
8000206c: 13 56 46 00  	srli	a2, a2, 4
80002070: 33 06 76 02  	mul	a2, a2, t2
80002074: 33 06 cf 40  	sub	a2, t5, a2
80002078: 53 07 06 d2  	fcvt.d.w	fa4, a2
8000207c: 33 36 ae 02  	mulhu	a2, t3, a0
80002080: 13 56 46 00  	srli	a2, a2, 4
80002084: 33 06 76 02  	mul	a2, a2, t2
80002088: 33 06 ce 40  	sub	a2, t3, a2
8000208c: d3 07 06 d2  	fcvt.d.w	fa5, a2
80002090: 33 b6 a4 02  	mulhu	a2, s1, a0
80002094: 13 56 46 00  	srli	a2, a2, 4
80002098: 33 06 76 02  	mul	a2, a2, t2
8000209c: 33 86 c4 40  	sub	a2, s1, a2
800020a0: 53 08 06 d2  	fcvt.d.w	fa6, a2
800020a4: 33 b6 a6 02  	mulhu	a2, a3, a0
800020a8: 13 56 46 00  	srli	a2, a2, 4
800020ac: 33 06 76 02  	mul	a2, a2, t2
800020b0: 33 86 c6 40  	sub	a2, a3, a2
800020b4: d3 08 06 d2  	fcvt.d.w	fa7, a2
800020b8: 33 36 a7 02  	mulhu	a2, a4, a0
800020bc: 13 56 46 00  	srli	a2, a2, 4
800020c0: 33 06 76 02  	mul	a2, a2, t2
800020c4: 33 06 c7 40  	sub	a2, a4, a2
800020c8: 53 0e 06 d2  	fcvt.d.w	ft8, a2
800020cc: 33 b6 a7 02  	mulhu	a2, a5, a0
800020d0: 13 56 46 00  	srli	a2, a2, 4
800020d4: 33 06 76 02  	mul	a2, a2, t2
800020d8: 33 86 c7 40  	sub	a2, a5, a2
800020dc: d3 0e 06 d2  	fcvt.d.w	ft9, a2
800020e0: 33 b6 a5 02  	mulhu	a2, a1, a0
800020e4: 13 56 46 00  	srli	a2, a2, 4
800020e8: 33 06 76 02  	mul	a2, a2, t2
800020ec: 33 86 c5 40  	sub	a2, a1, a2
800020f0: 53 0f 06 d2  	fcvt.d.w	ft10, a2
800020f4: 33 b6 ae 02  	mulhu	a2, t4, a0
800020f8: 13 56 46 00  	srli	a2, a2, 4
800020fc: 33 06 76 02  	mul	a2, a2, t2
80002100: 33 86 ce 40  	sub	a2, t4, a2
80002104: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80002108: 33 b6 af 02  	mulhu	a2, t6, a0
8000210c: 13 56 46 00  	srli	a2, a2, 4
80002110: 33 06 76 02  	mul	a2, a2, t2
80002114: 33 86 cf 40  	sub	a2, t6, a2
80002118: 53 04 06 d2  	fcvt.d.w	fs0, a2
8000211c: 33 36 aa 02  	mulhu	a2, s4, a0
80002120: 13 56 46 00  	srli	a2, a2, 4
80002124: 33 06 76 02  	mul	a2, a2, t2
80002128: 33 06 ca 40  	sub	a2, s4, a2
8000212c: d3 04 06 d2  	fcvt.d.w	fs1, a2
80002130: 33 b6 ab 02  	mulhu	a2, s7, a0
80002134: 13 56 46 00  	srli	a2, a2, 4
80002138: 33 06 76 02  	mul	a2, a2, t2
8000213c: 33 86 cb 40  	sub	a2, s7, a2
80002140: 53 09 06 d2  	fcvt.d.w	fs2, a2
80002144: 33 36 ac 02  	mulhu	a2, s8, a0
80002148: 13 56 46 00  	srli	a2, a2, 4
8000214c: 33 06 76 02  	mul	a2, a2, t2
80002150: 33 06 cc 40  	sub	a2, s8, a2
80002154: d3 09 06 d2  	fcvt.d.w	fs3, a2
80002158: 33 b6 ad 02  	mulhu	a2, s11, a0
8000215c: 13 56 46 00  	srli	a2, a2, 4
80002160: 33 06 76 02  	mul	a2, a2, t2
80002164: 33 86 cd 40  	sub	a2, s11, a2
80002168: 53 0a 06 d2  	fcvt.d.w	fs4, a2
8000216c: 33 36 a8 02  	mulhu	a2, a6, a0
80002170: 13 56 46 00  	srli	a2, a2, 4
80002174: 33 06 76 02  	mul	a2, a2, t2
80002178: 33 06 c8 40  	sub	a2, a6, a2
8000217c: d3 0a 06 d2  	fcvt.d.w	fs5, a2
80002180: 33 36 a3 02  	mulhu	a2, t1, a0
80002184: 13 56 46 00  	srli	a2, a2, 4
80002188: 93 80 05 00  	mv	ra, a1
8000218c: 93 85 04 00  	mv	a1, s1
80002190: 93 84 07 00  	mv	s1, a5
80002194: 93 07 07 00  	mv	a5, a4
80002198: 13 87 06 00  	mv	a4, a3
8000219c: 93 06 a0 fe  	addi	a3, zero, -22
800021a0: 33 06 d6 02  	mul	a2, a2, a3
800021a4: 93 06 07 00  	mv	a3, a4
800021a8: 13 87 07 00  	mv	a4, a5
800021ac: 93 87 04 00  	mv	a5, s1
800021b0: 93 84 05 00  	mv	s1, a1
800021b4: 93 85 00 00  	mv	a1, ra
800021b8: 33 06 c3 00  	add	a2, t1, a2
800021bc: 53 0b 06 d2  	fcvt.d.w	fs6, a2
800021c0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800021c4: 27 30 44 fa  	fsd	ft4, -96(s0)
800021c8: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800021cc: 27 34 44 fa  	fsd	ft4, -88(s0)
800021d0: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800021d4: 27 38 44 fa  	fsd	ft4, -80(s0)
800021d8: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800021dc: 27 3c 44 fa  	fsd	ft4, -72(s0)
800021e0: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800021e4: 27 30 44 fc  	fsd	ft4, -64(s0)
800021e8: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800021ec: 27 34 44 fc  	fsd	ft4, -56(s0)
800021f0: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800021f4: 27 38 44 fc  	fsd	ft4, -48(s0)
800021f8: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800021fc: 27 3c 44 fc  	fsd	ft4, -40(s0)
80002200: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80002204: 27 30 44 fe  	fsd	ft4, -32(s0)
80002208: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
8000220c: 27 34 44 fe  	fsd	ft4, -24(s0)
80002210: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80002214: 27 38 44 fe  	fsd	ft4, -16(s0)
80002218: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
8000221c: 27 3c 44 fe  	fsd	ft4, -8(s0)
80002220: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80002224: 27 30 44 00  	fsd	ft4, 0(s0)
80002228: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
8000222c: 27 34 44 00  	fsd	ft4, 8(s0)
80002230: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80002234: 27 38 44 00  	fsd	ft4, 16(s0)
80002238: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000223c: 27 3c 44 00  	fsd	ft4, 24(s0)
80002240: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80002244: 27 30 44 02  	fsd	ft4, 32(s0)
80002248: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
8000224c: 27 34 44 02  	fsd	ft4, 40(s0)
80002250: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80002254: 27 38 44 02  	fsd	ft4, 48(s0)
80002258: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
8000225c: 27 3c 44 02  	fsd	ft4, 56(s0)
80002260: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80002264: 27 34 44 04  	fsd	ft4, 72(s0)
80002268: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
8000226c: 27 38 44 04  	fsd	ft4, 80(s0)
80002270: 23 22 04 04  	sw	zero, 68(s0)
80002274: 23 20 04 04  	sw	zero, 64(s0)
80002278: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
8000227c: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < ni; i++)
80002280: 13 03 93 01  	addi	t1, t1, 25
80002284: 93 82 22 00  	addi	t0, t0, 2
80002288: 93 88 38 00  	addi	a7, a7, 3
8000228c: 13 08 88 01  	addi	a6, a6, 24
80002290: 13 0b 4b 00  	addi	s6, s6, 4
80002294: 93 8d 7d 01  	addi	s11, s11, 23
80002298: 13 0d 5d 00  	addi	s10, s10, 5
8000229c: 93 8c 6c 00  	addi	s9, s9, 6
800022a0: 13 0c 5c 01  	addi	s8, s8, 21
800022a4: 13 09 79 00  	addi	s2, s2, 7
800022a8: 93 8b 4b 01  	addi	s7, s7, 20
800022ac: 93 8a 8a 00  	addi	s5, s5, 8
800022b0: 13 0a 3a 01  	addi	s4, s4, 19
800022b4: 93 89 99 00  	addi	s3, s3, 9
800022b8: 93 8f 2f 01  	addi	t6, t6, 18
800022bc: 13 0f af 00  	addi	t5, t5, 10
800022c0: 93 8e 1e 01  	addi	t4, t4, 17
800022c4: 13 0e be 00  	addi	t3, t3, 11
800022c8: 93 85 00 01  	addi	a1, ra, 16
800022cc: 93 84 c4 00  	addi	s1, s1, 12
800022d0: 93 87 f7 00  	addi	a5, a5, 15
800022d4: 13 04 04 0c  	addi	s0, s0, 192
800022d8: 13 07 e7 00  	addi	a4, a4, 14
800022dc: 93 86 d6 00  	addi	a3, a3, 13
800022e0: 13 06 00 19  	addi	a2, zero, 400
800022e4: e3 12 c3 ce  	bne	t1, a2, 0x80001fc8 <.LBB0_81+0x428>
800022e8: 83 29 c1 01  	lw	s3, 28(sp)
800022ec: 83 27 01 02  	lw	a5, 32(sp)
;   for (i = 0; i < ni; i++) {
800022f0: 33 85 37 01  	add	a0, a5, s3
800022f4: 93 03 85 08  	addi	t2, a0, 136
800022f8: 03 25 41 01  	lw	a0, 20(sp)
800022fc: 33 35 35 01  	sltu	a0, a0, s3
80002300: 03 27 41 03  	lw	a4, 52(sp)
80002304: b3 b5 e3 00  	sltu	a1, t2, a4
80002308: 33 e5 a5 00  	or	a0, a1, a0
8000230c: 83 25 81 00  	lw	a1, 8(sp)
80002310: b3 b5 35 01  	sltu	a1, a1, s3
80002314: 83 26 81 03  	lw	a3, 56(sp)
80002318: 33 b6 d3 00  	sltu	a2, t2, a3
8000231c: b3 65 b6 00  	or	a1, a2, a1
80002320: 33 75 b5 00  	and	a0, a0, a1
80002324: 83 25 81 01  	lw	a1, 24(sp)
80002328: 33 f5 a5 00  	and	a0, a1, a0
8000232c: 83 25 41 00  	lw	a1, 4(sp)
80002330: 33 f5 a5 00  	and	a0, a1, a0
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002334: f3 25 00 b0  	csrr	a1, mcycle
80002338: 23 28 b1 08  	sw	a1, 144(sp)
8000233c: 23 26 71 08  	sw	t2, 140(sp)
80002340: 63 04 05 24  	beqz	a0, 0x80002588 <.LBB0_82+0x1a4>
80002344: 13 05 00 00  	mv	a0, zero
80002348: 93 05 80 00  	addi	a1, zero, 8
8000234c: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++) {
80002350: 93 04 00 04  	addi	s1, zero, 64
80002354: 93 07 00 0c  	addi	a5, zero, 192
80002358: ab 20 96 00  	scfgw	a2, s1
8000235c: ab a0 f5 00  	scfgw	a1, a5
80002360: 13 04 80 f5  	addi	s0, zero, -168
80002364: 93 08 10 01  	addi	a7, zero, 17
80002368: 93 07 00 06  	addi	a5, zero, 96
8000236c: 93 04 00 0e  	addi	s1, zero, 224
80002370: ab a0 f8 00  	scfgw	a7, a5
80002374: ab 20 94 00  	scfgw	s0, s1
80002378: 13 08 f0 00  	addi	a6, zero, 15
8000237c: 93 07 00 08  	addi	a5, zero, 128
80002380: 93 04 00 10  	addi	s1, zero, 256
80002384: ab 20 f8 00  	scfgw	a6, a5
80002388: ab a0 95 00  	scfgw	a1, s1
8000238c: 93 05 00 02  	addi	a1, zero, 32
80002390: ab 20 b0 00  	scfgw	zero, a1
80002394: 2b 20 07 34  	scfgwi	a4, 832
80002398: 93 05 00 09  	addi	a1, zero, 144
8000239c: 93 07 10 00  	addi	a5, zero, 1
800023a0: 93 84 07 04  	addi	s1, a5, 64
800023a4: 13 84 07 0c  	addi	s0, a5, 192
800023a8: ab 20 96 00  	scfgw	a2, s1
800023ac: ab a0 85 00  	scfgw	a1, s0
800023b0: 37 f6 ff ff  	lui	a2, 1048575
800023b4: 93 04 86 43  	addi	s1, a2, 1080
800023b8: 13 84 07 06  	addi	s0, a5, 96
800023bc: ab a0 88 00  	scfgw	a7, s0
800023c0: 13 87 07 0e  	addi	a4, a5, 224
800023c4: ab a0 e4 00  	scfgw	s1, a4
800023c8: 13 06 86 3a  	addi	a2, a2, 936
800023cc: 13 87 07 08  	addi	a4, a5, 128
800023d0: 93 84 07 10  	addi	s1, a5, 256
800023d4: ab 20 e8 00  	scfgw	a6, a4
800023d8: ab 20 96 00  	scfgw	a2, s1
800023dc: 13 86 07 02  	addi	a2, a5, 32
800023e0: ab 20 c0 00  	scfgw	zero, a2

800023e4 <.LBB0_82>:
800023e4: 17 36 00 00  	auipc	a2, 3
800023e8: 13 06 46 75  	addi	a2, a2, 1876
800023ec: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
800023f0: 2b a0 16 34  	scfgwi	a3, 833
800023f4: 73 e6 00 7c  	csrrsi	a2, 1984, 1
800023f8: 13 06 00 01  	addi	a2, zero, 16
800023fc: 93 86 09 00  	mv	a3, s3
80002400: 13 07 00 00  	mv	a4, zero
;       tmp[i][j] = 0.0;
80002404: b3 87 e6 00  	add	a5, a3, a4
80002408: 23 a2 07 00  	sw	zero, 4(a5)
8000240c: 23 a0 07 00  	sw	zero, 0(a5)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002410: 07 b3 07 00  	fld	ft6, 0(a5)
80002414: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002418: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000241c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002420: 07 b3 07 00  	fld	ft6, 0(a5)
80002424: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002428: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000242c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002430: 07 b3 07 00  	fld	ft6, 0(a5)
80002434: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002438: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000243c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002440: 07 b3 07 00  	fld	ft6, 0(a5)
80002444: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002448: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000244c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002450: 07 b3 07 00  	fld	ft6, 0(a5)
80002454: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002458: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000245c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002460: 07 b3 07 00  	fld	ft6, 0(a5)
80002464: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002468: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000246c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002470: 07 b3 07 00  	fld	ft6, 0(a5)
80002474: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002478: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000247c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002480: 07 b3 07 00  	fld	ft6, 0(a5)
80002484: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002488: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000248c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002490: 07 b3 07 00  	fld	ft6, 0(a5)
80002494: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002498: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000249c: 27 b0 47 00  	fsd	ft4, 0(a5)
800024a0: 07 b3 07 00  	fld	ft6, 0(a5)
800024a4: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024a8: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024ac: 27 b0 47 00  	fsd	ft4, 0(a5)
800024b0: 07 b3 07 00  	fld	ft6, 0(a5)
800024b4: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024b8: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024bc: 27 b0 47 00  	fsd	ft4, 0(a5)
800024c0: 07 b3 07 00  	fld	ft6, 0(a5)
800024c4: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024c8: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024cc: 27 b0 47 00  	fsd	ft4, 0(a5)
800024d0: 07 b3 07 00  	fld	ft6, 0(a5)
800024d4: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024d8: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024dc: 27 b0 47 00  	fsd	ft4, 0(a5)
800024e0: 07 b3 07 00  	fld	ft6, 0(a5)
800024e4: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024e8: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024ec: 27 b0 47 00  	fsd	ft4, 0(a5)
800024f0: 07 b3 07 00  	fld	ft6, 0(a5)
800024f4: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024f8: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024fc: 27 b0 47 00  	fsd	ft4, 0(a5)
80002500: 07 b3 07 00  	fld	ft6, 0(a5)
80002504: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002508: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000250c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002510: 07 b3 07 00  	fld	ft6, 0(a5)
80002514: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002518: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000251c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002520: 07 b3 07 00  	fld	ft6, 0(a5)
80002524: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002528: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000252c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002530: 07 b3 07 00  	fld	ft6, 0(a5)
80002534: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002538: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000253c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002540: 07 b3 07 00  	fld	ft6, 0(a5)
80002544: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002548: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000254c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002550: 07 b3 07 00  	fld	ft6, 0(a5)
80002554: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002558: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
8000255c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002560: 07 b3 07 00  	fld	ft6, 0(a5)
80002564: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002568: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
;     for (j = 0; j < nj; j++) {
8000256c: 13 07 87 00  	addi	a4, a4, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002570: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nj; j++) {
80002574: e3 18 b7 e8  	bne	a4, a1, 0x80002404 <.LBB0_82+0x20>
;   for (i = 0; i < ni; i++) {
80002578: 13 05 15 00  	addi	a0, a0, 1
8000257c: 93 86 06 09  	addi	a3, a3, 144
80002580: e3 10 c5 e8  	bne	a0, a2, 0x80002400 <.LBB0_82+0x1c>
80002584: 6f 00 40 3b  	j	0x80002938 <.LBB0_83+0x1f0>
80002588: 13 85 06 48  	addi	a0, a3, 1152
8000258c: 93 08 05 48  	addi	a7, a0, 1152
80002590: 13 85 46 4c  	addi	a0, a3, 1220
80002594: 13 05 45 4c  	addi	a0, a0, 1220
80002598: 13 88 06 63  	addi	a6, a3, 1584
8000259c: 13 83 86 6b  	addi	t1, a3, 1720
800025a0: 93 02 07 06  	addi	t0, a4, 96
800025a4: b3 87 57 00  	add	a5, a5, t0
800025a8: 93 87 07 1e  	addi	a5, a5, 480
800025ac: b3 34 35 01  	sltu	s1, a0, s3
800025b0: 33 b4 13 01  	sltu	s0, t2, a7
800025b4: b3 64 94 00  	or	s1, s0, s1
800025b8: 33 34 33 01  	sltu	s0, t1, s3
800025bc: b3 b5 03 01  	sltu	a1, t2, a6
800025c0: b3 e5 85 00  	or	a1, a1, s0
800025c4: 33 b4 37 01  	sltu	s0, a5, s3
800025c8: 33 b6 53 00  	sltu	a2, t2, t0
800025cc: 33 66 86 00  	or	a2, a2, s0
800025d0: b3 f5 b4 00  	and	a1, s1, a1
800025d4: b3 75 b6 00  	and	a1, a2, a1
800025d8: 13 d6 48 01  	srli	a2, a7, 20
800025dc: 33 36 c0 00  	snez	a2, a2
800025e0: b7 04 12 00  	lui	s1, 288
800025e4: 93 84 14 00  	addi	s1, s1, 1
800025e8: b3 36 95 00  	sltu	a3, a0, s1
800025ec: 33 76 d6 00  	and	a2, a2, a3
800025f0: b3 75 b6 00  	and	a1, a2, a1
800025f4: 13 56 48 01  	srli	a2, a6, 20
800025f8: 33 36 c0 00  	snez	a2, a2
800025fc: b3 36 93 00  	sltu	a3, t1, s1
80002600: 33 76 d6 00  	and	a2, a2, a3
80002604: b3 75 b6 00  	and	a1, a2, a1
80002608: 13 d6 42 01  	srli	a2, t0, 20
8000260c: 33 36 c0 00  	snez	a2, a2
80002610: b3 b6 97 00  	sltu	a3, a5, s1
80002614: 33 76 d6 00  	and	a2, a2, a3
80002618: b3 75 b6 00  	and	a1, a2, a1
8000261c: 63 82 05 32  	beqz	a1, 0x80002940 <.LBB0_83+0x1f8>
80002620: 13 04 00 00  	mv	s0, zero
80002624: 93 05 80 00  	addi	a1, zero, 8
80002628: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < ni; i++) {
8000262c: 93 06 00 04  	addi	a3, zero, 64
80002630: 13 05 00 0c  	addi	a0, zero, 192
80002634: ab 20 d6 00  	scfgw	a2, a3
80002638: ab a0 a5 00  	scfgw	a1, a0
8000263c: 93 06 80 f7  	addi	a3, zero, -136
80002640: 13 05 f0 00  	addi	a0, zero, 15
80002644: 93 07 00 06  	addi	a5, zero, 96
80002648: ab 20 f5 00  	scfgw	a0, a5
8000264c: 93 07 00 0e  	addi	a5, zero, 224
80002650: ab a0 f6 00  	scfgw	a3, a5
80002654: 93 07 00 02  	addi	a5, zero, 32
80002658: ab 20 f0 00  	scfgw	zero, a5
8000265c: 2b a0 08 32  	scfgwi	a7, 800
80002660: 93 07 10 00  	addi	a5, zero, 1
80002664: 93 84 07 04  	addi	s1, a5, 64
80002668: ab 20 96 00  	scfgw	a2, s1
8000266c: 93 84 07 0c  	addi	s1, a5, 192
80002670: ab a0 95 00  	scfgw	a1, s1
80002674: 93 85 07 06  	addi	a1, a5, 96
80002678: 93 84 07 0e  	addi	s1, a5, 224
8000267c: ab 20 b5 00  	scfgw	a0, a1
80002680: ab a0 96 00  	scfgw	a3, s1
80002684: 93 85 07 02  	addi	a1, a5, 32
80002688: ab 20 b0 00  	scfgw	zero, a1
8000268c: 2b 20 18 32  	scfgwi	a6, 801
80002690: 93 05 20 00  	addi	a1, zero, 2
80002694: 93 86 05 04  	addi	a3, a1, 64
80002698: 93 87 05 0c  	addi	a5, a1, 192
8000269c: ab 20 d6 00  	scfgw	a2, a3
800026a0: ab 20 f0 00  	scfgw	zero, a5
800026a4: 93 07 00 0b  	addi	a5, zero, 176
800026a8: 13 86 05 06  	addi	a2, a1, 96
800026ac: 93 86 05 0e  	addi	a3, a1, 224
800026b0: ab 20 c5 00  	scfgw	a0, a2
800026b4: ab a0 d7 00  	scfgw	a5, a3
800026b8: 93 85 05 02  	addi	a1, a1, 32
800026bc: ab 20 b0 00  	scfgw	zero, a1
800026c0: 2b a0 22 32  	scfgwi	t0, 802
800026c4: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800026c8: 13 0e 00 09  	addi	t3, zero, 144
800026cc: 13 8b 09 00  	mv	s6, s3
800026d0: 83 23 81 03  	lw	t2, 56(sp)
800026d4: 93 07 00 00  	mv	a5, zero
800026d8: 23 2e 81 08  	sw	s0, 156(sp)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800026dc: 13 05 00 0b  	addi	a0, zero, 176
800026e0: 33 05 a4 02  	mul	a0, s0, a0
800026e4: 33 04 a7 00  	add	s0, a4, a0
800026e8: 93 0e 84 00  	addi	t4, s0, 8
800026ec: 13 0f 04 01  	addi	t5, s0, 16
800026f0: 93 0f 84 01  	addi	t6, s0, 24
800026f4: 13 09 04 02  	addi	s2, s0, 32
800026f8: 93 09 84 02  	addi	s3, s0, 40
800026fc: 13 0a 04 03  	addi	s4, s0, 48
80002700: 93 0a 84 03  	addi	s5, s0, 56
80002704: 93 0b 04 04  	addi	s7, s0, 64
80002708: 13 0c 84 04  	addi	s8, s0, 72
8000270c: 93 0c 04 05  	addi	s9, s0, 80
80002710: 13 0d 84 05  	addi	s10, s0, 88
80002714: 93 0d 84 06  	addi	s11, s0, 104
80002718: 93 00 04 07  	addi	ra, s0, 112
8000271c: 13 03 84 07  	addi	t1, s0, 120
80002720: 13 05 04 08  	addi	a0, s0, 128
80002724: 13 06 84 08  	addi	a2, s0, 136
80002728: 93 04 04 09  	addi	s1, s0, 144
8000272c: 93 06 84 09  	addi	a3, s0, 152
80002730: 13 07 04 0a  	addi	a4, s0, 160
80002734: 13 08 84 0a  	addi	a6, s0, 168
;       tmp[i][j] = 0.0;
80002738: b3 08 fb 00  	add	a7, s6, a5
8000273c: 23 a2 08 00  	sw	zero, 4(a7)
80002740: 23 a0 08 00  	sw	zero, 0(a7)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002744: 07 32 04 00  	fld	ft4, 0(s0)

80002748 <.LBB0_83>:
80002748: 97 35 00 00  	auipc	a1, 3
8000274c: 93 85 05 3f  	addi	a1, a1, 1008
80002750: 87 b1 05 00  	fld	ft3, 0(a1)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002754: b3 82 f3 00  	add	t0, t2, a5
80002758: 87 b2 02 00  	fld	ft5, 0(t0)
8000275c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002760: 53 72 52 12  	fmul.d	ft4, ft4, ft5
80002764: 27 b0 48 00  	fsd	ft4, 0(a7)
80002768: 87 b2 0e 00  	fld	ft5, 0(t4)
8000276c: 07 b3 02 09  	fld	ft6, 144(t0)
80002770: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002774: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002778: 27 b0 48 00  	fsd	ft4, 0(a7)
8000277c: 87 32 0f 00  	fld	ft5, 0(t5)
80002780: 07 b3 02 12  	fld	ft6, 288(t0)
80002784: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002788: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
8000278c: 27 b0 48 00  	fsd	ft4, 0(a7)
80002790: 87 b2 0f 00  	fld	ft5, 0(t6)
80002794: 07 b3 02 1b  	fld	ft6, 432(t0)
80002798: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
8000279c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800027a0: 27 b0 48 00  	fsd	ft4, 0(a7)
800027a4: 87 32 09 00  	fld	ft5, 0(s2)
800027a8: 07 b3 02 24  	fld	ft6, 576(t0)
800027ac: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800027b0: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800027b4: 27 b0 48 00  	fsd	ft4, 0(a7)
800027b8: 87 b2 09 00  	fld	ft5, 0(s3)
800027bc: 07 b3 02 2d  	fld	ft6, 720(t0)
800027c0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800027c4: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800027c8: 27 b0 48 00  	fsd	ft4, 0(a7)
800027cc: 87 32 0a 00  	fld	ft5, 0(s4)
800027d0: 07 b3 02 36  	fld	ft6, 864(t0)
800027d4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800027d8: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800027dc: 27 b0 48 00  	fsd	ft4, 0(a7)
800027e0: 87 b2 0a 00  	fld	ft5, 0(s5)
800027e4: 07 b3 02 3f  	fld	ft6, 1008(t0)
800027e8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800027ec: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800027f0: 27 b0 48 00  	fsd	ft4, 0(a7)
800027f4: 87 b2 0b 00  	fld	ft5, 0(s7)
800027f8: 07 b3 02 48  	fld	ft6, 1152(t0)
800027fc: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002800: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002804: 27 b0 48 00  	fsd	ft4, 0(a7)
80002808: 87 32 0c 00  	fld	ft5, 0(s8)
8000280c: 07 b3 02 51  	fld	ft6, 1296(t0)
80002810: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002814: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002818: 27 b0 48 00  	fsd	ft4, 0(a7)
8000281c: 87 b2 0c 00  	fld	ft5, 0(s9)
80002820: 07 b3 02 5a  	fld	ft6, 1440(t0)
80002824: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002828: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
8000282c: 27 b0 48 00  	fsd	ft4, 0(a7)
80002830: 87 32 0d 00  	fld	ft5, 0(s10)
80002834: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002838: 43 f2 12 22  	fmadd.d	ft4, ft5, ft1, ft4
8000283c: 27 b0 48 00  	fsd	ft4, 0(a7)
80002840: 07 b3 02 6c  	fld	ft6, 1728(t0)
80002844: d3 72 31 12  	fmul.d	ft5, ft2, ft3
80002848: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
8000284c: 27 b0 48 00  	fsd	ft4, 0(a7)
80002850: 87 b2 0d 00  	fld	ft5, 0(s11)
80002854: 07 b3 02 75  	fld	ft6, 1872(t0)
80002858: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
8000285c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002860: 27 b0 48 00  	fsd	ft4, 0(a7)
80002864: 87 b2 00 00  	fld	ft5, 0(ra)
80002868: 07 b3 02 7e  	fld	ft6, 2016(t0)
8000286c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002870: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002874: 27 b0 48 00  	fsd	ft4, 0(a7)
80002878: 87 32 03 00  	fld	ft5, 0(t1)
8000287c: 93 85 82 43  	addi	a1, t0, 1080
80002880: 07 b3 85 43  	fld	ft6, 1080(a1)
80002884: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002888: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
8000288c: 27 b0 48 00  	fsd	ft4, 0(a7)
80002890: 87 32 05 00  	fld	ft5, 0(a0)
80002894: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002898: 43 f2 02 22  	fmadd.d	ft4, ft5, ft0, ft4
8000289c: 27 b0 48 00  	fsd	ft4, 0(a7)
800028a0: 87 32 06 00  	fld	ft5, 0(a2)
800028a4: 93 85 82 4c  	addi	a1, t0, 1224
800028a8: 07 b3 85 4c  	fld	ft6, 1224(a1)
800028ac: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800028b0: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800028b4: 27 b0 48 00  	fsd	ft4, 0(a7)
800028b8: 87 b2 04 00  	fld	ft5, 0(s1)
800028bc: 93 85 02 51  	addi	a1, t0, 1296
800028c0: 07 b3 05 51  	fld	ft6, 1296(a1)
800028c4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800028c8: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800028cc: 27 b0 48 00  	fsd	ft4, 0(a7)
800028d0: 87 b2 06 00  	fld	ft5, 0(a3)
800028d4: 93 85 82 55  	addi	a1, t0, 1368
800028d8: 07 b3 85 55  	fld	ft6, 1368(a1)
800028dc: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800028e0: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800028e4: 27 b0 48 00  	fsd	ft4, 0(a7)
800028e8: 87 32 07 00  	fld	ft5, 0(a4)
800028ec: 93 85 02 5a  	addi	a1, t0, 1440
800028f0: 07 b3 05 5a  	fld	ft6, 1440(a1)
800028f4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800028f8: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800028fc: 27 b0 48 00  	fsd	ft4, 0(a7)
80002900: 87 32 08 00  	fld	ft5, 0(a6)
80002904: 93 85 82 5e  	addi	a1, t0, 1512
80002908: 07 b3 85 5e  	fld	ft6, 1512(a1)
8000290c: d3 f1 32 12  	fmul.d	ft3, ft5, ft3
80002910: c3 f1 61 22  	fmadd.d	ft3, ft3, ft6, ft4
;     for (j = 0; j < nj; j++) {
80002914: 93 87 87 00  	addi	a5, a5, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002918: 27 b0 38 00  	fsd	ft3, 0(a7)
;     for (j = 0; j < nj; j++) {
8000291c: e3 9e c7 e1  	bne	a5, t3, 0x80002738 <.LBB0_82+0x354>
80002920: 03 24 c1 09  	lw	s0, 156(sp)
;   for (i = 0; i < ni; i++) {
80002924: 13 04 14 00  	addi	s0, s0, 1
80002928: 13 0b 0b 09  	addi	s6, s6, 144
8000292c: 03 27 41 03  	lw	a4, 52(sp)
80002930: 13 05 00 01  	addi	a0, zero, 16
80002934: e3 10 a4 da  	bne	s0, a0, 0x800026d4 <.LBB0_82+0x2f0>
80002938: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000293c: 6f 00 80 28  	j	0x80002bc4 <.LBB0_84+0x204>
80002940: 13 05 00 00  	mv	a0, zero
80002944: 83 23 81 03  	lw	t2, 56(sp)
80002948: 93 07 00 00  	mv	a5, zero
8000294c: 23 2e a1 08  	sw	a0, 156(sp)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002950: 93 05 00 0b  	addi	a1, zero, 176
80002954: 33 05 b5 02  	mul	a0, a0, a1
80002958: b3 04 a7 00  	add	s1, a4, a0
8000295c: 13 8e 84 00  	addi	t3, s1, 8
80002960: 93 8e 04 01  	addi	t4, s1, 16
80002964: 13 8f 84 01  	addi	t5, s1, 24
80002968: 93 8f 04 02  	addi	t6, s1, 32
8000296c: 13 89 84 02  	addi	s2, s1, 40
80002970: 13 8a 04 03  	addi	s4, s1, 48
80002974: 93 8a 84 03  	addi	s5, s1, 56
80002978: 13 8b 04 04  	addi	s6, s1, 64
8000297c: 93 88 84 04  	addi	a7, s1, 72
80002980: 93 8b 04 05  	addi	s7, s1, 80
80002984: 13 8c 84 05  	addi	s8, s1, 88
80002988: 93 8c 04 06  	addi	s9, s1, 96
8000298c: 13 8d 84 06  	addi	s10, s1, 104
80002990: 93 8d 04 07  	addi	s11, s1, 112
80002994: 93 80 84 07  	addi	ra, s1, 120
80002998: 13 83 04 08  	addi	t1, s1, 128
8000299c: 13 87 84 08  	addi	a4, s1, 136
800029a0: 13 84 04 09  	addi	s0, s1, 144
800029a4: 93 85 84 09  	addi	a1, s1, 152
800029a8: 93 86 04 0a  	addi	a3, s1, 160
800029ac: 13 85 84 0a  	addi	a0, s1, 168
;       tmp[i][j] = 0.0;
800029b0: b3 82 f9 00  	add	t0, s3, a5
800029b4: 23 a2 02 00  	sw	zero, 4(t0)
800029b8: 23 a0 02 00  	sw	zero, 0(t0)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800029bc: 07 b2 04 00  	fld	ft4, 0(s1)

800029c0 <.LBB0_84>:
800029c0: 17 36 00 00  	auipc	a2, 3
800029c4: 13 06 86 17  	addi	a2, a2, 376
800029c8: 87 31 06 00  	fld	ft3, 0(a2)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800029cc: 33 88 f3 00  	add	a6, t2, a5
800029d0: 87 32 08 00  	fld	ft5, 0(a6)
800029d4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800029d8: 53 72 52 12  	fmul.d	ft4, ft4, ft5
800029dc: 27 b0 42 00  	fsd	ft4, 0(t0)
800029e0: 87 32 0e 00  	fld	ft5, 0(t3)
800029e4: 07 33 08 09  	fld	ft6, 144(a6)
800029e8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800029ec: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800029f0: 27 b0 42 00  	fsd	ft4, 0(t0)
800029f4: 87 b2 0e 00  	fld	ft5, 0(t4)
800029f8: 07 33 08 12  	fld	ft6, 288(a6)
800029fc: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a00: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a04: 27 b0 42 00  	fsd	ft4, 0(t0)
80002a08: 87 32 0f 00  	fld	ft5, 0(t5)
80002a0c: 07 33 08 1b  	fld	ft6, 432(a6)
80002a10: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a14: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a18: 27 b0 42 00  	fsd	ft4, 0(t0)
80002a1c: 87 b2 0f 00  	fld	ft5, 0(t6)
80002a20: 07 33 08 24  	fld	ft6, 576(a6)
80002a24: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a28: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a2c: 27 b0 42 00  	fsd	ft4, 0(t0)
80002a30: 87 32 09 00  	fld	ft5, 0(s2)
80002a34: 07 33 08 2d  	fld	ft6, 720(a6)
80002a38: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a3c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a40: 27 b0 42 00  	fsd	ft4, 0(t0)
80002a44: 87 32 0a 00  	fld	ft5, 0(s4)
80002a48: 07 33 08 36  	fld	ft6, 864(a6)
80002a4c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a50: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a54: 27 b0 42 00  	fsd	ft4, 0(t0)
80002a58: 87 b2 0a 00  	fld	ft5, 0(s5)
80002a5c: 07 33 08 3f  	fld	ft6, 1008(a6)
80002a60: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a64: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a68: 27 b0 42 00  	fsd	ft4, 0(t0)
80002a6c: 87 32 0b 00  	fld	ft5, 0(s6)
80002a70: 07 33 08 48  	fld	ft6, 1152(a6)
80002a74: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a78: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a7c: 27 b0 42 00  	fsd	ft4, 0(t0)
80002a80: 87 b2 08 00  	fld	ft5, 0(a7)
80002a84: 07 33 08 51  	fld	ft6, 1296(a6)
80002a88: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a8c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a90: 27 b0 42 00  	fsd	ft4, 0(t0)
80002a94: 87 b2 0b 00  	fld	ft5, 0(s7)
80002a98: 07 33 08 5a  	fld	ft6, 1440(a6)
80002a9c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002aa0: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002aa4: 27 b0 42 00  	fsd	ft4, 0(t0)
80002aa8: 87 32 0c 00  	fld	ft5, 0(s8)
80002aac: 07 33 08 63  	fld	ft6, 1584(a6)
80002ab0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002ab4: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002ab8: 27 b0 42 00  	fsd	ft4, 0(t0)
80002abc: 87 b2 0c 00  	fld	ft5, 0(s9)
80002ac0: 07 33 08 6c  	fld	ft6, 1728(a6)
80002ac4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002ac8: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002acc: 27 b0 42 00  	fsd	ft4, 0(t0)
80002ad0: 87 32 0d 00  	fld	ft5, 0(s10)
80002ad4: 07 33 08 75  	fld	ft6, 1872(a6)
80002ad8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002adc: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002ae0: 27 b0 42 00  	fsd	ft4, 0(t0)
80002ae4: 87 b2 0d 00  	fld	ft5, 0(s11)
80002ae8: 07 33 08 7e  	fld	ft6, 2016(a6)
80002aec: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002af0: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002af4: 27 b0 42 00  	fsd	ft4, 0(t0)
80002af8: 87 b2 00 00  	fld	ft5, 0(ra)
80002afc: 13 06 88 43  	addi	a2, a6, 1080
80002b00: 07 33 86 43  	fld	ft6, 1080(a2)
80002b04: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b08: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b0c: 27 b0 42 00  	fsd	ft4, 0(t0)
80002b10: 87 32 03 00  	fld	ft5, 0(t1)
80002b14: 13 06 08 48  	addi	a2, a6, 1152
80002b18: 07 33 06 48  	fld	ft6, 1152(a2)
80002b1c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b20: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b24: 27 b0 42 00  	fsd	ft4, 0(t0)
80002b28: 87 32 07 00  	fld	ft5, 0(a4)
80002b2c: 13 06 88 4c  	addi	a2, a6, 1224
80002b30: 07 33 86 4c  	fld	ft6, 1224(a2)
80002b34: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b38: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b3c: 27 b0 42 00  	fsd	ft4, 0(t0)
80002b40: 87 32 04 00  	fld	ft5, 0(s0)
80002b44: 13 06 08 51  	addi	a2, a6, 1296
80002b48: 07 33 06 51  	fld	ft6, 1296(a2)
80002b4c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b50: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b54: 27 b0 42 00  	fsd	ft4, 0(t0)
80002b58: 87 b2 05 00  	fld	ft5, 0(a1)
80002b5c: 13 06 88 55  	addi	a2, a6, 1368
80002b60: 07 33 86 55  	fld	ft6, 1368(a2)
80002b64: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b68: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b6c: 27 b0 42 00  	fsd	ft4, 0(t0)
80002b70: 87 b2 06 00  	fld	ft5, 0(a3)
80002b74: 13 06 08 5a  	addi	a2, a6, 1440
80002b78: 07 33 06 5a  	fld	ft6, 1440(a2)
80002b7c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b80: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b84: 27 b0 42 00  	fsd	ft4, 0(t0)
80002b88: 87 32 05 00  	fld	ft5, 0(a0)
80002b8c: 13 06 88 5e  	addi	a2, a6, 1512
80002b90: 07 33 86 5e  	fld	ft6, 1512(a2)
80002b94: 13 06 00 09  	addi	a2, zero, 144
80002b98: d3 f1 32 12  	fmul.d	ft3, ft5, ft3
80002b9c: c3 f1 61 22  	fmadd.d	ft3, ft3, ft6, ft4
;     for (j = 0; j < nj; j++) {
80002ba0: 93 87 87 00  	addi	a5, a5, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002ba4: 27 b0 32 00  	fsd	ft3, 0(t0)
;     for (j = 0; j < nj; j++) {
80002ba8: e3 94 c7 e0  	bne	a5, a2, 0x800029b0 <.LBB0_83+0x268>
80002bac: 03 25 c1 09  	lw	a0, 156(sp)
;   for (i = 0; i < ni; i++) {
80002bb0: 13 05 15 00  	addi	a0, a0, 1
80002bb4: 93 89 09 09  	addi	s3, s3, 144
80002bb8: 03 27 41 03  	lw	a4, 52(sp)
80002bbc: 93 05 00 01  	addi	a1, zero, 16
80002bc0: e3 14 b5 d8  	bne	a0, a1, 0x80002948 <.LBB0_83+0x200>
80002bc4: 83 23 41 02  	lw	t2, 36(sp)
80002bc8: 03 27 c1 08  	lw	a4, 140(sp)
;   for (i = 0; i < ni; i++) {
80002bcc: 33 35 77 00  	sltu	a0, a4, t2
80002bd0: 83 20 c1 01  	lw	ra, 28(sp)
80002bd4: 83 24 41 09  	lw	s1, 148(sp)
80002bd8: b3 b5 14 00  	sltu	a1, s1, ra
80002bdc: 33 65 b5 00  	or	a0, a0, a1
80002be0: 83 25 c1 00  	lw	a1, 12(sp)
80002be4: b3 b5 75 00  	sltu	a1, a1, t2
80002be8: 83 2d 81 02  	lw	s11, 40(sp)
80002bec: 33 b6 b4 01  	sltu	a2, s1, s11
80002bf0: b3 e5 c5 00  	or	a1, a1, a2
80002bf4: 33 75 b5 00  	and	a0, a0, a1
80002bf8: 83 25 81 09  	lw	a1, 152(sp)
80002bfc: 33 f5 a5 00  	and	a0, a1, a0
80002c00: 93 d5 40 01  	srli	a1, ra, 20
80002c04: b3 35 b0 00  	snez	a1, a1
80002c08: 37 06 12 00  	lui	a2, 288
80002c0c: 93 06 16 00  	addi	a3, a2, 1
80002c10: 33 36 d7 00  	sltu	a2, a4, a3
80002c14: b3 f5 c5 00  	and	a1, a1, a2
80002c18: 33 f5 a5 00  	and	a0, a1, a0
80002c1c: 83 25 01 01  	lw	a1, 16(sp)
80002c20: 33 f5 a5 00  	and	a0, a1, a0
80002c24: 63 08 05 1e  	beqz	a0, 0x80002e14 <.LBB0_85+0x11c>
80002c28: 13 05 00 00  	mv	a0, zero
80002c2c: 93 05 80 00  	addi	a1, zero, 8
80002c30: 13 08 70 01  	addi	a6, zero, 23
;   for (i = 0; i < ni; i++) {
80002c34: 93 06 00 04  	addi	a3, zero, 64
80002c38: 13 07 00 0c  	addi	a4, zero, 192
80002c3c: ab 20 d8 00  	scfgw	a6, a3
80002c40: ab a0 e5 00  	scfgw	a1, a4
80002c44: 93 06 f0 00  	addi	a3, zero, 15
80002c48: 13 07 00 06  	addi	a4, zero, 96
80002c4c: 93 07 00 0e  	addi	a5, zero, 224
80002c50: ab a0 e6 00  	scfgw	a3, a4
80002c54: ab a0 f5 00  	scfgw	a1, a5
80002c58: 13 07 00 02  	addi	a4, zero, 32
80002c5c: ab 20 e0 00  	scfgw	zero, a4
80002c60: 2b a0 03 32  	scfgwi	t2, 800
80002c64: 13 07 10 01  	addi	a4, zero, 17
80002c68: 93 07 10 00  	addi	a5, zero, 1
80002c6c: 93 84 07 04  	addi	s1, a5, 64
80002c70: 13 84 07 0c  	addi	s0, a5, 192
80002c74: ab 20 97 00  	scfgw	a4, s1
80002c78: ab a0 85 00  	scfgw	a1, s0
80002c7c: 93 04 80 f7  	addi	s1, zero, -136
80002c80: 13 84 07 06  	addi	s0, a5, 96
80002c84: ab 20 88 00  	scfgw	a6, s0
80002c88: 13 84 07 0e  	addi	s0, a5, 224
80002c8c: ab a0 84 00  	scfgw	s1, s0
80002c90: 93 84 07 08  	addi	s1, a5, 128
80002c94: 13 84 07 10  	addi	s0, a5, 256
80002c98: ab a0 96 00  	scfgw	a3, s1
80002c9c: ab a0 85 00  	scfgw	a1, s0
80002ca0: 93 85 07 02  	addi	a1, a5, 32
80002ca4: ab 20 b0 00  	scfgw	zero, a1
80002ca8: 2b a0 10 34  	scfgwi	ra, 833
80002cac: 93 05 00 0c  	addi	a1, zero, 192
80002cb0: 93 07 20 00  	addi	a5, zero, 2
80002cb4: 93 84 07 04  	addi	s1, a5, 64
80002cb8: 13 84 07 0c  	addi	s0, a5, 192
80002cbc: ab 20 97 00  	scfgw	a4, s1
80002cc0: ab a0 85 00  	scfgw	a1, s0
80002cc4: 37 f7 ff ff  	lui	a4, 1048575
80002cc8: 93 04 87 34  	addi	s1, a4, 840
80002ccc: 13 84 07 06  	addi	s0, a5, 96
80002cd0: 13 86 07 0e  	addi	a2, a5, 224
80002cd4: ab 20 88 00  	scfgw	a6, s0
80002cd8: ab a0 c4 00  	scfgw	s1, a2
80002cdc: 13 06 87 28  	addi	a2, a4, 648
80002ce0: 13 87 07 08  	addi	a4, a5, 128
80002ce4: 93 84 07 10  	addi	s1, a5, 256
80002ce8: ab a0 e6 00  	scfgw	a3, a4
80002cec: ab 20 96 00  	scfgw	a2, s1
80002cf0: 13 86 07 02  	addi	a2, a5, 32
80002cf4: ab 20 c0 00  	scfgw	zero, a2

80002cf8 <.LBB0_85>:
80002cf8: 17 36 00 00  	auipc	a2, 3
80002cfc: 13 06 86 e4  	addi	a2, a2, -440
80002d00: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
80002d04: 2b a0 2d 34  	scfgwi	s11, 834
80002d08: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80002d0c: 13 06 00 01  	addi	a2, zero, 16
80002d10: 93 86 03 00  	mv	a3, t2
80002d14: 13 07 00 00  	mv	a4, zero
;       D[i][j] *= beta;
80002d18: b3 87 e6 00  	add	a5, a3, a4
80002d1c: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002d20: 27 b0 47 00  	fsd	ft4, 0(a5)
;         D[i][j] += tmp[i][k] * C[k][j];
80002d24: 07 b3 07 00  	fld	ft6, 0(a5)
80002d28: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d2c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d30: 07 b3 07 00  	fld	ft6, 0(a5)
80002d34: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d38: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d3c: 07 b3 07 00  	fld	ft6, 0(a5)
80002d40: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d44: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d48: 07 b3 07 00  	fld	ft6, 0(a5)
80002d4c: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d50: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d54: 07 b3 07 00  	fld	ft6, 0(a5)
80002d58: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d5c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d60: 07 b3 07 00  	fld	ft6, 0(a5)
80002d64: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d68: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d6c: 07 b3 07 00  	fld	ft6, 0(a5)
80002d70: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d74: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d78: 07 b3 07 00  	fld	ft6, 0(a5)
80002d7c: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d80: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d84: 07 b3 07 00  	fld	ft6, 0(a5)
80002d88: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d8c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d90: 07 b3 07 00  	fld	ft6, 0(a5)
80002d94: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d98: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d9c: 07 b3 07 00  	fld	ft6, 0(a5)
80002da0: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002da4: 27 b0 47 00  	fsd	ft4, 0(a5)
80002da8: 07 b3 07 00  	fld	ft6, 0(a5)
80002dac: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002db0: 27 b0 47 00  	fsd	ft4, 0(a5)
80002db4: 07 b3 07 00  	fld	ft6, 0(a5)
80002db8: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002dbc: 27 b0 47 00  	fsd	ft4, 0(a5)
80002dc0: 07 b3 07 00  	fld	ft6, 0(a5)
80002dc4: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002dc8: 27 b0 47 00  	fsd	ft4, 0(a5)
80002dcc: 07 b3 07 00  	fld	ft6, 0(a5)
80002dd0: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002dd4: 27 b0 47 00  	fsd	ft4, 0(a5)
80002dd8: 07 b3 07 00  	fld	ft6, 0(a5)
80002ddc: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002de0: 27 b0 47 00  	fsd	ft4, 0(a5)
80002de4: 07 b3 07 00  	fld	ft6, 0(a5)
80002de8: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002dec: 27 b0 47 00  	fsd	ft4, 0(a5)
80002df0: 07 b3 07 00  	fld	ft6, 0(a5)
80002df4: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
;     for (j = 0; j < nl; j++) {
80002df8: 13 07 87 00  	addi	a4, a4, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80002dfc: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nl; j++) {
80002e00: e3 1c b7 f0  	bne	a4, a1, 0x80002d18 <.LBB0_85+0x20>
;   for (i = 0; i < ni; i++) {
80002e04: 13 05 15 00  	addi	a0, a0, 1
80002e08: 93 86 06 0c  	addi	a3, a3, 192
80002e0c: e3 14 c5 f0  	bne	a0, a2, 0x80002d14 <.LBB0_85+0x1c>
80002e10: 6f 00 c0 2e  	j	0x800030fc <.LBB0_86+0x154>
80002e14: 13 85 0d 4e  	addi	a0, s11, 1248
80002e18: 13 08 05 4e  	addi	a6, a0, 1248
80002e1c: 13 85 cd 53  	addi	a0, s11, 1340
80002e20: 13 07 c5 53  	addi	a4, a0, 1340
80002e24: 13 83 80 04  	addi	t1, ra, 72
80002e28: 03 25 01 02  	lw	a0, 32(sp)
80002e2c: b3 07 a3 00  	add	a5, t1, a0
80002e30: 93 88 0d 6c  	addi	a7, s11, 1728
80002e34: 93 82 8d 77  	addi	t0, s11, 1912
80002e38: 33 34 77 00  	sltu	s0, a4, t2
80002e3c: 33 b5 04 01  	sltu	a0, s1, a6
80002e40: 33 65 a4 00  	or	a0, s0, a0
80002e44: 33 b4 77 00  	sltu	s0, a5, t2
80002e48: 33 b6 64 00  	sltu	a2, s1, t1
80002e4c: 33 66 c4 00  	or	a2, s0, a2
80002e50: 33 b4 72 00  	sltu	s0, t0, t2
80002e54: b3 b5 14 01  	sltu	a1, s1, a7
80002e58: b3 65 b4 00  	or	a1, s0, a1
80002e5c: 33 75 c5 00  	and	a0, a0, a2
80002e60: 33 f5 a5 00  	and	a0, a1, a0
80002e64: 93 55 48 01  	srli	a1, a6, 20
80002e68: b3 35 b0 00  	snez	a1, a1
80002e6c: 33 36 d7 00  	sltu	a2, a4, a3
80002e70: b3 f5 c5 00  	and	a1, a1, a2
80002e74: 33 f5 a5 00  	and	a0, a1, a0
80002e78: 93 55 43 01  	srli	a1, t1, 20
80002e7c: b3 35 b0 00  	snez	a1, a1
80002e80: 33 b6 d7 00  	sltu	a2, a5, a3
80002e84: b3 f5 c5 00  	and	a1, a1, a2
80002e88: 33 f5 a5 00  	and	a0, a1, a0
80002e8c: 93 d5 48 01  	srli	a1, a7, 20
80002e90: b3 35 b0 00  	snez	a1, a1
80002e94: 33 b6 d2 00  	sltu	a2, t0, a3
80002e98: b3 f5 c5 00  	and	a1, a1, a2
80002e9c: 93 02 00 00  	mv	t0, zero
80002ea0: 33 f5 a5 00  	and	a0, a1, a0
80002ea4: 63 00 05 26  	beqz	a0, 0x80003104 <.LBB0_86+0x15c>
80002ea8: 13 05 80 00  	addi	a0, zero, 8
80002eac: 93 05 70 01  	addi	a1, zero, 23
;   for (i = 0; i < ni; i++) {
80002eb0: 13 06 00 04  	addi	a2, zero, 64
80002eb4: 93 06 00 0c  	addi	a3, zero, 192
80002eb8: ab a0 c5 00  	scfgw	a1, a2
80002ebc: ab 20 d5 00  	scfgw	a0, a3
80002ec0: 13 06 80 f4  	addi	a2, zero, -184
80002ec4: 93 06 f0 00  	addi	a3, zero, 15
80002ec8: 13 07 00 06  	addi	a4, zero, 96
80002ecc: 93 07 00 0e  	addi	a5, zero, 224
80002ed0: ab a0 e6 00  	scfgw	a3, a4
80002ed4: ab 20 f6 00  	scfgw	a2, a5
80002ed8: 13 07 00 02  	addi	a4, zero, 32
80002edc: ab 20 e0 00  	scfgw	zero, a4
80002ee0: 2b 20 08 32  	scfgwi	a6, 800
80002ee4: 13 07 10 00  	addi	a4, zero, 1
80002ee8: 93 07 07 04  	addi	a5, a4, 64
80002eec: 93 04 07 0c  	addi	s1, a4, 192
80002ef0: ab a0 f5 00  	scfgw	a1, a5
80002ef4: ab 20 90 00  	scfgw	zero, s1
80002ef8: 13 08 00 09  	addi	a6, zero, 144
80002efc: 93 07 07 06  	addi	a5, a4, 96
80002f00: ab a0 f6 00  	scfgw	a3, a5
80002f04: 93 07 07 0e  	addi	a5, a4, 224
80002f08: ab 20 f8 00  	scfgw	a6, a5
80002f0c: 13 07 07 02  	addi	a4, a4, 32
80002f10: ab 20 e0 00  	scfgw	zero, a4
80002f14: 2b 20 13 32  	scfgwi	t1, 801
80002f18: 13 07 20 00  	addi	a4, zero, 2
80002f1c: 93 07 07 04  	addi	a5, a4, 64
80002f20: 93 04 07 0c  	addi	s1, a4, 192
80002f24: ab a0 f5 00  	scfgw	a1, a5
80002f28: ab 20 95 00  	scfgw	a0, s1
80002f2c: 13 05 07 06  	addi	a0, a4, 96
80002f30: 93 05 07 0e  	addi	a1, a4, 224
80002f34: ab a0 a6 00  	scfgw	a3, a0
80002f38: ab 20 b6 00  	scfgw	a2, a1
80002f3c: 13 05 07 02  	addi	a0, a4, 32
80002f40: ab 20 a0 00  	scfgw	zero, a0
80002f44: 2b a0 28 32  	scfgwi	a7, 802
80002f48: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002f4c: 13 03 00 0c  	addi	t1, zero, 192
80002f50: 93 08 00 01  	addi	a7, zero, 16
80002f54: 93 07 00 00  	mv	a5, zero
;         D[i][j] += tmp[i][k] * C[k][j];
80002f58: 33 85 02 03  	mul	a0, t0, a6
80002f5c: b3 84 a0 00  	add	s1, ra, a0
80002f60: 13 8e 84 00  	addi	t3, s1, 8
80002f64: 93 8e 04 01  	addi	t4, s1, 16
80002f68: 13 8f 84 01  	addi	t5, s1, 24
80002f6c: 93 8f 04 02  	addi	t6, s1, 32
80002f70: 13 89 84 02  	addi	s2, s1, 40
80002f74: 93 89 04 03  	addi	s3, s1, 48
80002f78: 13 8a 84 03  	addi	s4, s1, 56
80002f7c: 93 8a 04 04  	addi	s5, s1, 64
80002f80: 13 8b 04 05  	addi	s6, s1, 80
80002f84: 93 8b 84 05  	addi	s7, s1, 88
80002f88: 13 8c 04 06  	addi	s8, s1, 96
80002f8c: 93 8c 84 06  	addi	s9, s1, 104
80002f90: 13 8d 04 07  	addi	s10, s1, 112
80002f94: 93 85 84 07  	addi	a1, s1, 120
80002f98: 93 86 04 08  	addi	a3, s1, 128
80002f9c: 13 85 84 08  	addi	a0, s1, 136
;       D[i][j] *= beta;
80002fa0: 33 86 f3 00  	add	a2, t2, a5
80002fa4: 87 31 06 00  	fld	ft3, 0(a2)

80002fa8 <.LBB0_86>:
80002fa8: 17 37 00 00  	auipc	a4, 3
80002fac: 13 07 87 b9  	addi	a4, a4, -1128
80002fb0: 07 32 07 00  	fld	ft4, 0(a4)
;       D[i][j] *= beta;
80002fb4: d3 f1 41 12  	fmul.d	ft3, ft3, ft4
80002fb8: 27 30 36 00  	fsd	ft3, 0(a2)
;         D[i][j] += tmp[i][k] * C[k][j];
80002fbc: 07 b2 04 00  	fld	ft4, 0(s1)
80002fc0: 33 87 fd 00  	add	a4, s11, a5
80002fc4: 87 32 07 00  	fld	ft5, 0(a4)
80002fc8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002fcc: 27 30 36 00  	fsd	ft3, 0(a2)
80002fd0: 07 32 0e 00  	fld	ft4, 0(t3)
80002fd4: 87 32 07 0c  	fld	ft5, 192(a4)
80002fd8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002fdc: 27 30 36 00  	fsd	ft3, 0(a2)
80002fe0: 07 b2 0e 00  	fld	ft4, 0(t4)
80002fe4: 87 32 07 18  	fld	ft5, 384(a4)
80002fe8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002fec: 27 30 36 00  	fsd	ft3, 0(a2)
80002ff0: 07 32 0f 00  	fld	ft4, 0(t5)
80002ff4: 87 32 07 24  	fld	ft5, 576(a4)
80002ff8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002ffc: 27 30 36 00  	fsd	ft3, 0(a2)
80003000: 07 b2 0f 00  	fld	ft4, 0(t6)
80003004: 87 32 07 30  	fld	ft5, 768(a4)
80003008: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000300c: 27 30 36 00  	fsd	ft3, 0(a2)
80003010: 07 32 09 00  	fld	ft4, 0(s2)
80003014: 87 32 07 3c  	fld	ft5, 960(a4)
80003018: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000301c: 27 30 36 00  	fsd	ft3, 0(a2)
80003020: 07 b2 09 00  	fld	ft4, 0(s3)
80003024: 87 32 07 48  	fld	ft5, 1152(a4)
80003028: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000302c: 27 30 36 00  	fsd	ft3, 0(a2)
80003030: 07 32 0a 00  	fld	ft4, 0(s4)
80003034: 87 32 07 54  	fld	ft5, 1344(a4)
80003038: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000303c: 27 30 36 00  	fsd	ft3, 0(a2)
80003040: 07 b2 0a 00  	fld	ft4, 0(s5)
80003044: 87 32 07 60  	fld	ft5, 1536(a4)
80003048: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000304c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003050: 27 30 36 00  	fsd	ft3, 0(a2)
80003054: 07 32 0b 00  	fld	ft4, 0(s6)
80003058: 87 32 07 78  	fld	ft5, 1920(a4)
8000305c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003060: 27 30 36 00  	fsd	ft3, 0(a2)
80003064: 07 b2 0b 00  	fld	ft4, 0(s7)
80003068: 13 04 07 42  	addi	s0, a4, 1056
8000306c: 87 32 04 42  	fld	ft5, 1056(s0)
80003070: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003074: 27 30 36 00  	fsd	ft3, 0(a2)
80003078: 07 32 0c 00  	fld	ft4, 0(s8)
8000307c: 13 04 07 48  	addi	s0, a4, 1152
80003080: 87 32 04 48  	fld	ft5, 1152(s0)
80003084: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003088: 27 30 36 00  	fsd	ft3, 0(a2)
8000308c: 07 b2 0c 00  	fld	ft4, 0(s9)
80003090: c3 71 40 1a  	fmadd.d	ft3, ft0, ft4, ft3
80003094: 27 30 36 00  	fsd	ft3, 0(a2)
80003098: 07 32 0d 00  	fld	ft4, 0(s10)
8000309c: 13 04 07 54  	addi	s0, a4, 1344
800030a0: 87 32 04 54  	fld	ft5, 1344(s0)
800030a4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030a8: 27 30 36 00  	fsd	ft3, 0(a2)
800030ac: 07 b2 05 00  	fld	ft4, 0(a1)
800030b0: 13 04 07 5a  	addi	s0, a4, 1440
800030b4: 87 32 04 5a  	fld	ft5, 1440(s0)
800030b8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030bc: 27 30 36 00  	fsd	ft3, 0(a2)
800030c0: 07 b2 06 00  	fld	ft4, 0(a3)
800030c4: 13 04 07 60  	addi	s0, a4, 1536
800030c8: 87 32 04 60  	fld	ft5, 1536(s0)
800030cc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030d0: 27 30 36 00  	fsd	ft3, 0(a2)
800030d4: 07 32 05 00  	fld	ft4, 0(a0)
800030d8: 13 07 07 66  	addi	a4, a4, 1632
800030dc: 87 32 07 66  	fld	ft5, 1632(a4)
800030e0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nl; j++) {
800030e4: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
800030e8: 27 30 36 00  	fsd	ft3, 0(a2)
;     for (j = 0; j < nl; j++) {
800030ec: e3 9a 67 ea  	bne	a5, t1, 0x80002fa0 <.LBB0_85+0x2a8>
;   for (i = 0; i < ni; i++) {
800030f0: 93 82 12 00  	addi	t0, t0, 1
800030f4: 93 83 03 0c  	addi	t2, t2, 192
800030f8: e3 9e 12 e5  	bne	t0, a7, 0x80002f54 <.LBB0_85+0x25c>
800030fc: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003100: 6f 00 40 1d  	j	0x800032d4 <.LBB0_87+0x168>
80003104: 13 03 00 0c  	addi	t1, zero, 192
80003108: 93 08 00 01  	addi	a7, zero, 16
8000310c: 03 28 81 02  	lw	a6, 40(sp)
80003110: 93 07 00 00  	mv	a5, zero
;         D[i][j] += tmp[i][k] * C[k][j];
80003114: 13 05 00 09  	addi	a0, zero, 144
80003118: 33 85 a2 02  	mul	a0, t0, a0
8000311c: b3 84 a0 00  	add	s1, ra, a0
80003120: 13 8e 84 00  	addi	t3, s1, 8
80003124: 93 8e 04 01  	addi	t4, s1, 16
80003128: 13 8f 84 01  	addi	t5, s1, 24
8000312c: 93 8f 04 02  	addi	t6, s1, 32
80003130: 13 89 84 02  	addi	s2, s1, 40
80003134: 93 89 04 03  	addi	s3, s1, 48
80003138: 13 8a 84 03  	addi	s4, s1, 56
8000313c: 93 8a 04 04  	addi	s5, s1, 64
80003140: 13 8b 84 04  	addi	s6, s1, 72
80003144: 93 8b 04 05  	addi	s7, s1, 80
80003148: 13 8c 84 05  	addi	s8, s1, 88
8000314c: 93 8c 04 06  	addi	s9, s1, 96
80003150: 13 8d 84 06  	addi	s10, s1, 104
80003154: 93 8d 04 07  	addi	s11, s1, 112
80003158: 93 86 84 07  	addi	a3, s1, 120
8000315c: 13 85 04 08  	addi	a0, s1, 128
80003160: 13 86 84 08  	addi	a2, s1, 136
;       D[i][j] *= beta;
80003164: 33 87 f3 00  	add	a4, t2, a5
80003168: 87 31 07 00  	fld	ft3, 0(a4)

8000316c <.LBB0_87>:
8000316c: 17 34 00 00  	auipc	s0, 3
80003170: 13 04 44 9d  	addi	s0, s0, -1580
80003174: 07 32 04 00  	fld	ft4, 0(s0)
;       D[i][j] *= beta;
80003178: d3 f1 41 12  	fmul.d	ft3, ft3, ft4
8000317c: 27 30 37 00  	fsd	ft3, 0(a4)
;         D[i][j] += tmp[i][k] * C[k][j];
80003180: 07 b2 04 00  	fld	ft4, 0(s1)
80003184: 33 04 f8 00  	add	s0, a6, a5
80003188: 87 32 04 00  	fld	ft5, 0(s0)
8000318c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003190: 27 30 37 00  	fsd	ft3, 0(a4)
80003194: 07 32 0e 00  	fld	ft4, 0(t3)
80003198: 87 32 04 0c  	fld	ft5, 192(s0)
8000319c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800031a0: 27 30 37 00  	fsd	ft3, 0(a4)
800031a4: 07 b2 0e 00  	fld	ft4, 0(t4)
800031a8: 87 32 04 18  	fld	ft5, 384(s0)
800031ac: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800031b0: 27 30 37 00  	fsd	ft3, 0(a4)
800031b4: 07 32 0f 00  	fld	ft4, 0(t5)
800031b8: 87 32 04 24  	fld	ft5, 576(s0)
800031bc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800031c0: 27 30 37 00  	fsd	ft3, 0(a4)
800031c4: 07 b2 0f 00  	fld	ft4, 0(t6)
800031c8: 87 32 04 30  	fld	ft5, 768(s0)
800031cc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800031d0: 27 30 37 00  	fsd	ft3, 0(a4)
800031d4: 07 32 09 00  	fld	ft4, 0(s2)
800031d8: 87 32 04 3c  	fld	ft5, 960(s0)
800031dc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800031e0: 27 30 37 00  	fsd	ft3, 0(a4)
800031e4: 07 b2 09 00  	fld	ft4, 0(s3)
800031e8: 87 32 04 48  	fld	ft5, 1152(s0)
800031ec: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800031f0: 27 30 37 00  	fsd	ft3, 0(a4)
800031f4: 07 32 0a 00  	fld	ft4, 0(s4)
800031f8: 87 32 04 54  	fld	ft5, 1344(s0)
800031fc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003200: 27 30 37 00  	fsd	ft3, 0(a4)
80003204: 07 b2 0a 00  	fld	ft4, 0(s5)
80003208: 87 32 04 60  	fld	ft5, 1536(s0)
8000320c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003210: 27 30 37 00  	fsd	ft3, 0(a4)
80003214: 07 32 0b 00  	fld	ft4, 0(s6)
80003218: 87 32 04 6c  	fld	ft5, 1728(s0)
8000321c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003220: 27 30 37 00  	fsd	ft3, 0(a4)
80003224: 07 b2 0b 00  	fld	ft4, 0(s7)
80003228: 87 32 04 78  	fld	ft5, 1920(s0)
8000322c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003230: 27 30 37 00  	fsd	ft3, 0(a4)
80003234: 07 32 0c 00  	fld	ft4, 0(s8)
80003238: 93 05 04 42  	addi	a1, s0, 1056
8000323c: 87 b2 05 42  	fld	ft5, 1056(a1)
80003240: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003244: 27 30 37 00  	fsd	ft3, 0(a4)
80003248: 07 b2 0c 00  	fld	ft4, 0(s9)
8000324c: 93 05 04 48  	addi	a1, s0, 1152
80003250: 87 b2 05 48  	fld	ft5, 1152(a1)
80003254: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003258: 27 30 37 00  	fsd	ft3, 0(a4)
8000325c: 07 32 0d 00  	fld	ft4, 0(s10)
80003260: 93 05 04 4e  	addi	a1, s0, 1248
80003264: 87 b2 05 4e  	fld	ft5, 1248(a1)
80003268: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000326c: 27 30 37 00  	fsd	ft3, 0(a4)
80003270: 07 b2 0d 00  	fld	ft4, 0(s11)
80003274: 93 05 04 54  	addi	a1, s0, 1344
80003278: 87 b2 05 54  	fld	ft5, 1344(a1)
8000327c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003280: 27 30 37 00  	fsd	ft3, 0(a4)
80003284: 07 b2 06 00  	fld	ft4, 0(a3)
80003288: 93 05 04 5a  	addi	a1, s0, 1440
8000328c: 87 b2 05 5a  	fld	ft5, 1440(a1)
80003290: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003294: 27 30 37 00  	fsd	ft3, 0(a4)
80003298: 07 32 05 00  	fld	ft4, 0(a0)
8000329c: 93 05 04 60  	addi	a1, s0, 1536
800032a0: 87 b2 05 60  	fld	ft5, 1536(a1)
800032a4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800032a8: 27 30 37 00  	fsd	ft3, 0(a4)
800032ac: 07 32 06 00  	fld	ft4, 0(a2)
800032b0: 93 05 04 66  	addi	a1, s0, 1632
800032b4: 87 b2 05 66  	fld	ft5, 1632(a1)
800032b8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nl; j++) {
800032bc: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
800032c0: 27 30 37 00  	fsd	ft3, 0(a4)
;     for (j = 0; j < nl; j++) {
800032c4: e3 90 67 ea  	bne	a5, t1, 0x80003164 <.LBB0_86+0x1bc>
;   for (i = 0; i < ni; i++) {
800032c8: 93 82 12 00  	addi	t0, t0, 1
800032cc: 93 83 03 0c  	addi	t2, t2, 192
800032d0: e3 90 12 e5  	bne	t0, a7, 0x80003110 <.LBB0_86+0x168>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800032d4: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
800032d8: 83 25 01 09  	lw	a1, 144(sp)
800032dc: b3 05 b5 40  	sub	a1, a0, a1

800032e0 <.LBB0_88>:
800032e0: 17 25 00 00  	auipc	a0, 2
800032e4: 13 05 15 59  	addi	a0, a0, 1425
800032e8: 97 00 00 00  	auipc	ra, 0
800032ec: e7 80 00 24  	jalr	576(ra)
800032f0: 03 25 81 09  	lw	a0, 152(sp)
800032f4: 63 0e 05 0a  	beqz	a0, 0x800033b0 <.LBB0_88+0xd0>
800032f8: 13 05 80 00  	addi	a0, zero, 8
800032fc: 93 05 70 01  	addi	a1, zero, 23
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
8000332c: 03 25 41 02  	lw	a0, 36(sp)
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
80003394: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003398: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
8000339c: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
800033a0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800033a4: e3 1e 05 f8  	bnez	a0, 0x80003340 <.LBB0_88+0x60>
800033a8: 73 f5 00 7c  	csrrci	a0, 1984, 1
800033ac: 6f 00 00 0e  	j	0x8000348c <.LBB0_89>
;     for (int i = 0; i < n; i++){
800033b0: 03 25 41 02  	lw	a0, 36(sp)
800033b4: 13 05 05 06  	addi	a0, a0, 96
800033b8: d3 01 00 d2  	fcvt.d.w	ft3, zero
800033bc: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
800033c0: 07 32 05 fa  	fld	ft4, -96(a0)
800033c4: 87 32 85 fa  	fld	ft5, -88(a0)
800033c8: 07 33 05 fb  	fld	ft6, -80(a0)
800033cc: 87 33 85 fb  	fld	ft7, -72(a0)
800033d0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800033d4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800033d8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800033dc: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800033e0: 07 32 05 fc  	fld	ft4, -64(a0)
800033e4: 87 32 85 fc  	fld	ft5, -56(a0)
800033e8: 07 33 05 fd  	fld	ft6, -48(a0)
800033ec: 87 33 85 fd  	fld	ft7, -40(a0)
800033f0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800033f4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800033f8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800033fc: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003400: 07 32 05 fe  	fld	ft4, -32(a0)
80003404: 87 32 85 fe  	fld	ft5, -24(a0)
80003408: 07 33 05 ff  	fld	ft6, -16(a0)
8000340c: 87 33 85 ff  	fld	ft7, -8(a0)
80003410: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003414: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003418: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000341c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003420: 07 32 05 00  	fld	ft4, 0(a0)
80003424: 87 32 85 00  	fld	ft5, 8(a0)
80003428: 07 33 05 01  	fld	ft6, 16(a0)
8000342c: 87 33 85 01  	fld	ft7, 24(a0)
80003430: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003434: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003438: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000343c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003440: 07 32 05 02  	fld	ft4, 32(a0)
80003444: 87 32 85 02  	fld	ft5, 40(a0)
80003448: 07 33 05 03  	fld	ft6, 48(a0)
8000344c: 87 33 85 03  	fld	ft7, 56(a0)
80003450: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003454: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003458: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000345c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003460: 07 32 05 04  	fld	ft4, 64(a0)
80003464: 87 32 85 04  	fld	ft5, 72(a0)
80003468: 07 33 05 05  	fld	ft6, 80(a0)
8000346c: 87 33 85 05  	fld	ft7, 88(a0)
80003470: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003474: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003478: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000347c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80003480: 93 85 f5 ff  	addi	a1, a1, -1
80003484: 13 05 05 0c  	addi	a0, a0, 192
80003488: e3 9c 05 f2  	bnez	a1, 0x800033c0 <.LBB0_88+0xe0>

8000348c <.LBB0_89>:
8000348c: 17 25 00 00  	auipc	a0, 2
80003490: 13 05 c5 6b  	addi	a0, a0, 1724
80003494: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80003498: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
8000349c: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
800034a0: 27 30 81 0a  	fsd	fs0, 160(sp)
800034a4: 03 26 01 0a  	lw	a2, 160(sp)
800034a8: 83 26 41 0a  	lw	a3, 164(sp)

800034ac <.LBB0_90>:
800034ac: 17 25 00 00  	auipc	a0, 2
800034b0: 13 05 95 3b  	addi	a0, a0, 953
800034b4: 97 00 00 00  	auipc	ra, 0
800034b8: e7 80 40 07  	jalr	116(ra)

800034bc <.LBB0_91>:
800034bc: 17 25 00 00  	auipc	a0, 2
800034c0: 13 05 45 69  	addi	a0, a0, 1684
800034c4: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
800034c8: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
800034cc: 87 3b 81 0a  	fld	fs7, 168(sp)
800034d0: 07 3b 01 0b  	fld	fs6, 176(sp)
800034d4: 87 3a 81 0b  	fld	fs5, 184(sp)
800034d8: 07 3a 01 0c  	fld	fs4, 192(sp)
800034dc: 87 39 81 0c  	fld	fs3, 200(sp)
800034e0: 07 39 01 0d  	fld	fs2, 208(sp)
800034e4: 87 34 81 0d  	fld	fs1, 216(sp)
800034e8: 07 34 01 0e  	fld	fs0, 224(sp)
800034ec: 83 2d c1 0e  	lw	s11, 236(sp)
800034f0: 03 2d 01 0f  	lw	s10, 240(sp)
800034f4: 83 2c 41 0f  	lw	s9, 244(sp)
800034f8: 03 2c 81 0f  	lw	s8, 248(sp)
800034fc: 83 2b c1 0f  	lw	s7, 252(sp)
80003500: 03 2b 01 10  	lw	s6, 256(sp)
80003504: 83 2a 41 10  	lw	s5, 260(sp)
80003508: 03 2a 81 10  	lw	s4, 264(sp)
8000350c: 83 29 c1 10  	lw	s3, 268(sp)
80003510: 03 29 01 11  	lw	s2, 272(sp)
80003514: 83 24 41 11  	lw	s1, 276(sp)
80003518: 03 24 81 11  	lw	s0, 280(sp)
8000351c: 83 20 c1 11  	lw	ra, 284(sp)
80003520: 13 01 01 12  	addi	sp, sp, 288
80003524: 67 80 00 00  	ret

80003528 <printf_>:
; {
80003528: 13 01 01 fd  	addi	sp, sp, -48
8000352c: 23 26 11 00  	sw	ra, 12(sp)
80003530: 93 02 05 00  	mv	t0, a0
80003534: 23 26 11 03  	sw	a7, 44(sp)
80003538: 23 24 01 03  	sw	a6, 40(sp)
8000353c: 23 22 f1 02  	sw	a5, 36(sp)
80003540: 23 20 e1 02  	sw	a4, 32(sp)
80003544: 23 2e d1 00  	sw	a3, 28(sp)
80003548: 23 2c c1 00  	sw	a2, 24(sp)
8000354c: 23 2a b1 00  	sw	a1, 20(sp)
80003550: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80003554: 23 24 a1 00  	sw	a0, 8(sp)

80003558 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80003558: 17 15 00 00  	auipc	a0, 1
8000355c: 13 05 45 c2  	addi	a0, a0, -988
80003560: 93 05 71 00  	addi	a1, sp, 7
80003564: 13 06 f0 ff  	addi	a2, zero, -1
80003568: 13 07 41 01  	addi	a4, sp, 20
8000356c: 93 86 02 00  	mv	a3, t0
80003570: 97 00 00 00  	auipc	ra, 0
80003574: e7 80 40 01  	jalr	20(ra)
;   return ret;
80003578: 83 20 c1 00  	lw	ra, 12(sp)
8000357c: 13 01 01 03  	addi	sp, sp, 48
80003580: 67 80 00 00  	ret

80003584 <_vsnprintf.llvm.11632292163828655644>:
; {
80003584: 13 01 01 f9  	addi	sp, sp, -112
80003588: 23 26 11 06  	sw	ra, 108(sp)
8000358c: 23 24 81 06  	sw	s0, 104(sp)
80003590: 23 22 91 06  	sw	s1, 100(sp)
80003594: 23 20 21 07  	sw	s2, 96(sp)
80003598: 23 2e 31 05  	sw	s3, 92(sp)
8000359c: 23 2c 41 05  	sw	s4, 88(sp)
800035a0: 23 2a 51 05  	sw	s5, 84(sp)
800035a4: 23 28 61 05  	sw	s6, 80(sp)
800035a8: 23 26 71 05  	sw	s7, 76(sp)
800035ac: 23 24 81 05  	sw	s8, 72(sp)
800035b0: 23 22 91 05  	sw	s9, 68(sp)
800035b4: 23 20 a1 05  	sw	s10, 64(sp)
800035b8: 23 2e b1 03  	sw	s11, 60(sp)
800035bc: 93 09 07 00  	mv	s3, a4
800035c0: 13 84 06 00  	mv	s0, a3
800035c4: 93 0a 06 00  	mv	s5, a2
800035c8: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800035cc: 63 86 05 00  	beqz	a1, 0x800035d8 <.LBB1_183>
800035d0: 13 09 05 00  	mv	s2, a0
800035d4: 6f 00 c0 00  	j	0x800035e0 <.LBB1_183+0x8>

800035d8 <.LBB1_183>:
800035d8: 17 19 00 00  	auipc	s2, 1
800035dc: 13 09 09 c5  	addi	s2, s2, -944
800035e0: 13 0c 00 00  	mv	s8, zero
800035e4: 13 0b 50 02  	addi	s6, zero, 37
800035e8: 93 0d 00 01  	addi	s11, zero, 16
800035ec: 93 0b e0 02  	addi	s7, zero, 46
800035f0: 37 15 00 00  	lui	a0, 1
800035f4: 13 05 05 80  	addi	a0, a0, -2048
800035f8: 23 2c a1 00  	sw	a0, 24(sp)
800035fc: 37 05 01 00  	lui	a0, 16
80003600: 13 05 f5 ff  	addi	a0, a0, -1
80003604: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80003608: 13 0d 24 00  	addi	s10, s0, 2
8000360c: 93 0c 0c 00  	mv	s9, s8
80003610: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80003614: 03 45 04 00  	lbu	a0, 0(s0)
80003618: e3 04 05 30  	beqz	a0, 0x80004120 <.LBB1_124+0x3b0>
8000361c: 63 08 65 03  	beq	a0, s6, 0x8000364c <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80003620: 93 84 1c 00  	addi	s1, s9, 1
80003624: 93 05 0a 00  	mv	a1, s4
80003628: 13 86 0c 00  	mv	a2, s9
8000362c: 93 86 0a 00  	mv	a3, s5
80003630: e7 00 09 00  	jalr	s2
;       format++;
80003634: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80003638: 13 0d 1d 00  	addi	s10, s10, 1
8000363c: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80003640: 03 45 04 00  	lbu	a0, 0(s0)
80003644: e3 1c 05 fc  	bnez	a0, 0x8000361c <.LBB1_183+0x44>
80003648: 6f 00 90 2d  	j	0x80004120 <.LBB1_124+0x3b0>
;     flags = 0U;
8000364c: 13 04 00 00  	mv	s0, zero
80003650: 6f 00 00 01  	j	0x80003660 <.LBB1_9+0x8>

80003654 <.LBB1_8>:
80003654: 93 05 00 01  	addi	a1, zero, 16

80003658 <.LBB1_9>:
80003658: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
8000365c: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80003660: 03 45 fd ff  	lbu	a0, -1(s10)
80003664: 93 05 05 fe  	addi	a1, a0, -32
80003668: 63 ec bd 02  	bltu	s11, a1, 0x800036a0 <.LBB1_15>
8000366c: 93 95 25 00  	slli	a1, a1, 2

80003670 <.LBB1_184>:
80003670: 17 26 00 00  	auipc	a2, 2
80003674: 13 06 46 21  	addi	a2, a2, 532
80003678: b3 85 c5 00  	add	a1, a1, a2
8000367c: 03 a6 05 00  	lw	a2, 0(a1)
80003680: 93 05 10 00  	addi	a1, zero, 1
80003684: 67 00 06 00  	jr	a2

80003688 <.LBB1_12>:
80003688: 93 05 80 00  	addi	a1, zero, 8
8000368c: 6f f0 df fc  	j	0x80003658 <.LBB1_9>

80003690 <.LBB1_13>:
80003690: 93 05 40 00  	addi	a1, zero, 4
80003694: 6f f0 5f fc  	j	0x80003658 <.LBB1_9>

80003698 <.LBB1_14>:
80003698: 93 05 20 00  	addi	a1, zero, 2
8000369c: 6f f0 df fb  	j	0x80003658 <.LBB1_9>

800036a0 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800036a0: 93 05 05 fd  	addi	a1, a0, -48
800036a4: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800036a8: 93 05 fd ff  	addi	a1, s10, -1
800036ac: 93 06 90 00  	addi	a3, zero, 9
800036b0: 63 ee c6 06  	bltu	a3, a2, 0x8000372c <.LBB1_15+0x8c>
800036b4: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800036b8: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800036bc: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800036c0: b3 06 8b 03  	mul	a3, s6, s8
800036c4: 93 85 15 00  	addi	a1, a1, 1
800036c8: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800036cc: 93 06 05 fd  	addi	a3, a0, -48
800036d0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800036d4: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800036d8: e3 e0 86 ff  	bltu	a3, s8, 0x800036b8 <.LBB1_15+0x18>
800036dc: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800036e0: 63 16 75 0b  	bne	a0, s7, 0x8000378c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
800036e4: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
800036e8: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
800036ec: 93 05 05 fd  	addi	a1, a0, -48
800036f0: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
800036f4: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
800036f8: 93 06 90 00  	addi	a3, zero, 9
800036fc: 63 e0 c6 06  	bltu	a3, a2, 0x8000375c <.LBB1_15+0xbc>
80003700: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003704: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003708: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000370c: b3 86 8b 03  	mul	a3, s7, s8
80003710: 93 85 15 00  	addi	a1, a1, 1
80003714: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003718: 93 06 05 fd  	addi	a3, a0, -48
8000371c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003720: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80003724: e3 e0 86 ff  	bltu	a3, s8, 0x80003704 <.LBB1_15+0x64>
80003728: 6f 00 00 07  	j	0x80003798 <.LBB1_15+0xf8>
;     else if (*format == '*') {
8000372c: 13 06 a0 02  	addi	a2, zero, 42
80003730: 63 18 c5 04  	bne	a0, a2, 0x80003780 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80003734: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80003738: 63 d4 05 00  	bgez	a1, 0x80003740 <.LBB1_15+0xa0>
8000373c: 13 64 24 00  	ori	s0, s0, 2
80003740: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80003744: 03 45 0d 00  	lbu	a0, 0(s10)
80003748: 13 d6 f5 41  	srai	a2, a1, 31
8000374c: b3 85 c5 00  	add	a1, a1, a2
80003750: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80003754: e3 08 75 f9  	beq	a0, s7, 0x800036e4 <.LBB1_15+0x44>
80003758: 6f 00 40 03  	j	0x8000378c <.LBB1_15+0xec>
;       else if (*format == '*') {
8000375c: 13 06 a0 02  	addi	a2, zero, 42
80003760: 63 1a c5 02  	bne	a0, a2, 0x80003794 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80003764: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80003768: 63 44 70 01  	bgtz	s7, 0x80003770 <.LBB1_15+0xd0>
8000376c: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80003770: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80003774: 13 0d 2d 00  	addi	s10, s10, 2
80003778: 93 89 49 00  	addi	s3, s3, 4
8000377c: 6f 00 00 02  	j	0x8000379c <.LBB1_15+0xfc>
80003780: 13 0b 00 00  	mv	s6, zero
80003784: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003788: e3 0e 75 f5  	beq	a0, s7, 0x800036e4 <.LBB1_15+0x44>
8000378c: 93 0b 00 00  	mv	s7, zero
80003790: 6f 00 c0 00  	j	0x8000379c <.LBB1_15+0xfc>
80003794: 93 0b 00 00  	mv	s7, zero
80003798: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
8000379c: 93 05 85 f9  	addi	a1, a0, -104
800037a0: 13 d6 15 00  	srli	a2, a1, 1
800037a4: 93 95 f5 01  	slli	a1, a1, 31
800037a8: b3 e5 c5 00  	or	a1, a1, a2
800037ac: 13 06 90 00  	addi	a2, zero, 9
800037b0: 63 62 b6 06  	bltu	a2, a1, 0x80003814 <.LBB1_42>
800037b4: 93 95 25 00  	slli	a1, a1, 2

800037b8 <.LBB1_185>:
800037b8: 17 26 00 00  	auipc	a2, 2
800037bc: 13 06 06 11  	addi	a2, a2, 272
800037c0: b3 85 c5 00  	add	a1, a1, a2
800037c4: 83 a6 05 00  	lw	a3, 0(a1)
800037c8: 93 05 10 00  	addi	a1, zero, 1
800037cc: 13 06 00 10  	addi	a2, zero, 256
800037d0: 67 80 06 00  	jr	a3

800037d4 <.LBB1_36>:
;         if (*format == 'h') {
800037d4: 03 45 1d 00  	lbu	a0, 1(s10)
800037d8: 93 05 80 06  	addi	a1, zero, 104
800037dc: 63 12 b5 12  	bne	a0, a1, 0x80003900 <.LBB1_53+0x48>
800037e0: 93 05 20 00  	addi	a1, zero, 2
800037e4: 13 06 00 0c  	addi	a2, zero, 192
800037e8: 6f 00 00 02  	j	0x80003808 <.LBB1_41>

800037ec <.LBB1_38>:
800037ec: 13 06 00 20  	addi	a2, zero, 512
800037f0: 6f 00 80 01  	j	0x80003808 <.LBB1_41>

800037f4 <.LBB1_39>:
;         if (*format == 'l') {
800037f4: 03 45 1d 00  	lbu	a0, 1(s10)
800037f8: 93 05 c0 06  	addi	a1, zero, 108
800037fc: 63 18 b5 10  	bne	a0, a1, 0x8000390c <.LBB1_53+0x54>
80003800: 93 05 20 00  	addi	a1, zero, 2
80003804: 13 06 00 30  	addi	a2, zero, 768

80003808 <.LBB1_41>:
80003808: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
8000380c: 03 45 0d 00  	lbu	a0, 0(s10)
80003810: 33 64 c4 00  	or	s0, s0, a2

80003814 <.LBB1_42>:
;     switch (*format) {
80003814: 93 05 b5 fd  	addi	a1, a0, -37
80003818: 13 06 30 05  	addi	a2, zero, 83
8000381c: 63 64 b6 10  	bltu	a2, a1, 0x80003924 <.LBB1_59>
80003820: 93 95 25 00  	slli	a1, a1, 2

80003824 <.LBB1_186>:
80003824: 17 26 00 00  	auipc	a2, 2
80003828: 13 06 c6 0c  	addi	a2, a2, 204
8000382c: b3 85 c5 00  	add	a1, a1, a2
80003830: 03 a6 05 00  	lw	a2, 0(a1)
80003834: 93 05 80 00  	addi	a1, zero, 8
80003838: 13 0c 00 01  	addi	s8, zero, 16
8000383c: 67 00 06 00  	jr	a2

80003840 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80003840: 13 74 f4 fe  	andi	s0, s0, -17
80003844: 13 0c a0 00  	addi	s8, zero, 10

80003848 <.LBB1_45>:
;         if (*format == 'X') {
80003848: 93 05 80 05  	addi	a1, zero, 88
8000384c: 63 14 b5 00  	bne	a0, a1, 0x80003854 <.LBB1_45+0xc>
80003850: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80003854: 93 05 40 06  	addi	a1, zero, 100
80003858: 63 08 b5 0e  	beq	a0, a1, 0x80003948 <.LBB1_62+0x8>
8000385c: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80003860: 13 06 90 06  	addi	a2, zero, 105
80003864: 63 02 c5 0e  	beq	a0, a2, 0x80003948 <.LBB1_62+0x8>
80003868: 6f 00 80 0d  	j	0x80003940 <.LBB1_62>

8000386c <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
8000386c: 93 05 60 04  	addi	a1, zero, 70
80003870: 63 14 b5 00  	bne	a0, a1, 0x80003878 <.LBB1_49+0xc>
80003874: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003878: 13 85 79 00  	addi	a0, s3, 7
8000387c: 13 75 85 ff  	andi	a0, a0, -8
80003880: 07 35 05 00  	fld	fa0, 0(a0)
80003884: 93 09 85 00  	addi	s3, a0, 8
80003888: 13 05 09 00  	mv	a0, s2
8000388c: 93 05 0a 00  	mv	a1, s4
80003890: 13 86 0c 00  	mv	a2, s9
80003894: 93 86 0a 00  	mv	a3, s5
80003898: 13 87 0b 00  	mv	a4, s7
8000389c: 93 07 0b 00  	mv	a5, s6
800038a0: 13 08 04 00  	mv	a6, s0
800038a4: 97 10 00 00  	auipc	ra, 1
800038a8: e7 80 80 98  	jalr	-1656(ra)
800038ac: 6f 00 00 7c  	j	0x8000406c <.LBB1_124+0x2fc>

800038b0 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800038b0: 83 25 81 01  	lw	a1, 24(sp)
800038b4: 33 64 b4 00  	or	s0, s0, a1

800038b8 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800038b8: 13 65 25 00  	ori	a0, a0, 2
800038bc: 93 05 70 04  	addi	a1, zero, 71
800038c0: 63 14 b5 00  	bne	a0, a1, 0x800038c8 <.LBB1_53+0x10>
800038c4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800038c8: 13 85 79 00  	addi	a0, s3, 7
800038cc: 13 75 85 ff  	andi	a0, a0, -8
800038d0: 07 35 05 00  	fld	fa0, 0(a0)
800038d4: 93 09 85 00  	addi	s3, a0, 8
800038d8: 13 05 09 00  	mv	a0, s2
800038dc: 93 05 0a 00  	mv	a1, s4
800038e0: 13 86 0c 00  	mv	a2, s9
800038e4: 93 86 0a 00  	mv	a3, s5
800038e8: 13 87 0b 00  	mv	a4, s7
800038ec: 93 07 0b 00  	mv	a5, s6
800038f0: 13 08 04 00  	mv	a6, s0
800038f4: 97 10 00 00  	auipc	ra, 1
800038f8: e7 80 80 01  	jalr	24(ra)
800038fc: 6f 00 00 77  	j	0x8000406c <.LBB1_124+0x2fc>
80003900: 13 64 04 08  	ori	s0, s0, 128
80003904: 13 0d 1d 00  	addi	s10, s10, 1
80003908: 6f f0 df f0  	j	0x80003814 <.LBB1_42>
8000390c: 13 64 04 10  	ori	s0, s0, 256
80003910: 13 0d 1d 00  	addi	s10, s10, 1
80003914: 6f f0 1f f0  	j	0x80003814 <.LBB1_42>

80003918 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003918: 13 8c 1c 00  	addi	s8, s9, 1
8000391c: 13 05 50 02  	addi	a0, zero, 37
80003920: 6f 00 80 00  	j	0x80003928 <.LBB1_59+0x4>

80003924 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80003924: 13 8c 1c 00  	addi	s8, s9, 1
80003928: 93 05 0a 00  	mv	a1, s4
8000392c: 13 86 0c 00  	mv	a2, s9
80003930: 93 86 0a 00  	mv	a3, s5
80003934: e7 00 09 00  	jalr	s2
80003938: 6f 00 80 73  	j	0x80004070 <.LBB1_124+0x300>

8000393c <.LBB1_61>:
8000393c: 93 05 20 00  	addi	a1, zero, 2

80003940 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80003940: 13 74 34 ff  	andi	s0, s0, -13
80003944: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80003948: 93 75 04 40  	andi	a1, s0, 1024
8000394c: 63 84 05 00  	beqz	a1, 0x80003954 <.LBB1_62+0x14>
80003950: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80003954: 93 05 90 06  	addi	a1, zero, 105
80003958: 63 06 b5 00  	beq	a0, a1, 0x80003964 <.LBB1_62+0x24>
8000395c: 93 05 40 06  	addi	a1, zero, 100
80003960: 63 1c b5 12  	bne	a0, a1, 0x80003a98 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80003964: 13 75 04 20  	andi	a0, s0, 512
80003968: 63 16 05 02  	bnez	a0, 0x80003994 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
8000396c: 13 75 04 10  	andi	a0, s0, 256
80003970: 63 1c 05 14  	bnez	a0, 0x80003ac8 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003974: 13 75 04 04  	andi	a0, s0, 64
80003978: 63 18 05 4e  	bnez	a0, 0x80003e68 <.LBB1_124+0xf8>
8000397c: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003980: 93 75 04 08  	andi	a1, s0, 128
80003984: 63 84 05 4e  	beqz	a1, 0x80003e6c <.LBB1_124+0xfc>
80003988: 13 15 08 01  	slli	a0, a6, 16
8000398c: 13 58 05 41  	srai	a6, a0, 16
80003990: 6f 00 c0 4d  	j	0x80003e6c <.LBB1_124+0xfc>
80003994: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003998: 13 85 79 00  	addi	a0, s3, 7
8000399c: 13 75 85 ff  	andi	a0, a0, -8
800039a0: 83 29 05 00  	lw	s3, 0(a0)
800039a4: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800039a8: 13 65 45 00  	ori	a0, a0, 4
800039ac: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800039b0: 23 24 a1 00  	sw	a0, 8(sp)
800039b4: 33 e5 a9 00  	or	a0, s3, a0
800039b8: 63 14 05 00  	bnez	a0, 0x800039c0 <.LBB1_62+0x80>
800039bc: 13 74 f4 fe  	andi	s0, s0, -17
800039c0: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800039c4: 93 75 04 40  	andi	a1, s0, 1024
800039c8: 93 d5 a5 00  	srli	a1, a1, 10
800039cc: 33 75 b5 00  	and	a0, a0, a1
800039d0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800039d4: 63 14 05 0a  	bnez	a0, 0x80003a7c <.LBB1_62+0x13c>
800039d8: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800039dc: 63 da 04 00  	bgez	s1, 0x800039f0 <.LBB1_62+0xb0>
800039e0: 33 35 30 01  	snez	a0, s3
800039e4: b3 09 30 41  	neg	s3, s3
800039e8: 33 85 a4 00  	add	a0, s1, a0
800039ec: b3 04 a0 40  	neg	s1, a0
800039f0: 13 09 00 00  	mv	s2, zero
800039f4: 13 75 04 02  	andi	a0, s0, 32
800039f8: 13 45 15 06  	xori	a0, a0, 97
800039fc: 13 05 65 0f  	addi	a0, a0, 246
80003a00: 23 2a a1 00  	sw	a0, 20(sp)
80003a04: 6f 00 40 02  	j	0x80003a28 <.LBB1_62+0xe8>
80003a08: 13 06 10 00  	addi	a2, zero, 1
80003a0c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a10: 93 36 f9 01  	sltiu	a3, s2, 31
80003a14: 33 f6 c6 00  	and	a2, a3, a2
80003a18: 13 89 07 00  	mv	s2, a5
80003a1c: 93 09 05 00  	mv	s3, a0
80003a20: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a24: 63 0c 06 04  	beqz	a2, 0x80003a7c <.LBB1_62+0x13c>
;       value /= base;
80003a28: 13 85 09 00  	mv	a0, s3
80003a2c: 93 85 04 00  	mv	a1, s1
80003a30: 13 06 0c 00  	mv	a2, s8
80003a34: 93 06 00 00  	mv	a3, zero
80003a38: 97 c0 ff ff  	auipc	ra, 1048572
80003a3c: e7 80 80 5c  	jalr	1480(ra)
80003a40: 33 06 85 03  	mul	a2, a0, s8
80003a44: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a48: 13 77 e6 0f  	andi	a4, a2, 254
80003a4c: 93 06 00 03  	addi	a3, zero, 48
80003a50: 93 07 a0 00  	addi	a5, zero, 10
80003a54: 63 64 f7 00  	bltu	a4, a5, 0x80003a5c <.LBB1_62+0x11c>
80003a58: 83 26 41 01  	lw	a3, 20(sp)
80003a5c: 33 86 c6 00  	add	a2, a3, a2
80003a60: 93 06 c1 01  	addi	a3, sp, 28
80003a64: b3 86 26 01  	add	a3, a3, s2
80003a68: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a6c: e3 9e 04 f8  	bnez	s1, 0x80003a08 <.LBB1_62+0xc8>
80003a70: 33 b6 89 01  	sltu	a2, s3, s8
80003a74: 13 46 16 00  	xori	a2, a2, 1
80003a78: 6f f0 5f f9  	j	0x80003a0c <.LBB1_62+0xcc>
80003a7c: 03 25 41 00  	lw	a0, 4(sp)
80003a80: 93 09 85 00  	addi	s3, a0, 8
80003a84: 03 25 81 00  	lw	a0, 8(sp)
80003a88: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003a8c: 13 07 c1 01  	addi	a4, sp, 28
80003a90: 03 29 c1 00  	lw	s2, 12(sp)
80003a94: 6f 00 80 47  	j	0x80003f0c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003a98: 13 75 04 20  	andi	a0, s0, 512
80003a9c: 63 12 05 0c  	bnez	a0, 0x80003b60 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80003aa0: 13 75 04 10  	andi	a0, s0, 256
80003aa4: 63 1e 05 46  	bnez	a0, 0x80003f20 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003aa8: 13 75 04 04  	andi	a0, s0, 64
80003aac: 63 10 05 50  	bnez	a0, 0x80003fac <.LBB1_124+0x23c>
80003ab0: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003ab4: 93 75 04 08  	andi	a1, s0, 128
80003ab8: 63 8c 05 4e  	beqz	a1, 0x80003fb0 <.LBB1_124+0x240>
80003abc: 83 25 01 01  	lw	a1, 16(sp)
80003ac0: 33 75 b5 00  	and	a0, a0, a1
80003ac4: 6f 00 c0 4e  	j	0x80003fb0 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003ac8: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80003acc: 63 14 08 00  	bnez	a6, 0x80003ad4 <.LBB1_62+0x194>
80003ad0: 13 74 f4 fe  	andi	s0, s0, -17
80003ad4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003ad8: 13 76 04 40  	andi	a2, s0, 1024
80003adc: 13 56 a6 00  	srli	a2, a2, 10
80003ae0: b3 f5 c5 00  	and	a1, a1, a2
80003ae4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003ae8: 63 9c 05 40  	bnez	a1, 0x80003f00 <.LBB1_124+0x190>
80003aec: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003af0: 13 56 f8 41  	srai	a2, a6, 31
80003af4: b3 06 c8 00  	add	a3, a6, a2
80003af8: b3 c6 c6 00  	xor	a3, a3, a2
80003afc: 13 76 04 02  	andi	a2, s0, 32
80003b00: 13 46 16 06  	xori	a2, a2, 97
80003b04: 93 08 66 0f  	addi	a7, a2, 246
80003b08: 6f 00 40 03  	j	0x80003b3c <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b0c: 33 05 f6 00  	add	a0, a2, a5
80003b10: 93 87 15 00  	addi	a5, a1, 1
80003b14: 13 06 c1 01  	addi	a2, sp, 28
80003b18: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b1c: b3 b6 86 01  	sltu	a3, a3, s8
80003b20: 93 c6 16 00  	xori	a3, a3, 1
80003b24: 93 b5 f5 01  	sltiu	a1, a1, 31
80003b28: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b2c: 23 00 a6 00  	sb	a0, 0(a2)
80003b30: 93 85 07 00  	mv	a1, a5
80003b34: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b38: 63 84 04 3c  	beqz	s1, 0x80003f00 <.LBB1_124+0x190>
;       value /= base;
80003b3c: 33 d7 86 03  	divu	a4, a3, s8
80003b40: 33 06 87 03  	mul	a2, a4, s8
80003b44: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b48: 13 f5 e7 0f  	andi	a0, a5, 254
80003b4c: 13 06 00 03  	addi	a2, zero, 48
80003b50: 93 04 a0 00  	addi	s1, zero, 10
80003b54: e3 6c 95 fa  	bltu	a0, s1, 0x80003b0c <.LBB1_62+0x1cc>
80003b58: 13 86 08 00  	mv	a2, a7
80003b5c: 6f f0 1f fb  	j	0x80003b0c <.LBB1_62+0x1cc>
80003b60: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003b64: 13 85 79 00  	addi	a0, s3, 7
80003b68: 93 75 85 ff  	andi	a1, a0, -8
80003b6c: 03 a9 05 00  	lw	s2, 0(a1)
80003b70: 13 e5 45 00  	ori	a0, a1, 4
80003b74: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80003b78: 33 65 39 01  	or	a0, s2, s3
80003b7c: 23 24 b1 00  	sw	a1, 8(sp)
80003b80: 63 14 05 00  	bnez	a0, 0x80003b88 <.LBB1_62+0x248>
80003b84: 13 74 f4 fe  	andi	s0, s0, -17
80003b88: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b8c: 93 75 04 40  	andi	a1, s0, 1024
80003b90: 93 d5 a5 00  	srli	a1, a1, 10
80003b94: 33 75 b5 00  	and	a0, a0, a1
80003b98: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b9c: 63 18 05 08  	bnez	a0, 0x80003c2c <.LBB1_62+0x2ec>
80003ba0: 93 04 00 00  	mv	s1, zero
80003ba4: 13 75 04 02  	andi	a0, s0, 32
80003ba8: 13 45 15 06  	xori	a0, a0, 97
80003bac: 13 05 65 0f  	addi	a0, a0, 246
80003bb0: 23 2a a1 00  	sw	a0, 20(sp)
80003bb4: 6f 00 40 02  	j	0x80003bd8 <.LBB1_62+0x298>
80003bb8: 13 06 10 00  	addi	a2, zero, 1
80003bbc: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003bc0: 93 b6 f4 01  	sltiu	a3, s1, 31
80003bc4: 33 f6 c6 00  	and	a2, a3, a2
80003bc8: 93 84 07 00  	mv	s1, a5
80003bcc: 13 09 05 00  	mv	s2, a0
80003bd0: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003bd4: 63 0c 06 04  	beqz	a2, 0x80003c2c <.LBB1_62+0x2ec>
;       value /= base;
80003bd8: 13 05 09 00  	mv	a0, s2
80003bdc: 93 85 09 00  	mv	a1, s3
80003be0: 13 06 0c 00  	mv	a2, s8
80003be4: 93 06 00 00  	mv	a3, zero
80003be8: 97 c0 ff ff  	auipc	ra, 1048572
80003bec: e7 80 80 41  	jalr	1048(ra)
80003bf0: 33 06 85 03  	mul	a2, a0, s8
80003bf4: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003bf8: 13 77 e6 0f  	andi	a4, a2, 254
80003bfc: 93 06 00 03  	addi	a3, zero, 48
80003c00: 93 07 a0 00  	addi	a5, zero, 10
80003c04: 63 64 f7 00  	bltu	a4, a5, 0x80003c0c <.LBB1_62+0x2cc>
80003c08: 83 26 41 01  	lw	a3, 20(sp)
80003c0c: 33 86 c6 00  	add	a2, a3, a2
80003c10: 93 06 c1 01  	addi	a3, sp, 28
80003c14: b3 86 96 00  	add	a3, a3, s1
80003c18: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003c1c: e3 9e 09 f8  	bnez	s3, 0x80003bb8 <.LBB1_62+0x278>
80003c20: 33 36 89 01  	sltu	a2, s2, s8
80003c24: 13 46 16 00  	xori	a2, a2, 1
80003c28: 6f f0 5f f9  	j	0x80003bbc <.LBB1_62+0x27c>
80003c2c: 03 25 81 00  	lw	a0, 8(sp)
80003c30: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003c34: 13 07 c1 01  	addi	a4, sp, 28
80003c38: 03 29 c1 00  	lw	s2, 12(sp)
80003c3c: 6f 00 40 40  	j	0x80004040 <.LBB1_124+0x2d0>

80003c40 <.LBB1_108>:
80003c40: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003c44: 13 79 24 00  	andi	s2, s0, 2
80003c48: 93 04 10 00  	addi	s1, zero, 1
80003c4c: 63 1e 09 02  	bnez	s2, 0x80003c88 <.LBB1_108+0x48>
80003c50: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003c54: 63 6a 9b 02  	bltu	s6, s1, 0x80003c88 <.LBB1_108+0x48>
80003c58: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80003c5c: 13 0c fb ff  	addi	s8, s6, -1
80003c60: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003c64: 33 86 8c 00  	add	a2, s9, s0
80003c68: 13 05 00 02  	addi	a0, zero, 32
80003c6c: 93 05 0a 00  	mv	a1, s4
80003c70: 93 86 0a 00  	mv	a3, s5
80003c74: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003c78: 13 04 14 00  	addi	s0, s0, 1
80003c7c: e3 14 8c fe  	bne	s8, s0, 0x80003c64 <.LBB1_108+0x24>
80003c80: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003c84: b3 8c 8c 00  	add	s9, s9, s0
80003c88: 03 c5 09 00  	lbu	a0, 0(s3)
80003c8c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003c90: 93 89 49 00  	addi	s3, s3, 4
80003c94: 13 8c 1c 00  	addi	s8, s9, 1
80003c98: 93 05 0a 00  	mv	a1, s4
80003c9c: 13 86 0c 00  	mv	a2, s9
80003ca0: 93 86 0a 00  	mv	a3, s5
80003ca4: 13 89 0b 00  	mv	s2, s7
80003ca8: e7 80 0b 00  	jalr	s7
80003cac: 33 b5 64 01  	sltu	a0, s1, s6
80003cb0: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003cb4: 33 65 a4 00  	or	a0, s0, a0
80003cb8: 63 1c 05 3a  	bnez	a0, 0x80004070 <.LBB1_124+0x300>
;           while (l++ < width) {
80003cbc: 33 04 9b 40  	sub	s0, s6, s1
80003cc0: 93 0b e0 02  	addi	s7, zero, 46
80003cc4: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003cc8: 13 0c 1c 00  	addi	s8, s8, 1
80003ccc: 13 05 00 02  	addi	a0, zero, 32
80003cd0: 93 05 0a 00  	mv	a1, s4
80003cd4: 93 86 0a 00  	mv	a3, s5
80003cd8: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003cdc: 13 04 f4 ff  	addi	s0, s0, -1
80003ce0: e3 12 04 fe  	bnez	s0, 0x80003cc4 <.LBB1_108+0x84>
80003ce4: 13 0b 50 02  	addi	s6, zero, 37
80003ce8: 13 04 1d 00  	addi	s0, s10, 1
80003cec: 6f f0 df 91  	j	0x80003608 <.LBB1_183+0x30>

80003cf0 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003cf0: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003cf4: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003cf8: 63 14 05 00  	bnez	a0, 0x80003d00 <.LBB1_117+0x10>
80003cfc: 93 fe fe fe  	andi	t4, t4, -17
80003d00: 93 04 a0 00  	addi	s1, zero, 10
80003d04: 13 04 f0 00  	addi	s0, zero, 15
80003d08: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003d0c: 13 f6 0e 40  	andi	a2, t4, 1024
80003d10: 13 56 a6 00  	srli	a2, a2, 10
80003d14: b3 f5 c5 00  	and	a1, a1, a2
80003d18: 93 07 00 00  	mv	a5, zero
80003d1c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80003d20: 63 98 05 10  	bnez	a1, 0x80003e30 <.LBB1_124+0xc0>
80003d24: 93 05 00 00  	mv	a1, zero
80003d28: 6f 00 40 03  	j	0x80003d5c <.LBB1_117+0x6c>
80003d2c: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d30: 33 06 d6 00  	add	a2, a2, a3
80003d34: 93 87 15 00  	addi	a5, a1, 1
80003d38: 93 06 c1 01  	addi	a3, sp, 28
80003d3c: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003d40: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003d44: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003d48: 93 b5 f5 01  	sltiu	a1, a1, 31
80003d4c: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d50: 23 80 c6 00  	sb	a2, 0(a3)
80003d54: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003d58: 63 0c 07 0c  	beqz	a4, 0x80003e30 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d5c: 93 76 e5 00  	andi	a3, a0, 14
80003d60: 13 06 00 03  	addi	a2, zero, 48
80003d64: e3 e4 96 fc  	bltu	a3, s1, 0x80003d2c <.LBB1_117+0x3c>
80003d68: 13 06 70 03  	addi	a2, zero, 55
80003d6c: 6f f0 1f fc  	j	0x80003d2c <.LBB1_117+0x3c>

80003d70 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80003d70: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003d74: 03 c5 07 00  	lbu	a0, 0(a5)
80003d78: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80003d7c: 63 0c 05 02  	beqz	a0, 0x80003db4 <.LBB1_124+0x44>
80003d80: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003d84: 63 84 0b 00  	beqz	s7, 0x80003d8c <.LBB1_124+0x1c>
80003d88: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80003d8c: 93 85 f5 ff  	addi	a1, a1, -1
80003d90: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003d94: 03 c7 16 00  	lbu	a4, 1(a3)
80003d98: 13 86 16 00  	addi	a2, a3, 1
80003d9c: b3 36 e0 00  	snez	a3, a4
80003da0: 33 37 b0 00  	snez	a4, a1
80003da4: 33 77 d7 00  	and	a4, a4, a3
80003da8: 93 85 f5 ff  	addi	a1, a1, -1
80003dac: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003db0: e3 12 07 fe  	bnez	a4, 0x80003d94 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003db4: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003db8: 93 75 04 40  	andi	a1, s0, 1024
80003dbc: 93 b4 15 00  	seqz	s1, a1
80003dc0: 23 2a c1 00  	sw	a2, 20(sp)
80003dc4: b3 35 76 01  	sltu	a1, a2, s7
80003dc8: b3 e5 b4 00  	or	a1, s1, a1
80003dcc: 63 94 05 00  	bnez	a1, 0x80003dd4 <.LBB1_124+0x64>
80003dd0: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003dd4: 93 75 24 00  	andi	a1, s0, 2
80003dd8: 23 26 b1 00  	sw	a1, 12(sp)
80003ddc: 63 96 05 2a  	bnez	a1, 0x80004088 <.LBB1_124+0x318>
80003de0: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003de4: 63 fe 65 29  	bgeu	a1, s6, 0x80004080 <.LBB1_124+0x310>
80003de8: 23 24 f1 00  	sw	a5, 8(sp)
80003dec: 13 04 00 00  	mv	s0, zero
80003df0: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003df4: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003df8: 33 86 8c 00  	add	a2, s9, s0
80003dfc: 13 05 00 02  	addi	a0, zero, 32
80003e00: 93 05 0a 00  	mv	a1, s4
80003e04: 93 86 0a 00  	mv	a3, s5
80003e08: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80003e0c: 13 04 14 00  	addi	s0, s0, 1
80003e10: e3 14 89 fe  	bne	s2, s0, 0x80003df8 <.LBB1_124+0x88>
80003e14: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003e18: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80003e1c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003e20: 23 2a b1 00  	sw	a1, 20(sp)
80003e24: b3 8c 8c 00  	add	s9, s9, s0
80003e28: 13 09 0c 00  	mv	s2, s8
80003e2c: 6f 00 c0 25  	j	0x80004088 <.LBB1_124+0x318>
80003e30: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003e34: 13 07 c1 01  	addi	a4, sp, 28
80003e38: 93 08 00 01  	addi	a7, zero, 16
80003e3c: 13 0e 80 00  	addi	t3, zero, 8
80003e40: 13 05 09 00  	mv	a0, s2
80003e44: 93 05 0a 00  	mv	a1, s4
80003e48: 13 86 0c 00  	mv	a2, s9
80003e4c: 93 86 0a 00  	mv	a3, s5
80003e50: 13 08 00 00  	mv	a6, zero
80003e54: 93 83 0b 00  	mv	t2, s7
80003e58: 97 10 00 00  	auipc	ra, 1
80003e5c: e7 80 00 fa  	jalr	-96(ra)
80003e60: 13 0c 05 00  	mv	s8, a0
80003e64: 6f 00 00 21  	j	0x80004074 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003e68: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80003e6c: 63 14 08 00  	bnez	a6, 0x80003e74 <.LBB1_124+0x104>
80003e70: 13 74 f4 fe  	andi	s0, s0, -17
80003e74: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003e78: 13 76 04 40  	andi	a2, s0, 1024
80003e7c: 13 56 a6 00  	srli	a2, a2, 10
80003e80: b3 f5 c5 00  	and	a1, a1, a2
80003e84: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003e88: 63 9c 05 06  	bnez	a1, 0x80003f00 <.LBB1_124+0x190>
80003e8c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003e90: 13 56 f8 41  	srai	a2, a6, 31
80003e94: b3 06 c8 00  	add	a3, a6, a2
80003e98: b3 c6 c6 00  	xor	a3, a3, a2
80003e9c: 13 76 04 02  	andi	a2, s0, 32
80003ea0: 13 46 16 06  	xori	a2, a2, 97
80003ea4: 93 08 66 0f  	addi	a7, a2, 246
80003ea8: 6f 00 40 03  	j	0x80003edc <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003eac: 33 05 f6 00  	add	a0, a2, a5
80003eb0: 93 87 15 00  	addi	a5, a1, 1
80003eb4: 13 06 c1 01  	addi	a2, sp, 28
80003eb8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ebc: b3 b6 86 01  	sltu	a3, a3, s8
80003ec0: 93 c6 16 00  	xori	a3, a3, 1
80003ec4: 93 b5 f5 01  	sltiu	a1, a1, 31
80003ec8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003ecc: 23 00 a6 00  	sb	a0, 0(a2)
80003ed0: 93 85 07 00  	mv	a1, a5
80003ed4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ed8: 63 84 04 02  	beqz	s1, 0x80003f00 <.LBB1_124+0x190>
;       value /= base;
80003edc: 33 d7 86 03  	divu	a4, a3, s8
80003ee0: 33 06 87 03  	mul	a2, a4, s8
80003ee4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003ee8: 13 f5 e7 0f  	andi	a0, a5, 254
80003eec: 13 06 00 03  	addi	a2, zero, 48
80003ef0: 93 04 a0 00  	addi	s1, zero, 10
80003ef4: e3 6c 95 fa  	bltu	a0, s1, 0x80003eac <.LBB1_124+0x13c>
80003ef8: 13 86 08 00  	mv	a2, a7
80003efc: 6f f0 1f fb  	j	0x80003eac <.LBB1_124+0x13c>
80003f00: 93 89 49 00  	addi	s3, s3, 4
80003f04: 13 58 f8 01  	srli	a6, a6, 31
80003f08: 13 07 c1 01  	addi	a4, sp, 28
80003f0c: 13 05 09 00  	mv	a0, s2
80003f10: 93 05 0a 00  	mv	a1, s4
80003f14: 13 86 0c 00  	mv	a2, s9
80003f18: 93 86 0a 00  	mv	a3, s5
80003f1c: 6f 00 80 13  	j	0x80004054 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80003f20: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003f24: 63 14 05 00  	bnez	a0, 0x80003f2c <.LBB1_124+0x1bc>
80003f28: 13 74 f4 fe  	andi	s0, s0, -17
80003f2c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f30: 13 76 04 40  	andi	a2, s0, 1024
80003f34: 13 56 a6 00  	srli	a2, a2, 10
80003f38: b3 f5 c5 00  	and	a1, a1, a2
80003f3c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f40: 63 9c 05 0e  	bnez	a1, 0x80004038 <.LBB1_124+0x2c8>
80003f44: 13 06 00 00  	mv	a2, zero
80003f48: 93 75 04 02  	andi	a1, s0, 32
80003f4c: 93 c5 15 06  	xori	a1, a1, 97
80003f50: 13 88 65 0f  	addi	a6, a1, 246
80003f54: 6f 00 40 03  	j	0x80003f88 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f58: 33 87 e7 00  	add	a4, a5, a4
80003f5c: 93 07 16 00  	addi	a5, a2, 1
80003f60: 93 05 c1 01  	addi	a1, sp, 28
80003f64: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f68: 33 35 85 01  	sltu	a0, a0, s8
80003f6c: 13 45 15 00  	xori	a0, a0, 1
80003f70: 13 36 f6 01  	sltiu	a2, a2, 31
80003f74: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f78: 23 80 e4 00  	sb	a4, 0(s1)
80003f7c: 13 86 07 00  	mv	a2, a5
80003f80: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f84: 63 8a 05 0a  	beqz	a1, 0x80004038 <.LBB1_124+0x2c8>
;       value /= base;
80003f88: b3 56 85 03  	divu	a3, a0, s8
80003f8c: 33 87 86 03  	mul	a4, a3, s8
80003f90: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f94: 93 74 e7 0f  	andi	s1, a4, 254
80003f98: 93 07 00 03  	addi	a5, zero, 48
80003f9c: 93 05 a0 00  	addi	a1, zero, 10
80003fa0: e3 ec b4 fa  	bltu	s1, a1, 0x80003f58 <.LBB1_124+0x1e8>
80003fa4: 93 07 08 00  	mv	a5, a6
80003fa8: 6f f0 1f fb  	j	0x80003f58 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003fac: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80003fb0: 63 14 05 00  	bnez	a0, 0x80003fb8 <.LBB1_124+0x248>
80003fb4: 13 74 f4 fe  	andi	s0, s0, -17
80003fb8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003fbc: 13 76 04 40  	andi	a2, s0, 1024
80003fc0: 13 56 a6 00  	srli	a2, a2, 10
80003fc4: b3 f5 c5 00  	and	a1, a1, a2
80003fc8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003fcc: 63 96 05 06  	bnez	a1, 0x80004038 <.LBB1_124+0x2c8>
80003fd0: 13 06 00 00  	mv	a2, zero
80003fd4: 93 75 04 02  	andi	a1, s0, 32
80003fd8: 93 c5 15 06  	xori	a1, a1, 97
80003fdc: 13 88 65 0f  	addi	a6, a1, 246
80003fe0: 6f 00 40 03  	j	0x80004014 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003fe4: 33 87 e7 00  	add	a4, a5, a4
80003fe8: 93 07 16 00  	addi	a5, a2, 1
80003fec: 93 05 c1 01  	addi	a1, sp, 28
80003ff0: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ff4: 33 35 85 01  	sltu	a0, a0, s8
80003ff8: 13 45 15 00  	xori	a0, a0, 1
80003ffc: 13 36 f6 01  	sltiu	a2, a2, 31
80004000: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004004: 23 80 e4 00  	sb	a4, 0(s1)
80004008: 13 86 07 00  	mv	a2, a5
8000400c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004010: 63 84 05 02  	beqz	a1, 0x80004038 <.LBB1_124+0x2c8>
;       value /= base;
80004014: b3 56 85 03  	divu	a3, a0, s8
80004018: 33 87 86 03  	mul	a4, a3, s8
8000401c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004020: 93 74 e7 0f  	andi	s1, a4, 254
80004024: 93 07 00 03  	addi	a5, zero, 48
80004028: 93 05 a0 00  	addi	a1, zero, 10
8000402c: e3 ec b4 fa  	bltu	s1, a1, 0x80003fe4 <.LBB1_124+0x274>
80004030: 93 07 08 00  	mv	a5, a6
80004034: 6f f0 1f fb  	j	0x80003fe4 <.LBB1_124+0x274>
80004038: 93 89 49 00  	addi	s3, s3, 4
8000403c: 13 07 c1 01  	addi	a4, sp, 28
80004040: 13 05 09 00  	mv	a0, s2
80004044: 93 05 0a 00  	mv	a1, s4
80004048: 13 86 0c 00  	mv	a2, s9
8000404c: 93 86 0a 00  	mv	a3, s5
80004050: 13 08 00 00  	mv	a6, zero
80004054: 93 08 0c 00  	mv	a7, s8
80004058: 93 83 0b 00  	mv	t2, s7
8000405c: 13 0e 0b 00  	mv	t3, s6
80004060: 93 0e 04 00  	mv	t4, s0
80004064: 97 10 00 00  	auipc	ra, 1
80004068: e7 80 40 d9  	jalr	-620(ra)
8000406c: 13 0c 05 00  	mv	s8, a0
80004070: 13 0b 50 02  	addi	s6, zero, 37
80004074: 93 0b e0 02  	addi	s7, zero, 46
80004078: 13 04 1d 00  	addi	s0, s10, 1
8000407c: 6f f0 cf d8  	j	0x80003608 <.LBB1_183+0x30>
80004080: 93 85 15 00  	addi	a1, a1, 1
80004084: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004088: 63 00 05 04  	beqz	a0, 0x800040c8 <.LBB1_124+0x358>
8000408c: 13 84 17 00  	addi	s0, a5, 1
80004090: 6f 00 00 03  	j	0x800040c0 <.LBB1_124+0x350>
80004094: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80004098: 13 8c 1c 00  	addi	s8, s9, 1
8000409c: 13 75 f5 0f  	andi	a0, a0, 255
800040a0: 93 05 0a 00  	mv	a1, s4
800040a4: 13 86 0c 00  	mv	a2, s9
800040a8: 93 86 0a 00  	mv	a3, s5
800040ac: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800040b0: 03 45 04 00  	lbu	a0, 0(s0)
800040b4: 13 04 14 00  	addi	s0, s0, 1
800040b8: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800040bc: 63 08 05 00  	beqz	a0, 0x800040cc <.LBB1_124+0x35c>
800040c0: e3 9c 04 fc  	bnez	s1, 0x80004098 <.LBB1_124+0x328>
800040c4: e3 98 0b fc  	bnez	s7, 0x80004094 <.LBB1_124+0x324>
800040c8: 13 8c 0c 00  	mv	s8, s9
800040cc: 03 25 c1 00  	lw	a0, 12(sp)
800040d0: 13 35 15 00  	seqz	a0, a0
800040d4: 03 26 41 01  	lw	a2, 20(sp)
800040d8: b3 35 66 01  	sltu	a1, a2, s6
800040dc: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800040e0: 33 65 b5 00  	or	a0, a0, a1
800040e4: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
800040e8: e3 14 05 f8  	bnez	a0, 0x80004070 <.LBB1_124+0x300>
;           while (l++ < width) {
800040ec: 33 04 cb 40  	sub	s0, s6, a2
800040f0: 93 0b e0 02  	addi	s7, zero, 46
800040f4: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800040f8: 13 0c 1c 00  	addi	s8, s8, 1
800040fc: 13 05 00 02  	addi	a0, zero, 32
80004100: 93 05 0a 00  	mv	a1, s4
80004104: 93 86 0a 00  	mv	a3, s5
80004108: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000410c: 13 04 f4 ff  	addi	s0, s0, -1
80004110: e3 12 04 fe  	bnez	s0, 0x800040f4 <.LBB1_124+0x384>
80004114: 13 0b 50 02  	addi	s6, zero, 37
80004118: 13 04 1d 00  	addi	s0, s10, 1
8000411c: 6f f0 cf ce  	j	0x80003608 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80004120: 13 86 0c 00  	mv	a2, s9
80004124: 63 e4 5c 01  	bltu	s9, s5, 0x8000412c <.LBB1_124+0x3bc>
80004128: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000412c: 13 05 00 00  	mv	a0, zero
80004130: 93 05 0a 00  	mv	a1, s4
80004134: 93 86 0a 00  	mv	a3, s5
80004138: e7 00 09 00  	jalr	s2
;   return (int)idx;
8000413c: 13 85 0c 00  	mv	a0, s9
80004140: 83 2d c1 03  	lw	s11, 60(sp)
80004144: 03 2d 01 04  	lw	s10, 64(sp)
80004148: 83 2c 41 04  	lw	s9, 68(sp)
8000414c: 03 2c 81 04  	lw	s8, 72(sp)
80004150: 83 2b c1 04  	lw	s7, 76(sp)
80004154: 03 2b 01 05  	lw	s6, 80(sp)
80004158: 83 2a 41 05  	lw	s5, 84(sp)
8000415c: 03 2a 81 05  	lw	s4, 88(sp)
80004160: 83 29 c1 05  	lw	s3, 92(sp)
80004164: 03 29 01 06  	lw	s2, 96(sp)
80004168: 83 24 41 06  	lw	s1, 100(sp)
8000416c: 03 24 81 06  	lw	s0, 104(sp)
80004170: 83 20 c1 06  	lw	ra, 108(sp)
80004174: 13 01 01 07  	addi	sp, sp, 112
80004178: 67 80 00 00  	ret

8000417c <_out_char.llvm.11632292163828655644>:
;   if (character) {
8000417c: 63 04 05 0a  	beqz	a0, 0x80004224 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004180: f3 25 40 f1  	csrr	a1, mhartid
80004184: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80004188: 33 86 c5 02  	mul	a2, a1, a2

8000418c <.LBB2_6>:
8000418c: 97 26 00 00  	auipc	a3, 2
80004190: 93 86 86 a7  	addi	a3, a3, -1416
80004194: b3 05 d6 00  	add	a1, a2, a3
80004198: 03 a7 05 00  	lw	a4, 0(a1)
8000419c: 93 07 17 00  	addi	a5, a4, 1
800041a0: 23 a0 f5 00  	sw	a5, 0(a1)
800041a4: 33 87 e5 00  	add	a4, a1, a4
800041a8: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800041ac: 03 a7 05 00  	lw	a4, 0(a1)
800041b0: 13 07 47 c0  	addi	a4, a4, -1020
800041b4: 33 37 e0 00  	snez	a4, a4
800041b8: 13 05 65 ff  	addi	a0, a0, -10
800041bc: 33 35 a0 00  	snez	a0, a0
800041c0: 33 75 e5 00  	and	a0, a0, a4
800041c4: 63 10 05 06  	bnez	a0, 0x80004224 <.LBB2_8+0x18>
800041c8: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
800041cc: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800041d0: 23 26 05 00  	sw	zero, 12(a0)
800041d4: 93 06 00 04  	addi	a3, zero, 64
800041d8: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
800041dc: 23 2a 05 00  	sw	zero, 20(a0)
800041e0: 93 06 10 00  	addi	a3, zero, 1
800041e4: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
800041e8: 23 2e 05 00  	sw	zero, 28(a0)
800041ec: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800041f0: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800041f4: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800041f8: 23 22 05 02  	sw	zero, 36(a0)
800041fc: 23 20 c5 02  	sw	a2, 32(a0)

80004200 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80004200: 17 25 00 00  	auipc	a0, 2
80004204: 13 05 05 8c  	addi	a0, a0, -1856
80004208: 23 20 d5 00  	sw	a3, 0(a0)

8000420c <.LBB2_8>:
8000420c: 17 25 00 00  	auipc	a0, 2
80004210: 13 05 45 8f  	addi	a0, a0, -1804
;         while (fromhost == 0)
80004214: 03 26 05 00  	lw	a2, 0(a0)
80004218: e3 0e 06 fe  	beqz	a2, 0x80004214 <.LBB2_8+0x8>
;         fromhost = 0;
8000421c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80004220: 23 a0 05 00  	sw	zero, 0(a1)
; }
80004224: 67 80 00 00  	ret

80004228 <_out_null>:
; }
80004228: 67 80 00 00  	ret

8000422c <_ftoa>:
; {
8000422c: 13 01 01 f9  	addi	sp, sp, -112
80004230: 23 26 11 06  	sw	ra, 108(sp)
80004234: 23 24 81 06  	sw	s0, 104(sp)
80004238: 23 22 91 06  	sw	s1, 100(sp)
8000423c: 23 20 21 07  	sw	s2, 96(sp)
80004240: 23 2e 31 05  	sw	s3, 92(sp)
80004244: 23 2c 41 05  	sw	s4, 88(sp)
80004248: 23 2a 51 05  	sw	s5, 84(sp)
8000424c: 23 28 61 05  	sw	s6, 80(sp)
80004250: 23 26 71 05  	sw	s7, 76(sp)
80004254: 23 24 81 05  	sw	s8, 72(sp)
80004258: 23 22 91 05  	sw	s9, 68(sp)
8000425c: 23 20 a1 05  	sw	s10, 64(sp)
80004260: 27 3c 81 02  	fsd	fs0, 56(sp)
80004264: 27 38 91 02  	fsd	fs1, 48(sp)
80004268: 27 34 21 03  	fsd	fs2, 40(sp)

8000426c <.LBB4_83>:
8000426c: 97 24 00 00  	auipc	s1, 2
80004270: 93 84 c4 8e  	addi	s1, s1, -1812
80004274: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80004278: d3 04 a0 a2  	fle.d	s1, ft0, fa0
8000427c: 93 0a 08 00  	mv	s5, a6
80004280: 13 89 07 00  	mv	s2, a5
80004284: 93 89 06 00  	mv	s3, a3
80004288: 13 0a 06 00  	mv	s4, a2
8000428c: 13 8b 05 00  	mv	s6, a1
80004290: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80004294: 63 98 04 0e  	bnez	s1, 0x80004384 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004298: 13 f5 2a 00  	andi	a0, s5, 2
8000429c: 93 f5 3a 00  	andi	a1, s5, 3
800042a0: b3 35 b0 00  	snez	a1, a1
800042a4: 13 36 59 00  	sltiu	a2, s2, 5
800042a8: b3 65 b6 00  	or	a1, a2, a1
800042ac: 93 5c 15 00  	srli	s9, a0, 1
800042b0: 13 04 0a 00  	mv	s0, s4
800042b4: 63 96 05 02  	bnez	a1, 0x800042e0 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800042b8: 93 04 c9 ff  	addi	s1, s2, -4
800042bc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800042c0: 13 04 16 00  	addi	s0, a2, 1
800042c4: 13 05 00 02  	addi	a0, zero, 32
800042c8: 93 05 0b 00  	mv	a1, s6
800042cc: 93 86 09 00  	mv	a3, s3
800042d0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800042d4: 93 84 f4 ff  	addi	s1, s1, -1
800042d8: 13 06 04 00  	mv	a2, s0
800042dc: e3 92 04 fe  	bnez	s1, 0x800042c0 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
800042e0: 93 04 14 00  	addi	s1, s0, 1
800042e4: 13 05 d0 02  	addi	a0, zero, 45
800042e8: 93 05 0b 00  	mv	a1, s6
800042ec: 13 06 04 00  	mv	a2, s0
800042f0: 93 86 09 00  	mv	a3, s3
800042f4: e7 80 0b 00  	jalr	s7
800042f8: 93 0a 24 00  	addi	s5, s0, 2
800042fc: 13 05 90 06  	addi	a0, zero, 105
80004300: 93 05 0b 00  	mv	a1, s6
80004304: 13 86 04 00  	mv	a2, s1
80004308: 93 86 09 00  	mv	a3, s3
8000430c: e7 80 0b 00  	jalr	s7
80004310: 13 0c 34 00  	addi	s8, s0, 3
80004314: 13 05 e0 06  	addi	a0, zero, 110
80004318: 93 05 0b 00  	mv	a1, s6
8000431c: 13 86 0a 00  	mv	a2, s5
80004320: 93 86 09 00  	mv	a3, s3
80004324: e7 80 0b 00  	jalr	s7
80004328: 93 04 44 00  	addi	s1, s0, 4
8000432c: 13 05 60 06  	addi	a0, zero, 102
80004330: 93 05 0b 00  	mv	a1, s6
80004334: 13 06 0c 00  	mv	a2, s8
80004338: 93 86 09 00  	mv	a3, s3
8000433c: e7 80 0b 00  	jalr	s7
80004340: 33 85 44 41  	sub	a0, s1, s4
80004344: 33 35 25 01  	sltu	a0, a0, s2
80004348: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000434c: 93 c5 1c 00  	xori	a1, s9, 1
80004350: 33 e5 a5 00  	or	a0, a1, a0
80004354: 63 16 05 56  	bnez	a0, 0x800048c0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004358: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000435c: 13 84 14 00  	addi	s0, s1, 1
80004360: 13 05 00 02  	addi	a0, zero, 32
80004364: 93 05 0b 00  	mv	a1, s6
80004368: 13 86 04 00  	mv	a2, s1
8000436c: 93 86 09 00  	mv	a3, s3
80004370: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004374: 33 05 8a 00  	add	a0, s4, s0
80004378: 93 04 04 00  	mv	s1, s0
8000437c: e3 60 25 ff  	bltu	a0, s2, 0x8000435c <.LBB4_83+0xf0>
80004380: 6f 00 40 54  	j	0x800048c4 <.LBB4_90+0x378>
80004384: 53 04 a5 22  	fmv.d	fs0, fa0

80004388 <.LBB4_84>:
80004388: 17 15 00 00  	auipc	a0, 1
8000438c: 13 05 85 7d  	addi	a0, a0, 2008
80004390: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80004394: 53 05 05 a2  	fle.d	a0, fa0, ft0
80004398: 63 1e 05 00  	bnez	a0, 0x800043b4 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
8000439c: 93 f5 4a 00  	andi	a1, s5, 4
800043a0: 13 b5 15 00  	seqz	a0, a1
800043a4: 63 82 05 06  	beqz	a1, 0x80004408 <.LBB4_88>

800043a8 <.LBB4_85>:
800043a8: 17 1c 00 00  	auipc	s8, 1
800043ac: 13 0c 8c 4b  	addi	s8, s8, 1208
800043b0: 6f 00 00 06  	j	0x80004410 <.LBB4_88+0x8>

800043b4 <.LBB4_86>:
800043b4: 17 15 00 00  	auipc	a0, 1
800043b8: 13 05 45 7b  	addi	a0, a0, 1972
800043bc: 07 30 05 00  	fld	ft0, 0(a0)

800043c0 <.LBB4_87>:
800043c0: 17 15 00 00  	auipc	a0, 1
800043c4: 13 05 05 7b  	addi	a0, a0, 1968
800043c8: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
800043cc: 53 05 04 a2  	fle.d	a0, fs0, ft0
800043d0: d3 85 80 a2  	fle.d	a1, ft1, fs0
800043d4: 33 75 b5 00  	and	a0, a0, a1
800043d8: 63 1e 05 0e  	bnez	a0, 0x800044d4 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
800043dc: 13 85 0b 00  	mv	a0, s7
800043e0: 93 05 0b 00  	mv	a1, s6
800043e4: 13 06 0a 00  	mv	a2, s4
800043e8: 93 86 09 00  	mv	a3, s3
800043ec: 53 05 84 22  	fmv.d	fa0, fs0
800043f0: 93 07 09 00  	mv	a5, s2
800043f4: 13 88 0a 00  	mv	a6, s5
800043f8: 97 00 00 00  	auipc	ra, 0
800043fc: e7 80 40 51  	jalr	1300(ra)
80004400: 13 04 05 00  	mv	s0, a0
80004404: 6f 00 00 4c  	j	0x800048c4 <.LBB4_90+0x378>

80004408 <.LBB4_88>:
80004408: 17 1c 00 00  	auipc	s8, 1
8000440c: 13 0c 7c 47  	addi	s8, s8, 1143
80004410: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80004414: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004418: 13 f5 3a 00  	andi	a0, s5, 3
8000441c: 33 35 a0 00  	snez	a0, a0
80004420: b3 b5 2c 01  	sltu	a1, s9, s2
80004424: 93 c5 15 00  	xori	a1, a1, 1
80004428: 33 65 b5 00  	or	a0, a0, a1
8000442c: 93 fa 2a 00  	andi	s5, s5, 2
80004430: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004434: 63 16 05 02  	bnez	a0, 0x80004460 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80004438: 33 04 99 41  	sub	s0, s2, s9
8000443c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004440: 93 04 16 00  	addi	s1, a2, 1
80004444: 13 05 00 02  	addi	a0, zero, 32
80004448: 93 05 0b 00  	mv	a1, s6
8000444c: 93 86 09 00  	mv	a3, s3
80004450: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004454: 13 04 f4 ff  	addi	s0, s0, -1
80004458: 13 86 04 00  	mv	a2, s1
8000445c: e3 12 04 fe  	bnez	s0, 0x80004440 <.LBB4_88+0x38>
80004460: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004464: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004468: 33 05 9c 01  	add	a0, s8, s9
8000446c: 03 45 05 00  	lbu	a0, 0(a0)
80004470: 13 86 04 00  	mv	a2, s1
80004474: 13 84 fc ff  	addi	s0, s9, -1
80004478: 93 84 14 00  	addi	s1, s1, 1
8000447c: 93 05 0b 00  	mv	a1, s6
80004480: 93 86 09 00  	mv	a3, s3
80004484: e7 80 0b 00  	jalr	s7
80004488: 93 0c 04 00  	mv	s9, s0
;   while (len) {
8000448c: e3 1e 04 fc  	bnez	s0, 0x80004468 <.LBB4_88+0x60>
80004490: 33 85 44 41  	sub	a0, s1, s4
80004494: 33 35 25 01  	sltu	a0, a0, s2
80004498: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000449c: 93 c5 1a 00  	xori	a1, s5, 1
800044a0: 33 e5 a5 00  	or	a0, a1, a0
800044a4: 63 1e 05 40  	bnez	a0, 0x800048c0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800044a8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800044ac: 13 84 14 00  	addi	s0, s1, 1
800044b0: 13 05 00 02  	addi	a0, zero, 32
800044b4: 93 05 0b 00  	mv	a1, s6
800044b8: 13 86 04 00  	mv	a2, s1
800044bc: 93 86 09 00  	mv	a3, s3
800044c0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800044c4: 33 05 8a 00  	add	a0, s4, s0
800044c8: 93 04 04 00  	mv	s1, s0
800044cc: e3 60 25 ff  	bltu	a0, s2, 0x800044ac <.LBB4_88+0xa4>
800044d0: 6f 00 40 3f  	j	0x800048c4 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
800044d4: 13 f5 0a 40  	andi	a0, s5, 1024
800044d8: 13 0c 60 00  	addi	s8, zero, 6
800044dc: 63 04 05 00  	beqz	a0, 0x800044e4 <.LBB4_88+0xdc>
800044e0: 13 0c 07 00  	mv	s8, a4
800044e4: 13 05 a0 00  	addi	a0, zero, 10
800044e8: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800044ec: 63 6c ac 02  	bltu	s8, a0, 0x80004524 <.LBB4_88+0x11c>
800044f0: 93 04 6c ff  	addi	s1, s8, -10
800044f4: 13 05 f0 01  	addi	a0, zero, 31
800044f8: 63 e4 a4 00  	bltu	s1, a0, 0x80004500 <.LBB4_88+0xf8>
800044fc: 93 04 f0 01  	addi	s1, zero, 31
80004500: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80004504: 13 05 81 00  	addi	a0, sp, 8
80004508: 93 05 00 03  	addi	a1, zero, 48
8000450c: 13 06 04 00  	mv	a2, s0
80004510: 97 c0 ff ff  	auipc	ra, 1048572
80004514: e7 80 80 04  	jalr	72(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004518: 13 c5 f4 ff  	not	a0, s1
8000451c: 33 0c ac 00  	add	s8, s8, a0
80004520: 6f 00 80 00  	j	0x80004528 <.LBB4_88+0x120>
80004524: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80004528: 13 15 3c 00  	slli	a0, s8, 3

8000452c <.LBB4_89>:
8000452c: 97 15 00 00  	auipc	a1, 1
80004530: 93 85 45 51  	addi	a1, a1, 1300
80004534: 33 05 b5 00  	add	a0, a0, a1
80004538: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
8000453c: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80004540: 53 80 04 d2  	fcvt.d.w	ft0, s1
80004544: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80004548: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

8000454c <.LBB4_90>:
8000454c: 17 15 00 00  	auipc	a0, 1
80004550: 13 05 c5 62  	addi	a0, a0, 1580
80004554: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80004558: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
8000455c: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80004560: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80004564: d3 05 01 a2  	fle.d	a1, ft2, ft0
80004568: 63 90 05 02  	bnez	a1, 0x80004588 <.LBB4_90+0x3c>
;     ++frac;
8000456c: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80004570: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80004574: d3 15 11 a2  	flt.d	a1, ft2, ft1
80004578: 63 94 05 02  	bnez	a1, 0x800045a0 <.LBB4_90+0x54>
8000457c: 13 05 00 00  	mv	a0, zero
;       ++whole;
80004580: 93 84 14 00  	addi	s1, s1, 1
80004584: 6f 00 c0 01  	j	0x800045a0 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80004588: d3 15 01 a2  	flt.d	a1, ft2, ft0
8000458c: 63 9a 05 00  	bnez	a1, 0x800045a0 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80004590: 93 35 15 00  	seqz	a1, a0
80004594: 13 76 15 00  	andi	a2, a0, 1
80004598: b3 65 b6 00  	or	a1, a2, a1
8000459c: 33 85 a5 00  	add	a0, a1, a0
800045a0: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
800045a4: 63 0c 0c 0c  	beqz	s8, 0x8000467c <.LBB4_90+0x130>
800045a8: 13 06 00 00  	mv	a2, zero
800045ac: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
800045b0: 33 83 85 00  	add	t1, a1, s0
800045b4: 93 02 00 02  	addi	t0, zero, 32
800045b8: 33 87 82 40  	sub	a4, t0, s0
800045bc: b7 d5 cc cc  	lui	a1, 838861
800045c0: 93 83 d5 cc  	addi	t2, a1, -819
800045c4: 13 08 a0 00  	addi	a6, zero, 10
800045c8: 93 08 90 00  	addi	a7, zero, 9
800045cc: 63 04 c7 0c  	beq	a4, a2, 0x80004694 <.LBB4_90+0x148>
800045d0: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
800045d4: 33 35 75 02  	mulhu	a0, a0, t2
800045d8: 13 55 35 00  	srli	a0, a0, 3
800045dc: b3 06 05 03  	mul	a3, a0, a6
800045e0: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
800045e4: 93 e6 06 03  	ori	a3, a3, 48
800045e8: b3 07 c3 00  	add	a5, t1, a2
800045ec: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
800045f0: 13 06 16 00  	addi	a2, a2, 1
800045f4: e3 ec b8 fc  	bltu	a7, a1, 0x800045cc <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800045f8: 33 05 c4 00  	add	a0, s0, a2
800045fc: 93 05 f5 ff  	addi	a1, a0, -1
80004600: 93 06 e0 01  	addi	a3, zero, 30
80004604: b3 b6 b6 00  	sltu	a3, a3, a1
80004608: 33 47 cc 00  	xor	a4, s8, a2
8000460c: 13 37 17 00  	seqz	a4, a4
80004610: b3 e6 e6 00  	or	a3, a3, a4
80004614: 63 94 06 08  	bnez	a3, 0x8000469c <.LBB4_90+0x150>
80004618: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000461c: 33 05 85 00  	add	a0, a0, s0
80004620: 93 45 f6 ff  	not	a1, a2
80004624: 33 8c 85 01  	add	s8, a1, s8
80004628: 33 04 c4 00  	add	s0, s0, a2
8000462c: 93 05 f0 01  	addi	a1, zero, 31
80004630: b3 86 85 40  	sub	a3, a1, s0
80004634: 33 05 c5 00  	add	a0, a0, a2
80004638: 93 05 0c 00  	mv	a1, s8
8000463c: 63 64 dc 00  	bltu	s8, a3, 0x80004644 <.LBB4_90+0xf8>
80004640: 93 85 06 00  	mv	a1, a3
80004644: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004648: 93 05 00 03  	addi	a1, zero, 48
8000464c: 97 c0 ff ff  	auipc	ra, 1048572
80004650: e7 80 c0 f0  	jalr	-244(ra)
80004654: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004658: b3 05 a4 00  	add	a1, s0, a0
8000465c: 93 b5 f5 01  	sltiu	a1, a1, 31
80004660: 33 46 ac 00  	xor	a2, s8, a0
80004664: 33 36 c0 00  	snez	a2, a2
80004668: 33 f6 c5 00  	and	a2, a1, a2
8000466c: 13 05 15 00  	addi	a0, a0, 1
80004670: e3 14 06 fe  	bnez	a2, 0x80004658 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004674: 33 05 a4 00  	add	a0, s0, a0
80004678: 6f 00 80 02  	j	0x800046a0 <.LBB4_90+0x154>
;     diff = value - (double)whole;
8000467c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80004680: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004684: 53 05 10 a2  	fle.d	a0, ft0, ft1
80004688: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
8000468c: b3 84 a4 00  	add	s1, s1, a0
80004690: 6f 00 c0 03  	j	0x800046cc <.LBB4_90+0x180>
80004694: 13 04 00 02  	addi	s0, zero, 32
80004698: 6f 00 80 03  	j	0x800046d0 <.LBB4_90+0x184>
8000469c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800046a0: 63 8e 05 00  	beqz	a1, 0x800046bc <.LBB4_90+0x170>
;       buf[len++] = '.';
800046a4: 13 04 15 00  	addi	s0, a0, 1
800046a8: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
800046ac: 33 85 a5 00  	add	a0, a1, a0
800046b0: 93 05 e0 02  	addi	a1, zero, 46
800046b4: 23 00 b5 00  	sb	a1, 0(a0)
800046b8: 6f 00 80 00  	j	0x800046c0 <.LBB4_90+0x174>
800046bc: 13 04 05 00  	mv	s0, a0
800046c0: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800046c4: 93 02 04 00  	mv	t0, s0
800046c8: 63 64 85 00  	bltu	a0, s0, 0x800046d0 <.LBB4_90+0x184>
800046cc: 93 02 00 02  	addi	t0, zero, 32
800046d0: d3 1c 94 a2  	flt.d	s9, fs0, fs1
800046d4: 37 65 66 66  	lui	a0, 419430
800046d8: 93 05 75 66  	addi	a1, a0, 1639
800046dc: 13 08 a0 00  	addi	a6, zero, 10
800046e0: 93 06 81 00  	addi	a3, sp, 8
800046e4: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800046e8: 63 80 82 04  	beq	t0, s0, 0x80004728 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
800046ec: 33 95 b4 02  	mulh	a0, s1, a1
800046f0: 93 57 f5 01  	srli	a5, a0, 31
800046f4: 13 55 25 40  	srai	a0, a0, 2
800046f8: 33 05 f5 00  	add	a0, a0, a5
800046fc: b3 07 05 03  	mul	a5, a0, a6
80004700: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004704: 93 87 07 03  	addi	a5, a5, 48
80004708: 13 0c 14 00  	addi	s8, s0, 1
8000470c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80004710: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80004714: 23 00 f4 00  	sb	a5, 0(s0)
80004718: 13 04 0c 00  	mv	s0, s8
8000471c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80004720: e3 64 c7 fc  	bltu	a4, a2, 0x800046e8 <.LBB4_90+0x19c>
80004724: 6f 00 80 00  	j	0x8000472c <.LBB4_90+0x1e0>
80004728: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
8000472c: 93 f4 3a 00  	andi	s1, s5, 3
80004730: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004734: 63 96 a4 06  	bne	s1, a0, 0x800047a0 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004738: 63 0c 09 00  	beqz	s2, 0x80004750 <.LBB4_90+0x204>
8000473c: 13 f5 ca 00  	andi	a0, s5, 12
80004740: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004744: 33 e5 ac 00  	or	a0, s9, a0
80004748: 33 09 a9 40  	sub	s2, s2, a0
8000474c: 6f 00 80 00  	j	0x80004754 <.LBB4_90+0x208>
80004750: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004754: 33 35 2c 01  	sltu	a0, s8, s2
80004758: 93 45 15 00  	xori	a1, a0, 1
8000475c: 13 05 f0 01  	addi	a0, zero, 31
80004760: 33 36 85 01  	sltu	a2, a0, s8
80004764: b3 65 b6 00  	or	a1, a2, a1
80004768: 63 9c 05 02  	bnez	a1, 0x800047a0 <.LBB4_90+0x254>
8000476c: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004770: 93 45 fc ff  	not	a1, s8
80004774: b3 05 b9 00  	add	a1, s2, a1
80004778: 33 06 85 41  	sub	a2, a0, s8
8000477c: 33 85 86 01  	add	a0, a3, s8
80004780: 63 e4 c5 00  	bltu	a1, a2, 0x80004788 <.LBB4_90+0x23c>
80004784: 93 05 06 00  	mv	a1, a2
80004788: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
8000478c: 93 05 00 03  	addi	a1, zero, 48
80004790: 13 06 04 00  	mv	a2, s0
80004794: 97 c0 ff ff  	auipc	ra, 1048572
80004798: e7 80 40 dc  	jalr	-572(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000479c: 33 0c 84 01  	add	s8, s0, s8
800047a0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800047a4: 63 6a 85 05  	bltu	a0, s8, 0x800047f8 <.LBB4_90+0x2ac>
;     if (negative) {
800047a8: 63 8c 0c 00  	beqz	s9, 0x800047c0 <.LBB4_90+0x274>
800047ac: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800047b0: 33 05 85 01  	add	a0, a0, s8
800047b4: 13 0c 1c 00  	addi	s8, s8, 1
800047b8: 93 05 d0 02  	addi	a1, zero, 45
800047bc: 6f 00 80 03  	j	0x800047f4 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800047c0: 13 f5 4a 00  	andi	a0, s5, 4
800047c4: 63 10 05 02  	bnez	a0, 0x800047e4 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800047c8: 13 f5 8a 00  	andi	a0, s5, 8
800047cc: 63 06 05 02  	beqz	a0, 0x800047f8 <.LBB4_90+0x2ac>
800047d0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800047d4: 33 05 85 01  	add	a0, a0, s8
800047d8: 13 0c 1c 00  	addi	s8, s8, 1
800047dc: 93 05 00 02  	addi	a1, zero, 32
800047e0: 6f 00 40 01  	j	0x800047f4 <.LBB4_90+0x2a8>
800047e4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
800047e8: 33 05 85 01  	add	a0, a0, s8
800047ec: 13 0c 1c 00  	addi	s8, s8, 1
800047f0: 93 05 b0 02  	addi	a1, zero, 43
800047f4: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800047f8: 33 35 90 00  	snez	a0, s1
800047fc: b3 35 2c 01  	sltu	a1, s8, s2
80004800: 93 c5 15 00  	xori	a1, a1, 1
80004804: 33 65 b5 00  	or	a0, a0, a1
80004808: 93 fa 2a 00  	andi	s5, s5, 2
8000480c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004810: 63 16 05 02  	bnez	a0, 0x8000483c <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004814: b3 04 89 41  	sub	s1, s2, s8
80004818: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000481c: 13 04 16 00  	addi	s0, a2, 1
80004820: 13 05 00 02  	addi	a0, zero, 32
80004824: 93 05 0b 00  	mv	a1, s6
80004828: 93 86 09 00  	mv	a3, s3
8000482c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004830: 93 84 f4 ff  	addi	s1, s1, -1
80004834: 13 06 04 00  	mv	a2, s0
80004838: e3 92 04 fe  	bnez	s1, 0x8000481c <.LBB4_90+0x2d0>
8000483c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004840: 63 0c 0c 02  	beqz	s8, 0x80004878 <.LBB4_90+0x32c>
80004844: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80004848: 33 85 8c 01  	add	a0, s9, s8
8000484c: 03 45 05 00  	lbu	a0, 0(a0)
80004850: 13 0d fc ff  	addi	s10, s8, -1
80004854: 93 04 14 00  	addi	s1, s0, 1
80004858: 93 05 0b 00  	mv	a1, s6
8000485c: 13 06 04 00  	mv	a2, s0
80004860: 93 86 09 00  	mv	a3, s3
80004864: e7 80 0b 00  	jalr	s7
80004868: 13 84 04 00  	mv	s0, s1
8000486c: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80004870: e3 1c 0d fc  	bnez	s10, 0x80004848 <.LBB4_90+0x2fc>
80004874: 6f 00 80 00  	j	0x8000487c <.LBB4_90+0x330>
80004878: 93 04 04 00  	mv	s1, s0
8000487c: 33 85 44 41  	sub	a0, s1, s4
80004880: 33 35 25 01  	sltu	a0, a0, s2
80004884: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004888: 93 c5 1a 00  	xori	a1, s5, 1
8000488c: 33 e5 a5 00  	or	a0, a1, a0
80004890: 63 18 05 02  	bnez	a0, 0x800048c0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004894: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004898: 13 84 14 00  	addi	s0, s1, 1
8000489c: 13 05 00 02  	addi	a0, zero, 32
800048a0: 93 05 0b 00  	mv	a1, s6
800048a4: 13 86 04 00  	mv	a2, s1
800048a8: 93 86 09 00  	mv	a3, s3
800048ac: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800048b0: 33 05 8a 00  	add	a0, s4, s0
800048b4: 93 04 04 00  	mv	s1, s0
800048b8: e3 60 25 ff  	bltu	a0, s2, 0x80004898 <.LBB4_90+0x34c>
800048bc: 6f 00 80 00  	j	0x800048c4 <.LBB4_90+0x378>
800048c0: 13 84 04 00  	mv	s0, s1
; }
800048c4: 13 05 04 00  	mv	a0, s0
800048c8: 07 39 81 02  	fld	fs2, 40(sp)
800048cc: 87 34 01 03  	fld	fs1, 48(sp)
800048d0: 07 34 81 03  	fld	fs0, 56(sp)
800048d4: 03 2d 01 04  	lw	s10, 64(sp)
800048d8: 83 2c 41 04  	lw	s9, 68(sp)
800048dc: 03 2c 81 04  	lw	s8, 72(sp)
800048e0: 83 2b c1 04  	lw	s7, 76(sp)
800048e4: 03 2b 01 05  	lw	s6, 80(sp)
800048e8: 83 2a 41 05  	lw	s5, 84(sp)
800048ec: 03 2a 81 05  	lw	s4, 88(sp)
800048f0: 83 29 c1 05  	lw	s3, 92(sp)
800048f4: 03 29 01 06  	lw	s2, 96(sp)
800048f8: 83 24 41 06  	lw	s1, 100(sp)
800048fc: 03 24 81 06  	lw	s0, 104(sp)
80004900: 83 20 c1 06  	lw	ra, 108(sp)
80004904: 13 01 01 07  	addi	sp, sp, 112
80004908: 67 80 00 00  	ret

8000490c <_etoa>:
; {
8000490c: 13 01 01 f8  	addi	sp, sp, -128
80004910: 23 2e 11 06  	sw	ra, 124(sp)
80004914: 23 2c 81 06  	sw	s0, 120(sp)
80004918: 23 2a 91 06  	sw	s1, 116(sp)
8000491c: 23 28 21 07  	sw	s2, 112(sp)
80004920: 23 26 31 07  	sw	s3, 108(sp)
80004924: 23 24 41 07  	sw	s4, 104(sp)
80004928: 23 22 51 07  	sw	s5, 100(sp)
8000492c: 23 20 61 07  	sw	s6, 96(sp)
80004930: 23 2e 71 05  	sw	s7, 92(sp)
80004934: 23 2c 81 05  	sw	s8, 88(sp)
80004938: 23 2a 91 05  	sw	s9, 84(sp)
8000493c: 23 28 a1 05  	sw	s10, 80(sp)
80004940: 23 26 b1 05  	sw	s11, 76(sp)

80004944 <.LBB5_43>:
80004944: 97 14 00 00  	auipc	s1, 1
80004948: 93 84 c4 23  	addi	s1, s1, 572
8000494c: 87 b0 04 00  	fld	ft1, 0(s1)

80004950 <.LBB5_44>:
80004950: 97 14 00 00  	auipc	s1, 1
80004954: 93 84 84 23  	addi	s1, s1, 568
80004958: 07 b1 04 00  	fld	ft2, 0(s1)
8000495c: 53 00 a5 22  	fmv.d	ft0, fa0
80004960: d3 04 15 a2  	fle.d	s1, fa0, ft1
80004964: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004968: b3 f4 84 00  	and	s1, s1, s0
8000496c: 93 0a 08 00  	mv	s5, a6
80004970: 13 89 07 00  	mv	s2, a5
80004974: 93 07 07 00  	mv	a5, a4
80004978: 93 89 06 00  	mv	s3, a3
8000497c: 13 0a 06 00  	mv	s4, a2
80004980: 13 8b 05 00  	mv	s6, a1
80004984: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004988: 63 92 04 06  	bnez	s1, 0x800049ec <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000498c: 13 85 0b 00  	mv	a0, s7
80004990: 93 05 0b 00  	mv	a1, s6
80004994: 13 06 0a 00  	mv	a2, s4
80004998: 93 86 09 00  	mv	a3, s3
8000499c: 53 05 00 22  	fmv.d	fa0, ft0
800049a0: 13 87 07 00  	mv	a4, a5
800049a4: 93 07 09 00  	mv	a5, s2
800049a8: 13 88 0a 00  	mv	a6, s5
800049ac: 83 2d c1 04  	lw	s11, 76(sp)
800049b0: 03 2d 01 05  	lw	s10, 80(sp)
800049b4: 83 2c 41 05  	lw	s9, 84(sp)
800049b8: 03 2c 81 05  	lw	s8, 88(sp)
800049bc: 83 2b c1 05  	lw	s7, 92(sp)
800049c0: 03 2b 01 06  	lw	s6, 96(sp)
800049c4: 83 2a 41 06  	lw	s5, 100(sp)
800049c8: 03 2a 81 06  	lw	s4, 104(sp)
800049cc: 83 29 c1 06  	lw	s3, 108(sp)
800049d0: 03 29 01 07  	lw	s2, 112(sp)
800049d4: 83 24 41 07  	lw	s1, 116(sp)
800049d8: 03 24 81 07  	lw	s0, 120(sp)
800049dc: 83 20 c1 07  	lw	ra, 124(sp)
800049e0: 13 01 01 08  	addi	sp, sp, 128
800049e4: 17 03 00 00  	auipc	t1, 0
800049e8: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
800049ec: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
800049f0: 13 f5 0a 40  	andi	a0, s5, 1024
800049f4: 13 07 60 00  	addi	a4, zero, 6
800049f8: 63 04 05 00  	beqz	a0, 0x80004a00 <.LBB5_44+0xb0>
800049fc: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004a00: 27 30 a1 02  	fsd	fa0, 32(sp)
80004a04: 83 25 41 02  	lw	a1, 36(sp)
80004a08: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004a0c: 93 d6 45 01  	srli	a3, a1, 20
80004a10: b7 07 10 00  	lui	a5, 256
80004a14: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004a18: b3 f5 f5 00  	and	a1, a1, a5
80004a1c: 23 2c c1 00  	sw	a2, 24(sp)
80004a20: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004a24: b3 e5 c5 00  	or	a1, a1, a2
80004a28: 23 2e b1 00  	sw	a1, 28(sp)
80004a2c: 87 30 81 01  	fld	ft1, 24(sp)

80004a30 <.LBB5_45>:
80004a30: 97 15 00 00  	auipc	a1, 1
80004a34: 93 85 05 16  	addi	a1, a1, 352
80004a38: 07 b1 05 00  	fld	ft2, 0(a1)

80004a3c <.LBB5_46>:
80004a3c: 97 15 00 00  	auipc	a1, 1
80004a40: 93 85 c5 15  	addi	a1, a1, 348
80004a44: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004a48: 93 f5 f6 7f  	andi	a1, a3, 2047
80004a4c: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004a50: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004a54: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80004a58 <.LBB5_47>:
80004a58: 97 15 00 00  	auipc	a1, 1
80004a5c: 93 85 85 14  	addi	a1, a1, 328
80004a60: 07 b1 05 00  	fld	ft2, 0(a1)

80004a64 <.LBB5_48>:
80004a64: 97 15 00 00  	auipc	a1, 1
80004a68: 93 85 45 14  	addi	a1, a1, 324
80004a6c: 87 b1 05 00  	fld	ft3, 0(a1)

80004a70 <.LBB5_49>:
80004a70: 97 15 00 00  	auipc	a1, 1
80004a74: 93 85 05 14  	addi	a1, a1, 320
80004a78: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004a7c: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004a80: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004a84: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004a88: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80004a8c <.LBB5_50>:
80004a8c: 17 16 00 00  	auipc	a2, 1
80004a90: 13 06 c6 12  	addi	a2, a2, 300
80004a94: 87 31 06 00  	fld	ft3, 0(a2)

80004a98 <.LBB5_51>:
80004a98: 17 16 00 00  	auipc	a2, 1
80004a9c: 13 06 86 12  	addi	a2, a2, 296
80004aa0: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004aa4: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004aa8: 53 01 06 d2  	fcvt.d.w	ft2, a2
80004aac: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80004ab0: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004ab4: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004ab8: 13 06 f6 3f  	addi	a2, a2, 1023
80004abc: 23 28 01 00  	sw	zero, 16(sp)
80004ac0: 13 16 46 01  	slli	a2, a2, 20
80004ac4: 23 2a c1 00  	sw	a2, 20(sp)

80004ac8 <.LBB5_52>:
80004ac8: 17 16 00 00  	auipc	a2, 1
80004acc: 13 06 86 10  	addi	a2, a2, 264
80004ad0: 87 31 06 00  	fld	ft3, 0(a2)

80004ad4 <.LBB5_53>:
80004ad4: 17 16 00 00  	auipc	a2, 1
80004ad8: 13 06 46 10  	addi	a2, a2, 260
80004adc: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004ae0: 87 32 01 01  	fld	ft5, 16(sp)

80004ae4 <.LBB5_54>:
80004ae4: 17 16 00 00  	auipc	a2, 1
80004ae8: 13 06 46 0e  	addi	a2, a2, 228
80004aec: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004af0: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004af4 <.LBB5_55>:
80004af4: 17 16 00 00  	auipc	a2, 1
80004af8: 13 06 c6 0e  	addi	a2, a2, 236
80004afc: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004b00: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004b04: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004b08: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004b0c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004b10: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004b14: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004b18: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80004b1c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80004b20: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004b24: 63 0a 06 00  	beqz	a2, 0x80004b38 <.LBB5_56+0x10>

80004b28 <.LBB5_56>:
80004b28: 97 16 00 00  	auipc	a3, 1
80004b2c: 93 86 06 0c  	addi	a3, a3, 192
80004b30: 07 b1 06 00  	fld	ft2, 0(a3)
80004b34: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80004b38: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004b3c: 93 05 34 06  	addi	a1, s0, 99
80004b40: 93 b5 75 0c  	sltiu	a1, a1, 199
80004b44: 13 06 50 00  	addi	a2, zero, 5
80004b48: b7 16 00 00  	lui	a3, 1
80004b4c: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80004b50: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004b54: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80004b58: 63 84 06 06  	beqz	a3, 0x80004bc0 <.LBB5_58+0x58>

80004b5c <.LBB5_57>:
80004b5c: 97 15 00 00  	auipc	a1, 1
80004b60: 93 85 45 09  	addi	a1, a1, 148
80004b64: 07 b1 05 00  	fld	ft2, 0(a1)

80004b68 <.LBB5_58>:
80004b68: 97 15 00 00  	auipc	a1, 1
80004b6c: 93 85 05 09  	addi	a1, a1, 144
80004b70: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004b74: d3 15 25 a2  	flt.d	a1, fa0, ft2
80004b78: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80004b7c: b3 e5 c5 00  	or	a1, a1, a2
80004b80: 63 98 05 00  	bnez	a1, 0x80004b90 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004b84: 63 40 e4 02  	blt	s0, a4, 0x80004ba4 <.LBB5_58+0x3c>
80004b88: 13 07 00 00  	mv	a4, zero
80004b8c: 6f 00 00 02  	j	0x80004bac <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004b90: 63 06 07 02  	beqz	a4, 0x80004bbc <.LBB5_58+0x54>
80004b94: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004b98: 13 45 15 00  	xori	a0, a0, 1
80004b9c: 33 07 a7 40  	sub	a4, a4, a0
80004ba0: 6f 00 00 02  	j	0x80004bc0 <.LBB5_58+0x58>
80004ba4: 13 45 f4 ff  	not	a0, s0
80004ba8: 33 07 a7 00  	add	a4, a4, a0
80004bac: 13 04 00 00  	mv	s0, zero
80004bb0: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004bb4: 93 ea 0a 40  	ori	s5, s5, 1024
80004bb8: 6f 00 80 00  	j	0x80004bc0 <.LBB5_58+0x58>
80004bbc: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80004bc0: b3 05 99 41  	sub	a1, s2, s9
80004bc4: 33 36 b9 00  	sltu	a2, s2, a1
80004bc8: 13 05 00 00  	mv	a0, zero
80004bcc: 63 14 06 00  	bnez	a2, 0x80004bd4 <.LBB5_58+0x6c>
80004bd0: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004bd4: 93 07 00 00  	mv	a5, zero
80004bd8: 93 d5 1a 00  	srli	a1, s5, 1
80004bdc: 93 f4 15 00  	andi	s1, a1, 1
80004be0: b3 35 90 01  	snez	a1, s9
80004be4: b3 f5 b4 00  	and	a1, s1, a1
80004be8: 53 01 00 d2  	fcvt.d.w	ft2, zero
80004bec: 63 94 05 00  	bnez	a1, 0x80004bf4 <.LBB5_58+0x8c>
80004bf0: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004bf4: 93 35 14 00  	seqz	a1, s0
80004bf8: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004bfc: 63 94 05 00  	bnez	a1, 0x80004c04 <.LBB5_58+0x9c>
80004c00: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004c04: 63 04 05 00  	beqz	a0, 0x80004c0c <.LBB5_58+0xa4>
80004c08: 53 15 a5 22  	fneg.d	fa0, fa0
80004c0c: 37 f5 ff ff  	lui	a0, 1048575
80004c10: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004c14: 33 f8 aa 00  	and	a6, s5, a0
80004c18: 13 85 0b 00  	mv	a0, s7
80004c1c: 93 05 0b 00  	mv	a1, s6
80004c20: 13 06 0a 00  	mv	a2, s4
80004c24: 93 86 09 00  	mv	a3, s3
80004c28: 97 f0 ff ff  	auipc	ra, 1048575
80004c2c: e7 80 40 60  	jalr	1540(ra)
80004c30: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004c34: 63 82 0c 18  	beqz	s9, 0x80004db8 <.LBB5_58+0x250>
80004c38: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80004c3c: 13 f5 0a 02  	andi	a0, s5, 32
80004c40: 13 45 55 06  	xori	a0, a0, 101
80004c44: 93 05 0b 00  	mv	a1, s6
80004c48: 13 06 0d 00  	mv	a2, s10
80004c4c: 93 86 09 00  	mv	a3, s3
80004c50: e7 80 0b 00  	jalr	s7
80004c54: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004c58: 93 5a f4 01  	srli	s5, s0, 31
80004c5c: 13 55 f4 41  	srai	a0, s0, 31
80004c60: b3 05 a4 00  	add	a1, s0, a0
80004c64: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004c68: 93 8d dc ff  	addi	s11, s9, -3
80004c6c: 13 04 f0 01  	addi	s0, zero, 31
80004c70: 37 d5 cc cc  	lui	a0, 838861
80004c74: 13 05 d5 cc  	addi	a0, a0, -819
80004c78: 13 08 a0 00  	addi	a6, zero, 10
80004c7c: 93 08 c1 02  	addi	a7, sp, 44
80004c80: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004c84: b3 37 a7 02  	mulhu	a5, a4, a0
80004c88: 93 d5 37 00  	srli	a1, a5, 3
80004c8c: b3 87 05 03  	mul	a5, a1, a6
80004c90: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004c94: 13 e6 07 03  	ori	a2, a5, 48
80004c98: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004c9c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004ca0: 13 0c 1c 00  	addi	s8, s8, 1
80004ca4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004ca8: 33 b6 e2 00  	sltu	a2, t0, a4
80004cac: 33 f6 c7 00  	and	a2, a5, a2
80004cb0: 93 8d fd ff  	addi	s11, s11, -1
80004cb4: 13 04 f4 ff  	addi	s0, s0, -1
80004cb8: 13 87 05 00  	mv	a4, a1
80004cbc: e3 14 06 fc  	bnez	a2, 0x80004c84 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004cc0: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004cc4: 33 35 ac 00  	sltu	a0, s8, a0
80004cc8: 13 45 15 00  	xori	a0, a0, 1
80004ccc: 93 c5 17 00  	xori	a1, a5, 1
80004cd0: 33 e5 a5 00  	or	a0, a1, a0
80004cd4: 63 12 05 04  	bnez	a0, 0x80004d18 <.LBB5_58+0x1b0>
80004cd8: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004cdc: b3 85 8c 41  	sub	a1, s9, s8
80004ce0: 93 85 d5 ff  	addi	a1, a1, -3
80004ce4: 13 06 f0 01  	addi	a2, zero, 31
80004ce8: 33 06 86 41  	sub	a2, a2, s8
80004cec: 33 05 85 01  	add	a0, a0, s8
80004cf0: 63 e4 c5 00  	bltu	a1, a2, 0x80004cf8 <.LBB5_58+0x190>
80004cf4: 93 05 06 00  	mv	a1, a2
80004cf8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004cfc: 93 05 00 03  	addi	a1, zero, 48
80004d00: 97 c0 ff ff  	auipc	ra, 1048572
80004d04: e7 80 80 85  	jalr	-1960(ra)
;   if (flags & FLAGS_HASH) {
80004d08: 63 e4 8d 00  	bltu	s11, s0, 0x80004d10 <.LBB5_58+0x1a8>
80004d0c: 93 0d 04 00  	mv	s11, s0
80004d10: 33 85 8d 01  	add	a0, s11, s8
80004d14: 13 0c 15 00  	addi	s8, a0, 1
80004d18: 83 2c c1 00  	lw	s9, 12(sp)
80004d1c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004d20: 63 60 85 03  	bltu	a0, s8, 0x80004d40 <.LBB5_58+0x1d8>
80004d24: 13 05 c1 02  	addi	a0, sp, 44
80004d28: 33 05 85 01  	add	a0, a0, s8
80004d2c: 93 05 d0 02  	addi	a1, zero, 45
80004d30: 63 94 0a 00  	bnez	s5, 0x80004d38 <.LBB5_58+0x1d0>
80004d34: 93 05 b0 02  	addi	a1, zero, 43
80004d38: 13 0c 1c 00  	addi	s8, s8, 1
80004d3c: 23 00 b5 00  	sb	a1, 0(a0)
80004d40: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004d44: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004d48: 33 85 8a 01  	add	a0, s5, s8
80004d4c: 03 45 05 00  	lbu	a0, 0(a0)
80004d50: 13 06 04 00  	mv	a2, s0
80004d54: 93 04 fc ff  	addi	s1, s8, -1
80004d58: 13 04 14 00  	addi	s0, s0, 1
80004d5c: 93 05 0b 00  	mv	a1, s6
80004d60: 93 86 09 00  	mv	a3, s3
80004d64: e7 80 0b 00  	jalr	s7
80004d68: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80004d6c: e3 9e 04 fc  	bnez	s1, 0x80004d48 <.LBB5_58+0x1e0>
80004d70: 33 05 44 41  	sub	a0, s0, s4
80004d74: 33 35 25 01  	sltu	a0, a0, s2
80004d78: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80004d7c: 93 c5 1c 00  	xori	a1, s9, 1
80004d80: 33 e5 a5 00  	or	a0, a1, a0
80004d84: 63 18 05 02  	bnez	a0, 0x80004db4 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004d88: b3 04 40 41  	neg	s1, s4
80004d8c: 13 0d 14 00  	addi	s10, s0, 1
80004d90: 13 05 00 02  	addi	a0, zero, 32
80004d94: 93 05 0b 00  	mv	a1, s6
80004d98: 13 06 04 00  	mv	a2, s0
80004d9c: 93 86 09 00  	mv	a3, s3
80004da0: e7 80 0b 00  	jalr	s7
80004da4: 33 85 a4 01  	add	a0, s1, s10
80004da8: 13 04 0d 00  	mv	s0, s10
80004dac: e3 60 25 ff  	bltu	a0, s2, 0x80004d8c <.LBB5_58+0x224>
80004db0: 6f 00 80 00  	j	0x80004db8 <.LBB5_58+0x250>
80004db4: 13 0d 04 00  	mv	s10, s0
; }
80004db8: 13 05 0d 00  	mv	a0, s10
80004dbc: 83 2d c1 04  	lw	s11, 76(sp)
80004dc0: 03 2d 01 05  	lw	s10, 80(sp)
80004dc4: 83 2c 41 05  	lw	s9, 84(sp)
80004dc8: 03 2c 81 05  	lw	s8, 88(sp)
80004dcc: 83 2b c1 05  	lw	s7, 92(sp)
80004dd0: 03 2b 01 06  	lw	s6, 96(sp)
80004dd4: 83 2a 41 06  	lw	s5, 100(sp)
80004dd8: 03 2a 81 06  	lw	s4, 104(sp)
80004ddc: 83 29 c1 06  	lw	s3, 108(sp)
80004de0: 03 29 01 07  	lw	s2, 112(sp)
80004de4: 83 24 41 07  	lw	s1, 116(sp)
80004de8: 03 24 81 07  	lw	s0, 120(sp)
80004dec: 83 20 c1 07  	lw	ra, 124(sp)
80004df0: 13 01 01 08  	addi	sp, sp, 128
80004df4: 67 80 00 00  	ret

80004df8 <_ntoa_format>:
; {
80004df8: 13 01 01 fc  	addi	sp, sp, -64
80004dfc: 23 2e 11 02  	sw	ra, 60(sp)
80004e00: 23 2c 81 02  	sw	s0, 56(sp)
80004e04: 23 2a 91 02  	sw	s1, 52(sp)
80004e08: 23 28 21 03  	sw	s2, 48(sp)
80004e0c: 23 26 31 03  	sw	s3, 44(sp)
80004e10: 23 24 41 03  	sw	s4, 40(sp)
80004e14: 23 22 51 03  	sw	s5, 36(sp)
80004e18: 23 20 61 03  	sw	s6, 32(sp)
80004e1c: 23 2e 71 01  	sw	s7, 28(sp)
80004e20: 23 2c 81 01  	sw	s8, 24(sp)
80004e24: 23 2a 91 01  	sw	s9, 20(sp)
80004e28: 23 28 a1 01  	sw	s10, 16(sp)
80004e2c: 23 26 b1 01  	sw	s11, 12(sp)
80004e30: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004e34: 93 fa 2e 00  	andi	s5, t4, 2
80004e38: 13 09 0e 00  	mv	s2, t3
80004e3c: 13 8d 03 00  	mv	s10, t2
80004e40: 93 8c 08 00  	mv	s9, a7
80004e44: 13 8c 07 00  	mv	s8, a5
80004e48: 93 89 06 00  	mv	s3, a3
80004e4c: 13 0a 06 00  	mv	s4, a2
80004e50: 13 8b 05 00  	mv	s6, a1
80004e54: 93 0d 05 00  	mv	s11, a0
80004e58: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80004e5c: 63 9e 0a 0c  	bnez	s5, 0x80004f38 <_ntoa_format+0x140>
80004e60: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004e64: 63 0e 09 00  	beqz	s2, 0x80004e80 <_ntoa_format+0x88>
80004e68: 63 0e 04 00  	beqz	s0, 0x80004e84 <_ntoa_format+0x8c>
80004e6c: 13 f5 cb 00  	andi	a0, s7, 12
80004e70: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004e74: 33 65 05 01  	or	a0, a0, a6
80004e78: 33 09 a9 40  	sub	s2, s2, a0
80004e7c: 6f 00 80 00  	j	0x80004e84 <_ntoa_format+0x8c>
80004e80: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004e84: 33 35 ac 01  	sltu	a0, s8, s10
80004e88: 93 45 15 00  	xori	a1, a0, 1
80004e8c: 13 05 f0 01  	addi	a0, zero, 31
80004e90: 33 36 85 01  	sltu	a2, a0, s8
80004e94: b3 65 b6 00  	or	a1, a2, a1
80004e98: 63 94 05 04  	bnez	a1, 0x80004ee0 <_ntoa_format+0xe8>
80004e9c: 23 22 51 01  	sw	s5, 4(sp)
80004ea0: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004ea4: 93 45 fc ff  	not	a1, s8
80004ea8: b3 85 a5 01  	add	a1, a1, s10
80004eac: 33 06 85 41  	sub	a2, a0, s8
80004eb0: 33 05 87 01  	add	a0, a4, s8
80004eb4: 63 e4 c5 00  	bltu	a1, a2, 0x80004ebc <_ntoa_format+0xc4>
80004eb8: 93 05 06 00  	mv	a1, a2
80004ebc: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004ec0: 93 05 00 03  	addi	a1, zero, 48
80004ec4: 13 86 04 00  	mv	a2, s1
80004ec8: 97 b0 ff ff  	auipc	ra, 1048571
80004ecc: e7 80 00 69  	jalr	1680(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004ed0: 33 8c 84 01  	add	s8, s1, s8
80004ed4: 03 27 81 00  	lw	a4, 8(sp)
80004ed8: 13 88 0a 00  	mv	a6, s5
80004edc: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004ee0: 63 0c 04 04  	beqz	s0, 0x80004f38 <_ntoa_format+0x140>
80004ee4: 33 35 2c 01  	sltu	a0, s8, s2
80004ee8: 93 45 15 00  	xori	a1, a0, 1
80004eec: 13 05 f0 01  	addi	a0, zero, 31
80004ef0: 33 36 85 01  	sltu	a2, a0, s8
80004ef4: b3 e5 c5 00  	or	a1, a1, a2
80004ef8: 63 90 05 04  	bnez	a1, 0x80004f38 <_ntoa_format+0x140>
80004efc: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f00: 93 45 fc ff  	not	a1, s8
80004f04: b3 05 b9 00  	add	a1, s2, a1
80004f08: 33 06 85 41  	sub	a2, a0, s8
80004f0c: 33 05 87 01  	add	a0, a4, s8
80004f10: 63 e4 c5 00  	bltu	a1, a2, 0x80004f18 <_ntoa_format+0x120>
80004f14: 93 05 06 00  	mv	a1, a2
80004f18: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004f1c: 93 05 00 03  	addi	a1, zero, 48
80004f20: 13 86 04 00  	mv	a2, s1
80004f24: 97 b0 ff ff  	auipc	ra, 1048571
80004f28: e7 80 40 63  	jalr	1588(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f2c: 33 8c 84 01  	add	s8, s1, s8
80004f30: 03 27 81 00  	lw	a4, 8(sp)
80004f34: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004f38: 13 f5 0b 01  	andi	a0, s7, 16
80004f3c: 63 02 05 0e  	beqz	a0, 0x80005020 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80004f40: 13 f5 0b 40  	andi	a0, s7, 1024
80004f44: 13 55 a5 00  	srli	a0, a0, 10
80004f48: 93 35 1c 00  	seqz	a1, s8
80004f4c: 33 65 b5 00  	or	a0, a0, a1
80004f50: 63 1e 05 02  	bnez	a0, 0x80004f8c <_ntoa_format+0x194>
80004f54: 33 45 ac 01  	xor	a0, s8, s10
80004f58: 33 35 a0 00  	snez	a0, a0
80004f5c: b3 45 2c 01  	xor	a1, s8, s2
80004f60: b3 35 b0 00  	snez	a1, a1
80004f64: 33 75 b5 00  	and	a0, a0, a1
80004f68: 63 12 05 02  	bnez	a0, 0x80004f8c <_ntoa_format+0x194>
;       len--;
80004f6c: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80004f70: b3 35 a0 00  	snez	a1, a0
80004f74: 13 86 0c ff  	addi	a2, s9, -16
80004f78: 13 36 16 00  	seqz	a2, a2
80004f7c: b3 75 b6 00  	and	a1, a2, a1
80004f80: 63 84 05 00  	beqz	a1, 0x80004f88 <_ntoa_format+0x190>
80004f84: 13 05 ec ff  	addi	a0, s8, -2
80004f88: 13 0c 05 00  	mv	s8, a0
80004f8c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f90: 63 96 ac 02  	bne	s9, a0, 0x80004fbc <_ntoa_format+0x1c4>
80004f94: 13 f5 0b 02  	andi	a0, s7, 32
80004f98: 93 55 55 00  	srli	a1, a0, 5
80004f9c: 13 06 f0 01  	addi	a2, zero, 31
80004fa0: 33 36 86 01  	sltu	a2, a2, s8
80004fa4: b3 e5 c5 00  	or	a1, a1, a2
80004fa8: 63 9e 05 02  	bnez	a1, 0x80004fe4 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004fac: 33 05 87 01  	add	a0, a4, s8
80004fb0: 13 0c 1c 00  	addi	s8, s8, 1
80004fb4: 93 05 80 07  	addi	a1, zero, 120
80004fb8: 6f 00 c0 04  	j	0x80005004 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004fbc: 13 85 ec ff  	addi	a0, s9, -2
80004fc0: 33 35 a0 00  	snez	a0, a0
80004fc4: 93 05 f0 01  	addi	a1, zero, 31
80004fc8: b3 b5 85 01  	sltu	a1, a1, s8
80004fcc: 33 65 b5 00  	or	a0, a0, a1
80004fd0: 63 1c 05 02  	bnez	a0, 0x80005008 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004fd4: 33 05 87 01  	add	a0, a4, s8
80004fd8: 13 0c 1c 00  	addi	s8, s8, 1
80004fdc: 93 05 20 06  	addi	a1, zero, 98
80004fe0: 6f 00 40 02  	j	0x80005004 <_ntoa_format+0x20c>
80004fe4: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004fe8: 13 35 15 00  	seqz	a0, a0
80004fec: 93 c5 15 00  	xori	a1, a1, 1
80004ff0: 33 65 b5 00  	or	a0, a0, a1
80004ff4: 63 1a 05 00  	bnez	a0, 0x80005008 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004ff8: 33 05 87 01  	add	a0, a4, s8
80004ffc: 13 0c 1c 00  	addi	s8, s8, 1
80005000: 93 05 80 05  	addi	a1, zero, 88
80005004: 23 00 b5 00  	sb	a1, 0(a0)
80005008: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000500c: 63 60 85 07  	bltu	a0, s8, 0x8000506c <_ntoa_format+0x274>
;       buf[len++] = '0';
80005010: 33 05 87 01  	add	a0, a4, s8
80005014: 13 0c 1c 00  	addi	s8, s8, 1
80005018: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
8000501c: 23 00 b5 00  	sb	a1, 0(a0)
80005020: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80005024: 63 64 85 05  	bltu	a0, s8, 0x8000506c <_ntoa_format+0x274>
;     if (negative) {
80005028: 63 0a 08 00  	beqz	a6, 0x8000503c <_ntoa_format+0x244>
;       buf[len++] = '-';
8000502c: 33 05 87 01  	add	a0, a4, s8
80005030: 13 0c 1c 00  	addi	s8, s8, 1
80005034: 93 05 d0 02  	addi	a1, zero, 45
80005038: 6f 00 00 03  	j	0x80005068 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
8000503c: 13 f5 4b 00  	andi	a0, s7, 4
80005040: 63 1e 05 00  	bnez	a0, 0x8000505c <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80005044: 13 f5 8b 00  	andi	a0, s7, 8
80005048: 63 02 05 02  	beqz	a0, 0x8000506c <_ntoa_format+0x274>
;       buf[len++] = ' ';
8000504c: 33 05 87 01  	add	a0, a4, s8
80005050: 13 0c 1c 00  	addi	s8, s8, 1
80005054: 93 05 00 02  	addi	a1, zero, 32
80005058: 6f 00 00 01  	j	0x80005068 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000505c: 33 05 87 01  	add	a0, a4, s8
80005060: 13 0c 1c 00  	addi	s8, s8, 1
80005064: 93 05 b0 02  	addi	a1, zero, 43
80005068: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000506c: 13 f5 3b 00  	andi	a0, s7, 3
80005070: 33 35 a0 00  	snez	a0, a0
80005074: b3 35 2c 01  	sltu	a1, s8, s2
80005078: 93 c5 15 00  	xori	a1, a1, 1
8000507c: 33 65 b5 00  	or	a0, a0, a1
80005080: 13 04 0a 00  	mv	s0, s4
80005084: 63 16 05 02  	bnez	a0, 0x800050b0 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80005088: b3 04 89 41  	sub	s1, s2, s8
8000508c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005090: 13 04 16 00  	addi	s0, a2, 1
80005094: 13 05 00 02  	addi	a0, zero, 32
80005098: 93 05 0b 00  	mv	a1, s6
8000509c: 93 86 09 00  	mv	a3, s3
800050a0: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800050a4: 93 84 f4 ff  	addi	s1, s1, -1
800050a8: 13 06 04 00  	mv	a2, s0
800050ac: e3 92 04 fe  	bnez	s1, 0x80005090 <_ntoa_format+0x298>
800050b0: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800050b4: 63 0e 0c 02  	beqz	s8, 0x800050f0 <_ntoa_format+0x2f8>
800050b8: 03 25 81 00  	lw	a0, 8(sp)
800050bc: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800050c0: 33 85 8b 01  	add	a0, s7, s8
800050c4: 03 45 05 00  	lbu	a0, 0(a0)
800050c8: 93 0c fc ff  	addi	s9, s8, -1
800050cc: 93 04 14 00  	addi	s1, s0, 1
800050d0: 93 05 0b 00  	mv	a1, s6
800050d4: 13 06 04 00  	mv	a2, s0
800050d8: 93 86 09 00  	mv	a3, s3
800050dc: e7 80 0d 00  	jalr	s11
800050e0: 13 84 04 00  	mv	s0, s1
800050e4: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800050e8: e3 9c 0c fc  	bnez	s9, 0x800050c0 <_ntoa_format+0x2c8>
800050ec: 6f 00 80 00  	j	0x800050f4 <_ntoa_format+0x2fc>
800050f0: 93 04 04 00  	mv	s1, s0
800050f4: 33 85 44 41  	sub	a0, s1, s4
800050f8: 33 35 25 01  	sltu	a0, a0, s2
800050fc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80005100: 93 c5 1a 00  	xori	a1, s5, 1
80005104: 33 e5 a5 00  	or	a0, a1, a0
80005108: 63 18 05 02  	bnez	a0, 0x80005138 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
8000510c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80005110: 13 84 14 00  	addi	s0, s1, 1
80005114: 13 05 00 02  	addi	a0, zero, 32
80005118: 93 05 0b 00  	mv	a1, s6
8000511c: 13 86 04 00  	mv	a2, s1
80005120: 93 86 09 00  	mv	a3, s3
80005124: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80005128: 33 05 8a 00  	add	a0, s4, s0
8000512c: 93 04 04 00  	mv	s1, s0
80005130: e3 60 25 ff  	bltu	a0, s2, 0x80005110 <_ntoa_format+0x318>
80005134: 6f 00 80 00  	j	0x8000513c <_ntoa_format+0x344>
80005138: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
8000513c: 13 05 04 00  	mv	a0, s0
80005140: 83 2d c1 00  	lw	s11, 12(sp)
80005144: 03 2d 01 01  	lw	s10, 16(sp)
80005148: 83 2c 41 01  	lw	s9, 20(sp)
8000514c: 03 2c 81 01  	lw	s8, 24(sp)
80005150: 83 2b c1 01  	lw	s7, 28(sp)
80005154: 03 2b 01 02  	lw	s6, 32(sp)
80005158: 83 2a 41 02  	lw	s5, 36(sp)
8000515c: 03 2a 81 02  	lw	s4, 40(sp)
80005160: 83 29 c1 02  	lw	s3, 44(sp)
80005164: 03 29 01 03  	lw	s2, 48(sp)
80005168: 83 24 41 03  	lw	s1, 52(sp)
8000516c: 03 24 81 03  	lw	s0, 56(sp)
80005170: 83 20 c1 03  	lw	ra, 60(sp)
80005174: 13 01 01 04  	addi	sp, sp, 64
80005178: 67 80 00 00  	ret

8000517c <_snrt_init_team>:
;     team->base.root = team;
8000517c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80005180: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80005184: 03 23 87 00  	lw	t1, 8(a4)
80005188: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000518c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80005190: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80005194: 83 22 47 00  	lw	t0, 4(a4)
80005198: 33 88 08 03  	mul	a6, a7, a6
8000519c: 33 05 58 02  	mul	a0, a6, t0
800051a0: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800051a4: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800051a8: 33 85 68 40  	sub	a0, a7, t1
800051ac: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800051b0: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800051b4: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800051b8: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800051bc: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800051c0: 03 25 87 01  	lw	a0, 24(a4)
800051c4: b7 05 00 10  	lui	a1, 65536
800051c8: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800051cc: 23 a2 07 02  	sw	zero, 36(a5)
800051d0: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800051d4: 03 25 07 02  	lw	a0, 32(a4)
800051d8: 83 25 47 02  	lw	a1, 36(a4)
800051dc: 23 a4 a7 02  	sw	a0, 40(a5)
800051e0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800051e4: 23 a8 c7 02  	sw	a2, 48(a5)
800051e8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800051ec: 23 ac d7 02  	sw	a3, 56(a5)
800051f0: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800051f4: 03 25 07 01  	lw	a0, 16(a4)
800051f8: 33 08 a6 00  	add	a6, a2, a0
800051fc: 93 05 08 19  	addi	a1, a6, 400
80005200: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80005204: b3 32 a8 00  	sltu	t0, a6, a0
80005208: 93 55 15 00  	srli	a1, a0, 1
8000520c: 33 03 b8 00  	add	t1, a6, a1
80005210: b3 35 03 01  	sltu	a1, t1, a6
80005214: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80005218: 23 a0 67 04  	sw	t1, 64(a5)
8000521c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80005220: 13 15 15 00  	slli	a0, a0, 1
80005224: b3 05 c5 00  	add	a1, a0, a2
80005228: 33 b5 a5 00  	sltu	a0, a1, a0
8000522c: 23 a4 b7 04  	sw	a1, 72(a5)
80005230: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80005234: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80005238: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
8000523c: 37 05 00 00  	lui	a0, 0
80005240: 33 05 45 00  	add	a0, a0, tp
80005244: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80005248: 03 a5 07 00  	lw	a0, 0(a5)
8000524c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80005250: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80005254: b3 85 b8 40  	sub	a1, a7, a1
80005258: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
8000525c: b7 05 00 00  	lui	a1, 0
80005260: b3 85 45 00  	add	a1, a1, tp
80005264: 23 a2 a5 00  	sw	a0, 4(a1)
80005268: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
8000526c: 33 85 a8 02  	mul	a0, a7, a0

80005270 <.LBB0_1>:
80005270: 97 15 00 00  	auipc	a1, 1
80005274: 93 85 45 99  	addi	a1, a1, -1644
80005278: 33 05 b5 00  	add	a0, a0, a1
8000527c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80005280: 83 28 07 03  	lw	a7, 48(a4)
80005284: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80005288: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000528c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80005290: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80005294: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80005298: 13 05 76 00  	addi	a0, a2, 7
8000529c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800052a0: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800052a4: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800052a8: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800052ac: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800052b0: 03 a5 05 00  	lw	a0, 0(a1)
800052b4: 13 05 f5 44  	addi	a0, a0, 1103
800052b8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800052bc: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800052c0: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800052c4: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800052c8: 37 05 00 00  	lui	a0, 0
800052cc: 33 05 45 00  	add	a0, a0, tp
800052d0: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800052d4: 37 05 00 00  	lui	a0, 0
800052d8: 33 05 45 00  	add	a0, a0, tp
800052dc: 23 26 e5 00  	sw	a4, 12(a0)
; }
800052e0: 67 80 00 00  	ret

800052e4 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800052e4: 37 05 00 00  	lui	a0, 0
800052e8: 33 05 45 00  	add	a0, a0, tp
800052ec: 03 25 05 00  	lw	a0, 0(a0)
800052f0: 03 25 05 00  	lw	a0, 0(a0)
800052f4: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800052f8: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800052fc: 33 85 a5 40  	sub	a0, a1, a0
80005300: 67 80 00 00  	ret

80005304 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80005304: 37 05 00 00  	lui	a0, 0
80005308: 33 05 45 00  	add	a0, a0, tp
8000530c: 03 25 05 00  	lw	a0, 0(a0)
80005310: 03 25 05 00  	lw	a0, 0(a0)
80005314: 03 25 05 07  	lw	a0, 112(a0)
80005318: 67 80 00 00  	ret

8000531c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
8000531c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80005320: 63 44 05 00  	bltz	a0, 0x80005328 <__snrt_isr+0xc>
;         while (1)
80005324: 6f 00 00 00  	j	0x80005324 <__snrt_isr+0x8>
80005328: b7 05 00 80  	lui	a1, 524288
8000532c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80005330: 33 75 b5 00  	and	a0, a0, a1
80005334: 13 05 d5 ff  	addi	a0, a0, -3
80005338: 93 55 25 00  	srli	a1, a0, 2
8000533c: 13 15 e5 01  	slli	a0, a0, 30
80005340: 33 65 b5 00  	or	a0, a0, a1
80005344: 93 05 40 00  	addi	a1, zero, 4
80005348: 63 0a b5 06  	beq	a0, a1, 0x800053bc <.LBB1_7+0x58>
8000534c: 63 1a 05 08  	bnez	a0, 0x800053e0 <.LBB1_7+0x7c>
80005350: 37 05 00 00  	lui	a0, 0
80005354: 33 05 45 00  	add	a0, a0, tp
80005358: 03 25 05 00  	lw	a0, 0(a0)
8000535c: 03 25 05 00  	lw	a0, 0(a0)
80005360: f3 25 40 f1  	csrr	a1, mhartid

80005364 <.LBB1_7>:
;     asm volatile(
80005364: 17 16 00 00  	auipc	a2, 1
80005368: 13 06 c6 89  	addi	a2, a2, -1892
8000536c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80005370: 93 06 06 00  	mv	a3, a2
80005374: 93 02 10 00  	addi	t0, zero, 1
80005378: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
8000537c: e3 9e 02 fe  	bnez	t0, 0x80005378 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80005380: b7 06 00 00  	lui	a3, 0
80005384: b3 86 46 00  	add	a3, a3, tp
80005388: 83 a6 86 00  	lw	a3, 8(a3)
8000538c: 33 85 a5 40  	sub	a0, a1, a0
80005390: 93 55 35 00  	srli	a1, a0, 3
80005394: 93 f5 c5 ff  	andi	a1, a1, -4
80005398: b3 85 b6 00  	add	a1, a3, a1
8000539c: 83 a6 05 00  	lw	a3, 0(a1)
800053a0: 13 07 10 00  	addi	a4, zero, 1
800053a4: 33 15 a7 00  	sll	a0, a4, a0
800053a8: 13 45 f5 ff  	not	a0, a0
800053ac: 33 f5 a6 00  	and	a0, a3, a0
800053b0: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800053b4: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800053b8: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800053bc: 37 05 00 00  	lui	a0, 0
800053c0: 33 05 45 00  	add	a0, a0, tp
800053c4: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800053c8: b7 05 00 00  	lui	a1, 0
800053cc: b3 85 45 00  	add	a1, a1, tp
800053d0: 83 a5 c5 00  	lw	a1, 12(a1)
800053d4: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800053d8: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800053dc: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800053e0: 67 80 00 00  	ret

Disassembly of section .init:

800053f0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800053f0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800053f4: 93 81 81 f1  	addi	gp, gp, -232

800053f8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800053f8: 97 00 00 00  	auipc	ra, 0
800053fc: e7 80 40 3c  	jalr	964(ra)

80005400 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80005400: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80005404: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80005408: 97 00 00 00  	auipc	ra, 0
8000540c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80005410: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80005414: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80005418: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000541c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80005420: 63 92 02 02  	bnez	t0, 0x80005444 <snrt.crt0.init_registers>

80005424 <.Lpcrel_hi0>:
;     la        t0, _edata
80005424: 97 02 00 00  	auipc	t0, 0
80005428: 93 82 c2 7d  	addi	t0, t0, 2012

8000542c <.Lpcrel_hi1>:
;     la        t1, _end
8000542c: 17 03 00 00  	auipc	t1, 0
80005430: 13 03 83 7d  	addi	t1, t1, 2008
;     bge       t0, t1, 2f
80005434: 63 d8 62 00  	bge	t0, t1, 0x80005444 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80005438: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000543c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80005440: e3 cc 62 fe  	blt	t0, t1, 0x80005438 <.Lpcrel_hi1+0xc>

80005444 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80005444: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80005448: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000544c: 63 82 02 08  	beqz	t0, 0x800054d0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80005450: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80005454: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80005458: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000545c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80005460: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80005464: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80005468: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000546c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80005470: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80005474: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80005478: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000547c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80005480: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80005484: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80005488: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000548c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80005490: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80005494: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80005498: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000549c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800054a0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800054a4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800054a8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800054ac: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800054b0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800054b4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800054b8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800054bc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800054c0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800054c4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800054c8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800054cc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800054d0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800054d0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800054d4: 23 a0 06 00  	sw	zero, 0(a3)

800054d8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800054d8: 97 02 00 00  	auipc	t0, 0
800054dc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
800054e0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800054e4: 93 87 06 00  	mv	a5, a3

800054e8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800054e8: 97 03 00 00  	auipc	t2, 0
800054ec: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
800054f0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
800054f4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
800054f8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
800054fc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80005500: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80005504: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80005508: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000550c: b3 86 66 40  	sub	a3, a3, t1

80005510 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80005510: 97 02 00 00  	auipc	t0, 0
80005514: 93 82 82 5f  	addi	t0, t0, 1528

80005518 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80005518: 17 03 00 00  	auipc	t1, 0
8000551c: 13 03 03 5f  	addi	t1, t1, 1520

80005520 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80005520: 97 03 00 00  	auipc	t2, 0
80005524: 93 83 83 5e  	addi	t2, t2, 1512

80005528 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80005528: 17 0e 00 00  	auipc	t3, 0
8000552c: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80005530: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80005534: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80005538: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000553c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80005540: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80005544: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80005548: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000554c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80005550: 63 dc 62 00  	bge	t0, t1, 0x80005568 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80005554: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80005558: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000555c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005560: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80005564: e3 c8 62 fe  	blt	t0, t1, 0x80005554 <.Lpcrel_hi7+0x2c>

80005568 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80005568: 97 02 00 00  	auipc	t0, 0
8000556c: 93 82 02 5a  	addi	t0, t0, 1440

80005570 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80005570: 17 03 00 00  	auipc	t1, 0
80005574: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80005578: 63 da 62 00  	bge	t0, t1, 0x8000558c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000557c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80005580: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005584: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80005588: e3 ca 72 fe  	blt	t0, t2, 0x8000557c <.Lpcrel_hi9+0xc>

8000558c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000558c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80005590: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80005594: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80005598: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000559c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800055a0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800055a4: 97 00 00 00  	auipc	ra, 0
800055a8: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
800055ac: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800055b0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800055b4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800055b8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800055bc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800055c0: 13 01 41 01  	addi	sp, sp, 20

800055c4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800055c4: 97 02 00 00  	auipc	t0, 0
800055c8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800055cc: 73 90 52 30  	csrw	mtvec, t0

800055d0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800055d0: 97 00 00 00  	auipc	ra, 0
800055d4: e7 80 00 22  	jalr	544(ra)

800055d8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800055d8: 97 b0 ff ff  	auipc	ra, 1048571
800055dc: e7 80 c0 05  	jalr	92(ra)
;     mv        s0, a0 # store return value in s0
800055e0: 13 04 05 00  	mv	s0, a0

800055e4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800055e4: 97 00 00 00  	auipc	ra, 0
800055e8: e7 80 c0 20  	jalr	524(ra)

800055ec <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800055ec: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
800055f0: 97 00 00 00  	auipc	ra, 0
800055f4: e7 80 c0 22  	jalr	556(ra)
;     wfi
800055f8: 73 00 50 10  	wfi	
;     j       1b
800055fc: 6f f0 df ff  	j	0x800055f8 <snrt.crt0.end+0xc>

80005600 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005600: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005604: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005608: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000560c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80005610: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80005614: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80005618: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000561c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80005620: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80005624: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80005628: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000562c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80005630: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80005634: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80005638: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000563c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80005640: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80005644: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80005648: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000564c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005650: 63 84 02 08  	beqz	t0, 0x800056d8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80005654: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80005658: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000565c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80005660: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80005664: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80005668: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000566c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80005670: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80005674: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80005678: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000567c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80005680: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80005684: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80005688: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000568c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80005690: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80005694: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80005698: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000569c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800056a0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800056a4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800056a8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800056ac: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800056b0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800056b4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800056b8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800056bc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800056c0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800056c4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800056c8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800056cc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800056d0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800056d4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800056d8: 97 00 00 00  	auipc	ra, 0
800056dc: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
800056e0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800056e4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800056e8: 63 84 02 08  	beqz	t0, 0x80005770 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
800056ec: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
800056f0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
800056f4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
800056f8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
800056fc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005700: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005704: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005708: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000570c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005710: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005714: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005718: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000571c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80005720: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80005724: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80005728: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000572c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80005730: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80005734: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80005738: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000573c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80005740: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80005744: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80005748: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000574c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80005750: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80005754: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80005758: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000575c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80005760: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80005764: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80005768: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000576c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80005770: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80005774: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80005778: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000577c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005780: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005784: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005788: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000578c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80005790: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80005794: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80005798: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000579c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800057a0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800057a4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800057a8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800057ac: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800057b0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800057b4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800057b8: 73 00 20 30  	mret	

800057bc <_snrt_init_core_info>:
;     mv        a4, a1
800057bc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800057c0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800057c4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800057c8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800057cc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800057d0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800057d4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800057d8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800057dc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
800057e0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
800057e4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
800057e8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
800057ec: 67 80 00 00  	ret

800057f0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
800057f0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
800057f4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
800057f8: 97 00 00 00  	auipc	ra, 0
800057fc: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80005800: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005804: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005808: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000580c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005810: 67 80 00 00  	ret

80005814 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005814: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005818: 67 80 00 00  	ret

8000581c <_snrt_exit>:
;     addi      sp, sp, -8
8000581c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005820: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005824: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005828: 97 00 00 00  	auipc	ra, 0
8000582c: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80005830: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005834: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005838: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000583c: 63 1c 05 00  	bnez	a0, 0x80005854 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80005840: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80005844: 93 e2 12 00  	ori	t0, t0, 1

80005848 <.Lpcrel_hi11>:
;     la        t1, tohost
80005848: 17 03 00 00  	auipc	t1, 0
8000584c: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80005850: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80005854: 67 80 00 00  	ret
