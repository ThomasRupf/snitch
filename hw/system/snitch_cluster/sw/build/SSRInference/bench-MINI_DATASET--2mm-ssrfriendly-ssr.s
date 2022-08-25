
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET--2mm-ssrfriendly-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00005050 80000000 TEXT
  2 .init             00000468 80005050 TEXT
  3 .rodata           00000238 800054b8 DATA
  4 .htif             00000048 80005700 DATA
  5 .tdata            00000000 80005748 DATA
  6 .tbss             00000010 80005748 BSS
  7 .tbssend          00000000 80005758 DATA
  8 .sdata            000000e8 80005758 DATA
  9 .data             00000000 80005840 DATA
 10 .sbss             00000004 80005840 BSS
 11 .bss              00000000 80005844 BSS
 12 .dram             00000000 80005844 DATA
 13 .debug_info       0000372b 00000000 
 14 .debug_abbrev     00000c05 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003761 00000000 
 17 .debug_loc        000041c4 00000000 
 18 .debug_ranges     000003f8 00000000 
 19 .debug_str        00000b13 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           000033c0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000097c 00000000 


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
80000634: 13 01 01 ef  	addi	sp, sp, -272
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 10  	sw	ra, 268(sp)
8000063c: 23 24 81 10  	sw	s0, 264(sp)
80000640: 23 22 91 10  	sw	s1, 260(sp)
80000644: 23 20 21 11  	sw	s2, 256(sp)
80000648: 23 2e 31 0f  	sw	s3, 252(sp)
8000064c: 23 2c 41 0f  	sw	s4, 248(sp)
80000650: 23 2a 51 0f  	sw	s5, 244(sp)
80000654: 23 28 61 0f  	sw	s6, 240(sp)
80000658: 23 26 71 0f  	sw	s7, 236(sp)
8000065c: 23 24 81 0f  	sw	s8, 232(sp)
80000660: 23 22 91 0f  	sw	s9, 228(sp)
80000664: 23 20 a1 0f  	sw	s10, 224(sp)
80000668: 23 2e b1 0d  	sw	s11, 220(sp)
8000066c: 27 38 81 0c  	fsd	fs0, 208(sp)
80000670: 27 34 91 0c  	fsd	fs1, 200(sp)
80000674: 27 30 21 0d  	fsd	fs2, 192(sp)
80000678: 27 3c 31 0b  	fsd	fs3, 184(sp)
8000067c: 27 38 41 0b  	fsd	fs4, 176(sp)
80000680: 27 34 51 0b  	fsd	fs5, 168(sp)
80000684: 27 30 61 0b  	fsd	fs6, 160(sp)
80000688: 27 3c 71 09  	fsd	fs7, 152(sp)
8000068c: 37 05 00 00  	lui	a0, 0
80000690: 33 05 45 00  	add	a0, a0, tp
80000694: 83 25 45 00  	lw	a1, 4(a0)
80000698: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000069c: 63 84 05 00  	beqz	a1, 0x800006a4 <main+0x70>
800006a0: 6f 20 90 29  	j	0x80003138 <.LBB0_91+0x10>
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
80000764: 23 2a d1 02  	sw	a3, 52(sp)
;   for (i = 0; i < ni; i++)
80000768: 33 85 f0 00  	add	a0, ra, a5
8000076c: 13 06 85 28  	addi	a2, a0, 648
80000770: 13 d5 47 01  	srli	a0, a5, 20
80000774: 33 35 a0 00  	snez	a0, a0
80000778: b7 05 12 00  	lui	a1, 288
8000077c: 93 85 15 00  	addi	a1, a1, 1
80000780: 23 2c c1 00  	sw	a2, 24(sp)
80000784: b3 35 b6 00  	sltu	a1, a2, a1
80000788: b3 75 b5 00  	and	a1, a0, a1

8000078c <.LBB0_78>:
8000078c: 17 55 00 00  	auipc	a0, 5
80000790: 13 05 c5 fc  	addi	a0, a0, -52
80000794: 23 28 f1 02  	sw	a5, 48(sp)
80000798: 23 2e b1 00  	sw	a1, 28(sp)
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
80000c20: 83 26 41 03  	lw	a3, 52(sp)
;   for (i = 0; i < nk; i++)
80000c24: 33 85 d0 00  	add	a0, ra, a3
80000c28: 13 06 85 3e  	addi	a2, a0, 1000
80000c2c: 13 d5 46 01  	srli	a0, a3, 20
80000c30: 33 35 a0 00  	snez	a0, a0
80000c34: b7 05 12 00  	lui	a1, 288
80000c38: 93 85 15 00  	addi	a1, a1, 1
80000c3c: 23 26 c1 00  	sw	a2, 12(sp)
80000c40: b3 35 b6 00  	sltu	a1, a2, a1
80000c44: 33 75 b5 00  	and	a0, a0, a1

80000c48 <.LBB0_79>:
80000c48: 97 5a 00 00  	auipc	s5, 5
80000c4c: 93 8a 8a b1  	addi	s5, s5, -1256
80000c50: 23 28 a1 00  	sw	a0, 16(sp)
80000c54: 13 08 00 00  	mv	a6, zero
80000c58: 93 08 00 00  	mv	a7, zero
80000c5c: 93 02 00 00  	mv	t0, zero
80000c60: 13 03 00 00  	mv	t1, zero
80000c64: 93 03 00 00  	mv	t2, zero
80000c68: 13 0e 00 00  	mv	t3, zero
80000c6c: 93 0e 00 00  	mv	t4, zero
80000c70: 13 0f 00 00  	mv	t5, zero
80000c74: 93 0f 00 00  	mv	t6, zero
80000c78: 13 09 00 00  	mv	s2, zero
80000c7c: 63 04 05 2a  	beqz	a0, 0x80000f24 <.LBB0_79+0x2dc>
80000c80: 13 0a 00 00  	mv	s4, zero
80000c84: 13 0b 00 00  	mv	s6, zero
80000c88: 13 07 00 00  	mv	a4, zero
80000c8c: 93 07 00 00  	mv	a5, zero
80000c90: 93 04 00 00  	mv	s1, zero
80000c94: 13 04 00 00  	mv	s0, zero
80000c98: 13 05 00 00  	mv	a0, zero
80000c9c: 93 05 80 00  	addi	a1, zero, 8
80000ca0: 93 09 10 01  	addi	s3, zero, 17
;   for (i = 0; i < nk; i++)
80000ca4: 13 06 00 04  	addi	a2, zero, 64
80000ca8: ab a0 c9 00  	scfgw	s3, a2
80000cac: 13 06 00 0c  	addi	a2, zero, 192
80000cb0: ab a0 c5 00  	scfgw	a1, a2
80000cb4: 93 09 50 01  	addi	s3, zero, 21
80000cb8: 13 06 00 06  	addi	a2, zero, 96
80000cbc: ab a0 c9 00  	scfgw	s3, a2
80000cc0: 13 06 00 0e  	addi	a2, zero, 224
80000cc4: ab a0 c5 00  	scfgw	a1, a2
80000cc8: 93 05 00 02  	addi	a1, zero, 32
80000ccc: ab 20 b0 00  	scfgw	zero, a1
80000cd0: 2b a0 06 3a  	scfgwi	a3, 928
80000cd4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000cd8: b7 95 e3 38  	lui	a1, 233017
80000cdc: 93 85 95 e3  	addi	a1, a1, -455
80000ce0: 93 09 e0 fe  	addi	s3, zero, -18
80000ce4: 87 b1 0a 00  	fld	ft3, 0(s5)
80000ce8: 13 06 20 01  	addi	a2, zero, 18
80000cec: 53 02 00 d2  	fcvt.d.w	ft4, zero
80000cf0: 93 0a 60 17  	addi	s5, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000cf4: b3 36 b5 02  	mulhu	a3, a0, a1
80000cf8: 93 d6 26 00  	srli	a3, a3, 2
80000cfc: b3 86 c6 02  	mul	a3, a3, a2
80000d00: b3 06 d5 40  	sub	a3, a0, a3
80000d04: d3 82 06 d2  	fcvt.d.w	ft5, a3
80000d08: b3 36 b8 02  	mulhu	a3, a6, a1
80000d0c: 93 d6 26 00  	srli	a3, a3, 2
80000d10: b3 86 c6 02  	mul	a3, a3, a2
80000d14: b3 06 d8 40  	sub	a3, a6, a3
80000d18: 53 83 06 d2  	fcvt.d.w	ft6, a3
80000d1c: b3 b6 b8 02  	mulhu	a3, a7, a1
80000d20: 93 d6 26 00  	srli	a3, a3, 2
80000d24: b3 86 c6 02  	mul	a3, a3, a2
80000d28: b3 86 d8 40  	sub	a3, a7, a3
80000d2c: d3 83 06 d2  	fcvt.d.w	ft7, a3
80000d30: b3 b6 b2 02  	mulhu	a3, t0, a1
80000d34: 93 d6 26 00  	srli	a3, a3, 2
80000d38: b3 86 c6 02  	mul	a3, a3, a2
80000d3c: b3 86 d2 40  	sub	a3, t0, a3
80000d40: 53 85 06 d2  	fcvt.d.w	fa0, a3
80000d44: b3 36 b3 02  	mulhu	a3, t1, a1
80000d48: 93 d6 26 00  	srli	a3, a3, 2
80000d4c: b3 86 c6 02  	mul	a3, a3, a2
80000d50: b3 06 d3 40  	sub	a3, t1, a3
80000d54: d3 85 06 d2  	fcvt.d.w	fa1, a3
80000d58: b3 b6 b3 02  	mulhu	a3, t2, a1
80000d5c: 93 d6 26 00  	srli	a3, a3, 2
80000d60: b3 86 c6 02  	mul	a3, a3, a2
80000d64: b3 86 d3 40  	sub	a3, t2, a3
80000d68: 53 86 06 d2  	fcvt.d.w	fa2, a3
80000d6c: b3 36 be 02  	mulhu	a3, t3, a1
80000d70: 93 d6 26 00  	srli	a3, a3, 2
80000d74: b3 86 c6 02  	mul	a3, a3, a2
80000d78: b3 06 de 40  	sub	a3, t3, a3
80000d7c: d3 86 06 d2  	fcvt.d.w	fa3, a3
80000d80: b3 b6 be 02  	mulhu	a3, t4, a1
80000d84: 93 d6 26 00  	srli	a3, a3, 2
80000d88: b3 86 c6 02  	mul	a3, a3, a2
80000d8c: b3 86 de 40  	sub	a3, t4, a3
80000d90: 53 87 06 d2  	fcvt.d.w	fa4, a3
80000d94: b3 36 bf 02  	mulhu	a3, t5, a1
80000d98: 93 d6 26 00  	srli	a3, a3, 2
80000d9c: b3 86 c6 02  	mul	a3, a3, a2
80000da0: b3 06 df 40  	sub	a3, t5, a3
80000da4: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000da8: b3 b6 bf 02  	mulhu	a3, t6, a1
80000dac: 93 d6 26 00  	srli	a3, a3, 2
80000db0: b3 86 c6 02  	mul	a3, a3, a2
80000db4: b3 86 df 40  	sub	a3, t6, a3
80000db8: 53 88 06 d2  	fcvt.d.w	fa6, a3
80000dbc: b3 36 b9 02  	mulhu	a3, s2, a1
80000dc0: 93 d6 26 00  	srli	a3, a3, 2
80000dc4: b3 86 c6 02  	mul	a3, a3, a2
80000dc8: b3 06 d9 40  	sub	a3, s2, a3
80000dcc: d3 88 06 d2  	fcvt.d.w	fa7, a3
80000dd0: b3 36 ba 02  	mulhu	a3, s4, a1
80000dd4: 93 d6 26 00  	srli	a3, a3, 2
80000dd8: b3 86 c6 02  	mul	a3, a3, a2
80000ddc: b3 06 da 40  	sub	a3, s4, a3
80000de0: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80000de4: b3 36 bb 02  	mulhu	a3, s6, a1
80000de8: 93 d6 26 00  	srli	a3, a3, 2
80000dec: b3 86 c6 02  	mul	a3, a3, a2
80000df0: b3 06 db 40  	sub	a3, s6, a3
80000df4: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80000df8: b3 36 b7 02  	mulhu	a3, a4, a1
80000dfc: 93 d6 26 00  	srli	a3, a3, 2
80000e00: b3 86 c6 02  	mul	a3, a3, a2
80000e04: b3 06 d7 40  	sub	a3, a4, a3
80000e08: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80000e0c: b3 b6 b7 02  	mulhu	a3, a5, a1
80000e10: 93 d6 26 00  	srli	a3, a3, 2
80000e14: b3 86 c6 02  	mul	a3, a3, a2
80000e18: b3 86 d7 40  	sub	a3, a5, a3
80000e1c: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80000e20: b3 b6 b4 02  	mulhu	a3, s1, a1
80000e24: 93 d6 26 00  	srli	a3, a3, 2
80000e28: b3 86 c6 02  	mul	a3, a3, a2
80000e2c: b3 86 d4 40  	sub	a3, s1, a3
80000e30: 53 84 06 d2  	fcvt.d.w	fs0, a3
80000e34: b3 36 b4 02  	mulhu	a3, s0, a1
80000e38: 93 d6 26 00  	srli	a3, a3, 2
80000e3c: b3 86 36 03  	mul	a3, a3, s3
80000e40: b3 06 d4 00  	add	a3, s0, a3
80000e44: d3 84 06 d2  	fcvt.d.w	fs1, a3
80000e48: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e4c: 53 80 52 22  	fmv.d	ft0, ft5
80000e50: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e54: 53 80 52 22  	fmv.d	ft0, ft5
80000e58: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e5c: 53 80 52 22  	fmv.d	ft0, ft5
80000e60: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e64: 53 80 52 22  	fmv.d	ft0, ft5
80000e68: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e6c: 53 80 52 22  	fmv.d	ft0, ft5
80000e70: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e74: 53 80 52 22  	fmv.d	ft0, ft5
80000e78: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e7c: 53 80 52 22  	fmv.d	ft0, ft5
80000e80: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e84: 53 80 52 22  	fmv.d	ft0, ft5
80000e88: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e8c: 53 80 52 22  	fmv.d	ft0, ft5
80000e90: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000e94: 53 80 52 22  	fmv.d	ft0, ft5
80000e98: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000e9c: 53 80 52 22  	fmv.d	ft0, ft5
80000ea0: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000ea4: 53 80 52 22  	fmv.d	ft0, ft5
80000ea8: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000eac: 53 80 52 22  	fmv.d	ft0, ft5
80000eb0: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000eb4: 53 80 52 22  	fmv.d	ft0, ft5
80000eb8: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000ebc: 53 80 52 22  	fmv.d	ft0, ft5
80000ec0: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000ec4: 53 80 52 22  	fmv.d	ft0, ft5
80000ec8: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000ecc: 53 80 52 22  	fmv.d	ft0, ft5
80000ed0: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000ed4: 13 05 15 00  	addi	a0, a0, 1
80000ed8: 13 04 14 01  	addi	s0, s0, 17
80000edc: 93 84 04 01  	addi	s1, s1, 16
80000ee0: 93 87 f7 00  	addi	a5, a5, 15
80000ee4: 13 07 e7 00  	addi	a4, a4, 14
80000ee8: 13 0b db 00  	addi	s6, s6, 13
80000eec: 13 0a ca 00  	addi	s4, s4, 12
80000ef0: 13 09 b9 00  	addi	s2, s2, 11
80000ef4: 93 8f af 00  	addi	t6, t6, 10
80000ef8: 13 0f 9f 00  	addi	t5, t5, 9
80000efc: 93 8e 8e 00  	addi	t4, t4, 8
80000f00: 13 0e 7e 00  	addi	t3, t3, 7
80000f04: 93 83 63 00  	addi	t2, t2, 6
80000f08: 13 03 53 00  	addi	t1, t1, 5
80000f0c: 93 82 42 00  	addi	t0, t0, 4
80000f10: 93 88 38 00  	addi	a7, a7, 3
80000f14: 13 08 28 00  	addi	a6, a6, 2
80000f18: e3 1e 54 dd  	bne	s0, s5, 0x80000cf4 <.LBB0_79+0xac>
80000f1c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f20: 6f 00 c0 26  	j	0x8000118c <.LBB0_79+0x544>
80000f24: 93 09 00 00  	mv	s3, zero
80000f28: 13 0a 00 00  	mv	s4, zero
80000f2c: 93 0b 00 00  	mv	s7, zero
80000f30: 93 07 00 00  	mv	a5, zero
80000f34: 93 04 00 00  	mv	s1, zero
80000f38: 13 04 00 00  	mv	s0, zero
80000f3c: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nk; i++)
80000f40: 93 85 86 04  	addi	a1, a3, 72
80000f44: 37 96 e3 38  	lui	a2, 233017
80000f48: 13 06 96 e3  	addi	a2, a2, -455
80000f4c: 87 b1 0a 00  	fld	ft3, 0(s5)
80000f50: 93 06 20 01  	addi	a3, zero, 18
80000f54: 93 0a e0 fe  	addi	s5, zero, -18
80000f58: 13 0b 60 17  	addi	s6, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000f5c: 33 37 c5 02  	mulhu	a4, a0, a2
80000f60: 13 57 27 00  	srli	a4, a4, 2
80000f64: 33 07 d7 02  	mul	a4, a4, a3
80000f68: 33 07 e5 40  	sub	a4, a0, a4
80000f6c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000f70: 33 b7 c4 02  	mulhu	a4, s1, a2
80000f74: 13 57 27 00  	srli	a4, a4, 2
80000f78: 33 07 d7 02  	mul	a4, a4, a3
80000f7c: 33 87 e4 40  	sub	a4, s1, a4
80000f80: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000f84: 33 b7 c7 02  	mulhu	a4, a5, a2
80000f88: 13 57 27 00  	srli	a4, a4, 2
80000f8c: 33 07 d7 02  	mul	a4, a4, a3
80000f90: 33 87 e7 40  	sub	a4, a5, a4
80000f94: 53 03 07 d2  	fcvt.d.w	ft6, a4
80000f98: 33 37 ca 02  	mulhu	a4, s4, a2
80000f9c: 13 57 27 00  	srli	a4, a4, 2
80000fa0: 33 07 d7 02  	mul	a4, a4, a3
80000fa4: 33 07 ea 40  	sub	a4, s4, a4
80000fa8: d3 03 07 d2  	fcvt.d.w	ft7, a4
80000fac: 33 37 c9 02  	mulhu	a4, s2, a2
80000fb0: 13 57 27 00  	srli	a4, a4, 2
80000fb4: 33 07 d7 02  	mul	a4, a4, a3
80000fb8: 33 07 e9 40  	sub	a4, s2, a4
80000fbc: 53 05 07 d2  	fcvt.d.w	fa0, a4
80000fc0: 33 37 cf 02  	mulhu	a4, t5, a2
80000fc4: 13 57 27 00  	srli	a4, a4, 2
80000fc8: 33 07 d7 02  	mul	a4, a4, a3
80000fcc: 33 07 ef 40  	sub	a4, t5, a4
80000fd0: d3 05 07 d2  	fcvt.d.w	fa1, a4
80000fd4: 33 37 ce 02  	mulhu	a4, t3, a2
80000fd8: 13 57 27 00  	srli	a4, a4, 2
80000fdc: 33 07 d7 02  	mul	a4, a4, a3
80000fe0: 33 07 ee 40  	sub	a4, t3, a4
80000fe4: 53 06 07 d2  	fcvt.d.w	fa2, a4
80000fe8: 33 37 c3 02  	mulhu	a4, t1, a2
80000fec: 13 57 27 00  	srli	a4, a4, 2
80000ff0: 33 07 d7 02  	mul	a4, a4, a3
80000ff4: 33 07 e3 40  	sub	a4, t1, a4
80000ff8: d3 06 07 d2  	fcvt.d.w	fa3, a4
80000ffc: 33 37 c8 02  	mulhu	a4, a6, a2
80001000: 13 57 27 00  	srli	a4, a4, 2
80001004: 33 07 d7 02  	mul	a4, a4, a3
80001008: 33 07 e8 40  	sub	a4, a6, a4
8000100c: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001010: 33 b7 c8 02  	mulhu	a4, a7, a2
80001014: 13 57 27 00  	srli	a4, a4, 2
80001018: 33 07 d7 02  	mul	a4, a4, a3
8000101c: 33 87 e8 40  	sub	a4, a7, a4
80001020: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001024: 33 b7 c2 02  	mulhu	a4, t0, a2
80001028: 13 57 27 00  	srli	a4, a4, 2
8000102c: 33 07 d7 02  	mul	a4, a4, a3
80001030: 33 87 e2 40  	sub	a4, t0, a4
80001034: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001038: 33 b7 c3 02  	mulhu	a4, t2, a2
8000103c: 13 57 27 00  	srli	a4, a4, 2
80001040: 33 07 d7 02  	mul	a4, a4, a3
80001044: 33 87 e3 40  	sub	a4, t2, a4
80001048: d3 08 07 d2  	fcvt.d.w	fa7, a4
8000104c: 33 b7 ce 02  	mulhu	a4, t4, a2
80001050: 13 57 27 00  	srli	a4, a4, 2
80001054: 33 07 d7 02  	mul	a4, a4, a3
80001058: 33 87 ee 40  	sub	a4, t4, a4
8000105c: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001060: 33 b7 cf 02  	mulhu	a4, t6, a2
80001064: 13 57 27 00  	srli	a4, a4, 2
80001068: 33 07 d7 02  	mul	a4, a4, a3
8000106c: 33 87 ef 40  	sub	a4, t6, a4
80001070: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001074: 33 b7 c9 02  	mulhu	a4, s3, a2
80001078: 13 57 27 00  	srli	a4, a4, 2
8000107c: 33 07 d7 02  	mul	a4, a4, a3
80001080: 33 87 e9 40  	sub	a4, s3, a4
80001084: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001088: 33 b7 cb 02  	mulhu	a4, s7, a2
8000108c: 13 57 27 00  	srli	a4, a4, 2
80001090: 33 07 d7 02  	mul	a4, a4, a3
80001094: 33 87 eb 40  	sub	a4, s7, a4
80001098: d3 0f 07 d2  	fcvt.d.w	ft11, a4
8000109c: 33 37 c4 02  	mulhu	a4, s0, a2
800010a0: 13 57 27 00  	srli	a4, a4, 2
800010a4: 33 07 57 03  	mul	a4, a4, s5
800010a8: 33 07 e4 00  	add	a4, s0, a4
800010ac: 53 04 07 d2  	fcvt.d.w	fs0, a4
800010b0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800010b4: 27 bc 45 fa  	fsd	ft4, -72(a1)
800010b8: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800010bc: 27 b0 45 fc  	fsd	ft4, -64(a1)
800010c0: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800010c4: 27 b4 45 fc  	fsd	ft4, -56(a1)
800010c8: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800010cc: 27 b8 45 fc  	fsd	ft4, -48(a1)
800010d0: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800010d4: 27 bc 45 fc  	fsd	ft4, -40(a1)
800010d8: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800010dc: 27 b0 45 fe  	fsd	ft4, -32(a1)
800010e0: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800010e4: 27 b4 45 fe  	fsd	ft4, -24(a1)
800010e8: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800010ec: 27 b8 45 fe  	fsd	ft4, -16(a1)
800010f0: 53 72 37 12  	fmul.d	ft4, fa4, ft3
800010f4: 27 bc 45 fe  	fsd	ft4, -8(a1)
800010f8: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
800010fc: 27 b0 45 00  	fsd	ft4, 0(a1)
80001100: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001104: 27 b4 45 00  	fsd	ft4, 8(a1)
80001108: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
8000110c: 27 b8 45 00  	fsd	ft4, 16(a1)
80001110: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001114: 27 bc 45 00  	fsd	ft4, 24(a1)
80001118: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
8000111c: 27 b0 45 02  	fsd	ft4, 32(a1)
80001120: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001124: 27 b4 45 02  	fsd	ft4, 40(a1)
80001128: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000112c: 27 b8 45 02  	fsd	ft4, 48(a1)
80001130: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001134: 27 bc 45 02  	fsd	ft4, 56(a1)
80001138: 23 a2 05 04  	sw	zero, 68(a1)
8000113c: 23 a0 05 04  	sw	zero, 64(a1)
;   for (i = 0; i < nk; i++)
80001140: 13 05 15 00  	addi	a0, a0, 1
80001144: 13 04 14 01  	addi	s0, s0, 17
80001148: 93 84 24 00  	addi	s1, s1, 2
8000114c: 93 87 37 00  	addi	a5, a5, 3
80001150: 93 8b 0b 01  	addi	s7, s7, 16
80001154: 13 0a 4a 00  	addi	s4, s4, 4
80001158: 93 89 f9 00  	addi	s3, s3, 15
8000115c: 13 09 59 00  	addi	s2, s2, 5
80001160: 93 8f ef 00  	addi	t6, t6, 14
80001164: 13 0f 6f 00  	addi	t5, t5, 6
80001168: 93 8e de 00  	addi	t4, t4, 13
8000116c: 13 0e 7e 00  	addi	t3, t3, 7
80001170: 93 83 c3 00  	addi	t2, t2, 12
80001174: 13 03 83 00  	addi	t1, t1, 8
80001178: 93 82 b2 00  	addi	t0, t0, 11
8000117c: 93 85 05 09  	addi	a1, a1, 144
80001180: 93 88 a8 00  	addi	a7, a7, 10
80001184: 13 08 98 00  	addi	a6, a6, 9
80001188: e3 1a 64 dd  	bne	s0, s6, 0x80000f5c <.LBB0_79+0x314>
8000118c: 23 26 b1 03  	sw	s11, 44(sp)
80001190: 23 24 91 03  	sw	s9, 40(sp)
80001194: 23 22 11 02  	sw	ra, 36(sp)
;   for (i = 0; i < nj; i++)
80001198: 33 85 a0 01  	add	a0, ra, s10
8000119c: 13 06 85 50  	addi	a2, a0, 1288
800011a0: 13 55 4d 01  	srli	a0, s10, 20
800011a4: 33 35 a0 00  	snez	a0, a0
800011a8: b7 05 12 00  	lui	a1, 288
800011ac: 93 85 15 00  	addi	a1, a1, 1
800011b0: 23 2a c1 00  	sw	a2, 20(sp)
800011b4: b3 35 b6 00  	sltu	a1, a2, a1
800011b8: 33 75 b5 00  	and	a0, a0, a1

