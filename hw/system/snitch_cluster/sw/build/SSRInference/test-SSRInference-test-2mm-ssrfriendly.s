
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-SSRInference-test-2mm-ssrfriendly:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00003830 80000000 TEXT
  2 .init             00000468 80003830 TEXT
  3 .rodata           00000238 80003c98 DATA
  4 .htif             00000048 80003f00 DATA
  5 .tdata            00000000 80003f48 DATA
  6 .tbss             00000010 80003f48 BSS
  7 .tbssend          00000000 80003f58 DATA
  8 .sdata            000000e8 80003f58 DATA
  9 .data             00000000 80004040 DATA
 10 .sbss             00000004 80004040 BSS
 11 .bss              00000000 80004044 BSS
 12 .dram             00000000 80004044 DATA
 13 .debug_info       0000371f 00000000 
 14 .debug_abbrev     00000bf6 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003093 00000000 
 17 .debug_loc        00003a00 00000000 
 18 .debug_ranges     00000360 00000000 
 19 .debug_str        00000b13 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002b8 00000000 
 23 .symtab           00003300 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000958 00000000 


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
80000690: 6f 10 80 29  	j	0x80001928 <.LBB0_45+0x10>
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
800006c4: 13 0d 00 00  	mv	s10, zero
800006c8: 6f 00 00 01  	j	0x800006d8 <main+0xa4>
;     alloc->next += size;
800006cc: 23 2c d5 04  	sw	a3, 88(a0)
800006d0: 13 8d 07 00  	mv	s10, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d4: 93 87 06 00  	mv	a5, a3
800006d8: b3 06 f6 00  	add	a3, a2, a5
800006dc: 93 86 06 20  	addi	a3, a3, 512
800006e0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006ec <main+0xb8>
800006e4: 23 20 01 02  	sw	zero, 32(sp)
800006e8: 6f 00 00 01  	j	0x800006f8 <main+0xc4>
;     alloc->next += size;
800006ec: 23 2c d5 04  	sw	a3, 88(a0)
800006f0: 23 20 f1 02  	sw	a5, 32(sp)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f4: 93 87 06 00  	mv	a5, a3
800006f8: b3 06 f6 00  	add	a3, a2, a5
800006fc: 93 86 06 36  	addi	a3, a3, 864
80000700: 63 f6 d5 00  	bgeu	a1, a3, 0x8000070c <main+0xd8>
80000704: 93 00 00 00  	mv	ra, zero
80000708: 6f 00 00 01  	j	0x80000718 <main+0xe4>
;     alloc->next += size;
8000070c: 23 2c d5 04  	sw	a3, 88(a0)
80000710: 93 80 07 00  	mv	ra, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000714: 93 87 06 00  	mv	a5, a3
80000718: b3 06 f6 00  	add	a3, a2, a5
8000071c: 93 86 06 48  	addi	a3, a3, 1152
80000720: 63 f6 d5 00  	bgeu	a1, a3, 0x8000072c <main+0xf8>
80000724: 93 0d 00 00  	mv	s11, zero
80000728: 6f 00 00 01  	j	0x80000738 <main+0x104>
;     alloc->next += size;
8000072c: 23 2c d5 04  	sw	a3, 88(a0)
80000730: 93 8d 07 00  	mv	s11, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000734: 93 87 06 00  	mv	a5, a3
80000738: 33 06 f6 00  	add	a2, a2, a5
8000073c: 13 06 06 30  	addi	a2, a2, 768
80000740: 63 f6 c5 00  	bgeu	a1, a2, 0x8000074c <main+0x118>
80000744: 23 26 01 00  	sw	zero, 12(sp)
80000748: 6f 00 c0 00  	j	0x80000754 <main+0x120>
8000074c: 23 26 f1 00  	sw	a5, 12(sp)
;     alloc->next += size;
80000750: 23 2c c5 04  	sw	a2, 88(a0)
80000754: 13 08 00 00  	mv	a6, zero
80000758: 93 08 00 00  	mv	a7, zero
8000075c: 13 03 00 00  	mv	t1, zero
80000760: 13 0f 00 00  	mv	t5, zero
80000764: 93 0f 00 00  	mv	t6, zero
80000768: 13 09 00 00  	mv	s2, zero
8000076c: 93 09 00 00  	mv	s3, zero
80000770: 13 0a 00 00  	mv	s4, zero
80000774: 93 0a 00 00  	mv	s5, zero
;   for (i = 0; i < ni; i++)
80000778: 03 25 01 02  	lw	a0, 32(sp)
8000077c: 93 05 85 05  	addi	a1, a0, 88
80000780: 13 0b 10 00  	addi	s6, zero, 1
80000784: b7 03 b0 3f  	lui	t2, 260864

80000788 <.LBB0_36>:
80000788: 17 35 00 00  	auipc	a0, 3
8000078c: 13 05 05 7d  	addi	a0, a0, 2000
80000790: 07 30 05 00  	fld	ft0, 0(a0)
80000794: 13 0e 10 15  	addi	t3, zero, 337
80000798: 93 0b 10 00  	addi	s7, zero, 1
8000079c: 13 0c 10 00  	addi	s8, zero, 1
800007a0: 93 0c 10 00  	addi	s9, zero, 1
800007a4: 93 02 10 00  	addi	t0, zero, 1
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
800007d8: 93 74 ea 00  	andi	s1, s4, 14
800007dc: 93 e4 14 00  	ori	s1, s1, 1
800007e0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800007e4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800007e8: 27 bc 15 fa  	fsd	ft1, -72(a1)
800007ec: 93 74 f6 00  	andi	s1, a2, 15
800007f0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800007f4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800007f8: 27 b0 15 fc  	fsd	ft1, -64(a1)
800007fc: 93 74 c9 00  	andi	s1, s2, 12
80000800: 93 e4 14 00  	ori	s1, s1, 1
80000804: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000808: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000080c: 27 b4 15 fc  	fsd	ft1, -56(a1)
80000810: 93 74 f4 00  	andi	s1, s0, 15
80000814: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000818: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000081c: 27 b8 15 fc  	fsd	ft1, -48(a1)
80000820: 93 f4 ef 00  	andi	s1, t6, 14
80000824: 93 e4 14 00  	ori	s1, s1, 1
80000828: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000082c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000830: 27 bc 15 fc  	fsd	ft1, -40(a1)
80000834: 93 f4 fc 00  	andi	s1, s9, 15
80000838: d3 80 04 d2  	fcvt.d.w	ft1, s1
8000083c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000840: 27 b0 15 fe  	fsd	ft1, -32(a1)
80000844: 93 74 83 00  	andi	s1, t1, 8
80000848: 93 e4 14 00  	ori	s1, s1, 1
8000084c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000850: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000854: 27 b4 15 fe  	fsd	ft1, -24(a1)
80000858: 93 f4 fb 00  	andi	s1, s7, 15
8000085c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000860: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000864: 27 b8 15 fe  	fsd	ft1, -16(a1)
80000868: 93 74 e8 00  	andi	s1, a6, 14
8000086c: 93 e4 14 00  	ori	s1, s1, 1
80000870: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000874: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000878: 27 bc 15 fe  	fsd	ft1, -8(a1)
8000087c: 93 74 fb 00  	andi	s1, s6, 15
80000880: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000884: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000888: 27 b0 15 00  	fsd	ft1, 0(a1)
8000088c: 93 f4 c8 00  	andi	s1, a7, 12
80000890: 93 e4 14 00  	ori	s1, s1, 1
80000894: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000898: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000089c: 27 b4 15 00  	fsd	ft1, 8(a1)
800008a0: 93 74 fc 00  	andi	s1, s8, 15
800008a4: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008a8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008ac: 27 b8 15 00  	fsd	ft1, 16(a1)
800008b0: 93 74 ef 00  	andi	s1, t5, 14
800008b4: 93 e4 14 00  	ori	s1, s1, 1
800008b8: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008bc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008c0: 27 bc 15 00  	fsd	ft1, 24(a1)
800008c4: 93 f4 f2 00  	andi	s1, t0, 15
800008c8: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008cc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008d0: 27 b0 15 02  	fsd	ft1, 32(a1)
800008d4: 23 a6 75 02  	sw	t2, 44(a1)
800008d8: 23 a4 05 02  	sw	zero, 40(a1)
800008dc: 93 74 f5 00  	andi	s1, a0, 15
800008e0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008e4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008e8: 27 b8 15 02  	fsd	ft1, 48(a1)
800008ec: 93 f4 e9 00  	andi	s1, s3, 14
800008f0: 93 e4 14 00  	ori	s1, s1, 1
800008f4: d3 80 04 d2  	fcvt.d.w	ft1, s1
800008f8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008fc: 27 bc 15 02  	fsd	ft1, 56(a1)
80000900: 93 f4 f6 00  	andi	s1, a3, 15
80000904: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000908: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000090c: 27 b0 15 04  	fsd	ft1, 64(a1)
80000910: 93 f4 ca 00  	andi	s1, s5, 12
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
8000093c: 93 8a 4a 01  	addi	s5, s5, 20
80000940: 13 0a 2a 00  	addi	s4, s4, 2
80000944: 93 86 36 01  	addi	a3, a3, 19
80000948: 13 06 36 00  	addi	a2, a2, 3
8000094c: 93 89 29 01  	addi	s3, s3, 18
80000950: 13 09 49 00  	addi	s2, s2, 4
80000954: 13 05 15 01  	addi	a0, a0, 17
80000958: 13 04 54 00  	addi	s0, s0, 5
8000095c: 93 8f 6f 00  	addi	t6, t6, 6
80000960: 93 82 f2 00  	addi	t0, t0, 15
80000964: 93 8c 7c 00  	addi	s9, s9, 7
80000968: 13 0f ef 00  	addi	t5, t5, 14
8000096c: 13 03 83 00  	addi	t1, t1, 8
80000970: 13 0c dc 00  	addi	s8, s8, 13
80000974: 93 8b 9b 00  	addi	s7, s7, 9
80000978: 93 88 c8 00  	addi	a7, a7, 12
8000097c: 93 85 05 0b  	addi	a1, a1, 176
80000980: 13 0b bb 00  	addi	s6, s6, 11
80000984: 13 08 a8 00  	addi	a6, a6, 10
80000988: e3 1c c7 e3  	bne	a4, t3, 0x800007c0 <.LBB0_36+0x38>
8000098c: 23 24 a1 01  	sw	s10, 8(sp)
80000990: 13 08 00 00  	mv	a6, zero
80000994: 93 08 00 00  	mv	a7, zero
80000998: 13 03 00 00  	mv	t1, zero
8000099c: 93 03 00 00  	mv	t2, zero
800009a0: 13 0e 00 00  	mv	t3, zero
800009a4: 13 0f 00 00  	mv	t5, zero
800009a8: 93 0f 00 00  	mv	t6, zero
800009ac: 13 09 00 00  	mv	s2, zero
800009b0: 93 09 00 00  	mv	s3, zero
800009b4: 13 0a 00 00  	mv	s4, zero
800009b8: 93 0a 00 00  	mv	s5, zero
800009bc: 13 0b 00 00  	mv	s6, zero
800009c0: 93 02 00 00  	mv	t0, zero
800009c4: 93 07 00 00  	mv	a5, zero
800009c8: 93 04 00 00  	mv	s1, zero
800009cc: 13 04 00 00  	mv	s0, zero
800009d0: 13 05 00 00  	mv	a0, zero
800009d4: 23 2c 11 00  	sw	ra, 24(sp)
;   for (i = 0; i < nk; i++)
800009d8: 93 85 80 04  	addi	a1, ra, 72
800009dc: 37 96 e3 38  	lui	a2, 233017
800009e0: 13 06 96 e3  	addi	a2, a2, -455
800009e4: 93 06 20 01  	addi	a3, zero, 18
800009e8: 93 0b e0 fe  	addi	s7, zero, -18
800009ec: 13 0c 60 17  	addi	s8, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
800009f0: 33 37 c5 02  	mulhu	a4, a0, a2
800009f4: 13 57 27 00  	srli	a4, a4, 2
800009f8: 33 07 d7 02  	mul	a4, a4, a3
800009fc: 33 07 e5 40  	sub	a4, a0, a4
80000a00: d3 00 07 d2  	fcvt.d.w	ft1, a4

80000a04 <.LBB0_37>:
80000a04: 17 37 00 00  	auipc	a4, 3
80000a08: 13 07 c7 55  	addi	a4, a4, 1372
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
80000a38: 33 37 cb 02  	mulhu	a4, s6, a2
80000a3c: 13 57 27 00  	srli	a4, a4, 2
80000a40: 33 07 d7 02  	mul	a4, a4, a3
80000a44: 33 07 eb 40  	sub	a4, s6, a4
80000a48: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a4c: 33 37 ca 02  	mulhu	a4, s4, a2
80000a50: 13 57 27 00  	srli	a4, a4, 2
80000a54: 33 07 d7 02  	mul	a4, a4, a3
80000a58: 33 07 ea 40  	sub	a4, s4, a4
80000a5c: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000a60: 33 37 c9 02  	mulhu	a4, s2, a2
80000a64: 13 57 27 00  	srli	a4, a4, 2
80000a68: 33 07 d7 02  	mul	a4, a4, a3
80000a6c: 33 07 e9 40  	sub	a4, s2, a4
80000a70: 53 03 07 d2  	fcvt.d.w	ft6, a4
80000a74: 33 37 cf 02  	mulhu	a4, t5, a2
80000a78: 13 57 27 00  	srli	a4, a4, 2
80000a7c: 33 07 d7 02  	mul	a4, a4, a3
80000a80: 33 07 ef 40  	sub	a4, t5, a4
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
80000ac4: 33 37 c3 02  	mulhu	a4, t1, a2
80000ac8: 13 57 27 00  	srli	a4, a4, 2
80000acc: 33 07 d7 02  	mul	a4, a4, a3
80000ad0: 33 07 e3 40  	sub	a4, t1, a4
80000ad4: d3 06 07 d2  	fcvt.d.w	fa3, a4
80000ad8: 33 37 ce 02  	mulhu	a4, t3, a2
80000adc: 13 57 27 00  	srli	a4, a4, 2
80000ae0: 33 07 d7 02  	mul	a4, a4, a3
80000ae4: 33 07 ee 40  	sub	a4, t3, a4
80000ae8: 53 07 07 d2  	fcvt.d.w	fa4, a4
80000aec: 33 b7 cf 02  	mulhu	a4, t6, a2
80000af0: 13 57 27 00  	srli	a4, a4, 2
80000af4: 33 07 d7 02  	mul	a4, a4, a3
80000af8: 33 87 ef 40  	sub	a4, t6, a4
80000afc: d3 07 07 d2  	fcvt.d.w	fa5, a4
80000b00: 33 b7 c9 02  	mulhu	a4, s3, a2
80000b04: 13 57 27 00  	srli	a4, a4, 2
80000b08: 33 07 d7 02  	mul	a4, a4, a3
80000b0c: 33 87 e9 40  	sub	a4, s3, a4
80000b10: 53 08 07 d2  	fcvt.d.w	fa6, a4
80000b14: 33 b7 ca 02  	mulhu	a4, s5, a2
80000b18: 13 57 27 00  	srli	a4, a4, 2
80000b1c: 33 07 d7 02  	mul	a4, a4, a3
80000b20: 33 87 ea 40  	sub	a4, s5, a4
80000b24: d3 08 07 d2  	fcvt.d.w	fa7, a4
80000b28: 33 b7 c2 02  	mulhu	a4, t0, a2
80000b2c: 13 57 27 00  	srli	a4, a4, 2
80000b30: 33 07 d7 02  	mul	a4, a4, a3
80000b34: 33 87 e2 40  	sub	a4, t0, a4
80000b38: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80000b3c: 33 37 c4 02  	mulhu	a4, s0, a2
80000b40: 13 57 27 00  	srli	a4, a4, 2
80000b44: 33 07 77 03  	mul	a4, a4, s7
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
80000bf0: 93 82 02 01  	addi	t0, t0, 16
80000bf4: 13 0b 4b 00  	addi	s6, s6, 4
80000bf8: 93 8a fa 00  	addi	s5, s5, 15
80000bfc: 13 0a 5a 00  	addi	s4, s4, 5
80000c00: 93 89 e9 00  	addi	s3, s3, 14
80000c04: 13 09 69 00  	addi	s2, s2, 6
80000c08: 93 8f df 00  	addi	t6, t6, 13
80000c0c: 13 0f 7f 00  	addi	t5, t5, 7
80000c10: 13 0e ce 00  	addi	t3, t3, 12
80000c14: 93 83 83 00  	addi	t2, t2, 8
80000c18: 13 03 b3 00  	addi	t1, t1, 11
80000c1c: 93 85 05 09  	addi	a1, a1, 144
80000c20: 93 88 a8 00  	addi	a7, a7, 10
80000c24: 13 08 98 00  	addi	a6, a6, 9
80000c28: e3 14 84 dd  	bne	s0, s8, 0x800009f0 <.LBB0_36+0x268>
80000c2c: 13 04 00 00  	mv	s0, zero
80000c30: 93 04 00 00  	mv	s1, zero
80000c34: 13 06 00 00  	mv	a2, zero
80000c38: 93 07 00 00  	mv	a5, zero
80000c3c: 93 06 00 00  	mv	a3, zero
80000c40: 23 2e b1 01  	sw	s11, 28(sp)
;   for (i = 0; i < nj; i++)
80000c44: 13 8e 0d 06  	addi	t3, s11, 96
80000c48: 13 05 10 00  	addi	a0, zero, 1
80000c4c: 23 28 a1 06  	sw	a0, 112(sp)
80000c50: 37 b5 aa aa  	lui	a0, 699051
80000c54: 93 03 b5 aa  	addi	t2, a0, -1365
80000c58: 37 55 a5 3f  	lui	a0, 260693
80000c5c: 13 05 55 55  	addi	a0, a0, 1365
80000c60: 23 2a a1 00  	sw	a0, 20(sp)
80000c64: 37 55 55 55  	lui	a0, 349525
80000c68: 13 05 55 55  	addi	a0, a0, 1365
80000c6c: 23 28 a1 00  	sw	a0, 16(sp)
80000c70: 13 05 10 00  	addi	a0, zero, 1
80000c74: 23 26 a1 06  	sw	a0, 108(sp)
80000c78: 13 05 10 00  	addi	a0, zero, 1
80000c7c: 23 24 a1 06  	sw	a0, 104(sp)
80000c80: 13 05 10 00  	addi	a0, zero, 1
80000c84: 23 22 a1 06  	sw	a0, 100(sp)
80000c88: 13 05 10 00  	addi	a0, zero, 1
80000c8c: 23 20 a1 06  	sw	a0, 96(sp)
80000c90: 13 0b 10 00  	addi	s6, zero, 1
80000c94: 13 05 10 00  	addi	a0, zero, 1
80000c98: 23 2e a1 04  	sw	a0, 92(sp)
80000c9c: 13 05 10 00  	addi	a0, zero, 1
80000ca0: 23 2c a1 04  	sw	a0, 88(sp)
80000ca4: 13 05 10 00  	addi	a0, zero, 1
80000ca8: 23 2a a1 04  	sw	a0, 84(sp)
80000cac: 13 05 10 00  	addi	a0, zero, 1
80000cb0: 23 28 a1 04  	sw	a0, 80(sp)
80000cb4: 13 05 10 00  	addi	a0, zero, 1
80000cb8: 23 26 a1 04  	sw	a0, 76(sp)
80000cbc: 13 05 10 00  	addi	a0, zero, 1
80000cc0: 23 24 a1 04  	sw	a0, 72(sp)
80000cc4: 13 05 10 00  	addi	a0, zero, 1
80000cc8: 23 22 a1 04  	sw	a0, 68(sp)
80000ccc: 13 05 10 00  	addi	a0, zero, 1
80000cd0: 23 2e a1 06  	sw	a0, 124(sp)
80000cd4: 13 05 10 00  	addi	a0, zero, 1
80000cd8: 23 20 a1 04  	sw	a0, 64(sp)
80000cdc: 13 05 10 00  	addi	a0, zero, 1
80000ce0: 23 2e a1 02  	sw	a0, 60(sp)
80000ce4: 13 05 10 00  	addi	a0, zero, 1
80000ce8: 23 2c a1 02  	sw	a0, 56(sp)
80000cec: 93 0a 10 00  	addi	s5, zero, 1
80000cf0: 13 05 10 00  	addi	a0, zero, 1
80000cf4: 23 2a a1 02  	sw	a0, 52(sp)
80000cf8: 13 05 10 00  	addi	a0, zero, 1
80000cfc: 23 28 a1 02  	sw	a0, 48(sp)
80000d00: 13 05 10 00  	addi	a0, zero, 1
80000d04: 23 2c a1 06  	sw	a0, 120(sp)
80000d08: 93 05 10 00  	addi	a1, zero, 1
80000d0c: 13 05 10 00  	addi	a0, zero, 1
80000d10: 23 26 a1 02  	sw	a0, 44(sp)
80000d14: 23 24 51 03  	sw	s5, 40(sp)
80000d18: 23 2a d1 06  	sw	a3, 116(sp)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000d1c: 83 26 41 07  	lw	a3, 116(sp)
80000d20: b3 b6 76 02  	mulhu	a3, a3, t2
80000d24: 93 d6 46 00  	srli	a3, a3, 4
80000d28: 13 05 80 01  	addi	a0, zero, 24
80000d2c: b3 86 a6 02  	mul	a3, a3, a0
80000d30: 13 08 0b 00  	mv	a6, s6
80000d34: 23 22 b1 02  	sw	a1, 36(sp)
80000d38: 33 8b d5 40  	sub	s6, a1, a3
80000d3c: d3 00 0b d2  	fcvt.d.w	ft1, s6
80000d40: 13 0b 08 00  	mv	s6, a6

