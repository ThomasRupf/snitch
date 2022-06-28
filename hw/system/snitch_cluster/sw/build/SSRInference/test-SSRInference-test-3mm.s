
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-SSRInference-test-3mm:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000039a4 80000000 TEXT
  2 .init             00000468 800039b0 TEXT
  3 .rodata           00000238 80003e18 DATA
  4 .htif             00000048 80004080 DATA
  5 .tdata            00000000 800040c8 DATA
  6 .tbss             00000010 800040c8 BSS
  7 .tbssend          00000000 800040d8 DATA
  8 .sdata            000000d8 800040d8 DATA
  9 .data             00000000 800041b0 DATA
 10 .sbss             00000004 800041b0 BSS
 11 .bss              00000000 800041b4 BSS
 12 .dram             00000000 800041b4 DATA
 13 .debug_info       000037bd 00000000 
 14 .debug_abbrev     00000bf8 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       000031cb 00000000 
 17 .debug_loc        000038c2 00000000 
 18 .debug_str        00000b01 00000000 
 19 .comment          00000029 00000000 
 20 .riscv.attributes 00000037 00000000 
 21 .debug_frame      000002b8 00000000 
 22 .debug_ranges     00000330 00000000 
 23 .symtab           00003290 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000928 00000000 


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
80000634: 13 01 01 f7  	addi	sp, sp, -144
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 08  	sw	ra, 140(sp)
8000063c: 23 24 81 08  	sw	s0, 136(sp)
80000640: 23 22 91 08  	sw	s1, 132(sp)
80000644: 23 20 21 09  	sw	s2, 128(sp)
80000648: 23 2e 31 07  	sw	s3, 124(sp)
8000064c: 23 2c 41 07  	sw	s4, 120(sp)
80000650: 23 2a 51 07  	sw	s5, 116(sp)
80000654: 23 28 61 07  	sw	s6, 112(sp)
80000658: 23 26 71 07  	sw	s7, 108(sp)
8000065c: 23 24 81 07  	sw	s8, 104(sp)
80000660: 23 22 91 07  	sw	s9, 100(sp)
80000664: 23 20 a1 07  	sw	s10, 96(sp)
80000668: 23 2e b1 05  	sw	s11, 92(sp)
8000066c: 27 38 81 04  	fsd	fs0, 80(sp)
80000670: 27 34 91 04  	fsd	fs1, 72(sp)
80000674: 27 30 21 05  	fsd	fs2, 64(sp)
80000678: 27 3c 31 03  	fsd	fs3, 56(sp)
8000067c: 37 05 00 00  	lui	a0, 0
80000680: 33 05 45 00  	add	a0, a0, tp
80000684: 83 25 45 00  	lw	a1, 4(a0)
80000688: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000068c: 63 84 05 00  	beqz	a1, 0x80000694 <main+0x60>
80000690: 6f 10 c0 40  	j	0x80001a9c <.LBB0_53+0x10>
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
800006c4: 13 07 00 00  	mv	a4, zero
800006c8: 6f 00 00 01  	j	0x800006d8 <main+0xa4>
;     alloc->next += size;
800006cc: 23 2c d5 04  	sw	a3, 88(a0)
800006d0: 13 87 07 00  	mv	a4, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d4: 93 87 06 00  	mv	a5, a3
800006d8: b3 06 f6 00  	add	a3, a2, a5
800006dc: 93 86 06 10  	addi	a3, a3, 256
800006e0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006ec <main+0xb8>
800006e4: 23 24 01 02  	sw	zero, 40(sp)
800006e8: 6f 00 00 01  	j	0x800006f8 <main+0xc4>
;     alloc->next += size;
800006ec: 23 2c d5 04  	sw	a3, 88(a0)
800006f0: 23 24 f1 02  	sw	a5, 40(sp)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f4: 93 87 06 00  	mv	a5, a3
800006f8: b3 06 f6 00  	add	a3, a2, a5
800006fc: 93 86 06 24  	addi	a3, a3, 576
80000700: 63 f6 d5 00  	bgeu	a1, a3, 0x8000070c <main+0xd8>
80000704: 93 0c 00 00  	mv	s9, zero
80000708: 6f 00 00 01  	j	0x80000718 <main+0xe4>
;     alloc->next += size;
8000070c: 23 2c d5 04  	sw	a3, 88(a0)
80000710: 93 8c 07 00  	mv	s9, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000714: 93 87 06 00  	mv	a5, a3
80000718: b3 06 f6 00  	add	a3, a2, a5
8000071c: 93 86 06 36  	addi	a3, a3, 864
80000720: 63 f6 d5 00  	bgeu	a1, a3, 0x8000072c <main+0xf8>
80000724: 93 04 00 00  	mv	s1, zero
80000728: 6f 00 00 01  	j	0x80000738 <main+0x104>
;     alloc->next += size;
8000072c: 23 2c d5 04  	sw	a3, 88(a0)
80000730: 93 84 07 00  	mv	s1, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000734: 93 87 06 00  	mv	a5, a3
80000738: b3 06 f6 00  	add	a3, a2, a5
8000073c: 93 86 06 48  	addi	a3, a3, 1152
80000740: 63 f6 d5 00  	bgeu	a1, a3, 0x8000074c <main+0x118>
80000744: 23 2a 01 00  	sw	zero, 20(sp)
80000748: 6f 00 00 01  	j	0x80000758 <main+0x124>
;     alloc->next += size;
8000074c: 23 2c d5 04  	sw	a3, 88(a0)
80000750: 23 2a f1 00  	sw	a5, 20(sp)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000754: 93 87 06 00  	mv	a5, a3
80000758: b3 06 f6 00  	add	a3, a2, a5
8000075c: 93 86 06 78  	addi	a3, a3, 1920
80000760: 63 f6 d5 00  	bgeu	a1, a3, 0x8000076c <main+0x138>
80000764: 23 2e 01 00  	sw	zero, 28(sp)
80000768: 6f 00 00 01  	j	0x80000778 <main+0x144>
;     alloc->next += size;
8000076c: 23 2c d5 04  	sw	a3, 88(a0)
80000770: 23 2e f1 00  	sw	a5, 28(sp)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000774: 93 87 06 00  	mv	a5, a3
80000778: 33 06 f6 00  	add	a2, a2, a5
8000077c: 13 06 06 20  	addi	a2, a2, 512
80000780: 23 2c 91 00  	sw	s1, 24(sp)
80000784: 63 f6 c5 00  	bgeu	a1, a2, 0x80000790 <main+0x15c>
80000788: 23 26 01 00  	sw	zero, 12(sp)
8000078c: 6f 00 c0 00  	j	0x80000798 <main+0x164>
80000790: 23 26 f1 00  	sw	a5, 12(sp)
;     alloc->next += size;
80000794: 23 2c c5 04  	sw	a2, 88(a0)
80000798: 23 24 e1 00  	sw	a4, 8(sp)
8000079c: 13 08 00 00  	mv	a6, zero
800007a0: 93 08 00 00  	mv	a7, zero
800007a4: 13 0e 00 00  	mv	t3, zero
800007a8: 13 0f 00 00  	mv	t5, zero
800007ac: 93 0f 00 00  	mv	t6, zero
800007b0: 13 09 00 00  	mv	s2, zero
800007b4: 93 09 00 00  	mv	s3, zero
800007b8: 13 0a 00 00  	mv	s4, zero
;   for (i = 0; i < ni; i++)
800007bc: 03 25 81 02  	lw	a0, 40(sp)
800007c0: 13 05 05 05  	addi	a0, a0, 80
800007c4: 93 0a 10 00  	addi	s5, zero, 1
800007c8: b7 a5 89 3f  	lui	a1, 260250
800007cc: 93 82 95 99  	addi	t0, a1, -1639
800007d0: b7 a5 99 99  	lui	a1, 629146
800007d4: 13 83 a5 99  	addi	t1, a1, -1638

800007d8 <.LBB0_46>:
800007d8: 97 45 00 00  	auipc	a1, 4
800007dc: 93 85 05 90  	addi	a1, a1, -1792
800007e0: 07 b0 05 00  	fld	ft0, 0(a1)
800007e4: 93 03 10 13  	addi	t2, zero, 305
800007e8: 13 0b 10 00  	addi	s6, zero, 1
800007ec: 93 0b 10 00  	addi	s7, zero, 1
800007f0: 13 0c 10 00  	addi	s8, zero, 1
800007f4: 93 07 10 00  	addi	a5, zero, 1
800007f8: 93 04 10 00  	addi	s1, zero, 1
800007fc: 13 04 10 00  	addi	s0, zero, 1
80000800: 93 05 10 00  	addi	a1, zero, 1
80000804: 13 06 10 00  	addi	a2, zero, 1
80000808: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
8000080c: 23 2a 55 fa  	sw	t0, -76(a0)
80000810: 23 28 65 fa  	sw	t1, -80(a0)
80000814: 13 f7 f6 00  	andi	a4, a3, 15
80000818: d3 00 07 d2  	fcvt.d.w	ft1, a4
8000081c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000820: 27 3c 15 fa  	fsd	ft1, -72(a0)
80000824: 13 f7 e9 00  	andi	a4, s3, 14
80000828: 13 67 17 00  	ori	a4, a4, 1
8000082c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000830: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000834: 27 30 15 fc  	fsd	ft1, -64(a0)
80000838: 13 77 f4 00  	andi	a4, s0, 15
8000083c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000840: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000844: 27 34 15 fc  	fsd	ft1, -56(a0)
80000848: 13 77 c9 00  	andi	a4, s2, 12
8000084c: 13 67 17 00  	ori	a4, a4, 1
80000850: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000854: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000858: 27 38 15 fc  	fsd	ft1, -48(a0)
8000085c: 13 f7 f7 00  	andi	a4, a5, 15
80000860: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000864: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000868: 27 3c 15 fc  	fsd	ft1, -40(a0)
8000086c: 13 77 ef 00  	andi	a4, t5, 14
80000870: 13 67 17 00  	ori	a4, a4, 1
80000874: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000878: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000087c: 27 30 15 fe  	fsd	ft1, -32(a0)
80000880: 13 f7 fb 00  	andi	a4, s7, 15
80000884: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000888: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000088c: 27 34 15 fe  	fsd	ft1, -24(a0)
80000890: 13 f7 88 00  	andi	a4, a7, 8
80000894: 13 67 17 00  	ori	a4, a4, 1
80000898: d3 00 07 d2  	fcvt.d.w	ft1, a4
8000089c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008a0: 27 38 15 fe  	fsd	ft1, -16(a0)
800008a4: 13 f7 fa 00  	andi	a4, s5, 15
800008a8: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008ac: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008b0: 27 3c 15 fe  	fsd	ft1, -8(a0)
800008b4: 13 77 e8 00  	andi	a4, a6, 14
800008b8: 13 67 17 00  	ori	a4, a4, 1
800008bc: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008c0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008c4: 27 30 15 00  	fsd	ft1, 0(a0)
800008c8: 13 77 fb 00  	andi	a4, s6, 15
800008cc: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008d0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008d4: 27 34 15 00  	fsd	ft1, 8(a0)
800008d8: 13 77 ce 00  	andi	a4, t3, 12
800008dc: 13 67 17 00  	ori	a4, a4, 1
800008e0: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008e4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008e8: 27 38 15 00  	fsd	ft1, 16(a0)
800008ec: 13 77 fc 00  	andi	a4, s8, 15
800008f0: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008f4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008f8: 27 3c 15 00  	fsd	ft1, 24(a0)
800008fc: 13 f7 ef 00  	andi	a4, t6, 14
80000900: 13 67 17 00  	ori	a4, a4, 1
80000904: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000908: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000090c: 27 30 15 02  	fsd	ft1, 32(a0)
80000910: 13 f7 f4 00  	andi	a4, s1, 15
80000914: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000918: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000091c: 27 34 15 02  	fsd	ft1, 40(a0)
80000920: 23 2a 55 02  	sw	t0, 52(a0)
80000924: 23 28 65 02  	sw	t1, 48(a0)
80000928: 13 f7 f5 00  	andi	a4, a1, 15
8000092c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000930: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000934: 27 3c 15 02  	fsd	ft1, 56(a0)
80000938: 13 77 ea 00  	andi	a4, s4, 14
8000093c: 13 67 17 00  	ori	a4, a4, 1
80000940: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000944: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000948: 27 30 15 04  	fsd	ft1, 64(a0)
8000094c: 13 77 f6 00  	andi	a4, a2, 15
80000950: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000954: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000958: 27 34 15 04  	fsd	ft1, 72(a0)
;   for (i = 0; i < ni; i++)
8000095c: 93 86 16 00  	addi	a3, a3, 1
80000960: 13 06 36 01  	addi	a2, a2, 19
80000964: 13 0a 2a 01  	addi	s4, s4, 18
80000968: 93 89 29 00  	addi	s3, s3, 2
8000096c: 93 85 15 01  	addi	a1, a1, 17
80000970: 13 04 34 00  	addi	s0, s0, 3
80000974: 13 09 49 00  	addi	s2, s2, 4
80000978: 93 84 f4 00  	addi	s1, s1, 15
8000097c: 93 87 57 00  	addi	a5, a5, 5
80000980: 93 8f ef 00  	addi	t6, t6, 14
80000984: 13 0f 6f 00  	addi	t5, t5, 6
80000988: 13 0c dc 00  	addi	s8, s8, 13
8000098c: 93 8b 7b 00  	addi	s7, s7, 7
80000990: 13 0e ce 00  	addi	t3, t3, 12
80000994: 93 88 88 00  	addi	a7, a7, 8
80000998: 13 0b bb 00  	addi	s6, s6, 11
8000099c: 13 05 05 0a  	addi	a0, a0, 160
800009a0: 13 08 a8 00  	addi	a6, a6, 10
800009a4: 93 8a 9a 00  	addi	s5, s5, 9
800009a8: e3 12 76 e6  	bne	a2, t2, 0x8000080c <.LBB0_46+0x34>
800009ac: 13 03 00 00  	mv	t1, zero
800009b0: 93 03 00 00  	mv	t2, zero
800009b4: 13 0e 00 00  	mv	t3, zero
800009b8: 23 22 91 03  	sw	s9, 36(sp)
;   for (i = 0; i < nk; i++)
800009bc: 93 86 8c 04  	addi	a3, s9, 72
800009c0: 93 0f 20 00  	addi	t6, zero, 2
800009c4: 37 95 e3 38  	lui	a0, 233017
800009c8: 93 07 95 e3  	addi	a5, a0, -455
800009cc: 93 04 20 01  	addi	s1, zero, 18
800009d0: 37 c5 96 3f  	lui	a0, 260460
800009d4: 13 08 c5 16  	addi	a6, a0, 364
800009d8: 37 75 c1 16  	lui	a0, 93207
800009dc: 93 02 75 c1  	addi	t0, a0, -1001
800009e0: 93 08 a0 02  	addi	a7, zero, 42
800009e4: 13 09 20 00  	addi	s2, zero, 2
800009e8: 13 0f 20 00  	addi	t5, zero, 2
800009ec: 13 0a 20 00  	addi	s4, zero, 2
800009f0: 93 0a 20 00  	addi	s5, zero, 2
800009f4: 13 0b 20 00  	addi	s6, zero, 2
800009f8: 93 0b 20 00  	addi	s7, zero, 2
800009fc: 13 0c 20 00  	addi	s8, zero, 2
80000a00: 93 09 20 00  	addi	s3, zero, 2
80000a04: 13 0d 20 00  	addi	s10, zero, 2
80000a08: 93 0d 20 00  	addi	s11, zero, 2
80000a0c: 93 00 20 00  	addi	ra, zero, 2
80000a10: 13 07 20 00  	addi	a4, zero, 2
80000a14: 13 04 20 00  	addi	s0, zero, 2
80000a18: 93 0c 20 00  	addi	s9, zero, 2
80000a1c: 93 05 20 00  	addi	a1, zero, 2
80000a20: 13 06 20 00  	addi	a2, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000a24: 33 b5 f5 02  	mulhu	a0, a1, a5
80000a28: 13 55 25 00  	srli	a0, a0, 2
80000a2c: 33 05 95 02  	mul	a0, a0, s1
80000a30: 33 85 a5 40  	sub	a0, a1, a0
80000a34: d3 00 05 d2  	fcvt.d.w	ft1, a0

80000a38 <.LBB0_47>:
80000a38: 17 35 00 00  	auipc	a0, 3
80000a3c: 13 05 85 6a  	addi	a0, a0, 1704
80000a40: 07 30 05 00  	fld	ft0, 0(a0)
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000a44: 33 35 f6 02  	mulhu	a0, a2, a5
80000a48: 13 55 25 00  	srli	a0, a0, 2
80000a4c: 33 05 95 02  	mul	a0, a0, s1
80000a50: 33 05 a6 40  	sub	a0, a2, a0
80000a54: 53 01 05 d2  	fcvt.d.w	ft2, a0
80000a58: 33 35 fe 02  	mulhu	a0, t3, a5
80000a5c: 13 55 25 00  	srli	a0, a0, 2
80000a60: 33 05 95 02  	mul	a0, a0, s1
80000a64: 33 85 ac 40  	sub	a0, s9, a0
80000a68: d3 01 05 d2  	fcvt.d.w	ft3, a0
80000a6c: 33 35 f7 02  	mulhu	a0, a4, a5
80000a70: 13 55 25 00  	srli	a0, a0, 2
80000a74: 33 05 95 02  	mul	a0, a0, s1
80000a78: 33 05 a7 40  	sub	a0, a4, a0
80000a7c: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000a80: 33 b5 fd 02  	mulhu	a0, s11, a5
80000a84: 13 55 25 00  	srli	a0, a0, 2
80000a88: 33 05 95 02  	mul	a0, a0, s1
80000a8c: 33 85 ad 40  	sub	a0, s11, a0
80000a90: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000a94: 33 b5 f3 02  	mulhu	a0, t2, a5
80000a98: 13 55 25 00  	srli	a0, a0, 2
80000a9c: 33 05 95 02  	mul	a0, a0, s1
80000aa0: 33 85 a9 40  	sub	a0, s3, a0
80000aa4: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000aa8: 33 b5 fb 02  	mulhu	a0, s7, a5
80000aac: 13 55 25 00  	srli	a0, a0, 2
80000ab0: 33 05 95 02  	mul	a0, a0, s1
80000ab4: 33 85 ab 40  	sub	a0, s7, a0
80000ab8: d3 03 05 d2  	fcvt.d.w	ft7, a0
80000abc: 33 b5 fa 02  	mulhu	a0, s5, a5
80000ac0: 13 55 25 00  	srli	a0, a0, 2
80000ac4: 33 05 95 02  	mul	a0, a0, s1
80000ac8: 33 85 aa 40  	sub	a0, s5, a0
80000acc: 53 05 05 d2  	fcvt.d.w	fa0, a0
80000ad0: 33 35 f3 02  	mulhu	a0, t1, a5
80000ad4: 13 55 25 00  	srli	a0, a0, 2
80000ad8: 33 05 95 02  	mul	a0, a0, s1
80000adc: 33 05 af 40  	sub	a0, t5, a0
80000ae0: d3 05 05 d2  	fcvt.d.w	fa1, a0
80000ae4: 33 b5 ff 02  	mulhu	a0, t6, a5
80000ae8: 13 55 25 00  	srli	a0, a0, 2
80000aec: 33 05 95 02  	mul	a0, a0, s1
80000af0: 33 85 af 40  	sub	a0, t6, a0
80000af4: 53 06 05 d2  	fcvt.d.w	fa2, a0
80000af8: 33 35 f9 02  	mulhu	a0, s2, a5
80000afc: 13 55 25 00  	srli	a0, a0, 2
80000b00: 33 05 95 02  	mul	a0, a0, s1
80000b04: 33 05 a9 40  	sub	a0, s2, a0
80000b08: d3 06 05 d2  	fcvt.d.w	fa3, a0
80000b0c: 33 35 fa 02  	mulhu	a0, s4, a5
80000b10: 13 55 25 00  	srli	a0, a0, 2
80000b14: 33 05 95 02  	mul	a0, a0, s1
80000b18: 33 05 aa 40  	sub	a0, s4, a0
80000b1c: 53 07 05 d2  	fcvt.d.w	fa4, a0
80000b20: 33 35 fb 02  	mulhu	a0, s6, a5
80000b24: 13 55 25 00  	srli	a0, a0, 2
80000b28: 33 05 95 02  	mul	a0, a0, s1
80000b2c: 33 05 ab 40  	sub	a0, s6, a0
80000b30: d3 07 05 d2  	fcvt.d.w	fa5, a0
80000b34: 33 35 fc 02  	mulhu	a0, s8, a5
80000b38: 13 55 25 00  	srli	a0, a0, 2
80000b3c: 33 05 95 02  	mul	a0, a0, s1
80000b40: 33 05 ac 40  	sub	a0, s8, a0
80000b44: 53 08 05 d2  	fcvt.d.w	fa6, a0
80000b48: 33 35 fd 02  	mulhu	a0, s10, a5
80000b4c: 13 55 25 00  	srli	a0, a0, 2
80000b50: 33 05 95 02  	mul	a0, a0, s1
80000b54: 33 05 ad 40  	sub	a0, s10, a0
80000b58: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000b5c: 33 b5 f0 02  	mulhu	a0, ra, a5
80000b60: 13 55 25 00  	srli	a0, a0, 2
80000b64: 33 05 95 02  	mul	a0, a0, s1
80000b68: 33 85 a0 40  	sub	a0, ra, a0
80000b6c: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000b70: 33 35 f4 02  	mulhu	a0, s0, a5
80000b74: 13 55 25 00  	srli	a0, a0, 2
80000b78: 33 05 95 02  	mul	a0, a0, s1
80000b7c: 33 05 a4 40  	sub	a0, s0, a0
80000b80: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000b84: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b88: 27 bc 16 fa  	fsd	ft1, -72(a3)
80000b8c: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80000b90: 27 b0 16 fc  	fsd	ft1, -64(a3)
80000b94: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80000b98: 27 b4 16 fc  	fsd	ft1, -56(a3)
80000b9c: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80000ba0: 27 b8 16 fc  	fsd	ft1, -48(a3)
80000ba4: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80000ba8: 27 bc 16 fc  	fsd	ft1, -40(a3)
80000bac: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80000bb0: 27 b0 16 fe  	fsd	ft1, -32(a3)
80000bb4: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80000bb8: 27 b4 16 fe  	fsd	ft1, -24(a3)
80000bbc: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80000bc0: 27 b8 16 fe  	fsd	ft1, -16(a3)
80000bc4: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80000bc8: 27 bc 16 fe  	fsd	ft1, -8(a3)
80000bcc: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80000bd0: 27 b0 16 00  	fsd	ft1, 0(a3)
80000bd4: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80000bd8: 27 b4 16 00  	fsd	ft1, 8(a3)
80000bdc: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80000be0: 27 b8 16 00  	fsd	ft1, 16(a3)
80000be4: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80000be8: 27 bc 16 00  	fsd	ft1, 24(a3)
80000bec: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80000bf0: 27 b0 16 02  	fsd	ft1, 32(a3)
80000bf4: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80000bf8: 27 b4 16 02  	fsd	ft1, 40(a3)
80000bfc: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80000c00: 27 b8 16 02  	fsd	ft1, 48(a3)
80000c04: 53 f0 0e 12  	fmul.d	ft0, ft9, ft0
80000c08: 27 bc 06 02  	fsd	ft0, 56(a3)
80000c0c: 23 a2 06 05  	sw	a6, 68(a3)
80000c10: 23 a0 56 04  	sw	t0, 64(a3)
;   for (i = 0; i < nk; i++)
80000c14: 13 06 26 00  	addi	a2, a2, 2
80000c18: 93 85 15 00  	addi	a1, a1, 1
80000c1c: 93 8c 3c 00  	addi	s9, s9, 3
80000c20: 13 0e 3e 00  	addi	t3, t3, 3
80000c24: 13 04 14 01  	addi	s0, s0, 17
80000c28: 13 07 47 00  	addi	a4, a4, 4
80000c2c: 93 80 00 01  	addi	ra, ra, 16
80000c30: 93 8d 5d 00  	addi	s11, s11, 5
80000c34: 13 0d fd 00  	addi	s10, s10, 15
80000c38: 93 89 69 00  	addi	s3, s3, 6
80000c3c: 93 83 63 00  	addi	t2, t2, 6
80000c40: 13 0c ec 00  	addi	s8, s8, 14
80000c44: 93 8b 7b 00  	addi	s7, s7, 7
80000c48: 13 0b db 00  	addi	s6, s6, 13
80000c4c: 93 8a 8a 00  	addi	s5, s5, 8
80000c50: 13 0a ca 00  	addi	s4, s4, 12
80000c54: 13 0f 9f 00  	addi	t5, t5, 9
80000c58: 13 03 93 00  	addi	t1, t1, 9
80000c5c: 13 09 b9 00  	addi	s2, s2, 11
80000c60: 93 86 06 09  	addi	a3, a3, 144
80000c64: 93 8f af 00  	addi	t6, t6, 10
80000c68: e3 1e 16 db  	bne	a2, a7, 0x80000a24 <.LBB0_46+0x24c>
80000c6c: 13 08 00 00  	mv	a6, zero
80000c70: 13 0f 00 00  	mv	t5, zero
80000c74: 93 0f 00 00  	mv	t6, zero
80000c78: 93 09 00 00  	mv	s3, zero
80000c7c: 13 0a 00 00  	mv	s4, zero
80000c80: 93 0a 00 00  	mv	s5, zero
80000c84: 13 0b 00 00  	mv	s6, zero
80000c88: 93 0b 00 00  	mv	s7, zero
80000c8c: 13 0c 00 00  	mv	s8, zero
80000c90: 93 0c 00 00  	mv	s9, zero
80000c94: 13 0d 00 00  	mv	s10, zero
80000c98: 93 0d 00 00  	mv	s11, zero
80000c9c: 93 00 00 00  	mv	ra, zero
80000ca0: 13 0e 00 00  	mv	t3, zero
80000ca4: 93 06 00 00  	mv	a3, zero
80000ca8: 93 07 00 00  	mv	a5, zero
80000cac: 13 04 00 00  	mv	s0, zero
80000cb0: 93 04 00 00  	mv	s1, zero
80000cb4: 13 05 00 00  	mv	a0, zero
80000cb8: 13 06 00 00  	mv	a2, zero
80000cbc: 13 07 00 00  	mv	a4, zero
80000cc0: 13 09 00 00  	mv	s2, zero
80000cc4: 93 08 00 00  	mv	a7, zero
;   for (i = 0; i < nj; i++)
80000cc8: 83 25 41 01  	lw	a1, 20(sp)
80000ccc: 93 82 05 06  	addi	t0, a1, 96
80000cd0: b7 95 2e ba  	lui	a1, 762601
80000cd4: 13 83 35 ba  	addi	t1, a1, -1117
80000cd8: 93 03 60 01  	addi	t2, zero, 22
80000cdc: 93 0e a0 fe  	addi	t4, zero, -22
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000ce0: b3 35 69 02  	mulhu	a1, s2, t1
80000ce4: 93 d5 45 00  	srli	a1, a1, 4
80000ce8: b3 85 75 02  	mul	a1, a1, t2
80000cec: b3 05 b9 40  	sub	a1, s2, a1
80000cf0: d3 80 05 d2  	fcvt.d.w	ft1, a1

