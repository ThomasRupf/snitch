
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET-IS_RESTRICTED-3mm-ssrfriendly:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000037c0 80000000 TEXT
  2 .init             00000468 800037c0 TEXT
  3 .rodata           00000238 80003c28 DATA
  4 .htif             00000048 80003e80 DATA
  5 .tdata            00000000 80003ec8 DATA
  6 .tbss             00000010 80003ec8 BSS
  7 .tbssend          00000000 80003ed8 DATA
  8 .sdata            000000d8 80003ed8 DATA
  9 .data             00000000 80003fb0 DATA
 10 .sbss             00000004 80003fb0 BSS
 11 .bss              00000000 80003fb4 BSS
 12 .dram             00000000 80003fb4 DATA
 13 .debug_info       00003827 00000000 
 14 .debug_abbrev     00000c0f 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002ff9 00000000 
 17 .debug_loc        000038f8 00000000 
 18 .debug_ranges     00000378 00000000 
 19 .debug_str        00000b0f 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c4 00000000 
 23 .symtab           00003300 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000934 00000000 


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
80000634: 13 01 01 f5  	addi	sp, sp, -176
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 0a  	sw	ra, 172(sp)
8000063c: 23 24 81 0a  	sw	s0, 168(sp)
80000640: 23 22 91 0a  	sw	s1, 164(sp)
80000644: 23 20 21 0b  	sw	s2, 160(sp)
80000648: 23 2e 31 09  	sw	s3, 156(sp)
8000064c: 23 2c 41 09  	sw	s4, 152(sp)
80000650: 23 2a 51 09  	sw	s5, 148(sp)
80000654: 23 28 61 09  	sw	s6, 144(sp)
80000658: 23 26 71 09  	sw	s7, 140(sp)
8000065c: 23 24 81 09  	sw	s8, 136(sp)
80000660: 23 22 91 09  	sw	s9, 132(sp)
80000664: 23 20 a1 09  	sw	s10, 128(sp)
80000668: 23 2e b1 07  	sw	s11, 124(sp)
8000066c: 27 38 81 06  	fsd	fs0, 112(sp)
80000670: 27 34 91 06  	fsd	fs1, 104(sp)
80000674: 27 30 21 07  	fsd	fs2, 96(sp)
80000678: 27 3c 31 05  	fsd	fs3, 88(sp)
8000067c: 27 38 41 05  	fsd	fs4, 80(sp)
80000680: 27 34 51 05  	fsd	fs5, 72(sp)
80000684: 27 30 61 05  	fsd	fs6, 64(sp)
80000688: 27 3c 71 03  	fsd	fs7, 56(sp)
8000068c: 27 38 81 03  	fsd	fs8, 48(sp)
80000690: 37 05 00 00  	lui	a0, 0
80000694: 33 05 45 00  	add	a0, a0, tp
80000698: 83 25 45 00  	lw	a1, 4(a0)
8000069c: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
800006a0: 63 84 05 00  	beqz	a1, 0x800006a8 <main+0x74>
800006a4: 6f 10 00 20  	j	0x800018a4 <.LBB0_53+0x10>
;     return _snrt_team_current->root;
800006a8: 37 05 00 00  	lui	a0, 0
800006ac: 33 05 45 00  	add	a0, a0, tp
800006b0: 03 25 05 00  	lw	a0, 0(a0)
800006b4: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b8: 83 27 85 05  	lw	a5, 88(a0)
800006bc: 83 25 05 05  	lw	a1, 80(a0)
800006c0: 03 27 45 05  	lw	a4, 84(a0)
800006c4: 37 16 00 00  	lui	a2, 1
800006c8: 13 06 06 90  	addi	a2, a2, -1792
800006cc: b3 86 c7 00  	add	a3, a5, a2
800006d0: b3 05 b7 00  	add	a1, a4, a1
800006d4: 63 f6 d5 00  	bgeu	a1, a3, 0x800006e0 <main+0xac>
800006d8: 13 08 00 00  	mv	a6, zero
800006dc: 6f 00 00 01  	j	0x800006ec <main+0xb8>
;     alloc->next += size;
800006e0: 23 2c d5 04  	sw	a3, 88(a0)
800006e4: 13 88 07 00  	mv	a6, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e8: 93 87 06 00  	mv	a5, a3
800006ec: b3 06 f6 00  	add	a3, a2, a5
800006f0: 93 86 06 10  	addi	a3, a3, 256
800006f4: 63 f6 d5 00  	bgeu	a1, a3, 0x80000700 <main+0xcc>
800006f8: 93 02 00 00  	mv	t0, zero
800006fc: 6f 00 00 01  	j	0x8000070c <main+0xd8>
;     alloc->next += size;
80000700: 23 2c d5 04  	sw	a3, 88(a0)
80000704: 93 82 07 00  	mv	t0, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000708: 93 87 06 00  	mv	a5, a3
8000070c: b3 06 f6 00  	add	a3, a2, a5
80000710: 93 86 06 24  	addi	a3, a3, 576
80000714: 63 f6 d5 00  	bgeu	a1, a3, 0x80000720 <main+0xec>
80000718: 13 0c 00 00  	mv	s8, zero
8000071c: 6f 00 00 01  	j	0x8000072c <main+0xf8>
;     alloc->next += size;
80000720: 23 2c d5 04  	sw	a3, 88(a0)
80000724: 13 8c 07 00  	mv	s8, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000728: 93 87 06 00  	mv	a5, a3
8000072c: b3 06 f6 00  	add	a3, a2, a5
80000730: 93 86 06 36  	addi	a3, a3, 864
80000734: 63 f6 d5 00  	bgeu	a1, a3, 0x80000740 <main+0x10c>
80000738: 93 04 00 00  	mv	s1, zero
8000073c: 6f 00 00 01  	j	0x8000074c <main+0x118>
;     alloc->next += size;
80000740: 23 2c d5 04  	sw	a3, 88(a0)
80000744: 93 84 07 00  	mv	s1, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000748: 93 87 06 00  	mv	a5, a3
8000074c: b3 06 f6 00  	add	a3, a2, a5
80000750: 93 86 06 48  	addi	a3, a3, 1152
80000754: 63 f6 d5 00  	bgeu	a1, a3, 0x80000760 <main+0x12c>
80000758: 13 04 00 00  	mv	s0, zero
8000075c: 6f 00 00 01  	j	0x8000076c <main+0x138>
;     alloc->next += size;
80000760: 23 2c d5 04  	sw	a3, 88(a0)
80000764: 13 84 07 00  	mv	s0, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000768: 93 87 06 00  	mv	a5, a3
8000076c: b3 06 f6 00  	add	a3, a2, a5
80000770: 93 86 06 78  	addi	a3, a3, 1920
80000774: 63 f6 d5 00  	bgeu	a1, a3, 0x80000780 <main+0x14c>
80000778: 13 07 00 00  	mv	a4, zero
8000077c: 6f 00 00 01  	j	0x8000078c <main+0x158>
;     alloc->next += size;
80000780: 23 2c d5 04  	sw	a3, 88(a0)
80000784: 13 87 07 00  	mv	a4, a5
;     if (alloc->next + size > alloc->base + alloc->size) {
80000788: 93 87 06 00  	mv	a5, a3
8000078c: 33 06 f6 00  	add	a2, a2, a5
80000790: 13 06 06 20  	addi	a2, a2, 512
80000794: 23 26 01 01  	sw	a6, 12(sp)
80000798: 23 24 91 00  	sw	s1, 8(sp)
8000079c: 23 2c 81 00  	sw	s0, 24(sp)
800007a0: 23 2a e1 00  	sw	a4, 20(sp)
800007a4: 63 f6 c5 00  	bgeu	a1, a2, 0x800007b0 <main+0x17c>
800007a8: 23 28 01 00  	sw	zero, 16(sp)
800007ac: 6f 00 c0 00  	j	0x800007b8 <main+0x184>
800007b0: 23 28 f1 00  	sw	a5, 16(sp)
;     alloc->next += size;
800007b4: 23 2c c5 04  	sw	a2, 88(a0)
800007b8: 13 08 00 00  	mv	a6, zero
800007bc: 93 08 00 00  	mv	a7, zero
800007c0: 93 0e 00 00  	mv	t4, zero
800007c4: 13 0f 00 00  	mv	t5, zero
800007c8: 93 0f 00 00  	mv	t6, zero
800007cc: 13 09 00 00  	mv	s2, zero
800007d0: 93 09 00 00  	mv	s3, zero
800007d4: 13 0a 00 00  	mv	s4, zero
800007d8: 23 22 51 00  	sw	t0, 4(sp)
;   for (i = 0; i < ni; i++)
800007dc: 13 85 02 05  	addi	a0, t0, 80
800007e0: 93 0a 10 00  	addi	s5, zero, 1
800007e4: b7 a5 89 3f  	lui	a1, 260250
800007e8: 93 82 95 99  	addi	t0, a1, -1639
800007ec: b7 a5 99 99  	lui	a1, 629146
800007f0: 13 83 a5 99  	addi	t1, a1, -1638

800007f4 <.LBB0_46>:
800007f4: 97 35 00 00  	auipc	a1, 3
800007f8: 93 85 45 6e  	addi	a1, a1, 1764
800007fc: 07 b0 05 00  	fld	ft0, 0(a1)
80000800: 93 03 10 13  	addi	t2, zero, 305
80000804: 13 0b 10 00  	addi	s6, zero, 1
80000808: 93 0b 10 00  	addi	s7, zero, 1
8000080c: 13 0e 10 00  	addi	t3, zero, 1
80000810: 93 07 10 00  	addi	a5, zero, 1
80000814: 93 04 10 00  	addi	s1, zero, 1
80000818: 13 04 10 00  	addi	s0, zero, 1
8000081c: 93 05 10 00  	addi	a1, zero, 1
80000820: 13 06 10 00  	addi	a2, zero, 1
80000824: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000828: 23 2a 55 fa  	sw	t0, -76(a0)
8000082c: 23 28 65 fa  	sw	t1, -80(a0)
80000830: 13 f7 f6 00  	andi	a4, a3, 15
80000834: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000838: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000083c: 27 3c 15 fa  	fsd	ft1, -72(a0)
80000840: 13 f7 e9 00  	andi	a4, s3, 14
80000844: 13 67 17 00  	ori	a4, a4, 1
80000848: d3 00 07 d2  	fcvt.d.w	ft1, a4
8000084c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000850: 27 30 15 fc  	fsd	ft1, -64(a0)
80000854: 13 77 f4 00  	andi	a4, s0, 15
80000858: d3 00 07 d2  	fcvt.d.w	ft1, a4
8000085c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000860: 27 34 15 fc  	fsd	ft1, -56(a0)
80000864: 13 77 c9 00  	andi	a4, s2, 12
80000868: 13 67 17 00  	ori	a4, a4, 1
8000086c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000870: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000874: 27 38 15 fc  	fsd	ft1, -48(a0)
80000878: 13 f7 f7 00  	andi	a4, a5, 15
8000087c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000880: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000884: 27 3c 15 fc  	fsd	ft1, -40(a0)
80000888: 13 77 ef 00  	andi	a4, t5, 14
8000088c: 13 67 17 00  	ori	a4, a4, 1
80000890: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000894: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000898: 27 30 15 fe  	fsd	ft1, -32(a0)
8000089c: 13 f7 fb 00  	andi	a4, s7, 15
800008a0: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008a4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008a8: 27 34 15 fe  	fsd	ft1, -24(a0)
800008ac: 13 f7 88 00  	andi	a4, a7, 8
800008b0: 13 67 17 00  	ori	a4, a4, 1
800008b4: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008b8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008bc: 27 38 15 fe  	fsd	ft1, -16(a0)
800008c0: 13 f7 fa 00  	andi	a4, s5, 15
800008c4: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008c8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008cc: 27 3c 15 fe  	fsd	ft1, -8(a0)
800008d0: 13 77 e8 00  	andi	a4, a6, 14
800008d4: 13 67 17 00  	ori	a4, a4, 1
800008d8: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008dc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008e0: 27 30 15 00  	fsd	ft1, 0(a0)
800008e4: 13 77 fb 00  	andi	a4, s6, 15
800008e8: d3 00 07 d2  	fcvt.d.w	ft1, a4
800008ec: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800008f0: 27 34 15 00  	fsd	ft1, 8(a0)
800008f4: 13 f7 ce 00  	andi	a4, t4, 12
800008f8: 13 67 17 00  	ori	a4, a4, 1
800008fc: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000900: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000904: 27 38 15 00  	fsd	ft1, 16(a0)
80000908: 13 77 fe 00  	andi	a4, t3, 15
8000090c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000910: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000914: 27 3c 15 00  	fsd	ft1, 24(a0)
80000918: 13 f7 ef 00  	andi	a4, t6, 14
8000091c: 13 67 17 00  	ori	a4, a4, 1
80000920: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000924: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000928: 27 30 15 02  	fsd	ft1, 32(a0)
8000092c: 13 f7 f4 00  	andi	a4, s1, 15
80000930: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000934: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000938: 27 34 15 02  	fsd	ft1, 40(a0)
8000093c: 23 2a 55 02  	sw	t0, 52(a0)
80000940: 23 28 65 02  	sw	t1, 48(a0)
80000944: 13 f7 f5 00  	andi	a4, a1, 15
80000948: d3 00 07 d2  	fcvt.d.w	ft1, a4
8000094c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000950: 27 3c 15 02  	fsd	ft1, 56(a0)
80000954: 13 77 ea 00  	andi	a4, s4, 14
80000958: 13 67 17 00  	ori	a4, a4, 1
8000095c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000960: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000964: 27 30 15 04  	fsd	ft1, 64(a0)
80000968: 13 77 f6 00  	andi	a4, a2, 15
8000096c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000970: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000974: 27 34 15 04  	fsd	ft1, 72(a0)
;   for (i = 0; i < ni; i++)
80000978: 93 86 16 00  	addi	a3, a3, 1
8000097c: 13 06 36 01  	addi	a2, a2, 19
80000980: 13 0a 2a 01  	addi	s4, s4, 18
80000984: 93 89 29 00  	addi	s3, s3, 2
80000988: 93 85 15 01  	addi	a1, a1, 17
8000098c: 13 04 34 00  	addi	s0, s0, 3
80000990: 13 09 49 00  	addi	s2, s2, 4
80000994: 93 84 f4 00  	addi	s1, s1, 15
80000998: 93 87 57 00  	addi	a5, a5, 5
8000099c: 93 8f ef 00  	addi	t6, t6, 14
800009a0: 13 0f 6f 00  	addi	t5, t5, 6
800009a4: 13 0e de 00  	addi	t3, t3, 13
800009a8: 93 8b 7b 00  	addi	s7, s7, 7
800009ac: 93 8e ce 00  	addi	t4, t4, 12
800009b0: 93 88 88 00  	addi	a7, a7, 8
800009b4: 13 0b bb 00  	addi	s6, s6, 11
800009b8: 13 05 05 0a  	addi	a0, a0, 160
800009bc: 13 08 a8 00  	addi	a6, a6, 10
800009c0: 93 8a 9a 00  	addi	s5, s5, 9
800009c4: e3 12 76 e6  	bne	a2, t2, 0x80000828 <.LBB0_46+0x34>
800009c8: 13 03 00 00  	mv	t1, zero
800009cc: 93 03 00 00  	mv	t2, zero
800009d0: 93 0e 00 00  	mv	t4, zero
800009d4: 23 20 81 01  	sw	s8, 0(sp)
;   for (i = 0; i < nk; i++)
800009d8: 93 06 8c 04  	addi	a3, s8, 72
800009dc: 93 0f 20 00  	addi	t6, zero, 2
800009e0: 37 95 e3 38  	lui	a0, 233017
800009e4: 93 07 95 e3  	addi	a5, a0, -455
800009e8: 93 04 20 01  	addi	s1, zero, 18
800009ec: 37 c5 96 3f  	lui	a0, 260460
800009f0: 13 08 c5 16  	addi	a6, a0, 364
800009f4: 37 75 c1 16  	lui	a0, 93207
800009f8: 93 02 75 c1  	addi	t0, a0, -1001
800009fc: 93 08 a0 02  	addi	a7, zero, 42
80000a00: 13 09 20 00  	addi	s2, zero, 2
80000a04: 13 0f 20 00  	addi	t5, zero, 2
80000a08: 13 0a 20 00  	addi	s4, zero, 2
80000a0c: 93 0a 20 00  	addi	s5, zero, 2
80000a10: 13 0b 20 00  	addi	s6, zero, 2
80000a14: 93 0b 20 00  	addi	s7, zero, 2
80000a18: 93 0c 20 00  	addi	s9, zero, 2
80000a1c: 93 09 20 00  	addi	s3, zero, 2
80000a20: 93 0d 20 00  	addi	s11, zero, 2
80000a24: 93 00 20 00  	addi	ra, zero, 2
80000a28: 13 0e 20 00  	addi	t3, zero, 2
80000a2c: 13 07 20 00  	addi	a4, zero, 2
80000a30: 13 04 20 00  	addi	s0, zero, 2
80000a34: 13 0d 20 00  	addi	s10, zero, 2
80000a38: 93 05 20 00  	addi	a1, zero, 2
80000a3c: 13 06 20 00  	addi	a2, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000a40: 33 b5 f5 02  	mulhu	a0, a1, a5
80000a44: 13 55 25 00  	srli	a0, a0, 2
80000a48: 33 05 95 02  	mul	a0, a0, s1
80000a4c: 33 85 a5 40  	sub	a0, a1, a0
80000a50: d3 00 05 d2  	fcvt.d.w	ft1, a0

80000a54 <.LBB0_47>:
80000a54: 17 35 00 00  	auipc	a0, 3
80000a58: 13 05 c5 48  	addi	a0, a0, 1164
80000a5c: 07 30 05 00  	fld	ft0, 0(a0)
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000a60: 33 35 f6 02  	mulhu	a0, a2, a5
80000a64: 13 55 25 00  	srli	a0, a0, 2
80000a68: 33 05 95 02  	mul	a0, a0, s1
80000a6c: 33 05 a6 40  	sub	a0, a2, a0
80000a70: 53 01 05 d2  	fcvt.d.w	ft2, a0
80000a74: 33 b5 fe 02  	mulhu	a0, t4, a5
80000a78: 13 55 25 00  	srli	a0, a0, 2
80000a7c: 33 05 95 02  	mul	a0, a0, s1
80000a80: 33 05 ad 40  	sub	a0, s10, a0
80000a84: d3 01 05 d2  	fcvt.d.w	ft3, a0
80000a88: 33 35 f7 02  	mulhu	a0, a4, a5
80000a8c: 13 55 25 00  	srli	a0, a0, 2
80000a90: 33 05 95 02  	mul	a0, a0, s1
80000a94: 33 05 a7 40  	sub	a0, a4, a0
80000a98: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000a9c: 33 b5 f0 02  	mulhu	a0, ra, a5
80000aa0: 13 55 25 00  	srli	a0, a0, 2
80000aa4: 33 05 95 02  	mul	a0, a0, s1
80000aa8: 33 85 a0 40  	sub	a0, ra, a0
80000aac: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000ab0: 33 b5 f3 02  	mulhu	a0, t2, a5
80000ab4: 13 55 25 00  	srli	a0, a0, 2
80000ab8: 33 05 95 02  	mul	a0, a0, s1
80000abc: 33 85 a9 40  	sub	a0, s3, a0
80000ac0: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000ac4: 33 b5 fb 02  	mulhu	a0, s7, a5
80000ac8: 13 55 25 00  	srli	a0, a0, 2
80000acc: 33 05 95 02  	mul	a0, a0, s1
80000ad0: 33 85 ab 40  	sub	a0, s7, a0
80000ad4: d3 03 05 d2  	fcvt.d.w	ft7, a0
80000ad8: 33 b5 fa 02  	mulhu	a0, s5, a5
80000adc: 13 55 25 00  	srli	a0, a0, 2
80000ae0: 33 05 95 02  	mul	a0, a0, s1
80000ae4: 33 85 aa 40  	sub	a0, s5, a0
80000ae8: 53 05 05 d2  	fcvt.d.w	fa0, a0
80000aec: 33 35 f3 02  	mulhu	a0, t1, a5
80000af0: 13 55 25 00  	srli	a0, a0, 2
80000af4: 33 05 95 02  	mul	a0, a0, s1
80000af8: 33 05 af 40  	sub	a0, t5, a0
80000afc: d3 05 05 d2  	fcvt.d.w	fa1, a0
80000b00: 33 b5 ff 02  	mulhu	a0, t6, a5
80000b04: 13 55 25 00  	srli	a0, a0, 2
80000b08: 33 05 95 02  	mul	a0, a0, s1
80000b0c: 33 85 af 40  	sub	a0, t6, a0
80000b10: 53 06 05 d2  	fcvt.d.w	fa2, a0
80000b14: 33 35 f9 02  	mulhu	a0, s2, a5
80000b18: 13 55 25 00  	srli	a0, a0, 2
80000b1c: 33 05 95 02  	mul	a0, a0, s1
80000b20: 33 05 a9 40  	sub	a0, s2, a0
80000b24: d3 06 05 d2  	fcvt.d.w	fa3, a0
80000b28: 33 35 fa 02  	mulhu	a0, s4, a5
80000b2c: 13 55 25 00  	srli	a0, a0, 2
80000b30: 33 05 95 02  	mul	a0, a0, s1
80000b34: 33 05 aa 40  	sub	a0, s4, a0
80000b38: 53 07 05 d2  	fcvt.d.w	fa4, a0
80000b3c: 33 35 fb 02  	mulhu	a0, s6, a5
80000b40: 13 55 25 00  	srli	a0, a0, 2
80000b44: 33 05 95 02  	mul	a0, a0, s1
80000b48: 33 05 ab 40  	sub	a0, s6, a0
80000b4c: d3 07 05 d2  	fcvt.d.w	fa5, a0
80000b50: 33 b5 fc 02  	mulhu	a0, s9, a5
80000b54: 13 55 25 00  	srli	a0, a0, 2
80000b58: 33 05 95 02  	mul	a0, a0, s1
80000b5c: 33 85 ac 40  	sub	a0, s9, a0
80000b60: 53 08 05 d2  	fcvt.d.w	fa6, a0
80000b64: 33 b5 fd 02  	mulhu	a0, s11, a5
80000b68: 13 55 25 00  	srli	a0, a0, 2
80000b6c: 33 05 95 02  	mul	a0, a0, s1
80000b70: 33 85 ad 40  	sub	a0, s11, a0
80000b74: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000b78: 33 35 fe 02  	mulhu	a0, t3, a5
80000b7c: 13 55 25 00  	srli	a0, a0, 2
80000b80: 33 05 95 02  	mul	a0, a0, s1
80000b84: 33 05 ae 40  	sub	a0, t3, a0
80000b88: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000b8c: 33 35 f4 02  	mulhu	a0, s0, a5
80000b90: 13 55 25 00  	srli	a0, a0, 2
80000b94: 33 05 95 02  	mul	a0, a0, s1
80000b98: 33 05 a4 40  	sub	a0, s0, a0
80000b9c: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000ba0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ba4: 27 bc 16 fa  	fsd	ft1, -72(a3)
80000ba8: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80000bac: 27 b0 16 fc  	fsd	ft1, -64(a3)
80000bb0: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80000bb4: 27 b4 16 fc  	fsd	ft1, -56(a3)
80000bb8: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80000bbc: 27 b8 16 fc  	fsd	ft1, -48(a3)
80000bc0: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80000bc4: 27 bc 16 fc  	fsd	ft1, -40(a3)
80000bc8: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80000bcc: 27 b0 16 fe  	fsd	ft1, -32(a3)
80000bd0: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80000bd4: 27 b4 16 fe  	fsd	ft1, -24(a3)
80000bd8: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80000bdc: 27 b8 16 fe  	fsd	ft1, -16(a3)
80000be0: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80000be4: 27 bc 16 fe  	fsd	ft1, -8(a3)
80000be8: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80000bec: 27 b0 16 00  	fsd	ft1, 0(a3)
80000bf0: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80000bf4: 27 b4 16 00  	fsd	ft1, 8(a3)
80000bf8: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80000bfc: 27 b8 16 00  	fsd	ft1, 16(a3)
80000c00: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80000c04: 27 bc 16 00  	fsd	ft1, 24(a3)
80000c08: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80000c0c: 27 b0 16 02  	fsd	ft1, 32(a3)
80000c10: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80000c14: 27 b4 16 02  	fsd	ft1, 40(a3)
80000c18: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80000c1c: 27 b8 16 02  	fsd	ft1, 48(a3)
80000c20: 53 f0 0e 12  	fmul.d	ft0, ft9, ft0
80000c24: 27 bc 06 02  	fsd	ft0, 56(a3)
80000c28: 23 a2 06 05  	sw	a6, 68(a3)
80000c2c: 23 a0 56 04  	sw	t0, 64(a3)
;   for (i = 0; i < nk; i++)
80000c30: 13 06 26 00  	addi	a2, a2, 2
80000c34: 93 85 15 00  	addi	a1, a1, 1
80000c38: 13 0d 3d 00  	addi	s10, s10, 3
80000c3c: 93 8e 3e 00  	addi	t4, t4, 3
80000c40: 13 04 14 01  	addi	s0, s0, 17
80000c44: 13 07 47 00  	addi	a4, a4, 4
80000c48: 13 0e 0e 01  	addi	t3, t3, 16
80000c4c: 93 80 50 00  	addi	ra, ra, 5
80000c50: 93 8d fd 00  	addi	s11, s11, 15
80000c54: 93 89 69 00  	addi	s3, s3, 6
80000c58: 93 83 63 00  	addi	t2, t2, 6
80000c5c: 93 8c ec 00  	addi	s9, s9, 14
80000c60: 93 8b 7b 00  	addi	s7, s7, 7
80000c64: 13 0b db 00  	addi	s6, s6, 13
80000c68: 93 8a 8a 00  	addi	s5, s5, 8
80000c6c: 13 0a ca 00  	addi	s4, s4, 12
80000c70: 13 0f 9f 00  	addi	t5, t5, 9
80000c74: 13 03 93 00  	addi	t1, t1, 9
80000c78: 13 09 b9 00  	addi	s2, s2, 11
80000c7c: 93 86 06 09  	addi	a3, a3, 144
80000c80: 93 8f af 00  	addi	t6, t6, 10
80000c84: e3 1e 16 db  	bne	a2, a7, 0x80000a40 <.LBB0_46+0x24c>
80000c88: 13 04 00 00  	mv	s0, zero
80000c8c: 93 04 00 00  	mv	s1, zero
80000c90: 93 07 00 00  	mv	a5, zero
80000c94: 13 05 00 00  	mv	a0, zero
80000c98: 13 06 00 00  	mv	a2, zero
80000c9c: 13 07 00 00  	mv	a4, zero
80000ca0: 93 05 00 00  	mv	a1, zero
80000ca4: 13 0e 00 00  	mv	t3, zero
80000ca8: 13 0c 00 00  	mv	s8, zero
80000cac: 93 0c 00 00  	mv	s9, zero
80000cb0: 13 0d 00 00  	mv	s10, zero
80000cb4: 93 0d 00 00  	mv	s11, zero
80000cb8: 93 00 00 00  	mv	ra, zero
80000cbc: 13 08 00 00  	mv	a6, zero
80000cc0: 93 0e 00 00  	mv	t4, zero
80000cc4: 13 0f 00 00  	mv	t5, zero
80000cc8: 93 0f 00 00  	mv	t6, zero
80000ccc: 93 09 00 00  	mv	s3, zero
80000cd0: 13 0a 00 00  	mv	s4, zero
80000cd4: 93 0a 00 00  	mv	s5, zero
80000cd8: 13 0b 00 00  	mv	s6, zero
80000cdc: 13 09 00 00  	mv	s2, zero
80000ce0: 93 08 00 00  	mv	a7, zero
;   for (i = 0; i < nj; i++)
80000ce4: 83 26 81 01  	lw	a3, 24(sp)
80000ce8: 93 82 06 06  	addi	t0, a3, 96
80000cec: b7 96 2e ba  	lui	a3, 762601
80000cf0: 13 83 36 ba  	addi	t1, a3, -1117
80000cf4: 93 03 60 01  	addi	t2, zero, 22
80000cf8: 93 0b a0 fe  	addi	s7, zero, -22
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000cfc: 23 22 81 02  	sw	s0, 36(sp)
80000d00: b3 36 69 02  	mulhu	a3, s2, t1
80000d04: 93 d6 46 00  	srli	a3, a3, 4
80000d08: b3 86 76 02  	mul	a3, a3, t2
80000d0c: 13 84 07 00  	mv	s0, a5
80000d10: 93 07 05 00  	mv	a5, a0
80000d14: 13 05 0e 00  	mv	a0, t3
80000d18: 33 0e d9 40  	sub	t3, s2, a3
80000d1c: d3 00 0e d2  	fcvt.d.w	ft1, t3
80000d20: 13 0e 05 00  	mv	t3, a0
80000d24: 13 85 07 00  	mv	a0, a5
80000d28: 93 07 04 00  	mv	a5, s0
80000d2c: 03 24 41 02  	lw	s0, 36(sp)

80000d30 <.LBB0_48>:
80000d30: 97 36 00 00  	auipc	a3, 3
80000d34: 93 86 86 1b  	addi	a3, a3, 440
80000d38: 07 b0 06 00  	fld	ft0, 0(a3)
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80000d3c: b3 36 6b 02  	mulhu	a3, s6, t1
80000d40: 93 d6 46 00  	srli	a3, a3, 4
80000d44: b3 86 76 02  	mul	a3, a3, t2
80000d48: b3 06 db 40  	sub	a3, s6, a3
80000d4c: 53 81 06 d2  	fcvt.d.w	ft2, a3
80000d50: b3 36 6a 02  	mulhu	a3, s4, t1
80000d54: 93 d6 46 00  	srli	a3, a3, 4
80000d58: b3 86 76 02  	mul	a3, a3, t2
80000d5c: b3 06 da 40  	sub	a3, s4, a3
80000d60: d3 81 06 d2  	fcvt.d.w	ft3, a3
80000d64: b3 b6 6f 02  	mulhu	a3, t6, t1
80000d68: 93 d6 46 00  	srli	a3, a3, 4
80000d6c: b3 86 76 02  	mul	a3, a3, t2
80000d70: b3 86 df 40  	sub	a3, t6, a3
80000d74: 53 82 06 d2  	fcvt.d.w	ft4, a3
80000d78: b3 b6 6e 02  	mulhu	a3, t4, t1
80000d7c: 93 d6 46 00  	srli	a3, a3, 4
80000d80: b3 86 76 02  	mul	a3, a3, t2
80000d84: b3 86 de 40  	sub	a3, t4, a3
80000d88: d3 82 06 d2  	fcvt.d.w	ft5, a3
80000d8c: b3 36 68 02  	mulhu	a3, a6, t1
80000d90: 93 d6 46 00  	srli	a3, a3, 4
80000d94: b3 86 76 02  	mul	a3, a3, t2
80000d98: b3 06 d8 40  	sub	a3, a6, a3
80000d9c: 53 83 06 d2  	fcvt.d.w	ft6, a3
80000da0: b3 b6 6d 02  	mulhu	a3, s11, t1
80000da4: 93 d6 46 00  	srli	a3, a3, 4
80000da8: b3 86 76 02  	mul	a3, a3, t2
80000dac: b3 86 dd 40  	sub	a3, s11, a3
80000db0: d3 83 06 d2  	fcvt.d.w	ft7, a3
80000db4: b3 b6 6c 02  	mulhu	a3, s9, t1
80000db8: 93 d6 46 00  	srli	a3, a3, 4
80000dbc: b3 86 76 02  	mul	a3, a3, t2
80000dc0: b3 86 dc 40  	sub	a3, s9, a3
80000dc4: 53 85 06 d2  	fcvt.d.w	fa0, a3
80000dc8: b3 36 6e 02  	mulhu	a3, t3, t1
80000dcc: 93 d6 46 00  	srli	a3, a3, 4
80000dd0: b3 86 76 02  	mul	a3, a3, t2
80000dd4: b3 06 de 40  	sub	a3, t3, a3
80000dd8: d3 85 06 d2  	fcvt.d.w	fa1, a3
80000ddc: b3 36 67 02  	mulhu	a3, a4, t1
80000de0: 93 d6 46 00  	srli	a3, a3, 4
80000de4: b3 86 76 02  	mul	a3, a3, t2
80000de8: b3 06 d7 40  	sub	a3, a4, a3
80000dec: 53 86 06 d2  	fcvt.d.w	fa2, a3
80000df0: b3 36 65 02  	mulhu	a3, a0, t1
80000df4: 93 d6 46 00  	srli	a3, a3, 4
80000df8: b3 86 76 02  	mul	a3, a3, t2
80000dfc: b3 06 d5 40  	sub	a3, a0, a3
80000e00: d3 86 06 d2  	fcvt.d.w	fa3, a3
80000e04: b3 36 64 02  	mulhu	a3, s0, t1
80000e08: 93 d6 46 00  	srli	a3, a3, 4
80000e0c: b3 86 76 02  	mul	a3, a3, t2
80000e10: b3 06 d4 40  	sub	a3, s0, a3
80000e14: 53 87 06 d2  	fcvt.d.w	fa4, a3
80000e18: b3 b6 64 02  	mulhu	a3, s1, t1
80000e1c: 93 d6 46 00  	srli	a3, a3, 4
80000e20: b3 86 76 02  	mul	a3, a3, t2
80000e24: b3 86 d4 40  	sub	a3, s1, a3
80000e28: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000e2c: b3 b6 67 02  	mulhu	a3, a5, t1
80000e30: 93 d6 46 00  	srli	a3, a3, 4
80000e34: b3 86 76 02  	mul	a3, a3, t2
80000e38: b3 86 d7 40  	sub	a3, a5, a3
80000e3c: 53 88 06 d2  	fcvt.d.w	fa6, a3
80000e40: b3 36 66 02  	mulhu	a3, a2, t1
80000e44: 93 d6 46 00  	srli	a3, a3, 4
80000e48: b3 86 76 02  	mul	a3, a3, t2
80000e4c: b3 06 d6 40  	sub	a3, a2, a3
80000e50: d3 88 06 d2  	fcvt.d.w	fa7, a3
80000e54: b3 b6 65 02  	mulhu	a3, a1, t1
80000e58: 93 d6 46 00  	srli	a3, a3, 4
80000e5c: b3 86 76 02  	mul	a3, a3, t2
80000e60: b3 86 d5 40  	sub	a3, a1, a3
80000e64: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80000e68: b3 36 6c 02  	mulhu	a3, s8, t1
80000e6c: 93 d6 46 00  	srli	a3, a3, 4
80000e70: b3 86 76 02  	mul	a3, a3, t2
80000e74: b3 06 dc 40  	sub	a3, s8, a3
80000e78: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80000e7c: b3 36 6d 02  	mulhu	a3, s10, t1
80000e80: 93 d6 46 00  	srli	a3, a3, 4
80000e84: b3 86 76 02  	mul	a3, a3, t2
80000e88: b3 06 dd 40  	sub	a3, s10, a3
80000e8c: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80000e90: b3 b6 60 02  	mulhu	a3, ra, t1
80000e94: 93 d6 46 00  	srli	a3, a3, 4
80000e98: b3 86 76 02  	mul	a3, a3, t2
80000e9c: b3 86 d0 40  	sub	a3, ra, a3
80000ea0: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80000ea4: b3 36 6f 02  	mulhu	a3, t5, t1
80000ea8: 93 d6 46 00  	srli	a3, a3, 4
80000eac: b3 86 76 02  	mul	a3, a3, t2
80000eb0: b3 06 df 40  	sub	a3, t5, a3
80000eb4: 53 84 06 d2  	fcvt.d.w	fs0, a3
80000eb8: b3 b6 69 02  	mulhu	a3, s3, t1
80000ebc: 93 d6 46 00  	srli	a3, a3, 4
80000ec0: b3 86 76 02  	mul	a3, a3, t2
80000ec4: b3 86 d9 40  	sub	a3, s3, a3
80000ec8: d3 84 06 d2  	fcvt.d.w	fs1, a3
80000ecc: b3 b6 6a 02  	mulhu	a3, s5, t1
80000ed0: 93 d6 46 00  	srli	a3, a3, 4
80000ed4: b3 86 76 02  	mul	a3, a3, t2
80000ed8: b3 86 da 40  	sub	a3, s5, a3
80000edc: 53 89 06 d2  	fcvt.d.w	fs2, a3
80000ee0: b3 b6 68 02  	mulhu	a3, a7, t1
80000ee4: 93 d6 46 00  	srli	a3, a3, 4
80000ee8: b3 86 76 03  	mul	a3, a3, s7
80000eec: b3 86 d8 00  	add	a3, a7, a3
80000ef0: d3 89 06 d2  	fcvt.d.w	fs3, a3
80000ef4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ef8: 27 b0 12 fa  	fsd	ft1, -96(t0)
80000efc: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80000f00: 27 b4 12 fa  	fsd	ft1, -88(t0)
80000f04: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80000f08: 27 b8 12 fa  	fsd	ft1, -80(t0)
80000f0c: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80000f10: 27 bc 12 fa  	fsd	ft1, -72(t0)
80000f14: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80000f18: 27 b0 12 fc  	fsd	ft1, -64(t0)
80000f1c: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80000f20: 27 b4 12 fc  	fsd	ft1, -56(t0)
80000f24: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80000f28: 27 b8 12 fc  	fsd	ft1, -48(t0)
80000f2c: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80000f30: 27 bc 12 fc  	fsd	ft1, -40(t0)
80000f34: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80000f38: 27 b0 12 fe  	fsd	ft1, -32(t0)
80000f3c: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80000f40: 27 b4 12 fe  	fsd	ft1, -24(t0)
80000f44: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80000f48: 27 b8 12 fe  	fsd	ft1, -16(t0)
80000f4c: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80000f50: 27 bc 12 fe  	fsd	ft1, -8(t0)
80000f54: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80000f58: 27 b0 12 00  	fsd	ft1, 0(t0)
80000f5c: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80000f60: 27 b4 12 00  	fsd	ft1, 8(t0)
80000f64: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80000f68: 27 b8 12 00  	fsd	ft1, 16(t0)
80000f6c: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80000f70: 27 bc 12 00  	fsd	ft1, 24(t0)
80000f74: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80000f78: 27 b0 12 02  	fsd	ft1, 32(t0)
80000f7c: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
80000f80: 27 b4 12 02  	fsd	ft1, 40(t0)
80000f84: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
80000f88: 27 b8 12 02  	fsd	ft1, 48(t0)
80000f8c: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80000f90: 27 b0 12 04  	fsd	ft1, 64(t0)
80000f94: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
80000f98: 27 b4 12 04  	fsd	ft1, 72(t0)
80000f9c: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80000fa0: 27 b8 12 04  	fsd	ft1, 80(t0)
80000fa4: 23 ae 02 02  	sw	zero, 60(t0)
80000fa8: 23 ac 02 02  	sw	zero, 56(t0)
80000fac: 53 f0 09 12  	fmul.d	ft0, fs3, ft0
80000fb0: 27 bc 02 04  	fsd	ft0, 88(t0)
;   for (i = 0; i < nj; i++)
80000fb4: 93 88 a8 01  	addi	a7, a7, 26
80000fb8: 13 09 39 00  	addi	s2, s2, 3
80000fbc: 13 0b 4b 00  	addi	s6, s6, 4
80000fc0: 93 8a 9a 01  	addi	s5, s5, 25
80000fc4: 13 0a 5a 00  	addi	s4, s4, 5
80000fc8: 93 89 89 01  	addi	s3, s3, 24
80000fcc: 93 8f 6f 00  	addi	t6, t6, 6
80000fd0: 13 0f 7f 01  	addi	t5, t5, 23
80000fd4: 93 8e 7e 00  	addi	t4, t4, 7
80000fd8: 13 08 88 00  	addi	a6, a6, 8
80000fdc: 93 80 50 01  	addi	ra, ra, 21
80000fe0: 93 8d 9d 00  	addi	s11, s11, 9
80000fe4: 13 0d 4d 01  	addi	s10, s10, 20
80000fe8: 93 8c ac 00  	addi	s9, s9, 10
80000fec: 13 0c 3c 01  	addi	s8, s8, 19
80000ff0: 13 0e be 00  	addi	t3, t3, 11
80000ff4: 93 85 25 01  	addi	a1, a1, 18
80000ff8: 13 07 c7 00  	addi	a4, a4, 12
80000ffc: 13 06 16 01  	addi	a2, a2, 17
80001000: 13 05 d5 00  	addi	a0, a0, 13
80001004: 93 87 07 01  	addi	a5, a5, 16
80001008: 93 82 02 0c  	addi	t0, t0, 192
8000100c: 93 84 f4 00  	addi	s1, s1, 15
80001010: 13 04 e4 00  	addi	s0, s0, 14
80001014: 93 06 40 1d  	addi	a3, zero, 468
80001018: e3 92 d8 ce  	bne	a7, a3, 0x80000cfc <.LBB0_47+0x2a8>
8000101c: 23 22 01 02  	sw	zero, 36(sp)
80001020: 13 0c 00 00  	mv	s8, zero
80001024: 93 0e 00 00  	mv	t4, zero
;   for (i = 0; i < nm; i++)
80001028: 03 25 41 01  	lw	a0, 20(sp)
8000102c: 93 06 85 05  	addi	a3, a0, 88
80001030: 13 0f 20 00  	addi	t5, zero, 2
80001034: 37 d5 cc cc  	lui	a0, 838861
80001038: 93 07 d5 cc  	addi	a5, a0, -819
8000103c: 93 04 40 01  	addi	s1, zero, 20
80001040: 37 85 94 3f  	lui	a0, 260424
80001044: 13 05 15 ae  	addi	a0, a0, -1311
80001048: 23 20 a1 02  	sw	a0, 32(sp)
8000104c: 37 15 ae 47  	lui	a0, 293601
80001050: 13 05 b5 47  	addi	a0, a0, 1147
80001054: 23 2e a1 00  	sw	a0, 28(sp)
80001058: 13 09 20 00  	addi	s2, zero, 2
8000105c: 93 09 20 00  	addi	s3, zero, 2
80001060: 13 0a 20 00  	addi	s4, zero, 2
80001064: 93 0a 20 00  	addi	s5, zero, 2
80001068: 13 0b 20 00  	addi	s6, zero, 2
8000106c: 93 0f 20 00  	addi	t6, zero, 2
80001070: 93 0b 20 00  	addi	s7, zero, 2
80001074: 93 0c 20 00  	addi	s9, zero, 2
80001078: 13 0d 20 00  	addi	s10, zero, 2
8000107c: 93 00 20 00  	addi	ra, zero, 2
80001080: 13 0e 20 00  	addi	t3, zero, 2
80001084: 13 04 20 00  	addi	s0, zero, 2
80001088: 13 05 20 00  	addi	a0, zero, 2
8000108c: 93 05 20 00  	addi	a1, zero, 2
80001090: 93 0d 20 00  	addi	s11, zero, 2
80001094: 13 06 20 00  	addi	a2, zero, 2
80001098: 93 08 20 00  	addi	a7, zero, 2
8000109c: 13 08 20 00  	addi	a6, zero, 2
800010a0: 93 02 20 00  	addi	t0, zero, 2
800010a4: 13 03 20 00  	addi	t1, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
800010a8: 33 37 f3 02  	mulhu	a4, t1, a5
800010ac: 13 57 47 00  	srli	a4, a4, 4
800010b0: 33 07 97 02  	mul	a4, a4, s1
800010b4: 33 07 e3 40  	sub	a4, t1, a4
800010b8: d3 00 07 d2  	fcvt.d.w	ft1, a4

800010bc <.LBB0_49>:
800010bc: 17 37 00 00  	auipc	a4, 3
800010c0: 13 07 47 e3  	addi	a4, a4, -460
800010c4: 07 30 07 00  	fld	ft0, 0(a4)
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
800010c8: 33 b7 f2 02  	mulhu	a4, t0, a5
800010cc: 13 57 47 00  	srli	a4, a4, 4
800010d0: 33 07 97 02  	mul	a4, a4, s1
800010d4: 33 87 e2 40  	sub	a4, t0, a4
800010d8: 53 01 07 d2  	fcvt.d.w	ft2, a4
800010dc: 33 b7 fe 02  	mulhu	a4, t4, a5
800010e0: 13 57 47 00  	srli	a4, a4, 4
800010e4: 33 07 97 02  	mul	a4, a4, s1
800010e8: 33 87 e8 40  	sub	a4, a7, a4
800010ec: d3 01 07 d2  	fcvt.d.w	ft3, a4
800010f0: 33 37 fc 02  	mulhu	a4, s8, a5
800010f4: 13 57 47 00  	srli	a4, a4, 4
800010f8: 33 07 97 02  	mul	a4, a4, s1
800010fc: 33 87 ed 40  	sub	a4, s11, a4
80001100: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001104: 33 37 f5 02  	mulhu	a4, a0, a5
80001108: 13 57 47 00  	srli	a4, a4, 4
8000110c: 33 07 97 02  	mul	a4, a4, s1
80001110: 33 07 e5 40  	sub	a4, a0, a4
80001114: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001118: 33 37 f4 02  	mulhu	a4, s0, a5
8000111c: 13 57 47 00  	srli	a4, a4, 4
80001120: 33 07 97 02  	mul	a4, a4, s1
80001124: 33 07 e4 40  	sub	a4, s0, a4
80001128: 53 03 07 d2  	fcvt.d.w	ft6, a4
8000112c: 33 b7 f0 02  	mulhu	a4, ra, a5
80001130: 13 57 47 00  	srli	a4, a4, 4
80001134: 33 07 97 02  	mul	a4, a4, s1
80001138: 33 87 e0 40  	sub	a4, ra, a4
8000113c: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001140: 33 b7 fc 02  	mulhu	a4, s9, a5
80001144: 13 57 47 00  	srli	a4, a4, 4
80001148: 33 07 97 02  	mul	a4, a4, s1
8000114c: 33 87 ec 40  	sub	a4, s9, a4
80001150: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001154: 83 23 41 02  	lw	t2, 36(sp)
80001158: 33 b7 f3 02  	mulhu	a4, t2, a5
8000115c: 13 57 47 00  	srli	a4, a4, 4
80001160: 33 07 97 02  	mul	a4, a4, s1
80001164: 33 87 ef 40  	sub	a4, t6, a4
80001168: d3 05 07 d2  	fcvt.d.w	fa1, a4
8000116c: 33 b7 fa 02  	mulhu	a4, s5, a5
80001170: 13 57 47 00  	srli	a4, a4, 4
80001174: 33 07 97 02  	mul	a4, a4, s1
80001178: 33 87 ea 40  	sub	a4, s5, a4
8000117c: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001180: 33 b7 f9 02  	mulhu	a4, s3, a5
80001184: 13 57 47 00  	srli	a4, a4, 4
80001188: 33 07 97 02  	mul	a4, a4, s1
8000118c: 33 87 e9 40  	sub	a4, s3, a4
80001190: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001194: 33 37 ff 02  	mulhu	a4, t5, a5
80001198: 13 57 47 00  	srli	a4, a4, 4
8000119c: 33 07 97 02  	mul	a4, a4, s1
800011a0: 33 07 ef 40  	sub	a4, t5, a4
800011a4: 53 07 07 d2  	fcvt.d.w	fa4, a4
800011a8: 33 37 f9 02  	mulhu	a4, s2, a5
800011ac: 13 57 47 00  	srli	a4, a4, 4
800011b0: 33 07 97 02  	mul	a4, a4, s1
800011b4: 33 07 e9 40  	sub	a4, s2, a4
800011b8: d3 07 07 d2  	fcvt.d.w	fa5, a4
800011bc: 33 37 fa 02  	mulhu	a4, s4, a5
800011c0: 13 57 47 00  	srli	a4, a4, 4
800011c4: 33 07 97 02  	mul	a4, a4, s1
800011c8: 33 07 ea 40  	sub	a4, s4, a4
800011cc: 53 08 07 d2  	fcvt.d.w	fa6, a4
800011d0: 33 37 fb 02  	mulhu	a4, s6, a5
800011d4: 13 57 47 00  	srli	a4, a4, 4
800011d8: 33 07 97 02  	mul	a4, a4, s1
800011dc: 33 07 eb 40  	sub	a4, s6, a4
800011e0: d3 08 07 d2  	fcvt.d.w	fa7, a4
800011e4: 33 b7 fb 02  	mulhu	a4, s7, a5
800011e8: 13 57 47 00  	srli	a4, a4, 4
800011ec: 33 07 97 02  	mul	a4, a4, s1
800011f0: 33 87 eb 40  	sub	a4, s7, a4
800011f4: 53 0e 07 d2  	fcvt.d.w	ft8, a4
800011f8: 33 37 fd 02  	mulhu	a4, s10, a5
800011fc: 13 57 47 00  	srli	a4, a4, 4
80001200: 33 07 97 02  	mul	a4, a4, s1
80001204: 33 07 ed 40  	sub	a4, s10, a4
80001208: d3 0e 07 d2  	fcvt.d.w	ft9, a4
8000120c: 33 37 fe 02  	mulhu	a4, t3, a5
80001210: 13 57 47 00  	srli	a4, a4, 4
80001214: 33 07 97 02  	mul	a4, a4, s1
80001218: 33 07 ee 40  	sub	a4, t3, a4
8000121c: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001220: 33 b7 f5 02  	mulhu	a4, a1, a5
80001224: 13 57 47 00  	srli	a4, a4, 4
80001228: 33 07 97 02  	mul	a4, a4, s1
8000122c: 33 87 e5 40  	sub	a4, a1, a4
80001230: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001234: 33 37 f6 02  	mulhu	a4, a2, a5
80001238: 13 57 47 00  	srli	a4, a4, 4
8000123c: 33 07 97 02  	mul	a4, a4, s1
80001240: 33 07 e6 40  	sub	a4, a2, a4
80001244: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001248: 33 37 f8 02  	mulhu	a4, a6, a5
8000124c: 13 57 47 00  	srli	a4, a4, 4
80001250: 33 07 97 02  	mul	a4, a4, s1
80001254: 33 07 e8 40  	sub	a4, a6, a4
80001258: d3 04 07 d2  	fcvt.d.w	fs1, a4
8000125c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001260: 27 b4 16 fa  	fsd	ft1, -88(a3)
80001264: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80001268: 27 b8 16 fa  	fsd	ft1, -80(a3)
8000126c: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80001270: 27 bc 16 fa  	fsd	ft1, -72(a3)
80001274: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80001278: 27 b0 16 fc  	fsd	ft1, -64(a3)
8000127c: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80001280: 27 b4 16 fc  	fsd	ft1, -56(a3)
80001284: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80001288: 27 b8 16 fc  	fsd	ft1, -48(a3)
8000128c: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80001290: 27 bc 16 fc  	fsd	ft1, -40(a3)
80001294: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80001298: 27 b0 16 fe  	fsd	ft1, -32(a3)
8000129c: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
800012a0: 27 b4 16 fe  	fsd	ft1, -24(a3)
800012a4: d3 70 06 12  	fmul.d	ft1, fa2, ft0
800012a8: 27 b8 16 fe  	fsd	ft1, -16(a3)
800012ac: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
800012b0: 27 bc 16 fe  	fsd	ft1, -8(a3)
800012b4: d3 70 07 12  	fmul.d	ft1, fa4, ft0
800012b8: 27 b0 16 00  	fsd	ft1, 0(a3)
800012bc: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
800012c0: 27 b4 16 00  	fsd	ft1, 8(a3)
800012c4: d3 70 08 12  	fmul.d	ft1, fa6, ft0
800012c8: 27 b8 16 00  	fsd	ft1, 16(a3)
800012cc: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
800012d0: 27 bc 16 00  	fsd	ft1, 24(a3)
800012d4: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
800012d8: 27 b0 16 02  	fsd	ft1, 32(a3)
800012dc: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
800012e0: 27 b4 16 02  	fsd	ft1, 40(a3)
800012e4: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
800012e8: 27 b8 16 02  	fsd	ft1, 48(a3)
800012ec: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
800012f0: 27 b0 16 04  	fsd	ft1, 64(a3)
800012f4: d3 70 04 12  	fmul.d	ft1, fs0, ft0
800012f8: 27 b4 16 04  	fsd	ft1, 72(a3)
800012fc: 03 27 01 02  	lw	a4, 32(sp)
80001300: 23 ae e6 02  	sw	a4, 60(a3)
80001304: 03 27 c1 01  	lw	a4, 28(sp)
80001308: 23 ac e6 02  	sw	a4, 56(a3)
8000130c: 53 f0 04 12  	fmul.d	ft0, fs1, ft0
80001310: 27 b8 06 04  	fsd	ft0, 80(a3)
;   for (i = 0; i < nm; i++)
80001314: 13 03 23 00  	addi	t1, t1, 2
80001318: 93 82 32 00  	addi	t0, t0, 3
8000131c: 13 08 78 01  	addi	a6, a6, 23
80001320: 93 88 48 00  	addi	a7, a7, 4
80001324: 93 8e 4e 00  	addi	t4, t4, 4
80001328: 13 06 66 01  	addi	a2, a2, 22
8000132c: 93 8d 5d 00  	addi	s11, s11, 5
80001330: 13 0c 5c 00  	addi	s8, s8, 5
80001334: 93 85 55 01  	addi	a1, a1, 21
80001338: 13 05 65 00  	addi	a0, a0, 6
8000133c: 13 04 74 00  	addi	s0, s0, 7
80001340: 13 0e 3e 01  	addi	t3, t3, 19
80001344: 93 80 80 00  	addi	ra, ra, 8
80001348: 13 0d 2d 01  	addi	s10, s10, 18
8000134c: 93 8c 9c 00  	addi	s9, s9, 9
80001350: 93 8b 1b 01  	addi	s7, s7, 17
80001354: 93 8f af 00  	addi	t6, t6, 10
80001358: 93 83 a3 00  	addi	t2, t2, 10
8000135c: 23 22 71 02  	sw	t2, 36(sp)
80001360: 13 0b 0b 01  	addi	s6, s6, 16
80001364: 93 8a ba 00  	addi	s5, s5, 11
80001368: 13 0a fa 00  	addi	s4, s4, 15
8000136c: 93 89 c9 00  	addi	s3, s3, 12
80001370: 13 09 e9 00  	addi	s2, s2, 14
80001374: 93 86 06 0b  	addi	a3, a3, 176
80001378: 13 0f df 00  	addi	t5, t5, 13
8000137c: 13 07 20 03  	addi	a4, zero, 50
80001380: e3 14 e3 d2  	bne	t1, a4, 0x800010a8 <.LBB0_48+0x378>
80001384: 93 05 00 00  	mv	a1, zero
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001388: 73 28 00 b0  	csrr	a6, mcycle
8000138c: 93 02 00 0a  	addi	t0, zero, 160
80001390: 13 06 00 09  	addi	a2, zero, 144
80001394: 13 0e 00 01  	addi	t3, zero, 16
80001398: 83 28 c1 00  	lw	a7, 12(sp)
8000139c: 13 87 08 00  	mv	a4, a7
800013a0: 03 29 01 01  	lw	s2, 16(sp)
800013a4: 83 23 81 00  	lw	t2, 8(sp)
800013a8: 03 23 81 01  	lw	t1, 24(sp)
800013ac: 03 25 41 01  	lw	a0, 20(sp)
800013b0: 83 2e 41 00  	lw	t4, 4(sp)
800013b4: 83 26 01 00  	lw	a3, 0(sp)
;         x += A[i][k] * B[k][j];
800013b8: b3 87 55 02  	mul	a5, a1, t0
800013bc: b3 87 fe 00  	add	a5, t4, a5
800013c0: 07 b0 87 02  	fld	ft0, 40(a5)
800013c4: 87 b0 07 03  	fld	ft1, 48(a5)
800013c8: 07 b1 87 03  	fld	ft2, 56(a5)
800013cc: 87 b1 07 04  	fld	ft3, 64(a5)
800013d0: 07 b2 87 04  	fld	ft4, 72(a5)
800013d4: 87 b2 07 05  	fld	ft5, 80(a5)
800013d8: 07 b3 87 05  	fld	ft6, 88(a5)
800013dc: 87 b3 07 06  	fld	ft7, 96(a5)
800013e0: 07 b5 87 06  	fld	fa0, 104(a5)
800013e4: 87 b5 07 07  	fld	fa1, 112(a5)
800013e8: 07 b6 87 07  	fld	fa2, 120(a5)
800013ec: 87 b6 07 08  	fld	fa3, 128(a5)
800013f0: 07 b7 87 08  	fld	fa4, 136(a5)
800013f4: 87 b7 07 09  	fld	fa5, 144(a5)
800013f8: 07 b8 07 00  	fld	fa6, 0(a5)
800013fc: 87 b8 87 00  	fld	fa7, 8(a5)
80001400: 07 be 07 01  	fld	ft8, 16(a5)
80001404: 87 be 87 01  	fld	ft9, 24(a5)
80001408: 07 bf 07 02  	fld	ft10, 32(a5)
8000140c: 87 bf 87 09  	fld	ft11, 152(a5)
80001410: 93 07 00 00  	mv	a5, zero
80001414: b3 84 f6 00  	add	s1, a3, a5
80001418: 07 b4 04 00  	fld	fs0, 0(s1)
8000141c: 87 b4 04 09  	fld	fs1, 144(s1)
80001420: 07 b9 04 12  	fld	fs2, 288(s1)
80001424: 87 b9 04 1b  	fld	fs3, 432(s1)
80001428: 53 74 04 13  	fmul.d	fs0, fs0, fa6
8000142c: 43 f4 14 43  	fmadd.d	fs0, fs1, fa7, fs0
80001430: 43 74 c9 43  	fmadd.d	fs0, fs2, ft8, fs0
80001434: 43 f4 d9 43  	fmadd.d	fs0, fs3, ft9, fs0
80001438: 87 b4 04 24  	fld	fs1, 576(s1)
8000143c: 07 b9 04 2d  	fld	fs2, 720(s1)
80001440: 87 b9 04 36  	fld	fs3, 864(s1)
80001444: 07 ba 04 3f  	fld	fs4, 1008(s1)
80001448: 43 f4 e4 43  	fmadd.d	fs0, fs1, ft10, fs0
8000144c: 43 74 09 42  	fmadd.d	fs0, fs2, ft0, fs0
80001450: 43 f4 19 42  	fmadd.d	fs0, fs3, ft1, fs0
80001454: 43 74 2a 42  	fmadd.d	fs0, fs4, ft2, fs0
80001458: 87 b4 04 48  	fld	fs1, 1152(s1)
8000145c: 07 b9 04 51  	fld	fs2, 1296(s1)
80001460: 87 b9 04 5a  	fld	fs3, 1440(s1)
80001464: 07 ba 04 63  	fld	fs4, 1584(s1)
80001468: 43 f4 34 42  	fmadd.d	fs0, fs1, ft3, fs0
8000146c: 43 74 49 42  	fmadd.d	fs0, fs2, ft4, fs0
80001470: 43 f4 59 42  	fmadd.d	fs0, fs3, ft5, fs0
80001474: 43 74 6a 42  	fmadd.d	fs0, fs4, ft6, fs0
80001478: 87 b4 04 6c  	fld	fs1, 1728(s1)
8000147c: 07 b9 04 75  	fld	fs2, 1872(s1)
80001480: 87 b9 04 7e  	fld	fs3, 2016(s1)
80001484: 13 84 84 43  	addi	s0, s1, 1080
80001488: 07 3a 84 43  	fld	fs4, 1080(s0)
8000148c: 43 f4 74 42  	fmadd.d	fs0, fs1, ft7, fs0
80001490: 43 74 a9 42  	fmadd.d	fs0, fs2, fa0, fs0
80001494: 43 f4 b9 42  	fmadd.d	fs0, fs3, fa1, fs0
80001498: 43 74 ca 42  	fmadd.d	fs0, fs4, fa2, fs0
8000149c: 13 84 04 48  	addi	s0, s1, 1152
800014a0: 87 34 04 48  	fld	fs1, 1152(s0)
800014a4: 13 84 84 4c  	addi	s0, s1, 1224
800014a8: 07 39 84 4c  	fld	fs2, 1224(s0)
800014ac: 13 84 04 51  	addi	s0, s1, 1296
800014b0: 87 39 04 51  	fld	fs3, 1296(s0)
800014b4: 93 84 84 55  	addi	s1, s1, 1368
800014b8: 07 ba 84 55  	fld	fs4, 1368(s1)
800014bc: 43 f4 d4 42  	fmadd.d	fs0, fs1, fa3, fs0
800014c0: 43 74 e9 42  	fmadd.d	fs0, fs2, fa4, fs0
800014c4: 43 f4 f9 42  	fmadd.d	fs0, fs3, fa5, fs0
800014c8: 43 74 fa 43  	fmadd.d	fs0, fs4, ft11, fs0
;       E[i][j] = x;
800014cc: b3 04 f7 00  	add	s1, a4, a5
;     for (j = 0; j < nj; j++)
800014d0: 93 87 87 00  	addi	a5, a5, 8
;       E[i][j] = x;
800014d4: 27 b0 84 00  	fsd	fs0, 0(s1)
;     for (j = 0; j < nj; j++)
800014d8: e3 9e c7 f2  	bne	a5, a2, 0x80001414 <.LBB0_49+0x358>
;  for (i = 0; i < ni; i++)
800014dc: 93 85 15 00  	addi	a1, a1, 1
800014e0: 13 07 07 09  	addi	a4, a4, 144
800014e4: e3 9a c5 ed  	bne	a1, t3, 0x800013b8 <.LBB0_49+0x2fc>
800014e8: 13 06 00 00  	mv	a2, zero
;   for (i = 0; i < nj; i++)
800014ec: 93 05 05 42  	addi	a1, a0, 1056
800014f0: 93 85 05 42  	addi	a1, a1, 1056
800014f4: 93 02 00 0c  	addi	t0, zero, 192
800014f8: 93 06 00 0b  	addi	a3, zero, 176
800014fc: 13 07 20 01  	addi	a4, zero, 18
80001500: 93 87 03 00  	mv	a5, t2
;         x += C[i][k] * D[k][j];
80001504: b3 04 56 02  	mul	s1, a2, t0
80001508: b3 04 93 00  	add	s1, t1, s1
8000150c: 07 b0 84 04  	fld	ft0, 72(s1)
80001510: 87 b0 04 05  	fld	ft1, 80(s1)
80001514: 07 b1 84 05  	fld	ft2, 88(s1)
80001518: 87 b1 04 06  	fld	ft3, 96(s1)
8000151c: 07 b2 84 06  	fld	ft4, 104(s1)
80001520: 87 b2 04 07  	fld	ft5, 112(s1)
80001524: 07 b3 84 07  	fld	ft6, 120(s1)
80001528: 87 b3 04 08  	fld	ft7, 128(s1)
8000152c: 07 b5 84 08  	fld	fa0, 136(s1)
80001530: 87 b5 04 09  	fld	fa1, 144(s1)
80001534: 07 b6 04 00  	fld	fa2, 0(s1)
80001538: 87 b6 84 00  	fld	fa3, 8(s1)
8000153c: 07 b7 04 01  	fld	fa4, 16(s1)
80001540: 87 b7 84 01  	fld	fa5, 24(s1)
80001544: 07 b8 04 02  	fld	fa6, 32(s1)
80001548: 87 b8 84 02  	fld	fa7, 40(s1)
8000154c: 07 be 04 03  	fld	ft8, 48(s1)
80001550: 87 be 84 03  	fld	ft9, 56(s1)
80001554: 07 bf 04 04  	fld	ft10, 64(s1)
80001558: 87 bf 84 09  	fld	ft11, 152(s1)
8000155c: 07 b4 04 0a  	fld	fs0, 160(s1)
80001560: 87 b4 84 0a  	fld	fs1, 168(s1)
80001564: 07 b9 04 0b  	fld	fs2, 176(s1)
80001568: 87 b9 84 0b  	fld	fs3, 184(s1)
8000156c: 93 04 00 00  	mv	s1, zero
80001570: 33 04 95 00  	add	s0, a0, s1
80001574: 07 3a 04 00  	fld	fs4, 0(s0)
80001578: 87 3a 04 0b  	fld	fs5, 176(s0)
8000157c: 07 3b 04 16  	fld	fs6, 352(s0)
80001580: 87 3b 04 21  	fld	fs7, 528(s0)
80001584: 53 7a ca 12  	fmul.d	fs4, fs4, fa2
80001588: 43 fa da a2  	fmadd.d	fs4, fs5, fa3, fs4
8000158c: 43 7a eb a2  	fmadd.d	fs4, fs6, fa4, fs4
80001590: 43 fa fb a2  	fmadd.d	fs4, fs7, fa5, fs4
80001594: 87 3a 04 2c  	fld	fs5, 704(s0)
80001598: 07 3b 04 37  	fld	fs6, 880(s0)
8000159c: 87 3b 04 42  	fld	fs7, 1056(s0)
800015a0: 07 3c 04 4d  	fld	fs8, 1232(s0)
800015a4: 43 fa 0a a3  	fmadd.d	fs4, fs5, fa6, fs4
800015a8: 43 7a 1b a3  	fmadd.d	fs4, fs6, fa7, fs4
800015ac: 43 fa cb a3  	fmadd.d	fs4, fs7, ft8, fs4
800015b0: 43 7a dc a3  	fmadd.d	fs4, fs8, ft9, fs4
800015b4: 87 3a 04 58  	fld	fs5, 1408(s0)
800015b8: 07 3b 04 63  	fld	fs6, 1584(s0)
800015bc: 87 3b 04 6e  	fld	fs7, 1760(s0)
800015c0: 07 3c 04 79  	fld	fs8, 1936(s0)
800015c4: 43 fa ea a3  	fmadd.d	fs4, fs5, ft10, fs4
800015c8: 43 7a 0b a2  	fmadd.d	fs4, fs6, ft0, fs4
800015cc: 43 fa 1b a2  	fmadd.d	fs4, fs7, ft1, fs4
800015d0: 43 7a 2c a2  	fmadd.d	fs4, fs8, ft2, fs4
800015d4: 33 84 95 00  	add	s0, a1, s1
800015d8: 87 3a 04 00  	fld	fs5, 0(s0)
800015dc: 07 3b 04 0b  	fld	fs6, 176(s0)
800015e0: 87 3b 04 16  	fld	fs7, 352(s0)
800015e4: 07 3c 04 21  	fld	fs8, 528(s0)
800015e8: 43 fa 3a a2  	fmadd.d	fs4, fs5, ft3, fs4
800015ec: 43 7a 4b a2  	fmadd.d	fs4, fs6, ft4, fs4
800015f0: 43 fa 5b a2  	fmadd.d	fs4, fs7, ft5, fs4
800015f4: 43 7a 6c a2  	fmadd.d	fs4, fs8, ft6, fs4
800015f8: 87 3a 04 2c  	fld	fs5, 704(s0)
800015fc: 07 3b 04 37  	fld	fs6, 880(s0)
80001600: 87 3b 04 42  	fld	fs7, 1056(s0)
80001604: 07 3c 04 4d  	fld	fs8, 1232(s0)
80001608: 43 fa 7a a2  	fmadd.d	fs4, fs5, ft7, fs4
8000160c: 43 7a ab a2  	fmadd.d	fs4, fs6, fa0, fs4
80001610: 43 fa bb a2  	fmadd.d	fs4, fs7, fa1, fs4
80001614: 43 7a fc a3  	fmadd.d	fs4, fs8, ft11, fs4
80001618: 87 3a 04 58  	fld	fs5, 1408(s0)
8000161c: 07 3b 04 63  	fld	fs6, 1584(s0)
80001620: 87 3b 04 6e  	fld	fs7, 1760(s0)
80001624: 07 3c 04 79  	fld	fs8, 1936(s0)
80001628: 43 fa 8a a2  	fmadd.d	fs4, fs5, fs0, fs4
8000162c: 43 7a 9b a2  	fmadd.d	fs4, fs6, fs1, fs4
80001630: 43 fa 2b a3  	fmadd.d	fs4, fs7, fs2, fs4
80001634: 43 7a 3c a3  	fmadd.d	fs4, fs8, fs3, fs4
;       F[i][j] = x;
80001638: 33 84 97 00  	add	s0, a5, s1
;     for (j = 0; j < nl; j++)
8000163c: 93 84 84 00  	addi	s1, s1, 8
;       F[i][j] = x;
80001640: 27 30 44 01  	fsd	fs4, 0(s0)
;     for (j = 0; j < nl; j++)
80001644: e3 96 d4 f2  	bne	s1, a3, 0x80001570 <.LBB0_49+0x4b4>
;   for (i = 0; i < nj; i++)
80001648: 13 06 16 00  	addi	a2, a2, 1
8000164c: 93 87 07 0b  	addi	a5, a5, 176
80001650: e3 1a e6 ea  	bne	a2, a4, 0x80001504 <.LBB0_49+0x448>
80001654: 93 05 00 00  	mv	a1, zero
80001658: 93 02 00 09  	addi	t0, zero, 144
8000165c: 13 06 00 0b  	addi	a2, zero, 176
80001660: 93 06 00 01  	addi	a3, zero, 16
80001664: 13 07 09 00  	mv	a4, s2
;         x += E[i][k] * F[k][j];
80001668: b3 87 55 02  	mul	a5, a1, t0
8000166c: b3 87 f8 00  	add	a5, a7, a5
80001670: 07 b0 87 01  	fld	ft0, 24(a5)
80001674: 87 b0 07 02  	fld	ft1, 32(a5)
80001678: 07 b1 87 02  	fld	ft2, 40(a5)
8000167c: 87 b1 07 03  	fld	ft3, 48(a5)
80001680: 07 b2 87 03  	fld	ft4, 56(a5)
80001684: 87 b2 07 04  	fld	ft5, 64(a5)
80001688: 07 b3 87 04  	fld	ft6, 72(a5)
8000168c: 87 b3 07 05  	fld	ft7, 80(a5)
80001690: 07 b5 87 05  	fld	fa0, 88(a5)
80001694: 87 b5 07 06  	fld	fa1, 96(a5)
80001698: 07 b6 87 06  	fld	fa2, 104(a5)
8000169c: 87 b6 07 07  	fld	fa3, 112(a5)
800016a0: 07 b7 87 07  	fld	fa4, 120(a5)
800016a4: 87 b7 07 08  	fld	fa5, 128(a5)
800016a8: 07 b8 87 08  	fld	fa6, 136(a5)
800016ac: 87 b8 07 00  	fld	fa7, 0(a5)
800016b0: 07 be 87 00  	fld	ft8, 8(a5)
800016b4: 87 be 07 01  	fld	ft9, 16(a5)
800016b8: 93 07 00 00  	mv	a5, zero
800016bc: b3 84 f3 00  	add	s1, t2, a5
800016c0: 07 bf 04 00  	fld	ft10, 0(s1)
800016c4: 87 bf 04 0b  	fld	ft11, 176(s1)
800016c8: 53 7f 1f 13  	fmul.d	ft10, ft10, fa7
800016cc: 43 ff cf f3  	fmadd.d	ft10, ft11, ft8, ft10
800016d0: 87 bf 04 16  	fld	ft11, 352(s1)
800016d4: 07 b4 04 21  	fld	fs0, 528(s1)
800016d8: 87 b4 04 2c  	fld	fs1, 704(s1)
800016dc: 07 b9 04 37  	fld	fs2, 880(s1)
800016e0: 43 ff df f3  	fmadd.d	ft10, ft11, ft9, ft10
800016e4: 43 7f 04 f2  	fmadd.d	ft10, fs0, ft0, ft10
800016e8: 43 ff 14 f2  	fmadd.d	ft10, fs1, ft1, ft10
800016ec: 43 7f 29 f2  	fmadd.d	ft10, fs2, ft2, ft10
800016f0: 87 bf 04 42  	fld	ft11, 1056(s1)
800016f4: 07 b4 04 4d  	fld	fs0, 1232(s1)
800016f8: 87 b4 04 58  	fld	fs1, 1408(s1)
800016fc: 07 b9 04 63  	fld	fs2, 1584(s1)
80001700: 43 ff 3f f2  	fmadd.d	ft10, ft11, ft3, ft10
80001704: 43 7f 44 f2  	fmadd.d	ft10, fs0, ft4, ft10
80001708: 43 ff 54 f2  	fmadd.d	ft10, fs1, ft5, ft10
8000170c: 43 7f 69 f2  	fmadd.d	ft10, fs2, ft6, ft10
80001710: 87 bf 04 6e  	fld	ft11, 1760(s1)
80001714: 07 b4 04 79  	fld	fs0, 1936(s1)
80001718: 13 84 04 42  	addi	s0, s1, 1056
8000171c: 87 34 04 42  	fld	fs1, 1056(s0)
80001720: 13 84 84 47  	addi	s0, s1, 1144
80001724: 07 39 84 47  	fld	fs2, 1144(s0)
80001728: 43 ff 7f f2  	fmadd.d	ft10, ft11, ft7, ft10
8000172c: 43 7f a4 f2  	fmadd.d	ft10, fs0, fa0, ft10
80001730: 43 ff b4 f2  	fmadd.d	ft10, fs1, fa1, ft10
80001734: 43 7f c9 f2  	fmadd.d	ft10, fs2, fa2, ft10
80001738: 13 84 04 4d  	addi	s0, s1, 1232
8000173c: 87 3f 04 4d  	fld	ft11, 1232(s0)
80001740: 13 84 84 52  	addi	s0, s1, 1320
80001744: 07 34 84 52  	fld	fs0, 1320(s0)
80001748: 13 84 04 58  	addi	s0, s1, 1408
8000174c: 87 34 04 58  	fld	fs1, 1408(s0)
80001750: 93 84 84 5d  	addi	s1, s1, 1496
80001754: 07 b9 84 5d  	fld	fs2, 1496(s1)
80001758: 43 ff df f2  	fmadd.d	ft10, ft11, fa3, ft10
8000175c: 43 7f e4 f2  	fmadd.d	ft10, fs0, fa4, ft10
80001760: 43 ff f4 f2  	fmadd.d	ft10, fs1, fa5, ft10
80001764: 43 7f 09 f3  	fmadd.d	ft10, fs2, fa6, ft10
;       G[i][j] = x;
80001768: b3 04 f7 00  	add	s1, a4, a5
;     for (j = 0; j < nl; j++)
8000176c: 93 87 87 00  	addi	a5, a5, 8
;       G[i][j] = x;
80001770: 27 b0 e4 01  	fsd	ft10, 0(s1)
;     for (j = 0; j < nl; j++)
80001774: e3 94 c7 f4  	bne	a5, a2, 0x800016bc <.LBB0_49+0x600>
;   for (i = 0; i < ni; i++)
80001778: 93 85 15 00  	addi	a1, a1, 1
8000177c: 13 07 07 0b  	addi	a4, a4, 176
80001780: e3 94 d5 ee  	bne	a1, a3, 0x80001668 <.LBB0_49+0x5ac>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80001784: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80001788: b3 05 05 41  	sub	a1, a0, a6

8000178c <.LBB0_50>:
8000178c: 17 25 00 00  	auipc	a0, 2
80001790: 13 05 55 4b  	addi	a0, a0, 1205
80001794: 97 00 00 00  	auipc	ra, 0
80001798: e7 80 00 17  	jalr	368(ra)
8000179c: 13 05 89 05  	addi	a0, s2, 88
800017a0: 53 00 00 d2  	fcvt.d.w	ft0, zero
800017a4: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
800017a8: 87 30 85 fa  	fld	ft1, -88(a0)
800017ac: 07 31 05 fb  	fld	ft2, -80(a0)
800017b0: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800017b4: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800017b8: 87 30 85 fb  	fld	ft1, -72(a0)
800017bc: 07 31 05 fc  	fld	ft2, -64(a0)
800017c0: 87 31 85 fc  	fld	ft3, -56(a0)
800017c4: 07 32 05 fd  	fld	ft4, -48(a0)
800017c8: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800017cc: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800017d0: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800017d4: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800017d8: 87 30 85 fd  	fld	ft1, -40(a0)
800017dc: 07 31 05 fe  	fld	ft2, -32(a0)
800017e0: 87 31 85 fe  	fld	ft3, -24(a0)
800017e4: 07 32 05 ff  	fld	ft4, -16(a0)
800017e8: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800017ec: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800017f0: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800017f4: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800017f8: 87 30 85 ff  	fld	ft1, -8(a0)
800017fc: 07 31 05 00  	fld	ft2, 0(a0)
80001800: 87 31 85 00  	fld	ft3, 8(a0)
80001804: 07 32 05 01  	fld	ft4, 16(a0)
80001808: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000180c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001810: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001814: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001818: 87 30 85 01  	fld	ft1, 24(a0)
8000181c: 07 31 05 02  	fld	ft2, 32(a0)
80001820: 87 31 85 02  	fld	ft3, 40(a0)
80001824: 07 32 05 03  	fld	ft4, 48(a0)
80001828: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000182c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001830: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001834: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80001838: 87 30 85 03  	fld	ft1, 56(a0)
8000183c: 07 31 05 04  	fld	ft2, 64(a0)
80001840: 87 31 85 04  	fld	ft3, 72(a0)
80001844: 07 32 05 05  	fld	ft4, 80(a0)
80001848: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
8000184c: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80001850: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80001854: 53 70 02 02  	fadd.d	ft0, ft4, ft0
;     for (int i = 0; i < n; i++){
80001858: 93 85 f5 ff  	addi	a1, a1, -1
8000185c: 13 05 05 0b  	addi	a0, a0, 176
80001860: e3 94 05 f4  	bnez	a1, 0x800017a8 <.LBB0_50+0x1c>

80001864 <.LBB0_51>:
80001864: 17 25 00 00  	auipc	a0, 2
80001868: 13 05 45 69  	addi	a0, a0, 1684
8000186c: 87 30 05 00  	fld	ft1, 0(a0)
;   double error = r - r_true;
80001870: 53 70 10 02  	fadd.d	ft0, ft0, ft1
;   error = error < 0.0 ? -error : error;
80001874: 53 24 00 22  	fabs.d	fs0, ft0
;   printf("error = %f\n", error);
80001878: 27 34 81 02  	fsd	fs0, 40(sp)
8000187c: 03 26 81 02  	lw	a2, 40(sp)
80001880: 83 26 c1 02  	lw	a3, 44(sp)

80001884 <.LBB0_52>:
80001884: 17 25 00 00  	auipc	a0, 2
80001888: 13 05 15 3b  	addi	a0, a0, 945
8000188c: 97 00 00 00  	auipc	ra, 0
80001890: e7 80 80 07  	jalr	120(ra)

80001894 <.LBB0_53>:
80001894: 17 25 00 00  	auipc	a0, 2
80001898: 13 05 c5 66  	addi	a0, a0, 1644
8000189c: 07 30 05 00  	fld	ft0, 0(a0)
;   return error > 0.0001;
800018a0: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
800018a4: 07 3c 01 03  	fld	fs8, 48(sp)
800018a8: 87 3b 81 03  	fld	fs7, 56(sp)
800018ac: 07 3b 01 04  	fld	fs6, 64(sp)
800018b0: 87 3a 81 04  	fld	fs5, 72(sp)
800018b4: 07 3a 01 05  	fld	fs4, 80(sp)
800018b8: 87 39 81 05  	fld	fs3, 88(sp)
800018bc: 07 39 01 06  	fld	fs2, 96(sp)
800018c0: 87 34 81 06  	fld	fs1, 104(sp)
800018c4: 07 34 01 07  	fld	fs0, 112(sp)
800018c8: 83 2d c1 07  	lw	s11, 124(sp)
800018cc: 03 2d 01 08  	lw	s10, 128(sp)
800018d0: 83 2c 41 08  	lw	s9, 132(sp)
800018d4: 03 2c 81 08  	lw	s8, 136(sp)
800018d8: 83 2b c1 08  	lw	s7, 140(sp)
800018dc: 03 2b 01 09  	lw	s6, 144(sp)
800018e0: 83 2a 41 09  	lw	s5, 148(sp)
800018e4: 03 2a 81 09  	lw	s4, 152(sp)
800018e8: 83 29 c1 09  	lw	s3, 156(sp)
800018ec: 03 29 01 0a  	lw	s2, 160(sp)
800018f0: 83 24 41 0a  	lw	s1, 164(sp)
800018f4: 03 24 81 0a  	lw	s0, 168(sp)
800018f8: 83 20 c1 0a  	lw	ra, 172(sp)
800018fc: 13 01 01 0b  	addi	sp, sp, 176
80001900: 67 80 00 00  	ret

80001904 <printf_>:
; {
80001904: 13 01 01 fd  	addi	sp, sp, -48
80001908: 23 26 11 00  	sw	ra, 12(sp)
8000190c: 93 02 05 00  	mv	t0, a0
80001910: 23 26 11 03  	sw	a7, 44(sp)
80001914: 23 24 01 03  	sw	a6, 40(sp)
80001918: 23 22 f1 02  	sw	a5, 36(sp)
8000191c: 23 20 e1 02  	sw	a4, 32(sp)
80001920: 23 2e d1 00  	sw	a3, 28(sp)
80001924: 23 2c c1 00  	sw	a2, 24(sp)
80001928: 23 2a b1 00  	sw	a1, 20(sp)
8000192c: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001930: 23 24 a1 00  	sw	a0, 8(sp)

80001934 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80001934: 17 15 00 00  	auipc	a0, 1
80001938: 13 05 45 c2  	addi	a0, a0, -988
8000193c: 93 05 71 00  	addi	a1, sp, 7
80001940: 13 06 f0 ff  	addi	a2, zero, -1
80001944: 13 07 41 01  	addi	a4, sp, 20
80001948: 93 86 02 00  	mv	a3, t0
8000194c: 97 00 00 00  	auipc	ra, 0
80001950: e7 80 40 01  	jalr	20(ra)
;   return ret;
80001954: 83 20 c1 00  	lw	ra, 12(sp)
80001958: 13 01 01 03  	addi	sp, sp, 48
8000195c: 67 80 00 00  	ret

80001960 <_vsnprintf.llvm.17592004524093383706>:
; {
80001960: 13 01 01 f9  	addi	sp, sp, -112
80001964: 23 26 11 06  	sw	ra, 108(sp)
80001968: 23 24 81 06  	sw	s0, 104(sp)
8000196c: 23 22 91 06  	sw	s1, 100(sp)
80001970: 23 20 21 07  	sw	s2, 96(sp)
80001974: 23 2e 31 05  	sw	s3, 92(sp)
80001978: 23 2c 41 05  	sw	s4, 88(sp)
8000197c: 23 2a 51 05  	sw	s5, 84(sp)
80001980: 23 28 61 05  	sw	s6, 80(sp)
80001984: 23 26 71 05  	sw	s7, 76(sp)
80001988: 23 24 81 05  	sw	s8, 72(sp)
8000198c: 23 22 91 05  	sw	s9, 68(sp)
80001990: 23 20 a1 05  	sw	s10, 64(sp)
80001994: 23 2e b1 03  	sw	s11, 60(sp)
80001998: 93 09 07 00  	mv	s3, a4
8000199c: 13 84 06 00  	mv	s0, a3
800019a0: 93 0a 06 00  	mv	s5, a2
800019a4: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800019a8: 63 86 05 00  	beqz	a1, 0x800019b4 <.LBB1_183>
800019ac: 13 09 05 00  	mv	s2, a0
800019b0: 6f 00 c0 00  	j	0x800019bc <.LBB1_183+0x8>

800019b4 <.LBB1_183>:
800019b4: 17 19 00 00  	auipc	s2, 1
800019b8: 13 09 09 c5  	addi	s2, s2, -944
800019bc: 13 0c 00 00  	mv	s8, zero
800019c0: 13 0b 50 02  	addi	s6, zero, 37
800019c4: 93 0d 00 01  	addi	s11, zero, 16
800019c8: 93 0b e0 02  	addi	s7, zero, 46
800019cc: 37 15 00 00  	lui	a0, 1
800019d0: 13 05 05 80  	addi	a0, a0, -2048
800019d4: 23 2c a1 00  	sw	a0, 24(sp)
800019d8: 37 05 01 00  	lui	a0, 16
800019dc: 13 05 f5 ff  	addi	a0, a0, -1
800019e0: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
800019e4: 13 0d 24 00  	addi	s10, s0, 2
800019e8: 93 0c 0c 00  	mv	s9, s8
800019ec: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
800019f0: 03 45 04 00  	lbu	a0, 0(s0)
800019f4: e3 04 05 30  	beqz	a0, 0x800024fc <.LBB1_124+0x3b0>
800019f8: 63 08 65 03  	beq	a0, s6, 0x80001a28 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
800019fc: 93 84 1c 00  	addi	s1, s9, 1
80001a00: 93 05 0a 00  	mv	a1, s4
80001a04: 13 86 0c 00  	mv	a2, s9
80001a08: 93 86 0a 00  	mv	a3, s5
80001a0c: e7 00 09 00  	jalr	s2
;       format++;
80001a10: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80001a14: 13 0d 1d 00  	addi	s10, s10, 1
80001a18: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001a1c: 03 45 04 00  	lbu	a0, 0(s0)
80001a20: e3 1c 05 fc  	bnez	a0, 0x800019f8 <.LBB1_183+0x44>
80001a24: 6f 00 90 2d  	j	0x800024fc <.LBB1_124+0x3b0>
;     flags = 0U;
80001a28: 13 04 00 00  	mv	s0, zero
80001a2c: 6f 00 00 01  	j	0x80001a3c <.LBB1_9+0x8>

80001a30 <.LBB1_8>:
80001a30: 93 05 00 01  	addi	a1, zero, 16

80001a34 <.LBB1_9>:
80001a34: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001a38: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001a3c: 03 45 fd ff  	lbu	a0, -1(s10)
80001a40: 93 05 05 fe  	addi	a1, a0, -32
80001a44: 63 ec bd 02  	bltu	s11, a1, 0x80001a7c <.LBB1_15>
80001a48: 93 95 25 00  	slli	a1, a1, 2

80001a4c <.LBB1_184>:
80001a4c: 17 26 00 00  	auipc	a2, 2
80001a50: 13 06 86 20  	addi	a2, a2, 520
80001a54: b3 85 c5 00  	add	a1, a1, a2
80001a58: 03 a6 05 00  	lw	a2, 0(a1)
80001a5c: 93 05 10 00  	addi	a1, zero, 1
80001a60: 67 00 06 00  	jr	a2

80001a64 <.LBB1_12>:
80001a64: 93 05 80 00  	addi	a1, zero, 8
80001a68: 6f f0 df fc  	j	0x80001a34 <.LBB1_9>

80001a6c <.LBB1_13>:
80001a6c: 93 05 40 00  	addi	a1, zero, 4
80001a70: 6f f0 5f fc  	j	0x80001a34 <.LBB1_9>

80001a74 <.LBB1_14>:
80001a74: 93 05 20 00  	addi	a1, zero, 2
80001a78: 6f f0 df fb  	j	0x80001a34 <.LBB1_9>

80001a7c <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001a7c: 93 05 05 fd  	addi	a1, a0, -48
80001a80: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80001a84: 93 05 fd ff  	addi	a1, s10, -1
80001a88: 93 06 90 00  	addi	a3, zero, 9
80001a8c: 63 ee c6 06  	bltu	a3, a2, 0x80001b08 <.LBB1_15+0x8c>
80001a90: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001a94: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001a98: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001a9c: b3 06 8b 03  	mul	a3, s6, s8
80001aa0: 93 85 15 00  	addi	a1, a1, 1
80001aa4: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001aa8: 93 06 05 fd  	addi	a3, a0, -48
80001aac: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001ab0: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001ab4: e3 e0 86 ff  	bltu	a3, s8, 0x80001a94 <.LBB1_15+0x18>
80001ab8: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001abc: 63 16 75 0b  	bne	a0, s7, 0x80001b68 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001ac0: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001ac4: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001ac8: 93 05 05 fd  	addi	a1, a0, -48
80001acc: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001ad0: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001ad4: 93 06 90 00  	addi	a3, zero, 9
80001ad8: 63 e0 c6 06  	bltu	a3, a2, 0x80001b38 <.LBB1_15+0xbc>
80001adc: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001ae0: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001ae4: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001ae8: b3 86 8b 03  	mul	a3, s7, s8
80001aec: 93 85 15 00  	addi	a1, a1, 1
80001af0: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001af4: 93 06 05 fd  	addi	a3, a0, -48
80001af8: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001afc: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001b00: e3 e0 86 ff  	bltu	a3, s8, 0x80001ae0 <.LBB1_15+0x64>
80001b04: 6f 00 00 07  	j	0x80001b74 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001b08: 13 06 a0 02  	addi	a2, zero, 42
80001b0c: 63 18 c5 04  	bne	a0, a2, 0x80001b5c <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001b10: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001b14: 63 d4 05 00  	bgez	a1, 0x80001b1c <.LBB1_15+0xa0>
80001b18: 13 64 24 00  	ori	s0, s0, 2
80001b1c: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001b20: 03 45 0d 00  	lbu	a0, 0(s10)
80001b24: 13 d6 f5 41  	srai	a2, a1, 31
80001b28: b3 85 c5 00  	add	a1, a1, a2
80001b2c: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001b30: e3 08 75 f9  	beq	a0, s7, 0x80001ac0 <.LBB1_15+0x44>
80001b34: 6f 00 40 03  	j	0x80001b68 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001b38: 13 06 a0 02  	addi	a2, zero, 42
80001b3c: 63 1a c5 02  	bne	a0, a2, 0x80001b70 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001b40: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001b44: 63 44 70 01  	bgtz	s7, 0x80001b4c <.LBB1_15+0xd0>
80001b48: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001b4c: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001b50: 13 0d 2d 00  	addi	s10, s10, 2
80001b54: 93 89 49 00  	addi	s3, s3, 4
80001b58: 6f 00 00 02  	j	0x80001b78 <.LBB1_15+0xfc>
80001b5c: 13 0b 00 00  	mv	s6, zero
80001b60: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001b64: e3 0e 75 f5  	beq	a0, s7, 0x80001ac0 <.LBB1_15+0x44>
80001b68: 93 0b 00 00  	mv	s7, zero
80001b6c: 6f 00 c0 00  	j	0x80001b78 <.LBB1_15+0xfc>
80001b70: 93 0b 00 00  	mv	s7, zero
80001b74: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80001b78: 93 05 85 f9  	addi	a1, a0, -104
80001b7c: 13 d6 15 00  	srli	a2, a1, 1
80001b80: 93 95 f5 01  	slli	a1, a1, 31
80001b84: b3 e5 c5 00  	or	a1, a1, a2
80001b88: 13 06 90 00  	addi	a2, zero, 9
80001b8c: 63 62 b6 06  	bltu	a2, a1, 0x80001bf0 <.LBB1_42>
80001b90: 93 95 25 00  	slli	a1, a1, 2

80001b94 <.LBB1_185>:
80001b94: 17 26 00 00  	auipc	a2, 2
80001b98: 13 06 46 10  	addi	a2, a2, 260
80001b9c: b3 85 c5 00  	add	a1, a1, a2
80001ba0: 83 a6 05 00  	lw	a3, 0(a1)
80001ba4: 93 05 10 00  	addi	a1, zero, 1
80001ba8: 13 06 00 10  	addi	a2, zero, 256
80001bac: 67 80 06 00  	jr	a3

80001bb0 <.LBB1_36>:
;         if (*format == 'h') {
80001bb0: 03 45 1d 00  	lbu	a0, 1(s10)
80001bb4: 93 05 80 06  	addi	a1, zero, 104
80001bb8: 63 12 b5 12  	bne	a0, a1, 0x80001cdc <.LBB1_53+0x48>
80001bbc: 93 05 20 00  	addi	a1, zero, 2
80001bc0: 13 06 00 0c  	addi	a2, zero, 192
80001bc4: 6f 00 00 02  	j	0x80001be4 <.LBB1_41>

80001bc8 <.LBB1_38>:
80001bc8: 13 06 00 20  	addi	a2, zero, 512
80001bcc: 6f 00 80 01  	j	0x80001be4 <.LBB1_41>

80001bd0 <.LBB1_39>:
;         if (*format == 'l') {
80001bd0: 03 45 1d 00  	lbu	a0, 1(s10)
80001bd4: 93 05 c0 06  	addi	a1, zero, 108
80001bd8: 63 18 b5 10  	bne	a0, a1, 0x80001ce8 <.LBB1_53+0x54>
80001bdc: 93 05 20 00  	addi	a1, zero, 2
80001be0: 13 06 00 30  	addi	a2, zero, 768

80001be4 <.LBB1_41>:
80001be4: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001be8: 03 45 0d 00  	lbu	a0, 0(s10)
80001bec: 33 64 c4 00  	or	s0, s0, a2

80001bf0 <.LBB1_42>:
;     switch (*format) {
80001bf0: 93 05 b5 fd  	addi	a1, a0, -37
80001bf4: 13 06 30 05  	addi	a2, zero, 83
80001bf8: 63 64 b6 10  	bltu	a2, a1, 0x80001d00 <.LBB1_59>
80001bfc: 93 95 25 00  	slli	a1, a1, 2

80001c00 <.LBB1_186>:
80001c00: 17 26 00 00  	auipc	a2, 2
80001c04: 13 06 06 0c  	addi	a2, a2, 192
80001c08: b3 85 c5 00  	add	a1, a1, a2
80001c0c: 03 a6 05 00  	lw	a2, 0(a1)
80001c10: 93 05 80 00  	addi	a1, zero, 8
80001c14: 13 0c 00 01  	addi	s8, zero, 16
80001c18: 67 00 06 00  	jr	a2

80001c1c <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001c1c: 13 74 f4 fe  	andi	s0, s0, -17
80001c20: 13 0c a0 00  	addi	s8, zero, 10

80001c24 <.LBB1_45>:
;         if (*format == 'X') {
80001c24: 93 05 80 05  	addi	a1, zero, 88
80001c28: 63 14 b5 00  	bne	a0, a1, 0x80001c30 <.LBB1_45+0xc>
80001c2c: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001c30: 93 05 40 06  	addi	a1, zero, 100
80001c34: 63 08 b5 0e  	beq	a0, a1, 0x80001d24 <.LBB1_62+0x8>
80001c38: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001c3c: 13 06 90 06  	addi	a2, zero, 105
80001c40: 63 02 c5 0e  	beq	a0, a2, 0x80001d24 <.LBB1_62+0x8>
80001c44: 6f 00 80 0d  	j	0x80001d1c <.LBB1_62>

80001c48 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001c48: 93 05 60 04  	addi	a1, zero, 70
80001c4c: 63 14 b5 00  	bne	a0, a1, 0x80001c54 <.LBB1_49+0xc>
80001c50: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001c54: 13 85 79 00  	addi	a0, s3, 7
80001c58: 13 75 85 ff  	andi	a0, a0, -8
80001c5c: 07 35 05 00  	fld	fa0, 0(a0)
80001c60: 93 09 85 00  	addi	s3, a0, 8
80001c64: 13 05 09 00  	mv	a0, s2
80001c68: 93 05 0a 00  	mv	a1, s4
80001c6c: 13 86 0c 00  	mv	a2, s9
80001c70: 93 86 0a 00  	mv	a3, s5
80001c74: 13 87 0b 00  	mv	a4, s7
80001c78: 93 07 0b 00  	mv	a5, s6
80001c7c: 13 08 04 00  	mv	a6, s0
80001c80: 97 10 00 00  	auipc	ra, 1
80001c84: e7 80 80 98  	jalr	-1656(ra)
80001c88: 6f 00 00 7c  	j	0x80002448 <.LBB1_124+0x2fc>

80001c8c <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001c8c: 83 25 81 01  	lw	a1, 24(sp)
80001c90: 33 64 b4 00  	or	s0, s0, a1

80001c94 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001c94: 13 65 25 00  	ori	a0, a0, 2
80001c98: 93 05 70 04  	addi	a1, zero, 71
80001c9c: 63 14 b5 00  	bne	a0, a1, 0x80001ca4 <.LBB1_53+0x10>
80001ca0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001ca4: 13 85 79 00  	addi	a0, s3, 7
80001ca8: 13 75 85 ff  	andi	a0, a0, -8
80001cac: 07 35 05 00  	fld	fa0, 0(a0)
80001cb0: 93 09 85 00  	addi	s3, a0, 8
80001cb4: 13 05 09 00  	mv	a0, s2
80001cb8: 93 05 0a 00  	mv	a1, s4
80001cbc: 13 86 0c 00  	mv	a2, s9
80001cc0: 93 86 0a 00  	mv	a3, s5
80001cc4: 13 87 0b 00  	mv	a4, s7
80001cc8: 93 07 0b 00  	mv	a5, s6
80001ccc: 13 08 04 00  	mv	a6, s0
80001cd0: 97 10 00 00  	auipc	ra, 1
80001cd4: e7 80 80 01  	jalr	24(ra)
80001cd8: 6f 00 00 77  	j	0x80002448 <.LBB1_124+0x2fc>
80001cdc: 13 64 04 08  	ori	s0, s0, 128
80001ce0: 13 0d 1d 00  	addi	s10, s10, 1
80001ce4: 6f f0 df f0  	j	0x80001bf0 <.LBB1_42>
80001ce8: 13 64 04 10  	ori	s0, s0, 256
80001cec: 13 0d 1d 00  	addi	s10, s10, 1
80001cf0: 6f f0 1f f0  	j	0x80001bf0 <.LBB1_42>

80001cf4 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001cf4: 13 8c 1c 00  	addi	s8, s9, 1
80001cf8: 13 05 50 02  	addi	a0, zero, 37
80001cfc: 6f 00 80 00  	j	0x80001d04 <.LBB1_59+0x4>

80001d00 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001d00: 13 8c 1c 00  	addi	s8, s9, 1
80001d04: 93 05 0a 00  	mv	a1, s4
80001d08: 13 86 0c 00  	mv	a2, s9
80001d0c: 93 86 0a 00  	mv	a3, s5
80001d10: e7 00 09 00  	jalr	s2
80001d14: 6f 00 80 73  	j	0x8000244c <.LBB1_124+0x300>

80001d18 <.LBB1_61>:
80001d18: 93 05 20 00  	addi	a1, zero, 2

80001d1c <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001d1c: 13 74 34 ff  	andi	s0, s0, -13
80001d20: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001d24: 93 75 04 40  	andi	a1, s0, 1024
80001d28: 63 84 05 00  	beqz	a1, 0x80001d30 <.LBB1_62+0x14>
80001d2c: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001d30: 93 05 90 06  	addi	a1, zero, 105
80001d34: 63 06 b5 00  	beq	a0, a1, 0x80001d40 <.LBB1_62+0x24>
80001d38: 93 05 40 06  	addi	a1, zero, 100
80001d3c: 63 1c b5 12  	bne	a0, a1, 0x80001e74 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001d40: 13 75 04 20  	andi	a0, s0, 512
80001d44: 63 16 05 02  	bnez	a0, 0x80001d70 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001d48: 13 75 04 10  	andi	a0, s0, 256
80001d4c: 63 1c 05 14  	bnez	a0, 0x80001ea4 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001d50: 13 75 04 04  	andi	a0, s0, 64
80001d54: 63 18 05 4e  	bnez	a0, 0x80002244 <.LBB1_124+0xf8>
80001d58: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001d5c: 93 75 04 08  	andi	a1, s0, 128
80001d60: 63 84 05 4e  	beqz	a1, 0x80002248 <.LBB1_124+0xfc>
80001d64: 13 15 08 01  	slli	a0, a6, 16
80001d68: 13 58 05 41  	srai	a6, a0, 16
80001d6c: 6f 00 c0 4d  	j	0x80002248 <.LBB1_124+0xfc>
80001d70: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80001d74: 13 85 79 00  	addi	a0, s3, 7
80001d78: 13 75 85 ff  	andi	a0, a0, -8
80001d7c: 83 29 05 00  	lw	s3, 0(a0)
80001d80: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80001d84: 13 65 45 00  	ori	a0, a0, 4
80001d88: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001d8c: 23 24 a1 00  	sw	a0, 8(sp)
80001d90: 33 e5 a9 00  	or	a0, s3, a0
80001d94: 63 14 05 00  	bnez	a0, 0x80001d9c <.LBB1_62+0x80>
80001d98: 13 74 f4 fe  	andi	s0, s0, -17
80001d9c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001da0: 93 75 04 40  	andi	a1, s0, 1024
80001da4: 93 d5 a5 00  	srli	a1, a1, 10
80001da8: 33 75 b5 00  	and	a0, a0, a1
80001dac: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001db0: 63 14 05 0a  	bnez	a0, 0x80001e58 <.LBB1_62+0x13c>
80001db4: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001db8: 63 da 04 00  	bgez	s1, 0x80001dcc <.LBB1_62+0xb0>
80001dbc: 33 35 30 01  	snez	a0, s3
80001dc0: b3 09 30 41  	neg	s3, s3
80001dc4: 33 85 a4 00  	add	a0, s1, a0
80001dc8: b3 04 a0 40  	neg	s1, a0
80001dcc: 13 09 00 00  	mv	s2, zero
80001dd0: 13 75 04 02  	andi	a0, s0, 32
80001dd4: 13 45 15 06  	xori	a0, a0, 97
80001dd8: 13 05 65 0f  	addi	a0, a0, 246
80001ddc: 23 2a a1 00  	sw	a0, 20(sp)
80001de0: 6f 00 40 02  	j	0x80001e04 <.LBB1_62+0xe8>
80001de4: 13 06 10 00  	addi	a2, zero, 1
80001de8: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001dec: 93 36 f9 01  	sltiu	a3, s2, 31
80001df0: 33 f6 c6 00  	and	a2, a3, a2
80001df4: 13 89 07 00  	mv	s2, a5
80001df8: 93 09 05 00  	mv	s3, a0
80001dfc: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e00: 63 0c 06 04  	beqz	a2, 0x80001e58 <.LBB1_62+0x13c>
;       value /= base;
80001e04: 13 85 09 00  	mv	a0, s3
80001e08: 93 85 04 00  	mv	a1, s1
80001e0c: 13 06 0c 00  	mv	a2, s8
80001e10: 93 06 00 00  	mv	a3, zero
80001e14: 97 e0 ff ff  	auipc	ra, 1048574
80001e18: e7 80 c0 1e  	jalr	492(ra)
80001e1c: 33 06 85 03  	mul	a2, a0, s8
80001e20: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e24: 13 77 e6 0f  	andi	a4, a2, 254
80001e28: 93 06 00 03  	addi	a3, zero, 48
80001e2c: 93 07 a0 00  	addi	a5, zero, 10
80001e30: 63 64 f7 00  	bltu	a4, a5, 0x80001e38 <.LBB1_62+0x11c>
80001e34: 83 26 41 01  	lw	a3, 20(sp)
80001e38: 33 86 c6 00  	add	a2, a3, a2
80001e3c: 93 06 c1 01  	addi	a3, sp, 28
80001e40: b3 86 26 01  	add	a3, a3, s2
80001e44: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e48: e3 9e 04 f8  	bnez	s1, 0x80001de4 <.LBB1_62+0xc8>
80001e4c: 33 b6 89 01  	sltu	a2, s3, s8
80001e50: 13 46 16 00  	xori	a2, a2, 1
80001e54: 6f f0 5f f9  	j	0x80001de8 <.LBB1_62+0xcc>
80001e58: 03 25 41 00  	lw	a0, 4(sp)
80001e5c: 93 09 85 00  	addi	s3, a0, 8
80001e60: 03 25 81 00  	lw	a0, 8(sp)
80001e64: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001e68: 13 07 c1 01  	addi	a4, sp, 28
80001e6c: 03 29 c1 00  	lw	s2, 12(sp)
80001e70: 6f 00 80 47  	j	0x800022e8 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80001e74: 13 75 04 20  	andi	a0, s0, 512
80001e78: 63 12 05 0c  	bnez	a0, 0x80001f3c <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001e7c: 13 75 04 10  	andi	a0, s0, 256
80001e80: 63 1e 05 46  	bnez	a0, 0x800022fc <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001e84: 13 75 04 04  	andi	a0, s0, 64
80001e88: 63 10 05 50  	bnez	a0, 0x80002388 <.LBB1_124+0x23c>
80001e8c: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001e90: 93 75 04 08  	andi	a1, s0, 128
80001e94: 63 8c 05 4e  	beqz	a1, 0x8000238c <.LBB1_124+0x240>
80001e98: 83 25 01 01  	lw	a1, 16(sp)
80001e9c: 33 75 b5 00  	and	a0, a0, a1
80001ea0: 6f 00 c0 4e  	j	0x8000238c <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80001ea4: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001ea8: 63 14 08 00  	bnez	a6, 0x80001eb0 <.LBB1_62+0x194>
80001eac: 13 74 f4 fe  	andi	s0, s0, -17
80001eb0: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001eb4: 13 76 04 40  	andi	a2, s0, 1024
80001eb8: 13 56 a6 00  	srli	a2, a2, 10
80001ebc: b3 f5 c5 00  	and	a1, a1, a2
80001ec0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001ec4: 63 9c 05 40  	bnez	a1, 0x800022dc <.LBB1_124+0x190>
80001ec8: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001ecc: 13 56 f8 41  	srai	a2, a6, 31
80001ed0: b3 06 c8 00  	add	a3, a6, a2
80001ed4: b3 c6 c6 00  	xor	a3, a3, a2
80001ed8: 13 76 04 02  	andi	a2, s0, 32
80001edc: 13 46 16 06  	xori	a2, a2, 97
80001ee0: 93 08 66 0f  	addi	a7, a2, 246
80001ee4: 6f 00 40 03  	j	0x80001f18 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001ee8: 33 05 f6 00  	add	a0, a2, a5
80001eec: 93 87 15 00  	addi	a5, a1, 1
80001ef0: 13 06 c1 01  	addi	a2, sp, 28
80001ef4: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001ef8: b3 b6 86 01  	sltu	a3, a3, s8
80001efc: 93 c6 16 00  	xori	a3, a3, 1
80001f00: 93 b5 f5 01  	sltiu	a1, a1, 31
80001f04: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f08: 23 00 a6 00  	sb	a0, 0(a2)
80001f0c: 93 85 07 00  	mv	a1, a5
80001f10: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f14: 63 84 04 3c  	beqz	s1, 0x800022dc <.LBB1_124+0x190>
;       value /= base;
80001f18: 33 d7 86 03  	divu	a4, a3, s8
80001f1c: 33 06 87 03  	mul	a2, a4, s8
80001f20: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f24: 13 f5 e7 0f  	andi	a0, a5, 254
80001f28: 13 06 00 03  	addi	a2, zero, 48
80001f2c: 93 04 a0 00  	addi	s1, zero, 10
80001f30: e3 6c 95 fa  	bltu	a0, s1, 0x80001ee8 <.LBB1_62+0x1cc>
80001f34: 13 86 08 00  	mv	a2, a7
80001f38: 6f f0 1f fb  	j	0x80001ee8 <.LBB1_62+0x1cc>
80001f3c: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001f40: 13 85 79 00  	addi	a0, s3, 7
80001f44: 93 75 85 ff  	andi	a1, a0, -8
80001f48: 03 a9 05 00  	lw	s2, 0(a1)
80001f4c: 13 e5 45 00  	ori	a0, a1, 4
80001f50: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80001f54: 33 65 39 01  	or	a0, s2, s3
80001f58: 23 24 b1 00  	sw	a1, 8(sp)
80001f5c: 63 14 05 00  	bnez	a0, 0x80001f64 <.LBB1_62+0x248>
80001f60: 13 74 f4 fe  	andi	s0, s0, -17
80001f64: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f68: 93 75 04 40  	andi	a1, s0, 1024
80001f6c: 93 d5 a5 00  	srli	a1, a1, 10
80001f70: 33 75 b5 00  	and	a0, a0, a1
80001f74: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f78: 63 18 05 08  	bnez	a0, 0x80002008 <.LBB1_62+0x2ec>
80001f7c: 93 04 00 00  	mv	s1, zero
80001f80: 13 75 04 02  	andi	a0, s0, 32
80001f84: 13 45 15 06  	xori	a0, a0, 97
80001f88: 13 05 65 0f  	addi	a0, a0, 246
80001f8c: 23 2a a1 00  	sw	a0, 20(sp)
80001f90: 6f 00 40 02  	j	0x80001fb4 <.LBB1_62+0x298>
80001f94: 13 06 10 00  	addi	a2, zero, 1
80001f98: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f9c: 93 b6 f4 01  	sltiu	a3, s1, 31
80001fa0: 33 f6 c6 00  	and	a2, a3, a2
80001fa4: 93 84 07 00  	mv	s1, a5
80001fa8: 13 09 05 00  	mv	s2, a0
80001fac: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001fb0: 63 0c 06 04  	beqz	a2, 0x80002008 <.LBB1_62+0x2ec>
;       value /= base;
80001fb4: 13 05 09 00  	mv	a0, s2
80001fb8: 93 85 09 00  	mv	a1, s3
80001fbc: 13 06 0c 00  	mv	a2, s8
80001fc0: 93 06 00 00  	mv	a3, zero
80001fc4: 97 e0 ff ff  	auipc	ra, 1048574
80001fc8: e7 80 c0 03  	jalr	60(ra)
80001fcc: 33 06 85 03  	mul	a2, a0, s8
80001fd0: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001fd4: 13 77 e6 0f  	andi	a4, a2, 254
80001fd8: 93 06 00 03  	addi	a3, zero, 48
80001fdc: 93 07 a0 00  	addi	a5, zero, 10
80001fe0: 63 64 f7 00  	bltu	a4, a5, 0x80001fe8 <.LBB1_62+0x2cc>
80001fe4: 83 26 41 01  	lw	a3, 20(sp)
80001fe8: 33 86 c6 00  	add	a2, a3, a2
80001fec: 93 06 c1 01  	addi	a3, sp, 28
80001ff0: b3 86 96 00  	add	a3, a3, s1
80001ff4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001ff8: e3 9e 09 f8  	bnez	s3, 0x80001f94 <.LBB1_62+0x278>
80001ffc: 33 36 89 01  	sltu	a2, s2, s8
80002000: 13 46 16 00  	xori	a2, a2, 1
80002004: 6f f0 5f f9  	j	0x80001f98 <.LBB1_62+0x27c>
80002008: 03 25 81 00  	lw	a0, 8(sp)
8000200c: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80002010: 13 07 c1 01  	addi	a4, sp, 28
80002014: 03 29 c1 00  	lw	s2, 12(sp)
80002018: 6f 00 40 40  	j	0x8000241c <.LBB1_124+0x2d0>

8000201c <.LBB1_108>:
8000201c: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80002020: 13 79 24 00  	andi	s2, s0, 2
80002024: 93 04 10 00  	addi	s1, zero, 1
80002028: 63 1e 09 02  	bnez	s2, 0x80002064 <.LBB1_108+0x48>
8000202c: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80002030: 63 6a 9b 02  	bltu	s6, s1, 0x80002064 <.LBB1_108+0x48>
80002034: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80002038: 13 0c fb ff  	addi	s8, s6, -1
8000203c: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80002040: 33 86 8c 00  	add	a2, s9, s0
80002044: 13 05 00 02  	addi	a0, zero, 32
80002048: 93 05 0a 00  	mv	a1, s4
8000204c: 93 86 0a 00  	mv	a3, s5
80002050: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80002054: 13 04 14 00  	addi	s0, s0, 1
80002058: e3 14 8c fe  	bne	s8, s0, 0x80002040 <.LBB1_108+0x24>
8000205c: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80002060: b3 8c 8c 00  	add	s9, s9, s0
80002064: 03 c5 09 00  	lbu	a0, 0(s3)
80002068: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
8000206c: 93 89 49 00  	addi	s3, s3, 4
80002070: 13 8c 1c 00  	addi	s8, s9, 1
80002074: 93 05 0a 00  	mv	a1, s4
80002078: 13 86 0c 00  	mv	a2, s9
8000207c: 93 86 0a 00  	mv	a3, s5
80002080: 13 89 0b 00  	mv	s2, s7
80002084: e7 80 0b 00  	jalr	s7
80002088: 33 b5 64 01  	sltu	a0, s1, s6
8000208c: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80002090: 33 65 a4 00  	or	a0, s0, a0
80002094: 63 1c 05 3a  	bnez	a0, 0x8000244c <.LBB1_124+0x300>
;           while (l++ < width) {
80002098: 33 04 9b 40  	sub	s0, s6, s1
8000209c: 93 0b e0 02  	addi	s7, zero, 46
800020a0: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800020a4: 13 0c 1c 00  	addi	s8, s8, 1
800020a8: 13 05 00 02  	addi	a0, zero, 32
800020ac: 93 05 0a 00  	mv	a1, s4
800020b0: 93 86 0a 00  	mv	a3, s5
800020b4: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800020b8: 13 04 f4 ff  	addi	s0, s0, -1
800020bc: e3 12 04 fe  	bnez	s0, 0x800020a0 <.LBB1_108+0x84>
800020c0: 13 0b 50 02  	addi	s6, zero, 37
800020c4: 13 04 1d 00  	addi	s0, s10, 1
800020c8: 6f f0 df 91  	j	0x800019e4 <.LBB1_183+0x30>

800020cc <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
800020cc: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
800020d0: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
800020d4: 63 14 05 00  	bnez	a0, 0x800020dc <.LBB1_117+0x10>
800020d8: 93 fe fe fe  	andi	t4, t4, -17
800020dc: 93 04 a0 00  	addi	s1, zero, 10
800020e0: 13 04 f0 00  	addi	s0, zero, 15
800020e4: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800020e8: 13 f6 0e 40  	andi	a2, t4, 1024
800020ec: 13 56 a6 00  	srli	a2, a2, 10
800020f0: b3 f5 c5 00  	and	a1, a1, a2
800020f4: 93 07 00 00  	mv	a5, zero
800020f8: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800020fc: 63 98 05 10  	bnez	a1, 0x8000220c <.LBB1_124+0xc0>
80002100: 93 05 00 00  	mv	a1, zero
80002104: 6f 00 40 03  	j	0x80002138 <.LBB1_117+0x6c>
80002108: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000210c: 33 06 d6 00  	add	a2, a2, a3
80002110: 93 87 15 00  	addi	a5, a1, 1
80002114: 93 06 c1 01  	addi	a3, sp, 28
80002118: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000211c: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80002120: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002124: 93 b5 f5 01  	sltiu	a1, a1, 31
80002128: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000212c: 23 80 c6 00  	sb	a2, 0(a3)
80002130: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002134: 63 0c 07 0c  	beqz	a4, 0x8000220c <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002138: 93 76 e5 00  	andi	a3, a0, 14
8000213c: 13 06 00 03  	addi	a2, zero, 48
80002140: e3 e4 96 fc  	bltu	a3, s1, 0x80002108 <.LBB1_117+0x3c>
80002144: 13 06 70 03  	addi	a2, zero, 55
80002148: 6f f0 1f fc  	j	0x80002108 <.LBB1_117+0x3c>

8000214c <.LBB1_124>:
;         const char* p = va_arg(va, char*);
8000214c: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80002150: 03 c5 07 00  	lbu	a0, 0(a5)
80002154: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80002158: 63 0c 05 02  	beqz	a0, 0x80002190 <.LBB1_124+0x44>
8000215c: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80002160: 63 84 0b 00  	beqz	s7, 0x80002168 <.LBB1_124+0x1c>
80002164: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80002168: 93 85 f5 ff  	addi	a1, a1, -1
8000216c: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80002170: 03 c7 16 00  	lbu	a4, 1(a3)
80002174: 13 86 16 00  	addi	a2, a3, 1
80002178: b3 36 e0 00  	snez	a3, a4
8000217c: 33 37 b0 00  	snez	a4, a1
80002180: 33 77 d7 00  	and	a4, a4, a3
80002184: 93 85 f5 ff  	addi	a1, a1, -1
80002188: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
8000218c: e3 12 07 fe  	bnez	a4, 0x80002170 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80002190: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80002194: 93 75 04 40  	andi	a1, s0, 1024
80002198: 93 b4 15 00  	seqz	s1, a1
8000219c: 23 2a c1 00  	sw	a2, 20(sp)
800021a0: b3 35 76 01  	sltu	a1, a2, s7
800021a4: b3 e5 b4 00  	or	a1, s1, a1
800021a8: 63 94 05 00  	bnez	a1, 0x800021b0 <.LBB1_124+0x64>
800021ac: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
800021b0: 93 75 24 00  	andi	a1, s0, 2
800021b4: 23 26 b1 00  	sw	a1, 12(sp)
800021b8: 63 96 05 2a  	bnez	a1, 0x80002464 <.LBB1_124+0x318>
800021bc: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
800021c0: 63 fe 65 29  	bgeu	a1, s6, 0x8000245c <.LBB1_124+0x310>
800021c4: 23 24 f1 00  	sw	a5, 8(sp)
800021c8: 13 04 00 00  	mv	s0, zero
800021cc: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
800021d0: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
800021d4: 33 86 8c 00  	add	a2, s9, s0
800021d8: 13 05 00 02  	addi	a0, zero, 32
800021dc: 93 05 0a 00  	mv	a1, s4
800021e0: 93 86 0a 00  	mv	a3, s5
800021e4: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
800021e8: 13 04 14 00  	addi	s0, s0, 1
800021ec: e3 14 89 fe  	bne	s2, s0, 0x800021d4 <.LBB1_124+0x88>
800021f0: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800021f4: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
800021f8: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800021fc: 23 2a b1 00  	sw	a1, 20(sp)
80002200: b3 8c 8c 00  	add	s9, s9, s0
80002204: 13 09 0c 00  	mv	s2, s8
80002208: 6f 00 c0 25  	j	0x80002464 <.LBB1_124+0x318>
8000220c: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80002210: 13 07 c1 01  	addi	a4, sp, 28
80002214: 93 08 00 01  	addi	a7, zero, 16
80002218: 13 0e 80 00  	addi	t3, zero, 8
8000221c: 13 05 09 00  	mv	a0, s2
80002220: 93 05 0a 00  	mv	a1, s4
80002224: 13 86 0c 00  	mv	a2, s9
80002228: 93 86 0a 00  	mv	a3, s5
8000222c: 13 08 00 00  	mv	a6, zero
80002230: 93 83 0b 00  	mv	t2, s7
80002234: 97 10 00 00  	auipc	ra, 1
80002238: e7 80 00 fa  	jalr	-96(ra)
8000223c: 13 0c 05 00  	mv	s8, a0
80002240: 6f 00 00 21  	j	0x80002450 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80002244: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80002248: 63 14 08 00  	bnez	a6, 0x80002250 <.LBB1_124+0x104>
8000224c: 13 74 f4 fe  	andi	s0, s0, -17
80002250: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80002254: 13 76 04 40  	andi	a2, s0, 1024
80002258: 13 56 a6 00  	srli	a2, a2, 10
8000225c: b3 f5 c5 00  	and	a1, a1, a2
80002260: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002264: 63 9c 05 06  	bnez	a1, 0x800022dc <.LBB1_124+0x190>
80002268: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000226c: 13 56 f8 41  	srai	a2, a6, 31
80002270: b3 06 c8 00  	add	a3, a6, a2
80002274: b3 c6 c6 00  	xor	a3, a3, a2
80002278: 13 76 04 02  	andi	a2, s0, 32
8000227c: 13 46 16 06  	xori	a2, a2, 97
80002280: 93 08 66 0f  	addi	a7, a2, 246
80002284: 6f 00 40 03  	j	0x800022b8 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002288: 33 05 f6 00  	add	a0, a2, a5
8000228c: 93 87 15 00  	addi	a5, a1, 1
80002290: 13 06 c1 01  	addi	a2, sp, 28
80002294: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002298: b3 b6 86 01  	sltu	a3, a3, s8
8000229c: 93 c6 16 00  	xori	a3, a3, 1
800022a0: 93 b5 f5 01  	sltiu	a1, a1, 31
800022a4: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800022a8: 23 00 a6 00  	sb	a0, 0(a2)
800022ac: 93 85 07 00  	mv	a1, a5
800022b0: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800022b4: 63 84 04 02  	beqz	s1, 0x800022dc <.LBB1_124+0x190>
;       value /= base;
800022b8: 33 d7 86 03  	divu	a4, a3, s8
800022bc: 33 06 87 03  	mul	a2, a4, s8
800022c0: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800022c4: 13 f5 e7 0f  	andi	a0, a5, 254
800022c8: 13 06 00 03  	addi	a2, zero, 48
800022cc: 93 04 a0 00  	addi	s1, zero, 10
800022d0: e3 6c 95 fa  	bltu	a0, s1, 0x80002288 <.LBB1_124+0x13c>
800022d4: 13 86 08 00  	mv	a2, a7
800022d8: 6f f0 1f fb  	j	0x80002288 <.LBB1_124+0x13c>
800022dc: 93 89 49 00  	addi	s3, s3, 4
800022e0: 13 58 f8 01  	srli	a6, a6, 31
800022e4: 13 07 c1 01  	addi	a4, sp, 28
800022e8: 13 05 09 00  	mv	a0, s2
800022ec: 93 05 0a 00  	mv	a1, s4
800022f0: 13 86 0c 00  	mv	a2, s9
800022f4: 93 86 0a 00  	mv	a3, s5
800022f8: 6f 00 80 13  	j	0x80002430 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800022fc: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80002300: 63 14 05 00  	bnez	a0, 0x80002308 <.LBB1_124+0x1bc>
80002304: 13 74 f4 fe  	andi	s0, s0, -17
80002308: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000230c: 13 76 04 40  	andi	a2, s0, 1024
80002310: 13 56 a6 00  	srli	a2, a2, 10
80002314: b3 f5 c5 00  	and	a1, a1, a2
80002318: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000231c: 63 9c 05 0e  	bnez	a1, 0x80002414 <.LBB1_124+0x2c8>
80002320: 13 06 00 00  	mv	a2, zero
80002324: 93 75 04 02  	andi	a1, s0, 32
80002328: 93 c5 15 06  	xori	a1, a1, 97
8000232c: 13 88 65 0f  	addi	a6, a1, 246
80002330: 6f 00 40 03  	j	0x80002364 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002334: 33 87 e7 00  	add	a4, a5, a4
80002338: 93 07 16 00  	addi	a5, a2, 1
8000233c: 93 05 c1 01  	addi	a1, sp, 28
80002340: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002344: 33 35 85 01  	sltu	a0, a0, s8
80002348: 13 45 15 00  	xori	a0, a0, 1
8000234c: 13 36 f6 01  	sltiu	a2, a2, 31
80002350: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002354: 23 80 e4 00  	sb	a4, 0(s1)
80002358: 13 86 07 00  	mv	a2, a5
8000235c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002360: 63 8a 05 0a  	beqz	a1, 0x80002414 <.LBB1_124+0x2c8>
;       value /= base;
80002364: b3 56 85 03  	divu	a3, a0, s8
80002368: 33 87 86 03  	mul	a4, a3, s8
8000236c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002370: 93 74 e7 0f  	andi	s1, a4, 254
80002374: 93 07 00 03  	addi	a5, zero, 48
80002378: 93 05 a0 00  	addi	a1, zero, 10
8000237c: e3 ec b4 fa  	bltu	s1, a1, 0x80002334 <.LBB1_124+0x1e8>
80002380: 93 07 08 00  	mv	a5, a6
80002384: 6f f0 1f fb  	j	0x80002334 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80002388: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
8000238c: 63 14 05 00  	bnez	a0, 0x80002394 <.LBB1_124+0x248>
80002390: 13 74 f4 fe  	andi	s0, s0, -17
80002394: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80002398: 13 76 04 40  	andi	a2, s0, 1024
8000239c: 13 56 a6 00  	srli	a2, a2, 10
800023a0: b3 f5 c5 00  	and	a1, a1, a2
800023a4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800023a8: 63 96 05 06  	bnez	a1, 0x80002414 <.LBB1_124+0x2c8>
800023ac: 13 06 00 00  	mv	a2, zero
800023b0: 93 75 04 02  	andi	a1, s0, 32
800023b4: 93 c5 15 06  	xori	a1, a1, 97
800023b8: 13 88 65 0f  	addi	a6, a1, 246
800023bc: 6f 00 40 03  	j	0x800023f0 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023c0: 33 87 e7 00  	add	a4, a5, a4
800023c4: 93 07 16 00  	addi	a5, a2, 1
800023c8: 93 05 c1 01  	addi	a1, sp, 28
800023cc: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800023d0: 33 35 85 01  	sltu	a0, a0, s8
800023d4: 13 45 15 00  	xori	a0, a0, 1
800023d8: 13 36 f6 01  	sltiu	a2, a2, 31
800023dc: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023e0: 23 80 e4 00  	sb	a4, 0(s1)
800023e4: 13 86 07 00  	mv	a2, a5
800023e8: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800023ec: 63 84 05 02  	beqz	a1, 0x80002414 <.LBB1_124+0x2c8>
;       value /= base;
800023f0: b3 56 85 03  	divu	a3, a0, s8
800023f4: 33 87 86 03  	mul	a4, a3, s8
800023f8: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800023fc: 93 74 e7 0f  	andi	s1, a4, 254
80002400: 93 07 00 03  	addi	a5, zero, 48
80002404: 93 05 a0 00  	addi	a1, zero, 10
80002408: e3 ec b4 fa  	bltu	s1, a1, 0x800023c0 <.LBB1_124+0x274>
8000240c: 93 07 08 00  	mv	a5, a6
80002410: 6f f0 1f fb  	j	0x800023c0 <.LBB1_124+0x274>
80002414: 93 89 49 00  	addi	s3, s3, 4
80002418: 13 07 c1 01  	addi	a4, sp, 28
8000241c: 13 05 09 00  	mv	a0, s2
80002420: 93 05 0a 00  	mv	a1, s4
80002424: 13 86 0c 00  	mv	a2, s9
80002428: 93 86 0a 00  	mv	a3, s5
8000242c: 13 08 00 00  	mv	a6, zero
80002430: 93 08 0c 00  	mv	a7, s8
80002434: 93 83 0b 00  	mv	t2, s7
80002438: 13 0e 0b 00  	mv	t3, s6
8000243c: 93 0e 04 00  	mv	t4, s0
80002440: 97 10 00 00  	auipc	ra, 1
80002444: e7 80 40 d9  	jalr	-620(ra)
80002448: 13 0c 05 00  	mv	s8, a0
8000244c: 13 0b 50 02  	addi	s6, zero, 37
80002450: 93 0b e0 02  	addi	s7, zero, 46
80002454: 13 04 1d 00  	addi	s0, s10, 1
80002458: 6f f0 cf d8  	j	0x800019e4 <.LBB1_183+0x30>
8000245c: 93 85 15 00  	addi	a1, a1, 1
80002460: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002464: 63 00 05 04  	beqz	a0, 0x800024a4 <.LBB1_124+0x358>
80002468: 13 84 17 00  	addi	s0, a5, 1
8000246c: 6f 00 00 03  	j	0x8000249c <.LBB1_124+0x350>
80002470: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80002474: 13 8c 1c 00  	addi	s8, s9, 1
80002478: 13 75 f5 0f  	andi	a0, a0, 255
8000247c: 93 05 0a 00  	mv	a1, s4
80002480: 13 86 0c 00  	mv	a2, s9
80002484: 93 86 0a 00  	mv	a3, s5
80002488: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000248c: 03 45 04 00  	lbu	a0, 0(s0)
80002490: 13 04 14 00  	addi	s0, s0, 1
80002494: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002498: 63 08 05 00  	beqz	a0, 0x800024a8 <.LBB1_124+0x35c>
8000249c: e3 9c 04 fc  	bnez	s1, 0x80002474 <.LBB1_124+0x328>
800024a0: e3 98 0b fc  	bnez	s7, 0x80002470 <.LBB1_124+0x324>
800024a4: 13 8c 0c 00  	mv	s8, s9
800024a8: 03 25 c1 00  	lw	a0, 12(sp)
800024ac: 13 35 15 00  	seqz	a0, a0
800024b0: 03 26 41 01  	lw	a2, 20(sp)
800024b4: b3 35 66 01  	sltu	a1, a2, s6
800024b8: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800024bc: 33 65 b5 00  	or	a0, a0, a1
800024c0: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
800024c4: e3 14 05 f8  	bnez	a0, 0x8000244c <.LBB1_124+0x300>
;           while (l++ < width) {
800024c8: 33 04 cb 40  	sub	s0, s6, a2
800024cc: 93 0b e0 02  	addi	s7, zero, 46
800024d0: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800024d4: 13 0c 1c 00  	addi	s8, s8, 1
800024d8: 13 05 00 02  	addi	a0, zero, 32
800024dc: 93 05 0a 00  	mv	a1, s4
800024e0: 93 86 0a 00  	mv	a3, s5
800024e4: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800024e8: 13 04 f4 ff  	addi	s0, s0, -1
800024ec: e3 12 04 fe  	bnez	s0, 0x800024d0 <.LBB1_124+0x384>
800024f0: 13 0b 50 02  	addi	s6, zero, 37
800024f4: 13 04 1d 00  	addi	s0, s10, 1
800024f8: 6f f0 cf ce  	j	0x800019e4 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800024fc: 13 86 0c 00  	mv	a2, s9
80002500: 63 e4 5c 01  	bltu	s9, s5, 0x80002508 <.LBB1_124+0x3bc>
80002504: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80002508: 13 05 00 00  	mv	a0, zero
8000250c: 93 05 0a 00  	mv	a1, s4
80002510: 93 86 0a 00  	mv	a3, s5
80002514: e7 00 09 00  	jalr	s2
;   return (int)idx;
80002518: 13 85 0c 00  	mv	a0, s9
8000251c: 83 2d c1 03  	lw	s11, 60(sp)
80002520: 03 2d 01 04  	lw	s10, 64(sp)
80002524: 83 2c 41 04  	lw	s9, 68(sp)
80002528: 03 2c 81 04  	lw	s8, 72(sp)
8000252c: 83 2b c1 04  	lw	s7, 76(sp)
80002530: 03 2b 01 05  	lw	s6, 80(sp)
80002534: 83 2a 41 05  	lw	s5, 84(sp)
80002538: 03 2a 81 05  	lw	s4, 88(sp)
8000253c: 83 29 c1 05  	lw	s3, 92(sp)
80002540: 03 29 01 06  	lw	s2, 96(sp)
80002544: 83 24 41 06  	lw	s1, 100(sp)
80002548: 03 24 81 06  	lw	s0, 104(sp)
8000254c: 83 20 c1 06  	lw	ra, 108(sp)
80002550: 13 01 01 07  	addi	sp, sp, 112
80002554: 67 80 00 00  	ret

80002558 <_out_char.llvm.17592004524093383706>:
;   if (character) {
80002558: 63 04 05 0a  	beqz	a0, 0x80002600 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000255c: f3 25 40 f1  	csrr	a1, mhartid
80002560: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80002564: 33 86 c5 02  	mul	a2, a1, a2

80002568 <.LBB2_6>:
80002568: 97 26 00 00  	auipc	a3, 2
8000256c: 93 86 c6 a4  	addi	a3, a3, -1460
80002570: b3 05 d6 00  	add	a1, a2, a3
80002574: 03 a7 05 00  	lw	a4, 0(a1)
80002578: 93 07 17 00  	addi	a5, a4, 1
8000257c: 23 a0 f5 00  	sw	a5, 0(a1)
80002580: 33 87 e5 00  	add	a4, a1, a4
80002584: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80002588: 03 a7 05 00  	lw	a4, 0(a1)
8000258c: 13 07 47 c0  	addi	a4, a4, -1020
80002590: 33 37 e0 00  	snez	a4, a4
80002594: 13 05 65 ff  	addi	a0, a0, -10
80002598: 33 35 a0 00  	snez	a0, a0
8000259c: 33 75 e5 00  	and	a0, a0, a4
800025a0: 63 10 05 06  	bnez	a0, 0x80002600 <.LBB2_8+0x18>
800025a4: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
800025a8: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800025ac: 23 26 05 00  	sw	zero, 12(a0)
800025b0: 93 06 00 04  	addi	a3, zero, 64
800025b4: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
800025b8: 23 2a 05 00  	sw	zero, 20(a0)
800025bc: 93 06 10 00  	addi	a3, zero, 1
800025c0: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
800025c4: 23 2e 05 00  	sw	zero, 28(a0)
800025c8: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800025cc: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800025d0: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800025d4: 23 22 05 02  	sw	zero, 36(a0)
800025d8: 23 20 c5 02  	sw	a2, 32(a0)

800025dc <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
800025dc: 17 25 00 00  	auipc	a0, 2
800025e0: 13 05 45 8a  	addi	a0, a0, -1884
800025e4: 23 20 d5 00  	sw	a3, 0(a0)

800025e8 <.LBB2_8>:
800025e8: 17 25 00 00  	auipc	a0, 2
800025ec: 13 05 85 8d  	addi	a0, a0, -1832
;         while (fromhost == 0)
800025f0: 03 26 05 00  	lw	a2, 0(a0)
800025f4: e3 0e 06 fe  	beqz	a2, 0x800025f0 <.LBB2_8+0x8>
;         fromhost = 0;
800025f8: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
800025fc: 23 a0 05 00  	sw	zero, 0(a1)
; }
80002600: 67 80 00 00  	ret

80002604 <_out_null>:
; }
80002604: 67 80 00 00  	ret

80002608 <_ftoa>:
; {
80002608: 13 01 01 f9  	addi	sp, sp, -112
8000260c: 23 26 11 06  	sw	ra, 108(sp)
80002610: 23 24 81 06  	sw	s0, 104(sp)
80002614: 23 22 91 06  	sw	s1, 100(sp)
80002618: 23 20 21 07  	sw	s2, 96(sp)
8000261c: 23 2e 31 05  	sw	s3, 92(sp)
80002620: 23 2c 41 05  	sw	s4, 88(sp)
80002624: 23 2a 51 05  	sw	s5, 84(sp)
80002628: 23 28 61 05  	sw	s6, 80(sp)
8000262c: 23 26 71 05  	sw	s7, 76(sp)
80002630: 23 24 81 05  	sw	s8, 72(sp)
80002634: 23 22 91 05  	sw	s9, 68(sp)
80002638: 23 20 a1 05  	sw	s10, 64(sp)
8000263c: 27 3c 81 02  	fsd	fs0, 56(sp)
80002640: 27 38 91 02  	fsd	fs1, 48(sp)
80002644: 27 34 21 03  	fsd	fs2, 40(sp)

80002648 <.LBB4_83>:
80002648: 97 24 00 00  	auipc	s1, 2
8000264c: 93 84 04 8c  	addi	s1, s1, -1856
80002650: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80002654: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80002658: 93 0a 08 00  	mv	s5, a6
8000265c: 13 89 07 00  	mv	s2, a5
80002660: 93 89 06 00  	mv	s3, a3
80002664: 13 0a 06 00  	mv	s4, a2
80002668: 13 8b 05 00  	mv	s6, a1
8000266c: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80002670: 63 98 04 0e  	bnez	s1, 0x80002760 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002674: 13 f5 2a 00  	andi	a0, s5, 2
80002678: 93 f5 3a 00  	andi	a1, s5, 3
8000267c: b3 35 b0 00  	snez	a1, a1
80002680: 13 36 59 00  	sltiu	a2, s2, 5
80002684: b3 65 b6 00  	or	a1, a2, a1
80002688: 93 5c 15 00  	srli	s9, a0, 1
8000268c: 13 04 0a 00  	mv	s0, s4
80002690: 63 96 05 02  	bnez	a1, 0x800026bc <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80002694: 93 04 c9 ff  	addi	s1, s2, -4
80002698: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000269c: 13 04 16 00  	addi	s0, a2, 1
800026a0: 13 05 00 02  	addi	a0, zero, 32
800026a4: 93 05 0b 00  	mv	a1, s6
800026a8: 93 86 09 00  	mv	a3, s3
800026ac: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800026b0: 93 84 f4 ff  	addi	s1, s1, -1
800026b4: 13 06 04 00  	mv	a2, s0
800026b8: e3 92 04 fe  	bnez	s1, 0x8000269c <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
800026bc: 93 04 14 00  	addi	s1, s0, 1
800026c0: 13 05 d0 02  	addi	a0, zero, 45
800026c4: 93 05 0b 00  	mv	a1, s6
800026c8: 13 06 04 00  	mv	a2, s0
800026cc: 93 86 09 00  	mv	a3, s3
800026d0: e7 80 0b 00  	jalr	s7
800026d4: 93 0a 24 00  	addi	s5, s0, 2
800026d8: 13 05 90 06  	addi	a0, zero, 105
800026dc: 93 05 0b 00  	mv	a1, s6
800026e0: 13 86 04 00  	mv	a2, s1
800026e4: 93 86 09 00  	mv	a3, s3
800026e8: e7 80 0b 00  	jalr	s7
800026ec: 13 0c 34 00  	addi	s8, s0, 3
800026f0: 13 05 e0 06  	addi	a0, zero, 110
800026f4: 93 05 0b 00  	mv	a1, s6
800026f8: 13 86 0a 00  	mv	a2, s5
800026fc: 93 86 09 00  	mv	a3, s3
80002700: e7 80 0b 00  	jalr	s7
80002704: 93 04 44 00  	addi	s1, s0, 4
80002708: 13 05 60 06  	addi	a0, zero, 102
8000270c: 93 05 0b 00  	mv	a1, s6
80002710: 13 06 0c 00  	mv	a2, s8
80002714: 93 86 09 00  	mv	a3, s3
80002718: e7 80 0b 00  	jalr	s7
8000271c: 33 85 44 41  	sub	a0, s1, s4
80002720: 33 35 25 01  	sltu	a0, a0, s2
80002724: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002728: 93 c5 1c 00  	xori	a1, s9, 1
8000272c: 33 e5 a5 00  	or	a0, a1, a0
80002730: 63 16 05 56  	bnez	a0, 0x80002c9c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002734: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002738: 13 84 14 00  	addi	s0, s1, 1
8000273c: 13 05 00 02  	addi	a0, zero, 32
80002740: 93 05 0b 00  	mv	a1, s6
80002744: 13 86 04 00  	mv	a2, s1
80002748: 93 86 09 00  	mv	a3, s3
8000274c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002750: 33 05 8a 00  	add	a0, s4, s0
80002754: 93 04 04 00  	mv	s1, s0
80002758: e3 60 25 ff  	bltu	a0, s2, 0x80002738 <.LBB4_83+0xf0>
8000275c: 6f 00 40 54  	j	0x80002ca0 <.LBB4_90+0x378>
80002760: 53 04 a5 22  	fmv.d	fs0, fa0

80002764 <.LBB4_84>:
80002764: 17 15 00 00  	auipc	a0, 1
80002768: 13 05 c5 7a  	addi	a0, a0, 1964
8000276c: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80002770: 53 05 05 a2  	fle.d	a0, fa0, ft0
80002774: 63 1e 05 00  	bnez	a0, 0x80002790 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002778: 93 f5 4a 00  	andi	a1, s5, 4
8000277c: 13 b5 15 00  	seqz	a0, a1
80002780: 63 82 05 06  	beqz	a1, 0x800027e4 <.LBB4_88>

80002784 <.LBB4_85>:
80002784: 17 1c 00 00  	auipc	s8, 1
80002788: 13 0c cc 4a  	addi	s8, s8, 1196
8000278c: 6f 00 00 06  	j	0x800027ec <.LBB4_88+0x8>

80002790 <.LBB4_86>:
80002790: 17 15 00 00  	auipc	a0, 1
80002794: 13 05 85 78  	addi	a0, a0, 1928
80002798: 07 30 05 00  	fld	ft0, 0(a0)

8000279c <.LBB4_87>:
8000279c: 17 15 00 00  	auipc	a0, 1
800027a0: 13 05 45 78  	addi	a0, a0, 1924
800027a4: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
800027a8: 53 05 04 a2  	fle.d	a0, fs0, ft0
800027ac: d3 85 80 a2  	fle.d	a1, ft1, fs0
800027b0: 33 75 b5 00  	and	a0, a0, a1
800027b4: 63 1e 05 0e  	bnez	a0, 0x800028b0 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
800027b8: 13 85 0b 00  	mv	a0, s7
800027bc: 93 05 0b 00  	mv	a1, s6
800027c0: 13 06 0a 00  	mv	a2, s4
800027c4: 93 86 09 00  	mv	a3, s3
800027c8: 53 05 84 22  	fmv.d	fa0, fs0
800027cc: 93 07 09 00  	mv	a5, s2
800027d0: 13 88 0a 00  	mv	a6, s5
800027d4: 97 00 00 00  	auipc	ra, 0
800027d8: e7 80 40 51  	jalr	1300(ra)
800027dc: 13 04 05 00  	mv	s0, a0
800027e0: 6f 00 00 4c  	j	0x80002ca0 <.LBB4_90+0x378>

800027e4 <.LBB4_88>:
800027e4: 17 1c 00 00  	auipc	s8, 1
800027e8: 13 0c bc 46  	addi	s8, s8, 1131
800027ec: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800027f0: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800027f4: 13 f5 3a 00  	andi	a0, s5, 3
800027f8: 33 35 a0 00  	snez	a0, a0
800027fc: b3 b5 2c 01  	sltu	a1, s9, s2
80002800: 93 c5 15 00  	xori	a1, a1, 1
80002804: 33 65 b5 00  	or	a0, a0, a1
80002808: 93 fa 2a 00  	andi	s5, s5, 2
8000280c: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002810: 63 16 05 02  	bnez	a0, 0x8000283c <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80002814: 33 04 99 41  	sub	s0, s2, s9
80002818: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000281c: 93 04 16 00  	addi	s1, a2, 1
80002820: 13 05 00 02  	addi	a0, zero, 32
80002824: 93 05 0b 00  	mv	a1, s6
80002828: 93 86 09 00  	mv	a3, s3
8000282c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002830: 13 04 f4 ff  	addi	s0, s0, -1
80002834: 13 86 04 00  	mv	a2, s1
80002838: e3 12 04 fe  	bnez	s0, 0x8000281c <.LBB4_88+0x38>
8000283c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002840: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002844: 33 05 9c 01  	add	a0, s8, s9
80002848: 03 45 05 00  	lbu	a0, 0(a0)
8000284c: 13 86 04 00  	mv	a2, s1
80002850: 13 84 fc ff  	addi	s0, s9, -1
80002854: 93 84 14 00  	addi	s1, s1, 1
80002858: 93 05 0b 00  	mv	a1, s6
8000285c: 93 86 09 00  	mv	a3, s3
80002860: e7 80 0b 00  	jalr	s7
80002864: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80002868: e3 1e 04 fc  	bnez	s0, 0x80002844 <.LBB4_88+0x60>
8000286c: 33 85 44 41  	sub	a0, s1, s4
80002870: 33 35 25 01  	sltu	a0, a0, s2
80002874: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002878: 93 c5 1a 00  	xori	a1, s5, 1
8000287c: 33 e5 a5 00  	or	a0, a1, a0
80002880: 63 1e 05 40  	bnez	a0, 0x80002c9c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002884: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002888: 13 84 14 00  	addi	s0, s1, 1
8000288c: 13 05 00 02  	addi	a0, zero, 32
80002890: 93 05 0b 00  	mv	a1, s6
80002894: 13 86 04 00  	mv	a2, s1
80002898: 93 86 09 00  	mv	a3, s3
8000289c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800028a0: 33 05 8a 00  	add	a0, s4, s0
800028a4: 93 04 04 00  	mv	s1, s0
800028a8: e3 60 25 ff  	bltu	a0, s2, 0x80002888 <.LBB4_88+0xa4>
800028ac: 6f 00 40 3f  	j	0x80002ca0 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
800028b0: 13 f5 0a 40  	andi	a0, s5, 1024
800028b4: 13 0c 60 00  	addi	s8, zero, 6
800028b8: 63 04 05 00  	beqz	a0, 0x800028c0 <.LBB4_88+0xdc>
800028bc: 13 0c 07 00  	mv	s8, a4
800028c0: 13 05 a0 00  	addi	a0, zero, 10
800028c4: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800028c8: 63 6c ac 02  	bltu	s8, a0, 0x80002900 <.LBB4_88+0x11c>
800028cc: 93 04 6c ff  	addi	s1, s8, -10
800028d0: 13 05 f0 01  	addi	a0, zero, 31
800028d4: 63 e4 a4 00  	bltu	s1, a0, 0x800028dc <.LBB4_88+0xf8>
800028d8: 93 04 f0 01  	addi	s1, zero, 31
800028dc: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
800028e0: 13 05 81 00  	addi	a0, sp, 8
800028e4: 93 05 00 03  	addi	a1, zero, 48
800028e8: 13 06 04 00  	mv	a2, s0
800028ec: 97 e0 ff ff  	auipc	ra, 1048574
800028f0: e7 80 c0 c6  	jalr	-916(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800028f4: 13 c5 f4 ff  	not	a0, s1
800028f8: 33 0c ac 00  	add	s8, s8, a0
800028fc: 6f 00 80 00  	j	0x80002904 <.LBB4_88+0x120>
80002900: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80002904: 13 15 3c 00  	slli	a0, s8, 3

80002908 <.LBB4_89>:
80002908: 97 15 00 00  	auipc	a1, 1
8000290c: 93 85 85 50  	addi	a1, a1, 1288
80002910: 33 05 b5 00  	add	a0, a0, a1
80002914: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002918: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
8000291c: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002920: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80002924: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002928 <.LBB4_90>:
80002928: 17 15 00 00  	auipc	a0, 1
8000292c: 13 05 05 60  	addi	a0, a0, 1536
80002930: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80002934: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80002938: d3 01 15 d2  	fcvt.d.wu	ft3, a0
8000293c: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002940: d3 05 01 a2  	fle.d	a1, ft2, ft0
80002944: 63 90 05 02  	bnez	a1, 0x80002964 <.LBB4_90+0x3c>
;     ++frac;
80002948: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
8000294c: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80002950: d3 15 11 a2  	flt.d	a1, ft2, ft1
80002954: 63 94 05 02  	bnez	a1, 0x8000297c <.LBB4_90+0x54>
80002958: 13 05 00 00  	mv	a0, zero
;       ++whole;
8000295c: 93 84 14 00  	addi	s1, s1, 1
80002960: 6f 00 c0 01  	j	0x8000297c <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80002964: d3 15 01 a2  	flt.d	a1, ft2, ft0
80002968: 63 9a 05 00  	bnez	a1, 0x8000297c <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
8000296c: 93 35 15 00  	seqz	a1, a0
80002970: 13 76 15 00  	andi	a2, a0, 1
80002974: b3 65 b6 00  	or	a1, a2, a1
80002978: 33 85 a5 00  	add	a0, a1, a0
8000297c: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80002980: 63 0c 0c 0c  	beqz	s8, 0x80002a58 <.LBB4_90+0x130>
80002984: 13 06 00 00  	mv	a2, zero
80002988: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
8000298c: 33 83 85 00  	add	t1, a1, s0
80002990: 93 02 00 02  	addi	t0, zero, 32
80002994: 33 87 82 40  	sub	a4, t0, s0
80002998: b7 d5 cc cc  	lui	a1, 838861
8000299c: 93 83 d5 cc  	addi	t2, a1, -819
800029a0: 13 08 a0 00  	addi	a6, zero, 10
800029a4: 93 08 90 00  	addi	a7, zero, 9
800029a8: 63 04 c7 0c  	beq	a4, a2, 0x80002a70 <.LBB4_90+0x148>
800029ac: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
800029b0: 33 35 75 02  	mulhu	a0, a0, t2
800029b4: 13 55 35 00  	srli	a0, a0, 3
800029b8: b3 06 05 03  	mul	a3, a0, a6
800029bc: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
800029c0: 93 e6 06 03  	ori	a3, a3, 48
800029c4: b3 07 c3 00  	add	a5, t1, a2
800029c8: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
800029cc: 13 06 16 00  	addi	a2, a2, 1
800029d0: e3 ec b8 fc  	bltu	a7, a1, 0x800029a8 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800029d4: 33 05 c4 00  	add	a0, s0, a2
800029d8: 93 05 f5 ff  	addi	a1, a0, -1
800029dc: 93 06 e0 01  	addi	a3, zero, 30
800029e0: b3 b6 b6 00  	sltu	a3, a3, a1
800029e4: 33 47 cc 00  	xor	a4, s8, a2
800029e8: 13 37 17 00  	seqz	a4, a4
800029ec: b3 e6 e6 00  	or	a3, a3, a4
800029f0: 63 94 06 08  	bnez	a3, 0x80002a78 <.LBB4_90+0x150>
800029f4: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800029f8: 33 05 85 00  	add	a0, a0, s0
800029fc: 93 45 f6 ff  	not	a1, a2
80002a00: 33 8c 85 01  	add	s8, a1, s8
80002a04: 33 04 c4 00  	add	s0, s0, a2
80002a08: 93 05 f0 01  	addi	a1, zero, 31
80002a0c: b3 86 85 40  	sub	a3, a1, s0
80002a10: 33 05 c5 00  	add	a0, a0, a2
80002a14: 93 05 0c 00  	mv	a1, s8
80002a18: 63 64 dc 00  	bltu	s8, a3, 0x80002a20 <.LBB4_90+0xf8>
80002a1c: 93 85 06 00  	mv	a1, a3
80002a20: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002a24: 93 05 00 03  	addi	a1, zero, 48
80002a28: 97 e0 ff ff  	auipc	ra, 1048574
80002a2c: e7 80 00 b3  	jalr	-1232(ra)
80002a30: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002a34: b3 05 a4 00  	add	a1, s0, a0
80002a38: 93 b5 f5 01  	sltiu	a1, a1, 31
80002a3c: 33 46 ac 00  	xor	a2, s8, a0
80002a40: 33 36 c0 00  	snez	a2, a2
80002a44: 33 f6 c5 00  	and	a2, a1, a2
80002a48: 13 05 15 00  	addi	a0, a0, 1
80002a4c: e3 14 06 fe  	bnez	a2, 0x80002a34 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002a50: 33 05 a4 00  	add	a0, s0, a0
80002a54: 6f 00 80 02  	j	0x80002a7c <.LBB4_90+0x154>
;     diff = value - (double)whole;
80002a58: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002a5c: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002a60: 53 05 10 a2  	fle.d	a0, ft0, ft1
80002a64: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002a68: b3 84 a4 00  	add	s1, s1, a0
80002a6c: 6f 00 c0 03  	j	0x80002aa8 <.LBB4_90+0x180>
80002a70: 13 04 00 02  	addi	s0, zero, 32
80002a74: 6f 00 80 03  	j	0x80002aac <.LBB4_90+0x184>
80002a78: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002a7c: 63 8e 05 00  	beqz	a1, 0x80002a98 <.LBB4_90+0x170>
;       buf[len++] = '.';
80002a80: 13 04 15 00  	addi	s0, a0, 1
80002a84: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80002a88: 33 85 a5 00  	add	a0, a1, a0
80002a8c: 93 05 e0 02  	addi	a1, zero, 46
80002a90: 23 00 b5 00  	sb	a1, 0(a0)
80002a94: 6f 00 80 00  	j	0x80002a9c <.LBB4_90+0x174>
80002a98: 13 04 05 00  	mv	s0, a0
80002a9c: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002aa0: 93 02 04 00  	mv	t0, s0
80002aa4: 63 64 85 00  	bltu	a0, s0, 0x80002aac <.LBB4_90+0x184>
80002aa8: 93 02 00 02  	addi	t0, zero, 32
80002aac: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002ab0: 37 65 66 66  	lui	a0, 419430
80002ab4: 93 05 75 66  	addi	a1, a0, 1639
80002ab8: 13 08 a0 00  	addi	a6, zero, 10
80002abc: 93 06 81 00  	addi	a3, sp, 8
80002ac0: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002ac4: 63 80 82 04  	beq	t0, s0, 0x80002b04 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002ac8: 33 95 b4 02  	mulh	a0, s1, a1
80002acc: 93 57 f5 01  	srli	a5, a0, 31
80002ad0: 13 55 25 40  	srai	a0, a0, 2
80002ad4: 33 05 f5 00  	add	a0, a0, a5
80002ad8: b3 07 05 03  	mul	a5, a0, a6
80002adc: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002ae0: 93 87 07 03  	addi	a5, a5, 48
80002ae4: 13 0c 14 00  	addi	s8, s0, 1
80002ae8: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002aec: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002af0: 23 00 f4 00  	sb	a5, 0(s0)
80002af4: 13 04 0c 00  	mv	s0, s8
80002af8: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002afc: e3 64 c7 fc  	bltu	a4, a2, 0x80002ac4 <.LBB4_90+0x19c>
80002b00: 6f 00 80 00  	j	0x80002b08 <.LBB4_90+0x1e0>
80002b04: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002b08: 93 f4 3a 00  	andi	s1, s5, 3
80002b0c: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002b10: 63 96 a4 06  	bne	s1, a0, 0x80002b7c <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002b14: 63 0c 09 00  	beqz	s2, 0x80002b2c <.LBB4_90+0x204>
80002b18: 13 f5 ca 00  	andi	a0, s5, 12
80002b1c: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002b20: 33 e5 ac 00  	or	a0, s9, a0
80002b24: 33 09 a9 40  	sub	s2, s2, a0
80002b28: 6f 00 80 00  	j	0x80002b30 <.LBB4_90+0x208>
80002b2c: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002b30: 33 35 2c 01  	sltu	a0, s8, s2
80002b34: 93 45 15 00  	xori	a1, a0, 1
80002b38: 13 05 f0 01  	addi	a0, zero, 31
80002b3c: 33 36 85 01  	sltu	a2, a0, s8
80002b40: b3 65 b6 00  	or	a1, a2, a1
80002b44: 63 9c 05 02  	bnez	a1, 0x80002b7c <.LBB4_90+0x254>
80002b48: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002b4c: 93 45 fc ff  	not	a1, s8
80002b50: b3 05 b9 00  	add	a1, s2, a1
80002b54: 33 06 85 41  	sub	a2, a0, s8
80002b58: 33 85 86 01  	add	a0, a3, s8
80002b5c: 63 e4 c5 00  	bltu	a1, a2, 0x80002b64 <.LBB4_90+0x23c>
80002b60: 93 05 06 00  	mv	a1, a2
80002b64: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002b68: 93 05 00 03  	addi	a1, zero, 48
80002b6c: 13 06 04 00  	mv	a2, s0
80002b70: 97 e0 ff ff  	auipc	ra, 1048574
80002b74: e7 80 80 9e  	jalr	-1560(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002b78: 33 0c 84 01  	add	s8, s0, s8
80002b7c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002b80: 63 6a 85 05  	bltu	a0, s8, 0x80002bd4 <.LBB4_90+0x2ac>
;     if (negative) {
80002b84: 63 8c 0c 00  	beqz	s9, 0x80002b9c <.LBB4_90+0x274>
80002b88: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002b8c: 33 05 85 01  	add	a0, a0, s8
80002b90: 13 0c 1c 00  	addi	s8, s8, 1
80002b94: 93 05 d0 02  	addi	a1, zero, 45
80002b98: 6f 00 80 03  	j	0x80002bd0 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002b9c: 13 f5 4a 00  	andi	a0, s5, 4
80002ba0: 63 10 05 02  	bnez	a0, 0x80002bc0 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002ba4: 13 f5 8a 00  	andi	a0, s5, 8
80002ba8: 63 06 05 02  	beqz	a0, 0x80002bd4 <.LBB4_90+0x2ac>
80002bac: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002bb0: 33 05 85 01  	add	a0, a0, s8
80002bb4: 13 0c 1c 00  	addi	s8, s8, 1
80002bb8: 93 05 00 02  	addi	a1, zero, 32
80002bbc: 6f 00 40 01  	j	0x80002bd0 <.LBB4_90+0x2a8>
80002bc0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002bc4: 33 05 85 01  	add	a0, a0, s8
80002bc8: 13 0c 1c 00  	addi	s8, s8, 1
80002bcc: 93 05 b0 02  	addi	a1, zero, 43
80002bd0: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002bd4: 33 35 90 00  	snez	a0, s1
80002bd8: b3 35 2c 01  	sltu	a1, s8, s2
80002bdc: 93 c5 15 00  	xori	a1, a1, 1
80002be0: 33 65 b5 00  	or	a0, a0, a1
80002be4: 93 fa 2a 00  	andi	s5, s5, 2
80002be8: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002bec: 63 16 05 02  	bnez	a0, 0x80002c18 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002bf0: b3 04 89 41  	sub	s1, s2, s8
80002bf4: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002bf8: 13 04 16 00  	addi	s0, a2, 1
80002bfc: 13 05 00 02  	addi	a0, zero, 32
80002c00: 93 05 0b 00  	mv	a1, s6
80002c04: 93 86 09 00  	mv	a3, s3
80002c08: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002c0c: 93 84 f4 ff  	addi	s1, s1, -1
80002c10: 13 06 04 00  	mv	a2, s0
80002c14: e3 92 04 fe  	bnez	s1, 0x80002bf8 <.LBB4_90+0x2d0>
80002c18: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002c1c: 63 0c 0c 02  	beqz	s8, 0x80002c54 <.LBB4_90+0x32c>
80002c20: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002c24: 33 85 8c 01  	add	a0, s9, s8
80002c28: 03 45 05 00  	lbu	a0, 0(a0)
80002c2c: 13 0d fc ff  	addi	s10, s8, -1
80002c30: 93 04 14 00  	addi	s1, s0, 1
80002c34: 93 05 0b 00  	mv	a1, s6
80002c38: 13 06 04 00  	mv	a2, s0
80002c3c: 93 86 09 00  	mv	a3, s3
80002c40: e7 80 0b 00  	jalr	s7
80002c44: 13 84 04 00  	mv	s0, s1
80002c48: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002c4c: e3 1c 0d fc  	bnez	s10, 0x80002c24 <.LBB4_90+0x2fc>
80002c50: 6f 00 80 00  	j	0x80002c58 <.LBB4_90+0x330>
80002c54: 93 04 04 00  	mv	s1, s0
80002c58: 33 85 44 41  	sub	a0, s1, s4
80002c5c: 33 35 25 01  	sltu	a0, a0, s2
80002c60: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002c64: 93 c5 1a 00  	xori	a1, s5, 1
80002c68: 33 e5 a5 00  	or	a0, a1, a0
80002c6c: 63 18 05 02  	bnez	a0, 0x80002c9c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002c70: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002c74: 13 84 14 00  	addi	s0, s1, 1
80002c78: 13 05 00 02  	addi	a0, zero, 32
80002c7c: 93 05 0b 00  	mv	a1, s6
80002c80: 13 86 04 00  	mv	a2, s1
80002c84: 93 86 09 00  	mv	a3, s3
80002c88: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002c8c: 33 05 8a 00  	add	a0, s4, s0
80002c90: 93 04 04 00  	mv	s1, s0
80002c94: e3 60 25 ff  	bltu	a0, s2, 0x80002c74 <.LBB4_90+0x34c>
80002c98: 6f 00 80 00  	j	0x80002ca0 <.LBB4_90+0x378>
80002c9c: 13 84 04 00  	mv	s0, s1
; }
80002ca0: 13 05 04 00  	mv	a0, s0
80002ca4: 07 39 81 02  	fld	fs2, 40(sp)
80002ca8: 87 34 01 03  	fld	fs1, 48(sp)
80002cac: 07 34 81 03  	fld	fs0, 56(sp)
80002cb0: 03 2d 01 04  	lw	s10, 64(sp)
80002cb4: 83 2c 41 04  	lw	s9, 68(sp)
80002cb8: 03 2c 81 04  	lw	s8, 72(sp)
80002cbc: 83 2b c1 04  	lw	s7, 76(sp)
80002cc0: 03 2b 01 05  	lw	s6, 80(sp)
80002cc4: 83 2a 41 05  	lw	s5, 84(sp)
80002cc8: 03 2a 81 05  	lw	s4, 88(sp)
80002ccc: 83 29 c1 05  	lw	s3, 92(sp)
80002cd0: 03 29 01 06  	lw	s2, 96(sp)
80002cd4: 83 24 41 06  	lw	s1, 100(sp)
80002cd8: 03 24 81 06  	lw	s0, 104(sp)
80002cdc: 83 20 c1 06  	lw	ra, 108(sp)
80002ce0: 13 01 01 07  	addi	sp, sp, 112
80002ce4: 67 80 00 00  	ret

80002ce8 <_etoa>:
; {
80002ce8: 13 01 01 f8  	addi	sp, sp, -128
80002cec: 23 2e 11 06  	sw	ra, 124(sp)
80002cf0: 23 2c 81 06  	sw	s0, 120(sp)
80002cf4: 23 2a 91 06  	sw	s1, 116(sp)
80002cf8: 23 28 21 07  	sw	s2, 112(sp)
80002cfc: 23 26 31 07  	sw	s3, 108(sp)
80002d00: 23 24 41 07  	sw	s4, 104(sp)
80002d04: 23 22 51 07  	sw	s5, 100(sp)
80002d08: 23 20 61 07  	sw	s6, 96(sp)
80002d0c: 23 2e 71 05  	sw	s7, 92(sp)
80002d10: 23 2c 81 05  	sw	s8, 88(sp)
80002d14: 23 2a 91 05  	sw	s9, 84(sp)
80002d18: 23 28 a1 05  	sw	s10, 80(sp)
80002d1c: 23 26 b1 05  	sw	s11, 76(sp)

80002d20 <.LBB5_43>:
80002d20: 97 14 00 00  	auipc	s1, 1
80002d24: 93 84 04 21  	addi	s1, s1, 528
80002d28: 87 b0 04 00  	fld	ft1, 0(s1)

80002d2c <.LBB5_44>:
80002d2c: 97 14 00 00  	auipc	s1, 1
80002d30: 93 84 c4 20  	addi	s1, s1, 524
80002d34: 07 b1 04 00  	fld	ft2, 0(s1)
80002d38: 53 00 a5 22  	fmv.d	ft0, fa0
80002d3c: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002d40: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002d44: b3 f4 84 00  	and	s1, s1, s0
80002d48: 93 0a 08 00  	mv	s5, a6
80002d4c: 13 89 07 00  	mv	s2, a5
80002d50: 93 07 07 00  	mv	a5, a4
80002d54: 93 89 06 00  	mv	s3, a3
80002d58: 13 0a 06 00  	mv	s4, a2
80002d5c: 13 8b 05 00  	mv	s6, a1
80002d60: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002d64: 63 92 04 06  	bnez	s1, 0x80002dc8 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002d68: 13 85 0b 00  	mv	a0, s7
80002d6c: 93 05 0b 00  	mv	a1, s6
80002d70: 13 06 0a 00  	mv	a2, s4
80002d74: 93 86 09 00  	mv	a3, s3
80002d78: 53 05 00 22  	fmv.d	fa0, ft0
80002d7c: 13 87 07 00  	mv	a4, a5
80002d80: 93 07 09 00  	mv	a5, s2
80002d84: 13 88 0a 00  	mv	a6, s5
80002d88: 83 2d c1 04  	lw	s11, 76(sp)
80002d8c: 03 2d 01 05  	lw	s10, 80(sp)
80002d90: 83 2c 41 05  	lw	s9, 84(sp)
80002d94: 03 2c 81 05  	lw	s8, 88(sp)
80002d98: 83 2b c1 05  	lw	s7, 92(sp)
80002d9c: 03 2b 01 06  	lw	s6, 96(sp)
80002da0: 83 2a 41 06  	lw	s5, 100(sp)
80002da4: 03 2a 81 06  	lw	s4, 104(sp)
80002da8: 83 29 c1 06  	lw	s3, 108(sp)
80002dac: 03 29 01 07  	lw	s2, 112(sp)
80002db0: 83 24 41 07  	lw	s1, 116(sp)
80002db4: 03 24 81 07  	lw	s0, 120(sp)
80002db8: 83 20 c1 07  	lw	ra, 124(sp)
80002dbc: 13 01 01 08  	addi	sp, sp, 128
80002dc0: 17 03 00 00  	auipc	t1, 0
80002dc4: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002dc8: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002dcc: 13 f5 0a 40  	andi	a0, s5, 1024
80002dd0: 13 07 60 00  	addi	a4, zero, 6
80002dd4: 63 04 05 00  	beqz	a0, 0x80002ddc <.LBB5_44+0xb0>
80002dd8: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002ddc: 27 30 a1 02  	fsd	fa0, 32(sp)
80002de0: 83 25 41 02  	lw	a1, 36(sp)
80002de4: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002de8: 93 d6 45 01  	srli	a3, a1, 20
80002dec: b7 07 10 00  	lui	a5, 256
80002df0: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002df4: b3 f5 f5 00  	and	a1, a1, a5
80002df8: 23 2c c1 00  	sw	a2, 24(sp)
80002dfc: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002e00: b3 e5 c5 00  	or	a1, a1, a2
80002e04: 23 2e b1 00  	sw	a1, 28(sp)
80002e08: 87 30 81 01  	fld	ft1, 24(sp)

80002e0c <.LBB5_45>:
80002e0c: 97 15 00 00  	auipc	a1, 1
80002e10: 93 85 45 13  	addi	a1, a1, 308
80002e14: 07 b1 05 00  	fld	ft2, 0(a1)

80002e18 <.LBB5_46>:
80002e18: 97 15 00 00  	auipc	a1, 1
80002e1c: 93 85 05 13  	addi	a1, a1, 304
80002e20: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002e24: 93 f5 f6 7f  	andi	a1, a3, 2047
80002e28: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002e2c: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002e30: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80002e34 <.LBB5_47>:
80002e34: 97 15 00 00  	auipc	a1, 1
80002e38: 93 85 c5 11  	addi	a1, a1, 284
80002e3c: 07 b1 05 00  	fld	ft2, 0(a1)

80002e40 <.LBB5_48>:
80002e40: 97 15 00 00  	auipc	a1, 1
80002e44: 93 85 85 11  	addi	a1, a1, 280
80002e48: 87 b1 05 00  	fld	ft3, 0(a1)

80002e4c <.LBB5_49>:
80002e4c: 97 15 00 00  	auipc	a1, 1
80002e50: 93 85 45 11  	addi	a1, a1, 276
80002e54: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002e58: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002e5c: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002e60: d3 80 05 d2  	fcvt.d.w	ft1, a1
80002e64: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002e68 <.LBB5_50>:
80002e68: 17 16 00 00  	auipc	a2, 1
80002e6c: 13 06 06 10  	addi	a2, a2, 256
80002e70: 87 31 06 00  	fld	ft3, 0(a2)

80002e74 <.LBB5_51>:
80002e74: 17 16 00 00  	auipc	a2, 1
80002e78: 13 06 c6 0f  	addi	a2, a2, 252
80002e7c: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002e80: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80002e84: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002e88: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002e8c: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002e90: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002e94: 13 06 f6 3f  	addi	a2, a2, 1023
80002e98: 23 28 01 00  	sw	zero, 16(sp)
80002e9c: 13 16 46 01  	slli	a2, a2, 20
80002ea0: 23 2a c1 00  	sw	a2, 20(sp)

80002ea4 <.LBB5_52>:
80002ea4: 17 16 00 00  	auipc	a2, 1
80002ea8: 13 06 c6 0d  	addi	a2, a2, 220
80002eac: 87 31 06 00  	fld	ft3, 0(a2)

80002eb0 <.LBB5_53>:
80002eb0: 17 16 00 00  	auipc	a2, 1
80002eb4: 13 06 86 0d  	addi	a2, a2, 216
80002eb8: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002ebc: 87 32 01 01  	fld	ft5, 16(sp)

80002ec0 <.LBB5_54>:
80002ec0: 17 16 00 00  	auipc	a2, 1
80002ec4: 13 06 86 0b  	addi	a2, a2, 184
80002ec8: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002ecc: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002ed0 <.LBB5_55>:
80002ed0: 17 16 00 00  	auipc	a2, 1
80002ed4: 13 06 06 0c  	addi	a2, a2, 192
80002ed8: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002edc: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002ee0: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80002ee4: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002ee8: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002eec: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002ef0: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002ef4: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002ef8: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002efc: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002f00: 63 0a 06 00  	beqz	a2, 0x80002f14 <.LBB5_56+0x10>

80002f04 <.LBB5_56>:
80002f04: 97 16 00 00  	auipc	a3, 1
80002f08: 93 86 46 09  	addi	a3, a3, 148
80002f0c: 07 b1 06 00  	fld	ft2, 0(a3)
80002f10: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80002f14: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002f18: 93 05 34 06  	addi	a1, s0, 99
80002f1c: 93 b5 75 0c  	sltiu	a1, a1, 199
80002f20: 13 06 50 00  	addi	a2, zero, 5
80002f24: b7 16 00 00  	lui	a3, 1
80002f28: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002f2c: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002f30: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80002f34: 63 84 06 06  	beqz	a3, 0x80002f9c <.LBB5_58+0x58>

80002f38 <.LBB5_57>:
80002f38: 97 15 00 00  	auipc	a1, 1
80002f3c: 93 85 85 06  	addi	a1, a1, 104
80002f40: 07 b1 05 00  	fld	ft2, 0(a1)

80002f44 <.LBB5_58>:
80002f44: 97 15 00 00  	auipc	a1, 1
80002f48: 93 85 45 06  	addi	a1, a1, 100
80002f4c: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80002f50: d3 15 25 a2  	flt.d	a1, fa0, ft2
80002f54: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80002f58: b3 e5 c5 00  	or	a1, a1, a2
80002f5c: 63 98 05 00  	bnez	a1, 0x80002f6c <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002f60: 63 40 e4 02  	blt	s0, a4, 0x80002f80 <.LBB5_58+0x3c>
80002f64: 13 07 00 00  	mv	a4, zero
80002f68: 6f 00 00 02  	j	0x80002f88 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002f6c: 63 06 07 02  	beqz	a4, 0x80002f98 <.LBB5_58+0x54>
80002f70: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002f74: 13 45 15 00  	xori	a0, a0, 1
80002f78: 33 07 a7 40  	sub	a4, a4, a0
80002f7c: 6f 00 00 02  	j	0x80002f9c <.LBB5_58+0x58>
80002f80: 13 45 f4 ff  	not	a0, s0
80002f84: 33 07 a7 00  	add	a4, a4, a0
80002f88: 13 04 00 00  	mv	s0, zero
80002f8c: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80002f90: 93 ea 0a 40  	ori	s5, s5, 1024
80002f94: 6f 00 80 00  	j	0x80002f9c <.LBB5_58+0x58>
80002f98: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002f9c: b3 05 99 41  	sub	a1, s2, s9
80002fa0: 33 36 b9 00  	sltu	a2, s2, a1
80002fa4: 13 05 00 00  	mv	a0, zero
80002fa8: 63 14 06 00  	bnez	a2, 0x80002fb0 <.LBB5_58+0x6c>
80002fac: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002fb0: 93 07 00 00  	mv	a5, zero
80002fb4: 93 d5 1a 00  	srli	a1, s5, 1
80002fb8: 93 f4 15 00  	andi	s1, a1, 1
80002fbc: b3 35 90 01  	snez	a1, s9
80002fc0: b3 f5 b4 00  	and	a1, s1, a1
80002fc4: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002fc8: 63 94 05 00  	bnez	a1, 0x80002fd0 <.LBB5_58+0x8c>
80002fcc: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002fd0: 93 35 14 00  	seqz	a1, s0
80002fd4: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002fd8: 63 94 05 00  	bnez	a1, 0x80002fe0 <.LBB5_58+0x9c>
80002fdc: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002fe0: 63 04 05 00  	beqz	a0, 0x80002fe8 <.LBB5_58+0xa4>
80002fe4: 53 15 a5 22  	fneg.d	fa0, fa0
80002fe8: 37 f5 ff ff  	lui	a0, 1048575
80002fec: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002ff0: 33 f8 aa 00  	and	a6, s5, a0
80002ff4: 13 85 0b 00  	mv	a0, s7
80002ff8: 93 05 0b 00  	mv	a1, s6
80002ffc: 13 06 0a 00  	mv	a2, s4
80003000: 93 86 09 00  	mv	a3, s3
80003004: 97 f0 ff ff  	auipc	ra, 1048575
80003008: e7 80 40 60  	jalr	1540(ra)
8000300c: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80003010: 63 82 0c 18  	beqz	s9, 0x80003194 <.LBB5_58+0x250>
80003014: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80003018: 13 f5 0a 02  	andi	a0, s5, 32
8000301c: 13 45 55 06  	xori	a0, a0, 101
80003020: 93 05 0b 00  	mv	a1, s6
80003024: 13 06 0d 00  	mv	a2, s10
80003028: 93 86 09 00  	mv	a3, s3
8000302c: e7 80 0b 00  	jalr	s7
80003030: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80003034: 93 5a f4 01  	srli	s5, s0, 31
80003038: 13 55 f4 41  	srai	a0, s0, 31
8000303c: b3 05 a4 00  	add	a1, s0, a0
80003040: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80003044: 93 8d dc ff  	addi	s11, s9, -3
80003048: 13 04 f0 01  	addi	s0, zero, 31
8000304c: 37 d5 cc cc  	lui	a0, 838861
80003050: 13 05 d5 cc  	addi	a0, a0, -819
80003054: 13 08 a0 00  	addi	a6, zero, 10
80003058: 93 08 c1 02  	addi	a7, sp, 44
8000305c: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80003060: b3 37 a7 02  	mulhu	a5, a4, a0
80003064: 93 d5 37 00  	srli	a1, a5, 3
80003068: b3 87 05 03  	mul	a5, a1, a6
8000306c: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003070: 13 e6 07 03  	ori	a2, a5, 48
80003074: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003078: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000307c: 13 0c 1c 00  	addi	s8, s8, 1
80003080: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003084: 33 b6 e2 00  	sltu	a2, t0, a4
80003088: 33 f6 c7 00  	and	a2, a5, a2
8000308c: 93 8d fd ff  	addi	s11, s11, -1
80003090: 13 04 f4 ff  	addi	s0, s0, -1
80003094: 13 87 05 00  	mv	a4, a1
80003098: e3 14 06 fc  	bnez	a2, 0x80003060 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000309c: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800030a0: 33 35 ac 00  	sltu	a0, s8, a0
800030a4: 13 45 15 00  	xori	a0, a0, 1
800030a8: 93 c5 17 00  	xori	a1, a5, 1
800030ac: 33 e5 a5 00  	or	a0, a1, a0
800030b0: 63 12 05 04  	bnez	a0, 0x800030f4 <.LBB5_58+0x1b0>
800030b4: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800030b8: b3 85 8c 41  	sub	a1, s9, s8
800030bc: 93 85 d5 ff  	addi	a1, a1, -3
800030c0: 13 06 f0 01  	addi	a2, zero, 31
800030c4: 33 06 86 41  	sub	a2, a2, s8
800030c8: 33 05 85 01  	add	a0, a0, s8
800030cc: 63 e4 c5 00  	bltu	a1, a2, 0x800030d4 <.LBB5_58+0x190>
800030d0: 93 05 06 00  	mv	a1, a2
800030d4: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800030d8: 93 05 00 03  	addi	a1, zero, 48
800030dc: 97 d0 ff ff  	auipc	ra, 1048573
800030e0: e7 80 c0 47  	jalr	1148(ra)
;   if (flags & FLAGS_HASH) {
800030e4: 63 e4 8d 00  	bltu	s11, s0, 0x800030ec <.LBB5_58+0x1a8>
800030e8: 93 0d 04 00  	mv	s11, s0
800030ec: 33 85 8d 01  	add	a0, s11, s8
800030f0: 13 0c 15 00  	addi	s8, a0, 1
800030f4: 83 2c c1 00  	lw	s9, 12(sp)
800030f8: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800030fc: 63 60 85 03  	bltu	a0, s8, 0x8000311c <.LBB5_58+0x1d8>
80003100: 13 05 c1 02  	addi	a0, sp, 44
80003104: 33 05 85 01  	add	a0, a0, s8
80003108: 93 05 d0 02  	addi	a1, zero, 45
8000310c: 63 94 0a 00  	bnez	s5, 0x80003114 <.LBB5_58+0x1d0>
80003110: 93 05 b0 02  	addi	a1, zero, 43
80003114: 13 0c 1c 00  	addi	s8, s8, 1
80003118: 23 00 b5 00  	sb	a1, 0(a0)
8000311c: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80003120: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80003124: 33 85 8a 01  	add	a0, s5, s8
80003128: 03 45 05 00  	lbu	a0, 0(a0)
8000312c: 13 06 04 00  	mv	a2, s0
80003130: 93 04 fc ff  	addi	s1, s8, -1
80003134: 13 04 14 00  	addi	s0, s0, 1
80003138: 93 05 0b 00  	mv	a1, s6
8000313c: 93 86 09 00  	mv	a3, s3
80003140: e7 80 0b 00  	jalr	s7
80003144: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80003148: e3 9e 04 fc  	bnez	s1, 0x80003124 <.LBB5_58+0x1e0>
8000314c: 33 05 44 41  	sub	a0, s0, s4
80003150: 33 35 25 01  	sltu	a0, a0, s2
80003154: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80003158: 93 c5 1c 00  	xori	a1, s9, 1
8000315c: 33 e5 a5 00  	or	a0, a1, a0
80003160: 63 18 05 02  	bnez	a0, 0x80003190 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80003164: b3 04 40 41  	neg	s1, s4
80003168: 13 0d 14 00  	addi	s10, s0, 1
8000316c: 13 05 00 02  	addi	a0, zero, 32
80003170: 93 05 0b 00  	mv	a1, s6
80003174: 13 06 04 00  	mv	a2, s0
80003178: 93 86 09 00  	mv	a3, s3
8000317c: e7 80 0b 00  	jalr	s7
80003180: 33 85 a4 01  	add	a0, s1, s10
80003184: 13 04 0d 00  	mv	s0, s10
80003188: e3 60 25 ff  	bltu	a0, s2, 0x80003168 <.LBB5_58+0x224>
8000318c: 6f 00 80 00  	j	0x80003194 <.LBB5_58+0x250>
80003190: 13 0d 04 00  	mv	s10, s0
; }
80003194: 13 05 0d 00  	mv	a0, s10
80003198: 83 2d c1 04  	lw	s11, 76(sp)
8000319c: 03 2d 01 05  	lw	s10, 80(sp)
800031a0: 83 2c 41 05  	lw	s9, 84(sp)
800031a4: 03 2c 81 05  	lw	s8, 88(sp)
800031a8: 83 2b c1 05  	lw	s7, 92(sp)
800031ac: 03 2b 01 06  	lw	s6, 96(sp)
800031b0: 83 2a 41 06  	lw	s5, 100(sp)
800031b4: 03 2a 81 06  	lw	s4, 104(sp)
800031b8: 83 29 c1 06  	lw	s3, 108(sp)
800031bc: 03 29 01 07  	lw	s2, 112(sp)
800031c0: 83 24 41 07  	lw	s1, 116(sp)
800031c4: 03 24 81 07  	lw	s0, 120(sp)
800031c8: 83 20 c1 07  	lw	ra, 124(sp)
800031cc: 13 01 01 08  	addi	sp, sp, 128
800031d0: 67 80 00 00  	ret

800031d4 <_ntoa_format>:
; {
800031d4: 13 01 01 fc  	addi	sp, sp, -64
800031d8: 23 2e 11 02  	sw	ra, 60(sp)
800031dc: 23 2c 81 02  	sw	s0, 56(sp)
800031e0: 23 2a 91 02  	sw	s1, 52(sp)
800031e4: 23 28 21 03  	sw	s2, 48(sp)
800031e8: 23 26 31 03  	sw	s3, 44(sp)
800031ec: 23 24 41 03  	sw	s4, 40(sp)
800031f0: 23 22 51 03  	sw	s5, 36(sp)
800031f4: 23 20 61 03  	sw	s6, 32(sp)
800031f8: 23 2e 71 01  	sw	s7, 28(sp)
800031fc: 23 2c 81 01  	sw	s8, 24(sp)
80003200: 23 2a 91 01  	sw	s9, 20(sp)
80003204: 23 28 a1 01  	sw	s10, 16(sp)
80003208: 23 26 b1 01  	sw	s11, 12(sp)
8000320c: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80003210: 93 fa 2e 00  	andi	s5, t4, 2
80003214: 13 09 0e 00  	mv	s2, t3
80003218: 13 8d 03 00  	mv	s10, t2
8000321c: 93 8c 08 00  	mv	s9, a7
80003220: 13 8c 07 00  	mv	s8, a5
80003224: 93 89 06 00  	mv	s3, a3
80003228: 13 0a 06 00  	mv	s4, a2
8000322c: 13 8b 05 00  	mv	s6, a1
80003230: 93 0d 05 00  	mv	s11, a0
80003234: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80003238: 63 9e 0a 0c  	bnez	s5, 0x80003314 <_ntoa_format+0x140>
8000323c: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003240: 63 0e 09 00  	beqz	s2, 0x8000325c <_ntoa_format+0x88>
80003244: 63 0e 04 00  	beqz	s0, 0x80003260 <_ntoa_format+0x8c>
80003248: 13 f5 cb 00  	andi	a0, s7, 12
8000324c: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003250: 33 65 05 01  	or	a0, a0, a6
80003254: 33 09 a9 40  	sub	s2, s2, a0
80003258: 6f 00 80 00  	j	0x80003260 <_ntoa_format+0x8c>
8000325c: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003260: 33 35 ac 01  	sltu	a0, s8, s10
80003264: 93 45 15 00  	xori	a1, a0, 1
80003268: 13 05 f0 01  	addi	a0, zero, 31
8000326c: 33 36 85 01  	sltu	a2, a0, s8
80003270: b3 65 b6 00  	or	a1, a2, a1
80003274: 63 94 05 04  	bnez	a1, 0x800032bc <_ntoa_format+0xe8>
80003278: 23 22 51 01  	sw	s5, 4(sp)
8000327c: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003280: 93 45 fc ff  	not	a1, s8
80003284: b3 85 a5 01  	add	a1, a1, s10
80003288: 33 06 85 41  	sub	a2, a0, s8
8000328c: 33 05 87 01  	add	a0, a4, s8
80003290: 63 e4 c5 00  	bltu	a1, a2, 0x80003298 <_ntoa_format+0xc4>
80003294: 93 05 06 00  	mv	a1, a2
80003298: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000329c: 93 05 00 03  	addi	a1, zero, 48
800032a0: 13 86 04 00  	mv	a2, s1
800032a4: 97 d0 ff ff  	auipc	ra, 1048573
800032a8: e7 80 40 2b  	jalr	692(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800032ac: 33 8c 84 01  	add	s8, s1, s8
800032b0: 03 27 81 00  	lw	a4, 8(sp)
800032b4: 13 88 0a 00  	mv	a6, s5
800032b8: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800032bc: 63 0c 04 04  	beqz	s0, 0x80003314 <_ntoa_format+0x140>
800032c0: 33 35 2c 01  	sltu	a0, s8, s2
800032c4: 93 45 15 00  	xori	a1, a0, 1
800032c8: 13 05 f0 01  	addi	a0, zero, 31
800032cc: 33 36 85 01  	sltu	a2, a0, s8
800032d0: b3 e5 c5 00  	or	a1, a1, a2
800032d4: 63 90 05 04  	bnez	a1, 0x80003314 <_ntoa_format+0x140>
800032d8: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800032dc: 93 45 fc ff  	not	a1, s8
800032e0: b3 05 b9 00  	add	a1, s2, a1
800032e4: 33 06 85 41  	sub	a2, a0, s8
800032e8: 33 05 87 01  	add	a0, a4, s8
800032ec: 63 e4 c5 00  	bltu	a1, a2, 0x800032f4 <_ntoa_format+0x120>
800032f0: 93 05 06 00  	mv	a1, a2
800032f4: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800032f8: 93 05 00 03  	addi	a1, zero, 48
800032fc: 13 86 04 00  	mv	a2, s1
80003300: 97 d0 ff ff  	auipc	ra, 1048573
80003304: e7 80 80 25  	jalr	600(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003308: 33 8c 84 01  	add	s8, s1, s8
8000330c: 03 27 81 00  	lw	a4, 8(sp)
80003310: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80003314: 13 f5 0b 01  	andi	a0, s7, 16
80003318: 63 02 05 0e  	beqz	a0, 0x800033fc <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
8000331c: 13 f5 0b 40  	andi	a0, s7, 1024
80003320: 13 55 a5 00  	srli	a0, a0, 10
80003324: 93 35 1c 00  	seqz	a1, s8
80003328: 33 65 b5 00  	or	a0, a0, a1
8000332c: 63 1e 05 02  	bnez	a0, 0x80003368 <_ntoa_format+0x194>
80003330: 33 45 ac 01  	xor	a0, s8, s10
80003334: 33 35 a0 00  	snez	a0, a0
80003338: b3 45 2c 01  	xor	a1, s8, s2
8000333c: b3 35 b0 00  	snez	a1, a1
80003340: 33 75 b5 00  	and	a0, a0, a1
80003344: 63 12 05 02  	bnez	a0, 0x80003368 <_ntoa_format+0x194>
;       len--;
80003348: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
8000334c: b3 35 a0 00  	snez	a1, a0
80003350: 13 86 0c ff  	addi	a2, s9, -16
80003354: 13 36 16 00  	seqz	a2, a2
80003358: b3 75 b6 00  	and	a1, a2, a1
8000335c: 63 84 05 00  	beqz	a1, 0x80003364 <_ntoa_format+0x190>
80003360: 13 05 ec ff  	addi	a0, s8, -2
80003364: 13 0c 05 00  	mv	s8, a0
80003368: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000336c: 63 96 ac 02  	bne	s9, a0, 0x80003398 <_ntoa_format+0x1c4>
80003370: 13 f5 0b 02  	andi	a0, s7, 32
80003374: 93 55 55 00  	srli	a1, a0, 5
80003378: 13 06 f0 01  	addi	a2, zero, 31
8000337c: 33 36 86 01  	sltu	a2, a2, s8
80003380: b3 e5 c5 00  	or	a1, a1, a2
80003384: 63 9e 05 02  	bnez	a1, 0x800033c0 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80003388: 33 05 87 01  	add	a0, a4, s8
8000338c: 13 0c 1c 00  	addi	s8, s8, 1
80003390: 93 05 80 07  	addi	a1, zero, 120
80003394: 6f 00 c0 04  	j	0x800033e0 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003398: 13 85 ec ff  	addi	a0, s9, -2
8000339c: 33 35 a0 00  	snez	a0, a0
800033a0: 93 05 f0 01  	addi	a1, zero, 31
800033a4: b3 b5 85 01  	sltu	a1, a1, s8
800033a8: 33 65 b5 00  	or	a0, a0, a1
800033ac: 63 1c 05 02  	bnez	a0, 0x800033e4 <_ntoa_format+0x210>
;       buf[len++] = 'b';
800033b0: 33 05 87 01  	add	a0, a4, s8
800033b4: 13 0c 1c 00  	addi	s8, s8, 1
800033b8: 93 05 20 06  	addi	a1, zero, 98
800033bc: 6f 00 40 02  	j	0x800033e0 <_ntoa_format+0x20c>
800033c0: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800033c4: 13 35 15 00  	seqz	a0, a0
800033c8: 93 c5 15 00  	xori	a1, a1, 1
800033cc: 33 65 b5 00  	or	a0, a0, a1
800033d0: 63 1a 05 00  	bnez	a0, 0x800033e4 <_ntoa_format+0x210>
;       buf[len++] = 'X';
800033d4: 33 05 87 01  	add	a0, a4, s8
800033d8: 13 0c 1c 00  	addi	s8, s8, 1
800033dc: 93 05 80 05  	addi	a1, zero, 88
800033e0: 23 00 b5 00  	sb	a1, 0(a0)
800033e4: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
800033e8: 63 60 85 07  	bltu	a0, s8, 0x80003448 <_ntoa_format+0x274>
;       buf[len++] = '0';
800033ec: 33 05 87 01  	add	a0, a4, s8
800033f0: 13 0c 1c 00  	addi	s8, s8, 1
800033f4: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
800033f8: 23 00 b5 00  	sb	a1, 0(a0)
800033fc: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003400: 63 64 85 05  	bltu	a0, s8, 0x80003448 <_ntoa_format+0x274>
;     if (negative) {
80003404: 63 0a 08 00  	beqz	a6, 0x80003418 <_ntoa_format+0x244>
;       buf[len++] = '-';
80003408: 33 05 87 01  	add	a0, a4, s8
8000340c: 13 0c 1c 00  	addi	s8, s8, 1
80003410: 93 05 d0 02  	addi	a1, zero, 45
80003414: 6f 00 00 03  	j	0x80003444 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80003418: 13 f5 4b 00  	andi	a0, s7, 4
8000341c: 63 1e 05 00  	bnez	a0, 0x80003438 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80003420: 13 f5 8b 00  	andi	a0, s7, 8
80003424: 63 02 05 02  	beqz	a0, 0x80003448 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80003428: 33 05 87 01  	add	a0, a4, s8
8000342c: 13 0c 1c 00  	addi	s8, s8, 1
80003430: 93 05 00 02  	addi	a1, zero, 32
80003434: 6f 00 00 01  	j	0x80003444 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80003438: 33 05 87 01  	add	a0, a4, s8
8000343c: 13 0c 1c 00  	addi	s8, s8, 1
80003440: 93 05 b0 02  	addi	a1, zero, 43
80003444: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003448: 13 f5 3b 00  	andi	a0, s7, 3
8000344c: 33 35 a0 00  	snez	a0, a0
80003450: b3 35 2c 01  	sltu	a1, s8, s2
80003454: 93 c5 15 00  	xori	a1, a1, 1
80003458: 33 65 b5 00  	or	a0, a0, a1
8000345c: 13 04 0a 00  	mv	s0, s4
80003460: 63 16 05 02  	bnez	a0, 0x8000348c <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80003464: b3 04 89 41  	sub	s1, s2, s8
80003468: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000346c: 13 04 16 00  	addi	s0, a2, 1
80003470: 13 05 00 02  	addi	a0, zero, 32
80003474: 93 05 0b 00  	mv	a1, s6
80003478: 93 86 09 00  	mv	a3, s3
8000347c: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80003480: 93 84 f4 ff  	addi	s1, s1, -1
80003484: 13 06 04 00  	mv	a2, s0
80003488: e3 92 04 fe  	bnez	s1, 0x8000346c <_ntoa_format+0x298>
8000348c: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80003490: 63 0e 0c 02  	beqz	s8, 0x800034cc <_ntoa_format+0x2f8>
80003494: 03 25 81 00  	lw	a0, 8(sp)
80003498: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
8000349c: 33 85 8b 01  	add	a0, s7, s8
800034a0: 03 45 05 00  	lbu	a0, 0(a0)
800034a4: 93 0c fc ff  	addi	s9, s8, -1
800034a8: 93 04 14 00  	addi	s1, s0, 1
800034ac: 93 05 0b 00  	mv	a1, s6
800034b0: 13 06 04 00  	mv	a2, s0
800034b4: 93 86 09 00  	mv	a3, s3
800034b8: e7 80 0d 00  	jalr	s11
800034bc: 13 84 04 00  	mv	s0, s1
800034c0: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800034c4: e3 9c 0c fc  	bnez	s9, 0x8000349c <_ntoa_format+0x2c8>
800034c8: 6f 00 80 00  	j	0x800034d0 <_ntoa_format+0x2fc>
800034cc: 93 04 04 00  	mv	s1, s0
800034d0: 33 85 44 41  	sub	a0, s1, s4
800034d4: 33 35 25 01  	sltu	a0, a0, s2
800034d8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800034dc: 93 c5 1a 00  	xori	a1, s5, 1
800034e0: 33 e5 a5 00  	or	a0, a1, a0
800034e4: 63 18 05 02  	bnez	a0, 0x80003514 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
800034e8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800034ec: 13 84 14 00  	addi	s0, s1, 1
800034f0: 13 05 00 02  	addi	a0, zero, 32
800034f4: 93 05 0b 00  	mv	a1, s6
800034f8: 13 86 04 00  	mv	a2, s1
800034fc: 93 86 09 00  	mv	a3, s3
80003500: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80003504: 33 05 8a 00  	add	a0, s4, s0
80003508: 93 04 04 00  	mv	s1, s0
8000350c: e3 60 25 ff  	bltu	a0, s2, 0x800034ec <_ntoa_format+0x318>
80003510: 6f 00 80 00  	j	0x80003518 <_ntoa_format+0x344>
80003514: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80003518: 13 05 04 00  	mv	a0, s0
8000351c: 83 2d c1 00  	lw	s11, 12(sp)
80003520: 03 2d 01 01  	lw	s10, 16(sp)
80003524: 83 2c 41 01  	lw	s9, 20(sp)
80003528: 03 2c 81 01  	lw	s8, 24(sp)
8000352c: 83 2b c1 01  	lw	s7, 28(sp)
80003530: 03 2b 01 02  	lw	s6, 32(sp)
80003534: 83 2a 41 02  	lw	s5, 36(sp)
80003538: 03 2a 81 02  	lw	s4, 40(sp)
8000353c: 83 29 c1 02  	lw	s3, 44(sp)
80003540: 03 29 01 03  	lw	s2, 48(sp)
80003544: 83 24 41 03  	lw	s1, 52(sp)
80003548: 03 24 81 03  	lw	s0, 56(sp)
8000354c: 83 20 c1 03  	lw	ra, 60(sp)
80003550: 13 01 01 04  	addi	sp, sp, 64
80003554: 67 80 00 00  	ret

80003558 <_snrt_init_team>:
;     team->base.root = team;
80003558: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
8000355c: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80003560: 03 23 87 00  	lw	t1, 8(a4)
80003564: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80003568: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
8000356c: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80003570: 83 22 47 00  	lw	t0, 4(a4)
80003574: 33 88 08 03  	mul	a6, a7, a6
80003578: 33 05 58 02  	mul	a0, a6, t0
8000357c: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003580: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80003584: 33 85 68 40  	sub	a0, a7, t1
80003588: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
8000358c: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80003590: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80003594: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80003598: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
8000359c: 03 25 87 01  	lw	a0, 24(a4)
800035a0: b7 05 00 10  	lui	a1, 65536
800035a4: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800035a8: 23 a2 07 02  	sw	zero, 36(a5)
800035ac: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800035b0: 03 25 07 02  	lw	a0, 32(a4)
800035b4: 83 25 47 02  	lw	a1, 36(a4)
800035b8: 23 a4 a7 02  	sw	a0, 40(a5)
800035bc: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800035c0: 23 a8 c7 02  	sw	a2, 48(a5)
800035c4: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800035c8: 23 ac d7 02  	sw	a3, 56(a5)
800035cc: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800035d0: 03 25 07 01  	lw	a0, 16(a4)
800035d4: 33 08 a6 00  	add	a6, a2, a0
800035d8: 93 05 08 19  	addi	a1, a6, 400
800035dc: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
800035e0: b3 32 a8 00  	sltu	t0, a6, a0
800035e4: 93 55 15 00  	srli	a1, a0, 1
800035e8: 33 03 b8 00  	add	t1, a6, a1
800035ec: b3 35 03 01  	sltu	a1, t1, a6
800035f0: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800035f4: 23 a0 67 04  	sw	t1, 64(a5)
800035f8: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800035fc: 13 15 15 00  	slli	a0, a0, 1
80003600: b3 05 c5 00  	add	a1, a0, a2
80003604: 33 b5 a5 00  	sltu	a0, a1, a0
80003608: 23 a4 b7 04  	sw	a1, 72(a5)
8000360c: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80003610: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80003614: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80003618: 37 05 00 00  	lui	a0, 0
8000361c: 33 05 45 00  	add	a0, a0, tp
80003620: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003624: 03 a5 07 00  	lw	a0, 0(a5)
80003628: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
8000362c: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003630: b3 85 b8 40  	sub	a1, a7, a1
80003634: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80003638: b7 05 00 00  	lui	a1, 0
8000363c: b3 85 45 00  	add	a1, a1, tp
80003640: 23 a2 a5 00  	sw	a0, 4(a1)
80003644: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80003648: 33 85 a8 02  	mul	a0, a7, a0

8000364c <.LBB0_1>:
8000364c: 97 15 00 00  	auipc	a1, 1
80003650: 93 85 85 96  	addi	a1, a1, -1688
80003654: 33 05 b5 00  	add	a0, a0, a1
80003658: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
8000365c: 83 28 07 03  	lw	a7, 48(a4)
80003660: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80003664: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80003668: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
8000366c: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80003670: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80003674: 13 05 76 00  	addi	a0, a2, 7
80003678: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
8000367c: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80003680: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80003684: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80003688: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
8000368c: 03 a5 05 00  	lw	a0, 0(a1)
80003690: 13 05 f5 44  	addi	a0, a0, 1103
80003694: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80003698: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
8000369c: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800036a0: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800036a4: 37 05 00 00  	lui	a0, 0
800036a8: 33 05 45 00  	add	a0, a0, tp
800036ac: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800036b0: 37 05 00 00  	lui	a0, 0
800036b4: 33 05 45 00  	add	a0, a0, tp
800036b8: 23 26 e5 00  	sw	a4, 12(a0)
; }
800036bc: 67 80 00 00  	ret

800036c0 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800036c0: 37 05 00 00  	lui	a0, 0
800036c4: 33 05 45 00  	add	a0, a0, tp
800036c8: 03 25 05 00  	lw	a0, 0(a0)
800036cc: 03 25 05 00  	lw	a0, 0(a0)
800036d0: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800036d4: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800036d8: 33 85 a5 40  	sub	a0, a1, a0
800036dc: 67 80 00 00  	ret

800036e0 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
800036e0: 37 05 00 00  	lui	a0, 0
800036e4: 33 05 45 00  	add	a0, a0, tp
800036e8: 03 25 05 00  	lw	a0, 0(a0)
800036ec: 03 25 05 00  	lw	a0, 0(a0)
800036f0: 03 25 05 07  	lw	a0, 112(a0)
800036f4: 67 80 00 00  	ret

800036f8 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800036f8: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800036fc: 63 44 05 00  	bltz	a0, 0x80003704 <__snrt_isr+0xc>
;         while (1)
80003700: 6f 00 00 00  	j	0x80003700 <__snrt_isr+0x8>
80003704: b7 05 00 80  	lui	a1, 524288
80003708: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
8000370c: 33 75 b5 00  	and	a0, a0, a1
80003710: 13 05 d5 ff  	addi	a0, a0, -3
80003714: 93 55 25 00  	srli	a1, a0, 2
80003718: 13 15 e5 01  	slli	a0, a0, 30
8000371c: 33 65 b5 00  	or	a0, a0, a1
80003720: 93 05 40 00  	addi	a1, zero, 4
80003724: 63 0a b5 06  	beq	a0, a1, 0x80003798 <.LBB1_7+0x58>
80003728: 63 1a 05 08  	bnez	a0, 0x800037bc <.LBB1_7+0x7c>
8000372c: 37 05 00 00  	lui	a0, 0
80003730: 33 05 45 00  	add	a0, a0, tp
80003734: 03 25 05 00  	lw	a0, 0(a0)
80003738: 03 25 05 00  	lw	a0, 0(a0)
8000373c: f3 25 40 f1  	csrr	a1, mhartid

80003740 <.LBB1_7>:
;     asm volatile(
80003740: 17 16 00 00  	auipc	a2, 1
80003744: 13 06 06 87  	addi	a2, a2, -1936
80003748: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
8000374c: 93 06 06 00  	mv	a3, a2
80003750: 93 02 10 00  	addi	t0, zero, 1
80003754: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80003758: e3 9e 02 fe  	bnez	t0, 0x80003754 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
8000375c: b7 06 00 00  	lui	a3, 0
80003760: b3 86 46 00  	add	a3, a3, tp
80003764: 83 a6 86 00  	lw	a3, 8(a3)
80003768: 33 85 a5 40  	sub	a0, a1, a0
8000376c: 93 55 35 00  	srli	a1, a0, 3
80003770: 93 f5 c5 ff  	andi	a1, a1, -4
80003774: b3 85 b6 00  	add	a1, a3, a1
80003778: 83 a6 05 00  	lw	a3, 0(a1)
8000377c: 13 07 10 00  	addi	a4, zero, 1
80003780: 33 15 a7 00  	sll	a0, a4, a0
80003784: 13 45 f5 ff  	not	a0, a0
80003788: 33 f5 a6 00  	and	a0, a3, a0
8000378c: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80003790: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80003794: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80003798: 37 05 00 00  	lui	a0, 0
8000379c: 33 05 45 00  	add	a0, a0, tp
800037a0: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800037a4: b7 05 00 00  	lui	a1, 0
800037a8: b3 85 45 00  	add	a1, a1, tp
800037ac: 83 a5 c5 00  	lw	a1, 12(a1)
800037b0: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800037b4: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800037b8: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800037bc: 67 80 00 00  	ret

Disassembly of section .init:

800037c0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800037c0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800037c4: 93 81 81 f0  	addi	gp, gp, -248

800037c8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800037c8: 97 00 00 00  	auipc	ra, 0
800037cc: e7 80 40 3c  	jalr	964(ra)

800037d0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
800037d0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
800037d4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
800037d8: 97 00 00 00  	auipc	ra, 0
800037dc: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800037e0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800037e4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800037e8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800037ec: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800037f0: 63 92 02 02  	bnez	t0, 0x80003814 <snrt.crt0.init_registers>

800037f4 <.Lpcrel_hi0>:
;     la        t0, _edata
800037f4: 97 02 00 00  	auipc	t0, 0
800037f8: 93 82 c2 7b  	addi	t0, t0, 1980

800037fc <.Lpcrel_hi1>:
;     la        t1, _end
800037fc: 17 03 00 00  	auipc	t1, 0
80003800: 13 03 83 7b  	addi	t1, t1, 1976
;     bge       t0, t1, 2f
80003804: 63 d8 62 00  	bge	t0, t1, 0x80003814 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80003808: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000380c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80003810: e3 cc 62 fe  	blt	t0, t1, 0x80003808 <.Lpcrel_hi1+0xc>

80003814 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80003814: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80003818: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000381c: 63 82 02 08  	beqz	t0, 0x800038a0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80003820: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80003824: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80003828: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000382c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80003830: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80003834: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80003838: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000383c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80003840: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80003844: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80003848: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000384c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80003850: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80003854: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80003858: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000385c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80003860: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80003864: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80003868: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000386c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80003870: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80003874: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80003878: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000387c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80003880: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80003884: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80003888: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000388c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80003890: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80003894: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80003898: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000389c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800038a0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800038a0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800038a4: 23 a0 06 00  	sw	zero, 0(a3)

800038a8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800038a8: 97 02 00 00  	auipc	t0, 0
800038ac: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
800038b0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800038b4: 93 87 06 00  	mv	a5, a3

800038b8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800038b8: 97 03 00 00  	auipc	t2, 0
800038bc: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
800038c0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
800038c4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
800038c8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
800038cc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
800038d0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
800038d4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
800038d8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
800038dc: b3 86 66 40  	sub	a3, a3, t1

800038e0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800038e0: 97 02 00 00  	auipc	t0, 0
800038e4: 93 82 82 5e  	addi	t0, t0, 1512

800038e8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800038e8: 17 03 00 00  	auipc	t1, 0
800038ec: 13 03 03 5e  	addi	t1, t1, 1504

800038f0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800038f0: 97 03 00 00  	auipc	t2, 0
800038f4: 93 83 83 5d  	addi	t2, t2, 1496

800038f8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800038f8: 17 0e 00 00  	auipc	t3, 0
800038fc: 13 0e 0e 5e  	addi	t3, t3, 1504
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003900: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003904: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003908: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000390c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003910: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003914: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003918: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000391c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003920: 63 dc 62 00  	bge	t0, t1, 0x80003938 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003924: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003928: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000392c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003930: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80003934: e3 c8 62 fe  	blt	t0, t1, 0x80003924 <.Lpcrel_hi7+0x2c>

80003938 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80003938: 97 02 00 00  	auipc	t0, 0
8000393c: 93 82 02 59  	addi	t0, t0, 1424

80003940 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80003940: 17 03 00 00  	auipc	t1, 0
80003944: 13 03 83 59  	addi	t1, t1, 1432
;     bge       t0, t1, 2f
80003948: 63 da 62 00  	bge	t0, t1, 0x8000395c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000394c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80003950: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80003954: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80003958: e3 ca 72 fe  	blt	t0, t2, 0x8000394c <.Lpcrel_hi9+0xc>

8000395c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000395c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80003960: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80003964: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80003968: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000396c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80003970: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80003974: 97 00 00 00  	auipc	ra, 0
80003978: e7 80 40 be  	jalr	-1052(ra)
;     lw        a0, 0(sp)
8000397c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80003980: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80003984: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80003988: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000398c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80003990: 13 01 41 01  	addi	sp, sp, 20

80003994 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80003994: 97 02 00 00  	auipc	t0, 0
80003998: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000399c: 73 90 52 30  	csrw	mtvec, t0

800039a0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800039a0: 97 00 00 00  	auipc	ra, 0
800039a4: e7 80 00 22  	jalr	544(ra)

800039a8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800039a8: 97 d0 ff ff  	auipc	ra, 1048573
800039ac: e7 80 c0 c8  	jalr	-884(ra)
;     mv        s0, a0 # store return value in s0
800039b0: 13 04 05 00  	mv	s0, a0

800039b4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800039b4: 97 00 00 00  	auipc	ra, 0
800039b8: e7 80 c0 20  	jalr	524(ra)

800039bc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800039bc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
800039c0: 97 00 00 00  	auipc	ra, 0
800039c4: e7 80 c0 22  	jalr	556(ra)
;     wfi
800039c8: 73 00 50 10  	wfi	
;     j       1b
800039cc: 6f f0 df ff  	j	0x800039c8 <snrt.crt0.end+0xc>

800039d0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
800039d0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
800039d4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
800039d8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
800039dc: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800039e0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800039e4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800039e8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800039ec: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800039f0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800039f4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800039f8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800039fc: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003a00: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003a04: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003a08: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80003a0c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003a10: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003a14: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003a18: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003a1c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003a20: 63 84 02 08  	beqz	t0, 0x80003aa8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003a24: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003a28: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80003a2c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80003a30: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80003a34: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80003a38: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80003a3c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80003a40: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80003a44: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80003a48: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80003a4c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80003a50: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80003a54: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80003a58: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80003a5c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80003a60: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80003a64: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80003a68: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80003a6c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80003a70: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80003a74: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80003a78: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80003a7c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80003a80: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80003a84: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80003a88: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80003a8c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003a90: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003a94: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003a98: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80003a9c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003aa0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003aa4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003aa8: 97 00 00 00  	auipc	ra, 0
80003aac: e7 80 00 c5  	jalr	-944(ra)
;     csrr    t0, misa
80003ab0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003ab4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003ab8: 63 84 02 08  	beqz	t0, 0x80003b40 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80003abc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003ac0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003ac4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003ac8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80003acc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003ad0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003ad4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003ad8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80003adc: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003ae0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003ae4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003ae8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80003aec: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003af0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003af4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003af8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80003afc: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003b00: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003b04: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003b08: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80003b0c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003b10: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003b14: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003b18: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80003b1c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003b20: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003b24: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003b28: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80003b2c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003b30: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003b34: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003b38: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80003b3c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003b40: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003b44: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003b48: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80003b4c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003b50: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003b54: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003b58: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80003b5c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003b60: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003b64: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003b68: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80003b6c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003b70: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003b74: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003b78: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80003b7c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003b80: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003b84: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003b88: 73 00 20 30  	mret	

80003b8c <_snrt_init_core_info>:
;     mv        a4, a1
80003b8c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003b90: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003b94: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003b98: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80003b9c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003ba0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003ba4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003ba8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80003bac: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003bb0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003bb4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003bb8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80003bbc: 67 80 00 00  	ret

80003bc0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003bc0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003bc4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003bc8: 97 00 00 00  	auipc	ra, 0
80003bcc: e7 80 80 b1  	jalr	-1256(ra)
;     lw        a0, 0(a0)
80003bd0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003bd4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003bd8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80003bdc: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003be0: 67 80 00 00  	ret

80003be4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003be4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003be8: 67 80 00 00  	ret

80003bec <_snrt_exit>:
;     addi      sp, sp, -8
80003bec: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003bf0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003bf4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003bf8: 97 00 00 00  	auipc	ra, 0
80003bfc: e7 80 80 ac  	jalr	-1336(ra)
;     lw        t0, 0(sp)
80003c00: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003c04: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003c08: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80003c0c: 63 1c 05 00  	bnez	a0, 0x80003c24 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003c10: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003c14: 93 e2 12 00  	ori	t0, t0, 1

80003c18 <.Lpcrel_hi11>:
;     la        t1, tohost
80003c18: 17 03 00 00  	auipc	t1, 0
80003c1c: 13 03 83 26  	addi	t1, t1, 616
;     sw        t0, 0(t1)
80003c20: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003c24: 67 80 00 00  	ret