80000d44 <.LBB0_38>:
80000d44: 97 36 00 00  	auipc	a3, 3
80000d48: 93 86 46 22  	addi	a3, a3, 548
80000d4c: 07 b0 06 00  	fld	ft0, 0(a3)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80000d50: b3 b6 77 02  	mulhu	a3, a5, t2
80000d54: 93 d6 46 00  	srli	a3, a3, 4
80000d58: b3 86 a6 02  	mul	a3, a3, a0
80000d5c: 03 27 81 07  	lw	a4, 120(sp)
80000d60: b3 06 d7 40  	sub	a3, a4, a3
80000d64: 53 81 06 d2  	fcvt.d.w	ft2, a3
80000d68: 83 2b 41 03  	lw	s7, 52(sp)
80000d6c: b3 b6 7b 02  	mulhu	a3, s7, t2
80000d70: 93 d6 46 00  	srli	a3, a3, 4
80000d74: b3 86 a6 02  	mul	a3, a3, a0
80000d78: b3 86 db 40  	sub	a3, s7, a3
80000d7c: d3 81 06 d2  	fcvt.d.w	ft3, a3
80000d80: b3 36 76 02  	mulhu	a3, a2, t2
80000d84: 93 d6 46 00  	srli	a3, a3, 4
80000d88: b3 86 a6 02  	mul	a3, a3, a0
80000d8c: b3 86 da 40  	sub	a3, s5, a3
80000d90: 53 82 06 d2  	fcvt.d.w	ft4, a3
80000d94: 03 27 c1 03  	lw	a4, 60(sp)
80000d98: b3 36 77 02  	mulhu	a3, a4, t2
80000d9c: 93 d6 46 00  	srli	a3, a3, 4
80000da0: b3 86 a6 02  	mul	a3, a3, a0
80000da4: b3 06 d7 40  	sub	a3, a4, a3
80000da8: d3 82 06 d2  	fcvt.d.w	ft5, a3
80000dac: b3 b6 74 02  	mulhu	a3, s1, t2
80000db0: 93 d6 46 00  	srli	a3, a3, 4
80000db4: b3 86 a6 02  	mul	a3, a3, a0
80000db8: 83 25 c1 07  	lw	a1, 124(sp)
80000dbc: b3 86 d5 40  	sub	a3, a1, a3
80000dc0: 53 83 06 d2  	fcvt.d.w	ft6, a3
80000dc4: 03 29 81 04  	lw	s2, 72(sp)
80000dc8: b3 36 79 02  	mulhu	a3, s2, t2
80000dcc: 93 d6 46 00  	srli	a3, a3, 4
80000dd0: b3 86 a6 02  	mul	a3, a3, a0
80000dd4: b3 06 d9 40  	sub	a3, s2, a3
80000dd8: d3 83 06 d2  	fcvt.d.w	ft7, a3
80000ddc: 03 2a 01 05  	lw	s4, 80(sp)
80000de0: b3 36 7a 02  	mulhu	a3, s4, t2
80000de4: 93 d6 46 00  	srli	a3, a3, 4
80000de8: b3 86 a6 02  	mul	a3, a3, a0
80000dec: b3 06 da 40  	sub	a3, s4, a3
80000df0: 53 85 06 d2  	fcvt.d.w	fa0, a3
80000df4: 83 2e 81 05  	lw	t4, 88(sp)
80000df8: b3 b6 7e 02  	mulhu	a3, t4, t2
80000dfc: 93 d6 46 00  	srli	a3, a3, 4
80000e00: b3 86 a6 02  	mul	a3, a3, a0
80000e04: b3 86 de 40  	sub	a3, t4, a3
80000e08: d3 85 06 d2  	fcvt.d.w	fa1, a3
80000e0c: b3 36 74 02  	mulhu	a3, s0, t2
80000e10: 93 d6 46 00  	srli	a3, a3, 4
80000e14: b3 86 a6 02  	mul	a3, a3, a0
80000e18: b3 06 d8 40  	sub	a3, a6, a3
80000e1c: 53 86 06 d2  	fcvt.d.w	fa2, a3
80000e20: 83 2d 41 06  	lw	s11, 100(sp)
80000e24: b3 b6 7d 02  	mulhu	a3, s11, t2
80000e28: 93 d6 46 00  	srli	a3, a3, 4
80000e2c: b3 86 a6 02  	mul	a3, a3, a0
80000e30: b3 86 dd 40  	sub	a3, s11, a3
80000e34: d3 86 06 d2  	fcvt.d.w	fa3, a3
80000e38: 03 2c 01 07  	lw	s8, 112(sp)
80000e3c: b3 36 7c 02  	mulhu	a3, s8, t2
80000e40: 93 d6 46 00  	srli	a3, a3, 4
80000e44: b3 86 a6 02  	mul	a3, a3, a0
80000e48: b3 06 dc 40  	sub	a3, s8, a3
80000e4c: 53 87 06 d2  	fcvt.d.w	fa4, a3
80000e50: 83 2c c1 06  	lw	s9, 108(sp)
80000e54: b3 b6 7c 02  	mulhu	a3, s9, t2
80000e58: 93 d6 46 00  	srli	a3, a3, 4
80000e5c: b3 86 a6 02  	mul	a3, a3, a0
80000e60: b3 86 dc 40  	sub	a3, s9, a3
80000e64: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000e68: 03 2d 81 06  	lw	s10, 104(sp)
80000e6c: b3 36 7d 02  	mulhu	a3, s10, t2
80000e70: 93 d6 46 00  	srli	a3, a3, 4
80000e74: b3 86 a6 02  	mul	a3, a3, a0
80000e78: b3 06 dd 40  	sub	a3, s10, a3
80000e7c: 53 88 06 d2  	fcvt.d.w	fa6, a3
80000e80: 83 20 01 06  	lw	ra, 96(sp)
80000e84: b3 b6 70 02  	mulhu	a3, ra, t2
80000e88: 93 d6 46 00  	srli	a3, a3, 4
80000e8c: b3 86 a6 02  	mul	a3, a3, a0
80000e90: b3 86 d0 40  	sub	a3, ra, a3
80000e94: d3 88 06 d2  	fcvt.d.w	fa7, a3
80000e98: 83 22 c1 05  	lw	t0, 92(sp)
80000e9c: b3 b6 72 02  	mulhu	a3, t0, t2
80000ea0: 93 d6 46 00  	srli	a3, a3, 4
80000ea4: b3 86 a6 02  	mul	a3, a3, a0
80000ea8: b3 86 d2 40  	sub	a3, t0, a3
80000eac: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80000eb0: 03 28 41 05  	lw	a6, 84(sp)
80000eb4: b3 36 78 02  	mulhu	a3, a6, t2
80000eb8: 93 d6 46 00  	srli	a3, a3, 4
80000ebc: b3 86 a6 02  	mul	a3, a3, a0
80000ec0: b3 06 d8 40  	sub	a3, a6, a3
80000ec4: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80000ec8: 83 2f c1 04  	lw	t6, 76(sp)
80000ecc: b3 b6 7f 02  	mulhu	a3, t6, t2
80000ed0: 93 d6 46 00  	srli	a3, a3, 4
80000ed4: b3 86 a6 02  	mul	a3, a3, a0
80000ed8: b3 86 df 40  	sub	a3, t6, a3
80000edc: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80000ee0: 83 28 41 04  	lw	a7, 68(sp)
80000ee4: b3 b6 78 02  	mulhu	a3, a7, t2
80000ee8: 93 d6 46 00  	srli	a3, a3, 4
80000eec: b3 86 a6 02  	mul	a3, a3, a0
80000ef0: b3 86 d8 40  	sub	a3, a7, a3
80000ef4: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80000ef8: 03 2f 01 04  	lw	t5, 64(sp)
80000efc: b3 36 7f 02  	mulhu	a3, t5, t2
80000f00: 93 d6 46 00  	srli	a3, a3, 4
80000f04: b3 86 a6 02  	mul	a3, a3, a0
80000f08: b3 06 df 40  	sub	a3, t5, a3
80000f0c: 53 84 06 d2  	fcvt.d.w	fs0, a3
80000f10: 03 23 81 03  	lw	t1, 56(sp)
80000f14: b3 36 73 02  	mulhu	a3, t1, t2
80000f18: 93 d6 46 00  	srli	a3, a3, 4
80000f1c: b3 86 a6 02  	mul	a3, a3, a0
80000f20: b3 06 d3 40  	sub	a3, t1, a3
80000f24: d3 84 06 d2  	fcvt.d.w	fs1, a3
80000f28: 83 2a 01 03  	lw	s5, 48(sp)
80000f2c: b3 b6 7a 02  	mulhu	a3, s5, t2
80000f30: 93 d6 46 00  	srli	a3, a3, 4
80000f34: b3 86 a6 02  	mul	a3, a3, a0
80000f38: b3 86 da 40  	sub	a3, s5, a3
80000f3c: 53 89 06 d2  	fcvt.d.w	fs2, a3
80000f40: 83 29 c1 02  	lw	s3, 44(sp)
80000f44: b3 b6 79 02  	mulhu	a3, s3, t2
80000f48: 93 d6 46 00  	srli	a3, a3, 4
80000f4c: b3 86 a6 02  	mul	a3, a3, a0
80000f50: b3 86 d9 40  	sub	a3, s3, a3
80000f54: d3 89 06 d2  	fcvt.d.w	fs3, a3
80000f58: 83 26 41 07  	lw	a3, 116(sp)
80000f5c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000f60: 27 30 1e fa  	fsd	ft1, -96(t3)
80000f64: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80000f68: 27 34 1e fa  	fsd	ft1, -88(t3)
80000f6c: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80000f70: 27 38 1e fa  	fsd	ft1, -80(t3)
80000f74: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80000f78: 27 3c 1e fa  	fsd	ft1, -72(t3)
80000f7c: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80000f80: 27 30 1e fc  	fsd	ft1, -64(t3)
80000f84: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80000f88: 27 34 1e fc  	fsd	ft1, -56(t3)
80000f8c: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80000f90: 27 38 1e fc  	fsd	ft1, -48(t3)
80000f94: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80000f98: 27 3c 1e fc  	fsd	ft1, -40(t3)
80000f9c: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80000fa0: 27 30 1e fe  	fsd	ft1, -32(t3)
80000fa4: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80000fa8: 27 34 1e fe  	fsd	ft1, -24(t3)
80000fac: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80000fb0: 27 38 1e fe  	fsd	ft1, -16(t3)
80000fb4: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80000fb8: 27 3c 1e fe  	fsd	ft1, -8(t3)
80000fbc: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80000fc0: 27 30 1e 00  	fsd	ft1, 0(t3)
80000fc4: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80000fc8: 27 34 1e 00  	fsd	ft1, 8(t3)
80000fcc: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80000fd0: 27 38 1e 00  	fsd	ft1, 16(t3)
80000fd4: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80000fd8: 27 3c 1e 00  	fsd	ft1, 24(t3)
80000fdc: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80000fe0: 27 30 1e 02  	fsd	ft1, 32(t3)
80000fe4: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
80000fe8: 27 34 1e 02  	fsd	ft1, 40(t3)
80000fec: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
80000ff0: 27 38 1e 02  	fsd	ft1, 48(t3)
80000ff4: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80000ff8: 27 3c 1e 02  	fsd	ft1, 56(t3)
80000ffc: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
80001000: 27 30 1e 04  	fsd	ft1, 64(t3)
80001004: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80001008: 27 38 1e 04  	fsd	ft1, 80(t3)
8000100c: 03 25 41 01  	lw	a0, 20(sp)
80001010: 23 26 ae 04  	sw	a0, 76(t3)
80001014: 03 25 01 01  	lw	a0, 16(sp)
80001018: 23 24 ae 04  	sw	a0, 72(t3)
8000101c: 53 f0 09 12  	fmul.d	ft0, fs3, ft0
80001020: 27 3c 0e 04  	fsd	ft0, 88(t3)
;   for (i = 0; i < nj; i++)
80001024: 93 89 a9 01  	addi	s3, s3, 26
80001028: 83 25 41 02  	lw	a1, 36(sp)
8000102c: 93 85 35 00  	addi	a1, a1, 3
80001030: 93 86 36 00  	addi	a3, a3, 3
80001034: 03 25 81 07  	lw	a0, 120(sp)
80001038: 13 05 45 00  	addi	a0, a0, 4
8000103c: 23 2c a1 06  	sw	a0, 120(sp)
80001040: 93 87 47 00  	addi	a5, a5, 4
80001044: 93 8a 9a 01  	addi	s5, s5, 25
80001048: 23 28 51 03  	sw	s5, 48(sp)
8000104c: 83 2a 81 02  	lw	s5, 40(sp)
80001050: 93 8b 5b 00  	addi	s7, s7, 5
80001054: 23 2a 71 03  	sw	s7, 52(sp)
80001058: 93 8a 6a 00  	addi	s5, s5, 6
8000105c: 13 06 66 00  	addi	a2, a2, 6
80001060: 13 03 73 01  	addi	t1, t1, 23
80001064: 23 2c 61 02  	sw	t1, 56(sp)
80001068: 13 07 77 00  	addi	a4, a4, 7
8000106c: 23 2e e1 02  	sw	a4, 60(sp)
80001070: 13 0f 6f 01  	addi	t5, t5, 22
80001074: 23 20 e1 05  	sw	t5, 64(sp)
80001078: 03 25 c1 07  	lw	a0, 124(sp)
8000107c: 13 05 85 00  	addi	a0, a0, 8
80001080: 23 2e a1 06  	sw	a0, 124(sp)
80001084: 93 84 84 00  	addi	s1, s1, 8
80001088: 93 88 58 01  	addi	a7, a7, 21
8000108c: 23 22 11 05  	sw	a7, 68(sp)
80001090: 13 09 99 00  	addi	s2, s2, 9
80001094: 23 24 21 05  	sw	s2, 72(sp)
80001098: 93 8f 4f 01  	addi	t6, t6, 20
8000109c: 23 26 f1 05  	sw	t6, 76(sp)
800010a0: 13 0a aa 00  	addi	s4, s4, 10
800010a4: 23 28 41 05  	sw	s4, 80(sp)
800010a8: 13 08 38 01  	addi	a6, a6, 19
800010ac: 23 2a 01 05  	sw	a6, 84(sp)
800010b0: 93 8e be 00  	addi	t4, t4, 11
800010b4: 23 2c d1 05  	sw	t4, 88(sp)
800010b8: 93 82 22 01  	addi	t0, t0, 18
800010bc: 23 2e 51 04  	sw	t0, 92(sp)
800010c0: 13 0b cb 00  	addi	s6, s6, 12
800010c4: 13 04 c4 00  	addi	s0, s0, 12
800010c8: 93 80 10 01  	addi	ra, ra, 17
800010cc: 23 20 11 06  	sw	ra, 96(sp)
800010d0: 93 8d dd 00  	addi	s11, s11, 13
800010d4: 23 22 b1 07  	sw	s11, 100(sp)
800010d8: 13 0d 0d 01  	addi	s10, s10, 16
800010dc: 23 24 a1 07  	sw	s10, 104(sp)
800010e0: 13 0e 0e 0c  	addi	t3, t3, 192
800010e4: 93 8c fc 00  	addi	s9, s9, 15
800010e8: 23 26 91 07  	sw	s9, 108(sp)
800010ec: 13 0c ec 00  	addi	s8, s8, 14
800010f0: 23 28 81 07  	sw	s8, 112(sp)
800010f4: 13 05 50 1d  	addi	a0, zero, 469
800010f8: 23 26 31 03  	sw	s3, 44(sp)
800010fc: e3 9c a9 c0  	bne	s3, a0, 0x80000d14 <.LBB0_37+0x310>
80001100: 13 05 00 00  	mv	a0, zero
80001104: 13 06 00 00  	mv	a2, zero
80001108: 93 05 00 00  	mv	a1, zero
8000110c: 93 02 00 00  	mv	t0, zero
80001110: 93 0f 00 00  	mv	t6, zero
80001114: 93 09 00 00  	mv	s3, zero
80001118: 13 0a 00 00  	mv	s4, zero
8000111c: 93 0a 00 00  	mv	s5, zero
80001120: 13 0b 00 00  	mv	s6, zero
80001124: 13 08 00 00  	mv	a6, zero
80001128: 93 08 00 00  	mv	a7, zero
8000112c: 13 09 00 00  	mv	s2, zero
80001130: 93 0b 00 00  	mv	s7, zero
80001134: 13 0c 00 00  	mv	s8, zero
80001138: 93 0c 00 00  	mv	s9, zero
8000113c: 13 0d 00 00  	mv	s10, zero
80001140: 93 0d 00 00  	mv	s11, zero
80001144: 93 00 00 00  	mv	ra, zero
80001148: 13 03 00 00  	mv	t1, zero
8000114c: 93 0e 00 00  	mv	t4, zero
80001150: 93 03 00 00  	mv	t2, zero
80001154: 13 0e 00 00  	mv	t3, zero
80001158: 13 0f 00 00  	mv	t5, zero
;   for (i = 0; i < ni; i++)
8000115c: 83 26 c1 00  	lw	a3, 12(sp)
80001160: 13 87 06 06  	addi	a4, a3, 96
80001164: b7 96 2e ba  	lui	a3, 762601
80001168: 93 87 36 ba  	addi	a5, a3, -1117
8000116c: 93 06 60 01  	addi	a3, zero, 22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001170: 33 34 fe 02  	mulhu	s0, t3, a5
80001174: 13 54 44 00  	srli	s0, s0, 4
80001178: 33 04 d4 02  	mul	s0, s0, a3
8000117c: 93 84 02 00  	mv	s1, t0
80001180: b3 02 8e 40  	sub	t0, t3, s0
80001184: d3 80 02 d2  	fcvt.d.w	ft1, t0
80001188: 93 82 04 00  	mv	t0, s1

8000118c <.LBB0_39>:
8000118c: 17 34 00 00  	auipc	s0, 3
80001190: 13 04 44 de  	addi	s0, s0, -540
80001194: 07 30 04 00  	fld	ft0, 0(s0)
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001198: 33 b4 f3 02  	mulhu	s0, t2, a5
8000119c: 13 54 44 00  	srli	s0, s0, 4
800011a0: 33 04 d4 02  	mul	s0, s0, a3
800011a4: 33 84 83 40  	sub	s0, t2, s0
800011a8: 53 01 04 d2  	fcvt.d.w	ft2, s0
800011ac: 33 34 f3 02  	mulhu	s0, t1, a5
800011b0: 13 54 44 00  	srli	s0, s0, 4
800011b4: 33 04 d4 02  	mul	s0, s0, a3
800011b8: 33 04 83 40  	sub	s0, t1, s0
800011bc: d3 01 04 d2  	fcvt.d.w	ft3, s0
800011c0: 33 b4 fd 02  	mulhu	s0, s11, a5
800011c4: 13 54 44 00  	srli	s0, s0, 4
800011c8: 33 04 d4 02  	mul	s0, s0, a3
800011cc: 33 84 8d 40  	sub	s0, s11, s0
800011d0: 53 02 04 d2  	fcvt.d.w	ft4, s0
800011d4: 33 34 fd 02  	mulhu	s0, s10, a5
800011d8: 13 54 44 00  	srli	s0, s0, 4
800011dc: 33 04 d4 02  	mul	s0, s0, a3
800011e0: 33 04 8d 40  	sub	s0, s10, s0
800011e4: d3 02 04 d2  	fcvt.d.w	ft5, s0
800011e8: 33 34 fc 02  	mulhu	s0, s8, a5
800011ec: 13 54 44 00  	srli	s0, s0, 4
800011f0: 33 04 d4 02  	mul	s0, s0, a3
800011f4: 33 04 8c 40  	sub	s0, s8, s0
800011f8: 53 03 04 d2  	fcvt.d.w	ft6, s0
800011fc: 33 34 f9 02  	mulhu	s0, s2, a5
80001200: 13 54 44 00  	srli	s0, s0, 4
80001204: 33 04 d4 02  	mul	s0, s0, a3
80001208: 33 04 89 40  	sub	s0, s2, s0
8000120c: d3 03 04 d2  	fcvt.d.w	ft7, s0
80001210: 33 34 f8 02  	mulhu	s0, a6, a5
80001214: 13 54 44 00  	srli	s0, s0, 4
80001218: 33 04 d4 02  	mul	s0, s0, a3
8000121c: 33 04 88 40  	sub	s0, a6, s0
80001220: 53 05 04 d2  	fcvt.d.w	fa0, s0
80001224: 33 b4 fa 02  	mulhu	s0, s5, a5
80001228: 13 54 44 00  	srli	s0, s0, 4
8000122c: 33 04 d4 02  	mul	s0, s0, a3
80001230: 33 84 8a 40  	sub	s0, s5, s0
80001234: d3 05 04 d2  	fcvt.d.w	fa1, s0
80001238: 33 b4 f9 02  	mulhu	s0, s3, a5
8000123c: 13 54 44 00  	srli	s0, s0, 4
80001240: 33 04 d4 02  	mul	s0, s0, a3
80001244: 33 84 89 40  	sub	s0, s3, s0
80001248: 53 06 04 d2  	fcvt.d.w	fa2, s0
8000124c: 33 b4 f4 02  	mulhu	s0, s1, a5
80001250: 13 54 44 00  	srli	s0, s0, 4
80001254: 33 04 d4 02  	mul	s0, s0, a3
80001258: 33 84 84 40  	sub	s0, s1, s0
8000125c: d3 06 04 d2  	fcvt.d.w	fa3, s0
80001260: 33 34 f5 02  	mulhu	s0, a0, a5
80001264: 13 54 44 00  	srli	s0, s0, 4
80001268: 33 04 d4 02  	mul	s0, s0, a3
8000126c: 33 04 85 40  	sub	s0, a0, s0
80001270: 53 07 04 d2  	fcvt.d.w	fa4, s0
80001274: 33 34 f6 02  	mulhu	s0, a2, a5
80001278: 13 54 44 00  	srli	s0, s0, 4
8000127c: 33 04 d4 02  	mul	s0, s0, a3
80001280: 33 04 86 40  	sub	s0, a2, s0
80001284: d3 07 04 d2  	fcvt.d.w	fa5, s0
80001288: 33 b4 f5 02  	mulhu	s0, a1, a5
8000128c: 13 54 44 00  	srli	s0, s0, 4
80001290: 33 04 d4 02  	mul	s0, s0, a3
80001294: 33 84 85 40  	sub	s0, a1, s0
80001298: 53 08 04 d2  	fcvt.d.w	fa6, s0
8000129c: 33 b4 ff 02  	mulhu	s0, t6, a5
800012a0: 13 54 44 00  	srli	s0, s0, 4
800012a4: 33 04 d4 02  	mul	s0, s0, a3
800012a8: 33 84 8f 40  	sub	s0, t6, s0
800012ac: d3 08 04 d2  	fcvt.d.w	fa7, s0
800012b0: 33 34 fa 02  	mulhu	s0, s4, a5
800012b4: 13 54 44 00  	srli	s0, s0, 4
800012b8: 33 04 d4 02  	mul	s0, s0, a3
800012bc: 33 04 8a 40  	sub	s0, s4, s0
800012c0: 53 0e 04 d2  	fcvt.d.w	ft8, s0
800012c4: 33 34 fb 02  	mulhu	s0, s6, a5
800012c8: 13 54 44 00  	srli	s0, s0, 4
800012cc: 33 04 d4 02  	mul	s0, s0, a3
800012d0: 33 04 8b 40  	sub	s0, s6, s0
800012d4: d3 0e 04 d2  	fcvt.d.w	ft9, s0
800012d8: 33 b4 f8 02  	mulhu	s0, a7, a5
800012dc: 13 54 44 00  	srli	s0, s0, 4
800012e0: 33 04 d4 02  	mul	s0, s0, a3
800012e4: 33 84 88 40  	sub	s0, a7, s0
800012e8: 53 0f 04 d2  	fcvt.d.w	ft10, s0
800012ec: 33 b4 fb 02  	mulhu	s0, s7, a5
800012f0: 13 54 44 00  	srli	s0, s0, 4
800012f4: 33 04 d4 02  	mul	s0, s0, a3
800012f8: 33 84 8b 40  	sub	s0, s7, s0
800012fc: d3 0f 04 d2  	fcvt.d.w	ft11, s0
80001300: 33 b4 fc 02  	mulhu	s0, s9, a5
80001304: 13 54 44 00  	srli	s0, s0, 4
80001308: 33 04 d4 02  	mul	s0, s0, a3
8000130c: 33 84 8c 40  	sub	s0, s9, s0
80001310: 53 04 04 d2  	fcvt.d.w	fs0, s0
80001314: 33 b4 f0 02  	mulhu	s0, ra, a5
80001318: 13 54 44 00  	srli	s0, s0, 4
8000131c: 33 04 d4 02  	mul	s0, s0, a3
80001320: 33 84 80 40  	sub	s0, ra, s0
80001324: d3 04 04 d2  	fcvt.d.w	fs1, s0
80001328: 33 b4 fe 02  	mulhu	s0, t4, a5
8000132c: 13 54 44 00  	srli	s0, s0, 4
80001330: 33 04 d4 02  	mul	s0, s0, a3
80001334: 33 84 8e 40  	sub	s0, t4, s0
80001338: 53 09 04 d2  	fcvt.d.w	fs2, s0
8000133c: 33 34 ff 02  	mulhu	s0, t5, a5
80001340: 13 54 44 00  	srli	s0, s0, 4
80001344: 93 04 a0 fe  	addi	s1, zero, -22
80001348: 33 04 94 02  	mul	s0, s0, s1
8000134c: 33 04 8f 00  	add	s0, t5, s0
80001350: d3 09 04 d2  	fcvt.d.w	fs3, s0
80001354: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001358: 27 30 17 fa  	fsd	ft1, -96(a4)
8000135c: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80001360: 27 34 17 fa  	fsd	ft1, -88(a4)
80001364: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80001368: 27 38 17 fa  	fsd	ft1, -80(a4)
8000136c: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80001370: 27 3c 17 fa  	fsd	ft1, -72(a4)
80001374: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80001378: 27 30 17 fc  	fsd	ft1, -64(a4)
8000137c: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80001380: 27 34 17 fc  	fsd	ft1, -56(a4)
80001384: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80001388: 27 38 17 fc  	fsd	ft1, -48(a4)
8000138c: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80001390: 27 3c 17 fc  	fsd	ft1, -40(a4)
80001394: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80001398: 27 30 17 fe  	fsd	ft1, -32(a4)
8000139c: d3 70 06 12  	fmul.d	ft1, fa2, ft0
800013a0: 27 34 17 fe  	fsd	ft1, -24(a4)
800013a4: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
800013a8: 27 38 17 fe  	fsd	ft1, -16(a4)
800013ac: d3 70 07 12  	fmul.d	ft1, fa4, ft0
800013b0: 27 3c 17 fe  	fsd	ft1, -8(a4)
800013b4: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
800013b8: 27 30 17 00  	fsd	ft1, 0(a4)
800013bc: d3 70 08 12  	fmul.d	ft1, fa6, ft0
800013c0: 27 34 17 00  	fsd	ft1, 8(a4)
800013c4: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
800013c8: 27 38 17 00  	fsd	ft1, 16(a4)
800013cc: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
800013d0: 27 3c 17 00  	fsd	ft1, 24(a4)
800013d4: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
800013d8: 27 30 17 02  	fsd	ft1, 32(a4)
800013dc: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
800013e0: 27 34 17 02  	fsd	ft1, 40(a4)
800013e4: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
800013e8: 27 38 17 02  	fsd	ft1, 48(a4)
800013ec: d3 70 04 12  	fmul.d	ft1, fs0, ft0
800013f0: 27 3c 17 02  	fsd	ft1, 56(a4)
800013f4: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
800013f8: 27 34 17 04  	fsd	ft1, 72(a4)
800013fc: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80001400: 27 38 17 04  	fsd	ft1, 80(a4)
80001404: 23 22 07 04  	sw	zero, 68(a4)
80001408: 23 20 07 04  	sw	zero, 64(a4)
8000140c: 53 f0 09 12  	fmul.d	ft0, fs3, ft0
80001410: 27 3c 07 04  	fsd	ft0, 88(a4)
;   for (i = 0; i < ni; i++)
80001414: 13 0f 9f 01  	addi	t5, t5, 25
80001418: 13 0e 2e 00  	addi	t3, t3, 2
8000141c: 93 83 33 00  	addi	t2, t2, 3
80001420: 93 8e 8e 01  	addi	t4, t4, 24
80001424: 13 03 43 00  	addi	t1, t1, 4
80001428: 93 80 70 01  	addi	ra, ra, 23
8000142c: 93 8d 5d 00  	addi	s11, s11, 5
80001430: 13 0d 6d 00  	addi	s10, s10, 6
80001434: 93 8c 5c 01  	addi	s9, s9, 21
80001438: 13 0c 7c 00  	addi	s8, s8, 7
8000143c: 93 8b 4b 01  	addi	s7, s7, 20
80001440: 13 09 89 00  	addi	s2, s2, 8
80001444: 93 88 38 01  	addi	a7, a7, 19
80001448: 13 08 98 00  	addi	a6, a6, 9
8000144c: 13 0b 2b 01  	addi	s6, s6, 18
80001450: 93 8a aa 00  	addi	s5, s5, 10
80001454: 13 0a 1a 01  	addi	s4, s4, 17
80001458: 93 89 b9 00  	addi	s3, s3, 11
8000145c: 93 8f 0f 01  	addi	t6, t6, 16
80001460: 93 82 c2 00  	addi	t0, t0, 12
80001464: 93 85 f5 00  	addi	a1, a1, 15
80001468: 13 07 07 0c  	addi	a4, a4, 192
8000146c: 13 06 e6 00  	addi	a2, a2, 14
80001470: 13 05 d5 00  	addi	a0, a0, 13
80001474: 13 04 00 19  	addi	s0, zero, 400
80001478: e3 1c 8f ce  	bne	t5, s0, 0x80001170 <.LBB0_38+0x42c>
8000147c: 93 05 00 00  	mv	a1, zero
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001480: 73 25 00 b0  	csrr	a0, mcycle
80001484: 23 2c a1 06  	sw	a0, 120(sp)
80001488: 03 2e 81 00  	lw	t3, 8(sp)
8000148c: 83 23 81 01  	lw	t2, 24(sp)
80001490: 93 04 00 00  	mv	s1, zero
80001494: 23 2e b1 06  	sw	a1, 124(sp)
;         x += alpha * A[i][k] * B[k][j];
80001498: 13 05 00 0b  	addi	a0, zero, 176
8000149c: 33 85 a5 02  	mul	a0, a1, a0
800014a0: 83 25 01 02  	lw	a1, 32(sp)
800014a4: 33 84 a5 00  	add	s0, a1, a0
800014a8: 13 0f 84 00  	addi	t5, s0, 8
800014ac: 93 0f 04 01  	addi	t6, s0, 16
800014b0: 13 09 84 01  	addi	s2, s0, 24
800014b4: 93 09 04 02  	addi	s3, s0, 32
800014b8: 13 0a 84 02  	addi	s4, s0, 40
800014bc: 93 0a 04 03  	addi	s5, s0, 48
800014c0: 13 0b 84 03  	addi	s6, s0, 56
800014c4: 93 0b 04 04  	addi	s7, s0, 64
800014c8: 13 0c 84 04  	addi	s8, s0, 72
800014cc: 93 0c 04 05  	addi	s9, s0, 80
800014d0: 13 0d 84 05  	addi	s10, s0, 88
800014d4: 93 0d 04 06  	addi	s11, s0, 96
800014d8: 93 00 84 06  	addi	ra, s0, 104
800014dc: 13 03 04 07  	addi	t1, s0, 112
800014e0: 13 07 84 07  	addi	a4, s0, 120
800014e4: 93 05 04 08  	addi	a1, s0, 128
800014e8: 93 06 84 08  	addi	a3, s0, 136
800014ec: 93 07 04 09  	addi	a5, s0, 144
800014f0: 13 05 84 09  	addi	a0, s0, 152
800014f4: 13 08 04 0a  	addi	a6, s0, 160
800014f8: 93 08 84 0a  	addi	a7, s0, 168
800014fc: 07 30 04 00  	fld	ft0, 0(s0)
80001500: b3 82 93 00  	add	t0, t2, s1
80001504: 87 b0 02 00  	fld	ft1, 0(t0)
80001508: 53 f0 00 12  	fmul.d	ft0, ft1, ft0
8000150c: 87 30 0f 00  	fld	ft1, 0(t5)
80001510: 07 b1 02 09  	fld	ft2, 144(t0)
80001514: 87 b1 0f 00  	fld	ft3, 0(t6)
80001518: 07 b2 02 12  	fld	ft4, 288(t0)
8000151c: 87 32 09 00  	fld	ft5, 0(s2)
80001520: 07 b3 02 1b  	fld	ft6, 432(t0)
80001524: 87 b3 09 00  	fld	ft7, 0(s3)
80001528: 43 70 11 02  	fmadd.d	ft0, ft2, ft1, ft0
8000152c: 87 b0 02 24  	fld	ft1, 576(t0)
80001530: 07 31 0a 00  	fld	ft2, 0(s4)
80001534: 43 70 32 02  	fmadd.d	ft0, ft4, ft3, ft0
80001538: 87 b1 02 2d  	fld	ft3, 720(t0)
8000153c: 07 b2 0a 00  	fld	ft4, 0(s5)
80001540: 43 70 53 02  	fmadd.d	ft0, ft6, ft5, ft0
80001544: 87 b2 02 36  	fld	ft5, 864(t0)
80001548: 07 33 0b 00  	fld	ft6, 0(s6)
8000154c: 43 f0 70 02  	fmadd.d	ft0, ft1, ft7, ft0
80001550: 87 b0 02 3f  	fld	ft1, 1008(t0)
80001554: 87 b3 0b 00  	fld	ft7, 0(s7)
80001558: 43 f0 21 02  	fmadd.d	ft0, ft3, ft2, ft0
8000155c: 07 b1 02 48  	fld	ft2, 1152(t0)
80001560: 87 31 0c 00  	fld	ft3, 0(s8)
80001564: 43 f0 42 02  	fmadd.d	ft0, ft5, ft4, ft0
80001568: 07 b2 02 51  	fld	ft4, 1296(t0)
8000156c: 87 b2 0c 00  	fld	ft5, 0(s9)
80001570: 43 f0 60 02  	fmadd.d	ft0, ft1, ft6, ft0
80001574: 87 b0 02 5a  	fld	ft1, 1440(t0)
80001578: 07 33 0d 00  	fld	ft6, 0(s10)
8000157c: 43 70 71 02  	fmadd.d	ft0, ft2, ft7, ft0
80001580: 07 b1 02 63  	fld	ft2, 1584(t0)
80001584: 87 b3 0d 00  	fld	ft7, 0(s11)
80001588: 43 70 32 02  	fmadd.d	ft0, ft4, ft3, ft0
8000158c: 87 b1 02 6c  	fld	ft3, 1728(t0)
80001590: 07 b2 00 00  	fld	ft4, 0(ra)
80001594: 43 f0 50 02  	fmadd.d	ft0, ft1, ft5, ft0
80001598: 87 b0 02 75  	fld	ft1, 1872(t0)
8000159c: 87 32 03 00  	fld	ft5, 0(t1)
800015a0: 43 70 61 02  	fmadd.d	ft0, ft2, ft6, ft0
800015a4: 07 b1 02 7e  	fld	ft2, 2016(t0)
800015a8: 07 33 07 00  	fld	ft6, 0(a4)
800015ac: 93 8e 82 43  	addi	t4, t0, 1080
800015b0: 43 f0 71 02  	fmadd.d	ft0, ft3, ft7, ft0
800015b4: 87 b1 8e 43  	fld	ft3, 1080(t4)
800015b8: 87 b3 05 00  	fld	ft7, 0(a1)
800015bc: 13 86 02 48  	addi	a2, t0, 1152
800015c0: 43 f0 40 02  	fmadd.d	ft0, ft1, ft4, ft0
800015c4: 87 30 06 48  	fld	ft1, 1152(a2)
800015c8: 07 b2 06 00  	fld	ft4, 0(a3)
800015cc: 13 86 82 4c  	addi	a2, t0, 1224
800015d0: 43 70 51 02  	fmadd.d	ft0, ft2, ft5, ft0
800015d4: 07 31 86 4c  	fld	ft2, 1224(a2)
800015d8: 87 b2 07 00  	fld	ft5, 0(a5)
800015dc: 13 86 02 51  	addi	a2, t0, 1296
800015e0: 43 f0 61 02  	fmadd.d	ft0, ft3, ft6, ft0
800015e4: 87 31 06 51  	fld	ft3, 1296(a2)
800015e8: 07 33 05 00  	fld	ft6, 0(a0)
800015ec: 13 86 82 55  	addi	a2, t0, 1368
800015f0: 43 f0 70 02  	fmadd.d	ft0, ft1, ft7, ft0
800015f4: 87 30 86 55  	fld	ft1, 1368(a2)
800015f8: 87 33 08 00  	fld	ft7, 0(a6)
800015fc: 13 86 02 5a  	addi	a2, t0, 1440
80001600: 43 70 41 02  	fmadd.d	ft0, ft2, ft4, ft0
80001604: 07 31 06 5a  	fld	ft2, 1440(a2)
80001608: 07 b2 08 00  	fld	ft4, 0(a7)
8000160c: 13 86 82 5e  	addi	a2, t0, 1512
80001610: 43 f0 51 02  	fmadd.d	ft0, ft3, ft5, ft0
80001614: 87 31 86 5e  	fld	ft3, 1512(a2)