80000cf4 <.LBB0_48>:
80000cf4: 97 35 00 00  	auipc	a1, 3
80000cf8: 93 85 45 3f  	addi	a1, a1, 1012
80000cfc: 07 b0 05 00  	fld	ft0, 0(a1)
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000d00: b3 35 67 02  	mulhu	a1, a4, t1
80000d04: 93 d5 45 00  	srli	a1, a1, 4
80000d08: b3 85 75 02  	mul	a1, a1, t2
80000d0c: b3 05 b7 40  	sub	a1, a4, a1
80000d10: 53 81 05 d2  	fcvt.d.w	ft2, a1
80000d14: b3 35 65 02  	mulhu	a1, a0, t1
80000d18: 93 d5 45 00  	srli	a1, a1, 4
80000d1c: b3 85 75 02  	mul	a1, a1, t2
80000d20: b3 05 b5 40  	sub	a1, a0, a1
80000d24: d3 81 05 d2  	fcvt.d.w	ft3, a1
80000d28: b3 35 64 02  	mulhu	a1, s0, t1
80000d2c: 93 d5 45 00  	srli	a1, a1, 4
80000d30: b3 85 75 02  	mul	a1, a1, t2
80000d34: b3 05 b4 40  	sub	a1, s0, a1
80000d38: 53 82 05 d2  	fcvt.d.w	ft4, a1
80000d3c: b3 b5 66 02  	mulhu	a1, a3, t1
80000d40: 93 d5 45 00  	srli	a1, a1, 4
80000d44: b3 85 75 02  	mul	a1, a1, t2
80000d48: b3 85 b6 40  	sub	a1, a3, a1
80000d4c: d3 82 05 d2  	fcvt.d.w	ft5, a1
80000d50: b3 35 6e 02  	mulhu	a1, t3, t1
80000d54: 93 d5 45 00  	srli	a1, a1, 4
80000d58: b3 85 75 02  	mul	a1, a1, t2
80000d5c: b3 05 be 40  	sub	a1, t3, a1
80000d60: 53 83 05 d2  	fcvt.d.w	ft6, a1
80000d64: b3 b5 6d 02  	mulhu	a1, s11, t1
80000d68: 93 d5 45 00  	srli	a1, a1, 4
80000d6c: b3 85 75 02  	mul	a1, a1, t2
80000d70: b3 85 bd 40  	sub	a1, s11, a1
80000d74: d3 83 05 d2  	fcvt.d.w	ft7, a1
80000d78: b3 b5 6c 02  	mulhu	a1, s9, t1
80000d7c: 93 d5 45 00  	srli	a1, a1, 4
80000d80: b3 85 75 02  	mul	a1, a1, t2
80000d84: b3 85 bc 40  	sub	a1, s9, a1
80000d88: 53 85 05 d2  	fcvt.d.w	fa0, a1
80000d8c: b3 b5 6b 02  	mulhu	a1, s7, t1
80000d90: 93 d5 45 00  	srli	a1, a1, 4
80000d94: b3 85 75 02  	mul	a1, a1, t2
80000d98: b3 85 bb 40  	sub	a1, s7, a1
80000d9c: d3 85 05 d2  	fcvt.d.w	fa1, a1
80000da0: b3 b5 6a 02  	mulhu	a1, s5, t1
80000da4: 93 d5 45 00  	srli	a1, a1, 4
80000da8: b3 85 75 02  	mul	a1, a1, t2
80000dac: b3 85 ba 40  	sub	a1, s5, a1
80000db0: 53 86 05 d2  	fcvt.d.w	fa2, a1
80000db4: b3 b5 69 02  	mulhu	a1, s3, t1
80000db8: 93 d5 45 00  	srli	a1, a1, 4
80000dbc: b3 85 75 02  	mul	a1, a1, t2
80000dc0: b3 85 b9 40  	sub	a1, s3, a1
80000dc4: d3 86 05 d2  	fcvt.d.w	fa3, a1
80000dc8: b3 35 68 02  	mulhu	a1, a6, t1
80000dcc: 93 d5 45 00  	srli	a1, a1, 4
80000dd0: b3 85 75 02  	mul	a1, a1, t2
80000dd4: b3 05 b8 40  	sub	a1, a6, a1
80000dd8: 53 87 05 d2  	fcvt.d.w	fa4, a1
80000ddc: b3 35 6f 02  	mulhu	a1, t5, t1
80000de0: 93 d5 45 00  	srli	a1, a1, 4
80000de4: b3 85 75 02  	mul	a1, a1, t2
80000de8: b3 05 bf 40  	sub	a1, t5, a1
80000dec: d3 87 05 d2  	fcvt.d.w	fa5, a1
80000df0: b3 b5 6f 02  	mulhu	a1, t6, t1
80000df4: 93 d5 45 00  	srli	a1, a1, 4
80000df8: b3 85 75 02  	mul	a1, a1, t2
80000dfc: b3 85 bf 40  	sub	a1, t6, a1
80000e00: 53 88 05 d2  	fcvt.d.w	fa6, a1
80000e04: b3 35 6a 02  	mulhu	a1, s4, t1
80000e08: 93 d5 45 00  	srli	a1, a1, 4
80000e0c: b3 85 75 02  	mul	a1, a1, t2
80000e10: b3 05 ba 40  	sub	a1, s4, a1
80000e14: d3 88 05 d2  	fcvt.d.w	fa7, a1
80000e18: b3 35 6b 02  	mulhu	a1, s6, t1
80000e1c: 93 d5 45 00  	srli	a1, a1, 4
80000e20: b3 85 75 02  	mul	a1, a1, t2
80000e24: b3 05 bb 40  	sub	a1, s6, a1
80000e28: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80000e2c: b3 35 6c 02  	mulhu	a1, s8, t1
80000e30: 93 d5 45 00  	srli	a1, a1, 4
80000e34: b3 85 75 02  	mul	a1, a1, t2
80000e38: b3 05 bc 40  	sub	a1, s8, a1
80000e3c: d3 8e 05 d2  	fcvt.d.w	ft9, a1
80000e40: b3 35 6d 02  	mulhu	a1, s10, t1
80000e44: 93 d5 45 00  	srli	a1, a1, 4
80000e48: b3 85 75 02  	mul	a1, a1, t2
80000e4c: b3 05 bd 40  	sub	a1, s10, a1
80000e50: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80000e54: b3 b5 60 02  	mulhu	a1, ra, t1
80000e58: 93 d5 45 00  	srli	a1, a1, 4
80000e5c: b3 85 75 02  	mul	a1, a1, t2
80000e60: b3 85 b0 40  	sub	a1, ra, a1
80000e64: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80000e68: b3 b5 67 02  	mulhu	a1, a5, t1
80000e6c: 93 d5 45 00  	srli	a1, a1, 4
80000e70: b3 85 75 02  	mul	a1, a1, t2
80000e74: b3 85 b7 40  	sub	a1, a5, a1
80000e78: 53 84 05 d2  	fcvt.d.w	fs0, a1
80000e7c: b3 b5 64 02  	mulhu	a1, s1, t1
80000e80: 93 d5 45 00  	srli	a1, a1, 4
80000e84: b3 85 75 02  	mul	a1, a1, t2
80000e88: b3 85 b4 40  	sub	a1, s1, a1
80000e8c: d3 84 05 d2  	fcvt.d.w	fs1, a1
80000e90: b3 35 66 02  	mulhu	a1, a2, t1
80000e94: 93 d5 45 00  	srli	a1, a1, 4
80000e98: b3 85 75 02  	mul	a1, a1, t2
80000e9c: b3 05 b6 40  	sub	a1, a2, a1
80000ea0: 53 89 05 d2  	fcvt.d.w	fs2, a1
80000ea4: b3 b5 68 02  	mulhu	a1, a7, t1
80000ea8: 93 d5 45 00  	srli	a1, a1, 4
80000eac: b3 85 d5 03  	mul	a1, a1, t4
80000eb0: b3 85 b8 00  	add	a1, a7, a1
80000eb4: d3 89 05 d2  	fcvt.d.w	fs3, a1
80000eb8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ebc: 27 b0 12 fa  	fsd	ft1, -96(t0)
80000ec0: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80000ec4: 27 b4 12 fa  	fsd	ft1, -88(t0)
80000ec8: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80000ecc: 27 b8 12 fa  	fsd	ft1, -80(t0)
80000ed0: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80000ed4: 27 bc 12 fa  	fsd	ft1, -72(t0)
80000ed8: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80000edc: 27 b0 12 fc  	fsd	ft1, -64(t0)
80000ee0: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80000ee4: 27 b4 12 fc  	fsd	ft1, -56(t0)
80000ee8: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80000eec: 27 b8 12 fc  	fsd	ft1, -48(t0)
80000ef0: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80000ef4: 27 bc 12 fc  	fsd	ft1, -40(t0)
80000ef8: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80000efc: 27 b0 12 fe  	fsd	ft1, -32(t0)
80000f00: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80000f04: 27 b4 12 fe  	fsd	ft1, -24(t0)
80000f08: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80000f0c: 27 b8 12 fe  	fsd	ft1, -16(t0)
80000f10: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80000f14: 27 bc 12 fe  	fsd	ft1, -8(t0)
80000f18: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80000f1c: 27 b0 12 00  	fsd	ft1, 0(t0)
80000f20: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80000f24: 27 b4 12 00  	fsd	ft1, 8(t0)
80000f28: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80000f2c: 27 b8 12 00  	fsd	ft1, 16(t0)
80000f30: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80000f34: 27 bc 12 00  	fsd	ft1, 24(t0)
80000f38: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80000f3c: 27 b0 12 02  	fsd	ft1, 32(t0)
80000f40: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
80000f44: 27 b4 12 02  	fsd	ft1, 40(t0)
80000f48: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
80000f4c: 27 b8 12 02  	fsd	ft1, 48(t0)
80000f50: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80000f54: 27 b0 12 04  	fsd	ft1, 64(t0)
80000f58: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
80000f5c: 27 b4 12 04  	fsd	ft1, 72(t0)
80000f60: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80000f64: 27 b8 12 04  	fsd	ft1, 80(t0)
80000f68: 23 ae 02 02  	sw	zero, 60(t0)
80000f6c: 23 ac 02 02  	sw	zero, 56(t0)
80000f70: 53 f0 09 12  	fmul.d	ft0, fs3, ft0
80000f74: 27 bc 02 04  	fsd	ft0, 88(t0)
;   for (i = 0; i < nj; i++)
80000f78: 93 88 a8 01  	addi	a7, a7, 26
80000f7c: 13 09 39 00  	addi	s2, s2, 3
80000f80: 13 07 47 00  	addi	a4, a4, 4
80000f84: 13 06 96 01  	addi	a2, a2, 25
80000f88: 13 05 55 00  	addi	a0, a0, 5
80000f8c: 93 84 84 01  	addi	s1, s1, 24
80000f90: 13 04 64 00  	addi	s0, s0, 6
80000f94: 93 87 77 01  	addi	a5, a5, 23
80000f98: 93 86 76 00  	addi	a3, a3, 7
80000f9c: 13 0e 8e 00  	addi	t3, t3, 8
80000fa0: 93 80 50 01  	addi	ra, ra, 21
80000fa4: 93 8d 9d 00  	addi	s11, s11, 9
80000fa8: 13 0d 4d 01  	addi	s10, s10, 20
80000fac: 93 8c ac 00  	addi	s9, s9, 10
80000fb0: 13 0c 3c 01  	addi	s8, s8, 19
80000fb4: 93 8b bb 00  	addi	s7, s7, 11
80000fb8: 13 0b 2b 01  	addi	s6, s6, 18
80000fbc: 93 8a ca 00  	addi	s5, s5, 12
80000fc0: 13 0a 1a 01  	addi	s4, s4, 17
80000fc4: 93 89 d9 00  	addi	s3, s3, 13
80000fc8: 93 8f 0f 01  	addi	t6, t6, 16
80000fcc: 93 82 02 0c  	addi	t0, t0, 192
80000fd0: 13 0f ff 00  	addi	t5, t5, 15
80000fd4: 13 08 e8 00  	addi	a6, a6, 14
80000fd8: 93 05 40 1d  	addi	a1, zero, 468
80000fdc: e3 92 b8 d0  	bne	a7, a1, 0x80000ce0 <.LBB0_47+0x2a8>
80000fe0: 23 26 01 02  	sw	zero, 44(sp)
80000fe4: 13 04 00 00  	mv	s0, zero
80000fe8: 13 06 00 00  	mv	a2, zero
;   for (i = 0; i < nm; i++)
80000fec: 83 25 c1 01  	lw	a1, 28(sp)
80000ff0: 93 86 85 05  	addi	a3, a1, 88
80000ff4: 93 0f 20 00  	addi	t6, zero, 2
80000ff8: 37 d5 cc cc  	lui	a0, 838861
80000ffc: 93 07 d5 cc  	addi	a5, a0, -819
80001000: 93 08 40 01  	addi	a7, zero, 20
80001004: 37 85 94 3f  	lui	a0, 260424
80001008: 13 05 15 ae  	addi	a0, a0, -1311
8000100c: 23 20 a1 02  	sw	a0, 32(sp)
80001010: 37 15 ae 47  	lui	a0, 293601
80001014: 13 05 b5 47  	addi	a0, a0, 1147
80001018: 23 28 a1 00  	sw	a0, 16(sp)
8000101c: 93 09 20 00  	addi	s3, zero, 2
80001020: 13 0a 20 00  	addi	s4, zero, 2
80001024: 93 0a 20 00  	addi	s5, zero, 2
80001028: 13 0b 20 00  	addi	s6, zero, 2
8000102c: 93 0b 20 00  	addi	s7, zero, 2
80001030: 93 05 20 00  	addi	a1, zero, 2
80001034: 13 0c 20 00  	addi	s8, zero, 2
80001038: 93 0c 20 00  	addi	s9, zero, 2
8000103c: 13 0d 20 00  	addi	s10, zero, 2
80001040: 93 00 20 00  	addi	ra, zero, 2
80001044: 93 03 20 00  	addi	t2, zero, 2
80001048: 13 0f 20 00  	addi	t5, zero, 2
8000104c: 13 09 20 00  	addi	s2, zero, 2
80001050: 93 0d 20 00  	addi	s11, zero, 2
80001054: 93 04 20 00  	addi	s1, zero, 2
80001058: 93 0e 20 00  	addi	t4, zero, 2
8000105c: 13 03 20 00  	addi	t1, zero, 2
80001060: 13 08 20 00  	addi	a6, zero, 2
80001064: 93 02 20 00  	addi	t0, zero, 2
80001068: 13 0e 20 00  	addi	t3, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
8000106c: 33 37 fe 02  	mulhu	a4, t3, a5
80001070: 13 57 47 00  	srli	a4, a4, 4
80001074: 13 05 03 00  	mv	a0, t1
80001078: 33 03 17 03  	mul	t1, a4, a7
8000107c: 33 07 6e 40  	sub	a4, t3, t1
80001080: 13 03 05 00  	mv	t1, a0
80001084: d3 00 07 d2  	fcvt.d.w	ft1, a4

