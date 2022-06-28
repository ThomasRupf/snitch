
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-2mm-ssrfriendly-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00005208 80000000 TEXT
  2 .init             00000468 80005210 TEXT
  3 .rodata           00000238 80005678 DATA
  4 .htif             00000048 800058c0 DATA
  5 .tdata            00000000 80005908 DATA
  6 .tbss             00000010 80005908 BSS
  7 .tbssend          00000000 80005918 DATA
  8 .sdata            000000e8 80005918 DATA
  9 .data             00000000 80005a00 DATA
 10 .sbss             00000004 80005a00 BSS
 11 .bss              00000000 80005a04 BSS
 12 .dram             00000000 80005a04 DATA
 13 .debug_info       0000372f 00000000 
 14 .debug_abbrev     00000bf6 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       000037d9 00000000 
 17 .debug_loc        000041aa 00000000 
 18 .debug_ranges     000003e0 00000000 
 19 .debug_str        00000b13 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           000033c0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000098a 00000000 


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
80000634: 13 01 01 f0  	addi	sp, sp, -256
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 0e  	sw	ra, 252(sp)
8000063c: 23 2c 81 0e  	sw	s0, 248(sp)
80000640: 23 2a 91 0e  	sw	s1, 244(sp)
80000644: 23 28 21 0f  	sw	s2, 240(sp)
80000648: 23 26 31 0f  	sw	s3, 236(sp)
8000064c: 23 24 41 0f  	sw	s4, 232(sp)
80000650: 23 22 51 0f  	sw	s5, 228(sp)
80000654: 23 20 61 0f  	sw	s6, 224(sp)
80000658: 23 2e 71 0d  	sw	s7, 220(sp)
8000065c: 23 2c 81 0d  	sw	s8, 216(sp)
80000660: 23 2a 91 0d  	sw	s9, 212(sp)
80000664: 23 28 a1 0d  	sw	s10, 208(sp)
80000668: 23 26 b1 0d  	sw	s11, 204(sp)
8000066c: 27 30 81 0c  	fsd	fs0, 192(sp)
80000670: 27 3c 91 0a  	fsd	fs1, 184(sp)
80000674: 27 38 21 0b  	fsd	fs2, 176(sp)
80000678: 27 34 31 0b  	fsd	fs3, 168(sp)
8000067c: 27 30 41 0b  	fsd	fs4, 160(sp)
80000680: 27 3c 51 09  	fsd	fs5, 152(sp)
80000684: 27 38 61 09  	fsd	fs6, 144(sp)
80000688: 27 34 71 09  	fsd	fs7, 136(sp)
8000068c: 37 05 00 00  	lui	a0, 0
80000690: 33 05 45 00  	add	a0, a0, tp
80000694: 83 25 45 00  	lw	a1, 4(a0)
80000698: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000069c: 63 84 05 00  	beqz	a1, 0x800006a4 <main+0x70>
800006a0: 6f 20 10 45  	j	0x800032f0 <.LBB0_142+0x10>
;     return _snrt_team_current->root;
800006a4: 37 05 00 00  	lui	a0, 0
800006a8: 33 05 45 00  	add	a0, a0, tp
800006ac: 03 25 05 00  	lw	a0, 0(a0)
800006b0: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b4: 83 27 85 05  	lw	a5, 88(a0)
800006b8: 83 25 05 05  	lw	a1, 80(a0)
800006bc: 03 27 45 05  	lw	a4, 84(a0)
800006c0: 37 16 00 00  	lui	a2, 1
800006c4: 13 06 06 90  	addi	a2, a2, -1792
800006c8: b3 86 c7 00  	add	a3, a5, a2
800006cc: b3 05 b7 00  	add	a1, a4, a1
800006d0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006dc <main+0xa8>
800006d4: 13 0d 00 00  	mv	s10, zero
800006d8: 6f 00 00 01  	j	0x800006e8 <main+0xb4>
;     void *ret = (void *)alloc->next;
800006dc: 13 8d 07 00  	mv	s10, a5
;     alloc->next += size;
800006e0: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e4: 93 87 06 00  	mv	a5, a3
800006e8: b3 06 f6 00  	add	a3, a2, a5
800006ec: 93 86 06 20  	addi	a3, a3, 512
800006f0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006fc <main+0xc8>
800006f4: 13 04 00 00  	mv	s0, zero
800006f8: 6f 00 00 01  	j	0x80000708 <main+0xd4>
;     void *ret = (void *)alloc->next;
800006fc: 13 84 07 00  	mv	s0, a5
;     alloc->next += size;
80000700: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000704: 93 87 06 00  	mv	a5, a3
80000708: b3 06 f6 00  	add	a3, a2, a5
8000070c: 93 86 06 36  	addi	a3, a3, 864
80000710: 63 f6 d5 00  	bgeu	a1, a3, 0x8000071c <main+0xe8>
80000714: 93 0d 00 00  	mv	s11, zero
80000718: 6f 00 00 01  	j	0x80000728 <main+0xf4>
;     void *ret = (void *)alloc->next;
8000071c: 93 8d 07 00  	mv	s11, a5
;     alloc->next += size;
80000720: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000724: 93 87 06 00  	mv	a5, a3
80000728: b3 06 f6 00  	add	a3, a2, a5
8000072c: 93 86 06 48  	addi	a3, a3, 1152
80000730: 63 f6 d5 00  	bgeu	a1, a3, 0x8000073c <main+0x108>
80000734: 93 0c 00 00  	mv	s9, zero
80000738: 6f 00 00 01  	j	0x80000748 <main+0x114>
;     void *ret = (void *)alloc->next;
8000073c: 93 8c 07 00  	mv	s9, a5
;     alloc->next += size;
80000740: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000744: 93 87 06 00  	mv	a5, a3
80000748: 33 06 f6 00  	add	a2, a2, a5
8000074c: 13 06 06 30  	addi	a2, a2, 768
80000750: 63 f6 c5 00  	bgeu	a1, a2, 0x8000075c <main+0x128>
80000754: 93 07 00 00  	mv	a5, zero
80000758: 6f 00 80 00  	j	0x80000760 <main+0x12c>
;     alloc->next += size;
8000075c: 23 2c c5 04  	sw	a2, 88(a0)
80000760: 23 26 f1 00  	sw	a5, 12(sp)
;   for (i = 0; i < ni; i++)
80000764: 13 55 44 01  	srli	a0, s0, 20
80000768: 33 35 a0 00  	snez	a0, a0
8000076c: b7 f5 11 00  	lui	a1, 287
80000770: 93 85 95 50  	addi	a1, a1, 1289
80000774: b3 35 b4 00  	sltu	a1, s0, a1
80000778: b3 75 b5 00  	and	a1, a0, a1

8000077c <.LBB0_129>:
8000077c: 17 55 00 00  	auipc	a0, 5
80000780: 13 05 c5 19  	addi	a0, a0, 412
80000784: 23 20 81 02  	sw	s0, 32(sp)
80000788: 23 22 b1 00  	sw	a1, 4(sp)
8000078c: 13 08 00 00  	mv	a6, zero
80000790: 93 08 00 00  	mv	a7, zero
80000794: 63 8c 05 24  	beqz	a1, 0x800009ec <.LBB0_129+0x270>
80000798: 13 03 00 00  	mv	t1, zero
8000079c: 93 03 00 00  	mv	t2, zero
800007a0: 13 0e 00 00  	mv	t3, zero
800007a4: 93 0e 00 00  	mv	t4, zero
800007a8: 13 0f 00 00  	mv	t5, zero
800007ac: 93 0f 00 00  	mv	t6, zero
800007b0: 13 09 00 00  	mv	s2, zero
800007b4: 93 05 80 00  	addi	a1, zero, 8
800007b8: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++)
800007bc: 93 06 00 04  	addi	a3, zero, 64
800007c0: 13 07 00 0c  	addi	a4, zero, 192
800007c4: ab 20 d6 00  	scfgw	a2, a3
800007c8: ab a0 e5 00  	scfgw	a1, a4
800007cc: 13 06 f0 00  	addi	a2, zero, 15
800007d0: 93 06 00 06  	addi	a3, zero, 96
800007d4: 13 07 00 0e  	addi	a4, zero, 224
800007d8: ab 20 d6 00  	scfgw	a2, a3
800007dc: ab a0 e5 00  	scfgw	a1, a4
800007e0: 93 05 00 02  	addi	a1, zero, 32
800007e4: ab 20 b0 00  	scfgw	zero, a1
800007e8: 2b 20 04 3a  	scfgwi	s0, 928
800007ec: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800007f0: 93 09 10 00  	addi	s3, zero, 1
800007f4: 87 31 05 00  	fld	ft3, 0(a0)
800007f8: 93 02 10 15  	addi	t0, zero, 337
800007fc: 13 0a 10 00  	addi	s4, zero, 1
80000800: 93 0a 10 00  	addi	s5, zero, 1
80000804: 13 0b 10 00  	addi	s6, zero, 1
80000808: 93 07 10 00  	addi	a5, zero, 1
8000080c: 93 04 10 00  	addi	s1, zero, 1
80000810: 13 04 10 00  	addi	s0, zero, 1
80000814: 13 05 10 00  	addi	a0, zero, 1
80000818: 93 05 10 00  	addi	a1, zero, 1
8000081c: 13 06 10 00  	addi	a2, zero, 1
80000820: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000824: 53 80 31 22  	fmv.d	ft0, ft3
80000828: 13 f7 f9 00  	andi	a4, s3, 15
8000082c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000830: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000834: 53 00 42 22  	fmv.d	ft0, ft4
80000838: 13 77 e8 00  	andi	a4, a6, 14
8000083c: 13 67 17 00  	ori	a4, a4, 1
80000840: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000844: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000848: 53 00 42 22  	fmv.d	ft0, ft4
8000084c: 13 77 fa 00  	andi	a4, s4, 15
80000850: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000854: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000858: 53 00 42 22  	fmv.d	ft0, ft4
8000085c: 13 f7 c8 00  	andi	a4, a7, 12
80000860: 13 67 17 00  	ori	a4, a4, 1
80000864: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000868: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000086c: 53 00 42 22  	fmv.d	ft0, ft4
80000870: 13 f7 fa 00  	andi	a4, s5, 15
80000874: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000878: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000087c: 53 00 42 22  	fmv.d	ft0, ft4
80000880: 13 77 e3 00  	andi	a4, t1, 14
80000884: 13 67 17 00  	ori	a4, a4, 1
80000888: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000088c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000890: 53 00 42 22  	fmv.d	ft0, ft4
80000894: 13 77 fb 00  	andi	a4, s6, 15
80000898: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000089c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008a0: 53 00 42 22  	fmv.d	ft0, ft4
800008a4: 13 f7 83 00  	andi	a4, t2, 8
800008a8: 13 67 17 00  	ori	a4, a4, 1
800008ac: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008b0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008b4: 53 00 42 22  	fmv.d	ft0, ft4
800008b8: 13 f7 f7 00  	andi	a4, a5, 15
800008bc: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008c0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008c4: 53 00 42 22  	fmv.d	ft0, ft4
800008c8: 13 77 ee 00  	andi	a4, t3, 14
800008cc: 13 67 17 00  	ori	a4, a4, 1
800008d0: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008d4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008d8: 53 00 42 22  	fmv.d	ft0, ft4
800008dc: 13 f7 f4 00  	andi	a4, s1, 15
800008e0: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008e4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008e8: 53 00 42 22  	fmv.d	ft0, ft4
800008ec: 13 f7 ce 00  	andi	a4, t4, 12
800008f0: 13 67 17 00  	ori	a4, a4, 1
800008f4: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008f8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008fc: 53 00 42 22  	fmv.d	ft0, ft4
80000900: 13 77 f4 00  	andi	a4, s0, 15
80000904: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000908: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000090c: 53 00 42 22  	fmv.d	ft0, ft4
80000910: 13 77 ef 00  	andi	a4, t5, 14
80000914: 13 67 17 00  	ori	a4, a4, 1
80000918: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000091c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000920: 53 00 42 22  	fmv.d	ft0, ft4
80000924: 13 77 f5 00  	andi	a4, a0, 15
80000928: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000092c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000930: 53 00 42 22  	fmv.d	ft0, ft4
80000934: 53 80 31 22  	fmv.d	ft0, ft3
80000938: 13 f7 f5 00  	andi	a4, a1, 15
8000093c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000940: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000944: 53 00 42 22  	fmv.d	ft0, ft4
80000948: 13 f7 ef 00  	andi	a4, t6, 14
8000094c: 13 67 17 00  	ori	a4, a4, 1
80000950: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000954: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000958: 53 00 42 22  	fmv.d	ft0, ft4
8000095c: 13 77 f6 00  	andi	a4, a2, 15
80000960: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000964: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000968: 53 00 42 22  	fmv.d	ft0, ft4
8000096c: 13 77 c9 00  	andi	a4, s2, 12
80000970: 13 67 17 00  	ori	a4, a4, 1
80000974: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000978: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000097c: 53 00 42 22  	fmv.d	ft0, ft4
80000980: 13 f7 f6 00  	andi	a4, a3, 15
80000984: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000988: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000098c: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
80000990: 93 86 56 01  	addi	a3, a3, 21
80000994: 13 09 49 01  	addi	s2, s2, 20
80000998: 13 06 36 01  	addi	a2, a2, 19
8000099c: 93 8f 2f 01  	addi	t6, t6, 18
800009a0: 93 85 15 01  	addi	a1, a1, 17
800009a4: 13 05 f5 00  	addi	a0, a0, 15
800009a8: 13 0f ef 00  	addi	t5, t5, 14
800009ac: 13 04 d4 00  	addi	s0, s0, 13
800009b0: 93 8e ce 00  	addi	t4, t4, 12
800009b4: 93 84 b4 00  	addi	s1, s1, 11
800009b8: 13 0e ae 00  	addi	t3, t3, 10
800009bc: 93 87 97 00  	addi	a5, a5, 9
800009c0: 93 83 83 00  	addi	t2, t2, 8
800009c4: 13 0b 7b 00  	addi	s6, s6, 7
800009c8: 13 03 63 00  	addi	t1, t1, 6
800009cc: 93 8a 5a 00  	addi	s5, s5, 5
800009d0: 93 88 48 00  	addi	a7, a7, 4
800009d4: 13 0a 3a 00  	addi	s4, s4, 3
800009d8: 13 08 28 00  	addi	a6, a6, 2
800009dc: 93 89 19 00  	addi	s3, s3, 1
800009e0: e3 92 56 e4  	bne	a3, t0, 0x80000824 <.LBB0_129+0xa8>
800009e4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800009e8: 6f 00 80 22  	j	0x80000c10 <.LBB0_129+0x494>
800009ec: 93 02 00 00  	mv	t0, zero
800009f0: 13 0e 00 00  	mv	t3, zero
800009f4: 93 0e 00 00  	mv	t4, zero
800009f8: 13 0f 00 00  	mv	t5, zero
800009fc: 93 0f 00 00  	mv	t6, zero
80000a00: 13 09 00 00  	mv	s2, zero
80000a04: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a08: 93 05 84 05  	addi	a1, s0, 88
80000a0c: 13 0a 10 00  	addi	s4, zero, 1
80000a10: 37 03 b0 3f  	lui	t1, 260864
80000a14: 87 31 05 00  	fld	ft3, 0(a0)
80000a18: 93 03 10 15  	addi	t2, zero, 337
80000a1c: 93 0a 10 00  	addi	s5, zero, 1
80000a20: 13 0b 10 00  	addi	s6, zero, 1
80000a24: 93 0b 10 00  	addi	s7, zero, 1
80000a28: 13 0c 10 00  	addi	s8, zero, 1
80000a2c: 13 04 10 00  	addi	s0, zero, 1
80000a30: 13 05 10 00  	addi	a0, zero, 1
80000a34: 13 06 10 00  	addi	a2, zero, 1
80000a38: 93 06 10 00  	addi	a3, zero, 1
80000a3c: 13 07 10 00  	addi	a4, zero, 1
80000a40: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000a44: 23 a6 65 fa  	sw	t1, -84(a1)
80000a48: 23 a4 05 fa  	sw	zero, -88(a1)
80000a4c: 93 f4 f7 00  	andi	s1, a5, 15
80000a50: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a54: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a58: 27 b8 45 fa  	fsd	ft4, -80(a1)
80000a5c: 93 74 e9 00  	andi	s1, s2, 14
80000a60: 93 e4 14 00  	ori	s1, s1, 1
80000a64: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a68: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a6c: 27 bc 45 fa  	fsd	ft4, -72(a1)
80000a70: 93 74 f6 00  	andi	s1, a2, 15
80000a74: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a78: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a7c: 27 b0 45 fc  	fsd	ft4, -64(a1)
80000a80: 93 74 cf 00  	andi	s1, t5, 12
80000a84: 93 e4 14 00  	ori	s1, s1, 1
80000a88: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a8c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a90: 27 b4 45 fc  	fsd	ft4, -56(a1)
80000a94: 93 74 f4 00  	andi	s1, s0, 15
80000a98: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000a9c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000aa0: 27 b8 45 fc  	fsd	ft4, -48(a1)
80000aa4: 93 f4 ee 00  	andi	s1, t4, 14
80000aa8: 93 e4 14 00  	ori	s1, s1, 1
80000aac: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ab0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ab4: 27 bc 45 fc  	fsd	ft4, -40(a1)
80000ab8: 93 f4 fb 00  	andi	s1, s7, 15
80000abc: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ac0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ac4: 27 b0 45 fe  	fsd	ft4, -32(a1)
80000ac8: 93 f4 82 00  	andi	s1, t0, 8
80000acc: 93 e4 14 00  	ori	s1, s1, 1
80000ad0: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ad4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ad8: 27 b4 45 fe  	fsd	ft4, -24(a1)
80000adc: 93 f4 fa 00  	andi	s1, s5, 15
80000ae0: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ae4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ae8: 27 b8 45 fe  	fsd	ft4, -16(a1)
80000aec: 93 74 e8 00  	andi	s1, a6, 14
80000af0: 93 e4 14 00  	ori	s1, s1, 1
80000af4: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000af8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000afc: 27 bc 45 fe  	fsd	ft4, -8(a1)
80000b00: 93 74 fa 00  	andi	s1, s4, 15
80000b04: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b08: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b0c: 27 b0 45 00  	fsd	ft4, 0(a1)
80000b10: 93 f4 c8 00  	andi	s1, a7, 12
80000b14: 93 e4 14 00  	ori	s1, s1, 1
80000b18: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b1c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b20: 27 b4 45 00  	fsd	ft4, 8(a1)
80000b24: 93 74 fb 00  	andi	s1, s6, 15
80000b28: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b2c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b30: 27 b8 45 00  	fsd	ft4, 16(a1)
80000b34: 93 74 ee 00  	andi	s1, t3, 14
80000b38: 93 e4 14 00  	ori	s1, s1, 1
80000b3c: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b40: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b44: 27 bc 45 00  	fsd	ft4, 24(a1)
80000b48: 93 74 fc 00  	andi	s1, s8, 15
80000b4c: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b50: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b54: 27 b0 45 02  	fsd	ft4, 32(a1)
80000b58: 23 a6 65 02  	sw	t1, 44(a1)
80000b5c: 23 a4 05 02  	sw	zero, 40(a1)
80000b60: 93 74 f5 00  	andi	s1, a0, 15
80000b64: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b68: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b6c: 27 b8 45 02  	fsd	ft4, 48(a1)
80000b70: 93 f4 ef 00  	andi	s1, t6, 14
80000b74: 93 e4 14 00  	ori	s1, s1, 1
80000b78: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b7c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b80: 27 bc 45 02  	fsd	ft4, 56(a1)
80000b84: 93 f4 f6 00  	andi	s1, a3, 15
80000b88: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000b8c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b90: 27 b0 45 04  	fsd	ft4, 64(a1)
80000b94: 93 f4 c9 00  	andi	s1, s3, 12
80000b98: 93 e4 14 00  	ori	s1, s1, 1
80000b9c: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000ba0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ba4: 27 b4 45 04  	fsd	ft4, 72(a1)
80000ba8: 93 74 f7 00  	andi	s1, a4, 15
80000bac: 53 82 04 d2  	fcvt.d.w	ft4, s1
80000bb0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bb4: 27 b8 45 04  	fsd	ft4, 80(a1)
;   for (i = 0; i < ni; i++)
80000bb8: 93 87 17 00  	addi	a5, a5, 1
80000bbc: 13 07 57 01  	addi	a4, a4, 21
80000bc0: 93 89 49 01  	addi	s3, s3, 20
80000bc4: 13 09 29 00  	addi	s2, s2, 2
80000bc8: 93 86 36 01  	addi	a3, a3, 19
80000bcc: 13 06 36 00  	addi	a2, a2, 3
80000bd0: 93 8f 2f 01  	addi	t6, t6, 18
80000bd4: 13 0f 4f 00  	addi	t5, t5, 4
80000bd8: 13 05 15 01  	addi	a0, a0, 17
80000bdc: 13 04 54 00  	addi	s0, s0, 5
80000be0: 93 8e 6e 00  	addi	t4, t4, 6
80000be4: 13 0c fc 00  	addi	s8, s8, 15
80000be8: 93 8b 7b 00  	addi	s7, s7, 7
80000bec: 13 0e ee 00  	addi	t3, t3, 14
80000bf0: 93 82 82 00  	addi	t0, t0, 8
80000bf4: 13 0b db 00  	addi	s6, s6, 13
80000bf8: 93 8a 9a 00  	addi	s5, s5, 9
80000bfc: 93 88 c8 00  	addi	a7, a7, 12
80000c00: 93 85 05 0b  	addi	a1, a1, 176
80000c04: 13 0a ba 00  	addi	s4, s4, 11
80000c08: 13 08 a8 00  	addi	a6, a6, 10
80000c0c: e3 1c 77 e2  	bne	a4, t2, 0x80000a44 <.LBB0_129+0x2c8>
;   for (i = 0; i < nk; i++)
80000c10: 13 d5 4d 01  	srli	a0, s11, 20
80000c14: 33 35 a0 00  	snez	a0, a0
80000c18: b7 f5 11 00  	lui	a1, 287
80000c1c: 93 85 95 3a  	addi	a1, a1, 937
80000c20: b3 b5 bd 00  	sltu	a1, s11, a1
80000c24: 33 75 b5 00  	and	a0, a0, a1

80000c28 <.LBB0_130>:
80000c28: 97 5a 00 00  	auipc	s5, 5
80000c2c: 93 8a 8a cf  	addi	s5, s5, -776
80000c30: 23 20 a1 00  	sw	a0, 0(sp)
80000c34: 13 08 00 00  	mv	a6, zero
80000c38: 93 08 00 00  	mv	a7, zero
80000c3c: 93 02 00 00  	mv	t0, zero
80000c40: 13 03 00 00  	mv	t1, zero
80000c44: 93 03 00 00  	mv	t2, zero
80000c48: 13 0e 00 00  	mv	t3, zero
80000c4c: 93 0e 00 00  	mv	t4, zero
80000c50: 13 0f 00 00  	mv	t5, zero
80000c54: 93 0f 00 00  	mv	t6, zero
80000c58: 13 09 00 00  	mv	s2, zero
80000c5c: 63 04 05 2a  	beqz	a0, 0x80000f04 <.LBB0_130+0x2dc>
80000c60: 13 0a 00 00  	mv	s4, zero
80000c64: 13 0b 00 00  	mv	s6, zero
80000c68: 13 07 00 00  	mv	a4, zero
80000c6c: 93 07 00 00  	mv	a5, zero
80000c70: 93 04 00 00  	mv	s1, zero
80000c74: 13 04 00 00  	mv	s0, zero
80000c78: 13 05 00 00  	mv	a0, zero
80000c7c: 93 05 80 00  	addi	a1, zero, 8
80000c80: 93 09 10 01  	addi	s3, zero, 17
;   for (i = 0; i < nk; i++)
80000c84: 13 06 00 04  	addi	a2, zero, 64
80000c88: ab a0 c9 00  	scfgw	s3, a2
80000c8c: 13 06 00 0c  	addi	a2, zero, 192
80000c90: ab a0 c5 00  	scfgw	a1, a2
80000c94: 93 09 50 01  	addi	s3, zero, 21
80000c98: 13 06 00 06  	addi	a2, zero, 96
80000c9c: ab a0 c9 00  	scfgw	s3, a2
80000ca0: 13 06 00 0e  	addi	a2, zero, 224
80000ca4: ab a0 c5 00  	scfgw	a1, a2
80000ca8: 93 05 00 02  	addi	a1, zero, 32
80000cac: ab 20 b0 00  	scfgw	zero, a1
80000cb0: 2b a0 0d 3a  	scfgwi	s11, 928
80000cb4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000cb8: b7 95 e3 38  	lui	a1, 233017
80000cbc: 93 85 95 e3  	addi	a1, a1, -455
80000cc0: 93 09 e0 fe  	addi	s3, zero, -18
80000cc4: 87 b1 0a 00  	fld	ft3, 0(s5)
80000cc8: 13 06 20 01  	addi	a2, zero, 18
80000ccc: 53 02 00 d2  	fcvt.d.w	ft4, zero
80000cd0: 93 0a 60 17  	addi	s5, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000cd4: b3 36 b5 02  	mulhu	a3, a0, a1
80000cd8: 93 d6 26 00  	srli	a3, a3, 2
80000cdc: b3 86 c6 02  	mul	a3, a3, a2
80000ce0: b3 06 d5 40  	sub	a3, a0, a3
80000ce4: d3 82 06 d2  	fcvt.d.w	ft5, a3
80000ce8: b3 36 b8 02  	mulhu	a3, a6, a1
80000cec: 93 d6 26 00  	srli	a3, a3, 2
80000cf0: b3 86 c6 02  	mul	a3, a3, a2
80000cf4: b3 06 d8 40  	sub	a3, a6, a3
80000cf8: 53 83 06 d2  	fcvt.d.w	ft6, a3
80000cfc: b3 b6 b8 02  	mulhu	a3, a7, a1
80000d00: 93 d6 26 00  	srli	a3, a3, 2
80000d04: b3 86 c6 02  	mul	a3, a3, a2
80000d08: b3 86 d8 40  	sub	a3, a7, a3
80000d0c: d3 83 06 d2  	fcvt.d.w	ft7, a3
80000d10: b3 b6 b2 02  	mulhu	a3, t0, a1
80000d14: 93 d6 26 00  	srli	a3, a3, 2
80000d18: b3 86 c6 02  	mul	a3, a3, a2
80000d1c: b3 86 d2 40  	sub	a3, t0, a3
80000d20: 53 85 06 d2  	fcvt.d.w	fa0, a3
80000d24: b3 36 b3 02  	mulhu	a3, t1, a1
80000d28: 93 d6 26 00  	srli	a3, a3, 2
80000d2c: b3 86 c6 02  	mul	a3, a3, a2
80000d30: b3 06 d3 40  	sub	a3, t1, a3
80000d34: d3 85 06 d2  	fcvt.d.w	fa1, a3
80000d38: b3 b6 b3 02  	mulhu	a3, t2, a1
80000d3c: 93 d6 26 00  	srli	a3, a3, 2
80000d40: b3 86 c6 02  	mul	a3, a3, a2
80000d44: b3 86 d3 40  	sub	a3, t2, a3
80000d48: 53 86 06 d2  	fcvt.d.w	fa2, a3
80000d4c: b3 36 be 02  	mulhu	a3, t3, a1
80000d50: 93 d6 26 00  	srli	a3, a3, 2
80000d54: b3 86 c6 02  	mul	a3, a3, a2
80000d58: b3 06 de 40  	sub	a3, t3, a3
80000d5c: d3 86 06 d2  	fcvt.d.w	fa3, a3
80000d60: b3 b6 be 02  	mulhu	a3, t4, a1
80000d64: 93 d6 26 00  	srli	a3, a3, 2
80000d68: b3 86 c6 02  	mul	a3, a3, a2
80000d6c: b3 86 de 40  	sub	a3, t4, a3
80000d70: 53 87 06 d2  	fcvt.d.w	fa4, a3
80000d74: b3 36 bf 02  	mulhu	a3, t5, a1
80000d78: 93 d6 26 00  	srli	a3, a3, 2
80000d7c: b3 86 c6 02  	mul	a3, a3, a2
80000d80: b3 06 df 40  	sub	a3, t5, a3
80000d84: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000d88: b3 b6 bf 02  	mulhu	a3, t6, a1
80000d8c: 93 d6 26 00  	srli	a3, a3, 2
80000d90: b3 86 c6 02  	mul	a3, a3, a2
80000d94: b3 86 df 40  	sub	a3, t6, a3
80000d98: 53 88 06 d2  	fcvt.d.w	fa6, a3
80000d9c: b3 36 b9 02  	mulhu	a3, s2, a1
80000da0: 93 d6 26 00  	srli	a3, a3, 2
80000da4: b3 86 c6 02  	mul	a3, a3, a2
80000da8: b3 06 d9 40  	sub	a3, s2, a3
80000dac: d3 88 06 d2  	fcvt.d.w	fa7, a3
80000db0: b3 36 ba 02  	mulhu	a3, s4, a1
80000db4: 93 d6 26 00  	srli	a3, a3, 2
80000db8: b3 86 c6 02  	mul	a3, a3, a2
80000dbc: b3 06 da 40  	sub	a3, s4, a3
80000dc0: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80000dc4: b3 36 bb 02  	mulhu	a3, s6, a1
80000dc8: 93 d6 26 00  	srli	a3, a3, 2
80000dcc: b3 86 c6 02  	mul	a3, a3, a2
80000dd0: b3 06 db 40  	sub	a3, s6, a3
80000dd4: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80000dd8: b3 36 b7 02  	mulhu	a3, a4, a1
80000ddc: 93 d6 26 00  	srli	a3, a3, 2
80000de0: b3 86 c6 02  	mul	a3, a3, a2
80000de4: b3 06 d7 40  	sub	a3, a4, a3
80000de8: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80000dec: b3 b6 b7 02  	mulhu	a3, a5, a1
80000df0: 93 d6 26 00  	srli	a3, a3, 2
80000df4: b3 86 c6 02  	mul	a3, a3, a2
80000df8: b3 86 d7 40  	sub	a3, a5, a3
80000dfc: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80000e00: b3 b6 b4 02  	mulhu	a3, s1, a1
80000e04: 93 d6 26 00  	srli	a3, a3, 2
80000e08: b3 86 c6 02  	mul	a3, a3, a2
80000e0c: b3 86 d4 40  	sub	a3, s1, a3
80000e10: 53 84 06 d2  	fcvt.d.w	fs0, a3
80000e14: b3 36 b4 02  	mulhu	a3, s0, a1
80000e18: 93 d6 26 00  	srli	a3, a3, 2
80000e1c: b3 86 36 03  	mul	a3, a3, s3
80000e20: b3 06 d4 00  	add	a3, s0, a3
80000e24: d3 84 06 d2  	fcvt.d.w	fs1, a3
80000e28: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e2c: 53 80 52 22  	fmv.d	ft0, ft5
80000e30: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e34: 53 80 52 22  	fmv.d	ft0, ft5
80000e38: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e3c: 53 80 52 22  	fmv.d	ft0, ft5
80000e40: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e44: 53 80 52 22  	fmv.d	ft0, ft5
80000e48: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e4c: 53 80 52 22  	fmv.d	ft0, ft5
80000e50: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e54: 53 80 52 22  	fmv.d	ft0, ft5
80000e58: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e5c: 53 80 52 22  	fmv.d	ft0, ft5
80000e60: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e64: 53 80 52 22  	fmv.d	ft0, ft5
80000e68: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e6c: 53 80 52 22  	fmv.d	ft0, ft5
80000e70: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000e74: 53 80 52 22  	fmv.d	ft0, ft5
80000e78: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000e7c: 53 80 52 22  	fmv.d	ft0, ft5
80000e80: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000e84: 53 80 52 22  	fmv.d	ft0, ft5
80000e88: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000e8c: 53 80 52 22  	fmv.d	ft0, ft5
80000e90: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000e94: 53 80 52 22  	fmv.d	ft0, ft5
80000e98: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000e9c: 53 80 52 22  	fmv.d	ft0, ft5
80000ea0: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000ea4: 53 80 52 22  	fmv.d	ft0, ft5
80000ea8: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000eac: 53 80 52 22  	fmv.d	ft0, ft5
80000eb0: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000eb4: 13 05 15 00  	addi	a0, a0, 1
80000eb8: 13 04 14 01  	addi	s0, s0, 17
80000ebc: 93 84 04 01  	addi	s1, s1, 16
80000ec0: 93 87 f7 00  	addi	a5, a5, 15
80000ec4: 13 07 e7 00  	addi	a4, a4, 14
80000ec8: 13 0b db 00  	addi	s6, s6, 13
80000ecc: 13 0a ca 00  	addi	s4, s4, 12
80000ed0: 13 09 b9 00  	addi	s2, s2, 11
80000ed4: 93 8f af 00  	addi	t6, t6, 10
80000ed8: 13 0f 9f 00  	addi	t5, t5, 9
80000edc: 93 8e 8e 00  	addi	t4, t4, 8
80000ee0: 13 0e 7e 00  	addi	t3, t3, 7
80000ee4: 93 83 63 00  	addi	t2, t2, 6
80000ee8: 13 03 53 00  	addi	t1, t1, 5
80000eec: 93 82 42 00  	addi	t0, t0, 4
80000ef0: 93 88 38 00  	addi	a7, a7, 3
80000ef4: 13 08 28 00  	addi	a6, a6, 2
80000ef8: e3 1e 54 dd  	bne	s0, s5, 0x80000cd4 <.LBB0_130+0xac>
80000efc: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f00: 6f 00 c0 26  	j	0x8000116c <.LBB0_130+0x544>
80000f04: 93 09 00 00  	mv	s3, zero
80000f08: 13 0a 00 00  	mv	s4, zero
80000f0c: 93 0b 00 00  	mv	s7, zero
80000f10: 93 07 00 00  	mv	a5, zero
80000f14: 93 04 00 00  	mv	s1, zero
80000f18: 13 04 00 00  	mv	s0, zero
80000f1c: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nk; i++)
80000f20: 93 85 8d 04  	addi	a1, s11, 72
80000f24: 37 96 e3 38  	lui	a2, 233017
80000f28: 13 06 96 e3  	addi	a2, a2, -455
80000f2c: 87 b1 0a 00  	fld	ft3, 0(s5)
80000f30: 93 06 20 01  	addi	a3, zero, 18
80000f34: 93 0a e0 fe  	addi	s5, zero, -18
80000f38: 13 0b 60 17  	addi	s6, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000f3c: 33 37 c5 02  	mulhu	a4, a0, a2
80000f40: 13 57 27 00  	srli	a4, a4, 2
80000f44: 33 07 d7 02  	mul	a4, a4, a3
80000f48: 33 07 e5 40  	sub	a4, a0, a4
80000f4c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000f50: 33 b7 c4 02  	mulhu	a4, s1, a2
80000f54: 13 57 27 00  	srli	a4, a4, 2
80000f58: 33 07 d7 02  	mul	a4, a4, a3
80000f5c: 33 87 e4 40  	sub	a4, s1, a4
80000f60: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000f64: 33 b7 c7 02  	mulhu	a4, a5, a2
80000f68: 13 57 27 00  	srli	a4, a4, 2
80000f6c: 33 07 d7 02  	mul	a4, a4, a3
80000f70: 33 87 e7 40  	sub	a4, a5, a4
80000f74: 53 03 07 d2  	fcvt.d.w	ft6, a4
80000f78: 33 37 ca 02  	mulhu	a4, s4, a2
80000f7c: 13 57 27 00  	srli	a4, a4, 2
80000f80: 33 07 d7 02  	mul	a4, a4, a3
80000f84: 33 07 ea 40  	sub	a4, s4, a4
80000f88: d3 03 07 d2  	fcvt.d.w	ft7, a4
80000f8c: 33 37 c9 02  	mulhu	a4, s2, a2
80000f90: 13 57 27 00  	srli	a4, a4, 2
80000f94: 33 07 d7 02  	mul	a4, a4, a3
80000f98: 33 07 e9 40  	sub	a4, s2, a4
80000f9c: 53 05 07 d2  	fcvt.d.w	fa0, a4
80000fa0: 33 37 cf 02  	mulhu	a4, t5, a2
80000fa4: 13 57 27 00  	srli	a4, a4, 2
80000fa8: 33 07 d7 02  	mul	a4, a4, a3
80000fac: 33 07 ef 40  	sub	a4, t5, a4
80000fb0: d3 05 07 d2  	fcvt.d.w	fa1, a4
80000fb4: 33 37 ce 02  	mulhu	a4, t3, a2
80000fb8: 13 57 27 00  	srli	a4, a4, 2
80000fbc: 33 07 d7 02  	mul	a4, a4, a3
80000fc0: 33 07 ee 40  	sub	a4, t3, a4
80000fc4: 53 06 07 d2  	fcvt.d.w	fa2, a4
80000fc8: 33 37 c3 02  	mulhu	a4, t1, a2
80000fcc: 13 57 27 00  	srli	a4, a4, 2
80000fd0: 33 07 d7 02  	mul	a4, a4, a3
80000fd4: 33 07 e3 40  	sub	a4, t1, a4
80000fd8: d3 06 07 d2  	fcvt.d.w	fa3, a4
80000fdc: 33 37 c8 02  	mulhu	a4, a6, a2
80000fe0: 13 57 27 00  	srli	a4, a4, 2
80000fe4: 33 07 d7 02  	mul	a4, a4, a3
80000fe8: 33 07 e8 40  	sub	a4, a6, a4
80000fec: 53 07 07 d2  	fcvt.d.w	fa4, a4
80000ff0: 33 b7 c8 02  	mulhu	a4, a7, a2
80000ff4: 13 57 27 00  	srli	a4, a4, 2
80000ff8: 33 07 d7 02  	mul	a4, a4, a3
80000ffc: 33 87 e8 40  	sub	a4, a7, a4
80001000: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001004: 33 b7 c2 02  	mulhu	a4, t0, a2
80001008: 13 57 27 00  	srli	a4, a4, 2
8000100c: 33 07 d7 02  	mul	a4, a4, a3
80001010: 33 87 e2 40  	sub	a4, t0, a4
80001014: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001018: 33 b7 c3 02  	mulhu	a4, t2, a2
8000101c: 13 57 27 00  	srli	a4, a4, 2
80001020: 33 07 d7 02  	mul	a4, a4, a3
80001024: 33 87 e3 40  	sub	a4, t2, a4
80001028: d3 08 07 d2  	fcvt.d.w	fa7, a4
8000102c: 33 b7 ce 02  	mulhu	a4, t4, a2
80001030: 13 57 27 00  	srli	a4, a4, 2
80001034: 33 07 d7 02  	mul	a4, a4, a3
80001038: 33 87 ee 40  	sub	a4, t4, a4
8000103c: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001040: 33 b7 cf 02  	mulhu	a4, t6, a2
80001044: 13 57 27 00  	srli	a4, a4, 2
80001048: 33 07 d7 02  	mul	a4, a4, a3
8000104c: 33 87 ef 40  	sub	a4, t6, a4
80001050: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001054: 33 b7 c9 02  	mulhu	a4, s3, a2
80001058: 13 57 27 00  	srli	a4, a4, 2
8000105c: 33 07 d7 02  	mul	a4, a4, a3
80001060: 33 87 e9 40  	sub	a4, s3, a4
80001064: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001068: 33 b7 cb 02  	mulhu	a4, s7, a2
8000106c: 13 57 27 00  	srli	a4, a4, 2
80001070: 33 07 d7 02  	mul	a4, a4, a3
80001074: 33 87 eb 40  	sub	a4, s7, a4
80001078: d3 0f 07 d2  	fcvt.d.w	ft11, a4
8000107c: 33 37 c4 02  	mulhu	a4, s0, a2
80001080: 13 57 27 00  	srli	a4, a4, 2
80001084: 33 07 57 03  	mul	a4, a4, s5
80001088: 33 07 e4 00  	add	a4, s0, a4
8000108c: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001090: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001094: 27 bc 45 fa  	fsd	ft4, -72(a1)
80001098: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
8000109c: 27 b0 45 fc  	fsd	ft4, -64(a1)
800010a0: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800010a4: 27 b4 45 fc  	fsd	ft4, -56(a1)
800010a8: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800010ac: 27 b8 45 fc  	fsd	ft4, -48(a1)
800010b0: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800010b4: 27 bc 45 fc  	fsd	ft4, -40(a1)
800010b8: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800010bc: 27 b0 45 fe  	fsd	ft4, -32(a1)
800010c0: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800010c4: 27 b4 45 fe  	fsd	ft4, -24(a1)
800010c8: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800010cc: 27 b8 45 fe  	fsd	ft4, -16(a1)
800010d0: 53 72 37 12  	fmul.d	ft4, fa4, ft3
800010d4: 27 bc 45 fe  	fsd	ft4, -8(a1)
800010d8: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
800010dc: 27 b0 45 00  	fsd	ft4, 0(a1)
800010e0: 53 72 38 12  	fmul.d	ft4, fa6, ft3
800010e4: 27 b4 45 00  	fsd	ft4, 8(a1)
800010e8: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
800010ec: 27 b8 45 00  	fsd	ft4, 16(a1)
800010f0: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
800010f4: 27 bc 45 00  	fsd	ft4, 24(a1)
800010f8: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
800010fc: 27 b0 45 02  	fsd	ft4, 32(a1)
80001100: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001104: 27 b4 45 02  	fsd	ft4, 40(a1)
80001108: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000110c: 27 b8 45 02  	fsd	ft4, 48(a1)
80001110: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001114: 27 bc 45 02  	fsd	ft4, 56(a1)
80001118: 23 a2 05 04  	sw	zero, 68(a1)
8000111c: 23 a0 05 04  	sw	zero, 64(a1)
;   for (i = 0; i < nk; i++)
80001120: 13 05 15 00  	addi	a0, a0, 1
80001124: 13 04 14 01  	addi	s0, s0, 17
80001128: 93 84 24 00  	addi	s1, s1, 2
8000112c: 93 87 37 00  	addi	a5, a5, 3
80001130: 93 8b 0b 01  	addi	s7, s7, 16
80001134: 13 0a 4a 00  	addi	s4, s4, 4
80001138: 93 89 f9 00  	addi	s3, s3, 15
8000113c: 13 09 59 00  	addi	s2, s2, 5
80001140: 93 8f ef 00  	addi	t6, t6, 14
80001144: 13 0f 6f 00  	addi	t5, t5, 6
80001148: 93 8e de 00  	addi	t4, t4, 13
8000114c: 13 0e 7e 00  	addi	t3, t3, 7
80001150: 93 83 c3 00  	addi	t2, t2, 12
80001154: 13 03 83 00  	addi	t1, t1, 8
80001158: 93 82 b2 00  	addi	t0, t0, 11
8000115c: 93 85 05 09  	addi	a1, a1, 144
80001160: 93 88 a8 00  	addi	a7, a7, 10
80001164: 13 08 98 00  	addi	a6, a6, 9
80001168: e3 1a 64 dd  	bne	s0, s6, 0x80000f3c <.LBB0_130+0x314>
8000116c: 23 2e b1 01  	sw	s11, 28(sp)
80001170: 23 28 a1 01  	sw	s10, 16(sp)
;   for (i = 0; i < nj; i++)
80001174: 13 d5 4c 01  	srli	a0, s9, 20
80001178: 33 35 a0 00  	snez	a0, a0
8000117c: b7 f5 11 00  	lui	a1, 287
80001180: 93 85 95 28  	addi	a1, a1, 649
80001184: b3 b5 bc 00  	sltu	a1, s9, a1
80001188: 33 75 b5 00  	and	a0, a0, a1