800011bc <.LBB0_80>:
800011bc: 17 44 00 00  	auipc	s0, 4
800011c0: 13 04 c4 5a  	addi	s0, s0, 1452
800011c4: 23 20 a1 03  	sw	s10, 32(sp)
800011c8: 63 00 05 4e  	beqz	a0, 0x800016a8 <.LBB0_80+0x4ec>
800011cc: 93 07 00 00  	mv	a5, zero
800011d0: 93 0c 00 00  	mv	s9, zero
800011d4: 93 08 00 00  	mv	a7, zero
800011d8: 13 06 00 00  	mv	a2, zero
800011dc: 93 04 00 00  	mv	s1, zero
800011e0: 13 05 80 00  	addi	a0, zero, 8
800011e4: 13 08 70 01  	addi	a6, zero, 23
;   for (i = 0; i < nj; i++)
800011e8: 93 05 00 04  	addi	a1, zero, 64
800011ec: 13 07 00 0c  	addi	a4, zero, 192
800011f0: ab 20 b8 00  	scfgw	a6, a1
800011f4: ab 20 e5 00  	scfgw	a0, a4
800011f8: 13 08 10 01  	addi	a6, zero, 17
800011fc: 93 05 00 06  	addi	a1, zero, 96
80001200: 13 07 00 0e  	addi	a4, zero, 224
80001204: ab 20 b8 00  	scfgw	a6, a1
80001208: ab 20 e5 00  	scfgw	a0, a4
8000120c: 13 05 00 02  	addi	a0, zero, 32
80001210: ab 20 a0 00  	scfgw	zero, a0
80001214: 2b 20 0d 3a  	scfgwi	s10, 928
80001218: 73 e5 00 7c  	csrrsi	a0, 1984, 1
8000121c: 93 0b 10 00  	addi	s7, zero, 1
80001220: 37 b5 aa aa  	lui	a0, 699051
80001224: 13 07 b5 aa  	addi	a4, a0, -1365
80001228: 13 08 80 01  	addi	a6, zero, 24
8000122c: 87 31 04 00  	fld	ft3, 0(s0)
80001230: 93 05 10 00  	addi	a1, zero, 1
80001234: 23 26 b1 08  	sw	a1, 140(sp)
80001238: 13 05 10 00  	addi	a0, zero, 1
8000123c: 93 05 10 00  	addi	a1, zero, 1
80001240: 23 24 b1 08  	sw	a1, 136(sp)
80001244: 13 04 10 00  	addi	s0, zero, 1
80001248: 93 05 10 00  	addi	a1, zero, 1
8000124c: 23 22 b1 08  	sw	a1, 132(sp)
80001250: 93 05 10 00  	addi	a1, zero, 1
80001254: 23 20 b1 08  	sw	a1, 128(sp)
80001258: 93 05 10 00  	addi	a1, zero, 1
8000125c: 23 2e b1 06  	sw	a1, 124(sp)
80001260: 93 05 10 00  	addi	a1, zero, 1
80001264: 23 2c b1 06  	sw	a1, 120(sp)
80001268: 93 02 10 00  	addi	t0, zero, 1
8000126c: 93 05 10 00  	addi	a1, zero, 1
80001270: 23 2a b1 06  	sw	a1, 116(sp)
80001274: 93 05 10 00  	addi	a1, zero, 1
80001278: 23 28 b1 06  	sw	a1, 112(sp)
8000127c: 93 05 10 00  	addi	a1, zero, 1
80001280: 23 26 b1 06  	sw	a1, 108(sp)
80001284: 93 05 10 00  	addi	a1, zero, 1
80001288: 23 24 b1 06  	sw	a1, 104(sp)
8000128c: 93 05 10 00  	addi	a1, zero, 1
80001290: 23 22 b1 06  	sw	a1, 100(sp)
80001294: 93 05 10 00  	addi	a1, zero, 1
80001298: 23 20 b1 06  	sw	a1, 96(sp)
8000129c: 93 05 10 00  	addi	a1, zero, 1
800012a0: 23 2e b1 04  	sw	a1, 92(sp)
800012a4: 93 05 10 00  	addi	a1, zero, 1
800012a8: 23 2c b1 04  	sw	a1, 88(sp)
800012ac: 93 05 10 00  	addi	a1, zero, 1
800012b0: 23 2a b1 04  	sw	a1, 84(sp)
800012b4: 93 05 10 00  	addi	a1, zero, 1
800012b8: 23 28 b1 04  	sw	a1, 80(sp)
800012bc: 93 05 10 00  	addi	a1, zero, 1
800012c0: 23 26 b1 04  	sw	a1, 76(sp)
800012c4: 93 05 10 00  	addi	a1, zero, 1
800012c8: 23 24 b1 04  	sw	a1, 72(sp)
800012cc: 93 05 10 00  	addi	a1, zero, 1
800012d0: 23 22 b1 04  	sw	a1, 68(sp)
800012d4: 23 2c 81 02  	sw	s0, 56(sp)
800012d8: 23 2e a1 02  	sw	a0, 60(sp)
800012dc: 23 20 91 05  	sw	s9, 64(sp)
800012e0: 93 06 06 00  	mv	a3, a2
800012e4: 13 86 0b 00  	mv	a2, s7
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
800012e8: b3 bb e7 02  	mulhu	s7, a5, a4
800012ec: 93 d5 4b 00  	srli	a1, s7, 4
800012f0: 93 0b 06 00  	mv	s7, a2
800012f4: 13 86 06 00  	mv	a2, a3
800012f8: 83 2c 01 04  	lw	s9, 64(sp)
800012fc: b3 85 05 03  	mul	a1, a1, a6
80001300: b3 85 bb 40  	sub	a1, s7, a1
80001304: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001308: b3 b5 ec 02  	mulhu	a1, s9, a4
8000130c: 93 d5 45 00  	srli	a1, a1, 4
80001310: b3 85 05 03  	mul	a1, a1, a6
80001314: 83 26 c1 08  	lw	a3, 140(sp)
80001318: b3 85 b6 40  	sub	a1, a3, a1
8000131c: d3 82 05 d2  	fcvt.d.w	ft5, a1
80001320: b3 35 e5 02  	mulhu	a1, a0, a4
80001324: 93 d5 45 00  	srli	a1, a1, 4
80001328: b3 85 05 03  	mul	a1, a1, a6
8000132c: b3 05 b5 40  	sub	a1, a0, a1
80001330: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001334: b3 b5 e8 02  	mulhu	a1, a7, a4
80001338: 93 d5 45 00  	srli	a1, a1, 4
8000133c: b3 85 05 03  	mul	a1, a1, a6
80001340: 03 25 81 08  	lw	a0, 136(sp)
80001344: b3 05 b5 40  	sub	a1, a0, a1
80001348: d3 83 05 d2  	fcvt.d.w	ft7, a1
8000134c: b3 35 e4 02  	mulhu	a1, s0, a4
80001350: 93 d5 45 00  	srli	a1, a1, 4
80001354: b3 85 05 03  	mul	a1, a1, a6
80001358: b3 05 b4 40  	sub	a1, s0, a1
8000135c: 53 85 05 d2  	fcvt.d.w	fa0, a1
80001360: b3 35 e6 02  	mulhu	a1, a2, a4
80001364: 93 d5 45 00  	srli	a1, a1, 4
80001368: b3 85 05 03  	mul	a1, a1, a6
8000136c: 03 2d 41 08  	lw	s10, 132(sp)
80001370: b3 05 bd 40  	sub	a1, s10, a1
80001374: d3 85 05 d2  	fcvt.d.w	fa1, a1
80001378: 83 20 01 08  	lw	ra, 128(sp)
8000137c: b3 b5 e0 02  	mulhu	a1, ra, a4
80001380: 93 d5 45 00  	srli	a1, a1, 4
80001384: b3 85 05 03  	mul	a1, a1, a6
80001388: b3 85 b0 40  	sub	a1, ra, a1
8000138c: 53 86 05 d2  	fcvt.d.w	fa2, a1
80001390: 03 2c c1 07  	lw	s8, 124(sp)
80001394: b3 35 ec 02  	mulhu	a1, s8, a4
80001398: 93 d5 45 00  	srli	a1, a1, 4
8000139c: b3 85 05 03  	mul	a1, a1, a6
800013a0: b3 05 bc 40  	sub	a1, s8, a1
800013a4: d3 86 05 d2  	fcvt.d.w	fa3, a1
800013a8: 83 26 81 07  	lw	a3, 120(sp)
800013ac: b3 b5 e6 02  	mulhu	a1, a3, a4
800013b0: 93 d5 45 00  	srli	a1, a1, 4
800013b4: b3 85 05 03  	mul	a1, a1, a6
800013b8: b3 85 b6 40  	sub	a1, a3, a1
800013bc: 53 87 05 d2  	fcvt.d.w	fa4, a1
800013c0: b3 b5 e4 02  	mulhu	a1, s1, a4
800013c4: 93 d5 45 00  	srli	a1, a1, 4
800013c8: b3 85 05 03  	mul	a1, a1, a6
800013cc: b3 85 b2 40  	sub	a1, t0, a1
800013d0: d3 87 05 d2  	fcvt.d.w	fa5, a1
800013d4: 13 84 02 00  	mv	s0, t0
800013d8: 83 22 41 07  	lw	t0, 116(sp)
800013dc: b3 b5 e2 02  	mulhu	a1, t0, a4
800013e0: 93 d5 45 00  	srli	a1, a1, 4
800013e4: b3 85 05 03  	mul	a1, a1, a6
800013e8: b3 85 b2 40  	sub	a1, t0, a1
800013ec: 53 88 05 d2  	fcvt.d.w	fa6, a1
800013f0: 03 23 01 07  	lw	t1, 112(sp)
800013f4: b3 35 e3 02  	mulhu	a1, t1, a4
800013f8: 93 d5 45 00  	srli	a1, a1, 4
800013fc: b3 85 05 03  	mul	a1, a1, a6
80001400: b3 05 b3 40  	sub	a1, t1, a1
80001404: d3 88 05 d2  	fcvt.d.w	fa7, a1
80001408: 83 23 c1 06  	lw	t2, 108(sp)
8000140c: b3 b5 e3 02  	mulhu	a1, t2, a4
80001410: 93 d5 45 00  	srli	a1, a1, 4
80001414: b3 85 05 03  	mul	a1, a1, a6
80001418: b3 85 b3 40  	sub	a1, t2, a1
8000141c: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80001420: 03 2e 81 06  	lw	t3, 104(sp)
80001424: b3 35 ee 02  	mulhu	a1, t3, a4
80001428: 93 d5 45 00  	srli	a1, a1, 4
8000142c: b3 85 05 03  	mul	a1, a1, a6
80001430: b3 05 be 40  	sub	a1, t3, a1
80001434: d3 8e 05 d2  	fcvt.d.w	ft9, a1
80001438: 83 29 41 06  	lw	s3, 100(sp)
8000143c: b3 b5 e9 02  	mulhu	a1, s3, a4
80001440: 93 d5 45 00  	srli	a1, a1, 4
80001444: b3 85 05 03  	mul	a1, a1, a6
80001448: b3 85 b9 40  	sub	a1, s3, a1
8000144c: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001450: 83 2e 01 06  	lw	t4, 96(sp)
80001454: b3 b5 ee 02  	mulhu	a1, t4, a4
80001458: 93 d5 45 00  	srli	a1, a1, 4
8000145c: b3 85 05 03  	mul	a1, a1, a6
80001460: b3 85 be 40  	sub	a1, t4, a1
80001464: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001468: 03 2f c1 05  	lw	t5, 92(sp)
8000146c: b3 35 ef 02  	mulhu	a1, t5, a4
80001470: 93 d5 45 00  	srli	a1, a1, 4
80001474: b3 85 05 03  	mul	a1, a1, a6
80001478: b3 05 bf 40  	sub	a1, t5, a1
8000147c: 53 84 05 d2  	fcvt.d.w	fs0, a1
80001480: 03 29 81 05  	lw	s2, 88(sp)
80001484: b3 35 e9 02  	mulhu	a1, s2, a4
80001488: 93 d5 45 00  	srli	a1, a1, 4
8000148c: b3 85 05 03  	mul	a1, a1, a6
80001490: b3 05 b9 40  	sub	a1, s2, a1
80001494: d3 84 05 d2  	fcvt.d.w	fs1, a1
80001498: 83 2f 41 05  	lw	t6, 84(sp)
8000149c: b3 b5 ef 02  	mulhu	a1, t6, a4
800014a0: 93 d5 45 00  	srli	a1, a1, 4
800014a4: b3 85 05 03  	mul	a1, a1, a6
800014a8: b3 85 bf 40  	sub	a1, t6, a1
800014ac: 53 89 05 d2  	fcvt.d.w	fs2, a1
800014b0: 03 2a 01 05  	lw	s4, 80(sp)
800014b4: b3 35 ea 02  	mulhu	a1, s4, a4
800014b8: 93 d5 45 00  	srli	a1, a1, 4
800014bc: b3 85 05 03  	mul	a1, a1, a6
800014c0: b3 05 ba 40  	sub	a1, s4, a1
800014c4: d3 89 05 d2  	fcvt.d.w	fs3, a1
800014c8: 83 2a c1 04  	lw	s5, 76(sp)
800014cc: b3 b5 ea 02  	mulhu	a1, s5, a4
800014d0: 93 d5 45 00  	srli	a1, a1, 4
800014d4: b3 85 05 03  	mul	a1, a1, a6
800014d8: b3 85 ba 40  	sub	a1, s5, a1
800014dc: 53 8a 05 d2  	fcvt.d.w	fs4, a1
800014e0: 03 2b 81 04  	lw	s6, 72(sp)
800014e4: b3 35 eb 02  	mulhu	a1, s6, a4
800014e8: 93 d5 45 00  	srli	a1, a1, 4
800014ec: b3 85 05 03  	mul	a1, a1, a6
800014f0: b3 05 bb 40  	sub	a1, s6, a1
800014f4: d3 8a 05 d2  	fcvt.d.w	fs5, a1
800014f8: 83 2d 41 04  	lw	s11, 68(sp)
800014fc: b3 b5 ed 02  	mulhu	a1, s11, a4
80001500: 93 d5 45 00  	srli	a1, a1, 4
80001504: b3 85 05 03  	mul	a1, a1, a6
80001508: b3 85 bd 40  	sub	a1, s11, a1
8000150c: 53 8b 05 d2  	fcvt.d.w	fs6, a1
80001510: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001514: 53 00 42 22  	fmv.d	ft0, ft4
80001518: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
8000151c: 53 00 42 22  	fmv.d	ft0, ft4
80001520: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001524: 53 00 42 22  	fmv.d	ft0, ft4
80001528: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
8000152c: 53 00 42 22  	fmv.d	ft0, ft4
80001530: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001534: 53 00 42 22  	fmv.d	ft0, ft4
80001538: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
8000153c: 53 00 42 22  	fmv.d	ft0, ft4
80001540: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001544: 53 00 42 22  	fmv.d	ft0, ft4
80001548: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
8000154c: 53 00 42 22  	fmv.d	ft0, ft4
80001550: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001554: 53 00 42 22  	fmv.d	ft0, ft4
80001558: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
8000155c: 53 00 42 22  	fmv.d	ft0, ft4
80001560: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001564: 53 00 42 22  	fmv.d	ft0, ft4
80001568: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
8000156c: 53 00 42 22  	fmv.d	ft0, ft4
80001570: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001574: 53 00 42 22  	fmv.d	ft0, ft4
80001578: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
8000157c: 53 00 42 22  	fmv.d	ft0, ft4
80001580: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001584: 53 00 42 22  	fmv.d	ft0, ft4
80001588: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000158c: 53 00 42 22  	fmv.d	ft0, ft4
80001590: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001594: 53 00 42 22  	fmv.d	ft0, ft4
80001598: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
8000159c: 53 00 42 22  	fmv.d	ft0, ft4
800015a0: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800015a4: 53 00 42 22  	fmv.d	ft0, ft4
800015a8: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
800015ac: 53 00 42 22  	fmv.d	ft0, ft4
800015b0: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
800015b4: 53 00 42 22  	fmv.d	ft0, ft4
800015b8: 53 80 31 22  	fmv.d	ft0, ft3
800015bc: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
800015c0: 53 00 42 22  	fmv.d	ft0, ft4
800015c4: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
800015c8: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nj; i++)
800015cc: 93 8d ad 01  	addi	s11, s11, 26
800015d0: 13 0b 9b 01  	addi	s6, s6, 25
800015d4: 23 24 61 05  	sw	s6, 72(sp)
800015d8: 93 8a 7a 01  	addi	s5, s5, 23
800015dc: 23 26 51 05  	sw	s5, 76(sp)
800015e0: 13 0a 6a 01  	addi	s4, s4, 22
800015e4: 23 28 41 05  	sw	s4, 80(sp)
800015e8: 93 8f 5f 01  	addi	t6, t6, 21
800015ec: 23 2a f1 05  	sw	t6, 84(sp)
800015f0: 13 09 49 01  	addi	s2, s2, 20
800015f4: 23 2c 21 05  	sw	s2, 88(sp)
800015f8: 13 0f 3f 01  	addi	t5, t5, 19
800015fc: 23 2e e1 05  	sw	t5, 92(sp)
80001600: 93 8e 2e 01  	addi	t4, t4, 18
80001604: 23 20 d1 07  	sw	t4, 96(sp)
80001608: 93 89 19 01  	addi	s3, s3, 17
8000160c: 23 22 31 07  	sw	s3, 100(sp)
80001610: 13 0e 0e 01  	addi	t3, t3, 16
80001614: 23 24 c1 07  	sw	t3, 104(sp)
80001618: 93 83 f3 00  	addi	t2, t2, 15
8000161c: 23 26 71 06  	sw	t2, 108(sp)
80001620: 13 03 e3 00  	addi	t1, t1, 14
80001624: 23 28 61 06  	sw	t1, 112(sp)
80001628: 93 82 d2 00  	addi	t0, t0, 13
8000162c: 23 2a 51 06  	sw	t0, 116(sp)
80001630: 93 02 04 00  	mv	t0, s0
80001634: 93 02 c4 00  	addi	t0, s0, 12
80001638: 93 84 c4 00  	addi	s1, s1, 12
8000163c: 93 86 b6 00  	addi	a3, a3, 11
80001640: 23 2c d1 06  	sw	a3, 120(sp)
80001644: 03 24 81 03  	lw	s0, 56(sp)
80001648: 13 0c ac 00  	addi	s8, s8, 10
8000164c: 23 2e 81 07  	sw	s8, 124(sp)
80001650: 93 80 90 00  	addi	ra, ra, 9
80001654: 23 20 11 08  	sw	ra, 128(sp)
80001658: 13 0d 8d 00  	addi	s10, s10, 8
8000165c: 23 22 a1 09  	sw	s10, 132(sp)
80001660: 13 06 86 00  	addi	a2, a2, 8
80001664: 13 04 74 00  	addi	s0, s0, 7
80001668: 13 05 65 00  	addi	a0, a0, 6
8000166c: 23 24 a1 08  	sw	a0, 136(sp)
80001670: 03 25 c1 03  	lw	a0, 60(sp)
80001674: 93 88 68 00  	addi	a7, a7, 6
80001678: 13 05 55 00  	addi	a0, a0, 5
8000167c: 83 25 c1 08  	lw	a1, 140(sp)
80001680: 93 85 45 00  	addi	a1, a1, 4
80001684: 23 26 b1 08  	sw	a1, 140(sp)
80001688: 93 8c 4c 00  	addi	s9, s9, 4
8000168c: 93 8b 3b 00  	addi	s7, s7, 3
80001690: 93 87 37 00  	addi	a5, a5, 3
80001694: 93 05 50 1d  	addi	a1, zero, 469
80001698: 23 22 b1 05  	sw	s11, 68(sp)
8000169c: e3 9c bd c2  	bne	s11, a1, 0x800012d4 <.LBB0_80+0x118>
800016a0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800016a4: 6f 00 00 45  	j	0x80001af4 <.LBB0_80+0x938>
800016a8: 23 2c 01 06  	sw	zero, 120(sp)
800016ac: 23 2a 01 06  	sw	zero, 116(sp)
800016b0: 23 26 01 08  	sw	zero, 140(sp)
800016b4: 23 24 01 08  	sw	zero, 136(sp)
800016b8: 13 07 00 00  	mv	a4, zero
;   for (i = 0; i < nj; i++)
800016bc: 93 06 0d 06  	addi	a3, s10, 96
800016c0: 93 02 10 00  	addi	t0, zero, 1
800016c4: 37 b5 aa aa  	lui	a0, 699051
800016c8: 13 05 b5 aa  	addi	a0, a0, -1365
800016cc: 87 31 04 00  	fld	ft3, 0(s0)
800016d0: b7 55 a5 3f  	lui	a1, 260693
800016d4: 93 85 55 55  	addi	a1, a1, 1365
800016d8: 23 28 b1 06  	sw	a1, 112(sp)
800016dc: b7 55 55 55  	lui	a1, 349525
800016e0: 93 85 55 55  	addi	a1, a1, 1365
800016e4: 23 26 b1 06  	sw	a1, 108(sp)
800016e8: 93 04 10 00  	addi	s1, zero, 1
800016ec: 13 06 10 00  	addi	a2, zero, 1
800016f0: 13 0c 10 00  	addi	s8, zero, 1
800016f4: 13 0e 10 00  	addi	t3, zero, 1
800016f8: 93 05 10 00  	addi	a1, zero, 1
800016fc: 23 22 b1 08  	sw	a1, 132(sp)
80001700: 93 00 10 00  	addi	ra, zero, 1
80001704: 93 09 10 00  	addi	s3, zero, 1
80001708: 93 03 10 00  	addi	t2, zero, 1
8000170c: 13 0a 10 00  	addi	s4, zero, 1
80001710: 93 0f 10 00  	addi	t6, zero, 1
80001714: 13 08 10 00  	addi	a6, zero, 1
80001718: 13 0f 10 00  	addi	t5, zero, 1
8000171c: 93 05 10 00  	addi	a1, zero, 1
80001720: 23 20 b1 08  	sw	a1, 128(sp)
80001724: 93 0b 10 00  	addi	s7, zero, 1
80001728: 93 0d 10 00  	addi	s11, zero, 1
8000172c: 13 09 10 00  	addi	s2, zero, 1
80001730: 93 0c 10 00  	addi	s9, zero, 1
80001734: 13 0b 10 00  	addi	s6, zero, 1
80001738: 93 0a 10 00  	addi	s5, zero, 1
8000173c: 13 03 10 00  	addi	t1, zero, 1
80001740: 93 08 10 00  	addi	a7, zero, 1
80001744: 93 07 10 00  	addi	a5, zero, 1
80001748: 23 2e e1 06  	sw	a4, 124(sp)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
8000174c: 83 25 c1 07  	lw	a1, 124(sp)
80001750: 33 b7 a5 02  	mulhu	a4, a1, a0
80001754: 13 57 47 00  	srli	a4, a4, 4
80001758: 13 04 80 01  	addi	s0, zero, 24
8000175c: 33 07 87 02  	mul	a4, a4, s0
80001760: 33 8d e8 40  	sub	s10, a7, a4
80001764: 53 02 0d d2  	fcvt.d.w	ft4, s10
80001768: 83 25 81 08  	lw	a1, 136(sp)
8000176c: 33 b7 a5 02  	mulhu	a4, a1, a0
80001770: 13 57 47 00  	srli	a4, a4, 4
80001774: 33 07 87 02  	mul	a4, a4, s0
80001778: 33 07 e3 40  	sub	a4, t1, a4
8000177c: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001780: 33 37 ab 02  	mulhu	a4, s6, a0
80001784: 13 57 47 00  	srli	a4, a4, 4
80001788: 33 07 87 02  	mul	a4, a4, s0
8000178c: 33 07 eb 40  	sub	a4, s6, a4
80001790: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001794: 83 25 c1 08  	lw	a1, 140(sp)
80001798: 33 b7 a5 02  	mulhu	a4, a1, a0
8000179c: 13 57 47 00  	srli	a4, a4, 4
800017a0: 33 07 87 02  	mul	a4, a4, s0
800017a4: 33 87 ec 40  	sub	a4, s9, a4
800017a8: d3 03 07 d2  	fcvt.d.w	ft7, a4
800017ac: 33 b7 ad 02  	mulhu	a4, s11, a0
800017b0: 13 57 47 00  	srli	a4, a4, 4
800017b4: 33 07 87 02  	mul	a4, a4, s0
800017b8: 33 87 ed 40  	sub	a4, s11, a4
800017bc: 53 05 07 d2  	fcvt.d.w	fa0, a4
800017c0: 03 2d 41 07  	lw	s10, 116(sp)
800017c4: 33 37 ad 02  	mulhu	a4, s10, a0
800017c8: 13 57 47 00  	srli	a4, a4, 4
800017cc: 33 07 87 02  	mul	a4, a4, s0
800017d0: 83 25 01 08  	lw	a1, 128(sp)
800017d4: 33 87 e5 40  	sub	a4, a1, a4
800017d8: d3 05 07 d2  	fcvt.d.w	fa1, a4
800017dc: 33 37 a8 02  	mulhu	a4, a6, a0
800017e0: 13 57 47 00  	srli	a4, a4, 4
800017e4: 33 07 87 02  	mul	a4, a4, s0
800017e8: 33 07 e8 40  	sub	a4, a6, a4
800017ec: 53 06 07 d2  	fcvt.d.w	fa2, a4
800017f0: 33 37 aa 02  	mulhu	a4, s4, a0
800017f4: 13 57 47 00  	srli	a4, a4, 4
800017f8: 33 07 87 02  	mul	a4, a4, s0
800017fc: 33 07 ea 40  	sub	a4, s4, a4
80001800: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001804: 33 b7 a9 02  	mulhu	a4, s3, a0
80001808: 13 57 47 00  	srli	a4, a4, 4
8000180c: 33 07 87 02  	mul	a4, a4, s0
80001810: 33 87 e9 40  	sub	a4, s3, a4
80001814: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001818: 83 2e 81 07  	lw	t4, 120(sp)
8000181c: 33 b7 ae 02  	mulhu	a4, t4, a0
80001820: 13 57 47 00  	srli	a4, a4, 4
80001824: 33 07 87 02  	mul	a4, a4, s0
80001828: 83 25 41 08  	lw	a1, 132(sp)
8000182c: 33 87 e5 40  	sub	a4, a1, a4
80001830: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001834: 33 37 ac 02  	mulhu	a4, s8, a0
80001838: 13 57 47 00  	srli	a4, a4, 4
8000183c: 33 07 87 02  	mul	a4, a4, s0
80001840: 33 07 ec 40  	sub	a4, s8, a4
80001844: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001848: 33 b7 a2 02  	mulhu	a4, t0, a0
8000184c: 13 57 47 00  	srli	a4, a4, 4
80001850: 33 07 87 02  	mul	a4, a4, s0
80001854: 33 87 e2 40  	sub	a4, t0, a4
80001858: d3 08 07 d2  	fcvt.d.w	fa7, a4
8000185c: 33 b7 a4 02  	mulhu	a4, s1, a0
80001860: 13 57 47 00  	srli	a4, a4, 4
80001864: 33 07 87 02  	mul	a4, a4, s0
80001868: 33 87 e4 40  	sub	a4, s1, a4
8000186c: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001870: 33 37 a6 02  	mulhu	a4, a2, a0
80001874: 13 57 47 00  	srli	a4, a4, 4
80001878: 33 07 87 02  	mul	a4, a4, s0
8000187c: 33 07 e6 40  	sub	a4, a2, a4
80001880: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001884: 33 37 ae 02  	mulhu	a4, t3, a0
80001888: 13 57 47 00  	srli	a4, a4, 4
8000188c: 33 07 87 02  	mul	a4, a4, s0
80001890: 33 07 ee 40  	sub	a4, t3, a4
80001894: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001898: 33 b7 a0 02  	mulhu	a4, ra, a0
8000189c: 13 57 47 00  	srli	a4, a4, 4
800018a0: 33 07 87 02  	mul	a4, a4, s0
800018a4: 33 87 e0 40  	sub	a4, ra, a4
800018a8: d3 0f 07 d2  	fcvt.d.w	ft11, a4
800018ac: 33 b7 a3 02  	mulhu	a4, t2, a0
800018b0: 13 57 47 00  	srli	a4, a4, 4
800018b4: 33 07 87 02  	mul	a4, a4, s0
800018b8: 33 87 e3 40  	sub	a4, t2, a4
800018bc: 53 04 07 d2  	fcvt.d.w	fs0, a4
800018c0: 33 b7 af 02  	mulhu	a4, t6, a0
800018c4: 13 57 47 00  	srli	a4, a4, 4
800018c8: 33 07 87 02  	mul	a4, a4, s0
800018cc: 33 87 ef 40  	sub	a4, t6, a4
800018d0: d3 04 07 d2  	fcvt.d.w	fs1, a4
800018d4: 33 37 af 02  	mulhu	a4, t5, a0
800018d8: 13 57 47 00  	srli	a4, a4, 4
800018dc: 33 07 87 02  	mul	a4, a4, s0
800018e0: 33 07 ef 40  	sub	a4, t5, a4
800018e4: 53 09 07 d2  	fcvt.d.w	fs2, a4
800018e8: 33 b7 ab 02  	mulhu	a4, s7, a0
800018ec: 13 57 47 00  	srli	a4, a4, 4
800018f0: 33 07 87 02  	mul	a4, a4, s0
800018f4: 33 87 eb 40  	sub	a4, s7, a4
800018f8: d3 09 07 d2  	fcvt.d.w	fs3, a4
800018fc: 33 37 a9 02  	mulhu	a4, s2, a0
80001900: 13 57 47 00  	srli	a4, a4, 4
80001904: 33 07 87 02  	mul	a4, a4, s0
80001908: 33 07 e9 40  	sub	a4, s2, a4
8000190c: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001910: 33 b7 aa 02  	mulhu	a4, s5, a0
80001914: 13 57 47 00  	srli	a4, a4, 4
80001918: 33 07 87 02  	mul	a4, a4, s0
8000191c: 33 87 ea 40  	sub	a4, s5, a4
80001920: d3 0a 07 d2  	fcvt.d.w	fs5, a4
80001924: 33 b7 a7 02  	mulhu	a4, a5, a0
80001928: 13 57 47 00  	srli	a4, a4, 4
8000192c: 33 07 87 02  	mul	a4, a4, s0
80001930: 33 87 e7 40  	sub	a4, a5, a4
80001934: 53 0b 07 d2  	fcvt.d.w	fs6, a4
80001938: 03 27 c1 07  	lw	a4, 124(sp)
8000193c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001940: 27 b0 46 fa  	fsd	ft4, -96(a3)
80001944: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001948: 27 b4 46 fa  	fsd	ft4, -88(a3)
8000194c: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001950: 27 b8 46 fa  	fsd	ft4, -80(a3)
80001954: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001958: 27 bc 46 fa  	fsd	ft4, -72(a3)
8000195c: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001960: 27 b0 46 fc  	fsd	ft4, -64(a3)
80001964: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001968: 27 b4 46 fc  	fsd	ft4, -56(a3)
8000196c: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001970: 27 b8 46 fc  	fsd	ft4, -48(a3)
80001974: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001978: 27 bc 46 fc  	fsd	ft4, -40(a3)
8000197c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001980: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001984: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001988: 27 b4 46 fe  	fsd	ft4, -24(a3)
8000198c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001990: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001994: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001998: 27 bc 46 fe  	fsd	ft4, -8(a3)
8000199c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
800019a0: 27 b0 46 00  	fsd	ft4, 0(a3)
800019a4: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
800019a8: 27 b4 46 00  	fsd	ft4, 8(a3)
800019ac: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
800019b0: 27 b8 46 00  	fsd	ft4, 16(a3)
800019b4: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
800019b8: 27 bc 46 00  	fsd	ft4, 24(a3)
800019bc: 53 72 34 12  	fmul.d	ft4, fs0, ft3
800019c0: 27 b0 46 02  	fsd	ft4, 32(a3)
800019c4: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
800019c8: 27 b4 46 02  	fsd	ft4, 40(a3)
800019cc: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800019d0: 27 b8 46 02  	fsd	ft4, 48(a3)
800019d4: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
800019d8: 27 bc 46 02  	fsd	ft4, 56(a3)
800019dc: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
800019e0: 27 b0 46 04  	fsd	ft4, 64(a3)
800019e4: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
800019e8: 27 b8 46 04  	fsd	ft4, 80(a3)
800019ec: 93 05 03 00  	mv	a1, t1
800019f0: 13 83 03 00  	mv	t1, t2
800019f4: 93 83 07 00  	mv	t2, a5
800019f8: 93 87 0c 00  	mv	a5, s9
800019fc: 93 8c 0a 00  	mv	s9, s5
80001a00: 93 0a 09 00  	mv	s5, s2
80001a04: 13 89 0d 00  	mv	s2, s11
80001a08: 93 8d 0f 00  	mv	s11, t6
80001a0c: 93 8f 09 00  	mv	t6, s3
80001a10: 93 09 0e 00  	mv	s3, t3
80001a14: 03 24 01 07  	lw	s0, 112(sp)
80001a18: 23 a6 86 04  	sw	s0, 76(a3)
80001a1c: 03 24 c1 06  	lw	s0, 108(sp)
80001a20: 23 a4 86 04  	sw	s0, 72(a3)
80001a24: 03 24 41 08  	lw	s0, 132(sp)
80001a28: 93 89 0f 00  	mv	s3, t6
80001a2c: 93 8f 0d 00  	mv	t6, s11
80001a30: 93 0d 09 00  	mv	s11, s2
80001a34: 13 89 0a 00  	mv	s2, s5
80001a38: 93 8a 0c 00  	mv	s5, s9
80001a3c: 93 8c 07 00  	mv	s9, a5
80001a40: 93 87 03 00  	mv	a5, t2
80001a44: 93 03 03 00  	mv	t2, t1
80001a48: 13 83 05 00  	mv	t1, a1
80001a4c: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80001a50: 27 bc 46 04  	fsd	ft4, 88(a3)
;   for (i = 0; i < nj; i++)
80001a54: 93 87 a7 01  	addi	a5, a5, 26
80001a58: 93 88 38 00  	addi	a7, a7, 3
80001a5c: 13 07 37 00  	addi	a4, a4, 3
80001a60: 13 83 45 00  	addi	t1, a1, 4
80001a64: 83 25 81 08  	lw	a1, 136(sp)
80001a68: 93 85 45 00  	addi	a1, a1, 4
80001a6c: 23 24 b1 08  	sw	a1, 136(sp)
80001a70: 93 8a 9a 01  	addi	s5, s5, 25
80001a74: 13 0b 5b 00  	addi	s6, s6, 5
80001a78: 93 8c 6c 00  	addi	s9, s9, 6
80001a7c: 83 25 c1 08  	lw	a1, 140(sp)
80001a80: 93 85 65 00  	addi	a1, a1, 6
80001a84: 23 26 b1 08  	sw	a1, 140(sp)
80001a88: 13 09 79 01  	addi	s2, s2, 23
80001a8c: 93 8d 7d 00  	addi	s11, s11, 7
80001a90: 93 8b 6b 01  	addi	s7, s7, 22
80001a94: 83 25 01 08  	lw	a1, 128(sp)
80001a98: 93 85 85 00  	addi	a1, a1, 8
80001a9c: 23 20 b1 08  	sw	a1, 128(sp)
80001aa0: 13 0d 8d 00  	addi	s10, s10, 8
80001aa4: 23 2a a1 07  	sw	s10, 116(sp)
80001aa8: 13 0f 5f 01  	addi	t5, t5, 21
80001aac: 13 08 98 00  	addi	a6, a6, 9
80001ab0: 93 8f 4f 01  	addi	t6, t6, 20
80001ab4: 13 0a aa 00  	addi	s4, s4, 10
80001ab8: 93 83 33 01  	addi	t2, t2, 19
80001abc: 93 89 b9 00  	addi	s3, s3, 11
80001ac0: 93 80 20 01  	addi	ra, ra, 18
80001ac4: 13 04 c4 00  	addi	s0, s0, 12
80001ac8: 23 22 81 08  	sw	s0, 132(sp)
80001acc: 93 8e ce 00  	addi	t4, t4, 12
80001ad0: 23 2c d1 07  	sw	t4, 120(sp)
80001ad4: 13 0e 1e 01  	addi	t3, t3, 17
80001ad8: 13 0c dc 00  	addi	s8, s8, 13
80001adc: 13 06 06 01  	addi	a2, a2, 16
80001ae0: 93 86 06 0c  	addi	a3, a3, 192
80001ae4: 93 84 f4 00  	addi	s1, s1, 15
80001ae8: 93 82 e2 00  	addi	t0, t0, 14
80001aec: 93 05 50 1d  	addi	a1, zero, 469
80001af0: e3 9c b7 c4  	bne	a5, a1, 0x80001748 <.LBB0_80+0x58c>
80001af4: 03 26 81 02  	lw	a2, 40(sp)
;   for (i = 0; i < ni; i++)
80001af8: 03 25 41 02  	lw	a0, 36(sp)
80001afc: 33 05 c5 00  	add	a0, a0, a2
80001b00: 93 06 85 38  	addi	a3, a0, 904
80001b04: 13 55 46 01  	srli	a0, a2, 20
80001b08: 33 35 a0 00  	snez	a0, a0
80001b0c: b7 05 12 00  	lui	a1, 288
80001b10: 93 85 15 00  	addi	a1, a1, 1
80001b14: 23 20 d1 08  	sw	a3, 128(sp)
80001b18: b3 b5 b6 00  	sltu	a1, a3, a1
80001b1c: 33 75 b5 00  	and	a0, a0, a1