80001618 <.LBB0_40>:
80001618: 17 36 00 00  	auipc	a2, 3
8000161c: 13 06 06 96  	addi	a2, a2, -1696
80001620: 87 32 06 00  	fld	ft5, 0(a2)
80001624: 43 f0 60 02  	fmadd.d	ft0, ft1, ft6, ft0
80001628: 43 70 71 02  	fmadd.d	ft0, ft2, ft7, ft0
8000162c: 43 f0 41 02  	fmadd.d	ft0, ft3, ft4, ft0
;         x += alpha * A[i][k] * B[k][j];
80001630: 53 70 50 12  	fmul.d	ft0, ft0, ft5
;       tmp[i][j] = x;
80001634: 33 06 9e 00  	add	a2, t3, s1
;     for (j = 0; j < nj; j++) {
80001638: 93 84 84 00  	addi	s1, s1, 8
;       tmp[i][j] = x;
8000163c: 27 30 06 00  	fsd	ft0, 0(a2)
80001640: 13 06 00 09  	addi	a2, zero, 144
;     for (j = 0; j < nj; j++) {
80001644: e3 9c c4 ea  	bne	s1, a2, 0x800014fc <.LBB0_39+0x370>
80001648: 83 25 c1 07  	lw	a1, 124(sp)
;   for (i = 0; i < ni; i++) {
8000164c: 93 85 15 00  	addi	a1, a1, 1
80001650: 13 0e 0e 09  	addi	t3, t3, 144
80001654: 13 05 00 01  	addi	a0, zero, 16
80001658: e3 9c a5 e2  	bne	a1, a0, 0x80001490 <.LBB0_39+0x304>
8000165c: 93 02 00 00  	mv	t0, zero

80001660 <.LBB0_41>:
80001660: 17 35 00 00  	auipc	a0, 3
80001664: 13 05 05 92  	addi	a0, a0, -1760
80001668: 07 30 05 00  	fld	ft0, 0(a0)
8000166c: 13 03 00 0c  	addi	t1, zero, 192
80001670: 93 08 00 01  	addi	a7, zero, 16
80001674: 83 23 c1 00  	lw	t2, 12(sp)
80001678: 83 20 81 00  	lw	ra, 8(sp)
8000167c: 03 28 c1 01  	lw	a6, 28(sp)
80001680: 13 05 00 00  	mv	a0, zero
;         x += tmp[i][k] * C[k][j];
80001684: 93 05 00 09  	addi	a1, zero, 144
80001688: b3 85 b2 02  	mul	a1, t0, a1
8000168c: b3 84 b0 00  	add	s1, ra, a1
80001690: 13 8e 84 00  	addi	t3, s1, 8
80001694: 93 8e 04 01  	addi	t4, s1, 16
80001698: 13 8f 84 01  	addi	t5, s1, 24
8000169c: 93 8f 04 02  	addi	t6, s1, 32
800016a0: 13 89 84 02  	addi	s2, s1, 40
800016a4: 93 89 04 03  	addi	s3, s1, 48
800016a8: 13 8a 84 03  	addi	s4, s1, 56
800016ac: 93 8a 04 04  	addi	s5, s1, 64
800016b0: 13 8b 84 04  	addi	s6, s1, 72
800016b4: 93 8b 04 05  	addi	s7, s1, 80
800016b8: 13 8c 84 05  	addi	s8, s1, 88
800016bc: 93 8c 04 06  	addi	s9, s1, 96
800016c0: 13 8d 84 06  	addi	s10, s1, 104
800016c4: 93 8d 04 07  	addi	s11, s1, 112
800016c8: 13 87 84 07  	addi	a4, s1, 120
800016cc: 93 85 04 08  	addi	a1, s1, 128
800016d0: 93 86 84 08  	addi	a3, s1, 136
;       double x = D[i][j];
800016d4: b3 87 a3 00  	add	a5, t2, a0
800016d8: 87 b0 07 00  	fld	ft1, 0(a5)
;         x += tmp[i][k] * C[k][j];
800016dc: 07 b1 04 00  	fld	ft2, 0(s1)
800016e0: 33 04 a8 00  	add	s0, a6, a0
800016e4: 87 31 04 00  	fld	ft3, 0(s0)
800016e8: 07 32 0e 00  	fld	ft4, 0(t3)
800016ec: 87 32 04 0c  	fld	ft5, 192(s0)
;       x *= beta;
800016f0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
;         x += tmp[i][k] * C[k][j];
800016f4: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
800016f8: c3 f0 42 0a  	fmadd.d	ft1, ft5, ft4, ft1
800016fc: 07 b1 0e 00  	fld	ft2, 0(t4)
80001700: 87 31 04 18  	fld	ft3, 384(s0)
80001704: 07 32 0f 00  	fld	ft4, 0(t5)
80001708: 87 32 04 24  	fld	ft5, 576(s0)
8000170c: 07 b3 0f 00  	fld	ft6, 0(t6)
80001710: 87 33 04 30  	fld	ft7, 768(s0)
80001714: 07 35 09 00  	fld	fa0, 0(s2)
80001718: 87 35 04 3c  	fld	fa1, 960(s0)
8000171c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001720: c3 f0 42 0a  	fmadd.d	ft1, ft5, ft4, ft1
80001724: c3 f0 63 0a  	fmadd.d	ft1, ft7, ft6, ft1
80001728: c3 f0 a5 0a  	fmadd.d	ft1, fa1, fa0, ft1
8000172c: 07 b1 09 00  	fld	ft2, 0(s3)
80001730: 87 31 04 48  	fld	ft3, 1152(s0)
80001734: 07 32 0a 00  	fld	ft4, 0(s4)
80001738: 87 32 04 54  	fld	ft5, 1344(s0)
8000173c: 07 b3 0a 00  	fld	ft6, 0(s5)
80001740: 87 33 04 60  	fld	ft7, 1536(s0)
80001744: 07 35 0b 00  	fld	fa0, 0(s6)
80001748: 87 35 04 6c  	fld	fa1, 1728(s0)
8000174c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80001750: c3 f0 42 0a  	fmadd.d	ft1, ft5, ft4, ft1
80001754: c3 f0 63 0a  	fmadd.d	ft1, ft7, ft6, ft1
80001758: c3 f0 a5 0a  	fmadd.d	ft1, fa1, fa0, ft1
8000175c: 07 b1 0b 00  	fld	ft2, 0(s7)
80001760: 87 31 04 78  	fld	ft3, 1920(s0)
80001764: 07 32 0c 00  	fld	ft4, 0(s8)
80001768: 13 06 04 42  	addi	a2, s0, 1056
8000176c: 87 32 06 42  	fld	ft5, 1056(a2)
80001770: 07 b3 0c 00  	fld	ft6, 0(s9)
80001774: 13 06 04 48  	addi	a2, s0, 1152
80001778: 87 33 06 48  	fld	ft7, 1152(a2)
8000177c: 07 35 0d 00  	fld	fa0, 0(s10)
80001780: 13 06 04 4e  	addi	a2, s0, 1248
80001784: 87 35 06 4e  	fld	fa1, 1248(a2)
80001788: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
8000178c: c3 f0 42 0a  	fmadd.d	ft1, ft5, ft4, ft1
80001790: c3 f0 63 0a  	fmadd.d	ft1, ft7, ft6, ft1
80001794: c3 f0 a5 0a  	fmadd.d	ft1, fa1, fa0, ft1
80001798: 07 b1 0d 00  	fld	ft2, 0(s11)
8000179c: 13 06 04 54  	addi	a2, s0, 1344
800017a0: 87 31 06 54  	fld	ft3, 1344(a2)
800017a4: 07 32 07 00  	fld	ft4, 0(a4)
800017a8: 13 06 04 5a  	addi	a2, s0, 1440
800017ac: 87 32 06 5a  	fld	ft5, 1440(a2)
800017b0: 07 b3 05 00  	fld	ft6, 0(a1)
800017b4: 13 06 04 60  	addi	a2, s0, 1536
800017b8: 87 33 06 60  	fld	ft7, 1536(a2)
800017bc: 07 b5 06 00  	fld	fa0, 0(a3)
800017c0: 13 06 04 66  	addi	a2, s0, 1632
800017c4: 87 35 06 66  	fld	fa1, 1632(a2)
800017c8: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
800017cc: c3 f0 42 0a  	fmadd.d	ft1, ft5, ft4, ft1
800017d0: c3 f0 63 0a  	fmadd.d	ft1, ft7, ft6, ft1
800017d4: c3 f0 a5 0a  	fmadd.d	ft1, fa1, fa0, ft1
;     for (j = 0; j < nl; j++) {
800017d8: 13 05 85 00  	addi	a0, a0, 8
;       D[i][j] = x;
800017dc: 27 b0 17 00  	fsd	ft1, 0(a5)
;     for (j = 0; j < nl; j++) {
800017e0: e3 1a 65 ee  	bne	a0, t1, 0x800016d4 <.LBB0_41+0x74>
;   for (i = 0; i < ni; i++) {
800017e4: 93 82 12 00  	addi	t0, t0, 1
800017e8: 93 83 03 0c  	addi	t2, t2, 192
800017ec: e3 9a 12 e9  	bne	t0, a7, 0x80001680 <.LBB0_41+0x20>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800017f0: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
800017f4: 83 25 81 07  	lw	a1, 120(sp)
800017f8: b3 05 b5 40  	sub	a1, a0, a1

800017fc <.LBB0_42>:
800017fc: 17 25 00 00  	auipc	a0, 2
80001800: 13 05 55 4b  	addi	a0, a0, 1205
80001804: 97 00 00 00  	auipc	ra, 0
80001808: e7 80 00 17  	jalr	368(ra)
8000180c: 03 25 c1 00  	lw	a0, 12(sp)
80001810: 13 05 05 06  	addi	a0, a0, 96
80001814: 53 00 00 d2  	fcvt.d.w	ft0, zero
80001818: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
8000181c: 87 30 05 fa  	fld	ft1, -96(a0)
80001820: 07 31 85 fa  	fld	ft2, -88(a0)
80001824: 87 31 05 fb  	fld	ft3, -80(a0)
80001828: 07 32 85 fb  	fld	ft4, -72(a0)
8000182c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80001830: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001834: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001838: 53 70 02 02  	fadd.d	ft0, ft4, ft0
8000183c: 87 30 05 fc  	fld	ft1, -64(a0)
80001840: 07 31 85 fc  	fld	ft2, -56(a0)
80001844: 87 31 05 fd  	fld	ft3, -48(a0)
80001848: 07 32 85 fd  	fld	ft4, -40(a0)
8000184c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80001850: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001854: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001858: 53 70 02 02  	fadd.d	ft0, ft4, ft0
8000185c: 87 30 05 fe  	fld	ft1, -32(a0)
80001860: 07 31 85 fe  	fld	ft2, -24(a0)
80001864: 87 31 05 ff  	fld	ft3, -16(a0)
80001868: 07 32 85 ff  	fld	ft4, -8(a0)
8000186c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80001870: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001874: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001878: 53 70 02 02  	fadd.d	ft0, ft4, ft0
8000187c: 87 30 05 00  	fld	ft1, 0(a0)
80001880: 07 31 85 00  	fld	ft2, 8(a0)
80001884: 87 31 05 01  	fld	ft3, 16(a0)
80001888: 07 32 85 01  	fld	ft4, 24(a0)
8000188c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80001890: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001894: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001898: 53 70 02 02  	fadd.d	ft0, ft4, ft0
8000189c: 87 30 05 02  	fld	ft1, 32(a0)
800018a0: 07 31 85 02  	fld	ft2, 40(a0)
800018a4: 87 31 05 03  	fld	ft3, 48(a0)
800018a8: 07 32 85 03  	fld	ft4, 56(a0)
800018ac: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800018b0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800018b4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800018b8: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800018bc: 87 30 05 04  	fld	ft1, 64(a0)
800018c0: 07 31 85 04  	fld	ft2, 72(a0)
800018c4: 87 31 05 05  	fld	ft3, 80(a0)
800018c8: 07 32 85 05  	fld	ft4, 88(a0)
800018cc: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800018d0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800018d4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800018d8: 53 70 02 02  	fadd.d	ft0, ft4, ft0
;     for (int i = 0; i < n; i++){
800018dc: 93 85 f5 ff  	addi	a1, a1, -1
800018e0: 13 05 05 0c  	addi	a0, a0, 192
800018e4: e3 9c 05 f2  	bnez	a1, 0x8000181c <.LBB0_42+0x20>

800018e8 <.LBB0_43>:
800018e8: 17 25 00 00  	auipc	a0, 2
800018ec: 13 05 05 6a  	addi	a0, a0, 1696
800018f0: 87 30 05 00  	fld	ft1, 0(a0)
;   double error = r - r_true;
800018f4: 53 70 10 02  	fadd.d	ft0, ft0, ft1
;   error = error < 0.0 ? -error : error;
800018f8: 53 24 00 22  	fabs.d	fs0, ft0
;   printf("error = %f\n", error);
800018fc: 27 30 81 08  	fsd	fs0, 128(sp)
80001900: 03 26 01 08  	lw	a2, 128(sp)
80001904: 83 26 41 08  	lw	a3, 132(sp)

80001908 <.LBB0_44>:
80001908: 17 25 00 00  	auipc	a0, 2
8000190c: 13 05 d5 39  	addi	a0, a0, 925
80001910: 97 00 00 00  	auipc	ra, 0
80001914: e7 80 40 06  	jalr	100(ra)

80001918 <.LBB0_45>:
80001918: 17 25 00 00  	auipc	a0, 2
8000191c: 13 05 85 67  	addi	a0, a0, 1656
80001920: 07 30 05 00  	fld	ft0, 0(a0)
;   return error > 0.0001;
80001924: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80001928: 87 39 81 08  	fld	fs3, 136(sp)
8000192c: 07 39 01 09  	fld	fs2, 144(sp)
80001930: 87 34 81 09  	fld	fs1, 152(sp)
80001934: 07 34 01 0a  	fld	fs0, 160(sp)
80001938: 83 2d c1 0a  	lw	s11, 172(sp)
8000193c: 03 2d 01 0b  	lw	s10, 176(sp)
80001940: 83 2c 41 0b  	lw	s9, 180(sp)
80001944: 03 2c 81 0b  	lw	s8, 184(sp)
80001948: 83 2b c1 0b  	lw	s7, 188(sp)
8000194c: 03 2b 01 0c  	lw	s6, 192(sp)
80001950: 83 2a 41 0c  	lw	s5, 196(sp)
80001954: 03 2a 81 0c  	lw	s4, 200(sp)
80001958: 83 29 c1 0c  	lw	s3, 204(sp)
8000195c: 03 29 01 0d  	lw	s2, 208(sp)
80001960: 83 24 41 0d  	lw	s1, 212(sp)
80001964: 03 24 81 0d  	lw	s0, 216(sp)
80001968: 83 20 c1 0d  	lw	ra, 220(sp)
8000196c: 13 01 01 0e  	addi	sp, sp, 224
80001970: 67 80 00 00  	ret

80001974 <printf_>:
; {
80001974: 13 01 01 fd  	addi	sp, sp, -48
80001978: 23 26 11 00  	sw	ra, 12(sp)
8000197c: 93 02 05 00  	mv	t0, a0
80001980: 23 26 11 03  	sw	a7, 44(sp)
80001984: 23 24 01 03  	sw	a6, 40(sp)
80001988: 23 22 f1 02  	sw	a5, 36(sp)
8000198c: 23 20 e1 02  	sw	a4, 32(sp)
80001990: 23 2e d1 00  	sw	a3, 28(sp)
80001994: 23 2c c1 00  	sw	a2, 24(sp)
80001998: 23 2a b1 00  	sw	a1, 20(sp)
8000199c: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
800019a0: 23 24 a1 00  	sw	a0, 8(sp)

800019a4 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
800019a4: 17 15 00 00  	auipc	a0, 1
800019a8: 13 05 45 c2  	addi	a0, a0, -988
800019ac: 93 05 71 00  	addi	a1, sp, 7
800019b0: 13 06 f0 ff  	addi	a2, zero, -1
800019b4: 13 07 41 01  	addi	a4, sp, 20
800019b8: 93 86 02 00  	mv	a3, t0
800019bc: 97 00 00 00  	auipc	ra, 0
800019c0: e7 80 40 01  	jalr	20(ra)
;   return ret;
800019c4: 83 20 c1 00  	lw	ra, 12(sp)
800019c8: 13 01 01 03  	addi	sp, sp, 48
800019cc: 67 80 00 00  	ret

800019d0 <_vsnprintf.llvm.17592004524093383706>:
; {
800019d0: 13 01 01 f9  	addi	sp, sp, -112
800019d4: 23 26 11 06  	sw	ra, 108(sp)
800019d8: 23 24 81 06  	sw	s0, 104(sp)
800019dc: 23 22 91 06  	sw	s1, 100(sp)
800019e0: 23 20 21 07  	sw	s2, 96(sp)
800019e4: 23 2e 31 05  	sw	s3, 92(sp)
800019e8: 23 2c 41 05  	sw	s4, 88(sp)
800019ec: 23 2a 51 05  	sw	s5, 84(sp)
800019f0: 23 28 61 05  	sw	s6, 80(sp)
800019f4: 23 26 71 05  	sw	s7, 76(sp)
800019f8: 23 24 81 05  	sw	s8, 72(sp)
800019fc: 23 22 91 05  	sw	s9, 68(sp)
80001a00: 23 20 a1 05  	sw	s10, 64(sp)
80001a04: 23 2e b1 03  	sw	s11, 60(sp)
80001a08: 93 09 07 00  	mv	s3, a4
80001a0c: 13 84 06 00  	mv	s0, a3
80001a10: 93 0a 06 00  	mv	s5, a2
80001a14: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80001a18: 63 86 05 00  	beqz	a1, 0x80001a24 <.LBB1_183>
80001a1c: 13 09 05 00  	mv	s2, a0
80001a20: 6f 00 c0 00  	j	0x80001a2c <.LBB1_183+0x8>

80001a24 <.LBB1_183>:
80001a24: 17 19 00 00  	auipc	s2, 1
80001a28: 13 09 09 c5  	addi	s2, s2, -944
80001a2c: 13 0c 00 00  	mv	s8, zero
80001a30: 13 0b 50 02  	addi	s6, zero, 37
80001a34: 93 0d 00 01  	addi	s11, zero, 16
80001a38: 93 0b e0 02  	addi	s7, zero, 46
80001a3c: 37 15 00 00  	lui	a0, 1
80001a40: 13 05 05 80  	addi	a0, a0, -2048
80001a44: 23 2c a1 00  	sw	a0, 24(sp)
80001a48: 37 05 01 00  	lui	a0, 16
80001a4c: 13 05 f5 ff  	addi	a0, a0, -1
80001a50: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80001a54: 13 0d 24 00  	addi	s10, s0, 2
80001a58: 93 0c 0c 00  	mv	s9, s8
80001a5c: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001a60: 03 45 04 00  	lbu	a0, 0(s0)
80001a64: e3 04 05 30  	beqz	a0, 0x8000256c <.LBB1_124+0x3b0>
80001a68: 63 08 65 03  	beq	a0, s6, 0x80001a98 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80001a6c: 93 84 1c 00  	addi	s1, s9, 1
80001a70: 93 05 0a 00  	mv	a1, s4
80001a74: 13 86 0c 00  	mv	a2, s9
80001a78: 93 86 0a 00  	mv	a3, s5
80001a7c: e7 00 09 00  	jalr	s2
;       format++;
80001a80: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80001a84: 13 0d 1d 00  	addi	s10, s10, 1
80001a88: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001a8c: 03 45 04 00  	lbu	a0, 0(s0)
80001a90: e3 1c 05 fc  	bnez	a0, 0x80001a68 <.LBB1_183+0x44>
80001a94: 6f 00 90 2d  	j	0x8000256c <.LBB1_124+0x3b0>
;     flags = 0U;
80001a98: 13 04 00 00  	mv	s0, zero
80001a9c: 6f 00 00 01  	j	0x80001aac <.LBB1_9+0x8>

80001aa0 <.LBB1_8>:
80001aa0: 93 05 00 01  	addi	a1, zero, 16

80001aa4 <.LBB1_9>:
80001aa4: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001aa8: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001aac: 03 45 fd ff  	lbu	a0, -1(s10)
80001ab0: 93 05 05 fe  	addi	a1, a0, -32
80001ab4: 63 ec bd 02  	bltu	s11, a1, 0x80001aec <.LBB1_15>
80001ab8: 93 95 25 00  	slli	a1, a1, 2

80001abc <.LBB1_184>:
80001abc: 17 26 00 00  	auipc	a2, 2
80001ac0: 13 06 86 20  	addi	a2, a2, 520
80001ac4: b3 85 c5 00  	add	a1, a1, a2
80001ac8: 03 a6 05 00  	lw	a2, 0(a1)
80001acc: 93 05 10 00  	addi	a1, zero, 1
80001ad0: 67 00 06 00  	jr	a2

80001ad4 <.LBB1_12>:
80001ad4: 93 05 80 00  	addi	a1, zero, 8
80001ad8: 6f f0 df fc  	j	0x80001aa4 <.LBB1_9>

80001adc <.LBB1_13>:
80001adc: 93 05 40 00  	addi	a1, zero, 4
80001ae0: 6f f0 5f fc  	j	0x80001aa4 <.LBB1_9>

80001ae4 <.LBB1_14>:
80001ae4: 93 05 20 00  	addi	a1, zero, 2
80001ae8: 6f f0 df fb  	j	0x80001aa4 <.LBB1_9>

80001aec <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001aec: 93 05 05 fd  	addi	a1, a0, -48
80001af0: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80001af4: 93 05 fd ff  	addi	a1, s10, -1
80001af8: 93 06 90 00  	addi	a3, zero, 9
80001afc: 63 ee c6 06  	bltu	a3, a2, 0x80001b78 <.LBB1_15+0x8c>
80001b00: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001b04: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001b08: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001b0c: b3 06 8b 03  	mul	a3, s6, s8
80001b10: 93 85 15 00  	addi	a1, a1, 1
80001b14: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001b18: 93 06 05 fd  	addi	a3, a0, -48
80001b1c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001b20: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001b24: e3 e0 86 ff  	bltu	a3, s8, 0x80001b04 <.LBB1_15+0x18>
80001b28: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001b2c: 63 16 75 0b  	bne	a0, s7, 0x80001bd8 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001b30: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001b34: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001b38: 93 05 05 fd  	addi	a1, a0, -48
80001b3c: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001b40: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001b44: 93 06 90 00  	addi	a3, zero, 9
80001b48: 63 e0 c6 06  	bltu	a3, a2, 0x80001ba8 <.LBB1_15+0xbc>
80001b4c: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001b50: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001b54: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001b58: b3 86 8b 03  	mul	a3, s7, s8
80001b5c: 93 85 15 00  	addi	a1, a1, 1
80001b60: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001b64: 93 06 05 fd  	addi	a3, a0, -48
80001b68: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001b6c: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001b70: e3 e0 86 ff  	bltu	a3, s8, 0x80001b50 <.LBB1_15+0x64>
80001b74: 6f 00 00 07  	j	0x80001be4 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001b78: 13 06 a0 02  	addi	a2, zero, 42
80001b7c: 63 18 c5 04  	bne	a0, a2, 0x80001bcc <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001b80: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001b84: 63 d4 05 00  	bgez	a1, 0x80001b8c <.LBB1_15+0xa0>
80001b88: 13 64 24 00  	ori	s0, s0, 2
80001b8c: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001b90: 03 45 0d 00  	lbu	a0, 0(s10)
80001b94: 13 d6 f5 41  	srai	a2, a1, 31
80001b98: b3 85 c5 00  	add	a1, a1, a2
80001b9c: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001ba0: e3 08 75 f9  	beq	a0, s7, 0x80001b30 <.LBB1_15+0x44>
80001ba4: 6f 00 40 03  	j	0x80001bd8 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001ba8: 13 06 a0 02  	addi	a2, zero, 42
80001bac: 63 1a c5 02  	bne	a0, a2, 0x80001be0 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001bb0: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001bb4: 63 44 70 01  	bgtz	s7, 0x80001bbc <.LBB1_15+0xd0>
80001bb8: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001bbc: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001bc0: 13 0d 2d 00  	addi	s10, s10, 2
80001bc4: 93 89 49 00  	addi	s3, s3, 4
80001bc8: 6f 00 00 02  	j	0x80001be8 <.LBB1_15+0xfc>
80001bcc: 13 0b 00 00  	mv	s6, zero
80001bd0: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001bd4: e3 0e 75 f5  	beq	a0, s7, 0x80001b30 <.LBB1_15+0x44>
80001bd8: 93 0b 00 00  	mv	s7, zero
80001bdc: 6f 00 c0 00  	j	0x80001be8 <.LBB1_15+0xfc>
80001be0: 93 0b 00 00  	mv	s7, zero
80001be4: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80001be8: 93 05 85 f9  	addi	a1, a0, -104
80001bec: 13 d6 15 00  	srli	a2, a1, 1
80001bf0: 93 95 f5 01  	slli	a1, a1, 31
80001bf4: b3 e5 c5 00  	or	a1, a1, a2
80001bf8: 13 06 90 00  	addi	a2, zero, 9
80001bfc: 63 62 b6 06  	bltu	a2, a1, 0x80001c60 <.LBB1_42>
80001c00: 93 95 25 00  	slli	a1, a1, 2

80001c04 <.LBB1_185>:
80001c04: 17 26 00 00  	auipc	a2, 2
80001c08: 13 06 46 10  	addi	a2, a2, 260
80001c0c: b3 85 c5 00  	add	a1, a1, a2
80001c10: 83 a6 05 00  	lw	a3, 0(a1)
80001c14: 93 05 10 00  	addi	a1, zero, 1
80001c18: 13 06 00 10  	addi	a2, zero, 256
80001c1c: 67 80 06 00  	jr	a3

80001c20 <.LBB1_36>:
;         if (*format == 'h') {
80001c20: 03 45 1d 00  	lbu	a0, 1(s10)
80001c24: 93 05 80 06  	addi	a1, zero, 104
80001c28: 63 12 b5 12  	bne	a0, a1, 0x80001d4c <.LBB1_53+0x48>
80001c2c: 93 05 20 00  	addi	a1, zero, 2
80001c30: 13 06 00 0c  	addi	a2, zero, 192
80001c34: 6f 00 00 02  	j	0x80001c54 <.LBB1_41>

80001c38 <.LBB1_38>:
80001c38: 13 06 00 20  	addi	a2, zero, 512
80001c3c: 6f 00 80 01  	j	0x80001c54 <.LBB1_41>

80001c40 <.LBB1_39>:
;         if (*format == 'l') {
80001c40: 03 45 1d 00  	lbu	a0, 1(s10)
80001c44: 93 05 c0 06  	addi	a1, zero, 108
80001c48: 63 18 b5 10  	bne	a0, a1, 0x80001d58 <.LBB1_53+0x54>
80001c4c: 93 05 20 00  	addi	a1, zero, 2
80001c50: 13 06 00 30  	addi	a2, zero, 768

80001c54 <.LBB1_41>:
80001c54: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001c58: 03 45 0d 00  	lbu	a0, 0(s10)
80001c5c: 33 64 c4 00  	or	s0, s0, a2

80001c60 <.LBB1_42>:
;     switch (*format) {
80001c60: 93 05 b5 fd  	addi	a1, a0, -37
80001c64: 13 06 30 05  	addi	a2, zero, 83
80001c68: 63 64 b6 10  	bltu	a2, a1, 0x80001d70 <.LBB1_59>
80001c6c: 93 95 25 00  	slli	a1, a1, 2

80001c70 <.LBB1_186>:
80001c70: 17 26 00 00  	auipc	a2, 2
80001c74: 13 06 06 0c  	addi	a2, a2, 192
80001c78: b3 85 c5 00  	add	a1, a1, a2
80001c7c: 03 a6 05 00  	lw	a2, 0(a1)
80001c80: 93 05 80 00  	addi	a1, zero, 8
80001c84: 13 0c 00 01  	addi	s8, zero, 16
80001c88: 67 00 06 00  	jr	a2

80001c8c <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001c8c: 13 74 f4 fe  	andi	s0, s0, -17
80001c90: 13 0c a0 00  	addi	s8, zero, 10

80001c94 <.LBB1_45>:
;         if (*format == 'X') {
80001c94: 93 05 80 05  	addi	a1, zero, 88
80001c98: 63 14 b5 00  	bne	a0, a1, 0x80001ca0 <.LBB1_45+0xc>
80001c9c: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001ca0: 93 05 40 06  	addi	a1, zero, 100
80001ca4: 63 08 b5 0e  	beq	a0, a1, 0x80001d94 <.LBB1_62+0x8>
80001ca8: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001cac: 13 06 90 06  	addi	a2, zero, 105
80001cb0: 63 02 c5 0e  	beq	a0, a2, 0x80001d94 <.LBB1_62+0x8>
80001cb4: 6f 00 80 0d  	j	0x80001d8c <.LBB1_62>

80001cb8 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001cb8: 93 05 60 04  	addi	a1, zero, 70
80001cbc: 63 14 b5 00  	bne	a0, a1, 0x80001cc4 <.LBB1_49+0xc>
80001cc0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001cc4: 13 85 79 00  	addi	a0, s3, 7
80001cc8: 13 75 85 ff  	andi	a0, a0, -8
80001ccc: 07 35 05 00  	fld	fa0, 0(a0)
80001cd0: 93 09 85 00  	addi	s3, a0, 8
80001cd4: 13 05 09 00  	mv	a0, s2
80001cd8: 93 05 0a 00  	mv	a1, s4
80001cdc: 13 86 0c 00  	mv	a2, s9
80001ce0: 93 86 0a 00  	mv	a3, s5
80001ce4: 13 87 0b 00  	mv	a4, s7
80001ce8: 93 07 0b 00  	mv	a5, s6
80001cec: 13 08 04 00  	mv	a6, s0
80001cf0: 97 10 00 00  	auipc	ra, 1
80001cf4: e7 80 80 98  	jalr	-1656(ra)
80001cf8: 6f 00 00 7c  	j	0x800024b8 <.LBB1_124+0x2fc>

80001cfc <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001cfc: 83 25 81 01  	lw	a1, 24(sp)
80001d00: 33 64 b4 00  	or	s0, s0, a1

80001d04 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001d04: 13 65 25 00  	ori	a0, a0, 2
80001d08: 93 05 70 04  	addi	a1, zero, 71
80001d0c: 63 14 b5 00  	bne	a0, a1, 0x80001d14 <.LBB1_53+0x10>
80001d10: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001d14: 13 85 79 00  	addi	a0, s3, 7
80001d18: 13 75 85 ff  	andi	a0, a0, -8
80001d1c: 07 35 05 00  	fld	fa0, 0(a0)
80001d20: 93 09 85 00  	addi	s3, a0, 8
80001d24: 13 05 09 00  	mv	a0, s2
80001d28: 93 05 0a 00  	mv	a1, s4
80001d2c: 13 86 0c 00  	mv	a2, s9
80001d30: 93 86 0a 00  	mv	a3, s5
80001d34: 13 87 0b 00  	mv	a4, s7
80001d38: 93 07 0b 00  	mv	a5, s6
80001d3c: 13 08 04 00  	mv	a6, s0
80001d40: 97 10 00 00  	auipc	ra, 1
80001d44: e7 80 80 01  	jalr	24(ra)
80001d48: 6f 00 00 77  	j	0x800024b8 <.LBB1_124+0x2fc>
80001d4c: 13 64 04 08  	ori	s0, s0, 128
80001d50: 13 0d 1d 00  	addi	s10, s10, 1
80001d54: 6f f0 df f0  	j	0x80001c60 <.LBB1_42>
80001d58: 13 64 04 10  	ori	s0, s0, 256
80001d5c: 13 0d 1d 00  	addi	s10, s10, 1
80001d60: 6f f0 1f f0  	j	0x80001c60 <.LBB1_42>

80001d64 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001d64: 13 8c 1c 00  	addi	s8, s9, 1
80001d68: 13 05 50 02  	addi	a0, zero, 37
80001d6c: 6f 00 80 00  	j	0x80001d74 <.LBB1_59+0x4>

80001d70 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001d70: 13 8c 1c 00  	addi	s8, s9, 1
80001d74: 93 05 0a 00  	mv	a1, s4
80001d78: 13 86 0c 00  	mv	a2, s9
80001d7c: 93 86 0a 00  	mv	a3, s5
80001d80: e7 00 09 00  	jalr	s2
80001d84: 6f 00 80 73  	j	0x800024bc <.LBB1_124+0x300>

80001d88 <.LBB1_61>:
80001d88: 93 05 20 00  	addi	a1, zero, 2

80001d8c <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001d8c: 13 74 34 ff  	andi	s0, s0, -13
80001d90: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001d94: 93 75 04 40  	andi	a1, s0, 1024
80001d98: 63 84 05 00  	beqz	a1, 0x80001da0 <.LBB1_62+0x14>
80001d9c: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001da0: 93 05 90 06  	addi	a1, zero, 105
80001da4: 63 06 b5 00  	beq	a0, a1, 0x80001db0 <.LBB1_62+0x24>
80001da8: 93 05 40 06  	addi	a1, zero, 100
80001dac: 63 1c b5 12  	bne	a0, a1, 0x80001ee4 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001db0: 13 75 04 20  	andi	a0, s0, 512
80001db4: 63 16 05 02  	bnez	a0, 0x80001de0 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001db8: 13 75 04 10  	andi	a0, s0, 256
80001dbc: 63 1c 05 14  	bnez	a0, 0x80001f14 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001dc0: 13 75 04 04  	andi	a0, s0, 64
80001dc4: 63 18 05 4e  	bnez	a0, 0x800022b4 <.LBB1_124+0xf8>
80001dc8: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001dcc: 93 75 04 08  	andi	a1, s0, 128
80001dd0: 63 84 05 4e  	beqz	a1, 0x800022b8 <.LBB1_124+0xfc>
80001dd4: 13 15 08 01  	slli	a0, a6, 16
80001dd8: 13 58 05 41  	srai	a6, a0, 16
80001ddc: 6f 00 c0 4d  	j	0x800022b8 <.LBB1_124+0xfc>
80001de0: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80001de4: 13 85 79 00  	addi	a0, s3, 7
80001de8: 13 75 85 ff  	andi	a0, a0, -8
80001dec: 83 29 05 00  	lw	s3, 0(a0)
80001df0: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80001df4: 13 65 45 00  	ori	a0, a0, 4
80001df8: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001dfc: 23 24 a1 00  	sw	a0, 8(sp)
80001e00: 33 e5 a9 00  	or	a0, s3, a0
80001e04: 63 14 05 00  	bnez	a0, 0x80001e0c <.LBB1_62+0x80>
80001e08: 13 74 f4 fe  	andi	s0, s0, -17
80001e0c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001e10: 93 75 04 40  	andi	a1, s0, 1024
80001e14: 93 d5 a5 00  	srli	a1, a1, 10
80001e18: 33 75 b5 00  	and	a0, a0, a1
80001e1c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001e20: 63 14 05 0a  	bnez	a0, 0x80001ec8 <.LBB1_62+0x13c>
80001e24: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001e28: 63 da 04 00  	bgez	s1, 0x80001e3c <.LBB1_62+0xb0>
80001e2c: 33 35 30 01  	snez	a0, s3
80001e30: b3 09 30 41  	neg	s3, s3
80001e34: 33 85 a4 00  	add	a0, s1, a0
80001e38: b3 04 a0 40  	neg	s1, a0
80001e3c: 13 09 00 00  	mv	s2, zero
80001e40: 13 75 04 02  	andi	a0, s0, 32
80001e44: 13 45 15 06  	xori	a0, a0, 97
80001e48: 13 05 65 0f  	addi	a0, a0, 246
80001e4c: 23 2a a1 00  	sw	a0, 20(sp)
80001e50: 6f 00 40 02  	j	0x80001e74 <.LBB1_62+0xe8>
80001e54: 13 06 10 00  	addi	a2, zero, 1
80001e58: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e5c: 93 36 f9 01  	sltiu	a3, s2, 31
80001e60: 33 f6 c6 00  	and	a2, a3, a2
80001e64: 13 89 07 00  	mv	s2, a5
80001e68: 93 09 05 00  	mv	s3, a0
80001e6c: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e70: 63 0c 06 04  	beqz	a2, 0x80001ec8 <.LBB1_62+0x13c>
;       value /= base;
80001e74: 13 85 09 00  	mv	a0, s3
80001e78: 93 85 04 00  	mv	a1, s1
80001e7c: 13 06 0c 00  	mv	a2, s8
80001e80: 93 06 00 00  	mv	a3, zero
80001e84: 97 e0 ff ff  	auipc	ra, 1048574
80001e88: e7 80 c0 17  	jalr	380(ra)
80001e8c: 33 06 85 03  	mul	a2, a0, s8
80001e90: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e94: 13 77 e6 0f  	andi	a4, a2, 254
80001e98: 93 06 00 03  	addi	a3, zero, 48
80001e9c: 93 07 a0 00  	addi	a5, zero, 10
80001ea0: 63 64 f7 00  	bltu	a4, a5, 0x80001ea8 <.LBB1_62+0x11c>
80001ea4: 83 26 41 01  	lw	a3, 20(sp)
80001ea8: 33 86 c6 00  	add	a2, a3, a2
80001eac: 93 06 c1 01  	addi	a3, sp, 28
80001eb0: b3 86 26 01  	add	a3, a3, s2
80001eb4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001eb8: e3 9e 04 f8  	bnez	s1, 0x80001e54 <.LBB1_62+0xc8>
80001ebc: 33 b6 89 01  	sltu	a2, s3, s8
80001ec0: 13 46 16 00  	xori	a2, a2, 1
80001ec4: 6f f0 5f f9  	j	0x80001e58 <.LBB1_62+0xcc>
80001ec8: 03 25 41 00  	lw	a0, 4(sp)
80001ecc: 93 09 85 00  	addi	s3, a0, 8
80001ed0: 03 25 81 00  	lw	a0, 8(sp)
80001ed4: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001ed8: 13 07 c1 01  	addi	a4, sp, 28
80001edc: 03 29 c1 00  	lw	s2, 12(sp)
80001ee0: 6f 00 80 47  	j	0x80002358 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80001ee4: 13 75 04 20  	andi	a0, s0, 512
80001ee8: 63 12 05 0c  	bnez	a0, 0x80001fac <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001eec: 13 75 04 10  	andi	a0, s0, 256
80001ef0: 63 1e 05 46  	bnez	a0, 0x8000236c <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001ef4: 13 75 04 04  	andi	a0, s0, 64
80001ef8: 63 10 05 50  	bnez	a0, 0x800023f8 <.LBB1_124+0x23c>
80001efc: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001f00: 93 75 04 08  	andi	a1, s0, 128
80001f04: 63 8c 05 4e  	beqz	a1, 0x800023fc <.LBB1_124+0x240>
80001f08: 83 25 01 01  	lw	a1, 16(sp)
80001f0c: 33 75 b5 00  	and	a0, a0, a1
80001f10: 6f 00 c0 4e  	j	0x800023fc <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80001f14: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001f18: 63 14 08 00  	bnez	a6, 0x80001f20 <.LBB1_62+0x194>
80001f1c: 13 74 f4 fe  	andi	s0, s0, -17
80001f20: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f24: 13 76 04 40  	andi	a2, s0, 1024
80001f28: 13 56 a6 00  	srli	a2, a2, 10
80001f2c: b3 f5 c5 00  	and	a1, a1, a2
80001f30: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f34: 63 9c 05 40  	bnez	a1, 0x8000234c <.LBB1_124+0x190>
80001f38: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001f3c: 13 56 f8 41  	srai	a2, a6, 31
80001f40: b3 06 c8 00  	add	a3, a6, a2
80001f44: b3 c6 c6 00  	xor	a3, a3, a2
80001f48: 13 76 04 02  	andi	a2, s0, 32
80001f4c: 13 46 16 06  	xori	a2, a2, 97
80001f50: 93 08 66 0f  	addi	a7, a2, 246
80001f54: 6f 00 40 03  	j	0x80001f88 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f58: 33 05 f6 00  	add	a0, a2, a5
80001f5c: 93 87 15 00  	addi	a5, a1, 1
80001f60: 13 06 c1 01  	addi	a2, sp, 28
80001f64: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f68: b3 b6 86 01  	sltu	a3, a3, s8
80001f6c: 93 c6 16 00  	xori	a3, a3, 1
80001f70: 93 b5 f5 01  	sltiu	a1, a1, 31
80001f74: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f78: 23 00 a6 00  	sb	a0, 0(a2)
80001f7c: 93 85 07 00  	mv	a1, a5
80001f80: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f84: 63 84 04 3c  	beqz	s1, 0x8000234c <.LBB1_124+0x190>
;       value /= base;
80001f88: 33 d7 86 03  	divu	a4, a3, s8
80001f8c: 33 06 87 03  	mul	a2, a4, s8
80001f90: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f94: 13 f5 e7 0f  	andi	a0, a5, 254
80001f98: 13 06 00 03  	addi	a2, zero, 48
80001f9c: 93 04 a0 00  	addi	s1, zero, 10
80001fa0: e3 6c 95 fa  	bltu	a0, s1, 0x80001f58 <.LBB1_62+0x1cc>
80001fa4: 13 86 08 00  	mv	a2, a7
80001fa8: 6f f0 1f fb  	j	0x80001f58 <.LBB1_62+0x1cc>
80001fac: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001fb0: 13 85 79 00  	addi	a0, s3, 7
80001fb4: 93 75 85 ff  	andi	a1, a0, -8
80001fb8: 03 a9 05 00  	lw	s2, 0(a1)
80001fbc: 13 e5 45 00  	ori	a0, a1, 4
80001fc0: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80001fc4: 33 65 39 01  	or	a0, s2, s3
80001fc8: 23 24 b1 00  	sw	a1, 8(sp)
80001fcc: 63 14 05 00  	bnez	a0, 0x80001fd4 <.LBB1_62+0x248>
80001fd0: 13 74 f4 fe  	andi	s0, s0, -17
80001fd4: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001fd8: 93 75 04 40  	andi	a1, s0, 1024
80001fdc: 93 d5 a5 00  	srli	a1, a1, 10
80001fe0: 33 75 b5 00  	and	a0, a0, a1
80001fe4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001fe8: 63 18 05 08  	bnez	a0, 0x80002078 <.LBB1_62+0x2ec>
80001fec: 93 04 00 00  	mv	s1, zero
80001ff0: 13 75 04 02  	andi	a0, s0, 32
80001ff4: 13 45 15 06  	xori	a0, a0, 97
80001ff8: 13 05 65 0f  	addi	a0, a0, 246
80001ffc: 23 2a a1 00  	sw	a0, 20(sp)
80002000: 6f 00 40 02  	j	0x80002024 <.LBB1_62+0x298>
80002004: 13 06 10 00  	addi	a2, zero, 1
80002008: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000200c: 93 b6 f4 01  	sltiu	a3, s1, 31
80002010: 33 f6 c6 00  	and	a2, a3, a2
80002014: 93 84 07 00  	mv	s1, a5
80002018: 13 09 05 00  	mv	s2, a0
8000201c: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002020: 63 0c 06 04  	beqz	a2, 0x80002078 <.LBB1_62+0x2ec>
;       value /= base;
80002024: 13 05 09 00  	mv	a0, s2
80002028: 93 85 09 00  	mv	a1, s3
8000202c: 13 06 0c 00  	mv	a2, s8
80002030: 93 06 00 00  	mv	a3, zero
80002034: 97 e0 ff ff  	auipc	ra, 1048574
80002038: e7 80 c0 fc  	jalr	-52(ra)
8000203c: 33 06 85 03  	mul	a2, a0, s8
80002040: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002044: 13 77 e6 0f  	andi	a4, a2, 254
80002048: 93 06 00 03  	addi	a3, zero, 48
8000204c: 93 07 a0 00  	addi	a5, zero, 10
80002050: 63 64 f7 00  	bltu	a4, a5, 0x80002058 <.LBB1_62+0x2cc>
80002054: 83 26 41 01  	lw	a3, 20(sp)
80002058: 33 86 c6 00  	add	a2, a3, a2
8000205c: 93 06 c1 01  	addi	a3, sp, 28
80002060: b3 86 96 00  	add	a3, a3, s1
80002064: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002068: e3 9e 09 f8  	bnez	s3, 0x80002004 <.LBB1_62+0x278>
8000206c: 33 36 89 01  	sltu	a2, s2, s8
80002070: 13 46 16 00  	xori	a2, a2, 1
80002074: 6f f0 5f f9  	j	0x80002008 <.LBB1_62+0x27c>
80002078: 03 25 81 00  	lw	a0, 8(sp)
8000207c: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80002080: 13 07 c1 01  	addi	a4, sp, 28
80002084: 03 29 c1 00  	lw	s2, 12(sp)
80002088: 6f 00 40 40  	j	0x8000248c <.LBB1_124+0x2d0>

8000208c <.LBB1_108>:
8000208c: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80002090: 13 79 24 00  	andi	s2, s0, 2
80002094: 93 04 10 00  	addi	s1, zero, 1
80002098: 63 1e 09 02  	bnez	s2, 0x800020d4 <.LBB1_108+0x48>
8000209c: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800020a0: 63 6a 9b 02  	bltu	s6, s1, 0x800020d4 <.LBB1_108+0x48>
800020a4: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800020a8: 13 0c fb ff  	addi	s8, s6, -1
800020ac: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800020b0: 33 86 8c 00  	add	a2, s9, s0
800020b4: 13 05 00 02  	addi	a0, zero, 32
800020b8: 93 05 0a 00  	mv	a1, s4
800020bc: 93 86 0a 00  	mv	a3, s5
800020c0: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800020c4: 13 04 14 00  	addi	s0, s0, 1
800020c8: e3 14 8c fe  	bne	s8, s0, 0x800020b0 <.LBB1_108+0x24>
800020cc: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800020d0: b3 8c 8c 00  	add	s9, s9, s0
800020d4: 03 c5 09 00  	lbu	a0, 0(s3)
800020d8: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800020dc: 93 89 49 00  	addi	s3, s3, 4
800020e0: 13 8c 1c 00  	addi	s8, s9, 1
800020e4: 93 05 0a 00  	mv	a1, s4
800020e8: 13 86 0c 00  	mv	a2, s9
800020ec: 93 86 0a 00  	mv	a3, s5
800020f0: 13 89 0b 00  	mv	s2, s7
800020f4: e7 80 0b 00  	jalr	s7
800020f8: 33 b5 64 01  	sltu	a0, s1, s6
800020fc: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80002100: 33 65 a4 00  	or	a0, s0, a0
80002104: 63 1c 05 3a  	bnez	a0, 0x800024bc <.LBB1_124+0x300>
;           while (l++ < width) {
80002108: 33 04 9b 40  	sub	s0, s6, s1
8000210c: 93 0b e0 02  	addi	s7, zero, 46
80002110: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80002114: 13 0c 1c 00  	addi	s8, s8, 1
80002118: 13 05 00 02  	addi	a0, zero, 32
8000211c: 93 05 0a 00  	mv	a1, s4
80002120: 93 86 0a 00  	mv	a3, s5
80002124: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80002128: 13 04 f4 ff  	addi	s0, s0, -1
8000212c: e3 12 04 fe  	bnez	s0, 0x80002110 <.LBB1_108+0x84>
80002130: 13 0b 50 02  	addi	s6, zero, 37
80002134: 13 04 1d 00  	addi	s0, s10, 1
80002138: 6f f0 df 91  	j	0x80001a54 <.LBB1_183+0x30>

8000213c <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
8000213c: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80002140: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80002144: 63 14 05 00  	bnez	a0, 0x8000214c <.LBB1_117+0x10>
80002148: 93 fe fe fe  	andi	t4, t4, -17
8000214c: 93 04 a0 00  	addi	s1, zero, 10
80002150: 13 04 f0 00  	addi	s0, zero, 15
80002154: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80002158: 13 f6 0e 40  	andi	a2, t4, 1024
8000215c: 13 56 a6 00  	srli	a2, a2, 10
80002160: b3 f5 c5 00  	and	a1, a1, a2
80002164: 93 07 00 00  	mv	a5, zero
80002168: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
8000216c: 63 98 05 10  	bnez	a1, 0x8000227c <.LBB1_124+0xc0>
80002170: 93 05 00 00  	mv	a1, zero
80002174: 6f 00 40 03  	j	0x800021a8 <.LBB1_117+0x6c>
80002178: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000217c: 33 06 d6 00  	add	a2, a2, a3
80002180: 93 87 15 00  	addi	a5, a1, 1
80002184: 93 06 c1 01  	addi	a3, sp, 28
80002188: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000218c: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80002190: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002194: 93 b5 f5 01  	sltiu	a1, a1, 31
80002198: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000219c: 23 80 c6 00  	sb	a2, 0(a3)
800021a0: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800021a4: 63 0c 07 0c  	beqz	a4, 0x8000227c <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800021a8: 93 76 e5 00  	andi	a3, a0, 14
800021ac: 13 06 00 03  	addi	a2, zero, 48
800021b0: e3 e4 96 fc  	bltu	a3, s1, 0x80002178 <.LBB1_117+0x3c>
800021b4: 13 06 70 03  	addi	a2, zero, 55
800021b8: 6f f0 1f fc  	j	0x80002178 <.LBB1_117+0x3c>

800021bc <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800021bc: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800021c0: 03 c5 07 00  	lbu	a0, 0(a5)
800021c4: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800021c8: 63 0c 05 02  	beqz	a0, 0x80002200 <.LBB1_124+0x44>
800021cc: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800021d0: 63 84 0b 00  	beqz	s7, 0x800021d8 <.LBB1_124+0x1c>
800021d4: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800021d8: 93 85 f5 ff  	addi	a1, a1, -1
800021dc: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800021e0: 03 c7 16 00  	lbu	a4, 1(a3)
800021e4: 13 86 16 00  	addi	a2, a3, 1
800021e8: b3 36 e0 00  	snez	a3, a4
800021ec: 33 37 b0 00  	snez	a4, a1
800021f0: 33 77 d7 00  	and	a4, a4, a3
800021f4: 93 85 f5 ff  	addi	a1, a1, -1
800021f8: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800021fc: e3 12 07 fe  	bnez	a4, 0x800021e0 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80002200: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80002204: 93 75 04 40  	andi	a1, s0, 1024
80002208: 93 b4 15 00  	seqz	s1, a1
8000220c: 23 2a c1 00  	sw	a2, 20(sp)
80002210: b3 35 76 01  	sltu	a1, a2, s7
80002214: b3 e5 b4 00  	or	a1, s1, a1
80002218: 63 94 05 00  	bnez	a1, 0x80002220 <.LBB1_124+0x64>
8000221c: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80002220: 93 75 24 00  	andi	a1, s0, 2
80002224: 23 26 b1 00  	sw	a1, 12(sp)
80002228: 63 96 05 2a  	bnez	a1, 0x800024d4 <.LBB1_124+0x318>
8000222c: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80002230: 63 fe 65 29  	bgeu	a1, s6, 0x800024cc <.LBB1_124+0x310>
80002234: 23 24 f1 00  	sw	a5, 8(sp)
80002238: 13 04 00 00  	mv	s0, zero
8000223c: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80002240: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80002244: 33 86 8c 00  	add	a2, s9, s0
80002248: 13 05 00 02  	addi	a0, zero, 32
8000224c: 93 05 0a 00  	mv	a1, s4
80002250: 93 86 0a 00  	mv	a3, s5
80002254: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80002258: 13 04 14 00  	addi	s0, s0, 1
8000225c: e3 14 89 fe  	bne	s2, s0, 0x80002244 <.LBB1_124+0x88>
80002260: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002264: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80002268: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000226c: 23 2a b1 00  	sw	a1, 20(sp)
80002270: b3 8c 8c 00  	add	s9, s9, s0
80002274: 13 09 0c 00  	mv	s2, s8
80002278: 6f 00 c0 25  	j	0x800024d4 <.LBB1_124+0x318>
8000227c: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80002280: 13 07 c1 01  	addi	a4, sp, 28
80002284: 93 08 00 01  	addi	a7, zero, 16
80002288: 13 0e 80 00  	addi	t3, zero, 8
8000228c: 13 05 09 00  	mv	a0, s2
80002290: 93 05 0a 00  	mv	a1, s4
80002294: 13 86 0c 00  	mv	a2, s9
80002298: 93 86 0a 00  	mv	a3, s5
8000229c: 13 08 00 00  	mv	a6, zero
800022a0: 93 83 0b 00  	mv	t2, s7
800022a4: 97 10 00 00  	auipc	ra, 1
800022a8: e7 80 00 fa  	jalr	-96(ra)
800022ac: 13 0c 05 00  	mv	s8, a0
800022b0: 6f 00 00 21  	j	0x800024c0 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800022b4: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800022b8: 63 14 08 00  	bnez	a6, 0x800022c0 <.LBB1_124+0x104>
800022bc: 13 74 f4 fe  	andi	s0, s0, -17
800022c0: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800022c4: 13 76 04 40  	andi	a2, s0, 1024
800022c8: 13 56 a6 00  	srli	a2, a2, 10
800022cc: b3 f5 c5 00  	and	a1, a1, a2
800022d0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800022d4: 63 9c 05 06  	bnez	a1, 0x8000234c <.LBB1_124+0x190>
800022d8: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800022dc: 13 56 f8 41  	srai	a2, a6, 31
800022e0: b3 06 c8 00  	add	a3, a6, a2
800022e4: b3 c6 c6 00  	xor	a3, a3, a2
800022e8: 13 76 04 02  	andi	a2, s0, 32
800022ec: 13 46 16 06  	xori	a2, a2, 97
800022f0: 93 08 66 0f  	addi	a7, a2, 246
800022f4: 6f 00 40 03  	j	0x80002328 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800022f8: 33 05 f6 00  	add	a0, a2, a5
800022fc: 93 87 15 00  	addi	a5, a1, 1
80002300: 13 06 c1 01  	addi	a2, sp, 28
80002304: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002308: b3 b6 86 01  	sltu	a3, a3, s8
8000230c: 93 c6 16 00  	xori	a3, a3, 1
80002310: 93 b5 f5 01  	sltiu	a1, a1, 31
80002314: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002318: 23 00 a6 00  	sb	a0, 0(a2)
8000231c: 93 85 07 00  	mv	a1, a5
80002320: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002324: 63 84 04 02  	beqz	s1, 0x8000234c <.LBB1_124+0x190>
;       value /= base;
80002328: 33 d7 86 03  	divu	a4, a3, s8
8000232c: 33 06 87 03  	mul	a2, a4, s8
80002330: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002334: 13 f5 e7 0f  	andi	a0, a5, 254
80002338: 13 06 00 03  	addi	a2, zero, 48
8000233c: 93 04 a0 00  	addi	s1, zero, 10
80002340: e3 6c 95 fa  	bltu	a0, s1, 0x800022f8 <.LBB1_124+0x13c>
80002344: 13 86 08 00  	mv	a2, a7
80002348: 6f f0 1f fb  	j	0x800022f8 <.LBB1_124+0x13c>
8000234c: 93 89 49 00  	addi	s3, s3, 4
80002350: 13 58 f8 01  	srli	a6, a6, 31
80002354: 13 07 c1 01  	addi	a4, sp, 28
80002358: 13 05 09 00  	mv	a0, s2
8000235c: 93 05 0a 00  	mv	a1, s4
80002360: 13 86 0c 00  	mv	a2, s9
80002364: 93 86 0a 00  	mv	a3, s5
80002368: 6f 00 80 13  	j	0x800024a0 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
8000236c: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80002370: 63 14 05 00  	bnez	a0, 0x80002378 <.LBB1_124+0x1bc>
80002374: 13 74 f4 fe  	andi	s0, s0, -17
80002378: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000237c: 13 76 04 40  	andi	a2, s0, 1024
80002380: 13 56 a6 00  	srli	a2, a2, 10
80002384: b3 f5 c5 00  	and	a1, a1, a2
80002388: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000238c: 63 9c 05 0e  	bnez	a1, 0x80002484 <.LBB1_124+0x2c8>
80002390: 13 06 00 00  	mv	a2, zero
80002394: 93 75 04 02  	andi	a1, s0, 32
80002398: 93 c5 15 06  	xori	a1, a1, 97
8000239c: 13 88 65 0f  	addi	a6, a1, 246
800023a0: 6f 00 40 03  	j	0x800023d4 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023a4: 33 87 e7 00  	add	a4, a5, a4
800023a8: 93 07 16 00  	addi	a5, a2, 1
800023ac: 93 05 c1 01  	addi	a1, sp, 28
800023b0: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800023b4: 33 35 85 01  	sltu	a0, a0, s8
800023b8: 13 45 15 00  	xori	a0, a0, 1
800023bc: 13 36 f6 01  	sltiu	a2, a2, 31
800023c0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023c4: 23 80 e4 00  	sb	a4, 0(s1)
800023c8: 13 86 07 00  	mv	a2, a5
800023cc: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800023d0: 63 8a 05 0a  	beqz	a1, 0x80002484 <.LBB1_124+0x2c8>
;       value /= base;
800023d4: b3 56 85 03  	divu	a3, a0, s8
800023d8: 33 87 86 03  	mul	a4, a3, s8
800023dc: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023e0: 93 74 e7 0f  	andi	s1, a4, 254
800023e4: 93 07 00 03  	addi	a5, zero, 48
800023e8: 93 05 a0 00  	addi	a1, zero, 10
800023ec: e3 ec b4 fa  	bltu	s1, a1, 0x800023a4 <.LBB1_124+0x1e8>
800023f0: 93 07 08 00  	mv	a5, a6
800023f4: 6f f0 1f fb  	j	0x800023a4 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800023f8: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800023fc: 63 14 05 00  	bnez	a0, 0x80002404 <.LBB1_124+0x248>
80002400: 13 74 f4 fe  	andi	s0, s0, -17
80002404: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80002408: 13 76 04 40  	andi	a2, s0, 1024
8000240c: 13 56 a6 00  	srli	a2, a2, 10
80002410: b3 f5 c5 00  	and	a1, a1, a2
80002414: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002418: 63 96 05 06  	bnez	a1, 0x80002484 <.LBB1_124+0x2c8>
8000241c: 13 06 00 00  	mv	a2, zero
80002420: 93 75 04 02  	andi	a1, s0, 32
80002424: 93 c5 15 06  	xori	a1, a1, 97
80002428: 13 88 65 0f  	addi	a6, a1, 246
8000242c: 6f 00 40 03  	j	0x80002460 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002430: 33 87 e7 00  	add	a4, a5, a4
80002434: 93 07 16 00  	addi	a5, a2, 1
80002438: 93 05 c1 01  	addi	a1, sp, 28
8000243c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002440: 33 35 85 01  	sltu	a0, a0, s8
80002444: 13 45 15 00  	xori	a0, a0, 1
80002448: 13 36 f6 01  	sltiu	a2, a2, 31
8000244c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002450: 23 80 e4 00  	sb	a4, 0(s1)
80002454: 13 86 07 00  	mv	a2, a5
80002458: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000245c: 63 84 05 02  	beqz	a1, 0x80002484 <.LBB1_124+0x2c8>
;       value /= base;
80002460: b3 56 85 03  	divu	a3, a0, s8
80002464: 33 87 86 03  	mul	a4, a3, s8
80002468: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000246c: 93 74 e7 0f  	andi	s1, a4, 254
80002470: 93 07 00 03  	addi	a5, zero, 48
80002474: 93 05 a0 00  	addi	a1, zero, 10
80002478: e3 ec b4 fa  	bltu	s1, a1, 0x80002430 <.LBB1_124+0x274>
8000247c: 93 07 08 00  	mv	a5, a6
80002480: 6f f0 1f fb  	j	0x80002430 <.LBB1_124+0x274>
80002484: 93 89 49 00  	addi	s3, s3, 4
80002488: 13 07 c1 01  	addi	a4, sp, 28
8000248c: 13 05 09 00  	mv	a0, s2
80002490: 93 05 0a 00  	mv	a1, s4
80002494: 13 86 0c 00  	mv	a2, s9
80002498: 93 86 0a 00  	mv	a3, s5
8000249c: 13 08 00 00  	mv	a6, zero
800024a0: 93 08 0c 00  	mv	a7, s8
800024a4: 93 83 0b 00  	mv	t2, s7
800024a8: 13 0e 0b 00  	mv	t3, s6
800024ac: 93 0e 04 00  	mv	t4, s0
800024b0: 97 10 00 00  	auipc	ra, 1
800024b4: e7 80 40 d9  	jalr	-620(ra)
800024b8: 13 0c 05 00  	mv	s8, a0
800024bc: 13 0b 50 02  	addi	s6, zero, 37
800024c0: 93 0b e0 02  	addi	s7, zero, 46
800024c4: 13 04 1d 00  	addi	s0, s10, 1
800024c8: 6f f0 cf d8  	j	0x80001a54 <.LBB1_183+0x30>
800024cc: 93 85 15 00  	addi	a1, a1, 1
800024d0: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800024d4: 63 00 05 04  	beqz	a0, 0x80002514 <.LBB1_124+0x358>
800024d8: 13 84 17 00  	addi	s0, a5, 1
800024dc: 6f 00 00 03  	j	0x8000250c <.LBB1_124+0x350>
800024e0: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800024e4: 13 8c 1c 00  	addi	s8, s9, 1
800024e8: 13 75 f5 0f  	andi	a0, a0, 255
800024ec: 93 05 0a 00  	mv	a1, s4
800024f0: 13 86 0c 00  	mv	a2, s9
800024f4: 93 86 0a 00  	mv	a3, s5
800024f8: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800024fc: 03 45 04 00  	lbu	a0, 0(s0)
80002500: 13 04 14 00  	addi	s0, s0, 1
80002504: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002508: 63 08 05 00  	beqz	a0, 0x80002518 <.LBB1_124+0x35c>
8000250c: e3 9c 04 fc  	bnez	s1, 0x800024e4 <.LBB1_124+0x328>
80002510: e3 98 0b fc  	bnez	s7, 0x800024e0 <.LBB1_124+0x324>
80002514: 13 8c 0c 00  	mv	s8, s9
80002518: 03 25 c1 00  	lw	a0, 12(sp)
8000251c: 13 35 15 00  	seqz	a0, a0
80002520: 03 26 41 01  	lw	a2, 20(sp)
80002524: b3 35 66 01  	sltu	a1, a2, s6
80002528: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
8000252c: 33 65 b5 00  	or	a0, a0, a1
80002530: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80002534: e3 14 05 f8  	bnez	a0, 0x800024bc <.LBB1_124+0x300>
;           while (l++ < width) {
80002538: 33 04 cb 40  	sub	s0, s6, a2
8000253c: 93 0b e0 02  	addi	s7, zero, 46
80002540: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80002544: 13 0c 1c 00  	addi	s8, s8, 1
80002548: 13 05 00 02  	addi	a0, zero, 32
8000254c: 93 05 0a 00  	mv	a1, s4
80002550: 93 86 0a 00  	mv	a3, s5
80002554: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80002558: 13 04 f4 ff  	addi	s0, s0, -1
8000255c: e3 12 04 fe  	bnez	s0, 0x80002540 <.LBB1_124+0x384>
80002560: 13 0b 50 02  	addi	s6, zero, 37
80002564: 13 04 1d 00  	addi	s0, s10, 1
80002568: 6f f0 cf ce  	j	0x80001a54 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000256c: 13 86 0c 00  	mv	a2, s9
80002570: 63 e4 5c 01  	bltu	s9, s5, 0x80002578 <.LBB1_124+0x3bc>
80002574: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80002578: 13 05 00 00  	mv	a0, zero
8000257c: 93 05 0a 00  	mv	a1, s4
80002580: 93 86 0a 00  	mv	a3, s5
80002584: e7 00 09 00  	jalr	s2
;   return (int)idx;
80002588: 13 85 0c 00  	mv	a0, s9
8000258c: 83 2d c1 03  	lw	s11, 60(sp)
80002590: 03 2d 01 04  	lw	s10, 64(sp)
80002594: 83 2c 41 04  	lw	s9, 68(sp)
80002598: 03 2c 81 04  	lw	s8, 72(sp)
8000259c: 83 2b c1 04  	lw	s7, 76(sp)
800025a0: 03 2b 01 05  	lw	s6, 80(sp)
800025a4: 83 2a 41 05  	lw	s5, 84(sp)
800025a8: 03 2a 81 05  	lw	s4, 88(sp)
800025ac: 83 29 c1 05  	lw	s3, 92(sp)
800025b0: 03 29 01 06  	lw	s2, 96(sp)
800025b4: 83 24 41 06  	lw	s1, 100(sp)
800025b8: 03 24 81 06  	lw	s0, 104(sp)
800025bc: 83 20 c1 06  	lw	ra, 108(sp)
800025c0: 13 01 01 07  	addi	sp, sp, 112
800025c4: 67 80 00 00  	ret

800025c8 <_out_char.llvm.17592004524093383706>:
;   if (character) {
800025c8: 63 04 05 0a  	beqz	a0, 0x80002670 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800025cc: f3 25 40 f1  	csrr	a1, mhartid
800025d0: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800025d4: 33 86 c5 02  	mul	a2, a1, a2

800025d8 <.LBB2_6>:
800025d8: 97 26 00 00  	auipc	a3, 2
800025dc: 93 86 c6 a6  	addi	a3, a3, -1428
800025e0: b3 05 d6 00  	add	a1, a2, a3
800025e4: 03 a7 05 00  	lw	a4, 0(a1)
800025e8: 93 07 17 00  	addi	a5, a4, 1
800025ec: 23 a0 f5 00  	sw	a5, 0(a1)
800025f0: 33 87 e5 00  	add	a4, a1, a4
800025f4: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800025f8: 03 a7 05 00  	lw	a4, 0(a1)
800025fc: 13 07 47 c0  	addi	a4, a4, -1020
80002600: 33 37 e0 00  	snez	a4, a4
80002604: 13 05 65 ff  	addi	a0, a0, -10
80002608: 33 35 a0 00  	snez	a0, a0
8000260c: 33 75 e5 00  	and	a0, a0, a4
80002610: 63 10 05 06  	bnez	a0, 0x80002670 <.LBB2_8+0x18>
80002614: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80002618: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
8000261c: 23 26 05 00  	sw	zero, 12(a0)
80002620: 93 06 00 04  	addi	a3, zero, 64
80002624: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80002628: 23 2a 05 00  	sw	zero, 20(a0)
8000262c: 93 06 10 00  	addi	a3, zero, 1
80002630: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80002634: 23 2e 05 00  	sw	zero, 28(a0)
80002638: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000263c: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80002640: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80002644: 23 22 05 02  	sw	zero, 36(a0)
80002648: 23 20 c5 02  	sw	a2, 32(a0)

8000264c <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
8000264c: 17 25 00 00  	auipc	a0, 2
80002650: 13 05 45 8b  	addi	a0, a0, -1868
80002654: 23 20 d5 00  	sw	a3, 0(a0)

80002658 <.LBB2_8>:
80002658: 17 25 00 00  	auipc	a0, 2
8000265c: 13 05 85 8e  	addi	a0, a0, -1816
;         while (fromhost == 0)
80002660: 03 26 05 00  	lw	a2, 0(a0)
80002664: e3 0e 06 fe  	beqz	a2, 0x80002660 <.LBB2_8+0x8>
;         fromhost = 0;
80002668: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
8000266c: 23 a0 05 00  	sw	zero, 0(a1)
; }
80002670: 67 80 00 00  	ret

80002674 <_out_null>:
; }
80002674: 67 80 00 00  	ret

80002678 <_ftoa>:
; {
80002678: 13 01 01 f9  	addi	sp, sp, -112
8000267c: 23 26 11 06  	sw	ra, 108(sp)
80002680: 23 24 81 06  	sw	s0, 104(sp)
80002684: 23 22 91 06  	sw	s1, 100(sp)
80002688: 23 20 21 07  	sw	s2, 96(sp)
8000268c: 23 2e 31 05  	sw	s3, 92(sp)
80002690: 23 2c 41 05  	sw	s4, 88(sp)
80002694: 23 2a 51 05  	sw	s5, 84(sp)
80002698: 23 28 61 05  	sw	s6, 80(sp)
8000269c: 23 26 71 05  	sw	s7, 76(sp)
800026a0: 23 24 81 05  	sw	s8, 72(sp)
800026a4: 23 22 91 05  	sw	s9, 68(sp)
800026a8: 23 20 a1 05  	sw	s10, 64(sp)
800026ac: 27 3c 81 02  	fsd	fs0, 56(sp)
800026b0: 27 38 91 02  	fsd	fs1, 48(sp)
800026b4: 27 34 21 03  	fsd	fs2, 40(sp)

800026b8 <.LBB4_83>:
800026b8: 97 24 00 00  	auipc	s1, 2
800026bc: 93 84 04 8e  	addi	s1, s1, -1824
800026c0: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800026c4: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800026c8: 93 0a 08 00  	mv	s5, a6
800026cc: 13 89 07 00  	mv	s2, a5
800026d0: 93 89 06 00  	mv	s3, a3
800026d4: 13 0a 06 00  	mv	s4, a2
800026d8: 13 8b 05 00  	mv	s6, a1
800026dc: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800026e0: 63 98 04 0e  	bnez	s1, 0x800027d0 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800026e4: 13 f5 2a 00  	andi	a0, s5, 2
800026e8: 93 f5 3a 00  	andi	a1, s5, 3
800026ec: b3 35 b0 00  	snez	a1, a1
800026f0: 13 36 59 00  	sltiu	a2, s2, 5
800026f4: b3 65 b6 00  	or	a1, a2, a1
800026f8: 93 5c 15 00  	srli	s9, a0, 1
800026fc: 13 04 0a 00  	mv	s0, s4
80002700: 63 96 05 02  	bnez	a1, 0x8000272c <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80002704: 93 04 c9 ff  	addi	s1, s2, -4
80002708: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000270c: 13 04 16 00  	addi	s0, a2, 1
80002710: 13 05 00 02  	addi	a0, zero, 32
80002714: 93 05 0b 00  	mv	a1, s6
80002718: 93 86 09 00  	mv	a3, s3
8000271c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002720: 93 84 f4 ff  	addi	s1, s1, -1
80002724: 13 06 04 00  	mv	a2, s0
80002728: e3 92 04 fe  	bnez	s1, 0x8000270c <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
8000272c: 93 04 14 00  	addi	s1, s0, 1
80002730: 13 05 d0 02  	addi	a0, zero, 45
80002734: 93 05 0b 00  	mv	a1, s6
80002738: 13 06 04 00  	mv	a2, s0
8000273c: 93 86 09 00  	mv	a3, s3
80002740: e7 80 0b 00  	jalr	s7
80002744: 93 0a 24 00  	addi	s5, s0, 2
80002748: 13 05 90 06  	addi	a0, zero, 105
8000274c: 93 05 0b 00  	mv	a1, s6
80002750: 13 86 04 00  	mv	a2, s1
80002754: 93 86 09 00  	mv	a3, s3
80002758: e7 80 0b 00  	jalr	s7
8000275c: 13 0c 34 00  	addi	s8, s0, 3
80002760: 13 05 e0 06  	addi	a0, zero, 110
80002764: 93 05 0b 00  	mv	a1, s6
80002768: 13 86 0a 00  	mv	a2, s5
8000276c: 93 86 09 00  	mv	a3, s3
80002770: e7 80 0b 00  	jalr	s7
80002774: 93 04 44 00  	addi	s1, s0, 4
80002778: 13 05 60 06  	addi	a0, zero, 102
8000277c: 93 05 0b 00  	mv	a1, s6
80002780: 13 06 0c 00  	mv	a2, s8
80002784: 93 86 09 00  	mv	a3, s3
80002788: e7 80 0b 00  	jalr	s7
8000278c: 33 85 44 41  	sub	a0, s1, s4
80002790: 33 35 25 01  	sltu	a0, a0, s2
80002794: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002798: 93 c5 1c 00  	xori	a1, s9, 1
8000279c: 33 e5 a5 00  	or	a0, a1, a0
800027a0: 63 16 05 56  	bnez	a0, 0x80002d0c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800027a4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800027a8: 13 84 14 00  	addi	s0, s1, 1
800027ac: 13 05 00 02  	addi	a0, zero, 32
800027b0: 93 05 0b 00  	mv	a1, s6
800027b4: 13 86 04 00  	mv	a2, s1
800027b8: 93 86 09 00  	mv	a3, s3
800027bc: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800027c0: 33 05 8a 00  	add	a0, s4, s0
800027c4: 93 04 04 00  	mv	s1, s0
800027c8: e3 60 25 ff  	bltu	a0, s2, 0x800027a8 <.LBB4_83+0xf0>
800027cc: 6f 00 40 54  	j	0x80002d10 <.LBB4_90+0x378>
800027d0: 53 04 a5 22  	fmv.d	fs0, fa0

800027d4 <.LBB4_84>:
800027d4: 17 15 00 00  	auipc	a0, 1
800027d8: 13 05 c5 7c  	addi	a0, a0, 1996
800027dc: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
800027e0: 53 05 05 a2  	fle.d	a0, fa0, ft0
800027e4: 63 1e 05 00  	bnez	a0, 0x80002800 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800027e8: 93 f5 4a 00  	andi	a1, s5, 4
800027ec: 13 b5 15 00  	seqz	a0, a1
800027f0: 63 82 05 06  	beqz	a1, 0x80002854 <.LBB4_88>

800027f4 <.LBB4_85>:
800027f4: 17 1c 00 00  	auipc	s8, 1
800027f8: 13 0c cc 4a  	addi	s8, s8, 1196
800027fc: 6f 00 00 06  	j	0x8000285c <.LBB4_88+0x8>

80002800 <.LBB4_86>:
80002800: 17 15 00 00  	auipc	a0, 1
80002804: 13 05 85 7a  	addi	a0, a0, 1960
80002808: 07 30 05 00  	fld	ft0, 0(a0)

8000280c <.LBB4_87>:
8000280c: 17 15 00 00  	auipc	a0, 1
80002810: 13 05 45 7a  	addi	a0, a0, 1956
80002814: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80002818: 53 05 04 a2  	fle.d	a0, fs0, ft0
8000281c: d3 85 80 a2  	fle.d	a1, ft1, fs0
80002820: 33 75 b5 00  	and	a0, a0, a1
80002824: 63 1e 05 0e  	bnez	a0, 0x80002920 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002828: 13 85 0b 00  	mv	a0, s7
8000282c: 93 05 0b 00  	mv	a1, s6
80002830: 13 06 0a 00  	mv	a2, s4
80002834: 93 86 09 00  	mv	a3, s3
80002838: 53 05 84 22  	fmv.d	fa0, fs0
8000283c: 93 07 09 00  	mv	a5, s2
80002840: 13 88 0a 00  	mv	a6, s5
80002844: 97 00 00 00  	auipc	ra, 0
80002848: e7 80 40 51  	jalr	1300(ra)
8000284c: 13 04 05 00  	mv	s0, a0
80002850: 6f 00 00 4c  	j	0x80002d10 <.LBB4_90+0x378>

80002854 <.LBB4_88>:
80002854: 17 1c 00 00  	auipc	s8, 1
80002858: 13 0c bc 46  	addi	s8, s8, 1131
8000285c: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002860: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002864: 13 f5 3a 00  	andi	a0, s5, 3
80002868: 33 35 a0 00  	snez	a0, a0
8000286c: b3 b5 2c 01  	sltu	a1, s9, s2
80002870: 93 c5 15 00  	xori	a1, a1, 1
80002874: 33 65 b5 00  	or	a0, a0, a1
80002878: 93 fa 2a 00  	andi	s5, s5, 2
8000287c: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002880: 63 16 05 02  	bnez	a0, 0x800028ac <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80002884: 33 04 99 41  	sub	s0, s2, s9
80002888: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000288c: 93 04 16 00  	addi	s1, a2, 1
80002890: 13 05 00 02  	addi	a0, zero, 32
80002894: 93 05 0b 00  	mv	a1, s6
80002898: 93 86 09 00  	mv	a3, s3
8000289c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800028a0: 13 04 f4 ff  	addi	s0, s0, -1
800028a4: 13 86 04 00  	mv	a2, s1
800028a8: e3 12 04 fe  	bnez	s0, 0x8000288c <.LBB4_88+0x38>
800028ac: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800028b0: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800028b4: 33 05 9c 01  	add	a0, s8, s9
800028b8: 03 45 05 00  	lbu	a0, 0(a0)
800028bc: 13 86 04 00  	mv	a2, s1
800028c0: 13 84 fc ff  	addi	s0, s9, -1
800028c4: 93 84 14 00  	addi	s1, s1, 1
800028c8: 93 05 0b 00  	mv	a1, s6
800028cc: 93 86 09 00  	mv	a3, s3
800028d0: e7 80 0b 00  	jalr	s7
800028d4: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800028d8: e3 1e 04 fc  	bnez	s0, 0x800028b4 <.LBB4_88+0x60>
800028dc: 33 85 44 41  	sub	a0, s1, s4
800028e0: 33 35 25 01  	sltu	a0, a0, s2
800028e4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800028e8: 93 c5 1a 00  	xori	a1, s5, 1
800028ec: 33 e5 a5 00  	or	a0, a1, a0
800028f0: 63 1e 05 40  	bnez	a0, 0x80002d0c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800028f4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800028f8: 13 84 14 00  	addi	s0, s1, 1
800028fc: 13 05 00 02  	addi	a0, zero, 32
80002900: 93 05 0b 00  	mv	a1, s6
80002904: 13 86 04 00  	mv	a2, s1
80002908: 93 86 09 00  	mv	a3, s3
8000290c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002910: 33 05 8a 00  	add	a0, s4, s0
80002914: 93 04 04 00  	mv	s1, s0
80002918: e3 60 25 ff  	bltu	a0, s2, 0x800028f8 <.LBB4_88+0xa4>
8000291c: 6f 00 40 3f  	j	0x80002d10 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80002920: 13 f5 0a 40  	andi	a0, s5, 1024
80002924: 13 0c 60 00  	addi	s8, zero, 6
80002928: 63 04 05 00  	beqz	a0, 0x80002930 <.LBB4_88+0xdc>
8000292c: 13 0c 07 00  	mv	s8, a4
80002930: 13 05 a0 00  	addi	a0, zero, 10
80002934: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002938: 63 6c ac 02  	bltu	s8, a0, 0x80002970 <.LBB4_88+0x11c>
8000293c: 93 04 6c ff  	addi	s1, s8, -10
80002940: 13 05 f0 01  	addi	a0, zero, 31
80002944: 63 e4 a4 00  	bltu	s1, a0, 0x8000294c <.LBB4_88+0xf8>
80002948: 93 04 f0 01  	addi	s1, zero, 31
8000294c: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002950: 13 05 81 00  	addi	a0, sp, 8
80002954: 93 05 00 03  	addi	a1, zero, 48
80002958: 13 06 04 00  	mv	a2, s0
8000295c: 97 e0 ff ff  	auipc	ra, 1048574
80002960: e7 80 c0 bf  	jalr	-1028(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002964: 13 c5 f4 ff  	not	a0, s1
80002968: 33 0c ac 00  	add	s8, s8, a0
8000296c: 6f 00 80 00  	j	0x80002974 <.LBB4_88+0x120>
80002970: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80002974: 13 15 3c 00  	slli	a0, s8, 3

80002978 <.LBB4_89>:
80002978: 97 15 00 00  	auipc	a1, 1
8000297c: 93 85 85 50  	addi	a1, a1, 1288
80002980: 33 05 b5 00  	add	a0, a0, a1
80002984: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002988: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
8000298c: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002990: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80002994: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002998 <.LBB4_90>:
80002998: 17 15 00 00  	auipc	a0, 1
8000299c: 13 05 05 62  	addi	a0, a0, 1568
800029a0: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
800029a4: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
800029a8: d3 01 15 d2  	fcvt.d.wu	ft3, a0
800029ac: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
800029b0: d3 05 01 a2  	fle.d	a1, ft2, ft0
800029b4: 63 90 05 02  	bnez	a1, 0x800029d4 <.LBB4_90+0x3c>
;     ++frac;
800029b8: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
800029bc: 53 01 15 d2  	fcvt.d.wu	ft2, a0
800029c0: d3 15 11 a2  	flt.d	a1, ft2, ft1
800029c4: 63 94 05 02  	bnez	a1, 0x800029ec <.LBB4_90+0x54>
800029c8: 13 05 00 00  	mv	a0, zero
;       ++whole;
800029cc: 93 84 14 00  	addi	s1, s1, 1
800029d0: 6f 00 c0 01  	j	0x800029ec <.LBB4_90+0x54>
;   else if (diff < 0.5) {
800029d4: d3 15 01 a2  	flt.d	a1, ft2, ft0
800029d8: 63 9a 05 00  	bnez	a1, 0x800029ec <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
800029dc: 93 35 15 00  	seqz	a1, a0
800029e0: 13 76 15 00  	andi	a2, a0, 1
800029e4: b3 65 b6 00  	or	a1, a2, a1
800029e8: 33 85 a5 00  	add	a0, a1, a0
800029ec: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
800029f0: 63 0c 0c 0c  	beqz	s8, 0x80002ac8 <.LBB4_90+0x130>
800029f4: 13 06 00 00  	mv	a2, zero
800029f8: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
800029fc: 33 83 85 00  	add	t1, a1, s0
80002a00: 93 02 00 02  	addi	t0, zero, 32
80002a04: 33 87 82 40  	sub	a4, t0, s0
80002a08: b7 d5 cc cc  	lui	a1, 838861
80002a0c: 93 83 d5 cc  	addi	t2, a1, -819
80002a10: 13 08 a0 00  	addi	a6, zero, 10
80002a14: 93 08 90 00  	addi	a7, zero, 9
80002a18: 63 04 c7 0c  	beq	a4, a2, 0x80002ae0 <.LBB4_90+0x148>
80002a1c: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80002a20: 33 35 75 02  	mulhu	a0, a0, t2
80002a24: 13 55 35 00  	srli	a0, a0, 3
80002a28: b3 06 05 03  	mul	a3, a0, a6
80002a2c: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002a30: 93 e6 06 03  	ori	a3, a3, 48
80002a34: b3 07 c3 00  	add	a5, t1, a2
80002a38: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80002a3c: 13 06 16 00  	addi	a2, a2, 1
80002a40: e3 ec b8 fc  	bltu	a7, a1, 0x80002a18 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002a44: 33 05 c4 00  	add	a0, s0, a2
80002a48: 93 05 f5 ff  	addi	a1, a0, -1
80002a4c: 93 06 e0 01  	addi	a3, zero, 30
80002a50: b3 b6 b6 00  	sltu	a3, a3, a1
80002a54: 33 47 cc 00  	xor	a4, s8, a2
80002a58: 13 37 17 00  	seqz	a4, a4
80002a5c: b3 e6 e6 00  	or	a3, a3, a4
80002a60: 63 94 06 08  	bnez	a3, 0x80002ae8 <.LBB4_90+0x150>
80002a64: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002a68: 33 05 85 00  	add	a0, a0, s0
80002a6c: 93 45 f6 ff  	not	a1, a2
80002a70: 33 8c 85 01  	add	s8, a1, s8
80002a74: 33 04 c4 00  	add	s0, s0, a2
80002a78: 93 05 f0 01  	addi	a1, zero, 31
80002a7c: b3 86 85 40  	sub	a3, a1, s0
80002a80: 33 05 c5 00  	add	a0, a0, a2
80002a84: 93 05 0c 00  	mv	a1, s8
80002a88: 63 64 dc 00  	bltu	s8, a3, 0x80002a90 <.LBB4_90+0xf8>
80002a8c: 93 85 06 00  	mv	a1, a3
80002a90: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002a94: 93 05 00 03  	addi	a1, zero, 48
80002a98: 97 e0 ff ff  	auipc	ra, 1048574
80002a9c: e7 80 00 ac  	jalr	-1344(ra)
80002aa0: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002aa4: b3 05 a4 00  	add	a1, s0, a0
80002aa8: 93 b5 f5 01  	sltiu	a1, a1, 31
80002aac: 33 46 ac 00  	xor	a2, s8, a0
80002ab0: 33 36 c0 00  	snez	a2, a2
80002ab4: 33 f6 c5 00  	and	a2, a1, a2
80002ab8: 13 05 15 00  	addi	a0, a0, 1
80002abc: e3 14 06 fe  	bnez	a2, 0x80002aa4 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002ac0: 33 05 a4 00  	add	a0, s0, a0
80002ac4: 6f 00 80 02  	j	0x80002aec <.LBB4_90+0x154>
;     diff = value - (double)whole;
80002ac8: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002acc: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002ad0: 53 05 10 a2  	fle.d	a0, ft0, ft1
80002ad4: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002ad8: b3 84 a4 00  	add	s1, s1, a0
80002adc: 6f 00 c0 03  	j	0x80002b18 <.LBB4_90+0x180>
80002ae0: 13 04 00 02  	addi	s0, zero, 32
80002ae4: 6f 00 80 03  	j	0x80002b1c <.LBB4_90+0x184>
80002ae8: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002aec: 63 8e 05 00  	beqz	a1, 0x80002b08 <.LBB4_90+0x170>
;       buf[len++] = '.';
80002af0: 13 04 15 00  	addi	s0, a0, 1
80002af4: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80002af8: 33 85 a5 00  	add	a0, a1, a0
80002afc: 93 05 e0 02  	addi	a1, zero, 46
80002b00: 23 00 b5 00  	sb	a1, 0(a0)
80002b04: 6f 00 80 00  	j	0x80002b0c <.LBB4_90+0x174>
80002b08: 13 04 05 00  	mv	s0, a0
80002b0c: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002b10: 93 02 04 00  	mv	t0, s0
80002b14: 63 64 85 00  	bltu	a0, s0, 0x80002b1c <.LBB4_90+0x184>
80002b18: 93 02 00 02  	addi	t0, zero, 32
80002b1c: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002b20: 37 65 66 66  	lui	a0, 419430
80002b24: 93 05 75 66  	addi	a1, a0, 1639
80002b28: 13 08 a0 00  	addi	a6, zero, 10
80002b2c: 93 06 81 00  	addi	a3, sp, 8
80002b30: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002b34: 63 80 82 04  	beq	t0, s0, 0x80002b74 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002b38: 33 95 b4 02  	mulh	a0, s1, a1
80002b3c: 93 57 f5 01  	srli	a5, a0, 31
80002b40: 13 55 25 40  	srai	a0, a0, 2
80002b44: 33 05 f5 00  	add	a0, a0, a5
80002b48: b3 07 05 03  	mul	a5, a0, a6
80002b4c: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002b50: 93 87 07 03  	addi	a5, a5, 48
80002b54: 13 0c 14 00  	addi	s8, s0, 1
80002b58: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002b5c: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002b60: 23 00 f4 00  	sb	a5, 0(s0)
80002b64: 13 04 0c 00  	mv	s0, s8
80002b68: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002b6c: e3 64 c7 fc  	bltu	a4, a2, 0x80002b34 <.LBB4_90+0x19c>
80002b70: 6f 00 80 00  	j	0x80002b78 <.LBB4_90+0x1e0>
80002b74: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002b78: 93 f4 3a 00  	andi	s1, s5, 3
80002b7c: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002b80: 63 96 a4 06  	bne	s1, a0, 0x80002bec <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002b84: 63 0c 09 00  	beqz	s2, 0x80002b9c <.LBB4_90+0x204>
80002b88: 13 f5 ca 00  	andi	a0, s5, 12
80002b8c: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002b90: 33 e5 ac 00  	or	a0, s9, a0
80002b94: 33 09 a9 40  	sub	s2, s2, a0
80002b98: 6f 00 80 00  	j	0x80002ba0 <.LBB4_90+0x208>
80002b9c: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002ba0: 33 35 2c 01  	sltu	a0, s8, s2
80002ba4: 93 45 15 00  	xori	a1, a0, 1
80002ba8: 13 05 f0 01  	addi	a0, zero, 31
80002bac: 33 36 85 01  	sltu	a2, a0, s8
80002bb0: b3 65 b6 00  	or	a1, a2, a1
80002bb4: 63 9c 05 02  	bnez	a1, 0x80002bec <.LBB4_90+0x254>
80002bb8: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002bbc: 93 45 fc ff  	not	a1, s8
80002bc0: b3 05 b9 00  	add	a1, s2, a1
80002bc4: 33 06 85 41  	sub	a2, a0, s8
80002bc8: 33 85 86 01  	add	a0, a3, s8
80002bcc: 63 e4 c5 00  	bltu	a1, a2, 0x80002bd4 <.LBB4_90+0x23c>
80002bd0: 93 05 06 00  	mv	a1, a2
80002bd4: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002bd8: 93 05 00 03  	addi	a1, zero, 48
80002bdc: 13 06 04 00  	mv	a2, s0
80002be0: 97 e0 ff ff  	auipc	ra, 1048574
80002be4: e7 80 80 97  	jalr	-1672(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002be8: 33 0c 84 01  	add	s8, s0, s8
80002bec: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002bf0: 63 6a 85 05  	bltu	a0, s8, 0x80002c44 <.LBB4_90+0x2ac>
;     if (negative) {
80002bf4: 63 8c 0c 00  	beqz	s9, 0x80002c0c <.LBB4_90+0x274>
80002bf8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002bfc: 33 05 85 01  	add	a0, a0, s8
80002c00: 13 0c 1c 00  	addi	s8, s8, 1
80002c04: 93 05 d0 02  	addi	a1, zero, 45
80002c08: 6f 00 80 03  	j	0x80002c40 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002c0c: 13 f5 4a 00  	andi	a0, s5, 4
80002c10: 63 10 05 02  	bnez	a0, 0x80002c30 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002c14: 13 f5 8a 00  	andi	a0, s5, 8
80002c18: 63 06 05 02  	beqz	a0, 0x80002c44 <.LBB4_90+0x2ac>
80002c1c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002c20: 33 05 85 01  	add	a0, a0, s8
80002c24: 13 0c 1c 00  	addi	s8, s8, 1
80002c28: 93 05 00 02  	addi	a1, zero, 32
80002c2c: 6f 00 40 01  	j	0x80002c40 <.LBB4_90+0x2a8>
80002c30: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002c34: 33 05 85 01  	add	a0, a0, s8
80002c38: 13 0c 1c 00  	addi	s8, s8, 1
80002c3c: 93 05 b0 02  	addi	a1, zero, 43
80002c40: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002c44: 33 35 90 00  	snez	a0, s1
80002c48: b3 35 2c 01  	sltu	a1, s8, s2
80002c4c: 93 c5 15 00  	xori	a1, a1, 1
80002c50: 33 65 b5 00  	or	a0, a0, a1
80002c54: 93 fa 2a 00  	andi	s5, s5, 2
80002c58: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002c5c: 63 16 05 02  	bnez	a0, 0x80002c88 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002c60: b3 04 89 41  	sub	s1, s2, s8
80002c64: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002c68: 13 04 16 00  	addi	s0, a2, 1
80002c6c: 13 05 00 02  	addi	a0, zero, 32
80002c70: 93 05 0b 00  	mv	a1, s6
80002c74: 93 86 09 00  	mv	a3, s3
80002c78: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002c7c: 93 84 f4 ff  	addi	s1, s1, -1
80002c80: 13 06 04 00  	mv	a2, s0
80002c84: e3 92 04 fe  	bnez	s1, 0x80002c68 <.LBB4_90+0x2d0>
80002c88: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002c8c: 63 0c 0c 02  	beqz	s8, 0x80002cc4 <.LBB4_90+0x32c>
80002c90: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002c94: 33 85 8c 01  	add	a0, s9, s8
80002c98: 03 45 05 00  	lbu	a0, 0(a0)
80002c9c: 13 0d fc ff  	addi	s10, s8, -1
80002ca0: 93 04 14 00  	addi	s1, s0, 1
80002ca4: 93 05 0b 00  	mv	a1, s6
80002ca8: 13 06 04 00  	mv	a2, s0
80002cac: 93 86 09 00  	mv	a3, s3
80002cb0: e7 80 0b 00  	jalr	s7
80002cb4: 13 84 04 00  	mv	s0, s1
80002cb8: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002cbc: e3 1c 0d fc  	bnez	s10, 0x80002c94 <.LBB4_90+0x2fc>
80002cc0: 6f 00 80 00  	j	0x80002cc8 <.LBB4_90+0x330>
80002cc4: 93 04 04 00  	mv	s1, s0
80002cc8: 33 85 44 41  	sub	a0, s1, s4
80002ccc: 33 35 25 01  	sltu	a0, a0, s2
80002cd0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002cd4: 93 c5 1a 00  	xori	a1, s5, 1
80002cd8: 33 e5 a5 00  	or	a0, a1, a0
80002cdc: 63 18 05 02  	bnez	a0, 0x80002d0c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002ce0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002ce4: 13 84 14 00  	addi	s0, s1, 1
80002ce8: 13 05 00 02  	addi	a0, zero, 32
80002cec: 93 05 0b 00  	mv	a1, s6
80002cf0: 13 86 04 00  	mv	a2, s1
80002cf4: 93 86 09 00  	mv	a3, s3
80002cf8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002cfc: 33 05 8a 00  	add	a0, s4, s0
80002d00: 93 04 04 00  	mv	s1, s0
80002d04: e3 60 25 ff  	bltu	a0, s2, 0x80002ce4 <.LBB4_90+0x34c>
80002d08: 6f 00 80 00  	j	0x80002d10 <.LBB4_90+0x378>
80002d0c: 13 84 04 00  	mv	s0, s1
; }
80002d10: 13 05 04 00  	mv	a0, s0
80002d14: 07 39 81 02  	fld	fs2, 40(sp)
80002d18: 87 34 01 03  	fld	fs1, 48(sp)
80002d1c: 07 34 81 03  	fld	fs0, 56(sp)
80002d20: 03 2d 01 04  	lw	s10, 64(sp)
80002d24: 83 2c 41 04  	lw	s9, 68(sp)
80002d28: 03 2c 81 04  	lw	s8, 72(sp)
80002d2c: 83 2b c1 04  	lw	s7, 76(sp)
80002d30: 03 2b 01 05  	lw	s6, 80(sp)
80002d34: 83 2a 41 05  	lw	s5, 84(sp)
80002d38: 03 2a 81 05  	lw	s4, 88(sp)
80002d3c: 83 29 c1 05  	lw	s3, 92(sp)
80002d40: 03 29 01 06  	lw	s2, 96(sp)
80002d44: 83 24 41 06  	lw	s1, 100(sp)
80002d48: 03 24 81 06  	lw	s0, 104(sp)
80002d4c: 83 20 c1 06  	lw	ra, 108(sp)
80002d50: 13 01 01 07  	addi	sp, sp, 112
80002d54: 67 80 00 00  	ret

80002d58 <_etoa>:
; {
80002d58: 13 01 01 f8  	addi	sp, sp, -128
80002d5c: 23 2e 11 06  	sw	ra, 124(sp)
80002d60: 23 2c 81 06  	sw	s0, 120(sp)
80002d64: 23 2a 91 06  	sw	s1, 116(sp)
80002d68: 23 28 21 07  	sw	s2, 112(sp)
80002d6c: 23 26 31 07  	sw	s3, 108(sp)
80002d70: 23 24 41 07  	sw	s4, 104(sp)
80002d74: 23 22 51 07  	sw	s5, 100(sp)
80002d78: 23 20 61 07  	sw	s6, 96(sp)
80002d7c: 23 2e 71 05  	sw	s7, 92(sp)
80002d80: 23 2c 81 05  	sw	s8, 88(sp)
80002d84: 23 2a 91 05  	sw	s9, 84(sp)
80002d88: 23 28 a1 05  	sw	s10, 80(sp)
80002d8c: 23 26 b1 05  	sw	s11, 76(sp)

80002d90 <.LBB5_43>:
80002d90: 97 14 00 00  	auipc	s1, 1
80002d94: 93 84 04 23  	addi	s1, s1, 560
80002d98: 87 b0 04 00  	fld	ft1, 0(s1)

80002d9c <.LBB5_44>:
80002d9c: 97 14 00 00  	auipc	s1, 1
80002da0: 93 84 c4 22  	addi	s1, s1, 556
80002da4: 07 b1 04 00  	fld	ft2, 0(s1)
80002da8: 53 00 a5 22  	fmv.d	ft0, fa0
80002dac: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002db0: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002db4: b3 f4 84 00  	and	s1, s1, s0
80002db8: 93 0a 08 00  	mv	s5, a6
80002dbc: 13 89 07 00  	mv	s2, a5
80002dc0: 93 07 07 00  	mv	a5, a4
80002dc4: 93 89 06 00  	mv	s3, a3
80002dc8: 13 0a 06 00  	mv	s4, a2
80002dcc: 13 8b 05 00  	mv	s6, a1
80002dd0: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002dd4: 63 92 04 06  	bnez	s1, 0x80002e38 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002dd8: 13 85 0b 00  	mv	a0, s7
80002ddc: 93 05 0b 00  	mv	a1, s6
80002de0: 13 06 0a 00  	mv	a2, s4
80002de4: 93 86 09 00  	mv	a3, s3
80002de8: 53 05 00 22  	fmv.d	fa0, ft0
80002dec: 13 87 07 00  	mv	a4, a5
80002df0: 93 07 09 00  	mv	a5, s2
80002df4: 13 88 0a 00  	mv	a6, s5
80002df8: 83 2d c1 04  	lw	s11, 76(sp)
80002dfc: 03 2d 01 05  	lw	s10, 80(sp)
80002e00: 83 2c 41 05  	lw	s9, 84(sp)
80002e04: 03 2c 81 05  	lw	s8, 88(sp)
80002e08: 83 2b c1 05  	lw	s7, 92(sp)
80002e0c: 03 2b 01 06  	lw	s6, 96(sp)
80002e10: 83 2a 41 06  	lw	s5, 100(sp)
80002e14: 03 2a 81 06  	lw	s4, 104(sp)
80002e18: 83 29 c1 06  	lw	s3, 108(sp)
80002e1c: 03 29 01 07  	lw	s2, 112(sp)
80002e20: 83 24 41 07  	lw	s1, 116(sp)
80002e24: 03 24 81 07  	lw	s0, 120(sp)
80002e28: 83 20 c1 07  	lw	ra, 124(sp)
80002e2c: 13 01 01 08  	addi	sp, sp, 128
80002e30: 17 03 00 00  	auipc	t1, 0
80002e34: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002e38: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002e3c: 13 f5 0a 40  	andi	a0, s5, 1024
80002e40: 13 07 60 00  	addi	a4, zero, 6
80002e44: 63 04 05 00  	beqz	a0, 0x80002e4c <.LBB5_44+0xb0>
80002e48: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002e4c: 27 30 a1 02  	fsd	fa0, 32(sp)
80002e50: 83 25 41 02  	lw	a1, 36(sp)
80002e54: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002e58: 93 d6 45 01  	srli	a3, a1, 20
80002e5c: b7 07 10 00  	lui	a5, 256
80002e60: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002e64: b3 f5 f5 00  	and	a1, a1, a5
80002e68: 23 2c c1 00  	sw	a2, 24(sp)
80002e6c: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002e70: b3 e5 c5 00  	or	a1, a1, a2
80002e74: 23 2e b1 00  	sw	a1, 28(sp)
80002e78: 87 30 81 01  	fld	ft1, 24(sp)

80002e7c <.LBB5_45>:
80002e7c: 97 15 00 00  	auipc	a1, 1
80002e80: 93 85 45 15  	addi	a1, a1, 340
80002e84: 07 b1 05 00  	fld	ft2, 0(a1)

80002e88 <.LBB5_46>:
80002e88: 97 15 00 00  	auipc	a1, 1
80002e8c: 93 85 05 15  	addi	a1, a1, 336
80002e90: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002e94: 93 f5 f6 7f  	andi	a1, a3, 2047
80002e98: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002e9c: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002ea0: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80002ea4 <.LBB5_47>:
80002ea4: 97 15 00 00  	auipc	a1, 1
80002ea8: 93 85 c5 13  	addi	a1, a1, 316
80002eac: 07 b1 05 00  	fld	ft2, 0(a1)

80002eb0 <.LBB5_48>:
80002eb0: 97 15 00 00  	auipc	a1, 1
80002eb4: 93 85 85 13  	addi	a1, a1, 312
80002eb8: 87 b1 05 00  	fld	ft3, 0(a1)

80002ebc <.LBB5_49>:
80002ebc: 97 15 00 00  	auipc	a1, 1
80002ec0: 93 85 45 13  	addi	a1, a1, 308
80002ec4: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002ec8: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002ecc: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002ed0: d3 80 05 d2  	fcvt.d.w	ft1, a1
80002ed4: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002ed8 <.LBB5_50>:
80002ed8: 17 16 00 00  	auipc	a2, 1
80002edc: 13 06 06 12  	addi	a2, a2, 288
80002ee0: 87 31 06 00  	fld	ft3, 0(a2)

80002ee4 <.LBB5_51>:
80002ee4: 17 16 00 00  	auipc	a2, 1
80002ee8: 13 06 c6 11  	addi	a2, a2, 284
80002eec: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002ef0: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80002ef4: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002ef8: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002efc: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002f00: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002f04: 13 06 f6 3f  	addi	a2, a2, 1023
80002f08: 23 28 01 00  	sw	zero, 16(sp)
80002f0c: 13 16 46 01  	slli	a2, a2, 20
80002f10: 23 2a c1 00  	sw	a2, 20(sp)

80002f14 <.LBB5_52>:
80002f14: 17 16 00 00  	auipc	a2, 1
80002f18: 13 06 c6 0f  	addi	a2, a2, 252
80002f1c: 87 31 06 00  	fld	ft3, 0(a2)

80002f20 <.LBB5_53>:
80002f20: 17 16 00 00  	auipc	a2, 1
80002f24: 13 06 86 0f  	addi	a2, a2, 248
80002f28: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002f2c: 87 32 01 01  	fld	ft5, 16(sp)

80002f30 <.LBB5_54>:
80002f30: 17 16 00 00  	auipc	a2, 1
80002f34: 13 06 86 0d  	addi	a2, a2, 216
80002f38: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002f3c: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002f40 <.LBB5_55>:
80002f40: 17 16 00 00  	auipc	a2, 1
80002f44: 13 06 06 0e  	addi	a2, a2, 224
80002f48: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002f4c: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002f50: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80002f54: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002f58: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002f5c: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002f60: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002f64: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002f68: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002f6c: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002f70: 63 0a 06 00  	beqz	a2, 0x80002f84 <.LBB5_56+0x10>

80002f74 <.LBB5_56>:
80002f74: 97 16 00 00  	auipc	a3, 1
80002f78: 93 86 46 0b  	addi	a3, a3, 180
80002f7c: 07 b1 06 00  	fld	ft2, 0(a3)
80002f80: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80002f84: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002f88: 93 05 34 06  	addi	a1, s0, 99
80002f8c: 93 b5 75 0c  	sltiu	a1, a1, 199
80002f90: 13 06 50 00  	addi	a2, zero, 5
80002f94: b7 16 00 00  	lui	a3, 1
80002f98: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002f9c: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002fa0: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80002fa4: 63 84 06 06  	beqz	a3, 0x8000300c <.LBB5_58+0x58>

80002fa8 <.LBB5_57>:
80002fa8: 97 15 00 00  	auipc	a1, 1
80002fac: 93 85 85 08  	addi	a1, a1, 136
80002fb0: 07 b1 05 00  	fld	ft2, 0(a1)

80002fb4 <.LBB5_58>:
80002fb4: 97 15 00 00  	auipc	a1, 1
80002fb8: 93 85 45 08  	addi	a1, a1, 132
80002fbc: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80002fc0: d3 15 25 a2  	flt.d	a1, fa0, ft2
80002fc4: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80002fc8: b3 e5 c5 00  	or	a1, a1, a2
80002fcc: 63 98 05 00  	bnez	a1, 0x80002fdc <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002fd0: 63 40 e4 02  	blt	s0, a4, 0x80002ff0 <.LBB5_58+0x3c>
80002fd4: 13 07 00 00  	mv	a4, zero
80002fd8: 6f 00 00 02  	j	0x80002ff8 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002fdc: 63 06 07 02  	beqz	a4, 0x80003008 <.LBB5_58+0x54>
80002fe0: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002fe4: 13 45 15 00  	xori	a0, a0, 1
80002fe8: 33 07 a7 40  	sub	a4, a4, a0
80002fec: 6f 00 00 02  	j	0x8000300c <.LBB5_58+0x58>
80002ff0: 13 45 f4 ff  	not	a0, s0
80002ff4: 33 07 a7 00  	add	a4, a4, a0
80002ff8: 13 04 00 00  	mv	s0, zero
80002ffc: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80003000: 93 ea 0a 40  	ori	s5, s5, 1024
80003004: 6f 00 80 00  	j	0x8000300c <.LBB5_58+0x58>
80003008: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
8000300c: b3 05 99 41  	sub	a1, s2, s9
80003010: 33 36 b9 00  	sltu	a2, s2, a1
80003014: 13 05 00 00  	mv	a0, zero
80003018: 63 14 06 00  	bnez	a2, 0x80003020 <.LBB5_58+0x6c>
8000301c: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80003020: 93 07 00 00  	mv	a5, zero
80003024: 93 d5 1a 00  	srli	a1, s5, 1
80003028: 93 f4 15 00  	andi	s1, a1, 1
8000302c: b3 35 90 01  	snez	a1, s9
80003030: b3 f5 b4 00  	and	a1, s1, a1
80003034: 53 01 00 d2  	fcvt.d.w	ft2, zero
80003038: 63 94 05 00  	bnez	a1, 0x80003040 <.LBB5_58+0x8c>
8000303c: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80003040: 93 35 14 00  	seqz	a1, s0
80003044: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80003048: 63 94 05 00  	bnez	a1, 0x80003050 <.LBB5_58+0x9c>
8000304c: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80003050: 63 04 05 00  	beqz	a0, 0x80003058 <.LBB5_58+0xa4>
80003054: 53 15 a5 22  	fneg.d	fa0, fa0
80003058: 37 f5 ff ff  	lui	a0, 1048575
8000305c: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80003060: 33 f8 aa 00  	and	a6, s5, a0
80003064: 13 85 0b 00  	mv	a0, s7
80003068: 93 05 0b 00  	mv	a1, s6
8000306c: 13 06 0a 00  	mv	a2, s4
80003070: 93 86 09 00  	mv	a3, s3
80003074: 97 f0 ff ff  	auipc	ra, 1048575
80003078: e7 80 40 60  	jalr	1540(ra)
8000307c: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80003080: 63 82 0c 18  	beqz	s9, 0x80003204 <.LBB5_58+0x250>
80003084: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80003088: 13 f5 0a 02  	andi	a0, s5, 32
8000308c: 13 45 55 06  	xori	a0, a0, 101
80003090: 93 05 0b 00  	mv	a1, s6
80003094: 13 06 0d 00  	mv	a2, s10
80003098: 93 86 09 00  	mv	a3, s3
8000309c: e7 80 0b 00  	jalr	s7
800030a0: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800030a4: 93 5a f4 01  	srli	s5, s0, 31
800030a8: 13 55 f4 41  	srai	a0, s0, 31
800030ac: b3 05 a4 00  	add	a1, s0, a0
800030b0: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800030b4: 93 8d dc ff  	addi	s11, s9, -3
800030b8: 13 04 f0 01  	addi	s0, zero, 31
800030bc: 37 d5 cc cc  	lui	a0, 838861
800030c0: 13 05 d5 cc  	addi	a0, a0, -819
800030c4: 13 08 a0 00  	addi	a6, zero, 10
800030c8: 93 08 c1 02  	addi	a7, sp, 44
800030cc: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800030d0: b3 37 a7 02  	mulhu	a5, a4, a0
800030d4: 93 d5 37 00  	srli	a1, a5, 3
800030d8: b3 87 05 03  	mul	a5, a1, a6
800030dc: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800030e0: 13 e6 07 03  	ori	a2, a5, 48
800030e4: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800030e8: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800030ec: 13 0c 1c 00  	addi	s8, s8, 1
800030f0: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800030f4: 33 b6 e2 00  	sltu	a2, t0, a4
800030f8: 33 f6 c7 00  	and	a2, a5, a2
800030fc: 93 8d fd ff  	addi	s11, s11, -1
80003100: 13 04 f4 ff  	addi	s0, s0, -1
80003104: 13 87 05 00  	mv	a4, a1
80003108: e3 14 06 fc  	bnez	a2, 0x800030d0 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000310c: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003110: 33 35 ac 00  	sltu	a0, s8, a0
80003114: 13 45 15 00  	xori	a0, a0, 1
80003118: 93 c5 17 00  	xori	a1, a5, 1
8000311c: 33 e5 a5 00  	or	a0, a1, a0
80003120: 63 12 05 04  	bnez	a0, 0x80003164 <.LBB5_58+0x1b0>
80003124: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003128: b3 85 8c 41  	sub	a1, s9, s8
8000312c: 93 85 d5 ff  	addi	a1, a1, -3
80003130: 13 06 f0 01  	addi	a2, zero, 31
80003134: 33 06 86 41  	sub	a2, a2, s8
80003138: 33 05 85 01  	add	a0, a0, s8
8000313c: 63 e4 c5 00  	bltu	a1, a2, 0x80003144 <.LBB5_58+0x190>
80003140: 93 05 06 00  	mv	a1, a2
80003144: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80003148: 93 05 00 03  	addi	a1, zero, 48
8000314c: 97 d0 ff ff  	auipc	ra, 1048573
80003150: e7 80 c0 40  	jalr	1036(ra)
;   if (flags & FLAGS_HASH) {
80003154: 63 e4 8d 00  	bltu	s11, s0, 0x8000315c <.LBB5_58+0x1a8>
80003158: 93 0d 04 00  	mv	s11, s0
8000315c: 33 85 8d 01  	add	a0, s11, s8
80003160: 13 0c 15 00  	addi	s8, a0, 1
80003164: 83 2c c1 00  	lw	s9, 12(sp)
80003168: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000316c: 63 60 85 03  	bltu	a0, s8, 0x8000318c <.LBB5_58+0x1d8>
80003170: 13 05 c1 02  	addi	a0, sp, 44
80003174: 33 05 85 01  	add	a0, a0, s8
80003178: 93 05 d0 02  	addi	a1, zero, 45
8000317c: 63 94 0a 00  	bnez	s5, 0x80003184 <.LBB5_58+0x1d0>
80003180: 93 05 b0 02  	addi	a1, zero, 43
80003184: 13 0c 1c 00  	addi	s8, s8, 1
80003188: 23 00 b5 00  	sb	a1, 0(a0)
8000318c: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80003190: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80003194: 33 85 8a 01  	add	a0, s5, s8
80003198: 03 45 05 00  	lbu	a0, 0(a0)
8000319c: 13 06 04 00  	mv	a2, s0
800031a0: 93 04 fc ff  	addi	s1, s8, -1
800031a4: 13 04 14 00  	addi	s0, s0, 1
800031a8: 93 05 0b 00  	mv	a1, s6
800031ac: 93 86 09 00  	mv	a3, s3
800031b0: e7 80 0b 00  	jalr	s7
800031b4: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800031b8: e3 9e 04 fc  	bnez	s1, 0x80003194 <.LBB5_58+0x1e0>
800031bc: 33 05 44 41  	sub	a0, s0, s4
800031c0: 33 35 25 01  	sltu	a0, a0, s2
800031c4: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800031c8: 93 c5 1c 00  	xori	a1, s9, 1
800031cc: 33 e5 a5 00  	or	a0, a1, a0
800031d0: 63 18 05 02  	bnez	a0, 0x80003200 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800031d4: b3 04 40 41  	neg	s1, s4
800031d8: 13 0d 14 00  	addi	s10, s0, 1
800031dc: 13 05 00 02  	addi	a0, zero, 32
800031e0: 93 05 0b 00  	mv	a1, s6
800031e4: 13 06 04 00  	mv	a2, s0
800031e8: 93 86 09 00  	mv	a3, s3
800031ec: e7 80 0b 00  	jalr	s7
800031f0: 33 85 a4 01  	add	a0, s1, s10
800031f4: 13 04 0d 00  	mv	s0, s10
800031f8: e3 60 25 ff  	bltu	a0, s2, 0x800031d8 <.LBB5_58+0x224>
800031fc: 6f 00 80 00  	j	0x80003204 <.LBB5_58+0x250>
80003200: 13 0d 04 00  	mv	s10, s0
; }
80003204: 13 05 0d 00  	mv	a0, s10
80003208: 83 2d c1 04  	lw	s11, 76(sp)
8000320c: 03 2d 01 05  	lw	s10, 80(sp)
80003210: 83 2c 41 05  	lw	s9, 84(sp)
80003214: 03 2c 81 05  	lw	s8, 88(sp)
80003218: 83 2b c1 05  	lw	s7, 92(sp)
8000321c: 03 2b 01 06  	lw	s6, 96(sp)
80003220: 83 2a 41 06  	lw	s5, 100(sp)
80003224: 03 2a 81 06  	lw	s4, 104(sp)
80003228: 83 29 c1 06  	lw	s3, 108(sp)
8000322c: 03 29 01 07  	lw	s2, 112(sp)
80003230: 83 24 41 07  	lw	s1, 116(sp)
80003234: 03 24 81 07  	lw	s0, 120(sp)
80003238: 83 20 c1 07  	lw	ra, 124(sp)
8000323c: 13 01 01 08  	addi	sp, sp, 128
80003240: 67 80 00 00  	ret

80003244 <_ntoa_format>:
; {
80003244: 13 01 01 fc  	addi	sp, sp, -64
80003248: 23 2e 11 02  	sw	ra, 60(sp)
8000324c: 23 2c 81 02  	sw	s0, 56(sp)
80003250: 23 2a 91 02  	sw	s1, 52(sp)
80003254: 23 28 21 03  	sw	s2, 48(sp)
80003258: 23 26 31 03  	sw	s3, 44(sp)
8000325c: 23 24 41 03  	sw	s4, 40(sp)
80003260: 23 22 51 03  	sw	s5, 36(sp)
80003264: 23 20 61 03  	sw	s6, 32(sp)
80003268: 23 2e 71 01  	sw	s7, 28(sp)
8000326c: 23 2c 81 01  	sw	s8, 24(sp)
80003270: 23 2a 91 01  	sw	s9, 20(sp)
80003274: 23 28 a1 01  	sw	s10, 16(sp)
80003278: 23 26 b1 01  	sw	s11, 12(sp)
8000327c: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80003280: 93 fa 2e 00  	andi	s5, t4, 2
80003284: 13 09 0e 00  	mv	s2, t3
80003288: 13 8d 03 00  	mv	s10, t2
8000328c: 93 8c 08 00  	mv	s9, a7
80003290: 13 8c 07 00  	mv	s8, a5
80003294: 93 89 06 00  	mv	s3, a3
80003298: 13 0a 06 00  	mv	s4, a2
8000329c: 13 8b 05 00  	mv	s6, a1
800032a0: 93 0d 05 00  	mv	s11, a0
800032a4: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800032a8: 63 9e 0a 0c  	bnez	s5, 0x80003384 <_ntoa_format+0x140>
800032ac: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800032b0: 63 0e 09 00  	beqz	s2, 0x800032cc <_ntoa_format+0x88>
800032b4: 63 0e 04 00  	beqz	s0, 0x800032d0 <_ntoa_format+0x8c>
800032b8: 13 f5 cb 00  	andi	a0, s7, 12
800032bc: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800032c0: 33 65 05 01  	or	a0, a0, a6
800032c4: 33 09 a9 40  	sub	s2, s2, a0
800032c8: 6f 00 80 00  	j	0x800032d0 <_ntoa_format+0x8c>
800032cc: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800032d0: 33 35 ac 01  	sltu	a0, s8, s10
800032d4: 93 45 15 00  	xori	a1, a0, 1
800032d8: 13 05 f0 01  	addi	a0, zero, 31
800032dc: 33 36 85 01  	sltu	a2, a0, s8
800032e0: b3 65 b6 00  	or	a1, a2, a1
800032e4: 63 94 05 04  	bnez	a1, 0x8000332c <_ntoa_format+0xe8>
800032e8: 23 22 51 01  	sw	s5, 4(sp)
800032ec: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800032f0: 93 45 fc ff  	not	a1, s8
800032f4: b3 85 a5 01  	add	a1, a1, s10
800032f8: 33 06 85 41  	sub	a2, a0, s8
800032fc: 33 05 87 01  	add	a0, a4, s8
80003300: 63 e4 c5 00  	bltu	a1, a2, 0x80003308 <_ntoa_format+0xc4>
80003304: 93 05 06 00  	mv	a1, a2
80003308: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000330c: 93 05 00 03  	addi	a1, zero, 48
80003310: 13 86 04 00  	mv	a2, s1
80003314: 97 d0 ff ff  	auipc	ra, 1048573
80003318: e7 80 40 24  	jalr	580(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000331c: 33 8c 84 01  	add	s8, s1, s8
80003320: 03 27 81 00  	lw	a4, 8(sp)
80003324: 13 88 0a 00  	mv	a6, s5
80003328: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000332c: 63 0c 04 04  	beqz	s0, 0x80003384 <_ntoa_format+0x140>
80003330: 33 35 2c 01  	sltu	a0, s8, s2
80003334: 93 45 15 00  	xori	a1, a0, 1
80003338: 13 05 f0 01  	addi	a0, zero, 31
8000333c: 33 36 85 01  	sltu	a2, a0, s8
80003340: b3 e5 c5 00  	or	a1, a1, a2
80003344: 63 90 05 04  	bnez	a1, 0x80003384 <_ntoa_format+0x140>
80003348: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000334c: 93 45 fc ff  	not	a1, s8
80003350: b3 05 b9 00  	add	a1, s2, a1
80003354: 33 06 85 41  	sub	a2, a0, s8
80003358: 33 05 87 01  	add	a0, a4, s8
8000335c: 63 e4 c5 00  	bltu	a1, a2, 0x80003364 <_ntoa_format+0x120>
80003360: 93 05 06 00  	mv	a1, a2
80003364: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80003368: 93 05 00 03  	addi	a1, zero, 48
8000336c: 13 86 04 00  	mv	a2, s1
80003370: 97 d0 ff ff  	auipc	ra, 1048573
80003374: e7 80 80 1e  	jalr	488(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003378: 33 8c 84 01  	add	s8, s1, s8
8000337c: 03 27 81 00  	lw	a4, 8(sp)
80003380: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80003384: 13 f5 0b 01  	andi	a0, s7, 16
80003388: 63 02 05 0e  	beqz	a0, 0x8000346c <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
8000338c: 13 f5 0b 40  	andi	a0, s7, 1024
80003390: 13 55 a5 00  	srli	a0, a0, 10
80003394: 93 35 1c 00  	seqz	a1, s8
80003398: 33 65 b5 00  	or	a0, a0, a1
8000339c: 63 1e 05 02  	bnez	a0, 0x800033d8 <_ntoa_format+0x194>
800033a0: 33 45 ac 01  	xor	a0, s8, s10
800033a4: 33 35 a0 00  	snez	a0, a0
800033a8: b3 45 2c 01  	xor	a1, s8, s2
800033ac: b3 35 b0 00  	snez	a1, a1
800033b0: 33 75 b5 00  	and	a0, a0, a1
800033b4: 63 12 05 02  	bnez	a0, 0x800033d8 <_ntoa_format+0x194>
;       len--;
800033b8: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800033bc: b3 35 a0 00  	snez	a1, a0
800033c0: 13 86 0c ff  	addi	a2, s9, -16
800033c4: 13 36 16 00  	seqz	a2, a2
800033c8: b3 75 b6 00  	and	a1, a2, a1
800033cc: 63 84 05 00  	beqz	a1, 0x800033d4 <_ntoa_format+0x190>
800033d0: 13 05 ec ff  	addi	a0, s8, -2
800033d4: 13 0c 05 00  	mv	s8, a0
800033d8: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800033dc: 63 96 ac 02  	bne	s9, a0, 0x80003408 <_ntoa_format+0x1c4>
800033e0: 13 f5 0b 02  	andi	a0, s7, 32
800033e4: 93 55 55 00  	srli	a1, a0, 5
800033e8: 13 06 f0 01  	addi	a2, zero, 31
800033ec: 33 36 86 01  	sltu	a2, a2, s8
800033f0: b3 e5 c5 00  	or	a1, a1, a2
800033f4: 63 9e 05 02  	bnez	a1, 0x80003430 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800033f8: 33 05 87 01  	add	a0, a4, s8
800033fc: 13 0c 1c 00  	addi	s8, s8, 1
80003400: 93 05 80 07  	addi	a1, zero, 120
80003404: 6f 00 c0 04  	j	0x80003450 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003408: 13 85 ec ff  	addi	a0, s9, -2
8000340c: 33 35 a0 00  	snez	a0, a0
80003410: 93 05 f0 01  	addi	a1, zero, 31
80003414: b3 b5 85 01  	sltu	a1, a1, s8
80003418: 33 65 b5 00  	or	a0, a0, a1
8000341c: 63 1c 05 02  	bnez	a0, 0x80003454 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80003420: 33 05 87 01  	add	a0, a4, s8
80003424: 13 0c 1c 00  	addi	s8, s8, 1
80003428: 93 05 20 06  	addi	a1, zero, 98
8000342c: 6f 00 40 02  	j	0x80003450 <_ntoa_format+0x20c>
80003430: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003434: 13 35 15 00  	seqz	a0, a0
80003438: 93 c5 15 00  	xori	a1, a1, 1
8000343c: 33 65 b5 00  	or	a0, a0, a1
80003440: 63 1a 05 00  	bnez	a0, 0x80003454 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80003444: 33 05 87 01  	add	a0, a4, s8
80003448: 13 0c 1c 00  	addi	s8, s8, 1
8000344c: 93 05 80 05  	addi	a1, zero, 88
80003450: 23 00 b5 00  	sb	a1, 0(a0)
80003454: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003458: 63 60 85 07  	bltu	a0, s8, 0x800034b8 <_ntoa_format+0x274>
;       buf[len++] = '0';
8000345c: 33 05 87 01  	add	a0, a4, s8
80003460: 13 0c 1c 00  	addi	s8, s8, 1
80003464: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80003468: 23 00 b5 00  	sb	a1, 0(a0)
8000346c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003470: 63 64 85 05  	bltu	a0, s8, 0x800034b8 <_ntoa_format+0x274>
;     if (negative) {
80003474: 63 0a 08 00  	beqz	a6, 0x80003488 <_ntoa_format+0x244>
;       buf[len++] = '-';
80003478: 33 05 87 01  	add	a0, a4, s8
8000347c: 13 0c 1c 00  	addi	s8, s8, 1
80003480: 93 05 d0 02  	addi	a1, zero, 45
80003484: 6f 00 00 03  	j	0x800034b4 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80003488: 13 f5 4b 00  	andi	a0, s7, 4
8000348c: 63 1e 05 00  	bnez	a0, 0x800034a8 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80003490: 13 f5 8b 00  	andi	a0, s7, 8
80003494: 63 02 05 02  	beqz	a0, 0x800034b8 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80003498: 33 05 87 01  	add	a0, a4, s8
8000349c: 13 0c 1c 00  	addi	s8, s8, 1
800034a0: 93 05 00 02  	addi	a1, zero, 32
800034a4: 6f 00 00 01  	j	0x800034b4 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800034a8: 33 05 87 01  	add	a0, a4, s8
800034ac: 13 0c 1c 00  	addi	s8, s8, 1
800034b0: 93 05 b0 02  	addi	a1, zero, 43
800034b4: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800034b8: 13 f5 3b 00  	andi	a0, s7, 3
800034bc: 33 35 a0 00  	snez	a0, a0
800034c0: b3 35 2c 01  	sltu	a1, s8, s2
800034c4: 93 c5 15 00  	xori	a1, a1, 1
800034c8: 33 65 b5 00  	or	a0, a0, a1
800034cc: 13 04 0a 00  	mv	s0, s4
800034d0: 63 16 05 02  	bnez	a0, 0x800034fc <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800034d4: b3 04 89 41  	sub	s1, s2, s8
800034d8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800034dc: 13 04 16 00  	addi	s0, a2, 1
800034e0: 13 05 00 02  	addi	a0, zero, 32
800034e4: 93 05 0b 00  	mv	a1, s6
800034e8: 93 86 09 00  	mv	a3, s3
800034ec: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800034f0: 93 84 f4 ff  	addi	s1, s1, -1
800034f4: 13 06 04 00  	mv	a2, s0
800034f8: e3 92 04 fe  	bnez	s1, 0x800034dc <_ntoa_format+0x298>
800034fc: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80003500: 63 0e 0c 02  	beqz	s8, 0x8000353c <_ntoa_format+0x2f8>
80003504: 03 25 81 00  	lw	a0, 8(sp)
80003508: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
8000350c: 33 85 8b 01  	add	a0, s7, s8
80003510: 03 45 05 00  	lbu	a0, 0(a0)
80003514: 93 0c fc ff  	addi	s9, s8, -1
80003518: 93 04 14 00  	addi	s1, s0, 1
8000351c: 93 05 0b 00  	mv	a1, s6
80003520: 13 06 04 00  	mv	a2, s0
80003524: 93 86 09 00  	mv	a3, s3
80003528: e7 80 0d 00  	jalr	s11
8000352c: 13 84 04 00  	mv	s0, s1
80003530: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80003534: e3 9c 0c fc  	bnez	s9, 0x8000350c <_ntoa_format+0x2c8>
80003538: 6f 00 80 00  	j	0x80003540 <_ntoa_format+0x2fc>
8000353c: 93 04 04 00  	mv	s1, s0
80003540: 33 85 44 41  	sub	a0, s1, s4
80003544: 33 35 25 01  	sltu	a0, a0, s2
80003548: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000354c: 93 c5 1a 00  	xori	a1, s5, 1
80003550: 33 e5 a5 00  	or	a0, a1, a0
80003554: 63 18 05 02  	bnez	a0, 0x80003584 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80003558: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000355c: 13 84 14 00  	addi	s0, s1, 1
80003560: 13 05 00 02  	addi	a0, zero, 32
80003564: 93 05 0b 00  	mv	a1, s6
80003568: 13 86 04 00  	mv	a2, s1
8000356c: 93 86 09 00  	mv	a3, s3
80003570: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80003574: 33 05 8a 00  	add	a0, s4, s0
80003578: 93 04 04 00  	mv	s1, s0
8000357c: e3 60 25 ff  	bltu	a0, s2, 0x8000355c <_ntoa_format+0x318>
80003580: 6f 00 80 00  	j	0x80003588 <_ntoa_format+0x344>
80003584: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80003588: 13 05 04 00  	mv	a0, s0
8000358c: 83 2d c1 00  	lw	s11, 12(sp)
80003590: 03 2d 01 01  	lw	s10, 16(sp)
80003594: 83 2c 41 01  	lw	s9, 20(sp)
80003598: 03 2c 81 01  	lw	s8, 24(sp)
8000359c: 83 2b c1 01  	lw	s7, 28(sp)
800035a0: 03 2b 01 02  	lw	s6, 32(sp)
800035a4: 83 2a 41 02  	lw	s5, 36(sp)
800035a8: 03 2a 81 02  	lw	s4, 40(sp)
800035ac: 83 29 c1 02  	lw	s3, 44(sp)
800035b0: 03 29 01 03  	lw	s2, 48(sp)
800035b4: 83 24 41 03  	lw	s1, 52(sp)
800035b8: 03 24 81 03  	lw	s0, 56(sp)
800035bc: 83 20 c1 03  	lw	ra, 60(sp)
800035c0: 13 01 01 04  	addi	sp, sp, 64
800035c4: 67 80 00 00  	ret

800035c8 <_snrt_init_team>:
;     team->base.root = team;
800035c8: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800035cc: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800035d0: 03 23 87 00  	lw	t1, 8(a4)
800035d4: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800035d8: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800035dc: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800035e0: 83 22 47 00  	lw	t0, 4(a4)
800035e4: 33 88 08 03  	mul	a6, a7, a6
800035e8: 33 05 58 02  	mul	a0, a6, t0
800035ec: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800035f0: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800035f4: 33 85 68 40  	sub	a0, a7, t1
800035f8: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800035fc: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80003600: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80003604: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80003608: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
8000360c: 03 25 87 01  	lw	a0, 24(a4)
80003610: b7 05 00 10  	lui	a1, 65536
80003614: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80003618: 23 a2 07 02  	sw	zero, 36(a5)
8000361c: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80003620: 03 25 07 02  	lw	a0, 32(a4)
80003624: 83 25 47 02  	lw	a1, 36(a4)
80003628: 23 a4 a7 02  	sw	a0, 40(a5)
8000362c: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80003630: 23 a8 c7 02  	sw	a2, 48(a5)
80003634: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80003638: 23 ac d7 02  	sw	a3, 56(a5)
8000363c: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80003640: 03 25 07 01  	lw	a0, 16(a4)
80003644: 33 08 a6 00  	add	a6, a2, a0
80003648: 93 05 08 19  	addi	a1, a6, 400
8000364c: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80003650: b3 32 a8 00  	sltu	t0, a6, a0
80003654: 93 55 15 00  	srli	a1, a0, 1
80003658: 33 03 b8 00  	add	t1, a6, a1
8000365c: b3 35 03 01  	sltu	a1, t1, a6
80003660: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80003664: 23 a0 67 04  	sw	t1, 64(a5)
80003668: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
8000366c: 13 15 15 00  	slli	a0, a0, 1
80003670: b3 05 c5 00  	add	a1, a0, a2
80003674: 33 b5 a5 00  	sltu	a0, a1, a0
80003678: 23 a4 b7 04  	sw	a1, 72(a5)
8000367c: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80003680: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80003684: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80003688: 37 05 00 00  	lui	a0, 0
8000368c: 33 05 45 00  	add	a0, a0, tp
80003690: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003694: 03 a5 07 00  	lw	a0, 0(a5)
80003698: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
8000369c: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800036a0: b3 85 b8 40  	sub	a1, a7, a1
800036a4: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800036a8: b7 05 00 00  	lui	a1, 0
800036ac: b3 85 45 00  	add	a1, a1, tp
800036b0: 23 a2 a5 00  	sw	a0, 4(a1)
800036b4: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800036b8: 33 85 a8 02  	mul	a0, a7, a0

800036bc <.LBB0_1>:
800036bc: 97 15 00 00  	auipc	a1, 1
800036c0: 93 85 85 98  	addi	a1, a1, -1656
800036c4: 33 05 b5 00  	add	a0, a0, a1
800036c8: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800036cc: 83 28 07 03  	lw	a7, 48(a4)
800036d0: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800036d4: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800036d8: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800036dc: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800036e0: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800036e4: 13 05 76 00  	addi	a0, a2, 7
800036e8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800036ec: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800036f0: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800036f4: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800036f8: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800036fc: 03 a5 05 00  	lw	a0, 0(a1)
80003700: 13 05 f5 44  	addi	a0, a0, 1103
80003704: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80003708: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
8000370c: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80003710: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80003714: 37 05 00 00  	lui	a0, 0
80003718: 33 05 45 00  	add	a0, a0, tp
8000371c: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80003720: 37 05 00 00  	lui	a0, 0
80003724: 33 05 45 00  	add	a0, a0, tp
80003728: 23 26 e5 00  	sw	a4, 12(a0)
; }
8000372c: 67 80 00 00  	ret

80003730 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003730: 37 05 00 00  	lui	a0, 0
80003734: 33 05 45 00  	add	a0, a0, tp
80003738: 03 25 05 00  	lw	a0, 0(a0)
8000373c: 03 25 05 00  	lw	a0, 0(a0)
80003740: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003744: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003748: 33 85 a5 40  	sub	a0, a1, a0
8000374c: 67 80 00 00  	ret

80003750 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80003750: 37 05 00 00  	lui	a0, 0
80003754: 33 05 45 00  	add	a0, a0, tp
80003758: 03 25 05 00  	lw	a0, 0(a0)
8000375c: 03 25 05 00  	lw	a0, 0(a0)
80003760: 03 25 05 07  	lw	a0, 112(a0)
80003764: 67 80 00 00  	ret

80003768 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80003768: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
8000376c: 63 44 05 00  	bltz	a0, 0x80003774 <__snrt_isr+0xc>
;         while (1)
80003770: 6f 00 00 00  	j	0x80003770 <__snrt_isr+0x8>
80003774: b7 05 00 80  	lui	a1, 524288
80003778: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
8000377c: 33 75 b5 00  	and	a0, a0, a1
80003780: 13 05 d5 ff  	addi	a0, a0, -3
80003784: 93 55 25 00  	srli	a1, a0, 2
80003788: 13 15 e5 01  	slli	a0, a0, 30
8000378c: 33 65 b5 00  	or	a0, a0, a1
80003790: 93 05 40 00  	addi	a1, zero, 4
80003794: 63 0a b5 06  	beq	a0, a1, 0x80003808 <.LBB1_7+0x58>
80003798: 63 1a 05 08  	bnez	a0, 0x8000382c <.LBB1_7+0x7c>
8000379c: 37 05 00 00  	lui	a0, 0
800037a0: 33 05 45 00  	add	a0, a0, tp
800037a4: 03 25 05 00  	lw	a0, 0(a0)
800037a8: 03 25 05 00  	lw	a0, 0(a0)
800037ac: f3 25 40 f1  	csrr	a1, mhartid

800037b0 <.LBB1_7>:
;     asm volatile(
800037b0: 17 16 00 00  	auipc	a2, 1
800037b4: 13 06 06 89  	addi	a2, a2, -1904
800037b8: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800037bc: 93 06 06 00  	mv	a3, a2
800037c0: 93 02 10 00  	addi	t0, zero, 1
800037c4: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800037c8: e3 9e 02 fe  	bnez	t0, 0x800037c4 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800037cc: b7 06 00 00  	lui	a3, 0
800037d0: b3 86 46 00  	add	a3, a3, tp
800037d4: 83 a6 86 00  	lw	a3, 8(a3)
800037d8: 33 85 a5 40  	sub	a0, a1, a0
800037dc: 93 55 35 00  	srli	a1, a0, 3
800037e0: 93 f5 c5 ff  	andi	a1, a1, -4
800037e4: b3 85 b6 00  	add	a1, a3, a1
800037e8: 83 a6 05 00  	lw	a3, 0(a1)
800037ec: 13 07 10 00  	addi	a4, zero, 1
800037f0: 33 15 a7 00  	sll	a0, a4, a0
800037f4: 13 45 f5 ff  	not	a0, a0
800037f8: 33 f5 a6 00  	and	a0, a3, a0
800037fc: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80003800: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80003804: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80003808: 37 05 00 00  	lui	a0, 0
8000380c: 33 05 45 00  	add	a0, a0, tp
80003810: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80003814: b7 05 00 00  	lui	a1, 0
80003818: b3 85 45 00  	add	a1, a1, tp
8000381c: 83 a5 c5 00  	lw	a1, 12(a1)
80003820: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80003824: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80003828: 23 a4 a5 00  	sw	a0, 8(a1)
; }
8000382c: 67 80 00 00  	ret

Disassembly of section .init:

80003830 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80003830: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80003834: 93 81 81 f1  	addi	gp, gp, -232

80003838 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80003838: 97 00 00 00  	auipc	ra, 0
8000383c: e7 80 40 3c  	jalr	964(ra)

80003840 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80003840: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80003844: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80003848: 97 00 00 00  	auipc	ra, 0
8000384c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80003850: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80003854: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80003858: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000385c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80003860: 63 92 02 02  	bnez	t0, 0x80003884 <snrt.crt0.init_registers>

80003864 <.Lpcrel_hi0>:
;     la        t0, _edata
80003864: 97 02 00 00  	auipc	t0, 0
80003868: 93 82 c2 7d  	addi	t0, t0, 2012

8000386c <.Lpcrel_hi1>:
;     la        t1, _end
8000386c: 17 03 00 00  	auipc	t1, 0
80003870: 13 03 83 7d  	addi	t1, t1, 2008
;     bge       t0, t1, 2f
80003874: 63 d8 62 00  	bge	t0, t1, 0x80003884 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80003878: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000387c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80003880: e3 cc 62 fe  	blt	t0, t1, 0x80003878 <.Lpcrel_hi1+0xc>

80003884 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80003884: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80003888: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000388c: 63 82 02 08  	beqz	t0, 0x80003910 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80003890: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80003894: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80003898: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000389c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800038a0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800038a4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800038a8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800038ac: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800038b0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800038b4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800038b8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800038bc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800038c0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800038c4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800038c8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800038cc: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800038d0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800038d4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800038d8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800038dc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800038e0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800038e4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800038e8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800038ec: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800038f0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800038f4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800038f8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800038fc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80003900: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80003904: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80003908: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000390c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80003910 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80003910: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80003914: 23 a0 06 00  	sw	zero, 0(a3)

80003918 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80003918: 97 02 00 00  	auipc	t0, 0
8000391c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003920: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003924: 93 87 06 00  	mv	a5, a3

80003928 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003928: 97 03 00 00  	auipc	t2, 0
8000392c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003930: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003934: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003938: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000393c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003940: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003944: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003948: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000394c: b3 86 66 40  	sub	a3, a3, t1

80003950 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003950: 97 02 00 00  	auipc	t0, 0
80003954: 93 82 82 5f  	addi	t0, t0, 1528

80003958 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003958: 17 03 00 00  	auipc	t1, 0
8000395c: 13 03 03 5f  	addi	t1, t1, 1520

80003960 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80003960: 97 03 00 00  	auipc	t2, 0
80003964: 93 83 83 5e  	addi	t2, t2, 1512

80003968 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80003968: 17 0e 00 00  	auipc	t3, 0
8000396c: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003970: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003974: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003978: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000397c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003980: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003984: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003988: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000398c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003990: 63 dc 62 00  	bge	t0, t1, 0x800039a8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003994: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003998: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000399c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800039a0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800039a4: e3 c8 62 fe  	blt	t0, t1, 0x80003994 <.Lpcrel_hi7+0x2c>

800039a8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800039a8: 97 02 00 00  	auipc	t0, 0
800039ac: 93 82 02 5a  	addi	t0, t0, 1440

800039b0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
800039b0: 17 03 00 00  	auipc	t1, 0
800039b4: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
800039b8: 63 da 62 00  	bge	t0, t1, 0x800039cc <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
800039bc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800039c0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800039c4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800039c8: e3 ca 72 fe  	blt	t0, t2, 0x800039bc <.Lpcrel_hi9+0xc>

800039cc <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800039cc: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800039d0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800039d4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800039d8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800039dc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800039e0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800039e4: 97 00 00 00  	auipc	ra, 0
800039e8: e7 80 40 be  	jalr	-1052(ra)
;     lw        a0, 0(sp)
800039ec: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800039f0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800039f4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800039f8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800039fc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80003a00: 13 01 41 01  	addi	sp, sp, 20

80003a04 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80003a04: 97 02 00 00  	auipc	t0, 0
80003a08: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80003a0c: 73 90 52 30  	csrw	mtvec, t0

80003a10 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80003a10: 97 00 00 00  	auipc	ra, 0
80003a14: e7 80 00 22  	jalr	544(ra)

80003a18 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80003a18: 97 d0 ff ff  	auipc	ra, 1048573
80003a1c: e7 80 c0 c1  	jalr	-996(ra)
;     mv        s0, a0 # store return value in s0
80003a20: 13 04 05 00  	mv	s0, a0

80003a24 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003a24: 97 00 00 00  	auipc	ra, 0
80003a28: e7 80 c0 20  	jalr	524(ra)

80003a2c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80003a2c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003a30: 97 00 00 00  	auipc	ra, 0
80003a34: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003a38: 73 00 50 10  	wfi	
;     j       1b
80003a3c: 6f f0 df ff  	j	0x80003a38 <snrt.crt0.end+0xc>

80003a40 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003a40: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003a44: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003a48: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80003a4c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003a50: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003a54: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003a58: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80003a5c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80003a60: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80003a64: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80003a68: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80003a6c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003a70: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003a74: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003a78: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80003a7c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003a80: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003a84: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003a88: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003a8c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003a90: 63 84 02 08  	beqz	t0, 0x80003b18 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003a94: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003a98: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80003a9c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003aa0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003aa4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003aa8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80003aac: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003ab0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003ab4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003ab8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80003abc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80003ac0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80003ac4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80003ac8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80003acc: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80003ad0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80003ad4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80003ad8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80003adc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80003ae0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80003ae4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80003ae8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80003aec: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80003af0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80003af4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80003af8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80003afc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003b00: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003b04: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003b08: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80003b0c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003b10: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003b14: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003b18: 97 00 00 00  	auipc	ra, 0
80003b1c: e7 80 00 c5  	jalr	-944(ra)
;     csrr    t0, misa
80003b20: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003b24: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003b28: 63 84 02 08  	beqz	t0, 0x80003bb0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80003b2c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003b30: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003b34: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003b38: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80003b3c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003b40: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003b44: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003b48: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80003b4c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003b50: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003b54: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003b58: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80003b5c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003b60: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003b64: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003b68: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80003b6c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003b70: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003b74: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003b78: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80003b7c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003b80: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003b84: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003b88: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80003b8c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003b90: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003b94: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003b98: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80003b9c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003ba0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003ba4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003ba8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80003bac: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003bb0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003bb4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003bb8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80003bbc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003bc0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003bc4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003bc8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80003bcc: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003bd0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003bd4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003bd8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80003bdc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003be0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003be4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003be8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80003bec: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003bf0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003bf4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003bf8: 73 00 20 30  	mret	

80003bfc <_snrt_init_core_info>:
;     mv        a4, a1
80003bfc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003c00: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003c04: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003c08: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80003c0c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003c10: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003c14: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003c18: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80003c1c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003c20: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003c24: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003c28: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80003c2c: 67 80 00 00  	ret

80003c30 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003c30: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003c34: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003c38: 97 00 00 00  	auipc	ra, 0
80003c3c: e7 80 80 b1  	jalr	-1256(ra)
;     lw        a0, 0(a0)
80003c40: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003c44: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003c48: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80003c4c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003c50: 67 80 00 00  	ret

80003c54 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003c54: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003c58: 67 80 00 00  	ret

80003c5c <_snrt_exit>:
;     addi      sp, sp, -8
80003c5c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003c60: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003c64: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003c68: 97 00 00 00  	auipc	ra, 0
80003c6c: e7 80 80 ac  	jalr	-1336(ra)
;     lw        t0, 0(sp)
80003c70: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003c74: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003c78: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80003c7c: 63 1c 05 00  	bnez	a0, 0x80003c94 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003c80: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003c84: 93 e2 12 00  	ori	t0, t0, 1

80003c88 <.Lpcrel_hi11>:
;     la        t1, tohost
80003c88: 17 03 00 00  	auipc	t1, 0
80003c8c: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80003c90: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003c94: 67 80 00 00  	ret