8000118c <.LBB0_131>:
8000118c: 97 42 00 00  	auipc	t0, 4
80001190: 93 82 c2 79  	addi	t0, t0, 1948
80001194: 23 24 91 01  	sw	s9, 8(sp)
80001198: 63 02 05 4c  	beqz	a0, 0x8000165c <.LBB0_131+0x4d0>
8000119c: 13 07 00 00  	mv	a4, zero
800011a0: 93 04 00 00  	mv	s1, zero
800011a4: 13 0a 00 00  	mv	s4, zero
800011a8: 93 07 00 00  	mv	a5, zero
800011ac: 13 04 00 00  	mv	s0, zero
800011b0: 13 05 80 00  	addi	a0, zero, 8
800011b4: 13 08 70 01  	addi	a6, zero, 23
;   for (i = 0; i < nj; i++)
800011b8: 93 06 00 04  	addi	a3, zero, 64
800011bc: 13 06 00 0c  	addi	a2, zero, 192
800011c0: ab 20 d8 00  	scfgw	a6, a3
800011c4: ab 20 c5 00  	scfgw	a0, a2
800011c8: 13 08 10 01  	addi	a6, zero, 17
800011cc: 93 06 00 06  	addi	a3, zero, 96
800011d0: 13 06 00 0e  	addi	a2, zero, 224
800011d4: ab 20 d8 00  	scfgw	a6, a3
800011d8: ab 20 c5 00  	scfgw	a0, a2
800011dc: 13 05 00 02  	addi	a0, zero, 32
800011e0: ab 20 a0 00  	scfgw	zero, a0
800011e4: 2b a0 0c 3a  	scfgwi	s9, 928
800011e8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800011ec: 13 09 10 00  	addi	s2, zero, 1
800011f0: 37 b5 aa aa  	lui	a0, 699051
800011f4: 93 06 b5 aa  	addi	a3, a0, -1365
800011f8: 87 b1 02 00  	fld	ft3, 0(t0)
800011fc: 13 05 10 00  	addi	a0, zero, 1
80001200: 93 05 10 00  	addi	a1, zero, 1
80001204: 13 08 10 00  	addi	a6, zero, 1
80001208: 13 0d 10 00  	addi	s10, zero, 1
8000120c: 13 06 10 00  	addi	a2, zero, 1
80001210: 23 2e c1 06  	sw	a2, 124(sp)
80001214: 13 06 10 00  	addi	a2, zero, 1
80001218: 23 2c c1 06  	sw	a2, 120(sp)
8000121c: 13 06 10 00  	addi	a2, zero, 1
80001220: 23 2a c1 06  	sw	a2, 116(sp)
80001224: 13 06 10 00  	addi	a2, zero, 1
80001228: 23 28 c1 06  	sw	a2, 112(sp)
8000122c: 93 08 10 00  	addi	a7, zero, 1
80001230: 13 06 10 00  	addi	a2, zero, 1
80001234: 23 26 c1 06  	sw	a2, 108(sp)
80001238: 13 06 10 00  	addi	a2, zero, 1
8000123c: 23 24 c1 06  	sw	a2, 104(sp)
80001240: 13 06 10 00  	addi	a2, zero, 1
80001244: 23 22 c1 06  	sw	a2, 100(sp)
80001248: 13 06 10 00  	addi	a2, zero, 1
8000124c: 23 20 c1 06  	sw	a2, 96(sp)
80001250: 13 06 10 00  	addi	a2, zero, 1
80001254: 23 2e c1 04  	sw	a2, 92(sp)
80001258: 13 06 10 00  	addi	a2, zero, 1
8000125c: 23 2c c1 04  	sw	a2, 88(sp)
80001260: 13 06 10 00  	addi	a2, zero, 1
80001264: 23 2a c1 04  	sw	a2, 84(sp)
80001268: 13 06 10 00  	addi	a2, zero, 1
8000126c: 23 28 c1 04  	sw	a2, 80(sp)
80001270: 13 06 10 00  	addi	a2, zero, 1
80001274: 23 26 c1 04  	sw	a2, 76(sp)
80001278: 13 06 10 00  	addi	a2, zero, 1
8000127c: 23 24 c1 04  	sw	a2, 72(sp)
80001280: 13 06 10 00  	addi	a2, zero, 1
80001284: 23 22 c1 04  	sw	a2, 68(sp)
80001288: 13 06 10 00  	addi	a2, zero, 1
8000128c: 23 20 c1 04  	sw	a2, 64(sp)
80001290: 13 06 10 00  	addi	a2, zero, 1
80001294: 23 2e c1 02  	sw	a2, 60(sp)
80001298: 23 26 01 03  	sw	a6, 44(sp)
8000129c: 23 28 b1 02  	sw	a1, 48(sp)
800012a0: 23 2a a1 02  	sw	a0, 52(sp)
800012a4: 23 2c 41 03  	sw	s4, 56(sp)
800012a8: 93 00 09 00  	mv	ra, s2
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
800012ac: 33 39 d7 02  	mulhu	s2, a4, a3
800012b0: 13 56 49 00  	srli	a2, s2, 4
800012b4: 13 89 00 00  	mv	s2, ra
800012b8: 03 2a 81 03  	lw	s4, 56(sp)
800012bc: 93 00 80 01  	addi	ra, zero, 24
800012c0: 33 06 16 02  	mul	a2, a2, ra
800012c4: 33 06 c9 40  	sub	a2, s2, a2
800012c8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800012cc: 33 b6 d4 02  	mulhu	a2, s1, a3
800012d0: 13 56 46 00  	srli	a2, a2, 4
800012d4: 33 06 16 02  	mul	a2, a2, ra
800012d8: 33 06 c5 40  	sub	a2, a0, a2
800012dc: d3 02 06 d2  	fcvt.d.w	ft5, a2
800012e0: 33 b6 d5 02  	mulhu	a2, a1, a3
800012e4: 13 56 46 00  	srli	a2, a2, 4
800012e8: 33 06 16 02  	mul	a2, a2, ra
800012ec: 33 86 c5 40  	sub	a2, a1, a2
800012f0: 53 03 06 d2  	fcvt.d.w	ft6, a2
800012f4: 33 36 da 02  	mulhu	a2, s4, a3
800012f8: 13 56 46 00  	srli	a2, a2, 4
800012fc: 33 06 16 02  	mul	a2, a2, ra
80001300: 33 06 c8 40  	sub	a2, a6, a2
80001304: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001308: 33 36 dd 02  	mulhu	a2, s10, a3
8000130c: 13 56 46 00  	srli	a2, a2, 4
80001310: 33 06 16 02  	mul	a2, a2, ra
80001314: 33 06 cd 40  	sub	a2, s10, a2
80001318: 53 05 06 d2  	fcvt.d.w	fa0, a2
8000131c: 33 b6 d7 02  	mulhu	a2, a5, a3
80001320: 13 56 46 00  	srli	a2, a2, 4
80001324: 33 06 16 02  	mul	a2, a2, ra
80001328: 03 25 c1 07  	lw	a0, 124(sp)
8000132c: 33 06 c5 40  	sub	a2, a0, a2
80001330: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001334: 83 2a 81 07  	lw	s5, 120(sp)
80001338: 33 b6 da 02  	mulhu	a2, s5, a3
8000133c: 13 56 46 00  	srli	a2, a2, 4
80001340: 33 06 16 02  	mul	a2, a2, ra
80001344: 33 86 ca 40  	sub	a2, s5, a2
80001348: 53 06 06 d2  	fcvt.d.w	fa2, a2
8000134c: 03 2b 41 07  	lw	s6, 116(sp)
80001350: 33 36 db 02  	mulhu	a2, s6, a3
80001354: 13 56 46 00  	srli	a2, a2, 4
80001358: 33 06 16 02  	mul	a2, a2, ra
8000135c: 33 06 cb 40  	sub	a2, s6, a2
80001360: d3 06 06 d2  	fcvt.d.w	fa3, a2
80001364: 83 2b 01 07  	lw	s7, 112(sp)
80001368: 33 b6 db 02  	mulhu	a2, s7, a3
8000136c: 13 56 46 00  	srli	a2, a2, 4
80001370: 33 06 16 02  	mul	a2, a2, ra
80001374: 33 86 cb 40  	sub	a2, s7, a2
80001378: 53 07 06 d2  	fcvt.d.w	fa4, a2
8000137c: 33 36 d4 02  	mulhu	a2, s0, a3
80001380: 13 56 46 00  	srli	a2, a2, 4
80001384: 33 06 16 02  	mul	a2, a2, ra
80001388: 33 86 c8 40  	sub	a2, a7, a2
8000138c: d3 07 06 d2  	fcvt.d.w	fa5, a2
80001390: 03 2c c1 06  	lw	s8, 108(sp)
80001394: 33 36 dc 02  	mulhu	a2, s8, a3
80001398: 13 56 46 00  	srli	a2, a2, 4
8000139c: 33 06 16 02  	mul	a2, a2, ra
800013a0: 33 06 cc 40  	sub	a2, s8, a2
800013a4: 53 08 06 d2  	fcvt.d.w	fa6, a2
800013a8: 83 2c 81 06  	lw	s9, 104(sp)
800013ac: 33 b6 dc 02  	mulhu	a2, s9, a3
800013b0: 13 56 46 00  	srli	a2, a2, 4
800013b4: 33 06 16 02  	mul	a2, a2, ra
800013b8: 33 86 cc 40  	sub	a2, s9, a2
800013bc: d3 08 06 d2  	fcvt.d.w	fa7, a2
800013c0: 03 28 41 06  	lw	a6, 100(sp)
800013c4: 33 36 d8 02  	mulhu	a2, a6, a3
800013c8: 13 56 46 00  	srli	a2, a2, 4
800013cc: 33 06 16 02  	mul	a2, a2, ra
800013d0: 33 06 c8 40  	sub	a2, a6, a2
800013d4: 53 0e 06 d2  	fcvt.d.w	ft8, a2
800013d8: 83 22 01 06  	lw	t0, 96(sp)
800013dc: 33 b6 d2 02  	mulhu	a2, t0, a3
800013e0: 13 56 46 00  	srli	a2, a2, 4
800013e4: 33 06 16 02  	mul	a2, a2, ra
800013e8: 33 86 c2 40  	sub	a2, t0, a2
800013ec: d3 0e 06 d2  	fcvt.d.w	ft9, a2
800013f0: 83 29 c1 05  	lw	s3, 92(sp)
800013f4: 33 b6 d9 02  	mulhu	a2, s3, a3
800013f8: 13 56 46 00  	srli	a2, a2, 4
800013fc: 33 06 16 02  	mul	a2, a2, ra
80001400: 33 86 c9 40  	sub	a2, s3, a2
80001404: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80001408: 83 23 81 05  	lw	t2, 88(sp)
8000140c: 33 b6 d3 02  	mulhu	a2, t2, a3
80001410: 13 56 46 00  	srli	a2, a2, 4
80001414: 33 06 16 02  	mul	a2, a2, ra
80001418: 33 86 c3 40  	sub	a2, t2, a2
8000141c: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80001420: 03 2e 41 05  	lw	t3, 84(sp)
80001424: 33 36 de 02  	mulhu	a2, t3, a3
80001428: 13 56 46 00  	srli	a2, a2, 4
8000142c: 33 06 16 02  	mul	a2, a2, ra
80001430: 33 06 ce 40  	sub	a2, t3, a2
80001434: 53 04 06 d2  	fcvt.d.w	fs0, a2
80001438: 93 85 08 00  	mv	a1, a7
8000143c: 83 28 01 05  	lw	a7, 80(sp)
80001440: 33 b6 d8 02  	mulhu	a2, a7, a3
80001444: 13 56 46 00  	srli	a2, a2, 4
80001448: 33 06 16 02  	mul	a2, a2, ra
8000144c: 33 86 c8 40  	sub	a2, a7, a2
80001450: d3 04 06 d2  	fcvt.d.w	fs1, a2
80001454: 83 2e c1 04  	lw	t4, 76(sp)
80001458: 33 b6 de 02  	mulhu	a2, t4, a3
8000145c: 13 56 46 00  	srli	a2, a2, 4
80001460: 33 06 16 02  	mul	a2, a2, ra
80001464: 33 86 ce 40  	sub	a2, t4, a2
80001468: 53 09 06 d2  	fcvt.d.w	fs2, a2
8000146c: 03 2f 81 04  	lw	t5, 72(sp)
80001470: 33 36 df 02  	mulhu	a2, t5, a3
80001474: 13 56 46 00  	srli	a2, a2, 4
80001478: 33 06 16 02  	mul	a2, a2, ra
8000147c: 33 06 cf 40  	sub	a2, t5, a2
80001480: d3 09 06 d2  	fcvt.d.w	fs3, a2
80001484: 03 23 41 04  	lw	t1, 68(sp)
80001488: 33 36 d3 02  	mulhu	a2, t1, a3
8000148c: 13 56 46 00  	srli	a2, a2, 4
80001490: 33 06 16 02  	mul	a2, a2, ra
80001494: 33 06 c3 40  	sub	a2, t1, a2
80001498: 53 0a 06 d2  	fcvt.d.w	fs4, a2
8000149c: 83 2f 01 04  	lw	t6, 64(sp)
800014a0: 33 b6 df 02  	mulhu	a2, t6, a3
800014a4: 13 56 46 00  	srli	a2, a2, 4
800014a8: 33 06 16 02  	mul	a2, a2, ra
800014ac: 33 86 cf 40  	sub	a2, t6, a2
800014b0: d3 0a 06 d2  	fcvt.d.w	fs5, a2
800014b4: 83 2d c1 03  	lw	s11, 60(sp)
800014b8: 33 b6 dd 02  	mulhu	a2, s11, a3
800014bc: 13 56 46 00  	srli	a2, a2, 4
800014c0: 33 06 16 02  	mul	a2, a2, ra
800014c4: 33 86 cd 40  	sub	a2, s11, a2
800014c8: 53 0b 06 d2  	fcvt.d.w	fs6, a2
800014cc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800014d0: 53 00 42 22  	fmv.d	ft0, ft4
800014d4: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800014d8: 53 00 42 22  	fmv.d	ft0, ft4
800014dc: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800014e0: 53 00 42 22  	fmv.d	ft0, ft4
800014e4: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800014e8: 53 00 42 22  	fmv.d	ft0, ft4
800014ec: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800014f0: 53 00 42 22  	fmv.d	ft0, ft4
800014f4: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800014f8: 53 00 42 22  	fmv.d	ft0, ft4
800014fc: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001500: 53 00 42 22  	fmv.d	ft0, ft4
80001504: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001508: 53 00 42 22  	fmv.d	ft0, ft4
8000150c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001510: 53 00 42 22  	fmv.d	ft0, ft4
80001514: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001518: 53 00 42 22  	fmv.d	ft0, ft4
8000151c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001520: 53 00 42 22  	fmv.d	ft0, ft4
80001524: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001528: 53 00 42 22  	fmv.d	ft0, ft4
8000152c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001530: 53 00 42 22  	fmv.d	ft0, ft4
80001534: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001538: 53 00 42 22  	fmv.d	ft0, ft4
8000153c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001540: 53 00 42 22  	fmv.d	ft0, ft4
80001544: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001548: 53 00 42 22  	fmv.d	ft0, ft4
8000154c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001550: 53 00 42 22  	fmv.d	ft0, ft4
80001554: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001558: 53 00 42 22  	fmv.d	ft0, ft4
8000155c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001560: 53 00 42 22  	fmv.d	ft0, ft4
80001564: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001568: 53 00 42 22  	fmv.d	ft0, ft4
8000156c: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001570: 53 00 42 22  	fmv.d	ft0, ft4
80001574: 53 80 31 22  	fmv.d	ft0, ft3
80001578: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
8000157c: 53 00 42 22  	fmv.d	ft0, ft4
80001580: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80001584: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nj; i++)
80001588: 93 8d ad 01  	addi	s11, s11, 26
8000158c: 93 8f 9f 01  	addi	t6, t6, 25
80001590: 23 20 f1 05  	sw	t6, 64(sp)
80001594: 13 03 73 01  	addi	t1, t1, 23
80001598: 23 22 61 04  	sw	t1, 68(sp)
8000159c: 13 0f 6f 01  	addi	t5, t5, 22
800015a0: 23 24 e1 05  	sw	t5, 72(sp)
800015a4: 93 8e 5e 01  	addi	t4, t4, 21
800015a8: 23 26 d1 05  	sw	t4, 76(sp)
800015ac: 93 88 48 01  	addi	a7, a7, 20
800015b0: 23 28 11 05  	sw	a7, 80(sp)
800015b4: 93 88 05 00  	mv	a7, a1
800015b8: 13 0e 3e 01  	addi	t3, t3, 19
800015bc: 23 2a c1 05  	sw	t3, 84(sp)
800015c0: 93 83 23 01  	addi	t2, t2, 18
800015c4: 23 2c 71 04  	sw	t2, 88(sp)
800015c8: 93 89 19 01  	addi	s3, s3, 17
800015cc: 23 2e 31 05  	sw	s3, 92(sp)
800015d0: 93 82 02 01  	addi	t0, t0, 16
800015d4: 23 20 51 06  	sw	t0, 96(sp)
800015d8: 13 08 f8 00  	addi	a6, a6, 15
800015dc: 23 22 01 07  	sw	a6, 100(sp)
800015e0: 03 28 c1 02  	lw	a6, 44(sp)
800015e4: 93 8c ec 00  	addi	s9, s9, 14
800015e8: 23 24 91 07  	sw	s9, 104(sp)
800015ec: 13 0c dc 00  	addi	s8, s8, 13
800015f0: 23 26 81 07  	sw	s8, 108(sp)
800015f4: 93 88 c5 00  	addi	a7, a1, 12
800015f8: 13 04 c4 00  	addi	s0, s0, 12
800015fc: 93 8b bb 00  	addi	s7, s7, 11
80001600: 23 28 71 07  	sw	s7, 112(sp)
80001604: 13 0b ab 00  	addi	s6, s6, 10
80001608: 23 2a 61 07  	sw	s6, 116(sp)
8000160c: 93 8a 9a 00  	addi	s5, s5, 9
80001610: 23 2c 51 07  	sw	s5, 120(sp)
80001614: 13 05 85 00  	addi	a0, a0, 8
80001618: 23 2e a1 06  	sw	a0, 124(sp)
8000161c: 83 25 01 03  	lw	a1, 48(sp)
80001620: 03 25 41 03  	lw	a0, 52(sp)
80001624: 93 87 87 00  	addi	a5, a5, 8
80001628: 13 0d 7d 00  	addi	s10, s10, 7
8000162c: 13 08 68 00  	addi	a6, a6, 6
80001630: 13 0a 6a 00  	addi	s4, s4, 6
80001634: 93 85 55 00  	addi	a1, a1, 5
80001638: 13 05 45 00  	addi	a0, a0, 4
8000163c: 93 84 44 00  	addi	s1, s1, 4
80001640: 13 09 39 00  	addi	s2, s2, 3
80001644: 13 07 37 00  	addi	a4, a4, 3
80001648: 13 06 50 1d  	addi	a2, zero, 469
8000164c: 23 2e b1 03  	sw	s11, 60(sp)
80001650: e3 94 cd c4  	bne	s11, a2, 0x80001298 <.LBB0_131+0x10c>
80001654: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001658: 6f 00 00 4d  	j	0x80001b28 <.LBB0_131+0x99c>
8000165c: 93 07 00 00  	mv	a5, zero
80001660: 93 04 00 00  	mv	s1, zero
80001664: 13 04 00 00  	mv	s0, zero
80001668: 13 07 00 00  	mv	a4, zero
8000166c: 93 06 00 00  	mv	a3, zero
;   for (i = 0; i < nj; i++)
80001670: 13 86 0c 06  	addi	a2, s9, 96
80001674: 13 05 10 00  	addi	a0, zero, 1
80001678: 23 26 a1 06  	sw	a0, 108(sp)
8000167c: 37 b5 aa aa  	lui	a0, 699051
80001680: 93 0c b5 aa  	addi	s9, a0, -1365
80001684: 87 b1 02 00  	fld	ft3, 0(t0)
80001688: b7 55 a5 3f  	lui	a1, 260693
8000168c: 93 85 55 55  	addi	a1, a1, 1365
80001690: 23 2c b1 00  	sw	a1, 24(sp)
80001694: b7 55 55 55  	lui	a1, 349525
80001698: 93 85 55 55  	addi	a1, a1, 1365
8000169c: 23 2a b1 00  	sw	a1, 20(sp)
800016a0: 93 05 10 00  	addi	a1, zero, 1
800016a4: 23 24 b1 06  	sw	a1, 104(sp)
800016a8: 93 05 10 00  	addi	a1, zero, 1
800016ac: 23 22 b1 06  	sw	a1, 100(sp)
800016b0: 93 05 10 00  	addi	a1, zero, 1
800016b4: 23 20 b1 06  	sw	a1, 96(sp)
800016b8: 93 05 10 00  	addi	a1, zero, 1
800016bc: 23 2e b1 04  	sw	a1, 92(sp)
800016c0: 13 0b 10 00  	addi	s6, zero, 1
800016c4: 93 05 10 00  	addi	a1, zero, 1
800016c8: 23 2c b1 04  	sw	a1, 88(sp)
800016cc: 93 05 10 00  	addi	a1, zero, 1
800016d0: 23 2a b1 04  	sw	a1, 84(sp)
800016d4: 93 05 10 00  	addi	a1, zero, 1
800016d8: 23 28 b1 04  	sw	a1, 80(sp)
800016dc: 93 05 10 00  	addi	a1, zero, 1
800016e0: 23 26 b1 04  	sw	a1, 76(sp)
800016e4: 93 05 10 00  	addi	a1, zero, 1
800016e8: 23 24 b1 04  	sw	a1, 72(sp)
800016ec: 93 05 10 00  	addi	a1, zero, 1
800016f0: 23 22 b1 04  	sw	a1, 68(sp)
800016f4: 93 05 10 00  	addi	a1, zero, 1
800016f8: 23 20 b1 04  	sw	a1, 64(sp)
800016fc: 93 05 10 00  	addi	a1, zero, 1
80001700: 23 28 b1 06  	sw	a1, 112(sp)
80001704: 93 05 10 00  	addi	a1, zero, 1
80001708: 23 2e b1 02  	sw	a1, 60(sp)
8000170c: 93 05 10 00  	addi	a1, zero, 1
80001710: 23 2c b1 02  	sw	a1, 56(sp)
80001714: 93 05 10 00  	addi	a1, zero, 1
80001718: 23 2a b1 02  	sw	a1, 52(sp)
8000171c: 93 0a 10 00  	addi	s5, zero, 1
80001720: 93 05 10 00  	addi	a1, zero, 1
80001724: 23 28 b1 02  	sw	a1, 48(sp)
80001728: 93 05 10 00  	addi	a1, zero, 1
8000172c: 23 26 b1 02  	sw	a1, 44(sp)
80001730: 93 05 10 00  	addi	a1, zero, 1
80001734: 23 2e b1 06  	sw	a1, 124(sp)
80001738: 93 05 10 00  	addi	a1, zero, 1
8000173c: 23 2c b1 06  	sw	a1, 120(sp)
80001740: 93 05 10 00  	addi	a1, zero, 1
;   for (i = 0; i < nj; i++)
80001744: 23 24 b1 02  	sw	a1, 40(sp)
80001748: 23 22 51 03  	sw	s5, 36(sp)
8000174c: 23 2a d1 06  	sw	a3, 116(sp)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80001750: 83 26 41 07  	lw	a3, 116(sp)
80001754: b3 b6 96 03  	mulhu	a3, a3, s9
80001758: 93 d6 46 00  	srli	a3, a3, 4
8000175c: 93 05 80 01  	addi	a1, zero, 24
80001760: b3 86 b6 02  	mul	a3, a3, a1
80001764: 13 08 0b 00  	mv	a6, s6
80001768: 03 25 81 07  	lw	a0, 120(sp)
8000176c: 33 0b d5 40  	sub	s6, a0, a3
80001770: 53 02 0b d2  	fcvt.d.w	ft4, s6
80001774: 13 0b 08 00  	mv	s6, a6
80001778: b3 36 97 03  	mulhu	a3, a4, s9
8000177c: 93 d6 46 00  	srli	a3, a3, 4
80001780: b3 86 b6 02  	mul	a3, a3, a1
80001784: 03 25 c1 07  	lw	a0, 124(sp)
80001788: b3 06 d5 40  	sub	a3, a0, a3
8000178c: d3 82 06 d2  	fcvt.d.w	ft5, a3
80001790: 83 2f 01 03  	lw	t6, 48(sp)
80001794: b3 b6 9f 03  	mulhu	a3, t6, s9
80001798: 93 d6 46 00  	srli	a3, a3, 4
8000179c: b3 86 b6 02  	mul	a3, a3, a1
800017a0: b3 86 df 40  	sub	a3, t6, a3
800017a4: 53 83 06 d2  	fcvt.d.w	ft6, a3
800017a8: b3 36 94 03  	mulhu	a3, s0, s9
800017ac: 93 d6 46 00  	srli	a3, a3, 4
800017b0: b3 86 b6 02  	mul	a3, a3, a1
800017b4: b3 86 da 40  	sub	a3, s5, a3
800017b8: d3 83 06 d2  	fcvt.d.w	ft7, a3
800017bc: 03 29 81 03  	lw	s2, 56(sp)
800017c0: b3 36 99 03  	mulhu	a3, s2, s9
800017c4: 93 d6 46 00  	srli	a3, a3, 4
800017c8: b3 86 b6 02  	mul	a3, a3, a1
800017cc: b3 06 d9 40  	sub	a3, s2, a3
800017d0: 53 85 06 d2  	fcvt.d.w	fa0, a3
800017d4: b3 b6 94 03  	mulhu	a3, s1, s9
800017d8: 93 d6 46 00  	srli	a3, a3, 4
800017dc: b3 86 b6 02  	mul	a3, a3, a1
800017e0: 03 25 01 07  	lw	a0, 112(sp)
800017e4: b3 06 d5 40  	sub	a3, a0, a3
800017e8: d3 85 06 d2  	fcvt.d.w	fa1, a3
800017ec: 03 2c 41 04  	lw	s8, 68(sp)
800017f0: b3 36 9c 03  	mulhu	a3, s8, s9
800017f4: 93 d6 46 00  	srli	a3, a3, 4
800017f8: b3 86 b6 02  	mul	a3, a3, a1
800017fc: b3 06 dc 40  	sub	a3, s8, a3
80001800: 53 86 06 d2  	fcvt.d.w	fa2, a3
80001804: 03 2f c1 04  	lw	t5, 76(sp)
80001808: b3 36 9f 03  	mulhu	a3, t5, s9
8000180c: 93 d6 46 00  	srli	a3, a3, 4
80001810: b3 86 b6 02  	mul	a3, a3, a1
80001814: b3 06 df 40  	sub	a3, t5, a3
80001818: d3 86 06 d2  	fcvt.d.w	fa3, a3
8000181c: 83 20 41 05  	lw	ra, 84(sp)
80001820: b3 b6 90 03  	mulhu	a3, ra, s9
80001824: 93 d6 46 00  	srli	a3, a3, 4
80001828: b3 86 b6 02  	mul	a3, a3, a1
8000182c: b3 86 d0 40  	sub	a3, ra, a3
80001830: 53 87 06 d2  	fcvt.d.w	fa4, a3
80001834: b3 b6 97 03  	mulhu	a3, a5, s9
80001838: 93 d6 46 00  	srli	a3, a3, 4
8000183c: b3 86 b6 02  	mul	a3, a3, a1
80001840: b3 06 d8 40  	sub	a3, a6, a3
80001844: d3 87 06 d2  	fcvt.d.w	fa5, a3
80001848: 83 22 01 06  	lw	t0, 96(sp)
8000184c: b3 b6 92 03  	mulhu	a3, t0, s9
80001850: 93 d6 46 00  	srli	a3, a3, 4
80001854: b3 86 b6 02  	mul	a3, a3, a1
80001858: b3 86 d2 40  	sub	a3, t0, a3
8000185c: 53 88 06 d2  	fcvt.d.w	fa6, a3
80001860: 03 2d c1 06  	lw	s10, 108(sp)
80001864: b3 36 9d 03  	mulhu	a3, s10, s9
80001868: 93 d6 46 00  	srli	a3, a3, 4
8000186c: b3 86 b6 02  	mul	a3, a3, a1
80001870: b3 06 dd 40  	sub	a3, s10, a3
80001874: d3 88 06 d2  	fcvt.d.w	fa7, a3
80001878: 83 2d 81 06  	lw	s11, 104(sp)
8000187c: b3 b6 9d 03  	mulhu	a3, s11, s9
80001880: 93 d6 46 00  	srli	a3, a3, 4
80001884: b3 86 b6 02  	mul	a3, a3, a1
80001888: b3 86 dd 40  	sub	a3, s11, a3
8000188c: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80001890: 03 28 41 06  	lw	a6, 100(sp)
80001894: b3 36 98 03  	mulhu	a3, a6, s9
80001898: 93 d6 46 00  	srli	a3, a3, 4
8000189c: b3 86 b6 02  	mul	a3, a3, a1
800018a0: b3 06 d8 40  	sub	a3, a6, a3
800018a4: d3 8e 06 d2  	fcvt.d.w	ft9, a3
800018a8: 83 29 c1 05  	lw	s3, 92(sp)
800018ac: b3 b6 99 03  	mulhu	a3, s3, s9
800018b0: 93 d6 46 00  	srli	a3, a3, 4
800018b4: b3 86 b6 02  	mul	a3, a3, a1
800018b8: b3 86 d9 40  	sub	a3, s3, a3
800018bc: 53 8f 06 d2  	fcvt.d.w	ft10, a3
800018c0: 83 23 81 05  	lw	t2, 88(sp)
800018c4: b3 b6 93 03  	mulhu	a3, t2, s9
800018c8: 93 d6 46 00  	srli	a3, a3, 4
800018cc: b3 86 b6 02  	mul	a3, a3, a1
800018d0: b3 86 d3 40  	sub	a3, t2, a3
800018d4: d3 8f 06 d2  	fcvt.d.w	ft11, a3
800018d8: 83 2e 01 05  	lw	t4, 80(sp)
800018dc: b3 b6 9e 03  	mulhu	a3, t4, s9
800018e0: 93 d6 46 00  	srli	a3, a3, 4
800018e4: b3 86 b6 02  	mul	a3, a3, a1
800018e8: b3 86 de 40  	sub	a3, t4, a3
800018ec: 53 84 06 d2  	fcvt.d.w	fs0, a3
800018f0: 83 2b 81 04  	lw	s7, 72(sp)
800018f4: b3 b6 9b 03  	mulhu	a3, s7, s9
800018f8: 93 d6 46 00  	srli	a3, a3, 4
800018fc: b3 86 b6 02  	mul	a3, a3, a1
80001900: b3 86 db 40  	sub	a3, s7, a3
80001904: d3 84 06 d2  	fcvt.d.w	fs1, a3
80001908: 03 2a 01 04  	lw	s4, 64(sp)
8000190c: b3 36 9a 03  	mulhu	a3, s4, s9
80001910: 93 d6 46 00  	srli	a3, a3, 4
80001914: b3 86 b6 02  	mul	a3, a3, a1
80001918: b3 06 da 40  	sub	a3, s4, a3
8000191c: 53 89 06 d2  	fcvt.d.w	fs2, a3
80001920: 03 2e c1 03  	lw	t3, 60(sp)
80001924: b3 36 9e 03  	mulhu	a3, t3, s9
80001928: 93 d6 46 00  	srli	a3, a3, 4
8000192c: b3 86 b6 02  	mul	a3, a3, a1
80001930: b3 06 de 40  	sub	a3, t3, a3
80001934: d3 89 06 d2  	fcvt.d.w	fs3, a3
80001938: 03 23 41 03  	lw	t1, 52(sp)
8000193c: b3 36 93 03  	mulhu	a3, t1, s9
80001940: 93 d6 46 00  	srli	a3, a3, 4
80001944: b3 86 b6 02  	mul	a3, a3, a1
80001948: b3 06 d3 40  	sub	a3, t1, a3
8000194c: 53 8a 06 d2  	fcvt.d.w	fs4, a3
80001950: 83 2a c1 02  	lw	s5, 44(sp)
80001954: b3 b6 9a 03  	mulhu	a3, s5, s9
80001958: 93 d6 46 00  	srli	a3, a3, 4
8000195c: b3 86 b6 02  	mul	a3, a3, a1
80001960: b3 86 da 40  	sub	a3, s5, a3
80001964: d3 8a 06 d2  	fcvt.d.w	fs5, a3
80001968: 83 28 81 02  	lw	a7, 40(sp)
8000196c: b3 b6 98 03  	mulhu	a3, a7, s9
80001970: 93 d6 46 00  	srli	a3, a3, 4
80001974: b3 86 b6 02  	mul	a3, a3, a1
80001978: b3 86 d8 40  	sub	a3, a7, a3
8000197c: 53 8b 06 d2  	fcvt.d.w	fs6, a3
80001980: 83 26 41 07  	lw	a3, 116(sp)
80001984: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001988: 27 30 46 fa  	fsd	ft4, -96(a2)
8000198c: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001990: 27 34 46 fa  	fsd	ft4, -88(a2)
80001994: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001998: 27 38 46 fa  	fsd	ft4, -80(a2)
8000199c: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800019a0: 27 3c 46 fa  	fsd	ft4, -72(a2)
800019a4: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800019a8: 27 30 46 fc  	fsd	ft4, -64(a2)
800019ac: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800019b0: 27 34 46 fc  	fsd	ft4, -56(a2)
800019b4: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800019b8: 27 38 46 fc  	fsd	ft4, -48(a2)
800019bc: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800019c0: 27 3c 46 fc  	fsd	ft4, -40(a2)
800019c4: 53 72 37 12  	fmul.d	ft4, fa4, ft3
800019c8: 27 30 46 fe  	fsd	ft4, -32(a2)
800019cc: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
800019d0: 27 34 46 fe  	fsd	ft4, -24(a2)
800019d4: 53 72 38 12  	fmul.d	ft4, fa6, ft3
800019d8: 27 38 46 fe  	fsd	ft4, -16(a2)
800019dc: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
800019e0: 27 3c 46 fe  	fsd	ft4, -8(a2)
800019e4: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
800019e8: 27 30 46 00  	fsd	ft4, 0(a2)
800019ec: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
800019f0: 27 34 46 00  	fsd	ft4, 8(a2)
800019f4: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
800019f8: 27 38 46 00  	fsd	ft4, 16(a2)
800019fc: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001a00: 27 3c 46 00  	fsd	ft4, 24(a2)
80001a04: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001a08: 27 30 46 02  	fsd	ft4, 32(a2)
80001a0c: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001a10: 27 34 46 02  	fsd	ft4, 40(a2)
80001a14: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001a18: 27 38 46 02  	fsd	ft4, 48(a2)
80001a1c: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001a20: 27 3c 46 02  	fsd	ft4, 56(a2)
80001a24: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001a28: 27 30 46 04  	fsd	ft4, 64(a2)
80001a2c: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80001a30: 27 38 46 04  	fsd	ft4, 80(a2)
80001a34: 83 25 81 01  	lw	a1, 24(sp)
80001a38: 23 26 b6 04  	sw	a1, 76(a2)
80001a3c: 83 25 41 01  	lw	a1, 20(sp)
80001a40: 23 24 b6 04  	sw	a1, 72(a2)
80001a44: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80001a48: 27 3c 46 04  	fsd	ft4, 88(a2)
;   for (i = 0; i < nj; i++)
80001a4c: 93 88 a8 01  	addi	a7, a7, 26
80001a50: 83 25 81 07  	lw	a1, 120(sp)
80001a54: 93 85 35 00  	addi	a1, a1, 3
80001a58: 23 2c b1 06  	sw	a1, 120(sp)
80001a5c: 93 86 36 00  	addi	a3, a3, 3
80001a60: 83 25 c1 07  	lw	a1, 124(sp)
80001a64: 93 85 45 00  	addi	a1, a1, 4
80001a68: 23 2e b1 06  	sw	a1, 124(sp)
80001a6c: 13 07 47 00  	addi	a4, a4, 4
80001a70: 93 8a 9a 01  	addi	s5, s5, 25
80001a74: 23 26 51 03  	sw	s5, 44(sp)
80001a78: 83 2a 41 02  	lw	s5, 36(sp)
80001a7c: 93 8f 5f 00  	addi	t6, t6, 5
80001a80: 23 28 f1 03  	sw	t6, 48(sp)
80001a84: 93 8a 6a 00  	addi	s5, s5, 6
80001a88: 13 04 64 00  	addi	s0, s0, 6
80001a8c: 13 03 73 01  	addi	t1, t1, 23
80001a90: 23 2a 61 02  	sw	t1, 52(sp)
80001a94: 13 09 79 00  	addi	s2, s2, 7
80001a98: 23 2c 21 03  	sw	s2, 56(sp)
80001a9c: 13 0e 6e 01  	addi	t3, t3, 22
80001aa0: 23 2e c1 03  	sw	t3, 60(sp)
80001aa4: 13 05 85 00  	addi	a0, a0, 8
80001aa8: 23 28 a1 06  	sw	a0, 112(sp)
80001aac: 93 84 84 00  	addi	s1, s1, 8
80001ab0: 13 0a 5a 01  	addi	s4, s4, 21
80001ab4: 23 20 41 05  	sw	s4, 64(sp)
80001ab8: 13 0c 9c 00  	addi	s8, s8, 9
80001abc: 23 22 81 05  	sw	s8, 68(sp)
80001ac0: 93 8b 4b 01  	addi	s7, s7, 20
80001ac4: 23 24 71 05  	sw	s7, 72(sp)
80001ac8: 13 0f af 00  	addi	t5, t5, 10
80001acc: 23 26 e1 05  	sw	t5, 76(sp)
80001ad0: 93 8e 3e 01  	addi	t4, t4, 19
80001ad4: 23 28 d1 05  	sw	t4, 80(sp)
80001ad8: 93 80 b0 00  	addi	ra, ra, 11
80001adc: 23 2a 11 04  	sw	ra, 84(sp)
80001ae0: 93 83 23 01  	addi	t2, t2, 18
80001ae4: 23 2c 71 04  	sw	t2, 88(sp)
80001ae8: 13 0b cb 00  	addi	s6, s6, 12
80001aec: 93 87 c7 00  	addi	a5, a5, 12
80001af0: 93 89 19 01  	addi	s3, s3, 17
80001af4: 23 2e 31 05  	sw	s3, 92(sp)
80001af8: 93 82 d2 00  	addi	t0, t0, 13
80001afc: 23 20 51 06  	sw	t0, 96(sp)
80001b00: 13 08 08 01  	addi	a6, a6, 16
80001b04: 23 22 01 07  	sw	a6, 100(sp)
80001b08: 13 06 06 0c  	addi	a2, a2, 192
80001b0c: 93 8d fd 00  	addi	s11, s11, 15
80001b10: 23 24 b1 07  	sw	s11, 104(sp)
80001b14: 13 0d ed 00  	addi	s10, s10, 14
80001b18: 23 26 a1 07  	sw	s10, 108(sp)
80001b1c: 93 05 50 1d  	addi	a1, zero, 469
80001b20: 23 24 11 03  	sw	a7, 40(sp)
80001b24: e3 92 b8 c2  	bne	a7, a1, 0x80001748 <.LBB0_131+0x5bc>
80001b28: 83 20 c1 00  	lw	ra, 12(sp)
;   for (i = 0; i < ni; i++)
80001b2c: 13 d5 40 01  	srli	a0, ra, 20
80001b30: 33 35 a0 00  	snez	a0, a0
80001b34: b7 f5 11 00  	lui	a1, 287
80001b38: 93 85 95 40  	addi	a1, a1, 1033
80001b3c: b3 b5 b0 00  	sltu	a1, ra, a1
80001b40: 33 75 b5 00  	and	a0, a0, a1