80001088 <.LBB0_49>:
80001088: 17 37 00 00  	auipc	a4, 3
8000108c: 13 07 87 06  	addi	a4, a4, 104
80001090: 07 30 07 00  	fld	ft0, 0(a4)
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001094: 33 b7 f2 02  	mulhu	a4, t0, a5
80001098: 13 57 47 00  	srli	a4, a4, 4
8000109c: 33 07 17 03  	mul	a4, a4, a7
800010a0: 33 87 e2 40  	sub	a4, t0, a4
800010a4: 53 01 07 d2  	fcvt.d.w	ft2, a4
800010a8: 33 37 f6 02  	mulhu	a4, a2, a5
800010ac: 13 57 47 00  	srli	a4, a4, 4
800010b0: 33 07 17 03  	mul	a4, a4, a7
800010b4: 33 07 e5 40  	sub	a4, a0, a4
800010b8: d3 01 07 d2  	fcvt.d.w	ft3, a4
800010bc: 33 37 f4 02  	mulhu	a4, s0, a5
800010c0: 13 57 47 00  	srli	a4, a4, 4
800010c4: 33 07 17 03  	mul	a4, a4, a7
800010c8: 33 87 e4 40  	sub	a4, s1, a4
800010cc: 53 02 07 d2  	fcvt.d.w	ft4, a4
800010d0: 33 37 f9 02  	mulhu	a4, s2, a5
800010d4: 13 57 47 00  	srli	a4, a4, 4
800010d8: 33 07 17 03  	mul	a4, a4, a7
800010dc: 33 07 e9 40  	sub	a4, s2, a4
800010e0: d3 02 07 d2  	fcvt.d.w	ft5, a4
800010e4: 33 37 ff 02  	mulhu	a4, t5, a5
800010e8: 13 57 47 00  	srli	a4, a4, 4
800010ec: 33 07 17 03  	mul	a4, a4, a7
800010f0: 33 07 ef 40  	sub	a4, t5, a4
800010f4: 53 03 07 d2  	fcvt.d.w	ft6, a4
800010f8: 33 b7 f0 02  	mulhu	a4, ra, a5
800010fc: 13 57 47 00  	srli	a4, a4, 4
80001100: 33 07 17 03  	mul	a4, a4, a7
80001104: 33 87 e0 40  	sub	a4, ra, a4
80001108: d3 03 07 d2  	fcvt.d.w	ft7, a4
8000110c: 33 b7 fc 02  	mulhu	a4, s9, a5
80001110: 13 57 47 00  	srli	a4, a4, 4
80001114: 33 07 17 03  	mul	a4, a4, a7
80001118: 33 87 ec 40  	sub	a4, s9, a4
8000111c: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001120: 03 25 c1 02  	lw	a0, 44(sp)
80001124: 33 37 f5 02  	mulhu	a4, a0, a5
80001128: 13 57 47 00  	srli	a4, a4, 4
8000112c: 33 07 17 03  	mul	a4, a4, a7
80001130: 33 87 e5 40  	sub	a4, a1, a4
80001134: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001138: 33 37 fb 02  	mulhu	a4, s6, a5
8000113c: 13 57 47 00  	srli	a4, a4, 4
80001140: 33 07 17 03  	mul	a4, a4, a7
80001144: 33 07 eb 40  	sub	a4, s6, a4
80001148: 53 06 07 d2  	fcvt.d.w	fa2, a4
8000114c: 33 37 fa 02  	mulhu	a4, s4, a5
80001150: 13 57 47 00  	srli	a4, a4, 4
80001154: 33 07 17 03  	mul	a4, a4, a7
80001158: 33 07 ea 40  	sub	a4, s4, a4
8000115c: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001160: 33 b7 ff 02  	mulhu	a4, t6, a5
80001164: 13 57 47 00  	srli	a4, a4, 4
80001168: 33 07 17 03  	mul	a4, a4, a7
8000116c: 33 87 ef 40  	sub	a4, t6, a4
80001170: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001174: 33 b7 f9 02  	mulhu	a4, s3, a5
80001178: 13 57 47 00  	srli	a4, a4, 4
8000117c: 33 07 17 03  	mul	a4, a4, a7
80001180: 33 87 e9 40  	sub	a4, s3, a4
80001184: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001188: 33 b7 fa 02  	mulhu	a4, s5, a5
8000118c: 13 57 47 00  	srli	a4, a4, 4
80001190: 33 07 17 03  	mul	a4, a4, a7
80001194: 33 87 ea 40  	sub	a4, s5, a4
80001198: 53 08 07 d2  	fcvt.d.w	fa6, a4
8000119c: 33 b7 fb 02  	mulhu	a4, s7, a5
800011a0: 13 57 47 00  	srli	a4, a4, 4
800011a4: 33 07 17 03  	mul	a4, a4, a7
800011a8: 33 87 eb 40  	sub	a4, s7, a4
800011ac: d3 08 07 d2  	fcvt.d.w	fa7, a4
800011b0: 33 37 fc 02  	mulhu	a4, s8, a5
800011b4: 13 57 47 00  	srli	a4, a4, 4
800011b8: 33 07 17 03  	mul	a4, a4, a7
800011bc: 33 07 ec 40  	sub	a4, s8, a4
800011c0: 53 0e 07 d2  	fcvt.d.w	ft8, a4
800011c4: 33 37 fd 02  	mulhu	a4, s10, a5
800011c8: 13 57 47 00  	srli	a4, a4, 4
800011cc: 33 07 17 03  	mul	a4, a4, a7
800011d0: 33 07 ed 40  	sub	a4, s10, a4
800011d4: d3 0e 07 d2  	fcvt.d.w	ft9, a4
800011d8: 33 b7 f3 02  	mulhu	a4, t2, a5
800011dc: 13 57 47 00  	srli	a4, a4, 4
800011e0: 33 07 17 03  	mul	a4, a4, a7
800011e4: 33 87 e3 40  	sub	a4, t2, a4
800011e8: 53 0f 07 d2  	fcvt.d.w	ft10, a4
800011ec: 33 b7 fd 02  	mulhu	a4, s11, a5
800011f0: 13 57 47 00  	srli	a4, a4, 4
800011f4: 33 07 17 03  	mul	a4, a4, a7
800011f8: 33 87 ed 40  	sub	a4, s11, a4
800011fc: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001200: 33 b7 fe 02  	mulhu	a4, t4, a5
80001204: 13 57 47 00  	srli	a4, a4, 4
80001208: 33 07 17 03  	mul	a4, a4, a7
8000120c: 33 87 ee 40  	sub	a4, t4, a4
80001210: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001214: 33 37 f8 02  	mulhu	a4, a6, a5
80001218: 13 57 47 00  	srli	a4, a4, 4
8000121c: 33 07 17 03  	mul	a4, a4, a7
80001220: 33 07 e8 40  	sub	a4, a6, a4
80001224: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001228: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000122c: 27 b4 16 fa  	fsd	ft1, -88(a3)
80001230: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80001234: 27 b8 16 fa  	fsd	ft1, -80(a3)
80001238: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
8000123c: 27 bc 16 fa  	fsd	ft1, -72(a3)
80001240: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80001244: 27 b0 16 fc  	fsd	ft1, -64(a3)
80001248: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
8000124c: 27 b4 16 fc  	fsd	ft1, -56(a3)
80001250: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80001254: 27 b8 16 fc  	fsd	ft1, -48(a3)
80001258: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
8000125c: 27 bc 16 fc  	fsd	ft1, -40(a3)
80001260: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80001264: 27 b0 16 fe  	fsd	ft1, -32(a3)
80001268: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
8000126c: 27 b4 16 fe  	fsd	ft1, -24(a3)
80001270: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80001274: 27 b8 16 fe  	fsd	ft1, -16(a3)
80001278: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
8000127c: 27 bc 16 fe  	fsd	ft1, -8(a3)
80001280: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80001284: 27 b0 16 00  	fsd	ft1, 0(a3)
80001288: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
8000128c: 27 b4 16 00  	fsd	ft1, 8(a3)
80001290: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80001294: 27 b8 16 00  	fsd	ft1, 16(a3)
80001298: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
8000129c: 27 bc 16 00  	fsd	ft1, 24(a3)
800012a0: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
800012a4: 27 b0 16 02  	fsd	ft1, 32(a3)
800012a8: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
800012ac: 27 b4 16 02  	fsd	ft1, 40(a3)
800012b0: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
800012b4: 27 b8 16 02  	fsd	ft1, 48(a3)
800012b8: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
800012bc: 27 b0 16 04  	fsd	ft1, 64(a3)
800012c0: d3 70 04 12  	fmul.d	ft1, fs0, ft0
800012c4: 27 b4 16 04  	fsd	ft1, 72(a3)
800012c8: 03 27 01 02  	lw	a4, 32(sp)
800012cc: 23 ae e6 02  	sw	a4, 60(a3)
800012d0: 03 27 01 01  	lw	a4, 16(sp)
800012d4: 23 ac e6 02  	sw	a4, 56(a3)
800012d8: 53 f0 04 12  	fmul.d	ft0, fs1, ft0
800012dc: 27 b8 06 04  	fsd	ft0, 80(a3)
;   for (i = 0; i < nm; i++)
800012e0: 13 0e 2e 00  	addi	t3, t3, 2
800012e4: 93 82 32 00  	addi	t0, t0, 3
800012e8: 13 08 78 01  	addi	a6, a6, 23
800012ec: 13 03 43 00  	addi	t1, t1, 4
800012f0: 13 06 46 00  	addi	a2, a2, 4
800012f4: 93 8e 6e 01  	addi	t4, t4, 22
800012f8: 93 84 54 00  	addi	s1, s1, 5
800012fc: 13 04 54 00  	addi	s0, s0, 5
80001300: 93 8d 5d 01  	addi	s11, s11, 21
80001304: 13 09 69 00  	addi	s2, s2, 6
80001308: 13 0f 7f 00  	addi	t5, t5, 7
8000130c: 93 83 33 01  	addi	t2, t2, 19
80001310: 93 80 80 00  	addi	ra, ra, 8
80001314: 13 0d 2d 01  	addi	s10, s10, 18
80001318: 93 8c 9c 00  	addi	s9, s9, 9
8000131c: 13 0c 1c 01  	addi	s8, s8, 17
80001320: 93 85 a5 00  	addi	a1, a1, 10
80001324: 13 05 a5 00  	addi	a0, a0, 10
80001328: 23 26 a1 02  	sw	a0, 44(sp)
8000132c: 93 8b 0b 01  	addi	s7, s7, 16
80001330: 13 0b bb 00  	addi	s6, s6, 11
80001334: 93 8a fa 00  	addi	s5, s5, 15
80001338: 13 0a ca 00  	addi	s4, s4, 12
8000133c: 93 89 e9 00  	addi	s3, s3, 14
80001340: 93 86 06 0b  	addi	a3, a3, 176
80001344: 93 8f df 00  	addi	t6, t6, 13
80001348: 13 05 20 03  	addi	a0, zero, 50
8000134c: e3 10 ae d2  	bne	t3, a0, 0x8000106c <.LBB0_48+0x378>
80001350: 93 05 00 00  	mv	a1, zero
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001354: 73 25 00 b0  	csrr	a0, mcycle
80001358: 23 28 a1 00  	sw	a0, 16(sp)
8000135c: 13 03 00 09  	addi	t1, zero, 144
80001360: 83 23 81 00  	lw	t2, 8(sp)
80001364: 83 22 41 02  	lw	t0, 36(sp)
80001368: 93 07 00 00  	mv	a5, zero
8000136c: 23 26 b1 02  	sw	a1, 44(sp)
;    E[i][j] += A[i][k] * B[k][j];
80001370: 13 05 00 0a  	addi	a0, zero, 160
80001374: 33 85 a5 02  	mul	a0, a1, a0
80001378: 83 25 81 02  	lw	a1, 40(sp)
8000137c: b3 84 a5 00  	add	s1, a1, a0
80001380: 13 8e 84 00  	addi	t3, s1, 8
80001384: 13 8f 04 01  	addi	t5, s1, 16
80001388: 93 8f 84 01  	addi	t6, s1, 24
8000138c: 13 89 04 02  	addi	s2, s1, 32
80001390: 93 89 84 02  	addi	s3, s1, 40
80001394: 13 8a 04 03  	addi	s4, s1, 48
80001398: 93 8a 84 03  	addi	s5, s1, 56
8000139c: 13 8b 04 04  	addi	s6, s1, 64
800013a0: 93 8b 84 04  	addi	s7, s1, 72
800013a4: 13 8c 04 05  	addi	s8, s1, 80
800013a8: 93 8c 84 05  	addi	s9, s1, 88
800013ac: 13 8d 04 06  	addi	s10, s1, 96
800013b0: 93 8d 84 06  	addi	s11, s1, 104
800013b4: 93 80 04 07  	addi	ra, s1, 112
800013b8: 93 8e 84 07  	addi	t4, s1, 120
800013bc: 13 85 04 08  	addi	a0, s1, 128
800013c0: 13 86 84 08  	addi	a2, s1, 136
800013c4: 13 87 04 09  	addi	a4, s1, 144
800013c8: 13 84 84 09  	addi	s0, s1, 152
;  E[i][j] = 0.0;
800013cc: b3 85 f3 00  	add	a1, t2, a5
800013d0: 23 a2 05 00  	sw	zero, 4(a1)
800013d4: 23 a0 05 00  	sw	zero, 0(a1)
;    E[i][j] += A[i][k] * B[k][j];
800013d8: 07 b0 04 00  	fld	ft0, 0(s1)
800013dc: 33 88 f2 00  	add	a6, t0, a5
800013e0: 87 30 08 00  	fld	ft1, 0(a6)
800013e4: 53 f0 00 12  	fmul.d	ft0, ft1, ft0
800013e8: 27 b0 05 00  	fsd	ft0, 0(a1)
800013ec: 87 30 0e 00  	fld	ft1, 0(t3)
800013f0: 07 31 08 09  	fld	ft2, 144(a6)
800013f4: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800013f8: 27 b0 05 00  	fsd	ft0, 0(a1)
800013fc: 87 30 0f 00  	fld	ft1, 0(t5)
80001400: 07 31 08 12  	fld	ft2, 288(a6)
80001404: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001408: 27 b0 05 00  	fsd	ft0, 0(a1)
8000140c: 87 b0 0f 00  	fld	ft1, 0(t6)
80001410: 07 31 08 1b  	fld	ft2, 432(a6)
80001414: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001418: 27 b0 05 00  	fsd	ft0, 0(a1)
8000141c: 87 30 09 00  	fld	ft1, 0(s2)
80001420: 07 31 08 24  	fld	ft2, 576(a6)
80001424: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001428: 27 b0 05 00  	fsd	ft0, 0(a1)
8000142c: 87 b0 09 00  	fld	ft1, 0(s3)
80001430: 07 31 08 2d  	fld	ft2, 720(a6)
80001434: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001438: 27 b0 05 00  	fsd	ft0, 0(a1)
8000143c: 87 30 0a 00  	fld	ft1, 0(s4)
80001440: 07 31 08 36  	fld	ft2, 864(a6)
80001444: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001448: 27 b0 05 00  	fsd	ft0, 0(a1)
8000144c: 87 b0 0a 00  	fld	ft1, 0(s5)
80001450: 07 31 08 3f  	fld	ft2, 1008(a6)
80001454: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001458: 27 b0 05 00  	fsd	ft0, 0(a1)
8000145c: 87 30 0b 00  	fld	ft1, 0(s6)
80001460: 07 31 08 48  	fld	ft2, 1152(a6)
80001464: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001468: 27 b0 05 00  	fsd	ft0, 0(a1)
8000146c: 87 b0 0b 00  	fld	ft1, 0(s7)
80001470: 07 31 08 51  	fld	ft2, 1296(a6)
80001474: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001478: 27 b0 05 00  	fsd	ft0, 0(a1)
8000147c: 87 30 0c 00  	fld	ft1, 0(s8)
80001480: 07 31 08 5a  	fld	ft2, 1440(a6)
80001484: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001488: 27 b0 05 00  	fsd	ft0, 0(a1)
8000148c: 87 b0 0c 00  	fld	ft1, 0(s9)
80001490: 07 31 08 63  	fld	ft2, 1584(a6)
80001494: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001498: 27 b0 05 00  	fsd	ft0, 0(a1)
8000149c: 87 30 0d 00  	fld	ft1, 0(s10)
800014a0: 07 31 08 6c  	fld	ft2, 1728(a6)
800014a4: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800014a8: 27 b0 05 00  	fsd	ft0, 0(a1)
800014ac: 87 b0 0d 00  	fld	ft1, 0(s11)
800014b0: 07 31 08 75  	fld	ft2, 1872(a6)
800014b4: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800014b8: 27 b0 05 00  	fsd	ft0, 0(a1)
800014bc: 87 b0 00 00  	fld	ft1, 0(ra)
800014c0: 07 31 08 7e  	fld	ft2, 2016(a6)
800014c4: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800014c8: 27 b0 05 00  	fsd	ft0, 0(a1)
800014cc: 87 b0 0e 00  	fld	ft1, 0(t4)
800014d0: 93 08 88 43  	addi	a7, a6, 1080
800014d4: 07 b1 88 43  	fld	ft2, 1080(a7)
800014d8: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800014dc: 27 b0 05 00  	fsd	ft0, 0(a1)
800014e0: 87 30 05 00  	fld	ft1, 0(a0)
800014e4: 93 06 08 48  	addi	a3, a6, 1152
800014e8: 07 b1 06 48  	fld	ft2, 1152(a3)
800014ec: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800014f0: 27 b0 05 00  	fsd	ft0, 0(a1)
800014f4: 87 30 06 00  	fld	ft1, 0(a2)
800014f8: 93 06 88 4c  	addi	a3, a6, 1224
800014fc: 07 b1 86 4c  	fld	ft2, 1224(a3)
80001500: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001504: 27 b0 05 00  	fsd	ft0, 0(a1)
80001508: 87 30 07 00  	fld	ft1, 0(a4)
8000150c: 93 06 08 51  	addi	a3, a6, 1296
80001510: 07 b1 06 51  	fld	ft2, 1296(a3)
80001514: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001518: 27 b0 05 00  	fsd	ft0, 0(a1)
8000151c: 87 30 04 00  	fld	ft1, 0(s0)
80001520: 93 06 88 55  	addi	a3, a6, 1368
80001524: 07 b1 86 55  	fld	ft2, 1368(a3)
80001528: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
;     for (j = 0; j < nj; j++)
8000152c: 93 87 87 00  	addi	a5, a5, 8
;    E[i][j] += A[i][k] * B[k][j];
80001530: 27 b0 05 00  	fsd	ft0, 0(a1)
;     for (j = 0; j < nj; j++)
80001534: e3 9c 67 e8  	bne	a5, t1, 0x800013cc <.LBB0_49+0x344>
80001538: 83 25 c1 02  	lw	a1, 44(sp)
;  for (i = 0; i < ni; i++)
8000153c: 93 85 15 00  	addi	a1, a1, 1
80001540: 93 83 03 09  	addi	t2, t2, 144
80001544: 13 05 00 01  	addi	a0, zero, 16
80001548: e3 90 a5 e2  	bne	a1, a0, 0x80001368 <.LBB0_49+0x2e0>
8000154c: 93 05 00 00  	mv	a1, zero
;   for (i = 0; i < nj; i++)
80001550: 03 25 c1 01  	lw	a0, 28(sp)
80001554: 13 05 05 42  	addi	a0, a0, 1056
80001558: 13 07 05 42  	addi	a4, a0, 1056
8000155c: 03 29 81 01  	lw	s2, 24(sp)
80001560: 03 2f c1 01  	lw	t5, 28(sp)
80001564: 93 04 00 00  	mv	s1, zero
80001568: 23 20 b1 02  	sw	a1, 32(sp)
;    F[i][j] += C[i][k] * D[k][j];
8000156c: 13 05 00 0c  	addi	a0, zero, 192
80001570: 33 85 a5 02  	mul	a0, a1, a0
80001574: 83 25 41 01  	lw	a1, 20(sp)
80001578: 33 84 a5 00  	add	s0, a1, a0
8000157c: 13 05 84 00  	addi	a0, s0, 8
80001580: 23 26 a1 02  	sw	a0, 44(sp)
80001584: 13 05 04 01  	addi	a0, s0, 16
80001588: 23 24 a1 02  	sw	a0, 40(sp)
8000158c: 13 05 84 01  	addi	a0, s0, 24
80001590: 23 22 a1 02  	sw	a0, 36(sp)
80001594: 93 09 04 02  	addi	s3, s0, 32
80001598: 13 0a 84 02  	addi	s4, s0, 40
8000159c: 93 0a 04 03  	addi	s5, s0, 48
800015a0: 13 0b 84 03  	addi	s6, s0, 56
800015a4: 93 0b 04 04  	addi	s7, s0, 64
800015a8: 13 0c 84 04  	addi	s8, s0, 72
800015ac: 93 0c 04 05  	addi	s9, s0, 80
800015b0: 13 0d 84 05  	addi	s10, s0, 88
800015b4: 93 0d 04 06  	addi	s11, s0, 96
800015b8: 93 00 84 06  	addi	ra, s0, 104
800015bc: 93 0e 04 07  	addi	t4, s0, 112
800015c0: 93 0f 84 07  	addi	t6, s0, 120
800015c4: 93 06 04 08  	addi	a3, s0, 128
800015c8: 93 05 84 08  	addi	a1, s0, 136
800015cc: 93 07 04 09  	addi	a5, s0, 144
800015d0: 13 06 84 09  	addi	a2, s0, 152
800015d4: 13 08 04 0a  	addi	a6, s0, 160
800015d8: 93 08 84 0a  	addi	a7, s0, 168
800015dc: 93 02 04 0b  	addi	t0, s0, 176
800015e0: 13 03 84 0b  	addi	t1, s0, 184
;  F[i][j] = 0.0;
800015e4: b3 03 99 00  	add	t2, s2, s1
800015e8: 23 a2 03 00  	sw	zero, 4(t2)
800015ec: 23 a0 03 00  	sw	zero, 0(t2)
;    F[i][j] += C[i][k] * D[k][j];
800015f0: 07 30 04 00  	fld	ft0, 0(s0)
800015f4: 33 0e 9f 00  	add	t3, t5, s1
800015f8: 87 30 0e 00  	fld	ft1, 0(t3)
800015fc: 53 f0 00 12  	fmul.d	ft0, ft1, ft0
80001600: 27 b0 03 00  	fsd	ft0, 0(t2)
80001604: 03 25 c1 02  	lw	a0, 44(sp)
80001608: 87 30 05 00  	fld	ft1, 0(a0)
8000160c: 07 31 0e 0b  	fld	ft2, 176(t3)
80001610: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001614: 27 b0 03 00  	fsd	ft0, 0(t2)
80001618: 03 25 81 02  	lw	a0, 40(sp)
8000161c: 87 30 05 00  	fld	ft1, 0(a0)
80001620: 07 31 0e 16  	fld	ft2, 352(t3)
80001624: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001628: 27 b0 03 00  	fsd	ft0, 0(t2)
8000162c: 03 25 41 02  	lw	a0, 36(sp)
80001630: 87 30 05 00  	fld	ft1, 0(a0)
80001634: 07 31 0e 21  	fld	ft2, 528(t3)
80001638: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
8000163c: 27 b0 03 00  	fsd	ft0, 0(t2)
80001640: 87 b0 09 00  	fld	ft1, 0(s3)
80001644: 07 31 0e 2c  	fld	ft2, 704(t3)
80001648: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
8000164c: 27 b0 03 00  	fsd	ft0, 0(t2)
80001650: 87 30 0a 00  	fld	ft1, 0(s4)
80001654: 07 31 0e 37  	fld	ft2, 880(t3)
80001658: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
8000165c: 27 b0 03 00  	fsd	ft0, 0(t2)
80001660: 87 b0 0a 00  	fld	ft1, 0(s5)
80001664: 07 31 0e 42  	fld	ft2, 1056(t3)
80001668: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
8000166c: 27 b0 03 00  	fsd	ft0, 0(t2)
80001670: 87 30 0b 00  	fld	ft1, 0(s6)
80001674: 07 31 0e 4d  	fld	ft2, 1232(t3)
80001678: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
8000167c: 27 b0 03 00  	fsd	ft0, 0(t2)
80001680: 87 b0 0b 00  	fld	ft1, 0(s7)
80001684: 07 31 0e 58  	fld	ft2, 1408(t3)
80001688: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
8000168c: 27 b0 03 00  	fsd	ft0, 0(t2)
80001690: 87 30 0c 00  	fld	ft1, 0(s8)
80001694: 07 31 0e 63  	fld	ft2, 1584(t3)
80001698: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
8000169c: 27 b0 03 00  	fsd	ft0, 0(t2)
800016a0: 87 b0 0c 00  	fld	ft1, 0(s9)
800016a4: 07 31 0e 6e  	fld	ft2, 1760(t3)
800016a8: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800016ac: 27 b0 03 00  	fsd	ft0, 0(t2)
800016b0: 87 30 0d 00  	fld	ft1, 0(s10)
800016b4: 07 31 0e 79  	fld	ft2, 1936(t3)
800016b8: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800016bc: 27 b0 03 00  	fsd	ft0, 0(t2)
800016c0: 87 b0 0d 00  	fld	ft1, 0(s11)
800016c4: 13 05 07 00  	mv	a0, a4
800016c8: 33 07 97 00  	add	a4, a4, s1
800016cc: 07 31 07 00  	fld	ft2, 0(a4)
800016d0: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800016d4: 27 b0 03 00  	fsd	ft0, 0(t2)
800016d8: 87 b0 00 00  	fld	ft1, 0(ra)
800016dc: 07 31 07 0b  	fld	ft2, 176(a4)
800016e0: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800016e4: 27 b0 03 00  	fsd	ft0, 0(t2)
800016e8: 87 b0 0e 00  	fld	ft1, 0(t4)
800016ec: 07 31 07 16  	fld	ft2, 352(a4)
800016f0: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800016f4: 27 b0 03 00  	fsd	ft0, 0(t2)
800016f8: 87 b0 0f 00  	fld	ft1, 0(t6)
800016fc: 07 31 07 21  	fld	ft2, 528(a4)
80001700: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001704: 27 b0 03 00  	fsd	ft0, 0(t2)
80001708: 87 b0 06 00  	fld	ft1, 0(a3)
8000170c: 07 31 07 2c  	fld	ft2, 704(a4)
80001710: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001714: 27 b0 03 00  	fsd	ft0, 0(t2)
80001718: 87 b0 05 00  	fld	ft1, 0(a1)
8000171c: 07 31 07 37  	fld	ft2, 880(a4)
80001720: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001724: 27 b0 03 00  	fsd	ft0, 0(t2)
80001728: 87 b0 07 00  	fld	ft1, 0(a5)
8000172c: 07 31 07 42  	fld	ft2, 1056(a4)
80001730: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001734: 27 b0 03 00  	fsd	ft0, 0(t2)
80001738: 87 30 06 00  	fld	ft1, 0(a2)
8000173c: 07 31 07 4d  	fld	ft2, 1232(a4)
80001740: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001744: 27 b0 03 00  	fsd	ft0, 0(t2)
80001748: 87 30 08 00  	fld	ft1, 0(a6)
8000174c: 07 31 07 58  	fld	ft2, 1408(a4)
80001750: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001754: 27 b0 03 00  	fsd	ft0, 0(t2)
80001758: 87 b0 08 00  	fld	ft1, 0(a7)
8000175c: 07 31 07 63  	fld	ft2, 1584(a4)
80001760: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001764: 27 b0 03 00  	fsd	ft0, 0(t2)
80001768: 87 b0 02 00  	fld	ft1, 0(t0)
8000176c: 07 31 07 6e  	fld	ft2, 1760(a4)
80001770: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001774: 27 b0 03 00  	fsd	ft0, 0(t2)
80001778: 87 30 07 79  	fld	ft1, 1936(a4)
8000177c: 13 07 05 00  	mv	a4, a0
80001780: 07 31 03 00  	fld	ft2, 0(t1)
80001784: 43 f0 20 02  	fmadd.d	ft0, ft1, ft2, ft0
;     for (j = 0; j < nl; j++)
80001788: 93 84 84 00  	addi	s1, s1, 8
;    F[i][j] += C[i][k] * D[k][j];
8000178c: 27 b0 03 00  	fsd	ft0, 0(t2)
80001790: 13 05 00 0b  	addi	a0, zero, 176
;     for (j = 0; j < nl; j++)
80001794: e3 98 a4 e4  	bne	s1, a0, 0x800015e4 <.LBB0_49+0x55c>
80001798: 83 25 01 02  	lw	a1, 32(sp)
;   for (i = 0; i < nj; i++)
8000179c: 93 85 15 00  	addi	a1, a1, 1
800017a0: 13 09 09 0b  	addi	s2, s2, 176
800017a4: 13 05 20 01  	addi	a0, zero, 18
800017a8: e3 9e a5 da  	bne	a1, a0, 0x80001564 <.LBB0_49+0x4dc>
800017ac: 93 02 00 00  	mv	t0, zero
800017b0: 13 03 00 0b  	addi	t1, zero, 176
800017b4: 93 08 00 01  	addi	a7, zero, 16
800017b8: 83 23 c1 00  	lw	t2, 12(sp)
800017bc: 83 20 81 00  	lw	ra, 8(sp)
800017c0: 03 28 81 01  	lw	a6, 24(sp)
800017c4: 93 07 00 00  	mv	a5, zero
;    G[i][j] += E[i][k] * F[k][j];
800017c8: 13 05 00 09  	addi	a0, zero, 144
800017cc: 33 85 a2 02  	mul	a0, t0, a0
800017d0: b3 84 a0 00  	add	s1, ra, a0
800017d4: 13 8e 84 00  	addi	t3, s1, 8
800017d8: 93 8e 04 01  	addi	t4, s1, 16
800017dc: 13 8f 84 01  	addi	t5, s1, 24
800017e0: 93 8f 04 02  	addi	t6, s1, 32
800017e4: 13 89 84 02  	addi	s2, s1, 40
800017e8: 93 89 04 03  	addi	s3, s1, 48
800017ec: 13 8a 84 03  	addi	s4, s1, 56
800017f0: 93 8a 04 04  	addi	s5, s1, 64
800017f4: 13 8b 84 04  	addi	s6, s1, 72
800017f8: 93 8b 04 05  	addi	s7, s1, 80
800017fc: 13 8c 84 05  	addi	s8, s1, 88
80001800: 93 8c 04 06  	addi	s9, s1, 96
80001804: 13 8d 84 06  	addi	s10, s1, 104
80001808: 93 8d 04 07  	addi	s11, s1, 112
8000180c: 93 86 84 07  	addi	a3, s1, 120
80001810: 13 85 04 08  	addi	a0, s1, 128
80001814: 13 86 84 08  	addi	a2, s1, 136
;  G[i][j] = 0.0;
80001818: 33 87 f3 00  	add	a4, t2, a5
8000181c: 23 22 07 00  	sw	zero, 4(a4)
80001820: 23 20 07 00  	sw	zero, 0(a4)
;    G[i][j] += E[i][k] * F[k][j];
80001824: 07 b0 04 00  	fld	ft0, 0(s1)
80001828: 33 04 f8 00  	add	s0, a6, a5
8000182c: 87 30 04 00  	fld	ft1, 0(s0)
80001830: 53 f0 00 12  	fmul.d	ft0, ft1, ft0
80001834: 27 30 07 00  	fsd	ft0, 0(a4)
80001838: 87 30 0e 00  	fld	ft1, 0(t3)
8000183c: 07 31 04 0b  	fld	ft2, 176(s0)
80001840: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001844: 27 30 07 00  	fsd	ft0, 0(a4)
80001848: 87 b0 0e 00  	fld	ft1, 0(t4)
8000184c: 07 31 04 16  	fld	ft2, 352(s0)
80001850: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001854: 27 30 07 00  	fsd	ft0, 0(a4)
80001858: 87 30 0f 00  	fld	ft1, 0(t5)
8000185c: 07 31 04 21  	fld	ft2, 528(s0)
80001860: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001864: 27 30 07 00  	fsd	ft0, 0(a4)
80001868: 87 b0 0f 00  	fld	ft1, 0(t6)
8000186c: 07 31 04 2c  	fld	ft2, 704(s0)
80001870: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001874: 27 30 07 00  	fsd	ft0, 0(a4)
80001878: 87 30 09 00  	fld	ft1, 0(s2)
8000187c: 07 31 04 37  	fld	ft2, 880(s0)
80001880: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001884: 27 30 07 00  	fsd	ft0, 0(a4)
80001888: 87 b0 09 00  	fld	ft1, 0(s3)
8000188c: 07 31 04 42  	fld	ft2, 1056(s0)
80001890: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001894: 27 30 07 00  	fsd	ft0, 0(a4)
80001898: 87 30 0a 00  	fld	ft1, 0(s4)
8000189c: 07 31 04 4d  	fld	ft2, 1232(s0)
800018a0: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800018a4: 27 30 07 00  	fsd	ft0, 0(a4)
800018a8: 87 b0 0a 00  	fld	ft1, 0(s5)
800018ac: 07 31 04 58  	fld	ft2, 1408(s0)
800018b0: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800018b4: 27 30 07 00  	fsd	ft0, 0(a4)
800018b8: 87 30 0b 00  	fld	ft1, 0(s6)
800018bc: 07 31 04 63  	fld	ft2, 1584(s0)
800018c0: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800018c4: 27 30 07 00  	fsd	ft0, 0(a4)
800018c8: 87 b0 0b 00  	fld	ft1, 0(s7)
800018cc: 07 31 04 6e  	fld	ft2, 1760(s0)
800018d0: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800018d4: 27 30 07 00  	fsd	ft0, 0(a4)
800018d8: 87 30 0c 00  	fld	ft1, 0(s8)
800018dc: 07 31 04 79  	fld	ft2, 1936(s0)
800018e0: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800018e4: 27 30 07 00  	fsd	ft0, 0(a4)
800018e8: 87 b0 0c 00  	fld	ft1, 0(s9)
800018ec: 93 05 04 42  	addi	a1, s0, 1056
800018f0: 07 b1 05 42  	fld	ft2, 1056(a1)
800018f4: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
800018f8: 27 30 07 00  	fsd	ft0, 0(a4)
800018fc: 87 30 0d 00  	fld	ft1, 0(s10)
80001900: 93 05 84 47  	addi	a1, s0, 1144
80001904: 07 b1 85 47  	fld	ft2, 1144(a1)
80001908: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
8000190c: 27 30 07 00  	fsd	ft0, 0(a4)
80001910: 87 b0 0d 00  	fld	ft1, 0(s11)
80001914: 93 05 04 4d  	addi	a1, s0, 1232
80001918: 07 b1 05 4d  	fld	ft2, 1232(a1)
8000191c: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001920: 27 30 07 00  	fsd	ft0, 0(a4)
80001924: 87 b0 06 00  	fld	ft1, 0(a3)
80001928: 93 05 84 52  	addi	a1, s0, 1320
8000192c: 07 b1 85 52  	fld	ft2, 1320(a1)
80001930: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001934: 27 30 07 00  	fsd	ft0, 0(a4)
80001938: 87 30 05 00  	fld	ft1, 0(a0)
8000193c: 93 05 04 58  	addi	a1, s0, 1408
80001940: 07 b1 05 58  	fld	ft2, 1408(a1)
80001944: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
80001948: 27 30 07 00  	fsd	ft0, 0(a4)
8000194c: 87 30 06 00  	fld	ft1, 0(a2)
80001950: 93 05 84 5d  	addi	a1, s0, 1496
80001954: 07 b1 85 5d  	fld	ft2, 1496(a1)
80001958: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
;     for (j = 0; j < nl; j++)
8000195c: 93 87 87 00  	addi	a5, a5, 8
;    G[i][j] += E[i][k] * F[k][j];
80001960: 27 30 07 00  	fsd	ft0, 0(a4)
;     for (j = 0; j < nl; j++)
80001964: e3 9a 67 ea  	bne	a5, t1, 0x80001818 <.LBB0_49+0x790>
;   for (i = 0; i < ni; i++)
80001968: 93 82 12 00  	addi	t0, t0, 1
8000196c: 93 83 03 0b  	addi	t2, t2, 176
80001970: e3 9a 12 e5  	bne	t0, a7, 0x800017c4 <.LBB0_49+0x73c>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001974: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80001978: 83 25 01 01  	lw	a1, 16(sp)
8000197c: b3 05 b5 40  	sub	a1, a0, a1