80001b20 <.LBB0_81>:
80001b20: 97 43 00 00  	auipc	t2, 4
80001b24: 93 83 03 c5  	addi	t2, t2, -944
80001b28: 23 22 a1 08  	sw	a0, 132(sp)
80001b2c: 63 06 05 3a  	beqz	a0, 0x80001ed8 <.LBB0_81+0x3b8>
80001b30: 13 0b 00 00  	mv	s6, zero
80001b34: 93 0b 00 00  	mv	s7, zero
80001b38: 13 0c 00 00  	mv	s8, zero
80001b3c: 13 08 00 00  	mv	a6, zero
80001b40: 93 08 00 00  	mv	a7, zero
80001b44: 93 02 00 00  	mv	t0, zero
80001b48: 13 03 00 00  	mv	t1, zero
80001b4c: 13 89 03 00  	mv	s2, t2
80001b50: 93 03 00 00  	mv	t2, zero
80001b54: 13 0e 00 00  	mv	t3, zero
80001b58: 93 0e 00 00  	mv	t4, zero
80001b5c: 13 0f 00 00  	mv	t5, zero
80001b60: 93 0f 00 00  	mv	t6, zero
80001b64: 93 09 00 00  	mv	s3, zero
80001b68: 13 0a 00 00  	mv	s4, zero
80001b6c: 93 0c 00 00  	mv	s9, zero
80001b70: 13 0d 00 00  	mv	s10, zero
80001b74: 93 00 00 00  	mv	ra, zero
80001b78: 93 0a 00 00  	mv	s5, zero
80001b7c: 93 04 00 00  	mv	s1, zero
80001b80: 13 04 00 00  	mv	s0, zero
80001b84: 93 06 00 00  	mv	a3, zero
80001b88: 13 07 00 00  	mv	a4, zero
80001b8c: 13 05 00 00  	mv	a0, zero
80001b90: 93 07 80 00  	addi	a5, zero, 8
80001b94: 93 0d 70 01  	addi	s11, zero, 23
;   for (i = 0; i < ni; i++)
80001b98: 93 05 00 04  	addi	a1, zero, 64
80001b9c: ab a0 bd 00  	scfgw	s11, a1
80001ba0: 93 05 00 0c  	addi	a1, zero, 192
80001ba4: ab a0 b7 00  	scfgw	a5, a1
80001ba8: 93 0d f0 00  	addi	s11, zero, 15
80001bac: 93 05 00 06  	addi	a1, zero, 96
80001bb0: ab a0 bd 00  	scfgw	s11, a1
80001bb4: 93 05 00 0e  	addi	a1, zero, 224
80001bb8: ab a0 b7 00  	scfgw	a5, a1
80001bbc: 93 05 00 02  	addi	a1, zero, 32
80001bc0: ab 20 b0 00  	scfgw	zero, a1
80001bc4: 2b 20 06 3a  	scfgwi	a2, 928
80001bc8: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80001bcc: b7 95 2e ba  	lui	a1, 762601
80001bd0: 93 87 35 ba  	addi	a5, a1, -1117
80001bd4: 93 0d a0 fe  	addi	s11, zero, -22
80001bd8: 87 31 09 00  	fld	ft3, 0(s2)
80001bdc: 93 05 60 01  	addi	a1, zero, 22
80001be0: 53 02 00 d2  	fcvt.d.w	ft4, zero
80001be4: 13 09 00 19  	addi	s2, zero, 400
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001be8: 33 36 fb 02  	mulhu	a2, s6, a5
80001bec: 13 56 46 00  	srli	a2, a2, 4
80001bf0: 33 06 b6 02  	mul	a2, a2, a1
80001bf4: 33 06 cb 40  	sub	a2, s6, a2
80001bf8: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001bfc: 33 b6 fb 02  	mulhu	a2, s7, a5
80001c00: 13 56 46 00  	srli	a2, a2, 4
80001c04: 33 06 b6 02  	mul	a2, a2, a1
80001c08: 33 86 cb 40  	sub	a2, s7, a2
80001c0c: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001c10: 33 36 fc 02  	mulhu	a2, s8, a5
80001c14: 13 56 46 00  	srli	a2, a2, 4
80001c18: 33 06 b6 02  	mul	a2, a2, a1
80001c1c: 33 06 cc 40  	sub	a2, s8, a2
80001c20: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001c24: 33 36 f8 02  	mulhu	a2, a6, a5
80001c28: 13 56 46 00  	srli	a2, a2, 4
80001c2c: 33 06 b6 02  	mul	a2, a2, a1
80001c30: 33 06 c8 40  	sub	a2, a6, a2
80001c34: 53 05 06 d2  	fcvt.d.w	fa0, a2
80001c38: 33 b6 f8 02  	mulhu	a2, a7, a5
80001c3c: 13 56 46 00  	srli	a2, a2, 4
80001c40: 33 06 b6 02  	mul	a2, a2, a1
80001c44: 33 86 c8 40  	sub	a2, a7, a2
80001c48: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001c4c: 33 b6 f2 02  	mulhu	a2, t0, a5
80001c50: 13 56 46 00  	srli	a2, a2, 4
80001c54: 33 06 b6 02  	mul	a2, a2, a1
80001c58: 33 86 c2 40  	sub	a2, t0, a2
80001c5c: 53 06 06 d2  	fcvt.d.w	fa2, a2
80001c60: 33 36 f3 02  	mulhu	a2, t1, a5
80001c64: 13 56 46 00  	srli	a2, a2, 4
80001c68: 33 06 b6 02  	mul	a2, a2, a1
80001c6c: 33 06 c3 40  	sub	a2, t1, a2
80001c70: d3 06 06 d2  	fcvt.d.w	fa3, a2
80001c74: 33 b6 f3 02  	mulhu	a2, t2, a5
80001c78: 13 56 46 00  	srli	a2, a2, 4
80001c7c: 33 06 b6 02  	mul	a2, a2, a1
80001c80: 33 86 c3 40  	sub	a2, t2, a2
80001c84: 53 07 06 d2  	fcvt.d.w	fa4, a2
80001c88: 33 36 fe 02  	mulhu	a2, t3, a5
80001c8c: 13 56 46 00  	srli	a2, a2, 4
80001c90: 33 06 b6 02  	mul	a2, a2, a1
80001c94: 33 06 ce 40  	sub	a2, t3, a2
80001c98: d3 07 06 d2  	fcvt.d.w	fa5, a2
80001c9c: 33 b6 fe 02  	mulhu	a2, t4, a5
80001ca0: 13 56 46 00  	srli	a2, a2, 4
80001ca4: 33 06 b6 02  	mul	a2, a2, a1
80001ca8: 33 86 ce 40  	sub	a2, t4, a2
80001cac: 53 08 06 d2  	fcvt.d.w	fa6, a2
80001cb0: 33 36 ff 02  	mulhu	a2, t5, a5
80001cb4: 13 56 46 00  	srli	a2, a2, 4
80001cb8: 33 06 b6 02  	mul	a2, a2, a1
80001cbc: 33 06 cf 40  	sub	a2, t5, a2
80001cc0: d3 08 06 d2  	fcvt.d.w	fa7, a2
80001cc4: 33 b6 ff 02  	mulhu	a2, t6, a5
80001cc8: 13 56 46 00  	srli	a2, a2, 4
80001ccc: 33 06 b6 02  	mul	a2, a2, a1
80001cd0: 33 86 cf 40  	sub	a2, t6, a2
80001cd4: 53 0e 06 d2  	fcvt.d.w	ft8, a2
80001cd8: 33 b6 f9 02  	mulhu	a2, s3, a5
80001cdc: 13 56 46 00  	srli	a2, a2, 4
80001ce0: 33 06 b6 02  	mul	a2, a2, a1
80001ce4: 33 86 c9 40  	sub	a2, s3, a2
80001ce8: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80001cec: 33 36 fa 02  	mulhu	a2, s4, a5
80001cf0: 13 56 46 00  	srli	a2, a2, 4
80001cf4: 33 06 b6 02  	mul	a2, a2, a1
80001cf8: 33 06 ca 40  	sub	a2, s4, a2
80001cfc: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80001d00: 33 b6 fc 02  	mulhu	a2, s9, a5
80001d04: 13 56 46 00  	srli	a2, a2, 4
80001d08: 33 06 b6 02  	mul	a2, a2, a1
80001d0c: 33 86 cc 40  	sub	a2, s9, a2
80001d10: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80001d14: 33 36 fd 02  	mulhu	a2, s10, a5
80001d18: 13 56 46 00  	srli	a2, a2, 4
80001d1c: 33 06 b6 02  	mul	a2, a2, a1
80001d20: 33 06 cd 40  	sub	a2, s10, a2
80001d24: 53 04 06 d2  	fcvt.d.w	fs0, a2
80001d28: 33 b6 f0 02  	mulhu	a2, ra, a5
80001d2c: 13 56 46 00  	srli	a2, a2, 4
80001d30: 33 06 b6 02  	mul	a2, a2, a1
80001d34: 33 86 c0 40  	sub	a2, ra, a2
80001d38: d3 04 06 d2  	fcvt.d.w	fs1, a2
80001d3c: 33 b6 fa 02  	mulhu	a2, s5, a5
80001d40: 13 56 46 00  	srli	a2, a2, 4
80001d44: 33 06 b6 02  	mul	a2, a2, a1
80001d48: 33 86 ca 40  	sub	a2, s5, a2
80001d4c: 53 09 06 d2  	fcvt.d.w	fs2, a2
80001d50: 33 b6 f4 02  	mulhu	a2, s1, a5
80001d54: 13 56 46 00  	srli	a2, a2, 4
80001d58: 33 06 b6 02  	mul	a2, a2, a1
80001d5c: 33 86 c4 40  	sub	a2, s1, a2
80001d60: d3 09 06 d2  	fcvt.d.w	fs3, a2
80001d64: 33 36 f4 02  	mulhu	a2, s0, a5
80001d68: 13 56 46 00  	srli	a2, a2, 4
80001d6c: 33 06 b6 02  	mul	a2, a2, a1
80001d70: 33 06 c4 40  	sub	a2, s0, a2
80001d74: 53 0a 06 d2  	fcvt.d.w	fs4, a2
80001d78: 33 b6 f6 02  	mulhu	a2, a3, a5
80001d7c: 13 56 46 00  	srli	a2, a2, 4
80001d80: 33 06 b6 02  	mul	a2, a2, a1
80001d84: 33 86 c6 40  	sub	a2, a3, a2
80001d88: d3 0a 06 d2  	fcvt.d.w	fs5, a2
80001d8c: 33 36 f7 02  	mulhu	a2, a4, a5
80001d90: 13 56 46 00  	srli	a2, a2, 4
80001d94: 33 06 b6 02  	mul	a2, a2, a1
80001d98: 33 06 c7 40  	sub	a2, a4, a2
80001d9c: 53 0b 06 d2  	fcvt.d.w	fs6, a2
80001da0: 33 36 f5 02  	mulhu	a2, a0, a5
80001da4: 13 56 46 00  	srli	a2, a2, 4
80001da8: 33 06 b6 03  	mul	a2, a2, s11
80001dac: 33 06 c5 00  	add	a2, a0, a2
80001db0: d3 0b 06 d2  	fcvt.d.w	fs7, a2
80001db4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001db8: 53 80 52 22  	fmv.d	ft0, ft5
80001dbc: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001dc0: 53 80 52 22  	fmv.d	ft0, ft5
80001dc4: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001dc8: 53 80 52 22  	fmv.d	ft0, ft5
80001dcc: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001dd0: 53 80 52 22  	fmv.d	ft0, ft5
80001dd4: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001dd8: 53 80 52 22  	fmv.d	ft0, ft5
80001ddc: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001de0: 53 80 52 22  	fmv.d	ft0, ft5
80001de4: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001de8: 53 80 52 22  	fmv.d	ft0, ft5
80001dec: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001df0: 53 80 52 22  	fmv.d	ft0, ft5
80001df4: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001df8: 53 80 52 22  	fmv.d	ft0, ft5
80001dfc: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001e00: 53 80 52 22  	fmv.d	ft0, ft5
80001e04: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001e08: 53 80 52 22  	fmv.d	ft0, ft5
80001e0c: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001e10: 53 80 52 22  	fmv.d	ft0, ft5
80001e14: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001e18: 53 80 52 22  	fmv.d	ft0, ft5
80001e1c: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001e20: 53 80 52 22  	fmv.d	ft0, ft5
80001e24: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001e28: 53 80 52 22  	fmv.d	ft0, ft5
80001e2c: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001e30: 53 80 52 22  	fmv.d	ft0, ft5
80001e34: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001e38: 53 80 52 22  	fmv.d	ft0, ft5
80001e3c: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001e40: 53 80 52 22  	fmv.d	ft0, ft5
80001e44: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001e48: 53 80 52 22  	fmv.d	ft0, ft5
80001e4c: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001e50: 53 80 52 22  	fmv.d	ft0, ft5
80001e54: 53 00 42 22  	fmv.d	ft0, ft4
80001e58: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001e5c: 53 80 52 22  	fmv.d	ft0, ft5
80001e60: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80001e64: 53 80 52 22  	fmv.d	ft0, ft5
80001e68: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80001e6c: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < ni; i++)
80001e70: 13 05 95 01  	addi	a0, a0, 25
80001e74: 13 07 87 01  	addi	a4, a4, 24
80001e78: 93 86 76 01  	addi	a3, a3, 23
80001e7c: 13 04 54 01  	addi	s0, s0, 21
80001e80: 93 84 44 01  	addi	s1, s1, 20
80001e84: 93 8a 3a 01  	addi	s5, s5, 19
80001e88: 93 80 20 01  	addi	ra, ra, 18
80001e8c: 13 0d 1d 01  	addi	s10, s10, 17
80001e90: 93 8c 0c 01  	addi	s9, s9, 16
80001e94: 13 0a fa 00  	addi	s4, s4, 15
80001e98: 93 89 e9 00  	addi	s3, s3, 14
80001e9c: 93 8f df 00  	addi	t6, t6, 13
80001ea0: 13 0f cf 00  	addi	t5, t5, 12
80001ea4: 93 8e be 00  	addi	t4, t4, 11
80001ea8: 13 0e ae 00  	addi	t3, t3, 10
80001eac: 93 83 93 00  	addi	t2, t2, 9
80001eb0: 13 03 83 00  	addi	t1, t1, 8
80001eb4: 93 82 72 00  	addi	t0, t0, 7
80001eb8: 93 88 68 00  	addi	a7, a7, 6
80001ebc: 13 08 58 00  	addi	a6, a6, 5
80001ec0: 13 0c 4c 00  	addi	s8, s8, 4
80001ec4: 93 8b 3b 00  	addi	s7, s7, 3
80001ec8: 13 0b 2b 00  	addi	s6, s6, 2
80001ecc: e3 1e 25 d1  	bne	a0, s2, 0x80001be8 <.LBB0_81+0xc8>
80001ed0: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001ed4: 6f 00 40 39  	j	0x80002268 <.LBB0_81+0x748>
80001ed8: 93 06 00 00  	mv	a3, zero
80001edc: 13 07 00 00  	mv	a4, zero
80001ee0: 93 07 00 00  	mv	a5, zero
80001ee4: 93 04 00 00  	mv	s1, zero
80001ee8: 93 05 00 00  	mv	a1, zero
80001eec: 13 0e 00 00  	mv	t3, zero
80001ef0: 93 0e 00 00  	mv	t4, zero
80001ef4: 13 0f 00 00  	mv	t5, zero
80001ef8: 93 0f 00 00  	mv	t6, zero
80001efc: 93 09 00 00  	mv	s3, zero
80001f00: 13 0a 00 00  	mv	s4, zero
80001f04: 13 0b 00 00  	mv	s6, zero
80001f08: 93 0b 00 00  	mv	s7, zero
80001f0c: 13 09 00 00  	mv	s2, zero
80001f10: 13 0c 00 00  	mv	s8, zero
80001f14: 93 0c 00 00  	mv	s9, zero
80001f18: 13 0d 00 00  	mv	s10, zero
80001f1c: 93 0d 00 00  	mv	s11, zero
80001f20: 93 0a 00 00  	mv	s5, zero
80001f24: 13 08 00 00  	mv	a6, zero
80001f28: 93 08 00 00  	mv	a7, zero
80001f2c: 93 02 00 00  	mv	t0, zero
80001f30: 13 03 00 00  	mv	t1, zero
;   for (i = 0; i < ni; i++)
80001f34: 13 04 06 06  	addi	s0, a2, 96
80001f38: 37 95 2e ba  	lui	a0, 762601
80001f3c: 13 05 35 ba  	addi	a0, a0, -1117
80001f40: 87 b1 03 00  	fld	ft3, 0(t2)
80001f44: 93 03 60 01  	addi	t2, zero, 22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001f48: 33 b6 a2 02  	mulhu	a2, t0, a0
80001f4c: 13 56 46 00  	srli	a2, a2, 4
80001f50: 33 06 76 02  	mul	a2, a2, t2
80001f54: b3 80 c2 40  	sub	ra, t0, a2
80001f58: 53 82 00 d2  	fcvt.d.w	ft4, ra
80001f5c: 33 b6 a8 02  	mulhu	a2, a7, a0
80001f60: 13 56 46 00  	srli	a2, a2, 4
80001f64: 33 06 76 02  	mul	a2, a2, t2
80001f68: 33 86 c8 40  	sub	a2, a7, a2
80001f6c: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001f70: 33 b6 aa 02  	mulhu	a2, s5, a0
80001f74: 13 56 46 00  	srli	a2, a2, 4
80001f78: 33 06 76 02  	mul	a2, a2, t2
80001f7c: 33 86 ca 40  	sub	a2, s5, a2
80001f80: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001f84: 33 36 ad 02  	mulhu	a2, s10, a0
80001f88: 13 56 46 00  	srli	a2, a2, 4
80001f8c: 33 06 76 02  	mul	a2, a2, t2
80001f90: 33 06 cd 40  	sub	a2, s10, a2
80001f94: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001f98: 33 b6 ac 02  	mulhu	a2, s9, a0
80001f9c: 13 56 46 00  	srli	a2, a2, 4
80001fa0: 33 06 76 02  	mul	a2, a2, t2
80001fa4: 33 86 cc 40  	sub	a2, s9, a2
80001fa8: 53 05 06 d2  	fcvt.d.w	fa0, a2
80001fac: 33 36 a9 02  	mulhu	a2, s2, a0
80001fb0: 13 56 46 00  	srli	a2, a2, 4
80001fb4: 33 06 76 02  	mul	a2, a2, t2
80001fb8: 33 06 c9 40  	sub	a2, s2, a2
80001fbc: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001fc0: 33 36 ab 02  	mulhu	a2, s6, a0
80001fc4: 13 56 46 00  	srli	a2, a2, 4
80001fc8: 33 06 76 02  	mul	a2, a2, t2
80001fcc: 33 06 cb 40  	sub	a2, s6, a2
80001fd0: 53 06 06 d2  	fcvt.d.w	fa2, a2
80001fd4: 33 b6 a9 02  	mulhu	a2, s3, a0
80001fd8: 13 56 46 00  	srli	a2, a2, 4
80001fdc: 33 06 76 02  	mul	a2, a2, t2
80001fe0: 33 86 c9 40  	sub	a2, s3, a2
80001fe4: d3 06 06 d2  	fcvt.d.w	fa3, a2
80001fe8: 33 36 af 02  	mulhu	a2, t5, a0
80001fec: 13 56 46 00  	srli	a2, a2, 4
80001ff0: 33 06 76 02  	mul	a2, a2, t2
80001ff4: 33 06 cf 40  	sub	a2, t5, a2
80001ff8: 53 07 06 d2  	fcvt.d.w	fa4, a2
80001ffc: 33 36 ae 02  	mulhu	a2, t3, a0
80002000: 13 56 46 00  	srli	a2, a2, 4
80002004: 33 06 76 02  	mul	a2, a2, t2
80002008: 33 06 ce 40  	sub	a2, t3, a2
8000200c: d3 07 06 d2  	fcvt.d.w	fa5, a2
80002010: 33 b6 a4 02  	mulhu	a2, s1, a0
80002014: 13 56 46 00  	srli	a2, a2, 4
80002018: 33 06 76 02  	mul	a2, a2, t2
8000201c: 33 86 c4 40  	sub	a2, s1, a2
80002020: 53 08 06 d2  	fcvt.d.w	fa6, a2
80002024: 33 b6 a6 02  	mulhu	a2, a3, a0
80002028: 13 56 46 00  	srli	a2, a2, 4
8000202c: 33 06 76 02  	mul	a2, a2, t2
80002030: 33 86 c6 40  	sub	a2, a3, a2
80002034: d3 08 06 d2  	fcvt.d.w	fa7, a2
80002038: 33 36 a7 02  	mulhu	a2, a4, a0
8000203c: 13 56 46 00  	srli	a2, a2, 4
80002040: 33 06 76 02  	mul	a2, a2, t2
80002044: 33 06 c7 40  	sub	a2, a4, a2
80002048: 53 0e 06 d2  	fcvt.d.w	ft8, a2
8000204c: 33 b6 a7 02  	mulhu	a2, a5, a0
80002050: 13 56 46 00  	srli	a2, a2, 4
80002054: 33 06 76 02  	mul	a2, a2, t2
80002058: 33 86 c7 40  	sub	a2, a5, a2
8000205c: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80002060: 33 b6 a5 02  	mulhu	a2, a1, a0
80002064: 13 56 46 00  	srli	a2, a2, 4
80002068: 33 06 76 02  	mul	a2, a2, t2
8000206c: 33 86 c5 40  	sub	a2, a1, a2
80002070: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80002074: 33 b6 ae 02  	mulhu	a2, t4, a0
80002078: 13 56 46 00  	srli	a2, a2, 4
8000207c: 33 06 76 02  	mul	a2, a2, t2
80002080: 33 86 ce 40  	sub	a2, t4, a2
80002084: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80002088: 33 b6 af 02  	mulhu	a2, t6, a0
8000208c: 13 56 46 00  	srli	a2, a2, 4
80002090: 33 06 76 02  	mul	a2, a2, t2
80002094: 33 86 cf 40  	sub	a2, t6, a2
80002098: 53 04 06 d2  	fcvt.d.w	fs0, a2
8000209c: 33 36 aa 02  	mulhu	a2, s4, a0
800020a0: 13 56 46 00  	srli	a2, a2, 4
800020a4: 33 06 76 02  	mul	a2, a2, t2
800020a8: 33 06 ca 40  	sub	a2, s4, a2
800020ac: d3 04 06 d2  	fcvt.d.w	fs1, a2
800020b0: 33 b6 ab 02  	mulhu	a2, s7, a0
800020b4: 13 56 46 00  	srli	a2, a2, 4
800020b8: 33 06 76 02  	mul	a2, a2, t2
800020bc: 33 86 cb 40  	sub	a2, s7, a2
800020c0: 53 09 06 d2  	fcvt.d.w	fs2, a2
800020c4: 33 36 ac 02  	mulhu	a2, s8, a0
800020c8: 13 56 46 00  	srli	a2, a2, 4
800020cc: 33 06 76 02  	mul	a2, a2, t2
800020d0: 33 06 cc 40  	sub	a2, s8, a2
800020d4: d3 09 06 d2  	fcvt.d.w	fs3, a2
800020d8: 33 b6 ad 02  	mulhu	a2, s11, a0
800020dc: 13 56 46 00  	srli	a2, a2, 4
800020e0: 33 06 76 02  	mul	a2, a2, t2
800020e4: 33 86 cd 40  	sub	a2, s11, a2
800020e8: 53 0a 06 d2  	fcvt.d.w	fs4, a2
800020ec: 33 36 a8 02  	mulhu	a2, a6, a0
800020f0: 13 56 46 00  	srli	a2, a2, 4
800020f4: 33 06 76 02  	mul	a2, a2, t2
800020f8: 33 06 c8 40  	sub	a2, a6, a2
800020fc: d3 0a 06 d2  	fcvt.d.w	fs5, a2
80002100: 33 36 a3 02  	mulhu	a2, t1, a0
80002104: 13 56 46 00  	srli	a2, a2, 4
80002108: 93 80 05 00  	mv	ra, a1
8000210c: 93 85 04 00  	mv	a1, s1
80002110: 93 84 07 00  	mv	s1, a5
80002114: 93 07 07 00  	mv	a5, a4
80002118: 13 87 06 00  	mv	a4, a3
8000211c: 93 06 a0 fe  	addi	a3, zero, -22
80002120: 33 06 d6 02  	mul	a2, a2, a3
80002124: 93 06 07 00  	mv	a3, a4
80002128: 13 87 07 00  	mv	a4, a5
8000212c: 93 87 04 00  	mv	a5, s1
80002130: 93 84 05 00  	mv	s1, a1
80002134: 93 85 00 00  	mv	a1, ra
80002138: 33 06 c3 00  	add	a2, t1, a2
8000213c: 53 0b 06 d2  	fcvt.d.w	fs6, a2
80002140: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002144: 27 30 44 fa  	fsd	ft4, -96(s0)
80002148: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
8000214c: 27 34 44 fa  	fsd	ft4, -88(s0)
80002150: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80002154: 27 38 44 fa  	fsd	ft4, -80(s0)
80002158: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
8000215c: 27 3c 44 fa  	fsd	ft4, -72(s0)
80002160: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80002164: 27 30 44 fc  	fsd	ft4, -64(s0)
80002168: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
8000216c: 27 34 44 fc  	fsd	ft4, -56(s0)
80002170: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80002174: 27 38 44 fc  	fsd	ft4, -48(s0)
80002178: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
8000217c: 27 3c 44 fc  	fsd	ft4, -40(s0)
80002180: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80002184: 27 30 44 fe  	fsd	ft4, -32(s0)
80002188: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
8000218c: 27 34 44 fe  	fsd	ft4, -24(s0)
80002190: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80002194: 27 38 44 fe  	fsd	ft4, -16(s0)
80002198: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
8000219c: 27 3c 44 fe  	fsd	ft4, -8(s0)
800021a0: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
800021a4: 27 30 44 00  	fsd	ft4, 0(s0)
800021a8: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
800021ac: 27 34 44 00  	fsd	ft4, 8(s0)
800021b0: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
800021b4: 27 38 44 00  	fsd	ft4, 16(s0)
800021b8: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
800021bc: 27 3c 44 00  	fsd	ft4, 24(s0)
800021c0: 53 72 34 12  	fmul.d	ft4, fs0, ft3
800021c4: 27 30 44 02  	fsd	ft4, 32(s0)
800021c8: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
800021cc: 27 34 44 02  	fsd	ft4, 40(s0)
800021d0: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800021d4: 27 38 44 02  	fsd	ft4, 48(s0)
800021d8: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
800021dc: 27 3c 44 02  	fsd	ft4, 56(s0)
800021e0: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
800021e4: 27 34 44 04  	fsd	ft4, 72(s0)
800021e8: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
800021ec: 27 38 44 04  	fsd	ft4, 80(s0)
800021f0: 23 22 04 04  	sw	zero, 68(s0)
800021f4: 23 20 04 04  	sw	zero, 64(s0)
800021f8: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
800021fc: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < ni; i++)
80002200: 13 03 93 01  	addi	t1, t1, 25
80002204: 93 82 22 00  	addi	t0, t0, 2
80002208: 93 88 38 00  	addi	a7, a7, 3
8000220c: 13 08 88 01  	addi	a6, a6, 24
80002210: 93 8a 4a 00  	addi	s5, s5, 4
80002214: 93 8d 7d 01  	addi	s11, s11, 23
80002218: 13 0d 5d 00  	addi	s10, s10, 5
8000221c: 93 8c 6c 00  	addi	s9, s9, 6
80002220: 13 0c 5c 01  	addi	s8, s8, 21
80002224: 13 09 79 00  	addi	s2, s2, 7
80002228: 93 8b 4b 01  	addi	s7, s7, 20
8000222c: 13 0b 8b 00  	addi	s6, s6, 8
80002230: 13 0a 3a 01  	addi	s4, s4, 19
80002234: 93 89 99 00  	addi	s3, s3, 9
80002238: 93 8f 2f 01  	addi	t6, t6, 18
8000223c: 13 0f af 00  	addi	t5, t5, 10
80002240: 93 8e 1e 01  	addi	t4, t4, 17
80002244: 13 0e be 00  	addi	t3, t3, 11
80002248: 93 85 00 01  	addi	a1, ra, 16
8000224c: 93 84 c4 00  	addi	s1, s1, 12
80002250: 93 87 f7 00  	addi	a5, a5, 15
80002254: 13 04 04 0c  	addi	s0, s0, 192
80002258: 13 07 e7 00  	addi	a4, a4, 14
8000225c: 93 86 d6 00  	addi	a3, a3, 13
80002260: 13 06 00 19  	addi	a2, zero, 400
80002264: e3 12 c3 ce  	bne	t1, a2, 0x80001f48 <.LBB0_81+0x428>
80002268: 03 2f c1 02  	lw	t5, 44(sp)
8000226c: 83 24 41 02  	lw	s1, 36(sp)
;   for (i = 0; i < ni; i++) {
80002270: 33 85 e4 01  	add	a0, s1, t5
80002274: 93 03 85 08  	addi	t2, a0, 136
80002278: 83 22 41 03  	lw	t0, 52(sp)
8000227c: 33 b5 53 00  	sltu	a0, t2, t0
80002280: 83 25 c1 00  	lw	a1, 12(sp)
80002284: b3 b5 e5 01  	sltu	a1, a1, t5
80002288: 33 65 b5 00  	or	a0, a0, a1
8000228c: 03 23 01 03  	lw	t1, 48(sp)
80002290: b3 b5 63 00  	sltu	a1, t2, t1
80002294: 03 26 81 01  	lw	a2, 24(sp)
80002298: 33 36 e6 01  	sltu	a2, a2, t5
8000229c: b3 e5 c5 00  	or	a1, a1, a2
800022a0: 33 f5 a5 00  	and	a0, a1, a0
800022a4: 93 55 4f 01  	srli	a1, t5, 20
800022a8: b3 35 b0 00  	snez	a1, a1
800022ac: 37 06 12 00  	lui	a2, 288
800022b0: 13 06 16 00  	addi	a2, a2, 1
800022b4: b3 b6 c3 00  	sltu	a3, t2, a2
800022b8: b3 f5 d5 00  	and	a1, a1, a3
800022bc: 23 2a b1 06  	sw	a1, 116(sp)
800022c0: 33 f5 a5 00  	and	a0, a1, a0
800022c4: 83 25 c1 01  	lw	a1, 28(sp)
800022c8: 33 f5 a5 00  	and	a0, a1, a0
800022cc: 83 25 01 01  	lw	a1, 16(sp)
800022d0: 33 f5 a5 00  	and	a0, a1, a0
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800022d4: f3 25 00 b0  	csrr	a1, mcycle
800022d8: 23 2e b1 06  	sw	a1, 124(sp)
800022dc: 23 2c 71 06  	sw	t2, 120(sp)
800022e0: 63 02 05 16  	beqz	a0, 0x80002444 <.LBB0_82+0x90>
800022e4: 13 05 00 00  	mv	a0, zero
800022e8: 93 05 80 00  	addi	a1, zero, 8
800022ec: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < ni; i++) {
800022f0: 93 06 00 04  	addi	a3, zero, 64
800022f4: 13 07 00 0c  	addi	a4, zero, 192
800022f8: ab 20 d6 00  	scfgw	a2, a3
800022fc: ab a0 e5 00  	scfgw	a1, a4
80002300: 93 06 f0 00  	addi	a3, zero, 15
80002304: 13 07 00 06  	addi	a4, zero, 96
80002308: 93 07 00 0e  	addi	a5, zero, 224
8000230c: ab a0 e6 00  	scfgw	a3, a4
80002310: ab a0 f5 00  	scfgw	a1, a5
80002314: 13 07 00 02  	addi	a4, zero, 32
80002318: ab 20 e0 00  	scfgw	zero, a4
8000231c: 2b 20 0f 3a  	scfgwi	t5, 928
80002320: 13 07 50 01  	addi	a4, zero, 21
80002324: 93 07 10 00  	addi	a5, zero, 1
80002328: 93 84 07 04  	addi	s1, a5, 64
8000232c: 13 84 07 0c  	addi	s0, a5, 192
80002330: ab 20 97 00  	scfgw	a4, s1
80002334: ab a0 85 00  	scfgw	a1, s0
80002338: 93 04 80 f5  	addi	s1, zero, -168
8000233c: 13 84 07 06  	addi	s0, a5, 96
80002340: ab 20 86 00  	scfgw	a2, s0
80002344: 13 84 07 0e  	addi	s0, a5, 224
80002348: ab a0 84 00  	scfgw	s1, s0
8000234c: 93 84 07 08  	addi	s1, a5, 128
80002350: 13 84 07 10  	addi	s0, a5, 256
80002354: ab a0 96 00  	scfgw	a3, s1
80002358: ab a0 85 00  	scfgw	a1, s0
8000235c: 93 85 07 02  	addi	a1, a5, 32
80002360: ab 20 b0 00  	scfgw	zero, a1
80002364: 2b 20 13 34  	scfgwi	t1, 833
80002368: 93 05 00 09  	addi	a1, zero, 144
8000236c: 93 07 20 00  	addi	a5, zero, 2
80002370: 93 84 07 04  	addi	s1, a5, 64
80002374: 13 84 07 0c  	addi	s0, a5, 192
80002378: ab 20 97 00  	scfgw	a4, s1
8000237c: ab a0 85 00  	scfgw	a1, s0
80002380: b7 f5 ff ff  	lui	a1, 1048575
80002384: 13 87 85 43  	addi	a4, a1, 1080
80002388: 93 84 07 06  	addi	s1, a5, 96
8000238c: 13 84 07 0e  	addi	s0, a5, 224
80002390: ab 20 96 00  	scfgw	a2, s1
80002394: ab 20 87 00  	scfgw	a4, s0
80002398: 93 85 85 3a  	addi	a1, a1, 936
8000239c: 13 86 07 08  	addi	a2, a5, 128
800023a0: 13 87 07 10  	addi	a4, a5, 256
800023a4: ab a0 c6 00  	scfgw	a3, a2
800023a8: ab a0 e5 00  	scfgw	a1, a4
800023ac: 93 85 07 02  	addi	a1, a5, 32
800023b0: ab 20 b0 00  	scfgw	zero, a1

800023b4 <.LBB0_82>:
800023b4: 97 35 00 00  	auipc	a1, 3
800023b8: 93 85 45 3c  	addi	a1, a1, 964
800023bc: 87 b1 05 00  	fld	ft3, 0(a1)
;   for (i = 0; i < ni; i++) {
800023c0: 2b a0 22 34  	scfgwi	t0, 834
800023c4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800023c8: 93 05 00 01  	addi	a1, zero, 16
800023cc: 13 06 20 01  	addi	a2, zero, 18
;         x += alpha * A[i][k] * B[k][j];
800023d0: 53 72 11 12  	fmul.d	ft4, ft2, ft1
800023d4: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023d8: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023dc: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023e0: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023e4: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023e8: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023ec: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023f0: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023f4: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023f8: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800023fc: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002400: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002404: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002408: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
8000240c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002410: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002414: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002418: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
8000241c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002420: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
80002424: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
;         x += alpha * A[i][k] * B[k][j];
80002428: 53 72 32 12  	fmul.d	ft4, ft4, ft3
;       tmp[i][j] = x;
8000242c: 53 00 42 22  	fmv.d	ft0, ft4
;     for (j = 0; j < nj; j++) {
80002430: 13 06 f6 ff  	addi	a2, a2, -1
80002434: e3 1e 06 f8  	bnez	a2, 0x800023d0 <.LBB0_82+0x1c>
;   for (i = 0; i < ni; i++) {
80002438: 13 05 15 00  	addi	a0, a0, 1
8000243c: e3 18 b5 f8  	bne	a0, a1, 0x800023cc <.LBB0_82+0x18>
80002440: 6f 00 80 2f  	j	0x80002738 <.LBB0_83+0x44>
80002444: 13 85 02 48  	addi	a0, t0, 1152
80002448: 93 08 05 48  	addi	a7, a0, 1152
8000244c: 93 85 42 4c  	addi	a1, t0, 1220
80002450: 13 87 45 4c  	addi	a4, a1, 1220
80002454: 13 88 02 63  	addi	a6, t0, 1584
80002458: 93 87 82 6b  	addi	a5, t0, 1720
8000245c: 93 02 03 06  	addi	t0, t1, 96
80002460: b3 84 54 00  	add	s1, s1, t0
80002464: 93 84 04 1e  	addi	s1, s1, 480
80002468: 33 34 e7 01  	sltu	s0, a4, t5
8000246c: b3 b5 13 01  	sltu	a1, t2, a7
80002470: b3 e5 85 00  	or	a1, a1, s0
80002474: 33 b4 e7 01  	sltu	s0, a5, t5
80002478: 33 b5 03 01  	sltu	a0, t2, a6
8000247c: 33 65 85 00  	or	a0, a0, s0
80002480: 33 b4 e4 01  	sltu	s0, s1, t5
80002484: b3 b6 53 00  	sltu	a3, t2, t0
80002488: b3 e6 86 00  	or	a3, a3, s0
8000248c: 33 f5 a5 00  	and	a0, a1, a0
80002490: 33 f5 a6 00  	and	a0, a3, a0
80002494: 93 d5 48 01  	srli	a1, a7, 20
80002498: b3 35 b0 00  	snez	a1, a1
8000249c: b3 36 c7 00  	sltu	a3, a4, a2
800024a0: b3 f5 d5 00  	and	a1, a1, a3
800024a4: 33 f5 a5 00  	and	a0, a1, a0
800024a8: 93 55 48 01  	srli	a1, a6, 20
800024ac: b3 35 b0 00  	snez	a1, a1
800024b0: b3 b6 c7 00  	sltu	a3, a5, a2
800024b4: b3 f5 d5 00  	and	a1, a1, a3
800024b8: 33 f5 a5 00  	and	a0, a1, a0
800024bc: 93 d5 42 01  	srli	a1, t0, 20
800024c0: b3 35 b0 00  	snez	a1, a1
800024c4: 33 b6 c4 00  	sltu	a2, s1, a2
800024c8: b3 f5 c5 00  	and	a1, a1, a2
800024cc: 33 f5 a5 00  	and	a0, a1, a0
800024d0: 63 08 05 26  	beqz	a0, 0x80002740 <.LBB0_83+0x4c>
800024d4: 93 04 00 00  	mv	s1, zero
800024d8: 13 05 80 00  	addi	a0, zero, 8
800024dc: 93 05 10 01  	addi	a1, zero, 17
;   for (i = 0; i < ni; i++) {
800024e0: 13 06 00 04  	addi	a2, zero, 64
800024e4: 93 06 00 0c  	addi	a3, zero, 192
800024e8: ab a0 c5 00  	scfgw	a1, a2
800024ec: ab 20 d5 00  	scfgw	a0, a3
800024f0: 13 06 80 f7  	addi	a2, zero, -136
800024f4: 93 06 f0 00  	addi	a3, zero, 15
800024f8: 13 07 00 06  	addi	a4, zero, 96
800024fc: ab a0 e6 00  	scfgw	a3, a4
80002500: 13 07 00 0e  	addi	a4, zero, 224
80002504: ab 20 e6 00  	scfgw	a2, a4
80002508: 13 07 00 02  	addi	a4, zero, 32
8000250c: ab 20 e0 00  	scfgw	zero, a4
80002510: 2b a0 08 32  	scfgwi	a7, 800
80002514: 13 07 10 00  	addi	a4, zero, 1
80002518: 93 07 07 04  	addi	a5, a4, 64
8000251c: ab a0 f5 00  	scfgw	a1, a5
80002520: 93 07 07 0c  	addi	a5, a4, 192
80002524: ab 20 f5 00  	scfgw	a0, a5
80002528: 13 05 07 06  	addi	a0, a4, 96
8000252c: 93 07 07 0e  	addi	a5, a4, 224
80002530: ab a0 a6 00  	scfgw	a3, a0
80002534: ab 20 f6 00  	scfgw	a2, a5
80002538: 13 05 07 02  	addi	a0, a4, 32
8000253c: ab 20 a0 00  	scfgw	zero, a0
80002540: 2b 20 18 32  	scfgwi	a6, 801
80002544: 13 05 20 00  	addi	a0, zero, 2
80002548: 13 06 05 04  	addi	a2, a0, 64
8000254c: 13 07 05 0c  	addi	a4, a0, 192
80002550: ab a0 c5 00  	scfgw	a1, a2
80002554: ab 20 e0 00  	scfgw	zero, a4
80002558: 13 07 00 0b  	addi	a4, zero, 176
8000255c: 93 05 05 06  	addi	a1, a0, 96
80002560: 13 06 05 0e  	addi	a2, a0, 224
80002564: ab a0 b6 00  	scfgw	a3, a1
80002568: ab 20 c7 00  	scfgw	a4, a2
8000256c: 13 05 05 02  	addi	a0, a0, 32
80002570: ab 20 a0 00  	scfgw	zero, a0
80002574: 2b a0 22 32  	scfgwi	t0, 802
80002578: 73 e5 00 7c  	csrrsi	a0, 1984, 1
8000257c: 93 0e 00 09  	addi	t4, zero, 144
80002580: 03 2e 41 03  	lw	t3, 52(sp)
80002584: 13 04 00 00  	mv	s0, zero
80002588: 23 26 91 08  	sw	s1, 140(sp)
;         x += alpha * A[i][k] * B[k][j];
8000258c: 13 05 00 0b  	addi	a0, zero, 176
80002590: 33 85 a4 02  	mul	a0, s1, a0
80002594: 33 06 a3 00  	add	a2, t1, a0
80002598: 93 0f 86 00  	addi	t6, a2, 8
8000259c: 13 09 06 01  	addi	s2, a2, 16
800025a0: 93 09 86 01  	addi	s3, a2, 24
800025a4: 13 0a 06 02  	addi	s4, a2, 32
800025a8: 93 0a 86 02  	addi	s5, a2, 40
800025ac: 13 0b 06 03  	addi	s6, a2, 48
800025b0: 93 0b 86 03  	addi	s7, a2, 56
800025b4: 13 0c 06 04  	addi	s8, a2, 64
800025b8: 93 0c 86 04  	addi	s9, a2, 72
800025bc: 13 0d 06 05  	addi	s10, a2, 80
800025c0: 93 0d 86 05  	addi	s11, a2, 88
800025c4: 93 00 86 06  	addi	ra, a2, 104
800025c8: 93 03 06 07  	addi	t2, a2, 112
800025cc: 93 05 86 07  	addi	a1, a2, 120
800025d0: 13 07 06 08  	addi	a4, a2, 128
800025d4: 13 05 86 08  	addi	a0, a2, 136
800025d8: 93 06 06 09  	addi	a3, a2, 144
800025dc: 93 07 86 09  	addi	a5, a2, 152
800025e0: 13 08 06 0a  	addi	a6, a2, 160
800025e4: 93 08 86 0a  	addi	a7, a2, 168
800025e8: 87 31 06 00  	fld	ft3, 0(a2)
800025ec: b3 02 8e 00  	add	t0, t3, s0
800025f0: 07 b2 02 00  	fld	ft4, 0(t0)
800025f4: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800025f8: 07 b2 0f 00  	fld	ft4, 0(t6)
800025fc: 87 b2 02 09  	fld	ft5, 144(t0)
80002600: 07 33 09 00  	fld	ft6, 0(s2)
80002604: 87 b3 02 12  	fld	ft7, 288(t0)
80002608: 07 b5 09 00  	fld	fa0, 0(s3)
8000260c: 87 b5 02 1b  	fld	fa1, 432(t0)
80002610: 07 36 0a 00  	fld	fa2, 0(s4)
80002614: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002618: 07 b2 02 24  	fld	ft4, 576(t0)
8000261c: 87 b2 0a 00  	fld	ft5, 0(s5)
80002620: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002624: 07 b3 02 2d  	fld	ft6, 720(t0)
80002628: 87 33 0b 00  	fld	ft7, 0(s6)
8000262c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002630: 07 b5 02 36  	fld	fa0, 864(t0)
80002634: 87 b5 0b 00  	fld	fa1, 0(s7)
80002638: c3 71 c2 1a  	fmadd.d	ft3, ft4, fa2, ft3
8000263c: 07 b2 02 3f  	fld	ft4, 1008(t0)
80002640: 07 36 0c 00  	fld	fa2, 0(s8)
80002644: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002648: 87 b2 02 48  	fld	ft5, 1152(t0)
8000264c: 07 b3 0c 00  	fld	ft6, 0(s9)
80002650: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002654: 87 b3 02 51  	fld	ft7, 1296(t0)
80002658: 07 35 0d 00  	fld	fa0, 0(s10)
8000265c: c3 71 b2 1a  	fmadd.d	ft3, ft4, fa1, ft3
80002660: 07 b2 02 5a  	fld	ft4, 1440(t0)
80002664: 87 b5 0d 00  	fld	fa1, 0(s11)
80002668: c3 f1 c2 1a  	fmadd.d	ft3, ft5, fa2, ft3
8000266c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002670: 07 b3 02 6c  	fld	ft6, 1728(t0)
80002674: 87 b3 00 00  	fld	ft7, 0(ra)
80002678: c3 71 a2 1a  	fmadd.d	ft3, ft4, fa0, ft3
8000267c: 07 b2 02 75  	fld	ft4, 1872(t0)
80002680: 07 b5 03 00  	fld	fa0, 0(t2)
80002684: c3 f1 b0 1a  	fmadd.d	ft3, ft1, fa1, ft3
80002688: 87 b2 02 7e  	fld	ft5, 2016(t0)
8000268c: 87 b5 05 00  	fld	fa1, 0(a1)
80002690: 13 83 82 43  	addi	t1, t0, 1080
80002694: c3 71 23 1a  	fmadd.d	ft3, ft6, ft2, ft3
80002698: 07 33 83 43  	fld	ft6, 1080(t1)
8000269c: 07 36 07 00  	fld	fa2, 0(a4)
800026a0: c3 71 72 1a  	fmadd.d	ft3, ft4, ft7, ft3
800026a4: 87 33 05 00  	fld	ft7, 0(a0)
800026a8: 93 84 82 4c  	addi	s1, t0, 1224
800026ac: c3 f1 a2 1a  	fmadd.d	ft3, ft5, fa0, ft3
800026b0: 87 b2 84 4c  	fld	ft5, 1224(s1)
800026b4: 07 b5 06 00  	fld	fa0, 0(a3)
800026b8: 93 84 02 51  	addi	s1, t0, 1296
800026bc: c3 71 b3 1a  	fmadd.d	ft3, ft6, fa1, ft3
800026c0: 07 b3 04 51  	fld	ft6, 1296(s1)
800026c4: 87 b5 07 00  	fld	fa1, 0(a5)
800026c8: 93 84 82 55  	addi	s1, t0, 1368
800026cc: c3 71 c0 1a  	fmadd.d	ft3, ft0, fa2, ft3
800026d0: 07 b2 84 55  	fld	ft4, 1368(s1)
800026d4: 07 36 08 00  	fld	fa2, 0(a6)
800026d8: 93 84 02 5a  	addi	s1, t0, 1440
800026dc: c3 f1 72 1a  	fmadd.d	ft3, ft5, ft7, ft3
800026e0: 87 b2 04 5a  	fld	ft5, 1440(s1)
800026e4: 87 b3 08 00  	fld	ft7, 0(a7)
800026e8: 93 84 82 5e  	addi	s1, t0, 1512
800026ec: c3 71 a3 1a  	fmadd.d	ft3, ft6, fa0, ft3
800026f0: 07 b3 84 5e  	fld	ft6, 1512(s1)

800026f4 <.LBB0_83>:
800026f4: 97 34 00 00  	auipc	s1, 3
800026f8: 93 84 44 08  	addi	s1, s1, 132
800026fc: 07 b5 04 00  	fld	fa0, 0(s1)
80002700: c3 71 b2 1a  	fmadd.d	ft3, ft4, fa1, ft3
80002704: c3 f1 c2 1a  	fmadd.d	ft3, ft5, fa2, ft3
80002708: c3 71 73 1a  	fmadd.d	ft3, ft6, ft7, ft3
;         x += alpha * A[i][k] * B[k][j];
8000270c: d3 f1 a1 12  	fmul.d	ft3, ft3, fa0
;       tmp[i][j] = x;
80002710: b3 04 8f 00  	add	s1, t5, s0
;     for (j = 0; j < nj; j++) {
80002714: 13 04 84 00  	addi	s0, s0, 8
;       tmp[i][j] = x;
80002718: 27 b0 34 00  	fsd	ft3, 0(s1)
;     for (j = 0; j < nj; j++) {
8000271c: e3 16 d4 ed  	bne	s0, t4, 0x800025e8 <.LBB0_82+0x234>
80002720: 83 24 c1 08  	lw	s1, 140(sp)
;   for (i = 0; i < ni; i++) {
80002724: 93 84 14 00  	addi	s1, s1, 1
80002728: 13 0f 0f 09  	addi	t5, t5, 144
8000272c: 03 23 01 03  	lw	t1, 48(sp)
80002730: 13 05 00 01  	addi	a0, zero, 16
80002734: e3 98 a4 e4  	bne	s1, a0, 0x80002584 <.LBB0_82+0x1d0>
80002738: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000273c: 6f 00 40 1e  	j	0x80002920 <.LBB0_84+0x44>
80002740: 13 05 00 00  	mv	a0, zero
80002744: 93 06 0f 00  	mv	a3, t5
80002748: 83 23 41 03  	lw	t2, 52(sp)
8000274c: 93 07 00 09  	addi	a5, zero, 144
80002750: 13 06 00 00  	mv	a2, zero
80002754: 23 24 a1 08  	sw	a0, 136(sp)
;         x += alpha * A[i][k] * B[k][j];
80002758: 93 05 00 0b  	addi	a1, zero, 176
8000275c: 33 05 b5 02  	mul	a0, a0, a1
80002760: b3 04 a3 00  	add	s1, t1, a0
80002764: 13 85 84 00  	addi	a0, s1, 8
80002768: 23 26 a1 08  	sw	a0, 140(sp)
8000276c: 13 8f 04 01  	addi	t5, s1, 16
80002770: 93 8f 84 01  	addi	t6, s1, 24
80002774: 13 89 04 02  	addi	s2, s1, 32
80002778: 93 89 84 02  	addi	s3, s1, 40
8000277c: 13 8a 04 03  	addi	s4, s1, 48
80002780: 93 8a 84 03  	addi	s5, s1, 56
80002784: 13 8b 04 04  	addi	s6, s1, 64
80002788: 93 8b 84 04  	addi	s7, s1, 72
8000278c: 13 8c 04 05  	addi	s8, s1, 80
80002790: 93 8c 84 05  	addi	s9, s1, 88
80002794: 13 8d 04 06  	addi	s10, s1, 96
80002798: 93 8d 84 06  	addi	s11, s1, 104
8000279c: 93 80 04 07  	addi	ra, s1, 112
800027a0: 93 82 84 07  	addi	t0, s1, 120
800027a4: 13 83 04 08  	addi	t1, s1, 128
800027a8: 13 8e 84 08  	addi	t3, s1, 136
800027ac: 93 8e 04 09  	addi	t4, s1, 144
800027b0: 13 84 84 09  	addi	s0, s1, 152
800027b4: 93 85 04 0a  	addi	a1, s1, 160
800027b8: 13 87 84 0a  	addi	a4, s1, 168
800027bc: 87 b1 04 00  	fld	ft3, 0(s1)
800027c0: 33 88 c3 00  	add	a6, t2, a2
800027c4: 07 32 08 00  	fld	ft4, 0(a6)
800027c8: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800027cc: 03 25 c1 08  	lw	a0, 140(sp)
800027d0: 07 32 05 00  	fld	ft4, 0(a0)
800027d4: 87 32 08 09  	fld	ft5, 144(a6)
800027d8: 07 33 0f 00  	fld	ft6, 0(t5)
800027dc: 87 33 08 12  	fld	ft7, 288(a6)
800027e0: 07 b5 0f 00  	fld	fa0, 0(t6)
800027e4: 87 35 08 1b  	fld	fa1, 432(a6)
800027e8: 07 36 09 00  	fld	fa2, 0(s2)
800027ec: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800027f0: 07 32 08 24  	fld	ft4, 576(a6)
800027f4: 87 b2 09 00  	fld	ft5, 0(s3)
800027f8: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800027fc: 07 33 08 2d  	fld	ft6, 720(a6)
80002800: 87 33 0a 00  	fld	ft7, 0(s4)
80002804: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002808: 07 35 08 36  	fld	fa0, 864(a6)
8000280c: 87 b5 0a 00  	fld	fa1, 0(s5)
80002810: c3 71 c2 1a  	fmadd.d	ft3, ft4, fa2, ft3
80002814: 07 32 08 3f  	fld	ft4, 1008(a6)
80002818: 07 36 0b 00  	fld	fa2, 0(s6)
8000281c: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002820: 87 32 08 48  	fld	ft5, 1152(a6)
80002824: 07 b3 0b 00  	fld	ft6, 0(s7)
80002828: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
8000282c: 87 33 08 51  	fld	ft7, 1296(a6)
80002830: 07 35 0c 00  	fld	fa0, 0(s8)
80002834: c3 71 b2 1a  	fmadd.d	ft3, ft4, fa1, ft3
80002838: 07 32 08 5a  	fld	ft4, 1440(a6)
8000283c: 87 b5 0c 00  	fld	fa1, 0(s9)
80002840: c3 f1 c2 1a  	fmadd.d	ft3, ft5, fa2, ft3
80002844: 87 32 08 63  	fld	ft5, 1584(a6)
80002848: 07 36 0d 00  	fld	fa2, 0(s10)
8000284c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002850: 07 33 08 6c  	fld	ft6, 1728(a6)
80002854: 87 b3 0d 00  	fld	ft7, 0(s11)
80002858: c3 71 a2 1a  	fmadd.d	ft3, ft4, fa0, ft3
8000285c: 07 32 08 75  	fld	ft4, 1872(a6)
80002860: 07 b5 00 00  	fld	fa0, 0(ra)
80002864: c3 f1 b2 1a  	fmadd.d	ft3, ft5, fa1, ft3
80002868: 87 32 08 7e  	fld	ft5, 2016(a6)
8000286c: 87 b5 02 00  	fld	fa1, 0(t0)
80002870: 93 08 88 43  	addi	a7, a6, 1080
80002874: c3 71 c3 1a  	fmadd.d	ft3, ft6, fa2, ft3
80002878: 07 b3 88 43  	fld	ft6, 1080(a7)
8000287c: 07 36 03 00  	fld	fa2, 0(t1)
80002880: 13 05 08 48  	addi	a0, a6, 1152
80002884: c3 71 72 1a  	fmadd.d	ft3, ft4, ft7, ft3
80002888: 07 32 05 48  	fld	ft4, 1152(a0)
8000288c: 87 33 0e 00  	fld	ft7, 0(t3)
80002890: 13 05 88 4c  	addi	a0, a6, 1224
80002894: c3 f1 a2 1a  	fmadd.d	ft3, ft5, fa0, ft3
80002898: 87 32 85 4c  	fld	ft5, 1224(a0)
8000289c: 07 b5 0e 00  	fld	fa0, 0(t4)
800028a0: 13 05 08 51  	addi	a0, a6, 1296
800028a4: c3 71 b3 1a  	fmadd.d	ft3, ft6, fa1, ft3
800028a8: 07 33 05 51  	fld	ft6, 1296(a0)
800028ac: 87 35 04 00  	fld	fa1, 0(s0)
800028b0: 13 05 88 55  	addi	a0, a6, 1368
800028b4: c3 71 c2 1a  	fmadd.d	ft3, ft4, fa2, ft3
800028b8: 07 32 85 55  	fld	ft4, 1368(a0)
800028bc: 07 b6 05 00  	fld	fa2, 0(a1)
800028c0: 13 05 08 5a  	addi	a0, a6, 1440
800028c4: c3 f1 72 1a  	fmadd.d	ft3, ft5, ft7, ft3
800028c8: 87 32 05 5a  	fld	ft5, 1440(a0)
800028cc: 87 33 07 00  	fld	ft7, 0(a4)
800028d0: 13 05 88 5e  	addi	a0, a6, 1512
800028d4: c3 71 a3 1a  	fmadd.d	ft3, ft6, fa0, ft3
800028d8: 07 33 85 5e  	fld	ft6, 1512(a0)

800028dc <.LBB0_84>:
800028dc: 17 35 00 00  	auipc	a0, 3
800028e0: 13 05 c5 e9  	addi	a0, a0, -356
800028e4: 07 35 05 00  	fld	fa0, 0(a0)
800028e8: c3 71 b2 1a  	fmadd.d	ft3, ft4, fa1, ft3
800028ec: c3 f1 c2 1a  	fmadd.d	ft3, ft5, fa2, ft3
800028f0: c3 71 73 1a  	fmadd.d	ft3, ft6, ft7, ft3
;         x += alpha * A[i][k] * B[k][j];
800028f4: d3 f1 a1 12  	fmul.d	ft3, ft3, fa0
;       tmp[i][j] = x;
800028f8: 33 85 c6 00  	add	a0, a3, a2
;     for (j = 0; j < nj; j++) {
800028fc: 13 06 86 00  	addi	a2, a2, 8
;       tmp[i][j] = x;
80002900: 27 30 35 00  	fsd	ft3, 0(a0)
;     for (j = 0; j < nj; j++) {
80002904: e3 1c f6 ea  	bne	a2, a5, 0x800027bc <.LBB0_83+0xc8>
80002908: 03 25 81 08  	lw	a0, 136(sp)
;   for (i = 0; i < ni; i++) {
8000290c: 13 05 15 00  	addi	a0, a0, 1
80002910: 93 86 06 09  	addi	a3, a3, 144
80002914: 03 23 01 03  	lw	t1, 48(sp)
80002918: 93 05 00 01  	addi	a1, zero, 16
8000291c: e3 1a b5 e2  	bne	a0, a1, 0x80002750 <.LBB0_83+0x5c>
80002920: 83 20 01 02  	lw	ra, 32(sp)
80002924: 83 26 01 08  	lw	a3, 128(sp)
;   for (i = 0; i < ni; i++) {
80002928: 33 b5 16 00  	sltu	a0, a3, ra
8000292c: 83 23 81 02  	lw	t2, 40(sp)
80002930: 83 25 41 01  	lw	a1, 20(sp)
80002934: b3 b5 75 00  	sltu	a1, a1, t2
80002938: 33 e5 a5 00  	or	a0, a1, a0
8000293c: 83 2d c1 02  	lw	s11, 44(sp)
80002940: b3 b5 b6 01  	sltu	a1, a3, s11
80002944: 03 26 81 07  	lw	a2, 120(sp)
80002948: 33 36 76 00  	sltu	a2, a2, t2
8000294c: b3 65 b6 00  	or	a1, a2, a1
80002950: 33 75 b5 00  	and	a0, a0, a1
80002954: 83 25 41 08  	lw	a1, 132(sp)
80002958: 33 f5 a5 00  	and	a0, a1, a0
8000295c: 83 25 41 07  	lw	a1, 116(sp)
80002960: 33 f5 a5 00  	and	a0, a1, a0
80002964: 63 00 05 1a  	beqz	a0, 0x80002b04 <.LBB0_85+0xe8>
80002968: 13 05 00 00  	mv	a0, zero
8000296c: 93 05 80 00  	addi	a1, zero, 8
80002970: 13 06 70 01  	addi	a2, zero, 23
;   for (i = 0; i < ni; i++) {
80002974: 93 06 00 04  	addi	a3, zero, 64
80002978: 13 07 00 0c  	addi	a4, zero, 192
8000297c: ab 20 d6 00  	scfgw	a2, a3
80002980: ab a0 e5 00  	scfgw	a1, a4
80002984: 93 06 f0 00  	addi	a3, zero, 15
80002988: 13 07 00 06  	addi	a4, zero, 96
8000298c: 93 07 00 0e  	addi	a5, zero, 224
80002990: ab a0 e6 00  	scfgw	a3, a4
80002994: ab a0 f5 00  	scfgw	a1, a5
80002998: 13 07 00 02  	addi	a4, zero, 32
8000299c: ab 20 e0 00  	scfgw	zero, a4
800029a0: 2b a0 03 32  	scfgwi	t2, 800
800029a4: 13 07 10 00  	addi	a4, zero, 1
800029a8: 93 07 07 04  	addi	a5, a4, 64
800029ac: 93 04 07 0c  	addi	s1, a4, 192
800029b0: ab 20 f6 00  	scfgw	a2, a5
800029b4: ab a0 95 00  	scfgw	a1, s1
800029b8: 93 07 07 06  	addi	a5, a4, 96
800029bc: 93 04 07 0e  	addi	s1, a4, 224
800029c0: ab a0 f6 00  	scfgw	a3, a5
800029c4: ab a0 95 00  	scfgw	a1, s1
800029c8: 13 07 07 02  	addi	a4, a4, 32
800029cc: ab 20 e0 00  	scfgw	zero, a4
800029d0: 2b a0 13 3a  	scfgwi	t2, 929
800029d4: 13 07 10 01  	addi	a4, zero, 17
800029d8: 93 07 20 00  	addi	a5, zero, 2
800029dc: 93 84 07 04  	addi	s1, a5, 64
800029e0: ab 20 97 00  	scfgw	a4, s1
800029e4: 13 87 07 0c  	addi	a4, a5, 192
800029e8: ab a0 e5 00  	scfgw	a1, a4
800029ec: 13 07 80 f7  	addi	a4, zero, -136
800029f0: 93 84 07 06  	addi	s1, a5, 96
800029f4: ab 20 96 00  	scfgw	a2, s1
800029f8: 13 86 07 0e  	addi	a2, a5, 224
800029fc: ab 20 c7 00  	scfgw	a4, a2
80002a00: 13 86 07 08  	addi	a2, a5, 128
80002a04: 13 87 07 10  	addi	a4, a5, 256
80002a08: ab a0 c6 00  	scfgw	a3, a2
80002a0c: ab a0 e5 00  	scfgw	a1, a4
80002a10: 93 85 07 02  	addi	a1, a5, 32
80002a14: ab 20 b0 00  	scfgw	zero, a1
80002a18: 2b a0 2d 34  	scfgwi	s11, 834

80002a1c <.LBB0_85>:
80002a1c: 97 35 00 00  	auipc	a1, 3
80002a20: 93 85 45 d6  	addi	a1, a1, -668
80002a24: 87 b1 05 00  	fld	ft3, 0(a1)
;   for (i = 0; i < ni; i++) {
80002a28: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80002a2c: 93 05 00 0c  	addi	a1, zero, 192
80002a30: 13 06 00 01  	addi	a2, zero, 16
80002a34: 93 06 00 00  	mv	a3, zero
;         x += tmp[i][k] * C[k][j];
80002a38: 33 87 d0 00  	add	a4, ra, a3
80002a3c: 07 33 07 00  	fld	ft6, 0(a4)
80002a40: 07 35 07 0c  	fld	fa0, 192(a4)
;       x *= beta;
80002a44: 53 72 30 12  	fmul.d	ft4, ft0, ft3
;         x += tmp[i][k] * C[k][j];
80002a48: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002a4c: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002a50: 07 33 07 18  	fld	ft6, 384(a4)
80002a54: 07 35 07 24  	fld	fa0, 576(a4)
80002a58: 07 36 07 30  	fld	fa2, 768(a4)
80002a5c: 07 37 07 3c  	fld	fa4, 960(a4)
80002a60: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002a64: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002a68: 43 72 26 22  	fmadd.d	ft4, fa2, ft2, ft4
80002a6c: 43 72 27 22  	fmadd.d	ft4, fa4, ft2, ft4
80002a70: 07 33 07 48  	fld	ft6, 1152(a4)
80002a74: 07 35 07 54  	fld	fa0, 1344(a4)
80002a78: 07 36 07 60  	fld	fa2, 1536(a4)
80002a7c: 07 37 07 6c  	fld	fa4, 1728(a4)
80002a80: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002a84: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002a88: 43 72 26 22  	fmadd.d	ft4, fa2, ft2, ft4
80002a8c: 43 72 27 22  	fmadd.d	ft4, fa4, ft2, ft4
80002a90: 07 33 07 78  	fld	ft6, 1920(a4)
80002a94: 93 07 07 42  	addi	a5, a4, 1056
80002a98: 07 b5 07 42  	fld	fa0, 1056(a5)
80002a9c: 93 07 07 48  	addi	a5, a4, 1152
80002aa0: 07 b6 07 48  	fld	fa2, 1152(a5)
80002aa4: 93 07 07 4e  	addi	a5, a4, 1248
80002aa8: 07 b7 07 4e  	fld	fa4, 1248(a5)
80002aac: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002ab0: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002ab4: 43 72 26 22  	fmadd.d	ft4, fa2, ft2, ft4
80002ab8: 43 72 27 22  	fmadd.d	ft4, fa4, ft2, ft4
80002abc: 93 07 07 54  	addi	a5, a4, 1344
80002ac0: 07 b3 07 54  	fld	ft6, 1344(a5)
80002ac4: 93 07 07 5a  	addi	a5, a4, 1440
80002ac8: 07 b5 07 5a  	fld	fa0, 1440(a5)
80002acc: 93 07 07 60  	addi	a5, a4, 1536
80002ad0: 07 b6 07 60  	fld	fa2, 1536(a5)
80002ad4: 13 07 07 66  	addi	a4, a4, 1632
80002ad8: 07 37 07 66  	fld	fa4, 1632(a4)
80002adc: 43 72 23 22  	fmadd.d	ft4, ft6, ft2, ft4
80002ae0: 43 72 25 22  	fmadd.d	ft4, fa0, ft2, ft4
80002ae4: 43 72 26 22  	fmadd.d	ft4, fa2, ft2, ft4
80002ae8: 43 72 27 22  	fmadd.d	ft4, fa4, ft2, ft4
;       D[i][j] = x;
80002aec: d3 00 42 22  	fmv.d	ft1, ft4
;     for (j = 0; j < nl; j++) {
80002af0: 93 86 86 00  	addi	a3, a3, 8
80002af4: e3 92 b6 f4  	bne	a3, a1, 0x80002a38 <.LBB0_85+0x1c>
;   for (i = 0; i < ni; i++) {
80002af8: 13 05 15 00  	addi	a0, a0, 1
80002afc: e3 1c c5 f2  	bne	a0, a2, 0x80002a34 <.LBB0_85+0x18>
80002b00: 6f 00 00 2b  	j	0x80002db0 <.LBB0_86+0x110>
80002b04: 13 85 00 4e  	addi	a0, ra, 1248
80002b08: 13 08 05 4e  	addi	a6, a0, 1248
80002b0c: 13 85 c0 53  	addi	a0, ra, 1340
80002b10: 13 05 c5 53  	addi	a0, a0, 1340
80002b14: 13 83 8d 04  	addi	t1, s11, 72
80002b18: 83 25 41 02  	lw	a1, 36(sp)
80002b1c: 33 07 b3 00  	add	a4, t1, a1
80002b20: 93 88 00 6c  	addi	a7, ra, 1728
80002b24: 93 87 80 77  	addi	a5, ra, 1912
80002b28: b3 34 75 00  	sltu	s1, a0, t2
80002b2c: 33 b4 06 01  	sltu	s0, a3, a6
80002b30: b3 e4 84 00  	or	s1, s1, s0
80002b34: 33 34 77 00  	sltu	s0, a4, t2
80002b38: 33 b6 66 00  	sltu	a2, a3, t1
80002b3c: 33 66 c4 00  	or	a2, s0, a2
80002b40: 33 b4 77 00  	sltu	s0, a5, t2
80002b44: b3 b5 16 01  	sltu	a1, a3, a7
80002b48: b3 65 b4 00  	or	a1, s0, a1
80002b4c: 33 f6 c4 00  	and	a2, s1, a2
80002b50: b3 f5 c5 00  	and	a1, a1, a2
80002b54: 13 56 48 01  	srli	a2, a6, 20
80002b58: 33 36 c0 00  	snez	a2, a2
80002b5c: b7 04 12 00  	lui	s1, 288
80002b60: 93 84 14 00  	addi	s1, s1, 1
80002b64: 33 35 95 00  	sltu	a0, a0, s1
80002b68: 33 75 a6 00  	and	a0, a2, a0
80002b6c: 33 75 b5 00  	and	a0, a0, a1
80002b70: 93 55 43 01  	srli	a1, t1, 20
80002b74: b3 35 b0 00  	snez	a1, a1
80002b78: 33 36 97 00  	sltu	a2, a4, s1
80002b7c: b3 f5 c5 00  	and	a1, a1, a2
80002b80: 33 f5 a5 00  	and	a0, a1, a0
80002b84: 93 d5 48 01  	srli	a1, a7, 20
80002b88: b3 35 b0 00  	snez	a1, a1
80002b8c: 33 b6 97 00  	sltu	a2, a5, s1
80002b90: b3 f5 c5 00  	and	a1, a1, a2
80002b94: 93 02 00 00  	mv	t0, zero
80002b98: 33 f5 a5 00  	and	a0, a1, a0
80002b9c: 63 0e 05 20  	beqz	a0, 0x80002db8 <.LBB0_86+0x118>
80002ba0: 13 05 80 00  	addi	a0, zero, 8
80002ba4: 93 05 70 01  	addi	a1, zero, 23
;   for (i = 0; i < ni; i++) {
80002ba8: 13 06 00 04  	addi	a2, zero, 64
80002bac: 13 07 00 0c  	addi	a4, zero, 192
80002bb0: ab a0 c5 00  	scfgw	a1, a2
80002bb4: ab 20 e5 00  	scfgw	a0, a4
80002bb8: 13 06 80 f4  	addi	a2, zero, -184
80002bbc: 13 07 f0 00  	addi	a4, zero, 15
80002bc0: 93 07 00 06  	addi	a5, zero, 96
80002bc4: 93 04 00 0e  	addi	s1, zero, 224
80002bc8: ab 20 f7 00  	scfgw	a4, a5
80002bcc: ab 20 96 00  	scfgw	a2, s1
80002bd0: 93 07 00 02  	addi	a5, zero, 32
80002bd4: ab 20 f0 00  	scfgw	zero, a5
80002bd8: 2b 20 08 32  	scfgwi	a6, 800
80002bdc: 93 07 10 00  	addi	a5, zero, 1
80002be0: 93 84 07 04  	addi	s1, a5, 64
80002be4: 13 84 07 0c  	addi	s0, a5, 192
80002be8: ab a0 95 00  	scfgw	a1, s1
80002bec: ab 20 80 00  	scfgw	zero, s0
80002bf0: 13 08 00 09  	addi	a6, zero, 144
80002bf4: 93 84 07 06  	addi	s1, a5, 96
80002bf8: ab 20 97 00  	scfgw	a4, s1
80002bfc: 93 84 07 0e  	addi	s1, a5, 224
80002c00: ab 20 98 00  	scfgw	a6, s1
80002c04: 93 87 07 02  	addi	a5, a5, 32
80002c08: ab 20 f0 00  	scfgw	zero, a5
80002c0c: 2b 20 13 32  	scfgwi	t1, 801
80002c10: 93 06 20 00  	addi	a3, zero, 2
80002c14: 93 87 06 04  	addi	a5, a3, 64
80002c18: 93 84 06 0c  	addi	s1, a3, 192
80002c1c: ab a0 f5 00  	scfgw	a1, a5
80002c20: ab 20 95 00  	scfgw	a0, s1
80002c24: 13 85 06 06  	addi	a0, a3, 96
80002c28: 93 85 06 0e  	addi	a1, a3, 224
80002c2c: ab 20 a7 00  	scfgw	a4, a0
80002c30: ab 20 b6 00  	scfgw	a2, a1
80002c34: 13 85 06 02  	addi	a0, a3, 32
80002c38: ab 20 a0 00  	scfgw	zero, a0
80002c3c: 2b a0 28 32  	scfgwi	a7, 802
80002c40: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002c44: 13 03 00 0c  	addi	t1, zero, 192
80002c48: 93 08 00 01  	addi	a7, zero, 16
80002c4c: 93 07 00 00  	mv	a5, zero
;         x += tmp[i][k] * C[k][j];
80002c50: 33 85 02 03  	mul	a0, t0, a6
80002c54: b3 84 ad 00  	add	s1, s11, a0
80002c58: 13 8e 84 00  	addi	t3, s1, 8
80002c5c: 93 8e 04 01  	addi	t4, s1, 16
80002c60: 13 8f 84 01  	addi	t5, s1, 24
80002c64: 93 8f 04 02  	addi	t6, s1, 32
80002c68: 13 89 84 02  	addi	s2, s1, 40
80002c6c: 93 89 04 03  	addi	s3, s1, 48
80002c70: 13 8a 84 03  	addi	s4, s1, 56
80002c74: 93 8a 04 04  	addi	s5, s1, 64
80002c78: 13 8b 04 05  	addi	s6, s1, 80
80002c7c: 93 8b 84 05  	addi	s7, s1, 88
80002c80: 13 8c 04 06  	addi	s8, s1, 96
80002c84: 93 8c 84 06  	addi	s9, s1, 104
80002c88: 13 8d 04 07  	addi	s10, s1, 112
80002c8c: 93 85 84 07  	addi	a1, s1, 120
80002c90: 93 86 04 08  	addi	a3, s1, 128
80002c94: 13 85 84 08  	addi	a0, s1, 136
;       double x = D[i][j];
80002c98: 33 86 f3 00  	add	a2, t2, a5
80002c9c: 87 31 06 00  	fld	ft3, 0(a2)

80002ca0 <.LBB0_86>:
80002ca0: 17 37 00 00  	auipc	a4, 3
80002ca4: 13 07 07 ae  	addi	a4, a4, -1312
80002ca8: 07 32 07 00  	fld	ft4, 0(a4)
;         x += tmp[i][k] * C[k][j];
80002cac: 87 b2 04 00  	fld	ft5, 0(s1)
80002cb0: 33 87 f0 00  	add	a4, ra, a5
80002cb4: 07 33 07 00  	fld	ft6, 0(a4)
80002cb8: 87 33 0e 00  	fld	ft7, 0(t3)
80002cbc: 07 35 07 0c  	fld	fa0, 192(a4)
;       x *= beta;
80002cc0: d3 f1 41 12  	fmul.d	ft3, ft3, ft4
;         x += tmp[i][k] * C[k][j];
80002cc4: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002cc8: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002ccc: 07 b2 0e 00  	fld	ft4, 0(t4)
80002cd0: 87 32 07 18  	fld	ft5, 384(a4)
80002cd4: 07 33 0f 00  	fld	ft6, 0(t5)
80002cd8: 87 33 07 24  	fld	ft7, 576(a4)
80002cdc: 07 b5 0f 00  	fld	fa0, 0(t6)
80002ce0: 87 35 07 30  	fld	fa1, 768(a4)
80002ce4: 07 36 09 00  	fld	fa2, 0(s2)
80002ce8: 87 36 07 3c  	fld	fa3, 960(a4)
80002cec: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002cf0: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002cf4: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002cf8: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002cfc: 07 b2 09 00  	fld	ft4, 0(s3)
80002d00: 87 32 07 48  	fld	ft5, 1152(a4)
80002d04: 07 33 0a 00  	fld	ft6, 0(s4)
80002d08: 87 33 07 54  	fld	ft7, 1344(a4)
80002d0c: 07 b5 0a 00  	fld	fa0, 0(s5)
80002d10: 87 35 07 60  	fld	fa1, 1536(a4)
80002d14: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d18: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002d1c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002d20: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002d24: 07 32 0b 00  	fld	ft4, 0(s6)
80002d28: 87 32 07 78  	fld	ft5, 1920(a4)
80002d2c: 07 b3 0b 00  	fld	ft6, 0(s7)
80002d30: 13 04 07 42  	addi	s0, a4, 1056
80002d34: 87 33 04 42  	fld	ft7, 1056(s0)
80002d38: 07 35 0c 00  	fld	fa0, 0(s8)
80002d3c: 13 04 07 48  	addi	s0, a4, 1152
80002d40: 87 35 04 48  	fld	fa1, 1152(s0)
80002d44: 07 b6 0c 00  	fld	fa2, 0(s9)
80002d48: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d4c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002d50: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002d54: c3 71 c0 1a  	fmadd.d	ft3, ft0, fa2, ft3
80002d58: 07 32 0d 00  	fld	ft4, 0(s10)
80002d5c: 13 04 07 54  	addi	s0, a4, 1344
80002d60: 87 32 04 54  	fld	ft5, 1344(s0)
80002d64: 07 b3 05 00  	fld	ft6, 0(a1)
80002d68: 13 04 07 5a  	addi	s0, a4, 1440
80002d6c: 87 33 04 5a  	fld	ft7, 1440(s0)
80002d70: 07 b5 06 00  	fld	fa0, 0(a3)
80002d74: 13 04 07 60  	addi	s0, a4, 1536
80002d78: 87 35 04 60  	fld	fa1, 1536(s0)
80002d7c: 07 36 05 00  	fld	fa2, 0(a0)
80002d80: 13 07 07 66  	addi	a4, a4, 1632
80002d84: 87 36 07 66  	fld	fa3, 1632(a4)
80002d88: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d8c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002d90: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002d94: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;     for (j = 0; j < nl; j++) {
80002d98: 93 87 87 00  	addi	a5, a5, 8
;       D[i][j] = x;
80002d9c: 27 30 36 00  	fsd	ft3, 0(a2)
;     for (j = 0; j < nl; j++) {
80002da0: e3 9c 67 ee  	bne	a5, t1, 0x80002c98 <.LBB0_85+0x27c>
;   for (i = 0; i < ni; i++) {
80002da4: 93 82 12 00  	addi	t0, t0, 1
80002da8: 93 83 03 0c  	addi	t2, t2, 192
80002dac: e3 90 12 eb  	bne	t0, a7, 0x80002c4c <.LBB0_85+0x230>
80002db0: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002db4: 6f 00 c0 18  	j	0x80002f40 <.LBB0_87+0x124>
80002db8: 13 08 00 09  	addi	a6, zero, 144
80002dbc: 13 03 00 0c  	addi	t1, zero, 192
80002dc0: 93 08 00 01  	addi	a7, zero, 16
80002dc4: 93 07 00 00  	mv	a5, zero
;         x += tmp[i][k] * C[k][j];
80002dc8: 33 85 02 03  	mul	a0, t0, a6
80002dcc: b3 84 ad 00  	add	s1, s11, a0
80002dd0: 13 8e 84 00  	addi	t3, s1, 8
80002dd4: 93 8e 04 01  	addi	t4, s1, 16
80002dd8: 13 8f 84 01  	addi	t5, s1, 24
80002ddc: 93 8f 04 02  	addi	t6, s1, 32
80002de0: 13 89 84 02  	addi	s2, s1, 40
80002de4: 93 89 04 03  	addi	s3, s1, 48
80002de8: 13 8a 84 03  	addi	s4, s1, 56
80002dec: 93 8a 04 04  	addi	s5, s1, 64
80002df0: 13 8b 84 04  	addi	s6, s1, 72
80002df4: 93 8b 04 05  	addi	s7, s1, 80
80002df8: 13 8c 84 05  	addi	s8, s1, 88
80002dfc: 93 8c 04 06  	addi	s9, s1, 96
80002e00: 13 8d 84 06  	addi	s10, s1, 104
80002e04: 93 8d 04 07  	addi	s11, s1, 112
80002e08: 93 86 84 07  	addi	a3, s1, 120
80002e0c: 13 85 04 08  	addi	a0, s1, 128
80002e10: 13 86 84 08  	addi	a2, s1, 136
;       double x = D[i][j];
80002e14: 33 87 f3 00  	add	a4, t2, a5
80002e18: 87 31 07 00  	fld	ft3, 0(a4)

80002e1c <.LBB0_87>:
80002e1c: 17 34 00 00  	auipc	s0, 3
80002e20: 13 04 44 96  	addi	s0, s0, -1692
80002e24: 07 32 04 00  	fld	ft4, 0(s0)
;         x += tmp[i][k] * C[k][j];
80002e28: 87 b2 04 00  	fld	ft5, 0(s1)
80002e2c: 33 84 f0 00  	add	s0, ra, a5
80002e30: 07 33 04 00  	fld	ft6, 0(s0)
80002e34: 87 33 0e 00  	fld	ft7, 0(t3)
80002e38: 07 35 04 0c  	fld	fa0, 192(s0)
;       x *= beta;
80002e3c: d3 f1 41 12  	fmul.d	ft3, ft3, ft4
;         x += tmp[i][k] * C[k][j];
80002e40: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002e44: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002e48: 07 b2 0e 00  	fld	ft4, 0(t4)
80002e4c: 87 32 04 18  	fld	ft5, 384(s0)
80002e50: 07 33 0f 00  	fld	ft6, 0(t5)
80002e54: 87 33 04 24  	fld	ft7, 576(s0)
80002e58: 07 b5 0f 00  	fld	fa0, 0(t6)
80002e5c: 87 35 04 30  	fld	fa1, 768(s0)
80002e60: 07 36 09 00  	fld	fa2, 0(s2)
80002e64: 87 36 04 3c  	fld	fa3, 960(s0)
80002e68: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002e6c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002e70: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002e74: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002e78: 07 b2 09 00  	fld	ft4, 0(s3)
80002e7c: 87 32 04 48  	fld	ft5, 1152(s0)
80002e80: 07 33 0a 00  	fld	ft6, 0(s4)
80002e84: 87 33 04 54  	fld	ft7, 1344(s0)
80002e88: 07 b5 0a 00  	fld	fa0, 0(s5)
80002e8c: 87 35 04 60  	fld	fa1, 1536(s0)
80002e90: 07 36 0b 00  	fld	fa2, 0(s6)
80002e94: 87 36 04 6c  	fld	fa3, 1728(s0)
80002e98: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002e9c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002ea0: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002ea4: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002ea8: 07 b2 0b 00  	fld	ft4, 0(s7)
80002eac: 87 32 04 78  	fld	ft5, 1920(s0)
80002eb0: 07 33 0c 00  	fld	ft6, 0(s8)
80002eb4: 93 05 04 42  	addi	a1, s0, 1056
80002eb8: 87 b3 05 42  	fld	ft7, 1056(a1)
80002ebc: 07 b5 0c 00  	fld	fa0, 0(s9)
80002ec0: 93 05 04 48  	addi	a1, s0, 1152
80002ec4: 87 b5 05 48  	fld	fa1, 1152(a1)
80002ec8: 07 36 0d 00  	fld	fa2, 0(s10)
80002ecc: 93 05 04 4e  	addi	a1, s0, 1248
80002ed0: 87 b6 05 4e  	fld	fa3, 1248(a1)
80002ed4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002ed8: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002edc: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002ee0: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002ee4: 07 b2 0d 00  	fld	ft4, 0(s11)
80002ee8: 93 05 04 54  	addi	a1, s0, 1344
80002eec: 87 b2 05 54  	fld	ft5, 1344(a1)
80002ef0: 07 b3 06 00  	fld	ft6, 0(a3)
80002ef4: 93 05 04 5a  	addi	a1, s0, 1440
80002ef8: 87 b3 05 5a  	fld	ft7, 1440(a1)
80002efc: 07 35 05 00  	fld	fa0, 0(a0)
80002f00: 93 05 04 60  	addi	a1, s0, 1536
80002f04: 87 b5 05 60  	fld	fa1, 1536(a1)
80002f08: 07 36 06 00  	fld	fa2, 0(a2)
80002f0c: 93 05 04 66  	addi	a1, s0, 1632
80002f10: 87 b6 05 66  	fld	fa3, 1632(a1)
80002f14: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002f18: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002f1c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002f20: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;     for (j = 0; j < nl; j++) {
80002f24: 93 87 87 00  	addi	a5, a5, 8
;       D[i][j] = x;
80002f28: 27 30 37 00  	fsd	ft3, 0(a4)
;     for (j = 0; j < nl; j++) {
80002f2c: e3 94 67 ee  	bne	a5, t1, 0x80002e14 <.LBB0_86+0x174>
;   for (i = 0; i < ni; i++) {
80002f30: 93 82 12 00  	addi	t0, t0, 1
80002f34: 93 83 03 0c  	addi	t2, t2, 192
80002f38: 83 2d c1 02  	lw	s11, 44(sp)
80002f3c: e3 94 12 e9  	bne	t0, a7, 0x80002dc4 <.LBB0_86+0x124>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002f40: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80002f44: 83 25 c1 07  	lw	a1, 124(sp)
80002f48: b3 05 b5 40  	sub	a1, a0, a1

80002f4c <.LBB0_88>:
80002f4c: 17 25 00 00  	auipc	a0, 2
80002f50: 13 05 55 58  	addi	a0, a0, 1413
80002f54: 97 00 00 00  	auipc	ra, 0
80002f58: e7 80 00 24  	jalr	576(ra)
80002f5c: 03 25 41 08  	lw	a0, 132(sp)
80002f60: 63 0e 05 0a  	beqz	a0, 0x8000301c <.LBB0_88+0xd0>
80002f64: 13 05 80 00  	addi	a0, zero, 8
80002f68: 93 05 70 01  	addi	a1, zero, 23
;     for (int i = 0; i < n; i++){
80002f6c: 13 06 00 04  	addi	a2, zero, 64
80002f70: 93 06 00 0c  	addi	a3, zero, 192
80002f74: ab a0 c5 00  	scfgw	a1, a2
80002f78: ab 20 d5 00  	scfgw	a0, a3
80002f7c: 93 05 f0 00  	addi	a1, zero, 15
80002f80: 13 06 00 06  	addi	a2, zero, 96
80002f84: 93 06 00 0e  	addi	a3, zero, 224
80002f88: ab a0 c5 00  	scfgw	a1, a2
80002f8c: ab 20 d5 00  	scfgw	a0, a3
80002f90: 13 05 00 02  	addi	a0, zero, 32
80002f94: ab 20 a0 00  	scfgw	zero, a0
80002f98: 03 25 81 02  	lw	a0, 40(sp)
80002f9c: 2b 20 05 32  	scfgwi	a0, 800
80002fa0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002fa4: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002fa8: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
80002fac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fb0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fb4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fb8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fbc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fc0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fc4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fc8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fcc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fd0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fd4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fd8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fdc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fe0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fe4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fe8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002fec: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002ff0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002ff4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002ff8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002ffc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003000: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003004: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80003008: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
8000300c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80003010: e3 1e 05 f8  	bnez	a0, 0x80002fac <.LBB0_88+0x60>
80003014: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003018: 6f 00 00 0e  	j	0x800030f8 <.LBB0_89>
;     for (int i = 0; i < n; i++){
8000301c: 03 25 81 02  	lw	a0, 40(sp)
80003020: 13 05 05 06  	addi	a0, a0, 96
80003024: d3 01 00 d2  	fcvt.d.w	ft3, zero
80003028: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
8000302c: 07 32 05 fa  	fld	ft4, -96(a0)
80003030: 87 32 85 fa  	fld	ft5, -88(a0)
80003034: 07 33 05 fb  	fld	ft6, -80(a0)
80003038: 87 33 85 fb  	fld	ft7, -72(a0)
8000303c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003040: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003044: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003048: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
8000304c: 07 32 05 fc  	fld	ft4, -64(a0)
80003050: 87 32 85 fc  	fld	ft5, -56(a0)
80003054: 07 33 05 fd  	fld	ft6, -48(a0)
80003058: 87 33 85 fd  	fld	ft7, -40(a0)
8000305c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003060: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003064: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003068: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
8000306c: 07 32 05 fe  	fld	ft4, -32(a0)
80003070: 87 32 85 fe  	fld	ft5, -24(a0)
80003074: 07 33 05 ff  	fld	ft6, -16(a0)
80003078: 87 33 85 ff  	fld	ft7, -8(a0)
8000307c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003080: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003084: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003088: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
8000308c: 07 32 05 00  	fld	ft4, 0(a0)
80003090: 87 32 85 00  	fld	ft5, 8(a0)
80003094: 07 33 05 01  	fld	ft6, 16(a0)
80003098: 87 33 85 01  	fld	ft7, 24(a0)
8000309c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800030a0: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800030a4: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800030a8: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800030ac: 07 32 05 02  	fld	ft4, 32(a0)
800030b0: 87 32 85 02  	fld	ft5, 40(a0)
800030b4: 07 33 05 03  	fld	ft6, 48(a0)
800030b8: 87 33 85 03  	fld	ft7, 56(a0)
800030bc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800030c0: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800030c4: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800030c8: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800030cc: 07 32 05 04  	fld	ft4, 64(a0)
800030d0: 87 32 85 04  	fld	ft5, 72(a0)
800030d4: 07 33 05 05  	fld	ft6, 80(a0)
800030d8: 87 33 85 05  	fld	ft7, 88(a0)
800030dc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800030e0: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800030e4: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800030e8: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
800030ec: 93 85 f5 ff  	addi	a1, a1, -1
800030f0: 13 05 05 0c  	addi	a0, a0, 192
800030f4: e3 9c 05 f2  	bnez	a1, 0x8000302c <.LBB0_88+0xe0>

800030f8 <.LBB0_89>:
800030f8: 17 25 00 00  	auipc	a0, 2
800030fc: 13 05 05 69  	addi	a0, a0, 1680
80003100: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80003104: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80003108: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
8000310c: 27 38 81 08  	fsd	fs0, 144(sp)
80003110: 03 26 01 09  	lw	a2, 144(sp)
80003114: 83 26 41 09  	lw	a3, 148(sp)

80003118 <.LBB0_90>:
80003118: 17 25 00 00  	auipc	a0, 2
8000311c: 13 05 d5 3a  	addi	a0, a0, 941
80003120: 97 00 00 00  	auipc	ra, 0
80003124: e7 80 40 07  	jalr	116(ra)

80003128 <.LBB0_91>:
80003128: 17 25 00 00  	auipc	a0, 2
8000312c: 13 05 85 66  	addi	a0, a0, 1640
80003130: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80003134: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80003138: 87 3b 81 09  	fld	fs7, 152(sp)
8000313c: 07 3b 01 0a  	fld	fs6, 160(sp)
80003140: 87 3a 81 0a  	fld	fs5, 168(sp)
80003144: 07 3a 01 0b  	fld	fs4, 176(sp)
80003148: 87 39 81 0b  	fld	fs3, 184(sp)
8000314c: 07 39 01 0c  	fld	fs2, 192(sp)
80003150: 87 34 81 0c  	fld	fs1, 200(sp)
80003154: 07 34 01 0d  	fld	fs0, 208(sp)
80003158: 83 2d c1 0d  	lw	s11, 220(sp)
8000315c: 03 2d 01 0e  	lw	s10, 224(sp)
80003160: 83 2c 41 0e  	lw	s9, 228(sp)
80003164: 03 2c 81 0e  	lw	s8, 232(sp)
80003168: 83 2b c1 0e  	lw	s7, 236(sp)
8000316c: 03 2b 01 0f  	lw	s6, 240(sp)
80003170: 83 2a 41 0f  	lw	s5, 244(sp)
80003174: 03 2a 81 0f  	lw	s4, 248(sp)
80003178: 83 29 c1 0f  	lw	s3, 252(sp)
8000317c: 03 29 01 10  	lw	s2, 256(sp)
80003180: 83 24 41 10  	lw	s1, 260(sp)
80003184: 03 24 81 10  	lw	s0, 264(sp)
80003188: 83 20 c1 10  	lw	ra, 268(sp)
8000318c: 13 01 01 11  	addi	sp, sp, 272
80003190: 67 80 00 00  	ret

80003194 <printf_>:
; {
80003194: 13 01 01 fd  	addi	sp, sp, -48
80003198: 23 26 11 00  	sw	ra, 12(sp)
8000319c: 93 02 05 00  	mv	t0, a0
800031a0: 23 26 11 03  	sw	a7, 44(sp)
800031a4: 23 24 01 03  	sw	a6, 40(sp)
800031a8: 23 22 f1 02  	sw	a5, 36(sp)
800031ac: 23 20 e1 02  	sw	a4, 32(sp)
800031b0: 23 2e d1 00  	sw	a3, 28(sp)
800031b4: 23 2c c1 00  	sw	a2, 24(sp)
800031b8: 23 2a b1 00  	sw	a1, 20(sp)
800031bc: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
800031c0: 23 24 a1 00  	sw	a0, 8(sp)

800031c4 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
800031c4: 17 15 00 00  	auipc	a0, 1
800031c8: 13 05 45 c2  	addi	a0, a0, -988
800031cc: 93 05 71 00  	addi	a1, sp, 7
800031d0: 13 06 f0 ff  	addi	a2, zero, -1
800031d4: 13 07 41 01  	addi	a4, sp, 20
800031d8: 93 86 02 00  	mv	a3, t0
800031dc: 97 00 00 00  	auipc	ra, 0
800031e0: e7 80 40 01  	jalr	20(ra)
;   return ret;
800031e4: 83 20 c1 00  	lw	ra, 12(sp)
800031e8: 13 01 01 03  	addi	sp, sp, 48
800031ec: 67 80 00 00  	ret

800031f0 <_vsnprintf.llvm.11632292163828655644>:
; {
800031f0: 13 01 01 f9  	addi	sp, sp, -112
800031f4: 23 26 11 06  	sw	ra, 108(sp)
800031f8: 23 24 81 06  	sw	s0, 104(sp)
800031fc: 23 22 91 06  	sw	s1, 100(sp)
80003200: 23 20 21 07  	sw	s2, 96(sp)
80003204: 23 2e 31 05  	sw	s3, 92(sp)
80003208: 23 2c 41 05  	sw	s4, 88(sp)
8000320c: 23 2a 51 05  	sw	s5, 84(sp)
80003210: 23 28 61 05  	sw	s6, 80(sp)
80003214: 23 26 71 05  	sw	s7, 76(sp)
80003218: 23 24 81 05  	sw	s8, 72(sp)
8000321c: 23 22 91 05  	sw	s9, 68(sp)
80003220: 23 20 a1 05  	sw	s10, 64(sp)
80003224: 23 2e b1 03  	sw	s11, 60(sp)
80003228: 93 09 07 00  	mv	s3, a4
8000322c: 13 84 06 00  	mv	s0, a3
80003230: 93 0a 06 00  	mv	s5, a2
80003234: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80003238: 63 86 05 00  	beqz	a1, 0x80003244 <.LBB1_183>
8000323c: 13 09 05 00  	mv	s2, a0
80003240: 6f 00 c0 00  	j	0x8000324c <.LBB1_183+0x8>

80003244 <.LBB1_183>:
80003244: 17 19 00 00  	auipc	s2, 1
80003248: 13 09 09 c5  	addi	s2, s2, -944
8000324c: 13 0c 00 00  	mv	s8, zero
80003250: 13 0b 50 02  	addi	s6, zero, 37
80003254: 93 0d 00 01  	addi	s11, zero, 16
80003258: 93 0b e0 02  	addi	s7, zero, 46
8000325c: 37 15 00 00  	lui	a0, 1
80003260: 13 05 05 80  	addi	a0, a0, -2048
80003264: 23 2c a1 00  	sw	a0, 24(sp)
80003268: 37 05 01 00  	lui	a0, 16
8000326c: 13 05 f5 ff  	addi	a0, a0, -1
80003270: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80003274: 13 0d 24 00  	addi	s10, s0, 2
80003278: 93 0c 0c 00  	mv	s9, s8
8000327c: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80003280: 03 45 04 00  	lbu	a0, 0(s0)
80003284: e3 04 05 30  	beqz	a0, 0x80003d8c <.LBB1_124+0x3b0>
80003288: 63 08 65 03  	beq	a0, s6, 0x800032b8 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
8000328c: 93 84 1c 00  	addi	s1, s9, 1
80003290: 93 05 0a 00  	mv	a1, s4
80003294: 13 86 0c 00  	mv	a2, s9
80003298: 93 86 0a 00  	mv	a3, s5
8000329c: e7 00 09 00  	jalr	s2
;       format++;
800032a0: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800032a4: 13 0d 1d 00  	addi	s10, s10, 1
800032a8: 93 8c 04 00  	mv	s9, s1
;   while (*format)
800032ac: 03 45 04 00  	lbu	a0, 0(s0)
800032b0: e3 1c 05 fc  	bnez	a0, 0x80003288 <.LBB1_183+0x44>
800032b4: 6f 00 90 2d  	j	0x80003d8c <.LBB1_124+0x3b0>
;     flags = 0U;
800032b8: 13 04 00 00  	mv	s0, zero
800032bc: 6f 00 00 01  	j	0x800032cc <.LBB1_9+0x8>

800032c0 <.LBB1_8>:
800032c0: 93 05 00 01  	addi	a1, zero, 16

800032c4 <.LBB1_9>:
800032c4: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
800032c8: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
800032cc: 03 45 fd ff  	lbu	a0, -1(s10)
800032d0: 93 05 05 fe  	addi	a1, a0, -32
800032d4: 63 ec bd 02  	bltu	s11, a1, 0x8000330c <.LBB1_15>
800032d8: 93 95 25 00  	slli	a1, a1, 2

800032dc <.LBB1_184>:
800032dc: 17 26 00 00  	auipc	a2, 2
800032e0: 13 06 86 20  	addi	a2, a2, 520
800032e4: b3 85 c5 00  	add	a1, a1, a2
800032e8: 03 a6 05 00  	lw	a2, 0(a1)
800032ec: 93 05 10 00  	addi	a1, zero, 1
800032f0: 67 00 06 00  	jr	a2

800032f4 <.LBB1_12>:
800032f4: 93 05 80 00  	addi	a1, zero, 8
800032f8: 6f f0 df fc  	j	0x800032c4 <.LBB1_9>

800032fc <.LBB1_13>:
800032fc: 93 05 40 00  	addi	a1, zero, 4
80003300: 6f f0 5f fc  	j	0x800032c4 <.LBB1_9>

80003304 <.LBB1_14>:
80003304: 93 05 20 00  	addi	a1, zero, 2
80003308: 6f f0 df fb  	j	0x800032c4 <.LBB1_9>

8000330c <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
8000330c: 93 05 05 fd  	addi	a1, a0, -48
80003310: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80003314: 93 05 fd ff  	addi	a1, s10, -1
80003318: 93 06 90 00  	addi	a3, zero, 9
8000331c: 63 ee c6 06  	bltu	a3, a2, 0x80003398 <.LBB1_15+0x8c>
80003320: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003324: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003328: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000332c: b3 06 8b 03  	mul	a3, s6, s8
80003330: 93 85 15 00  	addi	a1, a1, 1
80003334: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003338: 93 06 05 fd  	addi	a3, a0, -48
8000333c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003340: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80003344: e3 e0 86 ff  	bltu	a3, s8, 0x80003324 <.LBB1_15+0x18>
80003348: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
8000334c: 63 16 75 0b  	bne	a0, s7, 0x800033f8 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80003350: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80003354: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80003358: 93 05 05 fd  	addi	a1, a0, -48
8000335c: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80003360: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80003364: 93 06 90 00  	addi	a3, zero, 9
80003368: 63 e0 c6 06  	bltu	a3, a2, 0x800033c8 <.LBB1_15+0xbc>
8000336c: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003370: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003374: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003378: b3 86 8b 03  	mul	a3, s7, s8
8000337c: 93 85 15 00  	addi	a1, a1, 1
80003380: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003384: 93 06 05 fd  	addi	a3, a0, -48
80003388: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000338c: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80003390: e3 e0 86 ff  	bltu	a3, s8, 0x80003370 <.LBB1_15+0x64>
80003394: 6f 00 00 07  	j	0x80003404 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80003398: 13 06 a0 02  	addi	a2, zero, 42
8000339c: 63 18 c5 04  	bne	a0, a2, 0x800033ec <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800033a0: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800033a4: 63 d4 05 00  	bgez	a1, 0x800033ac <.LBB1_15+0xa0>
800033a8: 13 64 24 00  	ori	s0, s0, 2
800033ac: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800033b0: 03 45 0d 00  	lbu	a0, 0(s10)
800033b4: 13 d6 f5 41  	srai	a2, a1, 31
800033b8: b3 85 c5 00  	add	a1, a1, a2
800033bc: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800033c0: e3 08 75 f9  	beq	a0, s7, 0x80003350 <.LBB1_15+0x44>
800033c4: 6f 00 40 03  	j	0x800033f8 <.LBB1_15+0xec>
;       else if (*format == '*') {
800033c8: 13 06 a0 02  	addi	a2, zero, 42
800033cc: 63 1a c5 02  	bne	a0, a2, 0x80003400 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800033d0: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800033d4: 63 44 70 01  	bgtz	s7, 0x800033dc <.LBB1_15+0xd0>
800033d8: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
800033dc: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800033e0: 13 0d 2d 00  	addi	s10, s10, 2
800033e4: 93 89 49 00  	addi	s3, s3, 4
800033e8: 6f 00 00 02  	j	0x80003408 <.LBB1_15+0xfc>
800033ec: 13 0b 00 00  	mv	s6, zero
800033f0: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800033f4: e3 0e 75 f5  	beq	a0, s7, 0x80003350 <.LBB1_15+0x44>
800033f8: 93 0b 00 00  	mv	s7, zero
800033fc: 6f 00 c0 00  	j	0x80003408 <.LBB1_15+0xfc>
80003400: 93 0b 00 00  	mv	s7, zero
80003404: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80003408: 93 05 85 f9  	addi	a1, a0, -104
8000340c: 13 d6 15 00  	srli	a2, a1, 1
80003410: 93 95 f5 01  	slli	a1, a1, 31
80003414: b3 e5 c5 00  	or	a1, a1, a2
80003418: 13 06 90 00  	addi	a2, zero, 9
8000341c: 63 62 b6 06  	bltu	a2, a1, 0x80003480 <.LBB1_42>
80003420: 93 95 25 00  	slli	a1, a1, 2

80003424 <.LBB1_185>:
80003424: 17 26 00 00  	auipc	a2, 2
80003428: 13 06 46 10  	addi	a2, a2, 260
8000342c: b3 85 c5 00  	add	a1, a1, a2
80003430: 83 a6 05 00  	lw	a3, 0(a1)
80003434: 93 05 10 00  	addi	a1, zero, 1
80003438: 13 06 00 10  	addi	a2, zero, 256
8000343c: 67 80 06 00  	jr	a3

80003440 <.LBB1_36>:
;         if (*format == 'h') {
80003440: 03 45 1d 00  	lbu	a0, 1(s10)
80003444: 93 05 80 06  	addi	a1, zero, 104
80003448: 63 12 b5 12  	bne	a0, a1, 0x8000356c <.LBB1_53+0x48>
8000344c: 93 05 20 00  	addi	a1, zero, 2
80003450: 13 06 00 0c  	addi	a2, zero, 192
80003454: 6f 00 00 02  	j	0x80003474 <.LBB1_41>

80003458 <.LBB1_38>:
80003458: 13 06 00 20  	addi	a2, zero, 512
8000345c: 6f 00 80 01  	j	0x80003474 <.LBB1_41>

80003460 <.LBB1_39>:
;         if (*format == 'l') {
80003460: 03 45 1d 00  	lbu	a0, 1(s10)
80003464: 93 05 c0 06  	addi	a1, zero, 108
80003468: 63 18 b5 10  	bne	a0, a1, 0x80003578 <.LBB1_53+0x54>
8000346c: 93 05 20 00  	addi	a1, zero, 2
80003470: 13 06 00 30  	addi	a2, zero, 768

80003474 <.LBB1_41>:
80003474: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80003478: 03 45 0d 00  	lbu	a0, 0(s10)
8000347c: 33 64 c4 00  	or	s0, s0, a2

80003480 <.LBB1_42>:
;     switch (*format) {
80003480: 93 05 b5 fd  	addi	a1, a0, -37
80003484: 13 06 30 05  	addi	a2, zero, 83
80003488: 63 64 b6 10  	bltu	a2, a1, 0x80003590 <.LBB1_59>
8000348c: 93 95 25 00  	slli	a1, a1, 2

80003490 <.LBB1_186>:
80003490: 17 26 00 00  	auipc	a2, 2
80003494: 13 06 06 0c  	addi	a2, a2, 192
80003498: b3 85 c5 00  	add	a1, a1, a2
8000349c: 03 a6 05 00  	lw	a2, 0(a1)
800034a0: 93 05 80 00  	addi	a1, zero, 8
800034a4: 13 0c 00 01  	addi	s8, zero, 16
800034a8: 67 00 06 00  	jr	a2

800034ac <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800034ac: 13 74 f4 fe  	andi	s0, s0, -17
800034b0: 13 0c a0 00  	addi	s8, zero, 10

800034b4 <.LBB1_45>:
;         if (*format == 'X') {
800034b4: 93 05 80 05  	addi	a1, zero, 88
800034b8: 63 14 b5 00  	bne	a0, a1, 0x800034c0 <.LBB1_45+0xc>
800034bc: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800034c0: 93 05 40 06  	addi	a1, zero, 100
800034c4: 63 08 b5 0e  	beq	a0, a1, 0x800035b4 <.LBB1_62+0x8>
800034c8: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800034cc: 13 06 90 06  	addi	a2, zero, 105
800034d0: 63 02 c5 0e  	beq	a0, a2, 0x800035b4 <.LBB1_62+0x8>
800034d4: 6f 00 80 0d  	j	0x800035ac <.LBB1_62>

800034d8 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800034d8: 93 05 60 04  	addi	a1, zero, 70
800034dc: 63 14 b5 00  	bne	a0, a1, 0x800034e4 <.LBB1_49+0xc>
800034e0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800034e4: 13 85 79 00  	addi	a0, s3, 7
800034e8: 13 75 85 ff  	andi	a0, a0, -8
800034ec: 07 35 05 00  	fld	fa0, 0(a0)
800034f0: 93 09 85 00  	addi	s3, a0, 8
800034f4: 13 05 09 00  	mv	a0, s2
800034f8: 93 05 0a 00  	mv	a1, s4
800034fc: 13 86 0c 00  	mv	a2, s9
80003500: 93 86 0a 00  	mv	a3, s5
80003504: 13 87 0b 00  	mv	a4, s7
80003508: 93 07 0b 00  	mv	a5, s6
8000350c: 13 08 04 00  	mv	a6, s0
80003510: 97 10 00 00  	auipc	ra, 1
80003514: e7 80 80 98  	jalr	-1656(ra)
80003518: 6f 00 00 7c  	j	0x80003cd8 <.LBB1_124+0x2fc>

8000351c <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
8000351c: 83 25 81 01  	lw	a1, 24(sp)
80003520: 33 64 b4 00  	or	s0, s0, a1

80003524 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80003524: 13 65 25 00  	ori	a0, a0, 2
80003528: 93 05 70 04  	addi	a1, zero, 71
8000352c: 63 14 b5 00  	bne	a0, a1, 0x80003534 <.LBB1_53+0x10>
80003530: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003534: 13 85 79 00  	addi	a0, s3, 7
80003538: 13 75 85 ff  	andi	a0, a0, -8
8000353c: 07 35 05 00  	fld	fa0, 0(a0)
80003540: 93 09 85 00  	addi	s3, a0, 8
80003544: 13 05 09 00  	mv	a0, s2
80003548: 93 05 0a 00  	mv	a1, s4
8000354c: 13 86 0c 00  	mv	a2, s9
80003550: 93 86 0a 00  	mv	a3, s5
80003554: 13 87 0b 00  	mv	a4, s7
80003558: 93 07 0b 00  	mv	a5, s6
8000355c: 13 08 04 00  	mv	a6, s0
80003560: 97 10 00 00  	auipc	ra, 1
80003564: e7 80 80 01  	jalr	24(ra)
80003568: 6f 00 00 77  	j	0x80003cd8 <.LBB1_124+0x2fc>
8000356c: 13 64 04 08  	ori	s0, s0, 128
80003570: 13 0d 1d 00  	addi	s10, s10, 1
80003574: 6f f0 df f0  	j	0x80003480 <.LBB1_42>
80003578: 13 64 04 10  	ori	s0, s0, 256
8000357c: 13 0d 1d 00  	addi	s10, s10, 1
80003580: 6f f0 1f f0  	j	0x80003480 <.LBB1_42>

80003584 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003584: 13 8c 1c 00  	addi	s8, s9, 1
80003588: 13 05 50 02  	addi	a0, zero, 37
8000358c: 6f 00 80 00  	j	0x80003594 <.LBB1_59+0x4>

80003590 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80003590: 13 8c 1c 00  	addi	s8, s9, 1
80003594: 93 05 0a 00  	mv	a1, s4
80003598: 13 86 0c 00  	mv	a2, s9
8000359c: 93 86 0a 00  	mv	a3, s5
800035a0: e7 00 09 00  	jalr	s2
800035a4: 6f 00 80 73  	j	0x80003cdc <.LBB1_124+0x300>

800035a8 <.LBB1_61>:
800035a8: 93 05 20 00  	addi	a1, zero, 2

800035ac <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800035ac: 13 74 34 ff  	andi	s0, s0, -13
800035b0: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800035b4: 93 75 04 40  	andi	a1, s0, 1024
800035b8: 63 84 05 00  	beqz	a1, 0x800035c0 <.LBB1_62+0x14>
800035bc: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800035c0: 93 05 90 06  	addi	a1, zero, 105
800035c4: 63 06 b5 00  	beq	a0, a1, 0x800035d0 <.LBB1_62+0x24>
800035c8: 93 05 40 06  	addi	a1, zero, 100
800035cc: 63 1c b5 12  	bne	a0, a1, 0x80003704 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800035d0: 13 75 04 20  	andi	a0, s0, 512
800035d4: 63 16 05 02  	bnez	a0, 0x80003600 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800035d8: 13 75 04 10  	andi	a0, s0, 256
800035dc: 63 1c 05 14  	bnez	a0, 0x80003734 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800035e0: 13 75 04 04  	andi	a0, s0, 64
800035e4: 63 18 05 4e  	bnez	a0, 0x80003ad4 <.LBB1_124+0xf8>
800035e8: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800035ec: 93 75 04 08  	andi	a1, s0, 128
800035f0: 63 84 05 4e  	beqz	a1, 0x80003ad8 <.LBB1_124+0xfc>
800035f4: 13 15 08 01  	slli	a0, a6, 16
800035f8: 13 58 05 41  	srai	a6, a0, 16
800035fc: 6f 00 c0 4d  	j	0x80003ad8 <.LBB1_124+0xfc>
80003600: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003604: 13 85 79 00  	addi	a0, s3, 7
80003608: 13 75 85 ff  	andi	a0, a0, -8
8000360c: 83 29 05 00  	lw	s3, 0(a0)
80003610: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003614: 13 65 45 00  	ori	a0, a0, 4
80003618: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
8000361c: 23 24 a1 00  	sw	a0, 8(sp)
80003620: 33 e5 a9 00  	or	a0, s3, a0
80003624: 63 14 05 00  	bnez	a0, 0x8000362c <.LBB1_62+0x80>
80003628: 13 74 f4 fe  	andi	s0, s0, -17
8000362c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003630: 93 75 04 40  	andi	a1, s0, 1024
80003634: 93 d5 a5 00  	srli	a1, a1, 10
80003638: 33 75 b5 00  	and	a0, a0, a1
8000363c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003640: 63 14 05 0a  	bnez	a0, 0x800036e8 <.LBB1_62+0x13c>
80003644: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003648: 63 da 04 00  	bgez	s1, 0x8000365c <.LBB1_62+0xb0>
8000364c: 33 35 30 01  	snez	a0, s3
80003650: b3 09 30 41  	neg	s3, s3
80003654: 33 85 a4 00  	add	a0, s1, a0
80003658: b3 04 a0 40  	neg	s1, a0
8000365c: 13 09 00 00  	mv	s2, zero
80003660: 13 75 04 02  	andi	a0, s0, 32
80003664: 13 45 15 06  	xori	a0, a0, 97
80003668: 13 05 65 0f  	addi	a0, a0, 246
8000366c: 23 2a a1 00  	sw	a0, 20(sp)
80003670: 6f 00 40 02  	j	0x80003694 <.LBB1_62+0xe8>
80003674: 13 06 10 00  	addi	a2, zero, 1
80003678: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000367c: 93 36 f9 01  	sltiu	a3, s2, 31
80003680: 33 f6 c6 00  	and	a2, a3, a2
80003684: 13 89 07 00  	mv	s2, a5
80003688: 93 09 05 00  	mv	s3, a0
8000368c: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003690: 63 0c 06 04  	beqz	a2, 0x800036e8 <.LBB1_62+0x13c>
;       value /= base;
80003694: 13 85 09 00  	mv	a0, s3
80003698: 93 85 04 00  	mv	a1, s1
8000369c: 13 06 0c 00  	mv	a2, s8
800036a0: 93 06 00 00  	mv	a3, zero
800036a4: 97 d0 ff ff  	auipc	ra, 1048573
800036a8: e7 80 c0 95  	jalr	-1700(ra)
800036ac: 33 06 85 03  	mul	a2, a0, s8
800036b0: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800036b4: 13 77 e6 0f  	andi	a4, a2, 254
800036b8: 93 06 00 03  	addi	a3, zero, 48
800036bc: 93 07 a0 00  	addi	a5, zero, 10
800036c0: 63 64 f7 00  	bltu	a4, a5, 0x800036c8 <.LBB1_62+0x11c>
800036c4: 83 26 41 01  	lw	a3, 20(sp)
800036c8: 33 86 c6 00  	add	a2, a3, a2
800036cc: 93 06 c1 01  	addi	a3, sp, 28
800036d0: b3 86 26 01  	add	a3, a3, s2
800036d4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800036d8: e3 9e 04 f8  	bnez	s1, 0x80003674 <.LBB1_62+0xc8>
800036dc: 33 b6 89 01  	sltu	a2, s3, s8
800036e0: 13 46 16 00  	xori	a2, a2, 1
800036e4: 6f f0 5f f9  	j	0x80003678 <.LBB1_62+0xcc>
800036e8: 03 25 41 00  	lw	a0, 4(sp)
800036ec: 93 09 85 00  	addi	s3, a0, 8
800036f0: 03 25 81 00  	lw	a0, 8(sp)
800036f4: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800036f8: 13 07 c1 01  	addi	a4, sp, 28
800036fc: 03 29 c1 00  	lw	s2, 12(sp)
80003700: 6f 00 80 47  	j	0x80003b78 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003704: 13 75 04 20  	andi	a0, s0, 512
80003708: 63 12 05 0c  	bnez	a0, 0x800037cc <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
8000370c: 13 75 04 10  	andi	a0, s0, 256
80003710: 63 1e 05 46  	bnez	a0, 0x80003b8c <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003714: 13 75 04 04  	andi	a0, s0, 64
80003718: 63 10 05 50  	bnez	a0, 0x80003c18 <.LBB1_124+0x23c>
8000371c: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003720: 93 75 04 08  	andi	a1, s0, 128
80003724: 63 8c 05 4e  	beqz	a1, 0x80003c1c <.LBB1_124+0x240>
80003728: 83 25 01 01  	lw	a1, 16(sp)
8000372c: 33 75 b5 00  	and	a0, a0, a1
80003730: 6f 00 c0 4e  	j	0x80003c1c <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003734: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80003738: 63 14 08 00  	bnez	a6, 0x80003740 <.LBB1_62+0x194>
8000373c: 13 74 f4 fe  	andi	s0, s0, -17
80003740: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003744: 13 76 04 40  	andi	a2, s0, 1024
80003748: 13 56 a6 00  	srli	a2, a2, 10
8000374c: b3 f5 c5 00  	and	a1, a1, a2
80003750: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003754: 63 9c 05 40  	bnez	a1, 0x80003b6c <.LBB1_124+0x190>
80003758: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000375c: 13 56 f8 41  	srai	a2, a6, 31
80003760: b3 06 c8 00  	add	a3, a6, a2
80003764: b3 c6 c6 00  	xor	a3, a3, a2
80003768: 13 76 04 02  	andi	a2, s0, 32
8000376c: 13 46 16 06  	xori	a2, a2, 97
80003770: 93 08 66 0f  	addi	a7, a2, 246
80003774: 6f 00 40 03  	j	0x800037a8 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003778: 33 05 f6 00  	add	a0, a2, a5
8000377c: 93 87 15 00  	addi	a5, a1, 1
80003780: 13 06 c1 01  	addi	a2, sp, 28
80003784: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003788: b3 b6 86 01  	sltu	a3, a3, s8
8000378c: 93 c6 16 00  	xori	a3, a3, 1
80003790: 93 b5 f5 01  	sltiu	a1, a1, 31
80003794: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003798: 23 00 a6 00  	sb	a0, 0(a2)
8000379c: 93 85 07 00  	mv	a1, a5
800037a0: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037a4: 63 84 04 3c  	beqz	s1, 0x80003b6c <.LBB1_124+0x190>
;       value /= base;
800037a8: 33 d7 86 03  	divu	a4, a3, s8
800037ac: 33 06 87 03  	mul	a2, a4, s8
800037b0: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037b4: 13 f5 e7 0f  	andi	a0, a5, 254
800037b8: 13 06 00 03  	addi	a2, zero, 48
800037bc: 93 04 a0 00  	addi	s1, zero, 10
800037c0: e3 6c 95 fa  	bltu	a0, s1, 0x80003778 <.LBB1_62+0x1cc>
800037c4: 13 86 08 00  	mv	a2, a7
800037c8: 6f f0 1f fb  	j	0x80003778 <.LBB1_62+0x1cc>
800037cc: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800037d0: 13 85 79 00  	addi	a0, s3, 7
800037d4: 93 75 85 ff  	andi	a1, a0, -8
800037d8: 03 a9 05 00  	lw	s2, 0(a1)
800037dc: 13 e5 45 00  	ori	a0, a1, 4
800037e0: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800037e4: 33 65 39 01  	or	a0, s2, s3
800037e8: 23 24 b1 00  	sw	a1, 8(sp)
800037ec: 63 14 05 00  	bnez	a0, 0x800037f4 <.LBB1_62+0x248>
800037f0: 13 74 f4 fe  	andi	s0, s0, -17
800037f4: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800037f8: 93 75 04 40  	andi	a1, s0, 1024
800037fc: 93 d5 a5 00  	srli	a1, a1, 10
80003800: 33 75 b5 00  	and	a0, a0, a1
80003804: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003808: 63 18 05 08  	bnez	a0, 0x80003898 <.LBB1_62+0x2ec>
8000380c: 93 04 00 00  	mv	s1, zero
80003810: 13 75 04 02  	andi	a0, s0, 32
80003814: 13 45 15 06  	xori	a0, a0, 97
80003818: 13 05 65 0f  	addi	a0, a0, 246
8000381c: 23 2a a1 00  	sw	a0, 20(sp)
80003820: 6f 00 40 02  	j	0x80003844 <.LBB1_62+0x298>
80003824: 13 06 10 00  	addi	a2, zero, 1
80003828: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000382c: 93 b6 f4 01  	sltiu	a3, s1, 31
80003830: 33 f6 c6 00  	and	a2, a3, a2
80003834: 93 84 07 00  	mv	s1, a5
80003838: 13 09 05 00  	mv	s2, a0
8000383c: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003840: 63 0c 06 04  	beqz	a2, 0x80003898 <.LBB1_62+0x2ec>
;       value /= base;
80003844: 13 05 09 00  	mv	a0, s2
80003848: 93 85 09 00  	mv	a1, s3
8000384c: 13 06 0c 00  	mv	a2, s8
80003850: 93 06 00 00  	mv	a3, zero
80003854: 97 c0 ff ff  	auipc	ra, 1048572
80003858: e7 80 c0 7a  	jalr	1964(ra)
8000385c: 33 06 85 03  	mul	a2, a0, s8
80003860: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003864: 13 77 e6 0f  	andi	a4, a2, 254
80003868: 93 06 00 03  	addi	a3, zero, 48
8000386c: 93 07 a0 00  	addi	a5, zero, 10
80003870: 63 64 f7 00  	bltu	a4, a5, 0x80003878 <.LBB1_62+0x2cc>
80003874: 83 26 41 01  	lw	a3, 20(sp)
80003878: 33 86 c6 00  	add	a2, a3, a2
8000387c: 93 06 c1 01  	addi	a3, sp, 28
80003880: b3 86 96 00  	add	a3, a3, s1
80003884: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003888: e3 9e 09 f8  	bnez	s3, 0x80003824 <.LBB1_62+0x278>
8000388c: 33 36 89 01  	sltu	a2, s2, s8
80003890: 13 46 16 00  	xori	a2, a2, 1
80003894: 6f f0 5f f9  	j	0x80003828 <.LBB1_62+0x27c>
80003898: 03 25 81 00  	lw	a0, 8(sp)
8000389c: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800038a0: 13 07 c1 01  	addi	a4, sp, 28
800038a4: 03 29 c1 00  	lw	s2, 12(sp)
800038a8: 6f 00 40 40  	j	0x80003cac <.LBB1_124+0x2d0>

800038ac <.LBB1_108>:
800038ac: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800038b0: 13 79 24 00  	andi	s2, s0, 2
800038b4: 93 04 10 00  	addi	s1, zero, 1
800038b8: 63 1e 09 02  	bnez	s2, 0x800038f4 <.LBB1_108+0x48>
800038bc: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800038c0: 63 6a 9b 02  	bltu	s6, s1, 0x800038f4 <.LBB1_108+0x48>
800038c4: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800038c8: 13 0c fb ff  	addi	s8, s6, -1
800038cc: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800038d0: 33 86 8c 00  	add	a2, s9, s0
800038d4: 13 05 00 02  	addi	a0, zero, 32
800038d8: 93 05 0a 00  	mv	a1, s4
800038dc: 93 86 0a 00  	mv	a3, s5
800038e0: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800038e4: 13 04 14 00  	addi	s0, s0, 1
800038e8: e3 14 8c fe  	bne	s8, s0, 0x800038d0 <.LBB1_108+0x24>
800038ec: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800038f0: b3 8c 8c 00  	add	s9, s9, s0
800038f4: 03 c5 09 00  	lbu	a0, 0(s3)
800038f8: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800038fc: 93 89 49 00  	addi	s3, s3, 4
80003900: 13 8c 1c 00  	addi	s8, s9, 1
80003904: 93 05 0a 00  	mv	a1, s4
80003908: 13 86 0c 00  	mv	a2, s9
8000390c: 93 86 0a 00  	mv	a3, s5
80003910: 13 89 0b 00  	mv	s2, s7
80003914: e7 80 0b 00  	jalr	s7
80003918: 33 b5 64 01  	sltu	a0, s1, s6
8000391c: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003920: 33 65 a4 00  	or	a0, s0, a0
80003924: 63 1c 05 3a  	bnez	a0, 0x80003cdc <.LBB1_124+0x300>
;           while (l++ < width) {
80003928: 33 04 9b 40  	sub	s0, s6, s1
8000392c: 93 0b e0 02  	addi	s7, zero, 46
80003930: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003934: 13 0c 1c 00  	addi	s8, s8, 1
80003938: 13 05 00 02  	addi	a0, zero, 32
8000393c: 93 05 0a 00  	mv	a1, s4
80003940: 93 86 0a 00  	mv	a3, s5
80003944: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003948: 13 04 f4 ff  	addi	s0, s0, -1
8000394c: e3 12 04 fe  	bnez	s0, 0x80003930 <.LBB1_108+0x84>
80003950: 13 0b 50 02  	addi	s6, zero, 37
80003954: 13 04 1d 00  	addi	s0, s10, 1
80003958: 6f f0 df 91  	j	0x80003274 <.LBB1_183+0x30>

8000395c <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
8000395c: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003960: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003964: 63 14 05 00  	bnez	a0, 0x8000396c <.LBB1_117+0x10>
80003968: 93 fe fe fe  	andi	t4, t4, -17
8000396c: 93 04 a0 00  	addi	s1, zero, 10
80003970: 13 04 f0 00  	addi	s0, zero, 15
80003974: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003978: 13 f6 0e 40  	andi	a2, t4, 1024
8000397c: 13 56 a6 00  	srli	a2, a2, 10
80003980: b3 f5 c5 00  	and	a1, a1, a2
80003984: 93 07 00 00  	mv	a5, zero
80003988: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
8000398c: 63 98 05 10  	bnez	a1, 0x80003a9c <.LBB1_124+0xc0>
80003990: 93 05 00 00  	mv	a1, zero
80003994: 6f 00 40 03  	j	0x800039c8 <.LBB1_117+0x6c>
80003998: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000399c: 33 06 d6 00  	add	a2, a2, a3
800039a0: 93 87 15 00  	addi	a5, a1, 1
800039a4: 93 06 c1 01  	addi	a3, sp, 28
800039a8: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039ac: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800039b0: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039b4: 93 b5 f5 01  	sltiu	a1, a1, 31
800039b8: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039bc: 23 80 c6 00  	sb	a2, 0(a3)
800039c0: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039c4: 63 0c 07 0c  	beqz	a4, 0x80003a9c <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039c8: 93 76 e5 00  	andi	a3, a0, 14
800039cc: 13 06 00 03  	addi	a2, zero, 48
800039d0: e3 e4 96 fc  	bltu	a3, s1, 0x80003998 <.LBB1_117+0x3c>
800039d4: 13 06 70 03  	addi	a2, zero, 55
800039d8: 6f f0 1f fc  	j	0x80003998 <.LBB1_117+0x3c>

800039dc <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800039dc: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800039e0: 03 c5 07 00  	lbu	a0, 0(a5)
800039e4: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800039e8: 63 0c 05 02  	beqz	a0, 0x80003a20 <.LBB1_124+0x44>
800039ec: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800039f0: 63 84 0b 00  	beqz	s7, 0x800039f8 <.LBB1_124+0x1c>
800039f4: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800039f8: 93 85 f5 ff  	addi	a1, a1, -1
800039fc: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003a00: 03 c7 16 00  	lbu	a4, 1(a3)
80003a04: 13 86 16 00  	addi	a2, a3, 1
80003a08: b3 36 e0 00  	snez	a3, a4
80003a0c: 33 37 b0 00  	snez	a4, a1
80003a10: 33 77 d7 00  	and	a4, a4, a3
80003a14: 93 85 f5 ff  	addi	a1, a1, -1
80003a18: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003a1c: e3 12 07 fe  	bnez	a4, 0x80003a00 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003a20: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003a24: 93 75 04 40  	andi	a1, s0, 1024
80003a28: 93 b4 15 00  	seqz	s1, a1
80003a2c: 23 2a c1 00  	sw	a2, 20(sp)
80003a30: b3 35 76 01  	sltu	a1, a2, s7
80003a34: b3 e5 b4 00  	or	a1, s1, a1
80003a38: 63 94 05 00  	bnez	a1, 0x80003a40 <.LBB1_124+0x64>
80003a3c: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003a40: 93 75 24 00  	andi	a1, s0, 2
80003a44: 23 26 b1 00  	sw	a1, 12(sp)
80003a48: 63 96 05 2a  	bnez	a1, 0x80003cf4 <.LBB1_124+0x318>
80003a4c: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003a50: 63 fe 65 29  	bgeu	a1, s6, 0x80003cec <.LBB1_124+0x310>
80003a54: 23 24 f1 00  	sw	a5, 8(sp)
80003a58: 13 04 00 00  	mv	s0, zero
80003a5c: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003a60: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003a64: 33 86 8c 00  	add	a2, s9, s0
80003a68: 13 05 00 02  	addi	a0, zero, 32
80003a6c: 93 05 0a 00  	mv	a1, s4
80003a70: 93 86 0a 00  	mv	a3, s5
80003a74: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80003a78: 13 04 14 00  	addi	s0, s0, 1
80003a7c: e3 14 89 fe  	bne	s2, s0, 0x80003a64 <.LBB1_124+0x88>
80003a80: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003a84: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80003a88: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003a8c: 23 2a b1 00  	sw	a1, 20(sp)
80003a90: b3 8c 8c 00  	add	s9, s9, s0
80003a94: 13 09 0c 00  	mv	s2, s8
80003a98: 6f 00 c0 25  	j	0x80003cf4 <.LBB1_124+0x318>
80003a9c: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003aa0: 13 07 c1 01  	addi	a4, sp, 28
80003aa4: 93 08 00 01  	addi	a7, zero, 16
80003aa8: 13 0e 80 00  	addi	t3, zero, 8
80003aac: 13 05 09 00  	mv	a0, s2
80003ab0: 93 05 0a 00  	mv	a1, s4
80003ab4: 13 86 0c 00  	mv	a2, s9
80003ab8: 93 86 0a 00  	mv	a3, s5
80003abc: 13 08 00 00  	mv	a6, zero
80003ac0: 93 83 0b 00  	mv	t2, s7
80003ac4: 97 10 00 00  	auipc	ra, 1
80003ac8: e7 80 00 fa  	jalr	-96(ra)
80003acc: 13 0c 05 00  	mv	s8, a0
80003ad0: 6f 00 00 21  	j	0x80003ce0 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003ad4: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80003ad8: 63 14 08 00  	bnez	a6, 0x80003ae0 <.LBB1_124+0x104>
80003adc: 13 74 f4 fe  	andi	s0, s0, -17
80003ae0: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003ae4: 13 76 04 40  	andi	a2, s0, 1024
80003ae8: 13 56 a6 00  	srli	a2, a2, 10
80003aec: b3 f5 c5 00  	and	a1, a1, a2
80003af0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003af4: 63 9c 05 06  	bnez	a1, 0x80003b6c <.LBB1_124+0x190>
80003af8: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003afc: 13 56 f8 41  	srai	a2, a6, 31
80003b00: b3 06 c8 00  	add	a3, a6, a2
80003b04: b3 c6 c6 00  	xor	a3, a3, a2
80003b08: 13 76 04 02  	andi	a2, s0, 32
80003b0c: 13 46 16 06  	xori	a2, a2, 97
80003b10: 93 08 66 0f  	addi	a7, a2, 246
80003b14: 6f 00 40 03  	j	0x80003b48 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b18: 33 05 f6 00  	add	a0, a2, a5
80003b1c: 93 87 15 00  	addi	a5, a1, 1
80003b20: 13 06 c1 01  	addi	a2, sp, 28
80003b24: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b28: b3 b6 86 01  	sltu	a3, a3, s8
80003b2c: 93 c6 16 00  	xori	a3, a3, 1
80003b30: 93 b5 f5 01  	sltiu	a1, a1, 31
80003b34: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b38: 23 00 a6 00  	sb	a0, 0(a2)
80003b3c: 93 85 07 00  	mv	a1, a5
80003b40: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b44: 63 84 04 02  	beqz	s1, 0x80003b6c <.LBB1_124+0x190>
;       value /= base;
80003b48: 33 d7 86 03  	divu	a4, a3, s8
80003b4c: 33 06 87 03  	mul	a2, a4, s8
80003b50: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b54: 13 f5 e7 0f  	andi	a0, a5, 254
80003b58: 13 06 00 03  	addi	a2, zero, 48
80003b5c: 93 04 a0 00  	addi	s1, zero, 10
80003b60: e3 6c 95 fa  	bltu	a0, s1, 0x80003b18 <.LBB1_124+0x13c>
80003b64: 13 86 08 00  	mv	a2, a7
80003b68: 6f f0 1f fb  	j	0x80003b18 <.LBB1_124+0x13c>
80003b6c: 93 89 49 00  	addi	s3, s3, 4
80003b70: 13 58 f8 01  	srli	a6, a6, 31
80003b74: 13 07 c1 01  	addi	a4, sp, 28
80003b78: 13 05 09 00  	mv	a0, s2
80003b7c: 93 05 0a 00  	mv	a1, s4
80003b80: 13 86 0c 00  	mv	a2, s9
80003b84: 93 86 0a 00  	mv	a3, s5
80003b88: 6f 00 80 13  	j	0x80003cc0 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80003b8c: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003b90: 63 14 05 00  	bnez	a0, 0x80003b98 <.LBB1_124+0x1bc>
80003b94: 13 74 f4 fe  	andi	s0, s0, -17
80003b98: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b9c: 13 76 04 40  	andi	a2, s0, 1024
80003ba0: 13 56 a6 00  	srli	a2, a2, 10
80003ba4: b3 f5 c5 00  	and	a1, a1, a2
80003ba8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003bac: 63 9c 05 0e  	bnez	a1, 0x80003ca4 <.LBB1_124+0x2c8>
80003bb0: 13 06 00 00  	mv	a2, zero
80003bb4: 93 75 04 02  	andi	a1, s0, 32
80003bb8: 93 c5 15 06  	xori	a1, a1, 97
80003bbc: 13 88 65 0f  	addi	a6, a1, 246
80003bc0: 6f 00 40 03  	j	0x80003bf4 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003bc4: 33 87 e7 00  	add	a4, a5, a4
80003bc8: 93 07 16 00  	addi	a5, a2, 1
80003bcc: 93 05 c1 01  	addi	a1, sp, 28
80003bd0: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003bd4: 33 35 85 01  	sltu	a0, a0, s8
80003bd8: 13 45 15 00  	xori	a0, a0, 1
80003bdc: 13 36 f6 01  	sltiu	a2, a2, 31
80003be0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003be4: 23 80 e4 00  	sb	a4, 0(s1)
80003be8: 13 86 07 00  	mv	a2, a5
80003bec: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003bf0: 63 8a 05 0a  	beqz	a1, 0x80003ca4 <.LBB1_124+0x2c8>
;       value /= base;
80003bf4: b3 56 85 03  	divu	a3, a0, s8
80003bf8: 33 87 86 03  	mul	a4, a3, s8
80003bfc: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003c00: 93 74 e7 0f  	andi	s1, a4, 254
80003c04: 93 07 00 03  	addi	a5, zero, 48
80003c08: 93 05 a0 00  	addi	a1, zero, 10
80003c0c: e3 ec b4 fa  	bltu	s1, a1, 0x80003bc4 <.LBB1_124+0x1e8>
80003c10: 93 07 08 00  	mv	a5, a6
80003c14: 6f f0 1f fb  	j	0x80003bc4 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003c18: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80003c1c: 63 14 05 00  	bnez	a0, 0x80003c24 <.LBB1_124+0x248>
80003c20: 13 74 f4 fe  	andi	s0, s0, -17
80003c24: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003c28: 13 76 04 40  	andi	a2, s0, 1024
80003c2c: 13 56 a6 00  	srli	a2, a2, 10
80003c30: b3 f5 c5 00  	and	a1, a1, a2
80003c34: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003c38: 63 96 05 06  	bnez	a1, 0x80003ca4 <.LBB1_124+0x2c8>
80003c3c: 13 06 00 00  	mv	a2, zero
80003c40: 93 75 04 02  	andi	a1, s0, 32
80003c44: 93 c5 15 06  	xori	a1, a1, 97
80003c48: 13 88 65 0f  	addi	a6, a1, 246
80003c4c: 6f 00 40 03  	j	0x80003c80 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003c50: 33 87 e7 00  	add	a4, a5, a4
80003c54: 93 07 16 00  	addi	a5, a2, 1
80003c58: 93 05 c1 01  	addi	a1, sp, 28
80003c5c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003c60: 33 35 85 01  	sltu	a0, a0, s8
80003c64: 13 45 15 00  	xori	a0, a0, 1
80003c68: 13 36 f6 01  	sltiu	a2, a2, 31
80003c6c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003c70: 23 80 e4 00  	sb	a4, 0(s1)
80003c74: 13 86 07 00  	mv	a2, a5
80003c78: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003c7c: 63 84 05 02  	beqz	a1, 0x80003ca4 <.LBB1_124+0x2c8>
;       value /= base;
80003c80: b3 56 85 03  	divu	a3, a0, s8
80003c84: 33 87 86 03  	mul	a4, a3, s8
80003c88: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003c8c: 93 74 e7 0f  	andi	s1, a4, 254
80003c90: 93 07 00 03  	addi	a5, zero, 48
80003c94: 93 05 a0 00  	addi	a1, zero, 10
80003c98: e3 ec b4 fa  	bltu	s1, a1, 0x80003c50 <.LBB1_124+0x274>
80003c9c: 93 07 08 00  	mv	a5, a6
80003ca0: 6f f0 1f fb  	j	0x80003c50 <.LBB1_124+0x274>
80003ca4: 93 89 49 00  	addi	s3, s3, 4
80003ca8: 13 07 c1 01  	addi	a4, sp, 28
80003cac: 13 05 09 00  	mv	a0, s2
80003cb0: 93 05 0a 00  	mv	a1, s4
80003cb4: 13 86 0c 00  	mv	a2, s9
80003cb8: 93 86 0a 00  	mv	a3, s5
80003cbc: 13 08 00 00  	mv	a6, zero
80003cc0: 93 08 0c 00  	mv	a7, s8
80003cc4: 93 83 0b 00  	mv	t2, s7
80003cc8: 13 0e 0b 00  	mv	t3, s6
80003ccc: 93 0e 04 00  	mv	t4, s0
80003cd0: 97 10 00 00  	auipc	ra, 1
80003cd4: e7 80 40 d9  	jalr	-620(ra)
80003cd8: 13 0c 05 00  	mv	s8, a0
80003cdc: 13 0b 50 02  	addi	s6, zero, 37
80003ce0: 93 0b e0 02  	addi	s7, zero, 46
80003ce4: 13 04 1d 00  	addi	s0, s10, 1
80003ce8: 6f f0 cf d8  	j	0x80003274 <.LBB1_183+0x30>
80003cec: 93 85 15 00  	addi	a1, a1, 1
80003cf0: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003cf4: 63 00 05 04  	beqz	a0, 0x80003d34 <.LBB1_124+0x358>
80003cf8: 13 84 17 00  	addi	s0, a5, 1
80003cfc: 6f 00 00 03  	j	0x80003d2c <.LBB1_124+0x350>
80003d00: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80003d04: 13 8c 1c 00  	addi	s8, s9, 1
80003d08: 13 75 f5 0f  	andi	a0, a0, 255
80003d0c: 93 05 0a 00  	mv	a1, s4
80003d10: 13 86 0c 00  	mv	a2, s9
80003d14: 93 86 0a 00  	mv	a3, s5
80003d18: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003d1c: 03 45 04 00  	lbu	a0, 0(s0)
80003d20: 13 04 14 00  	addi	s0, s0, 1
80003d24: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003d28: 63 08 05 00  	beqz	a0, 0x80003d38 <.LBB1_124+0x35c>
80003d2c: e3 9c 04 fc  	bnez	s1, 0x80003d04 <.LBB1_124+0x328>
80003d30: e3 98 0b fc  	bnez	s7, 0x80003d00 <.LBB1_124+0x324>
80003d34: 13 8c 0c 00  	mv	s8, s9
80003d38: 03 25 c1 00  	lw	a0, 12(sp)
80003d3c: 13 35 15 00  	seqz	a0, a0
80003d40: 03 26 41 01  	lw	a2, 20(sp)
80003d44: b3 35 66 01  	sltu	a1, a2, s6
80003d48: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80003d4c: 33 65 b5 00  	or	a0, a0, a1
80003d50: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80003d54: e3 14 05 f8  	bnez	a0, 0x80003cdc <.LBB1_124+0x300>
;           while (l++ < width) {
80003d58: 33 04 cb 40  	sub	s0, s6, a2
80003d5c: 93 0b e0 02  	addi	s7, zero, 46
80003d60: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003d64: 13 0c 1c 00  	addi	s8, s8, 1
80003d68: 13 05 00 02  	addi	a0, zero, 32
80003d6c: 93 05 0a 00  	mv	a1, s4
80003d70: 93 86 0a 00  	mv	a3, s5
80003d74: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003d78: 13 04 f4 ff  	addi	s0, s0, -1
80003d7c: e3 12 04 fe  	bnez	s0, 0x80003d60 <.LBB1_124+0x384>
80003d80: 13 0b 50 02  	addi	s6, zero, 37
80003d84: 13 04 1d 00  	addi	s0, s10, 1
80003d88: 6f f0 cf ce  	j	0x80003274 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003d8c: 13 86 0c 00  	mv	a2, s9
80003d90: 63 e4 5c 01  	bltu	s9, s5, 0x80003d98 <.LBB1_124+0x3bc>
80003d94: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003d98: 13 05 00 00  	mv	a0, zero
80003d9c: 93 05 0a 00  	mv	a1, s4
80003da0: 93 86 0a 00  	mv	a3, s5
80003da4: e7 00 09 00  	jalr	s2
;   return (int)idx;
80003da8: 13 85 0c 00  	mv	a0, s9
80003dac: 83 2d c1 03  	lw	s11, 60(sp)
80003db0: 03 2d 01 04  	lw	s10, 64(sp)
80003db4: 83 2c 41 04  	lw	s9, 68(sp)
80003db8: 03 2c 81 04  	lw	s8, 72(sp)
80003dbc: 83 2b c1 04  	lw	s7, 76(sp)
80003dc0: 03 2b 01 05  	lw	s6, 80(sp)
80003dc4: 83 2a 41 05  	lw	s5, 84(sp)
80003dc8: 03 2a 81 05  	lw	s4, 88(sp)
80003dcc: 83 29 c1 05  	lw	s3, 92(sp)
80003dd0: 03 29 01 06  	lw	s2, 96(sp)
80003dd4: 83 24 41 06  	lw	s1, 100(sp)
80003dd8: 03 24 81 06  	lw	s0, 104(sp)
80003ddc: 83 20 c1 06  	lw	ra, 108(sp)
80003de0: 13 01 01 07  	addi	sp, sp, 112
80003de4: 67 80 00 00  	ret

80003de8 <_out_char.llvm.11632292163828655644>:
;   if (character) {
80003de8: 63 04 05 0a  	beqz	a0, 0x80003e90 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003dec: f3 25 40 f1  	csrr	a1, mhartid
80003df0: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80003df4: 33 86 c5 02  	mul	a2, a1, a2

80003df8 <.LBB2_6>:
80003df8: 97 26 00 00  	auipc	a3, 2
80003dfc: 93 86 c6 a4  	addi	a3, a3, -1460
80003e00: b3 05 d6 00  	add	a1, a2, a3
80003e04: 03 a7 05 00  	lw	a4, 0(a1)
80003e08: 93 07 17 00  	addi	a5, a4, 1
80003e0c: 23 a0 f5 00  	sw	a5, 0(a1)
80003e10: 33 87 e5 00  	add	a4, a1, a4
80003e14: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80003e18: 03 a7 05 00  	lw	a4, 0(a1)
80003e1c: 13 07 47 c0  	addi	a4, a4, -1020
80003e20: 33 37 e0 00  	snez	a4, a4
80003e24: 13 05 65 ff  	addi	a0, a0, -10
80003e28: 33 35 a0 00  	snez	a0, a0
80003e2c: 33 75 e5 00  	and	a0, a0, a4
80003e30: 63 10 05 06  	bnez	a0, 0x80003e90 <.LBB2_8+0x18>
80003e34: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80003e38: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003e3c: 23 26 05 00  	sw	zero, 12(a0)
80003e40: 93 06 00 04  	addi	a3, zero, 64
80003e44: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80003e48: 23 2a 05 00  	sw	zero, 20(a0)
80003e4c: 93 06 10 00  	addi	a3, zero, 1
80003e50: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80003e54: 23 2e 05 00  	sw	zero, 28(a0)
80003e58: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003e5c: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003e60: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003e64: 23 22 05 02  	sw	zero, 36(a0)
80003e68: 23 20 c5 02  	sw	a2, 32(a0)

80003e6c <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80003e6c: 17 25 00 00  	auipc	a0, 2
80003e70: 13 05 45 89  	addi	a0, a0, -1900
80003e74: 23 20 d5 00  	sw	a3, 0(a0)

80003e78 <.LBB2_8>:
80003e78: 17 25 00 00  	auipc	a0, 2
80003e7c: 13 05 85 8c  	addi	a0, a0, -1848
;         while (fromhost == 0)
80003e80: 03 26 05 00  	lw	a2, 0(a0)
80003e84: e3 0e 06 fe  	beqz	a2, 0x80003e80 <.LBB2_8+0x8>
;         fromhost = 0;
80003e88: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80003e8c: 23 a0 05 00  	sw	zero, 0(a1)
; }
80003e90: 67 80 00 00  	ret

80003e94 <_out_null>:
; }
80003e94: 67 80 00 00  	ret

80003e98 <_ftoa>:
; {
80003e98: 13 01 01 f9  	addi	sp, sp, -112
80003e9c: 23 26 11 06  	sw	ra, 108(sp)
80003ea0: 23 24 81 06  	sw	s0, 104(sp)
80003ea4: 23 22 91 06  	sw	s1, 100(sp)
80003ea8: 23 20 21 07  	sw	s2, 96(sp)
80003eac: 23 2e 31 05  	sw	s3, 92(sp)
80003eb0: 23 2c 41 05  	sw	s4, 88(sp)
80003eb4: 23 2a 51 05  	sw	s5, 84(sp)
80003eb8: 23 28 61 05  	sw	s6, 80(sp)
80003ebc: 23 26 71 05  	sw	s7, 76(sp)
80003ec0: 23 24 81 05  	sw	s8, 72(sp)
80003ec4: 23 22 91 05  	sw	s9, 68(sp)
80003ec8: 23 20 a1 05  	sw	s10, 64(sp)
80003ecc: 27 3c 81 02  	fsd	fs0, 56(sp)
80003ed0: 27 38 91 02  	fsd	fs1, 48(sp)
80003ed4: 27 34 21 03  	fsd	fs2, 40(sp)

80003ed8 <.LBB4_83>:
80003ed8: 97 24 00 00  	auipc	s1, 2
80003edc: 93 84 04 8c  	addi	s1, s1, -1856
80003ee0: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80003ee4: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80003ee8: 93 0a 08 00  	mv	s5, a6
80003eec: 13 89 07 00  	mv	s2, a5
80003ef0: 93 89 06 00  	mv	s3, a3
80003ef4: 13 0a 06 00  	mv	s4, a2
80003ef8: 13 8b 05 00  	mv	s6, a1
80003efc: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80003f00: 63 98 04 0e  	bnez	s1, 0x80003ff0 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003f04: 13 f5 2a 00  	andi	a0, s5, 2
80003f08: 93 f5 3a 00  	andi	a1, s5, 3
80003f0c: b3 35 b0 00  	snez	a1, a1
80003f10: 13 36 59 00  	sltiu	a2, s2, 5
80003f14: b3 65 b6 00  	or	a1, a2, a1
80003f18: 93 5c 15 00  	srli	s9, a0, 1
80003f1c: 13 04 0a 00  	mv	s0, s4
80003f20: 63 96 05 02  	bnez	a1, 0x80003f4c <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80003f24: 93 04 c9 ff  	addi	s1, s2, -4
80003f28: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003f2c: 13 04 16 00  	addi	s0, a2, 1
80003f30: 13 05 00 02  	addi	a0, zero, 32
80003f34: 93 05 0b 00  	mv	a1, s6
80003f38: 93 86 09 00  	mv	a3, s3
80003f3c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003f40: 93 84 f4 ff  	addi	s1, s1, -1
80003f44: 13 06 04 00  	mv	a2, s0
80003f48: e3 92 04 fe  	bnez	s1, 0x80003f2c <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80003f4c: 93 04 14 00  	addi	s1, s0, 1
80003f50: 13 05 d0 02  	addi	a0, zero, 45
80003f54: 93 05 0b 00  	mv	a1, s6
80003f58: 13 06 04 00  	mv	a2, s0
80003f5c: 93 86 09 00  	mv	a3, s3
80003f60: e7 80 0b 00  	jalr	s7
80003f64: 93 0a 24 00  	addi	s5, s0, 2
80003f68: 13 05 90 06  	addi	a0, zero, 105
80003f6c: 93 05 0b 00  	mv	a1, s6
80003f70: 13 86 04 00  	mv	a2, s1
80003f74: 93 86 09 00  	mv	a3, s3
80003f78: e7 80 0b 00  	jalr	s7
80003f7c: 13 0c 34 00  	addi	s8, s0, 3
80003f80: 13 05 e0 06  	addi	a0, zero, 110
80003f84: 93 05 0b 00  	mv	a1, s6
80003f88: 13 86 0a 00  	mv	a2, s5
80003f8c: 93 86 09 00  	mv	a3, s3
80003f90: e7 80 0b 00  	jalr	s7
80003f94: 93 04 44 00  	addi	s1, s0, 4
80003f98: 13 05 60 06  	addi	a0, zero, 102
80003f9c: 93 05 0b 00  	mv	a1, s6
80003fa0: 13 06 0c 00  	mv	a2, s8
80003fa4: 93 86 09 00  	mv	a3, s3
80003fa8: e7 80 0b 00  	jalr	s7
80003fac: 33 85 44 41  	sub	a0, s1, s4
80003fb0: 33 35 25 01  	sltu	a0, a0, s2
80003fb4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003fb8: 93 c5 1c 00  	xori	a1, s9, 1
80003fbc: 33 e5 a5 00  	or	a0, a1, a0
80003fc0: 63 16 05 56  	bnez	a0, 0x8000452c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003fc4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003fc8: 13 84 14 00  	addi	s0, s1, 1
80003fcc: 13 05 00 02  	addi	a0, zero, 32
80003fd0: 93 05 0b 00  	mv	a1, s6
80003fd4: 13 86 04 00  	mv	a2, s1
80003fd8: 93 86 09 00  	mv	a3, s3
80003fdc: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003fe0: 33 05 8a 00  	add	a0, s4, s0
80003fe4: 93 04 04 00  	mv	s1, s0
80003fe8: e3 60 25 ff  	bltu	a0, s2, 0x80003fc8 <.LBB4_83+0xf0>
80003fec: 6f 00 40 54  	j	0x80004530 <.LBB4_90+0x378>
80003ff0: 53 04 a5 22  	fmv.d	fs0, fa0

80003ff4 <.LBB4_84>:
80003ff4: 17 15 00 00  	auipc	a0, 1
80003ff8: 13 05 c5 7a  	addi	a0, a0, 1964
80003ffc: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80004000: 53 05 05 a2  	fle.d	a0, fa0, ft0
80004004: 63 1e 05 00  	bnez	a0, 0x80004020 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80004008: 93 f5 4a 00  	andi	a1, s5, 4
8000400c: 13 b5 15 00  	seqz	a0, a1
80004010: 63 82 05 06  	beqz	a1, 0x80004074 <.LBB4_88>

80004014 <.LBB4_85>:
80004014: 17 1c 00 00  	auipc	s8, 1
80004018: 13 0c cc 4a  	addi	s8, s8, 1196
8000401c: 6f 00 00 06  	j	0x8000407c <.LBB4_88+0x8>

80004020 <.LBB4_86>:
80004020: 17 15 00 00  	auipc	a0, 1
80004024: 13 05 85 78  	addi	a0, a0, 1928
80004028: 07 30 05 00  	fld	ft0, 0(a0)

8000402c <.LBB4_87>:
8000402c: 17 15 00 00  	auipc	a0, 1
80004030: 13 05 45 78  	addi	a0, a0, 1924
80004034: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80004038: 53 05 04 a2  	fle.d	a0, fs0, ft0
8000403c: d3 85 80 a2  	fle.d	a1, ft1, fs0
80004040: 33 75 b5 00  	and	a0, a0, a1
80004044: 63 1e 05 0e  	bnez	a0, 0x80004140 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004048: 13 85 0b 00  	mv	a0, s7
8000404c: 93 05 0b 00  	mv	a1, s6
80004050: 13 06 0a 00  	mv	a2, s4
80004054: 93 86 09 00  	mv	a3, s3
80004058: 53 05 84 22  	fmv.d	fa0, fs0
8000405c: 93 07 09 00  	mv	a5, s2
80004060: 13 88 0a 00  	mv	a6, s5
80004064: 97 00 00 00  	auipc	ra, 0
80004068: e7 80 40 51  	jalr	1300(ra)
8000406c: 13 04 05 00  	mv	s0, a0
80004070: 6f 00 00 4c  	j	0x80004530 <.LBB4_90+0x378>

80004074 <.LBB4_88>:
80004074: 17 1c 00 00  	auipc	s8, 1
80004078: 13 0c bc 46  	addi	s8, s8, 1131
8000407c: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80004080: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004084: 13 f5 3a 00  	andi	a0, s5, 3
80004088: 33 35 a0 00  	snez	a0, a0
8000408c: b3 b5 2c 01  	sltu	a1, s9, s2
80004090: 93 c5 15 00  	xori	a1, a1, 1
80004094: 33 65 b5 00  	or	a0, a0, a1
80004098: 93 fa 2a 00  	andi	s5, s5, 2
8000409c: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800040a0: 63 16 05 02  	bnez	a0, 0x800040cc <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800040a4: 33 04 99 41  	sub	s0, s2, s9
800040a8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800040ac: 93 04 16 00  	addi	s1, a2, 1
800040b0: 13 05 00 02  	addi	a0, zero, 32
800040b4: 93 05 0b 00  	mv	a1, s6
800040b8: 93 86 09 00  	mv	a3, s3
800040bc: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800040c0: 13 04 f4 ff  	addi	s0, s0, -1
800040c4: 13 86 04 00  	mv	a2, s1
800040c8: e3 12 04 fe  	bnez	s0, 0x800040ac <.LBB4_88+0x38>
800040cc: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800040d0: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800040d4: 33 05 9c 01  	add	a0, s8, s9
800040d8: 03 45 05 00  	lbu	a0, 0(a0)
800040dc: 13 86 04 00  	mv	a2, s1
800040e0: 13 84 fc ff  	addi	s0, s9, -1
800040e4: 93 84 14 00  	addi	s1, s1, 1
800040e8: 93 05 0b 00  	mv	a1, s6
800040ec: 93 86 09 00  	mv	a3, s3
800040f0: e7 80 0b 00  	jalr	s7
800040f4: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800040f8: e3 1e 04 fc  	bnez	s0, 0x800040d4 <.LBB4_88+0x60>
800040fc: 33 85 44 41  	sub	a0, s1, s4
80004100: 33 35 25 01  	sltu	a0, a0, s2
80004104: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004108: 93 c5 1a 00  	xori	a1, s5, 1
8000410c: 33 e5 a5 00  	or	a0, a1, a0
80004110: 63 1e 05 40  	bnez	a0, 0x8000452c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004114: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004118: 13 84 14 00  	addi	s0, s1, 1
8000411c: 13 05 00 02  	addi	a0, zero, 32
80004120: 93 05 0b 00  	mv	a1, s6
80004124: 13 86 04 00  	mv	a2, s1
80004128: 93 86 09 00  	mv	a3, s3
8000412c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004130: 33 05 8a 00  	add	a0, s4, s0
80004134: 93 04 04 00  	mv	s1, s0
80004138: e3 60 25 ff  	bltu	a0, s2, 0x80004118 <.LBB4_88+0xa4>
8000413c: 6f 00 40 3f  	j	0x80004530 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80004140: 13 f5 0a 40  	andi	a0, s5, 1024
80004144: 13 0c 60 00  	addi	s8, zero, 6
80004148: 63 04 05 00  	beqz	a0, 0x80004150 <.LBB4_88+0xdc>
8000414c: 13 0c 07 00  	mv	s8, a4
80004150: 13 05 a0 00  	addi	a0, zero, 10
80004154: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004158: 63 6c ac 02  	bltu	s8, a0, 0x80004190 <.LBB4_88+0x11c>
8000415c: 93 04 6c ff  	addi	s1, s8, -10
80004160: 13 05 f0 01  	addi	a0, zero, 31
80004164: 63 e4 a4 00  	bltu	s1, a0, 0x8000416c <.LBB4_88+0xf8>
80004168: 93 04 f0 01  	addi	s1, zero, 31
8000416c: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80004170: 13 05 81 00  	addi	a0, sp, 8
80004174: 93 05 00 03  	addi	a1, zero, 48
80004178: 13 06 04 00  	mv	a2, s0
8000417c: 97 c0 ff ff  	auipc	ra, 1048572
80004180: e7 80 c0 3d  	jalr	988(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004184: 13 c5 f4 ff  	not	a0, s1
80004188: 33 0c ac 00  	add	s8, s8, a0
8000418c: 6f 00 80 00  	j	0x80004194 <.LBB4_88+0x120>
80004190: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80004194: 13 15 3c 00  	slli	a0, s8, 3

80004198 <.LBB4_89>:
80004198: 97 15 00 00  	auipc	a1, 1
8000419c: 93 85 85 50  	addi	a1, a1, 1288
800041a0: 33 05 b5 00  	add	a0, a0, a1
800041a4: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
800041a8: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
800041ac: 53 80 04 d2  	fcvt.d.w	ft0, s1
800041b0: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
800041b4: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

800041b8 <.LBB4_90>:
800041b8: 17 15 00 00  	auipc	a0, 1
800041bc: 13 05 05 60  	addi	a0, a0, 1536
800041c0: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
800041c4: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
800041c8: d3 01 15 d2  	fcvt.d.wu	ft3, a0
800041cc: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
800041d0: d3 05 01 a2  	fle.d	a1, ft2, ft0
800041d4: 63 90 05 02  	bnez	a1, 0x800041f4 <.LBB4_90+0x3c>
;     ++frac;
800041d8: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
800041dc: 53 01 15 d2  	fcvt.d.wu	ft2, a0
800041e0: d3 15 11 a2  	flt.d	a1, ft2, ft1
800041e4: 63 94 05 02  	bnez	a1, 0x8000420c <.LBB4_90+0x54>
800041e8: 13 05 00 00  	mv	a0, zero
;       ++whole;
800041ec: 93 84 14 00  	addi	s1, s1, 1
800041f0: 6f 00 c0 01  	j	0x8000420c <.LBB4_90+0x54>
;   else if (diff < 0.5) {
800041f4: d3 15 01 a2  	flt.d	a1, ft2, ft0
800041f8: 63 9a 05 00  	bnez	a1, 0x8000420c <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
800041fc: 93 35 15 00  	seqz	a1, a0
80004200: 13 76 15 00  	andi	a2, a0, 1
80004204: b3 65 b6 00  	or	a1, a2, a1
80004208: 33 85 a5 00  	add	a0, a1, a0
8000420c: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80004210: 63 0c 0c 0c  	beqz	s8, 0x800042e8 <.LBB4_90+0x130>
80004214: 13 06 00 00  	mv	a2, zero
80004218: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
8000421c: 33 83 85 00  	add	t1, a1, s0
80004220: 93 02 00 02  	addi	t0, zero, 32
80004224: 33 87 82 40  	sub	a4, t0, s0
80004228: b7 d5 cc cc  	lui	a1, 838861
8000422c: 93 83 d5 cc  	addi	t2, a1, -819
80004230: 13 08 a0 00  	addi	a6, zero, 10
80004234: 93 08 90 00  	addi	a7, zero, 9
80004238: 63 04 c7 0c  	beq	a4, a2, 0x80004300 <.LBB4_90+0x148>
8000423c: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80004240: 33 35 75 02  	mulhu	a0, a0, t2
80004244: 13 55 35 00  	srli	a0, a0, 3
80004248: b3 06 05 03  	mul	a3, a0, a6
8000424c: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80004250: 93 e6 06 03  	ori	a3, a3, 48
80004254: b3 07 c3 00  	add	a5, t1, a2
80004258: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
8000425c: 13 06 16 00  	addi	a2, a2, 1
80004260: e3 ec b8 fc  	bltu	a7, a1, 0x80004238 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004264: 33 05 c4 00  	add	a0, s0, a2
80004268: 93 05 f5 ff  	addi	a1, a0, -1
8000426c: 93 06 e0 01  	addi	a3, zero, 30
80004270: b3 b6 b6 00  	sltu	a3, a3, a1
80004274: 33 47 cc 00  	xor	a4, s8, a2
80004278: 13 37 17 00  	seqz	a4, a4
8000427c: b3 e6 e6 00  	or	a3, a3, a4
80004280: 63 94 06 08  	bnez	a3, 0x80004308 <.LBB4_90+0x150>
80004284: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004288: 33 05 85 00  	add	a0, a0, s0
8000428c: 93 45 f6 ff  	not	a1, a2
80004290: 33 8c 85 01  	add	s8, a1, s8
80004294: 33 04 c4 00  	add	s0, s0, a2
80004298: 93 05 f0 01  	addi	a1, zero, 31
8000429c: b3 86 85 40  	sub	a3, a1, s0
800042a0: 33 05 c5 00  	add	a0, a0, a2
800042a4: 93 05 0c 00  	mv	a1, s8
800042a8: 63 64 dc 00  	bltu	s8, a3, 0x800042b0 <.LBB4_90+0xf8>
800042ac: 93 85 06 00  	mv	a1, a3
800042b0: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800042b4: 93 05 00 03  	addi	a1, zero, 48
800042b8: 97 c0 ff ff  	auipc	ra, 1048572
800042bc: e7 80 00 2a  	jalr	672(ra)
800042c0: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800042c4: b3 05 a4 00  	add	a1, s0, a0
800042c8: 93 b5 f5 01  	sltiu	a1, a1, 31
800042cc: 33 46 ac 00  	xor	a2, s8, a0
800042d0: 33 36 c0 00  	snez	a2, a2
800042d4: 33 f6 c5 00  	and	a2, a1, a2
800042d8: 13 05 15 00  	addi	a0, a0, 1
800042dc: e3 14 06 fe  	bnez	a2, 0x800042c4 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800042e0: 33 05 a4 00  	add	a0, s0, a0
800042e4: 6f 00 80 02  	j	0x8000430c <.LBB4_90+0x154>
;     diff = value - (double)whole;
800042e8: d3 80 04 d2  	fcvt.d.w	ft1, s1
800042ec: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800042f0: 53 05 10 a2  	fle.d	a0, ft0, ft1
800042f4: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800042f8: b3 84 a4 00  	add	s1, s1, a0
800042fc: 6f 00 c0 03  	j	0x80004338 <.LBB4_90+0x180>
80004300: 13 04 00 02  	addi	s0, zero, 32
80004304: 6f 00 80 03  	j	0x8000433c <.LBB4_90+0x184>
80004308: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
8000430c: 63 8e 05 00  	beqz	a1, 0x80004328 <.LBB4_90+0x170>
;       buf[len++] = '.';
80004310: 13 04 15 00  	addi	s0, a0, 1
80004314: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80004318: 33 85 a5 00  	add	a0, a1, a0
8000431c: 93 05 e0 02  	addi	a1, zero, 46
80004320: 23 00 b5 00  	sb	a1, 0(a0)
80004324: 6f 00 80 00  	j	0x8000432c <.LBB4_90+0x174>
80004328: 13 04 05 00  	mv	s0, a0
8000432c: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004330: 93 02 04 00  	mv	t0, s0
80004334: 63 64 85 00  	bltu	a0, s0, 0x8000433c <.LBB4_90+0x184>
80004338: 93 02 00 02  	addi	t0, zero, 32
8000433c: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80004340: 37 65 66 66  	lui	a0, 419430
80004344: 93 05 75 66  	addi	a1, a0, 1639
80004348: 13 08 a0 00  	addi	a6, zero, 10
8000434c: 93 06 81 00  	addi	a3, sp, 8
80004350: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004354: 63 80 82 04  	beq	t0, s0, 0x80004394 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80004358: 33 95 b4 02  	mulh	a0, s1, a1
8000435c: 93 57 f5 01  	srli	a5, a0, 31
80004360: 13 55 25 40  	srai	a0, a0, 2
80004364: 33 05 f5 00  	add	a0, a0, a5
80004368: b3 07 05 03  	mul	a5, a0, a6
8000436c: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004370: 93 87 07 03  	addi	a5, a5, 48
80004374: 13 0c 14 00  	addi	s8, s0, 1
80004378: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
8000437c: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80004380: 23 00 f4 00  	sb	a5, 0(s0)
80004384: 13 04 0c 00  	mv	s0, s8
80004388: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
8000438c: e3 64 c7 fc  	bltu	a4, a2, 0x80004354 <.LBB4_90+0x19c>
80004390: 6f 00 80 00  	j	0x80004398 <.LBB4_90+0x1e0>
80004394: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004398: 93 f4 3a 00  	andi	s1, s5, 3
8000439c: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800043a0: 63 96 a4 06  	bne	s1, a0, 0x8000440c <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800043a4: 63 0c 09 00  	beqz	s2, 0x800043bc <.LBB4_90+0x204>
800043a8: 13 f5 ca 00  	andi	a0, s5, 12
800043ac: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800043b0: 33 e5 ac 00  	or	a0, s9, a0
800043b4: 33 09 a9 40  	sub	s2, s2, a0
800043b8: 6f 00 80 00  	j	0x800043c0 <.LBB4_90+0x208>
800043bc: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800043c0: 33 35 2c 01  	sltu	a0, s8, s2
800043c4: 93 45 15 00  	xori	a1, a0, 1
800043c8: 13 05 f0 01  	addi	a0, zero, 31
800043cc: 33 36 85 01  	sltu	a2, a0, s8
800043d0: b3 65 b6 00  	or	a1, a2, a1
800043d4: 63 9c 05 02  	bnez	a1, 0x8000440c <.LBB4_90+0x254>
800043d8: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800043dc: 93 45 fc ff  	not	a1, s8
800043e0: b3 05 b9 00  	add	a1, s2, a1
800043e4: 33 06 85 41  	sub	a2, a0, s8
800043e8: 33 85 86 01  	add	a0, a3, s8
800043ec: 63 e4 c5 00  	bltu	a1, a2, 0x800043f4 <.LBB4_90+0x23c>
800043f0: 93 05 06 00  	mv	a1, a2
800043f4: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800043f8: 93 05 00 03  	addi	a1, zero, 48
800043fc: 13 06 04 00  	mv	a2, s0
80004400: 97 c0 ff ff  	auipc	ra, 1048572
80004404: e7 80 80 15  	jalr	344(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004408: 33 0c 84 01  	add	s8, s0, s8
8000440c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004410: 63 6a 85 05  	bltu	a0, s8, 0x80004464 <.LBB4_90+0x2ac>
;     if (negative) {
80004414: 63 8c 0c 00  	beqz	s9, 0x8000442c <.LBB4_90+0x274>
80004418: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
8000441c: 33 05 85 01  	add	a0, a0, s8
80004420: 13 0c 1c 00  	addi	s8, s8, 1
80004424: 93 05 d0 02  	addi	a1, zero, 45
80004428: 6f 00 80 03  	j	0x80004460 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
8000442c: 13 f5 4a 00  	andi	a0, s5, 4
80004430: 63 10 05 02  	bnez	a0, 0x80004450 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80004434: 13 f5 8a 00  	andi	a0, s5, 8
80004438: 63 06 05 02  	beqz	a0, 0x80004464 <.LBB4_90+0x2ac>
8000443c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80004440: 33 05 85 01  	add	a0, a0, s8
80004444: 13 0c 1c 00  	addi	s8, s8, 1
80004448: 93 05 00 02  	addi	a1, zero, 32
8000444c: 6f 00 40 01  	j	0x80004460 <.LBB4_90+0x2a8>
80004450: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004454: 33 05 85 01  	add	a0, a0, s8
80004458: 13 0c 1c 00  	addi	s8, s8, 1
8000445c: 93 05 b0 02  	addi	a1, zero, 43
80004460: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004464: 33 35 90 00  	snez	a0, s1
80004468: b3 35 2c 01  	sltu	a1, s8, s2
8000446c: 93 c5 15 00  	xori	a1, a1, 1
80004470: 33 65 b5 00  	or	a0, a0, a1
80004474: 93 fa 2a 00  	andi	s5, s5, 2
80004478: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000447c: 63 16 05 02  	bnez	a0, 0x800044a8 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004480: b3 04 89 41  	sub	s1, s2, s8
80004484: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004488: 13 04 16 00  	addi	s0, a2, 1
8000448c: 13 05 00 02  	addi	a0, zero, 32
80004490: 93 05 0b 00  	mv	a1, s6
80004494: 93 86 09 00  	mv	a3, s3
80004498: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
8000449c: 93 84 f4 ff  	addi	s1, s1, -1
800044a0: 13 06 04 00  	mv	a2, s0
800044a4: e3 92 04 fe  	bnez	s1, 0x80004488 <.LBB4_90+0x2d0>
800044a8: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800044ac: 63 0c 0c 02  	beqz	s8, 0x800044e4 <.LBB4_90+0x32c>
800044b0: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800044b4: 33 85 8c 01  	add	a0, s9, s8
800044b8: 03 45 05 00  	lbu	a0, 0(a0)
800044bc: 13 0d fc ff  	addi	s10, s8, -1
800044c0: 93 04 14 00  	addi	s1, s0, 1
800044c4: 93 05 0b 00  	mv	a1, s6
800044c8: 13 06 04 00  	mv	a2, s0
800044cc: 93 86 09 00  	mv	a3, s3
800044d0: e7 80 0b 00  	jalr	s7
800044d4: 13 84 04 00  	mv	s0, s1
800044d8: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800044dc: e3 1c 0d fc  	bnez	s10, 0x800044b4 <.LBB4_90+0x2fc>
800044e0: 6f 00 80 00  	j	0x800044e8 <.LBB4_90+0x330>
800044e4: 93 04 04 00  	mv	s1, s0
800044e8: 33 85 44 41  	sub	a0, s1, s4
800044ec: 33 35 25 01  	sltu	a0, a0, s2
800044f0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800044f4: 93 c5 1a 00  	xori	a1, s5, 1
800044f8: 33 e5 a5 00  	or	a0, a1, a0
800044fc: 63 18 05 02  	bnez	a0, 0x8000452c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004500: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004504: 13 84 14 00  	addi	s0, s1, 1
80004508: 13 05 00 02  	addi	a0, zero, 32
8000450c: 93 05 0b 00  	mv	a1, s6
80004510: 13 86 04 00  	mv	a2, s1
80004514: 93 86 09 00  	mv	a3, s3
80004518: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
8000451c: 33 05 8a 00  	add	a0, s4, s0
80004520: 93 04 04 00  	mv	s1, s0
80004524: e3 60 25 ff  	bltu	a0, s2, 0x80004504 <.LBB4_90+0x34c>
80004528: 6f 00 80 00  	j	0x80004530 <.LBB4_90+0x378>
8000452c: 13 84 04 00  	mv	s0, s1
; }
80004530: 13 05 04 00  	mv	a0, s0
80004534: 07 39 81 02  	fld	fs2, 40(sp)
80004538: 87 34 01 03  	fld	fs1, 48(sp)
8000453c: 07 34 81 03  	fld	fs0, 56(sp)
80004540: 03 2d 01 04  	lw	s10, 64(sp)
80004544: 83 2c 41 04  	lw	s9, 68(sp)
80004548: 03 2c 81 04  	lw	s8, 72(sp)
8000454c: 83 2b c1 04  	lw	s7, 76(sp)
80004550: 03 2b 01 05  	lw	s6, 80(sp)
80004554: 83 2a 41 05  	lw	s5, 84(sp)
80004558: 03 2a 81 05  	lw	s4, 88(sp)
8000455c: 83 29 c1 05  	lw	s3, 92(sp)
80004560: 03 29 01 06  	lw	s2, 96(sp)
80004564: 83 24 41 06  	lw	s1, 100(sp)
80004568: 03 24 81 06  	lw	s0, 104(sp)
8000456c: 83 20 c1 06  	lw	ra, 108(sp)
80004570: 13 01 01 07  	addi	sp, sp, 112
80004574: 67 80 00 00  	ret

80004578 <_etoa>:
; {
80004578: 13 01 01 f8  	addi	sp, sp, -128
8000457c: 23 2e 11 06  	sw	ra, 124(sp)
80004580: 23 2c 81 06  	sw	s0, 120(sp)
80004584: 23 2a 91 06  	sw	s1, 116(sp)
80004588: 23 28 21 07  	sw	s2, 112(sp)
8000458c: 23 26 31 07  	sw	s3, 108(sp)
80004590: 23 24 41 07  	sw	s4, 104(sp)
80004594: 23 22 51 07  	sw	s5, 100(sp)
80004598: 23 20 61 07  	sw	s6, 96(sp)
8000459c: 23 2e 71 05  	sw	s7, 92(sp)
800045a0: 23 2c 81 05  	sw	s8, 88(sp)
800045a4: 23 2a 91 05  	sw	s9, 84(sp)
800045a8: 23 28 a1 05  	sw	s10, 80(sp)
800045ac: 23 26 b1 05  	sw	s11, 76(sp)

800045b0 <.LBB5_43>:
800045b0: 97 14 00 00  	auipc	s1, 1
800045b4: 93 84 04 21  	addi	s1, s1, 528
800045b8: 87 b0 04 00  	fld	ft1, 0(s1)

800045bc <.LBB5_44>:
800045bc: 97 14 00 00  	auipc	s1, 1
800045c0: 93 84 c4 20  	addi	s1, s1, 524
800045c4: 07 b1 04 00  	fld	ft2, 0(s1)
800045c8: 53 00 a5 22  	fmv.d	ft0, fa0
800045cc: d3 04 15 a2  	fle.d	s1, fa0, ft1
800045d0: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800045d4: b3 f4 84 00  	and	s1, s1, s0
800045d8: 93 0a 08 00  	mv	s5, a6
800045dc: 13 89 07 00  	mv	s2, a5
800045e0: 93 07 07 00  	mv	a5, a4
800045e4: 93 89 06 00  	mv	s3, a3
800045e8: 13 0a 06 00  	mv	s4, a2
800045ec: 13 8b 05 00  	mv	s6, a1
800045f0: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800045f4: 63 92 04 06  	bnez	s1, 0x80004658 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800045f8: 13 85 0b 00  	mv	a0, s7
800045fc: 93 05 0b 00  	mv	a1, s6
80004600: 13 06 0a 00  	mv	a2, s4
80004604: 93 86 09 00  	mv	a3, s3
80004608: 53 05 00 22  	fmv.d	fa0, ft0
8000460c: 13 87 07 00  	mv	a4, a5
80004610: 93 07 09 00  	mv	a5, s2
80004614: 13 88 0a 00  	mv	a6, s5
80004618: 83 2d c1 04  	lw	s11, 76(sp)
8000461c: 03 2d 01 05  	lw	s10, 80(sp)
80004620: 83 2c 41 05  	lw	s9, 84(sp)
80004624: 03 2c 81 05  	lw	s8, 88(sp)
80004628: 83 2b c1 05  	lw	s7, 92(sp)
8000462c: 03 2b 01 06  	lw	s6, 96(sp)
80004630: 83 2a 41 06  	lw	s5, 100(sp)
80004634: 03 2a 81 06  	lw	s4, 104(sp)
80004638: 83 29 c1 06  	lw	s3, 108(sp)
8000463c: 03 29 01 07  	lw	s2, 112(sp)
80004640: 83 24 41 07  	lw	s1, 116(sp)
80004644: 03 24 81 07  	lw	s0, 120(sp)
80004648: 83 20 c1 07  	lw	ra, 124(sp)
8000464c: 13 01 01 08  	addi	sp, sp, 128
80004650: 17 03 00 00  	auipc	t1, 0
80004654: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80004658: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
8000465c: 13 f5 0a 40  	andi	a0, s5, 1024
80004660: 13 07 60 00  	addi	a4, zero, 6
80004664: 63 04 05 00  	beqz	a0, 0x8000466c <.LBB5_44+0xb0>
80004668: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
8000466c: 27 30 a1 02  	fsd	fa0, 32(sp)
80004670: 83 25 41 02  	lw	a1, 36(sp)
80004674: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004678: 93 d6 45 01  	srli	a3, a1, 20
8000467c: b7 07 10 00  	lui	a5, 256
80004680: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004684: b3 f5 f5 00  	and	a1, a1, a5
80004688: 23 2c c1 00  	sw	a2, 24(sp)
8000468c: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004690: b3 e5 c5 00  	or	a1, a1, a2
80004694: 23 2e b1 00  	sw	a1, 28(sp)
80004698: 87 30 81 01  	fld	ft1, 24(sp)

8000469c <.LBB5_45>:
8000469c: 97 15 00 00  	auipc	a1, 1
800046a0: 93 85 45 13  	addi	a1, a1, 308
800046a4: 07 b1 05 00  	fld	ft2, 0(a1)

800046a8 <.LBB5_46>:
800046a8: 97 15 00 00  	auipc	a1, 1
800046ac: 93 85 05 13  	addi	a1, a1, 304
800046b0: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800046b4: 93 f5 f6 7f  	andi	a1, a3, 2047
800046b8: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800046bc: 53 82 05 d2  	fcvt.d.w	ft4, a1
800046c0: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800046c4 <.LBB5_47>:
800046c4: 97 15 00 00  	auipc	a1, 1
800046c8: 93 85 c5 11  	addi	a1, a1, 284
800046cc: 07 b1 05 00  	fld	ft2, 0(a1)

800046d0 <.LBB5_48>:
800046d0: 97 15 00 00  	auipc	a1, 1
800046d4: 93 85 85 11  	addi	a1, a1, 280
800046d8: 87 b1 05 00  	fld	ft3, 0(a1)

800046dc <.LBB5_49>:
800046dc: 97 15 00 00  	auipc	a1, 1
800046e0: 93 85 45 11  	addi	a1, a1, 276
800046e4: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800046e8: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800046ec: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800046f0: d3 80 05 d2  	fcvt.d.w	ft1, a1
800046f4: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

800046f8 <.LBB5_50>:
800046f8: 17 16 00 00  	auipc	a2, 1
800046fc: 13 06 06 10  	addi	a2, a2, 256
80004700: 87 31 06 00  	fld	ft3, 0(a2)

80004704 <.LBB5_51>:
80004704: 17 16 00 00  	auipc	a2, 1
80004708: 13 06 c6 0f  	addi	a2, a2, 252
8000470c: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004710: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004714: 53 01 06 d2  	fcvt.d.w	ft2, a2
80004718: 53 71 31 12  	fmul.d	ft2, ft2, ft3
8000471c: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004720: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004724: 13 06 f6 3f  	addi	a2, a2, 1023
80004728: 23 28 01 00  	sw	zero, 16(sp)
8000472c: 13 16 46 01  	slli	a2, a2, 20
80004730: 23 2a c1 00  	sw	a2, 20(sp)

80004734 <.LBB5_52>:
80004734: 17 16 00 00  	auipc	a2, 1
80004738: 13 06 c6 0d  	addi	a2, a2, 220
8000473c: 87 31 06 00  	fld	ft3, 0(a2)

80004740 <.LBB5_53>:
80004740: 17 16 00 00  	auipc	a2, 1
80004744: 13 06 86 0d  	addi	a2, a2, 216
80004748: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
8000474c: 87 32 01 01  	fld	ft5, 16(sp)

80004750 <.LBB5_54>:
80004750: 17 16 00 00  	auipc	a2, 1
80004754: 13 06 86 0b  	addi	a2, a2, 184
80004758: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000475c: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004760 <.LBB5_55>:
80004760: 17 16 00 00  	auipc	a2, 1
80004764: 13 06 06 0c  	addi	a2, a2, 192
80004768: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000476c: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004770: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004774: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004778: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
8000477c: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004780: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004784: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80004788: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
8000478c: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004790: 63 0a 06 00  	beqz	a2, 0x800047a4 <.LBB5_56+0x10>

80004794 <.LBB5_56>:
80004794: 97 16 00 00  	auipc	a3, 1
80004798: 93 86 46 09  	addi	a3, a3, 148
8000479c: 07 b1 06 00  	fld	ft2, 0(a3)
800047a0: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800047a4: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800047a8: 93 05 34 06  	addi	a1, s0, 99
800047ac: 93 b5 75 0c  	sltiu	a1, a1, 199
800047b0: 13 06 50 00  	addi	a2, zero, 5
800047b4: b7 16 00 00  	lui	a3, 1
800047b8: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800047bc: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800047c0: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800047c4: 63 84 06 06  	beqz	a3, 0x8000482c <.LBB5_58+0x58>

800047c8 <.LBB5_57>:
800047c8: 97 15 00 00  	auipc	a1, 1
800047cc: 93 85 85 06  	addi	a1, a1, 104
800047d0: 07 b1 05 00  	fld	ft2, 0(a1)

800047d4 <.LBB5_58>:
800047d4: 97 15 00 00  	auipc	a1, 1
800047d8: 93 85 45 06  	addi	a1, a1, 100
800047dc: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800047e0: d3 15 25 a2  	flt.d	a1, fa0, ft2
800047e4: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800047e8: b3 e5 c5 00  	or	a1, a1, a2
800047ec: 63 98 05 00  	bnez	a1, 0x800047fc <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800047f0: 63 40 e4 02  	blt	s0, a4, 0x80004810 <.LBB5_58+0x3c>
800047f4: 13 07 00 00  	mv	a4, zero
800047f8: 6f 00 00 02  	j	0x80004818 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800047fc: 63 06 07 02  	beqz	a4, 0x80004828 <.LBB5_58+0x54>
80004800: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004804: 13 45 15 00  	xori	a0, a0, 1
80004808: 33 07 a7 40  	sub	a4, a4, a0
8000480c: 6f 00 00 02  	j	0x8000482c <.LBB5_58+0x58>
80004810: 13 45 f4 ff  	not	a0, s0
80004814: 33 07 a7 00  	add	a4, a4, a0
80004818: 13 04 00 00  	mv	s0, zero
8000481c: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004820: 93 ea 0a 40  	ori	s5, s5, 1024
80004824: 6f 00 80 00  	j	0x8000482c <.LBB5_58+0x58>
80004828: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
8000482c: b3 05 99 41  	sub	a1, s2, s9
80004830: 33 36 b9 00  	sltu	a2, s2, a1
80004834: 13 05 00 00  	mv	a0, zero
80004838: 63 14 06 00  	bnez	a2, 0x80004840 <.LBB5_58+0x6c>
8000483c: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004840: 93 07 00 00  	mv	a5, zero
80004844: 93 d5 1a 00  	srli	a1, s5, 1
80004848: 93 f4 15 00  	andi	s1, a1, 1
8000484c: b3 35 90 01  	snez	a1, s9
80004850: b3 f5 b4 00  	and	a1, s1, a1
80004854: 53 01 00 d2  	fcvt.d.w	ft2, zero
80004858: 63 94 05 00  	bnez	a1, 0x80004860 <.LBB5_58+0x8c>
8000485c: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004860: 93 35 14 00  	seqz	a1, s0
80004864: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004868: 63 94 05 00  	bnez	a1, 0x80004870 <.LBB5_58+0x9c>
8000486c: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004870: 63 04 05 00  	beqz	a0, 0x80004878 <.LBB5_58+0xa4>
80004874: 53 15 a5 22  	fneg.d	fa0, fa0
80004878: 37 f5 ff ff  	lui	a0, 1048575
8000487c: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004880: 33 f8 aa 00  	and	a6, s5, a0
80004884: 13 85 0b 00  	mv	a0, s7
80004888: 93 05 0b 00  	mv	a1, s6
8000488c: 13 06 0a 00  	mv	a2, s4
80004890: 93 86 09 00  	mv	a3, s3
80004894: 97 f0 ff ff  	auipc	ra, 1048575
80004898: e7 80 40 60  	jalr	1540(ra)
8000489c: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800048a0: 63 82 0c 18  	beqz	s9, 0x80004a24 <.LBB5_58+0x250>
800048a4: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800048a8: 13 f5 0a 02  	andi	a0, s5, 32
800048ac: 13 45 55 06  	xori	a0, a0, 101
800048b0: 93 05 0b 00  	mv	a1, s6
800048b4: 13 06 0d 00  	mv	a2, s10
800048b8: 93 86 09 00  	mv	a3, s3
800048bc: e7 80 0b 00  	jalr	s7
800048c0: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800048c4: 93 5a f4 01  	srli	s5, s0, 31
800048c8: 13 55 f4 41  	srai	a0, s0, 31
800048cc: b3 05 a4 00  	add	a1, s0, a0
800048d0: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800048d4: 93 8d dc ff  	addi	s11, s9, -3
800048d8: 13 04 f0 01  	addi	s0, zero, 31
800048dc: 37 d5 cc cc  	lui	a0, 838861
800048e0: 13 05 d5 cc  	addi	a0, a0, -819
800048e4: 13 08 a0 00  	addi	a6, zero, 10
800048e8: 93 08 c1 02  	addi	a7, sp, 44
800048ec: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800048f0: b3 37 a7 02  	mulhu	a5, a4, a0
800048f4: 93 d5 37 00  	srli	a1, a5, 3
800048f8: b3 87 05 03  	mul	a5, a1, a6
800048fc: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004900: 13 e6 07 03  	ori	a2, a5, 48
80004904: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004908: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000490c: 13 0c 1c 00  	addi	s8, s8, 1
80004910: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004914: 33 b6 e2 00  	sltu	a2, t0, a4
80004918: 33 f6 c7 00  	and	a2, a5, a2
8000491c: 93 8d fd ff  	addi	s11, s11, -1
80004920: 13 04 f4 ff  	addi	s0, s0, -1
80004924: 13 87 05 00  	mv	a4, a1
80004928: e3 14 06 fc  	bnez	a2, 0x800048f0 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000492c: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004930: 33 35 ac 00  	sltu	a0, s8, a0
80004934: 13 45 15 00  	xori	a0, a0, 1
80004938: 93 c5 17 00  	xori	a1, a5, 1
8000493c: 33 e5 a5 00  	or	a0, a1, a0
80004940: 63 12 05 04  	bnez	a0, 0x80004984 <.LBB5_58+0x1b0>
80004944: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004948: b3 85 8c 41  	sub	a1, s9, s8
8000494c: 93 85 d5 ff  	addi	a1, a1, -3
80004950: 13 06 f0 01  	addi	a2, zero, 31
80004954: 33 06 86 41  	sub	a2, a2, s8
80004958: 33 05 85 01  	add	a0, a0, s8
8000495c: 63 e4 c5 00  	bltu	a1, a2, 0x80004964 <.LBB5_58+0x190>
80004960: 93 05 06 00  	mv	a1, a2
80004964: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004968: 93 05 00 03  	addi	a1, zero, 48
8000496c: 97 c0 ff ff  	auipc	ra, 1048572
80004970: e7 80 c0 be  	jalr	-1044(ra)
;   if (flags & FLAGS_HASH) {
80004974: 63 e4 8d 00  	bltu	s11, s0, 0x8000497c <.LBB5_58+0x1a8>
80004978: 93 0d 04 00  	mv	s11, s0
8000497c: 33 85 8d 01  	add	a0, s11, s8
80004980: 13 0c 15 00  	addi	s8, a0, 1
80004984: 83 2c c1 00  	lw	s9, 12(sp)
80004988: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000498c: 63 60 85 03  	bltu	a0, s8, 0x800049ac <.LBB5_58+0x1d8>
80004990: 13 05 c1 02  	addi	a0, sp, 44
80004994: 33 05 85 01  	add	a0, a0, s8
80004998: 93 05 d0 02  	addi	a1, zero, 45
8000499c: 63 94 0a 00  	bnez	s5, 0x800049a4 <.LBB5_58+0x1d0>
800049a0: 93 05 b0 02  	addi	a1, zero, 43
800049a4: 13 0c 1c 00  	addi	s8, s8, 1
800049a8: 23 00 b5 00  	sb	a1, 0(a0)
800049ac: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800049b0: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800049b4: 33 85 8a 01  	add	a0, s5, s8
800049b8: 03 45 05 00  	lbu	a0, 0(a0)
800049bc: 13 06 04 00  	mv	a2, s0
800049c0: 93 04 fc ff  	addi	s1, s8, -1
800049c4: 13 04 14 00  	addi	s0, s0, 1
800049c8: 93 05 0b 00  	mv	a1, s6
800049cc: 93 86 09 00  	mv	a3, s3
800049d0: e7 80 0b 00  	jalr	s7
800049d4: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800049d8: e3 9e 04 fc  	bnez	s1, 0x800049b4 <.LBB5_58+0x1e0>
800049dc: 33 05 44 41  	sub	a0, s0, s4
800049e0: 33 35 25 01  	sltu	a0, a0, s2
800049e4: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800049e8: 93 c5 1c 00  	xori	a1, s9, 1
800049ec: 33 e5 a5 00  	or	a0, a1, a0
800049f0: 63 18 05 02  	bnez	a0, 0x80004a20 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800049f4: b3 04 40 41  	neg	s1, s4
800049f8: 13 0d 14 00  	addi	s10, s0, 1
800049fc: 13 05 00 02  	addi	a0, zero, 32
80004a00: 93 05 0b 00  	mv	a1, s6
80004a04: 13 06 04 00  	mv	a2, s0
80004a08: 93 86 09 00  	mv	a3, s3
80004a0c: e7 80 0b 00  	jalr	s7
80004a10: 33 85 a4 01  	add	a0, s1, s10
80004a14: 13 04 0d 00  	mv	s0, s10
80004a18: e3 60 25 ff  	bltu	a0, s2, 0x800049f8 <.LBB5_58+0x224>
80004a1c: 6f 00 80 00  	j	0x80004a24 <.LBB5_58+0x250>
80004a20: 13 0d 04 00  	mv	s10, s0
; }
80004a24: 13 05 0d 00  	mv	a0, s10
80004a28: 83 2d c1 04  	lw	s11, 76(sp)
80004a2c: 03 2d 01 05  	lw	s10, 80(sp)
80004a30: 83 2c 41 05  	lw	s9, 84(sp)
80004a34: 03 2c 81 05  	lw	s8, 88(sp)
80004a38: 83 2b c1 05  	lw	s7, 92(sp)
80004a3c: 03 2b 01 06  	lw	s6, 96(sp)
80004a40: 83 2a 41 06  	lw	s5, 100(sp)
80004a44: 03 2a 81 06  	lw	s4, 104(sp)
80004a48: 83 29 c1 06  	lw	s3, 108(sp)
80004a4c: 03 29 01 07  	lw	s2, 112(sp)
80004a50: 83 24 41 07  	lw	s1, 116(sp)
80004a54: 03 24 81 07  	lw	s0, 120(sp)
80004a58: 83 20 c1 07  	lw	ra, 124(sp)
80004a5c: 13 01 01 08  	addi	sp, sp, 128
80004a60: 67 80 00 00  	ret

80004a64 <_ntoa_format>:
; {
80004a64: 13 01 01 fc  	addi	sp, sp, -64
80004a68: 23 2e 11 02  	sw	ra, 60(sp)
80004a6c: 23 2c 81 02  	sw	s0, 56(sp)
80004a70: 23 2a 91 02  	sw	s1, 52(sp)
80004a74: 23 28 21 03  	sw	s2, 48(sp)
80004a78: 23 26 31 03  	sw	s3, 44(sp)
80004a7c: 23 24 41 03  	sw	s4, 40(sp)
80004a80: 23 22 51 03  	sw	s5, 36(sp)
80004a84: 23 20 61 03  	sw	s6, 32(sp)
80004a88: 23 2e 71 01  	sw	s7, 28(sp)
80004a8c: 23 2c 81 01  	sw	s8, 24(sp)
80004a90: 23 2a 91 01  	sw	s9, 20(sp)
80004a94: 23 28 a1 01  	sw	s10, 16(sp)
80004a98: 23 26 b1 01  	sw	s11, 12(sp)
80004a9c: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004aa0: 93 fa 2e 00  	andi	s5, t4, 2
80004aa4: 13 09 0e 00  	mv	s2, t3
80004aa8: 13 8d 03 00  	mv	s10, t2
80004aac: 93 8c 08 00  	mv	s9, a7
80004ab0: 13 8c 07 00  	mv	s8, a5
80004ab4: 93 89 06 00  	mv	s3, a3
80004ab8: 13 0a 06 00  	mv	s4, a2
80004abc: 13 8b 05 00  	mv	s6, a1
80004ac0: 93 0d 05 00  	mv	s11, a0
80004ac4: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80004ac8: 63 9e 0a 0c  	bnez	s5, 0x80004ba4 <_ntoa_format+0x140>
80004acc: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004ad0: 63 0e 09 00  	beqz	s2, 0x80004aec <_ntoa_format+0x88>
80004ad4: 63 0e 04 00  	beqz	s0, 0x80004af0 <_ntoa_format+0x8c>
80004ad8: 13 f5 cb 00  	andi	a0, s7, 12
80004adc: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004ae0: 33 65 05 01  	or	a0, a0, a6
80004ae4: 33 09 a9 40  	sub	s2, s2, a0
80004ae8: 6f 00 80 00  	j	0x80004af0 <_ntoa_format+0x8c>
80004aec: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004af0: 33 35 ac 01  	sltu	a0, s8, s10
80004af4: 93 45 15 00  	xori	a1, a0, 1
80004af8: 13 05 f0 01  	addi	a0, zero, 31
80004afc: 33 36 85 01  	sltu	a2, a0, s8
80004b00: b3 65 b6 00  	or	a1, a2, a1
80004b04: 63 94 05 04  	bnez	a1, 0x80004b4c <_ntoa_format+0xe8>
80004b08: 23 22 51 01  	sw	s5, 4(sp)
80004b0c: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004b10: 93 45 fc ff  	not	a1, s8
80004b14: b3 85 a5 01  	add	a1, a1, s10
80004b18: 33 06 85 41  	sub	a2, a0, s8
80004b1c: 33 05 87 01  	add	a0, a4, s8
80004b20: 63 e4 c5 00  	bltu	a1, a2, 0x80004b28 <_ntoa_format+0xc4>
80004b24: 93 05 06 00  	mv	a1, a2
80004b28: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004b2c: 93 05 00 03  	addi	a1, zero, 48
80004b30: 13 86 04 00  	mv	a2, s1
80004b34: 97 c0 ff ff  	auipc	ra, 1048572
80004b38: e7 80 40 a2  	jalr	-1500(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004b3c: 33 8c 84 01  	add	s8, s1, s8
80004b40: 03 27 81 00  	lw	a4, 8(sp)
80004b44: 13 88 0a 00  	mv	a6, s5
80004b48: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004b4c: 63 0c 04 04  	beqz	s0, 0x80004ba4 <_ntoa_format+0x140>
80004b50: 33 35 2c 01  	sltu	a0, s8, s2
80004b54: 93 45 15 00  	xori	a1, a0, 1
80004b58: 13 05 f0 01  	addi	a0, zero, 31
80004b5c: 33 36 85 01  	sltu	a2, a0, s8
80004b60: b3 e5 c5 00  	or	a1, a1, a2
80004b64: 63 90 05 04  	bnez	a1, 0x80004ba4 <_ntoa_format+0x140>
80004b68: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004b6c: 93 45 fc ff  	not	a1, s8
80004b70: b3 05 b9 00  	add	a1, s2, a1
80004b74: 33 06 85 41  	sub	a2, a0, s8
80004b78: 33 05 87 01  	add	a0, a4, s8
80004b7c: 63 e4 c5 00  	bltu	a1, a2, 0x80004b84 <_ntoa_format+0x120>
80004b80: 93 05 06 00  	mv	a1, a2
80004b84: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004b88: 93 05 00 03  	addi	a1, zero, 48
80004b8c: 13 86 04 00  	mv	a2, s1
80004b90: 97 c0 ff ff  	auipc	ra, 1048572
80004b94: e7 80 80 9c  	jalr	-1592(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004b98: 33 8c 84 01  	add	s8, s1, s8
80004b9c: 03 27 81 00  	lw	a4, 8(sp)
80004ba0: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004ba4: 13 f5 0b 01  	andi	a0, s7, 16
80004ba8: 63 02 05 0e  	beqz	a0, 0x80004c8c <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80004bac: 13 f5 0b 40  	andi	a0, s7, 1024
80004bb0: 13 55 a5 00  	srli	a0, a0, 10
80004bb4: 93 35 1c 00  	seqz	a1, s8
80004bb8: 33 65 b5 00  	or	a0, a0, a1
80004bbc: 63 1e 05 02  	bnez	a0, 0x80004bf8 <_ntoa_format+0x194>
80004bc0: 33 45 ac 01  	xor	a0, s8, s10
80004bc4: 33 35 a0 00  	snez	a0, a0
80004bc8: b3 45 2c 01  	xor	a1, s8, s2
80004bcc: b3 35 b0 00  	snez	a1, a1
80004bd0: 33 75 b5 00  	and	a0, a0, a1
80004bd4: 63 12 05 02  	bnez	a0, 0x80004bf8 <_ntoa_format+0x194>
;       len--;
80004bd8: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80004bdc: b3 35 a0 00  	snez	a1, a0
80004be0: 13 86 0c ff  	addi	a2, s9, -16
80004be4: 13 36 16 00  	seqz	a2, a2
80004be8: b3 75 b6 00  	and	a1, a2, a1
80004bec: 63 84 05 00  	beqz	a1, 0x80004bf4 <_ntoa_format+0x190>
80004bf0: 13 05 ec ff  	addi	a0, s8, -2
80004bf4: 13 0c 05 00  	mv	s8, a0
80004bf8: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004bfc: 63 96 ac 02  	bne	s9, a0, 0x80004c28 <_ntoa_format+0x1c4>
80004c00: 13 f5 0b 02  	andi	a0, s7, 32
80004c04: 93 55 55 00  	srli	a1, a0, 5
80004c08: 13 06 f0 01  	addi	a2, zero, 31
80004c0c: 33 36 86 01  	sltu	a2, a2, s8
80004c10: b3 e5 c5 00  	or	a1, a1, a2
80004c14: 63 9e 05 02  	bnez	a1, 0x80004c50 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004c18: 33 05 87 01  	add	a0, a4, s8
80004c1c: 13 0c 1c 00  	addi	s8, s8, 1
80004c20: 93 05 80 07  	addi	a1, zero, 120
80004c24: 6f 00 c0 04  	j	0x80004c70 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004c28: 13 85 ec ff  	addi	a0, s9, -2
80004c2c: 33 35 a0 00  	snez	a0, a0
80004c30: 93 05 f0 01  	addi	a1, zero, 31
80004c34: b3 b5 85 01  	sltu	a1, a1, s8
80004c38: 33 65 b5 00  	or	a0, a0, a1
80004c3c: 63 1c 05 02  	bnez	a0, 0x80004c74 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004c40: 33 05 87 01  	add	a0, a4, s8
80004c44: 13 0c 1c 00  	addi	s8, s8, 1
80004c48: 93 05 20 06  	addi	a1, zero, 98
80004c4c: 6f 00 40 02  	j	0x80004c70 <_ntoa_format+0x20c>
80004c50: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004c54: 13 35 15 00  	seqz	a0, a0
80004c58: 93 c5 15 00  	xori	a1, a1, 1
80004c5c: 33 65 b5 00  	or	a0, a0, a1
80004c60: 63 1a 05 00  	bnez	a0, 0x80004c74 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004c64: 33 05 87 01  	add	a0, a4, s8
80004c68: 13 0c 1c 00  	addi	s8, s8, 1
80004c6c: 93 05 80 05  	addi	a1, zero, 88
80004c70: 23 00 b5 00  	sb	a1, 0(a0)
80004c74: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004c78: 63 60 85 07  	bltu	a0, s8, 0x80004cd8 <_ntoa_format+0x274>
;       buf[len++] = '0';
80004c7c: 33 05 87 01  	add	a0, a4, s8
80004c80: 13 0c 1c 00  	addi	s8, s8, 1
80004c84: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80004c88: 23 00 b5 00  	sb	a1, 0(a0)
80004c8c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004c90: 63 64 85 05  	bltu	a0, s8, 0x80004cd8 <_ntoa_format+0x274>
;     if (negative) {
80004c94: 63 0a 08 00  	beqz	a6, 0x80004ca8 <_ntoa_format+0x244>
;       buf[len++] = '-';
80004c98: 33 05 87 01  	add	a0, a4, s8
80004c9c: 13 0c 1c 00  	addi	s8, s8, 1
80004ca0: 93 05 d0 02  	addi	a1, zero, 45
80004ca4: 6f 00 00 03  	j	0x80004cd4 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80004ca8: 13 f5 4b 00  	andi	a0, s7, 4
80004cac: 63 1e 05 00  	bnez	a0, 0x80004cc8 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80004cb0: 13 f5 8b 00  	andi	a0, s7, 8
80004cb4: 63 02 05 02  	beqz	a0, 0x80004cd8 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80004cb8: 33 05 87 01  	add	a0, a4, s8
80004cbc: 13 0c 1c 00  	addi	s8, s8, 1
80004cc0: 93 05 00 02  	addi	a1, zero, 32
80004cc4: 6f 00 00 01  	j	0x80004cd4 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004cc8: 33 05 87 01  	add	a0, a4, s8
80004ccc: 13 0c 1c 00  	addi	s8, s8, 1
80004cd0: 93 05 b0 02  	addi	a1, zero, 43
80004cd4: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004cd8: 13 f5 3b 00  	andi	a0, s7, 3
80004cdc: 33 35 a0 00  	snez	a0, a0
80004ce0: b3 35 2c 01  	sltu	a1, s8, s2
80004ce4: 93 c5 15 00  	xori	a1, a1, 1
80004ce8: 33 65 b5 00  	or	a0, a0, a1
80004cec: 13 04 0a 00  	mv	s0, s4
80004cf0: 63 16 05 02  	bnez	a0, 0x80004d1c <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80004cf4: b3 04 89 41  	sub	s1, s2, s8
80004cf8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004cfc: 13 04 16 00  	addi	s0, a2, 1
80004d00: 13 05 00 02  	addi	a0, zero, 32
80004d04: 93 05 0b 00  	mv	a1, s6
80004d08: 93 86 09 00  	mv	a3, s3
80004d0c: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80004d10: 93 84 f4 ff  	addi	s1, s1, -1
80004d14: 13 06 04 00  	mv	a2, s0
80004d18: e3 92 04 fe  	bnez	s1, 0x80004cfc <_ntoa_format+0x298>
80004d1c: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80004d20: 63 0e 0c 02  	beqz	s8, 0x80004d5c <_ntoa_format+0x2f8>
80004d24: 03 25 81 00  	lw	a0, 8(sp)
80004d28: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004d2c: 33 85 8b 01  	add	a0, s7, s8
80004d30: 03 45 05 00  	lbu	a0, 0(a0)
80004d34: 93 0c fc ff  	addi	s9, s8, -1
80004d38: 93 04 14 00  	addi	s1, s0, 1
80004d3c: 93 05 0b 00  	mv	a1, s6
80004d40: 13 06 04 00  	mv	a2, s0
80004d44: 93 86 09 00  	mv	a3, s3
80004d48: e7 80 0d 00  	jalr	s11
80004d4c: 13 84 04 00  	mv	s0, s1
80004d50: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80004d54: e3 9c 0c fc  	bnez	s9, 0x80004d2c <_ntoa_format+0x2c8>
80004d58: 6f 00 80 00  	j	0x80004d60 <_ntoa_format+0x2fc>
80004d5c: 93 04 04 00  	mv	s1, s0
80004d60: 33 85 44 41  	sub	a0, s1, s4
80004d64: 33 35 25 01  	sltu	a0, a0, s2
80004d68: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004d6c: 93 c5 1a 00  	xori	a1, s5, 1
80004d70: 33 e5 a5 00  	or	a0, a1, a0
80004d74: 63 18 05 02  	bnez	a0, 0x80004da4 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80004d78: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004d7c: 13 84 14 00  	addi	s0, s1, 1
80004d80: 13 05 00 02  	addi	a0, zero, 32
80004d84: 93 05 0b 00  	mv	a1, s6
80004d88: 13 86 04 00  	mv	a2, s1
80004d8c: 93 86 09 00  	mv	a3, s3
80004d90: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80004d94: 33 05 8a 00  	add	a0, s4, s0
80004d98: 93 04 04 00  	mv	s1, s0
80004d9c: e3 60 25 ff  	bltu	a0, s2, 0x80004d7c <_ntoa_format+0x318>
80004da0: 6f 00 80 00  	j	0x80004da8 <_ntoa_format+0x344>
80004da4: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80004da8: 13 05 04 00  	mv	a0, s0
80004dac: 83 2d c1 00  	lw	s11, 12(sp)
80004db0: 03 2d 01 01  	lw	s10, 16(sp)
80004db4: 83 2c 41 01  	lw	s9, 20(sp)
80004db8: 03 2c 81 01  	lw	s8, 24(sp)
80004dbc: 83 2b c1 01  	lw	s7, 28(sp)
80004dc0: 03 2b 01 02  	lw	s6, 32(sp)
80004dc4: 83 2a 41 02  	lw	s5, 36(sp)
80004dc8: 03 2a 81 02  	lw	s4, 40(sp)
80004dcc: 83 29 c1 02  	lw	s3, 44(sp)
80004dd0: 03 29 01 03  	lw	s2, 48(sp)
80004dd4: 83 24 41 03  	lw	s1, 52(sp)
80004dd8: 03 24 81 03  	lw	s0, 56(sp)
80004ddc: 83 20 c1 03  	lw	ra, 60(sp)
80004de0: 13 01 01 04  	addi	sp, sp, 64
80004de4: 67 80 00 00  	ret

80004de8 <_snrt_init_team>:
;     team->base.root = team;
80004de8: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80004dec: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004df0: 03 23 87 00  	lw	t1, 8(a4)
80004df4: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004df8: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80004dfc: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004e00: 83 22 47 00  	lw	t0, 4(a4)
80004e04: 33 88 08 03  	mul	a6, a7, a6
80004e08: 33 05 58 02  	mul	a0, a6, t0
80004e0c: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004e10: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80004e14: 33 85 68 40  	sub	a0, a7, t1
80004e18: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80004e1c: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80004e20: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80004e24: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80004e28: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80004e2c: 03 25 87 01  	lw	a0, 24(a4)
80004e30: b7 05 00 10  	lui	a1, 65536
80004e34: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80004e38: 23 a2 07 02  	sw	zero, 36(a5)
80004e3c: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80004e40: 03 25 07 02  	lw	a0, 32(a4)
80004e44: 83 25 47 02  	lw	a1, 36(a4)
80004e48: 23 a4 a7 02  	sw	a0, 40(a5)
80004e4c: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80004e50: 23 a8 c7 02  	sw	a2, 48(a5)
80004e54: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80004e58: 23 ac d7 02  	sw	a3, 56(a5)
80004e5c: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80004e60: 03 25 07 01  	lw	a0, 16(a4)
80004e64: 33 08 a6 00  	add	a6, a2, a0
80004e68: 93 05 08 19  	addi	a1, a6, 400
80004e6c: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80004e70: b3 32 a8 00  	sltu	t0, a6, a0
80004e74: 93 55 15 00  	srli	a1, a0, 1
80004e78: 33 03 b8 00  	add	t1, a6, a1
80004e7c: b3 35 03 01  	sltu	a1, t1, a6
80004e80: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80004e84: 23 a0 67 04  	sw	t1, 64(a5)
80004e88: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80004e8c: 13 15 15 00  	slli	a0, a0, 1
80004e90: b3 05 c5 00  	add	a1, a0, a2
80004e94: 33 b5 a5 00  	sltu	a0, a1, a0
80004e98: 23 a4 b7 04  	sw	a1, 72(a5)
80004e9c: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80004ea0: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80004ea4: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80004ea8: 37 05 00 00  	lui	a0, 0
80004eac: 33 05 45 00  	add	a0, a0, tp
80004eb0: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004eb4: 03 a5 07 00  	lw	a0, 0(a5)
80004eb8: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80004ebc: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004ec0: b3 85 b8 40  	sub	a1, a7, a1
80004ec4: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80004ec8: b7 05 00 00  	lui	a1, 0
80004ecc: b3 85 45 00  	add	a1, a1, tp
80004ed0: 23 a2 a5 00  	sw	a0, 4(a1)
80004ed4: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80004ed8: 33 85 a8 02  	mul	a0, a7, a0

80004edc <.LBB0_1>:
80004edc: 97 15 00 00  	auipc	a1, 1
80004ee0: 93 85 85 96  	addi	a1, a1, -1688
80004ee4: 33 05 b5 00  	add	a0, a0, a1
80004ee8: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80004eec: 83 28 07 03  	lw	a7, 48(a4)
80004ef0: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80004ef4: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80004ef8: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80004efc: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80004f00: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80004f04: 13 05 76 00  	addi	a0, a2, 7
80004f08: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80004f0c: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80004f10: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80004f14: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80004f18: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80004f1c: 03 a5 05 00  	lw	a0, 0(a1)
80004f20: 13 05 f5 44  	addi	a0, a0, 1103
80004f24: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80004f28: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80004f2c: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80004f30: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80004f34: 37 05 00 00  	lui	a0, 0
80004f38: 33 05 45 00  	add	a0, a0, tp
80004f3c: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80004f40: 37 05 00 00  	lui	a0, 0
80004f44: 33 05 45 00  	add	a0, a0, tp
80004f48: 23 26 e5 00  	sw	a4, 12(a0)
; }
80004f4c: 67 80 00 00  	ret

80004f50 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004f50: 37 05 00 00  	lui	a0, 0
80004f54: 33 05 45 00  	add	a0, a0, tp
80004f58: 03 25 05 00  	lw	a0, 0(a0)
80004f5c: 03 25 05 00  	lw	a0, 0(a0)
80004f60: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004f64: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004f68: 33 85 a5 40  	sub	a0, a1, a0
80004f6c: 67 80 00 00  	ret

80004f70 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80004f70: 37 05 00 00  	lui	a0, 0
80004f74: 33 05 45 00  	add	a0, a0, tp
80004f78: 03 25 05 00  	lw	a0, 0(a0)
80004f7c: 03 25 05 00  	lw	a0, 0(a0)
80004f80: 03 25 05 07  	lw	a0, 112(a0)
80004f84: 67 80 00 00  	ret

80004f88 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80004f88: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80004f8c: 63 44 05 00  	bltz	a0, 0x80004f94 <__snrt_isr+0xc>
;         while (1)
80004f90: 6f 00 00 00  	j	0x80004f90 <__snrt_isr+0x8>
80004f94: b7 05 00 80  	lui	a1, 524288
80004f98: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80004f9c: 33 75 b5 00  	and	a0, a0, a1
80004fa0: 13 05 d5 ff  	addi	a0, a0, -3
80004fa4: 93 55 25 00  	srli	a1, a0, 2
80004fa8: 13 15 e5 01  	slli	a0, a0, 30
80004fac: 33 65 b5 00  	or	a0, a0, a1
80004fb0: 93 05 40 00  	addi	a1, zero, 4
80004fb4: 63 0a b5 06  	beq	a0, a1, 0x80005028 <.LBB1_7+0x58>
80004fb8: 63 1a 05 08  	bnez	a0, 0x8000504c <.LBB1_7+0x7c>
80004fbc: 37 05 00 00  	lui	a0, 0
80004fc0: 33 05 45 00  	add	a0, a0, tp
80004fc4: 03 25 05 00  	lw	a0, 0(a0)
80004fc8: 03 25 05 00  	lw	a0, 0(a0)
80004fcc: f3 25 40 f1  	csrr	a1, mhartid

80004fd0 <.LBB1_7>:
;     asm volatile(
80004fd0: 17 16 00 00  	auipc	a2, 1
80004fd4: 13 06 06 87  	addi	a2, a2, -1936
80004fd8: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80004fdc: 93 06 06 00  	mv	a3, a2
80004fe0: 93 02 10 00  	addi	t0, zero, 1
80004fe4: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80004fe8: e3 9e 02 fe  	bnez	t0, 0x80004fe4 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80004fec: b7 06 00 00  	lui	a3, 0
80004ff0: b3 86 46 00  	add	a3, a3, tp
80004ff4: 83 a6 86 00  	lw	a3, 8(a3)
80004ff8: 33 85 a5 40  	sub	a0, a1, a0
80004ffc: 93 55 35 00  	srli	a1, a0, 3
80005000: 93 f5 c5 ff  	andi	a1, a1, -4
80005004: b3 85 b6 00  	add	a1, a3, a1
80005008: 83 a6 05 00  	lw	a3, 0(a1)
8000500c: 13 07 10 00  	addi	a4, zero, 1
80005010: 33 15 a7 00  	sll	a0, a4, a0
80005014: 13 45 f5 ff  	not	a0, a0
80005018: 33 f5 a6 00  	and	a0, a3, a0
8000501c: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80005020: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80005024: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80005028: 37 05 00 00  	lui	a0, 0
8000502c: 33 05 45 00  	add	a0, a0, tp
80005030: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80005034: b7 05 00 00  	lui	a1, 0
80005038: b3 85 45 00  	add	a1, a1, tp
8000503c: 83 a5 c5 00  	lw	a1, 12(a1)
80005040: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80005044: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80005048: 23 a4 a5 00  	sw	a0, 8(a1)
; }
8000504c: 67 80 00 00  	ret

Disassembly of section .init:

80005050 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80005050: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80005054: 93 81 81 ef  	addi	gp, gp, -264

80005058 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80005058: 97 00 00 00  	auipc	ra, 0
8000505c: e7 80 40 3c  	jalr	964(ra)

80005060 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80005060: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80005064: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80005068: 97 00 00 00  	auipc	ra, 0
8000506c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80005070: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80005074: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80005078: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000507c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80005080: 63 92 02 02  	bnez	t0, 0x800050a4 <snrt.crt0.init_registers>

80005084 <.Lpcrel_hi0>:
;     la        t0, _edata
80005084: 97 02 00 00  	auipc	t0, 0
80005088: 93 82 c2 7b  	addi	t0, t0, 1980

8000508c <.Lpcrel_hi1>:
;     la        t1, _end
8000508c: 17 03 00 00  	auipc	t1, 0
80005090: 13 03 83 7b  	addi	t1, t1, 1976
;     bge       t0, t1, 2f
80005094: 63 d8 62 00  	bge	t0, t1, 0x800050a4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80005098: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000509c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800050a0: e3 cc 62 fe  	blt	t0, t1, 0x80005098 <.Lpcrel_hi1+0xc>

800050a4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800050a4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800050a8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800050ac: 63 82 02 08  	beqz	t0, 0x80005130 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800050b0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800050b4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800050b8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800050bc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800050c0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800050c4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800050c8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800050cc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800050d0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800050d4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800050d8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800050dc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800050e0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800050e4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800050e8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800050ec: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800050f0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800050f4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800050f8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800050fc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80005100: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80005104: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80005108: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000510c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80005110: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80005114: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80005118: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000511c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80005120: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80005124: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80005128: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000512c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80005130 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80005130: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80005134: 23 a0 06 00  	sw	zero, 0(a3)

80005138 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80005138: 97 02 00 00  	auipc	t0, 0
8000513c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80005140: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80005144: 93 87 06 00  	mv	a5, a3

80005148 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80005148: 97 03 00 00  	auipc	t2, 0
8000514c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80005150: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80005154: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80005158: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000515c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80005160: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80005164: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80005168: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000516c: b3 86 66 40  	sub	a3, a3, t1

80005170 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80005170: 97 02 00 00  	auipc	t0, 0
80005174: 93 82 82 5d  	addi	t0, t0, 1496

80005178 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80005178: 17 03 00 00  	auipc	t1, 0
8000517c: 13 03 03 5d  	addi	t1, t1, 1488

80005180 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80005180: 97 03 00 00  	auipc	t2, 0
80005184: 93 83 83 5c  	addi	t2, t2, 1480

80005188 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80005188: 17 0e 00 00  	auipc	t3, 0
8000518c: 13 0e 0e 5d  	addi	t3, t3, 1488
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80005190: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80005194: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80005198: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000519c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800051a0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800051a4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800051a8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800051ac: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800051b0: 63 dc 62 00  	bge	t0, t1, 0x800051c8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800051b4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800051b8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800051bc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800051c0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800051c4: e3 c8 62 fe  	blt	t0, t1, 0x800051b4 <.Lpcrel_hi7+0x2c>

800051c8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800051c8: 97 02 00 00  	auipc	t0, 0
800051cc: 93 82 02 58  	addi	t0, t0, 1408

800051d0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
800051d0: 17 03 00 00  	auipc	t1, 0
800051d4: 13 03 83 58  	addi	t1, t1, 1416
;     bge       t0, t1, 2f
800051d8: 63 da 62 00  	bge	t0, t1, 0x800051ec <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
800051dc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800051e0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800051e4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800051e8: e3 ca 72 fe  	blt	t0, t2, 0x800051dc <.Lpcrel_hi9+0xc>

800051ec <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800051ec: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800051f0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800051f4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800051f8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800051fc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80005200: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80005204: 97 00 00 00  	auipc	ra, 0
80005208: e7 80 40 be  	jalr	-1052(ra)
;     lw        a0, 0(sp)
8000520c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80005210: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80005214: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80005218: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000521c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80005220: 13 01 41 01  	addi	sp, sp, 20

80005224 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80005224: 97 02 00 00  	auipc	t0, 0
80005228: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000522c: 73 90 52 30  	csrw	mtvec, t0

80005230 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80005230: 97 00 00 00  	auipc	ra, 0
80005234: e7 80 00 22  	jalr	544(ra)

80005238 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80005238: 97 b0 ff ff  	auipc	ra, 1048571
8000523c: e7 80 c0 3f  	jalr	1020(ra)
;     mv        s0, a0 # store return value in s0
80005240: 13 04 05 00  	mv	s0, a0

80005244 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80005244: 97 00 00 00  	auipc	ra, 0
80005248: e7 80 c0 20  	jalr	524(ra)

8000524c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000524c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80005250: 97 00 00 00  	auipc	ra, 0
80005254: e7 80 c0 22  	jalr	556(ra)
;     wfi
80005258: 73 00 50 10  	wfi	
;     j       1b
8000525c: 6f f0 df ff  	j	0x80005258 <snrt.crt0.end+0xc>

80005260 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005260: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005264: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005268: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000526c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80005270: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80005274: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80005278: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000527c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80005280: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80005284: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80005288: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000528c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80005290: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80005294: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80005298: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000529c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800052a0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800052a4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800052a8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800052ac: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800052b0: 63 84 02 08  	beqz	t0, 0x80005338 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800052b4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800052b8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800052bc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800052c0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800052c4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800052c8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800052cc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800052d0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800052d4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800052d8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800052dc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800052e0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800052e4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800052e8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800052ec: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800052f0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800052f4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800052f8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800052fc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80005300: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80005304: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80005308: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000530c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80005310: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80005314: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80005318: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000531c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80005320: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80005324: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80005328: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000532c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80005330: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80005334: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80005338: 97 00 00 00  	auipc	ra, 0
8000533c: e7 80 00 c5  	jalr	-944(ra)
;     csrr    t0, misa
80005340: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80005344: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005348: 63 84 02 08  	beqz	t0, 0x800053d0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000534c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80005350: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80005354: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80005358: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000535c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005360: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005364: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005368: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000536c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005370: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005374: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005378: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000537c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80005380: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80005384: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80005388: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000538c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80005390: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80005394: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80005398: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000539c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800053a0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800053a4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800053a8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800053ac: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800053b0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800053b4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800053b8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800053bc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800053c0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800053c4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800053c8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800053cc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
800053d0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
800053d4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
800053d8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
800053dc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800053e0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800053e4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800053e8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800053ec: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800053f0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800053f4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800053f8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800053fc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80005400: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80005404: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80005408: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000540c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80005410: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80005414: 13 01 01 05  	addi	sp, sp, 80
;     mret
80005418: 73 00 20 30  	mret	

8000541c <_snrt_init_core_info>:
;     mv        a4, a1
8000541c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80005420: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80005424: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80005428: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000542c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80005430: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80005434: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80005438: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000543c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80005440: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80005444: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80005448: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000544c: 67 80 00 00  	ret

80005450 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80005450: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80005454: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80005458: 97 00 00 00  	auipc	ra, 0
8000545c: e7 80 80 b1  	jalr	-1256(ra)
;     lw        a0, 0(a0)
80005460: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005464: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005468: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000546c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005470: 67 80 00 00  	ret

80005474 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005474: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005478: 67 80 00 00  	ret

8000547c <_snrt_exit>:
;     addi      sp, sp, -8
8000547c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005480: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005484: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005488: 97 00 00 00  	auipc	ra, 0
8000548c: e7 80 80 ac  	jalr	-1336(ra)
;     lw        t0, 0(sp)
80005490: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005494: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005498: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000549c: 63 1c 05 00  	bnez	a0, 0x800054b4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800054a0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800054a4: 93 e2 12 00  	ori	t0, t0, 1

800054a8 <.Lpcrel_hi11>:
;     la        t1, tohost
800054a8: 17 03 00 00  	auipc	t1, 0
800054ac: 13 03 83 25  	addi	t1, t1, 600
;     sw        t0, 0(t1)
800054b0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800054b4: 67 80 00 00  	ret
