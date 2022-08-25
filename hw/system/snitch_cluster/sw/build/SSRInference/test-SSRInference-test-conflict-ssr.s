
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-SSRInference-test-conflict-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00002c40 80000000 TEXT
  2 .init             00000468 80002c40 TEXT
  3 .rodata           00000230 800030a8 DATA
  4 .htif             00000048 80003300 DATA
  5 .tdata            00000000 80003348 DATA
  6 .tbss             00000010 80003348 BSS
  7 .tbssend          00000000 80003358 DATA
  8 .sdata            00000118 80003358 DATA
  9 .data             00000000 80003470 DATA
 10 .sbss             00000004 80003470 BSS
 11 .bss              00000000 80003474 BSS
 12 .dram             00000000 80003474 DATA
 13 .debug_info       000032bb 00000000 
 14 .debug_abbrev     00000b36 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002a5b 00000000 
 17 .debug_loc        00002f08 00000000 
 18 .debug_ranges     00000390 00000000 
 19 .debug_str        00000a7f 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002a0 00000000 
 23 .symtab           00003230 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           000009c2 00000000 


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
80000634: 13 01 01 fe  	addi	sp, sp, -32
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 00  	sw	ra, 28(sp)
8000063c: 23 2c 81 00  	sw	s0, 24(sp)
80000640: 23 2a 91 00  	sw	s1, 20(sp)
80000644: 23 28 21 01  	sw	s2, 16(sp)
80000648: 27 34 81 00  	fsd	fs0, 8(sp)
8000064c: 37 05 00 00  	lui	a0, 0
80000650: 33 05 45 00  	add	a0, a0, tp
80000654: 83 25 45 00  	lw	a1, 4(a0)
80000658: 13 05 00 00  	mv	a0, zero
;     if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000065c: 63 9c 05 6e  	bnez	a1, 0x80000d54 <.LBB0_33+0x10>
;     return _snrt_team_current->root;
80000660: 37 05 00 00  	lui	a0, 0
80000664: 33 05 45 00  	add	a0, a0, tp
80000668: 03 25 05 00  	lw	a0, 0(a0)
8000066c: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000670: 03 24 85 05  	lw	s0, 88(a0)
80000674: 83 25 05 05  	lw	a1, 80(a0)
80000678: 03 26 45 05  	lw	a2, 84(a0)
8000067c: 93 06 04 05  	addi	a3, s0, 80
80000680: b3 05 b6 00  	add	a1, a2, a1
80000684: 63 f6 d5 02  	bgeu	a1, a3, 0x800006b0 <main+0x7c>
80000688: 13 09 00 00  	mv	s2, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
8000068c: 13 86 06 00  	mv	a2, a3
80000690: 63 ea c5 02  	bltu	a1, a2, 0x800006c4 <main+0x90>
;     void *ret = (void *)alloc->next;
80000694: 93 04 04 00  	mv	s1, s0
;     alloc->next += size;
80000698: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
8000069c: 93 06 06 05  	addi	a3, a2, 80
800006a0: 13 04 06 00  	mv	s0, a2
800006a4: 63 e6 d5 02  	bltu	a1, a3, 0x800006d0 <main+0x9c>
;     alloc->next += size;
800006a8: 23 2c d5 04  	sw	a3, 88(a0)
800006ac: 6f 00 80 02  	j	0x800006d4 <main+0xa0>
;     void *ret = (void *)alloc->next;
800006b0: 13 09 04 00  	mv	s2, s0
;     alloc->next += size;
800006b4: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b8: 13 06 04 0a  	addi	a2, s0, 160
800006bc: 13 84 06 00  	mv	s0, a3
800006c0: e3 fa c5 fc  	bgeu	a1, a2, 0x80000694 <main+0x60>
800006c4: 93 04 00 00  	mv	s1, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c8: 93 06 06 00  	mv	a3, a2
800006cc: e3 fe d5 fc  	bgeu	a1, a3, 0x800006a8 <main+0x74>
800006d0: 13 04 00 00  	mv	s0, zero
;     for (uint32_t i = 0; i < n; i++){
800006d4: 13 05 89 04  	addi	a0, s2, 72
800006d8: 93 55 49 01  	srli	a1, s2, 20
800006dc: b3 35 b0 00  	snez	a1, a1
800006e0: 37 06 12 00  	lui	a2, 288
800006e4: 13 06 16 00  	addi	a2, a2, 1
800006e8: 33 35 c5 00  	sltu	a0, a0, a2
800006ec: 33 f6 a5 00  	and	a2, a1, a0

800006f0 <.LBB0_19>:
800006f0: 97 36 00 00  	auipc	a3, 3
800006f4: 93 86 06 c7  	addi	a3, a3, -912

800006f8 <.LBB0_20>:
800006f8: 17 3f 00 00  	auipc	t5, 3
800006fc: 13 0f 0f c7  	addi	t5, t5, -912

80000700 <.LBB0_21>:
80000700: 97 3e 00 00  	auipc	t4, 3
80000704: 93 8e 0e c7  	addi	t4, t4, -912

80000708 <.LBB0_22>:
80000708: 17 3e 00 00  	auipc	t3, 3
8000070c: 13 0e 0e c7  	addi	t3, t3, -912

80000710 <.LBB0_23>:
80000710: 97 33 00 00  	auipc	t2, 3
80000714: 93 83 03 c7  	addi	t2, t2, -912

80000718 <.LBB0_24>:
80000718: 17 33 00 00  	auipc	t1, 3
8000071c: 13 03 03 c7  	addi	t1, t1, -912

80000720 <.LBB0_25>:
80000720: 97 32 00 00  	auipc	t0, 3
80000724: 93 82 02 c7  	addi	t0, t0, -912

80000728 <.LBB0_26>:
80000728: 97 38 00 00  	auipc	a7, 3
8000072c: 93 88 08 c7  	addi	a7, a7, -912

80000730 <.LBB0_27>:
80000730: 17 38 00 00  	auipc	a6, 3
80000734: 13 08 08 c7  	addi	a6, a6, -912
80000738: 63 06 06 08  	beqz	a2, 0x800007c4 <.LBB0_28+0x68>
8000073c: 13 05 80 00  	addi	a0, zero, 8
80000740: 13 06 90 00  	addi	a2, zero, 9
;     for (uint32_t i = 0; i < n; i++){
80000744: 13 07 00 04  	addi	a4, zero, 64
80000748: 93 07 00 0c  	addi	a5, zero, 192
8000074c: ab 20 e6 00  	scfgw	a2, a4
80000750: ab 20 f5 00  	scfgw	a0, a5
80000754: 13 05 00 02  	addi	a0, zero, 32
80000758: ab 20 a0 00  	scfgw	zero, a0

8000075c <.LBB0_28>:
8000075c: 17 35 00 00  	auipc	a0, 3
80000760: 13 05 c5 bf  	addi	a0, a0, -1028
80000764: 87 31 05 00  	fld	ft3, 0(a0)
80000768: 07 b2 06 00  	fld	ft4, 0(a3)
;     for (uint32_t i = 0; i < n; i++){
8000076c: 2b 20 09 38  	scfgwi	s2, 896
80000770: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;         p[i] = (double)(seed + i) * 1.4142;
80000774: 53 80 31 22  	fmv.d	ft0, ft3
80000778: 53 00 42 22  	fmv.d	ft0, ft4
8000077c: 87 31 0f 00  	fld	ft3, 0(t5)
80000780: 07 b2 0e 00  	fld	ft4, 0(t4)
80000784: 87 32 0e 00  	fld	ft5, 0(t3)
80000788: 07 b3 03 00  	fld	ft6, 0(t2)
;         p[i] = (double)(seed + i) * 1.4142;
8000078c: 53 80 31 22  	fmv.d	ft0, ft3
80000790: 53 00 42 22  	fmv.d	ft0, ft4
80000794: 53 80 52 22  	fmv.d	ft0, ft5
80000798: 53 00 63 22  	fmv.d	ft0, ft6
8000079c: 87 31 03 00  	fld	ft3, 0(t1)
800007a0: 07 b2 02 00  	fld	ft4, 0(t0)
800007a4: 87 b2 08 00  	fld	ft5, 0(a7)
800007a8: 07 33 08 00  	fld	ft6, 0(a6)
;         p[i] = (double)(seed + i) * 1.4142;
800007ac: 53 80 31 22  	fmv.d	ft0, ft3
800007b0: 53 00 42 22  	fmv.d	ft0, ft4
800007b4: 53 80 52 22  	fmv.d	ft0, ft5
800007b8: 53 00 63 22  	fmv.d	ft0, ft6
800007bc: 73 f5 00 7c  	csrrci	a0, 1984, 1
800007c0: 6f 00 c0 0c  	j	0x8000088c <.LBB0_28+0x130>
800007c4: 37 a6 f6 3f  	lui	a2, 261994
800007c8: 13 06 06 09  	addi	a2, a2, 144
;         p[i] = (double)(seed + i) * 1.4142;
800007cc: 23 22 c9 00  	sw	a2, 4(s2)
800007d0: 37 16 e0 2d  	lui	a2, 187905
800007d4: 13 06 b6 d1  	addi	a2, a2, -741
800007d8: 23 20 c9 00  	sw	a2, 0(s2)
800007dc: 37 a7 06 40  	lui	a4, 262250
800007e0: 13 07 07 09  	addi	a4, a4, 144
800007e4: 23 26 e9 00  	sw	a4, 12(s2)
800007e8: 23 24 c9 00  	sw	a2, 8(s2)
800007ec: 37 07 11 40  	lui	a4, 262416
800007f0: 13 07 c7 86  	addi	a4, a4, -1940
800007f4: 23 2a e9 00  	sw	a4, 20(s2)
800007f8: 37 17 68 22  	lui	a4, 140929
800007fc: 13 07 47 9d  	addi	a4, a4, -1580
80000800: 23 28 e9 00  	sw	a4, 16(s2)
80000804: b7 a7 16 40  	lui	a5, 262506
80000808: 93 87 07 09  	addi	a5, a5, 144
8000080c: 23 2e f9 00  	sw	a5, 28(s2)
80000810: 23 2c c9 00  	sw	a2, 24(s2)
80000814: b7 57 1c 40  	lui	a5, 262597
80000818: 93 87 47 8b  	addi	a5, a5, -1868
8000081c: 23 22 f9 02  	sw	a5, 36(s2)
80000820: b7 17 58 39  	lui	a5, 234881
80000824: 93 87 27 06  	addi	a5, a5, 98
80000828: 23 20 f9 02  	sw	a5, 32(s2)
8000082c: 37 05 21 40  	lui	a0, 262672
80000830: 13 05 c5 86  	addi	a0, a0, -1940
80000834: 23 26 a9 02  	sw	a0, 44(s2)
80000838: 23 24 e9 02  	sw	a4, 40(s2)
8000083c: 37 d5 23 40  	lui	a0, 262717
80000840: 13 05 e5 c7  	addi	a0, a0, -898
80000844: 23 2a a9 02  	sw	a0, 52(s2)
80000848: 37 15 24 28  	lui	a0, 164417
8000084c: 13 05 85 b7  	addi	a0, a0, -1160
80000850: 23 28 a9 02  	sw	a0, 48(s2)
80000854: 37 a5 26 40  	lui	a0, 262762
80000858: 13 05 05 09  	addi	a0, a0, 144
8000085c: 23 2e a9 02  	sw	a0, 60(s2)
80000860: 23 2c c9 02  	sw	a2, 56(s2)
80000864: 37 75 29 40  	lui	a0, 262807
80000868: 13 05 25 4a  	addi	a0, a0, 1186
8000086c: 23 22 a9 04  	sw	a0, 68(s2)
80000870: 37 15 9c 33  	lui	a0, 211393
80000874: 13 05 e5 eb  	addi	a0, a0, -322
80000878: 23 20 a9 04  	sw	a0, 64(s2)
8000087c: 37 55 2c 40  	lui	a0, 262853
80000880: 13 05 45 8b  	addi	a0, a0, -1868
80000884: 23 26 a9 04  	sw	a0, 76(s2)
80000888: 23 24 f9 04  	sw	a5, 72(s2)
;     for (uint32_t i = 0; i < n; i++){
8000088c: 13 85 84 04  	addi	a0, s1, 72
80000890: 13 d6 44 01  	srli	a2, s1, 20
80000894: 33 36 c0 00  	snez	a2, a2
80000898: 37 07 12 00  	lui	a4, 288
8000089c: 13 07 17 00  	addi	a4, a4, 1
800008a0: 33 35 e5 00  	sltu	a0, a0, a4
800008a4: 33 75 a6 00  	and	a0, a2, a0

800008a8 <.LBB0_29>:
800008a8: 17 36 00 00  	auipc	a2, 3
800008ac: 13 06 06 b0  	addi	a2, a2, -1280
800008b0: 63 02 05 08  	beqz	a0, 0x80000934 <.LBB0_29+0x8c>
800008b4: 13 05 80 00  	addi	a0, zero, 8
800008b8: 13 07 90 00  	addi	a4, zero, 9
;     for (uint32_t i = 0; i < n; i++){
800008bc: 93 07 00 04  	addi	a5, zero, 64
800008c0: 93 05 00 0c  	addi	a1, zero, 192
800008c4: ab 20 f7 00  	scfgw	a4, a5
800008c8: ab 20 b5 00  	scfgw	a0, a1
800008cc: 13 05 00 02  	addi	a0, zero, 32
800008d0: ab 20 a0 00  	scfgw	zero, a0
800008d4: 87 b1 06 00  	fld	ft3, 0(a3)
800008d8: 07 32 0f 00  	fld	ft4, 0(t5)
800008dc: 2b a0 04 38  	scfgwi	s1, 896
800008e0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;         p[i] = (double)(seed + i) * 1.4142;
800008e4: 53 80 31 22  	fmv.d	ft0, ft3
800008e8: 53 00 42 22  	fmv.d	ft0, ft4
800008ec: 87 b1 0e 00  	fld	ft3, 0(t4)
800008f0: 07 32 0e 00  	fld	ft4, 0(t3)
800008f4: 87 b2 03 00  	fld	ft5, 0(t2)
800008f8: 07 33 03 00  	fld	ft6, 0(t1)
;         p[i] = (double)(seed + i) * 1.4142;
800008fc: 53 80 31 22  	fmv.d	ft0, ft3
80000900: 53 00 42 22  	fmv.d	ft0, ft4
80000904: 53 80 52 22  	fmv.d	ft0, ft5
80000908: 53 00 63 22  	fmv.d	ft0, ft6
8000090c: 87 b1 02 00  	fld	ft3, 0(t0)
80000910: 07 b2 08 00  	fld	ft4, 0(a7)
80000914: 87 32 08 00  	fld	ft5, 0(a6)
80000918: 07 33 06 00  	fld	ft6, 0(a2)
;         p[i] = (double)(seed + i) * 1.4142;
8000091c: 53 80 31 22  	fmv.d	ft0, ft3
80000920: 53 00 42 22  	fmv.d	ft0, ft4
80000924: 53 80 52 22  	fmv.d	ft0, ft5
80000928: 53 00 63 22  	fmv.d	ft0, ft6
8000092c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000930: 6f 00 40 0d  	j	0x80000a04 <.LBB0_29+0x15c>
80000934: 37 a5 06 40  	lui	a0, 262250
80000938: 13 05 05 09  	addi	a0, a0, 144
;         p[i] = (double)(seed + i) * 1.4142;
8000093c: 23 a2 a4 00  	sw	a0, 4(s1)
80000940: 37 15 e0 2d  	lui	a0, 187905
80000944: 13 05 b5 d1  	addi	a0, a0, -741
80000948: 23 a0 a4 00  	sw	a0, 0(s1)
8000094c: b7 06 11 40  	lui	a3, 262416
80000950: 93 86 c6 86  	addi	a3, a3, -1940
80000954: 23 a6 d4 00  	sw	a3, 12(s1)
80000958: b7 16 68 22  	lui	a3, 140929
8000095c: 93 86 46 9d  	addi	a3, a3, -1580
80000960: 23 a4 d4 00  	sw	a3, 8(s1)
80000964: 37 a7 16 40  	lui	a4, 262506
80000968: 13 07 07 09  	addi	a4, a4, 144
8000096c: 23 aa e4 00  	sw	a4, 20(s1)
80000970: 23 a8 a4 00  	sw	a0, 16(s1)
80000974: 37 57 1c 40  	lui	a4, 262597
80000978: 13 07 47 8b  	addi	a4, a4, -1868
8000097c: 23 ae e4 00  	sw	a4, 28(s1)
80000980: 37 17 58 39  	lui	a4, 234881
80000984: 13 07 27 06  	addi	a4, a4, 98
80000988: 23 ac e4 00  	sw	a4, 24(s1)
8000098c: b7 07 21 40  	lui	a5, 262672
80000990: 93 87 c7 86  	addi	a5, a5, -1940
80000994: 23 a2 f4 02  	sw	a5, 36(s1)
80000998: 23 a0 d4 02  	sw	a3, 32(s1)
8000099c: b7 d6 23 40  	lui	a3, 262717
800009a0: 93 86 e6 c7  	addi	a3, a3, -898
800009a4: 23 a6 d4 02  	sw	a3, 44(s1)
800009a8: b7 16 24 28  	lui	a3, 164417
800009ac: 93 86 86 b7  	addi	a3, a3, -1160
800009b0: 23 a4 d4 02  	sw	a3, 40(s1)
800009b4: b7 a6 26 40  	lui	a3, 262762
800009b8: 93 86 06 09  	addi	a3, a3, 144
800009bc: 23 aa d4 02  	sw	a3, 52(s1)
800009c0: 23 a8 a4 02  	sw	a0, 48(s1)
800009c4: 37 75 29 40  	lui	a0, 262807
800009c8: 13 05 25 4a  	addi	a0, a0, 1186
800009cc: 23 ae a4 02  	sw	a0, 60(s1)
800009d0: 37 15 9c 33  	lui	a0, 211393
800009d4: 13 05 e5 eb  	addi	a0, a0, -322
800009d8: 23 ac a4 02  	sw	a0, 56(s1)
800009dc: 37 55 2c 40  	lui	a0, 262853
800009e0: 13 05 45 8b  	addi	a0, a0, -1868
800009e4: 23 a2 a4 04  	sw	a0, 68(s1)
800009e8: 23 a0 e4 04  	sw	a4, 64(s1)
800009ec: 37 25 2f 40  	lui	a0, 262898
800009f0: 13 05 65 cc  	addi	a0, a0, -826
800009f4: 23 a6 a4 04  	sw	a0, 76(s1)
800009f8: 37 15 14 3f  	lui	a0, 258369
800009fc: 13 05 55 20  	addi	a0, a0, 517
80000a00: 23 a4 a4 04  	sw	a0, 72(s1)
;     for (uint32_t i = 0; i < n; i++){
80000a04: 13 05 84 04  	addi	a0, s0, 72
80000a08: 93 55 44 01  	srli	a1, s0, 20
80000a0c: b3 35 b0 00  	snez	a1, a1
80000a10: b7 06 12 00  	lui	a3, 288
80000a14: 93 86 16 00  	addi	a3, a3, 1
80000a18: 33 35 d5 00  	sltu	a0, a0, a3
80000a1c: 33 f5 a5 00  	and	a0, a1, a0
80000a20: 63 06 05 08  	beqz	a0, 0x80000aac <.LBB0_30+0x24>
80000a24: 13 05 80 00  	addi	a0, zero, 8
80000a28: 93 05 90 00  	addi	a1, zero, 9
;     for (uint32_t i = 0; i < n; i++){
80000a2c: 93 06 00 04  	addi	a3, zero, 64
80000a30: 13 07 00 0c  	addi	a4, zero, 192
80000a34: ab a0 d5 00  	scfgw	a1, a3
80000a38: ab 20 e5 00  	scfgw	a0, a4
80000a3c: 13 05 00 02  	addi	a0, zero, 32
80000a40: ab 20 a0 00  	scfgw	zero, a0
80000a44: 87 31 0f 00  	fld	ft3, 0(t5)
80000a48: 07 b2 0e 00  	fld	ft4, 0(t4)
80000a4c: 2b 20 04 38  	scfgwi	s0, 896
80000a50: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;         p[i] = (double)(seed + i) * 1.4142;
80000a54: 53 80 31 22  	fmv.d	ft0, ft3
80000a58: 53 00 42 22  	fmv.d	ft0, ft4
80000a5c: 87 31 0e 00  	fld	ft3, 0(t3)
80000a60: 07 b2 03 00  	fld	ft4, 0(t2)
80000a64: 87 32 03 00  	fld	ft5, 0(t1)
80000a68: 07 b3 02 00  	fld	ft6, 0(t0)
;         p[i] = (double)(seed + i) * 1.4142;
80000a6c: 53 80 31 22  	fmv.d	ft0, ft3
80000a70: 53 00 42 22  	fmv.d	ft0, ft4
80000a74: 53 80 52 22  	fmv.d	ft0, ft5
80000a78: 53 00 63 22  	fmv.d	ft0, ft6
80000a7c: 87 b1 08 00  	fld	ft3, 0(a7)
80000a80: 07 32 08 00  	fld	ft4, 0(a6)
80000a84: 87 32 06 00  	fld	ft5, 0(a2)

80000a88 <.LBB0_30>:
80000a88: 17 35 00 00  	auipc	a0, 3
80000a8c: 13 05 85 92  	addi	a0, a0, -1752
80000a90: 07 33 05 00  	fld	ft6, 0(a0)
;         p[i] = (double)(seed + i) * 1.4142;
80000a94: 53 80 31 22  	fmv.d	ft0, ft3
80000a98: 53 00 42 22  	fmv.d	ft0, ft4
80000a9c: 53 80 52 22  	fmv.d	ft0, ft5
80000aa0: 53 00 63 22  	fmv.d	ft0, ft6
80000aa4: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000aa8: 6f 00 40 0d  	j	0x80000b7c <.LBB0_30+0xf4>
80000aac: 37 05 11 40  	lui	a0, 262416
80000ab0: 13 05 c5 86  	addi	a0, a0, -1940
;         p[i] = (double)(seed + i) * 1.4142;
80000ab4: 23 22 a4 00  	sw	a0, 4(s0)
80000ab8: 37 15 68 22  	lui	a0, 140929
80000abc: 13 05 45 9d  	addi	a0, a0, -1580
80000ac0: 23 20 a4 00  	sw	a0, 0(s0)
80000ac4: b7 a5 16 40  	lui	a1, 262506
80000ac8: 93 85 05 09  	addi	a1, a1, 144
80000acc: 23 26 b4 00  	sw	a1, 12(s0)
80000ad0: b7 15 e0 2d  	lui	a1, 187905
80000ad4: 93 85 b5 d1  	addi	a1, a1, -741
80000ad8: 23 24 b4 00  	sw	a1, 8(s0)
80000adc: 37 56 1c 40  	lui	a2, 262597
80000ae0: 13 06 46 8b  	addi	a2, a2, -1868
80000ae4: 23 2a c4 00  	sw	a2, 20(s0)
80000ae8: 37 16 58 39  	lui	a2, 234881
80000aec: 13 06 26 06  	addi	a2, a2, 98
80000af0: 23 28 c4 00  	sw	a2, 16(s0)
80000af4: b7 06 21 40  	lui	a3, 262672
80000af8: 93 86 c6 86  	addi	a3, a3, -1940
80000afc: 23 2e d4 00  	sw	a3, 28(s0)
80000b00: 23 2c a4 00  	sw	a0, 24(s0)
80000b04: b7 d6 23 40  	lui	a3, 262717
80000b08: 93 86 e6 c7  	addi	a3, a3, -898
80000b0c: 23 22 d4 02  	sw	a3, 36(s0)
80000b10: b7 16 24 28  	lui	a3, 164417
80000b14: 93 86 86 b7  	addi	a3, a3, -1160
80000b18: 23 20 d4 02  	sw	a3, 32(s0)
80000b1c: b7 a6 26 40  	lui	a3, 262762
80000b20: 93 86 06 09  	addi	a3, a3, 144
80000b24: 23 26 d4 02  	sw	a3, 44(s0)
80000b28: 23 24 b4 02  	sw	a1, 40(s0)
80000b2c: b7 75 29 40  	lui	a1, 262807
80000b30: 93 85 25 4a  	addi	a1, a1, 1186
80000b34: 23 2a b4 02  	sw	a1, 52(s0)
80000b38: b7 15 9c 33  	lui	a1, 211393
80000b3c: 93 85 e5 eb  	addi	a1, a1, -322
80000b40: 23 28 b4 02  	sw	a1, 48(s0)
80000b44: b7 55 2c 40  	lui	a1, 262853
80000b48: 93 85 45 8b  	addi	a1, a1, -1868
80000b4c: 23 2e b4 02  	sw	a1, 60(s0)
80000b50: 23 2c c4 02  	sw	a2, 56(s0)
80000b54: b7 25 2f 40  	lui	a1, 262898
80000b58: 93 85 65 cc  	addi	a1, a1, -826
80000b5c: 23 22 b4 04  	sw	a1, 68(s0)
80000b60: b7 15 14 3f  	lui	a1, 258369
80000b64: 93 85 55 20  	addi	a1, a1, 517
80000b68: 23 20 b4 04  	sw	a1, 64(s0)
80000b6c: b7 05 31 40  	lui	a1, 262928
80000b70: 93 85 c5 86  	addi	a1, a1, -1940
80000b74: 23 26 b4 04  	sw	a1, 76(s0)
80000b78: 23 24 a4 04  	sw	a0, 72(s0)
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000b7c: 13 05 04 00  	mv	a0, s0
80000b80: 93 05 00 00  	mv	a1, zero
80000b84: 97 20 00 00  	auipc	ra, 2
80000b88: e7 80 80 0a  	jalr	168(ra)
;         r += a[i] + b[i] + c[i];
80000b8c: 87 31 09 00  	fld	ft3, 0(s2)
80000b90: 07 b2 04 00  	fld	ft4, 0(s1)
80000b94: 87 32 04 00  	fld	ft5, 0(s0)
80000b98: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000b9c: 53 f4 51 02  	fadd.d	fs0, ft3, ft5
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000ba0: 93 05 10 00  	addi	a1, zero, 1
80000ba4: 13 05 04 00  	mv	a0, s0
80000ba8: 97 20 00 00  	auipc	ra, 2
80000bac: e7 80 40 08  	jalr	132(ra)
;         r += a[i] + b[i] + c[i];
80000bb0: 87 31 89 00  	fld	ft3, 8(s2)
80000bb4: 07 b2 84 00  	fld	ft4, 8(s1)
80000bb8: 87 32 84 00  	fld	ft5, 8(s0)
80000bbc: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000bc0: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000bc4: 53 f4 51 02  	fadd.d	fs0, ft3, ft5
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000bc8: 93 05 20 00  	addi	a1, zero, 2
80000bcc: 13 05 04 00  	mv	a0, s0
80000bd0: 97 20 00 00  	auipc	ra, 2
80000bd4: e7 80 c0 05  	jalr	92(ra)
;         r += a[i] + b[i] + c[i];
80000bd8: 87 31 09 01  	fld	ft3, 16(s2)
80000bdc: 07 b2 04 01  	fld	ft4, 16(s1)
80000be0: 87 32 04 01  	fld	ft5, 16(s0)
80000be4: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000be8: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000bec: 53 f4 51 02  	fadd.d	fs0, ft3, ft5
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000bf0: 93 05 30 00  	addi	a1, zero, 3
80000bf4: 13 05 04 00  	mv	a0, s0
80000bf8: 97 20 00 00  	auipc	ra, 2
80000bfc: e7 80 40 03  	jalr	52(ra)
;         r += a[i] + b[i] + c[i];
80000c00: 87 31 89 01  	fld	ft3, 24(s2)
80000c04: 07 b2 84 01  	fld	ft4, 24(s1)
80000c08: 87 32 84 01  	fld	ft5, 24(s0)
80000c0c: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000c10: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000c14: 53 f4 51 02  	fadd.d	fs0, ft3, ft5
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000c18: 93 05 40 00  	addi	a1, zero, 4
80000c1c: 13 05 04 00  	mv	a0, s0
80000c20: 97 20 00 00  	auipc	ra, 2
80000c24: e7 80 c0 00  	jalr	12(ra)
;         r += a[i] + b[i] + c[i];
80000c28: 87 31 09 02  	fld	ft3, 32(s2)
80000c2c: 07 b2 04 02  	fld	ft4, 32(s1)
80000c30: 87 32 04 02  	fld	ft5, 32(s0)
80000c34: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000c38: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000c3c: 53 f4 51 02  	fadd.d	fs0, ft3, ft5
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000c40: 93 05 50 00  	addi	a1, zero, 5
80000c44: 13 05 04 00  	mv	a0, s0
80000c48: 97 20 00 00  	auipc	ra, 2
80000c4c: e7 80 40 fe  	jalr	-28(ra)
;         r += a[i] + b[i] + c[i];
80000c50: 87 31 89 02  	fld	ft3, 40(s2)
80000c54: 07 b2 84 02  	fld	ft4, 40(s1)
80000c58: 87 32 84 02  	fld	ft5, 40(s0)
80000c5c: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000c60: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000c64: 53 f4 51 02  	fadd.d	fs0, ft3, ft5
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000c68: 93 05 60 00  	addi	a1, zero, 6
80000c6c: 13 05 04 00  	mv	a0, s0
80000c70: 97 20 00 00  	auipc	ra, 2
80000c74: e7 80 c0 fb  	jalr	-68(ra)
;         r += a[i] + b[i] + c[i];
80000c78: 87 31 09 03  	fld	ft3, 48(s2)
80000c7c: 07 b2 04 03  	fld	ft4, 48(s1)
80000c80: 87 32 04 03  	fld	ft5, 48(s0)
80000c84: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000c88: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000c8c: 53 f4 51 02  	fadd.d	fs0, ft3, ft5
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000c90: 93 05 70 00  	addi	a1, zero, 7
80000c94: 13 05 04 00  	mv	a0, s0
80000c98: 97 20 00 00  	auipc	ra, 2
80000c9c: e7 80 40 f9  	jalr	-108(ra)
;         r += a[i] + b[i] + c[i];
80000ca0: 87 31 89 03  	fld	ft3, 56(s2)
80000ca4: 07 b2 84 03  	fld	ft4, 56(s1)
80000ca8: 87 32 84 03  	fld	ft5, 56(s0)
80000cac: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000cb0: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000cb4: 53 f4 51 02  	fadd.d	fs0, ft3, ft5
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000cb8: 93 05 80 00  	addi	a1, zero, 8
80000cbc: 13 05 04 00  	mv	a0, s0
80000cc0: 97 20 00 00  	auipc	ra, 2
80000cc4: e7 80 c0 f6  	jalr	-148(ra)
;         r += a[i] + b[i] + c[i];
80000cc8: 87 31 09 04  	fld	ft3, 64(s2)
80000ccc: 07 b2 04 04  	fld	ft4, 64(s1)
80000cd0: 87 32 04 04  	fld	ft5, 64(s0)
80000cd4: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000cd8: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000cdc: 53 f4 51 02  	fadd.d	fs0, ft3, ft5
;         change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
80000ce0: 93 05 90 00  	addi	a1, zero, 9
80000ce4: 13 05 04 00  	mv	a0, s0
80000ce8: 97 20 00 00  	auipc	ra, 2
80000cec: e7 80 40 f4  	jalr	-188(ra)
;         r += a[i] + b[i] + c[i];
80000cf0: 87 31 89 04  	fld	ft3, 72(s2)
80000cf4: 07 b2 84 04  	fld	ft4, 72(s1)
80000cf8: 87 32 84 04  	fld	ft5, 72(s0)

80000cfc <.LBB0_31>:
80000cfc: 17 25 00 00  	auipc	a0, 2
80000d00: 13 05 c5 6b  	addi	a0, a0, 1724
80000d04: 07 33 05 00  	fld	ft6, 0(a0)
;         r += a[i] + b[i] + c[i];
80000d08: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000d0c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000d10: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
;     double error = r - r_true;
80000d14: 53 f2 61 02  	fadd.d	ft4, ft3, ft6
;     error = error < 0.0 ? -error : error;
80000d18: 53 24 42 22  	fabs.d	fs0, ft4
;     printf("error = %f\n", r, error);
80000d1c: 27 30 31 00  	fsd	ft3, 0(sp)
80000d20: 03 26 01 00  	lw	a2, 0(sp)
80000d24: 83 26 41 00  	lw	a3, 4(sp)
80000d28: 27 30 81 00  	fsd	fs0, 0(sp)
80000d2c: 03 27 01 00  	lw	a4, 0(sp)
80000d30: 83 27 41 00  	lw	a5, 4(sp)

80000d34 <.LBB0_32>:
80000d34: 17 25 00 00  	auipc	a0, 2
80000d38: 13 05 15 38  	addi	a0, a0, 897
80000d3c: 97 00 00 00  	auipc	ra, 0
80000d40: e7 80 40 03  	jalr	52(ra)

80000d44 <.LBB0_33>:
80000d44: 17 25 00 00  	auipc	a0, 2
80000d48: 13 05 c5 67  	addi	a0, a0, 1660
80000d4c: 87 31 05 00  	fld	ft3, 0(a0)
;     return error > 0.0001;
80000d50: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80000d54: 07 34 81 00  	fld	fs0, 8(sp)
80000d58: 03 29 01 01  	lw	s2, 16(sp)
80000d5c: 83 24 41 01  	lw	s1, 20(sp)
80000d60: 03 24 81 01  	lw	s0, 24(sp)
80000d64: 83 20 c1 01  	lw	ra, 28(sp)
80000d68: 13 01 01 02  	addi	sp, sp, 32
80000d6c: 67 80 00 00  	ret

80000d70 <printf_>:
; {
80000d70: 13 01 01 fd  	addi	sp, sp, -48
80000d74: 23 26 11 00  	sw	ra, 12(sp)
80000d78: 93 02 05 00  	mv	t0, a0
80000d7c: 23 26 11 03  	sw	a7, 44(sp)
80000d80: 23 24 01 03  	sw	a6, 40(sp)
80000d84: 23 22 f1 02  	sw	a5, 36(sp)
80000d88: 23 20 e1 02  	sw	a4, 32(sp)
80000d8c: 23 2e d1 00  	sw	a3, 28(sp)
80000d90: 23 2c c1 00  	sw	a2, 24(sp)
80000d94: 23 2a b1 00  	sw	a1, 20(sp)
80000d98: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80000d9c: 23 24 a1 00  	sw	a0, 8(sp)

80000da0 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80000da0: 17 15 00 00  	auipc	a0, 1
80000da4: 13 05 45 c2  	addi	a0, a0, -988
80000da8: 93 05 71 00  	addi	a1, sp, 7
80000dac: 13 06 f0 ff  	addi	a2, zero, -1
80000db0: 13 07 41 01  	addi	a4, sp, 20
80000db4: 93 86 02 00  	mv	a3, t0
80000db8: 97 00 00 00  	auipc	ra, 0
80000dbc: e7 80 40 01  	jalr	20(ra)
;   return ret;
80000dc0: 83 20 c1 00  	lw	ra, 12(sp)
80000dc4: 13 01 01 03  	addi	sp, sp, 48
80000dc8: 67 80 00 00  	ret

80000dcc <_vsnprintf.llvm.11632292163828655644>:
; {
80000dcc: 13 01 01 f9  	addi	sp, sp, -112
80000dd0: 23 26 11 06  	sw	ra, 108(sp)
80000dd4: 23 24 81 06  	sw	s0, 104(sp)
80000dd8: 23 22 91 06  	sw	s1, 100(sp)
80000ddc: 23 20 21 07  	sw	s2, 96(sp)
80000de0: 23 2e 31 05  	sw	s3, 92(sp)
80000de4: 23 2c 41 05  	sw	s4, 88(sp)
80000de8: 23 2a 51 05  	sw	s5, 84(sp)
80000dec: 23 28 61 05  	sw	s6, 80(sp)
80000df0: 23 26 71 05  	sw	s7, 76(sp)
80000df4: 23 24 81 05  	sw	s8, 72(sp)
80000df8: 23 22 91 05  	sw	s9, 68(sp)
80000dfc: 23 20 a1 05  	sw	s10, 64(sp)
80000e00: 23 2e b1 03  	sw	s11, 60(sp)
80000e04: 93 09 07 00  	mv	s3, a4
80000e08: 13 84 06 00  	mv	s0, a3
80000e0c: 93 0a 06 00  	mv	s5, a2
80000e10: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80000e14: 63 86 05 00  	beqz	a1, 0x80000e20 <.LBB1_183>
80000e18: 13 09 05 00  	mv	s2, a0
80000e1c: 6f 00 c0 00  	j	0x80000e28 <.LBB1_183+0x8>

80000e20 <.LBB1_183>:
80000e20: 17 19 00 00  	auipc	s2, 1
80000e24: 13 09 09 c5  	addi	s2, s2, -944
80000e28: 13 0c 00 00  	mv	s8, zero
80000e2c: 13 0b 50 02  	addi	s6, zero, 37
80000e30: 93 0d 00 01  	addi	s11, zero, 16
80000e34: 93 0b e0 02  	addi	s7, zero, 46
80000e38: 37 15 00 00  	lui	a0, 1
80000e3c: 13 05 05 80  	addi	a0, a0, -2048
80000e40: 23 2c a1 00  	sw	a0, 24(sp)
80000e44: 37 05 01 00  	lui	a0, 16
80000e48: 13 05 f5 ff  	addi	a0, a0, -1
80000e4c: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80000e50: 13 0d 24 00  	addi	s10, s0, 2
80000e54: 93 0c 0c 00  	mv	s9, s8
80000e58: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80000e5c: 03 45 04 00  	lbu	a0, 0(s0)
80000e60: e3 04 05 30  	beqz	a0, 0x80001968 <.LBB1_124+0x3b0>
80000e64: 63 08 65 03  	beq	a0, s6, 0x80000e94 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80000e68: 93 84 1c 00  	addi	s1, s9, 1
80000e6c: 93 05 0a 00  	mv	a1, s4
80000e70: 13 86 0c 00  	mv	a2, s9
80000e74: 93 86 0a 00  	mv	a3, s5
80000e78: e7 00 09 00  	jalr	s2
;       format++;
80000e7c: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80000e80: 13 0d 1d 00  	addi	s10, s10, 1
80000e84: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80000e88: 03 45 04 00  	lbu	a0, 0(s0)
80000e8c: e3 1c 05 fc  	bnez	a0, 0x80000e64 <.LBB1_183+0x44>
80000e90: 6f 00 90 2d  	j	0x80001968 <.LBB1_124+0x3b0>
;     flags = 0U;
80000e94: 13 04 00 00  	mv	s0, zero
80000e98: 6f 00 00 01  	j	0x80000ea8 <.LBB1_9+0x8>

80000e9c <.LBB1_8>:
80000e9c: 93 05 00 01  	addi	a1, zero, 16

80000ea0 <.LBB1_9>:
80000ea0: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80000ea4: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80000ea8: 03 45 fd ff  	lbu	a0, -1(s10)
80000eac: 93 05 05 fe  	addi	a1, a0, -32
80000eb0: 63 ec bd 02  	bltu	s11, a1, 0x80000ee8 <.LBB1_15>
80000eb4: 93 95 25 00  	slli	a1, a1, 2

80000eb8 <.LBB1_184>:
80000eb8: 17 26 00 00  	auipc	a2, 2
80000ebc: 13 06 06 21  	addi	a2, a2, 528
80000ec0: b3 85 c5 00  	add	a1, a1, a2
80000ec4: 03 a6 05 00  	lw	a2, 0(a1)
80000ec8: 93 05 10 00  	addi	a1, zero, 1
80000ecc: 67 00 06 00  	jr	a2

80000ed0 <.LBB1_12>:
80000ed0: 93 05 80 00  	addi	a1, zero, 8
80000ed4: 6f f0 df fc  	j	0x80000ea0 <.LBB1_9>

80000ed8 <.LBB1_13>:
80000ed8: 93 05 40 00  	addi	a1, zero, 4
80000edc: 6f f0 5f fc  	j	0x80000ea0 <.LBB1_9>

80000ee0 <.LBB1_14>:
80000ee0: 93 05 20 00  	addi	a1, zero, 2
80000ee4: 6f f0 df fb  	j	0x80000ea0 <.LBB1_9>

80000ee8 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80000ee8: 93 05 05 fd  	addi	a1, a0, -48
80000eec: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80000ef0: 93 05 fd ff  	addi	a1, s10, -1
80000ef4: 93 06 90 00  	addi	a3, zero, 9
80000ef8: 63 ee c6 06  	bltu	a3, a2, 0x80000f74 <.LBB1_15+0x8c>
80000efc: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000f00: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000f04: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000f08: b3 06 8b 03  	mul	a3, s6, s8
80000f0c: 93 85 15 00  	addi	a1, a1, 1
80000f10: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000f14: 93 06 05 fd  	addi	a3, a0, -48
80000f18: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000f1c: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80000f20: e3 e0 86 ff  	bltu	a3, s8, 0x80000f00 <.LBB1_15+0x18>
80000f24: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000f28: 63 16 75 0b  	bne	a0, s7, 0x80000fd4 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80000f2c: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80000f30: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80000f34: 93 05 05 fd  	addi	a1, a0, -48
80000f38: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80000f3c: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80000f40: 93 06 90 00  	addi	a3, zero, 9
80000f44: 63 e0 c6 06  	bltu	a3, a2, 0x80000fa4 <.LBB1_15+0xbc>
80000f48: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000f4c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000f50: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000f54: b3 86 8b 03  	mul	a3, s7, s8
80000f58: 93 85 15 00  	addi	a1, a1, 1
80000f5c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000f60: 93 06 05 fd  	addi	a3, a0, -48
80000f64: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000f68: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80000f6c: e3 e0 86 ff  	bltu	a3, s8, 0x80000f4c <.LBB1_15+0x64>
80000f70: 6f 00 00 07  	j	0x80000fe0 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80000f74: 13 06 a0 02  	addi	a2, zero, 42
80000f78: 63 18 c5 04  	bne	a0, a2, 0x80000fc8 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80000f7c: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80000f80: 63 d4 05 00  	bgez	a1, 0x80000f88 <.LBB1_15+0xa0>
80000f84: 13 64 24 00  	ori	s0, s0, 2
80000f88: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80000f8c: 03 45 0d 00  	lbu	a0, 0(s10)
80000f90: 13 d6 f5 41  	srai	a2, a1, 31
80000f94: b3 85 c5 00  	add	a1, a1, a2
80000f98: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80000f9c: e3 08 75 f9  	beq	a0, s7, 0x80000f2c <.LBB1_15+0x44>
80000fa0: 6f 00 40 03  	j	0x80000fd4 <.LBB1_15+0xec>
;       else if (*format == '*') {
80000fa4: 13 06 a0 02  	addi	a2, zero, 42
80000fa8: 63 1a c5 02  	bne	a0, a2, 0x80000fdc <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80000fac: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80000fb0: 63 44 70 01  	bgtz	s7, 0x80000fb8 <.LBB1_15+0xd0>
80000fb4: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80000fb8: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80000fbc: 13 0d 2d 00  	addi	s10, s10, 2
80000fc0: 93 89 49 00  	addi	s3, s3, 4
80000fc4: 6f 00 00 02  	j	0x80000fe4 <.LBB1_15+0xfc>
80000fc8: 13 0b 00 00  	mv	s6, zero
80000fcc: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000fd0: e3 0e 75 f5  	beq	a0, s7, 0x80000f2c <.LBB1_15+0x44>
80000fd4: 93 0b 00 00  	mv	s7, zero
80000fd8: 6f 00 c0 00  	j	0x80000fe4 <.LBB1_15+0xfc>
80000fdc: 93 0b 00 00  	mv	s7, zero
80000fe0: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80000fe4: 93 05 85 f9  	addi	a1, a0, -104
80000fe8: 13 d6 15 00  	srli	a2, a1, 1
80000fec: 93 95 f5 01  	slli	a1, a1, 31
80000ff0: b3 e5 c5 00  	or	a1, a1, a2
80000ff4: 13 06 90 00  	addi	a2, zero, 9
80000ff8: 63 62 b6 06  	bltu	a2, a1, 0x8000105c <.LBB1_42>
80000ffc: 93 95 25 00  	slli	a1, a1, 2

80001000 <.LBB1_185>:
80001000: 17 26 00 00  	auipc	a2, 2
80001004: 13 06 c6 10  	addi	a2, a2, 268
80001008: b3 85 c5 00  	add	a1, a1, a2
8000100c: 83 a6 05 00  	lw	a3, 0(a1)
80001010: 93 05 10 00  	addi	a1, zero, 1
80001014: 13 06 00 10  	addi	a2, zero, 256
80001018: 67 80 06 00  	jr	a3

8000101c <.LBB1_36>:
;         if (*format == 'h') {
8000101c: 03 45 1d 00  	lbu	a0, 1(s10)
80001020: 93 05 80 06  	addi	a1, zero, 104
80001024: 63 12 b5 12  	bne	a0, a1, 0x80001148 <.LBB1_53+0x48>
80001028: 93 05 20 00  	addi	a1, zero, 2
8000102c: 13 06 00 0c  	addi	a2, zero, 192
80001030: 6f 00 00 02  	j	0x80001050 <.LBB1_41>

80001034 <.LBB1_38>:
80001034: 13 06 00 20  	addi	a2, zero, 512
80001038: 6f 00 80 01  	j	0x80001050 <.LBB1_41>

8000103c <.LBB1_39>:
;         if (*format == 'l') {
8000103c: 03 45 1d 00  	lbu	a0, 1(s10)
80001040: 93 05 c0 06  	addi	a1, zero, 108
80001044: 63 18 b5 10  	bne	a0, a1, 0x80001154 <.LBB1_53+0x54>
80001048: 93 05 20 00  	addi	a1, zero, 2
8000104c: 13 06 00 30  	addi	a2, zero, 768

80001050 <.LBB1_41>:
80001050: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001054: 03 45 0d 00  	lbu	a0, 0(s10)
80001058: 33 64 c4 00  	or	s0, s0, a2

8000105c <.LBB1_42>:
;     switch (*format) {
8000105c: 93 05 b5 fd  	addi	a1, a0, -37
80001060: 13 06 30 05  	addi	a2, zero, 83
80001064: 63 64 b6 10  	bltu	a2, a1, 0x8000116c <.LBB1_59>
80001068: 93 95 25 00  	slli	a1, a1, 2

8000106c <.LBB1_186>:
8000106c: 17 26 00 00  	auipc	a2, 2
80001070: 13 06 86 0c  	addi	a2, a2, 200
80001074: b3 85 c5 00  	add	a1, a1, a2
80001078: 03 a6 05 00  	lw	a2, 0(a1)
8000107c: 93 05 80 00  	addi	a1, zero, 8
80001080: 13 0c 00 01  	addi	s8, zero, 16
80001084: 67 00 06 00  	jr	a2

80001088 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001088: 13 74 f4 fe  	andi	s0, s0, -17
8000108c: 13 0c a0 00  	addi	s8, zero, 10

80001090 <.LBB1_45>:
;         if (*format == 'X') {
80001090: 93 05 80 05  	addi	a1, zero, 88
80001094: 63 14 b5 00  	bne	a0, a1, 0x8000109c <.LBB1_45+0xc>
80001098: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
8000109c: 93 05 40 06  	addi	a1, zero, 100
800010a0: 63 08 b5 0e  	beq	a0, a1, 0x80001190 <.LBB1_62+0x8>
800010a4: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800010a8: 13 06 90 06  	addi	a2, zero, 105
800010ac: 63 02 c5 0e  	beq	a0, a2, 0x80001190 <.LBB1_62+0x8>
800010b0: 6f 00 80 0d  	j	0x80001188 <.LBB1_62>

800010b4 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800010b4: 93 05 60 04  	addi	a1, zero, 70
800010b8: 63 14 b5 00  	bne	a0, a1, 0x800010c0 <.LBB1_49+0xc>
800010bc: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800010c0: 13 85 79 00  	addi	a0, s3, 7
800010c4: 13 75 85 ff  	andi	a0, a0, -8
800010c8: 07 35 05 00  	fld	fa0, 0(a0)
800010cc: 93 09 85 00  	addi	s3, a0, 8
800010d0: 13 05 09 00  	mv	a0, s2
800010d4: 93 05 0a 00  	mv	a1, s4
800010d8: 13 86 0c 00  	mv	a2, s9
800010dc: 93 86 0a 00  	mv	a3, s5
800010e0: 13 87 0b 00  	mv	a4, s7
800010e4: 93 07 0b 00  	mv	a5, s6
800010e8: 13 08 04 00  	mv	a6, s0
800010ec: 97 10 00 00  	auipc	ra, 1
800010f0: e7 80 80 98  	jalr	-1656(ra)
800010f4: 6f 00 00 7c  	j	0x800018b4 <.LBB1_124+0x2fc>

800010f8 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800010f8: 83 25 81 01  	lw	a1, 24(sp)
800010fc: 33 64 b4 00  	or	s0, s0, a1

80001100 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001100: 13 65 25 00  	ori	a0, a0, 2
80001104: 93 05 70 04  	addi	a1, zero, 71
80001108: 63 14 b5 00  	bne	a0, a1, 0x80001110 <.LBB1_53+0x10>
8000110c: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001110: 13 85 79 00  	addi	a0, s3, 7
80001114: 13 75 85 ff  	andi	a0, a0, -8
80001118: 07 35 05 00  	fld	fa0, 0(a0)
8000111c: 93 09 85 00  	addi	s3, a0, 8
80001120: 13 05 09 00  	mv	a0, s2
80001124: 93 05 0a 00  	mv	a1, s4
80001128: 13 86 0c 00  	mv	a2, s9
8000112c: 93 86 0a 00  	mv	a3, s5
80001130: 13 87 0b 00  	mv	a4, s7
80001134: 93 07 0b 00  	mv	a5, s6
80001138: 13 08 04 00  	mv	a6, s0
8000113c: 97 10 00 00  	auipc	ra, 1
80001140: e7 80 80 01  	jalr	24(ra)
80001144: 6f 00 00 77  	j	0x800018b4 <.LBB1_124+0x2fc>
80001148: 13 64 04 08  	ori	s0, s0, 128
8000114c: 13 0d 1d 00  	addi	s10, s10, 1
80001150: 6f f0 df f0  	j	0x8000105c <.LBB1_42>
80001154: 13 64 04 10  	ori	s0, s0, 256
80001158: 13 0d 1d 00  	addi	s10, s10, 1
8000115c: 6f f0 1f f0  	j	0x8000105c <.LBB1_42>

80001160 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001160: 13 8c 1c 00  	addi	s8, s9, 1
80001164: 13 05 50 02  	addi	a0, zero, 37
80001168: 6f 00 80 00  	j	0x80001170 <.LBB1_59+0x4>

8000116c <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
8000116c: 13 8c 1c 00  	addi	s8, s9, 1
80001170: 93 05 0a 00  	mv	a1, s4
80001174: 13 86 0c 00  	mv	a2, s9
80001178: 93 86 0a 00  	mv	a3, s5
8000117c: e7 00 09 00  	jalr	s2
80001180: 6f 00 80 73  	j	0x800018b8 <.LBB1_124+0x300>

80001184 <.LBB1_61>:
80001184: 93 05 20 00  	addi	a1, zero, 2

80001188 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001188: 13 74 34 ff  	andi	s0, s0, -13
8000118c: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001190: 93 75 04 40  	andi	a1, s0, 1024
80001194: 63 84 05 00  	beqz	a1, 0x8000119c <.LBB1_62+0x14>
80001198: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
8000119c: 93 05 90 06  	addi	a1, zero, 105
800011a0: 63 06 b5 00  	beq	a0, a1, 0x800011ac <.LBB1_62+0x24>
800011a4: 93 05 40 06  	addi	a1, zero, 100
800011a8: 63 1c b5 12  	bne	a0, a1, 0x800012e0 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800011ac: 13 75 04 20  	andi	a0, s0, 512
800011b0: 63 16 05 02  	bnez	a0, 0x800011dc <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800011b4: 13 75 04 10  	andi	a0, s0, 256
800011b8: 63 1c 05 14  	bnez	a0, 0x80001310 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800011bc: 13 75 04 04  	andi	a0, s0, 64
800011c0: 63 18 05 4e  	bnez	a0, 0x800016b0 <.LBB1_124+0xf8>
800011c4: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800011c8: 93 75 04 08  	andi	a1, s0, 128
800011cc: 63 84 05 4e  	beqz	a1, 0x800016b4 <.LBB1_124+0xfc>
800011d0: 13 15 08 01  	slli	a0, a6, 16
800011d4: 13 58 05 41  	srai	a6, a0, 16
800011d8: 6f 00 c0 4d  	j	0x800016b4 <.LBB1_124+0xfc>
800011dc: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800011e0: 13 85 79 00  	addi	a0, s3, 7
800011e4: 13 75 85 ff  	andi	a0, a0, -8
800011e8: 83 29 05 00  	lw	s3, 0(a0)
800011ec: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800011f0: 13 65 45 00  	ori	a0, a0, 4
800011f4: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800011f8: 23 24 a1 00  	sw	a0, 8(sp)
800011fc: 33 e5 a9 00  	or	a0, s3, a0
80001200: 63 14 05 00  	bnez	a0, 0x80001208 <.LBB1_62+0x80>
80001204: 13 74 f4 fe  	andi	s0, s0, -17
80001208: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000120c: 93 75 04 40  	andi	a1, s0, 1024
80001210: 93 d5 a5 00  	srli	a1, a1, 10
80001214: 33 75 b5 00  	and	a0, a0, a1
80001218: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000121c: 63 14 05 0a  	bnez	a0, 0x800012c4 <.LBB1_62+0x13c>
80001220: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001224: 63 da 04 00  	bgez	s1, 0x80001238 <.LBB1_62+0xb0>
80001228: 33 35 30 01  	snez	a0, s3
8000122c: b3 09 30 41  	neg	s3, s3
80001230: 33 85 a4 00  	add	a0, s1, a0
80001234: b3 04 a0 40  	neg	s1, a0
80001238: 13 09 00 00  	mv	s2, zero
8000123c: 13 75 04 02  	andi	a0, s0, 32
80001240: 13 45 15 06  	xori	a0, a0, 97
80001244: 13 05 65 0f  	addi	a0, a0, 246
80001248: 23 2a a1 00  	sw	a0, 20(sp)
8000124c: 6f 00 40 02  	j	0x80001270 <.LBB1_62+0xe8>
80001250: 13 06 10 00  	addi	a2, zero, 1
80001254: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001258: 93 36 f9 01  	sltiu	a3, s2, 31
8000125c: 33 f6 c6 00  	and	a2, a3, a2
80001260: 13 89 07 00  	mv	s2, a5
80001264: 93 09 05 00  	mv	s3, a0
80001268: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000126c: 63 0c 06 04  	beqz	a2, 0x800012c4 <.LBB1_62+0x13c>
;       value /= base;
80001270: 13 85 09 00  	mv	a0, s3
80001274: 93 85 04 00  	mv	a1, s1
80001278: 13 06 0c 00  	mv	a2, s8
8000127c: 93 06 00 00  	mv	a3, zero
80001280: 97 f0 ff ff  	auipc	ra, 1048575
80001284: e7 80 00 d8  	jalr	-640(ra)
80001288: 33 06 85 03  	mul	a2, a0, s8
8000128c: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001290: 13 77 e6 0f  	andi	a4, a2, 254
80001294: 93 06 00 03  	addi	a3, zero, 48
80001298: 93 07 a0 00  	addi	a5, zero, 10
8000129c: 63 64 f7 00  	bltu	a4, a5, 0x800012a4 <.LBB1_62+0x11c>
800012a0: 83 26 41 01  	lw	a3, 20(sp)
800012a4: 33 86 c6 00  	add	a2, a3, a2
800012a8: 93 06 c1 01  	addi	a3, sp, 28
800012ac: b3 86 26 01  	add	a3, a3, s2
800012b0: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800012b4: e3 9e 04 f8  	bnez	s1, 0x80001250 <.LBB1_62+0xc8>
800012b8: 33 b6 89 01  	sltu	a2, s3, s8
800012bc: 13 46 16 00  	xori	a2, a2, 1
800012c0: 6f f0 5f f9  	j	0x80001254 <.LBB1_62+0xcc>
800012c4: 03 25 41 00  	lw	a0, 4(sp)
800012c8: 93 09 85 00  	addi	s3, a0, 8
800012cc: 03 25 81 00  	lw	a0, 8(sp)
800012d0: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800012d4: 13 07 c1 01  	addi	a4, sp, 28
800012d8: 03 29 c1 00  	lw	s2, 12(sp)
800012dc: 6f 00 80 47  	j	0x80001754 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
800012e0: 13 75 04 20  	andi	a0, s0, 512
800012e4: 63 12 05 0c  	bnez	a0, 0x800013a8 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800012e8: 13 75 04 10  	andi	a0, s0, 256
800012ec: 63 1e 05 46  	bnez	a0, 0x80001768 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800012f0: 13 75 04 04  	andi	a0, s0, 64
800012f4: 63 10 05 50  	bnez	a0, 0x800017f4 <.LBB1_124+0x23c>
800012f8: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800012fc: 93 75 04 08  	andi	a1, s0, 128
80001300: 63 8c 05 4e  	beqz	a1, 0x800017f8 <.LBB1_124+0x240>
80001304: 83 25 01 01  	lw	a1, 16(sp)
80001308: 33 75 b5 00  	and	a0, a0, a1
8000130c: 6f 00 c0 4e  	j	0x800017f8 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80001310: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001314: 63 14 08 00  	bnez	a6, 0x8000131c <.LBB1_62+0x194>
80001318: 13 74 f4 fe  	andi	s0, s0, -17
8000131c: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001320: 13 76 04 40  	andi	a2, s0, 1024
80001324: 13 56 a6 00  	srli	a2, a2, 10
80001328: b3 f5 c5 00  	and	a1, a1, a2
8000132c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001330: 63 9c 05 40  	bnez	a1, 0x80001748 <.LBB1_124+0x190>
80001334: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001338: 13 56 f8 41  	srai	a2, a6, 31
8000133c: b3 06 c8 00  	add	a3, a6, a2
80001340: b3 c6 c6 00  	xor	a3, a3, a2
80001344: 13 76 04 02  	andi	a2, s0, 32
80001348: 13 46 16 06  	xori	a2, a2, 97
8000134c: 93 08 66 0f  	addi	a7, a2, 246
80001350: 6f 00 40 03  	j	0x80001384 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001354: 33 05 f6 00  	add	a0, a2, a5
80001358: 93 87 15 00  	addi	a5, a1, 1
8000135c: 13 06 c1 01  	addi	a2, sp, 28
80001360: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001364: b3 b6 86 01  	sltu	a3, a3, s8
80001368: 93 c6 16 00  	xori	a3, a3, 1
8000136c: 93 b5 f5 01  	sltiu	a1, a1, 31
80001370: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001374: 23 00 a6 00  	sb	a0, 0(a2)
80001378: 93 85 07 00  	mv	a1, a5
8000137c: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001380: 63 84 04 3c  	beqz	s1, 0x80001748 <.LBB1_124+0x190>
;       value /= base;
80001384: 33 d7 86 03  	divu	a4, a3, s8
80001388: 33 06 87 03  	mul	a2, a4, s8
8000138c: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001390: 13 f5 e7 0f  	andi	a0, a5, 254
80001394: 13 06 00 03  	addi	a2, zero, 48
80001398: 93 04 a0 00  	addi	s1, zero, 10
8000139c: e3 6c 95 fa  	bltu	a0, s1, 0x80001354 <.LBB1_62+0x1cc>
800013a0: 13 86 08 00  	mv	a2, a7
800013a4: 6f f0 1f fb  	j	0x80001354 <.LBB1_62+0x1cc>
800013a8: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800013ac: 13 85 79 00  	addi	a0, s3, 7
800013b0: 93 75 85 ff  	andi	a1, a0, -8
800013b4: 03 a9 05 00  	lw	s2, 0(a1)
800013b8: 13 e5 45 00  	ori	a0, a1, 4
800013bc: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800013c0: 33 65 39 01  	or	a0, s2, s3
800013c4: 23 24 b1 00  	sw	a1, 8(sp)
800013c8: 63 14 05 00  	bnez	a0, 0x800013d0 <.LBB1_62+0x248>
800013cc: 13 74 f4 fe  	andi	s0, s0, -17
800013d0: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800013d4: 93 75 04 40  	andi	a1, s0, 1024
800013d8: 93 d5 a5 00  	srli	a1, a1, 10
800013dc: 33 75 b5 00  	and	a0, a0, a1
800013e0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800013e4: 63 18 05 08  	bnez	a0, 0x80001474 <.LBB1_62+0x2ec>
800013e8: 93 04 00 00  	mv	s1, zero
800013ec: 13 75 04 02  	andi	a0, s0, 32
800013f0: 13 45 15 06  	xori	a0, a0, 97
800013f4: 13 05 65 0f  	addi	a0, a0, 246
800013f8: 23 2a a1 00  	sw	a0, 20(sp)
800013fc: 6f 00 40 02  	j	0x80001420 <.LBB1_62+0x298>
80001400: 13 06 10 00  	addi	a2, zero, 1
80001404: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001408: 93 b6 f4 01  	sltiu	a3, s1, 31
8000140c: 33 f6 c6 00  	and	a2, a3, a2
80001410: 93 84 07 00  	mv	s1, a5
80001414: 13 09 05 00  	mv	s2, a0
80001418: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000141c: 63 0c 06 04  	beqz	a2, 0x80001474 <.LBB1_62+0x2ec>
;       value /= base;
80001420: 13 05 09 00  	mv	a0, s2
80001424: 93 85 09 00  	mv	a1, s3
80001428: 13 06 0c 00  	mv	a2, s8
8000142c: 93 06 00 00  	mv	a3, zero
80001430: 97 f0 ff ff  	auipc	ra, 1048575
80001434: e7 80 00 bd  	jalr	-1072(ra)
80001438: 33 06 85 03  	mul	a2, a0, s8
8000143c: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001440: 13 77 e6 0f  	andi	a4, a2, 254
80001444: 93 06 00 03  	addi	a3, zero, 48
80001448: 93 07 a0 00  	addi	a5, zero, 10
8000144c: 63 64 f7 00  	bltu	a4, a5, 0x80001454 <.LBB1_62+0x2cc>
80001450: 83 26 41 01  	lw	a3, 20(sp)
80001454: 33 86 c6 00  	add	a2, a3, a2
80001458: 93 06 c1 01  	addi	a3, sp, 28
8000145c: b3 86 96 00  	add	a3, a3, s1
80001460: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001464: e3 9e 09 f8  	bnez	s3, 0x80001400 <.LBB1_62+0x278>
80001468: 33 36 89 01  	sltu	a2, s2, s8
8000146c: 13 46 16 00  	xori	a2, a2, 1
80001470: 6f f0 5f f9  	j	0x80001404 <.LBB1_62+0x27c>
80001474: 03 25 81 00  	lw	a0, 8(sp)
80001478: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000147c: 13 07 c1 01  	addi	a4, sp, 28
80001480: 03 29 c1 00  	lw	s2, 12(sp)
80001484: 6f 00 40 40  	j	0x80001888 <.LBB1_124+0x2d0>

80001488 <.LBB1_108>:
80001488: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
8000148c: 13 79 24 00  	andi	s2, s0, 2
80001490: 93 04 10 00  	addi	s1, zero, 1
80001494: 63 1e 09 02  	bnez	s2, 0x800014d0 <.LBB1_108+0x48>
80001498: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
8000149c: 63 6a 9b 02  	bltu	s6, s1, 0x800014d0 <.LBB1_108+0x48>
800014a0: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800014a4: 13 0c fb ff  	addi	s8, s6, -1
800014a8: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800014ac: 33 86 8c 00  	add	a2, s9, s0
800014b0: 13 05 00 02  	addi	a0, zero, 32
800014b4: 93 05 0a 00  	mv	a1, s4
800014b8: 93 86 0a 00  	mv	a3, s5
800014bc: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800014c0: 13 04 14 00  	addi	s0, s0, 1
800014c4: e3 14 8c fe  	bne	s8, s0, 0x800014ac <.LBB1_108+0x24>
800014c8: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800014cc: b3 8c 8c 00  	add	s9, s9, s0
800014d0: 03 c5 09 00  	lbu	a0, 0(s3)
800014d4: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800014d8: 93 89 49 00  	addi	s3, s3, 4
800014dc: 13 8c 1c 00  	addi	s8, s9, 1
800014e0: 93 05 0a 00  	mv	a1, s4
800014e4: 13 86 0c 00  	mv	a2, s9
800014e8: 93 86 0a 00  	mv	a3, s5
800014ec: 13 89 0b 00  	mv	s2, s7
800014f0: e7 80 0b 00  	jalr	s7
800014f4: 33 b5 64 01  	sltu	a0, s1, s6
800014f8: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800014fc: 33 65 a4 00  	or	a0, s0, a0
80001500: 63 1c 05 3a  	bnez	a0, 0x800018b8 <.LBB1_124+0x300>
;           while (l++ < width) {
80001504: 33 04 9b 40  	sub	s0, s6, s1
80001508: 93 0b e0 02  	addi	s7, zero, 46
8000150c: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001510: 13 0c 1c 00  	addi	s8, s8, 1
80001514: 13 05 00 02  	addi	a0, zero, 32
80001518: 93 05 0a 00  	mv	a1, s4
8000151c: 93 86 0a 00  	mv	a3, s5
80001520: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001524: 13 04 f4 ff  	addi	s0, s0, -1
80001528: e3 12 04 fe  	bnez	s0, 0x8000150c <.LBB1_108+0x84>
8000152c: 13 0b 50 02  	addi	s6, zero, 37
80001530: 13 04 1d 00  	addi	s0, s10, 1
80001534: 6f f0 df 91  	j	0x80000e50 <.LBB1_183+0x30>

80001538 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001538: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
8000153c: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80001540: 63 14 05 00  	bnez	a0, 0x80001548 <.LBB1_117+0x10>
80001544: 93 fe fe fe  	andi	t4, t4, -17
80001548: 93 04 a0 00  	addi	s1, zero, 10
8000154c: 13 04 f0 00  	addi	s0, zero, 15
80001550: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001554: 13 f6 0e 40  	andi	a2, t4, 1024
80001558: 13 56 a6 00  	srli	a2, a2, 10
8000155c: b3 f5 c5 00  	and	a1, a1, a2
80001560: 93 07 00 00  	mv	a5, zero
80001564: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001568: 63 98 05 10  	bnez	a1, 0x80001678 <.LBB1_124+0xc0>
8000156c: 93 05 00 00  	mv	a1, zero
80001570: 6f 00 40 03  	j	0x800015a4 <.LBB1_117+0x6c>
80001574: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001578: 33 06 d6 00  	add	a2, a2, a3
8000157c: 93 87 15 00  	addi	a5, a1, 1
80001580: 93 06 c1 01  	addi	a3, sp, 28
80001584: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001588: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
8000158c: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001590: 93 b5 f5 01  	sltiu	a1, a1, 31
80001594: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001598: 23 80 c6 00  	sb	a2, 0(a3)
8000159c: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800015a0: 63 0c 07 0c  	beqz	a4, 0x80001678 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800015a4: 93 76 e5 00  	andi	a3, a0, 14
800015a8: 13 06 00 03  	addi	a2, zero, 48
800015ac: e3 e4 96 fc  	bltu	a3, s1, 0x80001574 <.LBB1_117+0x3c>
800015b0: 13 06 70 03  	addi	a2, zero, 55
800015b4: 6f f0 1f fc  	j	0x80001574 <.LBB1_117+0x3c>

800015b8 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800015b8: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800015bc: 03 c5 07 00  	lbu	a0, 0(a5)
800015c0: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800015c4: 63 0c 05 02  	beqz	a0, 0x800015fc <.LBB1_124+0x44>
800015c8: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800015cc: 63 84 0b 00  	beqz	s7, 0x800015d4 <.LBB1_124+0x1c>
800015d0: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800015d4: 93 85 f5 ff  	addi	a1, a1, -1
800015d8: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800015dc: 03 c7 16 00  	lbu	a4, 1(a3)
800015e0: 13 86 16 00  	addi	a2, a3, 1
800015e4: b3 36 e0 00  	snez	a3, a4
800015e8: 33 37 b0 00  	snez	a4, a1
800015ec: 33 77 d7 00  	and	a4, a4, a3
800015f0: 93 85 f5 ff  	addi	a1, a1, -1
800015f4: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800015f8: e3 12 07 fe  	bnez	a4, 0x800015dc <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800015fc: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80001600: 93 75 04 40  	andi	a1, s0, 1024
80001604: 93 b4 15 00  	seqz	s1, a1
80001608: 23 2a c1 00  	sw	a2, 20(sp)
8000160c: b3 35 76 01  	sltu	a1, a2, s7
80001610: b3 e5 b4 00  	or	a1, s1, a1
80001614: 63 94 05 00  	bnez	a1, 0x8000161c <.LBB1_124+0x64>
80001618: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
8000161c: 93 75 24 00  	andi	a1, s0, 2
80001620: 23 26 b1 00  	sw	a1, 12(sp)
80001624: 63 96 05 2a  	bnez	a1, 0x800018d0 <.LBB1_124+0x318>
80001628: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
8000162c: 63 fe 65 29  	bgeu	a1, s6, 0x800018c8 <.LBB1_124+0x310>
80001630: 23 24 f1 00  	sw	a5, 8(sp)
80001634: 13 04 00 00  	mv	s0, zero
80001638: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
8000163c: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80001640: 33 86 8c 00  	add	a2, s9, s0
80001644: 13 05 00 02  	addi	a0, zero, 32
80001648: 93 05 0a 00  	mv	a1, s4
8000164c: 93 86 0a 00  	mv	a3, s5
80001650: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001654: 13 04 14 00  	addi	s0, s0, 1
80001658: e3 14 89 fe  	bne	s2, s0, 0x80001640 <.LBB1_124+0x88>
8000165c: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001660: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80001664: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001668: 23 2a b1 00  	sw	a1, 20(sp)
8000166c: b3 8c 8c 00  	add	s9, s9, s0
80001670: 13 09 0c 00  	mv	s2, s8
80001674: 6f 00 c0 25  	j	0x800018d0 <.LBB1_124+0x318>
80001678: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000167c: 13 07 c1 01  	addi	a4, sp, 28
80001680: 93 08 00 01  	addi	a7, zero, 16
80001684: 13 0e 80 00  	addi	t3, zero, 8
80001688: 13 05 09 00  	mv	a0, s2
8000168c: 93 05 0a 00  	mv	a1, s4
80001690: 13 86 0c 00  	mv	a2, s9
80001694: 93 86 0a 00  	mv	a3, s5
80001698: 13 08 00 00  	mv	a6, zero
8000169c: 93 83 0b 00  	mv	t2, s7
800016a0: 97 10 00 00  	auipc	ra, 1
800016a4: e7 80 00 fa  	jalr	-96(ra)
800016a8: 13 0c 05 00  	mv	s8, a0
800016ac: 6f 00 00 21  	j	0x800018bc <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800016b0: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800016b4: 63 14 08 00  	bnez	a6, 0x800016bc <.LBB1_124+0x104>
800016b8: 13 74 f4 fe  	andi	s0, s0, -17
800016bc: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800016c0: 13 76 04 40  	andi	a2, s0, 1024
800016c4: 13 56 a6 00  	srli	a2, a2, 10
800016c8: b3 f5 c5 00  	and	a1, a1, a2
800016cc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800016d0: 63 9c 05 06  	bnez	a1, 0x80001748 <.LBB1_124+0x190>
800016d4: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800016d8: 13 56 f8 41  	srai	a2, a6, 31
800016dc: b3 06 c8 00  	add	a3, a6, a2
800016e0: b3 c6 c6 00  	xor	a3, a3, a2
800016e4: 13 76 04 02  	andi	a2, s0, 32
800016e8: 13 46 16 06  	xori	a2, a2, 97
800016ec: 93 08 66 0f  	addi	a7, a2, 246
800016f0: 6f 00 40 03  	j	0x80001724 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016f4: 33 05 f6 00  	add	a0, a2, a5
800016f8: 93 87 15 00  	addi	a5, a1, 1
800016fc: 13 06 c1 01  	addi	a2, sp, 28
80001700: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001704: b3 b6 86 01  	sltu	a3, a3, s8
80001708: 93 c6 16 00  	xori	a3, a3, 1
8000170c: 93 b5 f5 01  	sltiu	a1, a1, 31
80001710: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001714: 23 00 a6 00  	sb	a0, 0(a2)
80001718: 93 85 07 00  	mv	a1, a5
8000171c: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001720: 63 84 04 02  	beqz	s1, 0x80001748 <.LBB1_124+0x190>
;       value /= base;
80001724: 33 d7 86 03  	divu	a4, a3, s8
80001728: 33 06 87 03  	mul	a2, a4, s8
8000172c: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001730: 13 f5 e7 0f  	andi	a0, a5, 254
80001734: 13 06 00 03  	addi	a2, zero, 48
80001738: 93 04 a0 00  	addi	s1, zero, 10
8000173c: e3 6c 95 fa  	bltu	a0, s1, 0x800016f4 <.LBB1_124+0x13c>
80001740: 13 86 08 00  	mv	a2, a7
80001744: 6f f0 1f fb  	j	0x800016f4 <.LBB1_124+0x13c>
80001748: 93 89 49 00  	addi	s3, s3, 4
8000174c: 13 58 f8 01  	srli	a6, a6, 31
80001750: 13 07 c1 01  	addi	a4, sp, 28
80001754: 13 05 09 00  	mv	a0, s2
80001758: 93 05 0a 00  	mv	a1, s4
8000175c: 13 86 0c 00  	mv	a2, s9
80001760: 93 86 0a 00  	mv	a3, s5
80001764: 6f 00 80 13  	j	0x8000189c <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001768: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
8000176c: 63 14 05 00  	bnez	a0, 0x80001774 <.LBB1_124+0x1bc>
80001770: 13 74 f4 fe  	andi	s0, s0, -17
80001774: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001778: 13 76 04 40  	andi	a2, s0, 1024
8000177c: 13 56 a6 00  	srli	a2, a2, 10
80001780: b3 f5 c5 00  	and	a1, a1, a2
80001784: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001788: 63 9c 05 0e  	bnez	a1, 0x80001880 <.LBB1_124+0x2c8>
8000178c: 13 06 00 00  	mv	a2, zero
80001790: 93 75 04 02  	andi	a1, s0, 32
80001794: 93 c5 15 06  	xori	a1, a1, 97
80001798: 13 88 65 0f  	addi	a6, a1, 246
8000179c: 6f 00 40 03  	j	0x800017d0 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800017a0: 33 87 e7 00  	add	a4, a5, a4
800017a4: 93 07 16 00  	addi	a5, a2, 1
800017a8: 93 05 c1 01  	addi	a1, sp, 28
800017ac: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800017b0: 33 35 85 01  	sltu	a0, a0, s8
800017b4: 13 45 15 00  	xori	a0, a0, 1
800017b8: 13 36 f6 01  	sltiu	a2, a2, 31
800017bc: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800017c0: 23 80 e4 00  	sb	a4, 0(s1)
800017c4: 13 86 07 00  	mv	a2, a5
800017c8: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800017cc: 63 8a 05 0a  	beqz	a1, 0x80001880 <.LBB1_124+0x2c8>
;       value /= base;
800017d0: b3 56 85 03  	divu	a3, a0, s8
800017d4: 33 87 86 03  	mul	a4, a3, s8
800017d8: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800017dc: 93 74 e7 0f  	andi	s1, a4, 254
800017e0: 93 07 00 03  	addi	a5, zero, 48
800017e4: 93 05 a0 00  	addi	a1, zero, 10
800017e8: e3 ec b4 fa  	bltu	s1, a1, 0x800017a0 <.LBB1_124+0x1e8>
800017ec: 93 07 08 00  	mv	a5, a6
800017f0: 6f f0 1f fb  	j	0x800017a0 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800017f4: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800017f8: 63 14 05 00  	bnez	a0, 0x80001800 <.LBB1_124+0x248>
800017fc: 13 74 f4 fe  	andi	s0, s0, -17
80001800: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001804: 13 76 04 40  	andi	a2, s0, 1024
80001808: 13 56 a6 00  	srli	a2, a2, 10
8000180c: b3 f5 c5 00  	and	a1, a1, a2
80001810: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001814: 63 96 05 06  	bnez	a1, 0x80001880 <.LBB1_124+0x2c8>
80001818: 13 06 00 00  	mv	a2, zero
8000181c: 93 75 04 02  	andi	a1, s0, 32
80001820: 93 c5 15 06  	xori	a1, a1, 97
80001824: 13 88 65 0f  	addi	a6, a1, 246
80001828: 6f 00 40 03  	j	0x8000185c <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000182c: 33 87 e7 00  	add	a4, a5, a4
80001830: 93 07 16 00  	addi	a5, a2, 1
80001834: 93 05 c1 01  	addi	a1, sp, 28
80001838: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000183c: 33 35 85 01  	sltu	a0, a0, s8
80001840: 13 45 15 00  	xori	a0, a0, 1
80001844: 13 36 f6 01  	sltiu	a2, a2, 31
80001848: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000184c: 23 80 e4 00  	sb	a4, 0(s1)
80001850: 13 86 07 00  	mv	a2, a5
80001854: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001858: 63 84 05 02  	beqz	a1, 0x80001880 <.LBB1_124+0x2c8>
;       value /= base;
8000185c: b3 56 85 03  	divu	a3, a0, s8
80001860: 33 87 86 03  	mul	a4, a3, s8
80001864: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001868: 93 74 e7 0f  	andi	s1, a4, 254
8000186c: 93 07 00 03  	addi	a5, zero, 48
80001870: 93 05 a0 00  	addi	a1, zero, 10
80001874: e3 ec b4 fa  	bltu	s1, a1, 0x8000182c <.LBB1_124+0x274>
80001878: 93 07 08 00  	mv	a5, a6
8000187c: 6f f0 1f fb  	j	0x8000182c <.LBB1_124+0x274>
80001880: 93 89 49 00  	addi	s3, s3, 4
80001884: 13 07 c1 01  	addi	a4, sp, 28
80001888: 13 05 09 00  	mv	a0, s2
8000188c: 93 05 0a 00  	mv	a1, s4
80001890: 13 86 0c 00  	mv	a2, s9
80001894: 93 86 0a 00  	mv	a3, s5
80001898: 13 08 00 00  	mv	a6, zero
8000189c: 93 08 0c 00  	mv	a7, s8
800018a0: 93 83 0b 00  	mv	t2, s7
800018a4: 13 0e 0b 00  	mv	t3, s6
800018a8: 93 0e 04 00  	mv	t4, s0
800018ac: 97 10 00 00  	auipc	ra, 1
800018b0: e7 80 40 d9  	jalr	-620(ra)
800018b4: 13 0c 05 00  	mv	s8, a0
800018b8: 13 0b 50 02  	addi	s6, zero, 37
800018bc: 93 0b e0 02  	addi	s7, zero, 46
800018c0: 13 04 1d 00  	addi	s0, s10, 1
800018c4: 6f f0 cf d8  	j	0x80000e50 <.LBB1_183+0x30>
800018c8: 93 85 15 00  	addi	a1, a1, 1
800018cc: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800018d0: 63 00 05 04  	beqz	a0, 0x80001910 <.LBB1_124+0x358>
800018d4: 13 84 17 00  	addi	s0, a5, 1
800018d8: 6f 00 00 03  	j	0x80001908 <.LBB1_124+0x350>
800018dc: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800018e0: 13 8c 1c 00  	addi	s8, s9, 1
800018e4: 13 75 f5 0f  	andi	a0, a0, 255
800018e8: 93 05 0a 00  	mv	a1, s4
800018ec: 13 86 0c 00  	mv	a2, s9
800018f0: 93 86 0a 00  	mv	a3, s5
800018f4: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800018f8: 03 45 04 00  	lbu	a0, 0(s0)
800018fc: 13 04 14 00  	addi	s0, s0, 1
80001900: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001904: 63 08 05 00  	beqz	a0, 0x80001914 <.LBB1_124+0x35c>
80001908: e3 9c 04 fc  	bnez	s1, 0x800018e0 <.LBB1_124+0x328>
8000190c: e3 98 0b fc  	bnez	s7, 0x800018dc <.LBB1_124+0x324>
80001910: 13 8c 0c 00  	mv	s8, s9
80001914: 03 25 c1 00  	lw	a0, 12(sp)
80001918: 13 35 15 00  	seqz	a0, a0
8000191c: 03 26 41 01  	lw	a2, 20(sp)
80001920: b3 35 66 01  	sltu	a1, a2, s6
80001924: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001928: 33 65 b5 00  	or	a0, a0, a1
8000192c: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001930: e3 14 05 f8  	bnez	a0, 0x800018b8 <.LBB1_124+0x300>
;           while (l++ < width) {
80001934: 33 04 cb 40  	sub	s0, s6, a2
80001938: 93 0b e0 02  	addi	s7, zero, 46
8000193c: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001940: 13 0c 1c 00  	addi	s8, s8, 1
80001944: 13 05 00 02  	addi	a0, zero, 32
80001948: 93 05 0a 00  	mv	a1, s4
8000194c: 93 86 0a 00  	mv	a3, s5
80001950: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001954: 13 04 f4 ff  	addi	s0, s0, -1
80001958: e3 12 04 fe  	bnez	s0, 0x8000193c <.LBB1_124+0x384>
8000195c: 13 0b 50 02  	addi	s6, zero, 37
80001960: 13 04 1d 00  	addi	s0, s10, 1
80001964: 6f f0 cf ce  	j	0x80000e50 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001968: 13 86 0c 00  	mv	a2, s9
8000196c: 63 e4 5c 01  	bltu	s9, s5, 0x80001974 <.LBB1_124+0x3bc>
80001970: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001974: 13 05 00 00  	mv	a0, zero
80001978: 93 05 0a 00  	mv	a1, s4
8000197c: 93 86 0a 00  	mv	a3, s5
80001980: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001984: 13 85 0c 00  	mv	a0, s9
80001988: 83 2d c1 03  	lw	s11, 60(sp)
8000198c: 03 2d 01 04  	lw	s10, 64(sp)
80001990: 83 2c 41 04  	lw	s9, 68(sp)
80001994: 03 2c 81 04  	lw	s8, 72(sp)
80001998: 83 2b c1 04  	lw	s7, 76(sp)
8000199c: 03 2b 01 05  	lw	s6, 80(sp)
800019a0: 83 2a 41 05  	lw	s5, 84(sp)
800019a4: 03 2a 81 05  	lw	s4, 88(sp)
800019a8: 83 29 c1 05  	lw	s3, 92(sp)
800019ac: 03 29 01 06  	lw	s2, 96(sp)
800019b0: 83 24 41 06  	lw	s1, 100(sp)
800019b4: 03 24 81 06  	lw	s0, 104(sp)
800019b8: 83 20 c1 06  	lw	ra, 108(sp)
800019bc: 13 01 01 07  	addi	sp, sp, 112
800019c0: 67 80 00 00  	ret

800019c4 <_out_char.llvm.11632292163828655644>:
;   if (character) {
800019c4: 63 04 05 0a  	beqz	a0, 0x80001a6c <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800019c8: f3 25 40 f1  	csrr	a1, mhartid
800019cc: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800019d0: 33 86 c5 02  	mul	a2, a1, a2

800019d4 <.LBB2_6>:
800019d4: 97 26 00 00  	auipc	a3, 2
800019d8: 93 86 06 aa  	addi	a3, a3, -1376
800019dc: b3 05 d6 00  	add	a1, a2, a3
800019e0: 03 a7 05 00  	lw	a4, 0(a1)
800019e4: 93 07 17 00  	addi	a5, a4, 1
800019e8: 23 a0 f5 00  	sw	a5, 0(a1)
800019ec: 33 87 e5 00  	add	a4, a1, a4
800019f0: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800019f4: 03 a7 05 00  	lw	a4, 0(a1)
800019f8: 13 07 47 c0  	addi	a4, a4, -1020
800019fc: 33 37 e0 00  	snez	a4, a4
80001a00: 13 05 65 ff  	addi	a0, a0, -10
80001a04: 33 35 a0 00  	snez	a0, a0
80001a08: 33 75 e5 00  	and	a0, a0, a4
80001a0c: 63 10 05 06  	bnez	a0, 0x80001a6c <.LBB2_8+0x18>
80001a10: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001a14: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001a18: 23 26 05 00  	sw	zero, 12(a0)
80001a1c: 93 06 00 04  	addi	a3, zero, 64
80001a20: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001a24: 23 2a 05 00  	sw	zero, 20(a0)
80001a28: 93 06 10 00  	addi	a3, zero, 1
80001a2c: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001a30: 23 2e 05 00  	sw	zero, 28(a0)
80001a34: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001a38: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001a3c: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001a40: 23 22 05 02  	sw	zero, 36(a0)
80001a44: 23 20 c5 02  	sw	a2, 32(a0)

80001a48 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001a48: 17 25 00 00  	auipc	a0, 2
80001a4c: 13 05 85 8b  	addi	a0, a0, -1864
80001a50: 23 20 d5 00  	sw	a3, 0(a0)

80001a54 <.LBB2_8>:
80001a54: 17 25 00 00  	auipc	a0, 2
80001a58: 13 05 c5 8e  	addi	a0, a0, -1812
;         while (fromhost == 0)
80001a5c: 03 26 05 00  	lw	a2, 0(a0)
80001a60: e3 0e 06 fe  	beqz	a2, 0x80001a5c <.LBB2_8+0x8>
;         fromhost = 0;
80001a64: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001a68: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001a6c: 67 80 00 00  	ret

80001a70 <_out_null>:
; }
80001a70: 67 80 00 00  	ret

80001a74 <_ftoa>:
; {
80001a74: 13 01 01 f9  	addi	sp, sp, -112
80001a78: 23 26 11 06  	sw	ra, 108(sp)
80001a7c: 23 24 81 06  	sw	s0, 104(sp)
80001a80: 23 22 91 06  	sw	s1, 100(sp)
80001a84: 23 20 21 07  	sw	s2, 96(sp)
80001a88: 23 2e 31 05  	sw	s3, 92(sp)
80001a8c: 23 2c 41 05  	sw	s4, 88(sp)
80001a90: 23 2a 51 05  	sw	s5, 84(sp)
80001a94: 23 28 61 05  	sw	s6, 80(sp)
80001a98: 23 26 71 05  	sw	s7, 76(sp)
80001a9c: 23 24 81 05  	sw	s8, 72(sp)
80001aa0: 23 22 91 05  	sw	s9, 68(sp)
80001aa4: 23 20 a1 05  	sw	s10, 64(sp)
80001aa8: 27 3c 81 02  	fsd	fs0, 56(sp)
80001aac: 27 38 91 02  	fsd	fs1, 48(sp)
80001ab0: 27 34 21 03  	fsd	fs2, 40(sp)

80001ab4 <.LBB4_83>:
80001ab4: 97 24 00 00  	auipc	s1, 2
80001ab8: 93 84 44 91  	addi	s1, s1, -1772
80001abc: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80001ac0: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001ac4: 93 0a 08 00  	mv	s5, a6
80001ac8: 13 89 07 00  	mv	s2, a5
80001acc: 93 89 06 00  	mv	s3, a3
80001ad0: 13 0a 06 00  	mv	s4, a2
80001ad4: 13 8b 05 00  	mv	s6, a1
80001ad8: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001adc: 63 98 04 0e  	bnez	s1, 0x80001bcc <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001ae0: 13 f5 2a 00  	andi	a0, s5, 2
80001ae4: 93 f5 3a 00  	andi	a1, s5, 3
80001ae8: b3 35 b0 00  	snez	a1, a1
80001aec: 13 36 59 00  	sltiu	a2, s2, 5
80001af0: b3 65 b6 00  	or	a1, a2, a1
80001af4: 93 5c 15 00  	srli	s9, a0, 1
80001af8: 13 04 0a 00  	mv	s0, s4
80001afc: 63 96 05 02  	bnez	a1, 0x80001b28 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80001b00: 93 04 c9 ff  	addi	s1, s2, -4
80001b04: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001b08: 13 04 16 00  	addi	s0, a2, 1
80001b0c: 13 05 00 02  	addi	a0, zero, 32
80001b10: 93 05 0b 00  	mv	a1, s6
80001b14: 93 86 09 00  	mv	a3, s3
80001b18: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001b1c: 93 84 f4 ff  	addi	s1, s1, -1
80001b20: 13 06 04 00  	mv	a2, s0
80001b24: e3 92 04 fe  	bnez	s1, 0x80001b08 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001b28: 93 04 14 00  	addi	s1, s0, 1
80001b2c: 13 05 d0 02  	addi	a0, zero, 45
80001b30: 93 05 0b 00  	mv	a1, s6
80001b34: 13 06 04 00  	mv	a2, s0
80001b38: 93 86 09 00  	mv	a3, s3
80001b3c: e7 80 0b 00  	jalr	s7
80001b40: 93 0a 24 00  	addi	s5, s0, 2
80001b44: 13 05 90 06  	addi	a0, zero, 105
80001b48: 93 05 0b 00  	mv	a1, s6
80001b4c: 13 86 04 00  	mv	a2, s1
80001b50: 93 86 09 00  	mv	a3, s3
80001b54: e7 80 0b 00  	jalr	s7
80001b58: 13 0c 34 00  	addi	s8, s0, 3
80001b5c: 13 05 e0 06  	addi	a0, zero, 110
80001b60: 93 05 0b 00  	mv	a1, s6
80001b64: 13 86 0a 00  	mv	a2, s5
80001b68: 93 86 09 00  	mv	a3, s3
80001b6c: e7 80 0b 00  	jalr	s7
80001b70: 93 04 44 00  	addi	s1, s0, 4
80001b74: 13 05 60 06  	addi	a0, zero, 102
80001b78: 93 05 0b 00  	mv	a1, s6
80001b7c: 13 06 0c 00  	mv	a2, s8
80001b80: 93 86 09 00  	mv	a3, s3
80001b84: e7 80 0b 00  	jalr	s7
80001b88: 33 85 44 41  	sub	a0, s1, s4
80001b8c: 33 35 25 01  	sltu	a0, a0, s2
80001b90: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001b94: 93 c5 1c 00  	xori	a1, s9, 1
80001b98: 33 e5 a5 00  	or	a0, a1, a0
80001b9c: 63 16 05 56  	bnez	a0, 0x80002108 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001ba0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001ba4: 13 84 14 00  	addi	s0, s1, 1
80001ba8: 13 05 00 02  	addi	a0, zero, 32
80001bac: 93 05 0b 00  	mv	a1, s6
80001bb0: 13 86 04 00  	mv	a2, s1
80001bb4: 93 86 09 00  	mv	a3, s3
80001bb8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001bbc: 33 05 8a 00  	add	a0, s4, s0
80001bc0: 93 04 04 00  	mv	s1, s0
80001bc4: e3 60 25 ff  	bltu	a0, s2, 0x80001ba4 <.LBB4_83+0xf0>
80001bc8: 6f 00 40 54  	j	0x8000210c <.LBB4_90+0x378>
80001bcc: 53 04 a5 22  	fmv.d	fs0, fa0

80001bd0 <.LBB4_84>:
80001bd0: 17 25 00 00  	auipc	a0, 2
80001bd4: 13 05 05 80  	addi	a0, a0, -2048
80001bd8: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001bdc: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001be0: 63 1e 05 00  	bnez	a0, 0x80001bfc <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001be4: 93 f5 4a 00  	andi	a1, s5, 4
80001be8: 13 b5 15 00  	seqz	a0, a1
80001bec: 63 82 05 06  	beqz	a1, 0x80001c50 <.LBB4_88>

80001bf0 <.LBB4_85>:
80001bf0: 17 1c 00 00  	auipc	s8, 1
80001bf4: 13 0c 0c 4c  	addi	s8, s8, 1216
80001bf8: 6f 00 00 06  	j	0x80001c58 <.LBB4_88+0x8>

80001bfc <.LBB4_86>:
80001bfc: 17 15 00 00  	auipc	a0, 1
80001c00: 13 05 c5 7d  	addi	a0, a0, 2012
80001c04: 07 30 05 00  	fld	ft0, 0(a0)

80001c08 <.LBB4_87>:
80001c08: 17 15 00 00  	auipc	a0, 1
80001c0c: 13 05 85 7d  	addi	a0, a0, 2008
80001c10: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001c14: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001c18: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001c1c: 33 75 b5 00  	and	a0, a0, a1
80001c20: 63 1e 05 0e  	bnez	a0, 0x80001d1c <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001c24: 13 85 0b 00  	mv	a0, s7
80001c28: 93 05 0b 00  	mv	a1, s6
80001c2c: 13 06 0a 00  	mv	a2, s4
80001c30: 93 86 09 00  	mv	a3, s3
80001c34: 53 05 84 22  	fmv.d	fa0, fs0
80001c38: 93 07 09 00  	mv	a5, s2
80001c3c: 13 88 0a 00  	mv	a6, s5
80001c40: 97 00 00 00  	auipc	ra, 0
80001c44: e7 80 40 51  	jalr	1300(ra)
80001c48: 13 04 05 00  	mv	s0, a0
80001c4c: 6f 00 00 4c  	j	0x8000210c <.LBB4_90+0x378>

80001c50 <.LBB4_88>:
80001c50: 17 1c 00 00  	auipc	s8, 1
80001c54: 13 0c 1c 47  	addi	s8, s8, 1137
80001c58: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001c5c: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001c60: 13 f5 3a 00  	andi	a0, s5, 3
80001c64: 33 35 a0 00  	snez	a0, a0
80001c68: b3 b5 2c 01  	sltu	a1, s9, s2
80001c6c: 93 c5 15 00  	xori	a1, a1, 1
80001c70: 33 65 b5 00  	or	a0, a0, a1
80001c74: 93 fa 2a 00  	andi	s5, s5, 2
80001c78: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001c7c: 63 16 05 02  	bnez	a0, 0x80001ca8 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80001c80: 33 04 99 41  	sub	s0, s2, s9
80001c84: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001c88: 93 04 16 00  	addi	s1, a2, 1
80001c8c: 13 05 00 02  	addi	a0, zero, 32
80001c90: 93 05 0b 00  	mv	a1, s6
80001c94: 93 86 09 00  	mv	a3, s3
80001c98: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001c9c: 13 04 f4 ff  	addi	s0, s0, -1
80001ca0: 13 86 04 00  	mv	a2, s1
80001ca4: e3 12 04 fe  	bnez	s0, 0x80001c88 <.LBB4_88+0x38>
80001ca8: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001cac: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80001cb0: 33 05 9c 01  	add	a0, s8, s9
80001cb4: 03 45 05 00  	lbu	a0, 0(a0)
80001cb8: 13 86 04 00  	mv	a2, s1
80001cbc: 13 84 fc ff  	addi	s0, s9, -1
80001cc0: 93 84 14 00  	addi	s1, s1, 1
80001cc4: 93 05 0b 00  	mv	a1, s6
80001cc8: 93 86 09 00  	mv	a3, s3
80001ccc: e7 80 0b 00  	jalr	s7
80001cd0: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80001cd4: e3 1e 04 fc  	bnez	s0, 0x80001cb0 <.LBB4_88+0x60>
80001cd8: 33 85 44 41  	sub	a0, s1, s4
80001cdc: 33 35 25 01  	sltu	a0, a0, s2
80001ce0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001ce4: 93 c5 1a 00  	xori	a1, s5, 1
80001ce8: 33 e5 a5 00  	or	a0, a1, a0
80001cec: 63 1e 05 40  	bnez	a0, 0x80002108 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001cf0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001cf4: 13 84 14 00  	addi	s0, s1, 1
80001cf8: 13 05 00 02  	addi	a0, zero, 32
80001cfc: 93 05 0b 00  	mv	a1, s6
80001d00: 13 86 04 00  	mv	a2, s1
80001d04: 93 86 09 00  	mv	a3, s3
80001d08: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001d0c: 33 05 8a 00  	add	a0, s4, s0
80001d10: 93 04 04 00  	mv	s1, s0
80001d14: e3 60 25 ff  	bltu	a0, s2, 0x80001cf4 <.LBB4_88+0xa4>
80001d18: 6f 00 40 3f  	j	0x8000210c <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001d1c: 13 f5 0a 40  	andi	a0, s5, 1024
80001d20: 13 0c 60 00  	addi	s8, zero, 6
80001d24: 63 04 05 00  	beqz	a0, 0x80001d2c <.LBB4_88+0xdc>
80001d28: 13 0c 07 00  	mv	s8, a4
80001d2c: 13 05 a0 00  	addi	a0, zero, 10
80001d30: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001d34: 63 6c ac 02  	bltu	s8, a0, 0x80001d6c <.LBB4_88+0x11c>
80001d38: 93 04 6c ff  	addi	s1, s8, -10
80001d3c: 13 05 f0 01  	addi	a0, zero, 31
80001d40: 63 e4 a4 00  	bltu	s1, a0, 0x80001d48 <.LBB4_88+0xf8>
80001d44: 93 04 f0 01  	addi	s1, zero, 31
80001d48: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80001d4c: 13 05 81 00  	addi	a0, sp, 8
80001d50: 93 05 00 03  	addi	a1, zero, 48
80001d54: 13 06 04 00  	mv	a2, s0
80001d58: 97 f0 ff ff  	auipc	ra, 1048575
80001d5c: e7 80 00 80  	jalr	-2048(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001d60: 13 c5 f4 ff  	not	a0, s1
80001d64: 33 0c ac 00  	add	s8, s8, a0
80001d68: 6f 00 80 00  	j	0x80001d70 <.LBB4_88+0x120>
80001d6c: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80001d70: 13 15 3c 00  	slli	a0, s8, 3

80001d74 <.LBB4_89>:
80001d74: 97 15 00 00  	auipc	a1, 1
80001d78: 93 85 45 51  	addi	a1, a1, 1300
80001d7c: 33 05 b5 00  	add	a0, a0, a1
80001d80: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80001d84: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80001d88: 53 80 04 d2  	fcvt.d.w	ft0, s1
80001d8c: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80001d90: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80001d94 <.LBB4_90>:
80001d94: 17 15 00 00  	auipc	a0, 1
80001d98: 13 05 45 65  	addi	a0, a0, 1620
80001d9c: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80001da0: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80001da4: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80001da8: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80001dac: d3 05 01 a2  	fle.d	a1, ft2, ft0
80001db0: 63 90 05 02  	bnez	a1, 0x80001dd0 <.LBB4_90+0x3c>
;     ++frac;
80001db4: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80001db8: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80001dbc: d3 15 11 a2  	flt.d	a1, ft2, ft1
80001dc0: 63 94 05 02  	bnez	a1, 0x80001de8 <.LBB4_90+0x54>
80001dc4: 13 05 00 00  	mv	a0, zero
;       ++whole;
80001dc8: 93 84 14 00  	addi	s1, s1, 1
80001dcc: 6f 00 c0 01  	j	0x80001de8 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80001dd0: d3 15 01 a2  	flt.d	a1, ft2, ft0
80001dd4: 63 9a 05 00  	bnez	a1, 0x80001de8 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001dd8: 93 35 15 00  	seqz	a1, a0
80001ddc: 13 76 15 00  	andi	a2, a0, 1
80001de0: b3 65 b6 00  	or	a1, a2, a1
80001de4: 33 85 a5 00  	add	a0, a1, a0
80001de8: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001dec: 63 0c 0c 0c  	beqz	s8, 0x80001ec4 <.LBB4_90+0x130>
80001df0: 13 06 00 00  	mv	a2, zero
80001df4: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001df8: 33 83 85 00  	add	t1, a1, s0
80001dfc: 93 02 00 02  	addi	t0, zero, 32
80001e00: 33 87 82 40  	sub	a4, t0, s0
80001e04: b7 d5 cc cc  	lui	a1, 838861
80001e08: 93 83 d5 cc  	addi	t2, a1, -819
80001e0c: 13 08 a0 00  	addi	a6, zero, 10
80001e10: 93 08 90 00  	addi	a7, zero, 9
80001e14: 63 04 c7 0c  	beq	a4, a2, 0x80001edc <.LBB4_90+0x148>
80001e18: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001e1c: 33 35 75 02  	mulhu	a0, a0, t2
80001e20: 13 55 35 00  	srli	a0, a0, 3
80001e24: b3 06 05 03  	mul	a3, a0, a6
80001e28: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80001e2c: 93 e6 06 03  	ori	a3, a3, 48
80001e30: b3 07 c3 00  	add	a5, t1, a2
80001e34: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80001e38: 13 06 16 00  	addi	a2, a2, 1
80001e3c: e3 ec b8 fc  	bltu	a7, a1, 0x80001e14 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001e40: 33 05 c4 00  	add	a0, s0, a2
80001e44: 93 05 f5 ff  	addi	a1, a0, -1
80001e48: 93 06 e0 01  	addi	a3, zero, 30
80001e4c: b3 b6 b6 00  	sltu	a3, a3, a1
80001e50: 33 47 cc 00  	xor	a4, s8, a2
80001e54: 13 37 17 00  	seqz	a4, a4
80001e58: b3 e6 e6 00  	or	a3, a3, a4
80001e5c: 63 94 06 08  	bnez	a3, 0x80001ee4 <.LBB4_90+0x150>
80001e60: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001e64: 33 05 85 00  	add	a0, a0, s0
80001e68: 93 45 f6 ff  	not	a1, a2
80001e6c: 33 8c 85 01  	add	s8, a1, s8
80001e70: 33 04 c4 00  	add	s0, s0, a2
80001e74: 93 05 f0 01  	addi	a1, zero, 31
80001e78: b3 86 85 40  	sub	a3, a1, s0
80001e7c: 33 05 c5 00  	add	a0, a0, a2
80001e80: 93 05 0c 00  	mv	a1, s8
80001e84: 63 64 dc 00  	bltu	s8, a3, 0x80001e8c <.LBB4_90+0xf8>
80001e88: 93 85 06 00  	mv	a1, a3
80001e8c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001e90: 93 05 00 03  	addi	a1, zero, 48
80001e94: 97 e0 ff ff  	auipc	ra, 1048574
80001e98: e7 80 40 6c  	jalr	1732(ra)
80001e9c: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001ea0: b3 05 a4 00  	add	a1, s0, a0
80001ea4: 93 b5 f5 01  	sltiu	a1, a1, 31
80001ea8: 33 46 ac 00  	xor	a2, s8, a0
80001eac: 33 36 c0 00  	snez	a2, a2
80001eb0: 33 f6 c5 00  	and	a2, a1, a2
80001eb4: 13 05 15 00  	addi	a0, a0, 1
80001eb8: e3 14 06 fe  	bnez	a2, 0x80001ea0 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001ebc: 33 05 a4 00  	add	a0, s0, a0
80001ec0: 6f 00 80 02  	j	0x80001ee8 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80001ec4: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001ec8: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001ecc: 53 05 10 a2  	fle.d	a0, ft0, ft1
80001ed0: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001ed4: b3 84 a4 00  	add	s1, s1, a0
80001ed8: 6f 00 c0 03  	j	0x80001f14 <.LBB4_90+0x180>
80001edc: 13 04 00 02  	addi	s0, zero, 32
80001ee0: 6f 00 80 03  	j	0x80001f18 <.LBB4_90+0x184>
80001ee4: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001ee8: 63 8e 05 00  	beqz	a1, 0x80001f04 <.LBB4_90+0x170>
;       buf[len++] = '.';
80001eec: 13 04 15 00  	addi	s0, a0, 1
80001ef0: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80001ef4: 33 85 a5 00  	add	a0, a1, a0
80001ef8: 93 05 e0 02  	addi	a1, zero, 46
80001efc: 23 00 b5 00  	sb	a1, 0(a0)
80001f00: 6f 00 80 00  	j	0x80001f08 <.LBB4_90+0x174>
80001f04: 13 04 05 00  	mv	s0, a0
80001f08: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001f0c: 93 02 04 00  	mv	t0, s0
80001f10: 63 64 85 00  	bltu	a0, s0, 0x80001f18 <.LBB4_90+0x184>
80001f14: 93 02 00 02  	addi	t0, zero, 32
80001f18: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80001f1c: 37 65 66 66  	lui	a0, 419430
80001f20: 93 05 75 66  	addi	a1, a0, 1639
80001f24: 13 08 a0 00  	addi	a6, zero, 10
80001f28: 93 06 81 00  	addi	a3, sp, 8
80001f2c: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001f30: 63 80 82 04  	beq	t0, s0, 0x80001f70 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80001f34: 33 95 b4 02  	mulh	a0, s1, a1
80001f38: 93 57 f5 01  	srli	a5, a0, 31
80001f3c: 13 55 25 40  	srai	a0, a0, 2
80001f40: 33 05 f5 00  	add	a0, a0, a5
80001f44: b3 07 05 03  	mul	a5, a0, a6
80001f48: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80001f4c: 93 87 07 03  	addi	a5, a5, 48
80001f50: 13 0c 14 00  	addi	s8, s0, 1
80001f54: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80001f58: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80001f5c: 23 00 f4 00  	sb	a5, 0(s0)
80001f60: 13 04 0c 00  	mv	s0, s8
80001f64: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80001f68: e3 64 c7 fc  	bltu	a4, a2, 0x80001f30 <.LBB4_90+0x19c>
80001f6c: 6f 00 80 00  	j	0x80001f74 <.LBB4_90+0x1e0>
80001f70: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80001f74: 93 f4 3a 00  	andi	s1, s5, 3
80001f78: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80001f7c: 63 96 a4 06  	bne	s1, a0, 0x80001fe8 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001f80: 63 0c 09 00  	beqz	s2, 0x80001f98 <.LBB4_90+0x204>
80001f84: 13 f5 ca 00  	andi	a0, s5, 12
80001f88: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001f8c: 33 e5 ac 00  	or	a0, s9, a0
80001f90: 33 09 a9 40  	sub	s2, s2, a0
80001f94: 6f 00 80 00  	j	0x80001f9c <.LBB4_90+0x208>
80001f98: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001f9c: 33 35 2c 01  	sltu	a0, s8, s2
80001fa0: 93 45 15 00  	xori	a1, a0, 1
80001fa4: 13 05 f0 01  	addi	a0, zero, 31
80001fa8: 33 36 85 01  	sltu	a2, a0, s8
80001fac: b3 65 b6 00  	or	a1, a2, a1
80001fb0: 63 9c 05 02  	bnez	a1, 0x80001fe8 <.LBB4_90+0x254>
80001fb4: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001fb8: 93 45 fc ff  	not	a1, s8
80001fbc: b3 05 b9 00  	add	a1, s2, a1
80001fc0: 33 06 85 41  	sub	a2, a0, s8
80001fc4: 33 85 86 01  	add	a0, a3, s8
80001fc8: 63 e4 c5 00  	bltu	a1, a2, 0x80001fd0 <.LBB4_90+0x23c>
80001fcc: 93 05 06 00  	mv	a1, a2
80001fd0: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80001fd4: 93 05 00 03  	addi	a1, zero, 48
80001fd8: 13 06 04 00  	mv	a2, s0
80001fdc: 97 e0 ff ff  	auipc	ra, 1048574
80001fe0: e7 80 c0 57  	jalr	1404(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001fe4: 33 0c 84 01  	add	s8, s0, s8
80001fe8: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001fec: 63 6a 85 05  	bltu	a0, s8, 0x80002040 <.LBB4_90+0x2ac>
;     if (negative) {
80001ff0: 63 8c 0c 00  	beqz	s9, 0x80002008 <.LBB4_90+0x274>
80001ff4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80001ff8: 33 05 85 01  	add	a0, a0, s8
80001ffc: 13 0c 1c 00  	addi	s8, s8, 1
80002000: 93 05 d0 02  	addi	a1, zero, 45
80002004: 6f 00 80 03  	j	0x8000203c <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002008: 13 f5 4a 00  	andi	a0, s5, 4
8000200c: 63 10 05 02  	bnez	a0, 0x8000202c <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002010: 13 f5 8a 00  	andi	a0, s5, 8
80002014: 63 06 05 02  	beqz	a0, 0x80002040 <.LBB4_90+0x2ac>
80002018: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
8000201c: 33 05 85 01  	add	a0, a0, s8
80002020: 13 0c 1c 00  	addi	s8, s8, 1
80002024: 93 05 00 02  	addi	a1, zero, 32
80002028: 6f 00 40 01  	j	0x8000203c <.LBB4_90+0x2a8>
8000202c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002030: 33 05 85 01  	add	a0, a0, s8
80002034: 13 0c 1c 00  	addi	s8, s8, 1
80002038: 93 05 b0 02  	addi	a1, zero, 43
8000203c: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002040: 33 35 90 00  	snez	a0, s1
80002044: b3 35 2c 01  	sltu	a1, s8, s2
80002048: 93 c5 15 00  	xori	a1, a1, 1
8000204c: 33 65 b5 00  	or	a0, a0, a1
80002050: 93 fa 2a 00  	andi	s5, s5, 2
80002054: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002058: 63 16 05 02  	bnez	a0, 0x80002084 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
8000205c: b3 04 89 41  	sub	s1, s2, s8
80002060: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002064: 13 04 16 00  	addi	s0, a2, 1
80002068: 13 05 00 02  	addi	a0, zero, 32
8000206c: 93 05 0b 00  	mv	a1, s6
80002070: 93 86 09 00  	mv	a3, s3
80002074: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002078: 93 84 f4 ff  	addi	s1, s1, -1
8000207c: 13 06 04 00  	mv	a2, s0
80002080: e3 92 04 fe  	bnez	s1, 0x80002064 <.LBB4_90+0x2d0>
80002084: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002088: 63 0c 0c 02  	beqz	s8, 0x800020c0 <.LBB4_90+0x32c>
8000208c: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002090: 33 85 8c 01  	add	a0, s9, s8
80002094: 03 45 05 00  	lbu	a0, 0(a0)
80002098: 13 0d fc ff  	addi	s10, s8, -1
8000209c: 93 04 14 00  	addi	s1, s0, 1
800020a0: 93 05 0b 00  	mv	a1, s6
800020a4: 13 06 04 00  	mv	a2, s0
800020a8: 93 86 09 00  	mv	a3, s3
800020ac: e7 80 0b 00  	jalr	s7
800020b0: 13 84 04 00  	mv	s0, s1
800020b4: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800020b8: e3 1c 0d fc  	bnez	s10, 0x80002090 <.LBB4_90+0x2fc>
800020bc: 6f 00 80 00  	j	0x800020c4 <.LBB4_90+0x330>
800020c0: 93 04 04 00  	mv	s1, s0
800020c4: 33 85 44 41  	sub	a0, s1, s4
800020c8: 33 35 25 01  	sltu	a0, a0, s2
800020cc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800020d0: 93 c5 1a 00  	xori	a1, s5, 1
800020d4: 33 e5 a5 00  	or	a0, a1, a0
800020d8: 63 18 05 02  	bnez	a0, 0x80002108 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800020dc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800020e0: 13 84 14 00  	addi	s0, s1, 1
800020e4: 13 05 00 02  	addi	a0, zero, 32
800020e8: 93 05 0b 00  	mv	a1, s6
800020ec: 13 86 04 00  	mv	a2, s1
800020f0: 93 86 09 00  	mv	a3, s3
800020f4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800020f8: 33 05 8a 00  	add	a0, s4, s0
800020fc: 93 04 04 00  	mv	s1, s0
80002100: e3 60 25 ff  	bltu	a0, s2, 0x800020e0 <.LBB4_90+0x34c>
80002104: 6f 00 80 00  	j	0x8000210c <.LBB4_90+0x378>
80002108: 13 84 04 00  	mv	s0, s1
; }
8000210c: 13 05 04 00  	mv	a0, s0
80002110: 07 39 81 02  	fld	fs2, 40(sp)
80002114: 87 34 01 03  	fld	fs1, 48(sp)
80002118: 07 34 81 03  	fld	fs0, 56(sp)
8000211c: 03 2d 01 04  	lw	s10, 64(sp)
80002120: 83 2c 41 04  	lw	s9, 68(sp)
80002124: 03 2c 81 04  	lw	s8, 72(sp)
80002128: 83 2b c1 04  	lw	s7, 76(sp)
8000212c: 03 2b 01 05  	lw	s6, 80(sp)
80002130: 83 2a 41 05  	lw	s5, 84(sp)
80002134: 03 2a 81 05  	lw	s4, 88(sp)
80002138: 83 29 c1 05  	lw	s3, 92(sp)
8000213c: 03 29 01 06  	lw	s2, 96(sp)
80002140: 83 24 41 06  	lw	s1, 100(sp)
80002144: 03 24 81 06  	lw	s0, 104(sp)
80002148: 83 20 c1 06  	lw	ra, 108(sp)
8000214c: 13 01 01 07  	addi	sp, sp, 112
80002150: 67 80 00 00  	ret

80002154 <_etoa>:
; {
80002154: 13 01 01 f8  	addi	sp, sp, -128
80002158: 23 2e 11 06  	sw	ra, 124(sp)
8000215c: 23 2c 81 06  	sw	s0, 120(sp)
80002160: 23 2a 91 06  	sw	s1, 116(sp)
80002164: 23 28 21 07  	sw	s2, 112(sp)
80002168: 23 26 31 07  	sw	s3, 108(sp)
8000216c: 23 24 41 07  	sw	s4, 104(sp)
80002170: 23 22 51 07  	sw	s5, 100(sp)
80002174: 23 20 61 07  	sw	s6, 96(sp)
80002178: 23 2e 71 05  	sw	s7, 92(sp)
8000217c: 23 2c 81 05  	sw	s8, 88(sp)
80002180: 23 2a 91 05  	sw	s9, 84(sp)
80002184: 23 28 a1 05  	sw	s10, 80(sp)
80002188: 23 26 b1 05  	sw	s11, 76(sp)

8000218c <.LBB5_43>:
8000218c: 97 14 00 00  	auipc	s1, 1
80002190: 93 84 44 26  	addi	s1, s1, 612
80002194: 87 b0 04 00  	fld	ft1, 0(s1)

80002198 <.LBB5_44>:
80002198: 97 14 00 00  	auipc	s1, 1
8000219c: 93 84 04 26  	addi	s1, s1, 608
800021a0: 07 b1 04 00  	fld	ft2, 0(s1)
800021a4: 53 00 a5 22  	fmv.d	ft0, fa0
800021a8: d3 04 15 a2  	fle.d	s1, fa0, ft1
800021ac: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800021b0: b3 f4 84 00  	and	s1, s1, s0
800021b4: 93 0a 08 00  	mv	s5, a6
800021b8: 13 89 07 00  	mv	s2, a5
800021bc: 93 07 07 00  	mv	a5, a4
800021c0: 93 89 06 00  	mv	s3, a3
800021c4: 13 0a 06 00  	mv	s4, a2
800021c8: 13 8b 05 00  	mv	s6, a1
800021cc: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800021d0: 63 92 04 06  	bnez	s1, 0x80002234 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800021d4: 13 85 0b 00  	mv	a0, s7
800021d8: 93 05 0b 00  	mv	a1, s6
800021dc: 13 06 0a 00  	mv	a2, s4
800021e0: 93 86 09 00  	mv	a3, s3
800021e4: 53 05 00 22  	fmv.d	fa0, ft0
800021e8: 13 87 07 00  	mv	a4, a5
800021ec: 93 07 09 00  	mv	a5, s2
800021f0: 13 88 0a 00  	mv	a6, s5
800021f4: 83 2d c1 04  	lw	s11, 76(sp)
800021f8: 03 2d 01 05  	lw	s10, 80(sp)
800021fc: 83 2c 41 05  	lw	s9, 84(sp)
80002200: 03 2c 81 05  	lw	s8, 88(sp)
80002204: 83 2b c1 05  	lw	s7, 92(sp)
80002208: 03 2b 01 06  	lw	s6, 96(sp)
8000220c: 83 2a 41 06  	lw	s5, 100(sp)
80002210: 03 2a 81 06  	lw	s4, 104(sp)
80002214: 83 29 c1 06  	lw	s3, 108(sp)
80002218: 03 29 01 07  	lw	s2, 112(sp)
8000221c: 83 24 41 07  	lw	s1, 116(sp)
80002220: 03 24 81 07  	lw	s0, 120(sp)
80002224: 83 20 c1 07  	lw	ra, 124(sp)
80002228: 13 01 01 08  	addi	sp, sp, 128
8000222c: 17 03 00 00  	auipc	t1, 0
80002230: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002234: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002238: 13 f5 0a 40  	andi	a0, s5, 1024
8000223c: 13 07 60 00  	addi	a4, zero, 6
80002240: 63 04 05 00  	beqz	a0, 0x80002248 <.LBB5_44+0xb0>
80002244: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002248: 27 30 a1 02  	fsd	fa0, 32(sp)
8000224c: 83 25 41 02  	lw	a1, 36(sp)
80002250: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002254: 93 d6 45 01  	srli	a3, a1, 20
80002258: b7 07 10 00  	lui	a5, 256
8000225c: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002260: b3 f5 f5 00  	and	a1, a1, a5
80002264: 23 2c c1 00  	sw	a2, 24(sp)
80002268: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
8000226c: b3 e5 c5 00  	or	a1, a1, a2
80002270: 23 2e b1 00  	sw	a1, 28(sp)
80002274: 87 30 81 01  	fld	ft1, 24(sp)

80002278 <.LBB5_45>:
80002278: 97 15 00 00  	auipc	a1, 1
8000227c: 93 85 85 18  	addi	a1, a1, 392
80002280: 07 b1 05 00  	fld	ft2, 0(a1)

80002284 <.LBB5_46>:
80002284: 97 15 00 00  	auipc	a1, 1
80002288: 93 85 45 18  	addi	a1, a1, 388
8000228c: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002290: 93 f5 f6 7f  	andi	a1, a3, 2047
80002294: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002298: 53 82 05 d2  	fcvt.d.w	ft4, a1
8000229c: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800022a0 <.LBB5_47>:
800022a0: 97 15 00 00  	auipc	a1, 1
800022a4: 93 85 05 17  	addi	a1, a1, 368
800022a8: 07 b1 05 00  	fld	ft2, 0(a1)

800022ac <.LBB5_48>:
800022ac: 97 15 00 00  	auipc	a1, 1
800022b0: 93 85 c5 16  	addi	a1, a1, 364
800022b4: 87 b1 05 00  	fld	ft3, 0(a1)

800022b8 <.LBB5_49>:
800022b8: 97 15 00 00  	auipc	a1, 1
800022bc: 93 85 85 16  	addi	a1, a1, 360
800022c0: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800022c4: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800022c8: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800022cc: d3 80 05 d2  	fcvt.d.w	ft1, a1
800022d0: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

800022d4 <.LBB5_50>:
800022d4: 17 16 00 00  	auipc	a2, 1
800022d8: 13 06 46 15  	addi	a2, a2, 340
800022dc: 87 31 06 00  	fld	ft3, 0(a2)

800022e0 <.LBB5_51>:
800022e0: 17 16 00 00  	auipc	a2, 1
800022e4: 13 06 06 15  	addi	a2, a2, 336
800022e8: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800022ec: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800022f0: 53 01 06 d2  	fcvt.d.w	ft2, a2
800022f4: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800022f8: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800022fc: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002300: 13 06 f6 3f  	addi	a2, a2, 1023
80002304: 23 28 01 00  	sw	zero, 16(sp)
80002308: 13 16 46 01  	slli	a2, a2, 20
8000230c: 23 2a c1 00  	sw	a2, 20(sp)

80002310 <.LBB5_52>:
80002310: 17 16 00 00  	auipc	a2, 1
80002314: 13 06 06 13  	addi	a2, a2, 304
80002318: 87 31 06 00  	fld	ft3, 0(a2)

8000231c <.LBB5_53>:
8000231c: 17 16 00 00  	auipc	a2, 1
80002320: 13 06 c6 12  	addi	a2, a2, 300
80002324: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002328: 87 32 01 01  	fld	ft5, 16(sp)

8000232c <.LBB5_54>:
8000232c: 17 16 00 00  	auipc	a2, 1
80002330: 13 06 c6 10  	addi	a2, a2, 268
80002334: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002338: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

8000233c <.LBB5_55>:
8000233c: 17 16 00 00  	auipc	a2, 1
80002340: 13 06 46 11  	addi	a2, a2, 276
80002344: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002348: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
8000234c: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80002350: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002354: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002358: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
8000235c: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002360: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002364: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002368: 53 16 15 a2  	flt.d	a2, fa0, ft1
8000236c: 63 0a 06 00  	beqz	a2, 0x80002380 <.LBB5_56+0x10>

80002370 <.LBB5_56>:
80002370: 97 16 00 00  	auipc	a3, 1
80002374: 93 86 86 0e  	addi	a3, a3, 232
80002378: 07 b1 06 00  	fld	ft2, 0(a3)
8000237c: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80002380: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002384: 93 05 34 06  	addi	a1, s0, 99
80002388: 93 b5 75 0c  	sltiu	a1, a1, 199
8000238c: 13 06 50 00  	addi	a2, zero, 5
80002390: b7 16 00 00  	lui	a3, 1
80002394: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002398: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
8000239c: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800023a0: 63 84 06 06  	beqz	a3, 0x80002408 <.LBB5_58+0x58>

800023a4 <.LBB5_57>:
800023a4: 97 15 00 00  	auipc	a1, 1
800023a8: 93 85 c5 0b  	addi	a1, a1, 188
800023ac: 07 b1 05 00  	fld	ft2, 0(a1)

800023b0 <.LBB5_58>:
800023b0: 97 15 00 00  	auipc	a1, 1
800023b4: 93 85 85 0b  	addi	a1, a1, 184
800023b8: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800023bc: d3 15 25 a2  	flt.d	a1, fa0, ft2
800023c0: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800023c4: b3 e5 c5 00  	or	a1, a1, a2
800023c8: 63 98 05 00  	bnez	a1, 0x800023d8 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800023cc: 63 40 e4 02  	blt	s0, a4, 0x800023ec <.LBB5_58+0x3c>
800023d0: 13 07 00 00  	mv	a4, zero
800023d4: 6f 00 00 02  	j	0x800023f4 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800023d8: 63 06 07 02  	beqz	a4, 0x80002404 <.LBB5_58+0x54>
800023dc: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800023e0: 13 45 15 00  	xori	a0, a0, 1
800023e4: 33 07 a7 40  	sub	a4, a4, a0
800023e8: 6f 00 00 02  	j	0x80002408 <.LBB5_58+0x58>
800023ec: 13 45 f4 ff  	not	a0, s0
800023f0: 33 07 a7 00  	add	a4, a4, a0
800023f4: 13 04 00 00  	mv	s0, zero
800023f8: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800023fc: 93 ea 0a 40  	ori	s5, s5, 1024
80002400: 6f 00 80 00  	j	0x80002408 <.LBB5_58+0x58>
80002404: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002408: b3 05 99 41  	sub	a1, s2, s9
8000240c: 33 36 b9 00  	sltu	a2, s2, a1
80002410: 13 05 00 00  	mv	a0, zero
80002414: 63 14 06 00  	bnez	a2, 0x8000241c <.LBB5_58+0x6c>
80002418: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
8000241c: 93 07 00 00  	mv	a5, zero
80002420: 93 d5 1a 00  	srli	a1, s5, 1
80002424: 93 f4 15 00  	andi	s1, a1, 1
80002428: b3 35 90 01  	snez	a1, s9
8000242c: b3 f5 b4 00  	and	a1, s1, a1
80002430: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002434: 63 94 05 00  	bnez	a1, 0x8000243c <.LBB5_58+0x8c>
80002438: 93 07 05 00  	mv	a5, a0
;   if (expval) {
8000243c: 93 35 14 00  	seqz	a1, s0
80002440: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002444: 63 94 05 00  	bnez	a1, 0x8000244c <.LBB5_58+0x9c>
80002448: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
8000244c: 63 04 05 00  	beqz	a0, 0x80002454 <.LBB5_58+0xa4>
80002450: 53 15 a5 22  	fneg.d	fa0, fa0
80002454: 37 f5 ff ff  	lui	a0, 1048575
80002458: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
8000245c: 33 f8 aa 00  	and	a6, s5, a0
80002460: 13 85 0b 00  	mv	a0, s7
80002464: 93 05 0b 00  	mv	a1, s6
80002468: 13 06 0a 00  	mv	a2, s4
8000246c: 93 86 09 00  	mv	a3, s3
80002470: 97 f0 ff ff  	auipc	ra, 1048575
80002474: e7 80 40 60  	jalr	1540(ra)
80002478: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
8000247c: 63 82 0c 18  	beqz	s9, 0x80002600 <.LBB5_58+0x250>
80002480: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80002484: 13 f5 0a 02  	andi	a0, s5, 32
80002488: 13 45 55 06  	xori	a0, a0, 101
8000248c: 93 05 0b 00  	mv	a1, s6
80002490: 13 06 0d 00  	mv	a2, s10
80002494: 93 86 09 00  	mv	a3, s3
80002498: e7 80 0b 00  	jalr	s7
8000249c: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800024a0: 93 5a f4 01  	srli	s5, s0, 31
800024a4: 13 55 f4 41  	srai	a0, s0, 31
800024a8: b3 05 a4 00  	add	a1, s0, a0
800024ac: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800024b0: 93 8d dc ff  	addi	s11, s9, -3
800024b4: 13 04 f0 01  	addi	s0, zero, 31
800024b8: 37 d5 cc cc  	lui	a0, 838861
800024bc: 13 05 d5 cc  	addi	a0, a0, -819
800024c0: 13 08 a0 00  	addi	a6, zero, 10
800024c4: 93 08 c1 02  	addi	a7, sp, 44
800024c8: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800024cc: b3 37 a7 02  	mulhu	a5, a4, a0
800024d0: 93 d5 37 00  	srli	a1, a5, 3
800024d4: b3 87 05 03  	mul	a5, a1, a6
800024d8: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800024dc: 13 e6 07 03  	ori	a2, a5, 48
800024e0: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800024e4: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800024e8: 13 0c 1c 00  	addi	s8, s8, 1
800024ec: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800024f0: 33 b6 e2 00  	sltu	a2, t0, a4
800024f4: 33 f6 c7 00  	and	a2, a5, a2
800024f8: 93 8d fd ff  	addi	s11, s11, -1
800024fc: 13 04 f4 ff  	addi	s0, s0, -1
80002500: 13 87 05 00  	mv	a4, a1
80002504: e3 14 06 fc  	bnez	a2, 0x800024cc <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002508: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000250c: 33 35 ac 00  	sltu	a0, s8, a0
80002510: 13 45 15 00  	xori	a0, a0, 1
80002514: 93 c5 17 00  	xori	a1, a5, 1
80002518: 33 e5 a5 00  	or	a0, a1, a0
8000251c: 63 12 05 04  	bnez	a0, 0x80002560 <.LBB5_58+0x1b0>
80002520: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002524: b3 85 8c 41  	sub	a1, s9, s8
80002528: 93 85 d5 ff  	addi	a1, a1, -3
8000252c: 13 06 f0 01  	addi	a2, zero, 31
80002530: 33 06 86 41  	sub	a2, a2, s8
80002534: 33 05 85 01  	add	a0, a0, s8
80002538: 63 e4 c5 00  	bltu	a1, a2, 0x80002540 <.LBB5_58+0x190>
8000253c: 93 05 06 00  	mv	a1, a2
80002540: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002544: 93 05 00 03  	addi	a1, zero, 48
80002548: 97 e0 ff ff  	auipc	ra, 1048574
8000254c: e7 80 00 01  	jalr	16(ra)
;   if (flags & FLAGS_HASH) {
80002550: 63 e4 8d 00  	bltu	s11, s0, 0x80002558 <.LBB5_58+0x1a8>
80002554: 93 0d 04 00  	mv	s11, s0
80002558: 33 85 8d 01  	add	a0, s11, s8
8000255c: 13 0c 15 00  	addi	s8, a0, 1
80002560: 83 2c c1 00  	lw	s9, 12(sp)
80002564: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002568: 63 60 85 03  	bltu	a0, s8, 0x80002588 <.LBB5_58+0x1d8>
8000256c: 13 05 c1 02  	addi	a0, sp, 44
80002570: 33 05 85 01  	add	a0, a0, s8
80002574: 93 05 d0 02  	addi	a1, zero, 45
80002578: 63 94 0a 00  	bnez	s5, 0x80002580 <.LBB5_58+0x1d0>
8000257c: 93 05 b0 02  	addi	a1, zero, 43
80002580: 13 0c 1c 00  	addi	s8, s8, 1
80002584: 23 00 b5 00  	sb	a1, 0(a0)
80002588: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
8000258c: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80002590: 33 85 8a 01  	add	a0, s5, s8
80002594: 03 45 05 00  	lbu	a0, 0(a0)
80002598: 13 06 04 00  	mv	a2, s0
8000259c: 93 04 fc ff  	addi	s1, s8, -1
800025a0: 13 04 14 00  	addi	s0, s0, 1
800025a4: 93 05 0b 00  	mv	a1, s6
800025a8: 93 86 09 00  	mv	a3, s3
800025ac: e7 80 0b 00  	jalr	s7
800025b0: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800025b4: e3 9e 04 fc  	bnez	s1, 0x80002590 <.LBB5_58+0x1e0>
800025b8: 33 05 44 41  	sub	a0, s0, s4
800025bc: 33 35 25 01  	sltu	a0, a0, s2
800025c0: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800025c4: 93 c5 1c 00  	xori	a1, s9, 1
800025c8: 33 e5 a5 00  	or	a0, a1, a0
800025cc: 63 18 05 02  	bnez	a0, 0x800025fc <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800025d0: b3 04 40 41  	neg	s1, s4
800025d4: 13 0d 14 00  	addi	s10, s0, 1
800025d8: 13 05 00 02  	addi	a0, zero, 32
800025dc: 93 05 0b 00  	mv	a1, s6
800025e0: 13 06 04 00  	mv	a2, s0
800025e4: 93 86 09 00  	mv	a3, s3
800025e8: e7 80 0b 00  	jalr	s7
800025ec: 33 85 a4 01  	add	a0, s1, s10
800025f0: 13 04 0d 00  	mv	s0, s10
800025f4: e3 60 25 ff  	bltu	a0, s2, 0x800025d4 <.LBB5_58+0x224>
800025f8: 6f 00 80 00  	j	0x80002600 <.LBB5_58+0x250>
800025fc: 13 0d 04 00  	mv	s10, s0
; }
80002600: 13 05 0d 00  	mv	a0, s10
80002604: 83 2d c1 04  	lw	s11, 76(sp)
80002608: 03 2d 01 05  	lw	s10, 80(sp)
8000260c: 83 2c 41 05  	lw	s9, 84(sp)
80002610: 03 2c 81 05  	lw	s8, 88(sp)
80002614: 83 2b c1 05  	lw	s7, 92(sp)
80002618: 03 2b 01 06  	lw	s6, 96(sp)
8000261c: 83 2a 41 06  	lw	s5, 100(sp)
80002620: 03 2a 81 06  	lw	s4, 104(sp)
80002624: 83 29 c1 06  	lw	s3, 108(sp)
80002628: 03 29 01 07  	lw	s2, 112(sp)
8000262c: 83 24 41 07  	lw	s1, 116(sp)
80002630: 03 24 81 07  	lw	s0, 120(sp)
80002634: 83 20 c1 07  	lw	ra, 124(sp)
80002638: 13 01 01 08  	addi	sp, sp, 128
8000263c: 67 80 00 00  	ret

80002640 <_ntoa_format>:
; {
80002640: 13 01 01 fc  	addi	sp, sp, -64
80002644: 23 2e 11 02  	sw	ra, 60(sp)
80002648: 23 2c 81 02  	sw	s0, 56(sp)
8000264c: 23 2a 91 02  	sw	s1, 52(sp)
80002650: 23 28 21 03  	sw	s2, 48(sp)
80002654: 23 26 31 03  	sw	s3, 44(sp)
80002658: 23 24 41 03  	sw	s4, 40(sp)
8000265c: 23 22 51 03  	sw	s5, 36(sp)
80002660: 23 20 61 03  	sw	s6, 32(sp)
80002664: 23 2e 71 01  	sw	s7, 28(sp)
80002668: 23 2c 81 01  	sw	s8, 24(sp)
8000266c: 23 2a 91 01  	sw	s9, 20(sp)
80002670: 23 28 a1 01  	sw	s10, 16(sp)
80002674: 23 26 b1 01  	sw	s11, 12(sp)
80002678: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
8000267c: 93 fa 2e 00  	andi	s5, t4, 2
80002680: 13 09 0e 00  	mv	s2, t3
80002684: 13 8d 03 00  	mv	s10, t2
80002688: 93 8c 08 00  	mv	s9, a7
8000268c: 13 8c 07 00  	mv	s8, a5
80002690: 93 89 06 00  	mv	s3, a3
80002694: 13 0a 06 00  	mv	s4, a2
80002698: 13 8b 05 00  	mv	s6, a1
8000269c: 93 0d 05 00  	mv	s11, a0
800026a0: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800026a4: 63 9e 0a 0c  	bnez	s5, 0x80002780 <_ntoa_format+0x140>
800026a8: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800026ac: 63 0e 09 00  	beqz	s2, 0x800026c8 <_ntoa_format+0x88>
800026b0: 63 0e 04 00  	beqz	s0, 0x800026cc <_ntoa_format+0x8c>
800026b4: 13 f5 cb 00  	andi	a0, s7, 12
800026b8: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800026bc: 33 65 05 01  	or	a0, a0, a6
800026c0: 33 09 a9 40  	sub	s2, s2, a0
800026c4: 6f 00 80 00  	j	0x800026cc <_ntoa_format+0x8c>
800026c8: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800026cc: 33 35 ac 01  	sltu	a0, s8, s10
800026d0: 93 45 15 00  	xori	a1, a0, 1
800026d4: 13 05 f0 01  	addi	a0, zero, 31
800026d8: 33 36 85 01  	sltu	a2, a0, s8
800026dc: b3 65 b6 00  	or	a1, a2, a1
800026e0: 63 94 05 04  	bnez	a1, 0x80002728 <_ntoa_format+0xe8>
800026e4: 23 22 51 01  	sw	s5, 4(sp)
800026e8: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800026ec: 93 45 fc ff  	not	a1, s8
800026f0: b3 85 a5 01  	add	a1, a1, s10
800026f4: 33 06 85 41  	sub	a2, a0, s8
800026f8: 33 05 87 01  	add	a0, a4, s8
800026fc: 63 e4 c5 00  	bltu	a1, a2, 0x80002704 <_ntoa_format+0xc4>
80002700: 93 05 06 00  	mv	a1, a2
80002704: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002708: 93 05 00 03  	addi	a1, zero, 48
8000270c: 13 86 04 00  	mv	a2, s1
80002710: 97 e0 ff ff  	auipc	ra, 1048574
80002714: e7 80 80 e4  	jalr	-440(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002718: 33 8c 84 01  	add	s8, s1, s8
8000271c: 03 27 81 00  	lw	a4, 8(sp)
80002720: 13 88 0a 00  	mv	a6, s5
80002724: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002728: 63 0c 04 04  	beqz	s0, 0x80002780 <_ntoa_format+0x140>
8000272c: 33 35 2c 01  	sltu	a0, s8, s2
80002730: 93 45 15 00  	xori	a1, a0, 1
80002734: 13 05 f0 01  	addi	a0, zero, 31
80002738: 33 36 85 01  	sltu	a2, a0, s8
8000273c: b3 e5 c5 00  	or	a1, a1, a2
80002740: 63 90 05 04  	bnez	a1, 0x80002780 <_ntoa_format+0x140>
80002744: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002748: 93 45 fc ff  	not	a1, s8
8000274c: b3 05 b9 00  	add	a1, s2, a1
80002750: 33 06 85 41  	sub	a2, a0, s8
80002754: 33 05 87 01  	add	a0, a4, s8
80002758: 63 e4 c5 00  	bltu	a1, a2, 0x80002760 <_ntoa_format+0x120>
8000275c: 93 05 06 00  	mv	a1, a2
80002760: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002764: 93 05 00 03  	addi	a1, zero, 48
80002768: 13 86 04 00  	mv	a2, s1
8000276c: 97 e0 ff ff  	auipc	ra, 1048574
80002770: e7 80 c0 de  	jalr	-532(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002774: 33 8c 84 01  	add	s8, s1, s8
80002778: 03 27 81 00  	lw	a4, 8(sp)
8000277c: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80002780: 13 f5 0b 01  	andi	a0, s7, 16
80002784: 63 02 05 0e  	beqz	a0, 0x80002868 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002788: 13 f5 0b 40  	andi	a0, s7, 1024
8000278c: 13 55 a5 00  	srli	a0, a0, 10
80002790: 93 35 1c 00  	seqz	a1, s8
80002794: 33 65 b5 00  	or	a0, a0, a1
80002798: 63 1e 05 02  	bnez	a0, 0x800027d4 <_ntoa_format+0x194>
8000279c: 33 45 ac 01  	xor	a0, s8, s10
800027a0: 33 35 a0 00  	snez	a0, a0
800027a4: b3 45 2c 01  	xor	a1, s8, s2
800027a8: b3 35 b0 00  	snez	a1, a1
800027ac: 33 75 b5 00  	and	a0, a0, a1
800027b0: 63 12 05 02  	bnez	a0, 0x800027d4 <_ntoa_format+0x194>
;       len--;
800027b4: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800027b8: b3 35 a0 00  	snez	a1, a0
800027bc: 13 86 0c ff  	addi	a2, s9, -16
800027c0: 13 36 16 00  	seqz	a2, a2
800027c4: b3 75 b6 00  	and	a1, a2, a1
800027c8: 63 84 05 00  	beqz	a1, 0x800027d0 <_ntoa_format+0x190>
800027cc: 13 05 ec ff  	addi	a0, s8, -2
800027d0: 13 0c 05 00  	mv	s8, a0
800027d4: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800027d8: 63 96 ac 02  	bne	s9, a0, 0x80002804 <_ntoa_format+0x1c4>
800027dc: 13 f5 0b 02  	andi	a0, s7, 32
800027e0: 93 55 55 00  	srli	a1, a0, 5
800027e4: 13 06 f0 01  	addi	a2, zero, 31
800027e8: 33 36 86 01  	sltu	a2, a2, s8
800027ec: b3 e5 c5 00  	or	a1, a1, a2
800027f0: 63 9e 05 02  	bnez	a1, 0x8000282c <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800027f4: 33 05 87 01  	add	a0, a4, s8
800027f8: 13 0c 1c 00  	addi	s8, s8, 1
800027fc: 93 05 80 07  	addi	a1, zero, 120
80002800: 6f 00 c0 04  	j	0x8000284c <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002804: 13 85 ec ff  	addi	a0, s9, -2
80002808: 33 35 a0 00  	snez	a0, a0
8000280c: 93 05 f0 01  	addi	a1, zero, 31
80002810: b3 b5 85 01  	sltu	a1, a1, s8
80002814: 33 65 b5 00  	or	a0, a0, a1
80002818: 63 1c 05 02  	bnez	a0, 0x80002850 <_ntoa_format+0x210>
;       buf[len++] = 'b';
8000281c: 33 05 87 01  	add	a0, a4, s8
80002820: 13 0c 1c 00  	addi	s8, s8, 1
80002824: 93 05 20 06  	addi	a1, zero, 98
80002828: 6f 00 40 02  	j	0x8000284c <_ntoa_format+0x20c>
8000282c: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002830: 13 35 15 00  	seqz	a0, a0
80002834: 93 c5 15 00  	xori	a1, a1, 1
80002838: 33 65 b5 00  	or	a0, a0, a1
8000283c: 63 1a 05 00  	bnez	a0, 0x80002850 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80002840: 33 05 87 01  	add	a0, a4, s8
80002844: 13 0c 1c 00  	addi	s8, s8, 1
80002848: 93 05 80 05  	addi	a1, zero, 88
8000284c: 23 00 b5 00  	sb	a1, 0(a0)
80002850: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002854: 63 60 85 07  	bltu	a0, s8, 0x800028b4 <_ntoa_format+0x274>
;       buf[len++] = '0';
80002858: 33 05 87 01  	add	a0, a4, s8
8000285c: 13 0c 1c 00  	addi	s8, s8, 1
80002860: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80002864: 23 00 b5 00  	sb	a1, 0(a0)
80002868: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000286c: 63 64 85 05  	bltu	a0, s8, 0x800028b4 <_ntoa_format+0x274>
;     if (negative) {
80002870: 63 0a 08 00  	beqz	a6, 0x80002884 <_ntoa_format+0x244>
;       buf[len++] = '-';
80002874: 33 05 87 01  	add	a0, a4, s8
80002878: 13 0c 1c 00  	addi	s8, s8, 1
8000287c: 93 05 d0 02  	addi	a1, zero, 45
80002880: 6f 00 00 03  	j	0x800028b0 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80002884: 13 f5 4b 00  	andi	a0, s7, 4
80002888: 63 1e 05 00  	bnez	a0, 0x800028a4 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
8000288c: 13 f5 8b 00  	andi	a0, s7, 8
80002890: 63 02 05 02  	beqz	a0, 0x800028b4 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80002894: 33 05 87 01  	add	a0, a4, s8
80002898: 13 0c 1c 00  	addi	s8, s8, 1
8000289c: 93 05 00 02  	addi	a1, zero, 32
800028a0: 6f 00 00 01  	j	0x800028b0 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800028a4: 33 05 87 01  	add	a0, a4, s8
800028a8: 13 0c 1c 00  	addi	s8, s8, 1
800028ac: 93 05 b0 02  	addi	a1, zero, 43
800028b0: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800028b4: 13 f5 3b 00  	andi	a0, s7, 3
800028b8: 33 35 a0 00  	snez	a0, a0
800028bc: b3 35 2c 01  	sltu	a1, s8, s2
800028c0: 93 c5 15 00  	xori	a1, a1, 1
800028c4: 33 65 b5 00  	or	a0, a0, a1
800028c8: 13 04 0a 00  	mv	s0, s4
800028cc: 63 16 05 02  	bnez	a0, 0x800028f8 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800028d0: b3 04 89 41  	sub	s1, s2, s8
800028d4: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800028d8: 13 04 16 00  	addi	s0, a2, 1
800028dc: 13 05 00 02  	addi	a0, zero, 32
800028e0: 93 05 0b 00  	mv	a1, s6
800028e4: 93 86 09 00  	mv	a3, s3
800028e8: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800028ec: 93 84 f4 ff  	addi	s1, s1, -1
800028f0: 13 06 04 00  	mv	a2, s0
800028f4: e3 92 04 fe  	bnez	s1, 0x800028d8 <_ntoa_format+0x298>
800028f8: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800028fc: 63 0e 0c 02  	beqz	s8, 0x80002938 <_ntoa_format+0x2f8>
80002900: 03 25 81 00  	lw	a0, 8(sp)
80002904: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002908: 33 85 8b 01  	add	a0, s7, s8
8000290c: 03 45 05 00  	lbu	a0, 0(a0)
80002910: 93 0c fc ff  	addi	s9, s8, -1
80002914: 93 04 14 00  	addi	s1, s0, 1
80002918: 93 05 0b 00  	mv	a1, s6
8000291c: 13 06 04 00  	mv	a2, s0
80002920: 93 86 09 00  	mv	a3, s3
80002924: e7 80 0d 00  	jalr	s11
80002928: 13 84 04 00  	mv	s0, s1
8000292c: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002930: e3 9c 0c fc  	bnez	s9, 0x80002908 <_ntoa_format+0x2c8>
80002934: 6f 00 80 00  	j	0x8000293c <_ntoa_format+0x2fc>
80002938: 93 04 04 00  	mv	s1, s0
8000293c: 33 85 44 41  	sub	a0, s1, s4
80002940: 33 35 25 01  	sltu	a0, a0, s2
80002944: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002948: 93 c5 1a 00  	xori	a1, s5, 1
8000294c: 33 e5 a5 00  	or	a0, a1, a0
80002950: 63 18 05 02  	bnez	a0, 0x80002980 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002954: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002958: 13 84 14 00  	addi	s0, s1, 1
8000295c: 13 05 00 02  	addi	a0, zero, 32
80002960: 93 05 0b 00  	mv	a1, s6
80002964: 13 86 04 00  	mv	a2, s1
80002968: 93 86 09 00  	mv	a3, s3
8000296c: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002970: 33 05 8a 00  	add	a0, s4, s0
80002974: 93 04 04 00  	mv	s1, s0
80002978: e3 60 25 ff  	bltu	a0, s2, 0x80002958 <_ntoa_format+0x318>
8000297c: 6f 00 80 00  	j	0x80002984 <_ntoa_format+0x344>
80002980: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002984: 13 05 04 00  	mv	a0, s0
80002988: 83 2d c1 00  	lw	s11, 12(sp)
8000298c: 03 2d 01 01  	lw	s10, 16(sp)
80002990: 83 2c 41 01  	lw	s9, 20(sp)
80002994: 03 2c 81 01  	lw	s8, 24(sp)
80002998: 83 2b c1 01  	lw	s7, 28(sp)
8000299c: 03 2b 01 02  	lw	s6, 32(sp)
800029a0: 83 2a 41 02  	lw	s5, 36(sp)
800029a4: 03 2a 81 02  	lw	s4, 40(sp)
800029a8: 83 29 c1 02  	lw	s3, 44(sp)
800029ac: 03 29 01 03  	lw	s2, 48(sp)
800029b0: 83 24 41 03  	lw	s1, 52(sp)
800029b4: 03 24 81 03  	lw	s0, 56(sp)
800029b8: 83 20 c1 03  	lw	ra, 60(sp)
800029bc: 13 01 01 04  	addi	sp, sp, 64
800029c0: 67 80 00 00  	ret

800029c4 <_snrt_init_team>:
;     team->base.root = team;
800029c4: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800029c8: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800029cc: 03 23 87 00  	lw	t1, 8(a4)
800029d0: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800029d4: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800029d8: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800029dc: 83 22 47 00  	lw	t0, 4(a4)
800029e0: 33 88 08 03  	mul	a6, a7, a6
800029e4: 33 05 58 02  	mul	a0, a6, t0
800029e8: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800029ec: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800029f0: 33 85 68 40  	sub	a0, a7, t1
800029f4: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800029f8: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800029fc: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002a00: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002a04: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002a08: 03 25 87 01  	lw	a0, 24(a4)
80002a0c: b7 05 00 10  	lui	a1, 65536
80002a10: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002a14: 23 a2 07 02  	sw	zero, 36(a5)
80002a18: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002a1c: 03 25 07 02  	lw	a0, 32(a4)
80002a20: 83 25 47 02  	lw	a1, 36(a4)
80002a24: 23 a4 a7 02  	sw	a0, 40(a5)
80002a28: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002a2c: 23 a8 c7 02  	sw	a2, 48(a5)
80002a30: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002a34: 23 ac d7 02  	sw	a3, 56(a5)
80002a38: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002a3c: 03 25 07 01  	lw	a0, 16(a4)
80002a40: 33 08 a6 00  	add	a6, a2, a0
80002a44: 93 05 08 19  	addi	a1, a6, 400
80002a48: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002a4c: b3 32 a8 00  	sltu	t0, a6, a0
80002a50: 93 55 15 00  	srli	a1, a0, 1
80002a54: 33 03 b8 00  	add	t1, a6, a1
80002a58: b3 35 03 01  	sltu	a1, t1, a6
80002a5c: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80002a60: 23 a0 67 04  	sw	t1, 64(a5)
80002a64: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002a68: 13 15 15 00  	slli	a0, a0, 1
80002a6c: b3 05 c5 00  	add	a1, a0, a2
80002a70: 33 b5 a5 00  	sltu	a0, a1, a0
80002a74: 23 a4 b7 04  	sw	a1, 72(a5)
80002a78: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80002a7c: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80002a80: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80002a84: 37 05 00 00  	lui	a0, 0
80002a88: 33 05 45 00  	add	a0, a0, tp
80002a8c: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002a90: 03 a5 07 00  	lw	a0, 0(a5)
80002a94: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002a98: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002a9c: b3 85 b8 40  	sub	a1, a7, a1
80002aa0: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80002aa4: b7 05 00 00  	lui	a1, 0
80002aa8: b3 85 45 00  	add	a1, a1, tp
80002aac: 23 a2 a5 00  	sw	a0, 4(a1)
80002ab0: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80002ab4: 33 85 a8 02  	mul	a0, a7, a0

80002ab8 <.LBB0_1>:
80002ab8: 97 15 00 00  	auipc	a1, 1
80002abc: 93 85 c5 9b  	addi	a1, a1, -1604
80002ac0: 33 05 b5 00  	add	a0, a0, a1
80002ac4: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80002ac8: 83 28 07 03  	lw	a7, 48(a4)
80002acc: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80002ad0: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80002ad4: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002ad8: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80002adc: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80002ae0: 13 05 76 00  	addi	a0, a2, 7
80002ae4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002ae8: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002aec: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80002af0: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80002af4: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002af8: 03 a5 05 00  	lw	a0, 0(a1)
80002afc: 13 05 f5 44  	addi	a0, a0, 1103
80002b00: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80002b04: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002b08: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002b0c: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80002b10: 37 05 00 00  	lui	a0, 0
80002b14: 33 05 45 00  	add	a0, a0, tp
80002b18: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002b1c: 37 05 00 00  	lui	a0, 0
80002b20: 33 05 45 00  	add	a0, a0, tp
80002b24: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002b28: 67 80 00 00  	ret

80002b2c <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002b2c: 37 05 00 00  	lui	a0, 0
80002b30: 33 05 45 00  	add	a0, a0, tp
80002b34: 03 25 05 00  	lw	a0, 0(a0)
80002b38: 03 25 05 00  	lw	a0, 0(a0)
80002b3c: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002b40: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002b44: 33 85 a5 40  	sub	a0, a1, a0
80002b48: 67 80 00 00  	ret

80002b4c <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002b4c: 37 05 00 00  	lui	a0, 0
80002b50: 33 05 45 00  	add	a0, a0, tp
80002b54: 03 25 05 00  	lw	a0, 0(a0)
80002b58: 03 25 05 00  	lw	a0, 0(a0)
80002b5c: 03 25 05 07  	lw	a0, 112(a0)
80002b60: 67 80 00 00  	ret

80002b64 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80002b64: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002b68: 63 44 05 00  	bltz	a0, 0x80002b70 <__snrt_isr+0xc>
;         while (1)
80002b6c: 6f 00 00 00  	j	0x80002b6c <__snrt_isr+0x8>
80002b70: b7 05 00 80  	lui	a1, 524288
80002b74: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80002b78: 33 75 b5 00  	and	a0, a0, a1
80002b7c: 13 05 d5 ff  	addi	a0, a0, -3
80002b80: 93 55 25 00  	srli	a1, a0, 2
80002b84: 13 15 e5 01  	slli	a0, a0, 30
80002b88: 33 65 b5 00  	or	a0, a0, a1
80002b8c: 93 05 40 00  	addi	a1, zero, 4
80002b90: 63 0a b5 06  	beq	a0, a1, 0x80002c04 <.LBB1_7+0x58>
80002b94: 63 1a 05 08  	bnez	a0, 0x80002c28 <.LBB1_7+0x7c>
80002b98: 37 05 00 00  	lui	a0, 0
80002b9c: 33 05 45 00  	add	a0, a0, tp
80002ba0: 03 25 05 00  	lw	a0, 0(a0)
80002ba4: 03 25 05 00  	lw	a0, 0(a0)
80002ba8: f3 25 40 f1  	csrr	a1, mhartid

80002bac <.LBB1_7>:
;     asm volatile(
80002bac: 17 16 00 00  	auipc	a2, 1
80002bb0: 13 06 46 8c  	addi	a2, a2, -1852
80002bb4: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80002bb8: 93 06 06 00  	mv	a3, a2
80002bbc: 93 02 10 00  	addi	t0, zero, 1
80002bc0: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80002bc4: e3 9e 02 fe  	bnez	t0, 0x80002bc0 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002bc8: b7 06 00 00  	lui	a3, 0
80002bcc: b3 86 46 00  	add	a3, a3, tp
80002bd0: 83 a6 86 00  	lw	a3, 8(a3)
80002bd4: 33 85 a5 40  	sub	a0, a1, a0
80002bd8: 93 55 35 00  	srli	a1, a0, 3
80002bdc: 93 f5 c5 ff  	andi	a1, a1, -4
80002be0: b3 85 b6 00  	add	a1, a3, a1
80002be4: 83 a6 05 00  	lw	a3, 0(a1)
80002be8: 13 07 10 00  	addi	a4, zero, 1
80002bec: 33 15 a7 00  	sll	a0, a4, a0
80002bf0: 13 45 f5 ff  	not	a0, a0
80002bf4: 33 f5 a6 00  	and	a0, a3, a0
80002bf8: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002bfc: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002c00: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002c04: 37 05 00 00  	lui	a0, 0
80002c08: 33 05 45 00  	add	a0, a0, tp
80002c0c: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002c10: b7 05 00 00  	lui	a1, 0
80002c14: b3 85 45 00  	add	a1, a1, tp
80002c18: 83 a5 c5 00  	lw	a1, 12(a1)
80002c1c: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002c20: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002c24: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002c28: 67 80 00 00  	ret

80002c2c <change_c.llvm.14194602124631391890>:
;     a[i] = 0.0;
80002c2c: 93 95 35 00  	slli	a1, a1, 3
80002c30: 33 05 b5 00  	add	a0, a0, a1
80002c34: 23 22 05 00  	sw	zero, 4(a0)
80002c38: 23 20 05 00  	sw	zero, 0(a0)
; }
80002c3c: 67 80 00 00  	ret

Disassembly of section .init:

80002c40 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80002c40: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80002c44: 93 81 81 f0  	addi	gp, gp, -248

80002c48 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80002c48: 97 00 00 00  	auipc	ra, 0
80002c4c: e7 80 40 3c  	jalr	964(ra)

80002c50 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002c50: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002c54: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002c58: 97 00 00 00  	auipc	ra, 0
80002c5c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002c60: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002c64: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002c68: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002c6c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002c70: 63 92 02 02  	bnez	t0, 0x80002c94 <snrt.crt0.init_registers>

80002c74 <.Lpcrel_hi0>:
;     la        t0, _edata
80002c74: 97 02 00 00  	auipc	t0, 0
80002c78: 93 82 c2 7f  	addi	t0, t0, 2044

80002c7c <.Lpcrel_hi1>:
;     la        t1, _end
80002c7c: 17 03 00 00  	auipc	t1, 0
80002c80: 13 03 83 7f  	addi	t1, t1, 2040
;     bge       t0, t1, 2f
80002c84: 63 d8 62 00  	bge	t0, t1, 0x80002c94 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002c88: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002c8c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002c90: e3 cc 62 fe  	blt	t0, t1, 0x80002c88 <.Lpcrel_hi1+0xc>

80002c94 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002c94: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002c98: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002c9c: 63 82 02 08  	beqz	t0, 0x80002d20 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002ca0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002ca4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002ca8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002cac: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002cb0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002cb4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002cb8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80002cbc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002cc0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002cc4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002cc8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80002ccc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002cd0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002cd4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002cd8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80002cdc: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002ce0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002ce4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002ce8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80002cec: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002cf0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002cf4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002cf8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80002cfc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002d00: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002d04: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002d08: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80002d0c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002d10: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002d14: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002d18: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80002d1c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002d20 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002d20: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002d24: 23 a0 06 00  	sw	zero, 0(a3)

80002d28 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002d28: 97 02 00 00  	auipc	t0, 0
80002d2c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80002d30: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80002d34: 93 87 06 00  	mv	a5, a3

80002d38 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80002d38: 97 03 00 00  	auipc	t2, 0
80002d3c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80002d40: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80002d44: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80002d48: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80002d4c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80002d50: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80002d54: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80002d58: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80002d5c: b3 86 66 40  	sub	a3, a3, t1

80002d60 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80002d60: 97 02 00 00  	auipc	t0, 0
80002d64: 93 82 82 5e  	addi	t0, t0, 1512

80002d68 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80002d68: 17 03 00 00  	auipc	t1, 0
80002d6c: 13 03 03 5e  	addi	t1, t1, 1504

80002d70 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80002d70: 97 03 00 00  	auipc	t2, 0
80002d74: 93 83 83 5d  	addi	t2, t2, 1496

80002d78 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80002d78: 17 0e 00 00  	auipc	t3, 0
80002d7c: 13 0e 0e 5e  	addi	t3, t3, 1504
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80002d80: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80002d84: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80002d88: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80002d8c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80002d90: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80002d94: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80002d98: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80002d9c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80002da0: 63 dc 62 00  	bge	t0, t1, 0x80002db8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80002da4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80002da8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80002dac: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002db0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80002db4: e3 c8 62 fe  	blt	t0, t1, 0x80002da4 <.Lpcrel_hi7+0x2c>

80002db8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80002db8: 97 02 00 00  	auipc	t0, 0
80002dbc: 93 82 02 59  	addi	t0, t0, 1424

80002dc0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80002dc0: 17 03 00 00  	auipc	t1, 0
80002dc4: 13 03 83 59  	addi	t1, t1, 1432
;     bge       t0, t1, 2f
80002dc8: 63 da 62 00  	bge	t0, t1, 0x80002ddc <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80002dcc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80002dd0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002dd4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80002dd8: e3 ca 72 fe  	blt	t0, t2, 0x80002dcc <.Lpcrel_hi9+0xc>

80002ddc <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80002ddc: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80002de0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80002de4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80002de8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80002dec: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80002df0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80002df4: 97 00 00 00  	auipc	ra, 0
80002df8: e7 80 00 bd  	jalr	-1072(ra)
;     lw        a0, 0(sp)
80002dfc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80002e00: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80002e04: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80002e08: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80002e0c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80002e10: 13 01 41 01  	addi	sp, sp, 20

80002e14 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80002e14: 97 02 00 00  	auipc	t0, 0
80002e18: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80002e1c: 73 90 52 30  	csrw	mtvec, t0

80002e20 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80002e20: 97 00 00 00  	auipc	ra, 0
80002e24: e7 80 00 22  	jalr	544(ra)

80002e28 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80002e28: 97 e0 ff ff  	auipc	ra, 1048574
80002e2c: e7 80 c0 80  	jalr	-2036(ra)
;     mv        s0, a0 # store return value in s0
80002e30: 13 04 05 00  	mv	s0, a0

80002e34 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80002e34: 97 00 00 00  	auipc	ra, 0
80002e38: e7 80 c0 20  	jalr	524(ra)

80002e3c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80002e3c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80002e40: 97 00 00 00  	auipc	ra, 0
80002e44: e7 80 c0 22  	jalr	556(ra)
;     wfi
80002e48: 73 00 50 10  	wfi	
;     j       1b
80002e4c: 6f f0 df ff  	j	0x80002e48 <snrt.crt0.end+0xc>

80002e50 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80002e50: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80002e54: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80002e58: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80002e5c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80002e60: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80002e64: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80002e68: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80002e6c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80002e70: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80002e74: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80002e78: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80002e7c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80002e80: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80002e84: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80002e88: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80002e8c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80002e90: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80002e94: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80002e98: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002e9c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002ea0: 63 84 02 08  	beqz	t0, 0x80002f28 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80002ea4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80002ea8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80002eac: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80002eb0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80002eb4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80002eb8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80002ebc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80002ec0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80002ec4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80002ec8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80002ecc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80002ed0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80002ed4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80002ed8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80002edc: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80002ee0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80002ee4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80002ee8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80002eec: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80002ef0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80002ef4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80002ef8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80002efc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80002f00: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80002f04: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80002f08: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80002f0c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80002f10: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80002f14: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80002f18: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80002f1c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80002f20: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80002f24: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80002f28: 97 00 00 00  	auipc	ra, 0
80002f2c: e7 80 c0 c3  	jalr	-964(ra)
;     csrr    t0, misa
80002f30: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002f34: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002f38: 63 84 02 08  	beqz	t0, 0x80002fc0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80002f3c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80002f40: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80002f44: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80002f48: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80002f4c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80002f50: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80002f54: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80002f58: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80002f5c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80002f60: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80002f64: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80002f68: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80002f6c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80002f70: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80002f74: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80002f78: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80002f7c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80002f80: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80002f84: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80002f88: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80002f8c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80002f90: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80002f94: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80002f98: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80002f9c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80002fa0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80002fa4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80002fa8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80002fac: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80002fb0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80002fb4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80002fb8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80002fbc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80002fc0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80002fc4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80002fc8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80002fcc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80002fd0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80002fd4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80002fd8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80002fdc: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80002fe0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80002fe4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80002fe8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80002fec: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80002ff0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80002ff4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80002ff8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80002ffc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003000: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003004: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003008: 73 00 20 30  	mret	

8000300c <_snrt_init_core_info>:
;     mv        a4, a1
8000300c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003010: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003014: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003018: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000301c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003020: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003024: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003028: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000302c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003030: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003034: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003038: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000303c: 67 80 00 00  	ret

80003040 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003040: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003044: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003048: 97 00 00 00  	auipc	ra, 0
8000304c: e7 80 40 b0  	jalr	-1276(ra)
;     lw        a0, 0(a0)
80003050: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003054: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003058: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000305c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003060: 67 80 00 00  	ret

80003064 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003064: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003068: 67 80 00 00  	ret

8000306c <_snrt_exit>:
;     addi      sp, sp, -8
8000306c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003070: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003074: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003078: 97 00 00 00  	auipc	ra, 0
8000307c: e7 80 40 ab  	jalr	-1356(ra)
;     lw        t0, 0(sp)
80003080: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003084: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003088: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000308c: 63 1c 05 00  	bnez	a0, 0x800030a4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003090: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003094: 93 e2 12 00  	ori	t0, t0, 1

80003098 <.Lpcrel_hi11>:
;     la        t1, tohost
80003098: 17 03 00 00  	auipc	t1, 0
8000309c: 13 03 83 26  	addi	t1, t1, 616
;     sw        t0, 0(t1)
800030a0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800030a4: 67 80 00 00  	ret