80001b44 <.LBB0_132>:
80001b44: 17 46 00 00  	auipc	a2, 4
80001b48: 13 06 c6 de  	addi	a2, a2, -532
80001b4c: 23 2a a1 06  	sw	a0, 116(sp)
80001b50: 63 06 05 3a  	beqz	a0, 0x80001efc <.LBB0_132+0x3b8>
80001b54: 93 08 00 00  	mv	a7, zero
80001b58: 13 03 00 00  	mv	t1, zero
80001b5c: 93 0f 00 00  	mv	t6, zero
80001b60: 13 0a 00 00  	mv	s4, zero
80001b64: 93 0a 00 00  	mv	s5, zero
80001b68: 13 08 00 00  	mv	a6, zero
80001b6c: 93 02 00 00  	mv	t0, zero
80001b70: 93 03 00 00  	mv	t2, zero
80001b74: 13 0e 00 00  	mv	t3, zero
80001b78: 93 0e 00 00  	mv	t4, zero
80001b7c: 13 0f 00 00  	mv	t5, zero
80001b80: 93 09 00 00  	mv	s3, zero
80001b84: 13 0b 00 00  	mv	s6, zero
80001b88: 93 0b 00 00  	mv	s7, zero
80001b8c: 13 0c 00 00  	mv	s8, zero
80001b90: 93 0c 00 00  	mv	s9, zero
80001b94: 93 0d 00 00  	mv	s11, zero
80001b98: 13 09 00 00  	mv	s2, zero
80001b9c: 93 07 00 00  	mv	a5, zero
80001ba0: 93 04 00 00  	mv	s1, zero
80001ba4: 13 07 06 00  	mv	a4, a2
80001ba8: 13 06 00 00  	mv	a2, zero
80001bac: 93 06 00 00  	mv	a3, zero
80001bb0: 13 05 00 00  	mv	a0, zero
80001bb4: 13 04 80 00  	addi	s0, zero, 8
80001bb8: 13 0d 70 01  	addi	s10, zero, 23
;   for (i = 0; i < ni; i++)
80001bbc: 93 05 00 04  	addi	a1, zero, 64
80001bc0: ab 20 bd 00  	scfgw	s10, a1
80001bc4: 93 05 00 0c  	addi	a1, zero, 192
80001bc8: ab 20 b4 00  	scfgw	s0, a1
80001bcc: 13 0d f0 00  	addi	s10, zero, 15
80001bd0: 93 05 00 06  	addi	a1, zero, 96
80001bd4: ab 20 bd 00  	scfgw	s10, a1
80001bd8: 93 05 00 0e  	addi	a1, zero, 224
80001bdc: ab 20 b4 00  	scfgw	s0, a1
80001be0: 93 05 00 02  	addi	a1, zero, 32
80001be4: ab 20 b0 00  	scfgw	zero, a1
80001be8: 2b a0 00 3a  	scfgwi	ra, 928
80001bec: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80001bf0: b7 95 2e ba  	lui	a1, 762601
80001bf4: 13 84 35 ba  	addi	s0, a1, -1117
80001bf8: 13 0d a0 fe  	addi	s10, zero, -22
80001bfc: 87 31 07 00  	fld	ft3, 0(a4)
80001c00: 93 05 60 01  	addi	a1, zero, 22
80001c04: 53 02 00 d2  	fcvt.d.w	ft4, zero
80001c08: 93 00 00 19  	addi	ra, zero, 400
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001c0c: 33 b7 88 02  	mulhu	a4, a7, s0
80001c10: 13 57 47 00  	srli	a4, a4, 4
80001c14: 33 07 b7 02  	mul	a4, a4, a1
80001c18: 33 87 e8 40  	sub	a4, a7, a4
80001c1c: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001c20: 33 37 83 02  	mulhu	a4, t1, s0
80001c24: 13 57 47 00  	srli	a4, a4, 4
80001c28: 33 07 b7 02  	mul	a4, a4, a1
80001c2c: 33 07 e3 40  	sub	a4, t1, a4
80001c30: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001c34: 33 b7 8f 02  	mulhu	a4, t6, s0
80001c38: 13 57 47 00  	srli	a4, a4, 4
80001c3c: 33 07 b7 02  	mul	a4, a4, a1
80001c40: 33 87 ef 40  	sub	a4, t6, a4
80001c44: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001c48: 33 37 8a 02  	mulhu	a4, s4, s0
80001c4c: 13 57 47 00  	srli	a4, a4, 4
80001c50: 33 07 b7 02  	mul	a4, a4, a1
80001c54: 33 07 ea 40  	sub	a4, s4, a4
80001c58: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001c5c: 33 b7 8a 02  	mulhu	a4, s5, s0
80001c60: 13 57 47 00  	srli	a4, a4, 4
80001c64: 33 07 b7 02  	mul	a4, a4, a1
80001c68: 33 87 ea 40  	sub	a4, s5, a4
80001c6c: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001c70: 33 37 88 02  	mulhu	a4, a6, s0
80001c74: 13 57 47 00  	srli	a4, a4, 4
80001c78: 33 07 b7 02  	mul	a4, a4, a1
80001c7c: 33 07 e8 40  	sub	a4, a6, a4
80001c80: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001c84: 33 b7 82 02  	mulhu	a4, t0, s0
80001c88: 13 57 47 00  	srli	a4, a4, 4
80001c8c: 33 07 b7 02  	mul	a4, a4, a1
80001c90: 33 87 e2 40  	sub	a4, t0, a4
80001c94: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001c98: 33 b7 83 02  	mulhu	a4, t2, s0
80001c9c: 13 57 47 00  	srli	a4, a4, 4
80001ca0: 33 07 b7 02  	mul	a4, a4, a1
80001ca4: 33 87 e3 40  	sub	a4, t2, a4
80001ca8: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001cac: 33 37 8e 02  	mulhu	a4, t3, s0
80001cb0: 13 57 47 00  	srli	a4, a4, 4
80001cb4: 33 07 b7 02  	mul	a4, a4, a1
80001cb8: 33 07 ee 40  	sub	a4, t3, a4
80001cbc: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001cc0: 33 b7 8e 02  	mulhu	a4, t4, s0
80001cc4: 13 57 47 00  	srli	a4, a4, 4
80001cc8: 33 07 b7 02  	mul	a4, a4, a1
80001ccc: 33 87 ee 40  	sub	a4, t4, a4
80001cd0: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001cd4: 33 37 8f 02  	mulhu	a4, t5, s0
80001cd8: 13 57 47 00  	srli	a4, a4, 4
80001cdc: 33 07 b7 02  	mul	a4, a4, a1
80001ce0: 33 07 ef 40  	sub	a4, t5, a4
80001ce4: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001ce8: 33 b7 89 02  	mulhu	a4, s3, s0
80001cec: 13 57 47 00  	srli	a4, a4, 4
80001cf0: 33 07 b7 02  	mul	a4, a4, a1
80001cf4: 33 87 e9 40  	sub	a4, s3, a4
80001cf8: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001cfc: 33 37 8b 02  	mulhu	a4, s6, s0
80001d00: 13 57 47 00  	srli	a4, a4, 4
80001d04: 33 07 b7 02  	mul	a4, a4, a1
80001d08: 33 07 eb 40  	sub	a4, s6, a4
80001d0c: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001d10: 33 b7 8b 02  	mulhu	a4, s7, s0
80001d14: 13 57 47 00  	srli	a4, a4, 4
80001d18: 33 07 b7 02  	mul	a4, a4, a1
80001d1c: 33 87 eb 40  	sub	a4, s7, a4
80001d20: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001d24: 33 37 8c 02  	mulhu	a4, s8, s0
80001d28: 13 57 47 00  	srli	a4, a4, 4
80001d2c: 33 07 b7 02  	mul	a4, a4, a1
80001d30: 33 07 ec 40  	sub	a4, s8, a4
80001d34: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001d38: 33 b7 8c 02  	mulhu	a4, s9, s0
80001d3c: 13 57 47 00  	srli	a4, a4, 4
80001d40: 33 07 b7 02  	mul	a4, a4, a1
80001d44: 33 87 ec 40  	sub	a4, s9, a4
80001d48: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001d4c: 33 b7 8d 02  	mulhu	a4, s11, s0
80001d50: 13 57 47 00  	srli	a4, a4, 4
80001d54: 33 07 b7 02  	mul	a4, a4, a1
80001d58: 33 87 ed 40  	sub	a4, s11, a4
80001d5c: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001d60: 33 37 89 02  	mulhu	a4, s2, s0
80001d64: 13 57 47 00  	srli	a4, a4, 4
80001d68: 33 07 b7 02  	mul	a4, a4, a1
80001d6c: 33 07 e9 40  	sub	a4, s2, a4
80001d70: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001d74: 33 b7 87 02  	mulhu	a4, a5, s0
80001d78: 13 57 47 00  	srli	a4, a4, 4
80001d7c: 33 07 b7 02  	mul	a4, a4, a1
80001d80: 33 87 e7 40  	sub	a4, a5, a4
80001d84: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001d88: 33 b7 84 02  	mulhu	a4, s1, s0
80001d8c: 13 57 47 00  	srli	a4, a4, 4
80001d90: 33 07 b7 02  	mul	a4, a4, a1
80001d94: 33 87 e4 40  	sub	a4, s1, a4
80001d98: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001d9c: 33 37 86 02  	mulhu	a4, a2, s0
80001da0: 13 57 47 00  	srli	a4, a4, 4
80001da4: 33 07 b7 02  	mul	a4, a4, a1
80001da8: 33 07 e6 40  	sub	a4, a2, a4
80001dac: d3 0a 07 d2  	fcvt.d.w	fs5, a4
80001db0: 33 b7 86 02  	mulhu	a4, a3, s0
80001db4: 13 57 47 00  	srli	a4, a4, 4
80001db8: 33 07 b7 02  	mul	a4, a4, a1
80001dbc: 33 87 e6 40  	sub	a4, a3, a4
80001dc0: 53 0b 07 d2  	fcvt.d.w	fs6, a4
80001dc4: 33 37 85 02  	mulhu	a4, a0, s0
80001dc8: 13 57 47 00  	srli	a4, a4, 4
80001dcc: 33 07 a7 03  	mul	a4, a4, s10
80001dd0: 33 07 e5 00  	add	a4, a0, a4
80001dd4: d3 0b 07 d2  	fcvt.d.w	fs7, a4
80001dd8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001ddc: 53 80 52 22  	fmv.d	ft0, ft5
80001de0: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001de4: 53 80 52 22  	fmv.d	ft0, ft5
80001de8: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001dec: 53 80 52 22  	fmv.d	ft0, ft5
80001df0: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001df4: 53 80 52 22  	fmv.d	ft0, ft5
80001df8: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001dfc: 53 80 52 22  	fmv.d	ft0, ft5
80001e00: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001e04: 53 80 52 22  	fmv.d	ft0, ft5
80001e08: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001e0c: 53 80 52 22  	fmv.d	ft0, ft5
80001e10: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001e14: 53 80 52 22  	fmv.d	ft0, ft5
80001e18: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001e1c: 53 80 52 22  	fmv.d	ft0, ft5
80001e20: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001e24: 53 80 52 22  	fmv.d	ft0, ft5
80001e28: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001e2c: 53 80 52 22  	fmv.d	ft0, ft5
80001e30: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001e34: 53 80 52 22  	fmv.d	ft0, ft5
80001e38: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001e3c: 53 80 52 22  	fmv.d	ft0, ft5
80001e40: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001e44: 53 80 52 22  	fmv.d	ft0, ft5
80001e48: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001e4c: 53 80 52 22  	fmv.d	ft0, ft5
80001e50: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001e54: 53 80 52 22  	fmv.d	ft0, ft5
80001e58: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001e5c: 53 80 52 22  	fmv.d	ft0, ft5
80001e60: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001e64: 53 80 52 22  	fmv.d	ft0, ft5
80001e68: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001e6c: 53 80 52 22  	fmv.d	ft0, ft5
80001e70: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001e74: 53 80 52 22  	fmv.d	ft0, ft5
80001e78: 53 00 42 22  	fmv.d	ft0, ft4
80001e7c: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001e80: 53 80 52 22  	fmv.d	ft0, ft5
80001e84: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80001e88: 53 80 52 22  	fmv.d	ft0, ft5
80001e8c: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80001e90: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < ni; i++)
80001e94: 13 05 95 01  	addi	a0, a0, 25
80001e98: 93 86 86 01  	addi	a3, a3, 24
80001e9c: 13 06 76 01  	addi	a2, a2, 23
80001ea0: 93 84 54 01  	addi	s1, s1, 21
80001ea4: 93 87 47 01  	addi	a5, a5, 20
80001ea8: 13 09 39 01  	addi	s2, s2, 19
80001eac: 93 8d 2d 01  	addi	s11, s11, 18
80001eb0: 93 8c 1c 01  	addi	s9, s9, 17
80001eb4: 13 0c 0c 01  	addi	s8, s8, 16
80001eb8: 93 8b fb 00  	addi	s7, s7, 15
80001ebc: 13 0b eb 00  	addi	s6, s6, 14
80001ec0: 93 89 d9 00  	addi	s3, s3, 13
80001ec4: 13 0f cf 00  	addi	t5, t5, 12
80001ec8: 93 8e be 00  	addi	t4, t4, 11
80001ecc: 13 0e ae 00  	addi	t3, t3, 10
80001ed0: 93 83 93 00  	addi	t2, t2, 9
80001ed4: 93 82 82 00  	addi	t0, t0, 8
80001ed8: 13 08 78 00  	addi	a6, a6, 7
80001edc: 93 8a 6a 00  	addi	s5, s5, 6
80001ee0: 13 0a 5a 00  	addi	s4, s4, 5
80001ee4: 93 8f 4f 00  	addi	t6, t6, 4
80001ee8: 13 03 33 00  	addi	t1, t1, 3
80001eec: 93 88 28 00  	addi	a7, a7, 2
80001ef0: e3 1e 15 d0  	bne	a0, ra, 0x80001c0c <.LBB0_132+0xc8>
80001ef4: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001ef8: 6f 00 40 39  	j	0x8000228c <.LBB0_132+0x748>
80001efc: 93 06 00 00  	mv	a3, zero
80001f00: 13 07 00 00  	mv	a4, zero
80001f04: 93 07 00 00  	mv	a5, zero
80001f08: 93 04 00 00  	mv	s1, zero
80001f0c: 93 05 00 00  	mv	a1, zero
80001f10: 13 0e 00 00  	mv	t3, zero
80001f14: 93 0e 00 00  	mv	t4, zero
80001f18: 13 0f 00 00  	mv	t5, zero
80001f1c: 93 0f 00 00  	mv	t6, zero
80001f20: 93 09 00 00  	mv	s3, zero
80001f24: 13 0a 00 00  	mv	s4, zero
80001f28: 93 0a 00 00  	mv	s5, zero
80001f2c: 13 0b 00 00  	mv	s6, zero
80001f30: 93 0b 00 00  	mv	s7, zero
80001f34: 13 0c 00 00  	mv	s8, zero
80001f38: 93 0c 00 00  	mv	s9, zero
80001f3c: 13 0d 00 00  	mv	s10, zero
80001f40: 93 0d 00 00  	mv	s11, zero
80001f44: 13 09 00 00  	mv	s2, zero
80001f48: 13 08 00 00  	mv	a6, zero
80001f4c: 93 08 00 00  	mv	a7, zero
80001f50: 93 02 00 00  	mv	t0, zero
80001f54: 13 03 00 00  	mv	t1, zero
;   for (i = 0; i < ni; i++)
80001f58: 13 84 00 06  	addi	s0, ra, 96
80001f5c: 37 95 2e ba  	lui	a0, 762601
80001f60: 13 05 35 ba  	addi	a0, a0, -1117
80001f64: 87 31 06 00  	fld	ft3, 0(a2)
80001f68: 93 03 60 01  	addi	t2, zero, 22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001f6c: 33 b6 a2 02  	mulhu	a2, t0, a0
80001f70: 13 56 46 00  	srli	a2, a2, 4
80001f74: 33 06 76 02  	mul	a2, a2, t2
80001f78: b3 80 c2 40  	sub	ra, t0, a2
80001f7c: 53 82 00 d2  	fcvt.d.w	ft4, ra
80001f80: 33 b6 a8 02  	mulhu	a2, a7, a0
80001f84: 13 56 46 00  	srli	a2, a2, 4
80001f88: 33 06 76 02  	mul	a2, a2, t2
80001f8c: 33 86 c8 40  	sub	a2, a7, a2
80001f90: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001f94: 33 36 a9 02  	mulhu	a2, s2, a0
80001f98: 13 56 46 00  	srli	a2, a2, 4
80001f9c: 33 06 76 02  	mul	a2, a2, t2
80001fa0: 33 06 c9 40  	sub	a2, s2, a2
80001fa4: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001fa8: 33 36 ad 02  	mulhu	a2, s10, a0
80001fac: 13 56 46 00  	srli	a2, a2, 4
80001fb0: 33 06 76 02  	mul	a2, a2, t2
80001fb4: 33 06 cd 40  	sub	a2, s10, a2
80001fb8: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001fbc: 33 b6 ac 02  	mulhu	a2, s9, a0
80001fc0: 13 56 46 00  	srli	a2, a2, 4
80001fc4: 33 06 76 02  	mul	a2, a2, t2
80001fc8: 33 86 cc 40  	sub	a2, s9, a2
80001fcc: 53 05 06 d2  	fcvt.d.w	fa0, a2
80001fd0: 33 b6 ab 02  	mulhu	a2, s7, a0
80001fd4: 13 56 46 00  	srli	a2, a2, 4
80001fd8: 33 06 76 02  	mul	a2, a2, t2
80001fdc: 33 86 cb 40  	sub	a2, s7, a2
80001fe0: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001fe4: 33 b6 aa 02  	mulhu	a2, s5, a0
80001fe8: 13 56 46 00  	srli	a2, a2, 4
80001fec: 33 06 76 02  	mul	a2, a2, t2
80001ff0: 33 86 ca 40  	sub	a2, s5, a2
80001ff4: 53 06 06 d2  	fcvt.d.w	fa2, a2
80001ff8: 33 b6 a9 02  	mulhu	a2, s3, a0
80001ffc: 13 56 46 00  	srli	a2, a2, 4
80002000: 33 06 76 02  	mul	a2, a2, t2
80002004: 33 86 c9 40  	sub	a2, s3, a2
80002008: d3 06 06 d2  	fcvt.d.w	fa3, a2
8000200c: 33 36 af 02  	mulhu	a2, t5, a0
80002010: 13 56 46 00  	srli	a2, a2, 4
80002014: 33 06 76 02  	mul	a2, a2, t2
80002018: 33 06 cf 40  	sub	a2, t5, a2
8000201c: 53 07 06 d2  	fcvt.d.w	fa4, a2
80002020: 33 36 ae 02  	mulhu	a2, t3, a0
80002024: 13 56 46 00  	srli	a2, a2, 4
80002028: 33 06 76 02  	mul	a2, a2, t2
8000202c: 33 06 ce 40  	sub	a2, t3, a2
80002030: d3 07 06 d2  	fcvt.d.w	fa5, a2
80002034: 33 b6 a4 02  	mulhu	a2, s1, a0
80002038: 13 56 46 00  	srli	a2, a2, 4
8000203c: 33 06 76 02  	mul	a2, a2, t2
80002040: 33 86 c4 40  	sub	a2, s1, a2
80002044: 53 08 06 d2  	fcvt.d.w	fa6, a2
80002048: 33 b6 a6 02  	mulhu	a2, a3, a0
8000204c: 13 56 46 00  	srli	a2, a2, 4
80002050: 33 06 76 02  	mul	a2, a2, t2
80002054: 33 86 c6 40  	sub	a2, a3, a2
80002058: d3 08 06 d2  	fcvt.d.w	fa7, a2
8000205c: 33 36 a7 02  	mulhu	a2, a4, a0
80002060: 13 56 46 00  	srli	a2, a2, 4
80002064: 33 06 76 02  	mul	a2, a2, t2
80002068: 33 06 c7 40  	sub	a2, a4, a2
8000206c: 53 0e 06 d2  	fcvt.d.w	ft8, a2
80002070: 33 b6 a7 02  	mulhu	a2, a5, a0
80002074: 13 56 46 00  	srli	a2, a2, 4
80002078: 33 06 76 02  	mul	a2, a2, t2
8000207c: 33 86 c7 40  	sub	a2, a5, a2
80002080: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80002084: 33 b6 a5 02  	mulhu	a2, a1, a0
80002088: 13 56 46 00  	srli	a2, a2, 4
8000208c: 33 06 76 02  	mul	a2, a2, t2
80002090: 33 86 c5 40  	sub	a2, a1, a2
80002094: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80002098: 33 b6 ae 02  	mulhu	a2, t4, a0
8000209c: 13 56 46 00  	srli	a2, a2, 4
800020a0: 33 06 76 02  	mul	a2, a2, t2
800020a4: 33 86 ce 40  	sub	a2, t4, a2
800020a8: d3 0f 06 d2  	fcvt.d.w	ft11, a2
800020ac: 33 b6 af 02  	mulhu	a2, t6, a0
800020b0: 13 56 46 00  	srli	a2, a2, 4
800020b4: 33 06 76 02  	mul	a2, a2, t2
800020b8: 33 86 cf 40  	sub	a2, t6, a2
800020bc: 53 04 06 d2  	fcvt.d.w	fs0, a2
800020c0: 33 36 aa 02  	mulhu	a2, s4, a0
800020c4: 13 56 46 00  	srli	a2, a2, 4
800020c8: 33 06 76 02  	mul	a2, a2, t2
800020cc: 33 06 ca 40  	sub	a2, s4, a2
800020d0: d3 04 06 d2  	fcvt.d.w	fs1, a2
800020d4: 33 36 ab 02  	mulhu	a2, s6, a0
800020d8: 13 56 46 00  	srli	a2, a2, 4
800020dc: 33 06 76 02  	mul	a2, a2, t2
800020e0: 33 06 cb 40  	sub	a2, s6, a2
800020e4: 53 09 06 d2  	fcvt.d.w	fs2, a2
800020e8: 33 36 ac 02  	mulhu	a2, s8, a0
800020ec: 13 56 46 00  	srli	a2, a2, 4
800020f0: 33 06 76 02  	mul	a2, a2, t2
800020f4: 33 06 cc 40  	sub	a2, s8, a2
800020f8: d3 09 06 d2  	fcvt.d.w	fs3, a2
800020fc: 33 b6 ad 02  	mulhu	a2, s11, a0
80002100: 13 56 46 00  	srli	a2, a2, 4
80002104: 33 06 76 02  	mul	a2, a2, t2
80002108: 33 86 cd 40  	sub	a2, s11, a2
8000210c: 53 0a 06 d2  	fcvt.d.w	fs4, a2
80002110: 33 36 a8 02  	mulhu	a2, a6, a0
80002114: 13 56 46 00  	srli	a2, a2, 4
80002118: 33 06 76 02  	mul	a2, a2, t2
8000211c: 33 06 c8 40  	sub	a2, a6, a2
80002120: d3 0a 06 d2  	fcvt.d.w	fs5, a2
80002124: 33 36 a3 02  	mulhu	a2, t1, a0
80002128: 13 56 46 00  	srli	a2, a2, 4
8000212c: 93 80 05 00  	mv	ra, a1
80002130: 93 85 04 00  	mv	a1, s1
80002134: 93 84 07 00  	mv	s1, a5
80002138: 93 07 07 00  	mv	a5, a4
8000213c: 13 87 06 00  	mv	a4, a3
80002140: 93 06 a0 fe  	addi	a3, zero, -22
80002144: 33 06 d6 02  	mul	a2, a2, a3
80002148: 93 06 07 00  	mv	a3, a4
8000214c: 13 87 07 00  	mv	a4, a5
80002150: 93 87 04 00  	mv	a5, s1
80002154: 93 84 05 00  	mv	s1, a1
80002158: 93 85 00 00  	mv	a1, ra
8000215c: 33 06 c3 00  	add	a2, t1, a2
80002160: 53 0b 06 d2  	fcvt.d.w	fs6, a2
80002164: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002168: 27 30 44 fa  	fsd	ft4, -96(s0)
8000216c: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80002170: 27 34 44 fa  	fsd	ft4, -88(s0)
80002174: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80002178: 27 38 44 fa  	fsd	ft4, -80(s0)
8000217c: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80002180: 27 3c 44 fa  	fsd	ft4, -72(s0)
80002184: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80002188: 27 30 44 fc  	fsd	ft4, -64(s0)
8000218c: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80002190: 27 34 44 fc  	fsd	ft4, -56(s0)
80002194: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80002198: 27 38 44 fc  	fsd	ft4, -48(s0)
8000219c: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800021a0: 27 3c 44 fc  	fsd	ft4, -40(s0)
800021a4: 53 72 37 12  	fmul.d	ft4, fa4, ft3
800021a8: 27 30 44 fe  	fsd	ft4, -32(s0)
800021ac: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
800021b0: 27 34 44 fe  	fsd	ft4, -24(s0)
800021b4: 53 72 38 12  	fmul.d	ft4, fa6, ft3
800021b8: 27 38 44 fe  	fsd	ft4, -16(s0)
800021bc: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
800021c0: 27 3c 44 fe  	fsd	ft4, -8(s0)
800021c4: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
800021c8: 27 30 44 00  	fsd	ft4, 0(s0)
800021cc: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
800021d0: 27 34 44 00  	fsd	ft4, 8(s0)
800021d4: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
800021d8: 27 38 44 00  	fsd	ft4, 16(s0)
800021dc: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
800021e0: 27 3c 44 00  	fsd	ft4, 24(s0)
800021e4: 53 72 34 12  	fmul.d	ft4, fs0, ft3
800021e8: 27 30 44 02  	fsd	ft4, 32(s0)
800021ec: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
800021f0: 27 34 44 02  	fsd	ft4, 40(s0)
800021f4: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800021f8: 27 38 44 02  	fsd	ft4, 48(s0)
800021fc: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80002200: 27 3c 44 02  	fsd	ft4, 56(s0)
80002204: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80002208: 27 34 44 04  	fsd	ft4, 72(s0)
8000220c: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80002210: 27 38 44 04  	fsd	ft4, 80(s0)
80002214: 23 22 04 04  	sw	zero, 68(s0)
80002218: 23 20 04 04  	sw	zero, 64(s0)
8000221c: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80002220: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < ni; i++)
80002224: 13 03 93 01  	addi	t1, t1, 25
80002228: 93 82 22 00  	addi	t0, t0, 2
8000222c: 93 88 38 00  	addi	a7, a7, 3
80002230: 13 08 88 01  	addi	a6, a6, 24
80002234: 13 09 49 00  	addi	s2, s2, 4
80002238: 93 8d 7d 01  	addi	s11, s11, 23
8000223c: 13 0d 5d 00  	addi	s10, s10, 5
80002240: 93 8c 6c 00  	addi	s9, s9, 6
80002244: 13 0c 5c 01  	addi	s8, s8, 21
80002248: 93 8b 7b 00  	addi	s7, s7, 7
8000224c: 13 0b 4b 01  	addi	s6, s6, 20
80002250: 93 8a 8a 00  	addi	s5, s5, 8
80002254: 13 0a 3a 01  	addi	s4, s4, 19
80002258: 93 89 99 00  	addi	s3, s3, 9
8000225c: 93 8f 2f 01  	addi	t6, t6, 18
80002260: 13 0f af 00  	addi	t5, t5, 10
80002264: 93 8e 1e 01  	addi	t4, t4, 17
80002268: 13 0e be 00  	addi	t3, t3, 11
8000226c: 93 85 00 01  	addi	a1, ra, 16
80002270: 93 84 c4 00  	addi	s1, s1, 12
80002274: 93 87 f7 00  	addi	a5, a5, 15
80002278: 13 04 04 0c  	addi	s0, s0, 192
8000227c: 13 07 e7 00  	addi	a4, a4, 14
80002280: 93 86 d6 00  	addi	a3, a3, 13
80002284: 13 06 00 19  	addi	a2, zero, 400
80002288: e3 12 c3 ce  	bne	t1, a2, 0x80001f6c <.LBB0_132+0x428>
8000228c: 37 15 00 00  	lui	a0, 1
80002290: 93 03 05 87  	addi	t2, a0, -1936
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002294: 73 25 00 b0  	csrr	a0, mcycle
80002298: 23 28 a1 06  	sw	a0, 112(sp)
8000229c: 03 2e 01 01  	lw	t3, 16(sp)
;   for (i = 0; i < ni; i++) {
800022a0: 33 05 7e 00  	add	a0, t3, t2
800022a4: b3 35 c5 01  	sltu	a1, a0, t3
800022a8: 93 0e 85 08  	addi	t4, a0, 136
800022ac: 33 b5 ae 00  	sltu	a0, t4, a0
800022b0: 33 8f a5 00  	add	t5, a1, a0
800022b4: 83 26 01 02  	lw	a3, 32(sp)
800022b8: 33 86 76 00  	add	a2, a3, t2
800022bc: 13 05 86 28  	addi	a0, a2, 648
800022c0: 03 23 c1 01  	lw	t1, 28(sp)
800022c4: b3 05 73 00  	add	a1, t1, t2
800022c8: 33 b7 65 00  	sltu	a4, a1, t1
800022cc: 13 84 85 3e  	addi	s0, a1, 1000
800022d0: b3 35 b4 00  	sltu	a1, s0, a1
800022d4: 33 07 b7 00  	add	a4, a4, a1
800022d8: 63 06 0f 00  	beqz	t5, 0x800022e4 <.LBB0_132+0x7a0>
800022dc: 93 05 00 00  	mv	a1, zero
800022e0: 6f 00 80 00  	j	0x800022e8 <.LBB0_132+0x7a4>
800022e4: b3 b5 6e 00  	sltu	a1, t4, t1
;   for (i = 0; i < ni; i++) {
800022e8: b3 37 d6 00  	sltu	a5, a2, a3
800022ec: b3 34 c5 00  	sltu	s1, a0, a2
800022f0: 63 02 07 02  	beqz	a4, 0x80002314 <.LBB0_132+0x7d0>
800022f4: 13 06 00 00  	mv	a2, zero
800022f8: 33 87 97 00  	add	a4, a5, s1
800022fc: 63 12 0f 02  	bnez	t5, 0x80002320 <.LBB0_132+0x7dc>
80002300: b3 b7 de 00  	sltu	a5, t4, a3
;   for (i = 0; i < ni; i++) {
80002304: b3 e5 c5 00  	or	a1, a1, a2
80002308: 63 12 07 02  	bnez	a4, 0x8000232c <.LBB0_132+0x7e8>
8000230c: 33 35 c5 01  	sltu	a0, a0, t3
80002310: 6f 00 00 02  	j	0x80002330 <.LBB0_132+0x7ec>
80002314: 33 36 c4 01  	sltu	a2, s0, t3
;   for (i = 0; i < ni; i++) {
80002318: 33 87 97 00  	add	a4, a5, s1
8000231c: e3 02 0f fe  	beqz	t5, 0x80002300 <.LBB0_132+0x7bc>
80002320: 93 07 00 00  	mv	a5, zero
80002324: b3 e5 c5 00  	or	a1, a1, a2
80002328: e3 02 07 fe  	beqz	a4, 0x8000230c <.LBB0_132+0x7c8>
8000232c: 13 05 00 00  	mv	a0, zero
80002330: 33 e5 a7 00  	or	a0, a5, a0
80002334: 33 75 b5 00  	and	a0, a0, a1
80002338: 93 55 4e 01  	srli	a1, t3, 20
8000233c: b3 35 b0 00  	snez	a1, a1
80002340: 37 f6 11 00  	lui	a2, 287
80002344: 13 06 96 70  	addi	a2, a2, 1801
80002348: 33 36 ce 00  	sltu	a2, t3, a2
8000234c: b3 f5 c5 00  	and	a1, a1, a2
80002350: 23 22 b1 06  	sw	a1, 100(sp)
80002354: 33 f5 a5 00  	and	a0, a1, a0
80002358: 83 25 41 00  	lw	a1, 4(sp)
8000235c: 33 f5 a5 00  	and	a0, a1, a0
80002360: 83 25 01 00  	lw	a1, 0(sp)
80002364: 33 f5 a5 00  	and	a0, a1, a0
80002368: 23 26 71 06  	sw	t2, 108(sp)
8000236c: 23 20 d1 07  	sw	t4, 96(sp)
80002370: 23 24 e1 07  	sw	t5, 104(sp)
80002374: 63 02 05 16  	beqz	a0, 0x800024d8 <.LBB0_133+0x90>
80002378: 13 05 00 00  	mv	a0, zero
8000237c: 93 05 80 00  	addi	a1, zero, 8
80002380: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < ni; i++) {
80002384: 93 07 00 04  	addi	a5, zero, 64
80002388: 13 07 00 0c  	addi	a4, zero, 192
8000238c: ab 20 f6 00  	scfgw	a2, a5
80002390: ab a0 e5 00  	scfgw	a1, a4
80002394: 13 08 f0 00  	addi	a6, zero, 15
80002398: 13 07 00 06  	addi	a4, zero, 96
8000239c: 93 07 00 0e  	addi	a5, zero, 224
800023a0: ab 20 e8 00  	scfgw	a6, a4
800023a4: ab a0 f5 00  	scfgw	a1, a5
800023a8: 13 07 00 02  	addi	a4, zero, 32
800023ac: ab 20 e0 00  	scfgw	zero, a4
800023b0: 2b 20 0e 3a  	scfgwi	t3, 928
800023b4: 13 07 50 01  	addi	a4, zero, 21
800023b8: 93 07 10 00  	addi	a5, zero, 1
800023bc: 93 84 07 04  	addi	s1, a5, 64
800023c0: 13 84 07 0c  	addi	s0, a5, 192
800023c4: ab 20 97 00  	scfgw	a4, s1
800023c8: ab a0 85 00  	scfgw	a1, s0
800023cc: 93 04 80 f5  	addi	s1, zero, -168
800023d0: 13 84 07 06  	addi	s0, a5, 96
800023d4: ab 20 86 00  	scfgw	a2, s0
800023d8: 13 84 07 0e  	addi	s0, a5, 224
800023dc: ab a0 84 00  	scfgw	s1, s0
800023e0: 93 84 07 08  	addi	s1, a5, 128
800023e4: 13 84 07 10  	addi	s0, a5, 256
800023e8: ab 20 98 00  	scfgw	a6, s1
800023ec: ab a0 85 00  	scfgw	a1, s0
800023f0: 93 85 07 02  	addi	a1, a5, 32
800023f4: ab 20 b0 00  	scfgw	zero, a1
800023f8: 2b a0 16 34  	scfgwi	a3, 833
800023fc: 93 05 00 09  	addi	a1, zero, 144
80002400: 93 07 20 00  	addi	a5, zero, 2
80002404: 93 84 07 04  	addi	s1, a5, 64
80002408: 13 84 07 0c  	addi	s0, a5, 192
8000240c: ab 20 97 00  	scfgw	a4, s1
80002410: ab a0 85 00  	scfgw	a1, s0
80002414: b7 f5 ff ff  	lui	a1, 1048575
80002418: 13 87 85 43  	addi	a4, a1, 1080
8000241c: 93 84 07 06  	addi	s1, a5, 96
80002420: 13 84 07 0e  	addi	s0, a5, 224
80002424: ab 20 96 00  	scfgw	a2, s1
80002428: ab 20 87 00  	scfgw	a4, s0
8000242c: 93 85 85 3a  	addi	a1, a1, 936
80002430: 13 86 07 08  	addi	a2, a5, 128
80002434: 13 87 07 10  	addi	a4, a5, 256
80002438: ab 20 c8 00  	scfgw	a6, a2
8000243c: ab a0 e5 00  	scfgw	a1, a4
80002440: 93 85 07 02  	addi	a1, a5, 32
80002444: ab 20 b0 00  	scfgw	zero, a1

80002448 <.LBB0_133>:
80002448: 97 35 00 00  	auipc	a1, 3
8000244c: 93 85 05 4f  	addi	a1, a1, 1264
80002450: 87 b1 05 00  	fld	ft3, 0(a1)
;   for (i = 0; i < ni; i++) {
80002454: 2b 20 23 34  	scfgwi	t1, 834
80002458: f3 e5 00 7c  	csrrsi	a1, 1984, 1
8000245c: 93 05 00 01  	addi	a1, zero, 16
80002460: 13 06 20 01  	addi	a2, zero, 18
;         x += alpha * A[i][k] * B[k][j];
80002464: 53 72 11 12  	fmul.d	ft4, ft2, ft1
80002468: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
8000246c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002470: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002474: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002478: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
8000247c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002480: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002484: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002488: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
8000248c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002490: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002494: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002498: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
8000249c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024a0: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024a4: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024a8: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024ac: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024b0: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024b4: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024b8: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
;         x += alpha * A[i][k] * B[k][j];
800024bc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
;       tmp[i][j] = x;
800024c0: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nj; j++) {
800024c4: 13 06 f6 ff  	addi	a2, a2, -1
800024c8: e3 1e 06 f8  	bnez	a2, 0x80002464 <.LBB0_133+0x1c>
;   for (i = 0; i < ni; i++) {
800024cc: 13 05 15 00  	addi	a0, a0, 1
800024d0: e3 18 b5 f8  	bne	a0, a1, 0x80002460 <.LBB0_133+0x18>
800024d4: 6f 00 40 36  	j	0x80002838 <.LBB0_134+0x44>
800024d8: 13 05 03 48  	addi	a0, t1, 1152
800024dc: 93 05 05 48  	addi	a1, a0, 1152
800024e0: 13 05 43 4c  	addi	a0, t1, 1220
800024e4: 13 05 45 4c  	addi	a0, a0, 1220
800024e8: 93 88 06 06  	addi	a7, a3, 96
800024ec: b3 84 13 01  	add	s1, t2, a7
800024f0: 63 76 b5 00  	bgeu	a0, a1, 0x800024fc <.LBB0_133+0xb4>
800024f4: 13 08 00 00  	mv	a6, zero
800024f8: 6f 00 80 00  	j	0x80002500 <.LBB0_133+0xb8>
800024fc: 33 38 c5 01  	sltu	a6, a0, t3
;   for (i = 0; i < ni; i++) {
80002500: 93 87 04 1e  	addi	a5, s1, 480
80002504: 93 02 03 63  	addi	t0, t1, 1584
80002508: 13 04 83 6b  	addi	s0, t1, 1720
8000250c: 63 06 0f 00  	beqz	t5, 0x80002518 <.LBB0_133+0xd0>
80002510: 13 07 00 00  	mv	a4, zero
80002514: 6f 00 80 00  	j	0x8000251c <.LBB0_133+0xd4>
80002518: 33 b7 be 00  	sltu	a4, t4, a1
;   for (i = 0; i < ni; i++) {
8000251c: 33 b6 74 00  	sltu	a2, s1, t2
80002520: 33 b5 97 00  	sltu	a0, a5, s1
80002524: 63 70 54 02  	bgeu	s0, t0, 0x80002544 <.LBB0_133+0xfc>
80002528: 93 04 00 00  	mv	s1, zero
8000252c: 33 05 a6 00  	add	a0, a2, a0
80002530: 63 10 0f 02  	bnez	t5, 0x80002550 <.LBB0_133+0x108>
80002534: 33 b4 5e 00  	sltu	s0, t4, t0
;   for (i = 0; i < ni; i++) {
80002538: 63 10 05 02  	bnez	a0, 0x80002558 <.LBB0_133+0x110>
8000253c: b3 b7 c7 01  	sltu	a5, a5, t3
80002540: 6f 00 c0 01  	j	0x8000255c <.LBB0_133+0x114>
80002544: b3 34 c4 01  	sltu	s1, s0, t3
;   for (i = 0; i < ni; i++) {
80002548: 33 05 a6 00  	add	a0, a2, a0
8000254c: e3 04 0f fe  	beqz	t5, 0x80002534 <.LBB0_133+0xec>
80002550: 13 04 00 00  	mv	s0, zero
80002554: e3 04 05 fe  	beqz	a0, 0x8000253c <.LBB0_133+0xf4>
80002558: 93 07 00 00  	mv	a5, zero
8000255c: 33 66 07 01  	or	a2, a4, a6
80002560: 33 67 94 00  	or	a4, s0, s1
80002564: 63 06 0f 00  	beqz	t5, 0x80002570 <.LBB0_133+0x128>
80002568: 13 05 00 00  	mv	a0, zero
8000256c: 6f 00 80 00  	j	0x80002574 <.LBB0_133+0x12c>
80002570: 33 b5 1e 01  	sltu	a0, t4, a7
;   for (i = 0; i < ni; i++) {
80002574: 33 65 f5 00  	or	a0, a0, a5
80002578: 33 76 e6 00  	and	a2, a2, a4
8000257c: 33 75 c5 00  	and	a0, a0, a2
80002580: 13 d6 45 01  	srli	a2, a1, 20
80002584: 33 36 c0 00  	snez	a2, a2
80002588: 37 07 12 00  	lui	a4, 288
8000258c: 13 07 97 f7  	addi	a4, a4, -135
80002590: b3 b7 e5 00  	sltu	a5, a1, a4
80002594: 33 76 f6 00  	and	a2, a2, a5
80002598: 33 75 a6 00  	and	a0, a2, a0
8000259c: 13 d6 42 01  	srli	a2, t0, 20
800025a0: 33 36 c0 00  	snez	a2, a2
800025a4: 33 b7 e2 00  	sltu	a4, t0, a4
800025a8: 33 76 e6 00  	and	a2, a2, a4
800025ac: 33 75 a6 00  	and	a0, a2, a0
800025b0: 13 d6 48 01  	srli	a2, a7, 20
800025b4: 33 36 c0 00  	snez	a2, a2
800025b8: 37 f7 11 00  	lui	a4, 287
800025bc: 13 07 17 5b  	addi	a4, a4, 1457
800025c0: 33 b7 e8 00  	sltu	a4, a7, a4
800025c4: 33 76 e6 00  	and	a2, a2, a4
800025c8: 33 75 a6 00  	and	a0, a2, a0
800025cc: 63 0a 05 26  	beqz	a0, 0x80002840 <.LBB0_134+0x4c>
800025d0: 13 04 00 00  	mv	s0, zero
800025d4: 13 05 80 00  	addi	a0, zero, 8
800025d8: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < ni; i++) {
800025dc: 13 07 00 04  	addi	a4, zero, 64
800025e0: 93 07 00 0c  	addi	a5, zero, 192
800025e4: ab 20 e6 00  	scfgw	a2, a4
800025e8: ab 20 f5 00  	scfgw	a0, a5
800025ec: 13 07 80 f7  	addi	a4, zero, -136
800025f0: 93 07 f0 00  	addi	a5, zero, 15
800025f4: 93 04 00 06  	addi	s1, zero, 96
800025f8: ab a0 97 00  	scfgw	a5, s1
800025fc: 93 04 00 0e  	addi	s1, zero, 224
80002600: ab 20 97 00  	scfgw	a4, s1
80002604: 93 04 00 02  	addi	s1, zero, 32
80002608: ab 20 90 00  	scfgw	zero, s1
8000260c: 2b a0 05 32  	scfgwi	a1, 800
80002610: 93 05 10 00  	addi	a1, zero, 1
80002614: 93 84 05 04  	addi	s1, a1, 64
80002618: ab 20 96 00  	scfgw	a2, s1
8000261c: 93 84 05 0c  	addi	s1, a1, 192
80002620: ab 20 95 00  	scfgw	a0, s1
80002624: 13 85 05 06  	addi	a0, a1, 96
80002628: 93 84 05 0e  	addi	s1, a1, 224
8000262c: ab a0 a7 00  	scfgw	a5, a0
80002630: ab 20 97 00  	scfgw	a4, s1
80002634: 13 85 05 02  	addi	a0, a1, 32
80002638: ab 20 a0 00  	scfgw	zero, a0
8000263c: 2b a0 12 32  	scfgwi	t0, 801
80002640: 13 05 20 00  	addi	a0, zero, 2
80002644: 93 05 05 04  	addi	a1, a0, 64
80002648: 13 07 05 0c  	addi	a4, a0, 192
8000264c: ab 20 b6 00  	scfgw	a2, a1
80002650: ab 20 e0 00  	scfgw	zero, a4
80002654: 13 07 00 0b  	addi	a4, zero, 176
80002658: 93 05 05 06  	addi	a1, a0, 96
8000265c: 13 06 05 0e  	addi	a2, a0, 224
80002660: ab a0 b7 00  	scfgw	a5, a1
80002664: ab 20 c7 00  	scfgw	a4, a2
80002668: 13 05 05 02  	addi	a0, a0, 32
8000266c: ab 20 a0 00  	scfgw	zero, a0
80002670: 2b a0 28 32  	scfgwi	a7, 802
80002674: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002678: 93 0f 00 09  	addi	t6, zero, 144
8000267c: 13 09 0e 00  	mv	s2, t3
80002680: 03 2f c1 01  	lw	t5, 28(sp)
80002684: 93 07 00 00  	mv	a5, zero
80002688: 23 2e 81 06  	sw	s0, 124(sp)
;         x += alpha * A[i][k] * B[k][j];
8000268c: 13 05 00 0b  	addi	a0, zero, 176
80002690: 33 05 a4 02  	mul	a0, s0, a0
80002694: b3 84 a6 00  	add	s1, a3, a0
80002698: 93 89 84 00  	addi	s3, s1, 8
8000269c: 13 8a 04 01  	addi	s4, s1, 16
800026a0: 93 8a 84 01  	addi	s5, s1, 24
800026a4: 13 8b 04 02  	addi	s6, s1, 32
800026a8: 93 8b 84 02  	addi	s7, s1, 40
800026ac: 13 8c 04 03  	addi	s8, s1, 48
800026b0: 93 8c 84 03  	addi	s9, s1, 56
800026b4: 13 8d 04 04  	addi	s10, s1, 64
800026b8: 93 8d 84 04  	addi	s11, s1, 72
800026bc: 93 80 04 05  	addi	ra, s1, 80
800026c0: 93 8e 84 05  	addi	t4, s1, 88
800026c4: 13 84 84 06  	addi	s0, s1, 104
800026c8: 13 87 04 07  	addi	a4, s1, 112
800026cc: 93 85 84 07  	addi	a1, s1, 120
800026d0: 93 86 04 08  	addi	a3, s1, 128
800026d4: 13 86 84 08  	addi	a2, s1, 136
800026d8: 93 88 04 09  	addi	a7, s1, 144
800026dc: 13 83 84 09  	addi	t1, s1, 152
800026e0: 13 88 04 0a  	addi	a6, s1, 160
800026e4: 93 82 84 0a  	addi	t0, s1, 168
800026e8: 87 b1 04 00  	fld	ft3, 0(s1)
800026ec: b3 03 ff 00  	add	t2, t5, a5
800026f0: 07 b2 03 00  	fld	ft4, 0(t2)
800026f4: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800026f8: 07 b2 09 00  	fld	ft4, 0(s3)
800026fc: 87 b2 03 09  	fld	ft5, 144(t2)
80002700: 07 33 0a 00  	fld	ft6, 0(s4)
80002704: 87 b3 03 12  	fld	ft7, 288(t2)
80002708: 07 b5 0a 00  	fld	fa0, 0(s5)
8000270c: 87 b5 03 1b  	fld	fa1, 432(t2)
80002710: 07 36 0b 00  	fld	fa2, 0(s6)
80002714: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002718: 07 b2 03 24  	fld	ft4, 576(t2)
8000271c: 87 b2 0b 00  	fld	ft5, 0(s7)
80002720: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002724: 07 b3 03 2d  	fld	ft6, 720(t2)
80002728: 87 33 0c 00  	fld	ft7, 0(s8)
8000272c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002730: 07 b5 03 36  	fld	fa0, 864(t2)
80002734: 87 b5 0c 00  	fld	fa1, 0(s9)
80002738: c3 71 c2 1a  	fmadd.d	ft3, ft4, fa2, ft3
8000273c: 07 b2 03 3f  	fld	ft4, 1008(t2)
80002740: 07 36 0d 00  	fld	fa2, 0(s10)
80002744: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002748: 87 b2 03 48  	fld	ft5, 1152(t2)
8000274c: 07 b3 0d 00  	fld	ft6, 0(s11)
80002750: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002754: 87 b3 03 51  	fld	ft7, 1296(t2)
80002758: 07 b5 00 00  	fld	fa0, 0(ra)
8000275c: c3 71 b2 1a  	fmadd.d	ft3, ft4, fa1, ft3
80002760: 07 b2 03 5a  	fld	ft4, 1440(t2)
80002764: 87 b5 0e 00  	fld	fa1, 0(t4)
80002768: c3 f1 c2 1a  	fmadd.d	ft3, ft5, fa2, ft3
8000276c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002770: 07 b3 03 6c  	fld	ft6, 1728(t2)
80002774: 87 33 04 00  	fld	ft7, 0(s0)
80002778: c3 71 a2 1a  	fmadd.d	ft3, ft4, fa0, ft3
8000277c: 07 b2 03 75  	fld	ft4, 1872(t2)
80002780: 07 35 07 00  	fld	fa0, 0(a4)
80002784: c3 f1 b0 1a  	fmadd.d	ft3, ft1, fa1, ft3
80002788: 87 b2 03 7e  	fld	ft5, 2016(t2)
8000278c: 87 b5 05 00  	fld	fa1, 0(a1)
80002790: 13 8e 83 43  	addi	t3, t2, 1080
80002794: c3 71 23 1a  	fmadd.d	ft3, ft6, ft2, ft3
80002798: 07 33 8e 43  	fld	ft6, 1080(t3)
8000279c: 07 b6 06 00  	fld	fa2, 0(a3)
800027a0: c3 71 72 1a  	fmadd.d	ft3, ft4, ft7, ft3
800027a4: 87 33 06 00  	fld	ft7, 0(a2)
800027a8: 13 85 83 4c  	addi	a0, t2, 1224
800027ac: c3 f1 a2 1a  	fmadd.d	ft3, ft5, fa0, ft3
800027b0: 87 32 85 4c  	fld	ft5, 1224(a0)
800027b4: 07 b5 08 00  	fld	fa0, 0(a7)
800027b8: 13 85 03 51  	addi	a0, t2, 1296
800027bc: c3 71 b3 1a  	fmadd.d	ft3, ft6, fa1, ft3
800027c0: 07 33 05 51  	fld	ft6, 1296(a0)
800027c4: 87 35 03 00  	fld	fa1, 0(t1)
800027c8: 13 85 83 55  	addi	a0, t2, 1368
800027cc: c3 71 c0 1a  	fmadd.d	ft3, ft0, fa2, ft3
800027d0: 07 32 85 55  	fld	ft4, 1368(a0)
800027d4: 07 36 08 00  	fld	fa2, 0(a6)
800027d8: 13 85 03 5a  	addi	a0, t2, 1440
800027dc: c3 f1 72 1a  	fmadd.d	ft3, ft5, ft7, ft3
800027e0: 87 32 05 5a  	fld	ft5, 1440(a0)
800027e4: 87 b3 02 00  	fld	ft7, 0(t0)
800027e8: 13 85 83 5e  	addi	a0, t2, 1512
800027ec: c3 71 a3 1a  	fmadd.d	ft3, ft6, fa0, ft3
800027f0: 07 33 85 5e  	fld	ft6, 1512(a0)

800027f4 <.LBB0_134>:
800027f4: 17 35 00 00  	auipc	a0, 3
800027f8: 13 05 45 14  	addi	a0, a0, 324
800027fc: 07 35 05 00  	fld	fa0, 0(a0)
80002800: c3 71 b2 1a  	fmadd.d	ft3, ft4, fa1, ft3
80002804: c3 f1 c2 1a  	fmadd.d	ft3, ft5, fa2, ft3
80002808: c3 71 73 1a  	fmadd.d	ft3, ft6, ft7, ft3
;         x += alpha * A[i][k] * B[k][j];
8000280c: d3 f1 a1 12  	fmul.d	ft3, ft3, fa0
;       tmp[i][j] = x;
80002810: 33 05 f9 00  	add	a0, s2, a5
;     for (j = 0; j < nj; j++) {
80002814: 93 87 87 00  	addi	a5, a5, 8
;       tmp[i][j] = x;
80002818: 27 30 35 00  	fsd	ft3, 0(a0)
;     for (j = 0; j < nj; j++) {
8000281c: e3 96 f7 ed  	bne	a5, t6, 0x800026e8 <.LBB0_133+0x2a0>
80002820: 03 24 c1 07  	lw	s0, 124(sp)
;   for (i = 0; i < ni; i++) {
80002824: 13 04 14 00  	addi	s0, s0, 1
80002828: 13 09 09 09  	addi	s2, s2, 144
8000282c: 83 26 01 02  	lw	a3, 32(sp)
80002830: 13 05 00 01  	addi	a0, zero, 16
80002834: e3 18 a4 e4  	bne	s0, a0, 0x80002684 <.LBB0_133+0x23c>
80002838: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000283c: 6f 00 40 1e  	j	0x80002a20 <.LBB0_135+0x1dc>
80002840: 93 05 00 00  	mv	a1, zero

80002844 <.LBB0_135>:
80002844: 17 35 00 00  	auipc	a0, 3
80002848: 13 05 45 0f  	addi	a0, a0, 244
8000284c: 87 31 05 00  	fld	ft3, 0(a0)
80002850: 13 06 0e 00  	mv	a2, t3
80002854: 03 23 c1 01  	lw	t1, 28(sp)
80002858: 13 04 00 09  	addi	s0, zero, 144
8000285c: 13 07 00 00  	mv	a4, zero
80002860: 23 2c b1 06  	sw	a1, 120(sp)
;         x += alpha * A[i][k] * B[k][j];
80002864: 13 05 00 0b  	addi	a0, zero, 176
80002868: 33 85 a5 02  	mul	a0, a1, a0
8000286c: b3 87 a6 00  	add	a5, a3, a0
80002870: 13 85 87 00  	addi	a0, a5, 8
80002874: 23 2e a1 06  	sw	a0, 124(sp)
80002878: 13 8f 07 01  	addi	t5, a5, 16
8000287c: 93 8f 87 01  	addi	t6, a5, 24
80002880: 13 89 07 02  	addi	s2, a5, 32
80002884: 93 89 87 02  	addi	s3, a5, 40
80002888: 13 8a 07 03  	addi	s4, a5, 48
8000288c: 93 83 87 03  	addi	t2, a5, 56
80002890: 93 8a 07 04  	addi	s5, a5, 64
80002894: 13 8b 87 04  	addi	s6, a5, 72
80002898: 93 8b 07 05  	addi	s7, a5, 80
8000289c: 13 8c 87 05  	addi	s8, a5, 88
800028a0: 93 8c 07 06  	addi	s9, a5, 96
800028a4: 13 8d 87 06  	addi	s10, a5, 104
800028a8: 93 8d 07 07  	addi	s11, a5, 112
800028ac: 93 80 87 07  	addi	ra, a5, 120
800028b0: 93 82 07 08  	addi	t0, a5, 128
800028b4: 13 8e 87 08  	addi	t3, a5, 136
800028b8: 93 8e 07 09  	addi	t4, a5, 144
800028bc: 93 84 87 09  	addi	s1, a5, 152
800028c0: 93 85 07 0a  	addi	a1, a5, 160
800028c4: 93 86 87 0a  	addi	a3, a5, 168
800028c8: 07 b2 07 00  	fld	ft4, 0(a5)
800028cc: 33 08 e3 00  	add	a6, t1, a4
800028d0: 87 32 08 00  	fld	ft5, 0(a6)
800028d4: 53 f2 42 12  	fmul.d	ft4, ft5, ft4
800028d8: 03 25 c1 07  	lw	a0, 124(sp)
800028dc: 87 32 05 00  	fld	ft5, 0(a0)
800028e0: 07 33 08 09  	fld	ft6, 144(a6)
800028e4: 87 33 0f 00  	fld	ft7, 0(t5)
800028e8: 07 35 08 12  	fld	fa0, 288(a6)
800028ec: 87 b5 0f 00  	fld	fa1, 0(t6)
800028f0: 07 36 08 1b  	fld	fa2, 432(a6)
800028f4: 87 36 09 00  	fld	fa3, 0(s2)
800028f8: 07 37 08 24  	fld	fa4, 576(a6)
800028fc: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002900: 87 b2 09 00  	fld	ft5, 0(s3)
80002904: 07 33 08 2d  	fld	ft6, 720(a6)
80002908: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
8000290c: 87 33 0a 00  	fld	ft7, 0(s4)
80002910: 07 35 08 36  	fld	fa0, 864(a6)
80002914: 43 72 b6 22  	fmadd.d	ft4, fa2, fa1, ft4
80002918: 87 b5 03 00  	fld	fa1, 0(t2)
8000291c: 07 36 08 3f  	fld	fa2, 1008(a6)
80002920: 43 72 d7 22  	fmadd.d	ft4, fa4, fa3, ft4
80002924: 87 b6 0a 00  	fld	fa3, 0(s5)
80002928: 07 37 08 48  	fld	fa4, 1152(a6)
8000292c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002930: 87 32 0b 00  	fld	ft5, 0(s6)
80002934: 07 33 08 51  	fld	ft6, 1296(a6)
80002938: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
8000293c: 87 b3 0b 00  	fld	ft7, 0(s7)
80002940: 07 35 08 5a  	fld	fa0, 1440(a6)
80002944: 43 72 b6 22  	fmadd.d	ft4, fa2, fa1, ft4
80002948: 87 35 0c 00  	fld	fa1, 0(s8)
8000294c: 07 36 08 63  	fld	fa2, 1584(a6)
80002950: 43 72 d7 22  	fmadd.d	ft4, fa4, fa3, ft4
80002954: 87 b6 0c 00  	fld	fa3, 0(s9)
80002958: 07 37 08 6c  	fld	fa4, 1728(a6)
8000295c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002960: 87 32 0d 00  	fld	ft5, 0(s10)
80002964: 07 33 08 75  	fld	ft6, 1872(a6)
80002968: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
8000296c: 87 b3 0d 00  	fld	ft7, 0(s11)
80002970: 07 35 08 7e  	fld	fa0, 2016(a6)
80002974: 43 72 b6 22  	fmadd.d	ft4, fa2, fa1, ft4
80002978: 87 b5 00 00  	fld	fa1, 0(ra)
8000297c: 93 08 88 43  	addi	a7, a6, 1080
80002980: 07 b6 88 43  	fld	fa2, 1080(a7)
80002984: 43 72 d7 22  	fmadd.d	ft4, fa4, fa3, ft4
80002988: 87 b6 02 00  	fld	fa3, 0(t0)
8000298c: 13 05 08 48  	addi	a0, a6, 1152
80002990: 07 37 05 48  	fld	fa4, 1152(a0)
80002994: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002998: 87 32 0e 00  	fld	ft5, 0(t3)
8000299c: 13 05 88 4c  	addi	a0, a6, 1224
800029a0: 07 33 85 4c  	fld	ft6, 1224(a0)
800029a4: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
800029a8: 87 b3 0e 00  	fld	ft7, 0(t4)
800029ac: 13 05 08 51  	addi	a0, a6, 1296
800029b0: 07 35 05 51  	fld	fa0, 1296(a0)
800029b4: 43 72 b6 22  	fmadd.d	ft4, fa2, fa1, ft4
800029b8: 87 b5 04 00  	fld	fa1, 0(s1)
800029bc: 13 05 88 55  	addi	a0, a6, 1368
800029c0: 07 36 85 55  	fld	fa2, 1368(a0)
800029c4: 43 72 d7 22  	fmadd.d	ft4, fa4, fa3, ft4
800029c8: 87 b6 05 00  	fld	fa3, 0(a1)
800029cc: 13 05 08 5a  	addi	a0, a6, 1440
800029d0: 07 37 05 5a  	fld	fa4, 1440(a0)
800029d4: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800029d8: 87 b2 06 00  	fld	ft5, 0(a3)
800029dc: 13 05 88 5e  	addi	a0, a6, 1512
800029e0: 07 33 85 5e  	fld	ft6, 1512(a0)
800029e4: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
800029e8: 43 72 b6 22  	fmadd.d	ft4, fa2, fa1, ft4
800029ec: 43 72 d7 22  	fmadd.d	ft4, fa4, fa3, ft4
800029f0: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800029f4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
;       tmp[i][j] = x;
800029f8: 33 05 e6 00  	add	a0, a2, a4
;     for (j = 0; j < nj; j++) {
800029fc: 13 07 87 00  	addi	a4, a4, 8
;       tmp[i][j] = x;
80002a00: 27 30 45 00  	fsd	ft4, 0(a0)
;     for (j = 0; j < nj; j++) {
80002a04: e3 12 87 ec  	bne	a4, s0, 0x800028c8 <.LBB0_135+0x84>
80002a08: 83 25 81 07  	lw	a1, 120(sp)
;   for (i = 0; i < ni; i++) {
80002a0c: 93 85 15 00  	addi	a1, a1, 1
80002a10: 13 06 06 09  	addi	a2, a2, 144
80002a14: 83 26 01 02  	lw	a3, 32(sp)
80002a18: 13 05 00 01  	addi	a0, zero, 16
80002a1c: e3 90 a5 e4  	bne	a1, a0, 0x8000285c <.LBB0_135+0x18>
80002a20: 83 23 c1 00  	lw	t2, 12(sp)
80002a24: 83 24 c1 06  	lw	s1, 108(sp)
;   for (i = 0; i < ni; i++) {
80002a28: 33 85 74 00  	add	a0, s1, t2
80002a2c: b3 35 95 00  	sltu	a1, a0, s1
80002a30: 13 06 85 38  	addi	a2, a0, 904
80002a34: 33 35 a6 00  	sltu	a0, a2, a0
80002a38: 33 84 a5 00  	add	s0, a1, a0
80002a3c: 63 02 04 02  	beqz	s0, 0x80002a60 <.LBB0_135+0x21c>
80002a40: 13 05 00 00  	mv	a0, zero
80002a44: 83 20 81 00  	lw	ra, 8(sp)
80002a48: 83 2d 01 01  	lw	s11, 16(sp)
80002a4c: 83 25 81 06  	lw	a1, 104(sp)
80002a50: 63 92 05 02  	bnez	a1, 0x80002a74 <.LBB0_135+0x230>
80002a54: 83 25 01 06  	lw	a1, 96(sp)
80002a58: b3 b5 75 00  	sltu	a1, a1, t2
80002a5c: 6f 00 c0 01  	j	0x80002a78 <.LBB0_135+0x234>
80002a60: 83 2d 01 01  	lw	s11, 16(sp)
80002a64: 33 35 b6 01  	sltu	a0, a2, s11
80002a68: 83 20 81 00  	lw	ra, 8(sp)
80002a6c: 83 25 81 06  	lw	a1, 104(sp)
;   for (i = 0; i < ni; i++) {
80002a70: e3 82 05 fe  	beqz	a1, 0x80002a54 <.LBB0_135+0x210>
80002a74: 93 05 00 00  	mv	a1, zero
80002a78: b3 86 14 00  	add	a3, s1, ra
80002a7c: b3 b7 96 00  	sltu	a5, a3, s1
80002a80: 13 87 86 50  	addi	a4, a3, 1288
80002a84: b3 36 d7 00  	sltu	a3, a4, a3
80002a88: b3 87 d7 00  	add	a5, a5, a3
80002a8c: 63 0c 04 00  	beqz	s0, 0x80002aa4 <.LBB0_135+0x260>
80002a90: 93 06 00 00  	mv	a3, zero
80002a94: 33 e5 a5 00  	or	a0, a1, a0
80002a98: 63 9c 07 00  	bnez	a5, 0x80002ab0 <.LBB0_135+0x26c>
80002a9c: b3 35 77 00  	sltu	a1, a4, t2
80002aa0: 6f 00 40 01  	j	0x80002ab4 <.LBB0_135+0x270>
80002aa4: b3 36 16 00  	sltu	a3, a2, ra
;   for (i = 0; i < ni; i++) {
80002aa8: 33 e5 a5 00  	or	a0, a1, a0
80002aac: e3 88 07 fe  	beqz	a5, 0x80002a9c <.LBB0_135+0x258>
80002ab0: 93 05 00 00  	mv	a1, zero
80002ab4: b3 e5 d5 00  	or	a1, a1, a3
80002ab8: 33 75 b5 00  	and	a0, a0, a1
80002abc: 83 25 41 07  	lw	a1, 116(sp)
80002ac0: 33 f5 a5 00  	and	a0, a1, a0
80002ac4: 83 25 41 06  	lw	a1, 100(sp)
80002ac8: 33 f5 a5 00  	and	a0, a1, a0
80002acc: 63 00 05 1a  	beqz	a0, 0x80002c6c <.LBB0_136+0xe8>
80002ad0: 13 05 00 00  	mv	a0, zero
80002ad4: 93 05 80 00  	addi	a1, zero, 8
80002ad8: 13 06 70 01  	addi	a2, zero, 23
;   for (i = 0; i < ni; i++) {
80002adc: 93 06 00 04  	addi	a3, zero, 64
80002ae0: 13 07 00 0c  	addi	a4, zero, 192
80002ae4: ab 20 d6 00  	scfgw	a2, a3
80002ae8: ab a0 e5 00  	scfgw	a1, a4
80002aec: 93 06 f0 00  	addi	a3, zero, 15
80002af0: 13 07 00 06  	addi	a4, zero, 96
80002af4: 93 07 00 0e  	addi	a5, zero, 224
80002af8: ab a0 e6 00  	scfgw	a3, a4
80002afc: ab a0 f5 00  	scfgw	a1, a5
80002b00: 13 07 00 02  	addi	a4, zero, 32
80002b04: ab 20 e0 00  	scfgw	zero, a4
80002b08: 2b a0 03 32  	scfgwi	t2, 800
80002b0c: 13 07 10 00  	addi	a4, zero, 1
80002b10: 93 07 07 04  	addi	a5, a4, 64
80002b14: 93 04 07 0c  	addi	s1, a4, 192
80002b18: ab 20 f6 00  	scfgw	a2, a5
80002b1c: ab a0 95 00  	scfgw	a1, s1
80002b20: 93 07 07 06  	addi	a5, a4, 96
80002b24: 93 04 07 0e  	addi	s1, a4, 224
80002b28: ab a0 f6 00  	scfgw	a3, a5
80002b2c: ab a0 95 00  	scfgw	a1, s1
80002b30: 13 07 07 02  	addi	a4, a4, 32
80002b34: ab 20 e0 00  	scfgw	zero, a4
80002b38: 2b a0 13 3a  	scfgwi	t2, 929
80002b3c: 13 07 10 01  	addi	a4, zero, 17
80002b40: 93 07 20 00  	addi	a5, zero, 2
80002b44: 93 84 07 04  	addi	s1, a5, 64
80002b48: ab 20 97 00  	scfgw	a4, s1
80002b4c: 13 87 07 0c  	addi	a4, a5, 192
80002b50: ab a0 e5 00  	scfgw	a1, a4
80002b54: 13 07 80 f7  	addi	a4, zero, -136
80002b58: 93 84 07 06  	addi	s1, a5, 96
80002b5c: ab 20 96 00  	scfgw	a2, s1
80002b60: 13 86 07 0e  	addi	a2, a5, 224
80002b64: ab 20 c7 00  	scfgw	a4, a2
80002b68: 13 86 07 08  	addi	a2, a5, 128
80002b6c: 13 87 07 10  	addi	a4, a5, 256
80002b70: ab a0 c6 00  	scfgw	a3, a2
80002b74: ab a0 e5 00  	scfgw	a1, a4
80002b78: 93 85 07 02  	addi	a1, a5, 32
80002b7c: ab 20 b0 00  	scfgw	zero, a1
80002b80: 2b a0 2d 34  	scfgwi	s11, 834

80002b84 <.LBB0_136>:
80002b84: 97 35 00 00  	auipc	a1, 3
80002b88: 93 85 c5 db  	addi	a1, a1, -580
80002b8c: 87 b1 05 00  	fld	ft3, 0(a1)
;   for (i = 0; i < ni; i++) {
80002b90: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80002b94: 93 05 00 0c  	addi	a1, zero, 192
80002b98: 13 06 00 01  	addi	a2, zero, 16
80002b9c: 93 06 00 00  	mv	a3, zero
;         x += tmp[i][k] * C[k][j];
80002ba0: 33 87 d0 00  	add	a4, ra, a3
80002ba4: 07 33 07 00  	fld	ft6, 0(a4)
80002ba8: 07 35 07 0c  	fld	fa0, 192(a4)
;       x *= beta;
80002bac: 53 72 30 12  	fmul.d	ft4, ft0, ft3
;         x += tmp[i][k] * C[k][j];
80002bb0: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002bb4: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002bb8: 07 33 07 18  	fld	ft6, 384(a4)
80002bbc: 07 35 07 24  	fld	fa0, 576(a4)
80002bc0: 07 36 07 30  	fld	fa2, 768(a4)
80002bc4: 07 37 07 3c  	fld	fa4, 960(a4)
80002bc8: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002bcc: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002bd0: 43 72 26 22  	fmadd.d	ft4, fa2, ft2, ft4
80002bd4: 43 72 27 22  	fmadd.d	ft4, fa4, ft2, ft4
80002bd8: 07 33 07 48  	fld	ft6, 1152(a4)
80002bdc: 07 35 07 54  	fld	fa0, 1344(a4)
80002be0: 07 36 07 60  	fld	fa2, 1536(a4)
80002be4: 07 37 07 6c  	fld	fa4, 1728(a4)
80002be8: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002bec: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002bf0: 43 72 26 22  	fmadd.d	ft4, fa2, ft2, ft4
80002bf4: 43 72 27 22  	fmadd.d	ft4, fa4, ft2, ft4
80002bf8: 07 33 07 78  	fld	ft6, 1920(a4)
80002bfc: 93 07 07 42  	addi	a5, a4, 1056
80002c00: 07 b5 07 42  	fld	fa0, 1056(a5)
80002c04: 93 07 07 48  	addi	a5, a4, 1152
80002c08: 07 b6 07 48  	fld	fa2, 1152(a5)
80002c0c: 93 07 07 4e  	addi	a5, a4, 1248
80002c10: 07 b7 07 4e  	fld	fa4, 1248(a5)
80002c14: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002c18: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002c1c: 43 72 26 22  	fmadd.d	ft4, fa2, ft2, ft4
80002c20: 43 72 27 22  	fmadd.d	ft4, fa4, ft2, ft4
80002c24: 93 07 07 54  	addi	a5, a4, 1344
80002c28: 07 b3 07 54  	fld	ft6, 1344(a5)
80002c2c: 93 07 07 5a  	addi	a5, a4, 1440
80002c30: 07 b5 07 5a  	fld	fa0, 1440(a5)
80002c34: 93 07 07 60  	addi	a5, a4, 1536
80002c38: 07 b6 07 60  	fld	fa2, 1536(a5)
80002c3c: 13 07 07 66  	addi	a4, a4, 1632
80002c40: 07 37 07 66  	fld	fa4, 1632(a4)
80002c44: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002c48: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002c4c: 43 72 26 22  	fmadd.d	ft4, fa2, ft2, ft4
80002c50: 43 72 27 22  	fmadd.d	ft4, fa4, ft2, ft4
;       D[i][j] = x;
80002c54: d3 00 42 22  	fmv.d	ft1, ft4
;     for (j = 0; j < nl; j++) {
80002c58: 93 86 86 00  	addi	a3, a3, 8
80002c5c: e3 92 b6 f4  	bne	a3, a1, 0x80002ba0 <.LBB0_136+0x1c>
;   for (i = 0; i < ni; i++) {
80002c60: 13 05 15 00  	addi	a0, a0, 1
80002c64: e3 1c c5 f2  	bne	a0, a2, 0x80002b9c <.LBB0_136+0x18>
80002c68: 6f 00 00 30  	j	0x80002f68 <.LBB0_137+0x110>
80002c6c: 13 85 00 4e  	addi	a0, ra, 1248
80002c70: 93 08 05 4e  	addi	a7, a0, 1248
80002c74: 13 85 c0 53  	addi	a0, ra, 1340
80002c78: 93 05 c5 53  	addi	a1, a0, 1340
80002c7c: 13 85 8d 04  	addi	a0, s11, 72
80002c80: 63 f0 15 03  	bgeu	a1, a7, 0x80002ca0 <.LBB0_136+0x11c>
80002c84: 13 08 00 00  	mv	a6, zero
80002c88: b3 05 95 00  	add	a1, a0, s1
80002c8c: 63 10 04 02  	bnez	s0, 0x80002cac <.LBB0_136+0x128>
80002c90: b3 37 16 01  	sltu	a5, a2, a7
;   for (i = 0; i < ni; i++) {
80002c94: 63 e0 a5 02  	bltu	a1, a0, 0x80002cb4 <.LBB0_136+0x130>
80002c98: b3 b4 75 00  	sltu	s1, a1, t2
80002c9c: 6f 00 c0 01  	j	0x80002cb8 <.LBB0_136+0x134>
80002ca0: 33 b8 75 00  	sltu	a6, a1, t2
;   for (i = 0; i < ni; i++) {
80002ca4: b3 05 95 00  	add	a1, a0, s1
80002ca8: e3 04 04 fe  	beqz	s0, 0x80002c90 <.LBB0_136+0x10c>
80002cac: 93 07 00 00  	mv	a5, zero
80002cb0: e3 f4 a5 fe  	bgeu	a1, a0, 0x80002c98 <.LBB0_136+0x114>
80002cb4: 93 04 00 00  	mv	s1, zero
80002cb8: 93 86 00 6c  	addi	a3, ra, 1728
80002cbc: 13 87 80 77  	addi	a4, ra, 1912
80002cc0: 63 0a 04 00  	beqz	s0, 0x80002cd4 <.LBB0_136+0x150>
80002cc4: 93 05 00 00  	mv	a1, zero
80002cc8: 63 6a d7 00  	bltu	a4, a3, 0x80002cdc <.LBB0_136+0x158>
80002ccc: 33 37 77 00  	sltu	a4, a4, t2
80002cd0: 6f 00 00 01  	j	0x80002ce0 <.LBB0_136+0x15c>
80002cd4: b3 35 a6 00  	sltu	a1, a2, a0
;   for (i = 0; i < ni; i++) {
80002cd8: e3 7a d7 fe  	bgeu	a4, a3, 0x80002ccc <.LBB0_136+0x148>
80002cdc: 13 07 00 00  	mv	a4, zero
80002ce0: b3 67 f8 00  	or	a5, a6, a5
80002ce4: b3 e5 b4 00  	or	a1, s1, a1
80002ce8: 63 06 04 00  	beqz	s0, 0x80002cf4 <.LBB0_136+0x170>
80002cec: 13 06 00 00  	mv	a2, zero
80002cf0: 6f 00 80 00  	j	0x80002cf8 <.LBB0_136+0x174>
80002cf4: 33 36 d6 00  	sltu	a2, a2, a3
;   for (i = 0; i < ni; i++) {
80002cf8: 33 66 c7 00  	or	a2, a4, a2
80002cfc: b3 f5 b7 00  	and	a1, a5, a1
80002d00: b3 75 b6 00  	and	a1, a2, a1
80002d04: 13 d6 48 01  	srli	a2, a7, 20
80002d08: 33 36 c0 00  	snez	a2, a2
80002d0c: 37 07 12 00  	lui	a4, 288
80002d10: 13 07 97 f4  	addi	a4, a4, -183
80002d14: b3 b7 e8 00  	sltu	a5, a7, a4
80002d18: 33 76 f6 00  	and	a2, a2, a5
80002d1c: b3 75 b6 00  	and	a1, a2, a1
80002d20: 13 56 45 01  	srli	a2, a0, 20
80002d24: 33 36 c0 00  	snez	a2, a2
80002d28: b7 f7 11 00  	lui	a5, 287
80002d2c: 93 87 17 79  	addi	a5, a5, 1937
80002d30: b3 37 f5 00  	sltu	a5, a0, a5
80002d34: 33 76 f6 00  	and	a2, a2, a5
80002d38: b3 75 b6 00  	and	a1, a2, a1
80002d3c: 13 d6 46 01  	srli	a2, a3, 20
80002d40: 33 36 c0 00  	snez	a2, a2
80002d44: 33 b7 e6 00  	sltu	a4, a3, a4
80002d48: 33 76 e6 00  	and	a2, a2, a4
80002d4c: 93 02 00 00  	mv	t0, zero
80002d50: b3 75 b6 00  	and	a1, a2, a1
80002d54: 63 8e 05 20  	beqz	a1, 0x80002f70 <.LBB0_138>
80002d58: 13 03 80 00  	addi	t1, zero, 8
80002d5c: 13 06 70 01  	addi	a2, zero, 23
;   for (i = 0; i < ni; i++) {
80002d60: 13 07 00 04  	addi	a4, zero, 64
80002d64: 93 07 00 0c  	addi	a5, zero, 192
80002d68: ab 20 e6 00  	scfgw	a2, a4
80002d6c: ab 20 f3 00  	scfgw	t1, a5
80002d70: 13 07 80 f4  	addi	a4, zero, -184
80002d74: 93 07 f0 00  	addi	a5, zero, 15
80002d78: 93 04 00 06  	addi	s1, zero, 96
80002d7c: 13 04 00 0e  	addi	s0, zero, 224
80002d80: ab a0 97 00  	scfgw	a5, s1
80002d84: ab 20 87 00  	scfgw	a4, s0
80002d88: 93 04 00 02  	addi	s1, zero, 32
80002d8c: ab 20 90 00  	scfgw	zero, s1
80002d90: 2b a0 08 32  	scfgwi	a7, 800
80002d94: 93 04 10 00  	addi	s1, zero, 1
80002d98: 13 84 04 04  	addi	s0, s1, 64
80002d9c: 93 85 04 0c  	addi	a1, s1, 192
80002da0: ab 20 86 00  	scfgw	a2, s0
80002da4: ab 20 b0 00  	scfgw	zero, a1
80002da8: 13 08 00 09  	addi	a6, zero, 144
80002dac: 93 85 04 06  	addi	a1, s1, 96
80002db0: ab a0 b7 00  	scfgw	a5, a1
80002db4: 93 85 04 0e  	addi	a1, s1, 224
80002db8: ab 20 b8 00  	scfgw	a6, a1
80002dbc: 93 85 04 02  	addi	a1, s1, 32
80002dc0: ab 20 b0 00  	scfgw	zero, a1
80002dc4: 2b 20 15 32  	scfgwi	a0, 801
80002dc8: 13 05 20 00  	addi	a0, zero, 2
80002dcc: 93 05 05 04  	addi	a1, a0, 64
80002dd0: 93 04 05 0c  	addi	s1, a0, 192
80002dd4: ab 20 b6 00  	scfgw	a2, a1
80002dd8: ab 20 93 00  	scfgw	t1, s1
80002ddc: 93 05 05 06  	addi	a1, a0, 96
80002de0: 13 06 05 0e  	addi	a2, a0, 224
80002de4: ab a0 b7 00  	scfgw	a5, a1
80002de8: ab 20 c7 00  	scfgw	a4, a2
80002dec: 13 05 05 02  	addi	a0, a0, 32
80002df0: ab 20 a0 00  	scfgw	zero, a0
80002df4: 2b a0 26 32  	scfgwi	a3, 802
80002df8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002dfc: 13 03 00 0c  	addi	t1, zero, 192
80002e00: 93 08 00 01  	addi	a7, zero, 16
80002e04: 93 07 00 00  	mv	a5, zero
;         x += tmp[i][k] * C[k][j];
80002e08: 33 85 02 03  	mul	a0, t0, a6
80002e0c: b3 84 ad 00  	add	s1, s11, a0
80002e10: 13 8e 84 00  	addi	t3, s1, 8
80002e14: 93 8e 04 01  	addi	t4, s1, 16
80002e18: 13 8f 84 01  	addi	t5, s1, 24
80002e1c: 93 8f 04 02  	addi	t6, s1, 32
80002e20: 13 89 84 02  	addi	s2, s1, 40
80002e24: 93 89 04 03  	addi	s3, s1, 48
80002e28: 13 8a 84 03  	addi	s4, s1, 56
80002e2c: 93 8a 04 04  	addi	s5, s1, 64
80002e30: 13 8b 04 05  	addi	s6, s1, 80
80002e34: 93 8b 84 05  	addi	s7, s1, 88
80002e38: 13 8c 04 06  	addi	s8, s1, 96
80002e3c: 93 8c 84 06  	addi	s9, s1, 104
80002e40: 13 8d 04 07  	addi	s10, s1, 112
80002e44: 93 85 84 07  	addi	a1, s1, 120
80002e48: 93 86 04 08  	addi	a3, s1, 128
80002e4c: 13 86 84 08  	addi	a2, s1, 136
;       double x = D[i][j];
80002e50: 33 85 f3 00  	add	a0, t2, a5
80002e54: 87 31 05 00  	fld	ft3, 0(a0)

80002e58 <.LBB0_137>:
80002e58: 17 37 00 00  	auipc	a4, 3
80002e5c: 13 07 87 ae  	addi	a4, a4, -1304
80002e60: 07 32 07 00  	fld	ft4, 0(a4)
;         x += tmp[i][k] * C[k][j];
80002e64: 87 b2 04 00  	fld	ft5, 0(s1)
80002e68: 33 87 f0 00  	add	a4, ra, a5
80002e6c: 07 33 07 00  	fld	ft6, 0(a4)
80002e70: 87 33 0e 00  	fld	ft7, 0(t3)
80002e74: 07 35 07 0c  	fld	fa0, 192(a4)
;       x *= beta;
80002e78: d3 f1 41 12  	fmul.d	ft3, ft3, ft4
;         x += tmp[i][k] * C[k][j];
80002e7c: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002e80: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002e84: 07 b2 0e 00  	fld	ft4, 0(t4)
80002e88: 87 32 07 18  	fld	ft5, 384(a4)
80002e8c: 07 33 0f 00  	fld	ft6, 0(t5)
80002e90: 87 33 07 24  	fld	ft7, 576(a4)
80002e94: 07 b5 0f 00  	fld	fa0, 0(t6)
80002e98: 87 35 07 30  	fld	fa1, 768(a4)
80002e9c: 07 36 09 00  	fld	fa2, 0(s2)
80002ea0: 87 36 07 3c  	fld	fa3, 960(a4)
80002ea4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002ea8: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002eac: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002eb0: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002eb4: 07 b2 09 00  	fld	ft4, 0(s3)
80002eb8: 87 32 07 48  	fld	ft5, 1152(a4)
80002ebc: 07 33 0a 00  	fld	ft6, 0(s4)
80002ec0: 87 33 07 54  	fld	ft7, 1344(a4)
80002ec4: 07 b5 0a 00  	fld	fa0, 0(s5)
80002ec8: 87 35 07 60  	fld	fa1, 1536(a4)
80002ecc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002ed0: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002ed4: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002ed8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002edc: 07 32 0b 00  	fld	ft4, 0(s6)
80002ee0: 87 32 07 78  	fld	ft5, 1920(a4)
80002ee4: 07 b3 0b 00  	fld	ft6, 0(s7)
80002ee8: 13 04 07 42  	addi	s0, a4, 1056
80002eec: 87 33 04 42  	fld	ft7, 1056(s0)
80002ef0: 07 35 0c 00  	fld	fa0, 0(s8)
80002ef4: 13 04 07 48  	addi	s0, a4, 1152
80002ef8: 87 35 04 48  	fld	fa1, 1152(s0)
80002efc: 07 b6 0c 00  	fld	fa2, 0(s9)
80002f00: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002f04: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002f08: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002f0c: c3 71 c0 1a  	fmadd.d	ft3, ft0, fa2, ft3
80002f10: 07 32 0d 00  	fld	ft4, 0(s10)
80002f14: 13 04 07 54  	addi	s0, a4, 1344
80002f18: 87 32 04 54  	fld	ft5, 1344(s0)
80002f1c: 07 b3 05 00  	fld	ft6, 0(a1)
80002f20: 13 04 07 5a  	addi	s0, a4, 1440
80002f24: 87 33 04 5a  	fld	ft7, 1440(s0)
80002f28: 07 b5 06 00  	fld	fa0, 0(a3)
80002f2c: 13 04 07 60  	addi	s0, a4, 1536
80002f30: 87 35 04 60  	fld	fa1, 1536(s0)
80002f34: 07 36 06 00  	fld	fa2, 0(a2)
80002f38: 13 07 07 66  	addi	a4, a4, 1632
80002f3c: 87 36 07 66  	fld	fa3, 1632(a4)
80002f40: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002f44: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002f48: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002f4c: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;     for (j = 0; j < nl; j++) {
80002f50: 93 87 87 00  	addi	a5, a5, 8
;       D[i][j] = x;
80002f54: 27 30 35 00  	fsd	ft3, 0(a0)
;     for (j = 0; j < nl; j++) {
80002f58: e3 9c 67 ee  	bne	a5, t1, 0x80002e50 <.LBB0_136+0x2cc>
;   for (i = 0; i < ni; i++) {
80002f5c: 93 82 12 00  	addi	t0, t0, 1
80002f60: 93 83 03 0c  	addi	t2, t2, 192
80002f64: e3 90 12 eb  	bne	t0, a7, 0x80002e04 <.LBB0_136+0x280>
80002f68: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002f6c: 6f 00 c0 18  	j	0x800030f8 <.LBB0_138+0x188>

80002f70 <.LBB0_138>:
80002f70: 17 35 00 00  	auipc	a0, 3
80002f74: 13 05 05 9d  	addi	a0, a0, -1584
80002f78: 87 31 05 00  	fld	ft3, 0(a0)
80002f7c: 13 08 00 09  	addi	a6, zero, 144
80002f80: 13 03 00 0c  	addi	t1, zero, 192
80002f84: 93 08 00 01  	addi	a7, zero, 16
80002f88: 93 07 00 00  	mv	a5, zero
;         x += tmp[i][k] * C[k][j];
80002f8c: 33 85 02 03  	mul	a0, t0, a6
80002f90: b3 84 ad 00  	add	s1, s11, a0
80002f94: 13 8e 84 00  	addi	t3, s1, 8
80002f98: 93 8e 04 01  	addi	t4, s1, 16
80002f9c: 13 8f 84 01  	addi	t5, s1, 24
80002fa0: 93 8f 04 02  	addi	t6, s1, 32
80002fa4: 13 89 84 02  	addi	s2, s1, 40
80002fa8: 93 89 04 03  	addi	s3, s1, 48
80002fac: 13 8a 84 03  	addi	s4, s1, 56
80002fb0: 93 8a 04 04  	addi	s5, s1, 64
80002fb4: 13 8b 84 04  	addi	s6, s1, 72
80002fb8: 93 8b 04 05  	addi	s7, s1, 80
80002fbc: 13 8c 84 05  	addi	s8, s1, 88
80002fc0: 93 8c 04 06  	addi	s9, s1, 96
80002fc4: 13 8d 84 06  	addi	s10, s1, 104
80002fc8: 93 8d 04 07  	addi	s11, s1, 112
80002fcc: 93 86 84 07  	addi	a3, s1, 120
80002fd0: 13 85 04 08  	addi	a0, s1, 128
80002fd4: 13 86 84 08  	addi	a2, s1, 136
;       double x = D[i][j];
80002fd8: 33 87 f3 00  	add	a4, t2, a5
80002fdc: 07 32 07 00  	fld	ft4, 0(a4)
;         x += tmp[i][k] * C[k][j];
80002fe0: 87 b2 04 00  	fld	ft5, 0(s1)
80002fe4: 33 84 f0 00  	add	s0, ra, a5
80002fe8: 07 33 04 00  	fld	ft6, 0(s0)
80002fec: 87 33 0e 00  	fld	ft7, 0(t3)
80002ff0: 07 35 04 0c  	fld	fa0, 192(s0)
;       x *= beta;
80002ff4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
;         x += tmp[i][k] * C[k][j];
80002ff8: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002ffc: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
80003000: 87 b2 0e 00  	fld	ft5, 0(t4)
80003004: 07 33 04 18  	fld	ft6, 384(s0)
80003008: 87 33 0f 00  	fld	ft7, 0(t5)
8000300c: 07 35 04 24  	fld	fa0, 576(s0)
80003010: 87 b5 0f 00  	fld	fa1, 0(t6)
80003014: 07 36 04 30  	fld	fa2, 768(s0)
80003018: 87 36 09 00  	fld	fa3, 0(s2)
8000301c: 07 37 04 3c  	fld	fa4, 960(s0)
80003020: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003024: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
80003028: 43 72 b6 22  	fmadd.d	ft4, fa2, fa1, ft4
8000302c: 43 72 d7 22  	fmadd.d	ft4, fa4, fa3, ft4
80003030: 87 b2 09 00  	fld	ft5, 0(s3)
80003034: 07 33 04 48  	fld	ft6, 1152(s0)
80003038: 87 33 0a 00  	fld	ft7, 0(s4)
8000303c: 07 35 04 54  	fld	fa0, 1344(s0)
80003040: 87 b5 0a 00  	fld	fa1, 0(s5)
80003044: 07 36 04 60  	fld	fa2, 1536(s0)
80003048: 87 36 0b 00  	fld	fa3, 0(s6)
8000304c: 07 37 04 6c  	fld	fa4, 1728(s0)
80003050: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003054: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
80003058: 43 72 b6 22  	fmadd.d	ft4, fa2, fa1, ft4
8000305c: 43 72 d7 22  	fmadd.d	ft4, fa4, fa3, ft4
80003060: 87 b2 0b 00  	fld	ft5, 0(s7)
80003064: 07 33 04 78  	fld	ft6, 1920(s0)
80003068: 87 33 0c 00  	fld	ft7, 0(s8)
8000306c: 93 05 04 42  	addi	a1, s0, 1056
80003070: 07 b5 05 42  	fld	fa0, 1056(a1)
80003074: 87 b5 0c 00  	fld	fa1, 0(s9)
80003078: 93 05 04 48  	addi	a1, s0, 1152
8000307c: 07 b6 05 48  	fld	fa2, 1152(a1)
80003080: 87 36 0d 00  	fld	fa3, 0(s10)
80003084: 93 05 04 4e  	addi	a1, s0, 1248
80003088: 07 b7 05 4e  	fld	fa4, 1248(a1)
8000308c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003090: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
80003094: 43 72 b6 22  	fmadd.d	ft4, fa2, fa1, ft4
80003098: 43 72 d7 22  	fmadd.d	ft4, fa4, fa3, ft4
8000309c: 87 b2 0d 00  	fld	ft5, 0(s11)
800030a0: 93 05 04 54  	addi	a1, s0, 1344
800030a4: 07 b3 05 54  	fld	ft6, 1344(a1)
800030a8: 87 b3 06 00  	fld	ft7, 0(a3)
800030ac: 93 05 04 5a  	addi	a1, s0, 1440
800030b0: 07 b5 05 5a  	fld	fa0, 1440(a1)
800030b4: 87 35 05 00  	fld	fa1, 0(a0)
800030b8: 93 05 04 60  	addi	a1, s0, 1536
800030bc: 07 b6 05 60  	fld	fa2, 1536(a1)
800030c0: 87 36 06 00  	fld	fa3, 0(a2)
800030c4: 93 05 04 66  	addi	a1, s0, 1632
800030c8: 07 b7 05 66  	fld	fa4, 1632(a1)
800030cc: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800030d0: 43 72 75 22  	fmadd.d	ft4, fa0, ft7, ft4
800030d4: 43 72 b6 22  	fmadd.d	ft4, fa2, fa1, ft4
800030d8: 43 72 d7 22  	fmadd.d	ft4, fa4, fa3, ft4
;     for (j = 0; j < nl; j++) {
800030dc: 93 87 87 00  	addi	a5, a5, 8
;       D[i][j] = x;
800030e0: 27 30 47 00  	fsd	ft4, 0(a4)
;     for (j = 0; j < nl; j++) {
800030e4: e3 9a 67 ee  	bne	a5, t1, 0x80002fd8 <.LBB0_138+0x68>
;   for (i = 0; i < ni; i++) {
800030e8: 93 82 12 00  	addi	t0, t0, 1
800030ec: 93 83 03 0c  	addi	t2, t2, 192
800030f0: 83 2d 01 01  	lw	s11, 16(sp)
800030f4: e3 9a 12 e9  	bne	t0, a7, 0x80002f88 <.LBB0_138+0x18>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800030f8: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
800030fc: 83 25 01 07  	lw	a1, 112(sp)
80003100: b3 05 b5 40  	sub	a1, a0, a1

80003104 <.LBB0_139>:
80003104: 17 25 00 00  	auipc	a0, 2
80003108: 13 05 d5 58  	addi	a0, a0, 1421
8000310c: 97 00 00 00  	auipc	ra, 0
80003110: e7 80 00 24  	jalr	576(ra)
80003114: 03 25 41 07  	lw	a0, 116(sp)
80003118: 63 0e 05 0a  	beqz	a0, 0x800031d4 <.LBB0_139+0xd0>
8000311c: 13 05 80 00  	addi	a0, zero, 8
80003120: 93 05 70 01  	addi	a1, zero, 23
;     for (int i = 0; i < n; i++){
80003124: 13 06 00 04  	addi	a2, zero, 64
80003128: 93 06 00 0c  	addi	a3, zero, 192
8000312c: ab a0 c5 00  	scfgw	a1, a2
80003130: ab 20 d5 00  	scfgw	a0, a3
80003134: 93 05 f0 00  	addi	a1, zero, 15
80003138: 13 06 00 06  	addi	a2, zero, 96
8000313c: 93 06 00 0e  	addi	a3, zero, 224
80003140: ab a0 c5 00  	scfgw	a1, a2
80003144: ab 20 d5 00  	scfgw	a0, a3
80003148: 13 05 00 02  	addi	a0, zero, 32
8000314c: ab 20 a0 00  	scfgw	zero, a0
80003150: 03 25 c1 00  	lw	a0, 12(sp)
80003154: 2b 20 05 32  	scfgwi	a0, 800
80003158: 73 e5 00 7c  	csrrsi	a0, 1984, 1
8000315c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80003160: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
80003164: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003168: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000316c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003170: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003174: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003178: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000317c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003180: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003184: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003188: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000318c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003190: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003194: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003198: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000319c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800031a0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800031a4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800031a8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800031ac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800031b0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800031b4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800031b8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800031bc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800031c0: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
800031c4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800031c8: e3 1e 05 f8  	bnez	a0, 0x80003164 <.LBB0_139+0x60>
800031cc: 73 f5 00 7c  	csrrci	a0, 1984, 1
800031d0: 6f 00 00 0e  	j	0x800032b0 <.LBB0_140>
;     for (int i = 0; i < n; i++){
800031d4: 03 25 c1 00  	lw	a0, 12(sp)
800031d8: 13 05 05 06  	addi	a0, a0, 96
800031dc: d3 01 00 d2  	fcvt.d.w	ft3, zero
800031e0: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
800031e4: 07 32 05 fa  	fld	ft4, -96(a0)
800031e8: 87 32 85 fa  	fld	ft5, -88(a0)
800031ec: 07 33 05 fb  	fld	ft6, -80(a0)
800031f0: 87 33 85 fb  	fld	ft7, -72(a0)
800031f4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800031f8: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800031fc: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003200: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003204: 07 32 05 fc  	fld	ft4, -64(a0)
80003208: 87 32 85 fc  	fld	ft5, -56(a0)
8000320c: 07 33 05 fd  	fld	ft6, -48(a0)
80003210: 87 33 85 fd  	fld	ft7, -40(a0)
80003214: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003218: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
8000321c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003220: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003224: 07 32 05 fe  	fld	ft4, -32(a0)
80003228: 87 32 85 fe  	fld	ft5, -24(a0)
8000322c: 07 33 05 ff  	fld	ft6, -16(a0)
80003230: 87 33 85 ff  	fld	ft7, -8(a0)
80003234: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003238: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
8000323c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003240: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003244: 07 32 05 00  	fld	ft4, 0(a0)
80003248: 87 32 85 00  	fld	ft5, 8(a0)
8000324c: 07 33 05 01  	fld	ft6, 16(a0)
80003250: 87 33 85 01  	fld	ft7, 24(a0)
80003254: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003258: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
8000325c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003260: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003264: 07 32 05 02  	fld	ft4, 32(a0)
80003268: 87 32 85 02  	fld	ft5, 40(a0)
8000326c: 07 33 05 03  	fld	ft6, 48(a0)
80003270: 87 33 85 03  	fld	ft7, 56(a0)
80003274: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003278: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
8000327c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003280: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003284: 07 32 05 04  	fld	ft4, 64(a0)
80003288: 87 32 85 04  	fld	ft5, 72(a0)
8000328c: 07 33 05 05  	fld	ft6, 80(a0)
80003290: 87 33 85 05  	fld	ft7, 88(a0)
80003294: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003298: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
8000329c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800032a0: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
800032a4: 93 85 f5 ff  	addi	a1, a1, -1
800032a8: 13 05 05 0c  	addi	a0, a0, 192
800032ac: e3 9c 05 f2  	bnez	a1, 0x800031e4 <.LBB0_139+0xe0>

800032b0 <.LBB0_140>:
800032b0: 17 25 00 00  	auipc	a0, 2
800032b4: 13 05 85 69  	addi	a0, a0, 1688
800032b8: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
800032bc: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
800032c0: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
800032c4: 27 30 81 08  	fsd	fs0, 128(sp)
800032c8: 03 26 01 08  	lw	a2, 128(sp)
800032cc: 83 26 41 08  	lw	a3, 132(sp)

800032d0 <.LBB0_141>:
800032d0: 17 25 00 00  	auipc	a0, 2
800032d4: 13 05 55 3b  	addi	a0, a0, 949
800032d8: 97 00 00 00  	auipc	ra, 0
800032dc: e7 80 40 07  	jalr	116(ra)

800032e0 <.LBB0_142>:
800032e0: 17 25 00 00  	auipc	a0, 2
800032e4: 13 05 05 67  	addi	a0, a0, 1648
800032e8: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
800032ec: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
800032f0: 87 3b 81 08  	fld	fs7, 136(sp)
800032f4: 07 3b 01 09  	fld	fs6, 144(sp)
800032f8: 87 3a 81 09  	fld	fs5, 152(sp)
800032fc: 07 3a 01 0a  	fld	fs4, 160(sp)
80003300: 87 39 81 0a  	fld	fs3, 168(sp)
80003304: 07 39 01 0b  	fld	fs2, 176(sp)
80003308: 87 34 81 0b  	fld	fs1, 184(sp)
8000330c: 07 34 01 0c  	fld	fs0, 192(sp)
80003310: 83 2d c1 0c  	lw	s11, 204(sp)
80003314: 03 2d 01 0d  	lw	s10, 208(sp)
80003318: 83 2c 41 0d  	lw	s9, 212(sp)
8000331c: 03 2c 81 0d  	lw	s8, 216(sp)
80003320: 83 2b c1 0d  	lw	s7, 220(sp)
80003324: 03 2b 01 0e  	lw	s6, 224(sp)
80003328: 83 2a 41 0e  	lw	s5, 228(sp)
8000332c: 03 2a 81 0e  	lw	s4, 232(sp)
80003330: 83 29 c1 0e  	lw	s3, 236(sp)
80003334: 03 29 01 0f  	lw	s2, 240(sp)
80003338: 83 24 41 0f  	lw	s1, 244(sp)
8000333c: 03 24 81 0f  	lw	s0, 248(sp)
80003340: 83 20 c1 0f  	lw	ra, 252(sp)
80003344: 13 01 01 10  	addi	sp, sp, 256
80003348: 67 80 00 00  	ret

8000334c <printf_>:
; {
8000334c: 13 01 01 fd  	addi	sp, sp, -48
80003350: 23 26 11 00  	sw	ra, 12(sp)
80003354: 93 02 05 00  	mv	t0, a0
80003358: 23 26 11 03  	sw	a7, 44(sp)
8000335c: 23 24 01 03  	sw	a6, 40(sp)
80003360: 23 22 f1 02  	sw	a5, 36(sp)
80003364: 23 20 e1 02  	sw	a4, 32(sp)
80003368: 23 2e d1 00  	sw	a3, 28(sp)
8000336c: 23 2c c1 00  	sw	a2, 24(sp)
80003370: 23 2a b1 00  	sw	a1, 20(sp)
80003374: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80003378: 23 24 a1 00  	sw	a0, 8(sp)

8000337c <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
8000337c: 17 15 00 00  	auipc	a0, 1
80003380: 13 05 45 c2  	addi	a0, a0, -988
80003384: 93 05 71 00  	addi	a1, sp, 7
80003388: 13 06 f0 ff  	addi	a2, zero, -1
8000338c: 13 07 41 01  	addi	a4, sp, 20
80003390: 93 86 02 00  	mv	a3, t0
80003394: 97 00 00 00  	auipc	ra, 0
80003398: e7 80 40 01  	jalr	20(ra)
;   return ret;
8000339c: 83 20 c1 00  	lw	ra, 12(sp)
800033a0: 13 01 01 03  	addi	sp, sp, 48
800033a4: 67 80 00 00  	ret

800033a8 <_vsnprintf.llvm.17592004524093383706>:
; {
800033a8: 13 01 01 f9  	addi	sp, sp, -112
800033ac: 23 26 11 06  	sw	ra, 108(sp)
800033b0: 23 24 81 06  	sw	s0, 104(sp)
800033b4: 23 22 91 06  	sw	s1, 100(sp)
800033b8: 23 20 21 07  	sw	s2, 96(sp)
800033bc: 23 2e 31 05  	sw	s3, 92(sp)
800033c0: 23 2c 41 05  	sw	s4, 88(sp)
800033c4: 23 2a 51 05  	sw	s5, 84(sp)
800033c8: 23 28 61 05  	sw	s6, 80(sp)
800033cc: 23 26 71 05  	sw	s7, 76(sp)
800033d0: 23 24 81 05  	sw	s8, 72(sp)
800033d4: 23 22 91 05  	sw	s9, 68(sp)
800033d8: 23 20 a1 05  	sw	s10, 64(sp)
800033dc: 23 2e b1 03  	sw	s11, 60(sp)
800033e0: 93 09 07 00  	mv	s3, a4
800033e4: 13 84 06 00  	mv	s0, a3
800033e8: 93 0a 06 00  	mv	s5, a2
800033ec: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800033f0: 63 86 05 00  	beqz	a1, 0x800033fc <.LBB1_183>
800033f4: 13 09 05 00  	mv	s2, a0
800033f8: 6f 00 c0 00  	j	0x80003404 <.LBB1_183+0x8>

800033fc <.LBB1_183>:
800033fc: 17 19 00 00  	auipc	s2, 1
80003400: 13 09 09 c5  	addi	s2, s2, -944
80003404: 13 0c 00 00  	mv	s8, zero
80003408: 13 0b 50 02  	addi	s6, zero, 37
8000340c: 93 0d 00 01  	addi	s11, zero, 16
80003410: 93 0b e0 02  	addi	s7, zero, 46
80003414: 37 15 00 00  	lui	a0, 1
80003418: 13 05 05 80  	addi	a0, a0, -2048
8000341c: 23 2c a1 00  	sw	a0, 24(sp)
80003420: 37 05 01 00  	lui	a0, 16
80003424: 13 05 f5 ff  	addi	a0, a0, -1
80003428: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
8000342c: 13 0d 24 00  	addi	s10, s0, 2
80003430: 93 0c 0c 00  	mv	s9, s8
80003434: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80003438: 03 45 04 00  	lbu	a0, 0(s0)
8000343c: e3 04 05 30  	beqz	a0, 0x80003f44 <.LBB1_124+0x3b0>
80003440: 63 08 65 03  	beq	a0, s6, 0x80003470 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80003444: 93 84 1c 00  	addi	s1, s9, 1
80003448: 93 05 0a 00  	mv	a1, s4
8000344c: 13 86 0c 00  	mv	a2, s9
80003450: 93 86 0a 00  	mv	a3, s5
80003454: e7 00 09 00  	jalr	s2
;       format++;
80003458: 13 04 14 00  	addi	s0, s0, 1
;       continue;
8000345c: 13 0d 1d 00  	addi	s10, s10, 1
80003460: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80003464: 03 45 04 00  	lbu	a0, 0(s0)
80003468: e3 1c 05 fc  	bnez	a0, 0x80003440 <.LBB1_183+0x44>
8000346c: 6f 00 90 2d  	j	0x80003f44 <.LBB1_124+0x3b0>
;     flags = 0U;
80003470: 13 04 00 00  	mv	s0, zero
80003474: 6f 00 00 01  	j	0x80003484 <.LBB1_9+0x8>

80003478 <.LBB1_8>:
80003478: 93 05 00 01  	addi	a1, zero, 16

8000347c <.LBB1_9>:
8000347c: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80003480: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80003484: 03 45 fd ff  	lbu	a0, -1(s10)
80003488: 93 05 05 fe  	addi	a1, a0, -32
8000348c: 63 ec bd 02  	bltu	s11, a1, 0x800034c4 <.LBB1_15>
80003490: 93 95 25 00  	slli	a1, a1, 2

80003494 <.LBB1_184>:
80003494: 17 26 00 00  	auipc	a2, 2
80003498: 13 06 06 21  	addi	a2, a2, 528
8000349c: b3 85 c5 00  	add	a1, a1, a2
800034a0: 03 a6 05 00  	lw	a2, 0(a1)
800034a4: 93 05 10 00  	addi	a1, zero, 1
800034a8: 67 00 06 00  	jr	a2

800034ac <.LBB1_12>:
800034ac: 93 05 80 00  	addi	a1, zero, 8
800034b0: 6f f0 df fc  	j	0x8000347c <.LBB1_9>

800034b4 <.LBB1_13>:
800034b4: 93 05 40 00  	addi	a1, zero, 4
800034b8: 6f f0 5f fc  	j	0x8000347c <.LBB1_9>

800034bc <.LBB1_14>:
800034bc: 93 05 20 00  	addi	a1, zero, 2
800034c0: 6f f0 df fb  	j	0x8000347c <.LBB1_9>

800034c4 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800034c4: 93 05 05 fd  	addi	a1, a0, -48
800034c8: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800034cc: 93 05 fd ff  	addi	a1, s10, -1
800034d0: 93 06 90 00  	addi	a3, zero, 9
800034d4: 63 ee c6 06  	bltu	a3, a2, 0x80003550 <.LBB1_15+0x8c>
800034d8: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800034dc: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800034e0: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800034e4: b3 06 8b 03  	mul	a3, s6, s8
800034e8: 93 85 15 00  	addi	a1, a1, 1
800034ec: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800034f0: 93 06 05 fd  	addi	a3, a0, -48
800034f4: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800034f8: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800034fc: e3 e0 86 ff  	bltu	a3, s8, 0x800034dc <.LBB1_15+0x18>
80003500: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003504: 63 16 75 0b  	bne	a0, s7, 0x800035b0 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80003508: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
8000350c: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80003510: 93 05 05 fd  	addi	a1, a0, -48
80003514: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80003518: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
8000351c: 93 06 90 00  	addi	a3, zero, 9
80003520: 63 e0 c6 06  	bltu	a3, a2, 0x80003580 <.LBB1_15+0xbc>
80003524: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003528: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000352c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003530: b3 86 8b 03  	mul	a3, s7, s8
80003534: 93 85 15 00  	addi	a1, a1, 1
80003538: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000353c: 93 06 05 fd  	addi	a3, a0, -48
80003540: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003544: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80003548: e3 e0 86 ff  	bltu	a3, s8, 0x80003528 <.LBB1_15+0x64>
8000354c: 6f 00 00 07  	j	0x800035bc <.LBB1_15+0xf8>
;     else if (*format == '*') {
80003550: 13 06 a0 02  	addi	a2, zero, 42
80003554: 63 18 c5 04  	bne	a0, a2, 0x800035a4 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80003558: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
8000355c: 63 d4 05 00  	bgez	a1, 0x80003564 <.LBB1_15+0xa0>
80003560: 13 64 24 00  	ori	s0, s0, 2
80003564: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80003568: 03 45 0d 00  	lbu	a0, 0(s10)
8000356c: 13 d6 f5 41  	srai	a2, a1, 31
80003570: b3 85 c5 00  	add	a1, a1, a2
80003574: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80003578: e3 08 75 f9  	beq	a0, s7, 0x80003508 <.LBB1_15+0x44>
8000357c: 6f 00 40 03  	j	0x800035b0 <.LBB1_15+0xec>
;       else if (*format == '*') {
80003580: 13 06 a0 02  	addi	a2, zero, 42
80003584: 63 1a c5 02  	bne	a0, a2, 0x800035b8 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80003588: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
8000358c: 63 44 70 01  	bgtz	s7, 0x80003594 <.LBB1_15+0xd0>
80003590: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80003594: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80003598: 13 0d 2d 00  	addi	s10, s10, 2
8000359c: 93 89 49 00  	addi	s3, s3, 4
800035a0: 6f 00 00 02  	j	0x800035c0 <.LBB1_15+0xfc>
800035a4: 13 0b 00 00  	mv	s6, zero
800035a8: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800035ac: e3 0e 75 f5  	beq	a0, s7, 0x80003508 <.LBB1_15+0x44>
800035b0: 93 0b 00 00  	mv	s7, zero
800035b4: 6f 00 c0 00  	j	0x800035c0 <.LBB1_15+0xfc>
800035b8: 93 0b 00 00  	mv	s7, zero
800035bc: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800035c0: 93 05 85 f9  	addi	a1, a0, -104
800035c4: 13 d6 15 00  	srli	a2, a1, 1
800035c8: 93 95 f5 01  	slli	a1, a1, 31
800035cc: b3 e5 c5 00  	or	a1, a1, a2
800035d0: 13 06 90 00  	addi	a2, zero, 9
800035d4: 63 62 b6 06  	bltu	a2, a1, 0x80003638 <.LBB1_42>
800035d8: 93 95 25 00  	slli	a1, a1, 2

800035dc <.LBB1_185>:
800035dc: 17 26 00 00  	auipc	a2, 2
800035e0: 13 06 c6 10  	addi	a2, a2, 268
800035e4: b3 85 c5 00  	add	a1, a1, a2
800035e8: 83 a6 05 00  	lw	a3, 0(a1)
800035ec: 93 05 10 00  	addi	a1, zero, 1
800035f0: 13 06 00 10  	addi	a2, zero, 256
800035f4: 67 80 06 00  	jr	a3

800035f8 <.LBB1_36>:
;         if (*format == 'h') {
800035f8: 03 45 1d 00  	lbu	a0, 1(s10)
800035fc: 93 05 80 06  	addi	a1, zero, 104
80003600: 63 12 b5 12  	bne	a0, a1, 0x80003724 <.LBB1_53+0x48>
80003604: 93 05 20 00  	addi	a1, zero, 2
80003608: 13 06 00 0c  	addi	a2, zero, 192
8000360c: 6f 00 00 02  	j	0x8000362c <.LBB1_41>

80003610 <.LBB1_38>:
80003610: 13 06 00 20  	addi	a2, zero, 512
80003614: 6f 00 80 01  	j	0x8000362c <.LBB1_41>

80003618 <.LBB1_39>:
;         if (*format == 'l') {
80003618: 03 45 1d 00  	lbu	a0, 1(s10)
8000361c: 93 05 c0 06  	addi	a1, zero, 108
80003620: 63 18 b5 10  	bne	a0, a1, 0x80003730 <.LBB1_53+0x54>
80003624: 93 05 20 00  	addi	a1, zero, 2
80003628: 13 06 00 30  	addi	a2, zero, 768

8000362c <.LBB1_41>:
8000362c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80003630: 03 45 0d 00  	lbu	a0, 0(s10)
80003634: 33 64 c4 00  	or	s0, s0, a2

80003638 <.LBB1_42>:
;     switch (*format) {
80003638: 93 05 b5 fd  	addi	a1, a0, -37
8000363c: 13 06 30 05  	addi	a2, zero, 83
80003640: 63 64 b6 10  	bltu	a2, a1, 0x80003748 <.LBB1_59>
80003644: 93 95 25 00  	slli	a1, a1, 2

80003648 <.LBB1_186>:
80003648: 17 26 00 00  	auipc	a2, 2
8000364c: 13 06 86 0c  	addi	a2, a2, 200
80003650: b3 85 c5 00  	add	a1, a1, a2
80003654: 03 a6 05 00  	lw	a2, 0(a1)
80003658: 93 05 80 00  	addi	a1, zero, 8
8000365c: 13 0c 00 01  	addi	s8, zero, 16
80003660: 67 00 06 00  	jr	a2

80003664 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80003664: 13 74 f4 fe  	andi	s0, s0, -17
80003668: 13 0c a0 00  	addi	s8, zero, 10

8000366c <.LBB1_45>:
;         if (*format == 'X') {
8000366c: 93 05 80 05  	addi	a1, zero, 88
80003670: 63 14 b5 00  	bne	a0, a1, 0x80003678 <.LBB1_45+0xc>
80003674: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80003678: 93 05 40 06  	addi	a1, zero, 100
8000367c: 63 08 b5 0e  	beq	a0, a1, 0x8000376c <.LBB1_62+0x8>
80003680: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80003684: 13 06 90 06  	addi	a2, zero, 105
80003688: 63 02 c5 0e  	beq	a0, a2, 0x8000376c <.LBB1_62+0x8>
8000368c: 6f 00 80 0d  	j	0x80003764 <.LBB1_62>

80003690 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80003690: 93 05 60 04  	addi	a1, zero, 70
80003694: 63 14 b5 00  	bne	a0, a1, 0x8000369c <.LBB1_49+0xc>
80003698: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
8000369c: 13 85 79 00  	addi	a0, s3, 7
800036a0: 13 75 85 ff  	andi	a0, a0, -8
800036a4: 07 35 05 00  	fld	fa0, 0(a0)
800036a8: 93 09 85 00  	addi	s3, a0, 8
800036ac: 13 05 09 00  	mv	a0, s2
800036b0: 93 05 0a 00  	mv	a1, s4
800036b4: 13 86 0c 00  	mv	a2, s9
800036b8: 93 86 0a 00  	mv	a3, s5
800036bc: 13 87 0b 00  	mv	a4, s7
800036c0: 93 07 0b 00  	mv	a5, s6
800036c4: 13 08 04 00  	mv	a6, s0
800036c8: 97 10 00 00  	auipc	ra, 1
800036cc: e7 80 80 98  	jalr	-1656(ra)
800036d0: 6f 00 00 7c  	j	0x80003e90 <.LBB1_124+0x2fc>

800036d4 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800036d4: 83 25 81 01  	lw	a1, 24(sp)
800036d8: 33 64 b4 00  	or	s0, s0, a1

800036dc <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800036dc: 13 65 25 00  	ori	a0, a0, 2
800036e0: 93 05 70 04  	addi	a1, zero, 71
800036e4: 63 14 b5 00  	bne	a0, a1, 0x800036ec <.LBB1_53+0x10>
800036e8: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800036ec: 13 85 79 00  	addi	a0, s3, 7
800036f0: 13 75 85 ff  	andi	a0, a0, -8
800036f4: 07 35 05 00  	fld	fa0, 0(a0)
800036f8: 93 09 85 00  	addi	s3, a0, 8
800036fc: 13 05 09 00  	mv	a0, s2
80003700: 93 05 0a 00  	mv	a1, s4
80003704: 13 86 0c 00  	mv	a2, s9
80003708: 93 86 0a 00  	mv	a3, s5
8000370c: 13 87 0b 00  	mv	a4, s7
80003710: 93 07 0b 00  	mv	a5, s6
80003714: 13 08 04 00  	mv	a6, s0
80003718: 97 10 00 00  	auipc	ra, 1
8000371c: e7 80 80 01  	jalr	24(ra)
80003720: 6f 00 00 77  	j	0x80003e90 <.LBB1_124+0x2fc>
80003724: 13 64 04 08  	ori	s0, s0, 128
80003728: 13 0d 1d 00  	addi	s10, s10, 1
8000372c: 6f f0 df f0  	j	0x80003638 <.LBB1_42>
80003730: 13 64 04 10  	ori	s0, s0, 256
80003734: 13 0d 1d 00  	addi	s10, s10, 1
80003738: 6f f0 1f f0  	j	0x80003638 <.LBB1_42>

8000373c <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
8000373c: 13 8c 1c 00  	addi	s8, s9, 1
80003740: 13 05 50 02  	addi	a0, zero, 37
80003744: 6f 00 80 00  	j	0x8000374c <.LBB1_59+0x4>

80003748 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80003748: 13 8c 1c 00  	addi	s8, s9, 1
8000374c: 93 05 0a 00  	mv	a1, s4
80003750: 13 86 0c 00  	mv	a2, s9
80003754: 93 86 0a 00  	mv	a3, s5
80003758: e7 00 09 00  	jalr	s2
8000375c: 6f 00 80 73  	j	0x80003e94 <.LBB1_124+0x300>

80003760 <.LBB1_61>:
80003760: 93 05 20 00  	addi	a1, zero, 2

80003764 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80003764: 13 74 34 ff  	andi	s0, s0, -13
80003768: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
8000376c: 93 75 04 40  	andi	a1, s0, 1024
80003770: 63 84 05 00  	beqz	a1, 0x80003778 <.LBB1_62+0x14>
80003774: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80003778: 93 05 90 06  	addi	a1, zero, 105
8000377c: 63 06 b5 00  	beq	a0, a1, 0x80003788 <.LBB1_62+0x24>
80003780: 93 05 40 06  	addi	a1, zero, 100
80003784: 63 1c b5 12  	bne	a0, a1, 0x800038bc <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80003788: 13 75 04 20  	andi	a0, s0, 512
8000378c: 63 16 05 02  	bnez	a0, 0x800037b8 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80003790: 13 75 04 10  	andi	a0, s0, 256
80003794: 63 1c 05 14  	bnez	a0, 0x800038ec <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003798: 13 75 04 04  	andi	a0, s0, 64
8000379c: 63 18 05 4e  	bnez	a0, 0x80003c8c <.LBB1_124+0xf8>
800037a0: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800037a4: 93 75 04 08  	andi	a1, s0, 128
800037a8: 63 84 05 4e  	beqz	a1, 0x80003c90 <.LBB1_124+0xfc>
800037ac: 13 15 08 01  	slli	a0, a6, 16
800037b0: 13 58 05 41  	srai	a6, a0, 16
800037b4: 6f 00 c0 4d  	j	0x80003c90 <.LBB1_124+0xfc>
800037b8: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800037bc: 13 85 79 00  	addi	a0, s3, 7
800037c0: 13 75 85 ff  	andi	a0, a0, -8
800037c4: 83 29 05 00  	lw	s3, 0(a0)
800037c8: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800037cc: 13 65 45 00  	ori	a0, a0, 4
800037d0: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800037d4: 23 24 a1 00  	sw	a0, 8(sp)
800037d8: 33 e5 a9 00  	or	a0, s3, a0
800037dc: 63 14 05 00  	bnez	a0, 0x800037e4 <.LBB1_62+0x80>
800037e0: 13 74 f4 fe  	andi	s0, s0, -17
800037e4: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800037e8: 93 75 04 40  	andi	a1, s0, 1024
800037ec: 93 d5 a5 00  	srli	a1, a1, 10
800037f0: 33 75 b5 00  	and	a0, a0, a1
800037f4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800037f8: 63 14 05 0a  	bnez	a0, 0x800038a0 <.LBB1_62+0x13c>
800037fc: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003800: 63 da 04 00  	bgez	s1, 0x80003814 <.LBB1_62+0xb0>
80003804: 33 35 30 01  	snez	a0, s3
80003808: b3 09 30 41  	neg	s3, s3
8000380c: 33 85 a4 00  	add	a0, s1, a0
80003810: b3 04 a0 40  	neg	s1, a0
80003814: 13 09 00 00  	mv	s2, zero
80003818: 13 75 04 02  	andi	a0, s0, 32
8000381c: 13 45 15 06  	xori	a0, a0, 97
80003820: 13 05 65 0f  	addi	a0, a0, 246
80003824: 23 2a a1 00  	sw	a0, 20(sp)
80003828: 6f 00 40 02  	j	0x8000384c <.LBB1_62+0xe8>
8000382c: 13 06 10 00  	addi	a2, zero, 1
80003830: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003834: 93 36 f9 01  	sltiu	a3, s2, 31
80003838: 33 f6 c6 00  	and	a2, a3, a2
8000383c: 13 89 07 00  	mv	s2, a5
80003840: 93 09 05 00  	mv	s3, a0
80003844: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003848: 63 0c 06 04  	beqz	a2, 0x800038a0 <.LBB1_62+0x13c>
;       value /= base;
8000384c: 13 85 09 00  	mv	a0, s3
80003850: 93 85 04 00  	mv	a1, s1
80003854: 13 06 0c 00  	mv	a2, s8
80003858: 93 06 00 00  	mv	a3, zero
8000385c: 97 c0 ff ff  	auipc	ra, 1048572
80003860: e7 80 40 7a  	jalr	1956(ra)
80003864: 33 06 85 03  	mul	a2, a0, s8
80003868: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000386c: 13 77 e6 0f  	andi	a4, a2, 254
80003870: 93 06 00 03  	addi	a3, zero, 48
80003874: 93 07 a0 00  	addi	a5, zero, 10
80003878: 63 64 f7 00  	bltu	a4, a5, 0x80003880 <.LBB1_62+0x11c>
8000387c: 83 26 41 01  	lw	a3, 20(sp)
80003880: 33 86 c6 00  	add	a2, a3, a2
80003884: 93 06 c1 01  	addi	a3, sp, 28
80003888: b3 86 26 01  	add	a3, a3, s2
8000388c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003890: e3 9e 04 f8  	bnez	s1, 0x8000382c <.LBB1_62+0xc8>
80003894: 33 b6 89 01  	sltu	a2, s3, s8
80003898: 13 46 16 00  	xori	a2, a2, 1
8000389c: 6f f0 5f f9  	j	0x80003830 <.LBB1_62+0xcc>
800038a0: 03 25 41 00  	lw	a0, 4(sp)
800038a4: 93 09 85 00  	addi	s3, a0, 8
800038a8: 03 25 81 00  	lw	a0, 8(sp)
800038ac: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800038b0: 13 07 c1 01  	addi	a4, sp, 28
800038b4: 03 29 c1 00  	lw	s2, 12(sp)
800038b8: 6f 00 80 47  	j	0x80003d30 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
800038bc: 13 75 04 20  	andi	a0, s0, 512
800038c0: 63 12 05 0c  	bnez	a0, 0x80003984 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800038c4: 13 75 04 10  	andi	a0, s0, 256
800038c8: 63 1e 05 46  	bnez	a0, 0x80003d44 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800038cc: 13 75 04 04  	andi	a0, s0, 64
800038d0: 63 10 05 50  	bnez	a0, 0x80003dd0 <.LBB1_124+0x23c>
800038d4: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800038d8: 93 75 04 08  	andi	a1, s0, 128
800038dc: 63 8c 05 4e  	beqz	a1, 0x80003dd4 <.LBB1_124+0x240>
800038e0: 83 25 01 01  	lw	a1, 16(sp)
800038e4: 33 75 b5 00  	and	a0, a0, a1
800038e8: 6f 00 c0 4e  	j	0x80003dd4 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800038ec: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800038f0: 63 14 08 00  	bnez	a6, 0x800038f8 <.LBB1_62+0x194>
800038f4: 13 74 f4 fe  	andi	s0, s0, -17
800038f8: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800038fc: 13 76 04 40  	andi	a2, s0, 1024
80003900: 13 56 a6 00  	srli	a2, a2, 10
80003904: b3 f5 c5 00  	and	a1, a1, a2
80003908: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000390c: 63 9c 05 40  	bnez	a1, 0x80003d24 <.LBB1_124+0x190>
80003910: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003914: 13 56 f8 41  	srai	a2, a6, 31
80003918: b3 06 c8 00  	add	a3, a6, a2
8000391c: b3 c6 c6 00  	xor	a3, a3, a2
80003920: 13 76 04 02  	andi	a2, s0, 32
80003924: 13 46 16 06  	xori	a2, a2, 97
80003928: 93 08 66 0f  	addi	a7, a2, 246
8000392c: 6f 00 40 03  	j	0x80003960 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003930: 33 05 f6 00  	add	a0, a2, a5
80003934: 93 87 15 00  	addi	a5, a1, 1
80003938: 13 06 c1 01  	addi	a2, sp, 28
8000393c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003940: b3 b6 86 01  	sltu	a3, a3, s8
80003944: 93 c6 16 00  	xori	a3, a3, 1
80003948: 93 b5 f5 01  	sltiu	a1, a1, 31
8000394c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003950: 23 00 a6 00  	sb	a0, 0(a2)
80003954: 93 85 07 00  	mv	a1, a5
80003958: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000395c: 63 84 04 3c  	beqz	s1, 0x80003d24 <.LBB1_124+0x190>
;       value /= base;
80003960: 33 d7 86 03  	divu	a4, a3, s8
80003964: 33 06 87 03  	mul	a2, a4, s8
80003968: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000396c: 13 f5 e7 0f  	andi	a0, a5, 254
80003970: 13 06 00 03  	addi	a2, zero, 48
80003974: 93 04 a0 00  	addi	s1, zero, 10
80003978: e3 6c 95 fa  	bltu	a0, s1, 0x80003930 <.LBB1_62+0x1cc>
8000397c: 13 86 08 00  	mv	a2, a7
80003980: 6f f0 1f fb  	j	0x80003930 <.LBB1_62+0x1cc>
80003984: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003988: 13 85 79 00  	addi	a0, s3, 7
8000398c: 93 75 85 ff  	andi	a1, a0, -8
80003990: 03 a9 05 00  	lw	s2, 0(a1)
80003994: 13 e5 45 00  	ori	a0, a1, 4
80003998: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
8000399c: 33 65 39 01  	or	a0, s2, s3
800039a0: 23 24 b1 00  	sw	a1, 8(sp)
800039a4: 63 14 05 00  	bnez	a0, 0x800039ac <.LBB1_62+0x248>
800039a8: 13 74 f4 fe  	andi	s0, s0, -17
800039ac: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800039b0: 93 75 04 40  	andi	a1, s0, 1024
800039b4: 93 d5 a5 00  	srli	a1, a1, 10
800039b8: 33 75 b5 00  	and	a0, a0, a1
800039bc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800039c0: 63 18 05 08  	bnez	a0, 0x80003a50 <.LBB1_62+0x2ec>
800039c4: 93 04 00 00  	mv	s1, zero
800039c8: 13 75 04 02  	andi	a0, s0, 32
800039cc: 13 45 15 06  	xori	a0, a0, 97
800039d0: 13 05 65 0f  	addi	a0, a0, 246
800039d4: 23 2a a1 00  	sw	a0, 20(sp)
800039d8: 6f 00 40 02  	j	0x800039fc <.LBB1_62+0x298>
800039dc: 13 06 10 00  	addi	a2, zero, 1
800039e0: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039e4: 93 b6 f4 01  	sltiu	a3, s1, 31
800039e8: 33 f6 c6 00  	and	a2, a3, a2
800039ec: 93 84 07 00  	mv	s1, a5
800039f0: 13 09 05 00  	mv	s2, a0
800039f4: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039f8: 63 0c 06 04  	beqz	a2, 0x80003a50 <.LBB1_62+0x2ec>
;       value /= base;
800039fc: 13 05 09 00  	mv	a0, s2
80003a00: 93 85 09 00  	mv	a1, s3
80003a04: 13 06 0c 00  	mv	a2, s8
80003a08: 93 06 00 00  	mv	a3, zero
80003a0c: 97 c0 ff ff  	auipc	ra, 1048572
80003a10: e7 80 40 5f  	jalr	1524(ra)
80003a14: 33 06 85 03  	mul	a2, a0, s8
80003a18: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a1c: 13 77 e6 0f  	andi	a4, a2, 254
80003a20: 93 06 00 03  	addi	a3, zero, 48
80003a24: 93 07 a0 00  	addi	a5, zero, 10
80003a28: 63 64 f7 00  	bltu	a4, a5, 0x80003a30 <.LBB1_62+0x2cc>
80003a2c: 83 26 41 01  	lw	a3, 20(sp)
80003a30: 33 86 c6 00  	add	a2, a3, a2
80003a34: 93 06 c1 01  	addi	a3, sp, 28
80003a38: b3 86 96 00  	add	a3, a3, s1
80003a3c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a40: e3 9e 09 f8  	bnez	s3, 0x800039dc <.LBB1_62+0x278>
80003a44: 33 36 89 01  	sltu	a2, s2, s8
80003a48: 13 46 16 00  	xori	a2, a2, 1
80003a4c: 6f f0 5f f9  	j	0x800039e0 <.LBB1_62+0x27c>
80003a50: 03 25 81 00  	lw	a0, 8(sp)
80003a54: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003a58: 13 07 c1 01  	addi	a4, sp, 28
80003a5c: 03 29 c1 00  	lw	s2, 12(sp)
80003a60: 6f 00 40 40  	j	0x80003e64 <.LBB1_124+0x2d0>

80003a64 <.LBB1_108>:
80003a64: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003a68: 13 79 24 00  	andi	s2, s0, 2
80003a6c: 93 04 10 00  	addi	s1, zero, 1
80003a70: 63 1e 09 02  	bnez	s2, 0x80003aac <.LBB1_108+0x48>
80003a74: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003a78: 63 6a 9b 02  	bltu	s6, s1, 0x80003aac <.LBB1_108+0x48>
80003a7c: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80003a80: 13 0c fb ff  	addi	s8, s6, -1
80003a84: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003a88: 33 86 8c 00  	add	a2, s9, s0
80003a8c: 13 05 00 02  	addi	a0, zero, 32
80003a90: 93 05 0a 00  	mv	a1, s4
80003a94: 93 86 0a 00  	mv	a3, s5
80003a98: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003a9c: 13 04 14 00  	addi	s0, s0, 1
80003aa0: e3 14 8c fe  	bne	s8, s0, 0x80003a88 <.LBB1_108+0x24>
80003aa4: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003aa8: b3 8c 8c 00  	add	s9, s9, s0
80003aac: 03 c5 09 00  	lbu	a0, 0(s3)
80003ab0: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003ab4: 93 89 49 00  	addi	s3, s3, 4
80003ab8: 13 8c 1c 00  	addi	s8, s9, 1
80003abc: 93 05 0a 00  	mv	a1, s4
80003ac0: 13 86 0c 00  	mv	a2, s9
80003ac4: 93 86 0a 00  	mv	a3, s5
80003ac8: 13 89 0b 00  	mv	s2, s7
80003acc: e7 80 0b 00  	jalr	s7
80003ad0: 33 b5 64 01  	sltu	a0, s1, s6
80003ad4: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003ad8: 33 65 a4 00  	or	a0, s0, a0
80003adc: 63 1c 05 3a  	bnez	a0, 0x80003e94 <.LBB1_124+0x300>
;           while (l++ < width) {
80003ae0: 33 04 9b 40  	sub	s0, s6, s1
80003ae4: 93 0b e0 02  	addi	s7, zero, 46
80003ae8: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003aec: 13 0c 1c 00  	addi	s8, s8, 1
80003af0: 13 05 00 02  	addi	a0, zero, 32
80003af4: 93 05 0a 00  	mv	a1, s4
80003af8: 93 86 0a 00  	mv	a3, s5
80003afc: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003b00: 13 04 f4 ff  	addi	s0, s0, -1
80003b04: e3 12 04 fe  	bnez	s0, 0x80003ae8 <.LBB1_108+0x84>
80003b08: 13 0b 50 02  	addi	s6, zero, 37
80003b0c: 13 04 1d 00  	addi	s0, s10, 1
80003b10: 6f f0 df 91  	j	0x8000342c <.LBB1_183+0x30>

80003b14 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003b14: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003b18: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003b1c: 63 14 05 00  	bnez	a0, 0x80003b24 <.LBB1_117+0x10>
80003b20: 93 fe fe fe  	andi	t4, t4, -17
80003b24: 93 04 a0 00  	addi	s1, zero, 10
80003b28: 13 04 f0 00  	addi	s0, zero, 15
80003b2c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b30: 13 f6 0e 40  	andi	a2, t4, 1024
80003b34: 13 56 a6 00  	srli	a2, a2, 10
80003b38: b3 f5 c5 00  	and	a1, a1, a2
80003b3c: 93 07 00 00  	mv	a5, zero
80003b40: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b44: 63 98 05 10  	bnez	a1, 0x80003c54 <.LBB1_124+0xc0>
80003b48: 93 05 00 00  	mv	a1, zero
80003b4c: 6f 00 40 03  	j	0x80003b80 <.LBB1_117+0x6c>
80003b50: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b54: 33 06 d6 00  	add	a2, a2, a3
80003b58: 93 87 15 00  	addi	a5, a1, 1
80003b5c: 93 06 c1 01  	addi	a3, sp, 28
80003b60: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b64: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003b68: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b6c: 93 b5 f5 01  	sltiu	a1, a1, 31
80003b70: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b74: 23 80 c6 00  	sb	a2, 0(a3)
80003b78: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b7c: 63 0c 07 0c  	beqz	a4, 0x80003c54 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b80: 93 76 e5 00  	andi	a3, a0, 14
80003b84: 13 06 00 03  	addi	a2, zero, 48
80003b88: e3 e4 96 fc  	bltu	a3, s1, 0x80003b50 <.LBB1_117+0x3c>
80003b8c: 13 06 70 03  	addi	a2, zero, 55
80003b90: 6f f0 1f fc  	j	0x80003b50 <.LBB1_117+0x3c>

80003b94 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80003b94: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003b98: 03 c5 07 00  	lbu	a0, 0(a5)
80003b9c: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80003ba0: 63 0c 05 02  	beqz	a0, 0x80003bd8 <.LBB1_124+0x44>
80003ba4: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003ba8: 63 84 0b 00  	beqz	s7, 0x80003bb0 <.LBB1_124+0x1c>
80003bac: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80003bb0: 93 85 f5 ff  	addi	a1, a1, -1
80003bb4: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003bb8: 03 c7 16 00  	lbu	a4, 1(a3)
80003bbc: 13 86 16 00  	addi	a2, a3, 1
80003bc0: b3 36 e0 00  	snez	a3, a4
80003bc4: 33 37 b0 00  	snez	a4, a1
80003bc8: 33 77 d7 00  	and	a4, a4, a3
80003bcc: 93 85 f5 ff  	addi	a1, a1, -1
80003bd0: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003bd4: e3 12 07 fe  	bnez	a4, 0x80003bb8 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003bd8: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003bdc: 93 75 04 40  	andi	a1, s0, 1024
80003be0: 93 b4 15 00  	seqz	s1, a1
80003be4: 23 2a c1 00  	sw	a2, 20(sp)
80003be8: b3 35 76 01  	sltu	a1, a2, s7
80003bec: b3 e5 b4 00  	or	a1, s1, a1
80003bf0: 63 94 05 00  	bnez	a1, 0x80003bf8 <.LBB1_124+0x64>
80003bf4: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003bf8: 93 75 24 00  	andi	a1, s0, 2
80003bfc: 23 26 b1 00  	sw	a1, 12(sp)
80003c00: 63 96 05 2a  	bnez	a1, 0x80003eac <.LBB1_124+0x318>
80003c04: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003c08: 63 fe 65 29  	bgeu	a1, s6, 0x80003ea4 <.LBB1_124+0x310>
80003c0c: 23 24 f1 00  	sw	a5, 8(sp)
80003c10: 13 04 00 00  	mv	s0, zero
80003c14: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003c18: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003c1c: 33 86 8c 00  	add	a2, s9, s0
80003c20: 13 05 00 02  	addi	a0, zero, 32
80003c24: 93 05 0a 00  	mv	a1, s4
80003c28: 93 86 0a 00  	mv	a3, s5
80003c2c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80003c30: 13 04 14 00  	addi	s0, s0, 1
80003c34: e3 14 89 fe  	bne	s2, s0, 0x80003c1c <.LBB1_124+0x88>
80003c38: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003c3c: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80003c40: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003c44: 23 2a b1 00  	sw	a1, 20(sp)
80003c48: b3 8c 8c 00  	add	s9, s9, s0
80003c4c: 13 09 0c 00  	mv	s2, s8
80003c50: 6f 00 c0 25  	j	0x80003eac <.LBB1_124+0x318>
80003c54: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003c58: 13 07 c1 01  	addi	a4, sp, 28
80003c5c: 93 08 00 01  	addi	a7, zero, 16
80003c60: 13 0e 80 00  	addi	t3, zero, 8
80003c64: 13 05 09 00  	mv	a0, s2
80003c68: 93 05 0a 00  	mv	a1, s4
80003c6c: 13 86 0c 00  	mv	a2, s9
80003c70: 93 86 0a 00  	mv	a3, s5
80003c74: 13 08 00 00  	mv	a6, zero
80003c78: 93 83 0b 00  	mv	t2, s7
80003c7c: 97 10 00 00  	auipc	ra, 1
80003c80: e7 80 00 fa  	jalr	-96(ra)
80003c84: 13 0c 05 00  	mv	s8, a0
80003c88: 6f 00 00 21  	j	0x80003e98 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003c8c: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80003c90: 63 14 08 00  	bnez	a6, 0x80003c98 <.LBB1_124+0x104>
80003c94: 13 74 f4 fe  	andi	s0, s0, -17
80003c98: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003c9c: 13 76 04 40  	andi	a2, s0, 1024
80003ca0: 13 56 a6 00  	srli	a2, a2, 10
80003ca4: b3 f5 c5 00  	and	a1, a1, a2
80003ca8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003cac: 63 9c 05 06  	bnez	a1, 0x80003d24 <.LBB1_124+0x190>
80003cb0: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003cb4: 13 56 f8 41  	srai	a2, a6, 31
80003cb8: b3 06 c8 00  	add	a3, a6, a2
80003cbc: b3 c6 c6 00  	xor	a3, a3, a2
80003cc0: 13 76 04 02  	andi	a2, s0, 32
80003cc4: 13 46 16 06  	xori	a2, a2, 97
80003cc8: 93 08 66 0f  	addi	a7, a2, 246
80003ccc: 6f 00 40 03  	j	0x80003d00 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003cd0: 33 05 f6 00  	add	a0, a2, a5
80003cd4: 93 87 15 00  	addi	a5, a1, 1
80003cd8: 13 06 c1 01  	addi	a2, sp, 28
80003cdc: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ce0: b3 b6 86 01  	sltu	a3, a3, s8
80003ce4: 93 c6 16 00  	xori	a3, a3, 1
80003ce8: 93 b5 f5 01  	sltiu	a1, a1, 31
80003cec: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003cf0: 23 00 a6 00  	sb	a0, 0(a2)
80003cf4: 93 85 07 00  	mv	a1, a5
80003cf8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003cfc: 63 84 04 02  	beqz	s1, 0x80003d24 <.LBB1_124+0x190>
;       value /= base;
80003d00: 33 d7 86 03  	divu	a4, a3, s8
80003d04: 33 06 87 03  	mul	a2, a4, s8
80003d08: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d0c: 13 f5 e7 0f  	andi	a0, a5, 254
80003d10: 13 06 00 03  	addi	a2, zero, 48
80003d14: 93 04 a0 00  	addi	s1, zero, 10
80003d18: e3 6c 95 fa  	bltu	a0, s1, 0x80003cd0 <.LBB1_124+0x13c>
80003d1c: 13 86 08 00  	mv	a2, a7
80003d20: 6f f0 1f fb  	j	0x80003cd0 <.LBB1_124+0x13c>
80003d24: 93 89 49 00  	addi	s3, s3, 4
80003d28: 13 58 f8 01  	srli	a6, a6, 31
80003d2c: 13 07 c1 01  	addi	a4, sp, 28
80003d30: 13 05 09 00  	mv	a0, s2
80003d34: 93 05 0a 00  	mv	a1, s4
80003d38: 13 86 0c 00  	mv	a2, s9
80003d3c: 93 86 0a 00  	mv	a3, s5
80003d40: 6f 00 80 13  	j	0x80003e78 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80003d44: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003d48: 63 14 05 00  	bnez	a0, 0x80003d50 <.LBB1_124+0x1bc>
80003d4c: 13 74 f4 fe  	andi	s0, s0, -17
80003d50: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003d54: 13 76 04 40  	andi	a2, s0, 1024
80003d58: 13 56 a6 00  	srli	a2, a2, 10
80003d5c: b3 f5 c5 00  	and	a1, a1, a2
80003d60: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003d64: 63 9c 05 0e  	bnez	a1, 0x80003e5c <.LBB1_124+0x2c8>
80003d68: 13 06 00 00  	mv	a2, zero
80003d6c: 93 75 04 02  	andi	a1, s0, 32
80003d70: 93 c5 15 06  	xori	a1, a1, 97
80003d74: 13 88 65 0f  	addi	a6, a1, 246
80003d78: 6f 00 40 03  	j	0x80003dac <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d7c: 33 87 e7 00  	add	a4, a5, a4
80003d80: 93 07 16 00  	addi	a5, a2, 1
80003d84: 93 05 c1 01  	addi	a1, sp, 28
80003d88: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003d8c: 33 35 85 01  	sltu	a0, a0, s8
80003d90: 13 45 15 00  	xori	a0, a0, 1
80003d94: 13 36 f6 01  	sltiu	a2, a2, 31
80003d98: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d9c: 23 80 e4 00  	sb	a4, 0(s1)
80003da0: 13 86 07 00  	mv	a2, a5
80003da4: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003da8: 63 8a 05 0a  	beqz	a1, 0x80003e5c <.LBB1_124+0x2c8>
;       value /= base;
80003dac: b3 56 85 03  	divu	a3, a0, s8
80003db0: 33 87 86 03  	mul	a4, a3, s8
80003db4: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003db8: 93 74 e7 0f  	andi	s1, a4, 254
80003dbc: 93 07 00 03  	addi	a5, zero, 48
80003dc0: 93 05 a0 00  	addi	a1, zero, 10
80003dc4: e3 ec b4 fa  	bltu	s1, a1, 0x80003d7c <.LBB1_124+0x1e8>
80003dc8: 93 07 08 00  	mv	a5, a6
80003dcc: 6f f0 1f fb  	j	0x80003d7c <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003dd0: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80003dd4: 63 14 05 00  	bnez	a0, 0x80003ddc <.LBB1_124+0x248>
80003dd8: 13 74 f4 fe  	andi	s0, s0, -17
80003ddc: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003de0: 13 76 04 40  	andi	a2, s0, 1024
80003de4: 13 56 a6 00  	srli	a2, a2, 10
80003de8: b3 f5 c5 00  	and	a1, a1, a2
80003dec: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003df0: 63 96 05 06  	bnez	a1, 0x80003e5c <.LBB1_124+0x2c8>
80003df4: 13 06 00 00  	mv	a2, zero
80003df8: 93 75 04 02  	andi	a1, s0, 32
80003dfc: 93 c5 15 06  	xori	a1, a1, 97
80003e00: 13 88 65 0f  	addi	a6, a1, 246
80003e04: 6f 00 40 03  	j	0x80003e38 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003e08: 33 87 e7 00  	add	a4, a5, a4
80003e0c: 93 07 16 00  	addi	a5, a2, 1
80003e10: 93 05 c1 01  	addi	a1, sp, 28
80003e14: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003e18: 33 35 85 01  	sltu	a0, a0, s8
80003e1c: 13 45 15 00  	xori	a0, a0, 1
80003e20: 13 36 f6 01  	sltiu	a2, a2, 31
80003e24: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003e28: 23 80 e4 00  	sb	a4, 0(s1)
80003e2c: 13 86 07 00  	mv	a2, a5
80003e30: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003e34: 63 84 05 02  	beqz	a1, 0x80003e5c <.LBB1_124+0x2c8>
;       value /= base;
80003e38: b3 56 85 03  	divu	a3, a0, s8
80003e3c: 33 87 86 03  	mul	a4, a3, s8
80003e40: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003e44: 93 74 e7 0f  	andi	s1, a4, 254
80003e48: 93 07 00 03  	addi	a5, zero, 48
80003e4c: 93 05 a0 00  	addi	a1, zero, 10
80003e50: e3 ec b4 fa  	bltu	s1, a1, 0x80003e08 <.LBB1_124+0x274>
80003e54: 93 07 08 00  	mv	a5, a6
80003e58: 6f f0 1f fb  	j	0x80003e08 <.LBB1_124+0x274>
80003e5c: 93 89 49 00  	addi	s3, s3, 4
80003e60: 13 07 c1 01  	addi	a4, sp, 28
80003e64: 13 05 09 00  	mv	a0, s2
80003e68: 93 05 0a 00  	mv	a1, s4
80003e6c: 13 86 0c 00  	mv	a2, s9
80003e70: 93 86 0a 00  	mv	a3, s5
80003e74: 13 08 00 00  	mv	a6, zero
80003e78: 93 08 0c 00  	mv	a7, s8
80003e7c: 93 83 0b 00  	mv	t2, s7
80003e80: 13 0e 0b 00  	mv	t3, s6
80003e84: 93 0e 04 00  	mv	t4, s0
80003e88: 97 10 00 00  	auipc	ra, 1
80003e8c: e7 80 40 d9  	jalr	-620(ra)
80003e90: 13 0c 05 00  	mv	s8, a0
80003e94: 13 0b 50 02  	addi	s6, zero, 37
80003e98: 93 0b e0 02  	addi	s7, zero, 46
80003e9c: 13 04 1d 00  	addi	s0, s10, 1
80003ea0: 6f f0 cf d8  	j	0x8000342c <.LBB1_183+0x30>
80003ea4: 93 85 15 00  	addi	a1, a1, 1
80003ea8: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003eac: 63 00 05 04  	beqz	a0, 0x80003eec <.LBB1_124+0x358>
80003eb0: 13 84 17 00  	addi	s0, a5, 1
80003eb4: 6f 00 00 03  	j	0x80003ee4 <.LBB1_124+0x350>
80003eb8: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80003ebc: 13 8c 1c 00  	addi	s8, s9, 1
80003ec0: 13 75 f5 0f  	andi	a0, a0, 255
80003ec4: 93 05 0a 00  	mv	a1, s4
80003ec8: 13 86 0c 00  	mv	a2, s9
80003ecc: 93 86 0a 00  	mv	a3, s5
80003ed0: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003ed4: 03 45 04 00  	lbu	a0, 0(s0)
80003ed8: 13 04 14 00  	addi	s0, s0, 1
80003edc: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003ee0: 63 08 05 00  	beqz	a0, 0x80003ef0 <.LBB1_124+0x35c>
80003ee4: e3 9c 04 fc  	bnez	s1, 0x80003ebc <.LBB1_124+0x328>
80003ee8: e3 98 0b fc  	bnez	s7, 0x80003eb8 <.LBB1_124+0x324>
80003eec: 13 8c 0c 00  	mv	s8, s9
80003ef0: 03 25 c1 00  	lw	a0, 12(sp)
80003ef4: 13 35 15 00  	seqz	a0, a0
80003ef8: 03 26 41 01  	lw	a2, 20(sp)
80003efc: b3 35 66 01  	sltu	a1, a2, s6
80003f00: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80003f04: 33 65 b5 00  	or	a0, a0, a1
80003f08: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80003f0c: e3 14 05 f8  	bnez	a0, 0x80003e94 <.LBB1_124+0x300>
;           while (l++ < width) {
80003f10: 33 04 cb 40  	sub	s0, s6, a2
80003f14: 93 0b e0 02  	addi	s7, zero, 46
80003f18: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003f1c: 13 0c 1c 00  	addi	s8, s8, 1
80003f20: 13 05 00 02  	addi	a0, zero, 32
80003f24: 93 05 0a 00  	mv	a1, s4
80003f28: 93 86 0a 00  	mv	a3, s5
80003f2c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003f30: 13 04 f4 ff  	addi	s0, s0, -1
80003f34: e3 12 04 fe  	bnez	s0, 0x80003f18 <.LBB1_124+0x384>
80003f38: 13 0b 50 02  	addi	s6, zero, 37
80003f3c: 13 04 1d 00  	addi	s0, s10, 1
80003f40: 6f f0 cf ce  	j	0x8000342c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003f44: 13 86 0c 00  	mv	a2, s9
80003f48: 63 e4 5c 01  	bltu	s9, s5, 0x80003f50 <.LBB1_124+0x3bc>
80003f4c: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003f50: 13 05 00 00  	mv	a0, zero
80003f54: 93 05 0a 00  	mv	a1, s4
80003f58: 93 86 0a 00  	mv	a3, s5
80003f5c: e7 00 09 00  	jalr	s2
;   return (int)idx;
80003f60: 13 85 0c 00  	mv	a0, s9
80003f64: 83 2d c1 03  	lw	s11, 60(sp)
80003f68: 03 2d 01 04  	lw	s10, 64(sp)
80003f6c: 83 2c 41 04  	lw	s9, 68(sp)
80003f70: 03 2c 81 04  	lw	s8, 72(sp)
80003f74: 83 2b c1 04  	lw	s7, 76(sp)
80003f78: 03 2b 01 05  	lw	s6, 80(sp)
80003f7c: 83 2a 41 05  	lw	s5, 84(sp)
80003f80: 03 2a 81 05  	lw	s4, 88(sp)
80003f84: 83 29 c1 05  	lw	s3, 92(sp)
80003f88: 03 29 01 06  	lw	s2, 96(sp)
80003f8c: 83 24 41 06  	lw	s1, 100(sp)
80003f90: 03 24 81 06  	lw	s0, 104(sp)
80003f94: 83 20 c1 06  	lw	ra, 108(sp)
80003f98: 13 01 01 07  	addi	sp, sp, 112
80003f9c: 67 80 00 00  	ret

80003fa0 <_out_char.llvm.17592004524093383706>:
;   if (character) {
80003fa0: 63 04 05 0a  	beqz	a0, 0x80004048 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003fa4: f3 25 40 f1  	csrr	a1, mhartid
80003fa8: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80003fac: 33 86 c5 02  	mul	a2, a1, a2

80003fb0 <.LBB2_6>:
80003fb0: 97 26 00 00  	auipc	a3, 2
80003fb4: 93 86 46 a5  	addi	a3, a3, -1452
80003fb8: b3 05 d6 00  	add	a1, a2, a3
80003fbc: 03 a7 05 00  	lw	a4, 0(a1)
80003fc0: 93 07 17 00  	addi	a5, a4, 1
80003fc4: 23 a0 f5 00  	sw	a5, 0(a1)
80003fc8: 33 87 e5 00  	add	a4, a1, a4
80003fcc: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80003fd0: 03 a7 05 00  	lw	a4, 0(a1)
80003fd4: 13 07 47 c0  	addi	a4, a4, -1020
80003fd8: 33 37 e0 00  	snez	a4, a4
80003fdc: 13 05 65 ff  	addi	a0, a0, -10
80003fe0: 33 35 a0 00  	snez	a0, a0
80003fe4: 33 75 e5 00  	and	a0, a0, a4
80003fe8: 63 10 05 06  	bnez	a0, 0x80004048 <.LBB2_8+0x18>
80003fec: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80003ff0: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003ff4: 23 26 05 00  	sw	zero, 12(a0)
80003ff8: 93 06 00 04  	addi	a3, zero, 64
80003ffc: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80004000: 23 2a 05 00  	sw	zero, 20(a0)
80004004: 93 06 10 00  	addi	a3, zero, 1
80004008: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
8000400c: 23 2e 05 00  	sw	zero, 28(a0)
80004010: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80004014: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80004018: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000401c: 23 22 05 02  	sw	zero, 36(a0)
80004020: 23 20 c5 02  	sw	a2, 32(a0)

80004024 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80004024: 17 25 00 00  	auipc	a0, 2
80004028: 13 05 c5 89  	addi	a0, a0, -1892
8000402c: 23 20 d5 00  	sw	a3, 0(a0)

80004030 <.LBB2_8>:
80004030: 17 25 00 00  	auipc	a0, 2
80004034: 13 05 05 8d  	addi	a0, a0, -1840
;         while (fromhost == 0)
80004038: 03 26 05 00  	lw	a2, 0(a0)
8000403c: e3 0e 06 fe  	beqz	a2, 0x80004038 <.LBB2_8+0x8>
;         fromhost = 0;
80004040: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80004044: 23 a0 05 00  	sw	zero, 0(a1)
; }
80004048: 67 80 00 00  	ret

8000404c <_out_null>:
; }
8000404c: 67 80 00 00  	ret

80004050 <_ftoa>:
; {
80004050: 13 01 01 f9  	addi	sp, sp, -112
80004054: 23 26 11 06  	sw	ra, 108(sp)
80004058: 23 24 81 06  	sw	s0, 104(sp)
8000405c: 23 22 91 06  	sw	s1, 100(sp)
80004060: 23 20 21 07  	sw	s2, 96(sp)
80004064: 23 2e 31 05  	sw	s3, 92(sp)
80004068: 23 2c 41 05  	sw	s4, 88(sp)
8000406c: 23 2a 51 05  	sw	s5, 84(sp)
80004070: 23 28 61 05  	sw	s6, 80(sp)
80004074: 23 26 71 05  	sw	s7, 76(sp)
80004078: 23 24 81 05  	sw	s8, 72(sp)
8000407c: 23 22 91 05  	sw	s9, 68(sp)
80004080: 23 20 a1 05  	sw	s10, 64(sp)
80004084: 27 3c 81 02  	fsd	fs0, 56(sp)
80004088: 27 38 91 02  	fsd	fs1, 48(sp)
8000408c: 27 34 21 03  	fsd	fs2, 40(sp)

80004090 <.LBB4_83>:
80004090: 97 24 00 00  	auipc	s1, 2
80004094: 93 84 84 8c  	addi	s1, s1, -1848
80004098: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
8000409c: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800040a0: 93 0a 08 00  	mv	s5, a6
800040a4: 13 89 07 00  	mv	s2, a5
800040a8: 93 89 06 00  	mv	s3, a3
800040ac: 13 0a 06 00  	mv	s4, a2
800040b0: 13 8b 05 00  	mv	s6, a1
800040b4: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800040b8: 63 98 04 0e  	bnez	s1, 0x800041a8 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800040bc: 13 f5 2a 00  	andi	a0, s5, 2
800040c0: 93 f5 3a 00  	andi	a1, s5, 3
800040c4: b3 35 b0 00  	snez	a1, a1
800040c8: 13 36 59 00  	sltiu	a2, s2, 5
800040cc: b3 65 b6 00  	or	a1, a2, a1
800040d0: 93 5c 15 00  	srli	s9, a0, 1
800040d4: 13 04 0a 00  	mv	s0, s4
800040d8: 63 96 05 02  	bnez	a1, 0x80004104 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800040dc: 93 04 c9 ff  	addi	s1, s2, -4
800040e0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800040e4: 13 04 16 00  	addi	s0, a2, 1
800040e8: 13 05 00 02  	addi	a0, zero, 32
800040ec: 93 05 0b 00  	mv	a1, s6
800040f0: 93 86 09 00  	mv	a3, s3
800040f4: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800040f8: 93 84 f4 ff  	addi	s1, s1, -1
800040fc: 13 06 04 00  	mv	a2, s0
80004100: e3 92 04 fe  	bnez	s1, 0x800040e4 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80004104: 93 04 14 00  	addi	s1, s0, 1
80004108: 13 05 d0 02  	addi	a0, zero, 45
8000410c: 93 05 0b 00  	mv	a1, s6
80004110: 13 06 04 00  	mv	a2, s0
80004114: 93 86 09 00  	mv	a3, s3
80004118: e7 80 0b 00  	jalr	s7
8000411c: 93 0a 24 00  	addi	s5, s0, 2
80004120: 13 05 90 06  	addi	a0, zero, 105
80004124: 93 05 0b 00  	mv	a1, s6
80004128: 13 86 04 00  	mv	a2, s1
8000412c: 93 86 09 00  	mv	a3, s3
80004130: e7 80 0b 00  	jalr	s7
80004134: 13 0c 34 00  	addi	s8, s0, 3
80004138: 13 05 e0 06  	addi	a0, zero, 110
8000413c: 93 05 0b 00  	mv	a1, s6
80004140: 13 86 0a 00  	mv	a2, s5
80004144: 93 86 09 00  	mv	a3, s3
80004148: e7 80 0b 00  	jalr	s7
8000414c: 93 04 44 00  	addi	s1, s0, 4
80004150: 13 05 60 06  	addi	a0, zero, 102
80004154: 93 05 0b 00  	mv	a1, s6
80004158: 13 06 0c 00  	mv	a2, s8
8000415c: 93 86 09 00  	mv	a3, s3
80004160: e7 80 0b 00  	jalr	s7
80004164: 33 85 44 41  	sub	a0, s1, s4
80004168: 33 35 25 01  	sltu	a0, a0, s2
8000416c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004170: 93 c5 1c 00  	xori	a1, s9, 1
80004174: 33 e5 a5 00  	or	a0, a1, a0
80004178: 63 16 05 56  	bnez	a0, 0x800046e4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000417c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004180: 13 84 14 00  	addi	s0, s1, 1
80004184: 13 05 00 02  	addi	a0, zero, 32
80004188: 93 05 0b 00  	mv	a1, s6
8000418c: 13 86 04 00  	mv	a2, s1
80004190: 93 86 09 00  	mv	a3, s3
80004194: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004198: 33 05 8a 00  	add	a0, s4, s0
8000419c: 93 04 04 00  	mv	s1, s0
800041a0: e3 60 25 ff  	bltu	a0, s2, 0x80004180 <.LBB4_83+0xf0>
800041a4: 6f 00 40 54  	j	0x800046e8 <.LBB4_90+0x378>
800041a8: 53 04 a5 22  	fmv.d	fs0, fa0

800041ac <.LBB4_84>:
800041ac: 17 15 00 00  	auipc	a0, 1
800041b0: 13 05 45 7b  	addi	a0, a0, 1972
800041b4: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
800041b8: 53 05 05 a2  	fle.d	a0, fa0, ft0
800041bc: 63 1e 05 00  	bnez	a0, 0x800041d8 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800041c0: 93 f5 4a 00  	andi	a1, s5, 4
800041c4: 13 b5 15 00  	seqz	a0, a1
800041c8: 63 82 05 06  	beqz	a1, 0x8000422c <.LBB4_88>

800041cc <.LBB4_85>:
800041cc: 17 1c 00 00  	auipc	s8, 1
800041d0: 13 0c 4c 4b  	addi	s8, s8, 1204
800041d4: 6f 00 00 06  	j	0x80004234 <.LBB4_88+0x8>

800041d8 <.LBB4_86>:
800041d8: 17 15 00 00  	auipc	a0, 1
800041dc: 13 05 05 79  	addi	a0, a0, 1936
800041e0: 07 30 05 00  	fld	ft0, 0(a0)

800041e4 <.LBB4_87>:
800041e4: 17 15 00 00  	auipc	a0, 1
800041e8: 13 05 c5 78  	addi	a0, a0, 1932
800041ec: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
800041f0: 53 05 04 a2  	fle.d	a0, fs0, ft0
800041f4: d3 85 80 a2  	fle.d	a1, ft1, fs0
800041f8: 33 75 b5 00  	and	a0, a0, a1
800041fc: 63 1e 05 0e  	bnez	a0, 0x800042f8 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004200: 13 85 0b 00  	mv	a0, s7
80004204: 93 05 0b 00  	mv	a1, s6
80004208: 13 06 0a 00  	mv	a2, s4
8000420c: 93 86 09 00  	mv	a3, s3
80004210: 53 05 84 22  	fmv.d	fa0, fs0
80004214: 93 07 09 00  	mv	a5, s2
80004218: 13 88 0a 00  	mv	a6, s5
8000421c: 97 00 00 00  	auipc	ra, 0
80004220: e7 80 40 51  	jalr	1300(ra)
80004224: 13 04 05 00  	mv	s0, a0
80004228: 6f 00 00 4c  	j	0x800046e8 <.LBB4_90+0x378>

8000422c <.LBB4_88>:
8000422c: 17 1c 00 00  	auipc	s8, 1
80004230: 13 0c 3c 47  	addi	s8, s8, 1139
80004234: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80004238: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000423c: 13 f5 3a 00  	andi	a0, s5, 3
80004240: 33 35 a0 00  	snez	a0, a0
80004244: b3 b5 2c 01  	sltu	a1, s9, s2
80004248: 93 c5 15 00  	xori	a1, a1, 1
8000424c: 33 65 b5 00  	or	a0, a0, a1
80004250: 93 fa 2a 00  	andi	s5, s5, 2
80004254: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004258: 63 16 05 02  	bnez	a0, 0x80004284 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
8000425c: 33 04 99 41  	sub	s0, s2, s9
80004260: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004264: 93 04 16 00  	addi	s1, a2, 1
80004268: 13 05 00 02  	addi	a0, zero, 32
8000426c: 93 05 0b 00  	mv	a1, s6
80004270: 93 86 09 00  	mv	a3, s3
80004274: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004278: 13 04 f4 ff  	addi	s0, s0, -1
8000427c: 13 86 04 00  	mv	a2, s1
80004280: e3 12 04 fe  	bnez	s0, 0x80004264 <.LBB4_88+0x38>
80004284: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004288: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
8000428c: 33 05 9c 01  	add	a0, s8, s9
80004290: 03 45 05 00  	lbu	a0, 0(a0)
80004294: 13 86 04 00  	mv	a2, s1
80004298: 13 84 fc ff  	addi	s0, s9, -1
8000429c: 93 84 14 00  	addi	s1, s1, 1
800042a0: 93 05 0b 00  	mv	a1, s6
800042a4: 93 86 09 00  	mv	a3, s3
800042a8: e7 80 0b 00  	jalr	s7
800042ac: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800042b0: e3 1e 04 fc  	bnez	s0, 0x8000428c <.LBB4_88+0x60>
800042b4: 33 85 44 41  	sub	a0, s1, s4
800042b8: 33 35 25 01  	sltu	a0, a0, s2
800042bc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800042c0: 93 c5 1a 00  	xori	a1, s5, 1
800042c4: 33 e5 a5 00  	or	a0, a1, a0
800042c8: 63 1e 05 40  	bnez	a0, 0x800046e4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800042cc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800042d0: 13 84 14 00  	addi	s0, s1, 1
800042d4: 13 05 00 02  	addi	a0, zero, 32
800042d8: 93 05 0b 00  	mv	a1, s6
800042dc: 13 86 04 00  	mv	a2, s1
800042e0: 93 86 09 00  	mv	a3, s3
800042e4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800042e8: 33 05 8a 00  	add	a0, s4, s0
800042ec: 93 04 04 00  	mv	s1, s0
800042f0: e3 60 25 ff  	bltu	a0, s2, 0x800042d0 <.LBB4_88+0xa4>
800042f4: 6f 00 40 3f  	j	0x800046e8 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
800042f8: 13 f5 0a 40  	andi	a0, s5, 1024
800042fc: 13 0c 60 00  	addi	s8, zero, 6
80004300: 63 04 05 00  	beqz	a0, 0x80004308 <.LBB4_88+0xdc>
80004304: 13 0c 07 00  	mv	s8, a4
80004308: 13 05 a0 00  	addi	a0, zero, 10
8000430c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004310: 63 6c ac 02  	bltu	s8, a0, 0x80004348 <.LBB4_88+0x11c>
80004314: 93 04 6c ff  	addi	s1, s8, -10
80004318: 13 05 f0 01  	addi	a0, zero, 31
8000431c: 63 e4 a4 00  	bltu	s1, a0, 0x80004324 <.LBB4_88+0xf8>
80004320: 93 04 f0 01  	addi	s1, zero, 31
80004324: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80004328: 13 05 81 00  	addi	a0, sp, 8
8000432c: 93 05 00 03  	addi	a1, zero, 48
80004330: 13 06 04 00  	mv	a2, s0
80004334: 97 c0 ff ff  	auipc	ra, 1048572
80004338: e7 80 40 22  	jalr	548(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
8000433c: 13 c5 f4 ff  	not	a0, s1
80004340: 33 0c ac 00  	add	s8, s8, a0
80004344: 6f 00 80 00  	j	0x8000434c <.LBB4_88+0x120>
80004348: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
8000434c: 13 15 3c 00  	slli	a0, s8, 3

80004350 <.LBB4_89>:
80004350: 97 15 00 00  	auipc	a1, 1
80004354: 93 85 05 51  	addi	a1, a1, 1296
80004358: 33 05 b5 00  	add	a0, a0, a1
8000435c: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80004360: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80004364: 53 80 04 d2  	fcvt.d.w	ft0, s1
80004368: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
8000436c: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80004370 <.LBB4_90>:
80004370: 17 15 00 00  	auipc	a0, 1
80004374: 13 05 85 60  	addi	a0, a0, 1544
80004378: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
8000437c: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80004380: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80004384: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80004388: d3 05 01 a2  	fle.d	a1, ft2, ft0
8000438c: 63 90 05 02  	bnez	a1, 0x800043ac <.LBB4_90+0x3c>
;     ++frac;
80004390: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80004394: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80004398: d3 15 11 a2  	flt.d	a1, ft2, ft1
8000439c: 63 94 05 02  	bnez	a1, 0x800043c4 <.LBB4_90+0x54>
800043a0: 13 05 00 00  	mv	a0, zero
;       ++whole;
800043a4: 93 84 14 00  	addi	s1, s1, 1
800043a8: 6f 00 c0 01  	j	0x800043c4 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
800043ac: d3 15 01 a2  	flt.d	a1, ft2, ft0
800043b0: 63 9a 05 00  	bnez	a1, 0x800043c4 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
800043b4: 93 35 15 00  	seqz	a1, a0
800043b8: 13 76 15 00  	andi	a2, a0, 1
800043bc: b3 65 b6 00  	or	a1, a2, a1
800043c0: 33 85 a5 00  	add	a0, a1, a0
800043c4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
800043c8: 63 0c 0c 0c  	beqz	s8, 0x800044a0 <.LBB4_90+0x130>
800043cc: 13 06 00 00  	mv	a2, zero
800043d0: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
800043d4: 33 83 85 00  	add	t1, a1, s0
800043d8: 93 02 00 02  	addi	t0, zero, 32
800043dc: 33 87 82 40  	sub	a4, t0, s0
800043e0: b7 d5 cc cc  	lui	a1, 838861
800043e4: 93 83 d5 cc  	addi	t2, a1, -819
800043e8: 13 08 a0 00  	addi	a6, zero, 10
800043ec: 93 08 90 00  	addi	a7, zero, 9
800043f0: 63 04 c7 0c  	beq	a4, a2, 0x800044b8 <.LBB4_90+0x148>
800043f4: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
800043f8: 33 35 75 02  	mulhu	a0, a0, t2
800043fc: 13 55 35 00  	srli	a0, a0, 3
80004400: b3 06 05 03  	mul	a3, a0, a6
80004404: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80004408: 93 e6 06 03  	ori	a3, a3, 48
8000440c: b3 07 c3 00  	add	a5, t1, a2
80004410: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80004414: 13 06 16 00  	addi	a2, a2, 1
80004418: e3 ec b8 fc  	bltu	a7, a1, 0x800043f0 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000441c: 33 05 c4 00  	add	a0, s0, a2
80004420: 93 05 f5 ff  	addi	a1, a0, -1
80004424: 93 06 e0 01  	addi	a3, zero, 30
80004428: b3 b6 b6 00  	sltu	a3, a3, a1
8000442c: 33 47 cc 00  	xor	a4, s8, a2
80004430: 13 37 17 00  	seqz	a4, a4
80004434: b3 e6 e6 00  	or	a3, a3, a4
80004438: 63 94 06 08  	bnez	a3, 0x800044c0 <.LBB4_90+0x150>
8000443c: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004440: 33 05 85 00  	add	a0, a0, s0
80004444: 93 45 f6 ff  	not	a1, a2
80004448: 33 8c 85 01  	add	s8, a1, s8
8000444c: 33 04 c4 00  	add	s0, s0, a2
80004450: 93 05 f0 01  	addi	a1, zero, 31
80004454: b3 86 85 40  	sub	a3, a1, s0
80004458: 33 05 c5 00  	add	a0, a0, a2
8000445c: 93 05 0c 00  	mv	a1, s8
80004460: 63 64 dc 00  	bltu	s8, a3, 0x80004468 <.LBB4_90+0xf8>
80004464: 93 85 06 00  	mv	a1, a3
80004468: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000446c: 93 05 00 03  	addi	a1, zero, 48
80004470: 97 c0 ff ff  	auipc	ra, 1048572
80004474: e7 80 80 0e  	jalr	232(ra)
80004478: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000447c: b3 05 a4 00  	add	a1, s0, a0
80004480: 93 b5 f5 01  	sltiu	a1, a1, 31
80004484: 33 46 ac 00  	xor	a2, s8, a0
80004488: 33 36 c0 00  	snez	a2, a2
8000448c: 33 f6 c5 00  	and	a2, a1, a2
80004490: 13 05 15 00  	addi	a0, a0, 1
80004494: e3 14 06 fe  	bnez	a2, 0x8000447c <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004498: 33 05 a4 00  	add	a0, s0, a0
8000449c: 6f 00 80 02  	j	0x800044c4 <.LBB4_90+0x154>
;     diff = value - (double)whole;
800044a0: d3 80 04 d2  	fcvt.d.w	ft1, s1
800044a4: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800044a8: 53 05 10 a2  	fle.d	a0, ft0, ft1
800044ac: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800044b0: b3 84 a4 00  	add	s1, s1, a0
800044b4: 6f 00 c0 03  	j	0x800044f0 <.LBB4_90+0x180>
800044b8: 13 04 00 02  	addi	s0, zero, 32
800044bc: 6f 00 80 03  	j	0x800044f4 <.LBB4_90+0x184>
800044c0: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800044c4: 63 8e 05 00  	beqz	a1, 0x800044e0 <.LBB4_90+0x170>
;       buf[len++] = '.';
800044c8: 13 04 15 00  	addi	s0, a0, 1
800044cc: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
800044d0: 33 85 a5 00  	add	a0, a1, a0
800044d4: 93 05 e0 02  	addi	a1, zero, 46
800044d8: 23 00 b5 00  	sb	a1, 0(a0)
800044dc: 6f 00 80 00  	j	0x800044e4 <.LBB4_90+0x174>
800044e0: 13 04 05 00  	mv	s0, a0
800044e4: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800044e8: 93 02 04 00  	mv	t0, s0
800044ec: 63 64 85 00  	bltu	a0, s0, 0x800044f4 <.LBB4_90+0x184>
800044f0: 93 02 00 02  	addi	t0, zero, 32
800044f4: d3 1c 94 a2  	flt.d	s9, fs0, fs1
800044f8: 37 65 66 66  	lui	a0, 419430
800044fc: 93 05 75 66  	addi	a1, a0, 1639
80004500: 13 08 a0 00  	addi	a6, zero, 10
80004504: 93 06 81 00  	addi	a3, sp, 8
80004508: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
8000450c: 63 80 82 04  	beq	t0, s0, 0x8000454c <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80004510: 33 95 b4 02  	mulh	a0, s1, a1
80004514: 93 57 f5 01  	srli	a5, a0, 31
80004518: 13 55 25 40  	srai	a0, a0, 2
8000451c: 33 05 f5 00  	add	a0, a0, a5
80004520: b3 07 05 03  	mul	a5, a0, a6
80004524: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004528: 93 87 07 03  	addi	a5, a5, 48
8000452c: 13 0c 14 00  	addi	s8, s0, 1
80004530: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80004534: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80004538: 23 00 f4 00  	sb	a5, 0(s0)
8000453c: 13 04 0c 00  	mv	s0, s8
80004540: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80004544: e3 64 c7 fc  	bltu	a4, a2, 0x8000450c <.LBB4_90+0x19c>
80004548: 6f 00 80 00  	j	0x80004550 <.LBB4_90+0x1e0>
8000454c: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004550: 93 f4 3a 00  	andi	s1, s5, 3
80004554: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004558: 63 96 a4 06  	bne	s1, a0, 0x800045c4 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000455c: 63 0c 09 00  	beqz	s2, 0x80004574 <.LBB4_90+0x204>
80004560: 13 f5 ca 00  	andi	a0, s5, 12
80004564: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004568: 33 e5 ac 00  	or	a0, s9, a0
8000456c: 33 09 a9 40  	sub	s2, s2, a0
80004570: 6f 00 80 00  	j	0x80004578 <.LBB4_90+0x208>
80004574: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004578: 33 35 2c 01  	sltu	a0, s8, s2
8000457c: 93 45 15 00  	xori	a1, a0, 1
80004580: 13 05 f0 01  	addi	a0, zero, 31
80004584: 33 36 85 01  	sltu	a2, a0, s8
80004588: b3 65 b6 00  	or	a1, a2, a1
8000458c: 63 9c 05 02  	bnez	a1, 0x800045c4 <.LBB4_90+0x254>
80004590: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004594: 93 45 fc ff  	not	a1, s8
80004598: b3 05 b9 00  	add	a1, s2, a1
8000459c: 33 06 85 41  	sub	a2, a0, s8
800045a0: 33 85 86 01  	add	a0, a3, s8
800045a4: 63 e4 c5 00  	bltu	a1, a2, 0x800045ac <.LBB4_90+0x23c>
800045a8: 93 05 06 00  	mv	a1, a2
800045ac: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800045b0: 93 05 00 03  	addi	a1, zero, 48
800045b4: 13 06 04 00  	mv	a2, s0
800045b8: 97 c0 ff ff  	auipc	ra, 1048572
800045bc: e7 80 00 fa  	jalr	-96(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800045c0: 33 0c 84 01  	add	s8, s0, s8
800045c4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800045c8: 63 6a 85 05  	bltu	a0, s8, 0x8000461c <.LBB4_90+0x2ac>
;     if (negative) {
800045cc: 63 8c 0c 00  	beqz	s9, 0x800045e4 <.LBB4_90+0x274>
800045d0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800045d4: 33 05 85 01  	add	a0, a0, s8
800045d8: 13 0c 1c 00  	addi	s8, s8, 1
800045dc: 93 05 d0 02  	addi	a1, zero, 45
800045e0: 6f 00 80 03  	j	0x80004618 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800045e4: 13 f5 4a 00  	andi	a0, s5, 4
800045e8: 63 10 05 02  	bnez	a0, 0x80004608 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800045ec: 13 f5 8a 00  	andi	a0, s5, 8
800045f0: 63 06 05 02  	beqz	a0, 0x8000461c <.LBB4_90+0x2ac>
800045f4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800045f8: 33 05 85 01  	add	a0, a0, s8
800045fc: 13 0c 1c 00  	addi	s8, s8, 1
80004600: 93 05 00 02  	addi	a1, zero, 32
80004604: 6f 00 40 01  	j	0x80004618 <.LBB4_90+0x2a8>
80004608: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000460c: 33 05 85 01  	add	a0, a0, s8
80004610: 13 0c 1c 00  	addi	s8, s8, 1
80004614: 93 05 b0 02  	addi	a1, zero, 43
80004618: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000461c: 33 35 90 00  	snez	a0, s1
80004620: b3 35 2c 01  	sltu	a1, s8, s2
80004624: 93 c5 15 00  	xori	a1, a1, 1
80004628: 33 65 b5 00  	or	a0, a0, a1
8000462c: 93 fa 2a 00  	andi	s5, s5, 2
80004630: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004634: 63 16 05 02  	bnez	a0, 0x80004660 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004638: b3 04 89 41  	sub	s1, s2, s8
8000463c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004640: 13 04 16 00  	addi	s0, a2, 1
80004644: 13 05 00 02  	addi	a0, zero, 32
80004648: 93 05 0b 00  	mv	a1, s6
8000464c: 93 86 09 00  	mv	a3, s3
80004650: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004654: 93 84 f4 ff  	addi	s1, s1, -1
80004658: 13 06 04 00  	mv	a2, s0
8000465c: e3 92 04 fe  	bnez	s1, 0x80004640 <.LBB4_90+0x2d0>
80004660: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004664: 63 0c 0c 02  	beqz	s8, 0x8000469c <.LBB4_90+0x32c>
80004668: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
8000466c: 33 85 8c 01  	add	a0, s9, s8
80004670: 03 45 05 00  	lbu	a0, 0(a0)
80004674: 13 0d fc ff  	addi	s10, s8, -1
80004678: 93 04 14 00  	addi	s1, s0, 1
8000467c: 93 05 0b 00  	mv	a1, s6
80004680: 13 06 04 00  	mv	a2, s0
80004684: 93 86 09 00  	mv	a3, s3
80004688: e7 80 0b 00  	jalr	s7
8000468c: 13 84 04 00  	mv	s0, s1
80004690: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80004694: e3 1c 0d fc  	bnez	s10, 0x8000466c <.LBB4_90+0x2fc>
80004698: 6f 00 80 00  	j	0x800046a0 <.LBB4_90+0x330>
8000469c: 93 04 04 00  	mv	s1, s0
800046a0: 33 85 44 41  	sub	a0, s1, s4
800046a4: 33 35 25 01  	sltu	a0, a0, s2
800046a8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800046ac: 93 c5 1a 00  	xori	a1, s5, 1
800046b0: 33 e5 a5 00  	or	a0, a1, a0
800046b4: 63 18 05 02  	bnez	a0, 0x800046e4 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800046b8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800046bc: 13 84 14 00  	addi	s0, s1, 1
800046c0: 13 05 00 02  	addi	a0, zero, 32
800046c4: 93 05 0b 00  	mv	a1, s6
800046c8: 13 86 04 00  	mv	a2, s1
800046cc: 93 86 09 00  	mv	a3, s3
800046d0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800046d4: 33 05 8a 00  	add	a0, s4, s0
800046d8: 93 04 04 00  	mv	s1, s0
800046dc: e3 60 25 ff  	bltu	a0, s2, 0x800046bc <.LBB4_90+0x34c>
800046e0: 6f 00 80 00  	j	0x800046e8 <.LBB4_90+0x378>
800046e4: 13 84 04 00  	mv	s0, s1
; }
800046e8: 13 05 04 00  	mv	a0, s0
800046ec: 07 39 81 02  	fld	fs2, 40(sp)
800046f0: 87 34 01 03  	fld	fs1, 48(sp)
800046f4: 07 34 81 03  	fld	fs0, 56(sp)
800046f8: 03 2d 01 04  	lw	s10, 64(sp)
800046fc: 83 2c 41 04  	lw	s9, 68(sp)
80004700: 03 2c 81 04  	lw	s8, 72(sp)
80004704: 83 2b c1 04  	lw	s7, 76(sp)
80004708: 03 2b 01 05  	lw	s6, 80(sp)
8000470c: 83 2a 41 05  	lw	s5, 84(sp)
80004710: 03 2a 81 05  	lw	s4, 88(sp)
80004714: 83 29 c1 05  	lw	s3, 92(sp)
80004718: 03 29 01 06  	lw	s2, 96(sp)
8000471c: 83 24 41 06  	lw	s1, 100(sp)
80004720: 03 24 81 06  	lw	s0, 104(sp)
80004724: 83 20 c1 06  	lw	ra, 108(sp)
80004728: 13 01 01 07  	addi	sp, sp, 112
8000472c: 67 80 00 00  	ret

80004730 <_etoa>:
; {
80004730: 13 01 01 f8  	addi	sp, sp, -128
80004734: 23 2e 11 06  	sw	ra, 124(sp)
80004738: 23 2c 81 06  	sw	s0, 120(sp)
8000473c: 23 2a 91 06  	sw	s1, 116(sp)
80004740: 23 28 21 07  	sw	s2, 112(sp)
80004744: 23 26 31 07  	sw	s3, 108(sp)
80004748: 23 24 41 07  	sw	s4, 104(sp)
8000474c: 23 22 51 07  	sw	s5, 100(sp)
80004750: 23 20 61 07  	sw	s6, 96(sp)
80004754: 23 2e 71 05  	sw	s7, 92(sp)
80004758: 23 2c 81 05  	sw	s8, 88(sp)
8000475c: 23 2a 91 05  	sw	s9, 84(sp)
80004760: 23 28 a1 05  	sw	s10, 80(sp)
80004764: 23 26 b1 05  	sw	s11, 76(sp)

80004768 <.LBB5_43>:
80004768: 97 14 00 00  	auipc	s1, 1
8000476c: 93 84 84 21  	addi	s1, s1, 536
80004770: 87 b0 04 00  	fld	ft1, 0(s1)

80004774 <.LBB5_44>:
80004774: 97 14 00 00  	auipc	s1, 1
80004778: 93 84 44 21  	addi	s1, s1, 532
8000477c: 07 b1 04 00  	fld	ft2, 0(s1)
80004780: 53 00 a5 22  	fmv.d	ft0, fa0
80004784: d3 04 15 a2  	fle.d	s1, fa0, ft1
80004788: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
8000478c: b3 f4 84 00  	and	s1, s1, s0
80004790: 93 0a 08 00  	mv	s5, a6
80004794: 13 89 07 00  	mv	s2, a5
80004798: 93 07 07 00  	mv	a5, a4
8000479c: 93 89 06 00  	mv	s3, a3
800047a0: 13 0a 06 00  	mv	s4, a2
800047a4: 13 8b 05 00  	mv	s6, a1
800047a8: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800047ac: 63 92 04 06  	bnez	s1, 0x80004810 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800047b0: 13 85 0b 00  	mv	a0, s7
800047b4: 93 05 0b 00  	mv	a1, s6
800047b8: 13 06 0a 00  	mv	a2, s4
800047bc: 93 86 09 00  	mv	a3, s3
800047c0: 53 05 00 22  	fmv.d	fa0, ft0
800047c4: 13 87 07 00  	mv	a4, a5
800047c8: 93 07 09 00  	mv	a5, s2
800047cc: 13 88 0a 00  	mv	a6, s5
800047d0: 83 2d c1 04  	lw	s11, 76(sp)
800047d4: 03 2d 01 05  	lw	s10, 80(sp)
800047d8: 83 2c 41 05  	lw	s9, 84(sp)
800047dc: 03 2c 81 05  	lw	s8, 88(sp)
800047e0: 83 2b c1 05  	lw	s7, 92(sp)
800047e4: 03 2b 01 06  	lw	s6, 96(sp)
800047e8: 83 2a 41 06  	lw	s5, 100(sp)
800047ec: 03 2a 81 06  	lw	s4, 104(sp)
800047f0: 83 29 c1 06  	lw	s3, 108(sp)
800047f4: 03 29 01 07  	lw	s2, 112(sp)
800047f8: 83 24 41 07  	lw	s1, 116(sp)
800047fc: 03 24 81 07  	lw	s0, 120(sp)
80004800: 83 20 c1 07  	lw	ra, 124(sp)
80004804: 13 01 01 08  	addi	sp, sp, 128
80004808: 17 03 00 00  	auipc	t1, 0
8000480c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80004810: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80004814: 13 f5 0a 40  	andi	a0, s5, 1024
80004818: 13 07 60 00  	addi	a4, zero, 6
8000481c: 63 04 05 00  	beqz	a0, 0x80004824 <.LBB5_44+0xb0>
80004820: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004824: 27 30 a1 02  	fsd	fa0, 32(sp)
80004828: 83 25 41 02  	lw	a1, 36(sp)
8000482c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004830: 93 d6 45 01  	srli	a3, a1, 20
80004834: b7 07 10 00  	lui	a5, 256
80004838: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
8000483c: b3 f5 f5 00  	and	a1, a1, a5
80004840: 23 2c c1 00  	sw	a2, 24(sp)
80004844: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004848: b3 e5 c5 00  	or	a1, a1, a2
8000484c: 23 2e b1 00  	sw	a1, 28(sp)
80004850: 87 30 81 01  	fld	ft1, 24(sp)

80004854 <.LBB5_45>:
80004854: 97 15 00 00  	auipc	a1, 1
80004858: 93 85 c5 13  	addi	a1, a1, 316
8000485c: 07 b1 05 00  	fld	ft2, 0(a1)

80004860 <.LBB5_46>:
80004860: 97 15 00 00  	auipc	a1, 1
80004864: 93 85 85 13  	addi	a1, a1, 312
80004868: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000486c: 93 f5 f6 7f  	andi	a1, a3, 2047
80004870: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004874: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004878: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

8000487c <.LBB5_47>:
8000487c: 97 15 00 00  	auipc	a1, 1
80004880: 93 85 45 12  	addi	a1, a1, 292
80004884: 07 b1 05 00  	fld	ft2, 0(a1)

80004888 <.LBB5_48>:
80004888: 97 15 00 00  	auipc	a1, 1
8000488c: 93 85 05 12  	addi	a1, a1, 288
80004890: 87 b1 05 00  	fld	ft3, 0(a1)

80004894 <.LBB5_49>:
80004894: 97 15 00 00  	auipc	a1, 1
80004898: 93 85 c5 11  	addi	a1, a1, 284
8000489c: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800048a0: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800048a4: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800048a8: d3 80 05 d2  	fcvt.d.w	ft1, a1
800048ac: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

800048b0 <.LBB5_50>:
800048b0: 17 16 00 00  	auipc	a2, 1
800048b4: 13 06 86 10  	addi	a2, a2, 264
800048b8: 87 31 06 00  	fld	ft3, 0(a2)

800048bc <.LBB5_51>:
800048bc: 17 16 00 00  	auipc	a2, 1
800048c0: 13 06 46 10  	addi	a2, a2, 260
800048c4: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800048c8: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800048cc: 53 01 06 d2  	fcvt.d.w	ft2, a2
800048d0: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800048d4: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800048d8: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800048dc: 13 06 f6 3f  	addi	a2, a2, 1023
800048e0: 23 28 01 00  	sw	zero, 16(sp)
800048e4: 13 16 46 01  	slli	a2, a2, 20
800048e8: 23 2a c1 00  	sw	a2, 20(sp)

800048ec <.LBB5_52>:
800048ec: 17 16 00 00  	auipc	a2, 1
800048f0: 13 06 46 0e  	addi	a2, a2, 228
800048f4: 87 31 06 00  	fld	ft3, 0(a2)

800048f8 <.LBB5_53>:
800048f8: 17 16 00 00  	auipc	a2, 1
800048fc: 13 06 06 0e  	addi	a2, a2, 224
80004900: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004904: 87 32 01 01  	fld	ft5, 16(sp)

80004908 <.LBB5_54>:
80004908: 17 16 00 00  	auipc	a2, 1
8000490c: 13 06 06 0c  	addi	a2, a2, 192
80004910: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004914: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004918 <.LBB5_55>:
80004918: 17 16 00 00  	auipc	a2, 1
8000491c: 13 06 86 0c  	addi	a2, a2, 200
80004920: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004924: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004928: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
8000492c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004930: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004934: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004938: 53 71 23 02  	fadd.d	ft2, ft6, ft2
8000493c: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80004940: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80004944: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004948: 63 0a 06 00  	beqz	a2, 0x8000495c <.LBB5_56+0x10>

8000494c <.LBB5_56>:
8000494c: 97 16 00 00  	auipc	a3, 1
80004950: 93 86 c6 09  	addi	a3, a3, 156
80004954: 07 b1 06 00  	fld	ft2, 0(a3)
80004958: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
8000495c: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004960: 93 05 34 06  	addi	a1, s0, 99
80004964: 93 b5 75 0c  	sltiu	a1, a1, 199
80004968: 13 06 50 00  	addi	a2, zero, 5
8000496c: b7 16 00 00  	lui	a3, 1
80004970: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80004974: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004978: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
8000497c: 63 84 06 06  	beqz	a3, 0x800049e4 <.LBB5_58+0x58>

80004980 <.LBB5_57>:
80004980: 97 15 00 00  	auipc	a1, 1
80004984: 93 85 05 07  	addi	a1, a1, 112
80004988: 07 b1 05 00  	fld	ft2, 0(a1)

8000498c <.LBB5_58>:
8000498c: 97 15 00 00  	auipc	a1, 1
80004990: 93 85 c5 06  	addi	a1, a1, 108
80004994: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004998: d3 15 25 a2  	flt.d	a1, fa0, ft2
8000499c: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800049a0: b3 e5 c5 00  	or	a1, a1, a2
800049a4: 63 98 05 00  	bnez	a1, 0x800049b4 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800049a8: 63 40 e4 02  	blt	s0, a4, 0x800049c8 <.LBB5_58+0x3c>
800049ac: 13 07 00 00  	mv	a4, zero
800049b0: 6f 00 00 02  	j	0x800049d0 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800049b4: 63 06 07 02  	beqz	a4, 0x800049e0 <.LBB5_58+0x54>
800049b8: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800049bc: 13 45 15 00  	xori	a0, a0, 1
800049c0: 33 07 a7 40  	sub	a4, a4, a0
800049c4: 6f 00 00 02  	j	0x800049e4 <.LBB5_58+0x58>
800049c8: 13 45 f4 ff  	not	a0, s0
800049cc: 33 07 a7 00  	add	a4, a4, a0
800049d0: 13 04 00 00  	mv	s0, zero
800049d4: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800049d8: 93 ea 0a 40  	ori	s5, s5, 1024
800049dc: 6f 00 80 00  	j	0x800049e4 <.LBB5_58+0x58>
800049e0: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800049e4: b3 05 99 41  	sub	a1, s2, s9
800049e8: 33 36 b9 00  	sltu	a2, s2, a1
800049ec: 13 05 00 00  	mv	a0, zero
800049f0: 63 14 06 00  	bnez	a2, 0x800049f8 <.LBB5_58+0x6c>
800049f4: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800049f8: 93 07 00 00  	mv	a5, zero
800049fc: 93 d5 1a 00  	srli	a1, s5, 1
80004a00: 93 f4 15 00  	andi	s1, a1, 1
80004a04: b3 35 90 01  	snez	a1, s9
80004a08: b3 f5 b4 00  	and	a1, s1, a1
80004a0c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80004a10: 63 94 05 00  	bnez	a1, 0x80004a18 <.LBB5_58+0x8c>
80004a14: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004a18: 93 35 14 00  	seqz	a1, s0
80004a1c: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004a20: 63 94 05 00  	bnez	a1, 0x80004a28 <.LBB5_58+0x9c>
80004a24: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004a28: 63 04 05 00  	beqz	a0, 0x80004a30 <.LBB5_58+0xa4>
80004a2c: 53 15 a5 22  	fneg.d	fa0, fa0
80004a30: 37 f5 ff ff  	lui	a0, 1048575
80004a34: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004a38: 33 f8 aa 00  	and	a6, s5, a0
80004a3c: 13 85 0b 00  	mv	a0, s7
80004a40: 93 05 0b 00  	mv	a1, s6
80004a44: 13 06 0a 00  	mv	a2, s4
80004a48: 93 86 09 00  	mv	a3, s3
80004a4c: 97 f0 ff ff  	auipc	ra, 1048575
80004a50: e7 80 40 60  	jalr	1540(ra)
80004a54: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004a58: 63 82 0c 18  	beqz	s9, 0x80004bdc <.LBB5_58+0x250>
80004a5c: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80004a60: 13 f5 0a 02  	andi	a0, s5, 32
80004a64: 13 45 55 06  	xori	a0, a0, 101
80004a68: 93 05 0b 00  	mv	a1, s6
80004a6c: 13 06 0d 00  	mv	a2, s10
80004a70: 93 86 09 00  	mv	a3, s3
80004a74: e7 80 0b 00  	jalr	s7
80004a78: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004a7c: 93 5a f4 01  	srli	s5, s0, 31
80004a80: 13 55 f4 41  	srai	a0, s0, 31
80004a84: b3 05 a4 00  	add	a1, s0, a0
80004a88: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004a8c: 93 8d dc ff  	addi	s11, s9, -3
80004a90: 13 04 f0 01  	addi	s0, zero, 31
80004a94: 37 d5 cc cc  	lui	a0, 838861
80004a98: 13 05 d5 cc  	addi	a0, a0, -819
80004a9c: 13 08 a0 00  	addi	a6, zero, 10
80004aa0: 93 08 c1 02  	addi	a7, sp, 44
80004aa4: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004aa8: b3 37 a7 02  	mulhu	a5, a4, a0
80004aac: 93 d5 37 00  	srli	a1, a5, 3
80004ab0: b3 87 05 03  	mul	a5, a1, a6
80004ab4: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004ab8: 13 e6 07 03  	ori	a2, a5, 48
80004abc: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004ac0: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004ac4: 13 0c 1c 00  	addi	s8, s8, 1
80004ac8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004acc: 33 b6 e2 00  	sltu	a2, t0, a4
80004ad0: 33 f6 c7 00  	and	a2, a5, a2
80004ad4: 93 8d fd ff  	addi	s11, s11, -1
80004ad8: 13 04 f4 ff  	addi	s0, s0, -1
80004adc: 13 87 05 00  	mv	a4, a1
80004ae0: e3 14 06 fc  	bnez	a2, 0x80004aa8 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004ae4: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004ae8: 33 35 ac 00  	sltu	a0, s8, a0
80004aec: 13 45 15 00  	xori	a0, a0, 1
80004af0: 93 c5 17 00  	xori	a1, a5, 1
80004af4: 33 e5 a5 00  	or	a0, a1, a0
80004af8: 63 12 05 04  	bnez	a0, 0x80004b3c <.LBB5_58+0x1b0>
80004afc: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004b00: b3 85 8c 41  	sub	a1, s9, s8
80004b04: 93 85 d5 ff  	addi	a1, a1, -3
80004b08: 13 06 f0 01  	addi	a2, zero, 31
80004b0c: 33 06 86 41  	sub	a2, a2, s8
80004b10: 33 05 85 01  	add	a0, a0, s8
80004b14: 63 e4 c5 00  	bltu	a1, a2, 0x80004b1c <.LBB5_58+0x190>
80004b18: 93 05 06 00  	mv	a1, a2
80004b1c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004b20: 93 05 00 03  	addi	a1, zero, 48
80004b24: 97 c0 ff ff  	auipc	ra, 1048572
80004b28: e7 80 40 a3  	jalr	-1484(ra)
;   if (flags & FLAGS_HASH) {
80004b2c: 63 e4 8d 00  	bltu	s11, s0, 0x80004b34 <.LBB5_58+0x1a8>
80004b30: 93 0d 04 00  	mv	s11, s0
80004b34: 33 85 8d 01  	add	a0, s11, s8
80004b38: 13 0c 15 00  	addi	s8, a0, 1
80004b3c: 83 2c c1 00  	lw	s9, 12(sp)
80004b40: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004b44: 63 60 85 03  	bltu	a0, s8, 0x80004b64 <.LBB5_58+0x1d8>
80004b48: 13 05 c1 02  	addi	a0, sp, 44
80004b4c: 33 05 85 01  	add	a0, a0, s8
80004b50: 93 05 d0 02  	addi	a1, zero, 45
80004b54: 63 94 0a 00  	bnez	s5, 0x80004b5c <.LBB5_58+0x1d0>
80004b58: 93 05 b0 02  	addi	a1, zero, 43
80004b5c: 13 0c 1c 00  	addi	s8, s8, 1
80004b60: 23 00 b5 00  	sb	a1, 0(a0)
80004b64: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004b68: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004b6c: 33 85 8a 01  	add	a0, s5, s8
80004b70: 03 45 05 00  	lbu	a0, 0(a0)
80004b74: 13 06 04 00  	mv	a2, s0
80004b78: 93 04 fc ff  	addi	s1, s8, -1
80004b7c: 13 04 14 00  	addi	s0, s0, 1
80004b80: 93 05 0b 00  	mv	a1, s6
80004b84: 93 86 09 00  	mv	a3, s3
80004b88: e7 80 0b 00  	jalr	s7
80004b8c: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80004b90: e3 9e 04 fc  	bnez	s1, 0x80004b6c <.LBB5_58+0x1e0>
80004b94: 33 05 44 41  	sub	a0, s0, s4
80004b98: 33 35 25 01  	sltu	a0, a0, s2
80004b9c: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80004ba0: 93 c5 1c 00  	xori	a1, s9, 1
80004ba4: 33 e5 a5 00  	or	a0, a1, a0
80004ba8: 63 18 05 02  	bnez	a0, 0x80004bd8 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004bac: b3 04 40 41  	neg	s1, s4
80004bb0: 13 0d 14 00  	addi	s10, s0, 1
80004bb4: 13 05 00 02  	addi	a0, zero, 32
80004bb8: 93 05 0b 00  	mv	a1, s6
80004bbc: 13 06 04 00  	mv	a2, s0
80004bc0: 93 86 09 00  	mv	a3, s3
80004bc4: e7 80 0b 00  	jalr	s7
80004bc8: 33 85 a4 01  	add	a0, s1, s10
80004bcc: 13 04 0d 00  	mv	s0, s10
80004bd0: e3 60 25 ff  	bltu	a0, s2, 0x80004bb0 <.LBB5_58+0x224>
80004bd4: 6f 00 80 00  	j	0x80004bdc <.LBB5_58+0x250>
80004bd8: 13 0d 04 00  	mv	s10, s0
; }
80004bdc: 13 05 0d 00  	mv	a0, s10
80004be0: 83 2d c1 04  	lw	s11, 76(sp)
80004be4: 03 2d 01 05  	lw	s10, 80(sp)
80004be8: 83 2c 41 05  	lw	s9, 84(sp)
80004bec: 03 2c 81 05  	lw	s8, 88(sp)
80004bf0: 83 2b c1 05  	lw	s7, 92(sp)
80004bf4: 03 2b 01 06  	lw	s6, 96(sp)
80004bf8: 83 2a 41 06  	lw	s5, 100(sp)
80004bfc: 03 2a 81 06  	lw	s4, 104(sp)
80004c00: 83 29 c1 06  	lw	s3, 108(sp)
80004c04: 03 29 01 07  	lw	s2, 112(sp)
80004c08: 83 24 41 07  	lw	s1, 116(sp)
80004c0c: 03 24 81 07  	lw	s0, 120(sp)
80004c10: 83 20 c1 07  	lw	ra, 124(sp)
80004c14: 13 01 01 08  	addi	sp, sp, 128
80004c18: 67 80 00 00  	ret

80004c1c <_ntoa_format>:
; {
80004c1c: 13 01 01 fc  	addi	sp, sp, -64
80004c20: 23 2e 11 02  	sw	ra, 60(sp)
80004c24: 23 2c 81 02  	sw	s0, 56(sp)
80004c28: 23 2a 91 02  	sw	s1, 52(sp)
80004c2c: 23 28 21 03  	sw	s2, 48(sp)
80004c30: 23 26 31 03  	sw	s3, 44(sp)
80004c34: 23 24 41 03  	sw	s4, 40(sp)
80004c38: 23 22 51 03  	sw	s5, 36(sp)
80004c3c: 23 20 61 03  	sw	s6, 32(sp)
80004c40: 23 2e 71 01  	sw	s7, 28(sp)
80004c44: 23 2c 81 01  	sw	s8, 24(sp)
80004c48: 23 2a 91 01  	sw	s9, 20(sp)
80004c4c: 23 28 a1 01  	sw	s10, 16(sp)
80004c50: 23 26 b1 01  	sw	s11, 12(sp)
80004c54: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004c58: 93 fa 2e 00  	andi	s5, t4, 2
80004c5c: 13 09 0e 00  	mv	s2, t3
80004c60: 13 8d 03 00  	mv	s10, t2
80004c64: 93 8c 08 00  	mv	s9, a7
80004c68: 13 8c 07 00  	mv	s8, a5
80004c6c: 93 89 06 00  	mv	s3, a3
80004c70: 13 0a 06 00  	mv	s4, a2
80004c74: 13 8b 05 00  	mv	s6, a1
80004c78: 93 0d 05 00  	mv	s11, a0
80004c7c: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80004c80: 63 9e 0a 0c  	bnez	s5, 0x80004d5c <_ntoa_format+0x140>
80004c84: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004c88: 63 0e 09 00  	beqz	s2, 0x80004ca4 <_ntoa_format+0x88>
80004c8c: 63 0e 04 00  	beqz	s0, 0x80004ca8 <_ntoa_format+0x8c>
80004c90: 13 f5 cb 00  	andi	a0, s7, 12
80004c94: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004c98: 33 65 05 01  	or	a0, a0, a6
80004c9c: 33 09 a9 40  	sub	s2, s2, a0
80004ca0: 6f 00 80 00  	j	0x80004ca8 <_ntoa_format+0x8c>
80004ca4: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004ca8: 33 35 ac 01  	sltu	a0, s8, s10
80004cac: 93 45 15 00  	xori	a1, a0, 1
80004cb0: 13 05 f0 01  	addi	a0, zero, 31
80004cb4: 33 36 85 01  	sltu	a2, a0, s8
80004cb8: b3 65 b6 00  	or	a1, a2, a1
80004cbc: 63 94 05 04  	bnez	a1, 0x80004d04 <_ntoa_format+0xe8>
80004cc0: 23 22 51 01  	sw	s5, 4(sp)
80004cc4: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004cc8: 93 45 fc ff  	not	a1, s8
80004ccc: b3 85 a5 01  	add	a1, a1, s10
80004cd0: 33 06 85 41  	sub	a2, a0, s8
80004cd4: 33 05 87 01  	add	a0, a4, s8
80004cd8: 63 e4 c5 00  	bltu	a1, a2, 0x80004ce0 <_ntoa_format+0xc4>
80004cdc: 93 05 06 00  	mv	a1, a2
80004ce0: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004ce4: 93 05 00 03  	addi	a1, zero, 48
80004ce8: 13 86 04 00  	mv	a2, s1
80004cec: 97 c0 ff ff  	auipc	ra, 1048572
80004cf0: e7 80 c0 86  	jalr	-1940(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004cf4: 33 8c 84 01  	add	s8, s1, s8
80004cf8: 03 27 81 00  	lw	a4, 8(sp)
80004cfc: 13 88 0a 00  	mv	a6, s5
80004d00: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004d04: 63 0c 04 04  	beqz	s0, 0x80004d5c <_ntoa_format+0x140>
80004d08: 33 35 2c 01  	sltu	a0, s8, s2
80004d0c: 93 45 15 00  	xori	a1, a0, 1
80004d10: 13 05 f0 01  	addi	a0, zero, 31
80004d14: 33 36 85 01  	sltu	a2, a0, s8
80004d18: b3 e5 c5 00  	or	a1, a1, a2
80004d1c: 63 90 05 04  	bnez	a1, 0x80004d5c <_ntoa_format+0x140>
80004d20: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004d24: 93 45 fc ff  	not	a1, s8
80004d28: b3 05 b9 00  	add	a1, s2, a1
80004d2c: 33 06 85 41  	sub	a2, a0, s8
80004d30: 33 05 87 01  	add	a0, a4, s8
80004d34: 63 e4 c5 00  	bltu	a1, a2, 0x80004d3c <_ntoa_format+0x120>
80004d38: 93 05 06 00  	mv	a1, a2
80004d3c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004d40: 93 05 00 03  	addi	a1, zero, 48
80004d44: 13 86 04 00  	mv	a2, s1
80004d48: 97 c0 ff ff  	auipc	ra, 1048572
80004d4c: e7 80 00 81  	jalr	-2032(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004d50: 33 8c 84 01  	add	s8, s1, s8
80004d54: 03 27 81 00  	lw	a4, 8(sp)
80004d58: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004d5c: 13 f5 0b 01  	andi	a0, s7, 16
80004d60: 63 02 05 0e  	beqz	a0, 0x80004e44 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80004d64: 13 f5 0b 40  	andi	a0, s7, 1024
80004d68: 13 55 a5 00  	srli	a0, a0, 10
80004d6c: 93 35 1c 00  	seqz	a1, s8
80004d70: 33 65 b5 00  	or	a0, a0, a1
80004d74: 63 1e 05 02  	bnez	a0, 0x80004db0 <_ntoa_format+0x194>
80004d78: 33 45 ac 01  	xor	a0, s8, s10
80004d7c: 33 35 a0 00  	snez	a0, a0
80004d80: b3 45 2c 01  	xor	a1, s8, s2
80004d84: b3 35 b0 00  	snez	a1, a1
80004d88: 33 75 b5 00  	and	a0, a0, a1
80004d8c: 63 12 05 02  	bnez	a0, 0x80004db0 <_ntoa_format+0x194>
;       len--;
80004d90: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80004d94: b3 35 a0 00  	snez	a1, a0
80004d98: 13 86 0c ff  	addi	a2, s9, -16
80004d9c: 13 36 16 00  	seqz	a2, a2
80004da0: b3 75 b6 00  	and	a1, a2, a1
80004da4: 63 84 05 00  	beqz	a1, 0x80004dac <_ntoa_format+0x190>
80004da8: 13 05 ec ff  	addi	a0, s8, -2
80004dac: 13 0c 05 00  	mv	s8, a0
80004db0: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004db4: 63 96 ac 02  	bne	s9, a0, 0x80004de0 <_ntoa_format+0x1c4>
80004db8: 13 f5 0b 02  	andi	a0, s7, 32
80004dbc: 93 55 55 00  	srli	a1, a0, 5
80004dc0: 13 06 f0 01  	addi	a2, zero, 31
80004dc4: 33 36 86 01  	sltu	a2, a2, s8
80004dc8: b3 e5 c5 00  	or	a1, a1, a2
80004dcc: 63 9e 05 02  	bnez	a1, 0x80004e08 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004dd0: 33 05 87 01  	add	a0, a4, s8
80004dd4: 13 0c 1c 00  	addi	s8, s8, 1
80004dd8: 93 05 80 07  	addi	a1, zero, 120
80004ddc: 6f 00 c0 04  	j	0x80004e28 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004de0: 13 85 ec ff  	addi	a0, s9, -2
80004de4: 33 35 a0 00  	snez	a0, a0
80004de8: 93 05 f0 01  	addi	a1, zero, 31
80004dec: b3 b5 85 01  	sltu	a1, a1, s8
80004df0: 33 65 b5 00  	or	a0, a0, a1
80004df4: 63 1c 05 02  	bnez	a0, 0x80004e2c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004df8: 33 05 87 01  	add	a0, a4, s8
80004dfc: 13 0c 1c 00  	addi	s8, s8, 1
80004e00: 93 05 20 06  	addi	a1, zero, 98
80004e04: 6f 00 40 02  	j	0x80004e28 <_ntoa_format+0x20c>
80004e08: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004e0c: 13 35 15 00  	seqz	a0, a0
80004e10: 93 c5 15 00  	xori	a1, a1, 1
80004e14: 33 65 b5 00  	or	a0, a0, a1
80004e18: 63 1a 05 00  	bnez	a0, 0x80004e2c <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004e1c: 33 05 87 01  	add	a0, a4, s8
80004e20: 13 0c 1c 00  	addi	s8, s8, 1
80004e24: 93 05 80 05  	addi	a1, zero, 88
80004e28: 23 00 b5 00  	sb	a1, 0(a0)
80004e2c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004e30: 63 60 85 07  	bltu	a0, s8, 0x80004e90 <_ntoa_format+0x274>
;       buf[len++] = '0';
80004e34: 33 05 87 01  	add	a0, a4, s8
80004e38: 13 0c 1c 00  	addi	s8, s8, 1
80004e3c: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80004e40: 23 00 b5 00  	sb	a1, 0(a0)
80004e44: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004e48: 63 64 85 05  	bltu	a0, s8, 0x80004e90 <_ntoa_format+0x274>
;     if (negative) {
80004e4c: 63 0a 08 00  	beqz	a6, 0x80004e60 <_ntoa_format+0x244>
;       buf[len++] = '-';
80004e50: 33 05 87 01  	add	a0, a4, s8
80004e54: 13 0c 1c 00  	addi	s8, s8, 1
80004e58: 93 05 d0 02  	addi	a1, zero, 45
80004e5c: 6f 00 00 03  	j	0x80004e8c <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80004e60: 13 f5 4b 00  	andi	a0, s7, 4
80004e64: 63 1e 05 00  	bnez	a0, 0x80004e80 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80004e68: 13 f5 8b 00  	andi	a0, s7, 8
80004e6c: 63 02 05 02  	beqz	a0, 0x80004e90 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80004e70: 33 05 87 01  	add	a0, a4, s8
80004e74: 13 0c 1c 00  	addi	s8, s8, 1
80004e78: 93 05 00 02  	addi	a1, zero, 32
80004e7c: 6f 00 00 01  	j	0x80004e8c <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004e80: 33 05 87 01  	add	a0, a4, s8
80004e84: 13 0c 1c 00  	addi	s8, s8, 1
80004e88: 93 05 b0 02  	addi	a1, zero, 43
80004e8c: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004e90: 13 f5 3b 00  	andi	a0, s7, 3
80004e94: 33 35 a0 00  	snez	a0, a0
80004e98: b3 35 2c 01  	sltu	a1, s8, s2
80004e9c: 93 c5 15 00  	xori	a1, a1, 1
80004ea0: 33 65 b5 00  	or	a0, a0, a1
80004ea4: 13 04 0a 00  	mv	s0, s4
80004ea8: 63 16 05 02  	bnez	a0, 0x80004ed4 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80004eac: b3 04 89 41  	sub	s1, s2, s8
80004eb0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004eb4: 13 04 16 00  	addi	s0, a2, 1
80004eb8: 13 05 00 02  	addi	a0, zero, 32
80004ebc: 93 05 0b 00  	mv	a1, s6
80004ec0: 93 86 09 00  	mv	a3, s3
80004ec4: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80004ec8: 93 84 f4 ff  	addi	s1, s1, -1
80004ecc: 13 06 04 00  	mv	a2, s0
80004ed0: e3 92 04 fe  	bnez	s1, 0x80004eb4 <_ntoa_format+0x298>
80004ed4: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80004ed8: 63 0e 0c 02  	beqz	s8, 0x80004f14 <_ntoa_format+0x2f8>
80004edc: 03 25 81 00  	lw	a0, 8(sp)
80004ee0: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004ee4: 33 85 8b 01  	add	a0, s7, s8
80004ee8: 03 45 05 00  	lbu	a0, 0(a0)
80004eec: 93 0c fc ff  	addi	s9, s8, -1
80004ef0: 93 04 14 00  	addi	s1, s0, 1
80004ef4: 93 05 0b 00  	mv	a1, s6
80004ef8: 13 06 04 00  	mv	a2, s0
80004efc: 93 86 09 00  	mv	a3, s3
80004f00: e7 80 0d 00  	jalr	s11
80004f04: 13 84 04 00  	mv	s0, s1
80004f08: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80004f0c: e3 9c 0c fc  	bnez	s9, 0x80004ee4 <_ntoa_format+0x2c8>
80004f10: 6f 00 80 00  	j	0x80004f18 <_ntoa_format+0x2fc>
80004f14: 93 04 04 00  	mv	s1, s0
80004f18: 33 85 44 41  	sub	a0, s1, s4
80004f1c: 33 35 25 01  	sltu	a0, a0, s2
80004f20: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004f24: 93 c5 1a 00  	xori	a1, s5, 1
80004f28: 33 e5 a5 00  	or	a0, a1, a0
80004f2c: 63 18 05 02  	bnez	a0, 0x80004f5c <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80004f30: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004f34: 13 84 14 00  	addi	s0, s1, 1
80004f38: 13 05 00 02  	addi	a0, zero, 32
80004f3c: 93 05 0b 00  	mv	a1, s6
80004f40: 13 86 04 00  	mv	a2, s1
80004f44: 93 86 09 00  	mv	a3, s3
80004f48: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80004f4c: 33 05 8a 00  	add	a0, s4, s0
80004f50: 93 04 04 00  	mv	s1, s0
80004f54: e3 60 25 ff  	bltu	a0, s2, 0x80004f34 <_ntoa_format+0x318>
80004f58: 6f 00 80 00  	j	0x80004f60 <_ntoa_format+0x344>
80004f5c: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80004f60: 13 05 04 00  	mv	a0, s0
80004f64: 83 2d c1 00  	lw	s11, 12(sp)
80004f68: 03 2d 01 01  	lw	s10, 16(sp)
80004f6c: 83 2c 41 01  	lw	s9, 20(sp)
80004f70: 03 2c 81 01  	lw	s8, 24(sp)
80004f74: 83 2b c1 01  	lw	s7, 28(sp)
80004f78: 03 2b 01 02  	lw	s6, 32(sp)
80004f7c: 83 2a 41 02  	lw	s5, 36(sp)
80004f80: 03 2a 81 02  	lw	s4, 40(sp)
80004f84: 83 29 c1 02  	lw	s3, 44(sp)
80004f88: 03 29 01 03  	lw	s2, 48(sp)
80004f8c: 83 24 41 03  	lw	s1, 52(sp)
80004f90: 03 24 81 03  	lw	s0, 56(sp)
80004f94: 83 20 c1 03  	lw	ra, 60(sp)
80004f98: 13 01 01 04  	addi	sp, sp, 64
80004f9c: 67 80 00 00  	ret

80004fa0 <_snrt_init_team>:
;     team->base.root = team;
80004fa0: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80004fa4: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004fa8: 03 23 87 00  	lw	t1, 8(a4)
80004fac: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004fb0: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80004fb4: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004fb8: 83 22 47 00  	lw	t0, 4(a4)
80004fbc: 33 88 08 03  	mul	a6, a7, a6
80004fc0: 33 05 58 02  	mul	a0, a6, t0
80004fc4: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004fc8: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80004fcc: 33 85 68 40  	sub	a0, a7, t1
80004fd0: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80004fd4: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80004fd8: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80004fdc: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80004fe0: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80004fe4: 03 25 87 01  	lw	a0, 24(a4)
80004fe8: b7 05 00 10  	lui	a1, 65536
80004fec: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80004ff0: 23 a2 07 02  	sw	zero, 36(a5)
80004ff4: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80004ff8: 03 25 07 02  	lw	a0, 32(a4)
80004ffc: 83 25 47 02  	lw	a1, 36(a4)
80005000: 23 a4 a7 02  	sw	a0, 40(a5)
80005004: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80005008: 23 a8 c7 02  	sw	a2, 48(a5)
8000500c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80005010: 23 ac d7 02  	sw	a3, 56(a5)
80005014: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80005018: 03 25 07 01  	lw	a0, 16(a4)
8000501c: 33 08 a6 00  	add	a6, a2, a0
80005020: 93 05 08 19  	addi	a1, a6, 400
80005024: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80005028: b3 32 a8 00  	sltu	t0, a6, a0
8000502c: 93 55 15 00  	srli	a1, a0, 1
80005030: 33 03 b8 00  	add	t1, a6, a1
80005034: b3 35 03 01  	sltu	a1, t1, a6
80005038: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
8000503c: 23 a0 67 04  	sw	t1, 64(a5)
80005040: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80005044: 13 15 15 00  	slli	a0, a0, 1
80005048: b3 05 c5 00  	add	a1, a0, a2
8000504c: 33 b5 a5 00  	sltu	a0, a1, a0
80005050: 23 a4 b7 04  	sw	a1, 72(a5)
80005054: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80005058: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
8000505c: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80005060: 37 05 00 00  	lui	a0, 0
80005064: 33 05 45 00  	add	a0, a0, tp
80005068: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000506c: 03 a5 07 00  	lw	a0, 0(a5)
80005070: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80005074: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80005078: b3 85 b8 40  	sub	a1, a7, a1
8000507c: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80005080: b7 05 00 00  	lui	a1, 0
80005084: b3 85 45 00  	add	a1, a1, tp
80005088: 23 a2 a5 00  	sw	a0, 4(a1)
8000508c: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80005090: 33 85 a8 02  	mul	a0, a7, a0

80005094 <.LBB0_1>:
80005094: 97 15 00 00  	auipc	a1, 1
80005098: 93 85 05 97  	addi	a1, a1, -1680
8000509c: 33 05 b5 00  	add	a0, a0, a1
800050a0: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800050a4: 83 28 07 03  	lw	a7, 48(a4)
800050a8: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800050ac: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800050b0: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800050b4: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800050b8: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800050bc: 13 05 76 00  	addi	a0, a2, 7
800050c0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800050c4: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800050c8: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800050cc: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800050d0: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800050d4: 03 a5 05 00  	lw	a0, 0(a1)
800050d8: 13 05 f5 44  	addi	a0, a0, 1103
800050dc: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800050e0: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800050e4: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800050e8: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800050ec: 37 05 00 00  	lui	a0, 0
800050f0: 33 05 45 00  	add	a0, a0, tp
800050f4: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800050f8: 37 05 00 00  	lui	a0, 0
800050fc: 33 05 45 00  	add	a0, a0, tp
80005100: 23 26 e5 00  	sw	a4, 12(a0)
; }
80005104: 67 80 00 00  	ret

80005108 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80005108: 37 05 00 00  	lui	a0, 0
8000510c: 33 05 45 00  	add	a0, a0, tp
80005110: 03 25 05 00  	lw	a0, 0(a0)
80005114: 03 25 05 00  	lw	a0, 0(a0)
80005118: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000511c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80005120: 33 85 a5 40  	sub	a0, a1, a0
80005124: 67 80 00 00  	ret

80005128 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80005128: 37 05 00 00  	lui	a0, 0
8000512c: 33 05 45 00  	add	a0, a0, tp
80005130: 03 25 05 00  	lw	a0, 0(a0)
80005134: 03 25 05 00  	lw	a0, 0(a0)
80005138: 03 25 05 07  	lw	a0, 112(a0)
8000513c: 67 80 00 00  	ret

80005140 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80005140: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80005144: 63 44 05 00  	bltz	a0, 0x8000514c <__snrt_isr+0xc>
;         while (1)
80005148: 6f 00 00 00  	j	0x80005148 <__snrt_isr+0x8>
8000514c: b7 05 00 80  	lui	a1, 524288
80005150: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80005154: 33 75 b5 00  	and	a0, a0, a1
80005158: 13 05 d5 ff  	addi	a0, a0, -3
8000515c: 93 55 25 00  	srli	a1, a0, 2
80005160: 13 15 e5 01  	slli	a0, a0, 30
80005164: 33 65 b5 00  	or	a0, a0, a1
80005168: 93 05 40 00  	addi	a1, zero, 4
8000516c: 63 0a b5 06  	beq	a0, a1, 0x800051e0 <.LBB1_7+0x58>
80005170: 63 1a 05 08  	bnez	a0, 0x80005204 <.LBB1_7+0x7c>
80005174: 37 05 00 00  	lui	a0, 0
80005178: 33 05 45 00  	add	a0, a0, tp
8000517c: 03 25 05 00  	lw	a0, 0(a0)
80005180: 03 25 05 00  	lw	a0, 0(a0)
80005184: f3 25 40 f1  	csrr	a1, mhartid

80005188 <.LBB1_7>:
;     asm volatile(
80005188: 17 16 00 00  	auipc	a2, 1
8000518c: 13 06 86 87  	addi	a2, a2, -1928
80005190: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80005194: 93 06 06 00  	mv	a3, a2
80005198: 93 02 10 00  	addi	t0, zero, 1
8000519c: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800051a0: e3 9e 02 fe  	bnez	t0, 0x8000519c <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800051a4: b7 06 00 00  	lui	a3, 0
800051a8: b3 86 46 00  	add	a3, a3, tp
800051ac: 83 a6 86 00  	lw	a3, 8(a3)
800051b0: 33 85 a5 40  	sub	a0, a1, a0
800051b4: 93 55 35 00  	srli	a1, a0, 3
800051b8: 93 f5 c5 ff  	andi	a1, a1, -4
800051bc: b3 85 b6 00  	add	a1, a3, a1
800051c0: 83 a6 05 00  	lw	a3, 0(a1)
800051c4: 13 07 10 00  	addi	a4, zero, 1
800051c8: 33 15 a7 00  	sll	a0, a4, a0
800051cc: 13 45 f5 ff  	not	a0, a0
800051d0: 33 f5 a6 00  	and	a0, a3, a0
800051d4: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800051d8: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800051dc: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800051e0: 37 05 00 00  	lui	a0, 0
800051e4: 33 05 45 00  	add	a0, a0, tp
800051e8: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800051ec: b7 05 00 00  	lui	a1, 0
800051f0: b3 85 45 00  	add	a1, a1, tp
800051f4: 83 a5 c5 00  	lw	a1, 12(a1)
800051f8: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800051fc: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80005200: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80005204: 67 80 00 00  	ret

Disassembly of section .init:

80005210 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80005210: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80005214: 93 81 81 ef  	addi	gp, gp, -264

80005218 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80005218: 97 00 00 00  	auipc	ra, 0
8000521c: e7 80 40 3c  	jalr	964(ra)

80005220 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80005220: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80005224: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80005228: 97 00 00 00  	auipc	ra, 0
8000522c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80005230: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80005234: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80005238: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000523c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80005240: 63 92 02 02  	bnez	t0, 0x80005264 <snrt.crt0.init_registers>

80005244 <.Lpcrel_hi0>:
;     la        t0, _edata
80005244: 97 02 00 00  	auipc	t0, 0
80005248: 93 82 c2 7b  	addi	t0, t0, 1980

8000524c <.Lpcrel_hi1>:
;     la        t1, _end
8000524c: 17 03 00 00  	auipc	t1, 0
80005250: 13 03 83 7b  	addi	t1, t1, 1976
;     bge       t0, t1, 2f
80005254: 63 d8 62 00  	bge	t0, t1, 0x80005264 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80005258: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000525c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80005260: e3 cc 62 fe  	blt	t0, t1, 0x80005258 <.Lpcrel_hi1+0xc>

80005264 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80005264: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80005268: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000526c: 63 82 02 08  	beqz	t0, 0x800052f0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80005270: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80005274: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80005278: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000527c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80005280: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80005284: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80005288: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000528c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80005290: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80005294: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80005298: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000529c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800052a0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800052a4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800052a8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800052ac: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800052b0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800052b4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800052b8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800052bc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800052c0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800052c4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800052c8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800052cc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800052d0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800052d4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800052d8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800052dc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800052e0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800052e4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800052e8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800052ec: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800052f0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800052f0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800052f4: 23 a0 06 00  	sw	zero, 0(a3)

800052f8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800052f8: 97 02 00 00  	auipc	t0, 0
800052fc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80005300: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80005304: 93 87 06 00  	mv	a5, a3

80005308 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80005308: 97 03 00 00  	auipc	t2, 0
8000530c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80005310: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80005314: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80005318: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000531c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80005320: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80005324: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80005328: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000532c: b3 86 66 40  	sub	a3, a3, t1

80005330 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80005330: 97 02 00 00  	auipc	t0, 0
80005334: 93 82 82 5d  	addi	t0, t0, 1496

80005338 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80005338: 17 03 00 00  	auipc	t1, 0
8000533c: 13 03 03 5d  	addi	t1, t1, 1488

80005340 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80005340: 97 03 00 00  	auipc	t2, 0
80005344: 93 83 83 5c  	addi	t2, t2, 1480

80005348 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80005348: 17 0e 00 00  	auipc	t3, 0
8000534c: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80005350: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80005354: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80005358: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000535c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80005360: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80005364: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80005368: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000536c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80005370: 63 dc 62 00  	bge	t0, t1, 0x80005388 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80005374: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80005378: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000537c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005380: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80005384: e3 c8 62 fe  	blt	t0, t1, 0x80005374 <.Lpcrel_hi7+0x2c>

80005388 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80005388: 97 02 00 00  	auipc	t0, 0
8000538c: 93 82 02 58  	addi	t0, t0, 1408

80005390 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80005390: 17 03 00 00  	auipc	t1, 0
80005394: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
80005398: 63 da 62 00  	bge	t0, t1, 0x800053ac <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000539c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800053a0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800053a4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800053a8: e3 ca 72 fe  	blt	t0, t2, 0x8000539c <.Lpcrel_hi9+0xc>

800053ac <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800053ac: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800053b0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800053b4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800053b8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800053bc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800053c0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800053c4: 97 00 00 00  	auipc	ra, 0
800053c8: e7 80 c0 bd  	jalr	-1060(ra)
;     lw        a0, 0(sp)
800053cc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800053d0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800053d4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800053d8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800053dc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800053e0: 13 01 41 01  	addi	sp, sp, 20

800053e4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800053e4: 97 02 00 00  	auipc	t0, 0
800053e8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800053ec: 73 90 52 30  	csrw	mtvec, t0

800053f0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800053f0: 97 00 00 00  	auipc	ra, 0
800053f4: e7 80 00 22  	jalr	544(ra)

800053f8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800053f8: 97 b0 ff ff  	auipc	ra, 1048571
800053fc: e7 80 c0 23  	jalr	572(ra)
;     mv        s0, a0 # store return value in s0
80005400: 13 04 05 00  	mv	s0, a0

80005404 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80005404: 97 00 00 00  	auipc	ra, 0
80005408: e7 80 c0 20  	jalr	524(ra)

8000540c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000540c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80005410: 97 00 00 00  	auipc	ra, 0
80005414: e7 80 c0 22  	jalr	556(ra)
;     wfi
80005418: 73 00 50 10  	wfi	
;     j       1b
8000541c: 6f f0 df ff  	j	0x80005418 <snrt.crt0.end+0xc>

80005420 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005420: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005424: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005428: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000542c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80005430: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80005434: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80005438: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000543c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80005440: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80005444: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80005448: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000544c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80005450: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80005454: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80005458: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000545c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80005460: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80005464: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80005468: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000546c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005470: 63 84 02 08  	beqz	t0, 0x800054f8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80005474: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80005478: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000547c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80005480: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80005484: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80005488: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000548c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80005490: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80005494: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80005498: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000549c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800054a0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800054a4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800054a8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800054ac: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800054b0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800054b4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800054b8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800054bc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800054c0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800054c4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800054c8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800054cc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800054d0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800054d4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800054d8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800054dc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800054e0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800054e4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800054e8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800054ec: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800054f0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800054f4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800054f8: 97 00 00 00  	auipc	ra, 0
800054fc: e7 80 80 c4  	jalr	-952(ra)
;     csrr    t0, misa
80005500: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80005504: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005508: 63 84 02 08  	beqz	t0, 0x80005590 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000550c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80005510: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80005514: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80005518: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000551c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005520: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005524: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005528: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000552c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005530: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005534: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005538: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000553c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80005540: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80005544: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80005548: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000554c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80005550: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80005554: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80005558: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000555c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80005560: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80005564: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80005568: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000556c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80005570: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80005574: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80005578: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000557c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80005580: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80005584: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80005588: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000558c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80005590: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80005594: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80005598: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000559c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800055a0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800055a4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800055a8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800055ac: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800055b0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800055b4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800055b8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800055bc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800055c0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800055c4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800055c8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800055cc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800055d0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800055d4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800055d8: 73 00 20 30  	mret	

800055dc <_snrt_init_core_info>:
;     mv        a4, a1
800055dc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800055e0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800055e4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800055e8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800055ec: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800055f0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800055f4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800055f8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800055fc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80005600: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80005604: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80005608: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000560c: 67 80 00 00  	ret

80005610 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80005610: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80005614: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80005618: 97 00 00 00  	auipc	ra, 0
8000561c: e7 80 00 b1  	jalr	-1264(ra)
;     lw        a0, 0(a0)
80005620: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005624: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005628: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000562c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005630: 67 80 00 00  	ret

80005634 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005634: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005638: 67 80 00 00  	ret

8000563c <_snrt_exit>:
;     addi      sp, sp, -8
8000563c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005640: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005644: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005648: 97 00 00 00  	auipc	ra, 0
8000564c: e7 80 00 ac  	jalr	-1344(ra)
;     lw        t0, 0(sp)
80005650: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005654: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005658: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000565c: 63 1c 05 00  	bnez	a0, 0x80005674 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80005660: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80005664: 93 e2 12 00  	ori	t0, t0, 1

80005668 <.Lpcrel_hi11>:
;     la        t1, tohost
80005668: 17 03 00 00  	auipc	t1, 0
8000566c: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
80005670: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80005674: 67 80 00 00  	ret