80001980 <.LBB0_50>:
80001980: 17 25 00 00  	auipc	a0, 2
80001984: 13 05 15 4b  	addi	a0, a0, 1201
80001988: 97 00 00 00  	auipc	ra, 0
8000198c: e7 80 00 16  	jalr	352(ra)
80001990: 03 25 c1 00  	lw	a0, 12(sp)
80001994: 13 05 85 05  	addi	a0, a0, 88
80001998: 53 00 00 d2  	fcvt.d.w	ft0, zero
8000199c: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
800019a0: 87 30 85 fa  	fld	ft1, -88(a0)
800019a4: 07 31 05 fb  	fld	ft2, -80(a0)
800019a8: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800019ac: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800019b0: 87 30 85 fb  	fld	ft1, -72(a0)
800019b4: 07 31 05 fc  	fld	ft2, -64(a0)
800019b8: 87 31 85 fc  	fld	ft3, -56(a0)
800019bc: 07 32 05 fd  	fld	ft4, -48(a0)
800019c0: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800019c4: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800019c8: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800019cc: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800019d0: 87 30 85 fd  	fld	ft1, -40(a0)
800019d4: 07 31 05 fe  	fld	ft2, -32(a0)
800019d8: 87 31 85 fe  	fld	ft3, -24(a0)
800019dc: 07 32 05 ff  	fld	ft4, -16(a0)
800019e0: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800019e4: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800019e8: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800019ec: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800019f0: 87 30 85 ff  	fld	ft1, -8(a0)
800019f4: 07 31 05 00  	fld	ft2, 0(a0)
800019f8: 87 31 85 00  	fld	ft3, 8(a0)
800019fc: 07 32 05 01  	fld	ft4, 16(a0)
80001a00: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80001a04: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001a08: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001a0c: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001a10: 87 30 85 01  	fld	ft1, 24(a0)
80001a14: 07 31 05 02  	fld	ft2, 32(a0)
80001a18: 87 31 85 02  	fld	ft3, 40(a0)
80001a1c: 07 32 05 03  	fld	ft4, 48(a0)
80001a20: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80001a24: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001a28: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001a2c: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001a30: 87 30 85 03  	fld	ft1, 56(a0)
80001a34: 07 31 05 04  	fld	ft2, 64(a0)
80001a38: 87 31 85 04  	fld	ft3, 72(a0)
80001a3c: 07 32 05 05  	fld	ft4, 80(a0)
80001a40: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80001a44: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001a48: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001a4c: 53 70 02 02  	fadd.d	ft0, ft4, ft0
;     for (int i = 0; i < n; i++){
80001a50: 93 85 f5 ff  	addi	a1, a1, -1
80001a54: 13 05 05 0b  	addi	a0, a0, 176
80001a58: e3 94 05 f4  	bnez	a1, 0x800019a0 <.LBB0_50+0x20>

80001a5c <.LBB0_51>:
80001a5c: 17 25 00 00  	auipc	a0, 2
80001a60: 13 05 c5 69  	addi	a0, a0, 1692
80001a64: 87 30 05 00  	fld	ft1, 0(a0)
;   double error = r - r_true;
80001a68: 53 70 10 02  	fadd.d	ft0, ft0, ft1
;   error = error < 0.0 ? -error : error;
80001a6c: 53 24 00 22  	fabs.d	fs0, ft0
;   printf("error = %f\n", error);
80001a70: 27 38 81 02  	fsd	fs0, 48(sp)
80001a74: 03 26 01 03  	lw	a2, 48(sp)
80001a78: 83 26 41 03  	lw	a3, 52(sp)

80001a7c <.LBB0_52>:
80001a7c: 17 25 00 00  	auipc	a0, 2
80001a80: 13 05 95 3a  	addi	a0, a0, 937
80001a84: 97 00 00 00  	auipc	ra, 0
80001a88: e7 80 40 06  	jalr	100(ra)

80001a8c <.LBB0_53>:
80001a8c: 17 25 00 00  	auipc	a0, 2
80001a90: 13 05 45 67  	addi	a0, a0, 1652
80001a94: 07 30 05 00  	fld	ft0, 0(a0)
;   return error > 0.0001;
80001a98: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80001a9c: 87 39 81 03  	fld	fs3, 56(sp)
80001aa0: 07 39 01 04  	fld	fs2, 64(sp)
80001aa4: 87 34 81 04  	fld	fs1, 72(sp)
80001aa8: 07 34 01 05  	fld	fs0, 80(sp)
80001aac: 83 2d c1 05  	lw	s11, 92(sp)
80001ab0: 03 2d 01 06  	lw	s10, 96(sp)
80001ab4: 83 2c 41 06  	lw	s9, 100(sp)
80001ab8: 03 2c 81 06  	lw	s8, 104(sp)
80001abc: 83 2b c1 06  	lw	s7, 108(sp)
80001ac0: 03 2b 01 07  	lw	s6, 112(sp)
80001ac4: 83 2a 41 07  	lw	s5, 116(sp)
80001ac8: 03 2a 81 07  	lw	s4, 120(sp)
80001acc: 83 29 c1 07  	lw	s3, 124(sp)
80001ad0: 03 29 01 08  	lw	s2, 128(sp)
80001ad4: 83 24 41 08  	lw	s1, 132(sp)
80001ad8: 03 24 81 08  	lw	s0, 136(sp)
80001adc: 83 20 c1 08  	lw	ra, 140(sp)
80001ae0: 13 01 01 09  	addi	sp, sp, 144
80001ae4: 67 80 00 00  	ret

80001ae8 <printf_>:
; {
80001ae8: 13 01 01 fd  	addi	sp, sp, -48
80001aec: 23 26 11 00  	sw	ra, 12(sp)
80001af0: 93 02 05 00  	mv	t0, a0
80001af4: 23 26 11 03  	sw	a7, 44(sp)
80001af8: 23 24 01 03  	sw	a6, 40(sp)
80001afc: 23 22 f1 02  	sw	a5, 36(sp)
80001b00: 23 20 e1 02  	sw	a4, 32(sp)
80001b04: 23 2e d1 00  	sw	a3, 28(sp)
80001b08: 23 2c c1 00  	sw	a2, 24(sp)
80001b0c: 23 2a b1 00  	sw	a1, 20(sp)
80001b10: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001b14: 23 24 a1 00  	sw	a0, 8(sp)

80001b18 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80001b18: 17 15 00 00  	auipc	a0, 1
80001b1c: 13 05 45 c2  	addi	a0, a0, -988
80001b20: 93 05 71 00  	addi	a1, sp, 7
80001b24: 13 06 f0 ff  	addi	a2, zero, -1
80001b28: 13 07 41 01  	addi	a4, sp, 20
80001b2c: 93 86 02 00  	mv	a3, t0
80001b30: 97 00 00 00  	auipc	ra, 0
80001b34: e7 80 40 01  	jalr	20(ra)
;   return ret;
80001b38: 83 20 c1 00  	lw	ra, 12(sp)
80001b3c: 13 01 01 03  	addi	sp, sp, 48
80001b40: 67 80 00 00  	ret

80001b44 <_vsnprintf.llvm.17592004524093383706>:
; {
80001b44: 13 01 01 f9  	addi	sp, sp, -112
80001b48: 23 26 11 06  	sw	ra, 108(sp)
80001b4c: 23 24 81 06  	sw	s0, 104(sp)
80001b50: 23 22 91 06  	sw	s1, 100(sp)
80001b54: 23 20 21 07  	sw	s2, 96(sp)
80001b58: 23 2e 31 05  	sw	s3, 92(sp)
80001b5c: 23 2c 41 05  	sw	s4, 88(sp)
80001b60: 23 2a 51 05  	sw	s5, 84(sp)
80001b64: 23 28 61 05  	sw	s6, 80(sp)
80001b68: 23 26 71 05  	sw	s7, 76(sp)
80001b6c: 23 24 81 05  	sw	s8, 72(sp)
80001b70: 23 22 91 05  	sw	s9, 68(sp)
80001b74: 23 20 a1 05  	sw	s10, 64(sp)
80001b78: 23 2e b1 03  	sw	s11, 60(sp)
80001b7c: 93 09 07 00  	mv	s3, a4
80001b80: 13 84 06 00  	mv	s0, a3
80001b84: 93 0a 06 00  	mv	s5, a2
80001b88: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80001b8c: 63 86 05 00  	beqz	a1, 0x80001b98 <.LBB1_183>
80001b90: 13 09 05 00  	mv	s2, a0
80001b94: 6f 00 c0 00  	j	0x80001ba0 <.LBB1_183+0x8>

80001b98 <.LBB1_183>:
80001b98: 17 19 00 00  	auipc	s2, 1
80001b9c: 13 09 09 c5  	addi	s2, s2, -944
80001ba0: 13 0c 00 00  	mv	s8, zero
80001ba4: 13 0b 50 02  	addi	s6, zero, 37
80001ba8: 93 0d 00 01  	addi	s11, zero, 16
80001bac: 93 0b e0 02  	addi	s7, zero, 46
80001bb0: 37 15 00 00  	lui	a0, 1
80001bb4: 13 05 05 80  	addi	a0, a0, -2048
80001bb8: 23 2c a1 00  	sw	a0, 24(sp)
80001bbc: 37 05 01 00  	lui	a0, 16
80001bc0: 13 05 f5 ff  	addi	a0, a0, -1
80001bc4: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80001bc8: 13 0d 24 00  	addi	s10, s0, 2
80001bcc: 93 0c 0c 00  	mv	s9, s8
80001bd0: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001bd4: 03 45 04 00  	lbu	a0, 0(s0)
80001bd8: e3 04 05 30  	beqz	a0, 0x800026e0 <.LBB1_124+0x3b0>
80001bdc: 63 08 65 03  	beq	a0, s6, 0x80001c0c <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80001be0: 93 84 1c 00  	addi	s1, s9, 1
80001be4: 93 05 0a 00  	mv	a1, s4
80001be8: 13 86 0c 00  	mv	a2, s9
80001bec: 93 86 0a 00  	mv	a3, s5
80001bf0: e7 00 09 00  	jalr	s2
;       format++;
80001bf4: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80001bf8: 13 0d 1d 00  	addi	s10, s10, 1
80001bfc: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001c00: 03 45 04 00  	lbu	a0, 0(s0)
80001c04: e3 1c 05 fc  	bnez	a0, 0x80001bdc <.LBB1_183+0x44>
80001c08: 6f 00 90 2d  	j	0x800026e0 <.LBB1_124+0x3b0>
;     flags = 0U;
80001c0c: 13 04 00 00  	mv	s0, zero
80001c10: 6f 00 00 01  	j	0x80001c20 <.LBB1_9+0x8>

80001c14 <.LBB1_8>:
80001c14: 93 05 00 01  	addi	a1, zero, 16

80001c18 <.LBB1_9>:
80001c18: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001c1c: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001c20: 03 45 fd ff  	lbu	a0, -1(s10)
80001c24: 93 05 05 fe  	addi	a1, a0, -32
80001c28: 63 ec bd 02  	bltu	s11, a1, 0x80001c60 <.LBB1_15>
80001c2c: 93 95 25 00  	slli	a1, a1, 2

80001c30 <.LBB1_184>:
80001c30: 17 26 00 00  	auipc	a2, 2
80001c34: 13 06 46 21  	addi	a2, a2, 532
80001c38: b3 85 c5 00  	add	a1, a1, a2
80001c3c: 03 a6 05 00  	lw	a2, 0(a1)
80001c40: 93 05 10 00  	addi	a1, zero, 1
80001c44: 67 00 06 00  	jr	a2

80001c48 <.LBB1_12>:
80001c48: 93 05 80 00  	addi	a1, zero, 8
80001c4c: 6f f0 df fc  	j	0x80001c18 <.LBB1_9>

80001c50 <.LBB1_13>:
80001c50: 93 05 40 00  	addi	a1, zero, 4
80001c54: 6f f0 5f fc  	j	0x80001c18 <.LBB1_9>

80001c58 <.LBB1_14>:
80001c58: 93 05 20 00  	addi	a1, zero, 2
80001c5c: 6f f0 df fb  	j	0x80001c18 <.LBB1_9>

80001c60 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001c60: 93 05 05 fd  	addi	a1, a0, -48
80001c64: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80001c68: 93 05 fd ff  	addi	a1, s10, -1
80001c6c: 93 06 90 00  	addi	a3, zero, 9
80001c70: 63 ee c6 06  	bltu	a3, a2, 0x80001cec <.LBB1_15+0x8c>
80001c74: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001c78: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001c7c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001c80: b3 06 8b 03  	mul	a3, s6, s8
80001c84: 93 85 15 00  	addi	a1, a1, 1
80001c88: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001c8c: 93 06 05 fd  	addi	a3, a0, -48
80001c90: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001c94: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001c98: e3 e0 86 ff  	bltu	a3, s8, 0x80001c78 <.LBB1_15+0x18>
80001c9c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001ca0: 63 16 75 0b  	bne	a0, s7, 0x80001d4c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001ca4: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001ca8: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001cac: 93 05 05 fd  	addi	a1, a0, -48
80001cb0: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001cb4: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001cb8: 93 06 90 00  	addi	a3, zero, 9
80001cbc: 63 e0 c6 06  	bltu	a3, a2, 0x80001d1c <.LBB1_15+0xbc>
80001cc0: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001cc4: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001cc8: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001ccc: b3 86 8b 03  	mul	a3, s7, s8
80001cd0: 93 85 15 00  	addi	a1, a1, 1
80001cd4: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001cd8: 93 06 05 fd  	addi	a3, a0, -48
80001cdc: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001ce0: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001ce4: e3 e0 86 ff  	bltu	a3, s8, 0x80001cc4 <.LBB1_15+0x64>
80001ce8: 6f 00 00 07  	j	0x80001d58 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001cec: 13 06 a0 02  	addi	a2, zero, 42
80001cf0: 63 18 c5 04  	bne	a0, a2, 0x80001d40 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001cf4: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001cf8: 63 d4 05 00  	bgez	a1, 0x80001d00 <.LBB1_15+0xa0>
80001cfc: 13 64 24 00  	ori	s0, s0, 2
80001d00: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001d04: 03 45 0d 00  	lbu	a0, 0(s10)
80001d08: 13 d6 f5 41  	srai	a2, a1, 31
80001d0c: b3 85 c5 00  	add	a1, a1, a2
80001d10: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001d14: e3 08 75 f9  	beq	a0, s7, 0x80001ca4 <.LBB1_15+0x44>
80001d18: 6f 00 40 03  	j	0x80001d4c <.LBB1_15+0xec>
;       else if (*format == '*') {
80001d1c: 13 06 a0 02  	addi	a2, zero, 42
80001d20: 63 1a c5 02  	bne	a0, a2, 0x80001d54 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001d24: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001d28: 63 44 70 01  	bgtz	s7, 0x80001d30 <.LBB1_15+0xd0>
80001d2c: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001d30: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001d34: 13 0d 2d 00  	addi	s10, s10, 2
80001d38: 93 89 49 00  	addi	s3, s3, 4
80001d3c: 6f 00 00 02  	j	0x80001d5c <.LBB1_15+0xfc>
80001d40: 13 0b 00 00  	mv	s6, zero
80001d44: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001d48: e3 0e 75 f5  	beq	a0, s7, 0x80001ca4 <.LBB1_15+0x44>
80001d4c: 93 0b 00 00  	mv	s7, zero
80001d50: 6f 00 c0 00  	j	0x80001d5c <.LBB1_15+0xfc>
80001d54: 93 0b 00 00  	mv	s7, zero
80001d58: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80001d5c: 93 05 85 f9  	addi	a1, a0, -104
80001d60: 13 d6 15 00  	srli	a2, a1, 1
80001d64: 93 95 f5 01  	slli	a1, a1, 31
80001d68: b3 e5 c5 00  	or	a1, a1, a2
80001d6c: 13 06 90 00  	addi	a2, zero, 9
80001d70: 63 62 b6 06  	bltu	a2, a1, 0x80001dd4 <.LBB1_42>
80001d74: 93 95 25 00  	slli	a1, a1, 2

80001d78 <.LBB1_185>:
80001d78: 17 26 00 00  	auipc	a2, 2
80001d7c: 13 06 06 11  	addi	a2, a2, 272
80001d80: b3 85 c5 00  	add	a1, a1, a2
80001d84: 83 a6 05 00  	lw	a3, 0(a1)
80001d88: 93 05 10 00  	addi	a1, zero, 1
80001d8c: 13 06 00 10  	addi	a2, zero, 256
80001d90: 67 80 06 00  	jr	a3

80001d94 <.LBB1_36>:
;         if (*format == 'h') {
80001d94: 03 45 1d 00  	lbu	a0, 1(s10)
80001d98: 93 05 80 06  	addi	a1, zero, 104
80001d9c: 63 12 b5 12  	bne	a0, a1, 0x80001ec0 <.LBB1_53+0x48>
80001da0: 93 05 20 00  	addi	a1, zero, 2
80001da4: 13 06 00 0c  	addi	a2, zero, 192
80001da8: 6f 00 00 02  	j	0x80001dc8 <.LBB1_41>

80001dac <.LBB1_38>:
80001dac: 13 06 00 20  	addi	a2, zero, 512
80001db0: 6f 00 80 01  	j	0x80001dc8 <.LBB1_41>

80001db4 <.LBB1_39>:
;         if (*format == 'l') {
80001db4: 03 45 1d 00  	lbu	a0, 1(s10)
80001db8: 93 05 c0 06  	addi	a1, zero, 108
80001dbc: 63 18 b5 10  	bne	a0, a1, 0x80001ecc <.LBB1_53+0x54>
80001dc0: 93 05 20 00  	addi	a1, zero, 2
80001dc4: 13 06 00 30  	addi	a2, zero, 768

80001dc8 <.LBB1_41>:
80001dc8: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001dcc: 03 45 0d 00  	lbu	a0, 0(s10)
80001dd0: 33 64 c4 00  	or	s0, s0, a2

80001dd4 <.LBB1_42>:
;     switch (*format) {
80001dd4: 93 05 b5 fd  	addi	a1, a0, -37
80001dd8: 13 06 30 05  	addi	a2, zero, 83
80001ddc: 63 64 b6 10  	bltu	a2, a1, 0x80001ee4 <.LBB1_59>
80001de0: 93 95 25 00  	slli	a1, a1, 2

80001de4 <.LBB1_186>:
80001de4: 17 26 00 00  	auipc	a2, 2
80001de8: 13 06 c6 0c  	addi	a2, a2, 204
80001dec: b3 85 c5 00  	add	a1, a1, a2
80001df0: 03 a6 05 00  	lw	a2, 0(a1)
80001df4: 93 05 80 00  	addi	a1, zero, 8
80001df8: 13 0c 00 01  	addi	s8, zero, 16
80001dfc: 67 00 06 00  	jr	a2

80001e00 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001e00: 13 74 f4 fe  	andi	s0, s0, -17
80001e04: 13 0c a0 00  	addi	s8, zero, 10

80001e08 <.LBB1_45>:
;         if (*format == 'X') {
80001e08: 93 05 80 05  	addi	a1, zero, 88
80001e0c: 63 14 b5 00  	bne	a0, a1, 0x80001e14 <.LBB1_45+0xc>
80001e10: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001e14: 93 05 40 06  	addi	a1, zero, 100
80001e18: 63 08 b5 0e  	beq	a0, a1, 0x80001f08 <.LBB1_62+0x8>
80001e1c: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001e20: 13 06 90 06  	addi	a2, zero, 105
80001e24: 63 02 c5 0e  	beq	a0, a2, 0x80001f08 <.LBB1_62+0x8>
80001e28: 6f 00 80 0d  	j	0x80001f00 <.LBB1_62>

80001e2c <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001e2c: 93 05 60 04  	addi	a1, zero, 70
80001e30: 63 14 b5 00  	bne	a0, a1, 0x80001e38 <.LBB1_49+0xc>
80001e34: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001e38: 13 85 79 00  	addi	a0, s3, 7
80001e3c: 13 75 85 ff  	andi	a0, a0, -8
80001e40: 07 35 05 00  	fld	fa0, 0(a0)
80001e44: 93 09 85 00  	addi	s3, a0, 8
80001e48: 13 05 09 00  	mv	a0, s2
80001e4c: 93 05 0a 00  	mv	a1, s4
80001e50: 13 86 0c 00  	mv	a2, s9
80001e54: 93 86 0a 00  	mv	a3, s5
80001e58: 13 87 0b 00  	mv	a4, s7
80001e5c: 93 07 0b 00  	mv	a5, s6
80001e60: 13 08 04 00  	mv	a6, s0
80001e64: 97 10 00 00  	auipc	ra, 1
80001e68: e7 80 80 98  	jalr	-1656(ra)
80001e6c: 6f 00 00 7c  	j	0x8000262c <.LBB1_124+0x2fc>

80001e70 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001e70: 83 25 81 01  	lw	a1, 24(sp)
80001e74: 33 64 b4 00  	or	s0, s0, a1

80001e78 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001e78: 13 65 25 00  	ori	a0, a0, 2
80001e7c: 93 05 70 04  	addi	a1, zero, 71
80001e80: 63 14 b5 00  	bne	a0, a1, 0x80001e88 <.LBB1_53+0x10>
80001e84: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001e88: 13 85 79 00  	addi	a0, s3, 7
80001e8c: 13 75 85 ff  	andi	a0, a0, -8
80001e90: 07 35 05 00  	fld	fa0, 0(a0)
80001e94: 93 09 85 00  	addi	s3, a0, 8
80001e98: 13 05 09 00  	mv	a0, s2
80001e9c: 93 05 0a 00  	mv	a1, s4
80001ea0: 13 86 0c 00  	mv	a2, s9
80001ea4: 93 86 0a 00  	mv	a3, s5
80001ea8: 13 87 0b 00  	mv	a4, s7
80001eac: 93 07 0b 00  	mv	a5, s6
80001eb0: 13 08 04 00  	mv	a6, s0
80001eb4: 97 10 00 00  	auipc	ra, 1
80001eb8: e7 80 80 01  	jalr	24(ra)
80001ebc: 6f 00 00 77  	j	0x8000262c <.LBB1_124+0x2fc>
80001ec0: 13 64 04 08  	ori	s0, s0, 128
80001ec4: 13 0d 1d 00  	addi	s10, s10, 1
80001ec8: 6f f0 df f0  	j	0x80001dd4 <.LBB1_42>
80001ecc: 13 64 04 10  	ori	s0, s0, 256
80001ed0: 13 0d 1d 00  	addi	s10, s10, 1
80001ed4: 6f f0 1f f0  	j	0x80001dd4 <.LBB1_42>

80001ed8 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001ed8: 13 8c 1c 00  	addi	s8, s9, 1
80001edc: 13 05 50 02  	addi	a0, zero, 37
80001ee0: 6f 00 80 00  	j	0x80001ee8 <.LBB1_59+0x4>

80001ee4 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001ee4: 13 8c 1c 00  	addi	s8, s9, 1
80001ee8: 93 05 0a 00  	mv	a1, s4
80001eec: 13 86 0c 00  	mv	a2, s9
80001ef0: 93 86 0a 00  	mv	a3, s5
80001ef4: e7 00 09 00  	jalr	s2
80001ef8: 6f 00 80 73  	j	0x80002630 <.LBB1_124+0x300>

80001efc <.LBB1_61>:
80001efc: 93 05 20 00  	addi	a1, zero, 2

80001f00 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001f00: 13 74 34 ff  	andi	s0, s0, -13
80001f04: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001f08: 93 75 04 40  	andi	a1, s0, 1024
80001f0c: 63 84 05 00  	beqz	a1, 0x80001f14 <.LBB1_62+0x14>
80001f10: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001f14: 93 05 90 06  	addi	a1, zero, 105
80001f18: 63 06 b5 00  	beq	a0, a1, 0x80001f24 <.LBB1_62+0x24>
80001f1c: 93 05 40 06  	addi	a1, zero, 100
80001f20: 63 1c b5 12  	bne	a0, a1, 0x80002058 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001f24: 13 75 04 20  	andi	a0, s0, 512
80001f28: 63 16 05 02  	bnez	a0, 0x80001f54 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001f2c: 13 75 04 10  	andi	a0, s0, 256
80001f30: 63 1c 05 14  	bnez	a0, 0x80002088 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001f34: 13 75 04 04  	andi	a0, s0, 64
80001f38: 63 18 05 4e  	bnez	a0, 0x80002428 <.LBB1_124+0xf8>
80001f3c: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001f40: 93 75 04 08  	andi	a1, s0, 128
80001f44: 63 84 05 4e  	beqz	a1, 0x8000242c <.LBB1_124+0xfc>
80001f48: 13 15 08 01  	slli	a0, a6, 16
80001f4c: 13 58 05 41  	srai	a6, a0, 16
80001f50: 6f 00 c0 4d  	j	0x8000242c <.LBB1_124+0xfc>
80001f54: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80001f58: 13 85 79 00  	addi	a0, s3, 7
80001f5c: 13 75 85 ff  	andi	a0, a0, -8
80001f60: 83 29 05 00  	lw	s3, 0(a0)
80001f64: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80001f68: 13 65 45 00  	ori	a0, a0, 4
80001f6c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001f70: 23 24 a1 00  	sw	a0, 8(sp)
80001f74: 33 e5 a9 00  	or	a0, s3, a0
80001f78: 63 14 05 00  	bnez	a0, 0x80001f80 <.LBB1_62+0x80>
80001f7c: 13 74 f4 fe  	andi	s0, s0, -17
80001f80: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f84: 93 75 04 40  	andi	a1, s0, 1024
80001f88: 93 d5 a5 00  	srli	a1, a1, 10
80001f8c: 33 75 b5 00  	and	a0, a0, a1
80001f90: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f94: 63 14 05 0a  	bnez	a0, 0x8000203c <.LBB1_62+0x13c>
80001f98: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001f9c: 63 da 04 00  	bgez	s1, 0x80001fb0 <.LBB1_62+0xb0>
80001fa0: 33 35 30 01  	snez	a0, s3
80001fa4: b3 09 30 41  	neg	s3, s3
80001fa8: 33 85 a4 00  	add	a0, s1, a0
80001fac: b3 04 a0 40  	neg	s1, a0
80001fb0: 13 09 00 00  	mv	s2, zero
80001fb4: 13 75 04 02  	andi	a0, s0, 32
80001fb8: 13 45 15 06  	xori	a0, a0, 97
80001fbc: 13 05 65 0f  	addi	a0, a0, 246
80001fc0: 23 2a a1 00  	sw	a0, 20(sp)
80001fc4: 6f 00 40 02  	j	0x80001fe8 <.LBB1_62+0xe8>
80001fc8: 13 06 10 00  	addi	a2, zero, 1
80001fcc: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001fd0: 93 36 f9 01  	sltiu	a3, s2, 31
80001fd4: 33 f6 c6 00  	and	a2, a3, a2
80001fd8: 13 89 07 00  	mv	s2, a5
80001fdc: 93 09 05 00  	mv	s3, a0
80001fe0: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001fe4: 63 0c 06 04  	beqz	a2, 0x8000203c <.LBB1_62+0x13c>
;       value /= base;
80001fe8: 13 85 09 00  	mv	a0, s3
80001fec: 93 85 04 00  	mv	a1, s1
80001ff0: 13 06 0c 00  	mv	a2, s8
80001ff4: 93 06 00 00  	mv	a3, zero
80001ff8: 97 e0 ff ff  	auipc	ra, 1048574
80001ffc: e7 80 80 00  	jalr	8(ra)
80002000: 33 06 85 03  	mul	a2, a0, s8
80002004: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002008: 13 77 e6 0f  	andi	a4, a2, 254
8000200c: 93 06 00 03  	addi	a3, zero, 48
80002010: 93 07 a0 00  	addi	a5, zero, 10
80002014: 63 64 f7 00  	bltu	a4, a5, 0x8000201c <.LBB1_62+0x11c>
80002018: 83 26 41 01  	lw	a3, 20(sp)
8000201c: 33 86 c6 00  	add	a2, a3, a2
80002020: 93 06 c1 01  	addi	a3, sp, 28
80002024: b3 86 26 01  	add	a3, a3, s2
80002028: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000202c: e3 9e 04 f8  	bnez	s1, 0x80001fc8 <.LBB1_62+0xc8>
80002030: 33 b6 89 01  	sltu	a2, s3, s8
80002034: 13 46 16 00  	xori	a2, a2, 1
80002038: 6f f0 5f f9  	j	0x80001fcc <.LBB1_62+0xcc>
8000203c: 03 25 41 00  	lw	a0, 4(sp)
80002040: 93 09 85 00  	addi	s3, a0, 8
80002044: 03 25 81 00  	lw	a0, 8(sp)
80002048: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000204c: 13 07 c1 01  	addi	a4, sp, 28
80002050: 03 29 c1 00  	lw	s2, 12(sp)
80002054: 6f 00 80 47  	j	0x800024cc <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80002058: 13 75 04 20  	andi	a0, s0, 512
8000205c: 63 12 05 0c  	bnez	a0, 0x80002120 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80002060: 13 75 04 10  	andi	a0, s0, 256
80002064: 63 1e 05 46  	bnez	a0, 0x800024e0 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80002068: 13 75 04 04  	andi	a0, s0, 64
8000206c: 63 10 05 50  	bnez	a0, 0x8000256c <.LBB1_124+0x23c>
80002070: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80002074: 93 75 04 08  	andi	a1, s0, 128
80002078: 63 8c 05 4e  	beqz	a1, 0x80002570 <.LBB1_124+0x240>
8000207c: 83 25 01 01  	lw	a1, 16(sp)
80002080: 33 75 b5 00  	and	a0, a0, a1
80002084: 6f 00 c0 4e  	j	0x80002570 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80002088: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
8000208c: 63 14 08 00  	bnez	a6, 0x80002094 <.LBB1_62+0x194>
80002090: 13 74 f4 fe  	andi	s0, s0, -17
80002094: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80002098: 13 76 04 40  	andi	a2, s0, 1024
8000209c: 13 56 a6 00  	srli	a2, a2, 10
800020a0: b3 f5 c5 00  	and	a1, a1, a2
800020a4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800020a8: 63 9c 05 40  	bnez	a1, 0x800024c0 <.LBB1_124+0x190>
800020ac: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800020b0: 13 56 f8 41  	srai	a2, a6, 31
800020b4: b3 06 c8 00  	add	a3, a6, a2
800020b8: b3 c6 c6 00  	xor	a3, a3, a2
800020bc: 13 76 04 02  	andi	a2, s0, 32
800020c0: 13 46 16 06  	xori	a2, a2, 97
800020c4: 93 08 66 0f  	addi	a7, a2, 246
800020c8: 6f 00 40 03  	j	0x800020fc <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800020cc: 33 05 f6 00  	add	a0, a2, a5
800020d0: 93 87 15 00  	addi	a5, a1, 1
800020d4: 13 06 c1 01  	addi	a2, sp, 28
800020d8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800020dc: b3 b6 86 01  	sltu	a3, a3, s8
800020e0: 93 c6 16 00  	xori	a3, a3, 1
800020e4: 93 b5 f5 01  	sltiu	a1, a1, 31
800020e8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800020ec: 23 00 a6 00  	sb	a0, 0(a2)
800020f0: 93 85 07 00  	mv	a1, a5
800020f4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800020f8: 63 84 04 3c  	beqz	s1, 0x800024c0 <.LBB1_124+0x190>
;       value /= base;
800020fc: 33 d7 86 03  	divu	a4, a3, s8
80002100: 33 06 87 03  	mul	a2, a4, s8
80002104: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002108: 13 f5 e7 0f  	andi	a0, a5, 254
8000210c: 13 06 00 03  	addi	a2, zero, 48
80002110: 93 04 a0 00  	addi	s1, zero, 10
80002114: e3 6c 95 fa  	bltu	a0, s1, 0x800020cc <.LBB1_62+0x1cc>
80002118: 13 86 08 00  	mv	a2, a7
8000211c: 6f f0 1f fb  	j	0x800020cc <.LBB1_62+0x1cc>
80002120: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80002124: 13 85 79 00  	addi	a0, s3, 7
80002128: 93 75 85 ff  	andi	a1, a0, -8
8000212c: 03 a9 05 00  	lw	s2, 0(a1)
80002130: 13 e5 45 00  	ori	a0, a1, 4
80002134: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80002138: 33 65 39 01  	or	a0, s2, s3
8000213c: 23 24 b1 00  	sw	a1, 8(sp)
80002140: 63 14 05 00  	bnez	a0, 0x80002148 <.LBB1_62+0x248>
80002144: 13 74 f4 fe  	andi	s0, s0, -17
80002148: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000214c: 93 75 04 40  	andi	a1, s0, 1024
80002150: 93 d5 a5 00  	srli	a1, a1, 10
80002154: 33 75 b5 00  	and	a0, a0, a1
80002158: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000215c: 63 18 05 08  	bnez	a0, 0x800021ec <.LBB1_62+0x2ec>
80002160: 93 04 00 00  	mv	s1, zero
80002164: 13 75 04 02  	andi	a0, s0, 32
80002168: 13 45 15 06  	xori	a0, a0, 97
8000216c: 13 05 65 0f  	addi	a0, a0, 246
80002170: 23 2a a1 00  	sw	a0, 20(sp)
80002174: 6f 00 40 02  	j	0x80002198 <.LBB1_62+0x298>
80002178: 13 06 10 00  	addi	a2, zero, 1
8000217c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002180: 93 b6 f4 01  	sltiu	a3, s1, 31
80002184: 33 f6 c6 00  	and	a2, a3, a2
80002188: 93 84 07 00  	mv	s1, a5
8000218c: 13 09 05 00  	mv	s2, a0
80002190: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002194: 63 0c 06 04  	beqz	a2, 0x800021ec <.LBB1_62+0x2ec>
;       value /= base;
80002198: 13 05 09 00  	mv	a0, s2
8000219c: 93 85 09 00  	mv	a1, s3
800021a0: 13 06 0c 00  	mv	a2, s8
800021a4: 93 06 00 00  	mv	a3, zero
800021a8: 97 e0 ff ff  	auipc	ra, 1048574
800021ac: e7 80 80 e5  	jalr	-424(ra)
800021b0: 33 06 85 03  	mul	a2, a0, s8
800021b4: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800021b8: 13 77 e6 0f  	andi	a4, a2, 254
800021bc: 93 06 00 03  	addi	a3, zero, 48
800021c0: 93 07 a0 00  	addi	a5, zero, 10
800021c4: 63 64 f7 00  	bltu	a4, a5, 0x800021cc <.LBB1_62+0x2cc>
800021c8: 83 26 41 01  	lw	a3, 20(sp)
800021cc: 33 86 c6 00  	add	a2, a3, a2
800021d0: 93 06 c1 01  	addi	a3, sp, 28
800021d4: b3 86 96 00  	add	a3, a3, s1
800021d8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800021dc: e3 9e 09 f8  	bnez	s3, 0x80002178 <.LBB1_62+0x278>
800021e0: 33 36 89 01  	sltu	a2, s2, s8
800021e4: 13 46 16 00  	xori	a2, a2, 1
800021e8: 6f f0 5f f9  	j	0x8000217c <.LBB1_62+0x27c>
800021ec: 03 25 81 00  	lw	a0, 8(sp)
800021f0: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800021f4: 13 07 c1 01  	addi	a4, sp, 28
800021f8: 03 29 c1 00  	lw	s2, 12(sp)
800021fc: 6f 00 40 40  	j	0x80002600 <.LBB1_124+0x2d0>

80002200 <.LBB1_108>:
80002200: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80002204: 13 79 24 00  	andi	s2, s0, 2
80002208: 93 04 10 00  	addi	s1, zero, 1
8000220c: 63 1e 09 02  	bnez	s2, 0x80002248 <.LBB1_108+0x48>
80002210: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80002214: 63 6a 9b 02  	bltu	s6, s1, 0x80002248 <.LBB1_108+0x48>
80002218: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
8000221c: 13 0c fb ff  	addi	s8, s6, -1
80002220: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80002224: 33 86 8c 00  	add	a2, s9, s0
80002228: 13 05 00 02  	addi	a0, zero, 32
8000222c: 93 05 0a 00  	mv	a1, s4
80002230: 93 86 0a 00  	mv	a3, s5
80002234: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80002238: 13 04 14 00  	addi	s0, s0, 1
8000223c: e3 14 8c fe  	bne	s8, s0, 0x80002224 <.LBB1_108+0x24>
80002240: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80002244: b3 8c 8c 00  	add	s9, s9, s0
80002248: 03 c5 09 00  	lbu	a0, 0(s3)
8000224c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80002250: 93 89 49 00  	addi	s3, s3, 4
80002254: 13 8c 1c 00  	addi	s8, s9, 1
80002258: 93 05 0a 00  	mv	a1, s4
8000225c: 13 86 0c 00  	mv	a2, s9
80002260: 93 86 0a 00  	mv	a3, s5
80002264: 13 89 0b 00  	mv	s2, s7
80002268: e7 80 0b 00  	jalr	s7
8000226c: 33 b5 64 01  	sltu	a0, s1, s6
80002270: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80002274: 33 65 a4 00  	or	a0, s0, a0
80002278: 63 1c 05 3a  	bnez	a0, 0x80002630 <.LBB1_124+0x300>
;           while (l++ < width) {
8000227c: 33 04 9b 40  	sub	s0, s6, s1
80002280: 93 0b e0 02  	addi	s7, zero, 46
80002284: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80002288: 13 0c 1c 00  	addi	s8, s8, 1
8000228c: 13 05 00 02  	addi	a0, zero, 32
80002290: 93 05 0a 00  	mv	a1, s4
80002294: 93 86 0a 00  	mv	a3, s5
80002298: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000229c: 13 04 f4 ff  	addi	s0, s0, -1
800022a0: e3 12 04 fe  	bnez	s0, 0x80002284 <.LBB1_108+0x84>
800022a4: 13 0b 50 02  	addi	s6, zero, 37
800022a8: 13 04 1d 00  	addi	s0, s10, 1
800022ac: 6f f0 df 91  	j	0x80001bc8 <.LBB1_183+0x30>

800022b0 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
800022b0: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
800022b4: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
800022b8: 63 14 05 00  	bnez	a0, 0x800022c0 <.LBB1_117+0x10>
800022bc: 93 fe fe fe  	andi	t4, t4, -17
800022c0: 93 04 a0 00  	addi	s1, zero, 10
800022c4: 13 04 f0 00  	addi	s0, zero, 15
800022c8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800022cc: 13 f6 0e 40  	andi	a2, t4, 1024
800022d0: 13 56 a6 00  	srli	a2, a2, 10
800022d4: b3 f5 c5 00  	and	a1, a1, a2
800022d8: 93 07 00 00  	mv	a5, zero
800022dc: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800022e0: 63 98 05 10  	bnez	a1, 0x800023f0 <.LBB1_124+0xc0>
800022e4: 93 05 00 00  	mv	a1, zero
800022e8: 6f 00 40 03  	j	0x8000231c <.LBB1_117+0x6c>
800022ec: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800022f0: 33 06 d6 00  	add	a2, a2, a3
800022f4: 93 87 15 00  	addi	a5, a1, 1
800022f8: 93 06 c1 01  	addi	a3, sp, 28
800022fc: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002300: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80002304: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002308: 93 b5 f5 01  	sltiu	a1, a1, 31
8000230c: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002310: 23 80 c6 00  	sb	a2, 0(a3)
80002314: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002318: 63 0c 07 0c  	beqz	a4, 0x800023f0 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000231c: 93 76 e5 00  	andi	a3, a0, 14
80002320: 13 06 00 03  	addi	a2, zero, 48
80002324: e3 e4 96 fc  	bltu	a3, s1, 0x800022ec <.LBB1_117+0x3c>
80002328: 13 06 70 03  	addi	a2, zero, 55
8000232c: 6f f0 1f fc  	j	0x800022ec <.LBB1_117+0x3c>

80002330 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80002330: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80002334: 03 c5 07 00  	lbu	a0, 0(a5)
80002338: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
8000233c: 63 0c 05 02  	beqz	a0, 0x80002374 <.LBB1_124+0x44>
80002340: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80002344: 63 84 0b 00  	beqz	s7, 0x8000234c <.LBB1_124+0x1c>
80002348: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
8000234c: 93 85 f5 ff  	addi	a1, a1, -1
80002350: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80002354: 03 c7 16 00  	lbu	a4, 1(a3)
80002358: 13 86 16 00  	addi	a2, a3, 1
8000235c: b3 36 e0 00  	snez	a3, a4
80002360: 33 37 b0 00  	snez	a4, a1
80002364: 33 77 d7 00  	and	a4, a4, a3
80002368: 93 85 f5 ff  	addi	a1, a1, -1
8000236c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80002370: e3 12 07 fe  	bnez	a4, 0x80002354 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80002374: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80002378: 93 75 04 40  	andi	a1, s0, 1024
8000237c: 93 b4 15 00  	seqz	s1, a1
80002380: 23 2a c1 00  	sw	a2, 20(sp)
80002384: b3 35 76 01  	sltu	a1, a2, s7
80002388: b3 e5 b4 00  	or	a1, s1, a1
8000238c: 63 94 05 00  	bnez	a1, 0x80002394 <.LBB1_124+0x64>
80002390: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80002394: 93 75 24 00  	andi	a1, s0, 2
80002398: 23 26 b1 00  	sw	a1, 12(sp)
8000239c: 63 96 05 2a  	bnez	a1, 0x80002648 <.LBB1_124+0x318>
800023a0: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
800023a4: 63 fe 65 29  	bgeu	a1, s6, 0x80002640 <.LBB1_124+0x310>
800023a8: 23 24 f1 00  	sw	a5, 8(sp)
800023ac: 13 04 00 00  	mv	s0, zero
800023b0: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
800023b4: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
800023b8: 33 86 8c 00  	add	a2, s9, s0
800023bc: 13 05 00 02  	addi	a0, zero, 32
800023c0: 93 05 0a 00  	mv	a1, s4
800023c4: 93 86 0a 00  	mv	a3, s5
800023c8: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
800023cc: 13 04 14 00  	addi	s0, s0, 1
800023d0: e3 14 89 fe  	bne	s2, s0, 0x800023b8 <.LBB1_124+0x88>
800023d4: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800023d8: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
800023dc: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800023e0: 23 2a b1 00  	sw	a1, 20(sp)
800023e4: b3 8c 8c 00  	add	s9, s9, s0
800023e8: 13 09 0c 00  	mv	s2, s8
800023ec: 6f 00 c0 25  	j	0x80002648 <.LBB1_124+0x318>
800023f0: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800023f4: 13 07 c1 01  	addi	a4, sp, 28
800023f8: 93 08 00 01  	addi	a7, zero, 16
800023fc: 13 0e 80 00  	addi	t3, zero, 8
80002400: 13 05 09 00  	mv	a0, s2
80002404: 93 05 0a 00  	mv	a1, s4
80002408: 13 86 0c 00  	mv	a2, s9
8000240c: 93 86 0a 00  	mv	a3, s5
80002410: 13 08 00 00  	mv	a6, zero
80002414: 93 83 0b 00  	mv	t2, s7
80002418: 97 10 00 00  	auipc	ra, 1
8000241c: e7 80 00 fa  	jalr	-96(ra)
80002420: 13 0c 05 00  	mv	s8, a0
80002424: 6f 00 00 21  	j	0x80002634 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80002428: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
8000242c: 63 14 08 00  	bnez	a6, 0x80002434 <.LBB1_124+0x104>
80002430: 13 74 f4 fe  	andi	s0, s0, -17
80002434: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80002438: 13 76 04 40  	andi	a2, s0, 1024
8000243c: 13 56 a6 00  	srli	a2, a2, 10
80002440: b3 f5 c5 00  	and	a1, a1, a2
80002444: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002448: 63 9c 05 06  	bnez	a1, 0x800024c0 <.LBB1_124+0x190>
8000244c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80002450: 13 56 f8 41  	srai	a2, a6, 31
80002454: b3 06 c8 00  	add	a3, a6, a2
80002458: b3 c6 c6 00  	xor	a3, a3, a2
8000245c: 13 76 04 02  	andi	a2, s0, 32
80002460: 13 46 16 06  	xori	a2, a2, 97
80002464: 93 08 66 0f  	addi	a7, a2, 246
80002468: 6f 00 40 03  	j	0x8000249c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000246c: 33 05 f6 00  	add	a0, a2, a5
80002470: 93 87 15 00  	addi	a5, a1, 1
80002474: 13 06 c1 01  	addi	a2, sp, 28
80002478: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000247c: b3 b6 86 01  	sltu	a3, a3, s8
80002480: 93 c6 16 00  	xori	a3, a3, 1
80002484: 93 b5 f5 01  	sltiu	a1, a1, 31
80002488: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000248c: 23 00 a6 00  	sb	a0, 0(a2)
80002490: 93 85 07 00  	mv	a1, a5
80002494: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002498: 63 84 04 02  	beqz	s1, 0x800024c0 <.LBB1_124+0x190>
;       value /= base;
8000249c: 33 d7 86 03  	divu	a4, a3, s8
800024a0: 33 06 87 03  	mul	a2, a4, s8
800024a4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800024a8: 13 f5 e7 0f  	andi	a0, a5, 254
800024ac: 13 06 00 03  	addi	a2, zero, 48
800024b0: 93 04 a0 00  	addi	s1, zero, 10
800024b4: e3 6c 95 fa  	bltu	a0, s1, 0x8000246c <.LBB1_124+0x13c>
800024b8: 13 86 08 00  	mv	a2, a7
800024bc: 6f f0 1f fb  	j	0x8000246c <.LBB1_124+0x13c>
800024c0: 93 89 49 00  	addi	s3, s3, 4
800024c4: 13 58 f8 01  	srli	a6, a6, 31
800024c8: 13 07 c1 01  	addi	a4, sp, 28
800024cc: 13 05 09 00  	mv	a0, s2
800024d0: 93 05 0a 00  	mv	a1, s4
800024d4: 13 86 0c 00  	mv	a2, s9
800024d8: 93 86 0a 00  	mv	a3, s5
800024dc: 6f 00 80 13  	j	0x80002614 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800024e0: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800024e4: 63 14 05 00  	bnez	a0, 0x800024ec <.LBB1_124+0x1bc>
800024e8: 13 74 f4 fe  	andi	s0, s0, -17
800024ec: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800024f0: 13 76 04 40  	andi	a2, s0, 1024
800024f4: 13 56 a6 00  	srli	a2, a2, 10
800024f8: b3 f5 c5 00  	and	a1, a1, a2
800024fc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002500: 63 9c 05 0e  	bnez	a1, 0x800025f8 <.LBB1_124+0x2c8>
80002504: 13 06 00 00  	mv	a2, zero
80002508: 93 75 04 02  	andi	a1, s0, 32
8000250c: 93 c5 15 06  	xori	a1, a1, 97
80002510: 13 88 65 0f  	addi	a6, a1, 246
80002514: 6f 00 40 03  	j	0x80002548 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002518: 33 87 e7 00  	add	a4, a5, a4
8000251c: 93 07 16 00  	addi	a5, a2, 1
80002520: 93 05 c1 01  	addi	a1, sp, 28
80002524: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002528: 33 35 85 01  	sltu	a0, a0, s8
8000252c: 13 45 15 00  	xori	a0, a0, 1
80002530: 13 36 f6 01  	sltiu	a2, a2, 31
80002534: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002538: 23 80 e4 00  	sb	a4, 0(s1)
8000253c: 13 86 07 00  	mv	a2, a5
80002540: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002544: 63 8a 05 0a  	beqz	a1, 0x800025f8 <.LBB1_124+0x2c8>
;       value /= base;
80002548: b3 56 85 03  	divu	a3, a0, s8
8000254c: 33 87 86 03  	mul	a4, a3, s8
80002550: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002554: 93 74 e7 0f  	andi	s1, a4, 254
80002558: 93 07 00 03  	addi	a5, zero, 48
8000255c: 93 05 a0 00  	addi	a1, zero, 10
80002560: e3 ec b4 fa  	bltu	s1, a1, 0x80002518 <.LBB1_124+0x1e8>
80002564: 93 07 08 00  	mv	a5, a6
80002568: 6f f0 1f fb  	j	0x80002518 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
8000256c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80002570: 63 14 05 00  	bnez	a0, 0x80002578 <.LBB1_124+0x248>
80002574: 13 74 f4 fe  	andi	s0, s0, -17
80002578: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000257c: 13 76 04 40  	andi	a2, s0, 1024
80002580: 13 56 a6 00  	srli	a2, a2, 10
80002584: b3 f5 c5 00  	and	a1, a1, a2
80002588: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000258c: 63 96 05 06  	bnez	a1, 0x800025f8 <.LBB1_124+0x2c8>
80002590: 13 06 00 00  	mv	a2, zero
80002594: 93 75 04 02  	andi	a1, s0, 32
80002598: 93 c5 15 06  	xori	a1, a1, 97
8000259c: 13 88 65 0f  	addi	a6, a1, 246
800025a0: 6f 00 40 03  	j	0x800025d4 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800025a4: 33 87 e7 00  	add	a4, a5, a4
800025a8: 93 07 16 00  	addi	a5, a2, 1
800025ac: 93 05 c1 01  	addi	a1, sp, 28
800025b0: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800025b4: 33 35 85 01  	sltu	a0, a0, s8
800025b8: 13 45 15 00  	xori	a0, a0, 1
800025bc: 13 36 f6 01  	sltiu	a2, a2, 31
800025c0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800025c4: 23 80 e4 00  	sb	a4, 0(s1)
800025c8: 13 86 07 00  	mv	a2, a5
800025cc: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800025d0: 63 84 05 02  	beqz	a1, 0x800025f8 <.LBB1_124+0x2c8>
;       value /= base;
800025d4: b3 56 85 03  	divu	a3, a0, s8
800025d8: 33 87 86 03  	mul	a4, a3, s8
800025dc: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800025e0: 93 74 e7 0f  	andi	s1, a4, 254
800025e4: 93 07 00 03  	addi	a5, zero, 48
800025e8: 93 05 a0 00  	addi	a1, zero, 10
800025ec: e3 ec b4 fa  	bltu	s1, a1, 0x800025a4 <.LBB1_124+0x274>
800025f0: 93 07 08 00  	mv	a5, a6
800025f4: 6f f0 1f fb  	j	0x800025a4 <.LBB1_124+0x274>
800025f8: 93 89 49 00  	addi	s3, s3, 4
800025fc: 13 07 c1 01  	addi	a4, sp, 28
80002600: 13 05 09 00  	mv	a0, s2
80002604: 93 05 0a 00  	mv	a1, s4
80002608: 13 86 0c 00  	mv	a2, s9
8000260c: 93 86 0a 00  	mv	a3, s5
80002610: 13 08 00 00  	mv	a6, zero
80002614: 93 08 0c 00  	mv	a7, s8
80002618: 93 83 0b 00  	mv	t2, s7
8000261c: 13 0e 0b 00  	mv	t3, s6
80002620: 93 0e 04 00  	mv	t4, s0
80002624: 97 10 00 00  	auipc	ra, 1
80002628: e7 80 40 d9  	jalr	-620(ra)
8000262c: 13 0c 05 00  	mv	s8, a0
80002630: 13 0b 50 02  	addi	s6, zero, 37
80002634: 93 0b e0 02  	addi	s7, zero, 46
80002638: 13 04 1d 00  	addi	s0, s10, 1
8000263c: 6f f0 cf d8  	j	0x80001bc8 <.LBB1_183+0x30>
80002640: 93 85 15 00  	addi	a1, a1, 1
80002644: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002648: 63 00 05 04  	beqz	a0, 0x80002688 <.LBB1_124+0x358>
8000264c: 13 84 17 00  	addi	s0, a5, 1
80002650: 6f 00 00 03  	j	0x80002680 <.LBB1_124+0x350>
80002654: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80002658: 13 8c 1c 00  	addi	s8, s9, 1
8000265c: 13 75 f5 0f  	andi	a0, a0, 255
80002660: 93 05 0a 00  	mv	a1, s4
80002664: 13 86 0c 00  	mv	a2, s9
80002668: 93 86 0a 00  	mv	a3, s5
8000266c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002670: 03 45 04 00  	lbu	a0, 0(s0)
80002674: 13 04 14 00  	addi	s0, s0, 1
80002678: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000267c: 63 08 05 00  	beqz	a0, 0x8000268c <.LBB1_124+0x35c>
80002680: e3 9c 04 fc  	bnez	s1, 0x80002658 <.LBB1_124+0x328>
80002684: e3 98 0b fc  	bnez	s7, 0x80002654 <.LBB1_124+0x324>
80002688: 13 8c 0c 00  	mv	s8, s9
8000268c: 03 25 c1 00  	lw	a0, 12(sp)
80002690: 13 35 15 00  	seqz	a0, a0
80002694: 03 26 41 01  	lw	a2, 20(sp)
80002698: b3 35 66 01  	sltu	a1, a2, s6
8000269c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800026a0: 33 65 b5 00  	or	a0, a0, a1
800026a4: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
800026a8: e3 14 05 f8  	bnez	a0, 0x80002630 <.LBB1_124+0x300>
;           while (l++ < width) {
800026ac: 33 04 cb 40  	sub	s0, s6, a2
800026b0: 93 0b e0 02  	addi	s7, zero, 46
800026b4: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800026b8: 13 0c 1c 00  	addi	s8, s8, 1
800026bc: 13 05 00 02  	addi	a0, zero, 32
800026c0: 93 05 0a 00  	mv	a1, s4
800026c4: 93 86 0a 00  	mv	a3, s5
800026c8: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800026cc: 13 04 f4 ff  	addi	s0, s0, -1
800026d0: e3 12 04 fe  	bnez	s0, 0x800026b4 <.LBB1_124+0x384>
800026d4: 13 0b 50 02  	addi	s6, zero, 37
800026d8: 13 04 1d 00  	addi	s0, s10, 1
800026dc: 6f f0 cf ce  	j	0x80001bc8 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800026e0: 13 86 0c 00  	mv	a2, s9
800026e4: 63 e4 5c 01  	bltu	s9, s5, 0x800026ec <.LBB1_124+0x3bc>
800026e8: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800026ec: 13 05 00 00  	mv	a0, zero
800026f0: 93 05 0a 00  	mv	a1, s4
800026f4: 93 86 0a 00  	mv	a3, s5
800026f8: e7 00 09 00  	jalr	s2
;   return (int)idx;
800026fc: 13 85 0c 00  	mv	a0, s9
80002700: 83 2d c1 03  	lw	s11, 60(sp)
80002704: 03 2d 01 04  	lw	s10, 64(sp)
80002708: 83 2c 41 04  	lw	s9, 68(sp)
8000270c: 03 2c 81 04  	lw	s8, 72(sp)
80002710: 83 2b c1 04  	lw	s7, 76(sp)
80002714: 03 2b 01 05  	lw	s6, 80(sp)
80002718: 83 2a 41 05  	lw	s5, 84(sp)
8000271c: 03 2a 81 05  	lw	s4, 88(sp)
80002720: 83 29 c1 05  	lw	s3, 92(sp)
80002724: 03 29 01 06  	lw	s2, 96(sp)
80002728: 83 24 41 06  	lw	s1, 100(sp)
8000272c: 03 24 81 06  	lw	s0, 104(sp)
80002730: 83 20 c1 06  	lw	ra, 108(sp)
80002734: 13 01 01 07  	addi	sp, sp, 112
80002738: 67 80 00 00  	ret

8000273c <_out_char.llvm.17592004524093383706>:
;   if (character) {
8000273c: 63 04 05 0a  	beqz	a0, 0x800027e4 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002740: f3 25 40 f1  	csrr	a1, mhartid
80002744: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80002748: 33 86 c5 02  	mul	a2, a1, a2

8000274c <.LBB2_6>:
8000274c: 97 26 00 00  	auipc	a3, 2
80002750: 93 86 86 a6  	addi	a3, a3, -1432
80002754: b3 05 d6 00  	add	a1, a2, a3
80002758: 03 a7 05 00  	lw	a4, 0(a1)
8000275c: 93 07 17 00  	addi	a5, a4, 1
80002760: 23 a0 f5 00  	sw	a5, 0(a1)
80002764: 33 87 e5 00  	add	a4, a1, a4
80002768: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
8000276c: 03 a7 05 00  	lw	a4, 0(a1)
80002770: 13 07 47 c0  	addi	a4, a4, -1020
80002774: 33 37 e0 00  	snez	a4, a4
80002778: 13 05 65 ff  	addi	a0, a0, -10
8000277c: 33 35 a0 00  	snez	a0, a0
80002780: 33 75 e5 00  	and	a0, a0, a4
80002784: 63 10 05 06  	bnez	a0, 0x800027e4 <.LBB2_8+0x18>
80002788: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
8000278c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80002790: 23 26 05 00  	sw	zero, 12(a0)
80002794: 93 06 00 04  	addi	a3, zero, 64
80002798: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
8000279c: 23 2a 05 00  	sw	zero, 20(a0)
800027a0: 93 06 10 00  	addi	a3, zero, 1
800027a4: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
800027a8: 23 2e 05 00  	sw	zero, 28(a0)
800027ac: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800027b0: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800027b4: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800027b8: 23 22 05 02  	sw	zero, 36(a0)
800027bc: 23 20 c5 02  	sw	a2, 32(a0)

800027c0 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
800027c0: 17 25 00 00  	auipc	a0, 2
800027c4: 13 05 05 8c  	addi	a0, a0, -1856
800027c8: 23 20 d5 00  	sw	a3, 0(a0)

800027cc <.LBB2_8>:
800027cc: 17 25 00 00  	auipc	a0, 2
800027d0: 13 05 45 8f  	addi	a0, a0, -1804
;         while (fromhost == 0)
800027d4: 03 26 05 00  	lw	a2, 0(a0)
800027d8: e3 0e 06 fe  	beqz	a2, 0x800027d4 <.LBB2_8+0x8>
;         fromhost = 0;
800027dc: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
800027e0: 23 a0 05 00  	sw	zero, 0(a1)
; }
800027e4: 67 80 00 00  	ret

800027e8 <_out_null>:
; }
800027e8: 67 80 00 00  	ret

800027ec <_ftoa>:
; {
800027ec: 13 01 01 f9  	addi	sp, sp, -112
800027f0: 23 26 11 06  	sw	ra, 108(sp)
800027f4: 23 24 81 06  	sw	s0, 104(sp)
800027f8: 23 22 91 06  	sw	s1, 100(sp)
800027fc: 23 20 21 07  	sw	s2, 96(sp)
80002800: 23 2e 31 05  	sw	s3, 92(sp)
80002804: 23 2c 41 05  	sw	s4, 88(sp)
80002808: 23 2a 51 05  	sw	s5, 84(sp)
8000280c: 23 28 61 05  	sw	s6, 80(sp)
80002810: 23 26 71 05  	sw	s7, 76(sp)
80002814: 23 24 81 05  	sw	s8, 72(sp)
80002818: 23 22 91 05  	sw	s9, 68(sp)
8000281c: 23 20 a1 05  	sw	s10, 64(sp)
80002820: 27 3c 81 02  	fsd	fs0, 56(sp)
80002824: 27 38 91 02  	fsd	fs1, 48(sp)
80002828: 27 34 21 03  	fsd	fs2, 40(sp)

8000282c <.LBB4_83>:
8000282c: 97 24 00 00  	auipc	s1, 2
80002830: 93 84 c4 8d  	addi	s1, s1, -1828
80002834: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80002838: d3 04 a0 a2  	fle.d	s1, ft0, fa0
8000283c: 93 0a 08 00  	mv	s5, a6
80002840: 13 89 07 00  	mv	s2, a5
80002844: 93 89 06 00  	mv	s3, a3
80002848: 13 0a 06 00  	mv	s4, a2
8000284c: 13 8b 05 00  	mv	s6, a1
80002850: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80002854: 63 98 04 0e  	bnez	s1, 0x80002944 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002858: 13 f5 2a 00  	andi	a0, s5, 2
8000285c: 93 f5 3a 00  	andi	a1, s5, 3
80002860: b3 35 b0 00  	snez	a1, a1
80002864: 13 36 59 00  	sltiu	a2, s2, 5
80002868: b3 65 b6 00  	or	a1, a2, a1
8000286c: 93 5c 15 00  	srli	s9, a0, 1
80002870: 13 04 0a 00  	mv	s0, s4
80002874: 63 96 05 02  	bnez	a1, 0x800028a0 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80002878: 93 04 c9 ff  	addi	s1, s2, -4
8000287c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002880: 13 04 16 00  	addi	s0, a2, 1
80002884: 13 05 00 02  	addi	a0, zero, 32
80002888: 93 05 0b 00  	mv	a1, s6
8000288c: 93 86 09 00  	mv	a3, s3
80002890: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002894: 93 84 f4 ff  	addi	s1, s1, -1
80002898: 13 06 04 00  	mv	a2, s0
8000289c: e3 92 04 fe  	bnez	s1, 0x80002880 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
800028a0: 93 04 14 00  	addi	s1, s0, 1
800028a4: 13 05 d0 02  	addi	a0, zero, 45
800028a8: 93 05 0b 00  	mv	a1, s6
800028ac: 13 06 04 00  	mv	a2, s0
800028b0: 93 86 09 00  	mv	a3, s3
800028b4: e7 80 0b 00  	jalr	s7
800028b8: 93 0a 24 00  	addi	s5, s0, 2
800028bc: 13 05 90 06  	addi	a0, zero, 105
800028c0: 93 05 0b 00  	mv	a1, s6
800028c4: 13 86 04 00  	mv	a2, s1
800028c8: 93 86 09 00  	mv	a3, s3
800028cc: e7 80 0b 00  	jalr	s7
800028d0: 13 0c 34 00  	addi	s8, s0, 3
800028d4: 13 05 e0 06  	addi	a0, zero, 110
800028d8: 93 05 0b 00  	mv	a1, s6
800028dc: 13 86 0a 00  	mv	a2, s5
800028e0: 93 86 09 00  	mv	a3, s3
800028e4: e7 80 0b 00  	jalr	s7
800028e8: 93 04 44 00  	addi	s1, s0, 4
800028ec: 13 05 60 06  	addi	a0, zero, 102
800028f0: 93 05 0b 00  	mv	a1, s6
800028f4: 13 06 0c 00  	mv	a2, s8
800028f8: 93 86 09 00  	mv	a3, s3
800028fc: e7 80 0b 00  	jalr	s7
80002900: 33 85 44 41  	sub	a0, s1, s4
80002904: 33 35 25 01  	sltu	a0, a0, s2
80002908: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000290c: 93 c5 1c 00  	xori	a1, s9, 1
80002910: 33 e5 a5 00  	or	a0, a1, a0
80002914: 63 16 05 56  	bnez	a0, 0x80002e80 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002918: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000291c: 13 84 14 00  	addi	s0, s1, 1
80002920: 13 05 00 02  	addi	a0, zero, 32
80002924: 93 05 0b 00  	mv	a1, s6
80002928: 13 86 04 00  	mv	a2, s1
8000292c: 93 86 09 00  	mv	a3, s3
80002930: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002934: 33 05 8a 00  	add	a0, s4, s0
80002938: 93 04 04 00  	mv	s1, s0
8000293c: e3 60 25 ff  	bltu	a0, s2, 0x8000291c <.LBB4_83+0xf0>
80002940: 6f 00 40 54  	j	0x80002e84 <.LBB4_90+0x378>
80002944: 53 04 a5 22  	fmv.d	fs0, fa0

80002948 <.LBB4_84>:
80002948: 17 15 00 00  	auipc	a0, 1
8000294c: 13 05 85 7c  	addi	a0, a0, 1992
80002950: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80002954: 53 05 05 a2  	fle.d	a0, fa0, ft0
80002958: 63 1e 05 00  	bnez	a0, 0x80002974 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
8000295c: 93 f5 4a 00  	andi	a1, s5, 4
80002960: 13 b5 15 00  	seqz	a0, a1
80002964: 63 82 05 06  	beqz	a1, 0x800029c8 <.LBB4_88>

80002968 <.LBB4_85>:
80002968: 17 1c 00 00  	auipc	s8, 1
8000296c: 13 0c 8c 4b  	addi	s8, s8, 1208
80002970: 6f 00 00 06  	j	0x800029d0 <.LBB4_88+0x8>

80002974 <.LBB4_86>:
80002974: 17 15 00 00  	auipc	a0, 1
80002978: 13 05 45 7a  	addi	a0, a0, 1956
8000297c: 07 30 05 00  	fld	ft0, 0(a0)

80002980 <.LBB4_87>:
80002980: 17 15 00 00  	auipc	a0, 1
80002984: 13 05 05 7a  	addi	a0, a0, 1952
80002988: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
8000298c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80002990: d3 85 80 a2  	fle.d	a1, ft1, fs0
80002994: 33 75 b5 00  	and	a0, a0, a1
80002998: 63 1e 05 0e  	bnez	a0, 0x80002a94 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000299c: 13 85 0b 00  	mv	a0, s7
800029a0: 93 05 0b 00  	mv	a1, s6
800029a4: 13 06 0a 00  	mv	a2, s4
800029a8: 93 86 09 00  	mv	a3, s3
800029ac: 53 05 84 22  	fmv.d	fa0, fs0
800029b0: 93 07 09 00  	mv	a5, s2
800029b4: 13 88 0a 00  	mv	a6, s5
800029b8: 97 00 00 00  	auipc	ra, 0
800029bc: e7 80 40 51  	jalr	1300(ra)
800029c0: 13 04 05 00  	mv	s0, a0
800029c4: 6f 00 00 4c  	j	0x80002e84 <.LBB4_90+0x378>

800029c8 <.LBB4_88>:
800029c8: 17 1c 00 00  	auipc	s8, 1
800029cc: 13 0c 7c 47  	addi	s8, s8, 1143
800029d0: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800029d4: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800029d8: 13 f5 3a 00  	andi	a0, s5, 3
800029dc: 33 35 a0 00  	snez	a0, a0
800029e0: b3 b5 2c 01  	sltu	a1, s9, s2
800029e4: 93 c5 15 00  	xori	a1, a1, 1
800029e8: 33 65 b5 00  	or	a0, a0, a1
800029ec: 93 fa 2a 00  	andi	s5, s5, 2
800029f0: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800029f4: 63 16 05 02  	bnez	a0, 0x80002a20 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800029f8: 33 04 99 41  	sub	s0, s2, s9
800029fc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002a00: 93 04 16 00  	addi	s1, a2, 1
80002a04: 13 05 00 02  	addi	a0, zero, 32
80002a08: 93 05 0b 00  	mv	a1, s6
80002a0c: 93 86 09 00  	mv	a3, s3
80002a10: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002a14: 13 04 f4 ff  	addi	s0, s0, -1
80002a18: 13 86 04 00  	mv	a2, s1
80002a1c: e3 12 04 fe  	bnez	s0, 0x80002a00 <.LBB4_88+0x38>
80002a20: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002a24: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002a28: 33 05 9c 01  	add	a0, s8, s9
80002a2c: 03 45 05 00  	lbu	a0, 0(a0)
80002a30: 13 86 04 00  	mv	a2, s1
80002a34: 13 84 fc ff  	addi	s0, s9, -1
80002a38: 93 84 14 00  	addi	s1, s1, 1
80002a3c: 93 05 0b 00  	mv	a1, s6
80002a40: 93 86 09 00  	mv	a3, s3
80002a44: e7 80 0b 00  	jalr	s7
80002a48: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80002a4c: e3 1e 04 fc  	bnez	s0, 0x80002a28 <.LBB4_88+0x60>
80002a50: 33 85 44 41  	sub	a0, s1, s4
80002a54: 33 35 25 01  	sltu	a0, a0, s2
80002a58: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002a5c: 93 c5 1a 00  	xori	a1, s5, 1
80002a60: 33 e5 a5 00  	or	a0, a1, a0
80002a64: 63 1e 05 40  	bnez	a0, 0x80002e80 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002a68: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002a6c: 13 84 14 00  	addi	s0, s1, 1
80002a70: 13 05 00 02  	addi	a0, zero, 32
80002a74: 93 05 0b 00  	mv	a1, s6
80002a78: 13 86 04 00  	mv	a2, s1
80002a7c: 93 86 09 00  	mv	a3, s3
80002a80: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002a84: 33 05 8a 00  	add	a0, s4, s0
80002a88: 93 04 04 00  	mv	s1, s0
80002a8c: e3 60 25 ff  	bltu	a0, s2, 0x80002a6c <.LBB4_88+0xa4>
80002a90: 6f 00 40 3f  	j	0x80002e84 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80002a94: 13 f5 0a 40  	andi	a0, s5, 1024
80002a98: 13 0c 60 00  	addi	s8, zero, 6
80002a9c: 63 04 05 00  	beqz	a0, 0x80002aa4 <.LBB4_88+0xdc>
80002aa0: 13 0c 07 00  	mv	s8, a4
80002aa4: 13 05 a0 00  	addi	a0, zero, 10
80002aa8: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002aac: 63 6c ac 02  	bltu	s8, a0, 0x80002ae4 <.LBB4_88+0x11c>
80002ab0: 93 04 6c ff  	addi	s1, s8, -10
80002ab4: 13 05 f0 01  	addi	a0, zero, 31
80002ab8: 63 e4 a4 00  	bltu	s1, a0, 0x80002ac0 <.LBB4_88+0xf8>
80002abc: 93 04 f0 01  	addi	s1, zero, 31
80002ac0: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002ac4: 13 05 81 00  	addi	a0, sp, 8
80002ac8: 93 05 00 03  	addi	a1, zero, 48
80002acc: 13 06 04 00  	mv	a2, s0
80002ad0: 97 e0 ff ff  	auipc	ra, 1048574
80002ad4: e7 80 80 a8  	jalr	-1400(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002ad8: 13 c5 f4 ff  	not	a0, s1
80002adc: 33 0c ac 00  	add	s8, s8, a0
80002ae0: 6f 00 80 00  	j	0x80002ae8 <.LBB4_88+0x120>
80002ae4: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80002ae8: 13 15 3c 00  	slli	a0, s8, 3

80002aec <.LBB4_89>:
80002aec: 97 15 00 00  	auipc	a1, 1
80002af0: 93 85 45 51  	addi	a1, a1, 1300
80002af4: 33 05 b5 00  	add	a0, a0, a1
80002af8: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002afc: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80002b00: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002b04: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80002b08: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002b0c <.LBB4_90>:
80002b0c: 17 15 00 00  	auipc	a0, 1
80002b10: 13 05 c5 61  	addi	a0, a0, 1564
80002b14: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80002b18: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80002b1c: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80002b20: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002b24: d3 05 01 a2  	fle.d	a1, ft2, ft0
80002b28: 63 90 05 02  	bnez	a1, 0x80002b48 <.LBB4_90+0x3c>
;     ++frac;
80002b2c: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80002b30: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80002b34: d3 15 11 a2  	flt.d	a1, ft2, ft1
80002b38: 63 94 05 02  	bnez	a1, 0x80002b60 <.LBB4_90+0x54>
80002b3c: 13 05 00 00  	mv	a0, zero
;       ++whole;
80002b40: 93 84 14 00  	addi	s1, s1, 1
80002b44: 6f 00 c0 01  	j	0x80002b60 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80002b48: d3 15 01 a2  	flt.d	a1, ft2, ft0
80002b4c: 63 9a 05 00  	bnez	a1, 0x80002b60 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80002b50: 93 35 15 00  	seqz	a1, a0
80002b54: 13 76 15 00  	andi	a2, a0, 1
80002b58: b3 65 b6 00  	or	a1, a2, a1
80002b5c: 33 85 a5 00  	add	a0, a1, a0
80002b60: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80002b64: 63 0c 0c 0c  	beqz	s8, 0x80002c3c <.LBB4_90+0x130>
80002b68: 13 06 00 00  	mv	a2, zero
80002b6c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002b70: 33 83 85 00  	add	t1, a1, s0
80002b74: 93 02 00 02  	addi	t0, zero, 32
80002b78: 33 87 82 40  	sub	a4, t0, s0
80002b7c: b7 d5 cc cc  	lui	a1, 838861
80002b80: 93 83 d5 cc  	addi	t2, a1, -819
80002b84: 13 08 a0 00  	addi	a6, zero, 10
80002b88: 93 08 90 00  	addi	a7, zero, 9
80002b8c: 63 04 c7 0c  	beq	a4, a2, 0x80002c54 <.LBB4_90+0x148>
80002b90: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80002b94: 33 35 75 02  	mulhu	a0, a0, t2
80002b98: 13 55 35 00  	srli	a0, a0, 3
80002b9c: b3 06 05 03  	mul	a3, a0, a6
80002ba0: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002ba4: 93 e6 06 03  	ori	a3, a3, 48
80002ba8: b3 07 c3 00  	add	a5, t1, a2
80002bac: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80002bb0: 13 06 16 00  	addi	a2, a2, 1
80002bb4: e3 ec b8 fc  	bltu	a7, a1, 0x80002b8c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002bb8: 33 05 c4 00  	add	a0, s0, a2
80002bbc: 93 05 f5 ff  	addi	a1, a0, -1
80002bc0: 93 06 e0 01  	addi	a3, zero, 30
80002bc4: b3 b6 b6 00  	sltu	a3, a3, a1
80002bc8: 33 47 cc 00  	xor	a4, s8, a2
80002bcc: 13 37 17 00  	seqz	a4, a4
80002bd0: b3 e6 e6 00  	or	a3, a3, a4
80002bd4: 63 94 06 08  	bnez	a3, 0x80002c5c <.LBB4_90+0x150>
80002bd8: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002bdc: 33 05 85 00  	add	a0, a0, s0
80002be0: 93 45 f6 ff  	not	a1, a2
80002be4: 33 8c 85 01  	add	s8, a1, s8
80002be8: 33 04 c4 00  	add	s0, s0, a2
80002bec: 93 05 f0 01  	addi	a1, zero, 31
80002bf0: b3 86 85 40  	sub	a3, a1, s0
80002bf4: 33 05 c5 00  	add	a0, a0, a2
80002bf8: 93 05 0c 00  	mv	a1, s8
80002bfc: 63 64 dc 00  	bltu	s8, a3, 0x80002c04 <.LBB4_90+0xf8>
80002c00: 93 85 06 00  	mv	a1, a3
80002c04: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002c08: 93 05 00 03  	addi	a1, zero, 48
80002c0c: 97 e0 ff ff  	auipc	ra, 1048574
80002c10: e7 80 c0 94  	jalr	-1716(ra)
80002c14: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002c18: b3 05 a4 00  	add	a1, s0, a0
80002c1c: 93 b5 f5 01  	sltiu	a1, a1, 31
80002c20: 33 46 ac 00  	xor	a2, s8, a0
80002c24: 33 36 c0 00  	snez	a2, a2
80002c28: 33 f6 c5 00  	and	a2, a1, a2
80002c2c: 13 05 15 00  	addi	a0, a0, 1
80002c30: e3 14 06 fe  	bnez	a2, 0x80002c18 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002c34: 33 05 a4 00  	add	a0, s0, a0
80002c38: 6f 00 80 02  	j	0x80002c60 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80002c3c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002c40: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002c44: 53 05 10 a2  	fle.d	a0, ft0, ft1
80002c48: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002c4c: b3 84 a4 00  	add	s1, s1, a0
80002c50: 6f 00 c0 03  	j	0x80002c8c <.LBB4_90+0x180>
80002c54: 13 04 00 02  	addi	s0, zero, 32
80002c58: 6f 00 80 03  	j	0x80002c90 <.LBB4_90+0x184>
80002c5c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002c60: 63 8e 05 00  	beqz	a1, 0x80002c7c <.LBB4_90+0x170>
;       buf[len++] = '.';
80002c64: 13 04 15 00  	addi	s0, a0, 1
80002c68: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80002c6c: 33 85 a5 00  	add	a0, a1, a0
80002c70: 93 05 e0 02  	addi	a1, zero, 46
80002c74: 23 00 b5 00  	sb	a1, 0(a0)
80002c78: 6f 00 80 00  	j	0x80002c80 <.LBB4_90+0x174>
80002c7c: 13 04 05 00  	mv	s0, a0
80002c80: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002c84: 93 02 04 00  	mv	t0, s0
80002c88: 63 64 85 00  	bltu	a0, s0, 0x80002c90 <.LBB4_90+0x184>
80002c8c: 93 02 00 02  	addi	t0, zero, 32
80002c90: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002c94: 37 65 66 66  	lui	a0, 419430
80002c98: 93 05 75 66  	addi	a1, a0, 1639
80002c9c: 13 08 a0 00  	addi	a6, zero, 10
80002ca0: 93 06 81 00  	addi	a3, sp, 8
80002ca4: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002ca8: 63 80 82 04  	beq	t0, s0, 0x80002ce8 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002cac: 33 95 b4 02  	mulh	a0, s1, a1
80002cb0: 93 57 f5 01  	srli	a5, a0, 31
80002cb4: 13 55 25 40  	srai	a0, a0, 2
80002cb8: 33 05 f5 00  	add	a0, a0, a5
80002cbc: b3 07 05 03  	mul	a5, a0, a6
80002cc0: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002cc4: 93 87 07 03  	addi	a5, a5, 48
80002cc8: 13 0c 14 00  	addi	s8, s0, 1
80002ccc: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002cd0: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002cd4: 23 00 f4 00  	sb	a5, 0(s0)
80002cd8: 13 04 0c 00  	mv	s0, s8
80002cdc: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002ce0: e3 64 c7 fc  	bltu	a4, a2, 0x80002ca8 <.LBB4_90+0x19c>
80002ce4: 6f 00 80 00  	j	0x80002cec <.LBB4_90+0x1e0>
80002ce8: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002cec: 93 f4 3a 00  	andi	s1, s5, 3
80002cf0: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002cf4: 63 96 a4 06  	bne	s1, a0, 0x80002d60 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002cf8: 63 0c 09 00  	beqz	s2, 0x80002d10 <.LBB4_90+0x204>
80002cfc: 13 f5 ca 00  	andi	a0, s5, 12
80002d00: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002d04: 33 e5 ac 00  	or	a0, s9, a0
80002d08: 33 09 a9 40  	sub	s2, s2, a0
80002d0c: 6f 00 80 00  	j	0x80002d14 <.LBB4_90+0x208>
80002d10: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002d14: 33 35 2c 01  	sltu	a0, s8, s2
80002d18: 93 45 15 00  	xori	a1, a0, 1
80002d1c: 13 05 f0 01  	addi	a0, zero, 31
80002d20: 33 36 85 01  	sltu	a2, a0, s8
80002d24: b3 65 b6 00  	or	a1, a2, a1
80002d28: 63 9c 05 02  	bnez	a1, 0x80002d60 <.LBB4_90+0x254>
80002d2c: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002d30: 93 45 fc ff  	not	a1, s8
80002d34: b3 05 b9 00  	add	a1, s2, a1
80002d38: 33 06 85 41  	sub	a2, a0, s8
80002d3c: 33 85 86 01  	add	a0, a3, s8
80002d40: 63 e4 c5 00  	bltu	a1, a2, 0x80002d48 <.LBB4_90+0x23c>
80002d44: 93 05 06 00  	mv	a1, a2
80002d48: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002d4c: 93 05 00 03  	addi	a1, zero, 48
80002d50: 13 06 04 00  	mv	a2, s0
80002d54: 97 e0 ff ff  	auipc	ra, 1048574
80002d58: e7 80 40 80  	jalr	-2044(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002d5c: 33 0c 84 01  	add	s8, s0, s8
80002d60: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002d64: 63 6a 85 05  	bltu	a0, s8, 0x80002db8 <.LBB4_90+0x2ac>
;     if (negative) {
80002d68: 63 8c 0c 00  	beqz	s9, 0x80002d80 <.LBB4_90+0x274>
80002d6c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002d70: 33 05 85 01  	add	a0, a0, s8
80002d74: 13 0c 1c 00  	addi	s8, s8, 1
80002d78: 93 05 d0 02  	addi	a1, zero, 45
80002d7c: 6f 00 80 03  	j	0x80002db4 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002d80: 13 f5 4a 00  	andi	a0, s5, 4
80002d84: 63 10 05 02  	bnez	a0, 0x80002da4 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002d88: 13 f5 8a 00  	andi	a0, s5, 8
80002d8c: 63 06 05 02  	beqz	a0, 0x80002db8 <.LBB4_90+0x2ac>
80002d90: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002d94: 33 05 85 01  	add	a0, a0, s8
80002d98: 13 0c 1c 00  	addi	s8, s8, 1
80002d9c: 93 05 00 02  	addi	a1, zero, 32
80002da0: 6f 00 40 01  	j	0x80002db4 <.LBB4_90+0x2a8>
80002da4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002da8: 33 05 85 01  	add	a0, a0, s8
80002dac: 13 0c 1c 00  	addi	s8, s8, 1
80002db0: 93 05 b0 02  	addi	a1, zero, 43
80002db4: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002db8: 33 35 90 00  	snez	a0, s1
80002dbc: b3 35 2c 01  	sltu	a1, s8, s2
80002dc0: 93 c5 15 00  	xori	a1, a1, 1
80002dc4: 33 65 b5 00  	or	a0, a0, a1
80002dc8: 93 fa 2a 00  	andi	s5, s5, 2
80002dcc: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002dd0: 63 16 05 02  	bnez	a0, 0x80002dfc <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002dd4: b3 04 89 41  	sub	s1, s2, s8
80002dd8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002ddc: 13 04 16 00  	addi	s0, a2, 1
80002de0: 13 05 00 02  	addi	a0, zero, 32
80002de4: 93 05 0b 00  	mv	a1, s6
80002de8: 93 86 09 00  	mv	a3, s3
80002dec: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002df0: 93 84 f4 ff  	addi	s1, s1, -1
80002df4: 13 06 04 00  	mv	a2, s0
80002df8: e3 92 04 fe  	bnez	s1, 0x80002ddc <.LBB4_90+0x2d0>
80002dfc: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002e00: 63 0c 0c 02  	beqz	s8, 0x80002e38 <.LBB4_90+0x32c>
80002e04: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002e08: 33 85 8c 01  	add	a0, s9, s8
80002e0c: 03 45 05 00  	lbu	a0, 0(a0)
80002e10: 13 0d fc ff  	addi	s10, s8, -1
80002e14: 93 04 14 00  	addi	s1, s0, 1
80002e18: 93 05 0b 00  	mv	a1, s6
80002e1c: 13 06 04 00  	mv	a2, s0
80002e20: 93 86 09 00  	mv	a3, s3
80002e24: e7 80 0b 00  	jalr	s7
80002e28: 13 84 04 00  	mv	s0, s1
80002e2c: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002e30: e3 1c 0d fc  	bnez	s10, 0x80002e08 <.LBB4_90+0x2fc>
80002e34: 6f 00 80 00  	j	0x80002e3c <.LBB4_90+0x330>
80002e38: 93 04 04 00  	mv	s1, s0
80002e3c: 33 85 44 41  	sub	a0, s1, s4
80002e40: 33 35 25 01  	sltu	a0, a0, s2
80002e44: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002e48: 93 c5 1a 00  	xori	a1, s5, 1
80002e4c: 33 e5 a5 00  	or	a0, a1, a0
80002e50: 63 18 05 02  	bnez	a0, 0x80002e80 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002e54: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002e58: 13 84 14 00  	addi	s0, s1, 1
80002e5c: 13 05 00 02  	addi	a0, zero, 32
80002e60: 93 05 0b 00  	mv	a1, s6
80002e64: 13 86 04 00  	mv	a2, s1
80002e68: 93 86 09 00  	mv	a3, s3
80002e6c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002e70: 33 05 8a 00  	add	a0, s4, s0
80002e74: 93 04 04 00  	mv	s1, s0
80002e78: e3 60 25 ff  	bltu	a0, s2, 0x80002e58 <.LBB4_90+0x34c>
80002e7c: 6f 00 80 00  	j	0x80002e84 <.LBB4_90+0x378>
80002e80: 13 84 04 00  	mv	s0, s1
; }
80002e84: 13 05 04 00  	mv	a0, s0
80002e88: 07 39 81 02  	fld	fs2, 40(sp)
80002e8c: 87 34 01 03  	fld	fs1, 48(sp)
80002e90: 07 34 81 03  	fld	fs0, 56(sp)
80002e94: 03 2d 01 04  	lw	s10, 64(sp)
80002e98: 83 2c 41 04  	lw	s9, 68(sp)
80002e9c: 03 2c 81 04  	lw	s8, 72(sp)
80002ea0: 83 2b c1 04  	lw	s7, 76(sp)
80002ea4: 03 2b 01 05  	lw	s6, 80(sp)
80002ea8: 83 2a 41 05  	lw	s5, 84(sp)
80002eac: 03 2a 81 05  	lw	s4, 88(sp)
80002eb0: 83 29 c1 05  	lw	s3, 92(sp)
80002eb4: 03 29 01 06  	lw	s2, 96(sp)
80002eb8: 83 24 41 06  	lw	s1, 100(sp)
80002ebc: 03 24 81 06  	lw	s0, 104(sp)
80002ec0: 83 20 c1 06  	lw	ra, 108(sp)
80002ec4: 13 01 01 07  	addi	sp, sp, 112
80002ec8: 67 80 00 00  	ret

80002ecc <_etoa>:
; {
80002ecc: 13 01 01 f8  	addi	sp, sp, -128
80002ed0: 23 2e 11 06  	sw	ra, 124(sp)
80002ed4: 23 2c 81 06  	sw	s0, 120(sp)
80002ed8: 23 2a 91 06  	sw	s1, 116(sp)
80002edc: 23 28 21 07  	sw	s2, 112(sp)
80002ee0: 23 26 31 07  	sw	s3, 108(sp)
80002ee4: 23 24 41 07  	sw	s4, 104(sp)
80002ee8: 23 22 51 07  	sw	s5, 100(sp)
80002eec: 23 20 61 07  	sw	s6, 96(sp)
80002ef0: 23 2e 71 05  	sw	s7, 92(sp)
80002ef4: 23 2c 81 05  	sw	s8, 88(sp)
80002ef8: 23 2a 91 05  	sw	s9, 84(sp)
80002efc: 23 28 a1 05  	sw	s10, 80(sp)
80002f00: 23 26 b1 05  	sw	s11, 76(sp)

80002f04 <.LBB5_43>:
80002f04: 97 14 00 00  	auipc	s1, 1
80002f08: 93 84 c4 22  	addi	s1, s1, 556
80002f0c: 87 b0 04 00  	fld	ft1, 0(s1)

80002f10 <.LBB5_44>:
80002f10: 97 14 00 00  	auipc	s1, 1
80002f14: 93 84 84 22  	addi	s1, s1, 552
80002f18: 07 b1 04 00  	fld	ft2, 0(s1)
80002f1c: 53 00 a5 22  	fmv.d	ft0, fa0
80002f20: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002f24: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002f28: b3 f4 84 00  	and	s1, s1, s0
80002f2c: 93 0a 08 00  	mv	s5, a6
80002f30: 13 89 07 00  	mv	s2, a5
80002f34: 93 07 07 00  	mv	a5, a4
80002f38: 93 89 06 00  	mv	s3, a3
80002f3c: 13 0a 06 00  	mv	s4, a2
80002f40: 13 8b 05 00  	mv	s6, a1
80002f44: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002f48: 63 92 04 06  	bnez	s1, 0x80002fac <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002f4c: 13 85 0b 00  	mv	a0, s7
80002f50: 93 05 0b 00  	mv	a1, s6
80002f54: 13 06 0a 00  	mv	a2, s4
80002f58: 93 86 09 00  	mv	a3, s3
80002f5c: 53 05 00 22  	fmv.d	fa0, ft0
80002f60: 13 87 07 00  	mv	a4, a5
80002f64: 93 07 09 00  	mv	a5, s2
80002f68: 13 88 0a 00  	mv	a6, s5
80002f6c: 83 2d c1 04  	lw	s11, 76(sp)
80002f70: 03 2d 01 05  	lw	s10, 80(sp)
80002f74: 83 2c 41 05  	lw	s9, 84(sp)
80002f78: 03 2c 81 05  	lw	s8, 88(sp)
80002f7c: 83 2b c1 05  	lw	s7, 92(sp)
80002f80: 03 2b 01 06  	lw	s6, 96(sp)
80002f84: 83 2a 41 06  	lw	s5, 100(sp)
80002f88: 03 2a 81 06  	lw	s4, 104(sp)
80002f8c: 83 29 c1 06  	lw	s3, 108(sp)
80002f90: 03 29 01 07  	lw	s2, 112(sp)
80002f94: 83 24 41 07  	lw	s1, 116(sp)
80002f98: 03 24 81 07  	lw	s0, 120(sp)
80002f9c: 83 20 c1 07  	lw	ra, 124(sp)
80002fa0: 13 01 01 08  	addi	sp, sp, 128
80002fa4: 17 03 00 00  	auipc	t1, 0
80002fa8: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002fac: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002fb0: 13 f5 0a 40  	andi	a0, s5, 1024
80002fb4: 13 07 60 00  	addi	a4, zero, 6
80002fb8: 63 04 05 00  	beqz	a0, 0x80002fc0 <.LBB5_44+0xb0>
80002fbc: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002fc0: 27 30 a1 02  	fsd	fa0, 32(sp)
80002fc4: 83 25 41 02  	lw	a1, 36(sp)
80002fc8: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002fcc: 93 d6 45 01  	srli	a3, a1, 20
80002fd0: b7 07 10 00  	lui	a5, 256
80002fd4: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002fd8: b3 f5 f5 00  	and	a1, a1, a5
80002fdc: 23 2c c1 00  	sw	a2, 24(sp)
80002fe0: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002fe4: b3 e5 c5 00  	or	a1, a1, a2
80002fe8: 23 2e b1 00  	sw	a1, 28(sp)
80002fec: 87 30 81 01  	fld	ft1, 24(sp)

80002ff0 <.LBB5_45>:
80002ff0: 97 15 00 00  	auipc	a1, 1
80002ff4: 93 85 05 15  	addi	a1, a1, 336
80002ff8: 07 b1 05 00  	fld	ft2, 0(a1)

80002ffc <.LBB5_46>:
80002ffc: 97 15 00 00  	auipc	a1, 1
80003000: 93 85 c5 14  	addi	a1, a1, 332
80003004: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80003008: 93 f5 f6 7f  	andi	a1, a3, 2047
8000300c: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80003010: 53 82 05 d2  	fcvt.d.w	ft4, a1
80003014: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80003018 <.LBB5_47>:
80003018: 97 15 00 00  	auipc	a1, 1
8000301c: 93 85 85 13  	addi	a1, a1, 312
80003020: 07 b1 05 00  	fld	ft2, 0(a1)

80003024 <.LBB5_48>:
80003024: 97 15 00 00  	auipc	a1, 1
80003028: 93 85 45 13  	addi	a1, a1, 308
8000302c: 87 b1 05 00  	fld	ft3, 0(a1)

80003030 <.LBB5_49>:
80003030: 97 15 00 00  	auipc	a1, 1
80003034: 93 85 05 13  	addi	a1, a1, 304
80003038: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000303c: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80003040: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80003044: d3 80 05 d2  	fcvt.d.w	ft1, a1
80003048: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

8000304c <.LBB5_50>:
8000304c: 17 16 00 00  	auipc	a2, 1
80003050: 13 06 c6 11  	addi	a2, a2, 284
80003054: 87 31 06 00  	fld	ft3, 0(a2)

80003058 <.LBB5_51>:
80003058: 17 16 00 00  	auipc	a2, 1
8000305c: 13 06 86 11  	addi	a2, a2, 280
80003060: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80003064: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80003068: 53 01 06 d2  	fcvt.d.w	ft2, a2
8000306c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80003070: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80003074: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80003078: 13 06 f6 3f  	addi	a2, a2, 1023
8000307c: 23 28 01 00  	sw	zero, 16(sp)
80003080: 13 16 46 01  	slli	a2, a2, 20
80003084: 23 2a c1 00  	sw	a2, 20(sp)

80003088 <.LBB5_52>:
80003088: 17 16 00 00  	auipc	a2, 1
8000308c: 13 06 86 0f  	addi	a2, a2, 248
80003090: 87 31 06 00  	fld	ft3, 0(a2)

80003094 <.LBB5_53>:
80003094: 17 16 00 00  	auipc	a2, 1
80003098: 13 06 46 0f  	addi	a2, a2, 244
8000309c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800030a0: 87 32 01 01  	fld	ft5, 16(sp)

800030a4 <.LBB5_54>:
800030a4: 17 16 00 00  	auipc	a2, 1
800030a8: 13 06 46 0d  	addi	a2, a2, 212
800030ac: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800030b0: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

800030b4 <.LBB5_55>:
800030b4: 17 16 00 00  	auipc	a2, 1
800030b8: 13 06 c6 0d  	addi	a2, a2, 220
800030bc: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800030c0: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
800030c4: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
800030c8: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
800030cc: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
800030d0: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
800030d4: 53 71 23 02  	fadd.d	ft2, ft6, ft2
800030d8: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
800030dc: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
800030e0: 53 16 15 a2  	flt.d	a2, fa0, ft1
800030e4: 63 0a 06 00  	beqz	a2, 0x800030f8 <.LBB5_56+0x10>

800030e8 <.LBB5_56>:
800030e8: 97 16 00 00  	auipc	a3, 1
800030ec: 93 86 06 0b  	addi	a3, a3, 176
800030f0: 07 b1 06 00  	fld	ft2, 0(a3)
800030f4: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800030f8: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800030fc: 93 05 34 06  	addi	a1, s0, 99
80003100: 93 b5 75 0c  	sltiu	a1, a1, 199
80003104: 13 06 50 00  	addi	a2, zero, 5
80003108: b7 16 00 00  	lui	a3, 1
8000310c: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80003110: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80003114: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80003118: 63 84 06 06  	beqz	a3, 0x80003180 <.LBB5_58+0x58>

8000311c <.LBB5_57>:
8000311c: 97 15 00 00  	auipc	a1, 1
80003120: 93 85 45 08  	addi	a1, a1, 132
80003124: 07 b1 05 00  	fld	ft2, 0(a1)

80003128 <.LBB5_58>:
80003128: 97 15 00 00  	auipc	a1, 1
8000312c: 93 85 05 08  	addi	a1, a1, 128
80003130: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80003134: d3 15 25 a2  	flt.d	a1, fa0, ft2
80003138: 53 86 a1 a2  	fle.d	a2, ft3, fa0
8000313c: b3 e5 c5 00  	or	a1, a1, a2
80003140: 63 98 05 00  	bnez	a1, 0x80003150 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80003144: 63 40 e4 02  	blt	s0, a4, 0x80003164 <.LBB5_58+0x3c>
80003148: 13 07 00 00  	mv	a4, zero
8000314c: 6f 00 00 02  	j	0x8000316c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80003150: 63 06 07 02  	beqz	a4, 0x8000317c <.LBB5_58+0x54>
80003154: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80003158: 13 45 15 00  	xori	a0, a0, 1
8000315c: 33 07 a7 40  	sub	a4, a4, a0
80003160: 6f 00 00 02  	j	0x80003180 <.LBB5_58+0x58>
80003164: 13 45 f4 ff  	not	a0, s0
80003168: 33 07 a7 00  	add	a4, a4, a0
8000316c: 13 04 00 00  	mv	s0, zero
80003170: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80003174: 93 ea 0a 40  	ori	s5, s5, 1024
80003178: 6f 00 80 00  	j	0x80003180 <.LBB5_58+0x58>
8000317c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80003180: b3 05 99 41  	sub	a1, s2, s9
80003184: 33 36 b9 00  	sltu	a2, s2, a1
80003188: 13 05 00 00  	mv	a0, zero
8000318c: 63 14 06 00  	bnez	a2, 0x80003194 <.LBB5_58+0x6c>
80003190: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80003194: 93 07 00 00  	mv	a5, zero
80003198: 93 d5 1a 00  	srli	a1, s5, 1
8000319c: 93 f4 15 00  	andi	s1, a1, 1
800031a0: b3 35 90 01  	snez	a1, s9
800031a4: b3 f5 b4 00  	and	a1, s1, a1
800031a8: 53 01 00 d2  	fcvt.d.w	ft2, zero
800031ac: 63 94 05 00  	bnez	a1, 0x800031b4 <.LBB5_58+0x8c>
800031b0: 93 07 05 00  	mv	a5, a0
;   if (expval) {
800031b4: 93 35 14 00  	seqz	a1, s0
800031b8: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
800031bc: 63 94 05 00  	bnez	a1, 0x800031c4 <.LBB5_58+0x9c>
800031c0: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
800031c4: 63 04 05 00  	beqz	a0, 0x800031cc <.LBB5_58+0xa4>
800031c8: 53 15 a5 22  	fneg.d	fa0, fa0
800031cc: 37 f5 ff ff  	lui	a0, 1048575
800031d0: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
800031d4: 33 f8 aa 00  	and	a6, s5, a0
800031d8: 13 85 0b 00  	mv	a0, s7
800031dc: 93 05 0b 00  	mv	a1, s6
800031e0: 13 06 0a 00  	mv	a2, s4
800031e4: 93 86 09 00  	mv	a3, s3
800031e8: 97 f0 ff ff  	auipc	ra, 1048575
800031ec: e7 80 40 60  	jalr	1540(ra)
800031f0: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800031f4: 63 82 0c 18  	beqz	s9, 0x80003378 <.LBB5_58+0x250>
800031f8: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800031fc: 13 f5 0a 02  	andi	a0, s5, 32
80003200: 13 45 55 06  	xori	a0, a0, 101
80003204: 93 05 0b 00  	mv	a1, s6
80003208: 13 06 0d 00  	mv	a2, s10
8000320c: 93 86 09 00  	mv	a3, s3
80003210: e7 80 0b 00  	jalr	s7
80003214: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80003218: 93 5a f4 01  	srli	s5, s0, 31
8000321c: 13 55 f4 41  	srai	a0, s0, 31
80003220: b3 05 a4 00  	add	a1, s0, a0
80003224: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80003228: 93 8d dc ff  	addi	s11, s9, -3
8000322c: 13 04 f0 01  	addi	s0, zero, 31
80003230: 37 d5 cc cc  	lui	a0, 838861
80003234: 13 05 d5 cc  	addi	a0, a0, -819
80003238: 13 08 a0 00  	addi	a6, zero, 10
8000323c: 93 08 c1 02  	addi	a7, sp, 44
80003240: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80003244: b3 37 a7 02  	mulhu	a5, a4, a0
80003248: 93 d5 37 00  	srli	a1, a5, 3
8000324c: b3 87 05 03  	mul	a5, a1, a6
80003250: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003254: 13 e6 07 03  	ori	a2, a5, 48
80003258: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000325c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003260: 13 0c 1c 00  	addi	s8, s8, 1
80003264: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003268: 33 b6 e2 00  	sltu	a2, t0, a4
8000326c: 33 f6 c7 00  	and	a2, a5, a2
80003270: 93 8d fd ff  	addi	s11, s11, -1
80003274: 13 04 f4 ff  	addi	s0, s0, -1
80003278: 13 87 05 00  	mv	a4, a1
8000327c: e3 14 06 fc  	bnez	a2, 0x80003244 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003280: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003284: 33 35 ac 00  	sltu	a0, s8, a0
80003288: 13 45 15 00  	xori	a0, a0, 1
8000328c: 93 c5 17 00  	xori	a1, a5, 1
80003290: 33 e5 a5 00  	or	a0, a1, a0
80003294: 63 12 05 04  	bnez	a0, 0x800032d8 <.LBB5_58+0x1b0>
80003298: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000329c: b3 85 8c 41  	sub	a1, s9, s8
800032a0: 93 85 d5 ff  	addi	a1, a1, -3
800032a4: 13 06 f0 01  	addi	a2, zero, 31
800032a8: 33 06 86 41  	sub	a2, a2, s8
800032ac: 33 05 85 01  	add	a0, a0, s8
800032b0: 63 e4 c5 00  	bltu	a1, a2, 0x800032b8 <.LBB5_58+0x190>
800032b4: 93 05 06 00  	mv	a1, a2
800032b8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800032bc: 93 05 00 03  	addi	a1, zero, 48
800032c0: 97 d0 ff ff  	auipc	ra, 1048573
800032c4: e7 80 80 29  	jalr	664(ra)
;   if (flags & FLAGS_HASH) {
800032c8: 63 e4 8d 00  	bltu	s11, s0, 0x800032d0 <.LBB5_58+0x1a8>
800032cc: 93 0d 04 00  	mv	s11, s0
800032d0: 33 85 8d 01  	add	a0, s11, s8
800032d4: 13 0c 15 00  	addi	s8, a0, 1
800032d8: 83 2c c1 00  	lw	s9, 12(sp)
800032dc: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800032e0: 63 60 85 03  	bltu	a0, s8, 0x80003300 <.LBB5_58+0x1d8>
800032e4: 13 05 c1 02  	addi	a0, sp, 44
800032e8: 33 05 85 01  	add	a0, a0, s8
800032ec: 93 05 d0 02  	addi	a1, zero, 45
800032f0: 63 94 0a 00  	bnez	s5, 0x800032f8 <.LBB5_58+0x1d0>
800032f4: 93 05 b0 02  	addi	a1, zero, 43
800032f8: 13 0c 1c 00  	addi	s8, s8, 1
800032fc: 23 00 b5 00  	sb	a1, 0(a0)
80003300: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80003304: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80003308: 33 85 8a 01  	add	a0, s5, s8
8000330c: 03 45 05 00  	lbu	a0, 0(a0)
80003310: 13 06 04 00  	mv	a2, s0
80003314: 93 04 fc ff  	addi	s1, s8, -1
80003318: 13 04 14 00  	addi	s0, s0, 1
8000331c: 93 05 0b 00  	mv	a1, s6
80003320: 93 86 09 00  	mv	a3, s3
80003324: e7 80 0b 00  	jalr	s7
80003328: 13 8c 04 00  	mv	s8, s1
;   while (len) {
8000332c: e3 9e 04 fc  	bnez	s1, 0x80003308 <.LBB5_58+0x1e0>
80003330: 33 05 44 41  	sub	a0, s0, s4
80003334: 33 35 25 01  	sltu	a0, a0, s2
80003338: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
8000333c: 93 c5 1c 00  	xori	a1, s9, 1
80003340: 33 e5 a5 00  	or	a0, a1, a0
80003344: 63 18 05 02  	bnez	a0, 0x80003374 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80003348: b3 04 40 41  	neg	s1, s4
8000334c: 13 0d 14 00  	addi	s10, s0, 1
80003350: 13 05 00 02  	addi	a0, zero, 32
80003354: 93 05 0b 00  	mv	a1, s6
80003358: 13 06 04 00  	mv	a2, s0
8000335c: 93 86 09 00  	mv	a3, s3
80003360: e7 80 0b 00  	jalr	s7
80003364: 33 85 a4 01  	add	a0, s1, s10
80003368: 13 04 0d 00  	mv	s0, s10
8000336c: e3 60 25 ff  	bltu	a0, s2, 0x8000334c <.LBB5_58+0x224>
80003370: 6f 00 80 00  	j	0x80003378 <.LBB5_58+0x250>
80003374: 13 0d 04 00  	mv	s10, s0
; }
80003378: 13 05 0d 00  	mv	a0, s10
8000337c: 83 2d c1 04  	lw	s11, 76(sp)
80003380: 03 2d 01 05  	lw	s10, 80(sp)
80003384: 83 2c 41 05  	lw	s9, 84(sp)
80003388: 03 2c 81 05  	lw	s8, 88(sp)
8000338c: 83 2b c1 05  	lw	s7, 92(sp)
80003390: 03 2b 01 06  	lw	s6, 96(sp)
80003394: 83 2a 41 06  	lw	s5, 100(sp)
80003398: 03 2a 81 06  	lw	s4, 104(sp)
8000339c: 83 29 c1 06  	lw	s3, 108(sp)
800033a0: 03 29 01 07  	lw	s2, 112(sp)
800033a4: 83 24 41 07  	lw	s1, 116(sp)
800033a8: 03 24 81 07  	lw	s0, 120(sp)
800033ac: 83 20 c1 07  	lw	ra, 124(sp)
800033b0: 13 01 01 08  	addi	sp, sp, 128
800033b4: 67 80 00 00  	ret

800033b8 <_ntoa_format>:
; {
800033b8: 13 01 01 fc  	addi	sp, sp, -64
800033bc: 23 2e 11 02  	sw	ra, 60(sp)
800033c0: 23 2c 81 02  	sw	s0, 56(sp)
800033c4: 23 2a 91 02  	sw	s1, 52(sp)
800033c8: 23 28 21 03  	sw	s2, 48(sp)
800033cc: 23 26 31 03  	sw	s3, 44(sp)
800033d0: 23 24 41 03  	sw	s4, 40(sp)
800033d4: 23 22 51 03  	sw	s5, 36(sp)
800033d8: 23 20 61 03  	sw	s6, 32(sp)
800033dc: 23 2e 71 01  	sw	s7, 28(sp)
800033e0: 23 2c 81 01  	sw	s8, 24(sp)
800033e4: 23 2a 91 01  	sw	s9, 20(sp)
800033e8: 23 28 a1 01  	sw	s10, 16(sp)
800033ec: 23 26 b1 01  	sw	s11, 12(sp)
800033f0: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800033f4: 93 fa 2e 00  	andi	s5, t4, 2
800033f8: 13 09 0e 00  	mv	s2, t3
800033fc: 13 8d 03 00  	mv	s10, t2
80003400: 93 8c 08 00  	mv	s9, a7
80003404: 13 8c 07 00  	mv	s8, a5
80003408: 93 89 06 00  	mv	s3, a3
8000340c: 13 0a 06 00  	mv	s4, a2
80003410: 13 8b 05 00  	mv	s6, a1
80003414: 93 0d 05 00  	mv	s11, a0
80003418: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
8000341c: 63 9e 0a 0c  	bnez	s5, 0x800034f8 <_ntoa_format+0x140>
80003420: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003424: 63 0e 09 00  	beqz	s2, 0x80003440 <_ntoa_format+0x88>
80003428: 63 0e 04 00  	beqz	s0, 0x80003444 <_ntoa_format+0x8c>
8000342c: 13 f5 cb 00  	andi	a0, s7, 12
80003430: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003434: 33 65 05 01  	or	a0, a0, a6
80003438: 33 09 a9 40  	sub	s2, s2, a0
8000343c: 6f 00 80 00  	j	0x80003444 <_ntoa_format+0x8c>
80003440: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003444: 33 35 ac 01  	sltu	a0, s8, s10
80003448: 93 45 15 00  	xori	a1, a0, 1
8000344c: 13 05 f0 01  	addi	a0, zero, 31
80003450: 33 36 85 01  	sltu	a2, a0, s8
80003454: b3 65 b6 00  	or	a1, a2, a1
80003458: 63 94 05 04  	bnez	a1, 0x800034a0 <_ntoa_format+0xe8>
8000345c: 23 22 51 01  	sw	s5, 4(sp)
80003460: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003464: 93 45 fc ff  	not	a1, s8
80003468: b3 85 a5 01  	add	a1, a1, s10
8000346c: 33 06 85 41  	sub	a2, a0, s8
80003470: 33 05 87 01  	add	a0, a4, s8
80003474: 63 e4 c5 00  	bltu	a1, a2, 0x8000347c <_ntoa_format+0xc4>
80003478: 93 05 06 00  	mv	a1, a2
8000347c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80003480: 93 05 00 03  	addi	a1, zero, 48
80003484: 13 86 04 00  	mv	a2, s1
80003488: 97 d0 ff ff  	auipc	ra, 1048573
8000348c: e7 80 00 0d  	jalr	208(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003490: 33 8c 84 01  	add	s8, s1, s8
80003494: 03 27 81 00  	lw	a4, 8(sp)
80003498: 13 88 0a 00  	mv	a6, s5
8000349c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800034a0: 63 0c 04 04  	beqz	s0, 0x800034f8 <_ntoa_format+0x140>
800034a4: 33 35 2c 01  	sltu	a0, s8, s2
800034a8: 93 45 15 00  	xori	a1, a0, 1
800034ac: 13 05 f0 01  	addi	a0, zero, 31
800034b0: 33 36 85 01  	sltu	a2, a0, s8
800034b4: b3 e5 c5 00  	or	a1, a1, a2
800034b8: 63 90 05 04  	bnez	a1, 0x800034f8 <_ntoa_format+0x140>
800034bc: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800034c0: 93 45 fc ff  	not	a1, s8
800034c4: b3 05 b9 00  	add	a1, s2, a1
800034c8: 33 06 85 41  	sub	a2, a0, s8
800034cc: 33 05 87 01  	add	a0, a4, s8
800034d0: 63 e4 c5 00  	bltu	a1, a2, 0x800034d8 <_ntoa_format+0x120>
800034d4: 93 05 06 00  	mv	a1, a2
800034d8: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800034dc: 93 05 00 03  	addi	a1, zero, 48
800034e0: 13 86 04 00  	mv	a2, s1
800034e4: 97 d0 ff ff  	auipc	ra, 1048573
800034e8: e7 80 40 07  	jalr	116(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800034ec: 33 8c 84 01  	add	s8, s1, s8
800034f0: 03 27 81 00  	lw	a4, 8(sp)
800034f4: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800034f8: 13 f5 0b 01  	andi	a0, s7, 16
800034fc: 63 02 05 0e  	beqz	a0, 0x800035e0 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80003500: 13 f5 0b 40  	andi	a0, s7, 1024
80003504: 13 55 a5 00  	srli	a0, a0, 10
80003508: 93 35 1c 00  	seqz	a1, s8
8000350c: 33 65 b5 00  	or	a0, a0, a1
80003510: 63 1e 05 02  	bnez	a0, 0x8000354c <_ntoa_format+0x194>
80003514: 33 45 ac 01  	xor	a0, s8, s10
80003518: 33 35 a0 00  	snez	a0, a0
8000351c: b3 45 2c 01  	xor	a1, s8, s2
80003520: b3 35 b0 00  	snez	a1, a1
80003524: 33 75 b5 00  	and	a0, a0, a1
80003528: 63 12 05 02  	bnez	a0, 0x8000354c <_ntoa_format+0x194>
;       len--;
8000352c: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80003530: b3 35 a0 00  	snez	a1, a0
80003534: 13 86 0c ff  	addi	a2, s9, -16
80003538: 13 36 16 00  	seqz	a2, a2
8000353c: b3 75 b6 00  	and	a1, a2, a1
80003540: 63 84 05 00  	beqz	a1, 0x80003548 <_ntoa_format+0x190>
80003544: 13 05 ec ff  	addi	a0, s8, -2
80003548: 13 0c 05 00  	mv	s8, a0
8000354c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003550: 63 96 ac 02  	bne	s9, a0, 0x8000357c <_ntoa_format+0x1c4>
80003554: 13 f5 0b 02  	andi	a0, s7, 32
80003558: 93 55 55 00  	srli	a1, a0, 5
8000355c: 13 06 f0 01  	addi	a2, zero, 31
80003560: 33 36 86 01  	sltu	a2, a2, s8
80003564: b3 e5 c5 00  	or	a1, a1, a2
80003568: 63 9e 05 02  	bnez	a1, 0x800035a4 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
8000356c: 33 05 87 01  	add	a0, a4, s8
80003570: 13 0c 1c 00  	addi	s8, s8, 1
80003574: 93 05 80 07  	addi	a1, zero, 120
80003578: 6f 00 c0 04  	j	0x800035c4 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000357c: 13 85 ec ff  	addi	a0, s9, -2
80003580: 33 35 a0 00  	snez	a0, a0
80003584: 93 05 f0 01  	addi	a1, zero, 31
80003588: b3 b5 85 01  	sltu	a1, a1, s8
8000358c: 33 65 b5 00  	or	a0, a0, a1
80003590: 63 1c 05 02  	bnez	a0, 0x800035c8 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80003594: 33 05 87 01  	add	a0, a4, s8
80003598: 13 0c 1c 00  	addi	s8, s8, 1
8000359c: 93 05 20 06  	addi	a1, zero, 98
800035a0: 6f 00 40 02  	j	0x800035c4 <_ntoa_format+0x20c>
800035a4: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800035a8: 13 35 15 00  	seqz	a0, a0
800035ac: 93 c5 15 00  	xori	a1, a1, 1
800035b0: 33 65 b5 00  	or	a0, a0, a1
800035b4: 63 1a 05 00  	bnez	a0, 0x800035c8 <_ntoa_format+0x210>
;       buf[len++] = 'X';
800035b8: 33 05 87 01  	add	a0, a4, s8
800035bc: 13 0c 1c 00  	addi	s8, s8, 1
800035c0: 93 05 80 05  	addi	a1, zero, 88
800035c4: 23 00 b5 00  	sb	a1, 0(a0)
800035c8: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
800035cc: 63 60 85 07  	bltu	a0, s8, 0x8000362c <_ntoa_format+0x274>
;       buf[len++] = '0';
800035d0: 33 05 87 01  	add	a0, a4, s8
800035d4: 13 0c 1c 00  	addi	s8, s8, 1
800035d8: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
800035dc: 23 00 b5 00  	sb	a1, 0(a0)
800035e0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800035e4: 63 64 85 05  	bltu	a0, s8, 0x8000362c <_ntoa_format+0x274>
;     if (negative) {
800035e8: 63 0a 08 00  	beqz	a6, 0x800035fc <_ntoa_format+0x244>
;       buf[len++] = '-';
800035ec: 33 05 87 01  	add	a0, a4, s8
800035f0: 13 0c 1c 00  	addi	s8, s8, 1
800035f4: 93 05 d0 02  	addi	a1, zero, 45
800035f8: 6f 00 00 03  	j	0x80003628 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800035fc: 13 f5 4b 00  	andi	a0, s7, 4
80003600: 63 1e 05 00  	bnez	a0, 0x8000361c <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80003604: 13 f5 8b 00  	andi	a0, s7, 8
80003608: 63 02 05 02  	beqz	a0, 0x8000362c <_ntoa_format+0x274>
;       buf[len++] = ' ';
8000360c: 33 05 87 01  	add	a0, a4, s8
80003610: 13 0c 1c 00  	addi	s8, s8, 1
80003614: 93 05 00 02  	addi	a1, zero, 32
80003618: 6f 00 00 01  	j	0x80003628 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000361c: 33 05 87 01  	add	a0, a4, s8
80003620: 13 0c 1c 00  	addi	s8, s8, 1
80003624: 93 05 b0 02  	addi	a1, zero, 43
80003628: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000362c: 13 f5 3b 00  	andi	a0, s7, 3
80003630: 33 35 a0 00  	snez	a0, a0
80003634: b3 35 2c 01  	sltu	a1, s8, s2
80003638: 93 c5 15 00  	xori	a1, a1, 1
8000363c: 33 65 b5 00  	or	a0, a0, a1
80003640: 13 04 0a 00  	mv	s0, s4
80003644: 63 16 05 02  	bnez	a0, 0x80003670 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80003648: b3 04 89 41  	sub	s1, s2, s8
8000364c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003650: 13 04 16 00  	addi	s0, a2, 1
80003654: 13 05 00 02  	addi	a0, zero, 32
80003658: 93 05 0b 00  	mv	a1, s6
8000365c: 93 86 09 00  	mv	a3, s3
80003660: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80003664: 93 84 f4 ff  	addi	s1, s1, -1
80003668: 13 06 04 00  	mv	a2, s0
8000366c: e3 92 04 fe  	bnez	s1, 0x80003650 <_ntoa_format+0x298>
80003670: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80003674: 63 0e 0c 02  	beqz	s8, 0x800036b0 <_ntoa_format+0x2f8>
80003678: 03 25 81 00  	lw	a0, 8(sp)
8000367c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003680: 33 85 8b 01  	add	a0, s7, s8
80003684: 03 45 05 00  	lbu	a0, 0(a0)
80003688: 93 0c fc ff  	addi	s9, s8, -1
8000368c: 93 04 14 00  	addi	s1, s0, 1
80003690: 93 05 0b 00  	mv	a1, s6
80003694: 13 06 04 00  	mv	a2, s0
80003698: 93 86 09 00  	mv	a3, s3
8000369c: e7 80 0d 00  	jalr	s11
800036a0: 13 84 04 00  	mv	s0, s1
800036a4: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800036a8: e3 9c 0c fc  	bnez	s9, 0x80003680 <_ntoa_format+0x2c8>
800036ac: 6f 00 80 00  	j	0x800036b4 <_ntoa_format+0x2fc>
800036b0: 93 04 04 00  	mv	s1, s0
800036b4: 33 85 44 41  	sub	a0, s1, s4
800036b8: 33 35 25 01  	sltu	a0, a0, s2
800036bc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800036c0: 93 c5 1a 00  	xori	a1, s5, 1
800036c4: 33 e5 a5 00  	or	a0, a1, a0
800036c8: 63 18 05 02  	bnez	a0, 0x800036f8 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
800036cc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800036d0: 13 84 14 00  	addi	s0, s1, 1
800036d4: 13 05 00 02  	addi	a0, zero, 32
800036d8: 93 05 0b 00  	mv	a1, s6
800036dc: 13 86 04 00  	mv	a2, s1
800036e0: 93 86 09 00  	mv	a3, s3
800036e4: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800036e8: 33 05 8a 00  	add	a0, s4, s0
800036ec: 93 04 04 00  	mv	s1, s0
800036f0: e3 60 25 ff  	bltu	a0, s2, 0x800036d0 <_ntoa_format+0x318>
800036f4: 6f 00 80 00  	j	0x800036fc <_ntoa_format+0x344>
800036f8: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
800036fc: 13 05 04 00  	mv	a0, s0
80003700: 83 2d c1 00  	lw	s11, 12(sp)
80003704: 03 2d 01 01  	lw	s10, 16(sp)
80003708: 83 2c 41 01  	lw	s9, 20(sp)
8000370c: 03 2c 81 01  	lw	s8, 24(sp)
80003710: 83 2b c1 01  	lw	s7, 28(sp)
80003714: 03 2b 01 02  	lw	s6, 32(sp)
80003718: 83 2a 41 02  	lw	s5, 36(sp)
8000371c: 03 2a 81 02  	lw	s4, 40(sp)
80003720: 83 29 c1 02  	lw	s3, 44(sp)
80003724: 03 29 01 03  	lw	s2, 48(sp)
80003728: 83 24 41 03  	lw	s1, 52(sp)
8000372c: 03 24 81 03  	lw	s0, 56(sp)
80003730: 83 20 c1 03  	lw	ra, 60(sp)
80003734: 13 01 01 04  	addi	sp, sp, 64
80003738: 67 80 00 00  	ret

8000373c <_snrt_init_team>:
;     team->base.root = team;
8000373c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80003740: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80003744: 03 23 87 00  	lw	t1, 8(a4)
80003748: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000374c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80003750: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80003754: 83 22 47 00  	lw	t0, 4(a4)
80003758: 33 88 08 03  	mul	a6, a7, a6
8000375c: 33 05 58 02  	mul	a0, a6, t0
80003760: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003764: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80003768: 33 85 68 40  	sub	a0, a7, t1
8000376c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80003770: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80003774: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80003778: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
8000377c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80003780: 03 25 87 01  	lw	a0, 24(a4)
80003784: b7 05 00 10  	lui	a1, 65536
80003788: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
8000378c: 23 a2 07 02  	sw	zero, 36(a5)
80003790: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80003794: 03 25 07 02  	lw	a0, 32(a4)
80003798: 83 25 47 02  	lw	a1, 36(a4)
8000379c: 23 a4 a7 02  	sw	a0, 40(a5)
800037a0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800037a4: 23 a8 c7 02  	sw	a2, 48(a5)
800037a8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800037ac: 23 ac d7 02  	sw	a3, 56(a5)
800037b0: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800037b4: 03 25 07 01  	lw	a0, 16(a4)
800037b8: 33 08 a6 00  	add	a6, a2, a0
800037bc: 93 05 08 19  	addi	a1, a6, 400
800037c0: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
800037c4: b3 32 a8 00  	sltu	t0, a6, a0
800037c8: 93 55 15 00  	srli	a1, a0, 1
800037cc: 33 03 b8 00  	add	t1, a6, a1
800037d0: b3 35 03 01  	sltu	a1, t1, a6
800037d4: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800037d8: 23 a0 67 04  	sw	t1, 64(a5)
800037dc: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800037e0: 13 15 15 00  	slli	a0, a0, 1
800037e4: b3 05 c5 00  	add	a1, a0, a2
800037e8: 33 b5 a5 00  	sltu	a0, a1, a0
800037ec: 23 a4 b7 04  	sw	a1, 72(a5)
800037f0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800037f4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800037f8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800037fc: 37 05 00 00  	lui	a0, 0
80003800: 33 05 45 00  	add	a0, a0, tp
80003804: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003808: 03 a5 07 00  	lw	a0, 0(a5)
8000380c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80003810: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003814: b3 85 b8 40  	sub	a1, a7, a1
80003818: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
8000381c: b7 05 00 00  	lui	a1, 0
80003820: b3 85 45 00  	add	a1, a1, tp
80003824: 23 a2 a5 00  	sw	a0, 4(a1)
80003828: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
8000382c: 33 85 a8 02  	mul	a0, a7, a0

80003830 <.LBB0_1>:
80003830: 97 15 00 00  	auipc	a1, 1
80003834: 93 85 45 98  	addi	a1, a1, -1660
80003838: 33 05 b5 00  	add	a0, a0, a1
8000383c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80003840: 83 28 07 03  	lw	a7, 48(a4)
80003844: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80003848: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000384c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80003850: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80003854: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80003858: 13 05 76 00  	addi	a0, a2, 7
8000385c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80003860: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80003864: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80003868: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
8000386c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80003870: 03 a5 05 00  	lw	a0, 0(a1)
80003874: 13 05 f5 44  	addi	a0, a0, 1103
80003878: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
8000387c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80003880: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80003884: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80003888: 37 05 00 00  	lui	a0, 0
8000388c: 33 05 45 00  	add	a0, a0, tp
80003890: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80003894: 37 05 00 00  	lui	a0, 0
80003898: 33 05 45 00  	add	a0, a0, tp
8000389c: 23 26 e5 00  	sw	a4, 12(a0)
; }
800038a0: 67 80 00 00  	ret

800038a4 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800038a4: 37 05 00 00  	lui	a0, 0
800038a8: 33 05 45 00  	add	a0, a0, tp
800038ac: 03 25 05 00  	lw	a0, 0(a0)
800038b0: 03 25 05 00  	lw	a0, 0(a0)
800038b4: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800038b8: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800038bc: 33 85 a5 40  	sub	a0, a1, a0
800038c0: 67 80 00 00  	ret

800038c4 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
800038c4: 37 05 00 00  	lui	a0, 0
800038c8: 33 05 45 00  	add	a0, a0, tp
800038cc: 03 25 05 00  	lw	a0, 0(a0)
800038d0: 03 25 05 00  	lw	a0, 0(a0)
800038d4: 03 25 05 07  	lw	a0, 112(a0)
800038d8: 67 80 00 00  	ret

800038dc <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800038dc: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800038e0: 63 44 05 00  	bltz	a0, 0x800038e8 <__snrt_isr+0xc>
;         while (1)
800038e4: 6f 00 00 00  	j	0x800038e4 <__snrt_isr+0x8>
800038e8: b7 05 00 80  	lui	a1, 524288
800038ec: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800038f0: 33 75 b5 00  	and	a0, a0, a1
800038f4: 13 05 d5 ff  	addi	a0, a0, -3
800038f8: 93 55 25 00  	srli	a1, a0, 2
800038fc: 13 15 e5 01  	slli	a0, a0, 30
80003900: 33 65 b5 00  	or	a0, a0, a1
80003904: 93 05 40 00  	addi	a1, zero, 4
80003908: 63 0a b5 06  	beq	a0, a1, 0x8000397c <.LBB1_7+0x58>
8000390c: 63 1a 05 08  	bnez	a0, 0x800039a0 <.LBB1_7+0x7c>
80003910: 37 05 00 00  	lui	a0, 0
80003914: 33 05 45 00  	add	a0, a0, tp
80003918: 03 25 05 00  	lw	a0, 0(a0)
8000391c: 03 25 05 00  	lw	a0, 0(a0)
80003920: f3 25 40 f1  	csrr	a1, mhartid

80003924 <.LBB1_7>:
;     asm volatile(
80003924: 17 16 00 00  	auipc	a2, 1
80003928: 13 06 c6 88  	addi	a2, a2, -1908
8000392c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80003930: 93 06 06 00  	mv	a3, a2
80003934: 93 02 10 00  	addi	t0, zero, 1
80003938: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
8000393c: e3 9e 02 fe  	bnez	t0, 0x80003938 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80003940: b7 06 00 00  	lui	a3, 0
80003944: b3 86 46 00  	add	a3, a3, tp
80003948: 83 a6 86 00  	lw	a3, 8(a3)
8000394c: 33 85 a5 40  	sub	a0, a1, a0
80003950: 93 55 35 00  	srli	a1, a0, 3
80003954: 93 f5 c5 ff  	andi	a1, a1, -4
80003958: b3 85 b6 00  	add	a1, a3, a1
8000395c: 83 a6 05 00  	lw	a3, 0(a1)
80003960: 13 07 10 00  	addi	a4, zero, 1
80003964: 33 15 a7 00  	sll	a0, a4, a0
80003968: 13 45 f5 ff  	not	a0, a0
8000396c: 33 f5 a6 00  	and	a0, a3, a0
80003970: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80003974: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80003978: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000397c: 37 05 00 00  	lui	a0, 0
80003980: 33 05 45 00  	add	a0, a0, tp
80003984: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80003988: b7 05 00 00  	lui	a1, 0
8000398c: b3 85 45 00  	add	a1, a1, tp
80003990: 83 a5 c5 00  	lw	a1, 12(a1)
80003994: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80003998: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000399c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800039a0: 67 80 00 00  	ret

Disassembly of section .init:

800039b0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800039b0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800039b4: 93 81 81 f1  	addi	gp, gp, -232

800039b8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800039b8: 97 00 00 00  	auipc	ra, 0
800039bc: e7 80 40 3c  	jalr	964(ra)

800039c0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
800039c0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
800039c4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
800039c8: 97 00 00 00  	auipc	ra, 0
800039cc: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800039d0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800039d4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800039d8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800039dc: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800039e0: 63 92 02 02  	bnez	t0, 0x80003a04 <snrt.crt0.init_registers>

800039e4 <.Lpcrel_hi0>:
;     la        t0, _edata
800039e4: 97 02 00 00  	auipc	t0, 0
800039e8: 93 82 c2 7c  	addi	t0, t0, 1996

800039ec <.Lpcrel_hi1>:
;     la        t1, _end
800039ec: 17 03 00 00  	auipc	t1, 0
800039f0: 13 03 83 7c  	addi	t1, t1, 1992
;     bge       t0, t1, 2f
800039f4: 63 d8 62 00  	bge	t0, t1, 0x80003a04 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
800039f8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
800039fc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80003a00: e3 cc 62 fe  	blt	t0, t1, 0x800039f8 <.Lpcrel_hi1+0xc>

80003a04 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80003a04: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80003a08: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80003a0c: 63 82 02 08  	beqz	t0, 0x80003a90 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80003a10: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80003a14: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80003a18: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80003a1c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80003a20: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80003a24: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80003a28: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80003a2c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80003a30: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80003a34: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80003a38: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80003a3c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80003a40: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80003a44: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80003a48: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80003a4c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80003a50: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80003a54: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80003a58: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80003a5c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80003a60: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80003a64: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80003a68: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80003a6c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80003a70: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80003a74: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80003a78: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80003a7c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80003a80: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80003a84: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80003a88: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80003a8c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80003a90 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80003a90: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80003a94: 23 a0 06 00  	sw	zero, 0(a3)

80003a98 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80003a98: 97 02 00 00  	auipc	t0, 0
80003a9c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003aa0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003aa4: 93 87 06 00  	mv	a5, a3

80003aa8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003aa8: 97 03 00 00  	auipc	t2, 0
80003aac: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003ab0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003ab4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003ab8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80003abc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003ac0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003ac4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003ac8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80003acc: b3 86 66 40  	sub	a3, a3, t1

80003ad0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003ad0: 97 02 00 00  	auipc	t0, 0
80003ad4: 93 82 82 5f  	addi	t0, t0, 1528

80003ad8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003ad8: 17 03 00 00  	auipc	t1, 0
80003adc: 13 03 03 5f  	addi	t1, t1, 1520

80003ae0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80003ae0: 97 03 00 00  	auipc	t2, 0
80003ae4: 93 83 83 5e  	addi	t2, t2, 1512

80003ae8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80003ae8: 17 0e 00 00  	auipc	t3, 0
80003aec: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003af0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003af4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003af8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80003afc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003b00: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003b04: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003b08: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80003b0c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003b10: 63 dc 62 00  	bge	t0, t1, 0x80003b28 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003b14: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003b18: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80003b1c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003b20: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80003b24: e3 c8 62 fe  	blt	t0, t1, 0x80003b14 <.Lpcrel_hi7+0x2c>

80003b28 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80003b28: 97 02 00 00  	auipc	t0, 0
80003b2c: 93 82 02 5a  	addi	t0, t0, 1440

80003b30 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80003b30: 17 03 00 00  	auipc	t1, 0
80003b34: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80003b38: 63 da 62 00  	bge	t0, t1, 0x80003b4c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80003b3c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80003b40: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003b44: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80003b48: e3 ca 72 fe  	blt	t0, t2, 0x80003b3c <.Lpcrel_hi9+0xc>

80003b4c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80003b4c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80003b50: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80003b54: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80003b58: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80003b5c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80003b60: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80003b64: 97 00 00 00  	auipc	ra, 0
80003b68: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
80003b6c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80003b70: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80003b74: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80003b78: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80003b7c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80003b80: 13 01 41 01  	addi	sp, sp, 20

80003b84 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80003b84: 97 02 00 00  	auipc	t0, 0
80003b88: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80003b8c: 73 90 52 30  	csrw	mtvec, t0

80003b90 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80003b90: 97 00 00 00  	auipc	ra, 0
80003b94: e7 80 00 22  	jalr	544(ra)

80003b98 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80003b98: 97 d0 ff ff  	auipc	ra, 1048573
80003b9c: e7 80 c0 a9  	jalr	-1380(ra)
;     mv        s0, a0 # store return value in s0
80003ba0: 13 04 05 00  	mv	s0, a0

80003ba4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003ba4: 97 00 00 00  	auipc	ra, 0
80003ba8: e7 80 c0 20  	jalr	524(ra)

80003bac <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80003bac: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003bb0: 97 00 00 00  	auipc	ra, 0
80003bb4: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003bb8: 73 00 50 10  	wfi	
;     j       1b
80003bbc: 6f f0 df ff  	j	0x80003bb8 <snrt.crt0.end+0xc>

80003bc0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003bc0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003bc4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003bc8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80003bcc: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003bd0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003bd4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003bd8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80003bdc: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80003be0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80003be4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80003be8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80003bec: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003bf0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003bf4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003bf8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80003bfc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003c00: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003c04: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003c08: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003c0c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003c10: 63 84 02 08  	beqz	t0, 0x80003c98 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003c14: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003c18: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80003c1c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003c20: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003c24: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003c28: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80003c2c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003c30: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003c34: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003c38: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80003c3c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80003c40: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80003c44: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80003c48: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80003c4c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80003c50: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80003c54: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80003c58: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80003c5c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80003c60: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80003c64: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80003c68: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80003c6c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80003c70: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80003c74: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80003c78: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80003c7c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003c80: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003c84: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003c88: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80003c8c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003c90: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003c94: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003c98: 97 00 00 00  	auipc	ra, 0
80003c9c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80003ca0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003ca4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003ca8: 63 84 02 08  	beqz	t0, 0x80003d30 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80003cac: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003cb0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003cb4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003cb8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80003cbc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003cc0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003cc4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003cc8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80003ccc: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003cd0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003cd4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003cd8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80003cdc: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003ce0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003ce4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003ce8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80003cec: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003cf0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003cf4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003cf8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80003cfc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003d00: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003d04: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003d08: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80003d0c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003d10: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003d14: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003d18: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80003d1c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003d20: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003d24: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003d28: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80003d2c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003d30: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003d34: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003d38: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80003d3c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003d40: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003d44: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003d48: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80003d4c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003d50: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003d54: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003d58: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80003d5c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003d60: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003d64: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003d68: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80003d6c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003d70: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003d74: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003d78: 73 00 20 30  	mret	

80003d7c <_snrt_init_core_info>:
;     mv        a4, a1
80003d7c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003d80: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003d84: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003d88: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80003d8c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003d90: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003d94: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003d98: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80003d9c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003da0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003da4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003da8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80003dac: 67 80 00 00  	ret

80003db0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003db0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003db4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003db8: 97 00 00 00  	auipc	ra, 0
80003dbc: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80003dc0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003dc4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003dc8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80003dcc: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003dd0: 67 80 00 00  	ret

80003dd4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003dd4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003dd8: 67 80 00 00  	ret

80003ddc <_snrt_exit>:
;     addi      sp, sp, -8
80003ddc: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003de0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003de4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003de8: 97 00 00 00  	auipc	ra, 0
80003dec: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80003df0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003df4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003df8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80003dfc: 63 1c 05 00  	bnez	a0, 0x80003e14 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003e00: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003e04: 93 e2 12 00  	ori	t0, t0, 1

80003e08 <.Lpcrel_hi11>:
;     la        t1, tohost
80003e08: 17 03 00 00  	auipc	t1, 0
80003e0c: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80003e10: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003e14: 67 80 00 00  	ret
